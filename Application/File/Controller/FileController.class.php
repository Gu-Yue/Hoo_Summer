<?php
// 本类由系统自动生成，仅供测试用途
namespace File\Controller;
use Think\Controller;
class FileController extends Controller {
    public function _initialize(){
       
    }
    public function autoupload(){
        if($_FILES&&isLocalData()){
           print_r($_FILES);
        }
    }
    public function upload(){
    /**
     * Created by JetBrains PhpStorm.
     * User: taoqili
     * Date: 12-7-26
     * Time: 上午10:32
     */
    session_id($_POST['PHPSESSID']); 
    checkUserLogin();   //判断用户是否登陆    
    /*
    if(!session('?uid')){
         echo '{"state":"' ."noyes".session_id().'"}';
         exit();
    }
    else {
         echo '{"state":"' ."yes".session_id().'"}';
        exit();
    }*/
    
    header("Content-Type: text/html; charset=utf-8");  
    error_reporting( E_ERROR | E_WARNING );
    include "./../Include/ueditor/Uploader.class.php";    //包含文件上传类
    //上传配置
    $config = array(
        "savePath" => getUpSavePath() , //保存路径
        "allowFiles" => array( ".rar" , ".doc" , ".docx" , ".zip" , ".pdf" , ".txt" , ".swf", ".mkv", ".avi", ".rm", ".rmvb", ".mpeg", ".mpg", ".ogg", ".mov", ".wmv", ".mp4", ".webm") , //文件允许格式
        "maxSize" => 100000, //文件大小限制，单位KB
        "fileNameFormat" => $_POST['fileNameFormat']
    );
    //生成上传实例对象并完成上传
    $up = new \Uploader( "upfile" , $config );

    /**
     * 得到上传文件所对应的各个参数,数组结构
     * array(
     *     "originalName" => "",   //原始文件名
     *     "name" => "",           //新文件名
     *     "url" => "",            //返回的地址
     *     "size" => "",           //文件大小
     *     "type" => "" ,          //文件类型
     *     "state" => ""           //上传状态，上传成功时必须返回"SUCCESS"
     * )
     */
    $info = $up->getFileInfo();

    /**
     * 向浏览器返回数据json数据
     * {
     *   'url'      :'a.rar',        //保存后的文件路径
     *   'fileType' :'.rar',         //文件描述，对图片来说在前端会添加到title属性上
     *   'original' :'编辑器.jpg',   //原始文件名
     *   'state'    :'SUCCESS'       //上传状态，成功时返回SUCCESS,其他任何值将原样返回至图片上传框中
     * }
     */
    if($info){
       $filename    = basename($info['url']);
       $info["url"] = substr($info["url"],1,strlen($info["url"])); 
       $db_filelog = M("FileLog");
       $log = array(
                     "uid"=>USER_ID,
                     "name" => $filename,
                     "size"=>$info[ "size" ],
                     "type"=>$info[ "type" ],
                     "path"=>$info[ "url" ],
                     "status"=>"1",
                     "time"=>time(),
                     "tag"=>0
                     ); 
       if($db_filelog->add($log)){
           echo '{"url":"' .$info[ "url" ] . '","fileType":"' . $info[ "type" ] . '","original":"' . $info[ "originalName" ] . '","state":"' . $info["state"] . '"}'; 
       }else{
           unlink(".".$log["url"]);
           //日志存储失败...回滚删除文件
       }
      
    }else{
       //上传失败
    }
     	
    }

    public function getmovieurl(){
    /**
     * Created by JetBrains PhpStorm.
     * User: taoqili
     * Date: 12-2-19
     * Time: 下午10:44
     * To change this template use File | Settings | File Templates.
     */
    error_reporting(E_ERROR|E_WARNING);
    $key =htmlspecialchars($_POST["searchKey"]);
    $type = htmlspecialchars($_POST["videoType"]);
    $html = file_get_contents('http://api.tudou.com/v3/gw?method=item.search&appKey=myKey&format=json&kw='.$key.'&pageNo=1&pageSize=20&channelId='.$type.'&inDays=7&media=v&sort=s');
    echo $html;       
    }
}