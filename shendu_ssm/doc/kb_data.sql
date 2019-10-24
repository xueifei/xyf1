/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : kb_data

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 24/10/2019 14:58:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kb_bj
-- ----------------------------
DROP TABLE IF EXISTS `kb_bj`;
CREATE TABLE `kb_bj`  (
  `bjID` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '班级编号',
  `bjname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '班级名称',
  PRIMARY KEY (`bjID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kb_jilu
-- ----------------------------
DROP TABLE IF EXISTS `kb_jilu`;
CREATE TABLE `kb_jilu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '时间',
  `stater` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kb_role
-- ----------------------------
DROP TABLE IF EXISTS `kb_role`;
CREATE TABLE `kb_role`  (
  `powerid` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限编号',
  `powername` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '权限名称',
  PRIMARY KEY (`powerid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kb_role_function
-- ----------------------------
DROP TABLE IF EXISTS `kb_role_function`;
CREATE TABLE `kb_role_function`  (
  `userid` int(11) NOT NULL,
  `powerid` varchar(0) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kb_student
-- ----------------------------
DROP TABLE IF EXISTS `kb_student`;
CREATE TABLE `kb_student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `sex` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '性别',
  `grphone` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '手机号',
  `jzname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '家长姓名',
  `jzphone` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '家长手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kb_student_detail
-- ----------------------------
DROP TABLE IF EXISTS `kb_student_detail`;
CREATE TABLE `kb_student_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `bjID` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '班级编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kb_user
-- ----------------------------
DROP TABLE IF EXISTS `kb_user`;
CREATE TABLE `kb_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
