<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>Hoo 安装</title>
<link rel="stylesheet" media="screen" href="/install/css/zzsc.css" />
<style>
.text-left{
	text-align:left !important;
}
</style>
</head>
<body>
<form id="msform" method="post">
	<!-- progressbar -->
	<ul id="progressbar">
		<li class="active"></li>
		<li></li>
		<li></li>
	</ul>
	<!-- fieldsets -->
	<fieldset>
	    <br><br><br><br><br>
		<h1 class="fs-title">安装  Hoo!</h1>
		<h3 class="fs-subtitle"></h3>
		<h3 class="fs-subtitle"><a target="_blank" href="http://www.findcms.com">使用手册</a></h3>
		<h3 class="fs-subtitle"><a target="_blank" href="http://www.findcms.com">开发手册</a></h3>
		<br><br><br>
		<input type="button" name="next" class="next action-button" value="下一步" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">站点信息</h2>
		<h3 class="fs-subtitle"></h3>
		<div class="text-left"><label>站点信息</label><input type="text" name="site[title]" placeholder="站点标题" value=""/></div>
		<div class="text-left"><label></label><textarea name="site[introduce]" placeholder="站点简介"></textarea></div>
		
		<input type="button" name="previous" class="previous action-button" value="上一步" />
		<input type="button" name="next" class="next action-button" value="下一步" />
		
	</fieldset>
	<fieldset>
		<h2 class="fs-title">创建管理员</h2>
		<h3 class="fs-subtitle"></h3>
		<div class="text-left"><label>管理员</label><input type="text" name="db_adminname" placeholder="管理员用户名" value="admin"/></div>
		<div class="text-left"><label>密码</label><input type="text" name="db_adminpw" placeholder="密码" value="admin123"/></div>
		<div class="text-left"><label>确认密码</label><input type="text" name="db_adminpwaffirm" placeholder="确认密码" value="admin123"/></div>
		 
		<input type="button" name="previous" class="previous action-button" value="上一步" />
		<input type="submit" name="submit" class="submit action-button" value="安装 Hoo！" />
	</fieldset>
</form>
<script src="/install/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="/install/js/jquery.easing.min.js" type="text/javascript"></script>
<script src="/install/js/zzsc.js" type="text/javascript"></script>
</body>
</html>