<?php
namespace Hoo\Controller;
use Think\Controller;
class NoteController extends Controller {
    //默认判断用户是否登陆
    public function _initialize(){
       checkUserLogin();
       setKey("friends","curd",true);
    }
    
    public function index(){
    $this->display("index");	
    }
    
    /********************************************************************
     * 创建随笔记
     ********************************************************************/
    public function create(){
        
    //print_r($_POST);    
    if($_POST){
       $db_note = D('Note');
       $row = $db_note->create();
       if (!$row){
            print_r($db_note->getError());
       }else{
            $time = time();
            if(trim($row['title'])=="") $row['title'] = date("Y年m月d日 H点i分s秒",$time);
            $row['year']  = date("Y",$time);
            $row['month'] = date("m",$time);  
            $row['time']  = $time;
            $row['uid']   = USER_ID;
            if($db_note->add($row)){
               echo "笔记添加成功!";
               //笔记归档记录
            };
            
       }
        
    }
    //$this->display("index");    
    }
    /********************************************************************
     *删除随笔记
     ********************************************************************/
     public function delete(){
         if($_GET){
         $id = trim($_GET['id']);
         if($id){
             $db_note = M('Note');
             if($db_note->where("id='%s'and uid='%d'",$id,USER_ID)->delete()){
                echo json_encode(array("status"=>"success"));
             }else{
                echo json_encode(array("status"=>"error"));
             }
         }
         }
     }
    /********************************************************************
     * 显示随笔记列表
     ********************************************************************/
    public function items(){      
    //echo date("星期N",date()); 
    //$db_note = M('Note');
    //$notes = $db_note->where("uid = '%s'",USER_ID)->order("time desc")->select();
    //$this->assign("notes",$notes);
    //笔记分页显示
    $User = M('Note'); // 实例化User对象
    $count = $User->where("uid = '%s'",USER_ID)->count();// 查询满足要求的总记录数
    $Page = new \Think\Page($count,5);// 实例化分页类 传入总记录数和每页显示的记录数(25)
    $Page->setConfig('header', '条数据');   //分页样式可自定义
    $Page->setConfig('first', "首页"); 
    $Page->setConfig('end',  "末页");
    $Page->setConfig('prev', "«"); 
    $Page->setConfig('next', '»'); 
    $Page->setConfig('theme',"%FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%"); 

    $show = $Page->show();// 分页显示输出
    // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
    $list = $User->where("uid = '%s'",USER_ID)->order("time desc")->limit($Page->firstRow.','.$Page->listRows)->select();
    $this->assign('notes',$list);// 赋值数据集
    $this->assign('page',$show);// 赋值分页输出
    $this->display("items");    
    }
}