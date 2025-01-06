/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : house_rental

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 06/01/2025 21:05:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `houseid` int(0) NOT NULL AUTO_INCREMENT COMMENT '出租单主键id',
  `statue` int(0) NULL DEFAULT NULL COMMENT '房屋是否已经出租',
  `area` int(0) NULL DEFAULT NULL COMMENT '房屋面积',
  `floor` int(0) NULL DEFAULT NULL COMMENT '房屋楼层',
  `price` int(0) NULL DEFAULT NULL COMMENT '房屋租金/月',
  `community` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房子小区',
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房屋地址',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房屋房型',
  `toward` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房屋朝向',
  `surrounding` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房屋周围环境',
  `decoration` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房屋装修',
  `housename` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房屋出租人',
  `housephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '房屋出租人电话',
  `tenantname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '租客姓名',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`houseid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES (2, 1, 80, 2, 1499, '碧桂园', '南昌市', '三室两厅', '正北朝向', '近地铁', '精装修', 'lisi', '19586248596', 'zhangsan', 'a0430385-7d21-4cae-afea-b6832b915557.jpg');
INSERT INTO `house` VALUES (3, 1, 99, 3, 2500, '未来城', '北京', '一室一厅', NULL, NULL, NULL, 'zhangsan', '15984562587', '21', 'a0430385-7d21-4cae-afea-b6832b915557.jpg');
INSERT INTO `house` VALUES (4, 1, 100, 1, 2000, '翻斗花园', '赣州', '三室一厅', '正南朝向', NULL, NULL, '张三', '13812345678', '李四', 'a0430385-7d21-4cae-afea-b6832b915557.jpg');
INSERT INTO `house` VALUES (30, 1, 85, 10, 3500, '华策中心城', '赣州', '三室两厅', '南北通透', '近地铁，商圈繁华', '精装修', '张三', '13812345678', '李四', 'a0430385-7d21-4cae-afea-b6832b915557.jpg');
INSERT INTO `house` VALUES (31, 0, 70, 2, 700, '翻斗花园', '北京', '一室一厅', '正南朝向', '近公交', '未装修', 'zhangsan', '1378656743', '', '9b215770-f718-4691-b3ee-4ffa7f5032d4.webp');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `messageid` int(0) NULL DEFAULT NULL,
  `messagename` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `messagetitle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (NULL, 'lisi', '想要租房子', '我要租一个房子', '2025-01-06 09:53:05');
INSERT INTO `message` VALUES (NULL, 'admin', '大家可以随意留言', '欢迎大家随意留言', '2025-01-06 09:54:10');
INSERT INTO `message` VALUES (NULL, 'zhangsan', '大家有推荐的房子吗', '大家有推荐的房子吗', '2025-01-06 13:29:08');
INSERT INTO `message` VALUES (NULL, 'zhangsan', '有没有500元/月的房子', '有没有500元/月的房子，我想租半年', '2025-01-06 13:29:44');
INSERT INTO `message` VALUES (NULL, 'zhangsan', '哈哈哈哈', '哈哈哈哈哈哈哈哈哈', '2025-01-06 13:30:00');
INSERT INTO `message` VALUES (NULL, 'zhangsan', '呃呃呃呃呃', '呃呃呃呃呃呃', '2025-01-06 13:30:14');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(0) NULL DEFAULT NULL COMMENT '用户主键id',
  `admin` int(0) NULL DEFAULT NULL COMMENT '是否是管理员',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户姓名\r\n',
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户密码',
  `number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户身份证号',
  `userphone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户手机号',
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 1, 'admin', '123456', '176876546546237', '');
INSERT INTO `user` VALUES (2, 1, 'admin1', '123456', '14567543464456', '');
INSERT INTO `user` VALUES (12, 2, 'lisi', '123456', '1223123435353', '357689765476546788');
INSERT INTO `user` VALUES (7, 2, 'zhangsan', '123456', '2222', '212123');
INSERT INTO `user` VALUES (3, 1, 'zhangsan1', '123456', '123434343', '12118271');
INSERT INTO `user` VALUES (NULL, 2, 'zzzz', '123456', '', '');

SET FOREIGN_KEY_CHECKS = 1;
