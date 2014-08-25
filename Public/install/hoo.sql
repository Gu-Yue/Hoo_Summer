/*
Navicat MySQL Data Transfer

Source Server         : XAMPP数据库
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : hoocms

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2014-08-25 20:34:51
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
INSERT INTO `hoo_file_log` VALUES ('100-100-53f8cfd4e11a7.jpg', 'Chrysanthemum.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f8cfd4e11a7.jpg', 'thumb', '1408815061', '53f8cfd546d17');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f8cfd786603.jpg', 'Desert.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f8cfd786603.jpg', 'thumb', '1408815063', '53f8cfd7e39e6');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f8cfda0d3ad.jpg', 'Hydrangeas.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f8cfda0d3ad.jpg', 'thumb', '1408815066', '53f8cfda5ff38');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f8cfdcb7b8e.jpg', 'Jellyfish.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f8cfdcb7b8e.jpg', 'thumb', '1408815069', '53f8cfdd1b09a');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f8cfdf474d9.jpg', 'Koala.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f8cfdf474d9.jpg', 'thumb', '1408815071', '53f8cfdf990c9');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f8cfe1ba467.jpg', 'Lighthouse.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f8cfe1ba467.jpg', 'thumb', '1408815074', '53f8cfe22c289');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f8cfe465aae.jpg', 'Penguins.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f8cfe465aae.jpg', 'thumb', '1408815076', '53f8cfe4c2bad');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f8cfe714577.jpg', 'Tulips.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f8cfe714577.jpg', 'thumb', '1408815079', '53f8cfe76c0fb');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f916259a2f5.jpg', 't.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f916259a2f5.jpg', 'thumb', '1408833062', '53f9162632a03');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95ac6d718d.jpg', '仙踪周年贺图.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95ac6d718d.jpg', 'thumb', '1408850631', '53f95ac73019b');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95c35d0436.jpg', '仙踪周年贺图.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95c35d0436.jpg', 'thumb', '1408850998', '53f95c3614c13');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95ccdc399a.jpg', 't.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95ccdc399a.jpg', 'thumb', '1408851149', '53f95ccde8bb9');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95cf3b7eda.jpg', 'viewphoto.action.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95cf3b7eda.jpg', 'thumb', '1408851187', '53f95cf3ea4a3');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95cfe35513.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95cfe35513.jpg', 'thumb', '1408851198', '53f95cfe72b10');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95d34055f1.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95d34055f1.jpg', 'thumb', '1408851252', '53f95d3437c6c');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95d6a0d384.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95d6a0d384.jpg', 'thumb', '1408851306', '53f95d6a3c562');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95d8214bcc.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95d8214bcc.jpg', 'thumb', '1408851330', '53f95d8259e40');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95daa22f83.jpg', 'viewphoto.action.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95daa22f83.jpg', 'thumb', '1408851370', '53f95daa5425d');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95dbd210a5.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95dbd210a5.jpg', 'thumb', '1408851389', '53f95dbd5f71a');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95e01e257f.png', '课表.png', '1437', '0', '100*100', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95e01e257f.png', 'thumb', '1408851458', '53f95e02191af');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95e54de0ed.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95e54de0ed.jpg', 'thumb', '1408851541', '53f95e551ae9c');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95e765ab9f.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95e765ab9f.jpg', 'thumb', '1408851574', '53f95e76aeb0b');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95e85b9016.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95e85b9016.jpg', 'thumb', '1408851589', '53f95e85e55f4');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95ea54ac14.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95ea54ac14.jpg', 'thumb', '1408851621', '53f95ea5850bb');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95eda1ca38.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95eda1ca38.jpg', 'thumb', '1408851674', '53f95eda38b0c');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95eeaad201.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95eeaad201.jpg', 'thumb', '1408851690', '53f95eead0e5b');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95f771cba0.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95f771cba0.jpg', 'thumb', '1408851831', '53f95f7741f26');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95fab2ce55.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95fab2ce55.jpg', 'thumb', '1408851883', '53f95fab58a08');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f95fd875225.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f95fd875225.jpg', 'thumb', '1408851928', '53f95fd8a832a');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f96b36c4daf.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f96b36c4daf.jpg', 'thumb', '1408854839', '53f96b370095d');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f96b6acfa89.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f96b6acfa89.jpg', 'thumb', '1408854891', '53f96b6b07b5f');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f96bb9005ca.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f96bb9005ca.jpg', 'thumb', '1408854969', '53f96bb91f575');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f96be4ce995.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f96be4ce995.jpg', 'thumb', '1408855012', '53f96be4eca61');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f96c33d5e6a.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f96c33d5e6a.jpg', 'thumb', '1408855092', '53f96c341bb13');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f96d644ce53.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f96d644ce53.jpg', 'thumb', '1408855396', '53f96d6485941');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f96d66d08ab.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f96d66d08ab.jpg', 'thumb', '1408855399', '53f96d6705088');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f96e5769f14.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f96e5769f14.jpg', 'thumb', '1408855639', '53f96e57a1dec');
INSERT INTO `hoo_file_log` VALUES ('100-100-53f98a3262ce4.png', '课表.png', '1437', '0', '100*100', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/100-100-53f98a3262ce4.png', 'thumb', '1408862770', '53f98a328f3f0');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa175a2c425.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa175a2c425.jpg', 'thumb', '1408898906', '53fa175aeb1d8');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa1839ed05c.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa1839ed05c.jpg', 'thumb', '1408899130', '53fa183a28153');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa189a5d227.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa189a5d227.jpg', 'thumb', '1408899226', '53fa189a91c53');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa18e8b20f3.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa18e8b20f3.jpg', 'thumb', '1408899304', '53fa18e8ecb6b');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa1a3a95cbb.png', 'default-lg.png', '1437', '0', '100*100', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa1a3a95cbb.png', 'thumb', '1408899642', '53fa1a3acb9c6');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa22e99be0e.png', 'default.png', '1437', '0', '100*100', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa22e99be0e.png', 'thumb', '1408901865', '53fa22e9d0cb6');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa2335c0e89.png', 'default.png', '1437', '0', '100*100', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa2335c0e89.png', 'thumb', '1408901941', '53fa2335d2049');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa2357c4952.png', 'default.png', '1437', '0', '100*100', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa2357c4952.png', 'thumb', '1408901975', '53fa2357dba4d');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa35fe0cbe6.png', 'default-lg.png', '1437', '0', '100*100', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa35fe0cbe6.png', 'thumb', '1408906750', '53fa35fe3baf1');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa36f5e407b.png', 'default.png', '1437', '0', '100*100', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa36f5e407b.png', 'thumb', '1408906998', '53fa36f60e39d');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa3703caf0d.jpg', 'profile.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa3703caf0d.jpg', 'thumb', '1408907012', '53fa370443e1b');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa373cde386.jpg', '仙踪周年贺图.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa373cde386.jpg', 'thumb', '1408907069', '53fa373d39d0e');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa37dbebff8.jpg', 't.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa37dbebff8.jpg', 'thumb', '1408907228', '53fa37dc1d9ec');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa38041a577.png', 'default-lg.png', '1437', '0', '100*100', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa38041a577.png', 'thumb', '1408907268', '53fa380458c1c');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fa3ac0a44ec.jpg', 'Desert.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fa3ac0a44ec.jpg', 'thumb', '1408907969', '53fa3ac10d17e');
INSERT INTO `hoo_file_log` VALUES ('100-100-53fad6afb8b11.jpg', '仙踪周年贺图.jpg', '1437', '0', '100*100', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/100-100-53fad6afb8b11.jpg', 'thumb', '1408947888', '53fad6b025b61');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f8cfd4e11a7.jpg', 'Chrysanthemum.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f8cfd4e11a7.jpg', 'thumb', '1408815062', '53f8cfd654d40');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f8cfd786603.jpg', 'Desert.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f8cfd786603.jpg', 'thumb', '1408815064', '53f8cfd8edd8f');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f8cfda0d3ad.jpg', 'Hydrangeas.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f8cfda0d3ad.jpg', 'thumb', '1408815067', '53f8cfdb7dcfd');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f8cfdcb7b8e.jpg', 'Jellyfish.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f8cfdcb7b8e.jpg', 'thumb', '1408815070', '53f8cfde15ed3');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f8cfdf474d9.jpg', 'Koala.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f8cfdf474d9.jpg', 'thumb', '1408815072', '53f8cfe09073e');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f8cfe1ba467.jpg', 'Lighthouse.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f8cfe1ba467.jpg', 'thumb', '1408815075', '53f8cfe334be3');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f8cfe465aae.jpg', 'Penguins.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f8cfe465aae.jpg', 'thumb', '1408815077', '53f8cfe5d98dc');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f8cfe714577.jpg', 'Tulips.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f8cfe714577.jpg', 'thumb', '1408815080', '53f8cfe85bf70');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f916259a2f5.jpg', 't.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f916259a2f5.jpg', 'thumb', '1408833062', '53f9162671602');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95ac6d718d.jpg', '仙踪周年贺图.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95ac6d718d.jpg', 'thumb', '1408850631', '53f95ac775ec1');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95c35d0436.jpg', '仙踪周年贺图.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95c35d0436.jpg', 'thumb', '1408850998', '53f95c3653824');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95ccdc399a.jpg', 't.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95ccdc399a.jpg', 'thumb', '1408851150', '53f95cce2880d');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95cf3b7eda.jpg', 'viewphoto.action.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95cf3b7eda.jpg', 'thumb', '1408851188', '53f95cf469ef7');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95cfe35513.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95cfe35513.jpg', 'thumb', '1408851199', '53f95cff3b7e7');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95d34055f1.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95d34055f1.jpg', 'thumb', '1408851252', '53f95d3495929');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95d6a0d384.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95d6a0d384.jpg', 'thumb', '1408851306', '53f95d6a996c7');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95d8214bcc.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95d8214bcc.jpg', 'thumb', '1408851331', '53f95d8301388');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95daa22f83.jpg', 'viewphoto.action.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95daa22f83.jpg', 'thumb', '1408851370', '53f95daa79865');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95dbd210a5.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95dbd210a5.jpg', 'thumb', '1408851389', '53f95dbdeae7c');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95e01e257f.png', '课表.png', '1437', '0', '1000*1000', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95e01e257f.png', 'thumb', '1408851458', '53f95e0260dfd');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95e54de0ed.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95e54de0ed.jpg', 'thumb', '1408851541', '53f95e55721f4');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95e765ab9f.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95e765ab9f.jpg', 'thumb', '1408851575', '53f95e7741f24');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95e85b9016.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95e85b9016.jpg', 'thumb', '1408851590', '53f95e8635dae');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95ea54ac14.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95ea54ac14.jpg', 'thumb', '1408851621', '53f95ea5cf840');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95eda1ca38.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95eda1ca38.jpg', 'thumb', '1408851674', '53f95eda78650');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95eeaad201.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95eeaad201.jpg', 'thumb', '1408851691', '53f95eeb2a4ec');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95f771cba0.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95f771cba0.jpg', 'thumb', '1408851831', '53f95f779c544');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95fab2ce55.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95fab2ce55.jpg', 'thumb', '1408851883', '53f95faba8688');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f95fd875225.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f95fd875225.jpg', 'thumb', '1408851929', '53f95fd9042ee');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f96b36c4daf.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f96b36c4daf.jpg', 'thumb', '1408854839', '53f96b3745274');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f96b6acfa89.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f96b6acfa89.jpg', 'thumb', '1408854891', '53f96b6b60cad');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f96bb9005ca.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f96bb9005ca.jpg', 'thumb', '1408854969', '53f96bb95c97c');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f96be4ce995.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f96be4ce995.jpg', 'thumb', '1408855013', '53f96be538254');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f96c33d5e6a.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f96c33d5e6a.jpg', 'thumb', '1408855092', '53f96c34671c7');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f96d644ce53.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f96d644ce53.jpg', 'thumb', '1408855397', '53f96d652674d');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f96d66d08ab.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f96d66d08ab.jpg', 'thumb', '1408855399', '53f96d6752c23');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f96e5769f14.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f96e5769f14.jpg', 'thumb', '1408855639', '53f96e57f310a');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53f98a3262ce4.png', '课表.png', '1437', '0', '1000*1000', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/1000-1000-53f98a3262ce4.png', 'thumb', '1408862771', '53f98a330af44');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa175a2c425.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa175a2c425.jpg', 'thumb', '1408898907', '53fa175b91460');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa1839ed05c.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa1839ed05c.jpg', 'thumb', '1408899130', '53fa183a841d1');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa189a5d227.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa189a5d227.jpg', 'thumb', '1408899226', '53fa189aea350');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa18e8b20f3.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa18e8b20f3.jpg', 'thumb', '1408899305', '53fa18e943f49');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa1a3a95cbb.png', 'default-lg.png', '1437', '0', '1000*1000', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa1a3a95cbb.png', 'thumb', '1408899643', '53fa1a3b46429');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa22e99be0e.png', 'default.png', '1437', '0', '1000*1000', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa22e99be0e.png', 'thumb', '1408901866', '53fa22ea0706f');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa2335c0e89.png', 'default.png', '1437', '0', '1000*1000', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa2335c0e89.png', 'thumb', '1408901942', '53fa233600b31');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa2357c4952.png', 'default.png', '1437', '0', '1000*1000', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa2357c4952.png', 'thumb', '1408901976', '53fa23580c83f');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa35fe0cbe6.png', 'default-lg.png', '1437', '0', '1000*1000', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa35fe0cbe6.png', 'thumb', '1408906750', '53fa35fe91cd8');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa36f5e407b.png', 'default.png', '1437', '0', '1000*1000', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa36f5e407b.png', 'thumb', '1408906998', '53fa36f62e6da');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa3703caf0d.jpg', 'profile.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa3703caf0d.jpg', 'thumb', '1408907012', '53fa37045deeb');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa373cde386.jpg', '仙踪周年贺图.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa373cde386.jpg', 'thumb', '1408907069', '53fa373d7b3ff');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa37dbebff8.jpg', 't.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa37dbebff8.jpg', 'thumb', '1408907228', '53fa37dc461ea');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa38041a577.png', 'default-lg.png', '1437', '0', '1000*1000', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa38041a577.png', 'thumb', '1408907268', '53fa3804b4e6d');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fa3ac0a44ec.jpg', 'Desert.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa3ac0a44ec.jpg', 'thumb', '1408907969', '53fa3ac1c4635');
INSERT INTO `hoo_file_log` VALUES ('1000-1000-53fad6afb8b11.jpg', '仙踪周年贺图.jpg', '1437', '0', '1000*1000', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fad6afb8b11.jpg', 'thumb', '1408947888', '53fad6b08376e');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f8cfd4e11a7.jpg', 'Chrysanthemum.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f8cfd4e11a7.jpg', 'thumb', '1408815061', '53f8cfd578117');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f8cfd786603.jpg', 'Desert.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f8cfd786603.jpg', 'thumb', '1408815064', '53f8cfd81a9ba');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f8cfda0d3ad.jpg', 'Hydrangeas.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f8cfda0d3ad.jpg', 'thumb', '1408815066', '53f8cfda89158');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f8cfdcb7b8e.jpg', 'Jellyfish.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f8cfdcb7b8e.jpg', 'thumb', '1408815069', '53f8cfdd48777');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f8cfdf474d9.jpg', 'Koala.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f8cfdf474d9.jpg', 'thumb', '1408815071', '53f8cfdfc2ec8');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f8cfe1ba467.jpg', 'Lighthouse.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f8cfe1ba467.jpg', 'thumb', '1408815074', '53f8cfe25aabe');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f8cfe465aae.jpg', 'Penguins.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f8cfe465aae.jpg', 'thumb', '1408815077', '53f8cfe5110f9');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f8cfe714577.jpg', 'Tulips.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f8cfe714577.jpg', 'thumb', '1408815079', '53f8cfe79ec62');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f916259a2f5.jpg', 't.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f916259a2f5.jpg', 'thumb', '1408833062', '53f9162641941');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95ac6d718d.jpg', '仙踪周年贺图.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95ac6d718d.jpg', 'thumb', '1408850631', '53f95ac74644e');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95c35d0436.jpg', '仙踪周年贺图.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95c35d0436.jpg', 'thumb', '1408850998', '53f95c3625612');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95ccdc399a.jpg', 't.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95ccdc399a.jpg', 'thumb', '1408851150', '53f95cce00eb3');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95cf3b7eda.jpg', 'viewphoto.action.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95cf3b7eda.jpg', 'thumb', '1408851188', '53f95cf40c0c4');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95cfe35513.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95cfe35513.jpg', 'thumb', '1408851198', '53f95cfe89577');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95d34055f1.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95d34055f1.jpg', 'thumb', '1408851252', '53f95d3458042');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95d6a0d384.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95d6a0d384.jpg', 'thumb', '1408851306', '53f95d6a59784');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95d8214bcc.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95d8214bcc.jpg', 'thumb', '1408851330', '53f95d82878ea');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95daa22f83.jpg', 'viewphoto.action.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95daa22f83.jpg', 'thumb', '1408851370', '53f95daa69849');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95dbd210a5.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95dbd210a5.jpg', 'thumb', '1408851389', '53f95dbd85585');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95e01e257f.png', '课表.png', '1437', '0', '200*200', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95e01e257f.png', 'thumb', '1408851458', '53f95e022a6ad');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95e54de0ed.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95e54de0ed.jpg', 'thumb', '1408851541', '53f95e553ca17');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95e765ab9f.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95e765ab9f.jpg', 'thumb', '1408851574', '53f95e76ccc87');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95e85b9016.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95e85b9016.jpg', 'thumb', '1408851590', '53f95e8605fed');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95ea54ac14.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95ea54ac14.jpg', 'thumb', '1408851621', '53f95ea59a115');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95eda1ca38.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95eda1ca38.jpg', 'thumb', '1408851674', '53f95eda4acac');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95eeaad201.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95eeaad201.jpg', 'thumb', '1408851690', '53f95eeae5f9c');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95f771cba0.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95f771cba0.jpg', 'thumb', '1408851831', '53f95f775f31f');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95fab2ce55.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95fab2ce55.jpg', 'thumb', '1408851883', '53f95fab6e197');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f95fd875225.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f95fd875225.jpg', 'thumb', '1408851928', '53f95fd8beb9f');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f96b36c4daf.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f96b36c4daf.jpg', 'thumb', '1408854839', '53f96b3712b05');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f96b6acfa89.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f96b6acfa89.jpg', 'thumb', '1408854891', '53f96b6b1d73d');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f96bb9005ca.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f96bb9005ca.jpg', 'thumb', '1408854969', '53f96bb9319fa');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f96be4ce995.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f96be4ce995.jpg', 'thumb', '1408855013', '53f96be50c837');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f96c33d5e6a.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f96c33d5e6a.jpg', 'thumb', '1408855092', '53f96c343b680');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f96d644ce53.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f96d644ce53.jpg', 'thumb', '1408855396', '53f96d64a1b44');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f96d66d08ab.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f96d66d08ab.jpg', 'thumb', '1408855399', '53f96d671fc3f');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f96e5769f14.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f96e5769f14.jpg', 'thumb', '1408855639', '53f96e57b56a9');
INSERT INTO `hoo_file_log` VALUES ('200-200-53f98a3262ce4.png', '课表.png', '1437', '0', '200*200', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/200-200-53f98a3262ce4.png', 'thumb', '1408862770', '53f98a32ab89e');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa175a2c425.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa175a2c425.jpg', 'thumb', '1408898907', '53fa175b23c40');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa1839ed05c.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa1839ed05c.jpg', 'thumb', '1408899130', '53fa183a45611');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa189a5d227.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa189a5d227.jpg', 'thumb', '1408899226', '53fa189aa7c21');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa18e8b20f3.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa18e8b20f3.jpg', 'thumb', '1408899305', '53fa18e918016');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa1a3a95cbb.png', 'default-lg.png', '1437', '0', '200*200', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa1a3a95cbb.png', 'thumb', '1408899642', '53fa1a3aed25c');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa22e99be0e.png', 'default.png', '1437', '0', '200*200', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa22e99be0e.png', 'thumb', '1408901865', '53fa22e9e29d7');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa2335c0e89.png', 'default.png', '1437', '0', '200*200', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa2335c0e89.png', 'thumb', '1408901941', '53fa2335e7689');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa2357c4952.png', 'default.png', '1437', '0', '200*200', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa2357c4952.png', 'thumb', '1408901975', '53fa2357e3447');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa35fe0cbe6.png', 'default-lg.png', '1437', '0', '200*200', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa35fe0cbe6.png', 'thumb', '1408906750', '53fa35fe4fb95');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa36f5e407b.png', 'default.png', '1437', '0', '200*200', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa36f5e407b.png', 'thumb', '1408906998', '53fa36f61653c');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa3703caf0d.jpg', 'profile.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa3703caf0d.jpg', 'thumb', '1408907012', '53fa37044c1e8');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa373cde386.jpg', '仙踪周年贺图.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa373cde386.jpg', 'thumb', '1408907069', '53fa373d4b9cb');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa37dbebff8.jpg', 't.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa37dbebff8.jpg', 'thumb', '1408907228', '53fa37dc2b05d');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa38041a577.png', 'default-lg.png', '1437', '0', '200*200', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa38041a577.png', 'thumb', '1408907268', '53fa380471b38');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fa3ac0a44ec.jpg', 'Desert.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fa3ac0a44ec.jpg', 'thumb', '1408907969', '53fa3ac132725');
INSERT INTO `hoo_file_log` VALUES ('200-200-53fad6afb8b11.jpg', '仙踪周年贺图.jpg', '1437', '0', '200*200', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/200-200-53fad6afb8b11.jpg', 'thumb', '1408947888', '53fad6b0468a8');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f8cfd4e11a7.jpg', 'Chrysanthemum.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f8cfd4e11a7.jpg', 'thumb', '1408815061', '53f8cfd5ae197');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f8cfd786603.jpg', 'Desert.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f8cfd786603.jpg', 'thumb', '1408815064', '53f8cfd855bb9');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f8cfda0d3ad.jpg', 'Hydrangeas.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f8cfda0d3ad.jpg', 'thumb', '1408815066', '53f8cfdac33f9');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f8cfdcb7b8e.jpg', 'Jellyfish.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f8cfdcb7b8e.jpg', 'thumb', '1408815069', '53f8cfdd7d342');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f8cfdf474d9.jpg', 'Koala.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f8cfdf474d9.jpg', 'thumb', '1408815072', '53f8cfe000071');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f8cfe1ba467.jpg', 'Lighthouse.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f8cfe1ba467.jpg', 'thumb', '1408815074', '53f8cfe292259');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f8cfe465aae.jpg', 'Penguins.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f8cfe465aae.jpg', 'thumb', '1408815077', '53f8cfe547c5e');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f8cfe714577.jpg', 'Tulips.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f8cfe714577.jpg', 'thumb', '1408815079', '53f8cfe7d5f9d');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f916259a2f5.jpg', 't.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f916259a2f5.jpg', 'thumb', '1408833062', '53f916265d0b2');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95ac6d718d.jpg', '仙踪周年贺图.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95ac6d718d.jpg', 'thumb', '1408850631', '53f95ac7604f8');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95c35d0436.jpg', '仙踪周年贺图.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95c35d0436.jpg', 'thumb', '1408850998', '53f95c3641b2b');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95ccdc399a.jpg', 't.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95ccdc399a.jpg', 'thumb', '1408851150', '53f95cce10b69');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95cf3b7eda.jpg', 'viewphoto.action.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95cf3b7eda.jpg', 'thumb', '1408851188', '53f95cf442c56');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95cfe35513.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95cfe35513.jpg', 'thumb', '1408851198', '53f95cfebec4d');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95d34055f1.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95d34055f1.jpg', 'thumb', '1408851252', '53f95d3479ade');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95d6a0d384.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95d6a0d384.jpg', 'thumb', '1408851306', '53f95d6a809fd');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95d8214bcc.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95d8214bcc.jpg', 'thumb', '1408851330', '53f95d82a176e');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95daa22f83.jpg', 'viewphoto.action.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95daa22f83.jpg', 'thumb', '1408851370', '53f95daa716c6');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95dbd210a5.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95dbd210a5.jpg', 'thumb', '1408851389', '53f95dbda3733');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95e01e257f.png', '课表.png', '1437', '0', '300*300', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95e01e257f.png', 'thumb', '1408851458', '53f95e02426a0');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95e54de0ed.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95e54de0ed.jpg', 'thumb', '1408851541', '53f95e5556b3a');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95e765ab9f.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95e765ab9f.jpg', 'thumb', '1408851574', '53f95e76ec27c');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95e85b9016.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95e85b9016.jpg', 'thumb', '1408851590', '53f95e861d182');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95ea54ac14.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95ea54ac14.jpg', 'thumb', '1408851621', '53f95ea5b47c7');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95eda1ca38.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95eda1ca38.jpg', 'thumb', '1408851674', '53f95eda61a72');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95eeaad201.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95eeaad201.jpg', 'thumb', '1408851691', '53f95eeb08bcc');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95f771cba0.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95f771cba0.jpg', 'thumb', '1408851831', '53f95f77839f3');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95fab2ce55.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95fab2ce55.jpg', 'thumb', '1408851883', '53f95fab908b8');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f95fd875225.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f95fd875225.jpg', 'thumb', '1408851928', '53f95fd8d6e16');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f96b36c4daf.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f96b36c4daf.jpg', 'thumb', '1408854839', '53f96b372cc49');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f96b6acfa89.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f96b6acfa89.jpg', 'thumb', '1408854891', '53f96b6b3437e');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f96bb9005ca.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f96bb9005ca.jpg', 'thumb', '1408854969', '53f96bb945cf8');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f96be4ce995.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f96be4ce995.jpg', 'thumb', '1408855013', '53f96be52097f');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f96c33d5e6a.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f96c33d5e6a.jpg', 'thumb', '1408855092', '53f96c344fd6e');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f96d644ce53.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f96d644ce53.jpg', 'thumb', '1408855396', '53f96d64c0c34');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f96d66d08ab.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f96d66d08ab.jpg', 'thumb', '1408855399', '53f96d6738040');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f96e5769f14.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f96e5769f14.jpg', 'thumb', '1408855639', '53f96e57cc8cf');
INSERT INTO `hoo_file_log` VALUES ('300-300-53f98a3262ce4.png', '课表.png', '1437', '0', '300*300', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/300-300-53f98a3262ce4.png', 'thumb', '1408862770', '53f98a32e6343');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa175a2c425.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa175a2c425.jpg', 'thumb', '1408898907', '53fa175b5eabc');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa1839ed05c.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa1839ed05c.jpg', 'thumb', '1408899130', '53fa183a655e5');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa189a5d227.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa189a5d227.jpg', 'thumb', '1408899226', '53fa189ac7456');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa18e8b20f3.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa18e8b20f3.jpg', 'thumb', '1408899305', '53fa18e92c210');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa1a3a95cbb.png', 'default-lg.png', '1437', '0', '300*300', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa1a3a95cbb.png', 'thumb', '1408899643', '53fa1a3b287bb');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa22e99be0e.png', 'default.png', '1437', '0', '300*300', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa22e99be0e.png', 'thumb', '1408901865', '53fa22e9e8fc2');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa2335c0e89.png', 'default.png', '1437', '0', '300*300', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa2335c0e89.png', 'thumb', '1408901941', '53fa2335ee7d9');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa2357c4952.png', 'default.png', '1437', '0', '300*300', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa2357c4952.png', 'thumb', '1408901975', '53fa2357eb5b7');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa35fe0cbe6.png', 'default-lg.png', '1437', '0', '300*300', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa35fe0cbe6.png', 'thumb', '1408906750', '53fa35fe72ed4');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa36f5e407b.png', 'default.png', '1437', '0', '300*300', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa36f5e407b.png', 'thumb', '1408906998', '53fa36f6265cb');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa3703caf0d.jpg', 'profile.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa3703caf0d.jpg', 'thumb', '1408907012', '53fa370454565');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa373cde386.jpg', '仙踪周年贺图.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa373cde386.jpg', 'thumb', '1408907069', '53fa373d6a17c');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa37dbebff8.jpg', 't.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa37dbebff8.jpg', 'thumb', '1408907228', '53fa37dc39b91');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa38041a577.png', 'default-lg.png', '1437', '0', '300*300', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa38041a577.png', 'thumb', '1408907268', '53fa380497532');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fa3ac0a44ec.jpg', 'Desert.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fa3ac0a44ec.jpg', 'thumb', '1408907969', '53fa3ac15a330');
INSERT INTO `hoo_file_log` VALUES ('300-300-53fad6afb8b11.jpg', '仙踪周年贺图.jpg', '1437', '0', '300*300', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/300-300-53fad6afb8b11.jpg', 'thumb', '1408947888', '53fad6b06aa39');
INSERT INTO `hoo_file_log` VALUES ('53f8cfd4e11a7.jpg', 'Chrysanthemum.jpg', '1437', '0', '1024*768', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f8cfd4e11a7.jpg', 'succes', '1408815060', '076e3caed758a1c18c91a0e9cae3368f');
INSERT INTO `hoo_file_log` VALUES ('53f8cfd786603.jpg', 'Desert.jpg', '1437', '0', '1024*768', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f8cfd786603.jpg', 'succes', '1408815063', 'ba45c8f60456a672e003a875e469d0eb');
INSERT INTO `hoo_file_log` VALUES ('53f8cfda0d3ad.jpg', 'Hydrangeas.jpg', '1437', '0', '1024*768', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f8cfda0d3ad.jpg', 'succes', '1408815066', 'bdf3bf1da3405725be763540d6601144');
INSERT INTO `hoo_file_log` VALUES ('53f8cfdcb7b8e.jpg', 'Jellyfish.jpg', '1437', '0', '1024*768', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f8cfdcb7b8e.jpg', 'succes', '1408815068', '5a44c7ba5bbe4ec867233d67e4806848');
INSERT INTO `hoo_file_log` VALUES ('53f8cfdf474d9.jpg', 'Koala.jpg', '1437', '0', '1024*768', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f8cfdf474d9.jpg', 'succes', '1408815071', '2b04df3ecc1d94afddff082d139c6f15');
INSERT INTO `hoo_file_log` VALUES ('53f8cfe1ba467.jpg', 'Lighthouse.jpg', '1437', '0', '1024*768', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f8cfe1ba467.jpg', 'succes', '1408815073', '8969288f4245120e7c3870287cce0ff3');
INSERT INTO `hoo_file_log` VALUES ('53f8cfe465aae.jpg', 'Penguins.jpg', '1437', '0', '1024*768', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f8cfe465aae.jpg', 'succes', '1408815076', '9d377b10ce778c4938b3c7e2c63a229a');
INSERT INTO `hoo_file_log` VALUES ('53f8cfe714577.jpg', 'Tulips.jpg', '1437', '0', '1024*768', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f8cfe714577.jpg', 'succes', '1408815079', 'fafa5efeaf3cbe3b23b2748d13e629a1');
INSERT INTO `hoo_file_log` VALUES ('53f8d21689dbd.txt', '关键字.txt', '1437', '0', '568', 'text/plain', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f8d21689dbd.txt', 'succes', '1408815638', '6934600163279eea96a0c88c1ecbe6f9');
INSERT INTO `hoo_file_log` VALUES ('53f8d2c7cb464.txt', '各种编程语言的特点.txt', '1437', '0', '15553', 'text/plain', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f8d2c7cb464.txt', 'succes', '1408815815', '1d13ea6690b1f7985257c8b3cc3d601d');
INSERT INTO `hoo_file_log` VALUES ('53f916259a2f5.jpg', 't.jpg', '1437', '0', '356*220', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f916259a2f5.jpg', 'succes', '1408833061', '8a410f57b2212c5d7d2fb8dd9de5dfdd');
INSERT INTO `hoo_file_log` VALUES ('53f95ac6d718d.jpg', '仙踪周年贺图.jpg', '1437', '0', '360*380', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95ac6d718d.jpg', 'succes', '1408850630', '9d687f751bbda9b8da991f7ed6ee8cfd');
INSERT INTO `hoo_file_log` VALUES ('53f95c35d0436.jpg', '仙踪周年贺图.jpg', '1437', '0', '360*380', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95c35d0436.jpg', 'succes', '1408850997', '9d687f751bbda9b8da991f7ed6ee8cfd');
INSERT INTO `hoo_file_log` VALUES ('53f95ccdc399a.jpg', 't.jpg', '1437', '0', '356*220', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95ccdc399a.jpg', 'succes', '1408851149', '8a410f57b2212c5d7d2fb8dd9de5dfdd');
INSERT INTO `hoo_file_log` VALUES ('53f95cf3b7eda.jpg', 'viewphoto.action.jpg', '1437', '0', '120*160', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95cf3b7eda.jpg', 'succes', '1408851187', 'be007d561819a3face5df710812410f5');
INSERT INTO `hoo_file_log` VALUES ('53f95cfe35513.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '639*1136', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95cfe35513.jpg', 'succes', '1408851198', '34714076b9f1cbeb962f58c1a403deea');
INSERT INTO `hoo_file_log` VALUES ('53f95d34055f1.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95d34055f1.jpg', 'succes', '1408851252', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f95d6a0d384.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95d6a0d384.jpg', 'succes', '1408851306', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f95d8214bcc.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '639*1136', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95d8214bcc.jpg', 'succes', '1408851330', '34714076b9f1cbeb962f58c1a403deea');
INSERT INTO `hoo_file_log` VALUES ('53f95daa22f83.jpg', 'viewphoto.action.jpg', '1437', '0', '120*160', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95daa22f83.jpg', 'succes', '1408851370', 'be007d561819a3face5df710812410f5');
INSERT INTO `hoo_file_log` VALUES ('53f95dbd210a5.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '639*1136', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95dbd210a5.jpg', 'succes', '1408851389', '34714076b9f1cbeb962f58c1a403deea');
INSERT INTO `hoo_file_log` VALUES ('53f95e01e257f.png', '课表.png', '1437', '0', '473*574', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95e01e257f.png', 'succes', '1408851457', 'd4f6b22145ebf08b562b2293bd047e3b');
INSERT INTO `hoo_file_log` VALUES ('53f95e54de0ed.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95e54de0ed.jpg', 'succes', '1408851540', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f95e765ab9f.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '639*1136', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95e765ab9f.jpg', 'succes', '1408851574', '34714076b9f1cbeb962f58c1a403deea');
INSERT INTO `hoo_file_log` VALUES ('53f95e85b9016.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95e85b9016.jpg', 'succes', '1408851589', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f95ea54ac14.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95ea54ac14.jpg', 'succes', '1408851621', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f95eda1ca38.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95eda1ca38.jpg', 'succes', '1408851674', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f95eeaad201.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95eeaad201.jpg', 'succes', '1408851690', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f95f771cba0.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95f771cba0.jpg', 'succes', '1408851831', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f95fab2ce55.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95fab2ce55.jpg', 'succes', '1408851883', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f95fd875225.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f95fd875225.jpg', 'succes', '1408851928', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f96b36c4daf.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f96b36c4daf.jpg', 'succes', '1408854838', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f96b6acfa89.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f96b6acfa89.jpg', 'succes', '1408854890', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f96bb9005ca.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f96bb9005ca.jpg', 'succes', '1408854969', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f96be4ce995.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f96be4ce995.jpg', 'succes', '1408855012', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f96c33d5e6a.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f96c33d5e6a.jpg', 'succes', '1408855091', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f96d644ce53.jpg', 'QQ图片20140605231650.jpg', '1437', '0', '639*1136', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f96d644ce53.jpg', 'succes', '1408855396', '34714076b9f1cbeb962f58c1a403deea');
INSERT INTO `hoo_file_log` VALUES ('53f96d66d08ab.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f96d66d08ab.jpg', 'succes', '1408855398', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f96e5769f14.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f96e5769f14.jpg', 'succes', '1408855639', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53f98a3262ce4.png', '课表.png', '1437', '0', '473*574', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-24/53f98a3262ce4.png', 'succes', '1408862770', 'd4f6b22145ebf08b562b2293bd047e3b');
INSERT INTO `hoo_file_log` VALUES ('53fa175a2c425.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa175a2c425.jpg', 'succes', '1408898906', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53fa1839ed05c.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa1839ed05c.jpg', 'succes', '1408899129', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53fa189a5d227.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa189a5d227.jpg', 'succes', '1408899226', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53fa18e8b20f3.jpg', 'Bob-Dylan-desktopsky-81283.jpg!900.jpg', '1437', '0', '900*563', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa18e8b20f3.jpg', 'succes', '1408899304', '782e46510adbfdf9c30d56a3c49befbc');
INSERT INTO `hoo_file_log` VALUES ('53fa1a0e92806.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa1a0e92806.gif', 'succes', '1408899598', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa1a3a95cbb.png', 'default-lg.png', '1437', '0', '311*311', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa1a3a95cbb.png', 'succes', '1408899642', '52f8e40bbee17fcfdb102191076f97d8');
INSERT INTO `hoo_file_log` VALUES ('53fa1cfa53b90.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa1cfa53b90.gif', 'succes', '1408900346', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa1e335a3ca.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa1e335a3ca.gif', 'succes', '1408900659', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa1ea09c136.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa1ea09c136.gif', 'succes', '1408900768', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa20c762498.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa20c762498.gif', 'succes', '1408901319', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa21077b237.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa21077b237.gif', 'succes', '1408901383', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa218aad6d1.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa218aad6d1.gif', 'succes', '1408901514', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa22ab78802.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa22ab78802.gif', 'succes', '1408901803', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa22e99be0e.png', 'default.png', '1437', '0', '31*31', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa22e99be0e.png', 'succes', '1408901865', '2dce640e5377b21e22a18016c6ec880c');
INSERT INTO `hoo_file_log` VALUES ('53fa2335c0e89.png', 'default.png', '1437', '0', '31*31', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa2335c0e89.png', 'succes', '1408901941', '2dce640e5377b21e22a18016c6ec880c');
INSERT INTO `hoo_file_log` VALUES ('53fa2357c4952.png', 'default.png', '1437', '0', '31*31', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa2357c4952.png', 'succes', '1408901975', '2dce640e5377b21e22a18016c6ec880c');
INSERT INTO `hoo_file_log` VALUES ('53fa348581c9e.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa348581c9e.gif', 'succes', '1408906373', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa348c02435.ico', 'default.ico', '1437', '0', '67646', 'application/file', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa348c02435.ico', 'succes', '1408906380', '835a987f4ba253474e51052421585d26');
INSERT INTO `hoo_file_log` VALUES ('53fa34931d9ab.ico', 'default.ico', '1437', '0', '67646', 'application/file', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa34931d9ab.ico', 'succes', '1408906387', '835a987f4ba253474e51052421585d26');
INSERT INTO `hoo_file_log` VALUES ('53fa34ba124c6.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa34ba124c6.gif', 'succes', '1408906426', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa34ce9b044.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa34ce9b044.gif', 'succes', '1408906446', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa35d866725.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa35d866725.gif', 'succes', '1408906712', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa35fe0cbe6.png', 'default-lg.png', '1437', '0', '311*311', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa35fe0cbe6.png', 'succes', '1408906750', '52f8e40bbee17fcfdb102191076f97d8');
INSERT INTO `hoo_file_log` VALUES ('53fa36f5e407b.png', 'default.png', '1437', '0', '31*31', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa36f5e407b.png', 'succes', '1408906997', '2dce640e5377b21e22a18016c6ec880c');
INSERT INTO `hoo_file_log` VALUES ('53fa3703caf0d.jpg', 'profile.jpg', '1437', '0', '180*180', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa3703caf0d.jpg', 'succes', '1408907011', '9091e1724703e764235449a4a1d211d6');
INSERT INTO `hoo_file_log` VALUES ('53fa373cde386.jpg', '仙踪周年贺图.jpg', '1437', '0', '360*380', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa373cde386.jpg', 'succes', '1408907068', '9d687f751bbda9b8da991f7ed6ee8cfd');
INSERT INTO `hoo_file_log` VALUES ('53fa37dbebff8.jpg', 't.jpg', '1437', '0', '356*220', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa37dbebff8.jpg', 'succes', '1408907227', '8a410f57b2212c5d7d2fb8dd9de5dfdd');
INSERT INTO `hoo_file_log` VALUES ('53fa37f4101e9.gif', 'default.gif', '1437', '0', '626', 'image/gif', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa37f4101e9.gif', 'succes', '1408907252', 'e0a5e28abb87ac51eeb5c0368be62d7f');
INSERT INTO `hoo_file_log` VALUES ('53fa38041a577.png', 'default-lg.png', '1437', '0', '311*311', 'image/png', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa38041a577.png', 'succes', '1408907268', '52f8e40bbee17fcfdb102191076f97d8');
INSERT INTO `hoo_file_log` VALUES ('53fa3ac0a44ec.jpg', 'Desert.jpg', '1437', '0', '1024*768', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fa3ac0a44ec.jpg', 'succes', '1408907968', 'ba45c8f60456a672e003a875e469d0eb');
INSERT INTO `hoo_file_log` VALUES ('53fad6afb8b11.jpg', '仙踪周年贺图.jpg', '1437', '0', '360*380', 'image/jpeg', './resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/53fad6afb8b11.jpg', 'succes', '1408947887', '9d687f751bbda9b8da991f7ed6ee8cfd');

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
INSERT INTO `hoo_note` VALUES ('54', '1437', '其实', '其实我好想打个电话给你&lt;br&gt;', '2014', '7', '1406384973');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_notice
-- ----------------------------
INSERT INTO `hoo_notice` VALUES ('1', '这是第一个测试公告', '纪念第一个公告开通啦~~', '1408823034');
INSERT INTO `hoo_notice` VALUES ('2', '第二个测试公告', '呼啦啦', '1408823256');
INSERT INTO `hoo_notice` VALUES ('3', '完善细节！！', '呼啦啦\r\n', '1408906203');

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
INSERT INTO `hoo_options` VALUES ('site', '{\"title\":\"\\u6d4b\\u8bd5\\u7ad9\\u70b9\\u6807\\u9898\",\"domain\":\"\\u4e00\\u4e2a\\u57df\\u540d\",\"icp\":\"\\u6caa123456\",\"introduce\":\"\\u8fd9\\u91cc\\u5c31\\u662f\\u4e00\\u4e2a\\u7b80\\u4ecb\",\"logo\":\"\",\"favico\":\"\"}', 'setting', 'none');
INSERT INTO `hoo_options` VALUES ('upload', '{\"max_file_size\":\"1000000\",\"max_image_size\":\"1000000\",\"image_sizes\":\"100*100,200*200,300*300,1000*1000\"}', 'setting', 'none');

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
INSERT INTO `hoo_piges` VALUES ('1437', '2014', '8', 'item', '1199');
INSERT INTO `hoo_piges` VALUES ('1437', '2014', '8', 'item', '1237');
INSERT INTO `hoo_piges` VALUES ('1437', '2014', '8', 'item', '1254');
INSERT INTO `hoo_piges` VALUES ('1437', '2014', '8', 'item', '1268');
INSERT INTO `hoo_piges` VALUES ('1437', '2014', '8', 'item', '1270');
INSERT INTO `hoo_piges` VALUES ('1437', '2014', '8', 'page', '1186');
INSERT INTO `hoo_piges` VALUES ('1437', '2014', '8', 'page', '1238');
INSERT INTO `hoo_piges` VALUES ('1437', '2014', '8', 'page', '1249');
INSERT INTO `hoo_piges` VALUES ('1437', '2014', '8', 'page', '1269');

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
) ENGINE=InnoDB AUTO_INCREMENT=1279 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_posts
-- ----------------------------
INSERT INTO `hoo_posts` VALUES ('1181', '1437', '-1', '斯蒂23', 'page', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '默认页面', '', '', 'public', 'yes', '0', '0', '-', '-', '', 'yes', '0', 'style=\"display:none;\"');
INSERT INTO `hoo_posts` VALUES ('1186', '1437', '0', '斯蒂23', 'page', '2014-08-24 23:04:47', '2014-08-24 23:27:48', '呼啦', '{\"tip_title\":\"(*^__^*) \\u563b\\u563b\\u2026\\u2026\",\"tip_content\":\"\\u54c8\\u54c8\",\"logo\":\"\",\"cover\":\"\"}', '[\"\\u6765\\u4e00\\u4e2a\\u5206\\u7ec4\",\"\\u518d\\u6765\\u4e00\\u4e2a\"]', 'public', 'yes', '0', '0', '-', '-', '', 'yes', '0', null);
INSERT INTO `hoo_posts` VALUES ('1199', '1437', '1181', '斯蒂2', 'item', '2014-08-24 23:12:36', '2014-08-24 23:12:36', '嘻嘻', '<p>哈哈</p><p><br/></p>', '', 'public', 'yes', '0', '0', '-', '-', '{\"digest\":\"\",\"cover\":\"\"}', 'yes', '0', null);
INSERT INTO `hoo_posts` VALUES ('1237', '1437', '1181', '手册,', 'item', '2014-08-25 03:10:17', '2014-08-25 03:10:17', '这是一个手册', '呼啦啦<p><br/></p>', '', 'public', 'yes', '0', '0', '-', '-', '{\"digest\":\"\",\"cover\":\"\"}', 'yes', '0', null);
INSERT INTO `hoo_posts` VALUES ('1238', '1437', '0', '默认分类', 'page', '2014-08-25 03:11:29', '2014-08-25 03:11:29', '123123', '{\"tip_title\":\"\",\"tip_content\":\"\",\"logo\":\"\",\"cover\":\"\"}', '', 'public', 'yes', '0', '0', '-', '-', '', 'yes', '0', null);
INSERT INTO `hoo_posts` VALUES ('1249', '1437', '0', '默认分类', 'page', '2014-08-25 03:29:56', '2014-08-25 03:29:56', '456', '{\"tip_title\":\"\",\"tip_content\":\"\",\"logo\":\"\",\"cover\":\"\"}', '', 'public', 'yes', '0', '0', '-', '-', '', 'yes', '0', null);
INSERT INTO `hoo_posts` VALUES ('1254', '1437', '1181', '', 'item', '2014-08-25 03:33:27', '2014-08-25 03:33:27', '123', '<p>123<br/></p>', '', 'public', 'yes', '0', '0', '-', '-', '{\"digest\":\"\",\"cover\":\"\"}', 'yes', '0', null);
INSERT INTO `hoo_posts` VALUES ('1268', '1437', '1186', '电影,', 'item', '2014-08-25 05:56:52', '2014-08-25 06:03:55', '夜色行动', '<p>评分：<strong class=\"rank\">6.4</strong> &nbsp; &nbsp;类型：<a href=\"http://www.dy2018.com/0/\">剧情片</a> / <a href=\"http://www.dy2018.com/7/\">惊悚片</a> &nbsp;<span class=\"updatetime\">发布时间：2014-08-24</span>\r\n </p><p>&nbsp;</p><p>&nbsp;<img src=\"/ueditor/php/upload/image/20140825/1408917400608727.jpg\" alt=\"夜色行动BD中英双字_电影天堂\" class=\"bbcode_img\" style=\"border: 0px; color: rgb(66, 2, 2); font-family: tahoma, arial, helvetica, sans-serif; background-color: rgb(188, 202, 214);\" height=\"884\" width=\"700\"/></p><p>◎片　　名 &nbsp;Night Moves &nbsp;</p><p>◎译　　名 &nbsp;夜色行动/飘渺夜空/夜色棋着</p><p>◎年　　代 &nbsp;2013 &nbsp;</p><p>◎国　　家 &nbsp;美国 &nbsp;</p><p>◎电影类型 &nbsp;剧情/惊悚 &nbsp;</p><p>◎语　　言 &nbsp;英语 &nbsp;</p><p>◎字　　幕　中英双字幕</p><p>◎上映日期　2014-06-13(中国大陆)/2014-05-16(美国)</p><p>◎IMDB评分　6.4/10 from 1,628 users&nbsp;</p><p>◎视频尺寸　1280 x 720</p><p>◎文件大小　1CD 1.12G&nbsp;</p><p>◎片　　长 &nbsp;112分钟 &nbsp;</p><p>◎上映日期 &nbsp;2013-08-31(威尼斯电影节) / 2013-09-20(美国) &nbsp;</p><p>◎导　　演 &nbsp;凯莉·雷查德 Kelly Reichardt &nbsp;</p><p>◎编　　剧 &nbsp;凯莉·雷查德 Kelly Reichardt / Jonathan Raymond &nbsp;</p><p>◎演　　员 &nbsp;杰西·艾森伯格 Jesse Eisenberg</p><p>　　　　　　达科塔·范宁 Dakota Fanning</p><p>　　　　　　彼得·萨斯加德 Peter Sarsgaard</p><p>　　　　　　阿莉雅·肖卡特 Alia Shawkat</p><p>　　　　　　詹姆斯·勒格罗 James LeGros</p><p>　　　　　　卢·坦普尔 Lew Temple</p><p>　　　　　　凯瑟琳·沃特斯顿 Katherine Waterston</p><p>　　　　　　洛根·米勒 Logan Miller</p><p>　　　　　&nbsp;</p><p>◎简　　介</p><p>&nbsp;</p><p>　影片讲述了三个激进的环保主义者的故事。哈蒙是一个前海军，常年在海外执行任务。现在，他虽然退伍了，但是他的内心里依然是一个勇猛而鲁莽的军\r\n人，渴望着冒险、破坏甚至是毁灭。黛娜是一个上流社会的辍学生，出生在上流社会的她对自己的阶级和家庭极为反感。她搬了家，和自己的家庭说了再见，变成了\r\n一个政治上非常激进的人。乔什是这个团体的领头人，是一个很有自制力但是又很好战的人。他把自己的全部精力全部投入到了保护地球的工作之中，无论用什么手\r\n段，他都要去想办法获得成功。他是一个中产阶级家庭的孩子，他家里经营着一个有机农场。他是一个很坚定自己信仰的人，在这三个人当中，他是最有想法和信仰\r\n的。这三个人凑在了一起，变成了带有政治恐怖主义的一个小团体。他们会做出违法的事情么？一个人的理想主义，如果处处碰壁，人们还会坚持自己最初的理想\r\n么？</p><p>&nbsp;</p><p>◎影片截图</p><p><img src=\"/ueditor/php/upload/image/20140825/1408917402128406.jpg\" alt=\"\" border=\"0\"/></p><p>&nbsp;</p><p><strong><span style=\"color: rgb(153, 51, 0);\"><span style=\"font-size: 14px;\">翻译点评</span></span></strong><span style=\"color: rgb(153, 51, 0);\"><span style=\"font-size: 14px;\">:叙事从容沉稳,影片的氛围和节奏控制得恰到好处,结局有些诡异,让人琢磨不透.</span></span></p><p>&nbsp;</p><p><br/></p>', '来一个分组', 'public', 'yes', '0', '0', '-', '-', '{\"digest\":\"\",\"cover\":\"\"}', 'yes', '0', null);
INSERT INTO `hoo_posts` VALUES ('1269', '1437', '0', '默认分类', 'page', '2014-08-25 14:25:15', '2014-08-25 14:25:15', '甲骨文', '{\"tip_title\":\"\\u5927\\u5bb6\\u597d\\uff01\",\"tip_content\":\"\\u4eca\\u5929\\u5f00\\u59cb\\u5b66\\u4e60\\u7532\\u9aa8\\u6587\\u5566~\",\"logo\":\"\",\"cover\":\"\\/resources\\/d1b88953192ee14b1b7c2e83d88d18ee-1437\\/2014-08-25\\/1000-1000-53fad6afb8b11.jpg\"}', '[\"\\u6a21\\u57571\",\"\\u6a21\\u57572\",\"\\u6a21\\u57573\"]', 'public', 'yes', '0', '0', '-', '-', '', 'yes', '0', null);
INSERT INTO `hoo_posts` VALUES ('1270', '1437', '1269', '电影,好吧,', 'item', '2014-08-25 14:27:02', '2014-08-25 14:27:02', '冷水', '<p><img src=\"http://t.williamgates.net/image-982A_53F8CA00.jpg\" alt=\"\" border=\"0\"/></p><p>评分：<strong class=\"rank\">6.7</strong> &nbsp; &nbsp;类型：<a href=\"http://www.dy2018.com/7/\">惊悚片</a> / <a href=\"http://www.dy2018.com/14/\">犯罪片</a> &nbsp;<span class=\"updatetime\">发布时间：2014-08-23</span>\r\n </p><p>&nbsp;</p><p>&nbsp;<img src=\"http://t.williamgates.net/image-42A3_53F8659A.jpg\" alt=\"冷水BD中英双字\" class=\"bbcode_img\" style=\"border: 0px; color: rgb(66, 2, 2); font-family: tahoma, arial, helvetica, sans-serif; background-color: rgb(188, 202, 214);\" height=\"884\" width=\"700\"/></p><p>◎译　　名　 冷水</p><p>◎片　　名　 Coldwater.2013</p><p>◎年　　代　 2014</p><p>◎国　　家　 美国</p><p>◎类　　别　 剧情/惊悚/犯罪</p><p>◎语　　言　 日语</p><p>◎字　　幕　 中英双字幕</p><p>◎上映日期　 2013-06-15(上海国际电影节)</p><p>◎IMDB评分　 6.7/10 from 453 users &nbsp; &nbsp;</p><p>◎视频尺寸　 1280 x 720</p><p>◎文件大小　 0.99</p><p>◎片　　长　 104 min</p><p>◎导　　演　 文森特·格拉肖</p><p>◎主　　演　 P.J.波多斯基</p><p>　　　　　　 詹姆斯·C·伯恩斯</p><p>　　　　　　 克里斯·彼得罗夫斯基　　　　　　&nbsp;</p><p>　　　　　　 昌西·莱奥普拉迪</p><p>&nbsp;</p><p>&nbsp;</p><p>◎简　　介</p><p>&nbsp;</p><p>　　一个未成年被送到了青少年改造所,那儿是一个荒郊野岭的地方.正当我们逐步了解到,他被送到那里的原因,以及所经历的悲剧事件.同时他在里面和其他狱友的挣扎,与指导员的争斗,还有与退休将军的博弈,也酿成了另一个悲剧上演...</p><p>&nbsp;</p><p>◎影片截图</p><p><img src=\"http://t.williamgates.net/image-2F59_53F8659A.jpg\" alt=\"\" border=\"0\"/></p><p>&nbsp;</p><p><strong><span style=\"color: rgb(153, 51, 0);\"><span style=\"font-size: 14px;\">翻译点评</span></span></strong><span style=\"color: rgb(153, 51, 0);\"><span style=\"font-size: 14px;\">:非常棒的小成本剧,结尾很精彩.同时,本片也讲述着一种虽恨尤爱的亲情...</span></span></p><p>&nbsp;</p><p>&nbsp;</p><p style=\"margin: 0px; padding: 0px; color: rgb(24, 55, 120); font-family: Verdana, Arial, Helvetica, sans-serif;\"><span style=\"color:#ff0000\"><strong><span style=\"font-size:18px\">【迅雷下载地址】</span></strong></span></p><p><br/></p>', '模块1', 'public', 'yes', '0', '0', '-', '-', '{\"digest\":\"\",\"cover\":\"\"}', 'yes', '0', null);
INSERT INTO `hoo_posts` VALUES ('1277', '1437', '0', '', 'page', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '无', 'new', 'yes', '0', '0', '-', '-', '', 'yes', '0', null);
INSERT INTO `hoo_posts` VALUES ('1278', '1437', '0', '', 'item', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '无', 'new', 'yes', '0', '0', '-', '-', '', 'yes', '0', null);

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
  `name` varchar(200) NOT NULL,
  `type` varchar(4) NOT NULL,
  `status` varchar(20) DEFAULT 'public',
  `num` bigint(20) DEFAULT NULL,
  `flag` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`,`name`,`type`),
  KEY `name` (`name`),
  CONSTRAINT `hoo_terms_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `hoo_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_terms
-- ----------------------------
INSERT INTO `hoo_terms` VALUES ('1437', ' 默认分类', 'cate', 'public', '1', 'display:none;');
INSERT INTO `hoo_terms` VALUES ('1437', '123', 'cate', 'public', '3', null);
INSERT INTO `hoo_terms` VALUES ('1437', '123123', 'cate', 'public', '4', null);
INSERT INTO `hoo_terms` VALUES ('1437', '123123123123', 'cate', 'public', '5', null);
INSERT INTO `hoo_terms` VALUES ('1437', '呼啦123', 'tag', 'public', '8', null);
INSERT INTO `hoo_terms` VALUES ('1437', '哈哈', 'cate', 'public', '7', null);
INSERT INTO `hoo_terms` VALUES ('1437', '好吧', 'tag', 'public', '9', null);
INSERT INTO `hoo_terms` VALUES ('1437', '手册', 'tag', 'public', '8', null);
INSERT INTO `hoo_terms` VALUES ('1437', '斯蒂23', 'cate', 'public', '2', null);
INSERT INTO `hoo_terms` VALUES ('1437', '未分类呼啦啦', 'cate', 'public', '4', null);
INSERT INTO `hoo_terms` VALUES ('1437', '电影', 'tag', 'public', '8', null);
INSERT INTO `hoo_terms` VALUES ('1437', '默认分类', 'cate', 'public', '8', null);

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
  CONSTRAINT `hoo_terms_relationships_ibfk_3` FOREIGN KEY (`term_name`) REFERENCES `hoo_terms` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hoo_terms_relationships_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `hoo_user` (`uid`),
  CONSTRAINT `hoo_terms_relationships_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `hoo_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hoo_terms_relationships
-- ----------------------------
INSERT INTO `hoo_terms_relationships` VALUES ('1437', '呼啦123', 'tag', '1199', 'public');
INSERT INTO `hoo_terms_relationships` VALUES ('1437', '好吧', 'tag', '1270', 'public');
INSERT INTO `hoo_terms_relationships` VALUES ('1437', '手册', 'tag', '1237', 'public');
INSERT INTO `hoo_terms_relationships` VALUES ('1437', '电影', 'tag', '1268', 'public');
INSERT INTO `hoo_terms_relationships` VALUES ('1437', '电影', 'tag', '1270', 'public');

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
INSERT INTO `hoo_user` VALUES ('1437', 'admin', '0192023a7bbd73250516f069df18b500', 'Hoo', 'admin', '', '0000-00-00 00:00:00', 'abled', '{\"firstname\":\"\\u53e4\",\"lastname\":\"\\u6708\",\"mail\":\"hu@1437.co\",\"phone\":\"18817392521\",\"qq\":\"747114254\",\"address\":\"\\u4e0a\\u5927\\u8def99\\u53f7\",\"text\":\"\\u6ca1\\u4ec0\\u4e48\\u7b80\\u4ecb~\"}', 'style=\"display:none;\"');
INSERT INTO `hoo_user` VALUES ('1466', 'mogong7', '0192023a7bbd73250516f069df18b500', '', 'common', '', '2014-08-24 05:37:29', '', '{\"firstname\":\"\\u53e4\",\"lastname\":\"\\u6708\",\"phone\":\"18817392521\",\"qq\":\"747114254\",\"address\":\"\\u4e0a\\u5927\\u8def99\\u53f7\",\"text\":\"\\u6ca1\\u6709\\u4ec0\\u4e48\\u7b80\\u4ecb\"}', null);
INSERT INTO `hoo_user` VALUES ('1467', 'mm', 'd41d8cd98f00b204e9800998ecf8427e', '', 'common', '', '2014-08-24 05:51:51', '', '{\"firstname\":\"1\",\"lastname\":\"2\",\"mail\":\"3@1.1\",\"phone\":\"4\",\"qq\":\"5\",\"address\":\"6\",\"text\":\"7\"}', null);
INSERT INTO `hoo_user` VALUES ('1468', 'xxx', 'd41d8cd98f00b204e9800998ecf8427e', '', 'common', '', '2014-08-24 06:37:42', '', '{\"firstname\":\"\",\"lastname\":\"\",\"mail\":\"\",\"phone\":\"\",\"qq\":\"\",\"address\":\"\",\"text\":\"\"}', null);
INSERT INTO `hoo_user` VALUES ('1472', 'hoo', 'd41d8cd98f00b204e9800998ecf8427e', '', 'common', '/resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa18e8b20f3.jpg', '2014-08-25 00:55:06', '', '{\"firstname\":\"\",\"lastname\":\"\",\"mail\":\"\",\"phone\":\"\",\"qq\":\"\",\"address\":\"\",\"text\":\"\"}', null);
INSERT INTO `hoo_user` VALUES ('1473', 'hoo2', 'd41d8cd98f00b204e9800998ecf8427e', '', 'common', '', '2014-08-25 01:00:03', '', '{\"firstname\":\"\",\"lastname\":\"\",\"mail\":\"\",\"phone\":\"\",\"qq\":\"\",\"address\":\"\",\"text\":\"\"}', null);
INSERT INTO `hoo_user` VALUES ('1474', '', 'd41d8cd98f00b204e9800998ecf8427e', '', 'common', '/resources/d1b88953192ee14b1b7c2e83d88d18ee-1437/2014-08-25/1000-1000-53fa1a3a95cbb.png', '2014-08-25 01:00:44', '', '{\"firstname\":\"\",\"lastname\":\"\",\"mail\":\"\",\"phone\":\"\",\"qq\":\"\",\"address\":\"\",\"text\":\"\"}', null);
INSERT INTO `hoo_user` VALUES ('1503', 'admin123', 'd41d8cd98f00b204e9800998ecf8427e', '', 'common', '', '2014-08-25 02:48:24', '', '{\"firstname\":\"\",\"lastname\":\"\",\"mail\":\"\",\"phone\":\"\",\"qq\":\"\",\"address\":\"\",\"text\":\"\"}', null);
INSERT INTO `hoo_user` VALUES ('1504', 'admin123123', 'd41d8cd98f00b204e9800998ecf8427e', '', 'common', '', '2014-08-25 02:49:05', '', '{\"firstname\":\"\",\"lastname\":\"\",\"mail\":\"\",\"phone\":\"\",\"qq\":\"\",\"address\":\"\",\"text\":\"\"}', null);
INSERT INTO `hoo_user` VALUES ('1505', 'admin123123123', 'd41d8cd98f00b204e9800998ecf8427e', '', 'common', '', '2014-08-25 02:49:25', '', '{\"firstname\":\"\",\"lastname\":\"\",\"mail\":\"\",\"phone\":\"\",\"qq\":\"\",\"address\":\"\",\"text\":\"\"}', null);

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
INSERT INTO `hoo_user_options` VALUES ('1437', 'item-admin', '{\"option_create_time\":\"show\",\"option_update_time\":\"hide\",\"option_group\":\"hide\",\"option_page\":\"hide\",\"option_multi\":\"hide\",\"option_tiny_window\":\"show\",\"option_comment\":\"hide\",\"option_handle\":\"hide\"}');
INSERT INTO `hoo_user_options` VALUES ('1437', 'item-create', '{\"option_cover\":\"show\",\"option_group\":\"hide\",\"option_tag\":\"hide\",\"option_visible\":\"show\",\"option_resources\":\"hide\",\"option_digest\":\"show\",\"option_history\":\"show\",\"option_page\":\"show\"}');
INSERT INTO `hoo_user_options` VALUES ('1437', 'page-admin', '{\"option_multi\":\"show\",\"option_tiny_window\":\"show\",\"option_create_time\":\"show\",\"option_cate\":\"show\",\"option_handle\":\"show\",\"option_status\":\"show\"}');
INSERT INTO `hoo_user_options` VALUES ('1437', 'page-create', '{\"option_tip\":\"show\",\"option_path\":\"show\",\"option_logo\":\"show\"}');
INSERT INTO `hoo_user_options` VALUES ('1437', 'user-admin', '{\"option_handle\":\"show\",\"option_multi\":\"show\",\"option_name\":\"show\",\"option_mail\":\"show\",\"option_phone\":\"show\",\"option_time\":\"show\",\"option_status\":\"show\",\"option_tiny_window\":\"show\"}');

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
IF (SELECT COUNT(post_id) from hoo_terms_relationships WHERE post_id = OLD.post_id and uid = OLD.uid) = 0 THEN
DELETE FROM hoo_terms WHERE uid = OLD.uid and name = OLD.term_name;
END IF;
END
;;
DELIMITER ;
