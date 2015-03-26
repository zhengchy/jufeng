/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50535
Source Host           : 127.0.0.1:3306
Source Database       : lanyuan_v_3

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2014-12-15 23:00:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ly_account
-- ----------------------------
DROP TABLE IF EXISTS `ly_account`;
CREATE TABLE `ly_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(20) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `credentialsSalt` varchar(200) DEFAULT NULL,
  `accountType` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `locked` varchar(3) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletestatus` int(1) DEFAULT '0' COMMENT '逻辑删除状态0:存在1:删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_account
-- ----------------------------
INSERT INTO `ly_account` VALUES ('1', 'root', null, 'root', 'root', '0', '根账号', '1', '1', '2014-10-27 18:23:23', '0');
INSERT INTO `ly_account` VALUES ('2', '00', null, 'root', '1', null, '00', '1', '1', '2014-10-27 18:23:25', '0');
INSERT INTO `ly_account` VALUES ('3', 'test', null, '4QrcOUm6Wau+VuBX8g+IPg==', '1', 'g', 'test', 'tes', '1', '2014-12-03 10:58:56', '0');
INSERT INTO `ly_account` VALUES ('4', '32rc3', null, 'g', null, null, null, null, null, '2014-12-03 10:58:57', '0');
INSERT INTO `ly_account` VALUES ('5', 't435t54f', null, null, 'g', null, null, null, null, '2014-12-03 10:58:57', '0');
INSERT INTO `ly_account` VALUES ('6', '98jh78hgg', null, 'v', '45', '4v5', null, null, null, '2014-12-03 10:58:48', '0');
INSERT INTO `ly_account` VALUES ('9', '4t4', null, 'j', 'b', 'v4v4', null, null, null, '2014-12-03 10:58:50', '0');
INSERT INTO `ly_account` VALUES ('10', 'c4cc5yv7v67', null, null, null, 'g', 'g', 'g', null, '2014-12-03 10:58:55', '0');
INSERT INTO `ly_account` VALUES ('11', 'v67v67v6', null, 'v6y', null, 'j', null, null, null, '2014-12-03 10:58:50', '0');
INSERT INTO `ly_account` VALUES ('12', 'c64c46', null, null, 'y', null, 'c', null, 'g', '2014-12-03 10:59:02', '0');
INSERT INTO `ly_account` VALUES ('13', 'c4c4c6', null, 'df', null, 'g', 'j', null, null, '2014-12-03 10:58:59', '0');
INSERT INTO `ly_account` VALUES ('14', '57v77vv7', null, 'b', 'v', null, 'g', 'cc', null, '2014-12-03 10:59:02', '0');
INSERT INTO `ly_account` VALUES ('15', '6c4c4', null, 'b', 'd', 'c', 'ff', null, null, '2014-12-03 10:59:01', '0');
INSERT INTO `ly_account` VALUES ('16', '34ctf5tv', null, '6b5u6', 'u', null, null, null, null, '2014-12-03 10:58:45', '0');
INSERT INTO `ly_account` VALUES ('17', 'vvvvvvvvvvvv', null, null, 'nullvvvvvvvvvvvv', null, 'vvvvvvvvvvv', null, '0', '2014-12-10 20:44:24', '0');
INSERT INTO `ly_account` VALUES ('18', 'dddddga', '/uploadFile/2014121121/201412112109415131.jpg', null, 'nulldddddga', null, 'ddddddd', null, '0', '2014-12-11 21:09:42', '0');
INSERT INTO `ly_account` VALUES ('19', 'hgpijjjjj', '/uploadFile/2014121415/201412141538339017.jpg', null, 'nullhgpijjjjj', null, '??', null, '1', '2014-12-14 15:38:34', '0');
INSERT INTO `ly_account` VALUES ('20', 'hgpijjjjj', '/uploadFile/2014121415/201412141539203003.jpg', null, 'nullhgpijjjjj', null, '??', null, '1', '2014-12-14 15:39:21', '0');
INSERT INTO `ly_account` VALUES ('21', 'hgpijjjjj', '/uploadFile/2014121415/20141214154034875.jpg', null, 'nullhgpijjjjj', null, '??', null, '1', '2014-12-14 15:41:15', '0');
INSERT INTO `ly_account` VALUES ('22', 'ffffhth', '/uploadFile/2014121415/201412141549195925.jpg', null, 'nullffffhth', null, 'yyyyy', null, '0', '2014-12-14 15:49:20', '0');
INSERT INTO `ly_account` VALUES ('23', 'ggvhbbcx', '/uploadFile/2014121422/201412142204516087.jpg', null, 'nullggvhbbcx', null, 'cvv', null, '0', '2014-12-14 22:04:52', '0');

-- ----------------------------
-- Table structure for ly_acc_role
-- ----------------------------
DROP TABLE IF EXISTS `ly_acc_role`;
CREATE TABLE `ly_acc_role` (
  `acc_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`acc_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_acc_role
-- ----------------------------
INSERT INTO `ly_acc_role` VALUES ('1', '2');
INSERT INTO `ly_acc_role` VALUES ('1', '3');
INSERT INTO `ly_acc_role` VALUES ('1', '4');
INSERT INTO `ly_acc_role` VALUES ('2', '4');
INSERT INTO `ly_acc_role` VALUES ('3', '4');
INSERT INTO `ly_acc_role` VALUES ('4', '4');
INSERT INTO `ly_acc_role` VALUES ('5', '4');
INSERT INTO `ly_acc_role` VALUES ('6', '4');
INSERT INTO `ly_acc_role` VALUES ('7', '4');
INSERT INTO `ly_acc_role` VALUES ('8', '4');
INSERT INTO `ly_acc_role` VALUES ('9', '4');
INSERT INTO `ly_acc_role` VALUES ('10', '4');
INSERT INTO `ly_acc_role` VALUES ('11', '4');
INSERT INTO `ly_acc_role` VALUES ('12', '4');
INSERT INTO `ly_acc_role` VALUES ('13', '4');
INSERT INTO `ly_acc_role` VALUES ('14', '4');
INSERT INTO `ly_acc_role` VALUES ('15', '4');
INSERT INTO `ly_acc_role` VALUES ('16', '4');
INSERT INTO `ly_acc_role` VALUES ('17', '4');
INSERT INTO `ly_acc_role` VALUES ('18', '4');
INSERT INTO `ly_acc_role` VALUES ('19', '4');
INSERT INTO `ly_acc_role` VALUES ('20', '4');
INSERT INTO `ly_acc_role` VALUES ('21', '4');
INSERT INTO `ly_acc_role` VALUES ('22', '4');
INSERT INTO `ly_acc_role` VALUES ('23', '4');
INSERT INTO `ly_acc_role` VALUES ('24', '4');
INSERT INTO `ly_acc_role` VALUES ('25', '4');
INSERT INTO `ly_acc_role` VALUES ('26', '4');
INSERT INTO `ly_acc_role` VALUES ('27', '4');
INSERT INTO `ly_acc_role` VALUES ('28', '4');
INSERT INTO `ly_acc_role` VALUES ('29', '4');
INSERT INTO `ly_acc_role` VALUES ('30', '4');
INSERT INTO `ly_acc_role` VALUES ('31', '4');
INSERT INTO `ly_acc_role` VALUES ('34', '2');

-- ----------------------------
-- Table structure for ly_dic
-- ----------------------------
DROP TABLE IF EXISTS `ly_dic`;
CREATE TABLE `ly_dic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dicTypeId` int(11) DEFAULT NULL,
  `dicKey` varchar(20) DEFAULT NULL,
  `dicName` varchar(40) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_dic
-- ----------------------------
INSERT INTO `ly_dic` VALUES ('1', '1', 'res_directory', '目录', '目录');
INSERT INTO `ly_dic` VALUES ('2', '1', 'res_menu', '菜单', '菜单');
INSERT INTO `ly_dic` VALUES ('3', '1', 'res_btn', '按扭', '按扭');
INSERT INTO `ly_dic` VALUES ('4', '1', 'kkkkkkkk', 'jjjjjjjjjjjj', 'hhhhhhhh');

-- ----------------------------
-- Table structure for ly_dic_type
-- ----------------------------
DROP TABLE IF EXISTS `ly_dic_type`;
CREATE TABLE `ly_dic_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dicTypeKey` varchar(20) DEFAULT NULL,
  `dicTypeName` varchar(40) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_dic_type
-- ----------------------------
INSERT INTO `ly_dic_type` VALUES ('1', 'res_type', '菜单类型', '菜单类型是目录,菜单,按扭,');

-- ----------------------------
-- Table structure for ly_log
-- ----------------------------
DROP TABLE IF EXISTS `ly_log`;
CREATE TABLE `ly_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `action` varchar(30) DEFAULT NULL,
  `actionTime` varchar(30) DEFAULT NULL,
  `userIP` varchar(30) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1770 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_log
-- ----------------------------
INSERT INTO `ly_log` VALUES ('1497', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-19 03:16:17');
INSERT INTO `ly_log` VALUES ('1498', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.37', '2014-01-19 03:16:20');
INSERT INTO `ly_log` VALUES ('1499', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-19 03:16:23');
INSERT INTO `ly_log` VALUES ('1500', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.37', '2014-01-19 03:16:25');
INSERT INTO `ly_log` VALUES ('1501', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.36', '2014-01-19 03:16:34');
INSERT INTO `ly_log` VALUES ('1502', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.45', '2014-01-19 06:36:20');
INSERT INTO `ly_log` VALUES ('1503', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.46', '2014-01-19 06:36:35');
INSERT INTO `ly_log` VALUES ('1504', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.76.233', '2014-01-19 06:36:48');
INSERT INTO `ly_log` VALUES ('1505', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:37:01');
INSERT INTO `ly_log` VALUES ('1506', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:37:14');
INSERT INTO `ly_log` VALUES ('1507', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.45', '2014-01-19 06:37:27');
INSERT INTO `ly_log` VALUES ('1508', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:37:39');
INSERT INTO `ly_log` VALUES ('1509', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:37:47');
INSERT INTO `ly_log` VALUES ('1510', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.45', '2014-01-19 06:37:57');
INSERT INTO `ly_log` VALUES ('1511', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:38:07');
INSERT INTO `ly_log` VALUES ('1512', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:38:17');
INSERT INTO `ly_log` VALUES ('1513', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.45', '2014-01-19 06:38:27');
INSERT INTO `ly_log` VALUES ('1514', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.46', '2014-01-19 06:38:39');
INSERT INTO `ly_log` VALUES ('1515', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:38:47');
INSERT INTO `ly_log` VALUES ('1516', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.45', '2014-01-19 06:38:57');
INSERT INTO `ly_log` VALUES ('1517', null, 'ProductServiceImpl', 'updateLookNuns', '15', '66.249.64.45', '2014-01-19 06:39:07');
INSERT INTO `ly_log` VALUES ('1518', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:39:17');
INSERT INTO `ly_log` VALUES ('1519', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.45', '2014-01-19 06:39:26');
INSERT INTO `ly_log` VALUES ('1520', null, 'ProductServiceImpl', 'updateLookNuns', '16', '66.249.64.44', '2014-01-19 06:39:37');
INSERT INTO `ly_log` VALUES ('1521', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.46', '2014-01-19 06:56:19');
INSERT INTO `ly_log` VALUES ('1522', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.46', '2014-01-19 06:58:42');
INSERT INTO `ly_log` VALUES ('1523', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.46', '2014-01-19 06:58:46');
INSERT INTO `ly_log` VALUES ('1524', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.44', '2014-01-19 06:59:14');
INSERT INTO `ly_log` VALUES ('1525', 'admin', '用户管理', 'updateUserRates', '0', '117.80.237.139', '2014-01-19 12:01:16');
INSERT INTO `ly_log` VALUES ('1526', 'admin', 'ArticleServiceImpl', 'modify', '0', '117.80.237.139', '2014-01-19 12:05:21');
INSERT INTO `ly_log` VALUES ('1527', 'ttzf', '用户管理', 'add', '0', '114.218.106.175', '2014-01-19 18:47:10');
INSERT INTO `ly_log` VALUES ('1528', 'ttzf', '角色管理', 'saveUserRole', '0', '114.218.106.175', '2014-01-19 18:47:10');
INSERT INTO `ly_log` VALUES ('1529', 'ttzf', '用户管理', 'saveUserRates', '0', '114.218.106.175', '2014-01-19 18:47:10');
INSERT INTO `ly_log` VALUES ('1530', 'admin', '用户管理', 'delete', '78', '114.218.106.175', '2014-01-19 18:47:52');
INSERT INTO `ly_log` VALUES ('1531', 'admin', '用户管理', 'add', '0', '114.218.106.175', '2014-01-19 18:50:01');
INSERT INTO `ly_log` VALUES ('1532', 'admin', '角色管理', 'saveUserRole', '0', '114.218.106.175', '2014-01-19 18:50:01');
INSERT INTO `ly_log` VALUES ('1533', 'admin', '用户管理', 'saveUserRates', '0', '114.218.106.175', '2014-01-19 18:50:01');
INSERT INTO `ly_log` VALUES ('1534', 'admin', '用户管理', 'modify', '16', '114.218.106.175', '2014-01-19 18:50:06');
INSERT INTO `ly_log` VALUES ('1535', 'admin', '用户管理', 'updateUserRates', '0', '114.218.106.175', '2014-01-19 18:50:24');
INSERT INTO `ly_log` VALUES ('1536', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-20 03:13:13');
INSERT INTO `ly_log` VALUES ('1537', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-20 06:50:19');
INSERT INTO `ly_log` VALUES ('1538', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-20 09:14:20');
INSERT INTO `ly_log` VALUES ('1539', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-20 13:02:58');
INSERT INTO `ly_log` VALUES ('1540', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-20 21:07:41');
INSERT INTO `ly_log` VALUES ('1541', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-20 21:41:20');
INSERT INTO `ly_log` VALUES ('1542', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-20 23:50:15');
INSERT INTO `ly_log` VALUES ('1543', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 01:58:44');
INSERT INTO `ly_log` VALUES ('1544', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.215.4', '2014-01-21 02:11:17');
INSERT INTO `ly_log` VALUES ('1545', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 02:12:50');
INSERT INTO `ly_log` VALUES ('1546', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-21 02:40:51');
INSERT INTO `ly_log` VALUES ('1547', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-21 06:12:47');
INSERT INTO `ly_log` VALUES ('1548', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 06:16:31');
INSERT INTO `ly_log` VALUES ('1549', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.114', '2014-01-21 07:01:14');
INSERT INTO `ly_log` VALUES ('1550', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.179', '2014-01-21 07:09:56');
INSERT INTO `ly_log` VALUES ('1551', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.145', '2014-01-21 07:17:57');
INSERT INTO `ly_log` VALUES ('1552', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.180', '2014-01-21 07:25:18');
INSERT INTO `ly_log` VALUES ('1553', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 07:32:52');
INSERT INTO `ly_log` VALUES ('1554', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.94', '2014-01-21 07:33:20');
INSERT INTO `ly_log` VALUES ('1555', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.78', '2014-01-21 07:42:01');
INSERT INTO `ly_log` VALUES ('1556', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.70', '2014-01-21 07:48:43');
INSERT INTO `ly_log` VALUES ('1557', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.77', '2014-01-21 08:00:04');
INSERT INTO `ly_log` VALUES ('1558', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.83', '2014-01-21 08:06:46');
INSERT INTO `ly_log` VALUES ('1559', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.76', '2014-01-21 08:14:07');
INSERT INTO `ly_log` VALUES ('1560', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.180', '2014-01-21 08:30:50');
INSERT INTO `ly_log` VALUES ('1561', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.113', '2014-01-21 08:40:11');
INSERT INTO `ly_log` VALUES ('1562', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.75', '2014-01-21 08:54:54');
INSERT INTO `ly_log` VALUES ('1563', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.73', '2014-01-21 09:03:35');
INSERT INTO `ly_log` VALUES ('1564', null, 'ProductServiceImpl', 'updateLookNuns', '16', '220.181.108.148', '2014-01-21 09:12:57');
INSERT INTO `ly_log` VALUES ('1565', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.103', '2014-01-21 09:21:38');
INSERT INTO `ly_log` VALUES ('1566', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.147', '2014-01-21 09:28:19');
INSERT INTO `ly_log` VALUES ('1567', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.155', '2014-01-21 09:43:43');
INSERT INTO `ly_log` VALUES ('1568', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.74', '2014-01-21 09:55:04');
INSERT INTO `ly_log` VALUES ('1569', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.79', '2014-01-21 10:01:45');
INSERT INTO `ly_log` VALUES ('1570', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.45', '2014-01-21 10:30:30');
INSERT INTO `ly_log` VALUES ('1571', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.107', '2014-01-21 10:43:12');
INSERT INTO `ly_log` VALUES ('1572', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 10:47:34');
INSERT INTO `ly_log` VALUES ('1573', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.100', '2014-01-21 10:49:54');
INSERT INTO `ly_log` VALUES ('1574', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-21 11:31:22');
INSERT INTO `ly_log` VALUES ('1575', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-21 14:07:12');
INSERT INTO `ly_log` VALUES ('1576', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 14:24:32');
INSERT INTO `ly_log` VALUES ('1577', 'admin', '用户管理', 'add', '0', '114.218.105.157', '2014-01-21 14:32:48');
INSERT INTO `ly_log` VALUES ('1578', 'admin', '角色管理', 'saveUserRole', '32', '114.218.105.157', '2014-01-21 14:32:48');
INSERT INTO `ly_log` VALUES ('1579', 'admin', '用户管理', 'saveUserRates', '0', '114.218.105.157', '2014-01-21 14:32:48');
INSERT INTO `ly_log` VALUES ('1580', 'admin', '用户管理', 'modify', '0', '114.218.105.157', '2014-01-21 14:32:55');
INSERT INTO `ly_log` VALUES ('1581', 'admin', '用户管理', 'updateUserRates', '0', '114.218.105.157', '2014-01-21 14:33:09');
INSERT INTO `ly_log` VALUES ('1582', '14745767163', '用户管理', 'modify', '0', '122.159.142.9', '2014-01-21 14:37:07');
INSERT INTO `ly_log` VALUES ('1583', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 15:08:04');
INSERT INTO `ly_log` VALUES ('1584', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-21 17:52:31');
INSERT INTO `ly_log` VALUES ('1585', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-21 19:24:25');
INSERT INTO `ly_log` VALUES ('1586', 'admin', '用户管理', 'add', '0', '114.218.105.157', '2014-01-21 20:53:20');
INSERT INTO `ly_log` VALUES ('1587', 'admin', '角色管理', 'saveUserRole', '0', '114.218.105.157', '2014-01-21 20:53:20');
INSERT INTO `ly_log` VALUES ('1588', 'admin', '用户管理', 'saveUserRates', '0', '114.218.105.157', '2014-01-21 20:53:20');
INSERT INTO `ly_log` VALUES ('1589', 'admin', '用户管理', 'modify', '16', '114.218.105.157', '2014-01-21 20:53:48');
INSERT INTO `ly_log` VALUES ('1590', 'admin', '用户管理', 'updateUserRates', '0', '114.218.105.157', '2014-01-21 20:54:05');
INSERT INTO `ly_log` VALUES ('1591', '18361939190', '用户管理', 'modify', '0', '180.106.102.251', '2014-01-21 20:59:00');
INSERT INTO `ly_log` VALUES ('1592', '18361939190', '用户管理', 'modify', '0', '180.106.102.251', '2014-01-21 20:59:02');
INSERT INTO `ly_log` VALUES ('1593', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-22 03:25:31');
INSERT INTO `ly_log` VALUES ('1594', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-22 05:20:42');
INSERT INTO `ly_log` VALUES ('1595', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-22 07:36:13');
INSERT INTO `ly_log` VALUES ('1596', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-22 07:43:15');
INSERT INTO `ly_log` VALUES ('1597', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-22 11:30:14');
INSERT INTO `ly_log` VALUES ('1598', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-22 13:06:23');
INSERT INTO `ly_log` VALUES ('1599', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-22 17:09:24');
INSERT INTO `ly_log` VALUES ('1600', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-22 17:46:01');
INSERT INTO `ly_log` VALUES ('1601', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.215.4', '2014-01-22 19:46:03');
INSERT INTO `ly_log` VALUES ('1602', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-22 20:27:16');
INSERT INTO `ly_log` VALUES ('1603', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-22 21:18:06');
INSERT INTO `ly_log` VALUES ('1604', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-23 03:27:34');
INSERT INTO `ly_log` VALUES ('1605', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-23 08:56:53');
INSERT INTO `ly_log` VALUES ('1606', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-23 10:53:03');
INSERT INTO `ly_log` VALUES ('1607', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.73', '2014-01-23 12:12:43');
INSERT INTO `ly_log` VALUES ('1608', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.73', '2014-01-23 12:23:06');
INSERT INTO `ly_log` VALUES ('1609', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-01-23 13:45:24');
INSERT INTO `ly_log` VALUES ('1610', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-23 14:11:18');
INSERT INTO `ly_log` VALUES ('1611', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-23 14:28:53');
INSERT INTO `ly_log` VALUES ('1612', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-23 17:57:58');
INSERT INTO `ly_log` VALUES ('1613', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-23 19:39:16');
INSERT INTO `ly_log` VALUES ('1614', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-23 22:16:19');
INSERT INTO `ly_log` VALUES ('1615', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-23 23:12:15');
INSERT INTO `ly_log` VALUES ('1616', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-23 23:19:39');
INSERT INTO `ly_log` VALUES ('1617', null, 'ProductServiceImpl', 'updateLookNuns', '16', '101.226.166.253', '2014-01-24 01:19:55');
INSERT INTO `ly_log` VALUES ('1618', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.253', '2014-01-24 01:19:56');
INSERT INTO `ly_log` VALUES ('1619', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.166.253', '2014-01-24 01:19:59');
INSERT INTO `ly_log` VALUES ('1620', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.20', '2014-01-24 02:38:12');
INSERT INTO `ly_log` VALUES ('1621', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-24 07:29:18');
INSERT INTO `ly_log` VALUES ('1622', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.215.4', '2014-01-24 09:01:16');
INSERT INTO `ly_log` VALUES ('1623', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-24 09:32:45');
INSERT INTO `ly_log` VALUES ('1624', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.178', '2014-01-24 10:07:20');
INSERT INTO `ly_log` VALUES ('1625', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-24 12:10:20');
INSERT INTO `ly_log` VALUES ('1626', null, 'ProductServiceImpl', 'updateLookNuns', '0', '38.100.21.62', '2014-01-24 12:14:25');
INSERT INTO `ly_log` VALUES ('1627', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-24 15:02:16');
INSERT INTO `ly_log` VALUES ('1628', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-24 15:22:39');
INSERT INTO `ly_log` VALUES ('1629', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-24 16:26:36');
INSERT INTO `ly_log` VALUES ('1630', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-24 19:36:56');
INSERT INTO `ly_log` VALUES ('1631', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-24 20:02:17');
INSERT INTO `ly_log` VALUES ('1632', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-24 20:22:27');
INSERT INTO `ly_log` VALUES ('1633', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.97', '2014-01-24 20:27:47');
INSERT INTO `ly_log` VALUES ('1634', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-24 23:46:07');
INSERT INTO `ly_log` VALUES ('1635', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-24 23:48:55');
INSERT INTO `ly_log` VALUES ('1636', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.91', '2014-01-25 00:08:40');
INSERT INTO `ly_log` VALUES ('1637', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-25 01:22:06');
INSERT INTO `ly_log` VALUES ('1638', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.91', '2014-01-25 04:06:00');
INSERT INTO `ly_log` VALUES ('1639', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-25 04:10:39');
INSERT INTO `ly_log` VALUES ('1640', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-25 04:46:12');
INSERT INTO `ly_log` VALUES ('1641', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-25 05:24:24');
INSERT INTO `ly_log` VALUES ('1642', null, 'ProductServiceImpl', 'updateLookNuns', '0', '123.125.71.34', '2014-01-25 07:42:21');
INSERT INTO `ly_log` VALUES ('1643', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-25 08:35:10');
INSERT INTO `ly_log` VALUES ('1644', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.105', '2014-01-25 09:41:21');
INSERT INTO `ly_log` VALUES ('1645', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.91', '2014-01-25 09:55:30');
INSERT INTO `ly_log` VALUES ('1646', null, 'ProductServiceImpl', 'updateLookNuns', '15', '5.10.83.15', '2014-01-25 10:56:34');
INSERT INTO `ly_log` VALUES ('1647', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.45', '2014-01-25 11:29:03');
INSERT INTO `ly_log` VALUES ('1648', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.91', '2014-01-25 11:40:48');
INSERT INTO `ly_log` VALUES ('1649', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-25 11:46:36');
INSERT INTO `ly_log` VALUES ('1650', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.41', '2014-01-25 11:47:44');
INSERT INTO `ly_log` VALUES ('1651', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.93', '2014-01-25 13:03:39');
INSERT INTO `ly_log` VALUES ('1652', 'admin', '用户管理', 'modify', '0', '123.151.136.168', '2014-01-25 14:38:31');
INSERT INTO `ly_log` VALUES ('1653', 'admin', '用户管理', 'updateUserRates', '0', '123.151.136.168', '2014-01-25 14:38:46');
INSERT INTO `ly_log` VALUES ('1654', 'admin', '用户管理', 'delete', '125', '123.151.136.168', '2014-01-25 14:41:29');
INSERT INTO `ly_log` VALUES ('1655', 'admin', '用户管理', 'add', '0', '123.151.136.168', '2014-01-25 14:41:35');
INSERT INTO `ly_log` VALUES ('1656', 'admin', '角色管理', 'saveUserRole', '0', '123.151.136.168', '2014-01-25 14:41:35');
INSERT INTO `ly_log` VALUES ('1657', 'admin', '用户管理', 'saveUserRates', '0', '123.151.136.168', '2014-01-25 14:41:35');
INSERT INTO `ly_log` VALUES ('1658', 'admin', '用户管理', 'modify', '0', '123.151.136.168', '2014-01-25 14:41:59');
INSERT INTO `ly_log` VALUES ('1659', 'admin', '用户管理', 'updateUserRates', '0', '123.151.136.168', '2014-01-25 14:59:04');
INSERT INTO `ly_log` VALUES ('1660', 'admin', '用户管理', 'saveUserRates', '0', '123.151.136.168', '2014-01-25 14:59:28');
INSERT INTO `ly_log` VALUES ('1661', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-25 15:01:24');
INSERT INTO `ly_log` VALUES ('1662', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.116', '2014-01-25 15:15:20');
INSERT INTO `ly_log` VALUES ('1663', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-25 18:12:43');
INSERT INTO `ly_log` VALUES ('1664', null, 'ProductServiceImpl', 'updateLookNuns', '0', '220.181.108.171', '2014-01-25 19:57:02');
INSERT INTO `ly_log` VALUES ('1665', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.214.8', '2014-01-25 20:59:59');
INSERT INTO `ly_log` VALUES ('1666', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.212.158', '2014-01-25 21:48:20');
INSERT INTO `ly_log` VALUES ('1667', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-25 23:48:41');
INSERT INTO `ly_log` VALUES ('1668', null, 'ProductServiceImpl', 'updateLookNuns', '0', '66.249.64.22', '2014-01-26 00:41:56');
INSERT INTO `ly_log` VALUES ('1669', null, 'ProductServiceImpl', 'updateLookNuns', '15', '183.60.215.4', '2014-01-26 02:08:44');
INSERT INTO `ly_log` VALUES ('1670', null, 'ProductServiceImpl', 'updateLookNuns', '0', '183.60.215.4', '2014-01-26 03:03:08');
INSERT INTO `ly_log` VALUES ('1671', null, 'ProductServiceImpl', 'updateLookNuns', '16', '183.60.212.158', '2014-01-26 06:06:16');
INSERT INTO `ly_log` VALUES ('1672', null, 'ProductServiceImpl', 'updateLookNuns', '0', '5.10.83.66', '2014-01-26 06:30:37');
INSERT INTO `ly_log` VALUES ('1673', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.229', '2014-01-26 07:15:40');
INSERT INTO `ly_log` VALUES ('1674', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.169.228', '2014-01-26 07:15:40');
INSERT INTO `ly_log` VALUES ('1675', null, 'ProductServiceImpl', 'updateLookNuns', '16', '101.226.169.230', '2014-01-26 07:15:43');
INSERT INTO `ly_log` VALUES ('1676', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.216', '2014-01-26 07:20:03');
INSERT INTO `ly_log` VALUES ('1677', null, 'ProductServiceImpl', 'updateLookNuns', '0', '101.226.167.217', '2014-01-26 07:20:03');
INSERT INTO `ly_log` VALUES ('1678', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.176', '2014-01-26 07:21:44');
INSERT INTO `ly_log` VALUES ('1679', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.174', '2014-01-26 07:21:44');
INSERT INTO `ly_log` VALUES ('1680', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.163', '2014-01-26 07:21:44');
INSERT INTO `ly_log` VALUES ('1681', null, 'ProductServiceImpl', 'updateLookNuns', '0', '182.118.20.161', '2014-01-26 07:21:44');
INSERT INTO `ly_log` VALUES ('1682', 'root', 'UserLoginServiceImpl', 'add', '14', null, '2014-11-03 14:34:21');
INSERT INTO `ly_log` VALUES ('1683', 'root', 'UserLoginServiceImpl', 'add', '29', null, '2014-11-03 14:41:10');
INSERT INTO `ly_log` VALUES ('1684', 'root', 'UserLoginServiceImpl', 'add', '27', null, '2014-11-03 14:58:08');
INSERT INTO `ly_log` VALUES ('1685', 'root', 'UserLoginServiceImpl', 'add', '115', null, '2014-11-03 17:14:36');
INSERT INTO `ly_log` VALUES ('1686', 'root', 'UserLoginServiceImpl', 'add', '61', null, '2014-11-04 10:49:07');
INSERT INTO `ly_log` VALUES ('1687', 'root', 'UserLoginServiceImpl', 'add', '203', null, '2014-11-05 10:25:31');
INSERT INTO `ly_log` VALUES ('1688', 'root', 'UserLoginServiceImpl', 'add', '28', null, '2014-11-05 10:26:43');
INSERT INTO `ly_log` VALUES ('1689', 'root', 'UserLoginServiceImpl', 'add', '83', null, '2014-11-05 10:28:54');
INSERT INTO `ly_log` VALUES ('1690', 'root', 'UserLoginServiceImpl', 'add', '26', null, '2014-11-05 10:39:04');
INSERT INTO `ly_log` VALUES ('1691', 'root', 'UserLoginServiceImpl', 'add', '39', null, '2014-11-05 10:44:02');
INSERT INTO `ly_log` VALUES ('1692', 'root', 'UserLoginServiceImpl', 'add', '67', null, '2014-11-05 10:51:17');
INSERT INTO `ly_log` VALUES ('1693', 'root', 'UserLoginServiceImpl', 'add', '3', null, '2014-11-05 10:52:31');
INSERT INTO `ly_log` VALUES ('1694', 'root', 'UserLoginServiceImpl', 'add', '49', null, '2014-12-03 10:45:56');
INSERT INTO `ly_log` VALUES ('1695', 'root', 'UserLoginServiceImpl', 'add', '17', null, '2014-12-03 10:51:06');
INSERT INTO `ly_log` VALUES ('1696', 'root', 'UserLoginServiceImpl', 'add', '105', null, '2014-12-03 14:29:48');
INSERT INTO `ly_log` VALUES ('1697', 'root', 'UserLoginServiceImpl', 'add', '227', null, '2014-12-03 16:31:35');
INSERT INTO `ly_log` VALUES ('1698', 'root', 'UserLoginServiceImpl', 'add', '98', null, '2014-12-04 14:14:15');
INSERT INTO `ly_log` VALUES ('1699', 'root', 'UserLoginServiceImpl', 'add', '134', null, '2014-12-04 14:26:57');
INSERT INTO `ly_log` VALUES ('1700', 'root', 'UserLoginServiceImpl', 'add', '191', null, '2014-12-04 15:48:07');
INSERT INTO `ly_log` VALUES ('1701', 'root', 'UserLoginServiceImpl', 'add', '80', null, '2014-12-05 11:31:53');
INSERT INTO `ly_log` VALUES ('1702', 'root', 'UserLoginServiceImpl', 'add', '82', null, '2014-12-05 14:31:02');
INSERT INTO `ly_log` VALUES ('1703', 'root', 'UserLoginServiceImpl', 'add', '201', null, '2014-12-05 16:15:42');
INSERT INTO `ly_log` VALUES ('1704', 'root', 'UserLoginServiceImpl', 'add', '49', null, '2014-12-06 17:24:13');
INSERT INTO `ly_log` VALUES ('1705', 'root', 'UserLoginServiceImpl', 'add', '2', null, '2014-12-06 19:23:23');
INSERT INTO `ly_log` VALUES ('1706', 'root', 'UserLoginServiceImpl', 'add', '1', null, '2014-12-06 19:52:26');
INSERT INTO `ly_log` VALUES ('1707', 'root', 'UserLoginServiceImpl', 'add', '29', null, '2014-12-07 20:12:45');
INSERT INTO `ly_log` VALUES ('1708', 'root', 'UserLoginServiceImpl', 'add', '38', null, '2014-12-07 20:56:33');
INSERT INTO `ly_log` VALUES ('1709', 'root', 'UserLoginServiceImpl', 'add', '3', null, '2014-12-07 20:56:55');
INSERT INTO `ly_log` VALUES ('1710', 'root', 'UserLoginServiceImpl', 'add', '18', null, '2014-12-07 20:58:40');
INSERT INTO `ly_log` VALUES ('1711', 'root', 'UserLoginServiceImpl', 'add', '15', null, '2014-12-07 21:05:43');
INSERT INTO `ly_log` VALUES ('1712', 'root', 'UserLoginServiceImpl', 'add', '16', null, '2014-12-07 21:08:45');
INSERT INTO `ly_log` VALUES ('1713', 'root', 'UserLoginServiceImpl', 'add', '2', null, '2014-12-07 21:46:21');
INSERT INTO `ly_log` VALUES ('1714', 'root', 'UserLoginServiceImpl', 'add', '3', null, '2014-12-07 21:47:51');
INSERT INTO `ly_log` VALUES ('1715', 'root', 'UserLoginServiceImpl', 'add', '4', null, '2014-12-07 22:15:26');
INSERT INTO `ly_log` VALUES ('1716', 'root', 'UserLoginServiceImpl', 'add', '28', null, '2014-12-10 20:43:59');
INSERT INTO `ly_log` VALUES ('1717', 'root', 'AccountServiceImpl', 'add', '3', null, '2014-12-10 20:44:24');
INSERT INTO `ly_log` VALUES ('1718', 'root', 'UserLoginServiceImpl', 'add', '300', null, '2014-12-10 21:42:48');
INSERT INTO `ly_log` VALUES ('1719', 'root', 'UserLoginServiceImpl', 'add', '83', null, '2014-12-10 22:50:26');
INSERT INTO `ly_log` VALUES ('1720', 'root', 'UserLoginServiceImpl', 'add', '49', null, '2014-12-11 20:11:54');
INSERT INTO `ly_log` VALUES ('1721', 'root', 'UserLoginServiceImpl', 'add', '61', null, '2014-12-11 21:09:18');
INSERT INTO `ly_log` VALUES ('1722', 'root', 'AccountServiceImpl', 'add', '24', null, '2014-12-11 21:09:42');
INSERT INTO `ly_log` VALUES ('1723', 'root', 'UserLoginServiceImpl', 'add', '114', null, '2014-12-12 19:57:42');
INSERT INTO `ly_log` VALUES ('1724', 'root', 'UserLoginServiceImpl', 'add', '76', null, '2014-12-12 20:23:58');
INSERT INTO `ly_log` VALUES ('1725', 'root', 'AccountServiceImpl', 'delete', '152', null, '2014-12-12 21:45:07');
INSERT INTO `ly_log` VALUES ('1726', 'root', 'AccountServiceImpl', 'delete', '3', null, '2014-12-12 21:45:07');
INSERT INTO `ly_log` VALUES ('1727', 'root', 'AccountServiceImpl', 'delete', '4', null, '2014-12-12 21:46:17');
INSERT INTO `ly_log` VALUES ('1728', 'root', 'AccountServiceImpl', 'delete', '3', null, '2014-12-12 21:46:17');
INSERT INTO `ly_log` VALUES ('1729', 'root', 'AccountServiceImpl', 'delete', '4', null, '2014-12-12 21:46:17');
INSERT INTO `ly_log` VALUES ('1730', 'root', 'AccountServiceImpl', 'delete', '2', null, '2014-12-12 21:46:17');
INSERT INTO `ly_log` VALUES ('1731', 'root', 'UserLoginServiceImpl', 'add', '166', null, '2014-12-13 17:39:51');
INSERT INTO `ly_log` VALUES ('1732', 'root', 'UserLoginServiceImpl', 'add', '86', null, '2014-12-13 17:50:41');
INSERT INTO `ly_log` VALUES ('1733', 'root', 'UserLoginServiceImpl', 'add', '72', null, '2014-12-13 22:08:24');
INSERT INTO `ly_log` VALUES ('1734', 'root', 'UserLoginServiceImpl', 'add', '89', null, '2014-12-14 11:30:37');
INSERT INTO `ly_log` VALUES ('1735', 'root', 'UserLoginServiceImpl', 'add', '27', null, '2014-12-14 11:39:04');
INSERT INTO `ly_log` VALUES ('1736', 'root', 'UserLoginServiceImpl', 'add', '29', null, '2014-12-14 11:44:10');
INSERT INTO `ly_log` VALUES ('1737', 'root', 'UserLoginServiceImpl', 'add', '61', null, '2014-12-14 12:44:27');
INSERT INTO `ly_log` VALUES ('1738', 'root', 'UserLoginServiceImpl', 'add', '48', null, '2014-12-14 15:34:31');
INSERT INTO `ly_log` VALUES ('1739', 'root', 'RolesServiceImpl', 'add', '79', null, '2014-12-14 15:35:03');
INSERT INTO `ly_log` VALUES ('1740', 'root', 'RolesServiceImpl', 'add', '2', null, '2014-12-14 15:35:34');
INSERT INTO `ly_log` VALUES ('1741', 'root', 'RolesServiceImpl', 'add', '2', null, '2014-12-14 15:36:00');
INSERT INTO `ly_log` VALUES ('1742', 'root', 'AccountServiceImpl', 'add', '83', null, '2014-12-14 15:38:34');
INSERT INTO `ly_log` VALUES ('1743', 'root', 'AccountServiceImpl', 'add', '64', null, '2014-12-14 15:39:21');
INSERT INTO `ly_log` VALUES ('1744', 'root', 'AccountServiceImpl', 'add', '238', null, '2014-12-14 15:41:16');
INSERT INTO `ly_log` VALUES ('1745', 'root', 'UserLoginServiceImpl', 'add', '72', null, '2014-12-14 15:48:21');
INSERT INTO `ly_log` VALUES ('1746', 'root', 'AccountServiceImpl', 'add', '160', null, '2014-12-14 15:49:20');
INSERT INTO `ly_log` VALUES ('1747', 'root', 'RolesServiceImpl', 'add', '86', null, '2014-12-14 16:07:12');
INSERT INTO `ly_log` VALUES ('1748', 'root', 'RolesServiceImpl', 'delete', '94', null, '2014-12-14 16:07:17');
INSERT INTO `ly_log` VALUES ('1749', 'root', 'RolesServiceImpl', 'add', '63', null, '2014-12-14 16:07:30');
INSERT INTO `ly_log` VALUES ('1750', 'root', 'RolesServiceImpl', 'update', '64', null, '2014-12-14 16:07:42');
INSERT INTO `ly_log` VALUES ('1751', 'root', 'RolesServiceImpl', 'delete', '7', null, '2014-12-14 16:07:51');
INSERT INTO `ly_log` VALUES ('1752', 'root', 'RolesServiceImpl', 'add', '66', null, '2014-12-14 16:09:05');
INSERT INTO `ly_log` VALUES ('1753', 'root', 'RolesServiceImpl', 'delete', '64', null, '2014-12-14 16:09:10');
INSERT INTO `ly_log` VALUES ('1754', 'root', 'RolesServiceImpl', 'add', '46', null, '2014-12-14 16:09:32');
INSERT INTO `ly_log` VALUES ('1755', 'root', 'RolesServiceImpl', 'delete', '3', null, '2014-12-14 16:09:43');
INSERT INTO `ly_log` VALUES ('1756', 'root', 'UserLoginServiceImpl', 'add', '96', null, '2014-12-14 18:00:16');
INSERT INTO `ly_log` VALUES ('1757', 'root', 'UserLoginServiceImpl', 'add', '68', null, '2014-12-14 20:40:31');
INSERT INTO `ly_log` VALUES ('1758', 'root', 'UserLoginServiceImpl', 'add', '149', null, '2014-12-14 21:49:22');
INSERT INTO `ly_log` VALUES ('1759', 'root', 'UserLoginServiceImpl', 'add', '77', null, '2014-12-14 21:55:44');
INSERT INTO `ly_log` VALUES ('1760', 'root', 'DicTypeServiceImpl', 'delete', '192', null, '2014-12-14 21:56:13');
INSERT INTO `ly_log` VALUES ('1761', 'root', 'UserLoginServiceImpl', 'add', '348', null, '2014-12-14 22:00:42');
INSERT INTO `ly_log` VALUES ('1762', 'root', 'DicServiceImpl', 'add', '85', null, '2014-12-14 22:03:51');
INSERT INTO `ly_log` VALUES ('1763', 'root', 'AccountServiceImpl', 'add', '57', null, '2014-12-14 22:04:52');
INSERT INTO `ly_log` VALUES ('1764', 'root', 'UserLoginServiceImpl', 'add', '124', null, '2014-12-15 21:07:26');
INSERT INTO `ly_log` VALUES ('1765', 'root', 'UserLoginServiceImpl', 'add', '65', null, '2014-12-15 21:10:00');
INSERT INTO `ly_log` VALUES ('1766', 'root', 'UserLoginServiceImpl', 'add', '21', null, '2014-12-15 21:11:29');
INSERT INTO `ly_log` VALUES ('1767', 'root', 'UserLoginServiceImpl', 'add', '64', null, '2014-12-15 21:21:57');
INSERT INTO `ly_log` VALUES ('1768', 'root', 'UserLoginServiceImpl', 'add', '55', null, '2014-12-15 22:13:17');
INSERT INTO `ly_log` VALUES ('1769', 'root', 'UserLoginServiceImpl', 'add', '56', null, '2014-12-15 22:13:43');

-- ----------------------------
-- Table structure for ly_resources
-- ----------------------------
DROP TABLE IF EXISTS `ly_resources`;
CREATE TABLE `ly_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `resUrl` varchar(200) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_resources
-- ----------------------------
INSERT INTO `ly_resources` VALUES ('1', '系统基础管理', '0', 'system', '0', 'system', '0', '系统基础管理');
INSERT INTO `ly_resources` VALUES ('2', '账号管理', '1', 'account', '1', '/background/account/list.shtml', '1', '账号管理');
INSERT INTO `ly_resources` VALUES ('3', '角色管理', '1', 'role', '1', '/background/role/list.shtml', '5', '角色管理');
INSERT INTO `ly_resources` VALUES ('4', '菜单管理', '1', 'ly_resources', '1', '/background/resources/list.shtml', '10', '菜单查询');
INSERT INTO `ly_resources` VALUES ('5', '新增账号', '2', 'account_add', '2', '/background/account/addUI.shtml', '2', '新增账号');
INSERT INTO `ly_resources` VALUES ('6', '修改账号', '2', 'account_edit', '2', '/background/account/editUI.shtml', '3', '修改账号');
INSERT INTO `ly_resources` VALUES ('7', '删除账号', '2', 'account_delete', '2', '/background/account/deleteById.shtml', '4', '删除账号');
INSERT INTO `ly_resources` VALUES ('8', '新增角色', '3', 'role_add', '2', '/background/role/addUI.shtml', '6', '部门/科组的新增');
INSERT INTO `ly_resources` VALUES ('9', '修改角色', '3', 'role_edit', '2', '/background/role/editUI.shtml', '7', '部门/科组的修改');
INSERT INTO `ly_resources` VALUES ('10', '删除角色', '3', 'role_delete', '2', '/background/role/delete.shtml', '8', '部门/科组的删除');
INSERT INTO `ly_resources` VALUES ('11', '角色授权', '3', 'role_perss', '2', '/background/menu/permissions.shtml', '9', '菜单授权');
INSERT INTO `ly_resources` VALUES ('12', '数据字典管理', '0', 'dic_manager', '0', 'dic_manager', '22', '数据字典管理');
INSERT INTO `ly_resources` VALUES ('13', '字典类型', '12', 'dic_type', '1', '/background/dicType/list.shtml', '26', '字典类型');
INSERT INTO `ly_resources` VALUES ('14', '字典维护', '12', 'dic', '1', '/background/dic/list.shtml', '23', '字典维护');
INSERT INTO `ly_resources` VALUES ('16', '修改字典', '14', 'dic_edit', '2', '/background/dic/editUI.shtml', '24', '修改字典');
INSERT INTO `ly_resources` VALUES ('17', '删除字典', '14', 'dic_delete', '2', '/background/dic/delete.shtml', '25', '删除字典');
INSERT INTO `ly_resources` VALUES ('18', '新增字典类型', '13', 'dicType_add', '2', '/background/dicType/addUI.shtml', '27', '新增字典类型');
INSERT INTO `ly_resources` VALUES ('19', '修改字典类型', '13', 'dicType_edit', '2', '/background/dicType/editUI.shtml', '28', '修改字典类型');
INSERT INTO `ly_resources` VALUES ('20', '删除字典类型', '13', 'dicType_delete', '2', '/background/dicType/delete.shtml', '29', '删除字典类型');
INSERT INTO `ly_resources` VALUES ('21', '服务器配置管理', '0', 'server', '0', 'server', '14', '服务器配置管理');
INSERT INTO `ly_resources` VALUES ('22', '预警设置', '21', 'ser_warn', '1', '/background/serverInfo/forecast.shtml', '15', '预警设置');
INSERT INTO `ly_resources` VALUES ('23', '状态列表', '21', 'ser_list', '1', '/background/serverInfo/list.shtml', '16', '状态列表');
INSERT INTO `ly_resources` VALUES ('24', '服务器状态', '21', 'ser_statu', '1', '/background/serverInfo/show.shtml', '17', '服务器状态');
INSERT INTO `ly_resources` VALUES ('25', '登陆信息管理', '0', 'ly_login', '0', 'ly_login', '18', '登陆信息管理');
INSERT INTO `ly_resources` VALUES ('26', '用户登录记录', '25', 'ly_log_list', '1', '/background/userlogin/list.shtml', '19', '用户登录记录');
INSERT INTO `ly_resources` VALUES ('27', '操作日志管理', '0', 'ly_log', '0', 'ly_log', '20', '操作日志管理');
INSERT INTO `ly_resources` VALUES ('28', '日志查询', '27', 'ly_log', '1', '/background/log/list.shtml', '21', '日志查询');
INSERT INTO `ly_resources` VALUES ('29', '新增菜单资源', '4', 'ly_resources_add', '2', '/background/resources/addUI.shtml', '11', '新增菜单资源');
INSERT INTO `ly_resources` VALUES ('30', '修改菜单资源', '4', 'ly_resources_edit', '2', '/background/resources/editUI.shtml', '12', '修改菜单资源');
INSERT INTO `ly_resources` VALUES ('31', '删除菜单资源', '4', 'ly_resources_delete', '2', '/background/resources/delete.shtml', '13', '删除菜单资源');

-- ----------------------------
-- Table structure for ly_res_roles
-- ----------------------------
DROP TABLE IF EXISTS `ly_res_roles`;
CREATE TABLE `ly_res_roles` (
  `role_id` int(11) NOT NULL,
  `resc_id` int(11) NOT NULL,
  PRIMARY KEY (`resc_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_res_roles
-- ----------------------------
INSERT INTO `ly_res_roles` VALUES ('4', '1');
INSERT INTO `ly_res_roles` VALUES ('4', '2');
INSERT INTO `ly_res_roles` VALUES ('4', '3');
INSERT INTO `ly_res_roles` VALUES ('4', '4');
INSERT INTO `ly_res_roles` VALUES ('4', '5');
INSERT INTO `ly_res_roles` VALUES ('4', '6');
INSERT INTO `ly_res_roles` VALUES ('4', '7');
INSERT INTO `ly_res_roles` VALUES ('4', '8');
INSERT INTO `ly_res_roles` VALUES ('4', '9');
INSERT INTO `ly_res_roles` VALUES ('4', '10');
INSERT INTO `ly_res_roles` VALUES ('4', '11');
INSERT INTO `ly_res_roles` VALUES ('4', '12');
INSERT INTO `ly_res_roles` VALUES ('4', '13');
INSERT INTO `ly_res_roles` VALUES ('4', '14');
INSERT INTO `ly_res_roles` VALUES ('4', '15');
INSERT INTO `ly_res_roles` VALUES ('4', '16');
INSERT INTO `ly_res_roles` VALUES ('4', '17');
INSERT INTO `ly_res_roles` VALUES ('4', '18');
INSERT INTO `ly_res_roles` VALUES ('4', '19');
INSERT INTO `ly_res_roles` VALUES ('4', '20');
INSERT INTO `ly_res_roles` VALUES ('4', '21');
INSERT INTO `ly_res_roles` VALUES ('4', '22');
INSERT INTO `ly_res_roles` VALUES ('4', '23');
INSERT INTO `ly_res_roles` VALUES ('4', '24');
INSERT INTO `ly_res_roles` VALUES ('4', '25');
INSERT INTO `ly_res_roles` VALUES ('4', '26');
INSERT INTO `ly_res_roles` VALUES ('4', '27');
INSERT INTO `ly_res_roles` VALUES ('4', '28');
INSERT INTO `ly_res_roles` VALUES ('4', '29');
INSERT INTO `ly_res_roles` VALUES ('4', '30');
INSERT INTO `ly_res_roles` VALUES ('4', '31');

-- ----------------------------
-- Table structure for ly_role
-- ----------------------------
DROP TABLE IF EXISTS `ly_role`;
CREATE TABLE `ly_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `enable` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `roleKey` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_role
-- ----------------------------
INSERT INTO `ly_role` VALUES ('2', '1', '管理员', 'admin', '管理系统权限');
INSERT INTO `ly_role` VALUES ('3', '1', '普通角色', 'simple', '普通角色');
INSERT INTO `ly_role` VALUES ('4', '1', '根账号', 'root', '拥有所有权限1');

-- ----------------------------
-- Table structure for ly_server_info
-- ----------------------------
DROP TABLE IF EXISTS `ly_server_info`;
CREATE TABLE `ly_server_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cpuUsage` varchar(255) DEFAULT NULL,
  `setCpuUsage` varchar(255) DEFAULT NULL,
  `jvmUsage` varchar(255) DEFAULT NULL,
  `setJvmUsage` varchar(255) DEFAULT NULL,
  `ramUsage` varchar(255) DEFAULT NULL,
  `setRamUsage` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_server_info
-- ----------------------------
INSERT INTO `ly_server_info` VALUES ('10', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('11', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('12', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('13', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('14', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('15', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('16', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('17', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('18', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('19', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('21', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('31', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('41', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');
INSERT INTO `ly_server_info` VALUES ('51', '90.8', '90', '70.0', '90', '82.0', '90', '421828229@qq.com', '2013-12-30 16:04:32', '<font color=\'red\'>CPU当前：90.8%,超出预设值  90%<br></font>');

-- ----------------------------
-- Table structure for ly_userloginlist
-- ----------------------------
DROP TABLE IF EXISTS `ly_userloginlist`;
CREATE TABLE `ly_userloginlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loginIP` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ly_user_loginlist` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_userloginlist
-- ----------------------------
INSERT INTO `ly_userloginlist` VALUES ('4', '1', 'root', '2014-11-03 14:34:21', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('5', '1', 'root', '2014-11-03 14:41:10', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('6', '1', 'root', '2014-11-03 14:58:08', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('7', '1', 'root', '2014-11-03 17:14:36', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('8', '1', 'root', '2014-11-04 10:49:07', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('9', '1', 'root', '2014-11-05 10:25:31', '88.128.19.236');
INSERT INTO `ly_userloginlist` VALUES ('10', '1', 'root', '2014-11-05 10:26:43', '88.128.19.236');
INSERT INTO `ly_userloginlist` VALUES ('11', '1', 'root', '2014-11-05 10:28:53', '88.128.19.90');
INSERT INTO `ly_userloginlist` VALUES ('12', '1', 'root', '2014-11-05 10:39:04', '88.128.19.236');
INSERT INTO `ly_userloginlist` VALUES ('13', '1', 'root', '2014-11-05 10:44:02', '88.128.19.236');
INSERT INTO `ly_userloginlist` VALUES ('14', '1', 'root', '2014-11-05 10:51:16', '88.128.19.236');
INSERT INTO `ly_userloginlist` VALUES ('15', '1', 'root', '2014-11-05 10:52:31', '88.128.19.236');
INSERT INTO `ly_userloginlist` VALUES ('16', '1', 'root', '2014-12-03 10:45:56', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('17', '1', 'root', '2014-12-03 10:51:06', '88.128.19.236');
INSERT INTO `ly_userloginlist` VALUES ('18', '1', 'root', '2014-12-03 14:29:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('19', '1', 'root', '2014-12-03 16:31:34', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('20', '1', 'root', '2014-12-04 14:14:15', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('21', '1', 'root', '2014-12-04 14:26:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('22', '1', 'root', '2014-12-04 15:48:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('23', '1', 'root', '2014-12-05 11:31:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('24', '1', 'root', '2014-12-05 14:31:02', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('25', '1', 'root', '2014-12-05 16:15:42', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('26', '1', 'root', '2014-12-06 17:24:13', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('27', '1', 'root', '2014-12-06 19:23:23', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('28', '1', 'root', '2014-12-06 19:52:26', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('29', '1', 'root', '2014-12-07 20:12:45', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('30', '1', 'root', '2014-12-07 20:56:33', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('31', '1', 'root', '2014-12-07 20:56:55', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('32', '1', 'root', '2014-12-07 20:58:40', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('33', '1', 'root', '2014-12-07 21:05:43', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('34', '1', 'root', '2014-12-07 21:08:45', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('35', '1', 'root', '2014-12-07 21:46:21', '192.168.1.102');
INSERT INTO `ly_userloginlist` VALUES ('36', '1', 'root', '2014-12-07 21:47:51', '192.168.1.102');
INSERT INTO `ly_userloginlist` VALUES ('37', '1', 'root', '2014-12-07 22:15:26', '192.168.1.102');
INSERT INTO `ly_userloginlist` VALUES ('38', '1', 'root', '2014-12-10 20:43:59', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('39', '1', 'root', '2014-12-10 21:42:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('40', '1', 'root', '2014-12-10 22:50:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('41', '1', 'root', '2014-12-11 20:11:54', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('42', '1', 'root', '2014-12-11 21:09:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('43', '1', 'root', '2014-12-12 19:57:42', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('44', '1', 'root', '2014-12-12 20:23:58', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('45', '1', 'root', '2014-12-13 17:39:51', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('46', '1', 'root', '2014-12-13 17:50:41', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('47', '1', 'root', '2014-12-13 22:08:24', '127.0.0.1');
INSERT INTO `ly_userloginlist` VALUES ('48', '1', 'root', '2014-12-14 11:30:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('49', '1', 'root', '2014-12-14 11:39:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('50', '1', 'root', '2014-12-14 11:44:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('51', '1', 'root', '2014-12-14 12:44:27', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('52', '1', 'root', '2014-12-14 15:34:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('53', '1', 'root', '2014-12-14 15:48:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('54', '1', 'root', '2014-12-14 18:00:16', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('55', '1', 'root', '2014-12-14 20:40:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('56', '1', 'root', '2014-12-14 21:49:22', '192.168.253.9');
INSERT INTO `ly_userloginlist` VALUES ('57', '1', 'root', '2014-12-14 21:55:44', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('58', '1', 'root', '2014-12-14 22:00:42', '192.168.253.9');
INSERT INTO `ly_userloginlist` VALUES ('59', '1', 'root', '2014-12-15 21:07:26', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('60', '1', 'root', '2014-12-15 21:10:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('61', '1', 'root', '2014-12-15 21:11:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('62', '1', 'root', '2014-12-15 21:21:57', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('63', '1', 'root', '2014-12-15 22:13:17', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userloginlist` VALUES ('64', '1', 'root', '2014-12-15 22:13:43', '0:0:0:0:0:0:0:1');
