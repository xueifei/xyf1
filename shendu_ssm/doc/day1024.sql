/*
Navicat MySQL Data Transfer

Source Server         : xue
Source Server Version : 50637
Source Host           : 127.0.0.1:3306
Source Database       : day1024

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2019-10-26 16:28:24
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
  `attendance_time` datetime DEFAULT NULL COMMENT '记录班时间 下班时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES ('1', '张三', '1899-12-31 00:00:00', '1', null);
INSERT INTO `attendance` VALUES ('2', '李四', '2019-10-24 00:00:00', '0', null);
INSERT INTO `attendance` VALUES ('3', '小五', '2019-10-24 00:00:00', '3', null);
INSERT INTO `attendance` VALUES ('4', '张三', '1899-12-31 00:00:00', '1', null);
INSERT INTO `attendance` VALUES ('5', '李四', '2019-10-24 15:24:00', '0', null);
INSERT INTO `attendance` VALUES ('6', '小五', '2019-10-24 15:24:00', '3', null);
INSERT INTO `attendance` VALUES ('7', '张三', '1899-12-31 00:00:00', '1', null);
INSERT INTO `attendance` VALUES ('8', '李四', '2019-10-24 15:24:00', '0', null);
INSERT INTO `attendance` VALUES ('9', '小五', '2019-10-24 15:24:00', '3', null);
INSERT INTO `attendance` VALUES ('10', '张三', '1899-12-31 00:00:00', '1', null);
INSERT INTO `attendance` VALUES ('11', '李四', '2019-10-24 15:24:00', '0', null);
INSERT INTO `attendance` VALUES ('12', '小五', '2019-10-24 15:24:00', '3', null);
INSERT INTO `attendance` VALUES ('13', '张三', '1899-12-31 00:00:00', '1', null);
INSERT INTO `attendance` VALUES ('14', '李四', '2019-10-24 15:24:00', '0', null);
INSERT INTO `attendance` VALUES ('15', '小五', '2019-10-24 15:24:00', '3', null);
INSERT INTO `attendance` VALUES ('16', '张三', '1899-12-31 00:00:00', '1', null);
INSERT INTO `attendance` VALUES ('17', '李四', '2019-10-24 15:24:00', '0', null);
INSERT INTO `attendance` VALUES ('18', '小五', '2019-10-24 15:24:00', '3', null);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `desc_` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', 'addProduct', '增加产品', '/addProduct');
INSERT INTO `permission` VALUES ('2', 'deleteProduct', '删除产品', '/deleteProduct');
INSERT INTO `permission` VALUES ('3', 'editeProduct', '编辑产品', '/editeProduct');
INSERT INTO `permission` VALUES ('4', 'updateProduct', '修改产品', '/updateProduct');
INSERT INTO `permission` VALUES ('5', 'listProduct', '查看产品', '/listProduct');
INSERT INTO `permission` VALUES ('6', 'addOrder', '增加订单', '/addOrder');
INSERT INTO `permission` VALUES ('7', 'deleteOrder', '删除订单', '/deleteOrder');
INSERT INTO `permission` VALUES ('8', 'editeOrder', '编辑订单', '/editeOrder');
INSERT INTO `permission` VALUES ('9', 'updateOrder', '修改订单', '/updateOrder');
INSERT INTO `permission` VALUES ('10', 'listOrder', '查看订单', '/listOrder');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `desc_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', '超级管理员');
INSERT INTO `role` VALUES ('2', 'productManager', '产品管理员');
INSERT INTO `role` VALUES ('3', 'orderManager', '订单管理员');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');
INSERT INTO `role_permission` VALUES ('2', '1', '2');
INSERT INTO `role_permission` VALUES ('3', '1', '3');
INSERT INTO `role_permission` VALUES ('4', '1', '4');
INSERT INTO `role_permission` VALUES ('5', '1', '5');
INSERT INTO `role_permission` VALUES ('6', '1', '6');
INSERT INTO `role_permission` VALUES ('7', '1', '7');
INSERT INTO `role_permission` VALUES ('8', '1', '8');
INSERT INTO `role_permission` VALUES ('9', '1', '9');
INSERT INTO `role_permission` VALUES ('10', '1', '10');
INSERT INTO `role_permission` VALUES ('11', '2', '1');
INSERT INTO `role_permission` VALUES ('12', '2', '2');
INSERT INTO `role_permission` VALUES ('13', '2', '3');
INSERT INTO `role_permission` VALUES ('14', '2', '4');
INSERT INTO `role_permission` VALUES ('15', '2', '5');
INSERT INTO `role_permission` VALUES ('50', '3', '10');
INSERT INTO `role_permission` VALUES ('51', '3', '9');
INSERT INTO `role_permission` VALUES ('52', '3', '8');
INSERT INTO `role_permission` VALUES ('53', '3', '7');
INSERT INTO `role_permission` VALUES ('54', '3', '6');
INSERT INTO `role_permission` VALUES ('55', '3', '1');
INSERT INTO `role_permission` VALUES ('56', '5', '11');

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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhang3', 'a7d59dfc5332749cb801f86a24f5f590', 'e5ykFiNwShfCXvBRPr3wXg==');
INSERT INTO `user` VALUES ('2', 'li4', '43e28304197b9216e45ab1ce8dac831b', 'jPz19y7arvYIGhuUjsb6sQ==');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `rid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('43', '2', '2');
INSERT INTO `user_role` VALUES ('45', '1', '1');
