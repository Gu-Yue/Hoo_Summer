<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Hoo</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="stilearning">

        <meta http-equiv="x-pjax-version" content="v173">

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <!-- fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/favico-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/favico-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/favico-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="ico/favico-57-precomposed.png">
        <link rel="shortcut icon" href="ico/favico.png">
        <link rel="shortcut icon" href="ico/favico.ico">

        <!-- build:css /styles/vendor.css -->
        <!-- bower:css -->
        <link rel="stylesheet" href="/bower_components/bootstrap/dist/css/bootstrap.css">
        <link rel="stylesheet" href="/bower_components/font-awesome/css/font-awesome.css">
        <link rel="stylesheet" href="/bower_components/animate.css/animate.min.css">
        <link rel="stylesheet" href="/bower_components/Hover/css/hover.css">
        <!-- endbower -->
        <!-- endbuild -->
        
        <!-- build:css(.tmp) /styles/main.css -->
        <link id="style-components" href="/styles/loaders.css" rel="stylesheet">
        <link id="style-components" href="/styles/bootstrap-theme.css" rel="stylesheet">
        <link id="style-components" href="/styles/dependencies.css" rel="stylesheet">
        <link id="style-base" href="/styles/stilearn.css" rel="stylesheet">
        <link id="style-responsive" href="/styles/stilearn-responsive.css" rel="stylesheet">
        <link id="style-helper" href="/styles/helper.css" rel="stylesheet">
        <link id="style-sample" href="/styles/pages-style.css" rel="stylesheet">
        <!-- endbuild -->
        
        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.min.js"></script>
        <![endif]-->
        <style>
        
        .hoo-no-padding{
        	padding:0 !important;
        }
        .hoo-no-padding-botttom{
        	padding-bottom:0 !important;
        }
        .hoo-no-padding-left{
        	padding-left:0 !important;
        }
        .hoo-no-padding-lr{
        	padding-left:0 !important;
        	padding-right:0 !important;
        }
        .hoo-over-hidden{
        	overflow: hidden;
        }
        .hoo-relative{
        	position:relative;
        }
        .hoo-no-margin{
        	margin:0 !important;
        }
        .hoo-no-margin-lr{
        	margin-left:0 !important;
        	margin-right:0 !important;
        }
        .hoo-no-height{
        	min-height:0 !important;
        }
        .hoo-no-border{
        	border-style:none;
        	box-shadow: none;
        }
        .hoo-text-left{
        	text-align: left !important;
        }
        .hoo-text-right{
        	text-align: right !important;
        }
        .hoo-text-center{
        	text-align: center !important;
        }
        .hoo-re-right{
        	position: relative;
        	right:0;
        }
        .hoo-bg-slight{
        	background: #F8F8F8 !important;
        }
        .hoo-border-table{
        	border-color: #E0E4E8;
        }
        .hoo-hide{
        	display: none;
        }
        .hoo-hidden{
        	visibility: hidden;
        }
        .textarea-y,.hoo-textarea-y{
        	resize:vertical;
        }
        .hoo-margin-bottom{
        	margin-bottom:10px;
        }
        .hoo-auto-buzz-out{
			transform: translateZ(0px);
			box-shadow: 0px 0px 1px transparent;
			animation-name: wobble-vertical;
			animation-duration: 1s;
			animation-timing-function: ease-in-out;
			animation-iteration-count: 2;
        }
        /* 全局设定 */
        .panel-title{
        	font-size:13px !important;
        }
        .panel-actions .btn-panel{
        	height: 35px;
        }
        .content-control .control-nav li:hover{
		  background:#EEE;
		}
		button:link,button:active,button:visited,a:active,a:visited,a:link{
		    outline:none;
		    -moz-outline:none;
		}
        
        /* /全局设定 */
        
        /* 页面隐藏选项 */
        #amount_per_page_apply{
		  position: absolute;
		  top: 2px;
		  left: 172px;
		  height:23px;
		  padding-top: 1px;
		}
		.hoo-header-add{
			min-width:130px !important;
		}
		/* /页面隐藏选项 */
        
        /* 管理表格 */
        .hoo-admin-table-actions{
        	left:0;
        }
        .table-actions-tip{
        	position: absolute;
        	right: 0px;
        }
        .hoo-admin-table .panel-actions button{
        	height:40px;
        }
        .hoo-admin-table .table-actions{
		  padding: 10px;
		}
		
		.hoo-admin-table .table-actions ul{
		  padding-right: 10px;
		}
		.hoo-admin-table .table-actions div{
		  padding:0 0 0 5px;
      	  width: 9.5%;
		}
		.hoo-admin-table > .panel-heading > .nav-tabs > li > a {
		  border-right: 1px solid #E0E4E8 !important;
		  border-left: none !important;
		  border-bottom: none !important;
		}
		#multi_apply{
	      margin-top: 2px;
		  height: 27px;
	      padding-top: 3px;
		}
		.hoo-admin-table .nav > li > a {
		    padding: 11px 15px;
		}
        /* /管理表格 */
        </style>
        
        
    </head>

    <body class="animated fadeIn">
        <!-- section header -->
        <header class="header">
            <!-- header brand -->
            <div class="header-brand">
                <!-- <h2><a data-pjax=".content-body" href="index.php"><span class="text-primary">Sti</span>learn</a></h2> -->
                <a data-pjax=".content-body" href="index.php">
                    <span "brand-logo"><h3><strong>Hoo</strong></h3></span>
                </a>
            </div><!-- header brand -->
            
            <!-- header-profile -->
            <div class="header-profile">
                <div class="profile-nav">
                    <span class="profile-username"><?php echo USER_NAME; ?></span>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="fa fa-angle-down"></span>
                    </a>
                    <ul class="dropdown-menu animated flipInX pull-right" role="menu">
                        <!-- <li><a href="/hoo/user/profiles"><i class="fa fa-user"></i>个人中心</a></li> -->
                        <li><a href="/hoo/user/create/n/<?php echo USER_ID; ?>"><i class="fa fa-pencil-square-o"></i> 资料编辑</a></li> 
                        <li><a href="/hoo/user/repassword"><i class="fa fa-circle-o"></i> 修改密码</a></li> 
                        <li class="divider"></li>
                        <li><a href="/hoo/user/logout"><i class="fa fa-sign-out"></i> 注销</a></li>
                    </ul>
                </div>
                <div class="profile-picture">
                    <img alt="" src="<?php echo USER_AVATAR; ?>">
                </div>
            </div><!-- header-profile -->

            <form role="form" class="form-inline">
                <button type="button" class="btn btn-default btn-expand-search"><i class="fa fa-search"></i></button>
                <div class="toggle-search">
                    <input type="text" class="form-control" placeholder="搜索" />    
                    <button type="button" class="btn btn-default btn-collapse-search"><i class="fa fa-times"></i></button>
                </div>
            </form><!--/form-search-->

            <!-- header menu -->
            <ul class="hidden-xs header-menu pull-right">
                <li>
                    <a href="/" title="站点预览">
                        <i class="header-menu-icon icon-only fa fa-rocket"></i>
                    </a>
                </li><!-- /header-menu-item -->
                 <li>
                    <a href="#" title="添加" class="dropdown-toggle" data-toggle="dropdown" role="button">
                        <i class="header-menu-icon icon-only fa fa-plus"></i>
                    </a>
                     <ul class="dropdown-menu dropdown-extend animated fadeInDown pull-right hoo-header-add" role="menu">
                        <li class="notif-minimal" data-toggle="niceScroll" data-scroll-cursorcolor="#ecf0f1">
                            <a class="notif-item" href="/hoo/item/create">
                                <div class="notif-ico bg-primary">
                                    <i class="fa fa-file-text-o"></i>
                                </div>
                                <p class="notif-text">添加文章</p>
                            </a><!-- /notif-item -->
                            <a class="notif-item" href="/hoo/page/create">
                                <div class="notif-ico bg-primary">
                                    <i class="fa fa-files-o"></i>
                                </div>
                                <p class="notif-text">添加页面</p>
                            </a><!-- /notif-item -->
                            <a class="notif-item" href="/hoo/user/create">
                                <div class="notif-ico bg-primary">
                                    <i class="fa fa-user"></i>
                                </div>
                                <p class="notif-text">添加用户</p>
                            </a><!-- /notif-item -->
                        </li><!-- /dropdown-alert -->
                    </ul><!-- /dropdown-extend -->
                </li><!-- /header-menu-item -->
                <!-- <li>
                    <a href="#" title="Inboxs" class="dropdown-toggle" data-toggle="dropdown" role="button">
                        <span class="badge badge-warning animated animated-repeat flash">3</span>
                        <i class="header-menu-icon icon-only fa fa-envelope-o"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-extend animated fadeInDown pull-right" role="menu">
                        <li class="dropdown-header">You have 3 new messages</li> 
                        <li class="notif-media" data-toggle="niceScroll" data-scroll-cursorcolor="#ecf0f1">
                            <a class="notif-item" href="#">
                                <div class="notif-img pull-left">
                                    <img src="images/dummy/uifaces8.jpg" alt="" class="img-circle" />
                                </div>
                                <h3 class="notif-heading">Nicole Miller <small>Mon</small></h3>
                                <p class="notif-text">Approval for new design!</p>
                            </a> 
                        </li> 
                        <li class="dropdown-footer bg-cloud">
                            <a class="view-all" tabindex="-1" href="#">
                                <i class="fa fa-angle-right pull-right"></i> See all messages
                            </a>
                        </li> 
                    </ul> 
                </li>  -->
            </ul> 
        </header> 

        
        <!-- content section -->
        <section class="section">
            <!-- DONT FORGET REPLACE IT FOR PRODUCTION! -->
            <aside class="side-left">
                <ul class="sidebar">
                    <li>
                        <a href="/hoo" data-pjax=".content-body">
                            <i class="sidebar-icon fa fa-home"></i>
                            <span class="sidebar-text">仪盘表</span>
                        </a>
                    </li><!--/sidebar-item-->
                    <li>
                        <a href="/hoo/item/admin" data-pjax=".content-body">
                            <i class="sidebar-icon fa fa-file-text-o"></i>
                            <span class="sidebar-text">文章</span>
                        </a>
                        <ul class="sidebar-child animated flipInY">
                            <li>
                                <a href="/hoo/item/create" data-pjax=".content-body">
                                    <span class="sidebar-text">新建文章</span>
                                </a>
                            </li>
                            <li>
                                <a href="/hoo/item/admin" data-pjax=".content-body">
                                    <span class="sidebar-text">所有文章</span>
                                </a>
                            </li>
                        </ul><!--/sidebar-child-->
                    </li><!--/sidebar-item-->
                    <li>
                        <a href="/hoo/page/admin">
                            <i class="sidebar-icon fa fa-files-o"></i>
                            <span class="sidebar-text">页面</span>
                        </a>
                        <ul class="sidebar-child animated flipInY">
                            <li>
                                <a href="/hoo/page/create" data-pjax=".content-body">
                                    <span class="sidebar-text">新建页面</span>
                                </a>
                            </li>
                            <li>
                                <a href="/hoo/page/admin">
                                    <span class="sidebar-text">所有页面</span>
                                </a>
                            </li>
                            <li>
                                <a href="/hoo/page/cate" data-pjax=".content-body">
                                    <span class="sidebar-text">分类管理</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/hoo/resources/admin">
                            <i class="sidebar-icon fa fa-folder-o "></i>
                            <span class="sidebar-text">资源</span>
                        </a>
                    </li><!--/sidebar-item-->
                    <li>
                        <a href="/hoo/user/admin" data-pjax=".content-body">
                            <i class="sidebar-icon fa fa-user"></i>
                            <span class="sidebar-text">用户</span>
                        </a>
                        <ul class="sidebar-child animated flipInY">
                        	<!-- <li>
                                <a href="/hoo/user/profiles" data-pjax=".content-body">
                                    <span class="sidebar-text">个人中心</span>
                                </a>
                            </li> -->
                            <li><a href="/hoo/user/create/n/<?php echo USER_ID; ?>">资料编辑</a></li>
                        	<li>
                                <a href="/hoo/user/repassword" data-pjax=".content-body">
                                    <span class="sidebar-text">修改密码</span>
                                </a>
                            </li>
                            <li>
                                <a href="/hoo/user/create" data-pjax=".content-body">
                                    <span class="sidebar-text">添加用户</span>
                                </a>
                            </li>
                            <li>
                                <a href="/hoo/user/admin" data-pjax=".content-body">
                                    <span class="sidebar-text">用户管理</span>
                                </a>
                            </li>
                        </ul> 
                    </li> 
                    <!--sidebar-item-->
                    <li>
                        <a href="/hoo/user/admin" data-pjax=".content-body">  
                            <i class="sidebar-icon fa fa-bar-chart-o"></i>
                            <span class="sidebar-text">系统日志</span>
                        </a>
                        <!-- <ul class="sidebar-child animated flipInY">
                            <li>
                                <a href="/hoo/logs/visitors" data-pjax=".content-body">
                                    <span class="sidebar-text">访问统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="/hoo/logs/actions" data-pjax=".content-body">
                                    <span class="sidebar-text">操作统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="/hoo/logs/users" data-pjax=".content-body">
                                    <span class="sidebar-text">用户统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="/hoo/logs/system" data-pjax=".content-body">
                                    <span class="sidebar-text">系统日志</span>
                                </a>
                            </li>
                        </ul>  -->
                    </li> 
                    <!--sidebar-item-->
                    <li>
                        <a href="/hoo/helper/sitesetting" data-pjax=".content-body">  
                            <i class="sidebar-icon fa fa-sliders"></i>
                            <span class="sidebar-text">设置</span>
                        </a>
                         <ul class="sidebar-child animated flipInY">
                            <li>
                                <a href="/hoo/helper/sitesetting" data-pjax=".content-body">
                                    <span class="sidebar-text">站点设置</span>
                                </a>
                            </li>
                            <li>
                                <a href="/hoo/helper/uploadsetting" data-pjax=".content-body">
                                    <span class="sidebar-text">上传设置</span>
                                </a>
                            </li>
                        </ul>
                    </li><!--/sidebar-item-->
                    
                    <!-- <li>
                        <a href="#">
                            <i class="sidebar-icon fa fa-th-large"></i>
                            <span class="sidebar-text">开发</span>
                        </a>
                        <ul class="sidebar-child-inline animated flipInX">
                            <li>
                                <a href="/hoo/user/regiestModule" data-pjax=".content-body">
                                    <i class="sidebar-icon fa fa-sitemap"></i>
                                    <span class="sidebar-text">功能模块注册</span>
                                </a>
                            </li>
                        </ul> 
                    </li>  -->
                </ul><!--/sidebar-->
            </aside><!--/side-left-->

            <div class="content">
            	<!-- 隐藏的选项容器 -->
             
            	<div class="panel hoo-hide hoo-no-padding hoo-no-margin" id="hide_options_wrap">
            	<div class="panel-body bg-cloud" id="hoo-hide-heder-options">
                
            	</div>
            	</div>
            	<!-- /隐藏的选项容器 -->
            	
            	<!-- 隐藏帮助容器 -->
            	<div class="panel hoo-hide hoo-no-padding hoo-no-margin" id="hide_help_wrap">
            	<div class="panel-body bg-cloud">
            	
<p>在这里列出所有的上传文件，可以对它们进行编辑. 还可以在这里上传编辑文件.</p>	
 
            	</div>
            	</div>
            	<!-- /隐藏帮助容器 -->
            	
                <!-- content-control -->
                <div class="content-control">
                	
<!--control-nav-->
                    <ul class="control-nav pull-right">
                        <li class="divider"></li>
                        <li>
                            <a href="/hoo/helper/uploadsetting">
                            设置上传图片尺寸
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#" id="hide_help_button">
                               帮助  <i class="fa fa-caret-down"></i>
                            </a>
                        </li>
                    </ul><!--/control-nav-->
                    
                    <!--breadcrumb-->
                    <ul class="breadcrumb">
                        <li><a href="index.php"><i class="fa fa-folder-o"></i> 资源</a></li>
                    </ul>

                </div><!-- /content-control -->
                <div class="content-body">
                  <?php if(isset($hoo_message)&&is_array($hoo_message)): ?>
                  <div class="row col-md-12">
                  	 <?php foreach($hoo_message['error'] as $info){ echo '<div class="callout callout-danger fade in hoo-auto-buzz-out">'.$info.'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'; } foreach($hoo_message['success'] as $info){ echo '<div class="callout callout-info fade in">'.$info.'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'; } ?>
                  </div>
                  <?php endif; ?>
                  
<style>
/*所有的条目的容器*/
.resources-wrap{
  padding: 0px;
  width:72.4%;
}
.resources-wrap .navbar-nav li a{
  height: 30px;
  margin: 0px 2px;
  padding: 6px 10px;
}
.resources-wrap .navbar-nav li.active a{
  background: #EEE;
}
.resources-wrap input{
  margin: 1px;
}
.resources-wrap .pagination li a{
  margin: 2px 0 0 0;
}

/*图片显示容器*/
.resource-item{
   margin: 10px;
   width:auto;
   border: 2px solid #FFFFFF;
}
.resource-item:hover{
  cursor:pointer;
  border: 2px solid #13A89E;
}

.resource-item .progress{
  margin: 6px 0px 0px 0px;
}
.resource-item li{
  padding: 0px;
}

/*编辑条目信息栏*/
.resource-info{
  padding: 0px;
   width:240px;
   margin-top: -1px;
   display: none;
}
.resource-info .list-group-item{
  padding: 5px 20px;
  width: 110%;
  border-radius: 0px !important;
}
.resources-manager{
	min-width:960px;
}
.item-info{
  width: 100px;
  overflow:hidden;
  font-size:12px;
  position: relative;
  bottom:0;
  border: none;
}
.resource-file{
  text-align: center;
}
.resource-file img{
  width: 100px;
  height: 100px;
  margin: 0px auto !important;;
}
.resource-item{
  height: 150px;
  overflow: hidden;
  vertical-align: center;
  background: #FFF;
}
</style>	
<div class="resources-manager">
<ul class="col-md-2 nav nav-tabs nav-pills nav-stacked hoo-no-padding hoo-no-border" id="resources-left-nav">
    
    <li><button class="btn form-control btn-default" data-target="#create-new-folder-modal" data-toggle="modal">新建文件夹</button></li>
    <li><hr></li>
    <li class="active"><a href="#contabs1" data-toggle="tab">默认文件夹</a></li>
   
     

</ul>
<div class="tab-content">	
<div class="col-md-9 tab-pane fade active in" id="contabs1">
                            <?php $image_active = $_GET['type'] != 'file' ? 'active' : ''; $file_active = $_GET['type'] == 'file' ? 'active' : ''; $image_active2 = $_GET['type'] != 'file' ? 'active in' : ''; $file_active2 = $_GET['type'] == 'file' ? 'active in' : ''; ?>
                            <ul class="nav nav-tabs">
                                <li class="<?php echo ($image_active); ?>"><a href="/hoo/resources/admin/type/image" >图片库</a></li>
							    <li class="<?php echo ($file_active); ?>"><a href="/hoo/resources/admin/type/file" >文件库</a></li>
                                <li class=""><a href="#botabs1" data-toggle="tab">上传资源</a></li>
                                <!-- <li><a href="#upload-by-url" data-toggle="tab">从URL添加</a></li>  -->
                            </ul>
                            <div class="tab-content hoo-no-padding" style="padding-top:15px;">
                          
                          
                          
                                <div class="tab-pane fade" id="botabs1">
                                <form action="/hoo/resources/upload" data-input="dropzone" class="dropzone" enctype="multipart/form-data">
		                            <div class="fallback">
		                                <input name="mydropzone" type="file" multiple />
		                            </div>
		                        </form><!--/form-->	
                                </div>
                                
                                <!-- 从URL上传文件 -->
                                <div class="tab-pane fade" id="upload-by-url">
                                <br><br><br>	
								<div class="input-group">
                                            <input class="form-control" id="upload-by-url-input" type="text" placeholder="输入URL...">
                                            <span class="input-group-btn">
                                                <button class="btn btn-primary" type="button">上传</button>
                                            </span>
                                        </div>
                                </div>
                                <!--/ 从URL上传文件 -->
                                
                                
                                <div class="tab-pane fade <?php echo ($image_active2); ?>" id="botabs2">
          
           <div class="col-md-8 resources-wrap hoo-bg-slight">
           <div class="collapse navbar-collapse hoo-no-padding hoo-no-margin hoo-bg-slight">
                                    <!-- <ul class="nav navbar-nav hoo-no-padding hoo-no-margin">
                                        <li class="active hoo-no-padding hoo-no-margin"><a href="#">所有图片</a></li>
                                        <li class="hoo-no-padding hoo-no-margin"><a href="#">最近使用</a></li>
                                        <li class="hoo-no-padding hoo-no-margin"><a href="#">常使用</a></li>
                                    </ul>

                                    <form class="navbar-form navbar-left hoo-no-padding hoo-no-margin" role="search">
                                        <div class="form-group">
                                            <input class="form-control input-sm" placeholder="Search" type="text">
                                        </div>
                                    </form>
                                    
                                    <ul class="navbar-left pagination pagination-sm  pull-right hoo-no-padding hoo-no-margin">
                                        <li class="disabled"><a href="#">«</a></li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul> -->
                                </div>     	

                	
						<?php foreach($images as $image): ?>
                        <ul class="list-group col-md-3 hoo-no-padding resource-item">
    					<li class="list-group-item resource-file" id="<?php echo ($image["name"]); ?>">
                        <img alt="100*100" src="<?php echo substr($image['path'],1); ?>" style=""> 
    					</li>
    					<li class="list-group-item text-blue item-info" title="<?php echo ($image["alias"]); ?>">
                        <?php echo ($image["alias"]); ?> 
    					</li>
						</ul> 
                        <?php endforeach; ?>
                               		
          
 						</div>
                        <div class="col-md-4  resource-info">
                        <!-- 图片信息 -->
 					    </div>
 					    
                                </div>
                                <div class="tab-pane fade <?php echo ($file_active2); ?>" id="botabs3">

                	
						<?php foreach($files as $file): ?>
                        <ul class="list-group col-md-3 hoo-no-padding resource-item resource-item-file">
    					<br/>
    					<li class="list-group-item resource-file" style="border: none;">
                        <img alt="100*100" src="/images/file.png" style=""> 
    					</li>
    					<li class="list-group-item text-blue item-info" title="<?php echo ($file["alias"]); ?>">
                        <?php echo ($file["alias"]); ?> 
    					</li>
						</ul> 
                        <?php endforeach; ?>
                               		
          
 									</div>
                            </div><!-- /tab-content -->
                        
 </div>	
 </div>
</div> 

<!-- 新建文件夹Modal -->
<div style="display: none;" class="modal fade" id="create-new-folder-modal" tabindex="-1" role="dialog" aria-labelledby="modalSmallLabel" aria-hidden="true">
                                <div class="modal-dialog modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h4 class="modal-title" id="modalSmallLabel">新建文件夹</h4>
                                        </div>
                                        <div class="modal-body">
                                            <input class="form-control" id="new-folder-name"  placeholder="输入文件夹名称.."/>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                            <button type="button" class="btn btn-primary" id="create-new-folder">新建文件夹</button>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
</div>                  
  
                </div><!--/content-body -->
            </div><!--/content -->

        </section><!--/content section -->
        
        
        


        <!-- section footer -->
        <a rel="to-top" href="#top"><i class="fa fa-arrow-up"></i></a>
        <footer>
            <p>&copy; 2014 Hoo</p>
        </footer>



        <!-- javascript
        ================================================== -->
        <!-- List of dependencies file, please check on readme.txt! (Purchase only) -->

        <!-- build:js /scripts/vendor-main.js -->
        <!-- bower:js -->
        <script src="/bower_components/jquery/jquery.js"></script>
        <script src="/bower_components/jqueryui/ui/jquery-ui.js"></script>
        <script src="/bower_components/jqueryui-touch-punch/jquery.ui.touch-punch.min.js"></script>
        <script src="/bower_components/bootstrap/dist/js/bootstrap.js"></script>
        <!-- endbuild -->
        
        <!-- build:js /scripts/vendor-usefull.js -->
        <script src="/bower_components/pace/pace.min.js"></script>
        <script src="/bower_components/jquery-pjax/jquery.pjax.js"></script>
        <script src="/bower_components/masonry/masonry.pkgd.min.js"></script>
        <script src="/bower_components/screenfull/dist/screenfull.min.js"></script>
        <script src="/bower_components/jquery.nicescroll/jquery.nicescroll.min.js"></script>
        <script src="/bower_components/countUp.js/countUp.min.js"></script>
        <script src="/bower_components/skycons/skycons.js"></script>
        <script src="/bower_components/jquery.lazyload/jquery.lazyload.min.js"></script>
        <script src="/bower_components/WOW/dist/wow.min.js"></script>
        <!-- endbuild -->
        
        <!-- build:js scripts/vendor-form.js -->
        <script src="/bower_components/jquery.validation/jquery.validate.js"></script>
        <script src="/bower_components/jquery.validation/additional-methods.js"></script>
        <script src="/bower_components/autogrow-textarea/jquery.autogrowtextarea.min.js"></script>
        <script src="/bower_components/typeahead.js/dist/typeahead.min.js"></script>
        <script src="/bower_components/jQuery-Mask-Plugin/jquery.mask.min.js"></script>
        <script src="/bower_components/jquery.tagsinput/jquery.tagsinput.min.js"></script>
        <script src="/bower_components/multiselect/js/jquery.multi-select.js"></script>
        <script src="/bower_components/select2/select2.js"></script>
        <script src="/bower_components/jquery-selectboxit/src/javascripts/jquery.selectBoxIt.js"></script>
        <script src="/bower_components/momentjs/moment.js"></script>
        <script src="/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="/bower_components/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
        <script src="/bower_components/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
        <script src="/bower_components/jquery-minicolors/jquery.minicolors.min.js"></script>
        <script src="/bower_components/dropzone/downloads/dropzone.min.js"></script>
        <script src="/bower_components/jquery-steps/build/jquery.steps.min.js"></script>
        <script src="/bower_components/fullcalendar/fullcalendar.js"></script>
        <!-- endbuild -->
        
        <!-- build:js scripts/vendor-editor.js -->
        <script src="/bower_components/wysihtml5/dist/wysihtml5-0.3.0.js"></script>
        <script src="/bower_components/bootstrap-wysihtml5/dist/bootstrap-wysihtml5-0.0.2.js"></script>
        <script src="/bower_components/bootstrap-markdown/js/markdown.js"></script>
        <script src="/bower_components/bootstrap-markdown/js/to-markdown.js"></script>
        <script src="/bower_components/bootstrap-markdown/js/bootstrap-markdown.js"></script>
        <!-- endbuild -->
        
        
        <!-- build:js scripts/excanvas.js -->
        <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="/bower_components/flot/excanvas.min.js"></script><![endif]-->
        <!-- endbuild -->

        <!-- build:js scripts/vendor-graph.js -->
        <script src="/bower_components/raphael/raphael-min.js"></script>
        <script src="/bower_components/morris.js/morris.min.js"></script>
        <script src="/bower_components/flot/jquery.flot.js"></script>
        <script src="/bower_components/flot/jquery.flot.resize.js"></script>
        <script src="/bower_components/flot/jquery.flot.categories.js"></script>
        <script src="/bower_components/flot/jquery.flot.time.js"></script>
        <script src="/bower_components/flot-axislabels/jquery.flot.axislabels.js"></script>
        <script src="/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.js"></script>
        <script src="/bower_components/sparkline/dist/jquery.sparkline.min.js"></script>
        <!-- endbuild -->
    
        <!-- build:js /scripts/vendor-table.js -->
        <script src="/bower_components/datatables/media/js/jquery.dataTables.js"></script>
        <script src="/bower_components/datatables-tools/js/dataTables.tableTools.js"></script>
        <script src="/bower_components/datatables-bootstrap3/BS3/assets/js/datatables.js"></script>
        <script src="/bower_components/jquery.tablesorter/js/jquery.tablesorter.js"></script>
        <script src="/bower_components/jquery.tablesorter/js/jquery.tablesorter.widgets.js"></script>
        <script src="/bower_components/jquery.tablesorter/addons/pager/jquery.tablesorter.pager.js"></script>
        <!-- endbuild -->

        <!-- build:js /scripts/vendor-maps.js -->
        <script src="/bower_components/jqvmap/jqvmap/jquery.vmap.min.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/maps/jquery.vmap.world.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/maps/jquery.vmap.algeria.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/maps/jquery.vmap.france.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/maps/jquery.vmap.germany.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/maps/jquery.vmap.russia.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/maps/jquery.vmap.usa.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/maps/continents/jquery.vmap.africa.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/maps/continents/jquery.vmap.asia.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/maps/continents/jquery.vmap.australia.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/maps/continents/jquery.vmap.europe.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/maps/continents/jquery.vmap.north-america.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/maps/continents/jquery.vmap.south-america.js"></script>
        <script src="/bower_components/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"></script>
        <!-- endbuild -->
        
        <!-- build:js /scripts/vendor-util.js -->
        <script src="/bower_components/holderjs/holder.js"></script>
        <!-- endbower -->
        <!-- endbuild -->


        <!-- required stilearn template js -->
        <!-- build:js /scripts/main.js -->
        <script src="/scripts/bootstrap-jasny/js/fileinput.js"></script>
        <script src="/scripts/js-prototype.js"></script>
        <script src="/scripts/slip.js"></script>
        <script src="/scripts/hogan-2.0.0.js"></script>        
        <script src="/scripts/theme-setup.js"></script>
        <script src="/scripts/chat-setup.js"></script>
        <script src="/scripts/panel-setup.js"></script>
        <!-- endbuild -->

        <!-- This scripts will be reload after pjax or if popstate event is active (use with class .re-execute) -->
        <!-- build:js /scripts/initializer.js -->
        <script class="re-execute" src="/scripts/bootstrap-setup.js"></script>
        <script class="re-execute" src="/scripts/jqueryui-setup.js"></script>
        <script class="re-execute" src="/scripts/dependencies-setup.js"></script>
        <script class="re-execute" src="/scripts/demo-setup.js"></script>
        <!-- endbuild -->
        
        <script>
        $(function(){
        //--  显示选项及帮助	
         var $hide_options_button = $("#hide_options_button");
		 var $hide_help_button    = $("#hide_help_button");
		 var $hide_help_wrap       = $("#hide_help_wrap");
		 var $hide_options_wrap    = $("#hide_options_wrap");
		 $hide_options_button.click(function(){
		 	    $hide_help_button.find("i").removeClass("fa-caret-up").addClass("fa-caret-down");
		 	    $hide_help_button.parent().removeClass("bg-cloud"); 
		 	    $hide_options_wrap.slideToggle(200,function(){
				    if($(this).is(":hidden")){
				       $hide_options_button.find("i").removeClass("fa-caret-up").addClass("fa-caret-down");	
				       $hide_options_button.parent().removeClass("bg-cloud");	
				    }else{
				       $hide_options_button.find("i").removeClass("fa-caret-down").addClass("fa-caret-up");
				       $hide_options_button.parent().addClass("bg-cloud");
				    }
				    $hide_help_wrap.hide(200);
		 	        
			    });
		 	    
				
			    return false;
		});
		$hide_help_button.click(function(){
				$hide_options_button.find("i").removeClass("fa-caret-up").addClass("fa-caret-down");
				$hide_options_button.parent().removeClass("bg-cloud");
				$hide_help_wrap.slideToggle(200,function(){
				    if($(this).is(":hidden")){
				        $hide_help_button.find("i").removeClass("fa-caret-up").addClass("fa-caret-down");	
				        $hide_help_button.parent().removeClass("bg-cloud");
				    }else{
				       $hide_help_button.find("i").removeClass("fa-caret-down").addClass("fa-caret-up");
				       $hide_help_button.parent().addClass("bg-cloud");
				    }
				     $hide_options_wrap.hide(200);
			    });
			   
			    return false;
		});
        //--/ 显示选项及帮助
        
        //--  管理表格全选
        $(".hoo-check-all").click(function(){
        	var check = $(this).is(":checked");
    		if(check == false){
    	   	   $(".hoo-check").removeAttr("checked");
    		}else{
    	   	   $(".hoo-check").attr("checked",'checked');	
    	    }
    	    
        });
        //--/ 管理表格全选
        
        //--  管理表格选项跳转
        $("a.hoo-admin-dropdown-option").click(function(e){
        	e.preventDefault();
        	var href = $(this).attr('href');
        	var url = window.location.href;
		  		if(url.indexOf("#")!= -1){
		  	 	url = url.substr(0,url.indexOf("#"));
		  		}
		  	var option = href.split('/');
		  	var paras = url.split("/");
		  	var ident = 1;
		  	for(var i=0;i<paras.length;i++){
		  		if(paras[i]=='p'){
		  		   paras[i+1] = '';   //消除分页参数
		  		   continue;
		  		}
		  		if(paras[i]==option[1]){
		  		   paras[i+1] = option[2];
		  		   ident = 0;
		  		}
		  	}
		  	
		  	if(ident){
		  	   url += href;	
		  	}else{
		  	   url = paras[0]+"//";
		  	   for(var i=1;i<paras.length;i++){
		  	   if(paras[i]!=""&&paras[i]!='p')   //消除分页参数
		  	   url += paras[i] + '/';  
		  	   }
		  	}
		    window.location.href = url;
        });
        //--/ 管理表格选项跳转
        
        //--  hoo强行链接
        $('.hoo-js-link').click(function(){
        	var href = $(this).attr('href');
        	window.location.href = href;
        });
        //--/ hoo强行链接
        
        //--  显示选项
        $("#hoo-hide-heder-options").find(":checkbox").click(function(){
           var check = $(this).is(":checked");
    		if(check == true){
    	   		$("."+$(this).attr('id')).hide();
    		}else{
    	   		$("."+$(this).attr('id')).show();
    	    }
        });
        //--/ 显示选项
        
        //-- 单个图片上传
        $(".hoo-single-image-upload").change(function(){
			// alert(this.files.length);
			// alert(this.files[0].name);
			// alert(this.files[0].type);
			var formData = new FormData();
			var $this = $(this);
		　　     formData.append('file',this.files[0]);
		    var xhr = new XMLHttpRequest();
		        xhr.onreadystatechange = function(){
		          if(xhr.readyState == 4 ){
			          if((xhr.status >=200 && xhr.status<300) || xhr.status ==304){
			            var result = JSON.parse(xhr.responseText);
			            if(result.info=="success"){
			               $('#'+$this.attr('tid')).val(result.path); 
			            }
			            else{
			               alert(result.info);
			            }
		         }else{
		                alert("Request was unsuccessful : "+xhr.status);
		             }
		          }
		   }
		   xhr.open("post","/hoo/resources/upload",true);
		   xhr.send(formData);
		});
        //--/单个图片上传 
        });
        </script>
        
        <!-- footer load 模块 -->
        
<script src="/scripts/functions/resources/resources-admin.js"></script> 	

        <!--/ footer load 模块 -->
    </body>
</html>