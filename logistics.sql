/*
 Navicat Premium Dump SQL

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80041 (8.0.41)
 Source Host           : localhost:3306
 Source Schema         : logistics

 Target Server Type    : MySQL
 Target Server Version : 80041 (8.0.41)
 File Encoding         : 65001

 Date: 18/06/2025 13:49:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '快递种类id',
  `cname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '快递种类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '普通物品');
INSERT INTO `category` VALUES (2, '大件物品');
INSERT INTO `category` VALUES (3, '贵重物品');
INSERT INTO `category` VALUES (4, '易碎物品');
INSERT INTO `category` VALUES (5, '生鲜');
INSERT INTO `category` VALUES (6, '活物');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `status` int NULL DEFAULT 0 COMMENT '订单状态(0,未收货;1,已收货;)',
  `position_id` int NULL DEFAULT NULL COMMENT '订单位置id',
  `send_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '寄件人姓名',
  `user_id` int NULL DEFAULT NULL COMMENT '收件人id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '订单创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '订单更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (18, '2025061119440772', 1, 2, '李四', 6, '2025-06-11 19:44:25', '2025-06-11 19:56:03');
INSERT INTO `orders` VALUES (19, '2025061119440772', 1, 2, '李四', 6, '2025-06-11 19:44:25', '2025-06-11 19:45:00');
INSERT INTO `orders` VALUES (20, '2025061119415562', 1, 24, '张三', 7, '2025-06-11 19:44:29', '2025-06-14 21:15:04');
INSERT INTO `orders` VALUES (21, '2025061119553462', 1, 16, '张三', 7, '2025-06-11 19:56:34', '2025-06-14 21:47:33');
INSERT INTO `orders` VALUES (22, '2025061120431172', 1, 5, '李四', 6, '2025-06-11 20:43:53', '2025-06-14 21:48:17');
INSERT INTO `orders` VALUES (23, '2025061421125312', 1, 2, 'admin', 7, '2025-06-14 21:13:03', '2025-06-14 21:47:33');
INSERT INTO `orders` VALUES (24, '2025061121520812', 1, 25, 'admin', 1, '2025-06-14 21:13:07', '2025-06-14 21:51:43');
INSERT INTO `orders` VALUES (25, '2025061421484312', 1, 5, 'admin', 7, '2025-06-14 21:50:56', '2025-06-14 22:12:00');
INSERT INTO `orders` VALUES (26, '2025061421474572', 1, 11, '李四', 6, '2025-06-14 21:51:01', '2025-06-14 21:51:51');
INSERT INTO `orders` VALUES (27, '2025061421524262', 0, 6, '张三', 6, '2025-06-14 21:53:13', '2025-06-14 21:53:13');
INSERT INTO `orders` VALUES (28, '2025061422084492', 0, 2, 'wang', 6, '2025-06-14 22:08:56', '2025-06-14 22:08:56');
INSERT INTO `orders` VALUES (29, '2025061422100892', 1, 10, 'wang', 7, '2025-06-14 22:10:28', '2025-06-14 22:11:59');
INSERT INTO `orders` VALUES (30, '2025061422121272', 0, 5, '李四', 9, '2025-06-14 22:12:24', '2025-06-14 22:12:24');
INSERT INTO `orders` VALUES (31, '20250614221319102', 0, 30, 'zhaoliu', 9, '2025-06-14 22:13:30', '2025-06-14 22:13:30');
INSERT INTO `orders` VALUES (32, '2025061518205212', 0, 11, 'admin', 12, '2025-06-15 18:20:59', '2025-06-15 18:20:59');
INSERT INTO `orders` VALUES (33, '20250615183645132', 1, 29, '上官宇哲', 7, '2025-06-15 18:37:15', '2025-06-15 18:37:29');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '储物柜id',
  `locker` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '储物柜位置',
  `status` int NULL DEFAULT 0 COMMENT '储物柜状态(0没有东西,1有东西)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (1, 'A柜1号', 1);
INSERT INTO `position` VALUES (2, 'A柜2号', 1);
INSERT INTO `position` VALUES (3, 'A柜3号', 1);
INSERT INTO `position` VALUES (4, 'A柜4号', 1);
INSERT INTO `position` VALUES (5, 'A柜5号', 1);
INSERT INTO `position` VALUES (6, 'A柜6号', 1);
INSERT INTO `position` VALUES (7, 'A柜7号', 1);
INSERT INTO `position` VALUES (8, 'A柜8号', 1);
INSERT INTO `position` VALUES (9, 'A柜9号', 1);
INSERT INTO `position` VALUES (10, 'A柜10号', 1);
INSERT INTO `position` VALUES (11, 'B柜1号', 1);
INSERT INTO `position` VALUES (12, 'B柜2号', 0);
INSERT INTO `position` VALUES (13, 'B柜3号', 0);
INSERT INTO `position` VALUES (14, 'B柜4号', 0);
INSERT INTO `position` VALUES (15, 'B柜5号', 0);
INSERT INTO `position` VALUES (16, 'B柜6号', 0);
INSERT INTO `position` VALUES (17, 'B柜7号', 0);
INSERT INTO `position` VALUES (18, 'B柜8号', 0);
INSERT INTO `position` VALUES (19, 'B柜9号', 0);
INSERT INTO `position` VALUES (20, 'B柜10号', 1);
INSERT INTO `position` VALUES (21, 'C柜1号', 0);
INSERT INTO `position` VALUES (22, 'C柜2号', 0);
INSERT INTO `position` VALUES (23, 'C柜3号', 0);
INSERT INTO `position` VALUES (24, 'C柜4号', 0);
INSERT INTO `position` VALUES (25, 'C柜5号', 0);
INSERT INTO `position` VALUES (26, 'C柜6号', 0);
INSERT INTO `position` VALUES (27, 'C柜7号', 0);
INSERT INTO `position` VALUES (28, 'C柜8号', 0);
INSERT INTO `position` VALUES (29, 'C柜9号', 0);
INSERT INTO `position` VALUES (30, 'C柜10号', 1);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '寄件id',
  `num` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '寄件编号',
  `consignee` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `consignee_phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收件人手机号',
  `consignee_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收件人地址',
  `weight` decimal(55, 2) NULL DEFAULT NULL COMMENT '快递重量',
  `category_id` int NULL DEFAULT NULL COMMENT '快递种类id',
  `user_id` int NULL DEFAULT NULL COMMENT '寄件人id',
  `status` int NULL DEFAULT 0 COMMENT '寄件状态(0未寄出,1已寄出,2已揽件,3已签收)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '寄件创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '寄件更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (30, '2025061119415562', '李四', '12345678902', '温州商学院', 2.00, 1, 6, 2, '2025-06-11 19:41:56', '2025-06-11 19:44:29');
INSERT INTO `post` VALUES (31, '2025061119440772', '张三', '12345678901', '温州商学院', 15.00, 3, 7, 2, '2025-06-11 19:44:07', '2025-06-11 19:44:25');
INSERT INTO `post` VALUES (32, '2025061119553462', '李四', '12345678902', '温州商学院', 2.00, 4, 6, 3, '2025-06-11 19:55:35', '2025-06-14 21:47:33');
INSERT INTO `post` VALUES (33, '2025061120431172', '张三', '12345678901', '温州商学院', 12.00, 4, 7, 3, '2025-06-11 20:43:11', '2025-06-14 21:48:17');
INSERT INTO `post` VALUES (34, '2025061121520812', 'admin', '12345678901', '123', 1.00, 1, 1, 2, '2025-06-11 21:52:09', '2025-06-14 21:13:07');
INSERT INTO `post` VALUES (35, '2025061421125312', '李四', '12345678902', '123', 123.00, 1, 1, 3, '2025-06-14 21:12:53', '2025-06-14 21:47:33');
INSERT INTO `post` VALUES (36, '2025061421474572', '张三', '12345678901', '123', 12.00, 1, 7, 3, '2025-06-14 21:47:46', '2025-06-14 21:51:51');
INSERT INTO `post` VALUES (37, '2025061421484312', '李四', '12345678902', '123', 1.00, 1, 1, 3, '2025-06-14 21:48:44', '2025-06-14 22:12:00');
INSERT INTO `post` VALUES (38, '2025061421524262', '张三', '12345678901', '1', 1.00, 1, 6, 2, '2025-06-14 21:52:43', '2025-06-14 21:53:13');
INSERT INTO `post` VALUES (39, '2025061422065192', 'wangwu', '12345678903', '12', 1.00, 1, 9, 2, '2025-06-14 22:06:51', '2025-06-14 22:07:32');
INSERT INTO `post` VALUES (40, '2025061422084492', '张三', '12345678901', '123', 1.00, 1, 9, 2, '2025-06-14 22:08:44', '2025-06-14 22:08:56');
INSERT INTO `post` VALUES (41, '2025061422100892', '李四', '12345678902', '123', 5.00, 1, 9, 3, '2025-06-14 22:10:09', '2025-06-14 22:11:59');
INSERT INTO `post` VALUES (42, '2025061422105372', '王五', '12345678903', '132', 123.00, 1, 7, 2, '2025-06-14 22:10:54', '2025-06-14 22:11:04');
INSERT INTO `post` VALUES (43, '2025061422121272', 'wangwu', '12345678903', '123', 1.00, 1, 7, 2, '2025-06-14 22:12:12', '2025-06-14 22:12:24');
INSERT INTO `post` VALUES (44, '20250614221319102', 'wangwu', '12345678903', '123', 1.00, 1, 10, 2, '2025-06-14 22:13:19', '2025-06-14 22:13:30');
INSERT INTO `post` VALUES (45, '2025061512322062', '不知道名字', '12345678903', '123', 1.00, 1, 6, 2, '2025-06-15 12:32:21', '2025-06-15 12:32:43');
INSERT INTO `post` VALUES (46, '2025061518195272', 'lihaoyu', '12345678905', '123', 1.00, 1, 7, 2, '2025-06-15 18:19:53', '2025-06-15 18:20:10');
INSERT INTO `post` VALUES (47, '2025061518205212', '李浩宇', '12345678905', '123', 1.00, 1, 1, 2, '2025-06-15 18:20:53', '2025-06-15 18:20:59');
INSERT INTO `post` VALUES (48, '20250615183645132', '李四', '12345678902', '温州商学院', 1.00, 4, 13, 3, '2025-06-15 18:36:46', '2025-06-15 18:37:29');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `role` int NULL DEFAULT 1 COMMENT '角色(0为管理员，1为用户)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', 'admin', '12345678900', '12345678900@qq.com', '2025-06-11 19:41:12', 0);
INSERT INTO `user` VALUES (6, 'zhangsan', '123123', '张三', '12345678901', '12345678901@qq.com', '2025-06-11 19:41:12', 1);
INSERT INTO `user` VALUES (7, 'lisilisi', '123456', '李四', '12345678902', '12345678902@qq.com', '2025-06-11 19:41:32', 1);
INSERT INTO `user` VALUES (9, 'wangwu', '123123', '王五', '12345678903', '12345678903@qq.com', '2025-06-14 22:06:34', 1);
INSERT INTO `user` VALUES (10, 'zhaoliu', '123123', '赵六', '12345678904', '12345678904@qq.com', '2025-06-14 22:13:04', 1);
INSERT INTO `user` VALUES (12, 'lihaoyu', '123123', '李浩宇', '12345678905', '12345678905@qq.com', '2025-06-15 12:37:51', 1);
INSERT INTO `user` VALUES (13, 'yuzhe1', '123123', '上官宇哲', '12345678909', '12345678909@qq.com', '2025-06-15 18:36:23', 1);

SET FOREIGN_KEY_CHECKS = 1;
