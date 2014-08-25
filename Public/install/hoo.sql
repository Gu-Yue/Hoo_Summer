/*
Navicat MySQL Data Transfer

Source Server         : XAMPP数据库
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : hoocms

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2014-08-26 04:43:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hoo_address_book
-- ----------------------------
DROP TABLE IF EXISTS `hoo_address_book`;
CREATE TABLE `hoo_address_book` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_address_book
-- ----------------------------

-- ----------------------------
-- Table structure for hoo_file_log
-- ----------------------------
DROP TABLE IF EXISTS `hoo_file_log`;
CREATE TABLE `hoo_file_log` (
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

-- ----------------------------
-- Records of hoo_file_log
-- ----------------------------

-- ----------------------------
-- Table structure for hoo_file_relation
-- ----------------------------
DROP TABLE IF EXISTS `hoo_file_relation`;
CREATE TABLE `hoo_file_relation` (
  `uid` bigint(11) NOT NULL,
  `post_id` bigint(11) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`,`post_id`,`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_file_relation
-- ----------------------------

-- ----------------------------
-- Table structure for hoo_modules
-- ----------------------------
DROP TABLE IF EXISTS `hoo_modules`;
CREATE TABLE `hoo_modules` (
  `module_name` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `function` varchar(100) NOT NULL,
  `function_name` varchar(100) NOT NULL,
  PRIMARY KEY (`module`,`function`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_modules
-- ----------------------------
INSERT INTO `hoo_modules` VALUES ('后台', 'admin', 'login', '后台登陆');
INSERT INTO `hoo_modules` VALUES ('后台', 'admin', 'logs', '系统日志管理');
INSERT INTO `hoo_modules` VALUES ('后台', 'admin', 'notice', '发布公告');
INSERT INTO `hoo_modules` VALUES ('评论', 'comment', 'add', '添加评论');
INSERT INTO `hoo_modules` VALUES ('评论', 'comment', 'admin', '评论管理');
INSERT INTO `hoo_modules` VALUES ('评论', 'comment', 'delete', '删除评论');
INSERT INTO `hoo_modules` VALUES ('好友录', 'friends', 'curd', '好友录管理');
INSERT INTO `hoo_modules` VALUES ('文章', 'item', 'admin', '文章管理界面');
INSERT INTO `hoo_modules` VALUES ('文章', 'item', 'create', '添加文章');
INSERT INTO `hoo_modules` VALUES ('文章', 'item', 'delete', '删除文章');
INSERT INTO `hoo_modules` VALUES ('随笔记', 'note', 'note', '随笔记');
INSERT INTO `hoo_modules` VALUES ('页面', 'page', 'admin', '页面管理');
INSERT INTO `hoo_modules` VALUES ('页面', 'page', 'cate', '分类管理');
INSERT INTO `hoo_modules` VALUES ('页面', 'page', 'create', '创建页面');
INSERT INTO `hoo_modules` VALUES ('页面', 'page', 'delete', '删除页面');
INSERT INTO `hoo_modules` VALUES ('页面', 'page', 'doc', '生成文档');
INSERT INTO `hoo_modules` VALUES ('资源', 'resources', 'ad', '广告资源');
INSERT INTO `hoo_modules` VALUES ('资源', 'resources', 'book', '图书资源');
INSERT INTO `hoo_modules` VALUES ('资源', 'resources', 'file', '文件资源');
INSERT INTO `hoo_modules` VALUES ('资源', 'resources', 'link', '链接资源');
INSERT INTO `hoo_modules` VALUES ('用户管理', 'user', 'add', '添加用户');
INSERT INTO `hoo_modules` VALUES ('用户管理', 'user', 'admin', '用户管理界面访问');
INSERT INTO `hoo_modules` VALUES ('用户管理', 'user', 'delete', '删除用户');
INSERT INTO `hoo_modules` VALUES ('用户管理', 'user', 'deleteUserlogs', '用户日志删除');
INSERT INTO `hoo_modules` VALUES ('用户管理', 'user', 'info', '个人信息查看');
INSERT INTO `hoo_modules` VALUES ('用户管理', 'user', 'keysadmin', '用户权限管理');
INSERT INTO `hoo_modules` VALUES ('用户管理', 'user', 'logs', '用户日志查看');
INSERT INTO `hoo_modules` VALUES ('用户管理', 'user', 'module', '用户模块功能注册管理');

-- ----------------------------
-- Table structure for hoo_note
-- ----------------------------
DROP TABLE IF EXISTS `hoo_note`;
CREATE TABLE `hoo_note` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `post` longtext NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `hoo_note_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `hoo_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_note
-- ----------------------------

-- ----------------------------
-- Table structure for hoo_notice
-- ----------------------------
DROP TABLE IF EXISTS `hoo_notice`;
CREATE TABLE `hoo_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_notice
-- ----------------------------
INSERT INTO `hoo_notice` VALUES ('6', '来一个长长的公告', '一、首先需要知道的是：\r\n1、keydown()\r\nkeydown事件会在键盘按下时触发.\r\n2、keyup()\r\nkeyup事件会在按键释放时触发,也就是你按下键盘起来后的事件\r\n3、keypress()\r\nkeypress事件会在敲击按键时触发,我们可以理解为按下并抬起同一个按键\r\n\r\n\r\n二、获得键盘上对应的ascII码：\r\n$(document).keydown(function(event){\r\nalert(event.keyCode);\r\n});\r\n\r\n$tips: 上面例子中,event.keyCode就可以帮助我们获取到我们按下了键盘上的什么按键,他返回的是ascII码,比如说上下左右键,分别是38,40,37,39；\r\n\r\n \r\n\r\n \r\n\r\n一开始用的是keypress，可这个在chrome下面的时候不起作用，后来用keyup来做就可以了，jquery中获取键盘按键，可以使用which属性来获取按键的值，但是，不是所有的按键事件都能被捕获到其按键值(keyup,keypress,keydown)，经过测试，只有keyup事件才能在够被几乎所有的浏览器捕获按键值，keydown在IE6中不起作用。\r\n\r\n测试浏览器:IE6/IE7/IE8，FireFox，Chrome，Opera\r\n\r\n$(document).keyup(function(e){\r\n        var key =  e.which;\r\n        if(key == 27){\r\n\r\n             alert(\'按下了ESC键，关闭弹出层\');\r\n        }\r\n    });\r\n\r\n或者（这个只在:IE8，FireFox，Chrome测试过）\r\n\r\n$(document).keyup(function(e){\r\n\r\n    if (e.keyCode == 27)\r\n    {\r\n        alert(\'按下了ESC键，关闭弹出层\');\r\n    }\r\n\r\n})', '1408992416');

-- ----------------------------
-- Table structure for hoo_options
-- ----------------------------
DROP TABLE IF EXISTS `hoo_options`;
CREATE TABLE `hoo_options` (
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `type` varchar(60) NOT NULL,
  ` flag` varchar(20) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`key`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_options
-- ----------------------------
INSERT INTO `hoo_options` VALUES ('admin', '管理员', 'role', 'none');
INSERT INTO `hoo_options` VALUES ('common', '一般用户', 'role', 'none');
INSERT INTO `hoo_options` VALUES ('editor', '编辑', 'role', 'none');
INSERT INTO `hoo_options` VALUES ('site', '{\"title\":\"\\u6d4b\\u8bd5\\u7ad9\\u70b9\\u6807\\u9898\",\"icp\":\"\\u6caa123456\",\"introduce\":\"\\u8fd9\\u91cc\\u5c31\\u662f\\u4e00\\u4e2a\\u7b80\\u4ecb~\\r\\n\",\"logo\":\"\",\"favico\":\"\"}', 'setting', 'none');
INSERT INTO `hoo_options` VALUES ('upload', '{\"max_file_size\":\"1000000\",\"max_image_size\":\"1000000\",\"image_sizes\":\"100*100,1000*1000\"}', 'setting', 'none');

-- ----------------------------
-- Table structure for hoo_piges
-- ----------------------------
DROP TABLE IF EXISTS `hoo_piges`;
CREATE TABLE `hoo_piges` (
  `uid` bigint(20) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `type` varchar(20) NOT NULL,
  `source` bigint(20) NOT NULL,
  PRIMARY KEY (`uid`,`type`,`source`),
  KEY `source` (`source`),
  CONSTRAINT `hoo_piges_ibfk_1` FOREIGN KEY (`source`) REFERENCES `hoo_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_piges
-- ----------------------------

-- ----------------------------
-- Table structure for hoo_posts
-- ----------------------------
DROP TABLE IF EXISTS `hoo_posts`;
CREATE TABLE `hoo_posts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1306 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_posts
-- ----------------------------
INSERT INTO `hoo_posts` VALUES ('1181', '1437', '-1', '默认分类', 'page', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '默认页面', '', '', 'public', 'yes', '0', '0', '-', '-', '', 'yes', '0', 'style=\"display:none;\"');
INSERT INTO `hoo_posts` VALUES ('1305', '1437', '0', '', 'item', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '无', 'new', 'yes', '0', '0', '-', '-', '', 'yes', '0', null);

-- ----------------------------
-- Table structure for hoo_resources
-- ----------------------------
DROP TABLE IF EXISTS `hoo_resources`;
CREATE TABLE `hoo_resources` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_resources
-- ----------------------------

-- ----------------------------
-- Table structure for hoo_resources_temp
-- ----------------------------
DROP TABLE IF EXISTS `hoo_resources_temp`;
CREATE TABLE `hoo_resources_temp` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_resources_temp
-- ----------------------------

-- ----------------------------
-- Table structure for hoo_terms
-- ----------------------------
DROP TABLE IF EXISTS `hoo_terms`;
CREATE TABLE `hoo_terms` (
  `uid` bigint(20) NOT NULL,
  `name` char(200) NOT NULL,
  `type` char(4) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'public',
  `num` bigint(20) NOT NULL,
  `flag` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`,`name`,`type`),
  KEY `name` (`name`),
  CONSTRAINT `hoo_terms_ibfk` FOREIGN KEY (`uid`) REFERENCES `hoo_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_terms
-- ----------------------------
INSERT INTO `hoo_terms` VALUES ('1437', '默认分类', 'cate', 'public', '1', 'display:none;');

-- ----------------------------
-- Table structure for hoo_terms_relationships
-- ----------------------------
DROP TABLE IF EXISTS `hoo_terms_relationships`;
CREATE TABLE `hoo_terms_relationships` (
  `uid` bigint(20) NOT NULL,
  `term_name` varchar(200) NOT NULL,
  `term_type` varchar(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `post_status` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`,`term_name`,`term_type`,`post_id`),
  KEY `post_id` (`post_id`),
  KEY `term_name` (`term_name`),
  KEY `uid` (`uid`,`term_name`),
  KEY `uid_2` (`uid`),
  CONSTRAINT `hoo_terms_relationships_ibfk_3` FOREIGN KEY (`term_name`) REFERENCES `hoo_terms` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hoo_terms_relationships_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `hoo_user` (`uid`),
  CONSTRAINT `hoo_terms_relationships_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `hoo_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_terms_relationships
-- ----------------------------

-- ----------------------------
-- Table structure for hoo_user
-- ----------------------------
DROP TABLE IF EXISTS `hoo_user`;
CREATE TABLE `hoo_user` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1506 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_user
-- ----------------------------
INSERT INTO `hoo_user` VALUES ('1437', 'admin', '0192023a7bbd73250516f069df18b500', 'Hoo', 'admin', '/resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-26/1000-1000-53fb7c89187e0.jpg', '0000-00-00 00:00:00', 'abled', '{\"firstname\":\"\\u53e4\",\"lastname\":\"\\u6708\",\"mail\":\"hu@1437.co\",\"phone\":\"18817392521\",\"qq\":\"747114254\",\"address\":\"\\u4e0a\\u5927\\u8def99\\u53f7\",\"text\":\"\\u6ca1\\u4ec0\\u4e48\\u7b80\\u4ecb~\"}', 'style=\"display:none;\"');

-- ----------------------------
-- Table structure for hoo_user_keys
-- ----------------------------
DROP TABLE IF EXISTS `hoo_user_keys`;
CREATE TABLE `hoo_user_keys` (
  `role` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `function` varchar(100) NOT NULL,
  `token` varchar(32) NOT NULL,
  PRIMARY KEY (`role`,`module`,`function`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_user_keys
-- ----------------------------
INSERT INTO `hoo_user_keys` VALUES ('admin', 'admin', 'login', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'admin', 'logs', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'comment', 'add', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'comment', 'admin', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'comment', 'delete', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'friends', 'curd', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'item', 'admin', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'item', 'create', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'item', 'delete', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'note', 'note', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'page', 'admin', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'page', 'cate', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'page', 'create', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'page', 'delete', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'page', 'doc', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'resources', 'ad', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'resources', 'book', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'resources', 'file', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'resources', 'link', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'user', 'add', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'user', 'admin', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'user', 'delete', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'user', 'deleteUserlogs', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'user', 'info', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'user', 'keysadmin', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'user', 'logs', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('admin', 'user', 'module', '9e44d383d3887284ea299a12a178d2b6');
INSERT INTO `hoo_user_keys` VALUES ('editor', 'item', 'delete', '4ee50f79743fd088b991ac52752b230a');
INSERT INTO `hoo_user_keys` VALUES ('editor', 'page', 'create', '4ee50f79743fd088b991ac52752b230a');
INSERT INTO `hoo_user_keys` VALUES ('editor', 'page', 'delete', '4ee50f79743fd088b991ac52752b230a');

-- ----------------------------
-- Table structure for hoo_user_log
-- ----------------------------
DROP TABLE IF EXISTS `hoo_user_log`;
CREATE TABLE `hoo_user_log` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(11) NOT NULL,
  `ip` varchar(128) NOT NULL,
  `type` varchar(30) NOT NULL,
  `action` varchar(30) NOT NULL,
  `object` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `find_user_log_ibfk_1` (`uid`),
  CONSTRAINT `hoo_user_log_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `hoo_user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_user_log
-- ----------------------------

-- ----------------------------
-- Table structure for hoo_user_options
-- ----------------------------
DROP TABLE IF EXISTS `hoo_user_options`;
CREATE TABLE `hoo_user_options` (
  `uid` bigint(20) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`uid`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_user_options
-- ----------------------------

-- ----------------------------
-- View structure for hoo_items_by_page
-- ----------------------------
DROP VIEW IF EXISTS `hoo_items_by_page`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `hoo_items_by_page` AS SELECT A.id,
											 A.uid,
											 A.post_parent,
											 B.post_title,
											 A.post_terms,
											 A.post_date,
											 A.update_date,
											 A.post_title,
											 A.post_groups,
											 A.post_status,
                       A.num
                  FROM hoo_posts AS A ,
                       hoo_posts AS B
             WHERE     A.post_type = 'item' 
                   AND B.post_type = 'page'
                   AND A.post_parent = B.id
                   AND A.post_status != 'new' ;

-- ----------------------------
-- View structure for hoo_items_by_pige
-- ----------------------------
DROP VIEW IF EXISTS `hoo_items_by_pige`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `hoo_items_by_pige` AS SELECT  A.id,
														  A.uid,
                              C.year,
                              C.month,
														  A.post_parent,
														  B.post_title,
														  A.post_terms,
														  A.post_date,
														  A.update_date,
														  A.post_title,
														  A.post_groups,
														  A.post_status,
                              A.num
												FROM  hoo_posts AS A ,
														  hoo_posts AS B ,
                              hoo_piges AS C
									 WHERE      A.post_type = 'item' 
												 AND  B.post_type = 'page'
												 AND  A.post_parent = B.id
												 AND  A.post_status != 'new'
                         AND  A.id = C.source
                         AND  c.type = 'item' ;

-- ----------------------------
-- View structure for hoo_items_by_tag
-- ----------------------------
DROP VIEW IF EXISTS `hoo_items_by_tag`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `hoo_items_by_tag` AS SELECT  A.id,
														  A.uid,
                              C.term_name,
														  A.post_parent,
														  B.post_title,
														  A.post_terms,
														  A.post_date,
														  A.update_date,
														  A.post_title,
														  A.post_groups,
														  A.post_status,
                              A.num
												FROM  hoo_posts AS A ,
														  hoo_posts AS B ,
                              hoo_terms_relationships AS C
									 WHERE      A.post_type = 'item' 
												 AND  B.post_type = 'page'
												 AND  A.post_parent = B.id
												 AND  A.post_status != 'new'
                         AND  A.id = C.post_id
                         AND  c.term_type = 'tag' ;

-- ----------------------------
-- View structure for hoo_pages
-- ----------------------------
DROP VIEW IF EXISTS `hoo_pages`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `hoo_pages` AS SELECT  A.id,
														  A.uid,
														  A.post_parent,											 
														  A.post_terms,
														  A.post_date,
														  A.update_date,
														  A.post_title,
														  A.post_groups,
														  A.post_status,
                              A.num,
                              A.flag
												FROM  hoo_posts AS A 
									 WHERE      A.post_status != 'new'
                   AND        A.post_type = 'page' ;

-- ----------------------------
-- View structure for hoo_pages_by_pige
-- ----------------------------
DROP VIEW IF EXISTS `hoo_pages_by_pige`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `hoo_pages_by_pige` AS SELECT  A.id,
														  A.uid,
                              C.year,
                              C.month,
														  A.post_parent,											 
														  A.post_terms,
														  A.post_date,
														  A.update_date,
														  A.post_title,
														  A.post_groups,
														  A.post_status,
                              A.num,
															A.flag
												FROM  hoo_posts AS A ,
                              hoo_piges AS C
									 WHERE      A.post_status != 'new'
                         AND  A.id = C.source
                         AND  c.type = 'page' ;
DROP TRIGGER IF EXISTS `before_update_post`;
DELIMITER ;;
CREATE TRIGGER `before_update_post` BEFORE UPDATE ON `hoo_posts` FOR EACH ROW BEGIN
IF OLD.post_status = 'new' THEN
SET NEW.post_date = NOW();
END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `after_update_post`;
DELIMITER ;;
CREATE TRIGGER `after_update_post` AFTER UPDATE ON `hoo_posts` FOR EACH ROW BEGIN
IF OLD.post_status = 'new' THEN
INSERT INTO hoo_piges VALUES(NEW.uid,DATE_FORMAT(NEW.post_date,'%Y'),DATE_FORMAT(NEW.post_date,'%m'),NEW.post_type,NEW.id);
END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `before_add_terms`;
DELIMITER ;;
CREATE TRIGGER `before_add_terms` BEFORE INSERT ON `hoo_terms` FOR EACH ROW BEGIN
set NEW.num = (SELECT COUNT(name) from hoo_terms WHERE type='cate' AND uid =NEW.uid)+1;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `after_update_terms`;
DELIMITER ;;
CREATE TRIGGER `after_update_terms` AFTER UPDATE ON `hoo_terms` FOR EACH ROW BEGIN
IF OLD.name != NEW.name THEN
UPDATE hoo_posts set post_terms = new.name where uid = NEW.uid and post_type = 'page' and post_terms = OLD.name and post_status != 'new';
END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `after_delete_terms_relationships`;
DELIMITER ;;
CREATE TRIGGER `after_delete_terms_relationships` AFTER DELETE ON `hoo_terms_relationships` FOR EACH ROW BEGIN
IF (SELECT COUNT(uid) from hoo_terms_relationships WHERE uid = OLD.uid and term_name = OLD.term_name and term_type = 'tag') < 1 THEN
DELETE FROM hoo_terms WHERE uid = OLD.uid and name = OLD.term_name and type = 'tag';
END IF;
END
;;
DELIMITER ;
