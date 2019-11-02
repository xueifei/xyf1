/*
Navicat MySQL Data Transfer

Source Server         : xue
Source Server Version : 50637
Source Host           : 127.0.0.1:3306
Source Database       : day1024

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2019-11-02 22:43:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `attendance_time` datetime DEFAULT NULL COMMENT '记录每天打卡时间',
  `status` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '状态',
  `time` datetime NOT NULL COMMENT '记录考勤时间',
  `s_id` int(11) NOT NULL COMMENT '对应学生详情表中id 唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES ('1', '张三', '1899-12-31 00:00:00', '1', '2019-11-02 22:33:47', '1');
INSERT INTO `attendance` VALUES ('2', '李四', '2019-10-24 00:00:00', '0', '2019-11-02 22:33:51', '2');
INSERT INTO `attendance` VALUES ('3', '小五', '2019-10-24 00:00:00', '3', '2019-11-02 22:33:54', '3');
INSERT INTO `attendance` VALUES ('4', '张三', '1899-12-31 00:00:00', '1', '2019-11-02 22:34:00', '3');
INSERT INTO `attendance` VALUES ('5', '李四', '2019-10-24 15:24:00', '0', '2019-11-02 22:34:03', '3');
INSERT INTO `attendance` VALUES ('6', '小五', '2019-10-24 15:24:00', '1', '2019-11-02 00:09:22', '1');
INSERT INTO `attendance` VALUES ('7', '张三', '1899-12-31 00:00:00', '2', '2019-11-02 00:09:26', '2');
INSERT INTO `attendance` VALUES ('8', '李四', '2019-10-24 15:24:00', '2', '2019-11-01 00:07:29', '3');
INSERT INTO `attendance` VALUES ('115', '张三', '1899-12-31 00:00:00', '1', '2019-10-30 14:36:00', '1');
INSERT INTO `attendance` VALUES ('116', '李四', '2019-10-24 15:24:00', '0', '2019-10-30 14:36:00', '2');
INSERT INTO `attendance` VALUES ('117', '小五', '2019-10-24 15:24:00', '3', '2019-10-30 14:36:00', '3');
INSERT INTO `attendance` VALUES ('118', '111', '2019-10-24 15:24:00', '1', '2019-10-24 15:24:00', '4');
INSERT INTO `attendance` VALUES ('119', '张三', null, '1', '2019-10-30 14:36:00', '1');
INSERT INTO `attendance` VALUES ('120', '李四', '2019-10-24 15:24:00', '0', '2019-10-30 14:36:00', '2');
INSERT INTO `attendance` VALUES ('121', '小五', '2019-10-24 15:24:00', '3', '2019-10-30 14:36:00', '3');
INSERT INTO `attendance` VALUES ('122', '111', '2019-10-24 15:24:00', '1', '2019-10-24 15:24:00', '4');
INSERT INTO `attendance` VALUES ('123', '张三', '1899-12-31 00:00:00', '1', '2019-10-30 14:36:00', '1');
INSERT INTO `attendance` VALUES ('124', '李四', '2019-10-24 15:24:00', '0', '2019-10-30 14:36:00', '2');
INSERT INTO `attendance` VALUES ('125', '小五', '2019-10-24 15:24:00', '3', '2019-10-30 14:36:00', '3');
INSERT INTO `attendance` VALUES ('126', '111', '2019-10-24 15:24:00', '1', '2019-10-24 15:24:00', '4');

-- ----------------------------
-- Table structure for note
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '短信内容',
  `status` int(11) DEFAULT NULL COMMENT '0为成功/1为失败  发送状态',
  `template_id` int(11) DEFAULT NULL COMMENT '0为模板一/1为模板二    短信模板',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of note
-- ----------------------------
INSERT INTO `note` VALUES ('1', '111', 'aa', '1', '1');
INSERT INTO `note` VALUES ('2', '222', 'www', '1', '1');
INSERT INTO `note` VALUES ('3', '15666363902', '小五', '1', '1');
INSERT INTO `note` VALUES ('5', '15666363902', '张三', '1', '3');
INSERT INTO `note` VALUES ('6', '156666666615666363902', '李四', '1', '2');
INSERT INTO `note` VALUES ('7', '15666363902', '李四', '1', '3');
INSERT INTO `note` VALUES ('8', '15666363902', '小五', '1', '1');
INSERT INTO `note` VALUES ('9', '15666363902', '张三', '1', '2');
INSERT INTO `note` VALUES ('10', '15666363902', '张三', '1', '3');
INSERT INTO `note` VALUES ('11', '156666666615666363902', '李四', '1', '2');
INSERT INTO `note` VALUES ('12', '15666363902', '李四', '1', '3');
INSERT INTO `note` VALUES ('13', '15666363902', '小五', '1', '1');
INSERT INTO `note` VALUES ('14', '15666363902', '张三', '1', '2');
INSERT INTO `note` VALUES ('15', '15666363902', '张三', '1', '3');
INSERT INTO `note` VALUES ('16', '156666666615666363902', '李四', '1', '2');
INSERT INTO `note` VALUES ('17', '15666363902', '李四', '1', '3');
INSERT INTO `note` VALUES ('18', '15666363902', '小五', '1', '1');
INSERT INTO `note` VALUES ('19', '15666363902', '张三', '1', '2');
INSERT INTO `note` VALUES ('20', '15666363902', '张三', '1', '3');
INSERT INTO `note` VALUES ('21', '15666363902', '小五', '1', '1');
INSERT INTO `note` VALUES ('22', '15666363902', '张三', '1', '2');
INSERT INTO `note` VALUES ('23', '15666363902', '张三', '1', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', 'addProduct', '增加产品', '/ad');
INSERT INTO `permission` VALUES ('2', 'deleteProduct', '删除产品', '/deleteProduct');
INSERT INTO `permission` VALUES ('3', 'editeProduct', '编辑产品', '/editeProduct');
INSERT INTO `permission` VALUES ('4', 'updateProduct', '修改产品', '/updateProduct');
INSERT INTO `permission` VALUES ('5', 'listProduct', '查看产品', '/listProduct');
INSERT INTO `permission` VALUES ('6', 'addOrder', '增加订单', '/addOrder');
INSERT INTO `permission` VALUES ('7', 'deleteOrder', '删除订单', '/deleteOrder');
INSERT INTO `permission` VALUES ('8', 'editeOrder', '编辑订单', '/editeOrder');
INSERT INTO `permission` VALUES ('9', 'updateOrder', '修改订单', '/updateOrder');
INSERT INTO `permission` VALUES ('10', 'listOrder', '查看订单', '/listOrder');
INSERT INTO `permission` VALUES ('11', '1', '111111111111111111111111', '/addProduct1111');
INSERT INTO `permission` VALUES ('12', 'zhang3', '管理1', '/addProduct1111');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `desc_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', '超级管理员1');
INSERT INTO `role` VALUES ('2', 'productManager', '产品管理员');
INSERT INTO `role` VALUES ('3', 'orderManager', '订单管理员');
INSERT INTO `role` VALUES ('6', 'admin1', 'test');
INSERT INTO `role` VALUES ('7', 'test', '阿拉基搁哪垃圾啊');
INSERT INTO `role` VALUES ('9', 'test11111111111111', '111111111111111111111111');
INSERT INTO `role` VALUES ('10', 'test0000', '0000');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
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
INSERT INTO `role_permission` VALUES ('67', '6', '10');
INSERT INTO `role_permission` VALUES ('68', '6', '9');
INSERT INTO `role_permission` VALUES ('69', '6', '8');
INSERT INTO `role_permission` VALUES ('70', '6', '7');
INSERT INTO `role_permission` VALUES ('71', '6', '6');
INSERT INTO `role_permission` VALUES ('72', '6', '5');
INSERT INTO `role_permission` VALUES ('73', '6', '4');
INSERT INTO `role_permission` VALUES ('74', '6', '3');
INSERT INTO `role_permission` VALUES ('75', '6', '2');
INSERT INTO `role_permission` VALUES ('76', '6', '1');
INSERT INTO `role_permission` VALUES ('77', null, '10');
INSERT INTO `role_permission` VALUES ('78', null, '9');
INSERT INTO `role_permission` VALUES ('79', null, '8');
INSERT INTO `role_permission` VALUES ('80', null, '7');
INSERT INTO `role_permission` VALUES ('81', null, '6');
INSERT INTO `role_permission` VALUES ('82', null, '4');
INSERT INTO `role_permission` VALUES ('83', null, '1');
INSERT INTO `role_permission` VALUES ('84', null, '10');
INSERT INTO `role_permission` VALUES ('85', null, '9');
INSERT INTO `role_permission` VALUES ('86', null, '8');
INSERT INTO `role_permission` VALUES ('87', null, '7');
INSERT INTO `role_permission` VALUES ('88', null, '6');
INSERT INTO `role_permission` VALUES ('89', null, '5');
INSERT INTO `role_permission` VALUES ('90', null, '4');
INSERT INTO `role_permission` VALUES ('91', null, '3');
INSERT INTO `role_permission` VALUES ('92', null, '2');
INSERT INTO `role_permission` VALUES ('93', null, '1');
INSERT INTO `role_permission` VALUES ('94', null, '9');
INSERT INTO `role_permission` VALUES ('95', null, '7');
INSERT INTO `role_permission` VALUES ('96', null, '5');
INSERT INTO `role_permission` VALUES ('97', null, '3');
INSERT INTO `role_permission` VALUES ('98', null, '1');
INSERT INTO `role_permission` VALUES ('99', null, '7');
INSERT INTO `role_permission` VALUES ('100', null, '5');
INSERT INTO `role_permission` VALUES ('117', '7', '10');
INSERT INTO `role_permission` VALUES ('118', '7', '8');
INSERT INTO `role_permission` VALUES ('119', '7', '6');
INSERT INTO `role_permission` VALUES ('120', '7', '4');
INSERT INTO `role_permission` VALUES ('121', '1', '1');
INSERT INTO `role_permission` VALUES ('122', '1', '2');
INSERT INTO `role_permission` VALUES ('123', '1', '3');
INSERT INTO `role_permission` VALUES ('124', '1', '4');
INSERT INTO `role_permission` VALUES ('125', '1', '5');
INSERT INTO `role_permission` VALUES ('126', '1', '6');
INSERT INTO `role_permission` VALUES ('127', '1', '7');
INSERT INTO `role_permission` VALUES ('128', '1', '8');
INSERT INTO `role_permission` VALUES ('129', '1', '9');
INSERT INTO `role_permission` VALUES ('130', '1', '10');
INSERT INTO `role_permission` VALUES ('131', '10', '4');
INSERT INTO `role_permission` VALUES ('132', '10', '8');
INSERT INTO `role_permission` VALUES ('133', '10', '10');
INSERT INTO `role_permission` VALUES ('134', '9', '2');
INSERT INTO `role_permission` VALUES ('135', '9', '4');
INSERT INTO `role_permission` VALUES ('136', '9', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of student_detail
-- ----------------------------
INSERT INTO `student_detail` VALUES ('1', '张三', '北京111111111111111111', '00000', '15666363902', '15666363902', '142222222222222222');
INSERT INTO `student_detail` VALUES ('2', '李四', '北京', '00000', '15666363902', '15666363902', '142222222222222222');
INSERT INTO `student_detail` VALUES ('3', '小五', '北京', 'java基础', '1566666666', '15666363902', '142222222222222222');
INSERT INTO `student_detail` VALUES ('4', 'zhang3111111111111111', '北京11', 'abc', '15666363902', '15666363902', '====');
INSERT INTO `student_detail` VALUES ('5', 'zhang3', '北京11', '框架', '15666363902', '15666363902', '且无法入无人');
INSERT INTO `student_detail` VALUES ('6', 'zhang300', '0000111111111111', '00000', '15666363902', '15666363902', '0000');
INSERT INTO `student_detail` VALUES ('7', 'zhang3', '北京111111111111111111', '00000', '15666666661111', '11111111111111111111111111111111', '且无法入无人');

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` text COLLATE utf8_bin NOT NULL COMMENT '模板内容  ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of template
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhang3', 'a7d59dfc5332749cb801f86a24f5f590', 'e5ykFiNwShfCXvBRPr3wXg==');
INSERT INTO `user` VALUES ('2', 'li4', '43e28304197b9216e45ab1ce8dac831b', 'jPz19y7arvYIGhuUjsb6sQ==');
INSERT INTO `user` VALUES ('3', 'zhang3111111111111111', 'beab2806a53b5bf1748e9ec7e926b7ec', 'URGWJ9NVvcVCsZ6z7BAljQ==');
INSERT INTO `user` VALUES ('4', 'zha', '5d2d54a0adde47023ebd3a81fc59fead', 'HPq0Syfnse88N6rWYn8m6Q==');
INSERT INTO `user` VALUES ('5', 'zhang3000000000000', '15fcab090b280839e50b7ecfe8f0e493', '4+DxUmsWj/hq3kgslDdUsw==');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `rid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('43', '2', '2');
INSERT INTO `user_role` VALUES ('45', '1', '1');
INSERT INTO `user_role` VALUES ('46', null, '7');
INSERT INTO `user_role` VALUES ('47', null, '6');
INSERT INTO `user_role` VALUES ('48', null, '3');
INSERT INTO `user_role` VALUES ('49', null, '2');
INSERT INTO `user_role` VALUES ('50', null, '1');
INSERT INTO `user_role` VALUES ('51', null, '7');
INSERT INTO `user_role` VALUES ('52', null, '3');
INSERT INTO `user_role` VALUES ('53', null, '7');
INSERT INTO `user_role` VALUES ('54', null, '3');
INSERT INTO `user_role` VALUES ('55', null, '1');
INSERT INTO `user_role` VALUES ('56', null, '1');
INSERT INTO `user_role` VALUES ('57', null, '3');
INSERT INTO `user_role` VALUES ('58', null, '1');
INSERT INTO `user_role` VALUES ('59', null, '2');
INSERT INTO `user_role` VALUES ('63', '3', '1');
INSERT INTO `user_role` VALUES ('65', '4', '9');
INSERT INTO `user_role` VALUES ('66', '4', '10');
