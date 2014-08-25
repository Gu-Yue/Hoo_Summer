<?php
// 本类由系统自动生成，仅供测试用途
namespace Hoo\Controller;
use Think\Controller;
class ItemController extends Controller {
    public function index(){
    
    print_r(hoo_get("Posts",null,array("count"=>"post_status")));    
    $this->display("index");	
    }
    
    public function create($n=null,$find=null,$add=null){
        checkUserLogin(); 
        setKey("item","create",true);
        $db_posts = M("Posts");
        if($_POST&&isLocalData()){
            // print_r($_POST);
           //处理标签数据
           $terms = "";
           $tags  = explode(",", $_POST['tags']);
           foreach ($tags as $key => $value) {
                foreach($tags as $k => $v){
                    $pass = 1;    
                    if($key!=$k&&$value==$v){
                        $pass=0;
                    }
                }
                if(trim($value)!=""&&$pass) $terms .= $value.",";
           }
           $args = array();
           $args['id']=$_POST['id'];
           $args['uid']=USER_ID;
           $args['post_terms']= $terms;
           $args['post_title']  =$_POST['title'];
           $args['post_status'] =$_POST['status'];
           $args['post_view'] =$_POST['view'];
           $args['post_parent'] =$_POST['page'];
           $args['post_groups'] =$_POST['group'];    
           $args['update_date']=date("Y-m-d H:i:s",time());
           $args['post_content']=$_POST['post'];
           $meta = array("digest"=>$_POST['digest'],"cover"=>$_POST['cover']);
           $args['meta'] = json_encode($meta);
           if(hoo_update_post(array("id"=>$args['id'],"uid"=>USER_ID),$args)){
           // hoo_save_resources(USER_ID,$args['id']); //保存编辑资源 
           hoo_add_terms(USER_ID,"tag",$tags,$args['id'],$args['post_status']);   //添加标签记录
           $this->update_filelogs(USER_ID,$args['id'],$args['post_content']);      //更新文件日志
           // echo json_encode(array("status"=>"success","id"=>$args['id']));
           redirect('/hoo/item/view/n/'.$args['id']);
           }else{
           echo "error";    
           }
           
        }else{
           //编辑的页面ID号
           if($n){
              $item = hoo_get_item(array("id"=>$n,"uid"=>USER_ID));
              if($item){
                  // hoo_edi_resources(USER_ID,$n); //编辑资源           
                  $item_id=$item['id'];
                  $this->assign("item",$item);
                  $this->assign("meta",json_decode($item['meta']));
                  
              }else{
                  redirect("/admin/error");
              } 
           }
           //新建的页面ID号
           if(!$item_id){
           $post_id = hoo_new_item(USER_ID);
           //赋值给隐藏表单以创建的id
           $new_item = array("id"=>$post_id);
           if($add) $new_item['post_parent'] = $add;
           $this->assign("item",$new_item);
           }
           
            //查询已有页面制作页面选项
           $pages =  hoo_get_pages(array("uid"=>USER_ID,"post_status"=>"public"),array("field"=>"id,post_title,post_groups"));
           if(!is_array($pages)){
              $data = array("uid"=>USER_ID,"post_title"=>"-","post_groups"=>"#-","post_status"=>"public","post_type"=>"page");    
              $data['id']=hoo_add_post($data);
              $pages = array($data);
           }
           $this->assign("pages",$pages); 
           //制作页面分组
           $groups = array();
           $add = $add ? $add : $item['post_parent']; 
           if($add || $n){
              $post_parent = hoo_get_page(array("id"=>$add,"uid"=>USER_ID),array("field"=>"post_groups"));
           }else{
              $post_parent = $pages[0];
           } 
           $groups = json_decode($post_parent['post_groups']);
           $this->assign("groups",$groups);
           
           $this->display("create");
        }
    }
    public function admin($page=null,$tag=null,$year=null,$month=null,$group=null){
    checkUserLogin();
    setKey("item","admin",true);
    checkUserLogin();    
    /*****************************
     *获取管理数据 
     *****************************/
    $datas = hoo_get_admin_items_list($page,$tag,$year,$month,$group);
    
    /*****************************
     *获取管理表格 
     *****************************/
    //配置选项
    //-显示状态 
    $status->tag="dropdown";
    $status->options  = array((object)array("name"=>"所有状态",'href'=>'/status/all'),
                              (object)array("name"=>"公开",'href'=>'/status/public'),
                              (object)array("name"=>"仅自己可见",'href'=>'/status/self'));
    $status->name = "状态";
    //-排序  
    $order->tag="dropdown";
    $order->options  =  array((object)array("name"=>"创建时间",'href'=>'/order/post_date-desc','tip'=>'fa fa-caret-down'),
                              (object)array("name"=>"创建时间",'href'=>'/order/post_date-asc','tip'=>'fa fa-caret-up'),
                              (object)array("name"=>"更新时间排序",'href'=>'/order/update_date-desc','tip'=>'fa fa-caret-down'),
                              (object)array("name"=>"更新时间排序",'href'=>'/order/update_date-asc','tip'=>'fa fa-caret-up'));
    $order->name = "排序";
    //-最近编辑
    $re->tag = 'side';
    $re->name='最近编辑';  
    $re->icon='fa fa-clock-o';
    $re->href='#re-side'; 
    //-标签
    $tag=null;
    $tag->tag = 'side';
    $tag->name='标签';  
    $tag->icon='fa fa-tag';
    $tag->href='#tag-side'; 
    //-归档
    $pige = null;
    $pige->tag = 'side';
    $pige->name='归档';  
    $pige->icon='fa fa-bars';
    $pige->href='#pige-side'; 
      
    $table->actions = array($status,$order,$re,$tag,$pige);
    //赋值表头
    $table->thead =array((object)array('name'=>"文章标题",'class'=>'item-post-title'),
                         (object)array('name'=>"标签",'class'=>'item-post-tags'),
                         (object)array('name'=>"页面",'class'=>'item-post-cate'),
                         (object)array('name'=>"分组",'class'=>'item-post-group'),
                         (object)array('name'=>"创建日期",'class'=>'item-post-date'),
                         (object)array('name'=>"选项",'class'=>'item-option')
                         );
    $table->multis=array("删除文章","编辑文章","更改页面","更改分组");
    //绑定数据
    $table->rows = $datas['items'];
    //确定操作标识符
    $table->ident = 'id';
    //确定索引数组
    $table->index= array((object)array('name'=>'post_title','href'=>'y','link'=>'/hoo/item/view/n','ident'=>'y'),
                         (object)array('name'=>'post_terms','href'=>'','link'=>''),
                         (object)array('name'=>'post_parent_title','href'=>'','link'=>''),
                         (object)array('name'=>'post_groups','href'=>'','link'=>''),
                         (object)array('name'=>'post_date','href'=>'','link'=>'')
                         );
    
    //确定操作选项
    $table->options=array(
                    (object)array('title'=>'编辑文章','class'=>'','icon'=>'fa fa-pencil','href'=>'/hoo/item/create/n'),
                    (object)array('title'=>'查看统计','class'=>'','icon'=>'fa fa-bar-chart-o','href'=>'/hoo/item/count'),
                    (object)array('title'=>'删除页面','class'=>'','icon'=>'fa fa-times-circle','href'=>'/hoo/item/delete'),
                    );
    //无数据项的提示信息
    $table->message = '暂无文章! &nbsp;&nbsp;<a href="/hoo/item/create">新建一篇文章</a>';                
                    
    //获取表格分页
    $table->pagination = $datas['pagination'];
    $this->assign("table",$table);
    $this->assign("tableDisplay",$this->fetch(COMMON_VIEW."tables/admin-table.html"));
    
    /*****************************
     *获取最近编辑文章
     *****************************/
    $this->assign('reposts',hoo_get_admin_recently_ediposts(array('post_type'=>'item','uid'=>USER_ID),array('field'=>'id,update_date,post_title')));
    /*****************************
     *获取标签
     *****************************/
    $this->assign('tags',hoo_get_admin_tags(USER_ID));
    /*****************************
     *获取归档
     *****************************/
    $this->assign('piges',hoo_get_admin_piges(array('uid'=>USER_ID,'post_type'=>'item')));
    
    $this->assign('page',$datas['page']);
    $this->display('admin');
    }
    
    public function view($owner=null,$n=null){
        
        $item = hoo_get_item(array("id"=>$n));
        $page = hoo_get_page(array("id"=>$item['post_parent']));
        $resources = hoo_post_resources($n);
        $this->assign("item",$item);
        $this->assign("page",$page);
        $this->assign("owner",$owner);
        $this->assign("visitor",getUid());
        $this->assign("groups",$groups);
        $this->assign("haveResources",count($resources)>0?true:false);
        $this->assign("resources_list",$resources);
        $this->assign("resources",$this->fetch(hoo_view_resources()));            
        $this->assign("leftNavStatus","main-nav-closed");   
        
        //获取所有的归档
        $this->assign("piges",hoo_get_piges($owner));
        //获取所有标签
        $this->assign("tags",hoo_get_tags($owner));
        
        $this->display("view");
    }
    
    public function ajaxshowgroup(){
        checkUserLogin();
        if($_GET){
          if($page =hoo_get_page(array("id"=>$_GET['pid'],"uid"=>USER_ID),array("field"=>"post_groups"))){
             echo $page['post_groups'];
          }  
        }
        
    }
    private function update_filelogs($uid,$post_id,$post_content){
        $db_filelog = M("FileLog");
        //获取之前文章与文件的对应关系
        $db_filelog->where("uid ='%d' and post_id = '%d' ",$uid,$post_id)->save(array("status"=>"edi"));
        $filenames = getLocalHostFileNames(C("hoo_domain")."/source/",$post_content);
        if($filenames){ 
           foreach($filenames as $name){
                $db_filelog->where("name = '%s'",$name)->save(array("status"=>"used","post_id"=>$post_id));
           }
        }
        $filelogs = $db_filelog->where("uid = '%d' and status='%s'",$uid,'edi')->field("name,path")->select();
        foreach($filelogs as $log){
        if(unlink(".".$log["path"])){
           $db_filelog->where("name ='%s'",$log["name"])->delete();
        }else{
           $db_filelog->where("name ='%s'",$log["name"])->save(array("status"=>"error"));
        }
        }       
    }

}