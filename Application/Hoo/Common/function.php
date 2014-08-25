<?php 
    /******************************************
     *针对后台建设的api 
     ******************************************/
     function hoo_new_post($uid="",$type=""){
         $time =  time();
         $db_posts = M("Posts");
         $db_posts->where("uid = '%d' and post_status = '%s' and post_type = '%s'",$uid,"new",$type)->delete();
         $id = $db_posts->add(array("uid"=>$uid,"post_type"=>$type,"post_parent"=>0,"post_groups"=>"无"));
         return $id;
     }
     function hoo_update_post($where=array(),$args=array()){
         $db_posts = M("Posts");
         $r = $db_posts->where($where)->save($args);
         if($r) return $r; else return FALSE;
     }
     function hoo_add_post($args=array()){
         return M("Posts")->add($args);
     }
    //新建文章
    function hoo_new_item($uid=""){
         $time =  time();
         $db_posts = M("Posts");
         $db_posts->where("uid = '%d' and post_status = '%s' and post_type = '%s'",$uid,"new","item")->delete();
         $id = $db_posts->add(array("uid"=>$uid,"post_type"=>"item","post_parent"=>0,"post_groups"=>"无"));
         return $id;
     }
    
    
    
    
    
    //新建页面
    function hoo_new_page($uid=""){
         $time =  time();
         $db_posts = M("Posts");
         $db_posts->where("uid = '%d' and post_status = '%s' and post_type = '%s'",$uid,"new","page")->delete();
         $id = $db_posts->add(array("uid"=>$uid,"post_type"=>"page","post_parent"=>0,"post_groups"=>"无"));
         return $id;
     }
    
     //保存资源
    function hoo_save_resources($uid="",$post_id=""){
        M()->query("select save_hoo_resources('%s','%s')",$uid,$post_id);
    }
    //编辑资源
    function hoo_edi_resources($uid="",$post_id=""){
        M()->query("select edi_hoo_resources('%s','%s')",$uid,$post_id);
    }
    //分类及标签表
    function hoo_add_terms($uid="",$type="",$terms=array(),$post_id = null,$post_status=null){
         $db_terms = M("Terms");
         $db_terms_relationships = M("TermsRelationships");
         //添加标签
         if($post_id){
            $db_terms_relationships->where("uid='%s' and post_id ='%s' and term_type='%s'",$uid,$post_id,$type)->delete();
         }
         foreach ($terms as $key => $value) {
                if(trim($value)!=""){
                   $db_terms->add(array("uid"=>$uid,"type"=>$type,"name"=>$value));
                   if($post_id){
                      $db_terms_relationships->add(array("uid"=>$uid,"term_type"=>$type,"term_name"=>$value,"post_id"=>$post_id,"post_status"=>$post_status)); 
                   }
                }
         }
         return true; 
     }
     //编辑分类
     function hoo_edi_terms($where=array(),$data=array()){
         $db_terms = M("Terms");
         return $db_terms->where($where)->save($data) ? true:false;
     }
     
     
      //获取归档
     function hoo_get_admin_piges($args=array()){
         $temp = M("Posts")->query("SELECT DISTINCT left(post_date,7) as piges from hoo_posts where uid = '%s' and post_type = '%s' and post_status != 'new'",$args['uid'],$args['post_type']);
         $r = array();
         foreach ($temp as $key => $value) {
             $row = explode("-",$value['piges']);
             array_push($r,array("year"=>$row[0],"month"=>$row[1]));
         }
         return $r;
     }
     //获取所有文章标签
     function hoo_get_admin_tags($uid=""){
         return M("ItemsByTag")->where("uid='%s'",$uid)->order("tag_name")->field("tag_name")->distinct(true)->select();
     }
     //获取分类
     function hoo_get_admin_cates($uid=""){
         return M("Terms")->where("uid='%s'and type='%s'",$uid,"cate")->field("name,flag")->order("num asc,name asc")->select();
     }
     //获取最新编辑的post
     function hoo_get_admin_recently_ediposts($where=array(),$para=array()){
        $db = M("Posts");
        $field    = isset($para['field']) ? $para['field']:null;
        $where['post_status'] = array('neq',"new");
        $r = $db->where($where)->field($field)->order("update_date desc")->limit(7)->select();       
        return $r;
    }
    function hoo_get_admin_terms($args=array()){
         $db_terms = M("Terms");
         return $db_terms->where($args)->select();
     }
     //获取文章列表
    function hoo_get_admin_items_list($page=null,$tag=null,$year=null,$month=null,$group=null){
    $return = array();
    $itemsStatus =  isset($_GET['status'])&&$_GET['status']!=""?$_GET['status']:null;    
    $show_order =   isset($_GET['order'])&&$_GET['order']!=""?explode('-',$_GET['order'])[0].' '.explode('-',$_GET['order'])[1]:"post_date desc";
    $show_count =   isset($_GET['count'])&&$_GET['count']!=""?$_GET['count']:5;
    
    $show_order = "num desc,".$show_order;
    $argus = array("uid"=>USER_ID);
    $argus['post_status']  = $itemsStatus&&$itemsStatus!="all"?$itemsStatus:null;
    $argus['post_groups']   = $page&&$group  ? $group : null;
    $argus['post_parent']  = $page          ? $page  : null;
    $argus['tag_name']     = $tag           ? $tag   : null;
    $argus['post_year']    = $year          ? $year  : null;
    $argus['post_month']   = $month         ? $month : null;
    $where = array();
    foreach($argus as $k => $v){if($v){$where[$k]=$v;}}
    
    $db = "ItemsByPage";
    $db = $tag          ?   "ItemsByTag" :$db;
    $db = $year         ?   "ItemsByPige":$db;
    
    
    $count = hoo_get($db,$where,array("count"=>"id"));
    //获取分页数据
    $pagination = new \Think\Page($count,$show_count);
    $paginationShow = $pagination->show();// 分页显示输出
    $items = hoo_get($db,$where,array("field"=>"id,post_terms,post_date,update_date,post_parent,post_parent_title,post_status,post_title,post_groups",
                                       "order"=>$show_order,
                                       "limit"=>$pagination->firstRow.','.$pagination->listRows
                                       ));
    $pages = $page?hoo_get_pages(array("id"=>$page,"uid"=>USER_ID),array("field"=>"id,post_title")) : null;
    // $return["groupParent"]=$pages = $pages?$pages:null;
    $return["group"]=$group?$group:null;
    if($page){
        $page = hoo_get_page(array("id"=>$page,"uid"=>USER_ID),array("field"=>"id,post_title,post_groups"));
        $page['post_groups'] = explode("#",$page['post_groups']);
        $temp = array();
        foreach($page['post_groups'] as $v){
            if(trim($v)!="") array_push($temp,$v);
        }
        $page['post_groups'] = $temp;
        $return["page"]=$page; 
    }
    $return["items"] = $items;
    $return["tag"]=$tag?$tag:null;
    $return["pige"]=$month?$year."年".$month."月":$year."年";
    $return["pige"]=$year?$return["pige"]:null;
    $return["pagination"] = $paginationShow;
    $result = array();
    foreach($return as $k => $v){if($v){$result[$k]=$v;}}
    return $result;
    }     
    //获取页面列表
     function hoo_get_admin_pages_list($cate=null,$year=null,$month=null){
     $pagesStatus =  isset($_GET['status'])&&$_GET['status']!=""?$_GET['status']:null;    
      $show_order =   isset($_GET['order'])&&$_GET['order']!=""?explode('-',$_GET['order'])[0].' '.explode('-',$_GET['order'])[1]:"post_date desc";
     $show_count =   isset($_GET['count'])&&$_GET['count']!=""?$_GET['count']:5;
     $show_order = "num desc,".$show_order;
     $argus = array('uid'=>USER_ID);
     // $argus['post_type']    = "page";
     $argus['post_status']  = $pagesStatus&&$pagesStatus!="all"?$pagesStatus:null;
     $argus['post_terms']   = $cate ? $cate :null;
     $argus['post_year']    = $year          ? $year  : null;
     $argus['post_month']   = $month         ? $month : null;
     $where = array();
     foreach($argus as $k => $v){if($v){$where[$k]=$v;}}
     
     $db = "Pages";
     $db = $year         ?   "PagesByPige":$db;
     $count = hoo_get($db,$where,array("count"=>"id"));
     
     //获取分页数据
     $pagination = new \Think\Page($count,$show_count);
     $paginationShow       = $pagination->show();// 分页显示输出
     $pages = hoo_get($db,$where,array("order"=>$show_order,"limit"=>$pagination->firstRow.','.$pagination->listRows));
     
     $year =  $year  ? $year."年" :null;
     $month = $month ? $month."月" :null;
     $r = array();
     $r['pagination'] = $paginationShow;
     $r['cate'] = $cate;
     $r['pige'] = $year?$year.$month:null;
     $r['pages'] = $pages;
     return $r;
    }

    //获取用户列表
     function hoo_get_admin_user_list($role=null,$year=null,$month=null){
     $pagesStatus =  isset($_GET['status'])&&$_GET['status']!=""?$_GET['status']:null;    
     $show_order =   isset($_GET['order'])&&$_GET['order']!=""?$_GET['order']:"regist_time desc";
     $show_count =   isset($_GET['count'])&&$_GET['count']!=""?$_GET['count']:5;
     $argus['post_status']  = $pagesStatus&&$pagesStatus!="all"?$pagesStatus:null;
     $argus['role']   = $role ? $role :null;
     $argus['post_year']    = $year          ? $year  : null;
     $argus['post_month']   = $month         ? $month : null;
     $where = array();
     foreach($argus as $k => $v){if($v){$where[$k]=$v;}}
     
     $db = "User";
     $count = hoo_get($db,$where,array("count"=>"uid"));
     //获取分页数据
     $pagination = new \Think\Page($count,$show_count);
     $paginationShow       = $pagination->show();// 分页显示输出
     $users = hoo_get($db,$where,array("order"=>$show_order,"limit"=>$pagination->firstRow.','.$pagination->listRows));
     
     $year =  $year  ? $year."年" :null;
     $month = $month ? $month."月" :null;
     $r = array();
     $r['pagination'] = $paginationShow;
     $r['role'] = $role;
     $r['users'] = $users;
     return $r;
    }
     /****************************************************************************
      *提取博客文章里和规则匹配的连接地址  超链接和图片地址 
      *参数  参照地址  遍历文章
      *返回提取到的文件名的数组
      ****************************************************************************/
     function getLocalHostFileNames($host = null, $post = null){
         if(!$host || !$post) return null;
         $post = htmlspecialchars_decode($post);
         include_once "./../Include/dom/simple_html_dom.php";      //包含Dom处理类
         $html = str_get_html($post);
         $filenames = array();
         //更改超链接地址
               foreach($html->find('a') as $e){
                   if(strrpos($e->href,$host)!==FALSE){
                      array_push($filenames,basename($e->href));
                   }
               }
               //更改图片地址连接
               foreach($html->find('img') as $e){
                  if(strrpos($e->src,$host)!==FALSE){
                      array_push($filenames,basename($e->src));
                   }
               }
        if(count($filenames)>0) return $filenames;
        else                    return null;
         
     }  