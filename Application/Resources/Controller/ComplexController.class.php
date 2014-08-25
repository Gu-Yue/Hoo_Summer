<?php
// 本类由系统自动生成，仅供测试用途
namespace Resources\Controller;
use Think\Controller;
class ComplexController extends Controller {
    public function _initialize(){
    checkUserLogin();
    }
    /*******************************************************************************
     *添加资源
     *******************************************************************************/
    public function addResource(){
        //数据预处理
        foreach($_POST as $k => $v){
                        $_POST[$k] = strip_tags($_POST[$k]);
                        $_POST[$k] = trim($v);    
                        $_POST[$k] = htmlspecialchars($_POST[$k]);
                   }
        //获得编辑数据项ID
        if($_POST['id']!="") $resource_id = $_POST['id'];
        else $resource_id = hoo_new_temp_resource_id(USER_ID);
        
        $args = array(
              "resource_id"=>$resource_id,
              "resource_parent"=>$_POST['usedby'],
              "resource_type"  =>$_POST['editype'],
              "resource_title" =>$_POST['title'],
              "resource_status" =>"Public"
         );
        //数据项处理
        switch ($_POST['editype']) {
            case 'File':
                $args['resource_group'] = $_POST['group']!=""?$_POST['group']:"相关文件";
                $content['filepath'] = $_POST['filepath'];
                $content['describe'] = $_POST['describe'];
                $args['resource_content'] = json_encode($content);
            break;
            case 'Book':
                $args['resource_group'] = $_POST['group']!=""?$_POST['group']:"相关书籍";
                $content['cover'] = $_POST['cover'];
                $content['describe'] = $_POST['describe'];
                $content['writer'] = $_POST['writer'];
                $content['writer'] = $content['writer']==""?"-":$content['writer'];
                $content['link'] = $_POST['link'];
                $args['resource_content'] = json_encode($content);
            break;
            case 'Link':              
                $args['resource_group'] = $_POST['group']!=""?$_POST['group']:"相关链接";
                $content['link'] = $_POST['link'];
                $content['img'] = $_POST['img'];
                $content['logo'] = $_POST['logo'];
                $args['resource_content'] = json_encode($content);
            break;
            case 'Ad':
                $args['resource_group'] = $_POST['group']!=""?$_POST['group']:"相关广告";
                $content['link'] = $_POST['link'];
                $content['img'] = $_POST['img'];
                $content['code'] = $_POST['code'];
                $args['resource_content'] = json_encode($content);
            break;
        }
        //保存数据
        if($args['resource_title']!=""&&$args['resource_type']!=""){
        if(hoo_save_resources_temp($args)){
           //保存成功，返回数据
           echo json_encode(array("status"=>"success","type"=>$args['resource_type']));
           
        }else{
           echo json_encode(array("status"=>"error"));
        }
        }else{
           echo json_encode(array("status"=>"error"));
        }
        
    }
    /*******************************************************************************
     *显示资源表单
     *******************************************************************************/
    public function showForm(){
        checkUserLogin();   //判断用户是否登陆  
        $type = $_GET['type'];
        $para = $_GET['action']; 
        switch ($type) {
            case 'File':
                 $this->assign("dialogTitle","添加文件");
                $this->assign("dialogSubmit","添加");
                 if($para=="update"){
                     $this->assign("dialogTitle","编辑文件");
                     $this->assign("dialogSubmit","修改");
                     $this->assign("itemID",$_GET['id']);
                     $this->assign("item",hoo_get_temp_resource(array("id"=>$_GET['id'])));
                 }
                $this->display("file");
                break;
            case 'Book':
                 $this->assign("dialogTitle","添加图书");
                 $this->assign("dialogSubmit","添加");    
                 if($para=="update"){
                     $this->assign("dialogTitle","编辑图书");
                     $this->assign("dialogSubmit","修改");
                     $this->assign("itemID",$_GET['id']);
                     $this->assign("item",hoo_get_temp_resource(array("id"=>$_GET['id'])));
                 }
                $this->display("book");
                break;
            case 'Link':
                 $this->assign("dialogTitle","添加链接");
                 $this->assign("dialogSubmit","添加");
                 if($para=="update"){
                     $this->assign("dialogTitle","编辑链接");
                     $this->assign("dialogSubmit","修改");
                     $this->assign("itemID",$_GET['id']);
                     $this->assign("item",hoo_get_temp_resource(array("id"=>$_GET['id'])));
                 } 
                $this->display("link");
                break;
            case 'Ad':
                 $this->assign("dialogTitle","添加广告");
                 $this->assign("dialogSubmit","添加");
                 $this->assign("itemID",$_POST['id']);
              if($para=="update"){
                 $this->assign("dialogTitle","编辑广告");
                 $this->assign("dialogSubmit","修改");
                 $this->assign("itemID",$_GET['id']);
                 $this->assign("item",hoo_get_temp_resource(array("id"=>$_GET['id'])));
                }
                $this->display("ad");
                break;
            default:
                
                break;
        }
        
    }
    /*******************************************************************************
     *编辑显示资源条目
     *******************************************************************************/
    public function ediShowResources(){
        $ID = $_GET['parent_id'];
        $return = array();
        //获取文件资源
        $files   = hoo_get_temp_resources(array("resource_parent"=>$ID,"resource_type"=>"File","order"=>"resource_group"));
        $return['files']=$files;
        //获取图书资源
        $books   = hoo_get_temp_resources(array("resource_parent"=>$ID,"resource_type"=>"Book","order"=>"resource_group"));
         $return['books']=$books;
        //获取链接资源
        $links   = hoo_get_temp_resources(array("resource_parent"=>$ID,"resource_type"=>"Link","order"=>"resource_group"));
         $return['links']=$links;
        //获取广告资源
        $ads   = hoo_get_temp_resources(array("resource_parent"=>$ID,"resource_type"=>"Ad","order"=>"resource_group"));
        $return['ads']=$ads;
        $this->assign("source",$return);
        $this->display("ediShowResources");
    }
    /*******************************************************************************
     *综合处理资源分组名更改问题
     *编写时间：14/06/15 22:20   还没有加数据验证
     *******************************************************************************/
    public function changecatename(){
      if($_POST){
          foreach($_POST as $k => $v){             
                $_POST[$k] = strip_tags($_POST[$k]);
                $_POST[$k] = trim($v);    
                $_POST[$k] = htmlspecialchars($_POST[$k]);
           }
           if(hoo_save_temp_resources_group(array("resource_parent"=>$_POST["pageID"],"resource_type"=>$_POST["type"],"resource_group"=>$_POST["oname"]),$_POST["name"]))
           echo json_encode(array("status"=>"success"));
           else 
           echo json_encode(array("status"=>"error")); 
      }
    }
    /*******************************************************************************
     *删除分组
     *编写时间：14/06/15 22:20   还有对应下的文件的删除没有写
     *******************************************************************************/
    public function deletecate(){
      if($_GET){
          if(hoo_delete_temp_resources_group(array("resource_parent"=>$_GET["pageID"],"resource_type"=>$_GET["type"],"resource_group"=>$_GET["oname"]))){
              $return = array("status"=>"success");
              }else{
              $return = array("status"=>"error");
          }
              echo json_encode($return);
          
      }
    }
    /*******************************************************************************
     *删除条目
     *编写时间：14/06/23 10:00   还有对应下的文件的删除没有写
     *******************************************************************************/
    public function deleteitem(){
      if($_GET){
          if(hoo_delete_temp_resource(array("resource_id"=>$_GET['id']))){
                 $return = array("status"=>"success");
          }else{
                 $return = array("status"=>"error");
          }
          echo json_encode($return);
          
      }
    }
}