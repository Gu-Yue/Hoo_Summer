<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hoo 前台</title>
    <link rel="stylesheet" href="/themes/default/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/themes/default/font-awesome/css/font-awesome.min.css" />
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
        /**全局css**/
       	.list-group-item{
       		border-radius: 0px;
       		border-style: solid none none none;
       	}	
       	/*标签样式*/
       	.cates .list-group-item{
            display: block;
            min-width: 50px;
            float: left;
            border: none;
        }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/"><i class="fa fa-header"></i></a>
    </div>

    
</nav>
    <section class="container">
    	
    	<div class="col-md-3">
    	<div class="list-group hoo-no-border hoo-no-padding">
                    				<div class='list-group-item  hoo-no-padding hoo-no-border'>
                    				<img width="100%" height="100%" src="/avatars/default-lg.png" alt="..." class="img-rounded">
                    				</div>
									<div class='list-group-item  hoo-no-padding hoo-no-border'>
                                    <h3><strong>古 月</strong></h3>
                                    </div>
									<div class='list-group-item user-links'>
									<ul class="list-unstyled hoo-no-margin">
									<li><i class="fa fa-envelope-o"></i> hu@1437.co</li>
									
									<li><i class="fa fa-clock-o"></i> 2014年7月5日</li>	
									</ul>	
									</div>
									
									<div class='list-group-item'>
									</div>
                    			</div><!--list-group-->	
                    			
        <!-- 页面分组   -->
        <div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">分组</h3>
		  </div>
		  <div class="panel-body hoo-no-padding">
		    <ul class="list-group hoo-no-margin text-center">
			  <li class="list-group-item"><a href="#">默认分组</a></li>
			  <li class="list-group-item"><a href="#">文件上传</a></li>
			  <li class="list-group-item"><a href="#">数据验证</a></li>
			  <li class="list-group-item"><a href="#">模板渲染</a></li>
			  <li class="list-group-item"><a href="#">数据库操作</a></li>
			</ul>
		  </div>
		</div
        <!--/ 页面分组   -->

        <!-- 相关链接   -->
        <div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">相关链接</h3>
		  </div>
		  <div class="panel-body hoo-no-padding">
		    <ul class="list-group hoo-no-margin text-center">
			  <li class="list-group-item"><a href="#">默认分组</a></li>
			  <li class="list-group-item"><a href="#">文件上传</a></li>
			  <li class="list-group-item"><a href="#">数据验证</a></li>
			  <li class="list-group-item"><a href="#">模板渲染</a></li>
			  <li class="list-group-item"><a href="#">数据库操作</a></li>
			</ul>
		  </div>
		</div
        <!--/ 相关链接  -->

        <!-- 相关图书   -->
        <div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">相关图书</h3>
		  </div>
		  <div class="panel-body hoo-no-padding">
		    <ul class="list-group hoo-no-margin text-center">
			  <li class="list-group-item"><i class="fa fa-book"></i> <a href="#">默认分组</a></li>
			  <li class="list-group-item"><i class="fa fa-book"></i> <a href="#">文件上传</a></li>
			  <li class="list-group-item"><i class="fa fa-book"></i> <a href="#">数据验证</a></li>
			  <li class="list-group-item"><i class="fa fa-book"></i> <a href="#">模板渲染</a></li>
			  <li class="list-group-item"><i class="fa fa-book"></i> <a href="#">数据库操作</a></li>
			</ul>
		  </div>
		</div
        <!--/ 相关图书  -->
        
        <!-- 相关文件   -->
        <div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">相关文件</h3>
		  </div>
		  <div class="panel-body hoo-no-padding">
		    <ul class="list-group hoo-no-margin text-center">
			  <li class="list-group-item"><a href="#">默认分组</a></li>
			  <li class="list-group-item"><a href="#">文件上传</a></li>
			  <li class="list-group-item"><a href="#">数据验证</a></li>
			  <li class="list-group-item"><a href="#">模板渲染</a></li>
			  <li class="list-group-item"><a href="#">数据库操作</a></li>
			</ul>
		  </div>
		</div
        <!--/ 相关文件  -->
                      			
    	</div>
    	
    	<div class="col-md-9">
		
		<div class="panel panel-default">
		  <div class="panel-heading hoo-no-padding hoo-over-hidden">
		  <ul class="nav nav-pills pull-right" role="tablist">
			  <li role="presentation"><a href="#">页面</a></li>
			  <li role="presentation"><a href="#">标签</a></li>
			</ul>
			<h5 class="">&nbsp;&nbsp;最新文章</h5>
		  </div>
		  <div class="panel-body hoo-no-padding">
		    <div class="list-group hoo-no-margin">
		                            <div class='list-group-item user-list'>
									<a class="hoo-no-padding-lr list-title" href="#">这是一篇文章呼啦啦</a>
									<div class="hoo-no-padding-lr list-foot">
									<small>
										<i class="fa fa-tags"></i>
										<a href="#"> PHP</a> 
										<a href="#">  编程</a> 

										<i class="fa fa-clock-o"></i>  
										2014-05-06 12:25
									</small>
									</div>
									</div>
		    </div>
		  </div>
		</div>	
        <!-- 所有文章 -->
		<div class="panel panel-default">
		  <div class="panel-heading hoo-no-padding hoo-over-hidden">
		  <ul class="nav nav-pills pull-right" role="tablist">
			  <li role="presentation"><a href="#">页面</a></li>
			  <li role="presentation"><a href="#">标签</a></li>
			</ul>
			<h5 class=""><ol class="breadcrumb hoo-no-margin hoo-no-padding">
			  <li><a href="#">&nbsp;&nbsp;Home</a></li>
			  <li><a href="#">Library</a></li>
			  <li class="active">Data</li>
			</ol></h5>
		  </div>
		  <div class="panel-body hoo-no-padding">
		    <div class="list-group hoo-no-margin">
		                            <div class='list-group-item user-list'>
									<a class="hoo-no-padding-lr list-title" href="#">这是一篇文章呼啦啦</a>
									<div class="hoo-no-padding-lr list-foot">
									<small>
										<i class="fa fa-tags"></i>
										<a href="#"> PHP</a> 
										<a href="#">  编程</a> 

										<i class="fa fa-clock-o"></i>  
										2014-05-06 12:25
									</small>
									</div>
									</div>
		    </div>
		  </div>
		</div>	
		<!-- 所有文章 -->
		<!-- 页面样式 -->
		<div class="panel panel-default">
		  <div class="panel-heading hoo-no-padding hoo-over-hidden">
		  <ul class="nav nav-pills pull-right" role="tablist">
			  <li role="presentation"><a href="#">最新文章</a></li>
			  <li role="presentation"><a href="#">标签</a></li>
			</ul>
			<h5 class="">&nbsp;&nbsp;页面</h5>
		  </div>
		  <div class="panel-body hoo-no-padding">
		    <div class="list-group hoo-no-margin">
		                            <div class='list-group-item user-list'>
									<a class="hoo-no-padding-lr list-title" href="#">这是一篇文章呼啦啦</a>
									<div class="hoo-no-padding-lr list-foot">
									<small>
										<i class="fa fa-book"></i>
										<a href="#">前端编程</a> 
										
										<i class="fa fa-file-text-o"></i>
										<a href="#">1437</a> 

										<i class="fa fa-clock-o"></i>  
										2014-05-06 12:25
									</small>
									</div>
									</div>
		    </div>
		  </div>
		</div>	
		<!--/页面样式  -->
		
		<!-- 标签样式 -->
		<div class="panel panel-default">
		  <div class="panel-heading hoo-no-padding hoo-over-hidden">
		  <ul class="nav nav-pills pull-right" role="tablist">
			  <li role="presentation"><a href="#">最新文章</a></li>
			  <li role="presentation"><a href="#">页面</a></li>
			</ul>
			<h5 class="">&nbsp;&nbsp;标签</h5>
		  </div>
		  <div class="panel-body hoo-no-padding">
		    <div class="list-group hoo-no-margin cates">
		                            <div class='list-group-item'>
									<i class="fa fa-tags"></i>
										<a href="#"> PHP</a> 
									</div>
		                            <div class='list-group-item'>
									<i class="fa fa-tags"></i>
										<a href="#"> PHP</a> 
									</div>
		                            <div class='list-group-item'>
									<i class="fa fa-tags"></i>
										<a href="#"> PHP</a> 
									</div>
		                            <div class='list-group-item'>
									<i class="fa fa-tags"></i>
										<a href="#"> PHP</a> 
									</div>
		                            <div class='list-group-item'>
									<i class="fa fa-tags"></i>
										<a href="#"> PHP</a> 
									</div>
									
		    </div>
		  </div>
		</div>	
		<!--/标签样式  -->
		
		
		
		<!-- 正文 -->
		<div class="panel panel-default">
		  <div class="panel-heading hoo-no-padding hoo-over-hidden">
		  <ul class="nav nav-pills pull-right" role="tablist">
			  <li role="presentation"><a href="#">所有文章</a></li>
			  <li role="presentation"><a href="#">页面</a></li>
			  <li role="presentation"><a href="#">标签</a></li>
		  </ul>	
		  <h5 class=""><ol class="breadcrumb hoo-no-margin hoo-no-padding">
			  <li><a href="#">&nbsp;&nbsp;php</a></li>
			  <li><a href="#">关于</a></li>
			  <li class="active">一个标题</li>
			</ol></h5>
		  </div>
		  <div class="panel-body">
		    <div class="post">
    <h1 class="post-title">
      <a href="/2014/06/26/bootstrap-3-2-0-released/">
        Bootstrap 3.2.0 released
      </a>
    </h1>

    <span class="post-date">26 Jun 2014</span>

    
<div class="tweet-button">
  <a href="https://twitter.com/share" class="twitter-share-button" data-size="large" data-count="horizontal" data-via="twbootstrap" data-url="http://blog.getbootstrap.com/2014/06/26/bootstrap-3-2-0-released/" data-text="Bootstrap 3.2.0 released:">Tweet</a>
</div>



  


<p>Today we're shipping Bootstrap v3.2.0, a monster of a release that's been in the works for four months. There's lots of new hotness, hundreds of bug fixes, plenty of documentation improvements, and some build tool improvements. All told, there have been over 1,000 commits since our last release.</p>

<h2>Download Bootstrap</h2>

<p>Download the latest release—source code, compiled assets, and documentation—as a zip file directly from GitHub:</p>

<p><a class="btn-link" href="https://github.com/twbs/bootstrap/archive/v3.2.0.zip">Download Bootstrap 3.2.0</a></p>

<p>Hit the <a href="https://github.com/twbs/bootstrap">project repository</a> or <a href="https://github.com/twbs/bootstrap-sass">Sass repository</a> for more options. Also, remember <a href="https://www.npmjs.org/package/bootstrap">we're available on npm</a>, too.</p>

<h2>Bootstrap CDN</h2>

<p>After reviewing the changelog, update your CDN links to point to the v3.2.0 files:</p>

<div class="highlight"><pre><code class="html"><span class="c">&lt;!-- Latest compiled and minified CSS --&gt;</span>
<span class="nt">&lt;link</span> <span class="na">rel=</span><span class="s">"stylesheet"</span> <span class="na">href=</span><span class="s">"//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"</span><span class="nt">&gt;</span>

<span class="c">&lt;!-- Optional theme --&gt;</span>
<span class="nt">&lt;link</span> <span class="na">rel=</span><span class="s">"stylesheet"</span> <span class="na">href=</span><span class="s">"//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css"</span><span class="nt">&gt;</span>

<span class="c">&lt;!-- Latest compiled and minified JavaScript --&gt;</span>
<span class="nt">&lt;script </span><span class="na">src=</span><span class="s">"//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"</span><span class="nt">&gt;&lt;/script&gt;</span>
</code></pre></div>


<h2>What's new</h2>

<p>Here's a look at some of the highlights of this release.</p>

<h3>Responsive embeds</h3>

<p>As seen in <a href="http://suitcss.github.io">SUIT CSS</a>, we've added a few classes for creating responsive embeds. They're great for proportionally scaling down YouTube videos and other <code>iframe</code> or <code>embed</code> elements. <a href="http://getbootstrap.com/components/#responsive-embed">Head to the docs</a> to check them out.</p>

<h3>New responsive utility classes</h3>

<p>We've had responsive utility classes—e.g., <code>.visible-xs</code>—for awhile now. Today, they level up a bit. We've added <code>block</code>, <code>inline-block</code>, and <code>inline</code> variations for each grid tier. For example, <code>.visible-xs-block</code> is now a thing.</p>

<h3>Copy docs snippets</h3>

<p>Our documentation snippets just got an upgrade with the help of <a href="https://github.com/zeroclipboard/zeroclipboard">ZeroClipboard</a>, the open source Flash-based copy-paste button. It'll appear in the top right of nearly every example in the docs. Just click, and paste.</p>

<h3>LMVTFY</h3>

<p><a href="/2014/06/25/lmvtfy/">We blogged about this yesterday</a>, but we have a new bot hanging out in our issues and pull requests on GitHub. Whenever someone pastes in a live example—like those from JS Bin or jsFiddle—we now validate their HTML. If it's invalid, we tell folks what's wrong so they can fix it.</p>

<h3>Browser bugs</h3>

<p>We've also begun tracking unresolved browser bugs that currently impact Bootstrap's development in some way. We call it the <a href="http://getbootstrap.com/browser-bugs">Wall of browser bugs</a>. One of the coolest parts of developing Bootstrap is finding and reporting browser bugs to their developers. We're literally helping to make the web a better place, and that's pretty awesome in our book.</p>

<h3>And dozens more...</h3>

<p>With over 1,000 commits, a lot has changed, and all of it for the better. A few more notable changes include:</p>

<ul>
<li>The docs have been rearranged and updated to be more specific and easier to develop.</li>
<li>The progress bar component has been improved for increased flexibility.</li>
<li>CSS repaint performance (most notably through scrolling) has been enhanced for several components.</li>
<li>Keyboard navigation (forward and backward) is now available for the carousel.</li>
<li>Modals should no longer shift left when being opened.</li>
</ul>


<p>For a complete breakdown, <a href="https://github.com/twbs/bootstrap/releases/tag/v3.2.0">read the release changelog</a> or the <a href="https://github.com/twbs/bootstrap/issues?milestone=26&amp;page=1&amp;state=closed">v3.2.0 milestone</a>.</p>

<h2>What's next</h2>

<p>Well, we'll probably have a patch release (v3.2.1), and then I imagine it's onward to v4. We have a v3.3.0 milestone on GitHub, but it's still unclear if we'll ship that before jumping to v4. We've been building a list of things we'd like to see in the new version, but we don't have anything ready for the public yet. We'll share more details as we have them though. Until then, enjoy!</p>

<p>&lt;3,</p>

<p><a href="https://twitter.com/mdo">@mdo</a> &amp; <a href="https://github.com/orgs/twbs/members">team</a></p>

  </div>
		  </div>
		</div>	
		<!--/正文 -->
    	</div>
    	
    </section>
    
    <footer class="container">
    © 2014 Hoo	<a href="/about">关于Hoo</a>
    </footer>
    <script src="/themes/default/js/jquery.min.js"></script>
    <script src="/themes/default/js/bootstrap.min.js"></script>
    <script src="/themes/default/js/holder.js"></script>
  </body>
</html>