/*
 Navicat Premium Data Transfer

 Source Server         : local computer mysql
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : coba_coba

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 14/07/2022 16:35:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for notifikasi
-- ----------------------------
DROP TABLE IF EXISTS `notifikasi`;
CREATE TABLE `notifikasi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `notifikasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifikasi
-- ----------------------------
INSERT INTO `notifikasi` VALUES (1, 'Test');
INSERT INTO `notifikasi` VALUES (2, 'tets 2');

-- ----------------------------
-- Table structure for tbl_dump
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dump`;
CREATE TABLE `tbl_dump`  (
  `id_dump` int NOT NULL AUTO_INCREMENT,
  `id_notif` int NULL DEFAULT NULL,
  `id_user` int NULL DEFAULT NULL,
  PRIMARY KEY (`id_dump`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_dump
-- ----------------------------
INSERT INTO `tbl_dump` VALUES (1, 1, 1);
INSERT INTO `tbl_dump` VALUES (2, 2, 2);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int NOT NULL,
  `nama_user` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'testing');

SET FOREIGN_KEY_CHECKS = 1;
