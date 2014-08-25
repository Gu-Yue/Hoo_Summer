<?php
namespace Hoo\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index($deleteNotice = null){
        checkUserLogin();
        $_db = M('Notice');
        if($deleteNotice){
           $_db->where(array('id'=>$deleteNotice))->delete();
        }
        if(trim($_POST['notice']['title'])!=''){
           $_db->add(array('title'=>$_POST['notice']['title'],'content'=>$_POST['notice']['content'],'time'=>time())); 
        }
        $this->assign('notices',$_db->order('id desc')->select());
        $count['items'] = M('Posts')->where('post_type = "%s" and post_status != "%s"','item','new')->count();
        $count['pages'] = M('Posts')->where('post_type = "%s" and post_status != "%s"','page','new')->count();
        $count['cates'] = M('Terms')->where('type = "%s"','cate')->count();
        $this->assign('count',$count);
        //计算磁盘空间
        $disk['total'] = round(disk_total_space('./')/1024/1024/1024,2);
        $disk['free']  = round(disk_free_space('./')/1024/1024/1024,2);
        $disk['used']  = $disk['total']-$disk['free'];
        $disk['percent'] = round($disk['used']/$disk['total'],4)*100;
        $this->assign('disk',$disk);
        $this->display("index");
    }
}