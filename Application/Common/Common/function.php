<?php
   date_default_timezone_set('Asia/Shanghai'); 
   define("CLIENT_INFO", $_SERVER["HTTP_USER_AGENT"]);
    /*****************************
     *最终要的四个方法，CURD
     *****************************/ 
    function hoo_find($db="",$where=array(),$para=array()){   
        $db = M($db);
        $field    = isset($para['field'])   ? $para['field']:null;
        $r = $db->where($where)->field($field)->find();
        return $r;
    }
    function hoo_add($db="",$data=array()){  
        $db = M($db);
        return $db->add($data);
    }
    function hoo_save($db="",$where=array(),$data=array()){   
        $db = M($db);
        return $db->where($where)->save($data);
    }
    function hoo_select($db="",$where=array(),$para=array()){   
        $db = M($db);
        $distinct = isset($para['distinct']) ? $para['distinct']:false;
        $order    = isset($para['order'])    ? $para['order']:null;
        $field    = isset($para['field'])   ? $para['field']:null;
        $limit    = isset($para['limit'])    ? $para['limit']:null;
        if(isset($para['count'])){
           $r = $db->where($where)->count($para['count']);
        }else{
           $r = $db->where($where)->order($order)->field($field)->limit($limit)->distinct($distinct)->select();
        }
        return $r;
    } 
       //写入错误日志
   function writeErrorlog($message){
     file_put_contents(FINDLOG_PATH."/error.log",date("Y-m-d H:i:s",time())."  ".$message."\r\n",FILE_APPEND);
   }   
  /*
   * 设置session_id
   * 用户登陆时调用
   * 跨页如有Flash传递参数到服务器时调用 /file/file/upload
   * 其中的cookie由用户登陆时设置
   */
   
   //判断表单数据来源是是否是本网站
   function isLocalData(){
       $source = $_SERVER["HTTP_REFERER"];
       $host   = $_SERVER['HTTP_HOST'];
       $location = strpos($source,$host,0)==7;
       return  $location==7||$location==8 ? true:false;
   } 
   function getRoleToken($role){
        return md5($role."~hoocms(@.@)");
    }
  /***********************************************************
   * 判断用户登陆
   ***********************************************************/
    function checkUserLogin(){       
        session_start();
        if(session('?uid')&&session('?un')&&session('?role')){         
           define('USER_ID', session('uid'));        //设置用户名常量
           define('USER_NAME', session('un'));       //设置用户名常量
           define('USER_AVATAR',session("avatar"));  //设置头像常量
           //获取角色权限数组
           $keys_rows = hoo_select("UserKeys",array("token"=>getRoleToken(session("role"))),array("field"=>"module,function"));
           $keys = array();
           $moduleKeys = array();
           foreach ($keys_rows as $value) {
               array_push($keys,$value['module']."-".$value['function']);
               array_push($moduleKeys,$value['module']);
           }
           $GLOBALS['roleKeys'] = $keys;
           $GLOBALS['roleModuleKeys'] = array_unique($moduleKeys);
        }else{
           $t = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'].'?'.$_SERVER['QUERY_STRING'];
           redirect("/hoo/user/login?t=".$t);
        }  
    }
    //获取登陆用户的ID
    function getUid(){       
        session_start();
        if(session('?uid')&&session('?un')&&session('?role')){         
           return session('uid');       //设置用户名常量
        }else{
           return null;
        }
        
    }
    //检测用户权限函数，设置功能的权限
    function setKey($module,$function,$redirect=null){
        $check = $module."-".$function;
        if(!in_array($check,$GLOBALS['roleKeys'])){
           if($redirect) throw new \Think\Exception('权限不够'.$check);;
           return null;
        }else{
            return true;
        }
    }
    //检测用户模块权限，用于菜单显示
    function setModuleKey($module){
        $check = $module;
        if(!in_array($check,$GLOBALS['roleModuleKeys'])){
           return null;
        }else{
            return true;
        }
    }
    function filterData($data=array(),$para=array()){
        //博客信息数据
        foreach($data as $k => $v){
                if(is_array($v)){
                   filterData($v,$para);   
                }else{  
                $v = in_array($k,$para)?$v:strip_tags($v);   
                $v = trim($v);
                $v = htmlspecialchars($v);
                $data[$k] = $v;
                }
         }
        return $data;
    }
    
    
 
  /*
   * 写入系统日志
   * 
   */
    function writeUserLog($uid="",$type="",$action="",$object="-"){
         if($uid!=""&&$type!=""&&$action!=""){
         $Userlog = M('UserLog');     
         $data =array();    
         $data['uid'] = $uid;
         $data['type'] = $type;
         $data['action'] = $action;
         $data['object'] = $object;
         $data['ip']     = get_client_ip();
         $data['time']   = time(); 
         $Userlog->data($data)->add();
         }
        
    }
    // /*
     // * 创建目录函数
     // * @parm  $url  地址字符串
     // */  
     // function createMenu($url){    
         // $addr = explode("/",$url);
         // $c = "./";
         // foreach($addr as $a){
             // if($a!="."){
                // if(!file_exists($c.$a)){
                    // mkdir($c.$a); 
                // }
                // $c = $c.$a."/";
             // }
//              
         // }
     // } 
     //文件上传是获取路径
     function getUpSavePath(){
       //$path = "./source/".md5(session('uid')."find~")."/";    
       $path = "./resources/".md5(session('uid')."find~")."-".session('uid')."/";
       if(!file_exists($path))
       mkdir($path)
       ;
       return $path;     
     }
     // //删除目录下所有文件
      // function delDirFiles($dir)
     // {
        // //先删除目录下的所有文件：
        // $dh = opendir( $dir );
        // while ( $file = readdir( $dh ) ) {
            // if ( $file != "." && $file != ".." ) {
                // $fullpath = $dir . "/" . $file;
                // if ( !is_dir( $fullpath ) ) {
                    // unlink( $fullpath );
                // } else {
                    // delDirFiles( $fullpath );
                // }
            // }
        // }
        // closedir( $dh );
        // //删除当前文件夹：
        // return rmdir( $dir );
     // }
    
     
    /********************************************************************************
     *findcms api
     *********************************************************************************/
     function hoo_get_post($where=array(),$para=array()){
        $db = M("Posts");
        $field    = isset($para['field']) ? $para['field']:null;
        $r = $db->where($where)->field($field)->find();       
        return $r;
    }
     function hoo_get_page($where=array(),$para=array()){
        $db = M("Posts");
        $field    = isset($para['field']) ? $para['field']:null;
        if(is_array($where)){
           $where['post_type'] = "page";
        }else{
           $where = array("post_type"=>"page");
        }
        $r = $db->where($where)->field($field)->find();    
        return $r;
    }
    function hoo_get_item($where=array(),$para=array()){
        $db = M("Posts");
        $field    = isset($para['field']) ? $para['field']:null;
        if(is_array($where)){
           $where['post_type'] = "item";
        }else{
           $where = array("post_type"=>"item");
        }
        $r = $db->where($where)->field($field)->find();       
        return $r;
    }
    
    
    
     
    function hoo_get($db="",$where=array(),$para=array()){   
        $db = M($db);
        $distinct = isset($para['distinct']) ? $para['distinct']:false;
        $order    = isset($para['order'])    ? $para['order']:null;
        $field    = isset($para['field'])   ? $para['field']:null;
        $limit    = isset($para['limit'])    ? $para['limit']:null;
        if(isset($para['count'])){
           $r = $db->where($where)->count($para['count']);
        }else{
           $r = $db->where($where)->order($order)->field($field)->limit($limit)->distinct($distinct)->select();
        }
        return $r;
    }
    function hoo_get_pages($where=array(),$para=array()){
        $db = M("Posts");
        $distinct = isset($para['distinct']) ? $para['distinct']:false;
        $order    = isset($para['order'])    ? $para['order']:null;
        $field    = isset($para['field'])   ? $para['field']:null;
        $limit    = isset($para['limit'])    ? $para['limit']:null;
        if(is_array($where)){
           $where['post_type'] = "page";
        }else{
           $where = array("post_type"=>"page");
        }
        if(isset($para['count'])){
           $r = $db->where($where)->count($para['count']);
        }else{
           $r = $db->where($where)->order($order)->field($field)->limit($limit)->distinct($distinct)->select();
        }
        return $r;
    }
    function hoo_get_items($where=array(),$para=array()){
        $db = M("Posts");
        $distinct = isset($para['distinct']) ? $para['distinct']:false;
        $order    = isset($para['order'])    ? $para['order']:null;
        $field    = isset($para['field'])   ? $para['field']:null;
        $limit    = isset($para['limit'])    ? $para['limit']:null;
        if(is_array($where)){
           $where['post_type'] = "item";
        }else{
           $where = array("post_type"=>"item");
        }
        if(isset($para['count'])){
           $r = $db->where($where)->count($para['count']);
        }else{
           $r = $db->where($where)->order($order)->field($field)->limit($limit)->distinct($distinct)->select();
        }
        return $r;
    }
    function hoo_get_page_groups($owner,$page){
        return M("Posts")->query("select distinct post_groups as name FROM hoo_posts where uid = '%d' and post_status = 'public' and post_parent = '%d' ",$owner,$page);
    }
    //获取标签，包括所有public的文章和页面
    function hoo_get_piges($owner){
        $temp = M("Posts")->query("SELECT DISTINCT left(post_date,7) as piges from hoo_posts where uid = '%d' and post_status = 'public'",$owner);
        $r = array();
        foreach ($temp as $key => $value) {
            $row = explode("-",$value['piges']);
            array_push($r,array("year"=>$row[0],"month"=>$row[1]));
        }
        return $r;
    }
    //获取所有标签
    function hoo_get_tags($owner){
        return M("TermsRelationships")->where("uid='%s' and term_type='%s' and post_status='%s'",$owner,"tag","public")->order("term_name")->field("term_name")->distinct(true)->select();
    }
    
     
    
    //资源相关
     function hoo_new_temp_resource_id($uid=""){
         $db_resources_temp = M("ResourcesTemp");
         $id = $db_resources_temp->add(array("uid"=>$uid));
         return $id;
     }
     function hoo_save_resources_temp($args=array()){
         $db_resources_temp = M("ResourcesTemp");
         $r = $db_resources_temp ->where("id = '%d'",$args['resource_id'])->save($args);
         if($r) return $r; else return FALSE;
     }
     function hoo_get_resources($args=array()){
         $db_resources = M("Resources");
         $items = $db_resources ->where("resource_parent = '%d' and resource_type='%s'",$args['resource_parent'],$args['resource_type'])->order($args['order'])->select();
         return $items;
     }    
     function hoo_get_temp_resources($args=array()){
         $db_resources_temp = M("ResourcesTemp");
         $items = $db_resources_temp ->where("resource_parent = '%d' and resource_type='%s'",$args['resource_parent'],$args['resource_type'])->order($args['order'])->select();
         return $items;
     }    
     function hoo_get_temp_resource($args=array()){
         $db_resources_temp = M("ResourcesTemp");
         $item = $db_resources_temp ->where("id = '%d'",$args['id'])->find();
         return $item;
     } 
     function hoo_save_temp_resources_group($args=array(),$newName=""){
         $db_resources_temp = M("ResourcesTemp");
         $id = $db_resources_temp ->where("resource_parent = '%d' and resource_type = '%s' and resource_group = '%s'",$args['resource_parent'],$args['resource_type'],$args['resource_group'])->save(array("resource_group"=>$newName));
         if($id) return $id; else return FALSE;
     }
     function hoo_delete_temp_resources_group($args=array()){
         $db_resources_temp = M("ResourcesTemp");
         $id = $db_resources_temp ->where("resource_parent = '%d' and resource_type = '%s' and resource_group = '%s'",$args['resource_parent'],$args['resource_type'],$args['resource_group'])->delete();
         if($id) return $id; else return FALSE;
     }
     function hoo_delete_temp_resource($args=array()){
         $db_resources_temp = M("ResourcesTemp");
         $id = $db_resources_temp ->where("id = '%d'",$args['resource_id'])->delete();
         if($id) return $id; else return FALSE;
     }
    function hoo_post_resources($id=""){
        $ID = $id;
        $resources = array();
        //获取文件资源
        $files   = hoo_get_resources(array("resource_parent"=>$ID,"resource_type"=>"File","order"=>"resource_group"));
        $resources['files']=$files;
        //获取图书资源
        $books   = hoo_get_temp_resources(array("resource_parent"=>$ID,"resource_type"=>"Book","order"=>"resource_group"));
         $resources['books']=$books;
        //获取链接资源
        $links   = hoo_get_temp_resources(array("resource_parent"=>$ID,"resource_type"=>"Link","order"=>"resource_group"));
         $resources['links']=$links;
        //获取广告资源
        $ads   =   hoo_get_temp_resources(array("resource_parent"=>$ID,"resource_type"=>"Ad","order"=>"resource_group"));
        $resources['ads']=$ads;
        $count = 0;
        foreach ($resources as $key => $value) {
                 if(!$value) $count;
        }
        return $count=4 ? null:$resources;
     }
      //获取文章列表
    function hoo_get_items_list($owner=null,$page=null,$group=null){
    $return = array();    
    $show_order =  cookie("itemsShowOrder")&&cookie("itemsShowOrder")!=""?cookie("itemsShowOrder"):"post_date desc";
    $show_count =  cookie("itemsShowCount")&&cookie("itemsShowCount")!=""?cookie("itemsShowCount"):3;
    $argus = array("uid"=>$owner);
    $argus['post_status']  = "public";
    $argus['post_groups']   = $page&&$group  ? $group : null;
    $argus['post_parent']  = $page          ? $page  : null;
    $where = array();
    foreach($argus as $k => $v){if($v){$where[$k]=$v;}}
    
    $db = "ItemsByPage";
    
    $count = hoo_get($db,$where,array("count"=>"id"));
    //获取分页数据
    $pagination = new \Think\Page($count,$show_count);
    $paginationShow = $pagination->show();// 分页显示输出
    $items = hoo_get($db,$where,array("field"=>"id,post_terms,post_parent,post_status,post_title,post_groups",
                                       "order"=>$show_order,
                                       "limit"=>$pagination->firstRow.','.$pagination->listRows
                                       ));
    $pages = $page?hoo_get_pages(array("id"=>$page,"uid"=>$owner),array("field"=>"id,post_title")) : null;
    $return["group"]=$group?$group:null;
    if($page){
        $page = hoo_get_page(array("id"=>$page,"uid"=>$owner));
        //获取分组，并处理分组的顺序显示
        $page['post_groups'] = explode("#",$page['post_groups']);
        $temp = array();
        foreach($page['post_groups'] as $v){
            if(trim($v)!="") $temp[$v] = array();
        }
        $groups = hoo_get_page_groups($owner,$page['id']);
        foreach($groups as $k =>$v){
            $temp[$v['name']] = $v;
        }
        $groups = array();
        foreach($temp as $k =>$v){
            if(count($v)>0) array_push($groups,$v);
        }
        $page['post_groups'] =$groups;
        $return["page"]=$page; 
    }
    $return["items"] = $items;
    $return["pagination"] = $paginationShow;
    $result = array();
    foreach($return as $k => $v){if($v){$result[$k]=$v;}}
    return $result;
    }
     
     
     
     /*******************************************************
      *显示组件部分 
      *******************************************************/
     function hoo_view_resources(){
         return COMMON_VIEW.'resourcesList.html';
     }
