/*
Navicat MySQL Data Transfer

Source Server         : xue
Source Server Version : 50637
Source Host           : 127.0.0.1:3306
Source Database       : day1024

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2019-10-25 09:10:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `stater` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES ('1', '张三', '1899-12-31 00:00:00', '1');
INSERT INTO `attendance` VALUES ('2', '李四', '2019-10-24 00:00:00', '0');
INSERT INTO `attendance` VALUES ('3', '小五', '2019-10-24 00:00:00', '3');
INSERT INTO `attendance` VALUES ('4', '张三', '1899-12-31 00:00:00', '1');
INSERT INTO `attendance` VALUES ('5', '李四', '2019-10-24 15:24:00', '0');
INSERT INTO `attendance` VALUES ('6', '小五', '2019-10-24 15:24:00', '3');
INSERT INTO `attendance` VALUES ('7', '张三', '1899-12-31 00:00:00', '1');
INSERT INTO `attendance` VALUES ('8', '李四', '2019-10-24 15:24:00', '0');
INSERT INTO `attendance` VALUES ('9', '小五', '2019-10-24 15:24:00', '3');
INSERT INTO `attendance` VALUES ('10', '张三', '1899-12-31 00:00:00', '1');
INSERT INTO `attendance` VALUES ('11', '李四', '2019-10-24 15:24:00', '0');
INSERT INTO `attendance` VALUES ('12', '小五', '2019-10-24 15:24:00', '3');
INSERT INTO `attendance` VALUES ('13', '张三', '1899-12-31 00:00:00', '1');
INSERT INTO `attendance` VALUES ('14', '李四', '2019-10-24 15:24:00', '0');
INSERT INTO `attendance` VALUES ('15', '小五', '2019-10-24 15:24:00', '3');
INSERT INTO `attendance` VALUES ('16', '张三', '1899-12-31 00:00:00', '1');
INSERT INTO `attendance` VALUES ('17', '李四', '2019-10-24 15:24:00', '0');
INSERT INTO `attendance` VALUES ('18', '小五', '2019-10-24 15:24:00', '3');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `url` varchar(50) DEFAULT NULL COMMENT '权限路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', 'user findAll', '/user/findAll.do');
INSERT INTO `permission` VALUES ('2', 'user findById', '/user/findById.do');
INSERT INTO `permission` VALUES ('3', 'role findAll', '/role/findAll');
INSERT INTO `permission` VALUES ('4', '000', '10000');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `roleDesc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ADMIN', 'VIP');
INSERT INTO `role` VALUES ('2', 'USER', 'VIP');
INSERT INTO `role` VALUES ('3', 'aaa', 'VIP');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `permissionId` int(11) NOT NULL COMMENT '权限id',
  `roleId` int(11) NOT NULL DEFAULT '0' COMMENT '角色id',
  PRIMARY KEY (`permissionId`,`roleId`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `role_permission_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`),
  CONSTRAINT `role_permission_ibfk_2` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1');
INSERT INTO `role_permission` VALUES ('2', '1');
INSERT INTO `role_permission` VALUES ('3', '1');

-- ----------------------------
-- Table structure for student_detail
-- ----------------------------
DROP TABLE IF EXISTS `student_detail`;
CREATE TABLE `student_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `address` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  `stu_class` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '班级',
  `phone` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '学生手机号',
  `parent_phone` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '家长手机号',
  `identity` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of student_detail
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `password` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'aaa', '123');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `userId` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `roleId` int(11) NOT NULL DEFAULT '0' COMMENT '角色id',
  PRIMARY KEY (`userId`,`roleId`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('1', '2');
