<?php
namespace Hoo\Controller;
use Think\Controller;
class PageController extends Controller {
    public function index(){
    $this->display("index");    
    }
   private function getPageData(){
        $args = array();    
        $_POST = filterData($_POST);
        $args['id'] = $_POST['id'];
        $args['post_title'] = $_POST['post_title'];    //页面标题
        $args['post_terms'] = $_POST['post_terms'];    //页面分类
        $args['post_groups'] = json_encode($_POST['groups']);  //页面的分组们
        $args['post_groups'] = $args['post_groups'] != 'null' ? $args['post_groups'] : '';
        $args['post_status'] = $_POST['post_status'];  //页面的状态
        $args['update_date']=date("Y-m-d H:i:s",time()); //更新时间
        $content['tip_title'] = $_POST['tip_title'];    //页面Tip栏标题
        $content['tip_content'] = $_POST['tip_content'];//页面Tip栏内容
        $content['logo'] = $_POST['logo'];               //页面logo地址
        $content['cover'] = $_POST['cover'];             //页面封面地址
        $args['post_content']=json_encode($content);
        return $args;
        
   }
   
   public function create($n=null,$find=null){
        checkUserLogin();
        setKey("page","create",true); 
        $db_posts = M("Posts");
        if($_POST&&trim($_POST['post_title'])!=""&&isLocalData()){
           $args = $this->getPageData();
           if(hoo_update_post(array("id"=>$args['id'],"uid"=>USER_ID),$args)){               
              hoo_save_resources(USER_ID,$args['id']);
              hoo_add_terms(USER_ID,"cate",array($_POST['post_terms']),$args['id']);        
              // echo json_encode(array("status"=>"success","id"=>$args['id']));
              redirect('/hoo/page/view/n/'.$args['id']);
           }else{
              echo "error";    
           }
        }else{
           //制作页面分组
           $this->assign("groups",array());
           //编辑的页面ID号
           if($n){
              $page = hoo_get_page(array("id"=>$n,"uid"=>USER_ID));
              if($page){
                  hoo_edi_resources(USER_ID,$n);
                  $page_id=$page['id'];
                  $this->assign("page",$page);
                  $this->assign("groups",json_decode($page['post_groups']));
                  $this->assign("content",json_decode($page['post_content']));
              }else{
                  //redirect("/admin/error");
                  echo "error";
              } 
           }
           //新建的页面ID号
           if(!$page_id){
           $page_id = hoo_new_page(USER_ID);
           //赋值给隐藏表单以创建的id
           $this->assign("page",array("id"=>$page_id,"post_groups"=>"无")); 
           }
           //获取所有的页面分类
           $cates = hoo_get_admin_terms(array("uid"=>USER_ID,"type"=>"cate"));
           $this->assign("cates",$cates);
           
           $this->display("create");
        }
    }
    public function admin($cate=null,$year=null,$month=null){
    checkUserLogin();    
    /*************************************
     *获取表格数据
     *************************************/
    $datas = hoo_get_admin_pages_list($cate,$year,$month);
    
    /*************************************
     *获取管理表格
     *************************************/ 
    //配置选项
    //-显示状态 
    $status->tag="dropdown";
    $status->options  = array((object)array("name"=>"使用中",'href'=>'/status/public'),
                              (object)array("name"=>"草稿",'href'=>'/status/draft'));
    $status->name = "状态";
    //-排序  
    $order->tag="dropdown";
    $order->options  =  array((object)array("name"=>"创建时间",'href'=>'/order/post_date-desc','tip'=>'fa fa-caret-down'),
                              (object)array("name"=>"创建时间",'href'=>'/order/post_date-asc','tip'=>'fa fa-caret-up'),
                              (object)array("name"=>"更新时间排序",'href'=>'/order/update_date-desc','tip'=>'fa fa-caret-down'),
                              (object)array("name"=>"更新时间排序",'href'=>'/order/update_date-asc','tip'=>'fa fa-caret-up'));
    $order->name = "排序";
    //-分类
    $cate = null;
    $cate->tag = 'side';
    $cate->name='分类';  
    $cate->icon='fa fa-tag';
    $cate->href='#order-side'; 
    //-归档
    $pige->tag = 'side';
    $pige->name='归档';  
    $pige->icon='fa fa-bars';
    $pige->href='#pige-side'; 
      
    $table->actions = array($status,$order,$cate,$pige);
    //赋值表头
    $table->thead =array((object)array('name'=>"页面名称",'class'=>'page-post-title'),
                         (object)array('name'=>"分类",'class'=>'page-post-cate'),
                         (object)array('name'=>"创建日期",'class'=>'page-post-date'),
                         (object)array('name'=>"选项",'class'=>'page-option')
                         );
    $table->multis=array("删除页面","编辑页面","更改分类");
    //绑定数据
    $table->rows = $datas['pages'];
    //确定操作标识符
    $table->ident = 'id';
    //确定索引数组
    //确定索引数组
    $table->index= array((object)array('name'=>'post_title','href'=>'y','link'=>'/hoo/item/admin/page','ident'=>'y'),
                         (object)array('name'=>'post_terms','href'=>'','link'=>''),
                         (object)array('name'=>'post_date','href'=>'','link'=>'')
                         );
    
    //确定操作选项
    $table->options=array(
                    (object)array('title'=>'添加文章','class'=>'','icon'=>'fa fa-plus-circle','href'=>'/hoo/item/create/add'),
                    (object)array('title'=>'编辑页面','class'=>'','icon'=>'fa fa-pencil','href'=>'/hoo/page/create/n'),
                    (object)array('title'=>'查看统计','class'=>'','icon'=>'fa fa-bar-chart-o','href'=>'/hoo/page/view/n'),
                    (object)array('title'=>'删除页面','class'=>'','icon'=>'fa fa-times-circle','href'=>'/hoo/page/delete','flag'=>'y'),
                    );
    //无数据项的提示信息
    $table->message = '该目录没有页面! &nbsp;&nbsp;<a href="/hoo/page/create">新建页面</a>';                    
    //表格分页
    $table->pagination = $datas['pagination'];
    $this->assign("table",$table);
    $this->assign("tableDisplay",$this->fetch(COMMON_VIEW."tables/admin-table.html"));
    /**************************************
     *获取页面分类
     **************************************/ 
    $this->assign('cates',hoo_get_admin_cates(USER_ID));
    /**************************************
     *获取页面归档
     **************************************/ 
    $this->assign('piges',hoo_get_admin_piges(array('uid'=>USER_ID,'post_type'=>'page')));
    $this->display('admin');
    }
    /******************************************************************************************
     * 添加页面内容分组     2014/6/23 14:30  尚未添加数据验证     无使用
     *******************************************************************************************/
    public function addgroup(){
        checkUserLogin();
        setKey("page","create",true); 
        if($_GET){
        $db_page = M("Page");
        if($r = $db_page->where("id = '%d' and uid = '%d'",$_GET['pageID'],USER_ID)->field('group')->find()){
             if(trim($r['group'])==""||$r['group']===null||$r['group']=="null"){
                 $r=$_GET['value'];
             }else{
                 $r=$r['group']."#".$_GET['value'];
                
             }
             $data = array("group"=>$r);
             if($db_page->where("id = '%d' and uid = '%d'",$_GET['pageID'],USER_ID)->field('group')->save($data)){
                 echo json_encode(array("status"=>"success","value"=>$_GET['value']));
             }else{
                 echo json_encode(array("status"=>"error"));
             }   
        }else{
            //错误
            print_r($_GET);
        }
        }
    } 
    private function settleItemsByGroups($groups,$items){
        foreach($items as $key => $value){
                array_push($groups[$value['post_groups']],$value);
        }
        
        return $groups;
        
    }
    public function view($n=null,$owner=null,$doc=null,$group=null){
        checkUserLogin();
        $page   = hoo_find('Posts',array('id'=>$n));
        $groups = json_decode($page['post_groups']);      
        $this->assign('page',$page);
        $this->assign('groups',$groups);
        $this->assign('info',json_decode($page['post_content']));
        
        // $group = $group ? $group : $groups[0];
        $datas = hoo_get_admin_items_list($n,null,null,null,$group);
        $this->assign('items',$datas['items']);
        $this->assign('pagination',$datas['pagination']);
        $this->display('view');
    }
    /***************
     *添加页面分类
     ***************/
    public function addcate($oldName=null){
        checkUserLogin();
        setKey("page","cate",true); 
        if(isset($_GET['termname'])){
           $db_terms = M("Terms");
           $_GET['termname'] = strip_tags($_GET['termname']);    
           $_GET['termname'] = trim($_GET['termname']);
           $_GET['termname'] = htmlspecialchars($_GET['termname']);
           if($_GET['termname']!=""){
           if($oldName){
              $term = hoo_edi_terms(array('uid'=>USER_ID,'name'=>$oldName),array('name'=>$_GET['termname']));
           }else{    
              $term  = hoo_add_terms(USER_ID,"cate",array($_GET['termname']));
           }                    
           if($term){
            echo 'success';
           }else{
            echo "编辑分类失败";
           }
             
           }else{
               echo "分类名不能为空!";
           }
               
        }
    }
    
    public function cate(){
    checkUserLogin();
    setKey("page","create",true); 
    $this->assign('cates',hoo_get_admin_cates(USER_ID));
    
    //分类排序
    if($_POST){
       $i=1;
       foreach ($_POST['cates'] as $value) {
           hoo_edi_terms(array('uid'=>USER_ID,'name'=>$value),array('num'=>$i));
           $i++;
       }
    }
    $this->display("cate");    
    }
}