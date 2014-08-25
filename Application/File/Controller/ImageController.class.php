<?php
// 本类由系统自动生成，仅供测试用途
namespace File\Controller;
use Think\Controller;
class ImageController extends Controller {
    public function _initialize(){
       
    }
    //ajax传递参数生成验证码图片
    public function verify($id='undefined'){
        $config =    array("expire"=>3600,"useImgBg"=>FALSE,"useNoise"=>true,"length" => 4);	
    	$Verify = new \Think\Verify($config);
        $Verify->entry($id);
    }
    
    /*
     * ueditor文件上传
     */  
    public function upload(){
    /**
     * Created by JetBrains PhpStorm.
     * User: taoqili
     * Date: 12-7-18
     * Time: 上午10:42
     */
    checkUserLogin();
    header("Content-Type: text/html; charset=utf-8");
    error_reporting(E_ERROR | E_WARNING);
    date_default_timezone_set("Asia/chongqing");
    include "./../Include/ueditor/Uploader.class.php";      //包含类处理文件
    //上传图片框中的描述表单名称，
    $title = htmlspecialchars($_POST['pictitle'], ENT_QUOTES);
    $path = htmlspecialchars($_POST['dir'], ENT_QUOTES);
    //图片上传允许的存储目录
    $globalConfig = array(
    'imageSavePath' => array (
        '默认文件夹',
    )
    );
    $imgSavePathConfig = $globalConfig[ 'imageSavePath' ];

    //获取存储目录
    if ( isset( $_GET[ 'fetch' ] ) ) {

        header( 'Content-Type: text/javascript' );
        echo 'updateSavePath('. json_encode($imgSavePathConfig) .');';
        return;

    }

    //上传配置
    $config = array(
        "savePath" => $imgSavePathConfig,
        "maxSize" => 1000, //单位KB
        "allowFiles" => array(".gif", ".png", ".jpg", ".jpeg", ".bmp"),
        "fileNameFormat" => $_POST['fileNameFormat']
    );
    $config[ 'savePath' ] = getUpSavePath();
    
    //生成上传实例对象并完成上传
    $up = new \Uploader("upfile", $config);

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
     *   'url'      :'a.jpg',   //保存后的文件路径
     *   'title'    :'hello',   //文件描述，对图片来说在前端会添加到title属性上
     *   'original' :'b.jpg',   //原始文件名
     *   'state'    :'SUCCESS'  //上传状态，成功时返回SUCCESS,其他任何值将原样返回至图片上传框中
     * }
     */
    if($info){
       $filename    = basename($info['url']);
       $info["url"] = substr($info["url"],1,strlen($info["url"]));
       $db_filelog = M("FileLog");
       $log = array(
                     "uid"=>USER_ID,
                     "size"=>$info[ "size" ],
                     "name" => $filename,
                     "type"=>$info[ "type" ],
                     "path"=>$info[ "url" ],
                     "status"=>"1",
                     "time"=>time(),
                     "tag"=>0
                     ); 
       if($db_filelog->add($log)){ 
       echo "{'url':'" . $info["url"] . "','title':'" . $title . "','original':'" . $info["originalName"] . "','state':'" . $info["state"] . "'}";        
       }else{
           unlink(".".$log["url"]);
           //日志记录出错
           //$log对象里包含数据库操作错误原因
        }
      }else{
          //上传出错
      } 
    }
   
    /*
     * 涂鸦上传
     */
    public function scrawl(){
    checkUserLogin();    
    header("Content-Type:text/html;charset=utf-8");
    error_reporting( E_ERROR | E_WARNING );
    include "./../Include/ueditor/Uploader.class.php";      //包含类处理文件
    //上传配置
    $config = array(
        "savePath" => getUpSavePath().date("Ymd",time())."/",             //存储文件夹
        "maxSize" => 1000 ,                   //允许的文件最大尺寸，单位KB
        "allowFiles" => array( ".gif" , ".png" , ".jpg" , ".jpeg" , ".bmp" )  //允许的文件格式
    );
    //临时文件目录
    $tmpPath = "./uploads/tmp/";

    //获取当前上传的类型
    $action = htmlspecialchars( $_GET[ "action" ] );
    if ( $action == "tmpImg" ) { // 背景上传
        //背景保存在临时目录中
        $config[ "savePath" ] = $tmpPath;
        $up = new \Uploader( "upfile" , $config );
        $info = $up->getFileInfo();
        /**
         * 返回数据，调用父页面的ue_callback回调
         */
        echo "<script>parent.ue_callback('" . $info[ "url" ] . "','" . $info[ "state" ] . "')</script>";
    } else {
        //涂鸦上传，上传方式采用了base64编码模式，所以第三个参数设置为true
        $up = new \Uploader( "content" , $config , true );
        //上传成功后删除临时目录
        if(file_exists($tmpPath)){
            $this->delDir($tmpPath);
        }
        $info = $up->getFileInfo();
        if($info){
            $filename    = basename($info['url']);
            $info[ "url" ] = substr($info[ "url" ],1,strlen($info[ "url" ]));
            $db_filelog = M("FileLog");
            $log = array(
                     "uid"=>USER_ID,
                     "size"=>$info[ "size" ],
                     "name" => $filename,
                     "type"=>$info[ "type" ],
                     "path"=>$info[ "url" ],
                     "status"=>"1",
                     "time"=>time(),
                     "tag"=>0
                     ); 
            if($db_filelog->add($log)){
               echo "{'url':'" . $info[ "url" ] . "',state:'" . $info[ "state" ] . "'}"; 
            }else{
                unlink(".".$log["url"]);
                //日志记录出错
            }
        }else{
            //文件上传出错
        }
    }   
        
    }
   
    
    /*
     * ueditor图片管理
     */
     public function manager(){
      /**
     * Created by JetBrains PhpStorm.
     * User: taoqili
     * Date: 12-1-16
     * Time: 上午11:44
     * To change this template use File | Settings | File Templates.
     */
     checkUserLogin();
     header("Content-Type: text/html; charset=utf-8");
     error_reporting( E_ERROR | E_WARNING );

     //需要遍历的目录列表，最好使用缩略图地址，否则当网速慢时可能会造成严重的延时
     $managerPath = getUpSavePath();
     //$managerPath = substr($managerPath,0,strlen($managerPath)-1);   //修正图片链接地址
     $paths = array($managerPath);
  
     $action = htmlspecialchars( $_POST[ "action" ] );
     if ( $action == "get" ) {
        $files = array();
        foreach ( $paths as $path){
            $tmp = $this->getfiles( $path );
            if($tmp){
                $files = array_merge($files,$tmp);
            }
        }
        if ( !count($files) ) return;
        rsort($files,SORT_STRING);
        $str = "";
        foreach ( $files as $file ) {
            $str .= $file . "ue_separate_ue";
        }
        echo $str;
      }

      }
     
    /*
     * ueditor网页图片提取
     */
     public function getImageByUrl(){
        header("Content-Type: text/html; charset=utf-8");
        error_reporting(E_ERROR|E_WARNING);
        checkUserLogin();
        //远程抓取图片配置
        $config = array(
        "savePath" => getUpSavePath().date("Ymd",time())."/" ,            //保存路径
        "allowFiles" => array( ".gif" , ".png" , ".jpg" , ".jpeg" , ".bmp" ) , //文件允许格式
        "maxSize" => 3000                    //文件大小限制，单位KB
         );
        $uri = htmlspecialchars( $_POST[ 'upfile' ] );
        $uri = str_replace( "&amp;" , "&" , $uri );
        $this->getRemoteImage( $uri,$config );   
      }

     
     /**
      * 遍历获取目录下的指定类型的文件
      * @param $path
      * @param array $files
      * @return array
      */
      protected function  getfiles( $path , &$files = array() )
      {
        
        if ( !is_dir( $path ) ) return null;
        $handle = opendir( $path );
        while ( false !== ( $file = readdir( $handle ) ) ) {
            if ( $file != '.' && $file != '..' ) {
                $path2 = $path . '/' . $file;
                if ( is_dir( $path2 ) ) {
                    $this->getfiles( $path2 , $files );
                } else {
                    if ( preg_match( "/\.(gif|jpeg|jpg|png|bmp)$/i" , $file ) ) {
                        $path2 = substr($path2,1,strlen($path2));
                        $files[] = $path2;
                    }
                }
            }
         }
         return $files;
       }
      /**
       * 远程抓取
       * @param $uri
       * @param $config
       */
       protected  function getRemoteImage( $uri,$config)
       {
         checkUserLogin();
        //忽略抓取时间限制
        set_time_limit( 0 );
        //ue_separate_ue  ue用于传递数据分割符号
        $imgUrls = explode( "ue_separate_ue" , $uri );
        $tmpNames = array();
        foreach ( $imgUrls as $imgUrl ) {
            //http开头验证
            if(strpos($imgUrl,"http")!==0){
                array_push( $tmpNames , "error" );
                continue;
            }
            //获取请求头
            $heads = get_headers( $imgUrl );
            //死链检测
            if ( !( stristr( $heads[ 0 ] , "200" ) && stristr( $heads[ 0 ] , "OK" ) ) ) {
                array_push( $tmpNames , "error" );
                continue;
            }

            //格式验证(扩展名验证和Content-Type验证)
            $fileType = strtolower( strrchr( $imgUrl , '.' ) );
            if ( !in_array( $fileType , $config[ 'allowFiles' ] ) || stristr( $heads[ 'Content-Type' ] , "image" ) ) {
                array_push( $tmpNames , "error" );
                continue;
            }

            //打开输出缓冲区并获取远程图片
            ob_start();
            $context = stream_context_create(
                array (
                    'http' => array (
                        'follow_location' => false // don't follow redirects
                    )
                )
            );
            //请确保php.ini中的fopen wrappers已经激活
            readfile( $imgUrl,false,$context);
            $img = ob_get_contents();
            ob_end_clean();

            //大小验证
            $uriSize = strlen( $img ); //得到图片大小
            $allowSize = 1024 * $config[ 'maxSize' ];
            if ( $uriSize > $allowSize ) {
                array_push( $tmpNames , "error" );
                continue;
            }
            //创建保存位置
            $savePath = $config[ 'savePath' ];
            if ( !file_exists( $savePath ) ) {
                mkdir( "$savePath" , 0777 );
            }
            //写入文件
            $tmpName = $savePath . rand( 1 , 10000 ) . time() . strrchr( $imgUrl , '.' );
            $filename    = basename($tmpName);
            $db_filelog = M("FileLog");
            $tmpName2 = $info["url"] = substr($tmpName,1,strlen($tmpName));
            
            $log = array(
                     "uid"=>USER_ID,
                     "size"=>$uriSize,
                     "name" => $filename,
                     "type"=>$fileType,
                     "path"=>$tmpName2,
                     "status"=>"1",
                     "time"=>time(),
                     "tag"=>0
                     ); 
            
                if($db_filelog->add($log)){
                    try {
                        $fp2 = @fopen( $tmpName , "a" );
                        fwrite( $fp2 , $img );
                        fclose( $fp2 );
                        array_push( $tmpNames ,  $tmpName );
                    } catch ( Exception $e ) {
                        array_push( $tmpNames , "error" );
                    }
                }else{
                        array_push( $tmpNames , "error" );
                }
         }
        /**
         * 返回数据格式
         * {
         *   'url'   : '新地址一ue_separate_ue新地址二ue_separate_ue新地址三',
         *   'srcUrl': '原始地址一ue_separate_ue原始地址二ue_separate_ue原始地址三'，
         *   'tip'   : '状态提示'
         * }
         */

        foreach($tmpNames as $k=>$v){
            if($v!="error")
            $tmpNames[$k] = substr($v,1,strlen($v));             //去掉相对地址那个小点
        }         
        $url =implode( "ue_separate_ue" , $tmpNames ); 
        echo "{'url':'" . $url . "','tip':'远程图片抓取成功！','srcUrl':'" . $uri . "'}";
        }
        

    /**
     * 删除整个目录
     * @param $dir
     * @return bool
     */
     protected function delDir( $dir )
     {
        checkUserLogin();  
        //先删除目录下的所有文件：
        $dh = opendir( $dir );
        while ( $file = readdir( $dh ) ) {
            if ( $file != "." && $file != ".." ) {
                $fullpath = $dir . "/" . $file;
                if ( !is_dir( $fullpath ) ) {
                    unlink( $fullpath );
                } else {
                    $this->delDir( $fullpath );
                }
            }
        }
        closedir( $dh );
        //删除当前文件夹：
        return rmdir( $dir );
     }
}