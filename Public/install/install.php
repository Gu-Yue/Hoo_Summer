<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>FindCMS</title>

</head>
<body>	
<?php
	/*
	 *  安装findcms默认数据库
	 */

	if(!$_POST) Header("Location: /install");
    
    $DATA = array();
    //过滤首尾空格
	foreach ($_POST as $key => $value) {
		$DATA[$key] = ltrim($value);
	}
	
	if (strlen($DATA['db_adminpw'])<6) {
		echo "<br>密码不能少于6个字符";
		exit();
	}
	if ($DATA['db_adminpw']!=$DATA['db_adminpwaffirm']) {
		echo "<br>两次密码不一致!";
		exit();
	}

	$db_address    = $DATA['db_address']=="" ? "localhost" :  $DATA['db_address'];
	$db_username   = $DATA['db_username']=="" ? "root" :  $DATA['db_username'];
	$db_password   = $DATA['db_password']=="" ? "" :  $DATA['db_password'];
	$db_name       = $DATA['db_name']=="" ? "db_findcms" :  $DATA['db_name'];
	$db_prefix     = $DATA['db_prefix']=="" ? "find_" :  $DATA['db_prefix'];
	$db_adminname  = $DATA['db_adminname']=="" ? "admin" :  $DATA['db_adminname'];
	$db_adminpw     = $DATA['db_adminpw']=="" ? "admin" :  $DATA['db_adminpw'];
    
    //连接数据库
	$con = mysql_connect($db_address,$db_username,$db_password);
    if (!$con)
    {
        die('<br>Could not connect: ' . mysql_error());
    }
    //创建数据库
    if (mysql_query("CREATE DATABASE $db_name  DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci",$con))
    {
        echo "<br>Database created";
    }
    else
    {
       echo "<br>创建数据库错误: " . mysql_error()."<br>";
    }
    //创建表
    mysql_select_db($db_name, $con);
    $sql = file_get_contents("findcms.sql");
    $explode = explode(";",$sql);
    $cnt = count($explode);
    for($i=0;$i<$cnt ;$i++){
    
        $sql = $explode[$i];
    
        $result = mysql_query($sql);
    
        if($result){
            echo "成功:".$i."个查询<br>";
        }
        else
        {
            echo "导入失败:".mysql_error();
        }
    }
    mysql_close($con);

?>
</body>
</html>	