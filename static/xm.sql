-- --------------------------------------------------------
-- 主机:                           10.1.51.31
-- 服务器版本:                        5.7.21 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 xm 的数据库结构
DROP DATABASE IF EXISTS `xm`;
CREATE DATABASE IF NOT EXISTS `xm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `xm`;

-- 导出  表 xm.friend 结构
DROP TABLE IF EXISTS `friend`;
CREATE TABLE IF NOT EXISTS `friend` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(10) unsigned NOT NULL COMMENT '好友id',
  `gid` int(10) unsigned DEFAULT NULL COMMENT '分组id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `myid` int(10) unsigned DEFAULT NULL COMMENT '用户id',
  `note` varchar(15) DEFAULT NULL COMMENT '好友备注',
  PRIMARY KEY (`id`),
  KEY `FK_friend_user` (`uid`),
  KEY `FK_friend_group` (`gid`),
  KEY `FK_friend_user_2` (`myid`),
  CONSTRAINT `FK_friend_group` FOREIGN KEY (`gid`) REFERENCES `groups` (`id`),
  CONSTRAINT `FK_friend_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_friend_user_2` FOREIGN KEY (`myid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='好友';

-- 正在导出表  xm.friend 的数据：~1 rows (大约)
DELETE FROM `friend`;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
INSERT INTO `friend` (`id`, `uid`, `gid`, `status`, `myid`, `note`) VALUES
	(4, 1, NULL, 1, 2, NULL);
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;

-- 导出  表 xm.groups 结构
DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `gname` varchar(20) NOT NULL COMMENT '分组名称',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `FK_group_user` (`uid`),
  CONSTRAINT `FK_group_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='好友分组';

-- 正在导出表  xm.groups 的数据：~4 rows (大约)
DELETE FROM `groups`;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `gname`, `uid`) VALUES
	(1, '好友', 4),
	(2, '好友', 10),
	(3, '好友', 1),
	(4, '亲人', 1);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- 导出  表 xm.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
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

-- 正在导出表  xm.user 的数据：~5 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `code`, `username`, `password`, `email`, `sex`, `birth`, `icon`, `signature`) VALUES
	(1, 0, '零度微笑', 'q1373572467..', '1373572467@qq.com', 1, '2010-01-01 00:00:00', '1.jpg', '说的都是无法'),
	(2, 0, 'admin', '123456', '1245@qq.com', NULL, '2010-01-01 00:00:00', '1.jpg', NULL),
	(3, 0, 'xxmm', '123456', '15226@qq.com', NULL, '2010-01-01 00:00:00', '1.jpg', NULL),
	(4, 0, 'xxmmaxkjd', '123456', '152261@qq.com', NULL, '2010-01-01 00:00:00', '1.jpg', NULL),
	(10, 0, 'xxmmaxkjd', '123456', '1522611@qq.com', NULL, '2010-01-01 00:00:00', '1.jpg', NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
