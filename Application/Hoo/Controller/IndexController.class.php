<?php
namespace Hoo\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        checkUserLogin();
        $_db = M('Notice');
        if($_POST){
           $_db->add(array('title'=>$_POST['notice']['title'],'content'=>$_POST['notice']['content'],'time'=>time())); 
        }
        $this->assign('notices',$_db->order('id desc')->select());
        $this->display("index");
    }
}