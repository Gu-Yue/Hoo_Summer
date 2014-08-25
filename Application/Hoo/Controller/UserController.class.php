<?php
namespace Hoo\Controller;
use Think\Controller;
class UserController extends Controller {
    /********************************************************
     * 用户首页
     ********************************************************/ 
     public function dashboard(){
     checkUserLogin();
     $this->display("dashboard");
     }
    /********************************************************
     * 用户登陆
     ********************************************************/    
    public function login(){   
    if($_POST&&isLocalData()){
    session_start();        //开启session    
    $username = trim($_POST['username']);    
    $password = trim($_POST['password']);
    
    $this->assign("username",$username);
    $this->assign("password",$password);
    $pass = true;    //记录验证码是否通过
    //实例化数据库
    $User = M('User');
    $User = $User->where("username='%s'",$username)->find();
    if($username==""){
       $this->assign("alertType","alert-error"); 
       $this->assign("result",array("用户名不能为空"));
       $pass = false; 
    }else if($password==""){
       $this->assign("alertType","alert-error"); 
       $this->assign("result",array("密码不能为空"));
       $pass = false; 
    }
    if($pass){
        if($User['password']==md5($password)){
        session_start();     
        session('uid',null);
        session('un',null);
        session('role',null); 
        session("avatar",null);    
        session("uid",$User['uid']);
        session("un",$User['username']);
        session("role",$User['role']);
        session("avatar",$User['avatar']);
   
        if(session('uid')){
            if(isset($_GET['t'])&&(strrpos($_GET['t'],C("hoo_domain"))!==FALSE))
            redirect($_GET['t']);
            
            redirect("/hoo");
        }
        
    }else if($User === NULL){
        $this->assign("alertType","alert-error"); 
        $this->assign("result",array("该用户不存在"));
    }else{
        $this->assign("alertType","alert-error"); 
        $this->assign("result",array("密码错误"));
    }
                   
    }
    
    }
    //判断session显示验证码
    if(session("times")>=3){        
    $this->assign("style","show");
    }else{
    $this->assign("style","hide");    
    }    
    $this->display('login');  
    }
    
    /********************************************************
     * 用户注销
     ********************************************************/ 
     public function logout(){
        session_start();     
        session('uid',null);
        session('un',null);
        session('role',null);
        writeUserLog(USER_ID,"user","logout");    //记录用户日志     
        if(!session("uid")) redirect("/hoo/user/login");
     }
     /***********************************
      *添加用户 
      ***********************************/
     public function create($n=null){
         checkUserLogin();
         setKey("user","add",true);
         $this->assign('key',true);
         if($_POST&&isLocalData()){
             $_POST = filterData($_POST);
             $this->assign('user',$_POST);
             
             //检测用户名
             if(hoo_find("User",array('username'=>$_POST['username'])))
             $Message['error'][] = '该用户名已存在!'; 
             
             if(!isset($n)){
                 $Data['username'] = $_POST['username'];
                 $Data['password'] = md5($_POST['password']);
             } 
             $Data['avatar'] =   $_POST['avatar'];
             $Data['profile']  = json_encode($_POST['profile']);
             if($n){
                $user = hoo_find("User",array('uid'=>$n));
                if($user['uid']==USER_ID){
                   if(hoo_save("User",array("uid"=>$n),$Data)){
                      $Message['success'][] = '资料更新成功!'; 
                      if($_POST['avatar2']!=$_POST['avatar']){
                      session_start();     
                      session("avatar",$_POST['avatar']);
                      }
                       
                   };
                   } 
             }else{
                $Data['regist_time'] = date("Y-m-d H:i:s",time());
                if(hoo_add("User",$Data)){
                   $Message['success'][] = '添加用户: '.$Data['username'].' 成功!'; 
                }else{
                   $Message['error'][] = '用户添加失败!'; 
                }
             }
         }
         if($n){
             $user = hoo_find("User",array('uid'=>$n));
             $this->assign('user',$user);
             $this->assign('profile',json_decode($user['profile']));
             $this->assign('key',USER_ID==$user['uid'] ?true:false);
         }
         $this->assign("roles",hoo_select("Options",array("type"=>"role")));
         
         $this->assign('hoo_message',$Message);
         $this->display("create");
     }
     
     public function delete(){
        if(isset($_POST['multis']) || isset($_GET['delete'])){
           $_db = M('User');
           $action = isset($_POST['multi']) ? $_POST['multi'] : null;
           if(isset($_POST['multis'])){
               switch ($action) {
                       case 'delete':
                                 foreach ($_POST['multis'] as $value) {
                                          $_db->where(array('uid'=>$value))->delete();
                                 }
                             break;
               }
           }
           if(isset($_GET['delete'])){
              $_db->where(array('uid'=>$_GET['delete']))->delete();               
           } 
        }
    }
     public function admin($role=null){
         checkUserLogin();
         setKey("user","admin",true);
     $this->delete();    
    /*****************************
     *获取管理数据 
     *****************************/
    $datas = hoo_get_admin_user_list($role);
    
    /*****************************
     *获取管理表格 
     *****************************/
    //配置选项
    //-显示状态 
    $status->tag="dropdown";
    $status->options  = array((object)array("name"=>"所有状态",'href'=>'/status/all'),
                              (object)array("name"=>"激活",'href'=>'/status/public'),
                              (object)array("name"=>"待激活",'href'=>'/status/self'),
                              (object)array("name"=>"禁用",'href'=>'/status/yes')
                              );
    $status->name = "状态";
    //-排序  
    $order->tag="dropdown";
    $order->options  =  array((object)array("name"=>"创建时间",'href'=>'/order/create-desc','tip'=>'fa fa-caret-down'),
                              (object)array("name"=>"创建时间",'href'=>'/order/create-asc','tip'=>'fa fa-caret-up'),
                              (object)array("name"=>"活跃度",'href'=>'/order/update-desc','tip'=>'fa fa-caret-down'),
                              (object)array("name"=>"活跃度",'href'=>'/order/update-asc','tip'=>'fa fa-caret-up')
                              );
    $order->name = "排序";
    //-最近编辑
    $re->tag = 'side';
    $re->name='角色';  
    $re->icon='fa fa-user';
    $re->href='#re-side'; 
      
    $table->actions = array(
                            //$status,
                            //$order,
                            // $re
                            );
    //赋值表头
    $table->thead =array((object)array('name'=>"用户名",'class'=>'item-post-title'),
                         (object)array('name'=>"创建日期",'class'=>'item-post-date'),
                         (object)array('name'=>"选项",'class'=>'item-option')
                         );
    $table->multis=array("delete"=>"删除用户");
    //绑定数据
    $table->rows = $datas['users'];
    
    //确定操作标识符
    $table->ident = 'uid';
    //确定索引数组
    $table->index= array((object)array('name'=>'username','href'=>'y','link'=>'/hoo/user/create/n','ident'=>'y','_blank'=>'y'),
                         (object)array('name'=>'regist_time','href'=>'','link'=>'')
                         );
    
    //确定操作选项
    $table->options=array(
                    //(object)array('title'=>'用户信息','class'=>'','icon'=>'fa fa-bar-chart-o','href'=>'/hoo/item/count'),
                    (object)array('title'=>'删除用户','class'=>'','icon'=>'fa fa-times-circle','href'=>'/hoo/user/admin/delete','flag'=>'y'),
                    );
    //获取表格分页
    $table->pagination = $datas['pagination'];
    $this->assign("table",$table);
    $this->assign("tableDisplay",$this->fetch(COMMON_VIEW."tables/admin-table.html"));
    
    /*****************************
     *获取最近编辑文章
     *****************************/
    $this->assign('reposts',hoo_get_admin_recently_ediposts(array('post_type'=>'item','uid'=>USER_ID),array('field'=>'id,update_date,post_title')));
    
    $this->display("admin");
     }
     /**********************************
      *个人中心 
      **********************************/
      public function profiles($n=null){
          $this->display("profiles");
      }
      
     /**********************************
      *用户权限管理 
      **********************************/
      public function keyadmin($para=null){
          checkUserLogin();
          // setKey("user","keysadmin",true);
          $this->assign("button_value","添加角色");
          $role=$para;
          if($_POST&&isLocalData()){
              $_POST = filterData($_POST);              
             //编辑用户角色
              if(isset($role)&&trim($role)!=""){
                  $r = hoo_save("Options",array("key"=>$role,"type"=>"role"),array("value"=>$_POST['role_name'],"type"=>"role"));                        
                  // $this->assign("saveSuccess",$r);
              }else{
                  $role_row = hoo_find("Options",array("key"=>$_POST['role'],"type"=>"role"));
                  if($role_row){
                     $this->assign("roleExist",true);
                  }else if($_POST['role']!=""&&$_POST['role_name']!=""){
                     hoo_add("Options",array("key"=>$_POST['role'],"value"=>$_POST['role_name'],"type"=>"role"));
                  } 
                           
              }
              //修改权限
              $db_user_keys = M("UserKeys");
              $db_user_keys->where("role='%s'",$_POST['role'])->delete();
              $token = getRoleToken($_POST['role']);
              foreach($_POST['role_keys'] as $v){   
                      $temp = explode("-",$v);
                      $db_user_keys->add(array("role"=>$_POST['role'],"module"=>$temp[1],"function"=>$temp[0],"token"=>$token));
              }               
          }

          if($role){
               $this->assign("edirole",hoo_find("Options",array("key"=>$role,"type"=>"role")));
               $this->assign("button_value","保存修改");
               $this->assign("showNew",true);
               $this->assign("mfs",M()->query("select * from hoo_modules as a where a.module not in ( select module from hoo_user_keys WHERE role = '%s') or (  a.module in ( select module from hoo_user_keys WHERE role = '%s') and a.function not in  ( select function from hoo_user_keys WHERE role = '%s' and module = a.module));",$role,$role,$role));
               $this->assign("role_mfs",M()->query("select a.module_name,a.module,a.function_name,a.function from hoo_modules a join hoo_user_keys b ON a.module = b.module and a.function = b.function and b.role = '%s';",$role));         
          }else{   
               $this->assign("mfs",M("Modules")->select());
          }
          $this->assign("roles",hoo_select("Options",array("type"=>"role")));
          $this->display("keyadmin");
      }
      /********************************
       *模块功能注册
       *********************************/
      public function regiestModule($del=null,$edi=null){
          checkUserLogin();
          $this->assign("button","添加");
          $this->assign("title","注册模块功能");
          
          if($edi){
             $edi = explode("-",$edi);
             $this->assign("edi", M("Modules")->where("module = '%s' and function ='%s'",$edi[1],$edi[0])->find());
             $this->assign("title","编辑模块功能");
             $this->assign("button","编辑");
          }
          if($del){
             $del = explode("-",$del);
             $this->assign("edi", M("Modules")->where("module = '%s' and function ='%s'",$del[1],$del[0])->delete());
             redirect("/admin/user/regiestModule");
          }
          
          if($_POST&&isLocalData()){
             $Data = filterData($_POST);
             if($edi){
                 M("Modules")->where("module = '%s' and function ='%s'",$edi[1],$edi[0])->save($Data);
                 redirect("/admin/user/regiestModule"); 
             }else{
                M("Modules")->add($Data);    
             } 
               
          } 
          
          $list = M("Modules")->order("module,function")->select();
          $this->assign("list",$list);
          
          
          $this->display("regiestModule");
      }
      public function info(){
          checkUserLogin();
          setKey("user","info",true);
          $this->display("info");
      }
      public function userLogs(){
          checkUserLogin();
          setKey("user","logs",true);
      }
      public function friends(){
          checkUserLogin();
          setKey("friends","curd",true);
          $this->display("friends");
      }
      public function repassword(){
          checkUserLogin();
          if($_POST){
             $user = hoo_find("User",array('uid'=>USER_ID));
             if($_POST['password']==$_POST['confirm_password']){
                if(md5($_POST['passwd'])==$user['password']){
                   if(hoo_save("User",array("uid"=>USER_ID),array('password'=>md5($_POST['password'])))){
                      $Message['success'][] = '修改成功!';   
                   }else{
                      $Message['error'][] = '密码修改失败！';
                   }
                }else{
                 $Message['error'][] = '原密码不正确';
                }
             }else{
                 $Message['error'][] = '两次密码不符';
             }
             
          }
          $this->assign('hoo_message',$Message);
          $this->display("repassword");
      }
     
}