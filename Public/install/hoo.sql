-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 26, 2014 at 02:31 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hoocms`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoo_address_book`
--

CREATE TABLE IF NOT EXISTS `hoo_address_book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT '姓名',
  `sex` varchar(1) NOT NULL COMMENT '性别',
  `place` text NOT NULL COMMENT '地方-存放json数据',
  `born_year` int(4) NOT NULL COMMENT '出生年',
  `birthday_type` varchar(20) NOT NULL COMMENT '生日类型-农历，阳历',
  `birthday` date NOT NULL COMMENT '生日--配合事件',
  `constellation` varchar(20) NOT NULL COMMENT '"星座"',
  `school` text NOT NULL COMMENT '学校-json类型',
  `skill` text NOT NULL COMMENT '技能-json类型',
  `contact` tinytext NOT NULL COMMENT '联系方式-json类型',
  `job` tinytext NOT NULL COMMENT '工作j-json类型',
  `note` tinytext NOT NULL COMMENT '备注',
  `avatar` varchar(255) NOT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hoo_file_log`
--

CREATE TABLE IF NOT EXISTS `hoo_file_log` (
  `name` varchar(50) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT 'none',
  `uid` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `size` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'unused',
  `time` int(11) NOT NULL,
  `md5` varchar(32) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hoo_file_relation`
--

CREATE TABLE IF NOT EXISTS `hoo_file_relation` (
  `uid` bigint(11) NOT NULL,
  `post_id` bigint(11) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`post_id`,`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `hoo_items_by_page`
--
CREATE TABLE IF NOT EXISTS `hoo_items_by_page` (
`id` bigint(20)
,`uid` bigint(20)
,`post_parent` bigint(20)
,`post_parent_title` tinytext
,`post_terms` tinytext
,`post_date` datetime
,`update_date` datetime
,`post_title` tinytext
,`post_groups` tinytext
,`post_status` varchar(20)
,`num` bigint(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `hoo_items_by_pige`
--
CREATE TABLE IF NOT EXISTS `hoo_items_by_pige` (
`id` bigint(20)
,`uid` bigint(20)
,`post_year` int(4)
,`post_month` int(2)
,`post_parent` bigint(20)
,`post_parent_title` tinytext
,`post_terms` tinytext
,`post_date` datetime
,`update_date` datetime
,`post_title` tinytext
,`post_groups` tinytext
,`post_status` varchar(20)
,`num` bigint(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `hoo_items_by_tag`
--
CREATE TABLE IF NOT EXISTS `hoo_items_by_tag` (
`id` bigint(20)
,`uid` bigint(20)
,`tag_name` varchar(200)
,`post_parent` bigint(20)
,`post_parent_title` tinytext
,`post_terms` tinytext
,`post_date` datetime
,`update_date` datetime
,`post_title` tinytext
,`post_groups` tinytext
,`post_status` varchar(20)
,`num` bigint(20)
);
-- --------------------------------------------------------

--
-- Table structure for table `hoo_modules`
--

CREATE TABLE IF NOT EXISTS `hoo_modules` (
  `module_name` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `function` varchar(100) NOT NULL,
  `function_name` varchar(100) NOT NULL,
  PRIMARY KEY (`module`,`function`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoo_modules`
--

INSERT INTO `hoo_modules` (`module_name`, `module`, `function`, `function_name`) VALUES
('后台', 'admin', 'login', '后台登陆'),
('后台', 'admin', 'logs', '系统日志管理'),
('后台', 'admin', 'notice', '发布公告'),
('评论', 'comment', 'add', '添加评论'),
('评论', 'comment', 'admin', '评论管理'),
('评论', 'comment', 'delete', '删除评论'),
('好友录', 'friends', 'curd', '好友录管理'),
('文章', 'item', 'admin', '文章管理界面'),
('文章', 'item', 'create', '添加文章'),
('文章', 'item', 'delete', '删除文章'),
('随笔记', 'note', 'note', '随笔记'),
('页面', 'page', 'admin', '页面管理'),
('页面', 'page', 'cate', '分类管理'),
('页面', 'page', 'create', '创建页面'),
('页面', 'page', 'delete', '删除页面'),
('页面', 'page', 'doc', '生成文档'),
('资源', 'resources', 'ad', '广告资源'),
('资源', 'resources', 'book', '图书资源'),
('资源', 'resources', 'file', '文件资源'),
('资源', 'resources', 'link', '链接资源'),
('用户管理', 'user', 'add', '添加用户'),
('用户管理', 'user', 'admin', '用户管理界面访问'),
('用户管理', 'user', 'delete', '删除用户'),
('用户管理', 'user', 'deleteUserlogs', '用户日志删除'),
('用户管理', 'user', 'info', '个人信息查看'),
('用户管理', 'user', 'keysadmin', '用户权限管理'),
('用户管理', 'user', 'logs', '用户日志查看'),
('用户管理', 'user', 'module', '用户模块功能注册管理');

-- --------------------------------------------------------

--
-- Table structure for table `hoo_note`
--

CREATE TABLE IF NOT EXISTS `hoo_note` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `post` longtext NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

-- --------------------------------------------------------

--
-- Table structure for table `hoo_notice`
--

CREATE TABLE IF NOT EXISTS `hoo_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `hoo_notice`
--

INSERT INTO `hoo_notice` (`id`, `title`, `content`, `time`) VALUES
(6, '来一个长长的公告', '一、首先需要知道的是：\r\n1、keydown()\r\nkeydown事件会在键盘按下时触发.\r\n2、keyup()\r\nkeyup事件会在按键释放时触发,也就是你按下键盘起来后的事件\r\n3、keypress()\r\nkeypress事件会在敲击按键时触发,我们可以理解为按下并抬起同一个按键\r\n\r\n\r\n二、获得键盘上对应的ascII码：\r\n$(document).keydown(function(event){\r\nalert(event.keyCode);\r\n});\r\n\r\n$tips: 上面例子中,event.keyCode就可以帮助我们获取到我们按下了键盘上的什么按键,他返回的是ascII码,比如说上下左右键,分别是38,40,37,39；\r\n\r\n \r\n\r\n \r\n\r\n一开始用的是keypress，可这个在chrome下面的时候不起作用，后来用keyup来做就可以了，jquery中获取键盘按键，可以使用which属性来获取按键的值，但是，不是所有的按键事件都能被捕获到其按键值(keyup,keypress,keydown)，经过测试，只有keyup事件才能在够被几乎所有的浏览器捕获按键值，keydown在IE6中不起作用。\r\n\r\n测试浏览器:IE6/IE7/IE8，FireFox，Chrome，Opera\r\n\r\n$(document).keyup(function(e){\r\n        var key =  e.which;\r\n        if(key == 27){\r\n\r\n             alert(''按下了ESC键，关闭弹出层'');\r\n        }\r\n    });\r\n\r\n或者（这个只在:IE8，FireFox，Chrome测试过）\r\n\r\n$(document).keyup(function(e){\r\n\r\n    if (e.keyCode == 27)\r\n    {\r\n        alert(''按下了ESC键，关闭弹出层'');\r\n    }\r\n\r\n})', '1408992416');

-- --------------------------------------------------------

--
-- Table structure for table `hoo_options`
--

CREATE TABLE IF NOT EXISTS `hoo_options` (
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `type` varchar(60) NOT NULL,
  ` flag` varchar(20) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`key`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoo_options`
--

INSERT INTO `hoo_options` (`key`, `value`, `type`, ` flag`) VALUES
('admin', '管理员', 'role', 'none'),
('common', '一般用户', 'role', 'none'),
('editor', '编辑', 'role', 'none'),
('site', '{"title":"\\u6d4b\\u8bd5\\u7ad9\\u70b9\\u6807\\u9898","icp":"\\u6caa123456","introduce":"\\u8fd9\\u91cc\\u5c31\\u662f\\u4e00\\u4e2a\\u7b80\\u4ecb~\\r\\n","logo":"","favico":""}', 'setting', 'none'),
('upload', '{"max_file_size":"1000000","max_image_size":"1000000","image_sizes":"100*100,1000*1000"}', 'setting', 'none');

-- --------------------------------------------------------

--
-- Stand-in structure for view `hoo_pages`
--
CREATE TABLE IF NOT EXISTS `hoo_pages` (
`id` bigint(20)
,`uid` bigint(20)
,`post_parent` bigint(20)
,`post_terms` tinytext
,`post_date` datetime
,`update_date` datetime
,`post_title` tinytext
,`post_groups` tinytext
,`post_status` varchar(20)
,`num` bigint(20)
,`flag` varchar(100)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `hoo_pages_by_pige`
--
CREATE TABLE IF NOT EXISTS `hoo_pages_by_pige` (
`id` bigint(20)
,`uid` bigint(20)
,`post_year` int(4)
,`post_month` int(2)
,`post_parent` bigint(20)
,`post_terms` tinytext
,`post_date` datetime
,`update_date` datetime
,`post_title` tinytext
,`post_groups` tinytext
,`post_status` varchar(20)
,`num` bigint(20)
,`flag` varchar(100)
);
-- --------------------------------------------------------

--
-- Table structure for table `hoo_piges`
--

CREATE TABLE IF NOT EXISTS `hoo_piges` (
  `uid` bigint(20) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `type` varchar(20) NOT NULL,
  `source` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`type`,`source`),
  KEY `source` (`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hoo_posts`
--

CREATE TABLE IF NOT EXISTS `hoo_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `post_parent` bigint(20) NOT NULL DEFAULT '-1',
  `post_terms` tinytext NOT NULL,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_title` tinytext NOT NULL,
  `post_content` longtext NOT NULL,
  `post_groups` tinytext NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'new',
  `comment_status` varchar(20) NOT NULL DEFAULT 'yes',
  `comment_count` bigint(20) NOT NULL,
  `visit_count` bigint(20) NOT NULL DEFAULT '0',
  `post_logo` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-',
  `post_cover` varchar(255) NOT NULL DEFAULT '-',
  `meta` text NOT NULL,
  `post_view` varchar(20) NOT NULL DEFAULT 'yes',
  `num` bigint(20) NOT NULL DEFAULT '0',
  `flag` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `find_posts_ibfk_1` (`post_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1308 ;

--
-- Dumping data for table `hoo_posts`
--

INSERT INTO `hoo_posts` (`id`, `uid`, `post_parent`, `post_terms`, `post_type`, `post_date`, `update_date`, `post_title`, `post_content`, `post_groups`, `post_status`, `comment_status`, `comment_count`, `visit_count`, `post_logo`, `post_cover`, `meta`, `post_view`, `num`, `flag`) VALUES
(1181, 1437, -1, '默认分类', 'page', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '默认页面', '', '', 'public', 'yes', 0, 0, '-', '-', '', 'yes', 0, 'style="display:none;"'),
(1307, 1437, 1181, '1123,', 'item', '0000-00-00 00:00:00', '2014-08-26 08:28:28', '123', '<p>123<br/></p>', '', 'public', 'yes', 0, 0, '-', '-', '{"digest":"","cover":""}', 'yes', 0, NULL);

--
-- Triggers `hoo_posts`
--
DROP TRIGGER IF EXISTS `after_update_post`;
DELIMITER //
CREATE TRIGGER `after_update_post` AFTER UPDATE ON `hoo_posts`
 FOR EACH ROW BEGIN
IF OLD.post_status = 'new' THEN
INSERT INTO hoo_piges VALUES(NEW.uid,DATE_FORMAT(NEW.post_date,'%Y'),DATE_FORMAT(NEW.post_date,'%m'),NEW.post_type,NEW.id);
END IF;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `before_update_post`;
DELIMITER //
CREATE TRIGGER `before_update_post` BEFORE UPDATE ON `hoo_posts`
 FOR EACH ROW BEGIN
IF OLD.post_status = 'new' THEN
SET NEW.post_date = NOW();
END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `hoo_resources`
--

CREATE TABLE IF NOT EXISTS `hoo_resources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `resource_parent` bigint(20) NOT NULL,
  `resource_type` varchar(20) NOT NULL,
  `resource_title` varchar(255) NOT NULL,
  `resource_status` varchar(20) NOT NULL DEFAULT 'New',
  `resource_group` varchar(255) NOT NULL DEFAULT '',
  `resource_content` text NOT NULL,
  `num` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_parent` (`resource_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hoo_resources_temp`
--

CREATE TABLE IF NOT EXISTS `hoo_resources_temp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `resource_parent` bigint(20) NOT NULL,
  `resource_type` varchar(20) NOT NULL,
  `resource_title` varchar(255) NOT NULL,
  `resource_status` varchar(20) NOT NULL DEFAULT 'New',
  `resource_group` varchar(255) NOT NULL DEFAULT '',
  `resource_content` text NOT NULL,
  `num` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resource_parent` (`resource_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hoo_terms`
--

CREATE TABLE IF NOT EXISTS `hoo_terms` (
  `uid` bigint(20) NOT NULL,
  `name` char(200) NOT NULL,
  `type` char(4) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'public',
  `num` bigint(20) NOT NULL,
  `flag` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`,`name`,`type`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoo_terms`
--

INSERT INTO `hoo_terms` (`uid`, `name`, `type`, `status`, `num`, `flag`) VALUES
(1437, '1123', 'tag', 'public', 0, ''),
(1437, '默认分类', 'cate', 'public', 1, 'display:none;');

--
-- Triggers `hoo_terms`
--
DROP TRIGGER IF EXISTS `after_update_terms`;
DELIMITER //
CREATE TRIGGER `after_update_terms` AFTER UPDATE ON `hoo_terms`
 FOR EACH ROW BEGIN
IF OLD.name != NEW.name THEN
UPDATE hoo_posts set post_terms = new.name where uid = NEW.uid and post_type = 'page' and post_terms = OLD.name and post_status != 'new';
END IF;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `before_add_terms`;
DELIMITER //
CREATE TRIGGER `before_add_terms` BEFORE INSERT ON `hoo_terms`
 FOR EACH ROW BEGIN
set NEW.num = (SELECT COUNT(name) from hoo_terms WHERE type='cate' AND uid =NEW.uid)+1;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `hoo_terms_relationships`
--

CREATE TABLE IF NOT EXISTS `hoo_terms_relationships` (
  `uid` bigint(20) NOT NULL,
  `term_name` varchar(200) NOT NULL,
  `term_type` varchar(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `post_status` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`,`term_name`,`term_type`,`post_id`),
  KEY `post_id` (`post_id`),
  KEY `term_name` (`term_name`),
  KEY `uid` (`uid`,`term_name`),
  KEY `uid_2` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoo_terms_relationships`
--

INSERT INTO `hoo_terms_relationships` (`uid`, `term_name`, `term_type`, `post_id`, `post_status`) VALUES
(1437, '1123', 'tag', 1307, 'public');

--
-- Triggers `hoo_terms_relationships`
--
DROP TRIGGER IF EXISTS `after_delete_terms_relationships`;
DELIMITER //
CREATE TRIGGER `after_delete_terms_relationships` AFTER DELETE ON `hoo_terms_relationships`
 FOR EACH ROW BEGIN
IF (SELECT COUNT(uid) from hoo_terms_relationships WHERE uid = OLD.uid and term_name = OLD.term_name and term_type = 'tag') < 1 THEN
DELETE FROM hoo_terms WHERE uid = OLD.uid and name = OLD.term_name and type = 'tag';
END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `hoo_user`
--

CREATE TABLE IF NOT EXISTS `hoo_user` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(60) NOT NULL DEFAULT 'common',
  `avatar` tinytext NOT NULL,
  `regist_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(20) NOT NULL,
  `profile` longtext,
  `flag` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1506 ;

--
-- Dumping data for table `hoo_user`
--

INSERT INTO `hoo_user` (`uid`, `username`, `password`, `name`, `role`, `avatar`, `regist_time`, `status`, `profile`, `flag`) VALUES
(1437, 'admin', '0192023a7bbd73250516f069df18b500', 'Hoo', 'admin', '/resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-26/1000-1000-53fb7c89187e0.jpg', '0000-00-00 00:00:00', 'abled', '{"firstname":"\\u53e4","lastname":"\\u6708","mail":"hu@1437.co","phone":"18817392521","qq":"747114254","address":"\\u4e0a\\u5927\\u8def99\\u53f7","text":"\\u6ca1\\u4ec0\\u4e48\\u7b80\\u4ecb~"}', 'style="display:none;"');

-- --------------------------------------------------------

--
-- Table structure for table `hoo_user_keys`
--

CREATE TABLE IF NOT EXISTS `hoo_user_keys` (
  `role` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `function` varchar(100) NOT NULL,
  `token` varchar(32) NOT NULL,
  PRIMARY KEY (`role`,`module`,`function`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoo_user_keys`
--

INSERT INTO `hoo_user_keys` (`role`, `module`, `function`, `token`) VALUES
('admin', 'admin', 'login', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'admin', 'logs', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'comment', 'add', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'comment', 'admin', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'comment', 'delete', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'friends', 'curd', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'item', 'admin', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'item', 'create', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'item', 'delete', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'note', 'note', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'page', 'admin', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'page', 'cate', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'page', 'create', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'page', 'delete', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'page', 'doc', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'resources', 'ad', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'resources', 'book', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'resources', 'file', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'resources', 'link', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'user', 'add', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'user', 'admin', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'user', 'delete', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'user', 'deleteUserlogs', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'user', 'info', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'user', 'keysadmin', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'user', 'logs', '9e44d383d3887284ea299a12a178d2b6'),
('admin', 'user', 'module', '9e44d383d3887284ea299a12a178d2b6'),
('editor', 'item', 'delete', '4ee50f79743fd088b991ac52752b230a'),
('editor', 'page', 'create', '4ee50f79743fd088b991ac52752b230a'),
('editor', 'page', 'delete', '4ee50f79743fd088b991ac52752b230a');

-- --------------------------------------------------------

--
-- Table structure for table `hoo_user_log`
--

CREATE TABLE IF NOT EXISTS `hoo_user_log` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(11) NOT NULL,
  `ip` varchar(128) NOT NULL,
  `type` varchar(30) NOT NULL,
  `action` varchar(30) NOT NULL,
  `object` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `find_user_log_ibfk_1` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `hoo_user_options`
--

CREATE TABLE IF NOT EXISTS `hoo_user_options` (
  `uid` bigint(20) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`uid`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure for view `hoo_items_by_page`
--
DROP TABLE IF EXISTS `hoo_items_by_page`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hoo_items_by_page` AS select `a`.`id` AS `id`,`a`.`uid` AS `uid`,`a`.`post_parent` AS `post_parent`,`b`.`post_title` AS `post_parent_title`,`a`.`post_terms` AS `post_terms`,`a`.`post_date` AS `post_date`,`a`.`update_date` AS `update_date`,`a`.`post_title` AS `post_title`,`a`.`post_groups` AS `post_groups`,`a`.`post_status` AS `post_status`,`a`.`num` AS `num` from (`hoo_posts` `a` join `hoo_posts` `b`) where ((`a`.`post_type` = 'item') and (`b`.`post_type` = 'page') and (`a`.`post_parent` = `b`.`id`) and (`a`.`post_status` <> 'new'));

-- --------------------------------------------------------

--
-- Structure for view `hoo_items_by_pige`
--
DROP TABLE IF EXISTS `hoo_items_by_pige`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hoo_items_by_pige` AS select `a`.`id` AS `id`,`a`.`uid` AS `uid`,`c`.`year` AS `post_year`,`c`.`month` AS `post_month`,`a`.`post_parent` AS `post_parent`,`b`.`post_title` AS `post_parent_title`,`a`.`post_terms` AS `post_terms`,`a`.`post_date` AS `post_date`,`a`.`update_date` AS `update_date`,`a`.`post_title` AS `post_title`,`a`.`post_groups` AS `post_groups`,`a`.`post_status` AS `post_status`,`a`.`num` AS `num` from ((`hoo_posts` `a` join `hoo_posts` `b`) join `hoo_piges` `c`) where ((`a`.`post_type` = 'item') and (`b`.`post_type` = 'page') and (`a`.`post_parent` = `b`.`id`) and (`a`.`post_status` <> 'new') and (`a`.`id` = `c`.`source`) and (`c`.`type` = 'item'));

-- --------------------------------------------------------

--
-- Structure for view `hoo_items_by_tag`
--
DROP TABLE IF EXISTS `hoo_items_by_tag`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hoo_items_by_tag` AS select `a`.`id` AS `id`,`a`.`uid` AS `uid`,`c`.`term_name` AS `tag_name`,`a`.`post_parent` AS `post_parent`,`b`.`post_title` AS `post_parent_title`,`a`.`post_terms` AS `post_terms`,`a`.`post_date` AS `post_date`,`a`.`update_date` AS `update_date`,`a`.`post_title` AS `post_title`,`a`.`post_groups` AS `post_groups`,`a`.`post_status` AS `post_status`,`a`.`num` AS `num` from ((`hoo_posts` `a` join `hoo_posts` `b`) join `hoo_terms_relationships` `c`) where ((`a`.`post_type` = 'item') and (`b`.`post_type` = 'page') and (`a`.`post_parent` = `b`.`id`) and (`a`.`post_status` <> 'new') and (`a`.`id` = `c`.`post_id`) and (`c`.`term_type` = 'tag'));

-- --------------------------------------------------------

--
-- Structure for view `hoo_pages`
--
DROP TABLE IF EXISTS `hoo_pages`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hoo_pages` AS select `a`.`id` AS `id`,`a`.`uid` AS `uid`,`a`.`post_parent` AS `post_parent`,`a`.`post_terms` AS `post_terms`,`a`.`post_date` AS `post_date`,`a`.`update_date` AS `update_date`,`a`.`post_title` AS `post_title`,`a`.`post_groups` AS `post_groups`,`a`.`post_status` AS `post_status`,`a`.`num` AS `num`,`a`.`flag` AS `flag` from `hoo_posts` `a` where ((`a`.`post_status` <> 'new') and (`a`.`post_type` = 'page'));

-- --------------------------------------------------------

--
-- Structure for view `hoo_pages_by_pige`
--
DROP TABLE IF EXISTS `hoo_pages_by_pige`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hoo_pages_by_pige` AS select `a`.`id` AS `id`,`a`.`uid` AS `uid`,`c`.`year` AS `post_year`,`c`.`month` AS `post_month`,`a`.`post_parent` AS `post_parent`,`a`.`post_terms` AS `post_terms`,`a`.`post_date` AS `post_date`,`a`.`update_date` AS `update_date`,`a`.`post_title` AS `post_title`,`a`.`post_groups` AS `post_groups`,`a`.`post_status` AS `post_status`,`a`.`num` AS `num`,`a`.`flag` AS `flag` from (`hoo_posts` `a` join `hoo_piges` `c`) where ((`a`.`post_status` <> 'new') and (`a`.`id` = `c`.`source`) and (`c`.`type` = 'page'));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoo_note`
--
ALTER TABLE `hoo_note`
  ADD CONSTRAINT `hoo_note_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `hoo_user` (`uid`);

--
-- Constraints for table `hoo_piges`
--
ALTER TABLE `hoo_piges`
  ADD CONSTRAINT `hoo_piges_ibfk_1` FOREIGN KEY (`source`) REFERENCES `hoo_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoo_terms`
--
ALTER TABLE `hoo_terms`
  ADD CONSTRAINT `hoo_terms_ibfk` FOREIGN KEY (`uid`) REFERENCES `hoo_user` (`uid`);

--
-- Constraints for table `hoo_terms_relationships`
--
ALTER TABLE `hoo_terms_relationships`
  ADD CONSTRAINT `hoo_terms_relationships_ibfk_3` FOREIGN KEY (`term_name`) REFERENCES `hoo_terms` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoo_terms_relationships_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `hoo_user` (`uid`),
  ADD CONSTRAINT `hoo_terms_relationships_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `hoo_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoo_user_log`
--
ALTER TABLE `hoo_user_log`
  ADD CONSTRAINT `hoo_user_log_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `hoo_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
