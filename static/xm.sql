/*
Navicat MySQL Data Transfer

Source Server         : cubeboot
Source Server Version : 50721
Source Host           : 10.1.51.31:3306
Source Database       : xm

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-28 17:15:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(10) unsigned NOT NULL COMMENT '好友id',
  `gid` int(10) unsigned NOT NULL COMMENT '分组id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `FK_friend_user` (`uid`),
  KEY `FK_friend_group` (`gid`),
  CONSTRAINT `FK_friend_group` FOREIGN KEY (`gid`) REFERENCES `groups` (`id`),
  CONSTRAINT `FK_friend_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='好友';

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('1', '2', '3', '0');
INSERT INTO `friend` VALUES ('2', '3', '3', '0');
INSERT INTO `friend` VALUES ('3', '4', '4', '0');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `gname` varchar(20) NOT NULL COMMENT '分组名称',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `FK_group_user` (`uid`),
  CONSTRAINT `FK_group_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='好友分组';

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('1', '好友', '4');
INSERT INTO `groups` VALUES ('2', '好友', '10');
INSERT INTO `groups` VALUES ('3', '好友', '1');
INSERT INTO `groups` VALUES ('4', '亲人', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(6) unsigned DEFAULT '0' COMMENT '验证码',
  `username` varchar(20) NOT NULL COMMENT '昵称',
  `password` varchar(16) NOT NULL COMMENT '密码',
  `email` varchar(50) NOT NULL COMMENT '账号',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别',
  `birth` datetime DEFAULT '2010-01-01 00:00:00' COMMENT '生日',
  `icon` varchar(255) DEFAULT '1.jpg' COMMENT '头像地址',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '0', '零度微笑', 'q1373572467..', '1373572467@qq.com', null, '2010-01-01 00:00:00', '1.jpg', null);
INSERT INTO `user` VALUES ('2', '0', 'admin', '123456', '1245@qq.com', null, '2010-01-01 00:00:00', '1.jpg', null);
INSERT INTO `user` VALUES ('3', '0', 'xxmm', '123456', '15226@qq.com', null, '2010-01-01 00:00:00', '1.jpg', null);
INSERT INTO `user` VALUES ('4', '0', 'xxmmaxkjd', '123456', '152261@qq.com', null, '2010-01-01 00:00:00', '1.jpg', null);
INSERT INTO `user` VALUES ('10', '0', 'xxmmaxkjd', '123456', '1522611@qq.com', null, '2010-01-01 00:00:00', '1.jpg', null);
