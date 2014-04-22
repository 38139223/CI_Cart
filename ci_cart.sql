/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50535
Source Host           : 127.0.0.1:3306
Source Database       : ci_cart

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2014-04-22 11:57:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mc_article
-- ----------------------------
DROP TABLE IF EXISTS `mc_article`;
CREATE TABLE `mc_article` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `author` varchar(12) DEFAULT NULL,
  `cat_id` int(5) DEFAULT NULL,
  `content` text,
  `add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_article
-- ----------------------------
INSERT INTO `mc_article` VALUES ('1', 'Title01', 'Author', '1', 'This is Content... This is Content... This is Content... This is Content... This is Content... \r\nThis is Content... This is Content... This is Content... This is Content... This is Content... \r\nThis is Content... This is Content... This is Content... This is Content... This is Content... ', '2014-04-08 09:25:52');
INSERT INTO `mc_article` VALUES ('2', 'Test02zzz', 'Tester02zzz', '2', 'This is Test02zzz Content... This is Test02 Content... This is Test02 Content... This is Test02 Content... This is Test02 Content... This is Test02 Content... This is Test02 Content... This is Test02 Content... ', '2014-04-08 09:26:57');
INSERT INTO `mc_article` VALUES ('3', '标题03', '作者03', '3', '这里是内容。。。这里是内容。。。这里是内容。。。这里是内容。。。这里是内容。。。\r\n这里是内容。。。这里是内容。。。这里是内容。。。这里是内容。。。这里是内容。。。这里是内容。。。\r\n这里是内容。。。这里是内容。。。这里是内容。。。这里是内容。。。这里是内容。。。这里是内容。。。这里是内容。。。这里是内容。。。这里是内容。。。这里是内容。。。 ', '2014-04-08 09:27:11');
INSERT INTO `mc_article` VALUES ('5', '标题05', '水木', '5', '这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 \r\n这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 ', '2014-04-08 14:21:19');
INSERT INTO `mc_article` VALUES ('8', '标题08', '作者08', '1', '这里是测试内容08。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 \r\n这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 ', '2014-04-09 15:38:02');
INSERT INTO `mc_article` VALUES ('9', '标题09', '作者09', '2', '这里是测试内容09。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 \r\n这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 这里是测试内容。。。 ', '2014-04-09 15:47:32');

-- ----------------------------
-- Table structure for mc_art_cat
-- ----------------------------
DROP TABLE IF EXISTS `mc_art_cat`;
CREATE TABLE `mc_art_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(32) NOT NULL,
  `cat_ename` varchar(32) DEFAULT NULL,
  `sort_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_art_cat
-- ----------------------------
INSERT INTO `mc_art_cat` VALUES ('1', '分类目录一', 'category1', '1');
INSERT INTO `mc_art_cat` VALUES ('2', '分类目录二', 'category2', '2');
INSERT INTO `mc_art_cat` VALUES ('3', '分类目录三', 'category3', '3');
INSERT INTO `mc_art_cat` VALUES ('5', '分类目录五', 'category5', '5');

-- ----------------------------
-- Table structure for mc_captcha
-- ----------------------------
DROP TABLE IF EXISTS `mc_captcha`;
CREATE TABLE `mc_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_captcha
-- ----------------------------
INSERT INTO `mc_captcha` VALUES ('103', '1398134503', '127.0.0.1', '701501');
INSERT INTO `mc_captcha` VALUES ('102', '1398134491', '127.0.0.1', '291656');

-- ----------------------------
-- Table structure for mc_manager
-- ----------------------------
DROP TABLE IF EXISTS `mc_manager`;
CREATE TABLE `mc_manager` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `administrator` char(16) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `login_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `administrator` (`administrator`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_manager
-- ----------------------------
INSERT INTO `mc_manager` VALUES ('1', 'admin', '7fef6171469e80d32c0559f88b377245', 'admin@4u4v.net', '2014-04-11 10:08:58');

-- ----------------------------
-- Table structure for mc_sessions
-- ----------------------------
DROP TABLE IF EXISTS `mc_sessions`;
CREATE TABLE `mc_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for mc_user
-- ----------------------------
DROP TABLE IF EXISTS `mc_user`;
CREATE TABLE `mc_user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_name` char(16) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `reg_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mc_user
-- ----------------------------
INSERT INTO `mc_user` VALUES ('1', 'tester01', 'e10adc3949ba59abbe56e057f20f883e', 'tester01@qq.com', '0000-00-00 00:00:00');
INSERT INTO `mc_user` VALUES ('2', 'tester02', 'e10adc3949ba59abbe56e057f20f883e', 'tester02@qq.com', '0000-00-00 00:00:00');
INSERT INTO `mc_user` VALUES ('3', 'tester03', 'f4eddb1257c91ed28fd2fead367337e9', 'tester03@qq.com', '2014-04-07 10:08:58');
INSERT INTO `mc_user` VALUES ('5', 'tester05', 'd41d8cd98f00b204e9800998ecf8427e', 'tester05@qq.com', '2014-04-08 10:08:58');
INSERT INTO `mc_user` VALUES ('6', 'tester07', '25d55ad283aa400af464c76d713c07ad', 'tester06@qq.com', '2014-04-09 10:08:58');
INSERT INTO `mc_user` VALUES ('7', 'tester06', '6daa15f2f1ee5e29686026099560220b', 'tester06@qq.com', '2014-04-10 10:08:58');
INSERT INTO `mc_user` VALUES ('8', 'tester08', 'd41d8cd98f00b204e9800998ecf8427e', 'tester08@qq.com', '2014-04-10 10:18:58');
INSERT INTO `mc_user` VALUES ('9', 'tester09', '1560fb02f6f8bda0b7b189691ec595e7', 'tester09@qq.com', '2014-04-11 10:08:58');
INSERT INTO `mc_user` VALUES ('10', 'tester10', 'af71a0623b472fb657d4c68545140035', 'tester10@qq.com', '2014-04-11 10:20:07');
