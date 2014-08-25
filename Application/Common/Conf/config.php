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
    //日志
    'LOG_RECORD' => false, // 默认不记录日志
    'LOG_TYPE' => 'File', // 日志记录类型 默认为文件方式
    'LOG_LEVEL' => 'EMERG,ALERT,CRIT,ERR',// 允许记录的日志级别
    'LOG_EXCEPTION_RECORD' => false, // 是否记录异常信息日志
);