/*
Navicat MySQL Data Transfer

Source Server         : cubeboot
Source Server Version : 50721
Source Host           : 10.1.51.31:3306
Source Database       : xm

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-27 17:36:12
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '0', '零度微笑', 'q1373572467..', '1373572467@qq.com', null, '2010-01-01 00:00:00', '1.jpg', null);
INSERT INTO `user` VALUES ('2', '0', 'admin', '123456', '1245@qq.com', null, '2010-01-01 00:00:00', '1.jpg', null);
