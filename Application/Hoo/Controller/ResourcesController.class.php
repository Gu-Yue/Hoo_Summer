<?php
namespace Hoo\Controller;
use Think\Controller;
class ResourcesController extends Controller {
    public function index(){
        $this->display("index");
    }
    public function admin($type='image'){
        checkUserLogin();
           $db_filelog = M("FileLog");
           $images = $db_filelog->where('status = "%s" and size = "%s"','thumb','100*100')->order('time desc')->select();
           $this->assign('images',$images);

           $db_filelog = M("FileLog");
           $files = $db_filelog->where('type != "%s" and type != "%s"','image/jpeg','image/png')->order('time desc')->select();
           $this->assign('files',$files);
           
        $this->display("admin");
    }
    public function upload(){
        checkUserLogin();
        $config = array(
            'rootPath' => getUpSavePath(),
            'savePath' => '',
        );
        $upload = new \Think\Upload($config);// 实例化上传类
        $info = $upload->upload();
        if(!$info) {// 上传错误提示错误信息
        $this->error($upload->getError());
        }else{
        //上传成功
        $db_filelog = M("FileLog");
        $log = array(
                     "uid"=>USER_ID,
                     "size"=>$info['file'][ "size" ],
                     "name" =>$info['file']['savename'],
                     "alias" =>$info['file']['name'],
                     "type"=>$info['file'][ "type" ],
                     "path"=>getUpSavePath().$info['file']['savepath'].$info['file']['savename'],
                     "status"=>"succes",
                     "md5"=>$info['file']['md5'],
                     "time"=>time()
                     ); 
        if($db_filelog->add($log)){
           //记录日志 
            switch($info['file']['type']){
            case 'image/jpeg':
            case 'image/png':
                 //进行图片处理
                 $_db = M('Options');
                 $setting = $_db->where(array('key'=>'upload','type'=>'setting'))->find();
                 $setting = json_decode($setting['value']);
                 $sizes = explode(',', $setting->image_sizes);
                 $upload_file= getUpSavePath().$info['file']['savepath'].$info['file']['savename'];
                 $image = new \Think\Image();
                 $image->open($upload_file);
                 $width = $image->width(); // 返回图片的宽度
                 $height = $image->height(); // 返回图片的高度
                 $db_filelog->where('name ="%s"',$info['file']['savename'])->save(array('size'=>$width.'*'.$height));
                 foreach($sizes as $size){
                     if(trim($size!='')){
                        // $this->success($setting->image_sizes);
                       $image = new \Think\Image();
                       if($image->open($upload_file)){ 
                           $size = explode('*',$size);
                           $image->thumb($size[0],$size[1])->save(getUpSavePath().$info['file']['savepath'].$size[0].'-'.$size[1].'-'.$info['file']['savename']);
                           $log = array(
                                 "uid"=>USER_ID,
                                 "size"=>$size[0].'*'.$size[1],
                                 "name" =>$size[0].'-'.$size[1].'-'.$info['file']['savename'],
                                 "alias"=>$info['file']['name'],
                                 "type" =>$info['file'][ "type" ],
                                 "path" =>getUpSavePath().$info['file']['savepath'].$size[0].'-'.$size[1].'-'.$info['file']['savename'],
                                 "status"=>"thumb",
                                 "md5"=>uniqid(),
                                 "time"=>time()
                                 ); 
                                 $db_filelog->add($log);  
                         }
                     }
                 }
                 echo json_encode(array('info'=>'success','path'=>substr($log['path'],1)));
                 break;
            default : $this->success('upload success!');
         }
        }else{
           //日志记录失败，删除文件
           unlink(getUpSavePath().$info['file']['savepath'].$info['file']['savename']);
        }
       
        }
    }
    public function getImage(){
        $name = $_GET[id];
        $db_filelog = M("FileLog");
        $image = $db_filelog->where('name = "%s"',$name)->find();
        $sizes = $db_filelog->where('alias = "%s"',$image['alias'])->order('size desc')->select();
        $this->assign('image',$image);
        $this->assign('sizes',$sizes);
        $this->display('getImage');
    }
}