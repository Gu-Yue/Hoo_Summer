<?php
namespace Hoo\Controller;
use Think\Controller;
class HelperController extends Controller {
    public function setUserOption(){
    checkUserLogin();
    if($_GET&&isLocalData()){
        $_GET = filterData($_GET);
        $row = hoo_find("UserOptions",array("uid"=>USER_ID,"key"=>$_GET['ident']));
        if(!$row){
            if($_GET['option']!=""){
            $row = array("uid"=>USER_ID,"key"=>$_GET['ident'],"value"=>json_encode(array($_GET['option']=>$_GET['para'])));
            echo hoo_add("UserOptions",$row) ? "success" : "error";
            }
        }else{
            $row = (array)json_decode($row['value']);
            $row[$_GET['option']] = $_GET['para'];
            echo  hoo_save("UserOptions",array("uid"=>USER_ID,"key"=>$_GET['ident']),array("value"=>json_encode($row))) ? "success" : "error";
        }
        
        
    }	
    }
    
    public function sitesetting(){
        checkUserLogin();
        $_db = M('Options');
        if($_POST){
            $data = json_encode($_POST);
            $_db->where(array('key'=>'site','type'=>'setting'))->delete();
            if($_db->add(array('key'=>'site','value'=>$data,'type'=>'setting'))){
                $Message['success'][] = '站点设置修改成功';
            }else{
                $Message['error'][] = '站点设置修改失败';
            }
        }
        $setting = $_db->where(array('key'=>'site','type'=>'setting'))->find();
        $this->assign('site',json_decode($setting['value']));
        $this->assign('hoo_message',$Message);
        $this->display("site-setting");
    }
    
    
    public function uploadsetting(){
        $_db = M('Options');
        if($_POST){
            $data = json_encode($_POST);
            $_db->where(array('key'=>'upload','type'=>'setting'))->delete();
            if($_db->add(array('key'=>'upload','value'=>$data,'type'=>'setting'))){
                $Message['success'][] = '上传设置修改成功';
            }else{
                $Message['error'][] = '上传设置修改失败';
            }
        }
        $setting = $_db->where(array('key'=>'upload','type'=>'setting'))->find();
        $this->assign('upload',json_decode($setting['value']));
        $this->assign('hoo_message',$Message);
        $this->display('upload-setting');
    }
    
    public function install(){
        if($_POST){
            $sql = file_get_contents("./install/hoo.sql");
            $explode = explode(";",$sql);
            $cnt = count($explode);
            for($i=0;$i<$cnt ;$i++){
                $sql = $explode[$i];
                $result = M()->execute($sql);
                if($result){
                    $M['s'][] = "成功:".$i."个查询<br>";
                }else{
                    $M['e'][] = "导入失败:".mysql_error();
                }
            }
           //设置站点信息
           $_db = M('Options');
           $data = json_encode($_POST['site']);
           if($_db->add(array('key'=>'site','value'=>$data,'type'=>'setting'))){
               $M['s'][] = '站点信息设置成功!';
           }else{
                    $M['e'][] = "站点信息设置失败.";
           }
           
           // // //添加用户
           // // $user = $_POST['user'];
           // // $user['password']    = md5($user['password']);
           // // $user['role']        = 'root';
           // // $user['regist_time'] = date('H-m-d H:i:s',time());
           // // $user['avatar']      = '/avatar/defeaut.jpg';
           // // $user['status']        = 'abled';
           // // $user['flag']        = 'style="display:none;"';
           // // if($uid = M('User')->add($user)){
              // // $M['s'][] = '管理员添加成功.';
           // // }else{
                    // // $M['e'][] = '管理员添加失败';
                // // }
           // // if($uid){
               // // //生成用户的默认分类
               // // $cate['uid'] = $uid; 
               // // $cate['name'] = '默认分类'; 
               // // $cate['type'] = 'cate'; 
               // // $cate['flag'] = ''; 
               // // if(M('User')->add($cate)){
                   // // $M['s'][] = '默认分类添加成功.';
               // // }else{
                        // // $M['e'][] ='默认分类添加失败';
               // // }
               // // //生成用户的默认页面
               // // $page['uid'] = $uid;
               // // $page['post_title'] = '默认页面';
               // // $page['flag'] = '';
               // // if(M('User')->add($page)){
                   // // $M['s'][] = '默认页面添加成功.';
               // // }else{
                   // // $M['e'][] = '默认页面添加失败';
               // // }
           // // }
        // }
    // }
    // /*********************
     // *访问统计
     // *********************/
     // public function visitLog(){
         // // if(isset($_GET['log'])){
            // $_db = M('UserLog');
            // $log = array(
                   // 'uid' => getUid(),
                   // 'ip'  => 
            // );
         // }
     print_r($M);
     }
     $this->display('install');
     }
     
}