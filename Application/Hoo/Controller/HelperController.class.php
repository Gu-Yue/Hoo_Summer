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
            $_db->add(array('key'=>'site','value'=>$data,'type'=>'setting'));
        }
        $setting = $_db->where(array('key'=>'site','type'=>'setting'))->find();
        $this->assign('site',json_decode($setting['value']));
        $this->display("site-setting");
    }
    
    
    public function uploadsetting(){
        $_db = M('Options');
        if($_POST){
            $data = json_encode($_POST);
            $_db->where(array('key'=>'upload','type'=>'setting'))->delete();
            $_db->add(array('key'=>'upload','value'=>$data,'type'=>'setting'));
        }
        $setting = $_db->where(array('key'=>'upload','type'=>'setting'))->find();
        $this->assign('upload',json_decode($setting['value']));
        $this->display('upload-setting');
    }
    
    public function install(){
        $this->display('install');
        if($_POST){
           $_db = M('Options');
           $data = json_encode($_POST['site']);
           $_db->add(array('key'=>'site','value'=>$data,'type'=>'setting'));
        }
    }
    /*********************
     *访问统计
     *********************/
     public function visitLog(){
         // if(isset($_GET['log'])){
            // $_db = M('UserLog');
            // $log = array(
                   // 'uid' => getUid(),
                   // 'ip'  => 
            // );
         // }
     }
}