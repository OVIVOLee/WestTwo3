/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : school

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 13/01/2023 23:51:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `studentindex` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `intime` datetime(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '1', '2023-01-12 23:04:29');
INSERT INTO `class` VALUES ('1', '3', '2023-01-12 23:04:52');
INSERT INTO `class` VALUES ('2', '2', '2023-01-12 23:05:01');
INSERT INTO `class` VALUES ('2', '4', '2023-01-12 23:05:15');
INSERT INTO `class` VALUES ('1', '5', '2023-01-12 23:05:40');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `index` int(0) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`index`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '1101', '张三', '男');
INSERT INTO `student` VALUES (2, '1102', '李四', '男');
INSERT INTO `student` VALUES (3, '1103', '王五', '男');
INSERT INTO `student` VALUES (4, '1104', '郑六', '女');
INSERT INTO `student` VALUES (5, '1105', '蔡七', '女');

SET FOREIGN_KEY_CHECKS = 1;
