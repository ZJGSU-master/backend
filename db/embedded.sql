/*
 Navicat Premium Data Transfer

 Source Server         : 123
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : 1.tcp.cpolar.io:10123
 Source Schema         : embedded

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 13/06/2020 18:51:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `record_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `frame` int(255) DEFAULT NULL,
  `mq4_a` int(255) DEFAULT NULL,
  `mq4_d` int(255) DEFAULT NULL,
  `record_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('0dcb1fae5b', 1, 678, 1, '2020-06-13 18:33:39');
INSERT INTO `record` VALUES ('0fbd41cd76', 1, 678, 1, '2020-06-13 18:33:51');
INSERT INTO `record` VALUES ('11beb2a961', 1, 678, 1, '2020-06-13 18:33:28');
INSERT INTO `record` VALUES ('12d42c69d5', 1, 120, 1, '2020-06-13 17:28:23');
INSERT INTO `record` VALUES ('14a1e424bf', 1, 678, 1, '2020-06-13 18:35:31');
INSERT INTO `record` VALUES ('1ac1b5bb9a', 1, 677, 1, '2020-06-13 18:35:28');
INSERT INTO `record` VALUES ('1d68988503', 1, 678, 1, '2020-06-13 18:35:48');
INSERT INTO `record` VALUES ('213dd66f6b', 1, 120, 1, '2020-06-13 16:33:18');
INSERT INTO `record` VALUES ('22976bd42b', 1, 121, 1, '2020-06-13 16:34:09');
INSERT INTO `record` VALUES ('252e11e81d', 1, 678, 1, '2020-06-13 18:35:36');
INSERT INTO `record` VALUES ('2c7cb3db5e', 1, 120, 1, '2020-06-13 17:28:20');
INSERT INTO `record` VALUES ('315a567092', 1, 677, 1, '2020-06-13 18:33:12');
INSERT INTO `record` VALUES ('389d2f0a1c', 1, 678, 1, '2020-06-13 18:34:06');
INSERT INTO `record` VALUES ('3a4183a848', 1, 678, 1, '2020-06-13 18:34:12');
INSERT INTO `record` VALUES ('3da2e16b6e', 1, 677, 1, '2020-06-13 18:36:03');
INSERT INTO `record` VALUES ('46027a0584', 1, 120, 1, '2020-06-13 17:28:21');
INSERT INTO `record` VALUES ('4ab34420fb', 1, 677, 1, '2020-06-13 18:33:06');
INSERT INTO `record` VALUES ('5d78ff9bdb', 1, 678, 1, '2020-06-13 18:35:24');
INSERT INTO `record` VALUES ('5dd0732e60', 1, 677, 1, '2020-06-13 18:35:38');
INSERT INTO `record` VALUES ('5e61f36b9a', 1, 677, 1, '2020-06-13 18:35:03');
INSERT INTO `record` VALUES ('611babf14b', 1, 122, 1, '2020-06-13 16:34:12');
INSERT INTO `record` VALUES ('62d78d9923', 1, 123, 1, '2020-06-13 16:34:13');
INSERT INTO `record` VALUES ('6bd81c3ea0', 1, 124, 1, '2020-06-13 16:34:15');
INSERT INTO `record` VALUES ('702fa416ac', 1, 677, 1, '2020-06-13 18:33:09');
INSERT INTO `record` VALUES ('76a779df88', 1, NULL, 1, '2020-06-13 18:35:12');
INSERT INTO `record` VALUES ('7a70b2ce16', 1, 125, 1, '2020-06-13 16:34:16');
INSERT INTO `record` VALUES ('7cc28bac2e', 1, 678, 1, '2020-06-13 18:36:00');
INSERT INTO `record` VALUES ('81fc00f16c', 1, 120, 1, '2020-06-13 17:29:07');
INSERT INTO `record` VALUES ('8313598608', 1, 678, 1, '2020-06-13 18:33:30');
INSERT INTO `record` VALUES ('8733115a30', 1, 677, 1, '2020-06-13 18:35:42');
INSERT INTO `record` VALUES ('8f6667fc60', 1, 677, 1, '2020-06-13 18:33:36');
INSERT INTO `record` VALUES ('9cc896752a', 1, 678, 1, '2020-06-13 18:33:18');
INSERT INTO `record` VALUES ('a5d196ce8a', 1, 120, 1, '2020-06-13 17:29:11');
INSERT INTO `record` VALUES ('a5e0c2fb33', 1, 120, 1, '2020-06-13 17:28:18');
INSERT INTO `record` VALUES ('a8c1344140', 1, 678, 1, '2020-06-13 18:35:16');
INSERT INTO `record` VALUES ('afef96926e', 1, 677, 1, '2020-06-13 18:33:43');
INSERT INTO `record` VALUES ('b2b71423cb', 1, 678, 1, '2020-06-13 18:35:45');
INSERT INTO `record` VALUES ('b2f9abfc85', 1, 677, 1, '2020-06-13 18:33:15');
INSERT INTO `record` VALUES ('b30c2790a9', 1, 678, 1, '2020-06-13 18:35:21');
INSERT INTO `record` VALUES ('c5aa14ce71', 1, 678, 1, '2020-06-13 18:35:33');
INSERT INTO `record` VALUES ('c76187ecfb', 1, 678, 1, '2020-06-13 18:33:22');
INSERT INTO `record` VALUES ('c8948cea4c', 1, 677, 1, '2020-06-13 18:35:08');
INSERT INTO `record` VALUES ('cc4a10e47f', 1, 120, 1, '2020-06-13 17:29:12');
INSERT INTO `record` VALUES ('d63052d9fc', 1, 678, 1, '2020-06-13 18:33:45');
INSERT INTO `record` VALUES ('d912936d6e', 1, 678, 1, '2020-06-13 18:33:24');
INSERT INTO `record` VALUES ('d98cc3e211', 1, 678, 1, '2020-06-13 18:33:33');
INSERT INTO `record` VALUES ('d9ca9eccd9', 1, 126, 1, '2020-06-13 16:34:17');
INSERT INTO `record` VALUES ('db1ae1524c', 1, 678, 1, '2020-06-13 18:33:48');
INSERT INTO `record` VALUES ('e82794dde3', 1, 127, 1, '2020-06-13 16:34:18');
INSERT INTO `record` VALUES ('eec63b0cab', 1, 678, 1, '2020-06-13 18:34:04');
INSERT INTO `record` VALUES ('f1252aeec7', 1, 128, 1, '2020-06-13 16:34:19');
INSERT INTO `record` VALUES ('f4030e98a1', 1, 678, 1, '2020-06-13 18:35:54');
INSERT INTO `record` VALUES ('f50624619d', 1, 120, 1, '2020-06-13 17:29:11');
INSERT INTO `record` VALUES ('f8c633adbf', 1, 129, 1, '2020-06-13 16:34:21');
INSERT INTO `record` VALUES ('fb33a028f1', 1, 120, 1, '2020-06-13 17:29:10');
INSERT INTO `record` VALUES ('fe02c7ec02', 1, 120, 1, '2020-06-13 17:29:09');
INSERT INTO `record` VALUES ('fef42dfc57', 1, 678, 1, '2020-06-13 18:35:57');
INSERT INTO `record` VALUES ('ff2b100d6a', 1, 678, 1, '2020-06-13 18:34:09');

SET FOREIGN_KEY_CHECKS = 1;
