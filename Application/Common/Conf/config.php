<?php
return array(
	//'配置项'=>'配置值'
	/*数据库配置*/
    'db_type' => 'mysql',           
    'db_user' => 'sunny',
    'db_pwd' => 'sunny',
    'db_host' => 'localhost',
    'db_name' => 'hoocms',
    'DB_PREFIX'  =>  'hoo_',
    'db_charset' =>    'utf8',
    //简化home模块url地址
    'DEFAULT_MODULE'       =>    'Home',  // 默认模块
    'MODULE_ALLOW_LIST'    =>    array('Home',"Hoo",'File'),
    //关闭自动启动session
    'SESSION_AUTO_START' =>false,
    'SHOW_ERROR_MSG'      =>  true,    // 显示错误信息
    'TMPL_EXCEPTION_FILE' => APP_PATH.'/Common/View/error/404.html',
    
);