/*
 Navicat Premium Data Transfer

 Source Server         : 47.109.27.152_3306
 Source Server Type    : MySQL
 Source Server Version : 50740
 Source Host           : 47.109.27.152:3306
 Source Schema         : szxy

 Target Server Type    : MySQL
 Target Server Version : 50740
 File Encoding         : 65001

 Date: 26/04/2023 13:12:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_book
-- ----------------------------
DROP TABLE IF EXISTS `base_book`;
CREATE TABLE `base_book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `course_id` int(11) NOT NULL COMMENT '适用课程',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教材名称',
  `sname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `total` int(11) NOT NULL COMMENT '库存数量',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教材' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_book
-- ----------------------------
INSERT INTO `base_book` VALUES (1, 1, '数据结构', 'Data struct', NULL, '2023-03-03 14:13:10', NULL, NULL, 0, '0');
INSERT INTO `base_book` VALUES (2, 2, '操作系统', 'System', NULL, '2023-03-03 14:13:10', NULL, NULL, 50, '0');
INSERT INTO `base_book` VALUES (3, 3, '华中版计算机基础', '计算机基础', NULL, '2022-03-03 14:13:10', NULL, NULL, 51, '1');
INSERT INTO `base_book` VALUES (4, 4, '人大版电子会计', '电子会计', NULL, '2023-03-03 14:13:10', NULL, NULL, 52, '1');
INSERT INTO `base_book` VALUES (5, 5, '人民版网站建设', '网站建设', NULL, '2023-03-03 14:13:10', NULL, NULL, 53, '1');
INSERT INTO `base_book` VALUES (6, 2, 'HTML网页设计教程', '网页设计', NULL, '2023-03-03 14:13:10', NULL, NULL, 34, '1');
INSERT INTO `base_book` VALUES (7, 1, 'JSP基础入门', 'JSP', NULL, '2023-03-03 14:13:10', NULL, NULL, 3, '1');

-- ----------------------------
-- Table structure for base_building
-- ----------------------------
DROP TABLE IF EXISTS `base_building`;
CREATE TABLE `base_building`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代码',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '类型',
  `master_user` int(11) NULL DEFAULT NULL COMMENT '负责人',
  `start_date` date NOT NULL COMMENT '启用日期',
  `end_date` date NULL DEFAULT NULL COMMENT '停用日期',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '楼宇' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_building
-- ----------------------------
INSERT INTO `base_building` VALUES (1, 'jxl', '教学楼', '1', 2, '2023-03-03', NULL, '1');
INSERT INTO `base_building` VALUES (2, 'zhl', '综合楼', '4', NULL, '2023-03-03', NULL, '1');
INSERT INTO `base_building` VALUES (3, 'nan', '男生宿舍', '2', NULL, '2023-03-03', NULL, '1');
INSERT INTO `base_building` VALUES (4, 'nv', '女生宿舍', '2', NULL, '2023-03-03', NULL, '1');

-- ----------------------------
-- Table structure for base_class
-- ----------------------------
DROP TABLE IF EXISTS `base_class`;
CREATE TABLE `base_class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `spec_id` int(11) NOT NULL COMMENT '专业',
  `year` int(4) NOT NULL COMMENT '年级',
  `period` tinyint(1) NOT NULL COMMENT '学制',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代码',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `start_date` date NULL DEFAULT NULL COMMENT '入学日期',
  `end_date` date NULL DEFAULT NULL COMMENT '毕业日期',
  `master_user` int(4) NULL DEFAULT NULL COMMENT '班主任',
  `room_id` int(4) NULL DEFAULT NULL COMMENT '固定教室',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_class
-- ----------------------------
INSERT INTO `base_class` VALUES (1, 1, 2019, 4, '2019001', '2019计算机3班', '2019-09-01', '2023-06-30', 4, 11, '1', NULL, '2023-03-03 17:13:25', NULL, '2023-03-02 17:26:23');
INSERT INTO `base_class` VALUES (2, 2, 2019, 3, '201902', '2019会计班', NULL, NULL, 8, 2, '1', NULL, '2023-03-03 17:13:25', NULL, '2023-03-03 17:13:25');
INSERT INTO `base_class` VALUES (3, 3, 2020, 3, '202003', '2020物联网1班', NULL, NULL, 8, 22, '1', NULL, '2023-03-03 17:13:25', NULL, '2023-03-23 18:53:51');
INSERT INTO `base_class` VALUES (4, 2, 2021, 3, '2021001', '2021通信工程1班', '2021-01-01', NULL, 1, 7, '1', NULL, '2023-03-03 17:13:25', NULL, '2023-03-23 18:53:38');
INSERT INTO `base_class` VALUES (5, 2, 2020, 3, '202001', '2020通信工程2班', NULL, NULL, 4, 21, '1', NULL, '2023-03-03 17:13:25', NULL, '2023-03-23 18:53:59');
INSERT INTO `base_class` VALUES (6, 1, 2023, 4, '2023081200', '计科1班', '2023-04-06', '2027-06-30', 1, 1, '1', NULL, '2023-04-15 12:41:16', NULL, NULL);

-- ----------------------------
-- Table structure for base_company
-- ----------------------------
DROP TABLE IF EXISTS `base_company`;
CREATE TABLE `base_company`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业名称',
  `industry` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产业类型',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业类型',
  `linkman` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系人',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '邮箱',
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在地区',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `longitude` decimal(10, 6) NULL DEFAULT NULL COMMENT '经度',
  `latitude` decimal(10, 6) NULL DEFAULT NULL COMMENT '纬度',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `scale` int(11) NULL DEFAULT 1000 COMMENT '距离范围',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '企业' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_company
-- ----------------------------
INSERT INTO `base_company` VALUES (1, '华星光电', '2', '2', '王老师', '15623587451', '', NULL, '湖北武汉江夏', 116.400000, 39.900000, '1', NULL, '2023-03-03 17:13:25', NULL, '2023-03-03 17:13:25', 30);
INSERT INTO `base_company` VALUES (2, '重庆企慧岛', '2', '2', '夏老师', '13322443553', '12548665245@qq.com', '重庆', '重庆高新区', 114.430761, 30.475751, '1', NULL, '2023-03-03 17:13:25', NULL, '2023-03-03 17:13:25', 10000);
INSERT INTO `base_company` VALUES (3, '上海康隶物流', '3', '3', '陈经理', '15634544366', '', '上海', '上海', NULL, NULL, '1', NULL, '2023-03-03 17:13:25', NULL, '2023-03-03 17:13:25', 60);
INSERT INTO `base_company` VALUES (4, '字节跳动', '1', '2', '韦经理', '19934224523', '', '上海', '上海闵行', NULL, NULL, '1', NULL, '2023-03-03 17:13:25', NULL, '2023-03-23 19:06:22', 100000);

-- ----------------------------
-- Table structure for base_course
-- ----------------------------
DROP TABLE IF EXISTS `base_course`;
CREATE TABLE `base_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `dept_id` int(11) NOT NULL COMMENT '开设部门',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程代码',
  `sname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简称',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程类型',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `credit` int(2) NOT NULL COMMENT '学分',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_course
-- ----------------------------
INSERT INTO `base_course` VALUES (1, 116, '操作系统', 'czxt', '操作系统', '1', NULL, '2023-03-06 11:46:11', NULL, '2023-03-06 14:52:00', 0, '1');
INSERT INTO `base_course` VALUES (2, 116, '数据结构', 'sjjg', '数据结构', '1', NULL, '2023-03-06 15:25:36', NULL, '2023-03-06 17:52:07', 0, '1');
INSERT INTO `base_course` VALUES (3, 118, '计算机基础', 'jsjjc', '计算机基础', '2', NULL, '2023-03-06 15:25:36', NULL, '2023-03-06 17:52:16', 1, '1');
INSERT INTO `base_course` VALUES (4, 118, '数据结构', 'dzkj', '电子信息', '3', NULL, '2023-03-06 15:25:36', NULL, '2023-03-22 18:56:45', 2, '1');
INSERT INTO `base_course` VALUES (5, 117, '网站建设', 'wzjs', '网站建设', '4', NULL, '2023-03-07 15:25:36', NULL, '2023-03-08 19:52:30', 3, '1');
INSERT INTO `base_course` VALUES (6, 116, '大学英语1', 'yingyu1', '大学英语1', '1', NULL, '2023-03-07 14:51:52', NULL, NULL, 0, '1');

-- ----------------------------
-- Table structure for base_department
-- ----------------------------
DROP TABLE IF EXISTS `base_department`;
CREATE TABLE `base_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `pid` int(11) NOT NULL COMMENT '上级部门',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门类型',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门代码',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `start_date` date NOT NULL COMMENT '建立日期',
  `end_date` date NULL DEFAULT NULL COMMENT '禁用日期',
  `master_user` int(11) NOT NULL COMMENT '负责人',
  `list_sort` int(11) NOT NULL COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织结构' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for base_room
-- ----------------------------
DROP TABLE IF EXISTS `base_room`;
CREATE TABLE `base_room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `build_id` int(11) NOT NULL COMMENT '建筑ID',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代码',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '类型',
  `volume` int(11) NULL DEFAULT NULL COMMENT '座位/床位数',
  `start_date` date NOT NULL COMMENT '启用日期',
  `end_date` date NULL DEFAULT NULL COMMENT '停用日期',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房间' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_room
-- ----------------------------
INSERT INTO `base_room` VALUES (1, 1, 'jxl101', '教学楼101', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (2, 1, 'jxl102', '教学楼102', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (3, 1, 'jxl103', '教学楼103', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (4, 1, 'jxl104', '教学楼104', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (5, 1, 'jxl105', '教学楼105', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (6, 1, 'jxl106', '教学楼106', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (7, 1, 'jxl107', '教学楼107', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (8, 1, 'jxl108', '教学楼108', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (9, 1, 'jxl201', '教学楼201', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (10, 1, 'jxl202', '教学楼202', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (11, 1, 'jxl203', '教学楼203', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (12, 1, 'jxl204', '教学楼204', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (13, 1, 'jxl205', '教学楼205', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (14, 1, 'jxl206', '教学楼206', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (15, 1, 'jxl207', '教学楼207', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (16, 1, 'jxl208', '教学楼208', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (17, 1, 'jxl301', '教学楼301', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (18, 1, 'jxl302', '教学楼302', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (19, 1, 'jxl303', '教学楼303', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (20, 1, 'jxl304', '教学楼304', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (21, 1, 'jxl305', '教学楼305', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (22, 1, 'jxl306', '教学楼306', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (23, 1, 'jxl307', '教学楼307', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (24, 1, 'jxl308', '教学楼308', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (25, 1, 'jxl401', '教学楼401', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (26, 1, 'jxl402', '教学楼402', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (27, 1, 'jxl403', '教学楼403', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (28, 1, 'jxl404', '教学楼404', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (29, 1, 'jxl405', '教学楼405', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (30, 1, 'jxl406', '教学楼406', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (31, 1, 'jxl407', '教学楼407', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (32, 1, 'jxl408', '教学楼408', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (33, 1, 'jxl501', '教学楼501', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (34, 1, 'jxl502', '教学楼502', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (35, 1, 'jxl503', '教学楼503', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (36, 1, 'jxl504', '教学楼504', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (37, 1, 'jxl505', '教学楼505', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (38, 1, 'jxl506', '教学楼506', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (39, 1, 'jxl507', '教学楼507', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (40, 1, 'jxl508', '教学楼508', '1', 50, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (41, 3, 'nan101', '男101', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (42, 3, 'nan102', '男102', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (43, 3, 'nan103', '男103', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (44, 3, 'nan104', '男104', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (45, 3, 'nan105', '男105', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (46, 3, 'nan106', '男106', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (47, 3, 'nan201', '男201', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (48, 3, 'nan202', '男202', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (49, 3, 'nan203', '男203', '3', 2, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (50, 3, 'nan204', '男204', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (51, 3, 'nan205', '男205', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (52, 3, 'nan206', '男206', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (53, 3, 'nan301', '男301', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (54, 3, 'nan302', '男302', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (55, 3, 'nan303', '男303', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (56, 3, 'nan304', '男304', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (57, 3, 'nan305', '男305', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (58, 3, 'nan306', '男306', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (59, 3, 'nan401', '男401', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (60, 3, 'nan402', '男402', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (61, 3, 'nan403', '男403', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (62, 3, 'nan404', '男404', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (63, 3, 'nan405', '男405', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (64, 3, 'nan406', '男406', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (65, 3, 'nan501', '男501', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (66, 3, 'nan502', '男502', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (67, 3, 'nan503', '男503', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (68, 3, 'nan504', '男504', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (69, 3, 'nan505', '男505', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (70, 3, 'nan506', '男506', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (71, 3, 'nan601', '男601', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (72, 3, 'nan602', '男602', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (73, 3, 'nan603', '男603', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (74, 3, 'nan604', '男604', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (75, 3, 'nan605', '男605', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (76, 3, 'nan606', '男606', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (77, 4, 'nv101', '女101', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (78, 4, 'nv102', '女102', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (79, 4, 'nv103', '女103', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (80, 4, 'nv104', '女104', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (81, 4, 'nv105', '女105', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (82, 4, 'nv106', '女106', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (83, 4, 'nv201', '女201', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (84, 4, 'nv202', '女202', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (85, 4, 'nv203', '女203', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (86, 4, 'nv204', '女204', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (87, 4, 'nv205', '女205', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (88, 4, 'nv206', '女206', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (89, 4, 'nv301', '女301', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (90, 4, 'nv302', '女302', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (91, 4, 'nv303', '女303', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (92, 4, 'nv304', '女304', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (93, 4, 'nv305', '女305', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (94, 4, 'nv306', '女306', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (95, 4, 'nv401', '女401', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (96, 4, 'nv402', '女402', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (97, 4, 'nv403', '女403', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (98, 4, 'nv404', '女404', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (99, 4, 'nv405', '女405', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (100, 4, 'nv406', '女406', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (101, 4, 'nv501', '女501', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (102, 4, 'nv502', '女502', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (103, 4, 'nv503', '女503', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (104, 4, 'nv504', '女504', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (105, 4, 'nv505', '女505', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (106, 4, 'nv506', '女506', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (107, 4, 'nv601', '女601', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (108, 4, 'nv602', '女602', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (109, 4, 'nv603', '女603', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (110, 4, 'nv604', '女604', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (111, 4, 'nv605', '女605', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (112, 4, 'nv606', '女606', '3', 6, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (113, 2, 'zhl101', '综合101', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (114, 2, 'zhl102', '综合102', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (115, 2, 'zhl103', '综合103', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (116, 2, 'zhl104', '综合104', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (117, 2, 'zhl105', '综合105', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (118, 2, 'zhl106', '综合106', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (119, 2, 'zhl201', '综合201', '4', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (120, 2, 'zhl202', '综合202', '4', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (121, 2, 'zhl203', '综合203', '4', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (122, 2, 'zhl204', '综合204', '4', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (123, 2, 'zhl205', '综合205', '4', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (124, 2, 'zhl206', '综合206', '4', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (125, 2, 'zhl301', '综合301', '9', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (126, 2, 'zhl302', '综合302', '9', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (127, 2, 'zhl303', '综合303', '9', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (128, 2, 'zhl304', '综合304', '9', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (129, 2, 'zhl305', '综合305', '9', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (130, 2, 'zhl306', '综合306', '9', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (131, 2, 'zhl401', '综合401', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (132, 2, 'zhl402', '综合402', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (133, 2, 'zhl403', '综合403', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (134, 2, 'zhl404', '综合404', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (135, 2, 'zhl405', '综合405', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (136, 2, 'zhl406', '综合406', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (137, 2, 'zhl501', '综合501', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (138, 2, 'zhl502', '综合502', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (139, 2, 'zhl503', '综合503', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (140, 2, 'zhl504', '综合504', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (141, 2, 'zhl505', '综合505', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (142, 2, 'zhl506', '综合506', '2', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (143, 2, 'zhl601', '综合601', '9', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (144, 2, 'zhl602', '综合602', '9', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (145, 2, 'zhl603', '综合603', '9', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (146, 2, 'zhl604', '综合604', '9', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (147, 2, 'zhl605', '综合605', '9', NULL, '2012-02-26', NULL, '1');
INSERT INTO `base_room` VALUES (148, 2, 'zhl606', '综合606', '9', NULL, '2012-02-26', NULL, '1');

-- ----------------------------
-- Table structure for base_school
-- ----------------------------
DROP TABLE IF EXISTS `base_school`;
CREATE TABLE `base_school`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学校名称',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校代码',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学校类型',
  `start_date` date NULL DEFAULT NULL COMMENT '建校日期',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所在地区',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '学校简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学校' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for base_section
-- ----------------------------
DROP TABLE IF EXISTS `base_section`;
CREATE TABLE `base_section`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代码',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `duration` int(11) NOT NULL DEFAULT 2 COMMENT '总学时',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '节次' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_section
-- ----------------------------
INSERT INTO `base_section` VALUES (1, '1.2', '一二节', '8:00 -- 10:00', 2, '1');
INSERT INTO `base_section` VALUES (2, '3.4', '三四节', '10:00 -- 12:00', 2, '1');
INSERT INTO `base_section` VALUES (3, '5.6', '五六节', '14:00 -- 16:00', 2, '1');

-- ----------------------------
-- Table structure for base_semster
-- ----------------------------
DROP TABLE IF EXISTS `base_semster`;
CREATE TABLE `base_semster`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代码',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `year` int(4) NOT NULL COMMENT '年度',
  `start_date` date NOT NULL COMMENT '开始日期',
  `end_date` date NULL DEFAULT NULL COMMENT '结束日期',
  `is_current` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否当前',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学期' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_semster
-- ----------------------------
INSERT INTO `base_semster` VALUES (1, '20221', '2022-2023下学期', 2022, '2023-02-01', '2023-06-30', 'Y', '1');
INSERT INTO `base_semster` VALUES (2, '20202', '2020-2021下学期', 2020, '2021-03-01', '2021-06-30', 'N', '1');

-- ----------------------------
-- Table structure for base_specialty
-- ----------------------------
DROP TABLE IF EXISTS `base_specialty`;
CREATE TABLE `base_specialty`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `dept_id` int(11) NOT NULL COMMENT '开设部门',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代码',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `period` tinyint(1) NULL DEFAULT 3 COMMENT '学制',
  `start_date` date NULL DEFAULT NULL COMMENT '建立日期',
  `end_date` date NULL DEFAULT NULL COMMENT '禁用日期',
  `master_user` int(11) NULL DEFAULT 0 COMMENT '负责人',
  `list_sort` int(11) NOT NULL COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `is_enroll` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否招生',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专业' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_specialty
-- ----------------------------
INSERT INTO `base_specialty` VALUES (1, 112, '100101', '计算机科学与技术', 1, '2015-02-03', NULL, 1, 4, '1', 'Y', NULL, '2023-03-03 09:55:54', 'admin', '2023-03-23 18:56:03');
INSERT INTO `base_specialty` VALUES (2, 112, '200201', '通信工程', 1, '2010-12-07', NULL, 8, 4, '1', 'Y', 'admin', '2023-03-03 08:48:18', 'admin', '2023-03-23 18:56:09');
INSERT INTO `base_specialty` VALUES (3, 114, '300102', '物联网', 1, '2008-06-03', NULL, 4, 4, '1', 'Y', 'admin', '2023-03-03 08:48:36', 'admin', '2023-03-23 18:55:58');
INSERT INTO `base_specialty` VALUES (4, 119, '2312', '汉语言', 3, '2022-09-01', NULL, 4, 3, '1', 'Y', 'admin', '2023-03-23 18:55:32', 'admin', '2023-03-23 18:57:55');

-- ----------------------------
-- Table structure for base_student
-- ----------------------------
DROP TABLE IF EXISTS `base_student`;
CREATE TABLE `base_student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `spec_id` int(11) NOT NULL DEFAULT 0 COMMENT '专业',
  `class_id` int(11) NOT NULL COMMENT '班级',
  `year` int(4) NOT NULL COMMENT '年级',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `idcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证件号',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `nation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `is_lodge` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'y' COMMENT '是否住校',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `room_id` int(11) NULL DEFAULT NULL COMMENT '宿舍',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`, `status`) USING BTREE COMMENT '学号不能重复'
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_student
-- ----------------------------
INSERT INTO `base_student` VALUES (4, 2, 2, 2020, '2019105005', '李铁', '0', '2003-11-03', '5454', '5565522', NULL, '汉', 'Y', '1', NULL, 49, '1');
INSERT INTO `base_student` VALUES (8, 1, 1, 2019, '201903001', '张龙', '2', NULL, '429003199906254512', '', '', '', 'N', '', 5, 48, '1');
INSERT INTO `base_student` VALUES (9, 2, 2, 2019, '201903002', '李飞', '2', NULL, '35435', '', '', '', 'Y', '', 6, 49, '1');
INSERT INTO `base_student` VALUES (10, 2, 2, 2019, '201903003', '王丽', '1', NULL, '', '', '', '', 'Y', '', 7, 83, '1');
INSERT INTO `base_student` VALUES (11, 1, 5, 2019, '20200001', '程菲', '0', NULL, '78460464545', '234324', '', '', 'N', NULL, 12, 42, '1');
INSERT INTO `base_student` VALUES (12, 2, 4, 2021, '202101001', '马强', '0', '2003-11-03', '6785454', '5565522', '', '', 'Y', '1', 18, 50, '1');
INSERT INTO `base_student` VALUES (13, 2, 4, 2021, '202101002', '龙虎', '1', NULL, '234900314512', '', '', '', 'Y', '', 19, 48, '1');
INSERT INTO `base_student` VALUES (14, 2, 4, 2021, '202101003', '张飞', '2', NULL, '35324435', '', '', '', 'Y', '', 20, 50, '1');
INSERT INTO `base_student` VALUES (15, 2, 4, 2021, '202101004', '李超', '1', NULL, '543124324', '', '', '', 'Y', '', 21, 88, '1');
INSERT INTO `base_student` VALUES (16, 2, 4, 2021, '202101005', '冯才', '0', NULL, '78487764545', '234324', '', '', 'Y', '', 22, 42, '1');
INSERT INTO `base_student` VALUES (18, 2, 5, 2020, '202001001', '张建业', '0', '2003-11-03', '6785454', '5565522', '', '', 'N', '1', 24, 50, '1');
INSERT INTO `base_student` VALUES (19, 2, 5, 2020, '202001002', '刘铁', '1', NULL, '234900314512', '', '', '', 'Y', '', 25, 48, '1');
INSERT INTO `base_student` VALUES (20, 2, 5, 2020, '202001003', '王刚', '2', NULL, '35324435', '', '', '', 'Y', '', 26, 50, '1');
INSERT INTO `base_student` VALUES (21, 2, 5, 2020, '202001005', '邓刚', '0', '2003-11-03', '6785454', '5565522', '', '', 'Y', '1', 27, 50, '1');
INSERT INTO `base_student` VALUES (22, 2, 5, 2020, '202001006', '阿里嘎多', '1', NULL, '234900314512', '', '', '', 'N', '', 28, 48, '1');
INSERT INTO `base_student` VALUES (23, 2, 5, 2020, '202001007', '以内哇', '0', NULL, '35324435', '', '', '', 'Y', '', 29, 50, '1');
INSERT INTO `base_student` VALUES (24, 1, 6, 2023, '2023105001', 'tom', '0', NULL, '500233333', NULL, NULL, NULL, '0', NULL, 31, 0, '1');
INSERT INTO `base_student` VALUES (25, 1, 6, 2023, '22222', 'AA', '0', NULL, 'AAA', NULL, NULL, NULL, '0', NULL, 33, 0, '1');

-- ----------------------------
-- Table structure for base_teacher
-- ----------------------------
DROP TABLE IF EXISTS `base_teacher`;
CREATE TABLE `base_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `dept_id` int(11) NOT NULL COMMENT '所属部门',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '类型',
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `education` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '学历',
  `degree` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '学位',
  `idcard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '身份证件号',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住址',
  `start_date` date NULL DEFAULT NULL COMMENT '入校日期',
  `end_date` date NULL DEFAULT NULL COMMENT '离校日期',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE COMMENT '用户不能重复'
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '老师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_teacher
-- ----------------------------
INSERT INTO `base_teacher` VALUES (1, 117, '10002', '李工', '1', '0', '1993-12-07', '0', '0', '410482199606235413', NULL, NULL, NULL, '1980-11-10', NULL, 1, '1');
INSERT INTO `base_teacher` VALUES (2, 118, '20001', '赵丽', '2', '1', NULL, '1', '2', '421482199607215423', NULL, NULL, NULL, '2017-12-04', NULL, 8, '1');
INSERT INTO `base_teacher` VALUES (3, 107, '30001', '高强', '3', '0', NULL, '1', '1', '410482199706035412', '', '', '', '2015-12-08', NULL, 3, '1');
INSERT INTO `base_teacher` VALUES (4, 106, '40002', '宋波', '2', '1', NULL, '2', '2', '420422199606235413', '', '', '', NULL, NULL, 4, '1');
INSERT INTO `base_teacher` VALUES (5, 112, '11111', '余文乐', '1', '0', NULL, '0', '0', '2222', NULL, NULL, NULL, NULL, NULL, 32, '1');
INSERT INTO `base_teacher` VALUES (6, 110, '3333', 'AA', '1', '1', NULL, '0', '0', '111', NULL, NULL, NULL, NULL, NULL, 34, '1');

-- ----------------------------
-- Table structure for education_exchange
-- ----------------------------
DROP TABLE IF EXISTS `education_exchange`;
CREATE TABLE `education_exchange`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `sem_id` int(11) NOT NULL DEFAULT 0 COMMENT '学期',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级',
  `from_detail_id` int(11) NOT NULL COMMENT '原上课情况',
  `to_detail_id` int(11) NOT NULL COMMENT '新上课情况',
  `from_date` date NULL DEFAULT NULL COMMENT '原上课日期',
  `from_section` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '原节次',
  `to_date` date NULL DEFAULT NULL COMMENT '新上课日期',
  `to_section` int(11) NOT NULL DEFAULT 0 COMMENT '新节次',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `add_user` int(11) NOT NULL COMMENT '添加人',
  `check_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调课' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of education_exchange
-- ----------------------------
INSERT INTO `education_exchange` VALUES (1, 1, 1, 5, 6, '2023-04-01', '2', '2023-04-03', 3, '2023-03-05 17:10:34', 1, '2');
INSERT INTO `education_exchange` VALUES (2, 1, 1, 5, 6, '2023-05-08', '2', '2023-05-16', 1, '2023-03-05 17:11:57', 1, '1');

-- ----------------------------
-- Table structure for education_scheduling
-- ----------------------------
DROP TABLE IF EXISTS `education_scheduling`;
CREATE TABLE `education_scheduling`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `sem_id` int(11) NOT NULL DEFAULT 0 COMMENT '学期',
  `spec_id` int(11) NOT NULL COMMENT '专业',
  `course_id` int(11) NOT NULL COMMENT '课程',
  `class_id` int(11) NOT NULL COMMENT '班级',
  `teacher_id` int(11) NOT NULL COMMENT '教师',
  `room_id` int(11) NOT NULL COMMENT '教室',
  `week` int(11) NOT NULL COMMENT '周几',
  `section_id` int(11) NOT NULL COMMENT '节次',
  `task_id` int(11) NOT NULL DEFAULT 0 COMMENT '教学任务',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `task_id`(`task_id`, `week`, `section_id`) USING BTREE COMMENT '不能重复安排'
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '排课' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of education_scheduling
-- ----------------------------
INSERT INTO `education_scheduling` VALUES (1, 1, 0, 3, 0, 3, 9, 1, 1, 2);
INSERT INTO `education_scheduling` VALUES (2, 1, 0, 3, 0, 3, 9, 2, 1, 2);
INSERT INTO `education_scheduling` VALUES (3, 1, 0, 3, 0, 3, 9, 3, 1, 2);
INSERT INTO `education_scheduling` VALUES (4, 1, 0, 3, 0, 3, 9, 4, 1, 2);
INSERT INTO `education_scheduling` VALUES (5, 1, 0, 3, 0, 3, 9, 5, 1, 2);
INSERT INTO `education_scheduling` VALUES (6, 1, 1, 3, 1, 4, 11, 1, 1, 6);
INSERT INTO `education_scheduling` VALUES (7, 1, 1, 3, 1, 4, 11, 2, 1, 6);
INSERT INTO `education_scheduling` VALUES (8, 1, 1, 3, 1, 4, 11, 3, 1, 6);
INSERT INTO `education_scheduling` VALUES (9, 1, 1, 3, 1, 4, 11, 4, 1, 6);
INSERT INTO `education_scheduling` VALUES (10, 1, 1, 3, 1, 4, 11, 5, 1, 6);
INSERT INTO `education_scheduling` VALUES (16, 1, 2, 5, 2, 3, 2, 1, 3, 4);
INSERT INTO `education_scheduling` VALUES (17, 1, 2, 5, 2, 3, 2, 2, 3, 4);
INSERT INTO `education_scheduling` VALUES (18, 1, 2, 5, 2, 3, 2, 3, 3, 4);
INSERT INTO `education_scheduling` VALUES (19, 1, 2, 5, 2, 3, 2, 4, 3, 4);
INSERT INTO `education_scheduling` VALUES (20, 1, 2, 5, 2, 3, 2, 5, 3, 4);
INSERT INTO `education_scheduling` VALUES (21, 1, 1, 4, 1, 1, 10, 1, 2, 5);
INSERT INTO `education_scheduling` VALUES (22, 1, 1, 4, 1, 1, 10, 2, 2, 5);
INSERT INTO `education_scheduling` VALUES (23, 1, 1, 4, 1, 1, 10, 3, 2, 5);
INSERT INTO `education_scheduling` VALUES (24, 1, 1, 4, 1, 1, 10, 4, 2, 5);
INSERT INTO `education_scheduling` VALUES (25, 1, 1, 4, 1, 1, 10, 5, 2, 5);
INSERT INTO `education_scheduling` VALUES (26, 1, 2, 4, 2, 3, 1, 1, 2, 1);
INSERT INTO `education_scheduling` VALUES (27, 1, 2, 4, 2, 3, 1, 4, 2, 1);

-- ----------------------------
-- Table structure for education_scheme
-- ----------------------------
DROP TABLE IF EXISTS `education_scheme`;
CREATE TABLE `education_scheme`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `year` int(11) NOT NULL COMMENT '年级',
  `spec_id` int(11) NOT NULL COMMENT '专业',
  `period` tinyint(1) NOT NULL COMMENT '学制',
  `total` tinyint(4) NOT NULL COMMENT '招生人数',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方案说明',
  `score` float(10, 2) NULL DEFAULT NULL COMMENT '总学分',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `spec`(`year`, `spec_id`, `period`) USING BTREE COMMENT '培养方案不能重复'
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '培养方案' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of education_scheme
-- ----------------------------
INSERT INTO `education_scheme` VALUES (1, 2023, 1, 3, 36, '大英赛', 4.00, NULL, '2023-05-05 11:52:19', NULL, '2023-03-06 13:36:11');
INSERT INTO `education_scheme` VALUES (2, 2023, 2, 2, 34, '蓝桥杯', NULL, NULL, '2023-03-06 13:36:24', NULL, NULL);

-- ----------------------------
-- Table structure for education_student
-- ----------------------------
DROP TABLE IF EXISTS `education_student`;
CREATE TABLE `education_student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `task_id` int(11) NOT NULL COMMENT '教学任务',
  `student_id` int(11) NOT NULL COMMENT '学生',
  `class_id` int(11) NOT NULL COMMENT '班级',
  `course_id` int(11) NOT NULL COMMENT '课程',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `task_stu`(`task_id`, `student_id`) USING BTREE COMMENT '不能安排两次'
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教学班学生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of education_student
-- ----------------------------
INSERT INTO `education_student` VALUES (1, 2, 4, 2, 3);
INSERT INTO `education_student` VALUES (2, 2, 9, 2, 3);
INSERT INTO `education_student` VALUES (3, 2, 8, 3, 3);

-- ----------------------------
-- Table structure for education_task
-- ----------------------------
DROP TABLE IF EXISTS `education_task`;
CREATE TABLE `education_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `year` int(11) NULL DEFAULT NULL COMMENT '年级',
  `sem_id` int(11) NOT NULL COMMENT '学期',
  `spec_id` int(11) NOT NULL COMMENT '专业',
  `course_id` int(11) NOT NULL COMMENT '课程',
  `mode` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '教学形式',
  `class_id` int(11) NULL DEFAULT 0 COMMENT '班级',
  `teacher_id` int(11) NOT NULL COMMENT '教师',
  `exam` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '考核类型',
  `result` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成绩设置',
  `book_id` int(11) NOT NULL DEFAULT 0 COMMENT '教材',
  `room_id` int(11) NOT NULL DEFAULT 0 COMMENT '教室',
  `score` float(10, 2) NULL DEFAULT NULL COMMENT '学分',
  `periods` int(11) NOT NULL COMMENT '学时',
  `start_week` int(11) NOT NULL COMMENT '开始周',
  `end_week` int(11) NOT NULL COMMENT '结束周',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `submits` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否提交成绩',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course`(`sem_id`, `spec_id`, `course_id`, `class_id`, `teacher_id`) USING BTREE COMMENT '教学任务不能重复'
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教学任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of education_task
-- ----------------------------
INSERT INTO `education_task` VALUES (1, 2023, 1, 2, 4, '1', 2, 3, '1', '{\"1\":20,\"2\":30,\"3\":50}', 4, 2, 0.00, 48, 1, 16, 'admin', '2023-03-03 17:04:14', 'admin', '2023-03-04 11:17:46', 'Y', 'Y');
INSERT INTO `education_task` VALUES (2, 2023, 1, 0, 3, '2', 0, 3, '2', NULL, 3, 9, 0.00, 16, 1, 16, 'admin', '2023-03-03 17:04:14', 'admin', '2023-03-04 14:50:29', 'Y', 'Y');
INSERT INTO `education_task` VALUES (3, 2023, 1, 2, 3, '1', 2, 4, '1', '{\"1\":10,\"2\":20,\"3\":50,\"4\":20}', 3, 5, 0.00, 16, 1, 16, 'admin', '2023-03-03 17:26:40', 'admin', '2023-03-04 11:18:12', 'N', 'N');
INSERT INTO `education_task` VALUES (4, 2023, 1, 2, 5, '1', 2, 3, '1', '{\"1\":20,\"2\":30,\"3\":50,\"4\":0,\"5\":0}', 5, 2, 0.00, 48, 1, 16, 'admin', '2023-04-04 11:41:43', 'admin', '2023-04-04 11:54:30', 'Y', 'N');
INSERT INTO `education_task` VALUES (5, 2023, 1, 1, 4, '1', 1, 1, '1', '{\"1\":20,\"2\":20,\"3\":60}', 0, 10, 0.00, 32, 1, 16, 'admin', '2023-03-04 14:29:12', 'admin', '2023-03-05 11:02:18', 'Y', 'N');
INSERT INTO `education_task` VALUES (6, 2023, 1, 1, 3, '1', 1, 4, '1', '{\"1\":20,\"2\":30,\"3\":50,\"4\":0,\"5\":0}', 3, 11, 0.00, 64, 1, 16, 'admin', '2023-03-05 16:53:35', NULL, NULL, 'Y', 'N');

-- ----------------------------
-- Table structure for evaluate_norm
-- ----------------------------
DROP TABLE IF EXISTS `evaluate_norm`;
CREATE TABLE `evaluate_norm`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `pid` int(11) NOT NULL COMMENT '上级',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '指标名称',
  `list_sort` int(11) NOT NULL COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `score` float(10, 2) NOT NULL COMMENT '分数',
  `min` float(10, 2) NULL DEFAULT NULL COMMENT '最低分',
  `max` float(10, 2) NULL DEFAULT NULL COMMENT '最高分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评教指标' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluate_norm
-- ----------------------------
INSERT INTO `evaluate_norm` VALUES (1, 0, '教书育人', 1, '1', 20.00, NULL, NULL);
INSERT INTO `evaluate_norm` VALUES (2, 0, '教学方法', 2, '1', 20.00, NULL, NULL);
INSERT INTO `evaluate_norm` VALUES (3, 0, '教学内容', 3, '1', 20.00, NULL, NULL);
INSERT INTO `evaluate_norm` VALUES (4, 0, '教学管理', 4, '1', 20.00, NULL, NULL);
INSERT INTO `evaluate_norm` VALUES (5, 0, '教学效果', 5, '1', 20.00, NULL, NULL);
INSERT INTO `evaluate_norm` VALUES (6, 1, '为人师表', 1, '1', 4.00, 2.00, 4.00);
INSERT INTO `evaluate_norm` VALUES (7, 1, '治学严谨', 2, '1', 4.00, 2.00, 4.00);
INSERT INTO `evaluate_norm` VALUES (8, 1, '责任心强', 3, '1', 4.00, 2.00, 4.00);
INSERT INTO `evaluate_norm` VALUES (9, 1, '严格要求', 4, '1', 4.00, 2.00, 4.00);
INSERT INTO `evaluate_norm` VALUES (10, 1, '关爱学生', 5, '1', 4.00, 2.00, 4.00);
INSERT INTO `evaluate_norm` VALUES (11, 2, '重视沟通和启发', 2, '1', 10.00, 4.00, 10.00);
INSERT INTO `evaluate_norm` VALUES (12, 2, '教学手段丰富', 2, '1', 10.00, 4.00, 10.00);
INSERT INTO `evaluate_norm` VALUES (13, 3, '备课充分', 5, '1', 5.00, 2.00, 5.00);
INSERT INTO `evaluate_norm` VALUES (14, 3, '熟悉教材和课程内容', 2, '1', 5.00, 2.00, 5.00);
INSERT INTO `evaluate_norm` VALUES (15, 3, '讲课条理清楚', 3, '1', 5.00, 2.00, 5.00);
INSERT INTO `evaluate_norm` VALUES (16, 3, '介绍学科最新成果', 5, '0', 5.00, 2.00, 5.00);
INSERT INTO `evaluate_norm` VALUES (17, 4, '遵守课堂纪律', 1, '1', 10.00, 2.00, 10.00);
INSERT INTO `evaluate_norm` VALUES (18, 4, '严格管理', 2, '1', 10.00, 2.00, 10.00);
INSERT INTO `evaluate_norm` VALUES (19, 5, '教学效果好', 1, '1', 10.00, 2.00, 10.00);
INSERT INTO `evaluate_norm` VALUES (20, 5, '有课外成果', 2, '1', 10.00, 2.00, 10.00);

-- ----------------------------
-- Table structure for evaluate_project
-- ----------------------------
DROP TABLE IF EXISTS `evaluate_project`;
CREATE TABLE `evaluate_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `sem_id` int(11) NOT NULL COMMENT '学期',
  `class_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级',
  `start_times` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_times` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评教项目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluate_project
-- ----------------------------
INSERT INTO `evaluate_project` VALUES (1, 1, '1', '2023-03-04 00:00:00', '2023-03-09 00:00:00', '0');
INSERT INTO `evaluate_project` VALUES (2, 1, '2', '2023-03-04 00:00:00', '2023-03-09 00:00:00', '0');
INSERT INTO `evaluate_project` VALUES (3, 1, '3', '2023-03-04 00:00:00', '2023-03-09 00:00:00', '1');

-- ----------------------------
-- Table structure for evaluate_results
-- ----------------------------
DROP TABLE IF EXISTS `evaluate_results`;
CREATE TABLE `evaluate_results`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `sem_id` int(11) NOT NULL COMMENT '学期',
  `teacher_id` int(11) NOT NULL COMMENT '教师',
  `score` float(10, 2) NOT NULL COMMENT '打分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评教结果' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluate_results
-- ----------------------------
INSERT INTO `evaluate_results` VALUES (7, 1, 0, 78.32);
INSERT INTO `evaluate_results` VALUES (8, 1, 0, 84.00);

-- ----------------------------
-- Table structure for evaluate_score
-- ----------------------------
DROP TABLE IF EXISTS `evaluate_score`;
CREATE TABLE `evaluate_score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `sem_id` int(11) NOT NULL COMMENT '学期',
  `class_id` int(11) NOT NULL DEFAULT 0 COMMENT '班级',
  `teacher_id` int(11) NOT NULL COMMENT '教师',
  `course_id` int(11) NOT NULL COMMENT '课程',
  `student_id` int(11) NOT NULL COMMENT '学生',
  `norm_id` int(11) NULL DEFAULT NULL COMMENT '指标',
  `score` float(10, 2) NOT NULL COMMENT '打分',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_student`(`student_id`, `sem_id`, `teacher_id`, `course_id`, `norm_id`) USING BTREE COMMENT '不能多次评价'
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评教分数' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluate_score
-- ----------------------------
INSERT INTO `evaluate_score` VALUES (6, 1, 2, 3, 3, 9, 6, 3.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (7, 1, 2, 3, 3, 9, 7, 3.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (8, 1, 2, 3, 3, 9, 8, 4.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (9, 1, 2, 3, 3, 9, 9, 4.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (10, 1, 2, 3, 3, 9, 10, 4.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (11, 1, 2, 3, 3, 9, 11, 9.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (12, 1, 2, 3, 3, 9, 12, 9.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (13, 1, 2, 3, 3, 9, 13, 3.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (14, 1, 2, 3, 3, 9, 14, 3.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (15, 1, 2, 3, 3, 9, 15, 5.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (16, 1, 2, 3, 3, 9, 17, 9.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (17, 1, 2, 3, 3, 9, 18, 8.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (18, 1, 2, 3, 3, 9, 19, 8.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (19, 1, 2, 3, 3, 9, 20, 6.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (20, 1, 2, 3, 3, 9, 0, 78.00, '201903002', '2023-03-03 17:44:01');
INSERT INTO `evaluate_score` VALUES (21, 1, 2, 4, 3, 9, 6, 4.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (22, 1, 2, 4, 3, 9, 7, 3.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (23, 1, 2, 4, 3, 9, 8, 3.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (24, 1, 2, 4, 3, 9, 9, 3.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (25, 1, 2, 4, 3, 9, 10, 4.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (26, 1, 2, 4, 3, 9, 11, 8.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (27, 1, 2, 4, 3, 9, 12, 8.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (28, 1, 2, 4, 3, 9, 13, 5.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (29, 1, 2, 4, 3, 9, 14, 5.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (30, 1, 2, 4, 3, 9, 15, 5.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (31, 1, 2, 4, 3, 9, 17, 9.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (32, 1, 2, 4, 3, 9, 18, 9.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (33, 1, 2, 4, 3, 9, 19, 9.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (34, 1, 2, 4, 3, 9, 20, 9.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (35, 1, 2, 4, 3, 9, 0, 84.00, '201903002', '2023-03-03 17:45:33');
INSERT INTO `evaluate_score` VALUES (36, 1, 1, 3, 3, 8, 6, 4.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (37, 1, 1, 3, 3, 8, 7, 4.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (38, 1, 1, 3, 3, 8, 8, 4.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (39, 1, 1, 3, 3, 8, 9, 4.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (40, 1, 1, 3, 3, 8, 10, 4.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (41, 1, 1, 3, 3, 8, 11, 10.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (42, 1, 1, 3, 3, 8, 12, 10.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (43, 1, 1, 3, 3, 8, 13, 5.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (44, 1, 1, 3, 3, 8, 14, 5.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (45, 1, 1, 3, 3, 8, 15, 5.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (46, 1, 1, 3, 3, 8, 17, 10.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (47, 1, 1, 3, 3, 8, 18, 10.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (48, 1, 1, 3, 3, 8, 19, 9.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (49, 1, 1, 3, 3, 8, 20, 10.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (50, 1, 1, 3, 3, 8, 0, 94.00, '201903001', '2023-03-04 15:21:47');
INSERT INTO `evaluate_score` VALUES (51, 1, 1, 4, 3, 8, 6, 4.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (52, 1, 1, 4, 3, 8, 7, 4.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (53, 1, 1, 4, 3, 8, 8, 4.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (54, 1, 1, 4, 3, 8, 9, 4.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (55, 1, 1, 4, 3, 8, 10, 4.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (56, 1, 1, 4, 3, 8, 11, 10.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (57, 1, 1, 4, 3, 8, 12, 10.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (58, 1, 1, 4, 3, 8, 13, 5.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (59, 1, 1, 4, 3, 8, 14, 5.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (60, 1, 1, 4, 3, 8, 15, 5.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (61, 1, 1, 4, 3, 8, 17, 10.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (62, 1, 1, 4, 3, 8, 18, 10.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (63, 1, 1, 4, 3, 8, 19, 8.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (64, 1, 1, 4, 3, 8, 20, 10.00, '201903001', '2023-03-05 11:14:48');
INSERT INTO `evaluate_score` VALUES (65, 1, 1, 4, 3, 8, 0, 93.00, '201903001', '2023-03-05 11:14:48');

-- ----------------------------
-- Table structure for exam_final
-- ----------------------------
DROP TABLE IF EXISTS `exam_final`;
CREATE TABLE `exam_final`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `result_id` int(11) NOT NULL DEFAULT 0 COMMENT '成绩',
  `class_id` int(11) NOT NULL COMMENT '班级',
  `student_id` int(11) NOT NULL COMMENT '学生',
  `course_id` int(11) NOT NULL COMMENT '课程',
  `is_pass` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否及格',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `result`(`result_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '清考名单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_final
-- ----------------------------
INSERT INTO `exam_final` VALUES (1, 6, 2, 4, 3, NULL);

-- ----------------------------
-- Table structure for exam_makeup
-- ----------------------------
DROP TABLE IF EXISTS `exam_makeup`;
CREATE TABLE `exam_makeup`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `result_id` int(11) NOT NULL DEFAULT 0 COMMENT '关联成绩',
  `class_id` int(11) NOT NULL COMMENT '班级',
  `student_id` int(11) NOT NULL COMMENT '学生',
  `course_id` int(11) NOT NULL COMMENT '课程',
  `is_pass` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否及格',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `result`(`result_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '补考名单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_makeup
-- ----------------------------
INSERT INTO `exam_makeup` VALUES (1, 6, 2, 4, 3, 'N');

-- ----------------------------
-- Table structure for exam_result
-- ----------------------------
DROP TABLE IF EXISTS `exam_result`;
CREATE TABLE `exam_result`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `sem_id` int(11) NOT NULL COMMENT '学期',
  `class_id` int(11) NOT NULL COMMENT '班级',
  `student_id` int(11) NOT NULL DEFAULT 0 COMMENT '学生',
  `course_id` int(11) NOT NULL COMMENT '课程',
  `teacher_id` int(11) NOT NULL DEFAULT 0 COMMENT '教师',
  `result1` float(10, 1) NULL DEFAULT NULL COMMENT '成绩1',
  `result2` float(10, 1) NULL DEFAULT NULL COMMENT '成绩2',
  `result3` float(10, 1) NULL DEFAULT NULL COMMENT '成绩3',
  `result4` float(10, 1) NULL DEFAULT NULL COMMENT '成绩4',
  `result5` float(10, 1) NULL DEFAULT NULL COMMENT '成绩5',
  `makeup_result` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '补考成绩',
  `final_result` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '清考成绩',
  `total_result` float(10, 1) NULL DEFAULT NULL COMMENT '总评成绩',
  `level` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '成绩级别',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '考核类型',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_course`(`student_id`, `course_id`, `sem_id`) USING BTREE COMMENT '成绩不能重复录入'
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '成绩' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_result
-- ----------------------------
INSERT INTO `exam_result` VALUES (1, 1, 2, 4, 4, 4, 96.0, 87.0, 96.0, 0.0, NULL, NULL, NULL, 94.2, '3', '1', 'admin', '2023-03-03 15:59:50', 'admin', '2023-03-04 10:57:36');
INSERT INTO `exam_result` VALUES (2, 1, 2, 6, 4, 4, 65.0, 88.0, 78.0, 0.0, NULL, NULL, NULL, 76.1, '1', '1', 'admin', '2023-03-03 16:36:33', 'admin', '2023-03-04 16:49:06');
INSERT INTO `exam_result` VALUES (3, 1, 2, 9, 4, 4, 98.0, 83.0, 63.0, 0.0, NULL, NULL, NULL, 77.5, '1', '1', 'admin', '2023-03-03 16:36:35', 'admin', '2023-03-04 16:49:14');
INSERT INTO `exam_result` VALUES (6, 1, 2, 4, 3, 4, 69.0, 70.0, 71.0, NULL, NULL, '0', NULL, NULL, '1', '2', 'admin', '2023-03-04 09:23:53', 'admin', '2023-03-05 10:31:18');
INSERT INTO `exam_result` VALUES (7, 1, 2, 9, 3, 4, 50.0, 51.0, 90.0, 0.0, NULL, NULL, NULL, NULL, '3', '2', 'admin', '2023-03-04 09:27:26', 'admin', '2023-03-05 11:20:46');
INSERT INTO `exam_result` VALUES (8, 1, 2, 6, 3, 4, 0.0, 0.0, 0.0, 0.0, NULL, NULL, NULL, NULL, '0', '2', 'admin', '2023-03-04 10:30:49', 'admin', '2023-03-05 11:20:42');
INSERT INTO `exam_result` VALUES (9, 1, 3, 10, 5, 3, 87.0, 56.0, 100.0, 0.0, NULL, NULL, NULL, 84.2, '2', '1', 'admin', '2023-03-04 10:58:35', 'admin', '2023-03-05 11:52:35');
INSERT INTO `exam_result` VALUES (10, 1, 1, 5, 4, 1, 90.0, 60.0, 60.0, 60.0, NULL, NULL, NULL, 66.0, '1', '1', 'admin', '2023-03-04 11:53:45', 'admin', '2023-03-05 11:55:24');
INSERT INTO `exam_result` VALUES (12, 1, 1, 8, 4, 1, 90.0, 60.0, 60.0, 60.0, NULL, NULL, NULL, 66.0, '1', '1', 'admin', '2023-03-04 12:00:41', 'admin', '2023-03-05 12:00:41');
INSERT INTO `exam_result` VALUES (13, 1, 1, 11, 4, 1, 88.0, 89.0, 88.0, 80.0, NULL, NULL, NULL, 88.3, '2', '1', 'admin', '2023-03-04 12:00:41', 'admin', '2023-03-05 13:39:15');

-- ----------------------------
-- Table structure for exam_task
-- ----------------------------
DROP TABLE IF EXISTS `exam_task`;
CREATE TABLE `exam_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '考试名称',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `finish_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `sem_id` int(11) NOT NULL COMMENT '学期',
  `course_id` int(11) NOT NULL COMMENT '课程',
  `class_id` int(11) NOT NULL COMMENT '班级',
  `teacher_id` int(11) NULL DEFAULT NULL COMMENT '授课教师',
  `invigilator` int(11) NULL DEFAULT NULL COMMENT '监考老师',
  `room_id` int(11) NULL DEFAULT NULL COMMENT '教室',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `task_id` int(11) NULL DEFAULT NULL COMMENT '教学任务',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `course`(`sem_id`, `course_id`, `class_id`, `teacher_id`, `task_id`) USING BTREE COMMENT '不能重复安排考试'
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_task
-- ----------------------------
INSERT INTO `exam_task` VALUES (1, '2020-2021上学期2019会计班电子会计', '2021-01-22 10:00:00', '2021-01-22 12:00:00', 1, 4, 2, 3, 4, 2, NULL, NULL, NULL, '2023-03-03 10:57:07', '1', 1);
INSERT INTO `exam_task` VALUES (2, '2020-2021上学期2019会计班计算机基础', '2021-01-23 10:00:00', '2021-01-23 12:00:00', 1, 3, 2, 4, 3, 9, NULL, NULL, NULL, '2023-03-03 10:57:07', '1', 3);
INSERT INTO `exam_task` VALUES (3, '2020-2021上学期计算机基础', '2021-01-24 10:00:00', '2021-01-24 12:00:00', 1, 3, 0, 3, 4, 9, NULL, NULL, NULL, '2023-03-03 10:57:07', '1', 2);
INSERT INTO `exam_task` VALUES (4, '2021-2022上学期计算机导论', '2021-09-01 10:00:00', '2022-01-15 10:00:00', 1, 6, 2, 6, 5, 7, NULL, NULL, NULL, '2023-03-03 10:57:07', '1', 1);
INSERT INTO `exam_task` VALUES (5, '2021-2022下学期Java程序设计', '2022-02-25 10:00:00', '2022-07-01 10:00:00', 2, 5, 5, 5, 7, 7, NULL, NULL, NULL, '2023-03-03 10:57:07', '1', 2);
INSERT INTO `exam_task` VALUES (6, '2022-2023上学期C#程序设计', '2022-09-01 10:00:00', '2023-01-15 10:00:00', 3, 4, 5, 2, 2, 5, NULL, NULL, NULL, '2023-03-03 10:57:07', '1', 1);
INSERT INTO `exam_task` VALUES (7, '2022-2023下学期C++程序设计', '2023-02-25 10:00:00', '2023-07-01 10:00:00', 4, 5, 2, 2, 4, 5, NULL, NULL, NULL, '2023-03-03 10:57:07', '1', 2);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'base_class', '班级', NULL, NULL, 'BaseClass', 'crud', 'com.ruoyi.base', 'base', 'clazz', '班级', 'zhaoxiaolong', '0', '/', '{\"parentMenuId\":\"1061\"}', 'admin', '2023-02-15 16:54:07', '', '2023-04-15 13:46:04', NULL);
INSERT INTO `gen_table` VALUES (2, 'base_specialty', '专业', NULL, NULL, 'BaseSpecialty', 'crud', 'com.ruoyi.base', 'base', 'specialty', '专业', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1061\"}', 'admin', '2023-02-15 16:54:08', '', '2023-02-15 13:54:37', NULL);
INSERT INTO `gen_table` VALUES (3, 'base_building', '楼宇', NULL, NULL, 'BaseBuilding', 'crud', 'com.ruoyi.base', 'base', 'building', '楼宇', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1061\"}', 'admin', '2023-02-15 13:45:17', '', '2023-02-15 13:54:50', NULL);
INSERT INTO `gen_table` VALUES (4, 'base_company', '企业', NULL, NULL, 'BaseCompany', 'crud', 'com.ruoyi.base', 'base', 'company', '企业', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1061\"}', 'admin', '2023-02-15 13:45:17', '', '2023-02-15 14:06:25', NULL);
INSERT INTO `gen_table` VALUES (5, 'base_course', '课程', NULL, NULL, 'BaseCourse', 'crud', 'com.ruoyi.base', 'base', 'course', '课程', 'yepanpan', '0', '/', '{\"parentMenuId\":1061}', 'admin', '2023-02-15 13:45:17', '', '2023-02-15 14:08:11', NULL);
INSERT INTO `gen_table` VALUES (6, 'base_department', '组织结构', NULL, NULL, 'BaseDepartment', 'crud', 'com.ruoyi.base', 'base', 'department', '组织结构', 'yepanpan', '0', '/', NULL, 'admin', '2023-02-15 13:45:17', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (7, 'base_book', '教材', NULL, NULL, 'BaseBook', 'crud', 'com.ruoyi.base', 'base', 'book', '教材', 'yepanpan', '0', '/', '{\"parentMenuId\":1061}', 'admin', '2023-02-15 13:45:17', '', '2023-02-15 14:11:02', NULL);
INSERT INTO `gen_table` VALUES (8, 'base_room', '房间', NULL, NULL, 'BaseRoom', 'crud', 'com.ruoyi.base', 'base', 'room', '房间', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1061\"}', 'admin', '2023-02-15 13:45:18', '', '2023-02-15 17:11:44', NULL);
INSERT INTO `gen_table` VALUES (9, 'base_school', '学校', NULL, NULL, 'BaseSchool', 'crud', 'com.ruoyi.base', 'base', 'school', '学校', 'yepanpan', '0', '/', NULL, 'admin', '2023-02-15 13:45:18', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (10, 'base_section', '节次', NULL, NULL, 'BaseSection', 'crud', 'com.ruoyi.base', 'base', 'section', '节次', 'yepanpan', '0', '/', '{\"parentMenuId\":1128}', 'admin', '2023-02-15 13:45:18', '', '2023-02-15 15:25:33', NULL);
INSERT INTO `gen_table` VALUES (11, 'base_semster', '学期', NULL, NULL, 'BaseSemster', 'crud', 'com.ruoyi.base', 'base', 'semster', '学期', 'yepanpan', '0', '/', '{\"parentMenuId\":1061}', 'admin', '2023-02-15 13:45:18', '', '2023-02-15 15:09:27', NULL);
INSERT INTO `gen_table` VALUES (12, 'base_student', '学生', NULL, NULL, 'BaseStudent', 'crud', 'com.ruoyi.base', 'base', 'student', '学生', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1061\"}', 'admin', '2023-02-15 13:45:18', '', '2023-02-15 14:21:26', NULL);
INSERT INTO `gen_table` VALUES (13, 'base_teacher', '老师', NULL, NULL, 'BaseTeacher', 'crud', 'com.ruoyi.base', 'base', 'teacher', '老师', 'yepanpan', '0', '/', '{\"parentMenuId\":1061}', 'admin', '2023-02-15 13:45:24', '', '2023-02-15 14:30:41', NULL);
INSERT INTO `gen_table` VALUES (14, 'education_exchange', '调课', NULL, NULL, 'EducationExchange', 'crud', 'com.ruoyi.education', 'education', 'eduExchange', '调课管理', 'yepanpan', '0', '/', '{\"parentMenuId\":1131}', 'admin', '2023-02-15 15:27:49', '', '2023-02-15 16:12:24', NULL);
INSERT INTO `gen_table` VALUES (15, 'education_plan', '教学计划', NULL, NULL, 'EducationPlan', 'crud', 'com.ruoyi.education', 'education', 'eduPlan', '教学计划', 'yepanpan', '0', '/', '{\"parentMenuId\":1131}', 'admin', '2023-02-15 15:27:49', '', '2023-02-15 16:05:26', NULL);
INSERT INTO `gen_table` VALUES (16, 'education_scheduling', '排课', NULL, NULL, 'EducationScheduling', 'crud', 'com.ruoyi.education', 'education', 'eduScheduling', '排课', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1131\"}', 'admin', '2023-02-15 15:27:49', '', '2023-02-17 14:13:25', NULL);
INSERT INTO `gen_table` VALUES (17, 'education_scheme', '培养方案', NULL, NULL, 'EducationScheme', 'crud', 'com.ruoyi.education', 'education', 'eduScheme', '培养方案', 'yepanpan', '0', '/', '{\"parentMenuId\":1131}', 'admin', '2023-02-15 15:27:49', '', '2023-02-15 16:06:01', NULL);
INSERT INTO `gen_table` VALUES (18, 'education_student', '教学班学生', NULL, NULL, 'EducationStudent', 'crud', 'com.ruoyi.education', 'education', 'eduStudent', '教学班学生', 'yepanpan', '0', '/', '{}', 'admin', '2023-02-15 15:27:49', '', '2023-02-15 16:13:04', NULL);
INSERT INTO `gen_table` VALUES (19, 'education_task', '教学任务', NULL, NULL, 'EducationTask', 'crud', 'com.ruoyi.education', 'education', 'eduTask', '教学任务', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1131\"}', 'admin', '2023-02-15 15:27:49', '', '2023-02-15 16:10:40', NULL);
INSERT INTO `gen_table` VALUES (20, 'evaluate_norm', '评教指标', NULL, NULL, 'EvaluateNorm', 'tree', 'com.ruoyi.evaluate', 'evaluate', 'evalNorm', '评教指标', 'yepanpan', '0', '/', '{\"treeCode\":\"id\",\"treeName\":\"title\",\"treeParentCode\":\"pid\",\"parentMenuId\":1156}', 'admin', '2023-02-15 15:27:49', '', '2023-02-15 16:26:29', NULL);
INSERT INTO `gen_table` VALUES (21, 'evaluate_project', '评教项目', NULL, NULL, 'EvaluateProject', 'crud', 'com.ruoyi.evaluate', 'evaluate', 'evalProject', '评教项目', 'yepanpan', '0', '/', '{\"parentMenuId\":1156}', 'admin', '2023-02-15 15:27:49', '', '2023-02-15 16:27:15', NULL);
INSERT INTO `gen_table` VALUES (22, 'evaluate_score', '评教分数', NULL, NULL, 'EvaluateScore', 'crud', 'com.ruoyi.evaluate', 'evaluate', 'evalScore', '评教分数', 'yepanpan', '0', '/', '{\"parentMenuId\":1156}', 'admin', '2023-02-15 15:27:49', '', '2023-02-15 16:27:41', NULL);
INSERT INTO `gen_table` VALUES (23, 'student_change', '学籍异动', NULL, NULL, 'StudentChange', 'crud', 'com.ruoyi.student', 'student', 'studentChange', '学籍异动', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1130\"}', 'admin', '2023-02-15 15:30:41', '', '2023-02-15 15:39:49', NULL);
INSERT INTO `gen_table` VALUES (24, 'student_check', '宿舍考勤', NULL, NULL, 'StudentCheck', 'crud', 'com.ruoyi.student', 'student', 'studentCheck', '宿舍考勤', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1130\"}', 'admin', '2023-02-15 15:30:41', '', '2023-02-15 15:42:36', NULL);
INSERT INTO `gen_table` VALUES (25, 'student_graduation', '毕业', NULL, NULL, 'StudentGraduation', 'crud', 'com.ruoyi.student', 'student', 'graduation', '毕业管理', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1130\"}', 'admin', '2023-02-15 15:30:41', '', '2023-02-17 18:16:03', NULL);
INSERT INTO `gen_table` VALUES (26, 'student_info', '学生信息', NULL, NULL, 'StudentInfo', 'crud', 'com.ruoyi.student', 'student', 'studentInfo', '学籍管理', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1130\"}', 'admin', '2023-02-15 15:30:41', '', '2023-02-15 15:39:29', NULL);
INSERT INTO `gen_table` VALUES (27, 'evaluate_results', '评教结果', NULL, NULL, 'EvaluateResults', 'crud', 'com.ruoyi.evaluate', 'evaluate', 'evalResults', '评教结果', 'yepanpan', '0', '/', '{\"parentMenuId\":1156}', 'admin', '2023-02-15 16:30:16', '', '2023-02-15 16:30:48', NULL);
INSERT INTO `gen_table` VALUES (28, 'practice_check', '实习考勤', NULL, NULL, 'PracticeCheck', 'crud', 'com.ruoyi.practice', 'practice', 'praCheck', '实习考勤', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1217\"}', 'admin', '2023-02-15 16:57:22', '', '2023-02-15 15:50:38', NULL);
INSERT INTO `gen_table` VALUES (29, 'practice_task', '实习任务', NULL, NULL, 'PracticeTask', 'crud', 'com.ruoyi.practice', 'practice', 'praTask', '实习任务', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1217\"}', 'admin', '2023-02-15 16:57:28', '', '2023-02-15 17:05:17', NULL);
INSERT INTO `gen_table` VALUES (30, 'practice_summary', '实习总结', NULL, NULL, 'PracticeSummary', 'crud', 'com.ruoyi.practice', 'practice', 'praSummary', '实习总结', 'yepanpan', '0', '/', '{\"parentMenuId\":1217}', 'admin', '2023-02-15 16:57:42', '', '2023-02-15 17:00:15', NULL);
INSERT INTO `gen_table` VALUES (31, 'teach_accident', '教学事故', NULL, NULL, 'TeachAccident', 'crud', 'com.ruoyi.teach', 'teach', 'teachAccident', '教学事故', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1236\"}', 'admin', '2023-02-15 17:14:22', '', '2023-02-15 17:19:23', NULL);
INSERT INTO `gen_table` VALUES (32, 'teach_check', '课堂考勤', NULL, NULL, 'TeachCheck', 'crud', 'com.ruoyi.teach', 'teach', 'teachCheck', '课堂考勤', 'yepanpan', '0', '/', '{\"parentMenuId\":1236}', 'admin', '2023-02-15 17:14:22', '', '2023-02-15 17:17:13', NULL);
INSERT INTO `gen_table` VALUES (33, 'teach_plan', '教学方案', NULL, NULL, 'TeachPlan', 'crud', 'com.ruoyi.teach', 'teach', 'teachPlan', '教学计划', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1236\"}', 'admin', '2023-02-15 17:14:22', '', '2023-02-15 14:51:25', NULL);
INSERT INTO `gen_table` VALUES (34, 'lab_apply', '实验室申请', NULL, NULL, 'LabApply', 'crud', 'com.ruoyi.lab', 'lab', 'labApply', '实验室申请', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1255\"}', 'admin', '2023-02-15 17:20:55', '', '2023-02-15 17:26:00', NULL);
INSERT INTO `gen_table` VALUES (35, 'lab_laboratory', '实验室管理', NULL, NULL, 'LabLaboratory', 'crud', 'com.ruoyi.lab', 'lab', 'laboratory', '实验室管理', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1255\"}', 'admin', '2023-02-15 17:20:55', '', '2023-02-15 17:23:47', NULL);
INSERT INTO `gen_table` VALUES (36, 'exam_final', '清考', NULL, NULL, 'ExamFinal', 'crud', 'com.ruoyi.exam', 'exam', 'examFinal', '清考', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1268\"}', 'admin', '2023-02-15 17:27:30', '', '2023-02-15 11:42:18', NULL);
INSERT INTO `gen_table` VALUES (38, 'exam_makeup', '补考', NULL, NULL, 'ExamMakeup', 'crud', 'com.ruoyi.exam', 'exam', 'examMakeup', '补考', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1268\"}', 'admin', '2023-02-15 17:27:31', '', '2023-02-23 11:42:38', NULL);
INSERT INTO `gen_table` VALUES (40, 'exam_result', '成绩', NULL, NULL, 'ExamResult', 'crud', 'com.ruoyi.exam', 'exam', 'examResult', '成绩', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1268\"}', 'admin', '2023-02-15 17:27:31', '', '2023-02-15 17:34:35', NULL);
INSERT INTO `gen_table` VALUES (41, 'exam_task', '考试', NULL, NULL, 'ExamTask', 'crud', 'com.ruoyi.exam', 'exam', 'examTask', '考试', 'yepanpan', '0', '/', '{\"parentMenuId\":1268}', 'admin', '2023-02-15 17:27:31', '', '2023-02-15 17:29:05', NULL);
INSERT INTO `gen_table` VALUES (43, 'sys_files', '文件', NULL, NULL, 'SysFiles', 'crud', 'com.ruoyi.sys', 'sys', 'files', '文件', 'yepanpan', '0', '/', '{}', 'admin', '2023-02-20 11:04:53', '', '2023-02-20 11:13:02', NULL);
INSERT INTO `gen_table` VALUES (44, 'student_train', '培训项目', NULL, NULL, 'StudentTrain', 'crud', 'com.ruoyi.student', 'student', 'studentTrain', '培训项目', 'yepanpan', '0', '/', '{\"parentMenuId\":1314}', 'admin', '2023-02-24 08:53:12', '', '2023-02-24 09:28:17', NULL);
INSERT INTO `gen_table` VALUES (45, 'student_apply', '招生报名', NULL, NULL, 'StudentApply', 'crud', 'com.ruoyi.student', 'student', 'studentApply', '招生报名', 'yepanpan', '0', '/', '{\"parentMenuId\":1314}', 'admin', '2023-02-24 08:53:23', '', '2023-02-24 09:29:38', NULL);
INSERT INTO `gen_table` VALUES (46, 'student_checkin', '招生报到', NULL, NULL, 'StudentCheckin', 'crud', 'com.ruoyi.student', 'student', 'studentCheckin', '招生报到', 'yepanpan', '0', '/', '{\"parentMenuId\":1314}', 'admin', '2023-02-24 08:53:23', '', '2023-02-24 09:31:43', NULL);
INSERT INTO `gen_table` VALUES (47, 'student_enroll', '招生计划', NULL, NULL, 'StudentEnroll', 'crud', 'com.ruoyi.student', 'student', 'studentEnroll', '招生计划', 'yepanpan', '0', '/', '{\"parentMenuId\":1314}', 'admin', '2023-02-24 08:53:23', '', '2023-02-24 09:32:40', NULL);
INSERT INTO `gen_table` VALUES (48, 'student_signup', '培训报名', NULL, NULL, 'StudentSignup', 'crud', 'com.ruoyi.student', 'student', 'studentSignup', '培训报名', 'yepanpan', '0', '/', '{}', 'admin', '2023-02-24 08:53:23', '', '2023-02-24 09:34:17', NULL);
INSERT INTO `gen_table` VALUES (49, 'teach_plan_period', '教学方案', NULL, NULL, 'TeachPlanPeriod', 'crud', 'com.ruoyi.teach', 'teach', 'teachPlanPeriod', '教学方案', 'yepanpan', '0', '/', '{}', 'admin', '2023-02-25 14:45:00', '', '2023-02-25 14:50:13', NULL);
INSERT INTO `gen_table` VALUES (50, 'sys_chart', '报表', NULL, NULL, 'SysChart', 'crud', 'com.ruoyi.sys', 'sys', 'chart', '报表管理', 'yepanpan', '0', '/', '{\"parentMenuId\":\"3\"}', 'admin', '2023-02-26 16:27:03', '', '2023-02-26 16:42:11', NULL);
INSERT INTO `gen_table` VALUES (51, 'sys_dataset', '数据集', NULL, NULL, 'SysDataset', 'crud', 'com.ruoyi.sys', 'sys', 'dataset', '数据集', 'yepanpan', '0', '/', '{\"parentMenuId\":\"3\"}', 'admin', '2023-02-26 16:27:03', '', '2023-02-26 16:41:54', NULL);
INSERT INTO `gen_table` VALUES (52, 'oa_asset', '资产信息', NULL, NULL, 'OaAsset', 'crud', 'com.ruoyi.oa', 'oa', 'asset', '资产信息', 'yepanpan', '0', '/', '{\"parentMenuId\":1376}', 'admin', '2023-02-27 11:22:02', '', '2023-02-27 11:27:29', NULL);
INSERT INTO `gen_table` VALUES (53, 'oa_category', '资产分类', NULL, NULL, 'OaCategory', 'tree', 'com.ruoyi.oa', 'oa', 'category', '资产分类', 'yepanpan', '0', '/', '{\"treeCode\":\"id\",\"treeName\":\"title\",\"treeParentCode\":\"pid\",\"parentMenuId\":\"1376\"}', 'admin', '2023-02-27 11:22:02', '', '2023-02-27 11:28:48', NULL);
INSERT INTO `gen_table` VALUES (54, 'oa_divan', '会议室', NULL, NULL, 'OaDivan', 'crud', 'com.ruoyi.oa', 'oa', 'divan', '会议室', 'yepanpan', '0', '/', '{\"parentMenuId\":1374}', 'admin', '2023-02-27 11:22:02', '', '2023-02-27 11:29:07', NULL);
INSERT INTO `gen_table` VALUES (55, 'oa_document', '公文', NULL, NULL, 'OaDocument', 'crud', 'com.ruoyi.oa', 'oa', 'document', '公文', 'yepanpan', '0', '/', '{\"parentMenuId\":1374}', 'admin', '2023-02-27 11:22:02', '', '2023-02-27 11:29:23', NULL);
INSERT INTO `gen_table` VALUES (56, 'oa_field', '表单字段', NULL, NULL, 'OaField', 'crud', 'com.ruoyi.oa', 'oa', 'field', '单字段', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1374\"}', 'admin', '2023-02-27 11:22:02', '', '2023-02-27 11:30:53', NULL);
INSERT INTO `gen_table` VALUES (57, 'oa_flow', '工作流', NULL, NULL, 'OaFlow', 'crud', 'com.ruoyi.oa', 'oa', 'flow', '工作流', 'yepanpan', '0', '/', '{\"parentMenuId\":1374}', 'admin', '2023-02-27 11:22:02', '', '2023-02-27 11:29:50', NULL);
INSERT INTO `gen_table` VALUES (58, 'oa_flow_process', '工作流步骤', NULL, NULL, 'OaFlowProcess', 'crud', 'com.ruoyi.oa', 'oa', 'process', '工作流步骤', 'yepanpan', '0', '/', '{\"parentMenuId\":1374}', 'admin', '2023-02-27 11:22:03', '', '2023-02-27 11:30:24', NULL);
INSERT INTO `gen_table` VALUES (59, 'glory_school', '高光时刻', NULL, NULL, 'GlorySchool', 'crud', 'com.ruoyi.glory', 'glory', 'school', '高光时刻', 'yepanpan', '0', '/', '{\"parentMenuId\":1375}', 'admin', '2023-02-27 11:22:20', '', '2023-02-27 09:13:40', NULL);
INSERT INTO `gen_table` VALUES (60, 'glory_student', '学生获奖', NULL, NULL, 'GloryStudent', 'crud', 'com.ruoyi.glory', 'glory', 'student', '学生获奖', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1375\"}', 'admin', '2023-02-27 11:22:20', '', '2023-02-27 13:53:00', NULL);
INSERT INTO `gen_table` VALUES (61, 'glory_teacher', '教师荣耀', NULL, NULL, 'GloryTeacher', 'crud', 'com.ruoyi.glory', 'glory', 'teacher', '教师荣耀', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1375\"}', 'admin', '2023-02-27 11:22:20', '', '2023-02-27 14:08:00', NULL);
INSERT INTO `gen_table` VALUES (62, 'oa_flow_step', '工作流步骤', NULL, NULL, 'OaFlowStep', 'crud', 'com.ruoyi.oa', 'oa', 'step', '工作流步骤', 'yepanpan', '0', '/', '{\"parentMenuId\":1374}', 'admin', '2023-02-27 11:22:20', '', '2023-02-27 11:39:08', NULL);
INSERT INTO `gen_table` VALUES (63, 'oa_form', '公文表单', NULL, NULL, 'OaForm', 'crud', 'com.ruoyi.oa', 'oa', 'form', '公文单', 'yepanpan', '0', '/', '{\"parentMenuId\":1374}', 'admin', '2023-02-27 11:22:20', '', '2023-02-27 11:39:35', NULL);
INSERT INTO `gen_table` VALUES (64, 'oa_guard', '门禁', NULL, NULL, 'OaGuard', 'crud', 'com.ruoyi.oa', 'oa', 'guard', '门禁', 'yepanpan', '0', '/', '{\"parentMenuId\":1377}', 'admin', '2023-02-27 11:22:20', '', '2023-02-27 11:40:06', NULL);
INSERT INTO `gen_table` VALUES (65, 'oa_inout', '出入记录', NULL, NULL, 'OaInout', 'crud', 'com.ruoyi.oa', 'oa', 'inout', '出入记录', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1377\"}', 'admin', '2023-02-27 11:22:20', '', '2023-02-28 13:52:04', NULL);
INSERT INTO `gen_table` VALUES (66, 'oa_meeting', '会议申请', NULL, NULL, 'OaMeeting', 'crud', 'com.ruoyi.oa', 'oa', 'meeting', '会议申请', 'yepanpan', '0', '/', '{\"parentMenuId\":1374}', 'admin', '2023-02-27 11:22:20', '', '2023-02-27 11:41:34', NULL);
INSERT INTO `gen_table` VALUES (67, 'oa_meeting_summary', '会议记要', NULL, NULL, 'OaMeetingSummary', 'crud', 'com.ruoyi.oa', 'oa', 'summary', '会议记要', 'yepanpan', '0', '/', '{\"parentMenuId\":1374}', 'admin', '2023-02-27 11:22:20', '', '2023-02-27 11:41:58', NULL);
INSERT INTO `gen_table` VALUES (68, 'oa_meeting_user', '与会人员', NULL, NULL, 'OaMeetingUser', 'crud', 'com.ruoyi.oa', 'oa', 'user', '与会人员', 'yepanpan', '0', '/', '{\"parentMenuId\":1374}', 'admin', '2023-02-27 11:22:20', '', '2023-02-27 11:42:59', NULL);
INSERT INTO `gen_table` VALUES (69, 'oa_msg', '消息', NULL, NULL, 'OaMsg', 'crud', 'com.ruoyi.oa', 'oa', 'msg', '消息', 'yepanpan', '0', '/', '{\"parentMenuId\":1374}', 'admin', '2023-02-27 11:22:32', '', '2023-02-27 11:49:29', NULL);
INSERT INTO `gen_table` VALUES (71, 'oa_report', '工作汇报', NULL, NULL, 'OaReport', 'crud', 'com.ruoyi.oa', 'oa', 'report', '工作汇报', 'yepanpan', '0', '/', '{\"parentMenuId\":1374}', 'admin', '2023-02-27 11:22:32', '', '2023-02-27 11:53:47', NULL);
INSERT INTO `gen_table` VALUES (72, 'wechat_content', '内容管理', NULL, NULL, 'WechatContent', 'crud', 'com.ruoyi.wechat', 'wechat', 'content', '内容管理', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1371\"}', 'admin', '2023-02-27 11:22:42', '', '2023-02-27 13:33:16', NULL);
INSERT INTO `gen_table` VALUES (73, 'wechat_menu', '微信菜单', NULL, NULL, 'WechatMenu', 'tree', 'com.ruoyi.wechat', 'wechat', 'menu', '微信菜单', 'yepanpan', '0', '/', '{\"treeCode\":\"id\",\"treeName\":\"name\",\"treeParentCode\":\"pid\",\"parentMenuId\":\"1371\"}', 'admin', '2023-02-27 11:22:42', '', '2023-02-27 13:33:03', NULL);
INSERT INTO `gen_table` VALUES (74, 'wechat_pay', '缴费凭证', NULL, NULL, 'WechatPay', 'crud', 'com.ruoyi.wechat', 'wechat', 'pay', '缴费凭证', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1371\"}', 'admin', '2023-02-27 11:22:42', '', '2023-02-27 13:31:44', NULL);
INSERT INTO `gen_table` VALUES (75, 'wechat_tag', '用户标签', NULL, NULL, 'WechatTag', 'crud', 'com.ruoyi.wechat', 'wechat', 'tag', '用户标签', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1371\"}', 'admin', '2023-02-27 11:22:50', '', '2023-02-27 13:31:32', NULL);
INSERT INTO `gen_table` VALUES (76, 'wechat_user', '用户信息', NULL, NULL, 'WechatUser', 'crud', 'com.ruoyi.wechat', 'wechat', 'user', '用户信息', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1371\"}', 'admin', '2023-02-27 11:22:50', '', '2023-02-27 13:31:20', NULL);
INSERT INTO `gen_table` VALUES (77, 'oa_archive', '文档轮阅', NULL, NULL, 'OaArchive', 'crud', 'com.ruoyi.oa', 'oa', 'archive', '文档轮阅', 'yepanpan', '0', '/', '{\"parentMenuId\":1374}', 'admin', '2023-02-27 14:55:42', '', '2023-02-27 14:58:38', NULL);
INSERT INTO `gen_table` VALUES (78, 'oa_archive_read', '轮阅记录', NULL, NULL, 'OaArchiveRead', 'crud', 'com.ruoyi.oa', 'oa', 'read', '轮阅记录', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1374\"}', 'admin', '2023-02-27 14:55:42', '', '2023-02-27 15:01:08', NULL);
INSERT INTO `gen_table` VALUES (79, 'xdata_client', '应用', NULL, NULL, 'XdataClient', 'crud', 'com.ruoyi.xdata', 'xdata', 'client', '应用', 'yepanpan', '0', '/', '{\"parentMenuId\":1644}', 'admin', '2023-02-27 16:44:31', '', '2023-02-27 16:51:49', NULL);
INSERT INTO `gen_table` VALUES (80, 'xdata_model', '模型', NULL, NULL, 'XdataModel', 'crud', 'com.ruoyi.xdata', 'xdata', 'model', '模型', 'yepanpan', '0', '/', '{\"parentMenuId\":1644}', 'admin', '2023-02-27 16:44:31', '', '2023-02-27 16:52:17', NULL);
INSERT INTO `gen_table` VALUES (81, 'xdata_pipe', '通道', NULL, NULL, 'XdataPipe', 'crud', 'com.ruoyi.xdata', 'xdata', 'pipe', '通道', 'yepanpan', '0', '/', '{\"parentMenuId\":1644}', 'admin', '2023-02-27 16:44:31', '', '2023-02-27 16:54:38', NULL);
INSERT INTO `gen_table` VALUES (82, 'study_option', '试题选项', NULL, NULL, 'StudyOption', 'crud', 'com.ruoyi.study', 'study', 'studyOption', '试题选项', 'yepanpan', '0', '/', '{\"parentMenuId\":1673}', 'admin', '2023-02-28 15:51:35', '', '2023-02-28 16:06:06', NULL);
INSERT INTO `gen_table` VALUES (83, 'study_question', '试题', 'study_option', 'question_id', 'StudyQuestion', 'sub', 'com.ruoyi.study', 'study', 'studyQuestion', '试题', 'yepanpan', '0', '/', '{\"parentMenuId\":\"1673\"}', 'admin', '2023-02-28 15:51:35', '', '2023-02-28 16:07:00', NULL);
INSERT INTO `gen_table` VALUES (84, 'study_resource', '资源', NULL, NULL, 'StudyResource', 'crud', 'com.ruoyi.study', 'study', 'studyRes', '资源', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1673\"}', 'admin', '2023-02-28 15:51:35', '', '2023-02-28 17:03:12', NULL);
INSERT INTO `gen_table` VALUES (85, 'study_subject', '科目', '', '', 'StudySubject', 'tree', 'com.ruoyi.study', 'study', 'studySubject', '科目', 'yepanpan', '0', '/', '{\"treeCode\":\"id\",\"treeName\":\"title\",\"treeParentCode\":\"pid\",\"parentMenuId\":\"1673\"}', 'admin', '2023-02-28 15:51:35', '', '2023-02-28 16:00:57', NULL);
INSERT INTO `gen_table` VALUES (86, 'study_wrong', '错题本', '', '', 'StudyWrong', 'crud', 'com.ruoyi.study', 'study', 'studyWrong', '错题本', 'yepanpan', '0', '/', '{\"parentMenuId\":1673}', 'admin', '2023-02-28 15:51:35', '', '2023-02-28 16:00:43', NULL);
INSERT INTO `gen_table` VALUES (87, 'yun_files', '云盘文件', NULL, NULL, 'YunFiles', 'crud', 'com.ruoyi.study', 'study', 'files', '云盘文件', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1735\"}', 'admin', '2023-02-28 17:18:18', '', '2023-02-28 17:28:19', NULL);
INSERT INTO `gen_table` VALUES (88, 'yun_folder', '云盘目录', NULL, NULL, 'YunFolder', 'crud', 'com.ruoyi.study', 'study', 'folder', '云盘目录', 'ruoyi', '0', '/', '{\"parentMenuId\":1735}', 'admin', '2023-02-28 17:18:18', '', '2023-02-28 17:29:31', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 895 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-15 16:54:08', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (2, '1', 'spec_id', '所属专业', 'int(11)', 'Long', 'specId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-15 16:54:08', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (3, '1', 'code', '班级代码', 'varchar(20)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-15 16:54:08', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (4, '1', 'title', '班级名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-15 16:54:08', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (5, '1', 'start_date', '建班日期', 'date', 'Date', 'startDate', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-02-15 16:54:08', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (6, '1', 'end_date', '毕业日期', 'date', 'Date', 'endDate', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-02-15 16:54:08', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (7, '1', 'master_user', '班主任', 'int(11)', 'Long', 'masterUser', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-02-15 16:54:08', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (8, '1', 'room_id', '固定教室', 'int(11)', 'Long', 'roomId', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2023-02-15 16:54:08', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (9, '1', 'status', '状态', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 9, 'admin', '2023-02-15 16:54:08', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (10, '2', 'id', '自增长主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-15 16:54:08', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (12, '2', 'code', '专业代码', 'varchar(10)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-15 16:54:08', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (13, '2', 'title', '专业名称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-15 16:54:08', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (14, '2', 'start_date', '开设日期', 'date', 'Date', 'startDate', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-02-15 16:54:08', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (15, '2', 'end_date', '禁用日期', 'date', 'Date', 'endDate', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-02-15 16:54:08', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (16, '2', 'master_user', '专业负责人', 'int(11)', 'Long', 'masterUser', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-02-15 16:54:08', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (17, '2', 'is_enroll', '是否招生', 'char(1)', 'String', 'isEnroll', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_yes_no', 8, 'admin', '2023-02-15 16:54:08', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (19, '2', 'status', '状态', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 10, 'admin', '2023-02-15 16:54:08', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (20, '2', 'dept_id', '开设部门', 'int(11)', 'Long', 'deptId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2023-02-21 13:42:35', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (21, '2', 'list_sort', '排序', 'int(11)', 'Long', 'listSort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, '', '2023-02-21 13:42:35', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (22, '2', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, '', '2023-02-21 13:42:35', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (23, '2', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, '', '2023-02-21 13:42:35', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (24, '2', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, '', '2023-02-21 13:42:35', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (25, '2', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, '', '2023-02-21 13:42:35', '', '2023-02-21 13:54:37');
INSERT INTO `gen_table_column` VALUES (26, '1', 'year', '年级', 'int(4)', 'Integer', 'year', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, '', '2023-02-21 13:44:09', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (27, '1', 'period', '学制', 'tinyint(1)', 'Integer', 'period', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, '', '2023-02-21 13:44:09', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (28, '1', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, '', '2023-02-21 13:44:09', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (29, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, '', '2023-02-21 13:44:09', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (30, '1', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 14, '', '2023-02-21 13:44:09', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (31, '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, '', '2023-02-21 13:44:09', '', '2023-04-15 13:46:04');
INSERT INTO `gen_table_column` VALUES (32, '3', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 13:54:50');
INSERT INTO `gen_table_column` VALUES (33, '3', 'code', '代码', 'varchar(20)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 13:54:50');
INSERT INTO `gen_table_column` VALUES (34, '3', 'title', '名称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 13:54:50');
INSERT INTO `gen_table_column` VALUES (35, '3', 'type', '类型', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 13:54:50');
INSERT INTO `gen_table_column` VALUES (36, '3', 'start_date', '启用日期', 'date', 'Date', 'startDate', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 13:54:50');
INSERT INTO `gen_table_column` VALUES (37, '3', 'end_date', '停用日期', 'date', 'Date', 'endDate', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 13:54:50');
INSERT INTO `gen_table_column` VALUES (38, '3', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 7, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 13:54:50');
INSERT INTO `gen_table_column` VALUES (39, '4', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (40, '4', 'title', '企业名称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (41, '4', 'industry', '产业类型', 'varchar(10)', 'String', 'industry', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'industry_type', 3, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (42, '4', 'type', '企业类型', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'company_type', 4, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (43, '4', 'linkman', '联系人', 'varchar(50)', 'String', 'linkman', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (44, '4', 'phone', '电话', 'varchar(50)', 'String', 'phone', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (45, '4', 'email', '邮箱', 'varchar(50)', 'String', 'email', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (46, '4', 'area', '所在地区', 'varchar(10)', 'String', 'area', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (47, '4', 'address', '地址', 'varchar(200)', 'String', 'address', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (48, '4', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 10, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (49, '4', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (50, '4', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (51, '4', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (52, '4', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:06:25');
INSERT INTO `gen_table_column` VALUES (53, '5', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:08:11');
INSERT INTO `gen_table_column` VALUES (54, '5', 'dept_id', '开设部门', 'int(11)', 'Long', 'deptId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:08:11');
INSERT INTO `gen_table_column` VALUES (55, '5', 'title', '课程名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:08:11');
INSERT INTO `gen_table_column` VALUES (56, '5', 'code', '课程代码', 'varchar(10)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:08:11');
INSERT INTO `gen_table_column` VALUES (57, '5', 'sname', '简称', 'varchar(50)', 'String', 'sname', '0', '0', '1', '1', '1', '1', NULL, 'LIKE', 'input', '', 5, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:08:11');
INSERT INTO `gen_table_column` VALUES (58, '5', 'type', '课程类型', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'course_type', 6, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:08:11');
INSERT INTO `gen_table_column` VALUES (59, '5', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:08:11');
INSERT INTO `gen_table_column` VALUES (60, '5', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:08:11');
INSERT INTO `gen_table_column` VALUES (61, '5', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:08:11');
INSERT INTO `gen_table_column` VALUES (62, '5', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:08:11');
INSERT INTO `gen_table_column` VALUES (63, '5', 'credit', '学分', 'int(2)', 'Integer', 'credit', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:08:11');
INSERT INTO `gen_table_column` VALUES (64, '5', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 12, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:08:11');
INSERT INTO `gen_table_column` VALUES (65, '6', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (66, '6', 'pid', '上级部门', 'int(11)', 'Long', 'pid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (67, '6', 'type', '部门类型', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (68, '6', 'code', '部门代码', 'varchar(50)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (69, '6', 'title', '部门名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (70, '6', 'start_date', '建立日期', 'date', 'Date', 'startDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (71, '6', 'end_date', '禁用日期', 'date', 'Date', 'endDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (72, '6', 'master_user', '负责人', 'int(11)', 'Long', 'masterUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (73, '6', 'list_sort', '排序', 'int(11)', 'Long', 'listSort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (74, '6', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 10, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (75, '6', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (76, '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (77, '6', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (78, '6', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2023-02-21 13:45:17', '', NULL);
INSERT INTO `gen_table_column` VALUES (79, '7', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:11:02');
INSERT INTO `gen_table_column` VALUES (80, '7', 'course_id', '适用课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:11:02');
INSERT INTO `gen_table_column` VALUES (81, '7', 'title', '教材名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:11:02');
INSERT INTO `gen_table_column` VALUES (82, '7', 'sname', '简称', 'varchar(50)', 'String', 'sname', '0', '0', '1', '1', '1', '1', NULL, 'LIKE', 'input', '', 4, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:11:02');
INSERT INTO `gen_table_column` VALUES (83, '7', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:11:02');
INSERT INTO `gen_table_column` VALUES (84, '7', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:11:02');
INSERT INTO `gen_table_column` VALUES (85, '7', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-02-21 13:45:17', '', '2023-02-21 14:11:02');
INSERT INTO `gen_table_column` VALUES (86, '7', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:11:02');
INSERT INTO `gen_table_column` VALUES (87, '7', 'total', '库存数量', 'int(11)', 'Long', 'total', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:11:02');
INSERT INTO `gen_table_column` VALUES (88, '7', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 10, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:11:02');
INSERT INTO `gen_table_column` VALUES (89, '8', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 17:11:44');
INSERT INTO `gen_table_column` VALUES (90, '8', 'build_id', '楼宇', 'int(11)', 'Long', 'buildId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 17:11:44');
INSERT INTO `gen_table_column` VALUES (91, '8', 'code', '代码', 'varchar(20)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 17:11:44');
INSERT INTO `gen_table_column` VALUES (92, '8', 'title', '名称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 17:11:44');
INSERT INTO `gen_table_column` VALUES (93, '8', 'type', '用途', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'room_use', 5, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 17:11:44');
INSERT INTO `gen_table_column` VALUES (94, '8', 'start_date', '启用日期', 'date', 'Date', 'startDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 17:11:44');
INSERT INTO `gen_table_column` VALUES (95, '8', 'end_date', '停用日期', 'date', 'Date', 'endDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 17:11:44');
INSERT INTO `gen_table_column` VALUES (96, '8', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 8, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 17:11:44');
INSERT INTO `gen_table_column` VALUES (97, '9', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 13:45:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (98, '9', 'title', '学校名称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 13:45:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (99, '9', 'code', '学校代码', 'varchar(20)', 'String', 'code', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 13:45:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (100, '9', 'type', '学校类型', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2023-02-21 13:45:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (101, '9', 'start_date', '建校日期', 'date', 'Date', 'startDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-02-21 13:45:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (102, '9', 'phone', '电话', 'varchar(50)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-02-21 13:45:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (103, '9', 'email', '邮箱', 'varchar(50)', 'String', 'email', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-21 13:45:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (104, '9', 'area', '所在地区', 'varchar(10)', 'String', 'area', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-02-21 13:45:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (105, '9', 'address', '地址', 'varchar(200)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-02-21 13:45:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (106, '9', 'description', '学校简介', 'text', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-02-21 13:45:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (107, '10', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 15:25:33');
INSERT INTO `gen_table_column` VALUES (108, '10', 'code', '代码', 'varchar(10)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 15:25:33');
INSERT INTO `gen_table_column` VALUES (109, '10', 'title', '标题', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 15:25:33');
INSERT INTO `gen_table_column` VALUES (113, '10', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 7, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 15:25:33');
INSERT INTO `gen_table_column` VALUES (114, '11', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 15:09:27');
INSERT INTO `gen_table_column` VALUES (115, '11', 'code', '代码', 'varchar(20)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 15:09:27');
INSERT INTO `gen_table_column` VALUES (116, '11', 'title', '名称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 15:09:27');
INSERT INTO `gen_table_column` VALUES (117, '11', 'year', '年度', 'int(4)', 'Integer', 'year', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 15:09:27');
INSERT INTO `gen_table_column` VALUES (118, '11', 'start_date', '开始日期', 'date', 'Date', 'startDate', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 15:09:27');
INSERT INTO `gen_table_column` VALUES (119, '11', 'end_date', '结束日期', 'date', 'Date', 'endDate', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 15:09:27');
INSERT INTO `gen_table_column` VALUES (120, '11', 'is_current', '是否当前', 'varchar(1)', 'String', 'isCurrent', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'radio', 'sys_yes_no', 7, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 15:09:27');
INSERT INTO `gen_table_column` VALUES (121, '11', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_common_status', 8, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 15:09:27');
INSERT INTO `gen_table_column` VALUES (122, '12', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (123, '12', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (124, '12', 'year', '年级', 'int(4)', 'Integer', 'year', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (125, '12', 'code', '学号', 'varchar(50)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (126, '12', 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (127, '12', 'sex', '性别', 'varchar(1)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sys_user_sex', 6, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (128, '12', 'birthday', '出生日期', 'date', 'Date', 'birthday', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (129, '12', 'idcard', '身份证件号', 'varchar(50)', 'String', 'idcard', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (130, '12', 'mobile', '手机号', 'varchar(50)', 'String', 'mobile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (131, '12', 'email', '邮箱', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (132, '12', 'nation', '民族', 'varchar(50)', 'String', 'nation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (133, '12', 'is_lodge', '是否住校', 'varchar(1)', 'String', 'isLodge', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_yes_no', 12, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (134, '12', 'type', '类别', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'student_type', 13, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (135, '12', 'user_id', '用户ID', 'int(11)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (136, '12', 'room_id', '宿舍', 'int(11)', 'Long', 'roomId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (137, '12', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 16, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (138, '13', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:21:26');
INSERT INTO `gen_table_column` VALUES (139, '13', 'dept_id', '所属部门', 'int(11)', 'Long', 'deptId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (140, '13', 'code', '工号', 'varchar(50)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 13:45:18', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (141, '13', 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (142, '13', 'type', '类型', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'teacher_type', 5, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (143, '13', 'sex', '性别', 'varchar(1)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sys_user_sex', 6, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (144, '13', 'birthday', '出生日期', 'date', 'Date', 'birthday', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (145, '13', 'education', '学历', 'varchar(1)', 'String', 'education', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'base_education', 8, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (146, '13', 'degree', '学位', 'varchar(1)', 'String', 'degree', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'base_degree', 9, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (147, '13', 'idcard', '身份证件号', 'varchar(50)', 'String', 'idcard', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (148, '13', 'phone', '电话', 'varchar(50)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (149, '13', 'email', '邮箱', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 12, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (150, '13', 'address', '住址', 'varchar(200)', 'String', 'address', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 13, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (151, '13', 'start_date', '入校日期', 'date', 'Date', 'startDate', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'datetime', '', 14, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (152, '13', 'end_date', '离校日期', 'date', 'Date', 'endDate', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 15, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (153, '13', 'user_id', '用户ID', 'int(11)', 'Long', 'userId', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (154, '13', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 17, 'admin', '2023-02-21 13:45:24', '', '2023-02-21 14:30:41');
INSERT INTO `gen_table_column` VALUES (155, '10', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 4, '', '2023-02-21 15:25:12', '', '2023-02-21 15:25:33');
INSERT INTO `gen_table_column` VALUES (156, '10', 'duration', '总学时', 'int(11)', 'Long', 'duration', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, '', '2023-02-21 15:25:12', '', '2023-02-21 15:25:33');
INSERT INTO `gen_table_column` VALUES (157, '14', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:12:24');
INSERT INTO `gen_table_column` VALUES (158, '14', 'from_detail_id', '原上课情况', 'int(11)', 'Long', 'fromDetailId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:12:24');
INSERT INTO `gen_table_column` VALUES (159, '14', 'to_detail_id', '新上课情况', 'int(11)', 'Long', 'toDetailId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:12:24');
INSERT INTO `gen_table_column` VALUES (160, '14', 'from_date', '原上课日期', 'int(11)', 'Long', 'fromDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:12:24');
INSERT INTO `gen_table_column` VALUES (161, '14', 'to_date', '新上课日期', 'int(11)', 'Long', 'toDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:12:24');
INSERT INTO `gen_table_column` VALUES (162, '14', 'add_time', '添加时间', 'datetime', 'Date', 'addTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:12:24');
INSERT INTO `gen_table_column` VALUES (163, '14', 'add_user', '添加人', 'int(11)', 'Long', 'addUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:12:24');
INSERT INTO `gen_table_column` VALUES (164, '15', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:05:26');
INSERT INTO `gen_table_column` VALUES (165, '15', 'sem_id', '学期', 'int(11)', 'Long', 'semId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:05:26');
INSERT INTO `gen_table_column` VALUES (166, '15', 'spec_id', '专业', 'int(11)', 'Long', 'specId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:05:26');
INSERT INTO `gen_table_column` VALUES (167, '15', 'course_id', '课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:05:26');
INSERT INTO `gen_table_column` VALUES (168, '15', 'score', '学分', 'float(10,2)', 'BigDecimal', 'score', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:05:26');
INSERT INTO `gen_table_column` VALUES (169, '15', 'add_time', '添加时间', 'datetime', 'Date', 'addTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:05:26');
INSERT INTO `gen_table_column` VALUES (170, '15', 'add_user', '添加人', 'int(11)', 'Long', 'addUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:05:26');
INSERT INTO `gen_table_column` VALUES (171, '15', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:05:26');
INSERT INTO `gen_table_column` VALUES (172, '15', 'update_user', '更新人', 'int(11)', 'Long', 'updateUser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:05:26');
INSERT INTO `gen_table_column` VALUES (173, '16', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:05:26');
INSERT INTO `gen_table_column` VALUES (174, '16', 'task_id', '学期', 'int(11)', 'Long', 'taskId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 14:13:25');
INSERT INTO `gen_table_column` VALUES (175, '16', 'spec_id', '专业', 'int(11)', 'Long', 'specId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 14:13:25');
INSERT INTO `gen_table_column` VALUES (176, '16', 'course_id', '课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 14:13:25');
INSERT INTO `gen_table_column` VALUES (177, '16', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 14:13:25');
INSERT INTO `gen_table_column` VALUES (178, '16', 'teacher_id', '教师', 'int(11)', 'Long', 'teacherId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 14:13:25');
INSERT INTO `gen_table_column` VALUES (179, '16', 'room_id', '教室', 'int(11)', 'Long', 'roomId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 14:13:25');
INSERT INTO `gen_table_column` VALUES (180, '16', 'week', '周几', 'int(11)', 'Long', 'week', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 14:13:25');
INSERT INTO `gen_table_column` VALUES (181, '16', 'section_id', '节次', 'int(11)', 'Long', 'sectionId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 14:13:25');
INSERT INTO `gen_table_column` VALUES (182, '17', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:06:01');
INSERT INTO `gen_table_column` VALUES (183, '17', 'year', '年级', 'int(11)', 'Long', 'year', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:06:01');
INSERT INTO `gen_table_column` VALUES (184, '17', 'spec_id', '专业', 'int(11)', 'Long', 'specId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:06:01');
INSERT INTO `gen_table_column` VALUES (185, '17', 'period', '学制', 'tinyint(1)', 'Integer', 'period', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:06:01');
INSERT INTO `gen_table_column` VALUES (186, '17', 'total', '招生人数', 'tinyint(4)', 'Integer', 'total', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:06:01');
INSERT INTO `gen_table_column` VALUES (187, '17', 'content', '方案说明', 'varchar(200)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:06:01');
INSERT INTO `gen_table_column` VALUES (188, '17', 'score', '总学分', 'float(10,2)', 'BigDecimal', 'score', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:06:01');
INSERT INTO `gen_table_column` VALUES (191, '17', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:06:01');
INSERT INTO `gen_table_column` VALUES (193, '18', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:13:04');
INSERT INTO `gen_table_column` VALUES (194, '18', 'task_id', '教学任务', 'int(11)', 'Long', 'taskId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:13:04');
INSERT INTO `gen_table_column` VALUES (195, '18', 'student_id', '学生', 'int(11)', 'Long', 'studentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:13:04');
INSERT INTO `gen_table_column` VALUES (196, '18', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:13:04');
INSERT INTO `gen_table_column` VALUES (197, '18', 'course_id', '课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:13:04');
INSERT INTO `gen_table_column` VALUES (198, '19', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (199, '19', 'sem_id', '学期', 'int(11)', 'Long', 'semId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (200, '19', 'spec_id', '专业', 'int(11)', 'Long', 'specId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (201, '19', 'course_id', '课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (202, '19', 'mode', '教学形式', 'varchar(1)', 'String', 'mode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'education_mode', 5, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (203, '19', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (204, '19', 'teacher_id', '教师', 'int(11)', 'Long', 'teacherId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (205, '19', 'exam', '考核类型', 'varchar(1)', 'String', 'exam', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'exam_type', 8, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (206, '19', 'result', '成绩设置', 'varchar(200)', 'String', 'result', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 9, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (207, '19', 'material_id', '教材', 'int(11)', 'Long', 'materialId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (208, '19', 'room_id', '教室', 'int(11)', 'Long', 'roomId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (209, '19', 'score', '学分', 'float(10,2)', 'BigDecimal', 'score', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (210, '19', 'periods', '学时', 'int(11)', 'Long', 'periods', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (211, '19', 'start_week', '开始周', 'int(11)', 'Long', 'startWeek', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (212, '19', 'end_week', '结束周', 'int(11)', 'Long', 'endWeek', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (213, '19', 'add_time', '添加时间', 'datetime', 'Date', 'addTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 16, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (214, '19', 'add_user', '添加人', 'int(11)', 'Long', 'addUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (215, '19', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (216, '19', 'update_user', '更新人', 'int(11)', 'Long', 'updateUser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (217, '19', 'status', '确认状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_yes_no', 20, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:10:40');
INSERT INTO `gen_table_column` VALUES (218, '20', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:26:29');
INSERT INTO `gen_table_column` VALUES (219, '20', 'pid', '上级', 'int(11)', 'Long', 'pid', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:26:29');
INSERT INTO `gen_table_column` VALUES (220, '20', 'title', '指标名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:26:29');
INSERT INTO `gen_table_column` VALUES (221, '20', 'list_sort', '排序', 'int(11)', 'Long', 'listSort', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:26:29');
INSERT INTO `gen_table_column` VALUES (222, '20', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'radio', 'sys_common_status', 5, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:26:29');
INSERT INTO `gen_table_column` VALUES (223, '20', 'score', '分数', 'float(10,2)', 'BigDecimal', 'score', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:26:29');
INSERT INTO `gen_table_column` VALUES (224, '20', 'min', '最低分', 'float(10,2)', 'BigDecimal', 'min', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:26:29');
INSERT INTO `gen_table_column` VALUES (225, '20', 'max', '最高分', 'float(10,2)', 'BigDecimal', 'max', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:26:29');
INSERT INTO `gen_table_column` VALUES (226, '21', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:26:29');
INSERT INTO `gen_table_column` VALUES (227, '21', 'sem_id', '学期', 'int(11)', 'Long', 'semId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:15');
INSERT INTO `gen_table_column` VALUES (228, '21', 'class_id', '班级', 'varchar(100)', 'String', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:15');
INSERT INTO `gen_table_column` VALUES (229, '21', 'start_time', '开始使用时间', 'datetime', 'Date', 'startTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:15');
INSERT INTO `gen_table_column` VALUES (230, '21', 'end_time', '结束使用时间', 'datetime', 'Date', 'endTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:15');
INSERT INTO `gen_table_column` VALUES (231, '21', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 6, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:15');
INSERT INTO `gen_table_column` VALUES (232, '22', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:41');
INSERT INTO `gen_table_column` VALUES (233, '22', 'sem_id', '学期', 'int(11)', 'Long', 'semId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:41');
INSERT INTO `gen_table_column` VALUES (234, '22', 'class_id', '班级', 'varchar(100)', 'String', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:41');
INSERT INTO `gen_table_column` VALUES (235, '22', 'teacher_id', '教师', 'int(11)', 'Long', 'teacherId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:41');
INSERT INTO `gen_table_column` VALUES (236, '22', 'course_id', '课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:41');
INSERT INTO `gen_table_column` VALUES (237, '22', 'student_id', '学生', 'int(11)', 'Long', 'studentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:41');
INSERT INTO `gen_table_column` VALUES (238, '22', 'score', '打分', 'float(10,2)', 'BigDecimal', 'score', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:41');
INSERT INTO `gen_table_column` VALUES (239, '22', 'add_user', '学生', 'int(11)', 'Long', 'addUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:41');
INSERT INTO `gen_table_column` VALUES (240, '22', 'add_time', '记录时间', 'datetime', 'Date', 'addTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 16:27:41');
INSERT INTO `gen_table_column` VALUES (241, '23', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 15:39:49');
INSERT INTO `gen_table_column` VALUES (242, '23', 'stu_id', '学生', 'int(11)', 'Long', 'stuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:27:49', '', '2023-02-21 15:39:49');
INSERT INTO `gen_table_column` VALUES (243, '23', 'class_id', '原班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:49');
INSERT INTO `gen_table_column` VALUES (244, '23', 'type', '异动类型', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'change_type', 4, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:49');
INSERT INTO `gen_table_column` VALUES (245, '23', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:49');
INSERT INTO `gen_table_column` VALUES (246, '23', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:49');
INSERT INTO `gen_table_column` VALUES (247, '23', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:49');
INSERT INTO `gen_table_column` VALUES (248, '23', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:49');
INSERT INTO `gen_table_column` VALUES (249, '23', 'new_class', '新班级', 'int(11)', 'Long', 'newClass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:49');
INSERT INTO `gen_table_column` VALUES (250, '23', 'is_recover', '是否恢复', 'varchar(1)', 'String', 'isRecover', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_yes_no', 10, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:49');
INSERT INTO `gen_table_column` VALUES (251, '24', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:42:36');
INSERT INTO `gen_table_column` VALUES (252, '24', 'stu_id', '学生', 'int(11)', 'Long', 'stuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:42:36');
INSERT INTO `gen_table_column` VALUES (253, '24', 'room_id', '宿舍', 'int(11)', 'Long', 'roomId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:42:36');
INSERT INTO `gen_table_column` VALUES (254, '24', 'check_date', '考勤日期', 'date', 'Date', 'checkDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:42:36');
INSERT INTO `gen_table_column` VALUES (255, '24', 'add_user', '操作人', 'int(11)', 'Long', 'addUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:42:36');
INSERT INTO `gen_table_column` VALUES (256, '24', 'add_time', '操作时间', 'datetime', 'Date', 'addTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:42:36');
INSERT INTO `gen_table_column` VALUES (257, '24', 'type', '考勤类型', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'dorm_check_type', 7, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:42:36');
INSERT INTO `gen_table_column` VALUES (258, '24', 'comment', '说明', 'varchar(200)', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:42:36');
INSERT INTO `gen_table_column` VALUES (259, '25', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (260, '25', 'stu_id', '学生', 'int(11)', 'Long', 'stuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (261, '25', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (262, '25', 'bzr_user', '班主任', 'int(11)', 'String', 'bzrUser', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (263, '25', 'bzr_time', '班主任操作时间', 'datetime', 'Date', 'bzrTime', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (264, '25', 'bzr_check', '班审核状态', 'varchar(1)', 'String', 'bzrCheck', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'check_status', 6, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (265, '25', 'cwc_user', '财务', 'int(11)', 'String', 'cwcUser', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (266, '25', 'cwc_time', '财务操作时间', 'datetime', 'Date', 'cwcTime', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (267, '25', 'cwc_check', '财务审核状态', 'varchar(1)', 'String', 'cwcCheck', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'check_status', 9, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (268, '25', 'xsc_user', '学生处', 'int(11)', 'String', 'xscUser', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (269, '25', 'xsc_time', '学生处操作时间', 'datetime', 'Date', 'xscTime', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'datetime', '', 11, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (270, '25', 'xsc_check', '学生处审核状态', 'varchar(1)', 'String', 'xscCheck', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'check_status', 12, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (271, '25', 'type', '毕业类型', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'graduation_type', 13, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (272, '25', 'area', '就业城市', 'varchar(10)', 'String', 'area', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 14, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (273, '25', 'company', '企业', 'varchar(50)', 'String', 'company', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 15, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (274, '25', 'pay', '薪资', 'float(10,2)', 'BigDecimal', 'pay', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 16, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (275, '25', 'contract_date', '合同日期', 'date', 'Date', 'contractDate', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'datetime', '', 17, 'admin', '2023-02-21 15:30:41', '', '2023-02-22 18:16:03');
INSERT INTO `gen_table_column` VALUES (276, '26', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:29');
INSERT INTO `gen_table_column` VALUES (277, '26', 'stu_id', '学生', 'int(11)', 'Long', 'stuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:29');
INSERT INTO `gen_table_column` VALUES (278, '26', 'jtzz', '家庭住址', 'varchar(255)', 'String', 'jtzz', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:29');
INSERT INTO `gen_table_column` VALUES (279, '26', 'jzxm', '家长姓名', 'varchar(50)', 'String', 'jzxm', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:29');
INSERT INTO `gen_table_column` VALUES (280, '26', 'jzdh', '家长电话', 'varchar(1)', 'String', 'jzdh', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:29');
INSERT INTO `gen_table_column` VALUES (281, '26', 'hjlx', '户籍类型', 'varchar(1)', 'String', 'hjlx', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:29');
INSERT INTO `gen_table_column` VALUES (282, '26', 'zzmm', '政治面貌', 'varchar(1)', 'String', 'zzmm', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:29');
INSERT INTO `gen_table_column` VALUES (283, '26', 'jg', '籍贯', 'varchar(20)', 'String', 'jg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:29');
INSERT INTO `gen_table_column` VALUES (284, '26', 'bmfs', '报名方式', 'varchar(1)', 'String', 'bmfs', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:29');
INSERT INTO `gen_table_column` VALUES (285, '26', 'sfdb', '是否低保', 'varchar(1)', 'String', 'sfdb', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_yes_no', 10, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:29');
INSERT INTO `gen_table_column` VALUES (286, '26', 'jkzk', '健康状况', 'varchar(1)', 'String', 'jkzk', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-02-21 15:30:41', '', '2023-02-21 15:39:29');
INSERT INTO `gen_table_column` VALUES (287, '17', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, '', '2023-02-21 16:03:58', '', '2023-02-21 16:06:01');
INSERT INTO `gen_table_column` VALUES (288, '17', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, '', '2023-02-21 16:03:58', '', '2023-02-21 16:06:01');
INSERT INTO `gen_table_column` VALUES (289, '17', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 10, '', '2023-02-21 16:03:58', '', '2023-02-21 16:06:01');
INSERT INTO `gen_table_column` VALUES (290, '27', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 16:30:16', '', '2023-02-21 16:30:48');
INSERT INTO `gen_table_column` VALUES (291, '27', 'sem_id', '学期', 'int(11)', 'Long', 'semId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 16:30:16', '', '2023-02-21 16:30:48');
INSERT INTO `gen_table_column` VALUES (292, '27', 'teacher_id', '教师', 'int(11)', 'Long', 'teacherId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 16:30:16', '', '2023-02-21 16:30:48');
INSERT INTO `gen_table_column` VALUES (293, '27', 'score', '打分', 'float(10,2)', 'BigDecimal', 'score', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 16:30:16', '', '2023-02-21 16:30:48');
INSERT INTO `gen_table_column` VALUES (294, '28', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 16:30:48');
INSERT INTO `gen_table_column` VALUES (295, '28', 'stu_id', '学生', 'int(11)', 'Long', 'stuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 16:30:48');
INSERT INTO `gen_table_column` VALUES (296, '28', 'company_id', '企业', 'int(11)', 'Long', 'companyId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 16:30:48');
INSERT INTO `gen_table_column` VALUES (297, '28', 'check_date', '考勤日期', 'date', 'Date', 'checkDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 16:30:48');
INSERT INTO `gen_table_column` VALUES (300, '28', 'type', '考勤类型', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'check_type', 7, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 16:30:48');
INSERT INTO `gen_table_column` VALUES (301, '28', 'comment', '说明', 'varchar(200)', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 16:30:48');
INSERT INTO `gen_table_column` VALUES (302, '29', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 17:05:17');
INSERT INTO `gen_table_column` VALUES (303, '29', 'stu_id', '学生', 'int(11)', 'Long', 'stuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 17:05:17');
INSERT INTO `gen_table_column` VALUES (304, '29', 'company_id', '企业', 'int(11)', 'Long', 'companyId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 17:05:17');
INSERT INTO `gen_table_column` VALUES (305, '29', 'post', '岗位', 'varchar(50)', 'String', 'post', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 17:05:17');
INSERT INTO `gen_table_column` VALUES (306, '29', 'start_date', '开始日期', 'date', 'Date', 'startDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 17:05:17');
INSERT INTO `gen_table_column` VALUES (307, '29', 'end_date', '结束日期', 'date', 'Date', 'endDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 17:05:17');
INSERT INTO `gen_table_column` VALUES (308, '29', 'add_user', '安排人', 'int(11)', 'Long', 'addUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 17:05:17');
INSERT INTO `gen_table_column` VALUES (309, '29', 'add_time', '安排时间', 'datetime', 'Date', 'addTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 17:05:17');
INSERT INTO `gen_table_column` VALUES (310, '29', 'content', '实习内容', 'varchar(200)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', 9, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 17:05:17');
INSERT INTO `gen_table_column` VALUES (311, '29', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'practice_status', 10, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 17:05:17');
INSERT INTO `gen_table_column` VALUES (312, '29', 'score', '实习成绩', 'float(10,2)', 'BigDecimal', 'score', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-02-21 16:57:22', '', '2023-02-21 17:05:17');
INSERT INTO `gen_table_column` VALUES (313, '30', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 16:57:42', '', '2023-02-21 17:00:15');
INSERT INTO `gen_table_column` VALUES (314, '30', 'stu_id', '学生', 'int(11)', 'Long', 'stuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 16:57:42', '', '2023-02-21 17:00:15');
INSERT INTO `gen_table_column` VALUES (315, '30', 'company_id', '企业', 'int(11)', 'Long', 'companyId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 16:57:42', '', '2023-02-21 17:00:15');
INSERT INTO `gen_table_column` VALUES (316, '30', 'content', '内容', 'tinytext', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2023-02-21 16:57:42', '', '2023-02-21 17:00:15');
INSERT INTO `gen_table_column` VALUES (317, '30', 'add_time', '操作时间', 'datetime', 'Date', 'addTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-02-21 16:57:42', '', '2023-02-21 17:00:15');
INSERT INTO `gen_table_column` VALUES (318, '30', 'file_id', '附件', 'int(11)', 'Long', 'fileId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-02-21 16:57:42', '', '2023-02-21 17:00:15');
INSERT INTO `gen_table_column` VALUES (319, '31', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 16:57:42', '', '2023-02-21 17:19:23');
INSERT INTO `gen_table_column` VALUES (320, '31', 'sem_id', '学期', 'int(11)', 'Long', 'semId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 16:57:42', '', '2023-02-21 17:19:23');
INSERT INTO `gen_table_column` VALUES (321, '31', 'teacher_id', '老师', 'int(11)', 'Long', 'teacherId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:19:23');
INSERT INTO `gen_table_column` VALUES (322, '31', 'course_id', '课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:19:23');
INSERT INTO `gen_table_column` VALUES (323, '31', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:19:23');
INSERT INTO `gen_table_column` VALUES (324, '31', 'accident_date', '日期', 'date', 'Date', 'accidentDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:19:23');
INSERT INTO `gen_table_column` VALUES (325, '31', 'section', '节次', 'int(11)', 'Long', 'section', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:19:23');
INSERT INTO `gen_table_column` VALUES (326, '31', 'type', '事故类型', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'accident_type', 8, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:19:23');
INSERT INTO `gen_table_column` VALUES (327, '31', 'comment', '事故说明', 'text', 'String', 'comment', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 9, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:19:23');
INSERT INTO `gen_table_column` VALUES (328, '32', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:17:13');
INSERT INTO `gen_table_column` VALUES (329, '32', 'sem_id', '学期', 'int(11)', 'Long', 'semId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:17:13');
INSERT INTO `gen_table_column` VALUES (330, '32', 'teacher_id', '老师', 'int(11)', 'Long', 'teacherId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:17:13');
INSERT INTO `gen_table_column` VALUES (331, '32', 'course_id', '课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:17:13');
INSERT INTO `gen_table_column` VALUES (332, '32', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:17:13');
INSERT INTO `gen_table_column` VALUES (333, '32', 'student_id', '学生', 'int(11)', 'Long', 'studentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:17:13');
INSERT INTO `gen_table_column` VALUES (334, '32', 'check_date', '日期', 'date', 'Date', 'checkDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:17:13');
INSERT INTO `gen_table_column` VALUES (335, '32', 'section', '节次', 'int(11)', 'Long', 'section', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:17:13');
INSERT INTO `gen_table_column` VALUES (336, '32', 'type', '考勤类型', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'check_type', 9, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:17:13');
INSERT INTO `gen_table_column` VALUES (337, '32', 'comment', '考勤说明', 'text', 'String', 'comment', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'textarea', '', 10, 'admin', '2023-02-21 17:14:22', '', '2023-02-21 17:17:13');
INSERT INTO `gen_table_column` VALUES (338, '33', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 17:14:22', '', '2023-02-22 14:51:25');
INSERT INTO `gen_table_column` VALUES (339, '33', 'sem_id', '学期', 'int(11)', 'Long', 'semId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 17:14:22', '', '2023-02-22 14:51:25');
INSERT INTO `gen_table_column` VALUES (340, '33', 'spec_id', '专业', 'int(11)', 'Long', 'specId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 17:14:22', '', '2023-02-22 14:51:25');
INSERT INTO `gen_table_column` VALUES (341, '33', 'course_id', '课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 17:14:22', '', '2023-02-22 14:51:25');
INSERT INTO `gen_table_column` VALUES (342, '33', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 17:14:22', '', '2023-02-22 14:51:25');
INSERT INTO `gen_table_column` VALUES (345, '34', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (347, '34', 'sem_id', '学期', 'int(11)', 'Long', 'semId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (348, '34', 'teacher_id', '申请人', 'int(11)', 'Long', 'teacherId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (349, '34', 'start_time', '开始使用时间', 'datetime', 'Date', 'startTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (350, '34', 'end_time', '结束使用时间', 'datetime', 'Date', 'endTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (351, '34', 'time_long', '使用时长', 'int(11)', 'Long', 'timeLong', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (352, '34', 'students', '使用学生数', 'int(11)', 'Long', 'students', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (353, '34', 'add_user', '记录人', 'int(11)', 'Long', 'addUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (354, '34', 'add_time', '记录时间', 'datetime', 'Date', 'addTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (355, '34', 'update_user', '审核人', 'int(11)', 'Long', 'updateUser', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (356, '34', 'update_time', '审核时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (357, '34', 'check_status', '审核状态', 'varchar(1)', 'String', 'checkStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'check_status', 13, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (358, '34', 'comment', '申请说明', 'text', 'String', 'comment', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 14, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (359, '34', 'file_id', '附件资料', 'int(11)', 'Long', 'fileId', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 15, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (360, '35', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (361, '35', 'build_id', '楼宇', 'int(11)', 'Long', 'buildId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (362, '35', 'room_id', '房间', 'int(11)', 'Long', 'roomId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (363, '35', 'status', '状态', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (364, '35', 'comment', '说明', 'int(11)', 'Long', 'comment', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'textarea', '', 5, 'admin', '2023-02-21 17:20:55', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (365, '35', 'title', '实验室名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, '', '2023-02-21 17:23:28', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (366, '34', 'lab_id', '实验室', 'int(11)', 'Long', 'labId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2023-02-21 17:25:52', '', '2023-02-21 17:26:00');
INSERT INTO `gen_table_column` VALUES (367, '36', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 17:27:30', '', '2023-02-21 11:42:18');
INSERT INTO `gen_table_column` VALUES (384, '38', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 17:27:31', '', '2023-02-22 11:42:38');
INSERT INTO `gen_table_column` VALUES (401, '40', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (402, '40', 'sem_id', '学期', 'int(11)', 'Long', 'semId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (403, '40', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (404, '40', 'student_id', '课程', 'int(11)', 'Long', 'studentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (405, '40', 'course_id', '课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (406, '40', 'result1', '成绩1', 'float(10,2)', 'BigDecimal', 'result1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (407, '40', 'result2', '成绩2', 'float(10,3)', 'BigDecimal', 'result2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (408, '40', 'result3', '成绩3', 'float(10,4)', 'BigDecimal', 'result3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (409, '40', 'result4', '成绩4', 'float(10,5)', 'BigDecimal', 'result4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (410, '40', 'result5', '成绩5', 'float(10,6)', 'BigDecimal', 'result5', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (411, '40', 'makeup_result', '补考成绩', 'float(10,6)', 'BigDecimal', 'makeupResult', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (412, '40', 'final_result', '清考成绩', 'float(10,6)', 'BigDecimal', 'finalResult', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (413, '40', 'total_result', '总评成绩', 'float(10,2)', 'BigDecimal', 'totalResult', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (414, '40', 'level', '成绩级别', 'varchar(1)', 'String', 'level', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'result_level', 14, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (415, '40', 'type', '考核类型', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'exam_type', 15, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (416, '40', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (417, '40', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 17, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (418, '40', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 18, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (419, '40', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 19, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (420, '40', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 20, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:34:35');
INSERT INTO `gen_table_column` VALUES (421, '41', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (422, '41', 'title', '考试名称', 'int(11)', 'Long', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (423, '41', 'start_time', '开始时间', 'datetime', 'Date', 'startTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (424, '41', 'end_time', '结束时间', 'datetime', 'Date', 'endTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (425, '41', 'sem_id', '学期', 'int(11)', 'Long', 'semId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (426, '41', 'spec_id', '专业', 'int(11)', 'Long', 'specId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (427, '41', 'course_id', '课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (428, '41', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (429, '41', 'teacher_id', '监考', 'int(11)', 'Long', 'teacherId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (430, '41', 'room_id', '教室', 'int(11)', 'Long', 'roomId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (432, '41', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (433, '41', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (434, '41', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (435, '41', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (436, '41', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 16, 'admin', '2023-02-21 17:27:31', '', '2023-02-21 17:29:05');
INSERT INTO `gen_table_column` VALUES (437, '2', 'period', '学制', 'tinyint(1)', 'Integer', 'period', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '', '2023-02-21 10:15:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (438, '25', 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, '', '2023-02-21 18:02:55', '', '2023-02-23 18:16:03');
INSERT INTO `gen_table_column` VALUES (439, '25', 'bzr_name', '班主任姓名', 'varchar(50)', 'String', 'bzrName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, '', '2023-02-24 18:15:14', '', '2023-02-23 18:16:03');
INSERT INTO `gen_table_column` VALUES (440, '25', 'cwc_name', '财务姓名', 'varchar(50)', 'String', 'cwcName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 10, '', '2023-02-24 18:15:14', '', '2023-02-23 18:16:03');
INSERT INTO `gen_table_column` VALUES (441, '25', 'xsc_name', '学生处姓名', 'varchar(50)', 'String', 'xscName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 14, '', '2023-02-24 18:15:14', '', '2023-02-23 18:16:03');
INSERT INTO `gen_table_column` VALUES (442, '4', 'longitude', '经度', 'decimal(10,6)', 'BigDecimal', 'longitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, '', '2023-02-22 14:06:10', '', '2023-02-23 18:16:03');
INSERT INTO `gen_table_column` VALUES (443, '4', 'latitude', '纬度', 'decimal(10,6)', 'BigDecimal', 'latitude', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, '', '2023-02-22 14:06:10', '', '2023-02-23 18:16:03');
INSERT INTO `gen_table_column` VALUES (444, '4', 'scale', '距离范围', 'int(11)', 'Long', 'scale', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, '', '2023-02-22 14:06:10', '', '2023-02-23 18:16:03');
INSERT INTO `gen_table_column` VALUES (445, '28', 'on_time', '上岗时间', 'datetime', 'Date', 'onTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, '', '2023-02-22 14:06:10', '', '2023-02-24 15:50:38');
INSERT INTO `gen_table_column` VALUES (446, '28', 'off_time', '离岗时间', 'datetime', 'Date', 'offTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, '', '2023-02-22 14:06:10', '', '2023-02-24 15:50:38');
INSERT INTO `gen_table_column` VALUES (453, '43', 'id', '自增长主键', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-23 11:04:53', '', '2023-02-25 11:13:02');
INSERT INTO `gen_table_column` VALUES (454, '43', 'title', '文件名', 'varchar(255)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-23 11:04:53', '', '2023-02-25 11:13:02');
INSERT INTO `gen_table_column` VALUES (455, '43', 'path', '路径', 'varchar(255)', 'String', 'path', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-02-23 11:04:53', '', '2023-02-25 11:13:02');
INSERT INTO `gen_table_column` VALUES (456, '43', 'md5', 'MD5值', 'varchar(32)', 'String', 'md5', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-23 11:04:53', '', '2023-02-25 11:13:02');
INSERT INTO `gen_table_column` VALUES (457, '43', 'create_by', '上传人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-02-23 11:04:53', '', '2023-02-25 11:13:02');
INSERT INTO `gen_table_column` VALUES (458, '43', 'create_time', '上传时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-02-23 11:04:53', '', '2023-02-25 11:13:02');
INSERT INTO `gen_table_column` VALUES (459, '44', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-24 08:53:12', '', '2023-02-25 11:13:02');
INSERT INTO `gen_table_column` VALUES (460, '44', 'title', '标题', 'varchar(200)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-24 08:53:12', '', '2023-02-25 09:28:17');
INSERT INTO `gen_table_column` VALUES (461, '44', 'period', '学制', 'tinyint(1)', 'String', 'period', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 3, 'admin', '2023-02-24 08:53:12', '', '2023-02-25 09:28:17');
INSERT INTO `gen_table_column` VALUES (462, '44', 'total', '招生人数', 'int(11)', 'Long', 'total', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2023-02-24 08:53:12', '', '2023-02-25 09:28:17');
INSERT INTO `gen_table_column` VALUES (463, '44', 'signups', '报名人数', 'int(11)', 'Long', 'signups', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2023-02-24 08:53:12', '', '2023-02-25 09:28:17');
INSERT INTO `gen_table_column` VALUES (464, '44', 'content', '招生简章', 'text', 'String', 'content', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'editor', '', 6, 'admin', '2023-02-24 08:53:12', '', '2023-02-25 09:28:17');
INSERT INTO `gen_table_column` VALUES (465, '44', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-02-24 08:53:12', '', '2023-02-25 09:28:17');
INSERT INTO `gen_table_column` VALUES (466, '44', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-02-24 08:53:12', '', '2023-02-25 09:28:17');
INSERT INTO `gen_table_column` VALUES (467, '44', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-02-24 08:53:12', '', '2023-02-25 09:28:17');
INSERT INTO `gen_table_column` VALUES (468, '44', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-02-24 08:53:12', '', '2023-02-25 09:28:17');
INSERT INTO `gen_table_column` VALUES (469, '44', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 11, 'admin', '2023-02-24 08:53:12', '', '2023-02-25 09:28:17');
INSERT INTO `gen_table_column` VALUES (470, '45', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (471, '45', 'spec_id', '专业ID', 'int(11)', 'Long', 'specId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (472, '45', 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (473, '45', 'idcard', '身份证号', 'varchar(20)', 'String', 'idcard', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (474, '45', 'sex', '性别', 'varchar(1)', 'String', 'sex', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_user_sex', 5, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (475, '45', 'likman', '联系人', 'varchar(50)', 'String', 'likman', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (476, '45', 'mobile', '手机号', 'varchar(50)', 'String', 'mobile', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (477, '45', 'natives', '籍贯', 'varchar(50)', 'String', 'natives', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (478, '45', 'address', '家庭住址', 'varchar(200)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (479, '45', 'email', '邮箱', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (480, '45', 'nation', '民族', 'varchar(50)', 'String', 'nation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (481, '45', 'school', '毕业学校', 'varchar(50)', 'String', 'school', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (482, '45', 'is_current', '是否应届', 'varchar(1)', 'String', 'isCurrent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_yes_no', 13, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (483, '45', 'nums', '考生号', 'varchar(50)', 'String', 'nums', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (484, '45', 'is_lodge', '是否住校', 'varchar(1)', 'String', 'isLodge', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_yes_no', 15, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (485, '45', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (486, '45', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 17, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (487, '45', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 18, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (488, '45', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 19, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (489, '45', 'check_status', '审核状态', 'varchar(1)', 'String', 'checkStatus', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'radio', 'check_status', 20, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (490, '45', 'comment', '申请说明', 'text', 'String', 'comment', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 21, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:29:38');
INSERT INTO `gen_table_column` VALUES (491, '46', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:31:43');
INSERT INTO `gen_table_column` VALUES (492, '46', 'signup_id', '报名信息', 'int(11)', 'Long', 'signupId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:31:43');
INSERT INTO `gen_table_column` VALUES (493, '46', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:31:43');
INSERT INTO `gen_table_column` VALUES (494, '46', 'room_id', '宿舍', 'int(11)', 'Long', 'roomId', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:31:43');
INSERT INTO `gen_table_column` VALUES (495, '46', 'pays', '缴费', 'float(10,2)', 'BigDecimal', 'pays', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:31:43');
INSERT INTO `gen_table_column` VALUES (496, '46', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:31:43');
INSERT INTO `gen_table_column` VALUES (497, '46', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:31:43');
INSERT INTO `gen_table_column` VALUES (498, '46', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:31:43');
INSERT INTO `gen_table_column` VALUES (499, '46', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:31:43');
INSERT INTO `gen_table_column` VALUES (501, '46', 'comment', '备注说明', 'text', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:31:43');
INSERT INTO `gen_table_column` VALUES (502, '47', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:32:40');
INSERT INTO `gen_table_column` VALUES (503, '47', 'title', '标题', 'varchar(200)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:32:40');
INSERT INTO `gen_table_column` VALUES (504, '47', 'spec_id', '专业', 'int(11)', 'Long', 'specId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:32:40');
INSERT INTO `gen_table_column` VALUES (505, '47', 'period', '学制', 'tinyint(1)', 'Integer', 'period', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:32:40');
INSERT INTO `gen_table_column` VALUES (506, '47', 'total', '招生人数', 'int(11)', 'Long', 'total', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:32:40');
INSERT INTO `gen_table_column` VALUES (507, '47', 'signups', '报名人数', 'int(11)', 'Long', 'signups', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:32:40');
INSERT INTO `gen_table_column` VALUES (508, '47', 'content', '招生简章', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'editor', '', 7, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:32:40');
INSERT INTO `gen_table_column` VALUES (509, '47', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 8, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:32:40');
INSERT INTO `gen_table_column` VALUES (510, '48', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (511, '48', 'train_id', '项目', 'int(11)', 'Long', 'trainId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (512, '48', 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (513, '48', 'idcard', '身份证号', 'varchar(20)', 'String', 'idcard', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (514, '48', 'sex', '性别', 'varchar(1)', 'String', 'sex', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'sys_user_sex', 5, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (515, '48', 'mobile', '手机号', 'varchar(50)', 'String', 'mobile', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (516, '48', 'email', '邮箱', 'varchar(50)', 'String', 'email', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (517, '48', 'address', '家庭住址', 'varchar(200)', 'String', 'address', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (518, '48', 'natives', '籍贯', 'varchar(50)', 'String', 'natives', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (519, '48', 'education', '学历', 'varchar(1)', 'String', 'education', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'base_education', 10, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (520, '48', 'is_lodge', '是否住校', 'varchar(1)', 'String', 'isLodge', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_yes_no', 11, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (521, '48', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (522, '48', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (523, '48', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (524, '48', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (525, '48', 'check_status', '审核状态', 'varchar(1)', 'String', 'checkStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'check_status', 16, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (526, '48', 'is_check', '是否报到', 'varchar(1)', 'String', 'isCheck', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_yes_no', 17, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (527, '48', 'pays', '缴费', 'float(10,2)', 'BigDecimal', 'pays', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 18, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (528, '48', 'check_by', '报到指导人', 'varchar(50)', 'String', 'checkBy', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 19, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (529, '48', 'check_time', '报到时间', 'datetime', 'Date', 'checkTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 20, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (530, '48', 'comment', '备注说明', 'text', 'String', 'comment', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 21, 'admin', '2023-02-24 08:53:23', '', '2023-02-26 09:34:17');
INSERT INTO `gen_table_column` VALUES (531, '49', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-02-28 14:45:00', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (541, '33', 'teacher_id', '教师', 'int(11)', 'Long', 'teacherId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, '', '2023-02-28 14:49:23', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (542, '33', 'book', '教材分析', 'varchar(255)', 'String', 'book', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'textarea', '', 7, '', '2023-02-28 14:49:23', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (543, '33', 'student', '学生分析', 'varchar(255)', 'String', 'student', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'textarea', '', 8, '', '2023-02-28 14:49:23', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (544, '33', 'target', '教学目标', 'varchar(255)', 'String', 'target', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'textarea', '', 9, '', '2023-02-28 14:49:23', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (545, '33', 'measure', '教学措施', 'varchar(255)', 'String', 'measure', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'textarea', '', 10, '', '2023-02-28 14:49:23', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (546, '49', 'plan_id', '教学计划', 'int(11)', 'Long', 'planId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2023-02-28 14:49:30', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (547, '49', 'period', '课时', 'int(11)', 'Long', 'period', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, '', '2023-02-28 14:49:30', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (548, '49', 'content', '教学内容', 'text', 'String', 'content', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'textarea', '', 4, '', '2023-02-28 14:49:30', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (549, '38', 'result_id', '关联成绩', 'int(11)', 'Long', 'resultId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, '', '2023-03-01 11:41:59', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (550, '38', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, '', '2023-03-01 11:41:59', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (551, '38', 'student_id', '学生', 'int(11)', 'Long', 'studentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, '', '2023-03-01 11:41:59', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (552, '38', 'course_id', '课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, '', '2023-03-01 11:41:59', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (553, '38', 'is_pass', '是否及格', 'char(1)', 'String', 'isPass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '', '2023-03-01 11:41:59', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (554, '36', 'result_id', '成绩', 'int(11)', 'Long', 'resultId', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 2, '', '2023-03-01 11:42:05', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (555, '36', 'class_id', '班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, '', '2023-03-01 11:42:05', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (556, '36', 'student_id', '学生', 'int(11)', 'Long', 'studentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, '', '2023-03-01 11:42:05', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (557, '36', 'course_id', '课程', 'int(11)', 'Long', 'courseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, '', '2023-03-01 11:42:05', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (558, '36', 'is_pass', '是否及格', 'char(1)', 'String', 'isPass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '', '2023-03-01 11:42:05', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (559, '50', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (560, '50', 'code', '代码', 'varchar(50)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (561, '50', 'title', '名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (562, '50', 'ds_id', '数据源', 'int(11)', 'Long', 'dsId', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (563, '50', 'type', '类型', 'varchar(20)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'chart_type', 5, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (564, '50', 'comment', '说明', 'varchar(200)', 'String', 'comment', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (565, '50', 'list_sort', '排序', 'int(11)', 'Long', 'listSort', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (566, '50', 'status', '状态', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 8, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (567, '51', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (568, '51', 'code', '部门代码', 'varchar(50)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (569, '51', 'title', '部门名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (570, '51', 'sqls', '查询SQL', 'text', 'String', 'sqls', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (571, '51', 'param', '支持参数', 'varchar(255)', 'String', 'param', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (572, '51', 'list_sort', '排序', 'int(11)', 'Long', 'listSort', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (573, '51', 'comment', '说明', 'varchar(200)', 'String', 'comment', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (574, '51', 'status', '状态', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_common_status', 8, 'admin', '2023-03-01 16:27:03', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (575, '51', 'type', '类型', 'char(10)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'dataset_type', 2, '', '2023-03-01 16:40:32', '', '2023-03-02 11:22:02');
INSERT INTO `gen_table_column` VALUES (576, '52', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (577, '52', 'code', '编码', 'varchar(20)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (578, '52', 'title', '资产名称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (579, '52', 'cate_id', '分类ID', 'int(11)', 'Long', 'cateId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (580, '52', 'buy_time', '买入时间', 'datetime', 'Date', 'buyTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (581, '52', 'buy_price', '买入价格', 'float(10,2)', 'BigDecimal', 'buyPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (582, '52', 'current_price', '当前价格', 'float(10,2)', 'BigDecimal', 'currentPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (583, '52', 'master_user', '负责人', 'int(11)', 'Long', 'masterUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (584, '52', 'create_by', '录入人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (585, '52', 'create_time', '录入时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (586, '52', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (587, '52', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (588, '52', 'remark', '备注说明', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'textarea', '', 13, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (589, '53', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (590, '53', 'pid', '上级', 'int(11)', 'Long', 'pid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (591, '53', 'title', '分类名称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (592, '53', 'list_sort', '排序', 'int(11)', 'Long', 'listSort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (593, '54', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (594, '54', 'title', '会议室名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (595, '54', 'linkman', '联系人', 'varchar(50)', 'String', 'linkman', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (596, '54', 'phone', '联系电话', 'varchar(50)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (597, '54', 'album', '图片', 'varchar(200)', 'String', 'album', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (598, '54', 'address', '地址', 'varchar(200)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (599, '54', 'maxs', '最大容量', 'int(11)', 'Long', 'maxs', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (600, '54', 'list_sort', '排序', 'int(11)', 'Long', 'listSort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (601, '54', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (602, '54', 'create_time', '添加时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (603, '54', 'create_by', '添加人', 'varchar(50)', 'String', 'createBy', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (604, '54', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (605, '54', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (606, '55', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:02', '', '2023-02-28 11:29:23');
INSERT INTO `gen_table_column` VALUES (607, '55', 'flow_id', '工作流', 'int(11)', 'Long', 'flowId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (608, '55', 'step_id', '当前步骤', 'int(11)', 'Long', 'stepId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (609, '55', 'add_time', '添加时间', 'datetime', 'Date', 'addTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (610, '55', 'add_user', '添加人', 'int(11)', 'Long', 'addUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (611, '55', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (612, '55', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 7, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (613, '56', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (614, '56', 'flow_id', '工作流', 'int(11)', 'Long', 'flowId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (615, '56', 'code', '字段代码', 'varchar(50)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (616, '56', 'title', '字段名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (617, '56', 'type', '字段类型', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'field_type', 5, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (618, '56', 'list_sort', '排序', 'int(11)', 'Long', 'listSort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (619, '56', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 7, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (620, '57', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (621, '57', 'pid', '上级', 'int(11)', 'Long', 'pid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (622, '57', 'title', '流程名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (623, '57', 'list_sort', '排序', 'int(11)', 'Long', 'listSort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (624, '57', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (625, '57', 'create_time', '添加时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (626, '57', 'create_by', '添加人', 'varchar(50)', 'String', 'createBy', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (627, '57', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (628, '57', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (629, '58', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (630, '58', 'flow_id', '工作流', 'int(11)', 'Long', 'flowId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (631, '58', 'document_id', '公文', 'int(11)', 'Long', 'documentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (632, '58', 'prev_id', '上一步', 'int(11)', 'Long', 'prevId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (633, '58', 'step_id', '当前步骤', 'int(11)', 'Long', 'stepId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (634, '58', 'title', '步骤名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (635, '58', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 7, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (636, '58', 'add_time', '添加时间', 'datetime', 'Date', 'addTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (637, '58', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (638, '58', 'user_id', '当前处理人', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-03-02 11:22:02', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (639, '59', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (640, '59', 'title', '获奖名称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (641, '59', 'type', '奖项类型', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'glory_type', 3, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (642, '59', 'level', '奖项级别', 'varchar(1)', 'String', 'level', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'glory_level', 4, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (643, '59', 'deprt', '颁奖单位', 'varchar(50)', 'String', 'deprt', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (644, '59', 'get_time', '获奖时间', 'date', 'Date', 'getTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (645, '59', 'comment', '详细说明', 'text', 'String', 'comment', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 7, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (646, '59', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (647, '59', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (648, '59', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (649, '59', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (650, '60', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (651, '60', 'title', '获奖名称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (652, '60', 'stu_id', '学生', 'int(11)', 'Long', 'stuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (653, '60', 'class_id', '原班级', 'int(11)', 'Long', 'classId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (654, '60', 'type', '奖项类型', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'glory_type', 5, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (655, '60', 'level', '奖项级别', 'varchar(1)', 'String', 'level', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'glory_level', 6, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (656, '60', 'deprt', '颁奖单位', 'varchar(50)', 'String', 'deprt', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (657, '60', 'get_time', '获奖时间', 'date', 'Date', 'getTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (658, '60', 'comment', '备注说明', 'text', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 9, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (659, '60', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (660, '60', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (661, '60', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (662, '60', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (663, '61', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (664, '61', 'title', '获奖名称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (665, '61', 'teacher_id', '教师', 'int(11)', 'Long', 'teacherId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (666, '61', 'type', '奖项类型', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'glory_type', 4, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (667, '61', 'level', '奖项级别', 'varchar(1)', 'String', 'level', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'glory_level', 5, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (668, '61', 'deprt', '颁奖单位', 'varchar(50)', 'String', 'deprt', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (669, '61', 'get_time', '获奖时间', 'date', 'Date', 'getTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (670, '61', 'comment', '备注说明', 'text', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 8, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (671, '61', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (672, '61', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (673, '61', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (674, '61', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (675, '62', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (676, '62', 'flow_id', '工作流', 'int(11)', 'Long', 'flowId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (677, '62', 'pid', '上一步', 'int(11)', 'Long', 'pid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (678, '62', 'title', '步骤名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (679, '62', 'type', '类型', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'step_type', 5, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (680, '62', 'rules', '权限', 'text', 'String', 'rules', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'textarea', '', 6, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (681, '62', 'create_time', '添加时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (682, '62', 'create_by', '添加人', 'varchar(50)', 'String', 'createBy', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (683, '62', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (684, '62', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (685, '63', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (686, '63', 'document_id', '公文', 'int(11)', 'Long', 'documentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (687, '63', 'flow_id', '流程', 'int(11)', 'Long', 'flowId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (688, '63', 'field_id', '字段', 'datetime', 'Date', 'fieldId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (689, '63', 'type', '字段类型', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'field_type', 5, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (690, '63', 'content', '内容', 'varchar(200)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', 6, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (691, '64', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (692, '64', 'code', '编码', 'varchar(20)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (693, '64', 'title', '门禁名称', 'varchar(50)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (694, '64', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 4, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (695, '65', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (696, '65', 'gurad_id', '门禁ID', 'int(11)', 'Long', 'guradId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (697, '65', 'user_id', '用户', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (698, '65', 'in_time', '进入时间', 'datetime', 'Date', 'inTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (699, '65', 'out_time', '离开时间', 'datetime', 'Date', 'outTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (700, '65', 'comment', '备注', 'varchar(200)', 'String', 'comment', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'textarea', '', 6, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (701, '66', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (702, '66', 'title', '会议名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (703, '66', 'divan_id', '会议室', 'int(11)', 'Long', 'divanId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (704, '66', 'linkman', '联系人', 'varchar(50)', 'String', 'linkman', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (705, '66', 'phone', '联系电话', 'varchar(50)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (706, '66', 'address', '地址', 'varchar(200)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (707, '66', 'start_time', '开始使用时间', 'datetime', 'Date', 'startTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (708, '66', 'finish_time', '结束使用时间', 'datetime', 'Date', 'finishTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (709, '66', 'add_time', '申请时间', 'datetime', 'Date', 'addTime', '0', '0', NULL, NULL, NULL, '1', NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (710, '66', 'add_user', '申请人', 'int(11)', 'Long', 'addUser', '0', '0', '1', NULL, NULL, '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (711, '66', 'check_time', '审核时间', 'datetime', 'Date', 'checkTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (712, '66', 'check_user', '审核人', 'int(11)', 'Long', 'checkUser', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (713, '66', 'check_status', '审核状态', 'varchar(1)', 'String', 'checkStatus', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'radio', '', 13, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (714, '67', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (715, '67', 'meet_id', '会议', 'int(11)', 'Long', 'meetId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (716, '67', 'create_time', '添加时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 3, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (717, '67', 'create_by', '添加人', 'varchar(50)', 'String', 'createBy', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (718, '67', 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 5, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (719, '67', 'file_id', '附件', 'int(11)', 'Long', 'fileId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (720, '68', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (721, '68', 'meet_id', '会议', 'int(11)', 'Long', 'meetId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (722, '68', 'user_id', '人员ID', 'int(11)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (723, '68', 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (724, '68', 'phone', '联系电话', 'varchar(50)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (725, '68', 'is_sign', '是否签到', 'varchar(1)', 'String', 'isSign', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_yes_no', 6, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (726, '68', 'check_type', '考勤状态', 'varchar(1)', 'String', 'checkType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'check_type', 7, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (727, '69', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (728, '69', 'title', '标题', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (729, '69', 'content', '内容', 'varchar(255)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (730, '69', 'url', '链接', 'varchar(255)', 'String', 'url', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (731, '69', 'type', '消息类型', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (733, '69', 'add_time', '添加时间', 'datetime', 'Date', 'addTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (734, '69', 'add_user', '添加人', 'int(11)', 'Long', 'addUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (740, '71', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (741, '71', 'year', '年度', 'int(11)', 'Long', 'year', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (742, '71', 'type', '分类', 'varchar(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'report_type', 3, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (743, '71', 'title', '标题', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (744, '71', 'content', '汇报内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (745, '71', 'file_id', '附件', 'int(11)', 'Long', 'fileId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (746, '71', 'add_time', '汇报时间', 'datetime', 'Date', 'addTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (747, '71', 'add_user', '汇报人', 'int(11)', 'Long', 'addUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (748, '71', 'read_time', '审阅时间', 'datetime', 'Date', 'readTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (749, '71', 'to_user', '审阅人', 'int(11)', 'Long', 'toUser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-03-02 11:22:20', '', '2023-03-02 11:22:42');
INSERT INTO `gen_table_column` VALUES (750, '72', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:42', '', '2023-03-02 13:33:16');
INSERT INTO `gen_table_column` VALUES (751, '72', 'title', '标题', 'varchar(200)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (752, '72', 'content', '内容', 'text', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (753, '72', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (754, '72', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (755, '72', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (756, '72', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (757, '73', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (758, '73', 'name', '菜单标题', 'varchar(10)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (759, '73', 'pid', '上级菜单', 'int(1)', 'Integer', 'pid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (760, '73', 'type', '类型', 'varchar(20)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'wx_menu_type', 4, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (761, '73', 'code', '事件代码', 'varchar(50)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (762, '73', 'url', '菜单地址', 'varchar(255)', 'String', 'url', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (763, '73', 'media_id', '媒体附件', 'varchar(255)', 'String', 'mediaId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (764, '73', 'app_id', '小程序ID', 'varchar(255)', 'String', 'appId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (765, '73', 'page_path', '小程序页面路径', 'varchar(255)', 'String', 'pagePath', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (766, '74', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (767, '74', 'user_id', '用户', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (768, '74', 'stu_id', '学生', 'int(11)', 'Long', 'stuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (769, '74', 'image_id', '图片', 'int(11)', 'Long', 'imageId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (770, '74', 'add_time', '上传日期', 'datetime', 'Date', 'addTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (771, '74', 'status', '状态', 'varchar(20)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 6, 'admin', '2023-03-02 11:22:42', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (772, '75', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:50', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (773, '75', 'name', '菜单标题', 'varchar(20)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-03-02 11:22:50', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (774, '75', 'code', '微信ID', 'varchar(10)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:50', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (775, '75', 'menus', '菜单', 'varchar(255)', 'String', 'menus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:50', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (776, '76', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-02 11:22:50', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (777, '76', 'user_id', '用户', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-02 11:22:50', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (778, '76', 'open_id', 'openId', 'varchar(255)', 'String', 'openId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-02 11:22:50', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (779, '76', 'union_id', 'unionId', 'varchar(255)', 'String', 'unionId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-02 11:22:50', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (780, '76', 'tag_id', '标签', 'varchar(10)', 'String', 'tagId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-02 11:22:50', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (781, '76', 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2023-03-02 11:22:50', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (783, '65', 'day', '日期', 'char(1)', 'String', 'day', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, '', '2023-03-02 13:50:20', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (784, '65', 'open_id', '微信ID', 'varchar(255)', 'String', 'openId', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, '', '2023-03-02 11:22:50', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (785, '65', 'real_name', '姓名', 'varchar(255)', 'String', 'realName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, '', '2023-03-02 13:51:25', '', '2023-03-03 14:55:42');
INSERT INTO `gen_table_column` VALUES (786, '69', 'add_user_name', '发信人姓名', 'varchar(255)', 'String', 'addUserName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 8, '', '2023-03-02 17:23:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (787, '69', 'to_user', '收信人', 'int(11)', 'Long', 'toUser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, '', '2023-03-02 17:23:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (788, '69', 'to_user_name', '收信人姓名', 'varchar(50)', 'String', 'toUserName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 10, '', '2023-03-02 17:23:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (789, '69', 'read_time', '读取时间', 'datetime', 'Date', 'readTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, '', '2023-03-02 17:23:43', '', NULL);
INSERT INTO `gen_table_column` VALUES (790, '77', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-03 14:55:42', '', '2023-03-03 14:58:38');
INSERT INTO `gen_table_column` VALUES (791, '77', 'title', '工作流', 'varchar(255)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-03 14:55:42', '', '2023-03-03 14:58:38');
INSERT INTO `gen_table_column` VALUES (792, '77', 'file_id', '附件', 'int(11)', 'Long', 'fileId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-03 14:55:42', '', '2023-03-03 14:58:38');
INSERT INTO `gen_table_column` VALUES (793, '77', 'source', '当前步骤', 'varchar(255)', 'String', 'source', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-03 14:55:42', '', '2023-03-03 14:58:38');
INSERT INTO `gen_table_column` VALUES (794, '77', 'add_time', '添加时间', 'datetime', 'Date', 'addTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-03-03 14:55:42', '', '2023-03-03 14:58:38');
INSERT INTO `gen_table_column` VALUES (795, '77', 'add_user', '添加人', 'int(11)', 'Long', 'addUser', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-03 14:55:42', '', '2023-03-03 14:58:38');
INSERT INTO `gen_table_column` VALUES (796, '77', 'comment', '说明', 'varchar(255)', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-03-03 14:55:42', '', '2023-03-03 14:58:38');
INSERT INTO `gen_table_column` VALUES (797, '77', 'status', '是否读完', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2023-03-03 14:55:42', '', '2023-03-03 14:58:38');
INSERT INTO `gen_table_column` VALUES (798, '78', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-03 14:55:42', '', '2023-03-03 14:58:38');
INSERT INTO `gen_table_column` VALUES (799, '78', 'archvie_id', '文档', 'int(11)', 'Long', 'archvieId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-03 14:55:42', '', '2023-03-03 14:58:38');
INSERT INTO `gen_table_column` VALUES (800, '78', 'user_id', '人员ID', 'int(11)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-03 14:55:42', '', '2023-03-03 14:58:38');
INSERT INTO `gen_table_column` VALUES (801, '78', 'name', '姓名', 'varchar(50)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-03-03 14:55:42', '', '2023-03-03 14:58:38');
INSERT INTO `gen_table_column` VALUES (803, '78', 'read_time', '是否已读', 'datetime', 'Date', 'readTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, '', '2023-03-03 15:44:57', '', NULL);
INSERT INTO `gen_table_column` VALUES (804, '79', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:51:49');
INSERT INTO `gen_table_column` VALUES (805, '79', 'title', '应用名称', 'varchar(10)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:51:49');
INSERT INTO `gen_table_column` VALUES (806, '79', 'type', '类型', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'xdata_app_type', 3, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:51:49');
INSERT INTO `gen_table_column` VALUES (807, '79', 'code', '应用代码', 'varchar(32)', 'String', 'code', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:51:49');
INSERT INTO `gen_table_column` VALUES (808, '79', 'secret', '应用密钥', 'varchar(32)', 'String', 'secret', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:51:49');
INSERT INTO `gen_table_column` VALUES (809, '79', 'url', '媒体附件', 'varchar(255)', 'String', 'url', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:51:49');
INSERT INTO `gen_table_column` VALUES (810, '79', 'icon', '图标', 'varchar(255)', 'String', 'icon', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:51:49');
INSERT INTO `gen_table_column` VALUES (811, '79', 'jdbc', '数据连接', 'varchar(255)', 'String', 'jdbc', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:51:49');
INSERT INTO `gen_table_column` VALUES (812, '79', 'db_user', '数据库账号', 'varchar(50)', 'String', 'dbUser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:51:49');
INSERT INTO `gen_table_column` VALUES (813, '79', 'db_pass', '数据库密码', 'varchar(50)', 'String', 'dbPass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:51:49');
INSERT INTO `gen_table_column` VALUES (814, '79', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 11, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:51:49');
INSERT INTO `gen_table_column` VALUES (815, '80', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:52:17');
INSERT INTO `gen_table_column` VALUES (816, '80', 'title', '模型名称', 'varchar(10)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:52:17');
INSERT INTO `gen_table_column` VALUES (817, '80', 'type', '类型', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'xdata_model_type', 3, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:52:17');
INSERT INTO `gen_table_column` VALUES (818, '80', 'tables', '数据表', 'varchar(100)', 'String', 'tables', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:52:17');
INSERT INTO `gen_table_column` VALUES (819, '80', 'list_sort', '排序', 'int(11)', 'Long', 'listSort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:52:17');
INSERT INTO `gen_table_column` VALUES (820, '80', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 6, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:52:17');
INSERT INTO `gen_table_column` VALUES (821, '81', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (822, '81', 'client_id', '应用', 'int(11)', 'Long', 'clientId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (823, '81', 'model_id', '模型名称', 'int(11)', 'Long', 'modelId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (824, '81', 'mode', '权限', 'varchar(1)', 'String', 'mode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', 'xdata_pipe_mode', 4, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (825, '81', 'read_sql', '读取操作', 'varchar(255)', 'String', 'readSql', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (826, '81', 'write_sql', '写入操作', 'varchar(255)', 'String', 'writeSql', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (827, '81', 'del_sql', '删除操作', 'varchar(255)', 'String', 'delSql', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (828, '81', 'exist_sql', '验证操作', 'varchar(255)', 'String', 'existSql', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (829, '81', 'last_time', '上次同步时间', 'datetime', 'Date', 'lastTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (830, '81', 'last_result', '上次同步结果', 'int(11)', 'Long', 'lastResult', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (831, '81', 'db_pass', '数据库密码', 'varchar(50)', 'String', 'dbPass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (832, '81', 'list_sort', '优先级', 'int(11)', 'Long', 'listSort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (833, '81', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 13, 'admin', '2023-03-03 16:44:31', '', '2023-03-03 16:54:38');
INSERT INTO `gen_table_column` VALUES (834, '82', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:06:06');
INSERT INTO `gen_table_column` VALUES (835, '82', 'title', '选项内容', 'varchar(200)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:06:06');
INSERT INTO `gen_table_column` VALUES (836, '82', 'question_id', '所属试题', 'int(11)', 'Long', 'questionId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:06:06');
INSERT INTO `gen_table_column` VALUES (837, '83', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (838, '83', 'title', '试题名称', 'varchar(200)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (839, '83', 'subject_id', '所属科目', 'int(11)', 'Long', 'subjectId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (840, '83', 'type', '类型', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'question_type', 4, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (841, '83', 'file_id', '附件', 'int(11)', 'Long', 'fileId', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (842, '83', 'answer', '正确答案', 'varchar(200)', 'String', 'answer', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (843, '83', 'analyzes', '答案解析', 'varchar(200)', 'String', 'analyzes', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (844, '83', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (845, '83', 'wrong_count', '错误次数', 'int(11)', 'Long', 'wrongCount', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (846, '83', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (847, '83', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (848, '83', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (849, '83', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (850, '84', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (851, '84', 'title', '资源名称', 'varchar(200)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (852, '84', 'subject_id', '所属科目', 'int(11)', 'Long', 'subjectId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (853, '84', 'type', '类型', 'varchar(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'res_type', 4, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (854, '84', 'source', '来源', 'varchar(200)', 'String', 'source', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (855, '84', 'file_id', '附件', 'int(11)', 'Long', 'fileId', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'fileUpload', '', 6, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (856, '84', 'file_name', '附件名', 'varchar(200)', 'String', 'fileName', '0', '0', NULL, '1', '1', '1', NULL, 'LIKE', 'input', '', 7, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (857, '84', 'content', '说明', 'varchar(255)', 'String', 'content', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'editor', '', 8, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (858, '84', 'is_recommend', '是否推荐', 'varchar(1)', 'String', 'isRecommend', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sys_yes_no', 9, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (859, '84', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 10, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (860, '84', 'view_count', '浏览次数', 'int(11)', 'Long', 'viewCount', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (861, '84', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (862, '84', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (863, '84', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (864, '84', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '1', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (865, '85', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (866, '85', 'title', '科目名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (867, '85', 'pid', '上级', 'int(11)', 'Long', 'pid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (868, '85', 'comment', '简介', 'varchar(255)', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (869, '85', 'list_sort', '排序', 'int(11)', 'Long', 'listSort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (870, '85', 'status', '状态', 'varchar(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'common_status', 6, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (871, '86', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (872, '86', 'user_id', '用户', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (873, '86', 'question_id', '题目', 'int(11)', 'Long', 'questionId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (874, '86', 'count', '错误次数', 'tinyint(3)', 'Integer', 'count', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (875, '86', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-03-04 15:51:35', '', '2023-03-04 16:07:00');
INSERT INTO `gen_table_column` VALUES (876, '87', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (877, '87', 'folder_id', '目录', 'int(11)', 'Long', 'folderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (878, '87', 'file_id', '文件', 'int(11)', 'Long', 'fileId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (879, '87', 'title', '文件名', 'varchar(255)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (880, '87', 'type', '类型', 'char(1)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (881, '87', 'is_public', '是否共享', 'char(1)', 'String', 'isPublic', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (882, '87', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (883, '87', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (884, '87', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (885, '87', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (886, '88', 'id', '自增长主键ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (887, '88', 'title', '分类名称', 'varchar(100)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (888, '88', 'pid', '上级', 'int(11)', 'Long', 'pid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (889, '88', 'list_sort', '排序', 'int(11)', 'Long', 'listSort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (890, '88', 'is_public', '是否公开', 'char(1)', 'String', 'isPublic', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (891, '88', 'create_by', '创建人', 'varchar(50)', 'String', 'createBy', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (892, '88', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (893, '88', 'update_by', '更新人', 'varchar(50)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');
INSERT INTO `gen_table_column` VALUES (894, '88', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-03-05 14:18:18', '', '2023-03-05 14:28:15');

-- ----------------------------
-- Table structure for glory_school
-- ----------------------------
DROP TABLE IF EXISTS `glory_school`;
CREATE TABLE `glory_school`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '获奖名称',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖项类型',
  `level` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖项级别',
  `depart` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '颁奖单位',
  `get_time` date NOT NULL COMMENT '获奖时间',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详细说明',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '高光时刻' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of glory_school
-- ----------------------------
INSERT INTO `glory_school` VALUES (1, '蓝桥杯一等奖', '2', '2', '算法协会', '2022-03-08', '夺', 'admin', '2023-03-06 11:03:33', 'admin', '2023-03-06 11:09:16');
INSERT INTO `glory_school` VALUES (2, 'ACM银奖', '3', '1', '19计本3班', '2022-09-08', '夺', 'admin', '2023-03-06 11:09:16', NULL, NULL);

-- ----------------------------
-- Table structure for glory_student
-- ----------------------------
DROP TABLE IF EXISTS `glory_student`;
CREATE TABLE `glory_student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '获奖名称',
  `student_id` int(11) NOT NULL DEFAULT 0 COMMENT '学生',
  `class_id` int(11) NOT NULL COMMENT '原班级',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖项类型',
  `level` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖项级别',
  `depart` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '颁奖单位',
  `get_time` date NOT NULL COMMENT '获奖时间',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注说明',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生获奖' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of glory_student
-- ----------------------------
INSERT INTO `glory_student` VALUES (1, '大英赛一等奖', 4, 2, '2', '2', '裁夺', '2022-03-03', NULL, 'admin', '2023-03-06 11:39:31', 'admin', '2023-03-07 11:52:59');
INSERT INTO `glory_student` VALUES (2, '三行诗', 9, 2, '2', '2', '裁夺', '2022-06-30', NULL, 'admin', '2023-03-06 11:39:31', NULL, NULL);
INSERT INTO `glory_student` VALUES (3, '创新创业大赛三等奖', 8, 3, '2', '3', '勿', '2022-10-03', '革', 'admin', '2023-03-06 11:57:53', NULL, NULL);

-- ----------------------------
-- Table structure for glory_teacher
-- ----------------------------
DROP TABLE IF EXISTS `glory_teacher`;
CREATE TABLE `glory_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '获奖名称',
  `teacher_id` int(11) NOT NULL COMMENT '教师',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖项类型',
  `level` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '奖项级别',
  `depart` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '颁奖单位',
  `get_time` date NOT NULL COMMENT '获奖时间',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注说明',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师荣耀' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of glory_teacher
-- ----------------------------
INSERT INTO `glory_teacher` VALUES (1, '花木成畦手自栽 ', 1, '2', '1', '革', '2020-11-29', NULL, 'admin', '2020-12-10 13:42:34', NULL, NULL);
INSERT INTO `glory_teacher` VALUES (3, '花木成', 1, '2', '1', '革', '2020-11-29', '', 'admin', '2020-12-10 13:44:52', NULL, NULL);
INSERT INTO `glory_teacher` VALUES (4, '工地一', 3, '4', '3', '载一', '2019-11-29', '', 'admin', '2020-12-10 13:44:52', NULL, NULL);

-- ----------------------------
-- Table structure for lab_apply
-- ----------------------------
DROP TABLE IF EXISTS `lab_apply`;
CREATE TABLE `lab_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `lab_id` int(11) NOT NULL DEFAULT 0 COMMENT '实验室',
  `sem_id` int(11) NOT NULL COMMENT '学期',
  `teacher_id` int(11) NOT NULL COMMENT '申请人',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始使用时间',
  `finish_time` datetime(0) NULL DEFAULT NULL COMMENT '结束使用时间',
  `time_long` int(11) NOT NULL COMMENT '使用时长',
  `students` int(11) NOT NULL COMMENT '使用学生数',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '记录人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '记录时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `check_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核状态',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '申请说明',
  `file_id` int(11) NULL DEFAULT NULL COMMENT '附件资料',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实验室申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lab_apply
-- ----------------------------
INSERT INTO `lab_apply` VALUES (1, 4, 1, 2, '2020-12-02 10:00:00', '2020-12-02 12:00:00', 120, 50, 'admin', '2020-12-01 15:08:09', 'admin', '2020-12-01 15:36:23', '1', NULL, NULL);
INSERT INTO `lab_apply` VALUES (2, 4, 1, 1, '2020-12-08 10:00:00', '2020-12-08 20:00:00', 120, 30, 'admin', '2020-12-01 17:12:05', 'admin', '2020-12-21 09:32:07', '0', '大', 3);
INSERT INTO `lab_apply` VALUES (3, 1, 1, 2, '2020-12-03 10:00:00', '2020-12-03 12:00:00', 120, 50, 'admin', '2020-12-01 17:43:30', NULL, NULL, '1', '', NULL);
INSERT INTO `lab_apply` VALUES (4, 4, 1, 1, '2020-12-08 10:00:00', '2020-12-08 12:00:00', 120, 30, 'admin', '2020-12-01 17:43:30', NULL, NULL, '0', '大', NULL);
INSERT INTO `lab_apply` VALUES (5, 2, 2, 1, '2020-12-10 10:00:00', '2020-12-10 14:00:00', 4324, 40, 'admin', '2020-12-17 17:20:23', NULL, NULL, '0', '手动阀手动阀', NULL);
INSERT INTO `lab_apply` VALUES (6, 1, 1, 1, '2020-12-01 00:00:00', '2020-12-02 00:00:00', 300, 50, 'admin', '2020-12-21 09:34:21', NULL, NULL, '0', '撒飞洒地方克格勃', NULL);

-- ----------------------------
-- Table structure for lab_laboratory
-- ----------------------------
DROP TABLE IF EXISTS `lab_laboratory`;
CREATE TABLE `lab_laboratory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `build_id` int(11) NOT NULL COMMENT '楼宇',
  `room_id` int(11) NOT NULL COMMENT '房间',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '实验室名称',
  `volume` int(11) NULL DEFAULT NULL COMMENT '座位数',
  `master_user` int(11) NULL DEFAULT NULL COMMENT '负责人',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '说明',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `room_id`(`room_id`) USING BTREE COMMENT '不能重复'
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实验室管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lab_laboratory
-- ----------------------------
INSERT INTO `lab_laboratory` VALUES (1, 2, 140, '504化学室', 20, 2, '1', '33333');
INSERT INTO `lab_laboratory` VALUES (2, 1, 1, '101计算机室', 30, 4, '1', '36台计算机');
INSERT INTO `lab_laboratory` VALUES (4, 2, 137, '501化学室', 20, 2, '1', '33333');

-- ----------------------------
-- Table structure for oa_archive
-- ----------------------------
DROP TABLE IF EXISTS `oa_archive`;
CREATE TABLE `oa_archive`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '标题',
  `file_id` int(11) NULL DEFAULT NULL COMMENT '附件',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '来源',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `add_user` int(11) NOT NULL COMMENT '添加人',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否读完',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文档轮阅' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_archive
-- ----------------------------
INSERT INTO `oa_archive` VALUES (4, '手', 3, ' 的发达省份', '2020-12-15 17:34:07', 1, '西城要', 'N');
INSERT INTO `oa_archive` VALUES (5, '测试', NULL, 'Internet', '2023-04-15 14:11:51', 1, '无', 'N');

-- ----------------------------
-- Table structure for oa_archive_read
-- ----------------------------
DROP TABLE IF EXISTS `oa_archive_read`;
CREATE TABLE `oa_archive_read`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `archive_id` int(11) NOT NULL DEFAULT 0 COMMENT '文档',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '人员ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `read_time` datetime(0) NULL DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '轮阅记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_archive_read
-- ----------------------------
INSERT INTO `oa_archive_read` VALUES (1, 2, 1, '管理员', '2020-12-15 17:23:24');
INSERT INTO `oa_archive_read` VALUES (2, 2, 2, '若依', NULL);
INSERT INTO `oa_archive_read` VALUES (3, 2, 3, '屯三', NULL);
INSERT INTO `oa_archive_read` VALUES (4, 2, 4, '高人', NULL);
INSERT INTO `oa_archive_read` VALUES (5, 3, 1, '管理员', '2020-12-15 17:29:13');
INSERT INTO `oa_archive_read` VALUES (6, 3, 2, '若依', NULL);
INSERT INTO `oa_archive_read` VALUES (7, 3, 3, '屯三', NULL);
INSERT INTO `oa_archive_read` VALUES (8, 3, 4, '高人', NULL);
INSERT INTO `oa_archive_read` VALUES (12, 5, 32, '余文乐', NULL);
INSERT INTO `oa_archive_read` VALUES (13, 5, 4, '宋波', NULL);
INSERT INTO `oa_archive_read` VALUES (14, 5, 3, '高老师', NULL);
INSERT INTO `oa_archive_read` VALUES (15, 5, 8, '赵女士', NULL);
INSERT INTO `oa_archive_read` VALUES (16, 5, 1, '管理员', NULL);

-- ----------------------------
-- Table structure for oa_asset
-- ----------------------------
DROP TABLE IF EXISTS `oa_asset`;
CREATE TABLE `oa_asset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编码',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资产名称',
  `cate_id` int(11) NOT NULL COMMENT '分类ID',
  `buy_time` datetime(0) NULL DEFAULT NULL COMMENT '买入时间',
  `buy_price` float(10, 2) NULL DEFAULT NULL COMMENT '买入价格',
  `current_price` float(10, 2) NULL DEFAULT NULL COMMENT '当前价格',
  `master_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '负责人',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '录入人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '录入时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资产信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_asset
-- ----------------------------
INSERT INTO `oa_asset` VALUES (1, '52', '2352345', 5, '2020-12-11 00:00:00', 45235.00, 45.00, 'rwe', NULL, '2020-12-10 08:58:44', NULL, '2020-12-10 09:52:29', '235234', '1');
INSERT INTO `oa_asset` VALUES (3, '34554', '办公笔记本1', 4, '2020-11-11 00:00:00', 3235.00, 3235.00, '王老师', NULL, '2020-12-10 09:52:29', NULL, NULL, NULL, '2');

-- ----------------------------
-- Table structure for oa_category
-- ----------------------------
DROP TABLE IF EXISTS `oa_category`;
CREATE TABLE `oa_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `pid` int(11) NOT NULL COMMENT '上级',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `list_sort` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资产分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_category
-- ----------------------------
INSERT INTO `oa_category` VALUES (1, 0, '网络', 1);
INSERT INTO `oa_category` VALUES (2, 0, '计算机', 1);
INSERT INTO `oa_category` VALUES (3, 2, '台式机', 1);
INSERT INTO `oa_category` VALUES (4, 2, '笔记本', 2);
INSERT INTO `oa_category` VALUES (5, 1, '无线路由', 1);
INSERT INTO `oa_category` VALUES (6, 0, '其它', 3);
INSERT INTO `oa_category` VALUES (7, 6, '打印机', 1);

-- ----------------------------
-- Table structure for oa_divan
-- ----------------------------
DROP TABLE IF EXISTS `oa_divan`;
CREATE TABLE `oa_divan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会议室名称',
  `linkman` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系人',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `maxs` int(11) NULL DEFAULT NULL COMMENT '最大容量',
  `list_sort` int(11) NULL DEFAULT 9 COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会议室' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_divan
-- ----------------------------
INSERT INTO `oa_divan` VALUES (1, '大会议室', '张处', '87875656', '办公楼301', 50, 1, '1', '2023-03-06 16:20:59', 'admin', NULL, NULL);
INSERT INTO `oa_divan` VALUES (2, '4教会议室', '赵总', '18896545874', '高新四路', 100, 3, '1', '2023-03-07 11:24:00', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for oa_document
-- ----------------------------
DROP TABLE IF EXISTS `oa_document`;
CREATE TABLE `oa_document`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `flow_id` int(11) NOT NULL COMMENT '工作流',
  `file_id` int(11) NULL DEFAULT NULL COMMENT '附件',
  `step_id` int(11) NULL DEFAULT NULL COMMENT '当前步骤',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `add_user` int(11) NOT NULL COMMENT '添加人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公文' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_document
-- ----------------------------
INSERT INTO `oa_document` VALUES (3, 2, 4, 0, '2023-03-01 09:31:05', 1, '2023-03-01 09:31:05', '9');
INSERT INTO `oa_document` VALUES (4, 1, NULL, 2, '2023-03-01 09:54:17', 1, NULL, '1');
INSERT INTO `oa_document` VALUES (5, 1, NULL, 2, '2023-03-02 11:57:14', 3, '2023-03-02 11:57:19', '1');

-- ----------------------------
-- Table structure for oa_field
-- ----------------------------
DROP TABLE IF EXISTS `oa_field`;
CREATE TABLE `oa_field`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `flow_id` int(11) NOT NULL COMMENT '工作流',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段代码',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段名称',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '字段类型',
  `list_sort` int(11) NOT NULL COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`flow_id`, `code`) USING BTREE COMMENT '代码不能重复'
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '表单字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_field
-- ----------------------------
INSERT INTO `oa_field` VALUES (1, 1, 'startTime', '开始时间', '2', 1, '1');
INSERT INTO `oa_field` VALUES (2, 1, 'endTime', '结束时间', '2', 2, '1');
INSERT INTO `oa_field` VALUES (3, 1, 'reason', '请假原因', '3', 4, '1');
INSERT INTO `oa_field` VALUES (4, 1, 'longs', '总时长', '4', 3, '1');
INSERT INTO `oa_field` VALUES (5, 2, 'test_text', '内容', '1', 1, '1');
INSERT INTO `oa_field` VALUES (6, 2, 'test_date', '日期', '2', 2, '1');

-- ----------------------------
-- Table structure for oa_flow
-- ----------------------------
DROP TABLE IF EXISTS `oa_flow`;
CREATE TABLE `oa_flow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '流程名称',
  `list_sort` int(11) NOT NULL COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作流' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_flow
-- ----------------------------
INSERT INTO `oa_flow` VALUES (1, '请假', 2, '1', '2023-03-09 09:54:08', 'admin', NULL, NULL);
INSERT INTO `oa_flow` VALUES (2, '测试流程', 1, '1', '2023-03-09 15:06:39', 'admin', NULL, NULL);
INSERT INTO `oa_flow` VALUES (3, '上级文档传阅', 9, '1', '2023-03-09 14:11:32', 'admin', '2023-03-09 14:11:43', 'admin');

-- ----------------------------
-- Table structure for oa_flow_process
-- ----------------------------
DROP TABLE IF EXISTS `oa_flow_process`;
CREATE TABLE `oa_flow_process`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `flow_id` int(11) NOT NULL COMMENT '工作流',
  `document_id` int(11) NOT NULL COMMENT '公文',
  `prev_id` int(11) NOT NULL COMMENT '上一步',
  `step_id` int(11) NOT NULL COMMENT '当前步骤',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '步骤名称',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `user_id` int(11) NOT NULL COMMENT '当前处理人',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作流步骤' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_flow_process
-- ----------------------------
INSERT INTO `oa_flow_process` VALUES (1, 2, 3, 5, 5, '审核', '3', '2023-03-05 09:31:18', '2023-03-05 09:34:01', 1, '风吹哪页读哪页');

-- ----------------------------
-- Table structure for oa_flow_step
-- ----------------------------
DROP TABLE IF EXISTS `oa_flow_step`;
CREATE TABLE `oa_flow_step`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `flow_id` int(11) NOT NULL COMMENT '工作流',
  `pid` int(11) NULL DEFAULT 0 COMMENT '上一步',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '步骤名称',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型',
  `rule` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '规则',
  `param` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '参数',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作流步骤' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_flow_step
-- ----------------------------
INSERT INTO `oa_flow_step` VALUES (1, 1, 0, '发起', '1', '5', '教师,超级管理员', '2023-03-05 10:24:22', 'admin', '2023-03-05 14:22:08', 'admin');
INSERT INTO `oa_flow_step` VALUES (2, 1, 1, '审核', '3', '1', '', '2023-03-05 10:25:48', 'admin', '2023-03-05 09:54:49', 'admin');
INSERT INTO `oa_flow_step` VALUES (3, 1, 2, '测试', '9', '1', '', '2023-03-05 11:03:10', 'admin', '2023-03-05 17:00:36', 'admin');
INSERT INTO `oa_flow_step` VALUES (4, 2, 0, '发起', '1', '5', '超级管理员', '2023-03-05 15:07:03', 'admin', NULL, NULL);
INSERT INTO `oa_flow_step` VALUES (5, 2, 4, '审核', '9', '5', '超级管理员', '2023-03-05 15:07:19', 'admin', NULL, NULL);
INSERT INTO `oa_flow_step` VALUES (6, 3, 0, '转发', '1', '3', '管理员', '2023-03-06 14:12:11', 'admin', '2023-03-06 14:12:27', 'admin');
INSERT INTO `oa_flow_step` VALUES (7, 3, 6, '传阅', '4', '3', '管理员', '2023-03-06 14:13:01', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for oa_form
-- ----------------------------
DROP TABLE IF EXISTS `oa_form`;
CREATE TABLE `oa_form`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `document_id` int(11) NOT NULL COMMENT '公文',
  `flow_id` int(11) NOT NULL COMMENT '流程',
  `field_id` int(6) NOT NULL DEFAULT 0 COMMENT '字段',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '代码',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段类型',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `doc_field`(`document_id`, `field_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公文表单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_form
-- ----------------------------
INSERT INTO `oa_form` VALUES (5, 3, 2, 6, '', NULL, '2023-03-08 00:00:00');
INSERT INTO `oa_form` VALUES (6, 3, 2, 5, '', NULL, '发士大夫');
INSERT INTO `oa_form` VALUES (7, 4, 1, 1, '', NULL, '2023-03-08 10:00:00');
INSERT INTO `oa_form` VALUES (8, 4, 1, 2, '', NULL, '2023-03-08 10:00:00');
INSERT INTO `oa_form` VALUES (9, 4, 1, 3, '', NULL, '234234');
INSERT INTO `oa_form` VALUES (10, 4, 1, 4, '', NULL, '8');
INSERT INTO `oa_form` VALUES (11, 5, 1, 1, '', NULL, '2023-03-08 08:00:00');
INSERT INTO `oa_form` VALUES (12, 5, 1, 2, '', NULL, '2023-03-08 16:00:00');
INSERT INTO `oa_form` VALUES (13, 5, 1, 3, '', NULL, '16');
INSERT INTO `oa_form` VALUES (14, 5, 1, 4, '', NULL, '16');

-- ----------------------------
-- Table structure for oa_guard
-- ----------------------------
DROP TABLE IF EXISTS `oa_guard`;
CREATE TABLE `oa_guard`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编码',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '门禁名称',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '门禁' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_guard
-- ----------------------------
INSERT INTO `oa_guard` VALUES (1, '101', '东一', '1');
INSERT INTO `oa_guard` VALUES (2, '102', '西门', '1');
INSERT INTO `oa_guard` VALUES (3, '201', '实验楼', '1');

-- ----------------------------
-- Table structure for oa_inout
-- ----------------------------
DROP TABLE IF EXISTS `oa_inout`;
CREATE TABLE `oa_inout`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `guard_id` int(11) NOT NULL DEFAULT 0 COMMENT '门禁ID',
  `user_id` int(11) NULL DEFAULT 0 COMMENT '用户',
  `in_time` datetime(0) NULL DEFAULT NULL COMMENT '进入时间',
  `out_time` datetime(0) NULL DEFAULT NULL COMMENT '离开时间',
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `day` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `open_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出入记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_inout
-- ----------------------------
INSERT INTO `oa_inout` VALUES (1, 2, 0, '2023-03-08 00:00:00', '2023-03-08 00:00:00', 'fad', 'asdfas', '2023-03-08', 'eeeeeeeeeeeeeeee');
INSERT INTO `oa_inout` VALUES (2, 2, 0, '2023-03-09 16:03:39', NULL, 'afa', 'asdf', '2023-03-09', NULL);

-- ----------------------------
-- Table structure for oa_meeting
-- ----------------------------
DROP TABLE IF EXISTS `oa_meeting`;
CREATE TABLE `oa_meeting`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '会议名称',
  `divan_id` int(11) NOT NULL COMMENT '会议室',
  `linkman` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系人',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `start_time` datetime(0) NOT NULL COMMENT '开始使用时间',
  `finish_time` datetime(0) NOT NULL COMMENT '结束使用时间',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会议内容',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请说明',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `add_user` int(11) NOT NULL COMMENT '申请人',
  `check_time` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `check_user` int(11) NULL DEFAULT NULL COMMENT '审核人',
  `check_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会议申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_meeting
-- ----------------------------
INSERT INTO `oa_meeting` VALUES (1, '2432', 1, '324234', '34', '234', '2023-03-08 00:00:00', '2023-03-08 00:00:00', NULL, NULL, '2023-03-08 11:33:45', 1, '2023-03-08 11:57:26', 1, '1');
INSERT INTO `oa_meeting` VALUES (3, '34', 2, '3432', '324', '234', '2023-03-08 13:54:20', '2023-03-08 13:54:22', '4252', '525', '2023-03-08 14:05:04', 1, '2023-03-08 14:32:15', 1, '1');
INSERT INTO `oa_meeting` VALUES (4, '撒旦发射点发', 1, '234', '234', '324234', '2023-03-08 10:00:00', '2023-03-08 18:00:00', '341432432', NULL, '2023-03-08 11:17:44', 1, '2023-03-08 11:17:55', 1, '1');

-- ----------------------------
-- Table structure for oa_meeting_summary
-- ----------------------------
DROP TABLE IF EXISTS `oa_meeting_summary`;
CREATE TABLE `oa_meeting_summary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `meet_id` int(11) NOT NULL COMMENT '会议',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加人',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `file_id` int(11) NULL DEFAULT NULL COMMENT '附件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会议记要' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_meeting_summary
-- ----------------------------
INSERT INTO `oa_meeting_summary` VALUES (1, 1, '2023-03-07 15:08:49', 'admin', '的发生柑\n花木成畦手自栽 梅艳芳菲\n花木成畦手自栽 ', 1);

-- ----------------------------
-- Table structure for oa_meeting_user
-- ----------------------------
DROP TABLE IF EXISTS `oa_meeting_user`;
CREATE TABLE `oa_meeting_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `meet_id` int(11) NOT NULL COMMENT '会议',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '人员ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `is_sign` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否签到',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '与会人员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_meeting_user
-- ----------------------------
INSERT INTO `oa_meeting_user` VALUES (10, 3, 2, '若依', '15666666666', NULL);
INSERT INTO `oa_meeting_user` VALUES (11, 3, 3, '屯三', NULL, NULL);
INSERT INTO `oa_meeting_user` VALUES (12, 3, 4, '高人', NULL, NULL);
INSERT INTO `oa_meeting_user` VALUES (13, 3, 1, '管理员', '15888888888', NULL);
INSERT INTO `oa_meeting_user` VALUES (14, 1, NULL, '342432', '3243', 'N');
INSERT INTO `oa_meeting_user` VALUES (15, 4, 8, '赵女士', NULL, 'N');
INSERT INTO `oa_meeting_user` VALUES (16, 4, 3, '高老师', '13343242314', 'N');

-- ----------------------------
-- Table structure for oa_report
-- ----------------------------
DROP TABLE IF EXISTS `oa_report`;
CREATE TABLE `oa_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `year` int(11) NOT NULL COMMENT '年度',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '分类',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '汇报内容',
  `file_id` int(11) NULL DEFAULT NULL COMMENT '附件',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '汇报时间',
  `add_user` int(11) NOT NULL COMMENT '汇报人',
  `read_time` datetime(0) NULL DEFAULT NULL COMMENT '审阅时间',
  `to_user` int(11) NULL DEFAULT NULL COMMENT '审阅人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作汇报' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_report
-- ----------------------------
INSERT INTO `oa_report` VALUES (1, 2023, '2', '2023年3月报', 'fadsfasdfasdfasdf', 1, '2023-03-06 00:00:00', 1, NULL, 3);
INSERT INTO `oa_report` VALUES (2, 2023, '1', '2023年3月7日报', 'asdfadsfadsf', 1, '2023-03-07 00:00:00', 1, NULL, 2);

-- ----------------------------
-- Table structure for practice_check
-- ----------------------------
DROP TABLE IF EXISTS `practice_check`;
CREATE TABLE `practice_check`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `stu_id` int(11) NOT NULL COMMENT '学生',
  `company_id` int(11) NOT NULL COMMENT '企业',
  `check_date` date NOT NULL COMMENT '考勤日期',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '考勤类型',
  `on_time` datetime(0) NULL DEFAULT NULL COMMENT '上岗时间',
  `off_time` datetime(0) NULL DEFAULT NULL COMMENT '离岗时间',
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `stu_id`(`stu_id`, `check_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实习考勤' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of practice_check
-- ----------------------------
INSERT INTO `practice_check` VALUES (1, 4, 2, '2023-03-07', '3', NULL, NULL, NULL);
INSERT INTO `practice_check` VALUES (2, 4, 1, '2023-03-06', '1', '2023-03-07 12:21:00', '2023-03-07 22:21:00', '');
INSERT INTO `practice_check` VALUES (3, 8, 2, '2023-03-07', '2', '2023-03-07 10:00:00', '2023-03-07 18:00:00', '工');
INSERT INTO `practice_check` VALUES (5, 8, 2, '2023-03-08', '1', '2023-03-08 18:03:55', NULL, NULL);

-- ----------------------------
-- Table structure for practice_summary
-- ----------------------------
DROP TABLE IF EXISTS `practice_summary`;
CREATE TABLE `practice_summary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `stu_id` int(11) NOT NULL COMMENT '学生',
  `company_id` int(11) NOT NULL COMMENT '企业',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `add_time` datetime(0) NOT NULL COMMENT '操作时间',
  `file_id` int(11) NOT NULL COMMENT '附件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实习总结' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of practice_summary
-- ----------------------------
INSERT INTO `practice_summary` VALUES (1, 4, 2, 's\'d\'fa\'s夺3333菩萨顶  花木成畦手自栽 ', '2023-03-07 00:00:00', 1);
INSERT INTO `practice_summary` VALUES (2, 8, 2, 'asfsadfdasf基材苛34324234324\n\n花木成畦手自栽基本革', '2023-03-08 18:07:04', 1);

-- ----------------------------
-- Table structure for practice_task
-- ----------------------------
DROP TABLE IF EXISTS `practice_task`;
CREATE TABLE `practice_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `stu_id` int(11) NOT NULL COMMENT '学生',
  `company_id` int(11) NOT NULL COMMENT '企业',
  `sem_id` int(11) NULL DEFAULT NULL COMMENT '学期',
  `post` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位',
  `start_date` date NOT NULL COMMENT '开始日期',
  `end_date` date NULL DEFAULT NULL COMMENT '结束日期',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '安排人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '安排时间',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实习内容',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态',
  `score` float(10, 2) NULL DEFAULT NULL COMMENT '实习成绩',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实习任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of practice_task
-- ----------------------------
INSERT INTO `practice_task` VALUES (1, 4, 2, 1, '二线', '2020-11-02', NULL, 'admin', '2023-03-07 16:42:33', 's\'d\'fa\'s夺3333', '1', NULL);
INSERT INTO `practice_task` VALUES (2, 9, 2, 1, '二线', '2020-11-02', NULL, 'admin', '2023-03-07 16:42:33', 's\'d\'fa\'s夺3333', '1', NULL);
INSERT INTO `practice_task` VALUES (3, 4, 1, 1, '666', '2020-10-12', '2021-01-02', 'admin', '2023-03-07 15:31:38', 'adsfasdf', '2', NULL);
INSERT INTO `practice_task` VALUES (4, 8, 2, 1, '32423', '2020-09-01', '2020-12-31', 'admin', '2023-03-07 16:44:50', '瑞特瑞特认为', '3', NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME4', 'DEFAULT', '0 0/5 * * * ? ', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000175977F97F878707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000175977F97F878707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000175977F97F878707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME4', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000176B7A9C02078707400007070707400013174000E3020302F35202A202A202A203F2074000C78646174612E72756E28322974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000004740012E5908CE6ADA5E4B893E4B89AE4BFA1E681AF74000131740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'LZD-20201028BEB1616729906614', 1616729985940, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1616729910000, -1, 5, 'PAUSED', 'CRON', 1616729906000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1616729910000, -1, 5, 'PAUSED', 'CRON', 1616729906000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1616729920000, -1, 5, 'PAUSED', 'CRON', 1616729906000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME4', 'DEFAULT', 'TASK_CLASS_NAME4', 'DEFAULT', NULL, 1616730000000, -1, 5, 'PAUSED', 'CRON', 1616729906000, 0, NULL, -1, '');

-- ----------------------------
-- Table structure for student_apply
-- ----------------------------
DROP TABLE IF EXISTS `student_apply`;
CREATE TABLE `student_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `spec_id` int(11) NULL DEFAULT NULL COMMENT '专业ID',
  `spec1` int(11) NOT NULL DEFAULT 0 COMMENT '第一志愿',
  `spec2` int(11) NOT NULL DEFAULT 0 COMMENT '第二志愿',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `idcard` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `likman` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系人',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `natives` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '籍贯',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '家庭住址',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `nation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业学校',
  `is_current` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否应届',
  `nums` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考生号',
  `is_lodge` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否住校',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `check_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '审核状态',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '申请说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招生报名' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_apply
-- ----------------------------
INSERT INTO `student_apply` VALUES (1, 3, 3, 2, '222', 'fdsafa', '0', 'asfasdf', 'asdf', 'asdfasd', 'fasdf', NULL, NULL, NULL, 'N', NULL, 'Y', NULL, '2023-03-07 15:41:39', NULL, NULL, '1', 'asfdas');
INSERT INTO `student_apply` VALUES (2, 1, 3, 1, '叶三', '78460464545', '0', '3434', '234324', '34324', '324324', '', '', 'tetwertr', 'Y', '', '', 'admin', '2023-03-07 16:37:08', NULL, '2023-03-07 16:37:18', '1', '');
INSERT INTO `student_apply` VALUES (4, 2, 2, 3, '一在的', '655155112', '0', 'asfasdf', 'asdf', 'asdfasd', 'fasdf', '', '', '', 'N', '', 'Y', 'admin', '2023-03-07 10:14:16', NULL, NULL, '1', '');
INSERT INTO `student_apply` VALUES (5, 3, 3, 2, '上遥在', '86645312', '0', '3434', '234324', '34324', '324324', '', '', 'tetwertr', 'Y', '', 'Y', 'admin', '2023-03-07 10:14:16', NULL, '2023-03-07 11:24:45', '1', '');

-- ----------------------------
-- Table structure for student_change
-- ----------------------------
DROP TABLE IF EXISTS `student_change`;
CREATE TABLE `student_change`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `stu_id` int(11) NOT NULL COMMENT '学生',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `class_id` int(11) NOT NULL COMMENT '原班级',
  `class_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原班级',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '异动类型',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `new_class` int(11) NULL DEFAULT NULL COMMENT '新班级',
  `new_class_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新班级',
  `is_recover` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否恢复',
  `year` int(11) NULL DEFAULT NULL COMMENT '年级',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原因',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学籍异动' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_change
-- ----------------------------
INSERT INTO `student_change` VALUES (2, 8, '四一', 1, '2019计算机1班', '1', 'admin', '2023-03-06 15:16:23', NULL, NULL, 2, '2019会计班', 'Y', 2019, NULL);
INSERT INTO `student_change` VALUES (3, 8, '四一', 2, '2019会计班', '2', 'admin', '2023-03-07 15:17:38', 'admin', '2023-03-07 17:16:52', 3, '2020物流班', 'Y', 2019, '222');
INSERT INTO `student_change` VALUES (4, 9, '有在', 2, '2019会计班', '3', 'admin', '2023-03-07 17:25:45', 'admin', '2023-03-07 17:26:15', 2, '2019会计班', 'Y', 2019, '3333');
INSERT INTO `student_change` VALUES (5, 9, '有在', 2, '2019会计班', '2', 'admin', '2023-03-07 15:07:06', NULL, NULL, NULL, NULL, 'N', 2019, '玩玩');
INSERT INTO `student_change` VALUES (6, 9, '有在', 2, '2019会计班', '3', 'admin', '2023-03-07 15:07:25', NULL, NULL, NULL, NULL, 'N', 2019, '452354325');
INSERT INTO `student_change` VALUES (7, 9, '有在', 2, '2019会计班', '2', 'admin', '2023-03-07 15:10:34', NULL, NULL, NULL, NULL, 'N', 2019, '45254235');
INSERT INTO `student_change` VALUES (8, 9, '有在', 2, '2019会计班', '3', 'admin', '2023-03-07 15:11:13', 'admin', '2023-03-07 15:22:49', 2, '2019会计班', 'Y', 2019, '2435423545');
INSERT INTO `student_change` VALUES (9, 11, '叶三', 1, '2019计算机1班', '1', 'admin', '2023-03-07 20:21:32', NULL, NULL, 5, '2020会计', 'Y', 2019, '111');

-- ----------------------------
-- Table structure for student_check
-- ----------------------------
DROP TABLE IF EXISTS `student_check`;
CREATE TABLE `student_check`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `stu_id` int(11) NOT NULL COMMENT '学生',
  `room_id` int(11) NOT NULL COMMENT '宿舍',
  `check_date` date NOT NULL COMMENT '考勤日期',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '操作人',
  `create_time` datetime(0) NOT NULL COMMENT '操作时间',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '考勤类型',
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '宿舍考勤' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_check
-- ----------------------------
INSERT INTO `student_check` VALUES (1, 4, 42, '2023-03-05', 'admin', '2023-03-07 10:03:15', '2', '223333');
INSERT INTO `student_check` VALUES (5, 10, 83, '2023-03-06', 'admin', '2023-03-07 11:46:38', '2', '111');

-- ----------------------------
-- Table structure for student_checkin
-- ----------------------------
DROP TABLE IF EXISTS `student_checkin`;
CREATE TABLE `student_checkin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `apply_id` int(11) NOT NULL COMMENT '报名信息',
  `class_id` int(11) NOT NULL DEFAULT 0 COMMENT '班级',
  `room_id` int(11) NOT NULL DEFAULT 0 COMMENT '宿舍',
  `pays` float(10, 2) NOT NULL COMMENT '缴费',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招生报到' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_checkin
-- ----------------------------
INSERT INTO `student_checkin` VALUES (1, 1, 3, 42, 58.00, 'admin', '2023-03-01 09:56:50', 'admin', '2023-03-09 10:07:21', NULL);
INSERT INTO `student_checkin` VALUES (2, 5, 3, 55, 6500.00, 'admin', '2023-03-01 11:28:51', NULL, NULL, NULL);
INSERT INTO `student_checkin` VALUES (3, 2, 1, 42, 3560.00, 'admin', '2023-03-01 11:29:08', 'admin', '2023-03-09 15:00:06', NULL);

-- ----------------------------
-- Table structure for student_enroll
-- ----------------------------
DROP TABLE IF EXISTS `student_enroll`;
CREATE TABLE `student_enroll`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `spec_id` int(11) NOT NULL COMMENT '专业ID',
  `period` tinyint(1) NOT NULL COMMENT '学制',
  `total` int(11) NOT NULL COMMENT '招生人数',
  `signups` int(11) NULL DEFAULT 0 COMMENT '报名人数',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '招生简章',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`, `status`) USING BTREE COMMENT '招生计划不能重复'
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招生计划' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_enroll
-- ----------------------------
INSERT INTO `student_enroll` VALUES (1, '2023年会计专业', 2, 4, 60, 54, '的萨芬的萨芬\n地\n花木成畦手自栽 ', '1');
INSERT INTO `student_enroll` VALUES (2, '2023年物流专业', 3, 4, 40, 25, '斯塔基要\n革坧\n二\n下', '1');
INSERT INTO `student_enroll` VALUES (3, '2022年物联网专业', 4, 3, 100, 23, NULL, '1');
INSERT INTO `student_enroll` VALUES (4, '2022年汽服专业', 5, 3, 35, 24, '', '1');
INSERT INTO `student_enroll` VALUES (5, '2023计科专业招生', 1, 4, 300, 0, '上机', '1');
INSERT INTO `student_enroll` VALUES (6, 'zhaosheng', 1, 4, 111, 0, '11', '1');

-- ----------------------------
-- Table structure for student_graduation
-- ----------------------------
DROP TABLE IF EXISTS `student_graduation`;
CREATE TABLE `student_graduation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `stu_id` int(11) NOT NULL COMMENT '学生',
  `year` int(11) NOT NULL DEFAULT 0 COMMENT '年级',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '学号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `spec_id` int(11) NOT NULL DEFAULT 0 COMMENT '专业ID',
  `spec_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '专业名',
  `class_id` int(11) NOT NULL COMMENT '班级',
  `class_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级名称',
  `bzr_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班主任',
  `bzr_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班主任姓名',
  `bzr_time` datetime(0) NULL DEFAULT NULL COMMENT '班主任操作时间',
  `bzr_check` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班审核状态',
  `cwc_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '财务',
  `cwc_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '财务姓名',
  `cwc_time` datetime(0) NULL DEFAULT NULL COMMENT '财务操作时间',
  `cwc_check` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '财务审核状态',
  `xsc_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生处',
  `xsc_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生处姓名',
  `xsc_time` datetime(0) NULL DEFAULT NULL COMMENT '学生处操作时间',
  `xsc_check` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生处审核状态',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业类型',
  `area` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '就业城市',
  `company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '企业',
  `pay` float(10, 2) NULL DEFAULT NULL COMMENT '薪资',
  `contract_date` date NULL DEFAULT NULL COMMENT '合同日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '毕业' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_graduation
-- ----------------------------
INSERT INTO `student_graduation` VALUES (1, 4, 2022, '201901001', '李莉莉', 2, '计算机科学与技术', 2, '2018计科班', 'admin', '管理员', '2023-03-06 14:55:02', '1', 'admin', '管理员', '2023-03-09 14:55:15', '1', 'admin', '管理员', '2023-03-09 14:55:08', '1', '2', '广州', '富康电子', 3500.00, '2022-02-01');
INSERT INTO `student_graduation` VALUES (2, 9, 2022, '201903002', '张三', 2, '计算机科学与技术', 2, '2018计科班', 'admin', '管理员', '2023-03-06 14:55:02', '1', 'admin', '管理员', '2023-03-09 14:55:15', '1', NULL, NULL, NULL, NULL, NULL, '上海', '字节跳动', 19999.00, NULL);

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info`  (
  `stu_id` int(11) NOT NULL COMMENT '学生',
  `jtzz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `jzxm` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家长姓名',
  `jzdh` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家长电话',
  `hjlx` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '户籍类型',
  `zzmm` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `jg` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `bmfs` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报名方式',
  `sfdb` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否低保',
  `jkzk` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '健康状况',
  PRIMARY KEY (`stu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES (4, '重庆', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL);
INSERT INTO `student_info` VALUES (5, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (6, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (7, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (8, '', '', '18888888888', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (9, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (10, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student_info` VALUES (12, '重庆', '', '', '', '', '', '', 'Y', '');
INSERT INTO `student_info` VALUES (13, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (14, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (15, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (16, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (18, '重庆', '', '', '', '', '', '', 'Y', '');
INSERT INTO `student_info` VALUES (19, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (20, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (21, '重庆', '', '', '', '', '', '', 'Y', '');
INSERT INTO `student_info` VALUES (22, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (23, '', '', '', '', '', '', '', '', '');
INSERT INTO `student_info` VALUES (24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `student_info` VALUES (25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for student_signup
-- ----------------------------
DROP TABLE IF EXISTS `student_signup`;
CREATE TABLE `student_signup`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `train_id` int(11) NOT NULL COMMENT '项目ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `idcard` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '家庭住址',
  `natives` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `education` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `is_lodge` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否住校',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `check_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核状态',
  `is_check` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否报到',
  `pays` float(10, 2) NULL DEFAULT NULL COMMENT '缴费',
  `check_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报到指导人',
  `check_time` datetime(0) NULL DEFAULT NULL COMMENT '报到时间',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '培训报名' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_signup
-- ----------------------------
INSERT INTO `student_signup` VALUES (1, 1, '54234', '21341234', '0', '1234', '1243231', '2314123', '41234', '1', 'N', 'admin', '2023-03-04 11:00:09', 'admin', '2023-03-05 11:34:12', '1', 'N', 36.00, '65', '2020-11-19 00:00:00', '44324');
INSERT INTO `student_signup` VALUES (2, 1, '11', '11', '0', '11', '111', '1111', '夏雨来', '0', 'N', 'admin', '2023-03-04 11:37:40', 'admin', '2023-03-05 15:37:51', '1', 'Y', 4545.00, '435', '2020-12-16 00:00:00', '');

-- ----------------------------
-- Table structure for student_train
-- ----------------------------
DROP TABLE IF EXISTS `student_train`;
CREATE TABLE `student_train`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `period` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '学制',
  `total` int(11) NOT NULL COMMENT '招生人数',
  `signups` int(11) NULL DEFAULT 0 COMMENT '报名人数',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '招生简章',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '培训项目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_train
-- ----------------------------
INSERT INTO `student_train` VALUES (1, 'adsfads', '三个月', 56, 0, '<p>阿三发射点</p>', 'admin', '2023-03-01 10:47:12', NULL, NULL, '1');
INSERT INTO `student_train` VALUES (2, '1', '1', 1, 0, '<p>11111</p>', 'admin', '2023-03-01 11:34:57', 'admin', '2023-03-05 15:32:53', '0');
INSERT INTO `student_train` VALUES (3, '543254325', '4', 23452435, 0, '<p>23454235</p>', 'admin', '2023-03-01 15:31:02', NULL, NULL, '1');

-- ----------------------------
-- Table structure for study_option
-- ----------------------------
DROP TABLE IF EXISTS `study_option`;
CREATE TABLE `study_option`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选项内容',
  `question_id` int(11) NOT NULL COMMENT '所属试题',
  `is_answer` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为答案',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试题选项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of study_option
-- ----------------------------
INSERT INTO `study_option` VALUES (1, '231423', 1, 'Y');
INSERT INTO `study_option` VALUES (2, '42134', 1, 'Y');
INSERT INTO `study_option` VALUES (4, '23414', 1, 'N');
INSERT INTO `study_option` VALUES (5, '2342314343', 1, 'N');
INSERT INTO `study_option` VALUES (11, 'rtret', 2, 'Y');
INSERT INTO `study_option` VALUES (12, 'rewtrew', 2, 'N');
INSERT INTO `study_option` VALUES (13, 'trewt', 2, 'N');
INSERT INTO `study_option` VALUES (14, 'ert', 2, 'N');
INSERT INTO `study_option` VALUES (15, 'erwtrewt', 2, 'N');
INSERT INTO `study_option` VALUES (16, 'retert', 2, 'N');

-- ----------------------------
-- Table structure for study_question
-- ----------------------------
DROP TABLE IF EXISTS `study_question`;
CREATE TABLE `study_question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '试题名称',
  `subject_id` int(11) NOT NULL DEFAULT 0 COMMENT '所属科目',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `file_id` int(11) NULL DEFAULT NULL COMMENT '附件',
  `answer` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '正确答案',
  `analyzes` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '答案解析',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  `wrong_count` int(11) NULL DEFAULT 0 COMMENT '错误次数',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '试题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of study_question
-- ----------------------------
INSERT INTO `study_question` VALUES (1, '21342134', 2, '2', NULL, '', '2143214234', '1', 0, 'admin', '2023-03-04 19:19:33', 'admin', '2023-03-04 19:41:12');
INSERT INTO `study_question` VALUES (2, '23414234', 3, '1', NULL, '', 'afasfasdfadsf', '1', 2, 'admin', '2023-03-04 19:42:31', '', NULL);
INSERT INTO `study_question` VALUES (3, '23423', 2, '3', NULL, 'Y', 'qwrqwerqwer', '1', 0, 'admin', '2023-03-04 19:42:51', '', NULL);
INSERT INTO `study_question` VALUES (4, '34retwertwert', 3, '4', NULL, '21432314', '231423434', '1', 2, 'admin', '2023-03-04 19:43:07', '', NULL);

-- ----------------------------
-- Table structure for study_resource
-- ----------------------------
DROP TABLE IF EXISTS `study_resource`;
CREATE TABLE `study_resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源名称',
  `subject_id` int(11) NOT NULL DEFAULT 0 COMMENT '所属科目',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `source` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源',
  `file_id` int(11) NULL DEFAULT NULL COMMENT '附件',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  `is_recommend` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '9' COMMENT '是否推荐',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `view_count` int(11) NULL DEFAULT 0 COMMENT '浏览次数',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of study_resource
-- ----------------------------
INSERT INTO `study_resource` VALUES (1, '50条生活励志录', 2, 'l', 'https://open.163.com/newview/movie/free?pid=CFJH1MKH7&mid=WFJH1MKI4#share-mob', NULL, NULL, 'N', '1', 2, 'admin', '2023-03-07 14:32:30', 'admin', '2023-03-07 15:56:34');
INSERT INTO `study_resource` VALUES (2, '唐诗三百首', 3, 'p', 'www.baidu.com', 1, NULL, 'N', '1', 2, 'admin', '2023-03-07 14:38:47', 'admin', '2023-03-07 15:54:26');

-- ----------------------------
-- Table structure for study_subject
-- ----------------------------
DROP TABLE IF EXISTS `study_subject`;
CREATE TABLE `study_subject`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目名称',
  `pid` int(11) NOT NULL COMMENT '上级',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `list_sort` int(11) NULL DEFAULT 9 COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of study_subject
-- ----------------------------
INSERT INTO `study_subject` VALUES (1, '会计', 0, NULL, 1, '1');
INSERT INTO `study_subject` VALUES (2, '工程', 0, NULL, 2, '1');
INSERT INTO `study_subject` VALUES (3, '初级', 1, NULL, 2, '1');

-- ----------------------------
-- Table structure for study_wrong
-- ----------------------------
DROP TABLE IF EXISTS `study_wrong`;
CREATE TABLE `study_wrong`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `user_id` int(11) NOT NULL COMMENT '用户',
  `question_id` int(11) NOT NULL COMMENT '题目',
  `count` tinyint(3) NOT NULL COMMENT '错误次数',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '错题本' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of study_wrong
-- ----------------------------
INSERT INTO `study_wrong` VALUES (1, 1, 1, 16, '2023-03-07 17:47:15');
INSERT INTO `study_wrong` VALUES (2, 1, 3, 13, '2023-03-07 17:47:29');

-- ----------------------------
-- Table structure for sys_chart
-- ----------------------------
DROP TABLE IF EXISTS `sys_chart`;
CREATE TABLE `sys_chart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代码',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `ds_id` int(11) NOT NULL COMMENT '数据源',
  `xaxis` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '横向坐标',
  `yaxis` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纵向坐标',
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  `list_sort` int(11) NOT NULL COMMENT '排序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE COMMENT '代码不能重复'
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '报表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_chart
-- ----------------------------
INSERT INTO `sys_chart` VALUES (1, 'bar', 'student_grade', '按年级统计在校生', 2, 'year=年级', 'total=学生数', NULL, 1, '1');
INSERT INTO `sys_chart` VALUES (2, 'line', 'student_grade2', '年级学生柱状图', 2, 'year=年级', 'total=学生数据', '', 2, '1');
INSERT INTO `sys_chart` VALUES (3, 'pie', 'student_grade3', '年级学生组成', 2, 'grade=年级', 'total=学生数', NULL, 3, '1');
INSERT INTO `sys_chart` VALUES (4, 'table', 'student_result', '我的成绩查询', 3, NULL, NULL, 'sem_name=学期\ncourse=课程\nresult=成绩\nlevel=等级', 5, '1');
INSERT INTO `sys_chart` VALUES (5, 'pie', 'teacher_type', '教师分类组成', 8, 'title=教师类型', 'total=教师数', NULL, 2, '1');
INSERT INTO `sys_chart` VALUES (6, 'pie', 'student_specialty', '学生专业分布', 9, 'title=专业', 'total=学生数', NULL, 1, '1');
INSERT INTO `sys_chart` VALUES (7, 'table', 'scheduling_day', '今日全校课表', 10, NULL, NULL, 'sectionName=节次\nroomName=教室\ncourseName=课程\nname=上课教师\nclassName=班级\nspecName=专业', 4, '1');
INSERT INTO `sys_chart` VALUES (8, 'table', 'my_scheduling', '教师本人课表', 11, NULL, NULL, 'week=周次\nsectionName=节次\nroomName=教室\ncourseName=课程\nclassName=班级\nspecName=专业', 4, '1');
INSERT INTO `sys_chart` VALUES (9, 'gauge', 'enroll_signup', '招生注册率', 12, '', '', NULL, 9, '1');
INSERT INTO `sys_chart` VALUES (10, 'table', 'student_glory_query', '学生荣耀查询', 21, NULL, NULL, 'name=学生姓名\ncode=学号\ntitle=荣耀名称\nlevel_name=级别\ntype_name=类型\ndepart=颁奖单位\nget_time=获奖时间', 9, '1');
INSERT INTO `sys_chart` VALUES (11, 'table', 'student_scheduling', '学生课表', 22, NULL, NULL, 'week=周次\nsectionName=节次\nroomName=教室\ncourseName=课程\nname=教师', 9, '1');
INSERT INTO `sys_chart` VALUES (12, 'bar', 'student_checkin', '招生报到统计', 23, 'year=年份', 'total=报到人数', NULL, 9, '1');
INSERT INTO `sys_chart` VALUES (13, 'bar', 'student_change', '学籍异动统计', 33, 'year=年度', 'total=学生数', NULL, 5, '1');
INSERT INTO `sys_chart` VALUES (14, 'bar', 'student_graduation', '毕业统计', 34, 'year=年度', 'total=毕业学生数', NULL, 5, '1');
INSERT INTO `sys_chart` VALUES (15, 'pie', 'student_graduation_type', '毕业去向统计', 35, 'type=去向', 'total=毕业生数', NULL, 5, '1');
INSERT INTO `sys_chart` VALUES (16, 'bar', 'practice_semster', '实习统计', 36, 'title=学期', 'total=学习学生数', NULL, 5, '1');
INSERT INTO `sys_chart` VALUES (17, 'bar', 'teach_accident', '教学事故统计', 37, 'title=学期', 'total=教学事故数', NULL, 6, '1');
INSERT INTO `sys_chart` VALUES (18, 'bar', 'lab_apply', '实验预约统计', 38, 'title=学期', 'total=预约次数', NULL, 6, '1');
INSERT INTO `sys_chart` VALUES (19, 'bar', 'oa_document', 'OA办结公文统计', 39, 'year=年度', 'total=办结公文数', NULL, 7, '1');
INSERT INTO `sys_chart` VALUES (20, 'bar', 'oa_meeting', '年度会议统计', 40, 'year=年度', 'total=会议次数', NULL, 7, '1');
INSERT INTO `sys_chart` VALUES (21, 'bar', 'student_train', '培训招生统计', 41, 'year=年度', 'total=招生人数', NULL, 5, '1');
INSERT INTO `sys_chart` VALUES (22, 'table', 'res_sort', '资源浏览排行', 42, NULL, NULL, 'title=资源名称\nsubject=主题\ncount=浏览次数', 8, '1');
INSERT INTO `sys_chart` VALUES (23, 'table', 'question_warong', '错题排行', 43, NULL, NULL, 'title=题目\nsubject=主题\ncount=错误次数', 8, '1');
INSERT INTO `sys_chart` VALUES (24, 'pie', 'student_sex', '在校生性别组成', 31, 'sex=性别', 'total=学生数', NULL, 5, '1');
INSERT INTO `sys_chart` VALUES (25, 'pie', 'student_lodge', '学生住宿统计', 32, 'lodge=是否住宿', 'total=人数', NULL, 5, '1');
INSERT INTO `sys_chart` VALUES (26, 'table', 'student_check_query', '宿舍考勤查询', 44, NULL, NULL, 'spec_name=专业\nclass_name=班级\nname=学生姓名\ncode=学号\nroom_name=宿舍\ncheck_date=考勤日期\ntype_name=考勤类型\ncomment=考勤说明', 6, '1');
INSERT INTO `sys_chart` VALUES (27, 'line', 'result_rate', '及格率统计', 45, 'title=学期', 'rate=及格率', NULL, 6, '1');
INSERT INTO `sys_chart` VALUES (28, 'table', 'teach_plan_no', '教学计划查询', 46, NULL, NULL, 'semster=学期\nname=姓名\nclazz=班级\ncourse=课程\nsubmits=是否提交\n', 7, '1');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-03-04 16:22:02', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-03-04 16:22:02', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-03-04 16:22:02', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '系统起始日期', 'sys.time.start', '2019', 'Y', 'admin', '2023-03-04 11:03:12', 'admin', '2023-03-05 11:04:01', '系统使用的起始日期，主要是数据的起始点');
INSERT INTO `sys_config` VALUES (5, '教师默认角色', 'base.role.teacher', '2,3', 'Y', 'admin', '2023-03-04 16:16:46', 'admin', '2023-03-05 09:52:18', NULL);
INSERT INTO `sys_config` VALUES (6, '学生默认角色', 'base.role.student', '2,4', 'Y', 'admin', '2023-03-04 16:17:12', 'admin', '2023-03-05 09:52:25', NULL);
INSERT INTO `sys_config` VALUES (7, '教师默认岗位', 'base.post.teacher', '4', 'Y', 'admin', '2023-03-04 16:22:04', '', NULL, NULL);
INSERT INTO `sys_config` VALUES (8, '成绩比例设置', 'edu.result.set', '{\"1\":20,\"2\":30,\"3\":50}', 'Y', 'admin', '2023-03-04 15:31:37', 'admin', '2023-03-05 11:34:20', NULL);
INSERT INTO `sys_config` VALUES (9, '排课周天', 'edu.scheduling.week', '1,2,3,4,5', 'Y', 'admin', '2023-03-04 15:05:57', '', NULL, NULL);
INSERT INTO `sys_config` VALUES (10, '学期最大课时数', 'teach.period.max', '48', 'Y', 'admin', '2023-03-04 15:58:07', 'admin', '2023-03-04 15:58:25', NULL);
INSERT INTO `sys_config` VALUES (11, '成绩名称', 'edu.result.name', '1=平时成绩 2=期中成绩 3=期末成绩', 'Y', 'admin', '2023-03-04 11:32:04', '', NULL, NULL);
INSERT INTO `sys_config` VALUES (12, '模拟考试题目数', 'study.exam.questions', '30', 'Y', 'admin', '2023-03-04 11:55:16', '', NULL, NULL);
INSERT INTO `sys_config` VALUES (13, '数据库备份命令', 'db_backup', 'D:\\tools\\dbback\\assets.bat', 'Y', 'admin', '2023-03-04 13:52:09', 'admin', '2023-03-04 13:52:59', '可以是直接命令，也可以是sh或bat脚本');

-- ----------------------------
-- Table structure for sys_dataset
-- ----------------------------
DROP TABLE IF EXISTS `sys_dataset`;
CREATE TABLE `sys_dataset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '代码',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `sqls` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '查询SQL',
  `param` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `list_sort` int(11) NOT NULL COMMENT '排序',
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code`) USING BTREE COMMENT '代码不能重复'
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据集' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dataset
-- ----------------------------
INSERT INTO `sys_dataset` VALUES (1, '3', 'student_count', '在校学生数', 'SELECT count(id) FROM base_student where status=\'1\'', NULL, 1, NULL, '1');
INSERT INTO `sys_dataset` VALUES (2, '2', 'student_grade', '学生年级统计', 'SELECT COUNT(id) total,year FROM base_student WHERE status=\'1\' GROUP BY year ORDER BY year ASC LIMIT 5', NULL, 2, NULL, '1');
INSERT INTO `sys_dataset` VALUES (3, '1', 'student_result', '我的成绩查询', 'select sm.title sem_name, c.title course,r.total_result result, dd.dict_label level \nfrom exam_result r\njoin base_student s on r.student_id = s.id\njoin base_semster sm on sm.id = r.sem_id\njoin base_course c on c.id=r.course_id\njoin sys_dict_data dd on dd.dict_type=\'result_level\' and dd.dict_value=r.level\nWHERE s.user_id = ME', '', 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (4, '3', 'unread_msg', '未读消息数', 'SELECT count(id) FROM sys_msg WHERE to_user=ME AND read_time IS NULL', NULL, 1, NULL, '1');
INSERT INTO `sys_dataset` VALUES (5, '3', 'teacher_count', '教师总数', 'SELECT count(id) FROM base_teacher where status=\'1\'', NULL, 1, NULL, '1');
INSERT INTO `sys_dataset` VALUES (6, '3', 'clazz_count', '开设班级数', 'SELECT count(id) FROM base_class where status=\'1\'', NULL, 1, NULL, '1');
INSERT INTO `sys_dataset` VALUES (7, '3', 'apply_count', '招生数', 'SELECT count(id) FROM student_checkin WHERE year(create_time)=year(now())', NULL, 1, NULL, '1');
INSERT INTO `sys_dataset` VALUES (8, '2', 'teacher_type', '教师分类统计', 'SELECT count(t.id) total, d.dict_label title FROM base_teacher t JOIN sys_dict_data d ON d.dict_value=t.type AND d.dict_type=\'teacher_type\' WHERE t.status=\'1\' GROUP BY d.dict_label', NULL, 2, NULL, '1');
INSERT INTO `sys_dataset` VALUES (9, '2', 'student_specialty', '学生专业分布', 'SELECT COUNT(s.id) total,ss.title FROM base_student s JOIN base_specialty ss ON s.spec_id=ss.id WHERE s.status=\'1\' GROUP BY ss.title', NULL, 1, NULL, '1');
INSERT INTO `sys_dataset` VALUES (10, '1', 'scheduling_day', '全校当日课表', 'SELECT sc.title sectionName,br.title roomName, bt.name,s.title specName,bc.title className, c.title courseName\nfrom education_scheduling es \nJOIN base_semster bs ON bs.id=es.sem_id AND bs.is_current=\'Y\'\nLEFT JOIN base_specialty s ON s.id=es.spec_id\nLEFT JOIN base_class bc ON bc.id=es.class_id\nJOIN base_teacher bt ON bt.user_id=es.teacher_id\nJOIN base_room br ON br.id=es.room_id\nJOIN base_section sc ON sc.id=es.section_id\nJOIN base_course c ON c.id=es.course_id\nWHERE es.week=dayofweek(now())-1', NULL, 4, NULL, '1');
INSERT INTO `sys_dataset` VALUES (11, '1', 'my_scheduling', '教师本人课表', 'SELECT sc.title sectionName,br.title roomName, bt.name,s.title specName,bc.title className, c.title courseName, dd.dict_label week\nfrom education_scheduling es \nJOIN base_semster bs ON bs.id=es.sem_id AND bs.is_current=\'Y\'\nLEFT JOIN base_specialty s ON s.id=es.spec_id\nLEFT JOIN base_class bc ON bc.id=es.class_id\nJOIN base_teacher bt ON bt.user_id=es.teacher_id\nJOIN base_room br ON br.id=es.room_id\nJOIN base_section sc ON sc.id=es.section_id\nJOIN base_course c ON c.id=es.course_id\nJOIN sys_dict_data dd ON dd.dict_type=\'common_week\' and dd.dict_value=es.week\nWHERE es.teacher_id=ME\nORDER BY es.week ASC', NULL, 4, NULL, '1');
INSERT INTO `sys_dataset` VALUES (12, '3', 'enroll_signup', '招生注册率', 'select sum(signups)/sum(total) * 100 rate from student_enroll where status=\'1\'', NULL, 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (13, '1', 'student_glory', '学生个人荣耀', 'select gs.*,s.name from glory_student gs\njoin base_student s on s.id=gs.student_id\nWHERE s.user_id=ME', NULL, 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (16, '1', 'my_result', '查询学生成绩', 'select s.name,c.title course,r.total_result result, dd.dict_label level from exam_result r\njoin base_student s on r.student_id = s.id\njoin base_course c on c.id=r.course_id\njoin sys_dict_data dd on dd.dict_type=\'result_level\' and dd.dict_value=r.level\nWHERE s.user_id=ME', NULL, 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (17, '1', 'my_practice_check', '个人实习考勤', 'select pc.*,c.title company_name from practice_check pc\njoin base_company c on c.id=pc.company_id\njoin base_student s on s.id=pc.stu_id\nWHERE s.user_id=ME', NULL, 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (18, '1', 'my_practice_summary', '个人实习总结', 'select ps.*,c.title company_name from practice_summary ps\njoin base_company c on c.id=ps.company_id\njoin base_student s on s.id=ps.stu_id\nWHERE s.user_id=ME', NULL, 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (19, '1', 'my_pay', '个人缴费查询', 'select p.* from wechat_pay p\njoin base_student s on s.id=p.stu_id\nWHERE s.user_id=ME', NULL, 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (20, '1', 'my_teach_check', '我的课堂考勤', 'select pc.*,c.title course_name, t.name teacher_name, st.title sem_name from teach_check pc\njoin base_course c on c.id=pc.course_id\njoin base_teacher t on t.id=pc.teacher_id\njoin base_semster st on st.id=pc.sem_id\njoin base_student s on s.id=pc.student_id\nWHERE s.user_id=ME', NULL, 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (21, '1', 'student_glory_query', '学生荣耀查询', 'select gs.*,s.name,s.code, dl.dict_label level_name,dt.dict_label type_name \nfrom glory_student gs\njoin base_student s on s.id=gs.student_id\njoin sys_dict_data dl on dl.dict_value=gs.level and dl.dict_type=\'glory_level\'\njoin sys_dict_data dt on dt.dict_value=gs.type and dt.dict_type=\'glory_type\'', 'title:gs.title like \'%?%\'\nname:s.name like \'%?%\'\ndepart:gs.depart like \'%?%\'\nclassId:s.class_id=?\ntype:gs.type=\'?\'\nlevel:gs.level=\'?\'\nbeginTime:gs.get_time>=\'?\'\nendTime:gs.get_time<=\'?\'', 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (22, '1', 'student_scheduling', '学生课表', 'SELECT sc.title sectionName,br.title roomName, bt.name, c.title courseName, dd.dict_label week\nfrom education_scheduling es \nJOIN base_semster bs ON bs.id=es.sem_id AND bs.is_current=\'Y\'\nJOIN base_class bc ON bc.id=es.class_id\nJOIN base_student ss ON ss.class_id=bc.id\nJOIN base_teacher bt ON bt.user_id=es.teacher_id\nJOIN base_room br ON br.id=es.room_id\nJOIN base_section sc ON sc.id=es.section_id\nJOIN base_course c ON c.id=es.course_id\nJOIN sys_dict_data dd ON dd.dict_type=\'common_week\' and dd.dict_value=es.week\nWHERE ss.user_id = ME\nUNION \nSELECT sc.title sectionName,br.title roomName, bt.name, c.title courseName, dd.dict_label week\nfrom education_scheduling es \nJOIN base_semster bs ON bs.id=es.sem_id AND bs.is_current=\'Y\'\nJOIN education_student ess ON ess.task_id=es.task_id\nJOIN base_student ss ON ss.id=ess.student_id\nJOIN base_teacher bt ON bt.user_id=es.teacher_id\nJOIN base_room br ON br.id=es.room_id\nJOIN base_section sc ON sc.id=es.section_id\nJOIN base_course c ON c.id=es.course_id\nJOIN sys_dict_data dd ON dd.dict_type=\'common_week\' and dd.dict_value=es.week\nWHERE ss.user_id = ME', NULL, 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (23, '2', 'student_checkin', '学生招生报到统计', 'select count(id) total, year(create_time) year from student_checkin GROUP BY year(create_time) ORDER BY year(create_time)', NULL, 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (31, '2', 'student_sex', '学生性别统计', 'select count(s.id) total,d.dict_label sex from base_student s join sys_dict_data d on d.dict_type=\'sys_user_sex\' and d.dict_value=s.sex where s.status=\'1\' group by d.dict_label', NULL, 5, NULL, '1');
INSERT INTO `sys_dataset` VALUES (32, '2', 'student_lodge', '学生住宿统计', 'select count(id) total,if(is_lodge = \'Y\', \'住宿\',\'不住宿\') lodge from base_student  where status=\'1\' group by is_lodge', NULL, 5, NULL, '1');
INSERT INTO `sys_dataset` VALUES (33, '2', 'student_change', '学籍异动统计', 'select count(c.id) total, year(c.create_time) year from student_change c join sys_dict_data d on d.dict_type=\'change_type\' and d.dict_value=c.type group by year(c.create_time)', NULL, 5, NULL, '1');
INSERT INTO `sys_dataset` VALUES (34, '2', 'student_graduation', '毕业生统计', 'select count(id) total, year(bzr_time) year from student_graduation group by year(bzr_time)', NULL, 5, NULL, '1');
INSERT INTO `sys_dataset` VALUES (35, '2', 'student_graduation_type', '毕业去向统计', 'select count(id) total, d.dict_label title from student_graduation g join sys_dict_data d on d.dict_type=\'graduation_type\' and d.dict_value = g.type where year(bzr_time)=year(now()) group by d.dict_label', NULL, 5, NULL, '1');
INSERT INTO `sys_dataset` VALUES (36, '2', 'practice_semster', '实习统计', 'select count(t.id) total, s.title from practice_task t join base_semster s on s.id = t.sem_id group by s.title', NULL, 6, NULL, '1');
INSERT INTO `sys_dataset` VALUES (37, '2', 'teach_accident', '教学故事统计', 'select count(t.id) total, s.title from teach_accident t join base_semster s on s.id = t.sem_id group by s.title', NULL, 6, NULL, '1');
INSERT INTO `sys_dataset` VALUES (38, '2', 'lab_apply', '实验预约统计', 'select count(t.id) total, s.title from lab_apply t join base_semster s on s.id = t.sem_id where t.check_status=\'1\' group by s.title', NULL, 7, NULL, '1');
INSERT INTO `sys_dataset` VALUES (39, '2', 'oa_document', 'OA办结公文统计', 'select count(id) total, year(add_time) year from oa_document where status=\'9\' group by year(add_time)', NULL, 8, NULL, '1');
INSERT INTO `sys_dataset` VALUES (40, '2', 'oa_meeting', '年度会议统计', 'select count(id) total, year(start_time) year from oa_meeting where check_status=\'1\' group by year(start_time)', NULL, 8, NULL, '1');
INSERT INTO `sys_dataset` VALUES (41, '2', 'student_train', '培训招生统计', 'select count(id) total, year(check_time) year from student_signup where check_status=\'1\' group by year(check_time)', NULL, 5, NULL, '1');
INSERT INTO `sys_dataset` VALUES (42, '1', 'res_sort', '资源浏览排行', 'select r.title, s.title subject, r.view_count count from study_resource r join study_subject s on s.id = r.subject_id ORDER BY r.view_count DESC limit 10', NULL, 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (43, '2', 'question_warong', '错题排行', 'select q.title, s.title subject, q.wrong_count count from study_question q join study_subject s on s.id = q.subject_id ORDER BY q.wrong_count DESC limit 10', NULL, 9, NULL, '1');
INSERT INTO `sys_dataset` VALUES (44, '1', 'student_check_query', '宿舍考勤查询', 'select s.title spec_name, c.title class_name, bs.name,bs.code, r.title room_name, sc.check_date, dd.dict_label type_name, sc.comment \nfrom student_check sc\njoin base_student bs on bs.id=sc.stu_id\njoin base_class c on c.id=bs.class_id\njoin base_specialty s on s.id=bs.spec_id\njoin base_room r on r.id=bs.room_id\njoin sys_dict_data dd on dd.dict_value=sc.type and dd.dict_type=\'dorm_check_type\'', 'beginTime:sc.check_date >= \'?\'\nendTime:sc.check_date <= \'?\'\nname:bs.name like concat(\'%\',\'?\',\'%\')\nclassId:bs.class_id=?\nspecId:bs.spec_id=?\ntype:sc.type=\'?\'', 5, NULL, '1');
INSERT INTO `sys_dataset` VALUES (45, '2', 'result_rate', '及格率统计', 'select count(if(r.level!=\'0\',true,null))/count(r.id) * 100 rate,s.title \nfrom exam_result r\njoin base_semster s on s.status=\'1\' and s.id = r.sem_id\ngroup by sem_id', NULL, 6, NULL, '1');
INSERT INTO `sys_dataset` VALUES (46, '1', 'teach_plan_no', '教学计划查询', 'select s.title semster, bt.name, bc.title clazz, c.title course,if(ifnull(p.id,\'未提交\')=\'未提交\',\'未提交\', \'已提交\') submits\nfrom education_task t\njoin base_semster s on s.id = t.sem_id\njoin base_course bc on bc.id = t.course_id\njoin base_teacher bt on bt.id = t.teacher_id\nleft join base_class c on c.id = t.class_id\nleft join teach_plan p on p.teacher_id=t.teacher_id and p.course_id=t.course_id and p.class_id = t.class_id\n', 'semId:t.sem_id=?', 7, NULL, '1');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '宇宙大学', 0, '管理员', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 16:22:02', 'admin', '2023-03-10 20:10:01');
INSERT INTO `sys_dept` VALUES (101, 111, '0,100,111', '教务处', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 16:22:02', 'admin', '2023-03-03 10:31:17');
INSERT INTO `sys_dept` VALUES (102, 111, '0,100,111', '后勤处', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 16:22:02', 'admin', '2023-03-03 10:31:31');
INSERT INTO `sys_dept` VALUES (103, 111, '0,100,111', '学生处', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 16:22:02', 'admin', '2023-03-03 10:31:21');
INSERT INTO `sys_dept` VALUES (104, 111, '0,100,111', '招就处', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 16:22:02', 'admin', '2023-03-03 10:31:35');
INSERT INTO `sys_dept` VALUES (105, 111, '0,100,111', '培训室', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 16:22:02', 'admin', '2023-03-03 10:31:44');
INSERT INTO `sys_dept` VALUES (106, 111, '0,100,111', '财务室', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 16:22:02', 'admin', '2023-03-03 10:31:49');
INSERT INTO `sys_dept` VALUES (107, 111, '0,100,111', '办公室', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 16:22:02', 'admin', '2023-03-03 10:31:54');
INSERT INTO `sys_dept` VALUES (108, 111, '0,100,111', '保卫处', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 16:22:02', 'admin', '2023-03-03 10:31:26');
INSERT INTO `sys_dept` VALUES (109, 111, '0,100,111', '督导室', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-03-02 16:22:02', 'admin', '2023-03-03 10:31:40');
INSERT INTO `sys_dept` VALUES (110, 100, '0,100', '专业部', 2, '管理员', NULL, NULL, '0', '0', 'admin', '2023-03-03 10:29:49', 'admin', '2023-03-03 10:32:55');
INSERT INTO `sys_dept` VALUES (111, 100, '0,100', '职能部门', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-03 10:31:05', 'admin', '2023-03-03 10:31:54');
INSERT INTO `sys_dept` VALUES (112, 110, '0,100,110', '电子信息', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-03 10:32:06', '', NULL);
INSERT INTO `sys_dept` VALUES (113, 110, '0,100,110', '机械类', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-03 10:32:16', '', NULL);
INSERT INTO `sys_dept` VALUES (114, 110, '0,100,110', '交通类', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-03 10:32:25', '', NULL);
INSERT INTO `sys_dept` VALUES (115, 100, '0,100', '教研组', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-03 10:32:46', '', NULL);
INSERT INTO `sys_dept` VALUES (116, 115, '0,100,115', '基础组', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-03 10:33:06', '', NULL);
INSERT INTO `sys_dept` VALUES (117, 115, '0,100,115', '机械组', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-03 10:33:19', '', NULL);
INSERT INTO `sys_dept` VALUES (118, 115, '0,100,115', '其他组', 9, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-03 10:33:32', '', NULL);
INSERT INTO `sys_dept` VALUES (119, 110, '0,100,110', '汉语言', 4, '李工', '15556664433', 'muyiio@outlook.com', '0', '0', 'admin', '2023-03-23 18:57:42', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 216 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 1, '教学楼', '1', 'building_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 13:50:00', 'admin', '2023-03-02 13:50:21', NULL);
INSERT INTO `sys_dict_data` VALUES (30, 2, '宿舍楼', '2', 'building_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 13:50:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (31, 3, '行政楼', '3', 'building_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 13:50:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (32, 4, '综合楼', '4', 'building_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 13:50:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (33, 1, '启用', '1', 'common_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 13:52:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (34, 2, '禁用', '0', 'common_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 13:52:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (35, 3, '第一产业（农林牧渔）', '1', 'industry_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 13:57:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (36, 2, '第二产业（工业）', '2', 'industry_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 13:57:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (37, 1, '第三产业（服务）', '3', 'industry_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 13:57:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (38, 1, '公共基础课', '1', 'course_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:06:18', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (39, 2, '专业基础课', '2', 'course_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:06:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (40, 3, '专业技能课', '3', 'course_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:06:45', 'admin', '2023-03-05 14:50:38', NULL);
INSERT INTO `sys_dict_data` VALUES (41, 4, '选修课', '4', 'course_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:06:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (42, 1, '普通教室', '1', 'room_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:12:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (43, 2, '多媒体教室', '2', 'room_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:13:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (44, 3, '实验室', '3', 'room_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:13:14', 'admin', '2023-03-02 14:13:20', NULL);
INSERT INTO `sys_dict_data` VALUES (45, 4, '实训室', '4', 'room_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:13:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (46, 5, '会议室', '5', 'room_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:13:49', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (47, 6, '办公室', '6', 'room_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:14:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (48, 9, '其它', '9', 'room_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:14:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (49, 1, '校内专任教师', '1', 'teacher_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:22:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (50, 2, '校内兼任教师', '2', 'teacher_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:22:33', 'admin', '2023-03-02 14:22:37', NULL);
INSERT INTO `sys_dict_data` VALUES (51, 3, '校外兼职教师', '3', 'teacher_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:22:49', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (52, 9, '其它人员', '9', 'teacher_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:23:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (53, 1, '研究生', '1', 'base_education', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:27:39', 'admin', '2023-03-02 14:28:05', NULL);
INSERT INTO `sys_dict_data` VALUES (54, 2, '本科', '2', 'base_education', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:27:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (55, 3, '大专', '3', 'base_education', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:27:58', 'admin', '2023-03-02 14:28:22', NULL);
INSERT INTO `sys_dict_data` VALUES (56, 0, '无', '0', 'base_education', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:28:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (57, 1, '博士', '1', 'base_degree', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:29:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (58, 2, '硕士', '2', 'base_degree', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:29:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (59, 3, '学士', '3', 'base_degree', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:29:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (60, 0, '无', '0', 'base_degree', NULL, NULL, 'N', '0', 'admin', '2023-03-02 14:29:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (61, 1, '转专业', '1', 'change_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:33:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (62, 2, '休学', '2', 'change_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:33:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (63, 3, '退学', '3', 'change_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:33:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (64, 1, '升学', '1', 'graduation_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:34:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (65, 2, '就业', '2', 'graduation_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:34:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (66, 3, '创业', '3', 'graduation_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:34:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (67, 1, '夜不归宿', '1', 'dorm_check_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:35:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (68, 2, '吵闹喧哗', '2', 'dorm_check_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:35:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (69, 3, '打架斗殴', '3', 'dorm_check_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:36:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (70, 9, '其他', '9', 'dorm_check_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:36:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (71, 0, '待审核', '0', 'check_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:40:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (72, 1, '审核通过', '1', 'check_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:40:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (73, 2, '审核未通过', '2', 'check_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 15:40:58', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (74, 1, '考试', '1', 'exam_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 16:08:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (75, 2, '考查', '2', 'exam_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 16:08:09', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (76, 1, '分班', '1', 'education_mode', NULL, NULL, 'N', '0', 'admin', '2023-03-02 16:08:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (77, 2, '分组', '2', 'education_mode', NULL, NULL, 'N', '0', 'admin', '2023-03-02 16:09:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (78, 1, '迟到', '1', 'check_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:01:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (79, 2, '早退', '2', 'check_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:01:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (80, 3, '旷课', '3', 'check_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:01:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (81, 4, '违纪', '4', 'check_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:01:43', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (82, 1, '未开始', '1', 'practice_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:04:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (83, 2, '实习中', '2', 'practice_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:04:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (84, 3, '实习结束', '3', 'practice_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:04:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (85, 4, '转岗', '4', 'practice_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:04:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (86, 5, '异常中止', '5', 'practice_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:04:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (87, 1, '迟到', '1', 'accident_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:18:25', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (88, 2, '早退', '2', 'accident_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:18:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (89, 3, '旷课', '3', 'accident_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:18:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (90, 4, '违纪', '4', 'accident_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:19:04', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (91, 0, '不及格', '0', 'result_level', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:30:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (92, 1, '及格', '1', 'result_level', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:31:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (93, 2, '良好', '2', 'result_level', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:31:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (94, 3, '优秀', '3', 'result_level', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:31:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (96, 1, '平时成绩', '1', 'result_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:32:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (97, 2, '期中成绩', '2', 'result_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:32:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (98, 3, '期末成绩', '3', 'result_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:33:04', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (99, 4, '实践成绩', '4', 'result_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:33:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (100, 5, '实习成绩', '5', 'result_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:33:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 1, '文本', '1', 'field_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:58:38', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 2, '日期', '2', 'field_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:58:49', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 3, '长文本', '3', 'field_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:59:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 4, '数字', '4', 'field_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:59:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 5, '附件', '5', 'field_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 17:59:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 1, '发起', '1', 'step_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 18:00:14', 'admin', '2023-03-05 11:20:53', NULL);
INSERT INTO `sys_dict_data` VALUES (107, 2, '审核', '2', 'step_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 18:00:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 3, '会审', '3', 'step_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 18:00:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 9, '终结', '9', 'step_type', NULL, NULL, 'N', '0', 'admin', '2023-03-02 18:01:25', 'admin', '2023-03-02 18:01:41', NULL);
INSERT INTO `sys_dict_data` VALUES (111, 0, '暂存', '0', 'flow_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 18:02:18', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 1, '办理中', '1', 'flow_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 18:02:30', 'admin', '2023-03-05 11:34:28', NULL);
INSERT INTO `sys_dict_data` VALUES (115, 4, '退回', '4', 'flow_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 18:03:06', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (116, 9, '办结', '9', 'flow_status', NULL, NULL, 'N', '0', 'admin', '2023-03-02 18:03:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (117, 2, '二年制', '2', 'education_period', NULL, NULL, 'N', '0', 'admin', '2023-03-03 15:05:58', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (118, 3, '三年制', '3', 'education_period', NULL, NULL, 'N', '0', 'admin', '2023-03-03 15:06:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (119, 4, '四年制', '4', 'education_period', NULL, NULL, 'N', '0', 'admin', '2023-03-03 15:06:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (120, 5, '五年制', '5', 'education_period', NULL, NULL, 'N', '0', 'admin', '2023-03-03 15:06:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (121, 1, '教学', '1', 'room_use', NULL, NULL, 'N', '0', 'admin', '2023-03-03 15:46:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (122, 2, '办公', '2', 'room_use', NULL, NULL, 'N', '0', 'admin', '2023-03-03 15:47:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (123, 3, '住宿', '3', 'room_use', NULL, NULL, 'N', '0', 'admin', '2023-03-03 15:47:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (124, 4, '仓储', '4', 'room_use', NULL, NULL, 'N', '0', 'admin', '2023-03-03 15:47:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (125, 9, '其它', '9', 'room_use', NULL, NULL, 'N', '0', 'admin', '2023-03-03 15:47:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (126, 1, '国有企业', '1', 'company_type', NULL, NULL, 'N', '0', 'admin', '2023-03-03 17:50:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (127, 2, '私营企业', '2', 'company_type', NULL, NULL, 'N', '0', 'admin', '2023-03-03 17:50:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (128, 3, '合资企业', '3', 'company_type', NULL, NULL, 'N', '0', 'admin', '2023-03-03 17:50:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (129, 9, '其它企业', '9', 'company_type', NULL, NULL, 'N', '0', 'admin', '2023-03-03 17:51:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (130, 1, '应届毕业生', '1', 'student_type', NULL, NULL, 'N', '0', 'admin', '2023-03-04 16:21:50', 'admin', '2023-03-04 16:22:21', NULL);
INSERT INTO `sys_dict_data` VALUES (131, 2, '往届毕业生', '2', 'student_type', NULL, NULL, 'N', '0', 'admin', '2023-03-04 16:22:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (132, 9, '其他', '9', 'student_type', NULL, NULL, 'N', '0', 'admin', '2023-03-04 16:22:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (133, 1, '正常', '1', 'practice_check', NULL, NULL, 'N', '0', 'admin', '2023-03-04 16:32:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (134, 2, '迟到', '2', 'practice_check', NULL, NULL, 'N', '0', 'admin', '2023-03-04 16:32:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (135, 3, '早退', '3', 'practice_check', NULL, NULL, 'N', '0', 'admin', '2023-03-04 16:32:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (136, 4, '旷工', '4', 'practice_check', NULL, NULL, 'N', '0', 'admin', '2023-03-04 16:32:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (137, 5, '违纪', '5', 'practice_check', NULL, NULL, 'N', '0', 'admin', '2023-03-04 16:32:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (138, 0, '周日', '0', 'common_week', NULL, NULL, 'N', '0', 'admin', '2023-03-05 14:41:48', 'admin', '2023-03-06 09:20:03', NULL);
INSERT INTO `sys_dict_data` VALUES (139, 1, '周一', '1', 'common_week', NULL, NULL, 'N', '0', 'admin', '2023-03-05 14:41:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (140, 2, '周二', '2', 'common_week', NULL, NULL, 'N', '0', 'admin', '2023-03-05 14:42:06', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (141, 3, '周三', '3', 'common_week', NULL, NULL, 'N', '0', 'admin', '2023-03-05 14:42:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (142, 4, '周四', '4', 'common_week', NULL, NULL, 'N', '0', 'admin', '2023-03-05 14:42:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (143, 5, '周五', '5', 'common_week', NULL, NULL, 'N', '0', 'admin', '2023-03-05 14:42:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (144, 6, '周六', '6', 'common_week', NULL, NULL, 'N', '0', 'admin', '2023-03-05 14:42:39', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (145, 1, '查询列表', '1', 'dataset_type', NULL, NULL, 'N', '0', 'admin', '2023-03-05 16:34:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (146, 2, '统计列表', '2', 'dataset_type', NULL, NULL, 'N', '0', 'admin', '2023-03-05 16:35:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (147, 3, '计算结果', '3', 'dataset_type', NULL, NULL, 'N', '0', 'admin', '2023-03-05 16:35:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (148, 1, '柱状图', 'bar', 'chart_type', NULL, NULL, 'N', '0', 'admin', '2023-03-05 16:35:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (149, 2, '折线图', 'line', 'chart_type', NULL, NULL, 'N', '0', 'admin', '2023-03-05 16:36:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (150, 3, '饼图', 'pie', 'chart_type', NULL, NULL, 'N', '0', 'admin', '2023-03-05 16:36:25', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (151, 4, '仪表盘', 'gauge', 'chart_type', NULL, NULL, 'N', '0', 'admin', '2023-03-05 16:37:52', 'admin', '2023-03-06 14:11:13', NULL);
INSERT INTO `sys_dict_data` VALUES (152, 1, '国家级', '1', 'glory_level', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:32:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (153, 2, '省级', '2', 'glory_level', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:33:04', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (154, 3, '市级', '3', 'glory_level', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:33:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (155, 4, '校级', '4', 'glory_level', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:33:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (156, 5, '国际级', '5', 'glory_level', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:33:38', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (157, 1, '资格证书', '1', 'glory_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:35:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (158, 2, '科研成果', '2', 'glory_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:35:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (159, 3, '发明专利', '3', 'glory_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:35:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (160, 4, '著作/论文', '4', 'glory_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:35:58', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (161, 5, '竞赛/考试', '5', 'glory_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:36:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (162, 9, '其它', '9', 'glory_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:36:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (163, 1, '私人消息', '1', 'msg_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:44:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (164, 2, '通知公告', '2', 'msg_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:44:25', 'admin', '2023-03-09 16:42:50', NULL);
INSERT INTO `sys_dict_data` VALUES (165, 3, '系统消息', '3', 'msg_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:44:29', 'admin', '2023-03-09 16:42:59', NULL);
INSERT INTO `sys_dict_data` VALUES (166, 1, '日报', '1', 'report_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:52:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (168, 2, '月报', '2', 'report_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:52:38', 'admin', '2023-03-09 09:05:10', NULL);
INSERT INTO `sys_dict_data` VALUES (169, 3, '年报', '3', 'report_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:52:50', 'admin', '2023-03-09 09:05:21', NULL);
INSERT INTO `sys_dict_data` VALUES (170, 1, '网页', 'view', 'wx_menu_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:58:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (171, 2, '点击事件', 'click', 'wx_menu_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:58:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (172, 3, '小程序', 'miniprogram', 'wx_menu_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 11:59:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (173, 9, '分组', '9', 'wx_menu_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 14:17:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (174, 4, '永久素材', 'media_id', 'wx_menu_type', NULL, NULL, 'N', '0', 'admin', '2023-03-06 14:17:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (175, 8, '撤销', '8', 'flow_status', NULL, NULL, 'N', '0', 'admin', '2023-03-06 15:51:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (176, 1, '未收', '1', 'process_status', NULL, NULL, 'N', '0', 'admin', '2023-03-06 15:53:55', 'admin', '2023-03-06 15:55:20', NULL);
INSERT INTO `sys_dict_data` VALUES (177, 2, '签收', '2', 'process_status', NULL, NULL, 'N', '0', 'admin', '2023-03-06 15:54:03', 'admin', '2023-03-06 15:55:14', NULL);
INSERT INTO `sys_dict_data` VALUES (178, 3, '通过', '3', 'process_status', NULL, NULL, 'N', '0', 'admin', '2023-03-06 15:54:38', 'admin', '2023-03-06 15:54:54', NULL);
INSERT INTO `sys_dict_data` VALUES (179, 4, '退回', '4', 'process_status', NULL, NULL, 'N', '0', 'admin', '2023-03-06 15:54:48', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (180, 1, '部门领导', '1', 'step_rule', NULL, NULL, 'N', '0', 'admin', '2023-03-06 16:37:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (181, 2, '上级部门', '2', 'step_rule', NULL, NULL, 'N', '0', 'admin', '2023-03-06 16:38:11', 'admin', '2023-03-06 16:39:15', NULL);
INSERT INTO `sys_dict_data` VALUES (182, 3, '指定人', '3', 'step_rule', NULL, NULL, 'N', '0', 'admin', '2023-03-06 16:38:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (183, 4, '指定部门', '4', 'step_rule', NULL, NULL, 'N', '0', 'admin', '2023-03-06 16:38:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (184, 9, '自定义查询', '9', 'step_rule', NULL, NULL, 'N', '0', 'admin', '2023-03-06 16:38:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (185, 1, '闲置', '1', 'asset_status', NULL, NULL, 'N', '0', 'admin', '2023-03-07 09:07:46', 'admin', '2023-03-07 09:08:26', NULL);
INSERT INTO `sys_dict_data` VALUES (186, 2, '占用', '2', 'asset_status', NULL, NULL, 'N', '0', 'admin', '2023-03-07 09:07:52', 'admin', '2023-03-07 09:56:36', NULL);
INSERT INTO `sys_dict_data` VALUES (187, 3, '损坏', '3', 'asset_status', NULL, NULL, 'N', '0', 'admin', '2023-03-07 09:07:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (188, 4, '丢失', '4', 'asset_status', NULL, NULL, 'N', '0', 'admin', '2023-03-07 09:08:09', 'admin', '2023-03-07 09:08:33', NULL);
INSERT INTO `sys_dict_data` VALUES (189, 5, '报废', '5', 'asset_status', NULL, NULL, 'N', '0', 'admin', '2023-03-07 09:08:18', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (190, 5, '指定角色', '5', 'step_rule', NULL, NULL, 'N', '0', 'admin', '2023-03-08 14:17:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (191, 7, '宿舍', '7', 'room_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 10:53:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (192, 5, '表格', 'table', 'chart_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 14:11:50', 'admin', '2023-03-07 14:11:55', NULL);
INSERT INTO `sys_dict_data` VALUES (193, 1, 'Web应用', '1', 'xdata_app_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 16:47:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (194, 2, '移动应用', '2', 'xdata_app_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 16:47:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (195, 9, '其它应用', '9', 'xdata_app_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 16:47:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (196, 1, '基础数据', '1', 'xdata_model_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 16:48:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (197, 2, '业务数据', '2', 'xdata_model_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 16:48:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (198, 3, '归档数据', '3', 'xdata_model_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 16:48:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (199, 9, '其它数据', '9', 'xdata_model_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 16:48:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (200, 1, '读数据', 'r', 'xdata_pipe_mode', NULL, NULL, 'N', '0', 'admin', '2023-03-07 16:48:46', 'admin', '2023-03-07 16:49:04', NULL);
INSERT INTO `sys_dict_data` VALUES (201, 2, '写数据', 'w', 'xdata_pipe_mode', NULL, NULL, 'N', '0', 'admin', '2023-03-07 16:48:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (202, 1, 'MySQL', '1', 'xdata_db_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 17:10:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (203, 2, 'Oracle', '2', 'xdata_db_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 17:10:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (204, 3, 'SQL Server', '3', 'xdata_db_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 17:10:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (205, 4, 'PostgreSQL', '4', 'xdata_db_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 17:10:22', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (206, 9, '其它', '9', 'xdata_db_type', NULL, NULL, 'N', '0', 'admin', '2023-03-07 17:10:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (207, 1, '视频', 'v', 'res_type', NULL, NULL, 'N', '0', 'admin', '2023-03-08 16:01:58', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (208, 2, '文档', 'd', 'res_type', NULL, NULL, 'N', '0', 'admin', '2023-03-08 16:02:06', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (209, 5, '链接', 'l', 'res_type', NULL, NULL, 'N', '0', 'admin', '2023-03-08 16:02:18', 'admin', '2023-03-08 14:59:12', NULL);
INSERT INTO `sys_dict_data` VALUES (210, 1, '单选', '1', 'question_type', NULL, NULL, 'N', '0', 'admin', '2023-03-08 16:02:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (211, 2, '多选', '2', 'question_type', NULL, NULL, 'N', '0', 'admin', '2023-03-08 16:02:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (212, 3, '判断', '3', 'question_type', NULL, NULL, 'N', '0', 'admin', '2023-03-08 16:02:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (213, 4, '填空', '4', 'question_type', NULL, NULL, 'N', '0', 'admin', '2023-03-08 16:02:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (214, 4, '图片', 'p', 'res_type', NULL, NULL, 'N', '0', 'admin', '2023-03-09 15:20:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (215, 3, '音频', '3', 'res_type', NULL, NULL, 'N', '0', 'admin', '2023-03-09 15:20:28', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-03-01 16:22:02', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统登录状态', 'sys_common_status', '0', 'admin', '2023-03-01 16:22:02', 'admin', '2023-03-02 13:56:08', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '楼宇类型', 'building_type', '0', 'admin', '2023-03-02 13:49:30', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (12, '通用状态', 'common_status', '0', 'admin', '2023-03-02 13:51:53', 'admin', '2023-03-02 14:00:10', NULL);
INSERT INTO `sys_dict_type` VALUES (13, '产业类型', 'industry_type', '0', 'admin', '2023-03-02 13:56:53', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (14, '企业类型', 'company_type', '0', 'admin', '2023-03-02 13:58:27', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (15, '课程类型', 'course_type', '0', 'admin', '2023-03-02 14:06:00', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (16, '教室类型', 'room_type', '0', 'admin', '2023-03-02 14:12:05', 'admin', '2023-03-02 14:12:23', NULL);
INSERT INTO `sys_dict_type` VALUES (17, '学生类型', 'student_type', '0', 'admin', '2023-03-02 14:21:07', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (18, '教师类型', 'teacher_type', '0', 'admin', '2023-03-02 14:22:03', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (19, '学历', 'base_education', '0', 'admin', '2023-03-02 14:24:55', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (20, '学位', 'base_degree', '0', 'admin', '2023-03-02 14:28:53', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (21, '异动类型', 'change_type', '0', 'admin', '2023-03-02 15:32:57', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (22, '毕业类型', 'graduation_type', '0', 'admin', '2023-03-02 15:34:12', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (23, '宿舍考勤类型', 'dorm_check_type', '0', 'admin', '2023-03-02 15:35:23', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (24, '审核状态', 'check_status', '0', 'admin', '2023-03-02 15:40:17', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (25, '考试类型', 'exam_type', '0', 'admin', '2023-03-02 16:07:47', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (26, '教学形式', 'education_mode', '0', 'admin', '2023-03-02 16:08:42', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (27, '考勤类型', 'check_type', '0', 'admin', '2023-03-02 17:00:46', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (28, '实习状态', 'practice_status', '0', 'admin', '2023-03-02 17:04:00', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (29, '教学事故类型', 'accident_type', '0', 'admin', '2023-03-02 17:18:07', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (30, '成绩等级', 'result_level', '0', 'admin', '2023-03-02 17:30:30', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (31, '成绩类型', 'result_type', '0', 'admin', '2023-03-02 17:32:14', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (32, '字段类型', 'field_type', '0', 'admin', '2023-03-02 17:55:03', 'admin', '2023-03-02 17:55:14', NULL);
INSERT INTO `sys_dict_type` VALUES (33, '步骤类型', 'step_type', '0', 'admin', '2023-03-02 17:59:53', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (34, '公文状态', 'flow_status', '0', 'admin', '2023-03-02 18:02:02', 'admin', '2023-03-02 15:53:26', NULL);
INSERT INTO `sys_dict_type` VALUES (35, '学制', 'education_period', '0', 'admin', '2023-03-03 15:05:39', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (36, '房间用途', 'room_use', '0', 'admin', '2023-03-03 15:46:41', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (37, '实习考勤类型', 'practice_check', '0', 'admin', '2023-03-03 16:31:51', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (38, '周天', 'common_week', '0', 'admin', '2023-03-04 14:41:28', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (39, '数据集类型', 'dataset_type', '0', 'admin', '2023-03-04 16:33:58', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (40, '报表类型', 'chart_type', '0', 'admin', '2023-03-04 16:34:10', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (41, '奖项级别', 'glory_level', '0', 'admin', '2023-03-05 11:32:30', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (42, '奖项类型', 'glory_type', '0', 'admin', '2023-03-05 11:34:39', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (43, '消息类型', 'msg_type', '0', 'admin', '2023-03-05 11:43:59', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (44, '汇报类型', 'report_type', '0', 'admin', '2023-03-05 11:51:52', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (45, '微信菜单类型', 'wx_menu_type', '0', 'admin', '2023-03-05 11:58:13', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (46, '处理状态', 'process_status', '0', 'admin', '2023-03-05 15:53:42', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (47, '步骤规则', 'step_rule', '0', 'admin', '2023-03-05 16:37:41', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (48, '资产状态', 'asset_status', '0', 'admin', '2023-03-06 09:07:32', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (49, '应用类型', 'xdata_app_type', '0', 'admin', '2023-03-06 16:46:28', 'admin', '2023-03-06 16:47:20', NULL);
INSERT INTO `sys_dict_type` VALUES (50, '模型分类', 'xdata_model_type', '0', 'admin', '2023-03-06 16:46:46', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (51, '管道模式', 'xdata_pipe_mode', '0', 'admin', '2023-03-06 16:47:06', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (52, '数据库类型', 'xdata_db_type', '0', 'admin', '2023-03-06 17:07:24', 'admin', '2023-03-06 17:09:51', NULL);
INSERT INTO `sys_dict_type` VALUES (53, '资源类型', 'res_type', '0', 'admin', '2023-03-07 16:01:27', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (54, '试题类型', 'question_type', '0', 'admin', '2023-03-07 16:01:40', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_files
-- ----------------------------
DROP TABLE IF EXISTS `sys_files`;
CREATE TABLE `sys_files`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '路径',
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'MD5值',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '上传人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `md5`(`md5`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_files
-- ----------------------------
INSERT INTO `sys_files` VALUES (1, '微信图片_20201128210814.jpg', '/profile/upload/2020/12/11/c78f8796-18fa-417b-bdf7-8bccdce46a4b.jpg', '844e256bc1c53be11313befc50665866', 'admin', '2023-03-08 09:49:39');
INSERT INTO `sys_files` VALUES (2, '概要设计.docx', '/profile/upload/2020/12/15/f379801e-ed86-4bed-aadf-f5c914e39833.docx', '0b12c7669ba84e429d91a18323de210b', 'admin', '2023-03-08 14:14:07');
INSERT INTO `sys_files` VALUES (3, '数据库设计思路.docx', '/profile/upload/2020/12/15/dda511e5-1ca9-42f6-83b4-b882c8a344a2.docx', 'b280fcab682f9672df3496e0efe25987', 'admin', '2023-03-08 15:23:20');
INSERT INTO `sys_files` VALUES (4, '系统架构.jpg', '/profile/upload/2020/12/16/fbcf8d28-535e-4fef-9921-4885d4843bb2.jpg', 'eb1f4559a5f10ec62595751684613a50', 'admin', '2023-03-08 09:25:34');
INSERT INTO `sys_files` VALUES (5, '1610700454776..jpg', '/profile/upload/2021/01/15/02d62526-acaa-476c-894e-65e4e871fd30.jpg', '124310d0903c3c2c00b7267b115a6321', '201903001', '2023-03-08 16:47:54');
INSERT INTO `sys_files` VALUES (6, '消防无线局域智慧消防系统.jpg', '/profile/upload/2021/01/15/7850be46-c497-41da-bcd0-93a2d940cba3.jpg', '6851d7f3ea489ea61d41108fdced3134', '201903001', '2023-03-08 17:02:55');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-03-05 16:22:03', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-03-05 16:22:03', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-03-05 16:22:03', '', NULL, '');
INSERT INTO `sys_job` VALUES (4, '同步专业信息', 'DEFAULT', 'xdata.run(2)', '0 0/5 * * * ? ', '1', '1', '1', 'admin', '2023-03-06 15:18:44', 'admin', '2023-03-06 15:19:54', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '同步专业信息', 'DEFAULT', 'xdata.run(2)', '同步专业信息 总共耗时：5毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.xdata.task.XDataJob.run(java.lang.Integer)\r\n	at java.lang.Class.getDeclaredMethod(Class.java:2130)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:55)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2023-03-05 15:19:57');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-14 00:37:14');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-14 00:37:18');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-14 13:34:21');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-14 16:44:01');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-14 21:38:01');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-14 21:47:04');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-04-15 01:19:05');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 01:19:10');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 03:25:32');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '223.104.250.133', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 10:07:59');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 12:16:32');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 12:16:54');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 12:44:59');
INSERT INTO `sys_logininfor` VALUES (14, '201903001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 12:45:07');
INSERT INTO `sys_logininfor` VALUES (15, '201903001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 12:45:24');
INSERT INTO `sys_logininfor` VALUES (16, '2019105001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 12:45:34');
INSERT INTO `sys_logininfor` VALUES (17, '2019105001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 12:45:50');
INSERT INTO `sys_logininfor` VALUES (18, '2019105002', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 12:45:59');
INSERT INTO `sys_logininfor` VALUES (19, '2019105002', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 12:46:09');
INSERT INTO `sys_logininfor` VALUES (20, '2019105002', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 12:46:14');
INSERT INTO `sys_logininfor` VALUES (21, '2019105002', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 12:47:07');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 12:47:14');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 13:36:32');
INSERT INTO `sys_logininfor` VALUES (24, '201903001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 13:36:38');
INSERT INTO `sys_logininfor` VALUES (25, '201903001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 13:36:54');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 13:37:00');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 13:38:14');
INSERT INTO `sys_logininfor` VALUES (28, '201903001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 13:38:20');
INSERT INTO `sys_logininfor` VALUES (29, '201903001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 13:38:34');
INSERT INTO `sys_logininfor` VALUES (30, '201903001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 13:38:40');
INSERT INTO `sys_logininfor` VALUES (31, '201903001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 13:38:45');
INSERT INTO `sys_logininfor` VALUES (32, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 13:38:50');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 15:01:15');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 15:45:29');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 16:06:12');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 16:06:53');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 16:07:46');
INSERT INTO `sys_logininfor` VALUES (38, '201903001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 16:07:52');
INSERT INTO `sys_logininfor` VALUES (39, '201903001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 16:08:05');
INSERT INTO `sys_logininfor` VALUES (40, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 16:08:11');
INSERT INTO `sys_logininfor` VALUES (41, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 16:12:26');
INSERT INTO `sys_logininfor` VALUES (42, '201903001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 16:12:32');
INSERT INTO `sys_logininfor` VALUES (43, '201903001', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-15 16:12:48');
INSERT INTO `sys_logininfor` VALUES (44, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-15 16:12:55');
INSERT INTO `sys_logininfor` VALUES (45, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '1', '验证码已失效', '2023-04-21 23:18:46');
INSERT INTO `sys_logininfor` VALUES (46, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-21 23:18:54');
INSERT INTO `sys_logininfor` VALUES (47, 'admin', '183.230.226.170', 'XX XX', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-04-23 11:49:40');
INSERT INTO `sys_logininfor` VALUES (48, 'admin', '183.230.226.170', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-23 11:49:46');
INSERT INTO `sys_logininfor` VALUES (49, 'admin', '183.230.226.160', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-26 12:58:35');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1761 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-02-26 16:22:02', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 1, 4, 'monitor', NULL, 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2023-02-26 16:22:02', 'admin', '2023-02-25 15:35:20', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 1, 5, 'tool', NULL, 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-02-26 16:22:02', 'admin', '2023-02-25 15:35:44', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1704, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-02-26 16:22:02', 'admin', '2023-02-25 15:31:27', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1704, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-02-26 16:22:02', 'admin', '2023-02-25 15:31:19', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1704, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-02-26 16:22:02', 'admin', '2023-02-25 15:31:34', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1061, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-02-26 16:22:02', 'admin', '2023-02-25 15:34:24', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1704, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-02-26 16:22:02', 'admin', '2023-02-25 15:32:30', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1705, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-02-26 16:22:02', 'admin', '2023-02-25 15:32:37', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1705, 7, 'config', 'system/config/index', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-02-26 16:22:02', 'admin', '2023-02-25 15:32:48', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '新闻推送', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-02-26 16:22:02', 'admin', '2023-04-14 14:40:23', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', 'system/log/index', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-02-26 16:22:02', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-02-26 16:22:02', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '1', '0', 'monitor:job:list', 'job', 'admin', '2023-02-26 16:22:02', 'admin', '2023-04-14 00:44:03', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-02-26 16:22:02', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-02-26 16:22:02', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-02-26 16:22:02', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-02-26 16:22:02', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-02-26 16:22:02', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (116, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-02-27 11:53:45', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-02-27 16:22:02', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-02-27 16:22:02', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '新闻查询', 107, 1, '#', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-02-27 16:22:02', 'admin', '2023-04-14 14:41:26', '');
INSERT INTO `sys_menu` VALUES (1037, '新增新闻', 107, 2, '#', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-02-27 16:22:02', 'admin', '2023-04-14 14:41:38', '');
INSERT INTO `sys_menu` VALUES (1038, '新闻修改', 107, 3, '#', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-02-27 16:22:02', 'admin', '2023-04-14 14:41:46', '');
INSERT INTO `sys_menu` VALUES (1039, '新闻删除', 107, 4, '#', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-02-27 16:22:02', 'admin', '2023-04-14 14:41:54', '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 114, 1, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 114, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 114, 3, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 114, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 114, 4, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 114, 5, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-02-27 16:22:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '基础数据', 0, 3, '/base', NULL, 1, 0, 'M', '0', '0', '', 'documentation', 'admin', '2023-02-28 09:28:33', 'admin', '2023-03-01 17:18:16', '');
INSERT INTO `sys_menu` VALUES (1062, '专业管理', 1061, 4, 'specialty', 'base/specialty/index', 1, 0, 'C', '0', '0', 'base:specialty:list', 'education', 'admin', '2023-02-28 09:28:33', 'admin', '2023-03-01 17:41:58', '专业菜单');
INSERT INTO `sys_menu` VALUES (1063, '专业查询', 1062, 1, '#', '', 1, 0, 'F', '0', '0', 'base:specialty:query', '#', 'admin', '2023-02-28 09:28:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1064, '专业新增', 1062, 2, '#', '', 1, 0, 'F', '0', '0', 'base:specialty:add', '#', 'admin', '2023-02-28 09:28:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1065, '专业修改', 1062, 3, '#', '', 1, 0, 'F', '0', '0', 'base:specialty:edit', '#', 'admin', '2023-02-28 09:28:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1066, '专业删除', 1062, 4, '#', '', 1, 0, 'F', '0', '0', 'base:specialty:remove', '#', 'admin', '2023-02-28 09:28:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1067, '专业导出', 1062, 5, '#', '', 1, 0, 'F', '0', '0', 'base:specialty:export', '#', 'admin', '2023-02-28 09:28:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1068, '班级管理', 1061, 2, 'clazz', 'base/clazz/index', 1, 0, 'C', '0', '0', 'base:clazz:list', 'nested', 'admin', '2023-02-28 09:29:45', 'admin', '2023-03-01 17:42:32', '班级菜单');
INSERT INTO `sys_menu` VALUES (1069, '班级查询', 1068, 1, '#', '', 1, 0, 'F', '0', '0', 'base:clazz:query', '#', 'admin', '2023-02-28 09:29:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1070, '班级新增', 1068, 2, '#', '', 1, 0, 'F', '0', '0', 'base:clazz:add', '#', 'admin', '2023-02-28 09:29:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1071, '班级修改', 1068, 3, '#', '', 1, 0, 'F', '0', '0', 'base:clazz:edit', '#', 'admin', '2023-02-28 09:29:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1072, '班级删除', 1068, 4, '#', '', 1, 0, 'F', '0', '0', 'base:clazz:remove', '#', 'admin', '2023-02-28 09:29:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1073, '班级导出', 1068, 5, '#', '', 1, 0, 'F', '0', '0', 'base:clazz:export', '#', 'admin', '2023-02-28 09:29:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1074, '教师管理', 1061, 3, 'teacher', 'base/teacher/index', 1, 0, 'C', '0', '0', 'base:teacher:list', 'peoples', 'admin', '2023-02-28 14:35:30', 'admin', '2023-03-02 09:42:33', '老师菜单');
INSERT INTO `sys_menu` VALUES (1075, '老师查询', 1074, 1, '#', '', 1, 0, 'F', '0', '0', 'base:teacher:query', '#', 'admin', '2023-02-28 14:35:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1076, '老师新增', 1074, 2, '#', '', 1, 0, 'F', '0', '0', 'base:teacher:add', '#', 'admin', '2023-02-28 14:35:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1077, '老师修改', 1074, 3, '#', '', 1, 0, 'F', '0', '0', 'base:teacher:edit', '#', 'admin', '2023-02-28 14:35:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1078, '老师删除', 1074, 4, '#', '', 1, 0, 'F', '0', '0', 'base:teacher:remove', '#', 'admin', '2023-02-28 14:35:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1079, '老师导出', 1074, 5, '#', '', 1, 0, 'F', '0', '0', 'base:teacher:export', '#', 'admin', '2023-02-28 14:35:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1080, '学生管理', 1061, 1, 'student', 'base/student/index', 1, 0, 'C', '0', '0', 'base:student:list', 'people', 'admin', '2023-02-28 14:35:30', 'admin', '2023-03-01 17:41:17', '学生菜单');
INSERT INTO `sys_menu` VALUES (1081, '学生查询', 1080, 1, '#', '', 1, 0, 'F', '0', '0', 'base:student:query', '#', 'admin', '2023-02-28 14:35:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1082, '学生新增', 1080, 2, '#', '', 1, 0, 'F', '0', '0', 'base:student:add', '#', 'admin', '2023-02-28 14:35:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1083, '学生修改', 1080, 3, '#', '', 1, 0, 'F', '0', '0', 'base:student:edit', '#', 'admin', '2023-02-28 14:35:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1084, '学生删除', 1080, 4, '#', '', 1, 0, 'F', '0', '0', 'base:student:remove', '#', 'admin', '2023-02-28 14:35:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1085, '学生导出', 1080, 5, '#', '', 1, 0, 'F', '0', '0', 'base:student:export', '#', 'admin', '2023-02-28 14:35:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1086, '学期管理', 1061, 5, 'semster', 'base/semster/index', 1, 0, 'C', '0', '0', 'base:semster:list', 'date-range', 'admin', '2023-02-28 14:35:30', 'admin', '2023-03-01 09:43:31', '学期菜单');
INSERT INTO `sys_menu` VALUES (1087, '学期查询', 1086, 1, '#', '', 1, 0, 'F', '0', '0', 'base:semster:query', '#', 'admin', '2023-02-28 14:35:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1088, '学期新增', 1086, 2, '#', '', 1, 0, 'F', '0', '0', 'base:semster:add', '#', 'admin', '2023-02-28 14:35:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1089, '学期修改', 1086, 3, '#', '', 1, 0, 'F', '0', '0', 'base:semster:edit', '#', 'admin', '2023-02-28 14:35:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1090, '学期删除', 1086, 4, '#', '', 1, 0, 'F', '0', '0', 'base:semster:remove', '#', 'admin', '2023-02-28 14:35:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1091, '学期导出', 1086, 5, '#', '', 1, 0, 'F', '0', '0', 'base:semster:export', '#', 'admin', '2023-02-28 14:35:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1092, '节次管理', 1369, 13, 'section', 'base/section/index', 1, 0, 'C', '0', '0', 'base:section:list', 'date', 'admin', '2023-02-28 14:36:02', 'admin', '2023-03-01 10:46:56', '节次菜单');
INSERT INTO `sys_menu` VALUES (1093, '节次查询', 1092, 1, '#', '', 1, 0, 'F', '0', '0', 'base:section:query', '#', 'admin', '2023-02-28 14:36:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1094, '节次新增', 1092, 2, '#', '', 1, 0, 'F', '0', '0', 'base:section:add', '#', 'admin', '2023-02-28 14:36:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1095, '节次修改', 1092, 3, '#', '', 1, 0, 'F', '0', '0', 'base:section:edit', '#', 'admin', '2023-02-28 14:36:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1096, '节次删除', 1092, 4, '#', '', 1, 0, 'F', '0', '0', 'base:section:remove', '#', 'admin', '2023-02-28 14:36:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1097, '节次导出', 1092, 5, '#', '', 1, 0, 'F', '0', '0', 'base:section:export', '#', 'admin', '2023-02-28 14:36:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1098, '房间管理', 1369, 14, 'room', 'base/room/index', 1, 0, 'C', '0', '0', 'base:room:list', 'row', 'admin', '2023-02-28 14:36:11', 'admin', '2023-03-01 17:39:53', '房间菜单');
INSERT INTO `sys_menu` VALUES (1099, '房间查询', 1098, 1, '#', '', 1, 0, 'F', '0', '0', 'base:room:query', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1100, '房间新增', 1098, 2, '#', '', 1, 0, 'F', '0', '0', 'base:room:add', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1101, '房间修改', 1098, 3, '#', '', 1, 0, 'F', '0', '0', 'base:room:edit', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1102, '房间删除', 1098, 4, '#', '', 1, 0, 'F', '0', '0', 'base:room:remove', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1103, '房间导出', 1098, 5, '#', '', 1, 0, 'F', '0', '0', 'base:room:export', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1104, '课程管理', 1061, 6, 'course', 'base/course/index', 1, 0, 'C', '0', '0', 'base:course:list', 'clipboard', 'admin', '2023-02-28 14:36:11', 'admin', '2023-03-01 09:43:58', '课程菜单');
INSERT INTO `sys_menu` VALUES (1105, '课程查询', 1104, 1, '#', '', 1, 0, 'F', '0', '0', 'base:course:query', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1106, '课程新增', 1104, 2, '#', '', 1, 0, 'F', '0', '0', 'base:course:add', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1107, '课程修改', 1104, 3, '#', '', 1, 0, 'F', '0', '0', 'base:course:edit', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1108, '课程删除', 1104, 4, '#', '', 1, 0, 'F', '0', '0', 'base:course:remove', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1109, '课程导出', 1104, 5, '#', '', 1, 0, 'F', '0', '0', 'base:course:export', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1110, '企业管理', 1369, 6, 'company', 'base/company/index', 1, 0, 'C', '0', '0', 'base:company:list', 'build', 'admin', '2023-02-28 14:36:11', 'admin', '2023-03-01 10:46:47', '企业菜单');
INSERT INTO `sys_menu` VALUES (1111, '企业查询', 1110, 1, '#', '', 1, 0, 'F', '0', '0', 'base:company:query', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1112, '企业新增', 1110, 2, '#', '', 1, 0, 'F', '0', '0', 'base:company:add', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1113, '企业修改', 1110, 3, '#', '', 1, 0, 'F', '0', '0', 'base:company:edit', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1114, '企业删除', 1110, 4, '#', '', 1, 0, 'F', '0', '0', 'base:company:remove', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1115, '企业导出', 1110, 5, '#', '', 1, 0, 'F', '0', '0', 'base:company:export', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1116, '楼宇管理', 1369, 1, 'building', 'base/building/index', 1, 0, 'C', '0', '0', 'base:building:list', 'chart', 'admin', '2023-02-28 14:36:11', 'admin', '2023-03-01 17:07:56', '楼宇菜单');
INSERT INTO `sys_menu` VALUES (1117, '楼宇查询', 1116, 1, '#', '', 1, 0, 'F', '0', '0', 'base:building:query', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1118, '楼宇新增', 1116, 2, '#', '', 1, 0, 'F', '0', '0', 'base:building:add', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1119, '楼宇修改', 1116, 3, '#', '', 1, 0, 'F', '0', '0', 'base:building:edit', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1120, '楼宇删除', 1116, 4, '#', '', 1, 0, 'F', '0', '0', 'base:building:remove', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1121, '楼宇导出', 1116, 5, '#', '', 1, 0, 'F', '0', '0', 'base:building:export', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1122, '教材管理', 1061, 7, 'book', 'base/book/index', 1, 0, 'C', '0', '0', 'base:book:list', 'excel', 'admin', '2023-02-28 14:36:11', 'admin', '2023-03-01 09:44:06', '教材菜单');
INSERT INTO `sys_menu` VALUES (1123, '教材查询', 1122, 1, '#', '', 1, 0, 'F', '0', '0', 'base:book:query', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1124, '教材新增', 1122, 2, '#', '', 1, 0, 'F', '0', '0', 'base:book:add', '#', 'admin', '2023-02-28 14:36:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1125, '教材修改', 1122, 3, '#', '', 1, 0, 'F', '0', '0', 'base:book:edit', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1126, '教材删除', 1122, 4, '#', '', 1, 0, 'F', '0', '0', 'base:book:remove', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1127, '教材导出', 1122, 5, '#', '', 1, 0, 'F', '0', '0', 'base:book:export', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1130, '学生管理', 1368, 2, 'studentIndex', 'student/work/info', 1, 0, 'M', '0', '0', '', 'peoples', 'admin', '2023-02-28 14:36:55', 'admin', '2023-03-01 13:27:29', '');
INSERT INTO `sys_menu` VALUES (1131, '排课调课', 1236, 1, 'schedule', 'teach/work/schedule', 1, 0, 'M', '0', '0', '', 'date', 'admin', '2023-02-28 14:36:55', 'admin', '2023-03-01 09:21:36', '');
INSERT INTO `sys_menu` VALUES (1132, '毕业去向', 1373, 1, 'graduationIndex', 'student/graduation/index', 1, 0, 'C', '0', '0', 'student:graduation:list', 'logininfor', 'admin', '2023-02-28 14:36:55', 'admin', '2023-03-01 17:03:56', '毕业管理菜单');
INSERT INTO `sys_menu` VALUES (1133, '毕业管理查询', 1132, 1, '#', '', 1, 0, 'F', '0', '0', 'student:graduation:query', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1134, '毕业管理新增', 1132, 2, '#', '', 1, 0, 'F', '0', '0', 'student:graduation:add', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1135, '毕业管理修改', 1132, 3, '#', '', 1, 0, 'F', '0', '0', 'student:graduation:edit', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1136, '毕业管理删除', 1132, 4, '#', '', 1, 0, 'F', '0', '0', 'student:graduation:remove', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1137, '毕业管理导出', 1132, 5, '#', '', 1, 0, 'F', '0', '0', 'student:graduation:export', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1138, '学籍异动', 1130, 1, 'studentChange', 'student/studentChange/index', 1, 0, 'C', '0', '0', 'student:studentChange:list', 'druid', 'admin', '2023-02-28 14:36:55', 'admin', '2023-02-28 15:29:49', '学籍异动菜单');
INSERT INTO `sys_menu` VALUES (1139, '学籍异动查询', 1138, 1, '#', '', 1, 0, 'F', '0', '0', 'student:studentChange:query', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1140, '学籍异动新增', 1138, 2, '#', '', 1, 0, 'F', '0', '0', 'student:studentChange:add', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1141, '学籍异动修改', 1138, 3, '#', '', 1, 0, 'F', '0', '0', 'student:studentChange:edit', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1142, '学籍异动删除', 1138, 4, '#', '', 1, 0, 'F', '0', '0', 'student:studentChange:remove', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1143, '学籍异动导出', 1138, 5, '#', '', 1, 0, 'F', '0', '0', 'student:studentChange:export', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1144, '宿舍考勤', 1130, 1, 'studentCheck', 'student/studentCheck/index', 1, 0, 'C', '0', '0', 'student:studentCheck:list', 'bug', 'admin', '2023-02-28 14:36:55', 'admin', '2023-02-28 15:29:49', '宿舍考勤菜单');
INSERT INTO `sys_menu` VALUES (1145, '宿舍考勤查询', 1144, 1, '#', '', 1, 0, 'F', '0', '0', 'student:studentCheck:query', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1146, '宿舍考勤新增', 1144, 2, '#', '', 1, 0, 'F', '0', '0', 'student:studentCheck:add', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1147, '宿舍考勤修改', 1144, 3, '#', '', 1, 0, 'F', '0', '0', 'student:studentCheck:edit', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1148, '宿舍考勤删除', 1144, 4, '#', '', 1, 0, 'F', '0', '0', 'student:studentCheck:remove', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1149, '宿舍考勤导出', 1144, 5, '#', '', 1, 0, 'F', '0', '0', 'student:studentCheck:export', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1150, '学籍管理', 1130, 1, 'studentInfo', 'student/studentInfo/index', 1, 0, 'C', '0', '0', 'student:studentInfo:list', 'people', 'admin', '2023-02-28 14:36:55', 'admin', '2023-02-28 15:29:49', '学籍管理菜单');
INSERT INTO `sys_menu` VALUES (1151, '学籍管理查询', 1150, 1, '#', '', 1, 0, 'F', '0', '0', 'student:studentInfo:query', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1152, '学籍管理新增', 1150, 2, '#', '', 1, 0, 'F', '0', '0', 'student:studentInfo:add', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1153, '学籍管理修改', 1150, 3, '#', '', 1, 0, 'F', '0', '0', 'student:studentInfo:edit', '#', 'admin', '2023-02-28 14:36:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1154, '学籍管理删除', 1150, 4, '#', '', 1, 0, 'F', '0', '0', 'student:studentInfo:remove', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1155, '学籍管理导出', 1150, 5, '#', '', 1, 0, 'F', '0', '0', 'student:studentInfo:export', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1156, '评教管理', 1368, 8, 'evaluate', 'student/work/evaluate', 1, 0, 'M', '0', '0', '', 'job', 'admin', '2023-02-28 15:49:43', 'admin', '2023-02-28 15:49:43', '');
INSERT INTO `sys_menu` VALUES (1157, '调课管理', 1131, 4, 'eduExchange', 'education/eduExchange/index', 1, 0, 'C', '0', '0', 'education:eduExchange:list', 'time-range', 'admin', '2023-02-28 15:49:43', 'admin', '2023-02-28 15:49:43', '调课管理菜单');
INSERT INTO `sys_menu` VALUES (1158, '调课管理查询', 1157, 1, '#', '', 1, 0, 'F', '0', '0', 'education:eduExchange:query', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1159, '调课管理新增', 1157, 2, '#', '', 1, 0, 'F', '0', '0', 'education:eduExchange:add', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1160, '调课管理修改', 1157, 3, '#', '', 1, 0, 'F', '0', '0', 'education:eduExchange:edit', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1161, '调课管理删除', 1157, 4, '#', '', 1, 0, 'F', '0', '0', 'education:eduExchange:remove', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1162, '调课管理导出', 1157, 5, '#', '', 1, 0, 'F', '0', '0', 'education:eduExchange:export', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1169, '自动排课', 1131, 3, 'eduScheduling', 'education/eduScheduling/index', 1, 0, 'C', '0', '0', 'education:eduScheduling:list', 'online', 'admin', '2023-02-28 15:49:43', 'admin', '2023-02-28 15:49:43', '排课菜单');
INSERT INTO `sys_menu` VALUES (1170, '排课查询', 1169, 1, '#', '', 1, 0, 'F', '0', '0', 'education:eduScheduling:query', '#', 'admin', '2023-02-28 15:49:43', 'admin', '2023-02-28 15:49:43', '');
INSERT INTO `sys_menu` VALUES (1171, '排课新增', 1169, 2, '#', '', 1, 0, 'F', '0', '0', 'education:eduScheduling:add', '#', 'admin', '2023-02-28 15:49:43', 'admin', '2023-02-28 15:49:43', '');
INSERT INTO `sys_menu` VALUES (1172, '排课修改', 1169, 3, '#', '', 1, 0, 'F', '0', '0', 'education:eduScheduling:edit', '#', 'admin', '2023-02-28 15:49:43', 'admin', '2023-02-28 15:49:43', '');
INSERT INTO `sys_menu` VALUES (1173, '排课删除', 1169, 4, '#', '', 1, 0, 'F', '0', '0', 'education:eduScheduling:remove', '#', 'admin', '2023-02-28 15:49:43', 'admin', '2023-02-28 15:49:43', '');
INSERT INTO `sys_menu` VALUES (1174, '排课导出', 1169, 5, '#', '', 1, 0, 'F', '0', '0', 'education:eduScheduling:export', '#', 'admin', '2023-02-28 15:49:43', 'admin', '2023-02-28 15:49:43', '');
INSERT INTO `sys_menu` VALUES (1175, '培养方案', 1131, 1, 'eduScheme', 'education/eduScheme/index', 1, 0, 'C', '0', '0', 'education:eduScheme:list', 'dict', 'admin', '2023-02-28 15:49:43', 'admin', '2023-02-28 15:49:43', '培养方案菜单');
INSERT INTO `sys_menu` VALUES (1176, '培养方案查询', 1175, 1, '#', '', 1, 0, 'F', '0', '0', 'education:eduScheme:query', '#', 'admin', '2023-02-28 15:49:43', '', '2023-02-28 15:49:43', '');
INSERT INTO `sys_menu` VALUES (1177, '培养方案新增', 1175, 2, '#', '', 1, 0, 'F', '0', '0', 'education:eduScheme:add', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1178, '培养方案修改', 1175, 3, '#', '', 1, 0, 'F', '0', '0', 'education:eduScheme:edit', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1179, '培养方案删除', 1175, 4, '#', '', 1, 0, 'F', '0', '0', 'education:eduScheme:remove', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1180, '培养方案导出', 1175, 5, '#', '', 1, 0, 'F', '0', '0', 'education:eduScheme:export', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1181, '教学班学生', 1131, 5, 'eduStudent', 'education/eduStudent/index', 1, 0, 'C', '0', '0', 'education:eduStudent:list', 'people', 'admin', '2023-02-28 15:49:43', 'admin', '2023-02-28 15:49:43', '教学班学生菜单');
INSERT INTO `sys_menu` VALUES (1182, '教学班学生查询', 1181, 1, '#', '', 1, 0, 'F', '0', '0', 'education:eduStudent:query', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1183, '教学班学生新增', 1181, 2, '#', '', 1, 0, 'F', '0', '0', 'education:eduStudent:add', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1184, '教学班学生修改', 1181, 3, '#', '', 1, 0, 'F', '0', '0', 'education:eduStudent:edit', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1185, '教学班学生删除', 1181, 4, '#', '', 1, 0, 'F', '0', '0', 'education:eduStudent:remove', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1186, '教学班学生导出', 1181, 5, '#', '', 1, 0, 'F', '0', '0', 'education:eduStudent:export', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1187, '教学任务', 1131, 2, 'eduTask', 'education/eduTask/index', 1, 0, 'C', '0', '0', 'education:eduTask:list', 'list', 'admin', '2023-02-28 15:49:43', '', '2023-02-28 16:14:48', '教学任务菜单');
INSERT INTO `sys_menu` VALUES (1188, '教学任务查询', 1187, 1, '#', '', 1, 0, 'F', '0', '0', 'education:eduTask:query', '#', 'admin', '2023-02-28 15:49:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1189, '教学任务新增', 1187, 2, '#', '', 1, 0, 'F', '0', '0', 'education:eduTask:add', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1190, '教学任务修改', 1187, 3, '#', '', 1, 0, 'F', '0', '0', 'education:eduTask:edit', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1191, '教学任务删除', 1187, 4, '#', '', 1, 0, 'F', '0', '0', 'education:eduTask:remove', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1192, '教学任务导出', 1187, 5, '#', '', 1, 0, 'F', '0', '0', 'education:eduTask:export', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1193, '评教指标', 1156, 9, 'evalNorm', 'evaluate/evalNorm/index', 1, 0, 'C', '0', '0', 'evaluate:evalNorm:list', 'cascader', 'admin', '2023-02-28 16:14:48', 'admin', '2023-02-28 16:14:48', '评教指标菜单');
INSERT INTO `sys_menu` VALUES (1194, '评教指标查询', 1193, 1, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalNorm:query', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1195, '评教指标新增', 1193, 2, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalNorm:add', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1196, '评教指标修改', 1193, 3, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalNorm:edit', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1197, '评教指标删除', 1193, 4, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalNorm:remove', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1198, '评教指标导出', 1193, 5, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalNorm:export', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1199, '评教项目', 1156, 1, 'evalProject', 'evaluate/evalProject/index', 1, 0, 'C', '0', '0', 'evaluate:evalProject:list', 'form', 'admin', '2023-02-28 16:14:48', 'admin', '2023-02-28 16:14:48', '评教项目菜单');
INSERT INTO `sys_menu` VALUES (1200, '评教项目查询', 1199, 1, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalProject:query', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1201, '评教项目新增', 1199, 2, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalProject:add', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1202, '评教项目修改', 1199, 3, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalProject:edit', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1203, '评教项目删除', 1199, 4, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalProject:remove', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1204, '评教项目导出', 1199, 5, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalProject:export', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1205, '评教结果', 1156, 1, 'evalResults', 'evaluate/evalResults/index', 1, 0, 'C', '0', '0', 'evaluate:evalResults:list', 'chart', 'admin', '2023-02-28 16:14:48', 'admin', '2023-02-28 16:14:48', '评教结果菜单');
INSERT INTO `sys_menu` VALUES (1206, '评教结果查询', 1205, 1, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalResults:query', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1207, '评教结果新增', 1205, 2, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalResults:add', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1208, '评教结果修改', 1205, 3, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalResults:edit', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1209, '评教结果删除', 1205, 4, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalResults:remove', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1210, '评教结果导出', 1205, 5, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalResults:export', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1211, '评教分数', 1156, 1, 'evalScore', 'evaluate/evalScore/index', 1, 0, 'C', '0', '0', 'evaluate:evalScore:list', 'list', 'admin', '2023-02-28 16:14:48', 'admin', '2023-02-28 16:14:48', '评教分数菜单');
INSERT INTO `sys_menu` VALUES (1212, '评教分数查询', 1211, 1, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalScore:query', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1213, '评教分数新增', 1211, 2, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalScore:add', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1214, '评教分数修改', 1211, 3, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalScore:edit', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1215, '评教分数删除', 1211, 4, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalScore:remove', '#', 'admin', '2023-02-28 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1216, '评教分数导出', 1211, 5, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalScore:export', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1217, '顶岗实习', 1368, 9, 'practice', 'student/work/practice', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-02-28 16:32:29', 'admin', '2023-02-28 16:32:29', '');
INSERT INTO `sys_menu` VALUES (1218, '实习考勤', 1217, 2, 'praCheck', 'practice/praCheck/index', 1, 0, 'C', '0', '0', 'practice:praCheck:list', 'checkbox', 'admin', '2023-02-28 16:32:29', 'admin', '2023-02-28 16:32:29', '实习考勤菜单');
INSERT INTO `sys_menu` VALUES (1219, '实习考勤查询', 1218, 1, '#', '', 1, 0, 'F', '0', '0', 'practice:praCheck:query', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1220, '实习考勤新增', 1218, 2, '#', '', 1, 0, 'F', '0', '0', 'practice:praCheck:add', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1221, '实习考勤修改', 1218, 3, '#', '', 1, 0, 'F', '0', '0', 'practice:praCheck:edit', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1222, '实习考勤删除', 1218, 4, '#', '', 1, 0, 'F', '0', '0', 'practice:praCheck:remove', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1223, '实习考勤导出', 1218, 5, '#', '', 1, 0, 'F', '0', '0', 'practice:praCheck:export', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1224, '实习总结', 1217, 2, 'praSummary', 'practice/praSummary/index', 1, 0, 'C', '0', '0', 'practice:praSummary:list', 'documentation', 'admin', '2023-02-28 16:32:29', 'admin', '2023-02-28 16:32:29', '实习总结菜单');
INSERT INTO `sys_menu` VALUES (1225, '实习总结查询', 1224, 1, '#', '', 1, 0, 'F', '0', '0', 'practice:praSummary:query', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1226, '实习总结新增', 1224, 2, '#', '', 1, 0, 'F', '0', '0', 'practice:praSummary:add', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1227, '实习总结修改', 1224, 3, '#', '', 1, 0, 'F', '0', '0', 'practice:praSummary:edit', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1228, '实习总结删除', 1224, 4, '#', '', 1, 0, 'F', '0', '0', 'practice:praSummary:remove', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1229, '实习总结导出', 1224, 5, '#', '', 1, 0, 'F', '0', '0', 'practice:praSummary:export', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1230, '实习任务', 1217, 1, 'praTask', 'practice/praTask/index', 1, 0, 'C', '0', '0', 'practice:praTask:list', 'date-range', 'admin', '2023-02-28 16:32:29', 'admin', '2023-02-28 16:32:29', '实习任务菜单');
INSERT INTO `sys_menu` VALUES (1231, '实习任务查询', 1230, 1, '#', '', 1, 0, 'F', '0', '0', 'practice:praTask:query', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1232, '实习任务新增', 1230, 2, '#', '', 1, 0, 'F', '0', '0', 'practice:praTask:add', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1233, '实习任务修改', 1230, 3, '#', '', 1, 0, 'F', '0', '0', 'practice:praTask:edit', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1234, '实习任务删除', 1230, 4, '#', '', 1, 0, 'F', '0', '0', 'practice:praTask:remove', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1235, '实习任务导出', 1230, 5, '#', '', 1, 0, 'F', '0', '0', 'practice:praTask:export', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1236, '教学工作', 0, 5, 'teachWork', NULL, 1, 0, 'M', '0', '0', '', 'education', 'admin', '2023-02-28 16:32:29', 'admin', '2023-02-28 16:32:29', '');
INSERT INTO `sys_menu` VALUES (1237, '教学事故', 1236, 5, 'teachAccident', 'teach/teachAccident/index', 1, 0, 'C', '0', '0', 'teach:teachAccident:list', 'question', 'admin', '2023-02-28 16:32:29', 'admin', '2023-02-28 16:32:29', '教学事故菜单');
INSERT INTO `sys_menu` VALUES (1238, '教学事故查询', 1237, 1, '#', '', 1, 0, 'F', '0', '0', 'teach:teachAccident:query', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1239, '教学事故新增', 1237, 2, '#', '', 1, 0, 'F', '0', '0', 'teach:teachAccident:add', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1240, '教学事故修改', 1237, 3, '#', '', 1, 0, 'F', '0', '0', 'teach:teachAccident:edit', '#', 'admin', '2023-02-28 16:32:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1241, '教学事故删除', 1237, 4, '#', '', 1, 0, 'F', '0', '0', 'teach:teachAccident:remove', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1242, '教学事故导出', 1237, 5, '#', '', 1, 0, 'F', '0', '0', 'teach:teachAccident:export', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1243, '课堂考勤', 1236, 5, 'teachCheck', 'teach/teachCheck/index', 1, 0, 'C', '0', '0', 'teach:teachCheck:list', 'checkbox', 'admin', '2023-02-28 17:20:10', 'admin', '2023-02-28 17:20:10', '课堂考勤菜单');
INSERT INTO `sys_menu` VALUES (1244, '课堂考勤查询', 1243, 1, '#', '', 1, 0, 'F', '0', '0', 'teach:teachCheck:query', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1245, '课堂考勤新增', 1243, 2, '#', '', 1, 0, 'F', '0', '0', 'teach:teachCheck:add', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1246, '课堂考勤修改', 1243, 3, '#', '', 1, 0, 'F', '0', '0', 'teach:teachCheck:edit', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1247, '课堂考勤删除', 1243, 4, '#', '', 1, 0, 'F', '0', '0', 'teach:teachCheck:remove', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1248, '课堂考勤导出', 1243, 5, '#', '', 1, 0, 'F', '0', '0', 'teach:teachCheck:export', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1249, '教学计划', 1236, 6, 'teachPlan', 'teach/teachPlan/index', 1, 0, 'C', '0', '0', 'teach:teachPlan:list', 'excel', 'admin', '2023-02-28 17:20:10', 'admin', '2023-02-28 17:20:10', '教学计划菜单');
INSERT INTO `sys_menu` VALUES (1250, '教学计划查询', 1249, 1, '#', '', 1, 0, 'F', '0', '0', 'teach:teachPlan:query', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1251, '教学计划新增', 1249, 2, '#', '', 1, 0, 'F', '0', '0', 'teach:teachPlan:add', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1252, '教学计划修改', 1249, 3, '#', '', 1, 0, 'F', '0', '0', 'teach:teachPlan:edit', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1253, '教学计划删除', 1249, 4, '#', '', 1, 0, 'F', '0', '0', 'teach:teachPlan:remove', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1254, '教学计划导出', 1249, 5, '#', '', 1, 0, 'F', '0', '0', 'teach:teachPlan:export', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1255, '实验预约', 1236, 3, 'lab', 'teach/work/lab', 1, 0, 'M', '0', '0', '', 'skill', 'admin', '2023-02-28 17:20:10', 'admin', '2023-02-28 17:20:10', '');
INSERT INTO `sys_menu` VALUES (1256, '预约管理', 1255, 2, 'labApply', 'lab/labApply/index', 1, 0, 'C', '0', '0', 'lab:labApply:list', 'list', 'admin', '2023-02-28 17:20:10', 'admin', '2023-02-28 17:20:10', '实验室申请菜单');
INSERT INTO `sys_menu` VALUES (1257, '实验室申请查询', 1256, 1, '#', '', 1, 0, 'F', '0', '0', 'lab:labApply:query', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1258, '实验室申请新增', 1256, 2, '#', '', 1, 0, 'F', '0', '0', 'lab:labApply:add', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1259, '实验室申请修改', 1256, 3, '#', '', 1, 0, 'F', '0', '0', 'lab:labApply:edit', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1260, '实验室申请删除', 1256, 4, '#', '', 1, 0, 'F', '0', '0', 'lab:labApply:remove', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1261, '实验室申请导出', 1256, 5, '#', '', 1, 0, 'F', '0', '0', 'lab:labApply:export', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1262, '实验室管理', 1255, 9, 'laboratory', 'lab/laboratory/index', 1, 0, 'C', '0', '0', 'lab:laboratory:list', 'build', 'admin', '2023-02-28 17:20:10', 'admin', '2023-02-28 17:20:10', '实验室管理菜单');
INSERT INTO `sys_menu` VALUES (1263, '实验室管理查询', 1262, 1, '#', '', 1, 0, 'F', '0', '0', 'lab:laboratory:query', '#', 'admin', '2023-02-28 17:20:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1264, '实验室管理新增', 1262, 2, '#', '', 1, 0, 'F', '0', '0', 'lab:laboratory:add', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1265, '实验室管理修改', 1262, 3, '#', '', 1, 0, 'F', '0', '0', 'lab:laboratory:edit', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1266, '实验室管理删除', 1262, 4, '#', '', 1, 0, 'F', '0', '0', 'lab:laboratory:remove', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1267, '实验室管理导出', 1262, 5, '#', '', 1, 0, 'F', '0', '0', 'lab:laboratory:export', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1268, '考试管理', 1236, 2, 'exam', 'teach/work/exam', 1, 0, 'M', '0', '0', '', 'validCode', 'admin', '2023-02-28 17:26:47', 'admin', '2020-12-09 09:21:46', '');
INSERT INTO `sys_menu` VALUES (1269, '清考管理', 1268, 4, 'examFinal', 'exam/examFinal/index', 1, 0, 'C', '0', '0', 'exam:examFinal:list', 'logininfor', 'admin', '2023-02-28 17:26:47', 'admin', '2020-12-08 10:52:48', '清考菜单');
INSERT INTO `sys_menu` VALUES (1270, '清考查询', 1269, 1, '#', '', 1, 0, 'F', '0', '0', 'exam:examFinal:query', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1271, '清考新增', 1269, 2, '#', '', 1, 0, 'F', '0', '0', 'exam:examFinal:add', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1272, '清考修改', 1269, 3, '#', '', 1, 0, 'F', '0', '0', 'exam:examFinal:edit', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1273, '清考删除', 1269, 4, '#', '', 1, 0, 'F', '0', '0', 'exam:examFinal:remove', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1274, '清考导出', 1269, 5, '#', '', 1, 0, 'F', '0', '0', 'exam:examFinal:export', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1275, '补考管理', 1268, 5, 'examMakeup', 'exam/examMakeup/index', 1, 0, 'C', '0', '0', 'exam:examMakeup:list', 'monitor', 'admin', '2023-02-28 17:26:47', 'admin', '2020-12-08 10:53:02', '补考菜单');
INSERT INTO `sys_menu` VALUES (1276, '补考查询', 1275, 1, '#', '', 1, 0, 'F', '0', '0', 'exam:examMakeup:query', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1277, '补考新增', 1275, 2, '#', '', 1, 0, 'F', '0', '0', 'exam:examMakeup:add', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1278, '补考修改', 1275, 3, '#', '', 1, 0, 'F', '0', '0', 'exam:examMakeup:edit', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1279, '补考删除', 1275, 4, '#', '', 1, 0, 'F', '0', '0', 'exam:examMakeup:remove', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1280, '补考导出', 1275, 5, '#', '', 1, 0, 'F', '0', '0', 'exam:examMakeup:export', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1281, '成绩管理', 1268, 3, 'examResult', 'exam/examResult/index', 1, 0, 'C', '0', '0', 'exam:examResult:list', 'skill', 'admin', '2023-02-28 17:26:47', 'admin', '2023-02-28 17:26:47', '成绩菜单');
INSERT INTO `sys_menu` VALUES (1282, '成绩查询', 1281, 1, '#', '', 1, 0, 'F', '0', '0', 'exam:examResult:query', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1283, '成绩新增', 1281, 2, '#', '', 1, 0, 'F', '0', '0', 'exam:examResult:add', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1284, '成绩修改', 1281, 3, '#', '', 1, 0, 'F', '0', '0', 'exam:examResult:edit', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1285, '成绩删除', 1281, 4, '#', '', 1, 0, 'F', '0', '0', 'exam:examResult:remove', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1286, '成绩导出', 1281, 5, '#', '', 1, 0, 'F', '0', '0', 'exam:examResult:export', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1287, '考试管理', 1268, 1, 'examTask', 'exam/examTask/index', 1, 0, 'C', '0', '0', 'exam:examTask:list', 'date', 'admin', '2023-02-28 17:26:47', 'admin', '2023-02-28 17:26:47', '考试菜单');
INSERT INTO `sys_menu` VALUES (1288, '考试查询', 1287, 1, '#', '', 1, 0, 'F', '0', '0', 'exam:examTask:query', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1289, '考试新增', 1287, 2, '#', '', 1, 0, 'F', '0', '0', 'exam:examTask:add', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1290, '考试修改', 1287, 3, '#', '', 1, 0, 'F', '0', '0', 'exam:examTask:edit', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1291, '考试删除', 1287, 4, '#', '', 1, 0, 'F', '0', '0', 'exam:examTask:remove', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1292, '考试导出', 1287, 5, '#', '', 1, 0, 'F', '0', '0', 'exam:examTask:export', '#', 'admin', '2023-02-28 17:26:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1305, '班主任审核', 1373, 5, 'student/graduation/master', 'student/graduation/master', 1, 0, 'C', '0', '0', 'student:graduation:master', 'select', 'admin', '2023-02-28 17:26:47', 'admin', '2023-02-28 17:26:47', '');
INSERT INTO `sys_menu` VALUES (1306, '学生处审核', 1373, 6, 'student/graduation/student', 'student/graduation/student', 1, 0, 'C', '0', '0', 'student:graduation:check', 'select', 'admin', '2023-02-28 17:26:47', 'admin', '2023-02-28 17:26:47', '');
INSERT INTO `sys_menu` VALUES (1307, '财务审核', 1373, 7, 'student/graduation/finance', 'student/graduation/finance', 1, 0, 'C', '0', '0', 'student:graduation:finance', 'select', 'admin', '2023-02-28 17:26:47', 'admin', '2023-02-28 17:26:47', '');
INSERT INTO `sys_menu` VALUES (1308, '文件管理', 2, 1, 'sys/files/index', 'sys/files/index', 1, 0, 'C', '0', '0', 'sys:files:list', 'documentation', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-01 10:24:53', '文件管理');
INSERT INTO `sys_menu` VALUES (1309, '文件查询', 1308, 1, '#', '', 1, 0, 'F', '0', '0', 'sys:files:query', '#', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-01 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1310, '文件新增', 1308, 2, '#', '', 1, 0, 'F', '0', '0', 'sys:files:add', '#', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-01 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1311, '文件修改', 1308, 3, '#', '', 1, 0, 'F', '0', '0', 'sys:files:edit', '#', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-01 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1312, '文件删除', 1308, 4, '#', '', 1, 0, 'F', '0', '0', 'sys:files:remove', '#', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1313, '文件导出', 1308, 5, '#', '', 1, 0, 'F', '0', '0', 'sys:files:export', '#', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1314, '招生管理', 1368, 1, 'enroll', 'student/work/enroll', 1, 0, 'M', '0', '0', '', 'peoples', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1315, '招生报名', 1314, 2, 'studentApply', 'student/studentApply/index', 1, 0, 'C', '0', '0', 'student:studentApply:list', 'form', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '招生报名菜单');
INSERT INTO `sys_menu` VALUES (1316, '招生报名查询', 1315, 1, '#', '', 1, 0, 'F', '0', '0', 'student:studentApply:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1317, '招生报名新增', 1315, 2, '#', '', 1, 0, 'F', '0', '0', 'student:studentApply:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1318, '招生报名修改', 1315, 3, '#', '', 1, 0, 'F', '0', '0', 'student:studentApply:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1319, '招生报名删除', 1315, 4, '#', '', 1, 0, 'F', '0', '0', 'student:studentApply:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1320, '招生报名导出', 1315, 5, '#', '', 1, 0, 'F', '0', '0', 'student:studentApply:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1321, '新生报到', 1314, 4, 'studentCheckin', 'student/studentCheckin/index', 1, 0, 'C', '0', '0', 'student:studentCheckin:list', 'money', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '招生报到菜单');
INSERT INTO `sys_menu` VALUES (1322, '招生报到查询', 1321, 1, '#', '', 1, 0, 'F', '0', '0', 'student:studentCheckin:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1323, '招生报到新增', 1321, 2, '#', '', 1, 0, 'F', '0', '0', 'student:studentCheckin:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1324, '招生报到修改', 1321, 3, '#', '', 1, 0, 'F', '0', '0', 'student:studentCheckin:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1325, '招生报到删除', 1321, 4, '#', '', 1, 0, 'F', '0', '0', 'student:studentCheckin:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1326, '招生报到导出', 1321, 5, '#', '', 1, 0, 'F', '0', '0', 'student:studentCheckin:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1327, '招生计划', 1314, 1, 'studentEnroll', 'student/studentEnroll/index', 1, 0, 'C', '0', '0', 'student:studentEnroll:list', 'guide', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '招生计划菜单');
INSERT INTO `sys_menu` VALUES (1328, '招生计划查询', 1327, 1, '#', '', 1, 0, 'F', '0', '0', 'student:studentEnroll:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1329, '招生计划新增', 1327, 2, '#', '', 1, 0, 'F', '0', '0', 'student:studentEnroll:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1330, '招生计划修改', 1327, 3, '#', '', 1, 0, 'F', '0', '0', 'student:studentEnroll:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1331, '招生计划删除', 1327, 4, '#', '', 1, 0, 'F', '0', '0', 'student:studentEnroll:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1332, '招生计划导出', 1327, 5, '#', '', 1, 0, 'F', '0', '0', 'student:studentEnroll:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1333, '培训报名', 1314, 7, 'studentSignup', 'student/studentSignup/index', 1, 0, 'C', '0', '0', 'student:studentSignup:list', 'form', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '培训报名菜单');
INSERT INTO `sys_menu` VALUES (1334, '培训报名查询', 1333, 1, '#', '', 1, 0, 'F', '0', '0', 'student:studentSignup:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1335, '培训报名新增', 1333, 2, '#', '', 1, 0, 'F', '0', '0', 'student:studentSignup:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1336, '培训报名修改', 1333, 3, '#', '', 1, 0, 'F', '0', '0', 'student:studentSignup:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1337, '培训报名删除', 1333, 4, '#', '', 1, 0, 'F', '0', '0', 'student:studentSignup:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1338, '培训报名导出', 1333, 5, '#', '', 1, 0, 'F', '0', '0', 'student:studentSignup:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1339, '培训项目', 1314, 6, 'studentTrain', 'student/studentTrain/index', 1, 0, 'C', '0', '0', 'student:studentTrain:list', 'job', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '培训项目菜单');
INSERT INTO `sys_menu` VALUES (1340, '培训项目查询', 1339, 1, '#', '', 1, 0, 'F', '0', '0', 'student:studentTrain:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1341, '培训项目新增', 1339, 2, '#', '', 1, 0, 'F', '0', '0', 'student:studentTrain:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1342, '培训项目修改', 1339, 3, '#', '', 1, 0, 'F', '0', '0', 'student:studentTrain:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1343, '培训项目删除', 1339, 4, '#', '', 1, 0, 'F', '0', '0', 'student:studentTrain:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1344, '培训项目导出', 1339, 5, '#', '', 1, 0, 'F', '0', '0', 'student:studentTrain:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1345, '录取审核', 1314, 3, 'student/studentApply/check', 'student/studentApply/check', 1, 0, 'C', '0', '0', 'student:studentApply:check', 'checkbox', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1346, '教学任务确认', 1703, 6, 'education/eduTask/check', 'education/eduTask/check', 1, 0, 'C', '0', '0', 'education:eduTask:check', 'select', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1347, '手工排课', 1131, 3, 'education/eduScheduling/task', 'education/eduScheduling/task', 1, 0, 'C', '0', '0', 'education:eduScheduling:task', 'button', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1348, '我要评教', 1528, 5, 'evaluate/evalScore/my', 'evaluate/evalScore/my', 1, 0, 'C', '0', '0', 'evaluate:evalScore:my', 'rate', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1350, '我的教学计划', 1703, 6, 'teach/teachPlan/my', 'teach/teachPlan/my', 1, 0, 'C', '0', '0', 'teach:teachPlan:my', 'documentation', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1351, '预约查询', 1255, 5, 'lab/labApply/query', 'lab/labApply/query', 1, 0, 'C', '0', '0', 'lab:labApply:query', 'search', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1352, '我的预约', 1255, 1, 'lab/labApply/my', 'lab/labApply/my', 1, 0, 'C', '0', '0', 'lab:labApply:my', 'lock', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1353, '成绩录入', 1268, 2, 'exam/examResult/teacher', 'exam/examResult/teacher', 1, 0, 'C', '0', '0', 'exam:examResult:teacher', 'rate', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1354, '成绩查询', 1268, 8, 'exam/examResult/query', 'exam/examResult/query', 1, 0, 'C', '0', '0', 'exam:examResult:query', 'search', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1355, '进度监控', 1268, 9, 'exam/examResult/progress', 'exam/examResult/progress', 1, 0, 'C', '0', '0', 'exam:examResult:progress', 'guide', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1356, '报表管理', 3, 1, 'chart', 'sys/chart/index', 1, 0, 'C', '0', '0', 'sys:chart:list', 'chart', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '报表管理菜单');
INSERT INTO `sys_menu` VALUES (1357, '报表管理查询', 1356, 1, '#', '', 1, 0, 'F', '0', '0', 'sys:chart:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1358, '报表管理新增', 1356, 2, '#', '', 1, 0, 'F', '0', '0', 'sys:chart:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1359, '报表管理修改', 1356, 3, '#', '', 1, 0, 'F', '0', '0', 'sys:chart:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1360, '报表管理删除', 1356, 4, '#', '', 1, 0, 'F', '0', '0', 'sys:chart:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1361, '报表管理导出', 1356, 5, '#', '', 1, 0, 'F', '0', '0', 'sys:chart:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1362, '数据集', 3, 1, 'dataset', 'sys/dataset/index', 1, 0, 'C', '0', '0', 'sys:dataset:list', 'table', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '数据集菜单');
INSERT INTO `sys_menu` VALUES (1363, '数据集查询', 1362, 1, '#', '', 1, 0, 'F', '0', '0', 'sys:dataset:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1364, '数据集新增', 1362, 2, '#', '', 1, 0, 'F', '0', '0', 'sys:dataset:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1365, '数据集修改', 1362, 3, '#', '', 1, 0, 'F', '0', '0', 'sys:dataset:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1366, '数据集删除', 1362, 4, '#', '', 1, 0, 'F', '0', '0', 'sys:dataset:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1367, '数据集导出', 1362, 5, '#', '', 1, 0, 'F', '0', '0', 'sys:dataset:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1368, '学生工作', 0, 4, 'studentWork', NULL, 1, 0, 'M', '0', '0', '', 'people', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1369, '不常用数据', 1061, 9, 'base/seldom', 'base/work/seldom', 1, 0, 'M', '0', '0', '', 'build', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1370, '管理办公', 0, 6, 'work', NULL, 1, 0, 'M', '0', '0', '', 'edit', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1371, '微信管理', 0, 8, 'wechat', NULL, 1, 0, 'M', '1', '0', '', 'wechat', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1372, '查询统计', 0, 9, 'chart', '', 1, 0, 'M', '0', '0', '', 'chart', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1373, '毕业管理', 1368, 3, 'graduation', 'student/work/graduation', 1, 0, 'M', '0', '0', '', 'post', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1374, 'OA办公', 1370, 1, 'oa', 'oa/work', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 10:24:53', '');
INSERT INTO `sys_menu` VALUES (1375, '职教荣耀', 1370, 2, 'glory', 'oa/work/glory', 1, 0, 'M', '1', '1', '', 'star', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-21 22:45:37', '');
INSERT INTO `sys_menu` VALUES (1376, '资产管理', 1370, 3, 'assetIndex', 'oa/work/asset', 1, 0, 'M', '0', '0', '', 'money', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1377, '门禁管理', 1370, 4, 'door', 'oa/work/door', 1, 0, 'M', '0', '0', '', 'lock', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1378, '高光时刻', 1375, 1, 'glorySchool', 'glory/school/index', 1, 0, 'C', '0', '0', 'glory:school:list', 'rate', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 13:25:42', '高光时刻菜单');
INSERT INTO `sys_menu` VALUES (1379, '高光时刻查询', 1378, 1, '#', 'glory/school/index', 1, 0, 'F', '0', '0', 'glory:school:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1380, '高光时刻新增', 1378, 2, '#', 'glory/school/index', 1, 0, 'F', '0', '0', 'glory:school:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1381, '高光时刻修改', 1378, 3, '#', 'glory/school/index', 1, 0, 'F', '0', '0', 'glory:school:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1382, '高光时刻删除', 1378, 4, '#', 'glory/school/index', 1, 0, 'F', '0', '0', 'glory:school:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1383, '高光时刻导出', 1378, 5, '#', 'glory/school/index', 1, 0, 'F', '0', '0', 'glory:school:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1384, '学生获奖', 1375, 1, 'gloryStudent', 'glory/student/index', 1, 0, 'C', '0', '0', 'glory:student:list', 'people', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 13:25:42', '学生获奖菜单');
INSERT INTO `sys_menu` VALUES (1385, '学生获奖查询', 1384, 1, '#', 'glory/student/index', 1, 0, 'F', '0', '0', 'glory:student:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1386, '学生获奖新增', 1384, 2, '#', 'glory/student/index', 1, 0, 'F', '0', '0', 'glory:student:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1387, '学生获奖修改', 1384, 3, '#', 'glory/student/index', 1, 0, 'F', '0', '0', 'glory:student:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1388, '学生获奖删除', 1384, 4, '#', 'glory/student/index', 1, 0, 'F', '0', '0', 'glory:student:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1389, '学生获奖导出', 1384, 5, '#', 'glory/student/index', 1, 0, 'F', '0', '0', 'glory:student:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1390, '教师荣耀', 1375, 2, 'gloryTeacher', 'glory/teacher/index', 1, 0, 'C', '0', '0', 'glory:teacher:list', 'peoples', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 13:25:42', '教师荣耀菜单');
INSERT INTO `sys_menu` VALUES (1391, '教师荣耀查询', 1390, 1, '#', 'glory/teacher/index', 1, 0, 'F', '0', '0', 'glory:teacher:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1392, '教师荣耀新增', 1390, 2, '#', 'glory/teacher/index', 1, 0, 'F', '0', '0', 'glory:teacher:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1393, '教师荣耀修改', 1390, 3, '#', 'glory/teacher/index', 1, 0, 'F', '0', '0', 'glory:teacher:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1394, '教师荣耀删除', 1390, 4, '#', 'glory/teacher/index', 1, 0, 'F', '0', '0', 'glory:teacher:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1395, '教师荣耀导出', 1390, 5, '#', 'glory/teacher/index', 1, 0, 'F', '0', '0', 'glory:teacher:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1396, '资产分类', 1376, 1, 'category', 'oa/category/index', 1, 0, 'C', '0', '0', 'oa:category:list', 'tree', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 13:25:42', '资产分类菜单');
INSERT INTO `sys_menu` VALUES (1397, '资产分类查询', 1396, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:category:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1398, '资产分类新增', 1396, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:category:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1399, '资产分类修改', 1396, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:category:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1400, '资产分类删除', 1396, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:category:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1401, '资产分类导出', 1396, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:category:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1402, '资产信息', 1376, 1, 'asset', 'oa/asset/index', 1, 0, 'C', '0', '0', 'oa:asset:list', 'tab', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 13:25:42', '资产信息菜单');
INSERT INTO `sys_menu` VALUES (1403, '资产信息查询', 1402, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:asset:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1404, '资产信息新增', 1402, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:asset:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1405, '资产信息修改', 1402, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:asset:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1406, '资产信息删除', 1402, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:asset:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1407, '资产信息导出', 1402, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:asset:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1408, '会议室', 1529, 1, 'divan', 'oa/divan/index', 1, 0, 'C', '0', '0', 'oa:divan:list', 'build', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 13:25:42', '会议室菜单');
INSERT INTO `sys_menu` VALUES (1409, '会议室查询', 1408, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:divan:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1410, '会议室新增', 1408, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:divan:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1411, '会议室修改', 1408, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:divan:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1412, '会议室删除', 1408, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:divan:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1413, '会议室导出', 1408, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:divan:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1414, '公文管理', 1374, 1, 'document', 'oa/document/index', 1, 0, 'C', '0', '0', 'oa:document:list', 'documentation', 'admin', '2023-03-01 10:24:53', 'admin', '2023-03-02 13:25:42', '公文菜单');
INSERT INTO `sys_menu` VALUES (1415, '公文查询', 1414, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:document:query', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1416, '公文新增', 1414, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:document:add', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1417, '公文修改', 1414, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:document:edit', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1418, '公文删除', 1414, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:document:remove', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1419, '公文导出', 1414, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:document:export', '#', 'admin', '2023-03-01 10:24:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1420, '表单字段', 1374, 1, 'field', 'oa/field/index', 1, 0, 'C', '0', '1', 'oa:field:list', '#', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '单字段菜单');
INSERT INTO `sys_menu` VALUES (1421, '单字段查询', 1420, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:field:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1422, '单字段新增', 1420, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:field:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1423, '单字段修改', 1420, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:field:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1424, '单字段删除', 1420, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:field:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1425, '单字段导出', 1420, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:field:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1426, '工作流', 1374, 3, 'flow', 'oa/flow/index', 1, 0, 'C', '0', '0', 'oa:flow:list', 'tree', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '工作流菜单');
INSERT INTO `sys_menu` VALUES (1427, '工作流查询', 1426, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:flow:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1428, '工作流新增', 1426, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:flow:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1429, '工作流修改', 1426, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:flow:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1430, '工作流删除', 1426, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:flow:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1431, '工作流导出', 1426, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:flow:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1432, '公文单', 1374, 1, 'form', 'oa/form/index', 1, 0, 'C', '0', '1', 'oa:form:list', '#', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '公文单菜单');
INSERT INTO `sys_menu` VALUES (1433, '公文单查询', 1432, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:form:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1434, '公文单新增', 1432, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:form:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1435, '公文单修改', 1432, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:form:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1436, '公文单删除', 1432, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:form:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1437, '公文单导出', 1432, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:form:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1438, '门禁', 1377, 1, 'guard', 'oa/guard/index', 1, 0, 'C', '0', '0', 'oa:guard:list', 'password', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '门禁菜单');
INSERT INTO `sys_menu` VALUES (1439, '门禁查询', 1438, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:guard:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1440, '门禁新增', 1438, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:guard:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1441, '门禁修改', 1438, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:guard:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1442, '门禁删除', 1438, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:guard:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1443, '门禁导出', 1438, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:guard:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1444, '出入记录', 1377, 1, 'inout', 'oa/inout/index', 1, 0, 'C', '0', '0', 'oa:inout:list', 'log', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '出入记录菜单');
INSERT INTO `sys_menu` VALUES (1445, '出入记录查询', 1444, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:inout:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1446, '出入记录新增', 1444, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:inout:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1447, '出入记录修改', 1444, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:inout:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1448, '出入记录删除', 1444, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:inout:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1449, '出入记录导出', 1444, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:inout:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1450, '会议申请', 1529, 1, 'meeting', 'oa/meeting/index', 1, 0, 'C', '0', '0', 'oa:meeting:list', 'form', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '会议申请菜单');
INSERT INTO `sys_menu` VALUES (1451, '会议申请查询', 1450, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:meeting:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1452, '会议申请新增', 1450, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:meeting:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1453, '会议申请修改', 1450, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:meeting:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1454, '会议申请删除', 1450, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:meeting:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1455, '会议申请导出', 1450, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:meeting:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1462, '公文流转', 1374, 1, 'process', 'oa/process/index', 1, 0, 'C', '0', '1', 'oa:process:list', 'nested', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '工作流步骤菜单');
INSERT INTO `sys_menu` VALUES (1463, '工作流步骤查询', 1462, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:process:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1464, '工作流步骤新增', 1462, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:process:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1465, '工作流步骤修改', 1462, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:process:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1466, '工作流步骤删除', 1462, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:process:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1467, '工作流步骤导出', 1462, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:process:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1474, '工作汇报', 1374, 7, 'report', 'oa/report/index', 1, 0, 'C', '0', '0', 'oa:report:list', 'log', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '工作汇报菜单');
INSERT INTO `sys_menu` VALUES (1475, '工作汇报查询', 1474, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:report:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1476, '工作汇报新增', 1474, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:report:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1477, '工作汇报修改', 1474, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:report:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1478, '工作汇报删除', 1474, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:report:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1479, '工作汇报导出', 1474, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:report:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1480, '工作流步骤', 1374, 1, 'step', 'oa/step/index', 1, 0, 'C', '0', '1', 'oa:step:list', '#', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '工作流步骤菜单');
INSERT INTO `sys_menu` VALUES (1481, '工作流步骤查询', 1480, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:step:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1482, '工作流步骤新增', 1480, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:step:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1483, '工作流步骤修改', 1480, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:step:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1484, '工作流步骤删除', 1480, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:step:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1485, '工作流步骤导出', 1480, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:step:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1486, '会议记要', 1529, 3, 'summary', 'oa/summary/index', 1, 0, 'C', '0', '0', 'oa:summary:list', 'documentation', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '会议记要菜单');
INSERT INTO `sys_menu` VALUES (1487, '会议记要查询', 1486, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:summary:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1488, '会议记要新增', 1486, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:summary:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1489, '会议记要修改', 1486, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:summary:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1490, '会议记要删除', 1486, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:summary:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1491, '会议记要导出', 1486, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:summary:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1492, '与会人员', 1529, 4, 'meeingUser', 'oa/user/index', 1, 0, 'C', '0', '0', 'oa:user:list', 'user', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '与会人员菜单');
INSERT INTO `sys_menu` VALUES (1493, '与会人员查询', 1492, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:user:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1494, '与会人员新增', 1492, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:user:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1495, '与会人员修改', 1492, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:user:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1496, '与会人员删除', 1492, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:user:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1497, '与会人员导出', 1492, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:user:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1498, '内容管理', 1371, 1, 'content', 'wechat/content/index', 1, 0, 'C', '0', '0', 'wechat:content:list', 'documentation', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '内容管理菜单');
INSERT INTO `sys_menu` VALUES (1499, '内容管理查询', 1498, 1, '#', '', 1, 0, 'F', '0', '0', 'wechat:content:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1500, '内容管理新增', 1498, 2, '#', '', 1, 0, 'F', '0', '0', 'wechat:content:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1501, '内容管理修改', 1498, 3, '#', '', 1, 0, 'F', '0', '0', 'wechat:content:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1502, '内容管理删除', 1498, 4, '#', '', 1, 0, 'F', '0', '0', 'wechat:content:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1503, '内容管理导出', 1498, 5, '#', '', 1, 0, 'F', '0', '0', 'wechat:content:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1504, '微信菜单', 1371, 2, 'wechatMenu', 'wechat/menu/index', 1, 0, 'C', '0', '0', 'wechat:menu:list', 'tree-table', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '微信菜单菜单');
INSERT INTO `sys_menu` VALUES (1505, '微信菜单查询', 1504, 1, '#', '', 1, 0, 'F', '0', '0', 'wechat:menu:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1506, '微信菜单新增', 1504, 2, '#', '', 1, 0, 'F', '0', '0', 'wechat:menu:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1507, '微信菜单修改', 1504, 3, '#', '', 1, 0, 'F', '0', '0', 'wechat:menu:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1508, '微信菜单删除', 1504, 4, '#', '', 1, 0, 'F', '0', '0', 'wechat:menu:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1509, '微信菜单导出', 1504, 5, '#', '', 1, 0, 'F', '0', '0', 'wechat:menu:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1510, '缴费凭证', 1371, 3, 'pay', 'wechat/pay/index', 1, 0, 'C', '0', '0', 'wechat:pay:list', 'money', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '缴费凭证菜单');
INSERT INTO `sys_menu` VALUES (1511, '缴费凭证查询', 1510, 1, '#', '', 1, 0, 'F', '0', '0', 'wechat:pay:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1512, '缴费凭证新增', 1510, 2, '#', '', 1, 0, 'F', '0', '0', 'wechat:pay:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1513, '缴费凭证修改', 1510, 3, '#', '', 1, 0, 'F', '0', '0', 'wechat:pay:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1514, '缴费凭证删除', 1510, 4, '#', '', 1, 0, 'F', '0', '0', 'wechat:pay:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1515, '缴费凭证导出', 1510, 5, '#', '', 1, 0, 'F', '0', '0', 'wechat:pay:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1522, '用户信息', 1371, 1, 'wechatUser', 'wechat/user/index', 1, 0, 'C', '0', '0', 'wechat:user:list', 'user', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '用户信息菜单');
INSERT INTO `sys_menu` VALUES (1523, '用户信息查询', 1522, 1, '#', '', 1, 0, 'F', '0', '0', 'wechat:user:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1524, '用户信息新增', 1522, 2, '#', '', 1, 0, 'F', '0', '0', 'wechat:user:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1525, '用户信息修改', 1522, 3, '#', '', 1, 0, 'F', '0', '0', 'wechat:user:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1526, '用户信息删除', 1522, 4, '#', '', 1, 0, 'F', '0', '0', 'wechat:user:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1527, '用户信息导出', 1522, 5, '#', '', 1, 0, 'F', '0', '0', 'wechat:user:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1528, '工作台', 0, 1, 'person', NULL, 1, 0, 'M', '0', '0', '', 'job', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1529, '会议管理', 1370, 3, 'oaMeeting', 'oa/work/meeting', 1, 0, 'M', '0', '0', '', 'peoples', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1530, '我的公文', 1702, 5, 'myDocument', 'oa/document/my', 1, 0, 'C', '0', '0', 'oa:document:my', 'log', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1531, '待办公文', 1702, 6, 'myProcess', 'oa/process/my', 1, 0, 'C', '0', '0', 'oa:process:my', 'logininfor', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1532, '工作汇报', 1702, 6, 'oa/report/my', 'oa/report/my', 1, 0, 'C', '0', '0', 'oa:report:my', 'logininfor', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1533, '汇报审阅', 1702, 8, 'oa/report/check', 'oa/report/check', 1, 0, 'C', '0', '0', 'oa:report:check', 'select', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1534, '会议申请', 1702, 9, 'oa/meeting/my', 'oa/meeting/my', 1, 0, 'C', '0', '0', 'oa:meeting:my', 'peoples', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1549, '文件轮阅', 1374, 5, 'archive', 'oa/archive/index', 1, 0, 'C', '0', '0', 'oa:archive:list', 'documentation', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '文档轮阅菜单');
INSERT INTO `sys_menu` VALUES (1550, '文档轮阅查询', 1549, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:archive:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1551, '文档轮阅新增', 1549, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:archive:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1552, '文档轮阅修改', 1549, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:archive:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1553, '文档轮阅删除', 1549, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:archive:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1554, '文档轮阅导出', 1549, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:archive:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1555, '轮阅记录', 1374, 6, 'read', 'oa/read/index', 1, 0, 'C', '0', '0', 'oa:read:list', 'peoples', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '轮阅记录菜单');
INSERT INTO `sys_menu` VALUES (1556, '轮阅记录查询', 1555, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:read:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1557, '轮阅记录新增', 1555, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:read:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1558, '轮阅记录修改', 1555, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:read:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1559, '轮阅记录删除', 1555, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:read:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1560, '轮阅记录导出', 1555, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:read:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1561, '轮阅文件', 1702, 9, 'oa/read/my', 'oa/read/my', 1, 0, 'C', '0', '0', 'oa:read:my', 'documentation', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1562, '查看详细', 1561, 1, '', NULL, 1, 0, 'F', '0', '0', 'oa:read:view', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1563, '我要调课', 1703, 10, 'education/eduExchange/my', 'education/eduExchange/my', 1, 0, 'C', '0', '0', 'education:eduExchange:my', 'time-range', 'admin', '2023-03-02 13:28:01', 'admin', '2023-03-03 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1580, '消息查询', 1535, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:msg:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1581, '消息新增', 1535, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:msg:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1582, '消息修改', 1535, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:msg:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1583, '消息删除', 1535, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:msg:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1584, '消息导出', 1535, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:msg:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1585, '消息查询', 1536, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:msg:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1586, '消息新增', 1536, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:msg:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1587, '消息修改', 1536, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:msg:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1588, '消息删除', 1536, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:msg:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1589, '消息导出', 1536, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:msg:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1590, '公文查询', 1530, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:document:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1591, '公文新增', 1530, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:document:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1592, '公文修改', 1530, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:document:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1593, '公文删除', 1530, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:document:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1594, '公文导出', 1530, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:document:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1595, '会议申请查询', 1534, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:meeting:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1596, '会议申请新增', 1534, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:meeting:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1597, '会议申请修改', 1534, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:meeting:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1598, '会议申请删除', 1534, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:meeting:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1599, '会议申请导出', 1534, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:meeting:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1600, '文档查询', 1531, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:document:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1601, '工作流步骤查询', 1531, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:process:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1602, '工作流步骤新增', 1531, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:process:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1603, '工作流步骤修改', 1531, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:process:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1604, '工作流步骤删除', 1531, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:process:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1605, '工作流步骤导出', 1531, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:process:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1606, '工作汇报查询', 1532, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:report:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1607, '工作汇报新增', 1532, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:report:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1608, '工作汇报修改', 1532, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:report:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1609, '工作汇报删除', 1532, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:report:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1610, '工作汇报导出', 1532, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:report:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1611, '工作汇报查询', 1533, 1, '#', '', 1, 0, 'F', '0', '0', 'oa:report:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1612, '工作汇报新增', 1533, 2, '#', '', 1, 0, 'F', '0', '0', 'oa:report:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1613, '工作汇报修改', 1533, 3, '#', '', 1, 0, 'F', '0', '0', 'oa:report:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1614, '工作汇报删除', 1533, 4, '#', '', 1, 0, 'F', '0', '0', 'oa:report:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1615, '工作汇报导出', 1533, 5, '#', '', 1, 0, 'F', '0', '0', 'oa:report:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1616, '教学计划查询', 1350, 1, '#', '', 1, 0, 'F', '0', '0', 'teach:teachPlan:query', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1617, '教学计划新增', 1350, 2, '#', '', 1, 0, 'F', '0', '0', 'teach:teachPlan:add', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1618, '教学计划修改', 1350, 3, '#', '', 1, 0, 'F', '0', '0', 'teach:teachPlan:edit', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1619, '教学计划删除', 1350, 4, '#', '', 1, 0, 'F', '0', '0', 'teach:teachPlan:remove', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1620, '教学计划导出', 1350, 5, '#', '', 1, 0, 'F', '0', '0', 'teach:teachPlan:export', '#', 'admin', '2023-03-02 13:28:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1621, '教学任务查询', 1346, 1, '#', '', 1, 0, 'F', '0', '0', 'education:eduTask:query', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1622, '教学任务新增', 1346, 2, '#', '', 1, 0, 'F', '0', '0', 'education:eduTask:add', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1623, '教学任务修改', 1346, 3, '#', '', 1, 0, 'F', '0', '0', 'education:eduTask:edit', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1624, '教学任务删除', 1346, 4, '#', '', 1, 0, 'F', '0', '0', 'education:eduTask:remove', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1625, '教学任务导出', 1346, 5, '#', '', 1, 0, 'F', '0', '0', 'education:eduTask:export', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1626, '调课管理查询', 1563, 1, '#', '', 1, 0, 'F', '0', '0', 'education:eduExchange:query', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1627, '调课管理新增', 1563, 2, '#', '', 1, 0, 'F', '0', '0', 'education:eduExchange:add', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1628, '调课管理修改', 1563, 3, '#', '', 1, 0, 'F', '0', '0', 'education:eduExchange:edit', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1629, '调课管理删除', 1563, 4, '#', '', 1, 0, 'F', '0', '0', 'education:eduExchange:remove', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1630, '调课管理导出', 1563, 5, '#', '', 1, 0, 'F', '0', '0', 'education:eduExchange:export', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1631, '评教师查询', 1348, 1, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalScore:teacher', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1632, '评教分数新增', 1348, 2, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalScore:add', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1633, '评教分数修改', 1348, 3, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalScore:edit', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1634, '评教分数保存', 1348, 4, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalScore:save', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1635, '评教分数查询', 1348, 5, '#', '', 1, 0, 'F', '0', '0', 'evaluate:evalScore:score', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1636, '我的实习', 1528, 4, 'practice/praSummary/my', 'practice/praSummary/my', 1, 0, 'C', '0', '0', 'practice:praSummary:my', 'edit', 'admin', '2023-03-02 16:14:48', 'admin', '2023-03-03 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1637, '实习总结查询', 1636, 1, '#', '', 1, 0, 'F', '0', '0', 'practice:praSummary:query', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1638, '实习总结新增', 1636, 2, '#', '', 1, 0, 'F', '0', '0', 'practice:praSummary:add', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1639, '实习总结修改', 1636, 3, '#', '', 1, 0, 'F', '0', '0', 'practice:praSummary:edit', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1640, '实习任务', 1636, 4, '#', '', 1, 0, 'F', '0', '0', 'practice:praTask:my', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1641, '实习任务查询', 1636, 1, '#', '', 1, 0, 'F', '0', '0', 'practice:praTask:query', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1642, '实习考勤新增', 1636, 2, '#', '', 1, 0, 'F', '0', '0', 'practice:praCheck:list', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1643, '实习总结新增', 1636, 2, '#', '', 1, 0, 'F', '0', '0', 'practice:praSummary:list', '#', 'admin', '2023-03-02 16:14:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1644, '数据中心', 1, 3, 'xdata', 'xdata/index', 1, 0, 'M', '0', '0', '', 'row', 'admin', '2023-03-02 16:51:34', 'admin', '2023-03-03 13:25:42', '');
INSERT INTO `sys_menu` VALUES (1645, '应用管理', 1644, 1, 'client', 'xdata/client/index', 1, 0, 'C', '0', '0', 'xdata:client:list', 'guide', 'admin', '2023-03-02 16:51:34', 'admin', '2023-03-03 13:25:42', '应用菜单');
INSERT INTO `sys_menu` VALUES (1646, '应用查询', 1645, 1, '#', '', 1, 0, 'F', '0', '0', 'xdata:client:query', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1647, '应用新增', 1645, 2, '#', '', 1, 0, 'F', '0', '0', 'xdata:client:add', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1648, '应用修改', 1645, 3, '#', '', 1, 0, 'F', '0', '0', 'xdata:client:edit', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1649, '应用删除', 1645, 4, '#', '', 1, 0, 'F', '0', '0', 'xdata:client:remove', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1650, '应用导出', 1645, 5, '#', '', 1, 0, 'F', '0', '0', 'xdata:client:export', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1651, '模型管理', 1644, 1, 'model', 'xdata/model/index', 1, 0, 'C', '0', '0', 'xdata:model:list', 'dict', 'admin', '2023-03-02 16:51:34', 'admin', '2023-03-03 13:54:52', '模型菜单');
INSERT INTO `sys_menu` VALUES (1652, '模型查询', 1651, 1, '#', '', 1, 0, 'F', '0', '0', 'xdata:model:query', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1653, '模型新增', 1651, 2, '#', '', 1, 0, 'F', '0', '0', 'xdata:model:add', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1654, '模型修改', 1651, 3, '#', '', 1, 0, 'F', '0', '0', 'xdata:model:edit', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1655, '模型删除', 1651, 4, '#', '', 1, 0, 'F', '0', '0', 'xdata:model:remove', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1656, '模型导出', 1651, 5, '#', '', 1, 0, 'F', '0', '0', 'xdata:model:export', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1657, '管道管理', 1644, 1, 'pipe', 'xdata/pipe/index', 1, 0, 'C', '0', '0', 'xdata:pipe:list', 'swagger', 'admin', '2023-03-02 16:51:34', 'admin', '2023-03-03 13:54:52', '通道菜单');
INSERT INTO `sys_menu` VALUES (1658, '通道查询', 1657, 1, '#', '', 1, 0, 'F', '0', '0', 'xdata:pipe:query', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1659, '通道新增', 1657, 2, '#', '', 1, 0, 'F', '0', '0', 'xdata:pipe:add', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1660, '通道修改', 1657, 3, '#', '', 1, 0, 'F', '0', '0', 'xdata:pipe:edit', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1661, '通道删除', 1657, 4, '#', '', 1, 0, 'F', '0', '0', 'xdata:pipe:remove', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1662, '通道导出', 1657, 5, '#', '', 1, 0, 'F', '0', '0', 'xdata:pipe:export', '#', 'admin', '2023-03-02 16:51:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1663, '招生注册率', 1720, 2, 'sys/chart/menu/enroll_signup', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-02 16:51:34', 'admin', '2023-03-03 13:54:52', '');
INSERT INTO `sys_menu` VALUES (1665, '课堂考勤查询', 1668, 1, '', NULL, 1, 0, 'F', '0', '0', 'teach:teachCheck:list', '#', 'admin', '2023-03-02 16:51:34', 'admin', '2023-03-03 13:54:52', '');
INSERT INTO `sys_menu` VALUES (1668, '学生权限', 1528, 9, 'student', 'student', 1, 0, 'C', '0', '1', 'student', '#', 'admin', '2023-03-02 17:07:10', 'admin', '2023-03-03 13:54:52', '');
INSERT INTO `sys_menu` VALUES (1669, '缴费', 1668, 1, '', NULL, 1, 0, 'F', '0', '0', 'wechat:pay:add', '#', 'admin', '2023-03-02 17:07:10', 'admin', '2023-03-03 13:54:52', '');
INSERT INTO `sys_menu` VALUES (1670, '宿舍考勤', 1668, 2, '', NULL, 1, 0, 'F', '0', '0', 'student:check:list', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1672, '学生荣耀查询', 1720, 6, 'charts/student/glory', 'charts/student/glory', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2023-03-02 17:07:10', 'admin', '2023-03-03 13:54:52', '');
INSERT INTO `sys_menu` VALUES (1673, '学习中心', 1236, 6, 'study', NULL, 1, 0, 'M', '0', '0', NULL, 'redis', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1674, '科目管理', 1673, 1, 'studySubject', 'study/studySubject/index', 1, 0, 'C', '0', '0', 'study:studySubject:list', 'cascader', 'admin', '2023-03-02 17:07:10', 'admin', '2023-03-03 13:54:52', '科目菜单');
INSERT INTO `sys_menu` VALUES (1675, '科目查询', 1674, 1, '#', '', 1, 0, 'F', '0', '0', 'study:studySubject:query', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1676, '科目新增', 1674, 2, '#', '', 1, 0, 'F', '0', '0', 'study:studySubject:add', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1677, '科目修改', 1674, 3, '#', '', 1, 0, 'F', '0', '0', 'study:studySubject:edit', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1678, '科目删除', 1674, 4, '#', '', 1, 0, 'F', '0', '0', 'study:studySubject:remove', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1679, '科目导出', 1674, 5, '#', '', 1, 0, 'F', '0', '0', 'study:studySubject:export', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1680, '课程管理', 1673, 1, 'studyRes', 'study/studyRes/index', 1, 0, 'C', '0', '0', 'study:studyRes:list', 'tab', 'admin', '2023-03-02 17:07:10', 'admin', '2023-03-03 13:54:52', '资源菜单');
INSERT INTO `sys_menu` VALUES (1681, '资源查询', 1680, 1, '#', '', 1, 0, 'F', '0', '0', 'study:studyRes:query', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1682, '资源新增', 1680, 2, '#', '', 1, 0, 'F', '0', '0', 'study:studyRes:add', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1683, '资源修改', 1680, 3, '#', '', 1, 0, 'F', '0', '0', 'study:studyRes:edit', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1684, '资源删除', 1680, 4, '#', '', 1, 0, 'F', '0', '0', 'study:studyRes:remove', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1685, '资源导出', 1680, 5, '#', '', 1, 0, 'F', '0', '0', 'study:studyRes:export', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1686, '题库管理', 1673, 1, 'studyQuestion', 'study/studyQuestion/index', 1, 0, 'C', '0', '0', 'study:studyQuestion:list', 'question', 'admin', '2023-03-02 17:07:10', 'admin', '2023-03-03 13:54:52', '试题菜单');
INSERT INTO `sys_menu` VALUES (1687, '试题查询', 1686, 1, '#', '', 1, 0, 'F', '0', '0', 'study:studyQuestion:query', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1688, '试题新增', 1686, 2, '#', '', 1, 0, 'F', '0', '0', 'study:studyQuestion:add', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1689, '试题修改', 1686, 3, '#', '', 1, 0, 'F', '0', '0', 'study:studyQuestion:edit', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1690, '试题删除', 1686, 4, '#', '', 1, 0, 'F', '0', '0', 'study:studyQuestion:remove', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1691, '试题导出', 1686, 5, '#', '', 1, 0, 'F', '0', '0', 'study:studyQuestion:export', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1692, '错题本', 1673, 1, 'studyWrong', 'study/studyWrong/index', 1, 0, 'C', '0', '0', 'study:studyWrong:list', 'edit', 'admin', '2023-03-02 17:07:10', 'admin', '2023-03-03 13:54:52', '错题本菜单');
INSERT INTO `sys_menu` VALUES (1693, '错题本查询', 1692, 1, '#', '', 1, 0, 'F', '0', '0', 'study:studyWrong:query', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1694, '错题本新增', 1692, 2, '#', '', 1, 0, 'F', '0', '0', 'study:studyWrong:add', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1695, '错题本修改', 1692, 3, '#', '', 1, 0, 'F', '0', '0', 'study:studyWrong:edit', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1696, '错题本删除', 1692, 4, '#', '', 1, 0, 'F', '0', '0', 'study:studyWrong:remove', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1697, '错题本导出', 1692, 5, '#', '', 1, 0, 'F', '0', '0', 'study:studyWrong:export', '#', 'admin', '2023-03-02 17:07:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1698, '学习中心', 1528, 2, 'myStudy', NULL, 1, 0, 'M', '0', '0', '', 'number', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 08:59:15', '');
INSERT INTO `sys_menu` VALUES (1699, '课程库', 1698, 1, 'study/studyRes/my', 'study/studyRes/my', 1, 0, 'C', '0', '0', 'study:resource:my', 'dict', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 08:59:15', '');
INSERT INTO `sys_menu` VALUES (1700, '试题库', 1698, 2, 'study/studyQuestion/my', 'study/studyQuestion/my', 1, 0, 'C', '0', '0', 'study:studyQuestion:my', 'druid', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 08:59:15', '');
INSERT INTO `sys_menu` VALUES (1701, '错题本', 1698, 3, 'study/studyWrong/my', 'study/studyWrong/my', 1, 0, 'C', '0', '0', 'study:studyWrong:my', 'edit', 'admin', '2023-03-03 08:59:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1702, 'OA办公', 1528, 3, 'myOa', NULL, 1, 0, 'M', '0', '0', NULL, 'documentation', 'admin', '2023-03-03 08:59:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1703, '教学工作', 1528, 1, 'myTeach', NULL, 1, 0, 'M', '0', '0', '', 'question', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 08:59:15', '');
INSERT INTO `sys_menu` VALUES (1704, '用户权限', 1, 2, 'user_role', NULL, 1, 0, 'M', '0', '0', NULL, 'peoples', 'admin', '2023-03-03 08:59:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1705, '系统设置', 1, 1, 'sys_set', NULL, 1, 0, 'M', '0', '0', NULL, 'component', 'admin', '2023-03-03 08:59:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1706, '科目列表', 1700, 1, '', NULL, 1, 0, 'F', '0', '0', 'study:studySubject:list', '#', 'admin', '2023-03-03 08:59:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1707, '添加错题', 1701, 2, '', NULL, 1, 0, 'F', '0', '0', 'study:studyWrong:add', '#', 'admin', '2023-03-03 08:59:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1708, '招生报到统计', 1720, 9, 'sys/chart/menu/student_checkin', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 11:14:53', '');
INSERT INTO `sys_menu` VALUES (1709, '学籍异动统计', 1720, 9, 'sys/chart/menu/student_change', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 11:15:04', '');
INSERT INTO `sys_menu` VALUES (1710, '毕业人数统计', 1720, 9, 'sys/chart/menu/student_graduation', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 11:15:16', '');
INSERT INTO `sys_menu` VALUES (1711, '毕业去向统计', 1720, 9, 'sys/chart/menu/student_graduation_type', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 11:15:22', '');
INSERT INTO `sys_menu` VALUES (1712, '实习统计', 1721, 9, 'sys/chart/menu/practice_semster', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 11:15:34', '');
INSERT INTO `sys_menu` VALUES (1713, '教学事故统计', 1721, 9, 'sys/chart/menu/teach_accident', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 11:15:39', '');
INSERT INTO `sys_menu` VALUES (1714, '实验预约统计', 1721, 9, 'sys/chart/menu/lab_apply', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 11:15:44', '');
INSERT INTO `sys_menu` VALUES (1715, '办结公文统计', 1722, 9, 'sys/chart/menu/oa_document', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 11:15:54', '');
INSERT INTO `sys_menu` VALUES (1716, '年度会议统计', 1722, 9, 'sys/chart/menu/oa_meeting', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 11:15:58', '');
INSERT INTO `sys_menu` VALUES (1717, '培训招生统计', 1722, 9, 'sys/chart/menu/student_train', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 11:16:04', '');
INSERT INTO `sys_menu` VALUES (1718, '资源浏览排行', 1722, 9, 'sys/chart/menu/res_sort', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 11:16:10', '');
INSERT INTO `sys_menu` VALUES (1719, '错题排行', 1722, 9, 'sys/chart/menu/question_warong', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 11:16:16', '');
INSERT INTO `sys_menu` VALUES (1720, '学生相关', 1372, 1, 'studentChart', NULL, 1, 0, 'M', '0', '0', NULL, 'peoples', 'admin', '2023-03-03 08:59:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1721, '教学相关', 1372, 2, 'teachChart', NULL, 1, 0, 'M', '0', '0', NULL, 'edit', 'admin', '2023-03-03 08:59:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1722, '其它统计', 1372, 3, 'otherChart', NULL, 1, 0, 'M', '0', '0', NULL, 'chart', 'admin', '2023-03-03 08:59:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1723, '在校生概况', 1720, 1, 'charts/student/alive', 'charts/student/alive', 1, 0, 'C', '0', '0', '', 'peoples', 'admin', '2023-03-03 08:59:15', 'admin', '2023-03-03 14:32:14', '');
INSERT INTO `sys_menu` VALUES (1724, '学生花名册', 1720, 2, 'student/studentInfo/query', 'student/studentInfo/query', 1, 0, 'C', '0', '0', NULL, 'peoples', 'admin', '2023-03-03 08:59:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1725, '宿舍考勤查询', 1720, 9, 'charts/student/check', 'charts/student/check', 1, 0, 'C', '0', '0', NULL, 'checkbox', 'admin', '2023-03-03 08:59:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1727, '教学计划查询', 1721, 3, 'charts/teach/plan', 'charts/teach/plan', 1, 0, 'C', '0', '0', '', 'form', 'admin', '2023-03-03 11:45:39', 'admin', '2023-03-03 14:32:14', '');
INSERT INTO `sys_menu` VALUES (1728, '及格率统计', 1721, 9, 'sys/chart/menu/result_rate', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 13:48:00', 'admin', '2023-03-03 14:32:14', '');
INSERT INTO `sys_menu` VALUES (1729, '我的成绩查询', 1698, 9, 'sys/chart/menu/student_result', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 14:22:35', 'admin', '2023-03-03 14:32:14', '');
INSERT INTO `sys_menu` VALUES (1730, '教师本人课表', 1703, 9, 'sys/chart/menu/my_scheduling', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 14:22:35', 'admin', '2023-03-03 14:32:14', '');
INSERT INTO `sys_menu` VALUES (1731, '今日全校课表', 1721, 9, 'sys/chart/menu/scheduling_day', 'sys/chart/menu', 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2023-03-03 14:22:35', 'admin', '2023-03-03 14:32:14', '');
INSERT INTO `sys_menu` VALUES (1732, '收件箱', 1528, 11, 'msg/in', 'sys/msg/in', 1, 0, 'C', '0', '0', 'sys:msg:in', 'message', 'admin', '2023-03-03 14:22:35', 'admin', '2023-03-03 14:32:14', '');
INSERT INTO `sys_menu` VALUES (1733, '发件箱', 1528, 12, 'msg/out', 'sys/msg/out', 1, 0, 'C', '0', '0', 'sys:msg:out', 'message', 'admin', '2023-03-03 14:22:35', 'admin', '2023-03-03 14:32:14', '');
INSERT INTO `sys_menu` VALUES (1734, '我的网盘', 1528, 13, 'yun/files/my', 'yun/files/my', 1, 0, 'C', '0', '0', 'yun:files:my', 'upload', 'admin', '2023-03-03 14:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1735, '网络云盘', 1, 6, 'yun', NULL, 1, 0, 'M', '0', '0', NULL, 'international', 'admin', '2023-03-03 14:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1748, '云盘文件', 1735, 1, 'files', 'yun/files/index', 1, 0, 'C', '0', '0', 'yun:files:list', 'documentation', 'admin', '2023-03-03 14:22:35', 'admin', '2023-03-03 14:32:14', '云盘文件菜单');
INSERT INTO `sys_menu` VALUES (1749, '云盘文件查询', 1748, 1, '#', '', 1, 0, 'F', '0', '0', 'yun:files:query', '#', 'admin', '2023-03-03 14:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1750, '云盘文件新增', 1748, 2, '#', '', 1, 0, 'F', '0', '0', 'yun:files:add', '#', 'admin', '2023-03-03 14:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1751, '云盘文件修改', 1748, 3, '#', '', 1, 0, 'F', '0', '0', 'yun:files:edit', '#', 'admin', '2023-03-03 14:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1752, '云盘文件删除', 1748, 4, '#', '', 1, 0, 'F', '0', '0', 'yun:files:remove', '#', 'admin', '2023-03-03 14:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1753, '云盘文件导出', 1748, 5, '#', '', 1, 0, 'F', '0', '0', 'yun:files:export', '#', 'admin', '2023-03-03 14:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1754, '云盘目录', 1735, 1, 'folder', 'yun/folder/index', 1, 0, 'C', '0', '0', 'yun:folder:list', 'tab', 'admin', '2023-03-03 14:22:35', 'admin', '2023-03-03 14:32:14', '云盘目录菜单');
INSERT INTO `sys_menu` VALUES (1755, '云盘目录查询', 1754, 1, '#', '', 1, 0, 'F', '0', '0', 'yun:folder:query', '#', 'admin', '2023-03-03 14:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1756, '云盘目录新增', 1754, 2, '#', '', 1, 0, 'F', '0', '0', 'yun:folder:add', '#', 'admin', '2023-03-03 14:22:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1757, '云盘目录修改', 1754, 3, '#', '', 1, 0, 'F', '0', '0', 'yun:folder:edit', '#', 'admin', '2021-03-26 14:32:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1758, '云盘目录删除', 1754, 4, '#', '', 1, 0, 'F', '0', '0', 'yun:folder:remove', '#', 'admin', '2023-03-03 14:32:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1759, '云盘目录导出', 1754, 5, '#', '', 1, 0, 'F', '0', '0', 'yun:folder:export', '#', 'admin', '2023-03-03 14:32:14', '', NULL, '');

-- ----------------------------
-- Table structure for sys_msg
-- ----------------------------
DROP TABLE IF EXISTS `sys_msg`;
CREATE TABLE `sys_msg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息类型',
  `add_time` datetime(0) NULL DEFAULT NULL COMMENT '发送时间',
  `add_user` int(11) NOT NULL DEFAULT 0 COMMENT '发信人',
  `add_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '发信人姓名',
  `to_user` int(11) NULL DEFAULT NULL COMMENT '收信人',
  `to_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收信人姓名',
  `read_time` datetime(0) NULL DEFAULT NULL COMMENT '读取时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_msg
-- ----------------------------
INSERT INTO `sys_msg` VALUES (1, 'fadf', 'adfadsf', 'adfadsf', '1', '2023-03-03 17:39:10', 1, '管理员', 1, '管理员', '2023-03-04 10:57:12');
INSERT INTO `sys_msg` VALUES (2, 'fadf', 'adfadsf', 'adfadsf', '1', '2023-03-03 17:39:10', 1, '管理员', 2, '若依', NULL);
INSERT INTO `sys_msg` VALUES (14, '采购通知', '您有新的采购任务，要求在2021-03-10前完成', 'asset/purchase/task', '2', NULL, 0, '系统', 1, '超级管理员', '2023-03-04 11:09:20');
INSERT INTO `sys_msg` VALUES (15, '资产维护通知', '您有新的资产维护任务，要求在2021-03-11前完成', 'asset/maintain/task', '2', '2023-03-03 15:41:20', 0, '系统', 1, '超级管理员', '2023-03-04 15:45:28');
INSERT INTO `sys_msg` VALUES (16, '资产维护通知', '您有新的资产维护任务，要求在2021-03-11前完成', 'asset/maintain/task', '2', '2023-03-03 16:30:16', 0, '系统', 1, '超级管理员', '2023-03-04 16:37:12');
INSERT INTO `sys_msg` VALUES (17, '资产维护通知', '您有新的资产维护任务，要求在2021-03-11前完成', 'asset/maintain/task', '2', '2023-03-03 17:19:37', 0, '系统', 1, '超级管理员', '2023-03-04 18:50:28');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '到操场集合！', '1', 0x3C703EE5BE85E591BD3C2F703E, '0', 'admin', '2023-03-09 20:44:15', '', NULL, NULL);
INSERT INTO `sys_notice` VALUES (4, 'What you have become', '2', 0x3C703E3C7374726F6E67207374796C653D22636F6C6F723A207267622833342C2033342C203334293B223E4576657279626F647920697320736F6D65626F6479EFBC8C6576656E2061206E6F626F64792E2052656D656D6265722077686F20796F75206172652E3C2F7374726F6E673E3C2F703E, '0', 'admin', '2023-04-15 01:44:32', '', NULL, NULL);
INSERT INTO `sys_notice` VALUES (5, '你好', '1', 0x3C703EE4BB8AE5A4A9E7AD94E8BEA93C2F703E, '0', 'admin', '2023-04-15 12:55:28', '', NULL, NULL);
INSERT INTO `sys_notice` VALUES (6, '啊啊', '1', 0x3C703EE5958AE5958AE5958A3C2F703E, '0', 'admin', '2023-04-15 16:07:40', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.ruoyi.web.controller.monitor.SysOperlogController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/operlog/clean', '183.230.226.160', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-14 00:40:42');
INSERT INTO `sys_oper_log` VALUES (2, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '183.230.226.160', 'XX XX', '{\"visible\":\"1\",\"icon\":\"job\",\"orderNum\":\"2\",\"menuName\":\"定时任务\",\"params\":{},\"parentId\":2,\"isCache\":\"0\",\"path\":\"job\",\"component\":\"monitor/job/index\",\"children\":[],\"createTime\":1677399722000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":110,\"menuType\":\"C\",\"perms\":\"monitor:job:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-14 00:44:03');
INSERT INTO `sys_oper_log` VALUES (3, '上传文件', 1, 'com.ruoyi.sys.controller.SysFilesController.upload()', 'POST', 1, 'admin', NULL, '/sys/files/upload', '183.230.226.160', 'XX XX', '', '{\"msg\":\"java.io.FileNotFoundException: /tmp/tomcat.8080.7159766788789961069/work/Tomcat/localhost/ROOT/D:/test/upload/2023/04/14/fdb68cae-aeec-47cb-93db-cff6f0c3a97e.png (No such file or directory)\",\"code\":500}', 0, NULL, '2023-04-14 13:35:03');
INSERT INTO `sys_oper_log` VALUES (4, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '183.230.226.160', 'XX XX', '{\"visible\":\"0\",\"icon\":\"message\",\"orderNum\":\"8\",\"menuName\":\"新闻推送\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"notice\",\"component\":\"system/notice/index\",\"children\":[],\"createTime\":1677399722000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":107,\"menuType\":\"C\",\"perms\":\"system:notice:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-14 14:40:23');
INSERT INTO `sys_oper_log` VALUES (5, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '183.230.226.160', 'XX XX', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"新闻查询\",\"params\":{},\"parentId\":107,\"isCache\":\"0\",\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1677486122000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1036,\"menuType\":\"F\",\"perms\":\"system:notice:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-14 14:41:26');
INSERT INTO `sys_oper_log` VALUES (6, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '183.230.226.160', 'XX XX', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"2\",\"menuName\":\"新增新闻\",\"params\":{},\"parentId\":107,\"isCache\":\"0\",\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1677486122000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1037,\"menuType\":\"F\",\"perms\":\"system:notice:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-14 14:41:38');
INSERT INTO `sys_oper_log` VALUES (7, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '183.230.226.160', 'XX XX', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"新闻修改\",\"params\":{},\"parentId\":107,\"isCache\":\"0\",\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1677486122000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1038,\"menuType\":\"F\",\"perms\":\"system:notice:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-14 14:41:46');
INSERT INTO `sys_oper_log` VALUES (8, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '183.230.226.160', 'XX XX', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"新闻删除\",\"params\":{},\"parentId\":107,\"isCache\":\"0\",\"path\":\"#\",\"component\":\"\",\"children\":[],\"createTime\":1677486122000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1039,\"menuType\":\"F\",\"perms\":\"system:notice:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-14 14:41:54');
INSERT INTO `sys_oper_log` VALUES (9, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '183.230.226.160', 'XX XX', '{\"noticeContent\":\"<p><strong style=\\\"color: rgb(34, 34, 34);\\\">Everybody is somebody，even a nobody. Remember who you are.</strong></p>\",\"createBy\":\"admin\",\"noticeType\":\"2\",\"params\":{},\"noticeTitle\":\"What you have become\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 01:44:32');
INSERT INTO `sys_oper_log` VALUES (10, '班级', 1, 'com.ruoyi.base.controller.BaseClassController.add()', 'POST', 1, 'admin', NULL, '/base/clazz', '183.230.226.160', 'XX XX', '{\"specId\":1,\"period\":4,\"code\":\"2023081200\",\"endDate\":1814284800000,\"year\":2023,\"params\":{},\"title\":\"计科1班\",\"roomId\":1,\"createTime\":1681533676123,\"masterUser\":1,\"id\":6,\"startDate\":1680710400000,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 12:41:16');
INSERT INTO `sys_oper_log` VALUES (11, '学生', 1, 'com.ruoyi.base.controller.BaseStudentController.add()', 'POST', 1, 'admin', NULL, '/base/student', '183.230.226.160', 'XX XX', '{\"code\":\"2023105001\",\"year\":2023,\"roomId\":0,\"classId\":6,\"id\":24,\"isLodge\":\"0\",\"specId\":1,\"sex\":\"0\",\"params\":{},\"userId\":31,\"idcard\":\"500233333\",\"name\":\"tom\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 12:42:10');
INSERT INTO `sys_oper_log` VALUES (12, '老师', 1, 'com.ruoyi.base.controller.BaseTeacherController.add()', 'POST', 1, 'admin', NULL, '/base/teacher', '183.230.226.160', 'XX XX', '{\"code\":\"11111\",\"type\":\"1\",\"id\":5,\"sex\":\"0\",\"deptId\":112,\"params\":{},\"userId\":32,\"idcard\":\"2222\",\"name\":\"余文乐\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 12:44:41');
INSERT INTO `sys_oper_log` VALUES (13, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '183.230.226.160', 'XX XX', '{\"flag\":false,\"roleId\":5,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"dept\",\"roleName\":\"部门负责人\",\"menuIds\":[1528,1703,1346,1621,1622,1623,1624,1625,1350,1616,1617,1618,1619,1620,1730,1563,1626,1627,1628,1629,1630,1698,1699,1700,1706,1701,1707,1729,1702,1530,1590,1591,1592,1593,1594,1531,1600,1601,1602,1603,1604,1605,1532,1606,1607,1608,1609,1610,1533,1611,1612,1613,1614,1615,1561,1562,1534,1595,1596,1597,1598,1599,1636,1637,1641,1638,1642,1643,1639,1640,1348,1631,1632,1633,1634,1635,1668,1665,1669,1670,1732,1733,1734,1061,1080,1081,1082,1083,1084,1085,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1062,1063,1064,1065,1066,1067,103,1017,1018,1019,1020,1086,1087,1088,1089,1090,1091,1104,1105,1106,1107,1108,1109,1122,1123,1124,1125,1126,1127,1369,1116,1117,1118,1119,1120,1121,1110,1111,1112,1113,1114,1115,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1368,1314,1327,1328,1329,1330,1331,1332,1315,1316,1317,1318,1319,1320,1345,1321,1322,1323,1324,1325,1326,1339,1340,1341,1342,1343,1344,1333,1334,1335,1336,1337,1338,1130,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1373,1132,1133,1134,1135,1136,1137,1305,1306,1307,1156,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208,1209,1210,1211,1212,1213,1214,1215,1216,1193,1194,1195,1196,1197,1198,1217,1230,1231,1232,1233,1234,1235,1218,1219,1220,1221,1222,1223,1224,1225,1226,1227,1228,1229,1370,1374,1414,1415,1416,1417,1418,1419,1420,1421,1422,1423,1424,1425,1432,1433,1434,1435,1436,1437,1462,1463,1464,1465,1466,1467,1480,1481,1482,1483,1484,1485,1426,1427,1428,1429,1430,1431,1549,1550,1551,1552,1553,1554,1555,1556,1557,1558,1559,1560,1474,1475,1476,1477,1478,1479,1375,1378,1379,1380,1381,1382,1383,1384,1385,1386,1387,1388,1389,1390,1391,1392,1393,1394,1395,1376,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406,1407,1529,1408,1409,1410,1411,1412,1413,1450', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 12:48:22');
INSERT INTO `sys_oper_log` VALUES (14, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '183.230.226.160', 'XX XX', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1677831720000,\"remark\":\"测试\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"test@qq.com\",\"nickName\":\"张校长\",\"sex\":\"0\",\"deptId\":111,\"avatar\":\"\",\"dept\":{\"deptName\":\"培训室\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":111,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1677831722000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 12:49:17');
INSERT INTO `sys_oper_log` VALUES (15, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '183.230.226.160', 'XX XX', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1677831720000,\"remark\":\"测试\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"test@qq.com\",\"nickName\":\"张校长\",\"sex\":\"0\",\"deptId\":111,\"avatar\":\"\",\"dept\":{\"deptName\":\"职能部门\",\"deptId\":111,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[5],\"createTime\":1677831722000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 12:49:36');
INSERT INTO `sys_oper_log` VALUES (16, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '183.230.226.160', 'XX XX', '{\"noticeContent\":\"<p>今天答辩</p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"你好\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 12:55:28');
INSERT INTO `sys_oper_log` VALUES (17, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '183.230.226.160', 'XX XX', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1677831722000,\"updateBy\":\"admin\",\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1008,1009,1010,1011,1012,1013,1014,1015,1016,1021,1022,1023,1024,1025,107,1036,500,1040,1041,1042,501,1043,1044,1045,1017,1018,1019,1020],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 13:37:50');
INSERT INTO `sys_oper_log` VALUES (18, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '183.230.226.160', 'XX XX', '{\"flag\":false,\"roleId\":4,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createTime\":1677831359000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[1,107,1528,1698,1036,1699,1700,1706,1701,1707,1636,1637,1641,1638,1642,1643,1639,1640,1348,1631,1632,1633,1634,1635,1668,1665,1669,1670,1580,1585,1586,1587,1588,1589],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 13:38:09');
INSERT INTO `sys_oper_log` VALUES (19, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '183.230.226.160', 'XX XX', '{\"sub\":false,\"functionAuthor\":\"zhaoxiaolong\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1676958857000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1676451248000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"SpecId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"specId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"所属专业\",\"isQuery\":\"1\",\"updateTime\":1676958857000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1676451248000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"spec_id\"},{\"capJavaField\":\"Code\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"code\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级代码\",\"isQuery\":\"1\",\"updateTime\":1676958857000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1676451248000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"code\"},{\"capJavaField\":\"Year\",\"usableColumn\":false,\"columnId\":26,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"year\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"年级\",\"isQuery\":\"1\",\"updateTime\":1676958857000,\"sort\":3,\"list\":true,\"params\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 13:46:04');
INSERT INTO `sys_oper_log` VALUES (20, '轮阅记录', 3, 'com.ruoyi.oa.controller.OaArchiveReadController.remove()', 'DELETE', 1, 'admin', NULL, '/oa/read/11', '183.230.226.160', 'XX XX', '{ids=11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 14:08:16');
INSERT INTO `sys_oper_log` VALUES (21, '轮阅记录', 3, 'com.ruoyi.oa.controller.OaArchiveReadController.remove()', 'DELETE', 1, 'admin', NULL, '/oa/read/10', '183.230.226.160', 'XX XX', '{ids=10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 14:08:19');
INSERT INTO `sys_oper_log` VALUES (22, '轮阅记录', 3, 'com.ruoyi.oa.controller.OaArchiveReadController.remove()', 'DELETE', 1, 'admin', NULL, '/oa/read/9', '183.230.226.160', 'XX XX', '{ids=9}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 14:08:21');
INSERT INTO `sys_oper_log` VALUES (23, '公文', 1, 'com.ruoyi.oa.controller.OaDocumentController.add()', 'POST', 1, 'admin', NULL, '/oa/document', '183.230.226.160', 'XX XX', '{\"addTime\":1681538960326,\"addUser\":1,\"params\":{},\"id\":6,\"flowId\":3,\"status\":\"0\"}', 'null', 1, '', '2023-04-15 14:09:20');
INSERT INTO `sys_oper_log` VALUES (24, '公文', 1, 'com.ruoyi.oa.controller.OaDocumentController.add()', 'POST', 1, 'admin', NULL, '/oa/document', '183.230.226.160', 'XX XX', '{\"addTime\":1681538962114,\"addUser\":1,\"params\":{},\"id\":7,\"flowId\":3,\"status\":\"0\"}', 'null', 1, '', '2023-04-15 14:09:22');
INSERT INTO `sys_oper_log` VALUES (25, '公文', 1, 'com.ruoyi.oa.controller.OaDocumentController.add()', 'POST', 1, 'admin', NULL, '/oa/document', '183.230.226.160', 'XX XX', '{\"addTime\":1681538962955,\"addUser\":1,\"params\":{},\"id\":8,\"flowId\":3,\"status\":\"0\"}', 'null', 1, '', '2023-04-15 14:09:22');
INSERT INTO `sys_oper_log` VALUES (26, '公文', 1, 'com.ruoyi.oa.controller.OaDocumentController.add()', 'POST', 1, 'admin', NULL, '/oa/document', '183.230.226.160', 'XX XX', '{\"addTime\":1681538963180,\"addUser\":1,\"params\":{},\"id\":9,\"flowId\":3,\"status\":\"0\"}', 'null', 1, '', '2023-04-15 14:09:23');
INSERT INTO `sys_oper_log` VALUES (27, '公文', 1, 'com.ruoyi.oa.controller.OaDocumentController.add()', 'POST', 1, 'admin', NULL, '/oa/document', '183.230.226.160', 'XX XX', '{\"addTime\":1681538963402,\"addUser\":1,\"params\":{},\"id\":10,\"flowId\":3,\"status\":\"0\"}', 'null', 1, '', '2023-04-15 14:09:23');
INSERT INTO `sys_oper_log` VALUES (28, '公文', 1, 'com.ruoyi.oa.controller.OaDocumentController.add()', 'POST', 1, 'admin', NULL, '/oa/document', '183.230.226.160', 'XX XX', '{\"addTime\":1681538963658,\"addUser\":1,\"params\":{},\"id\":11,\"flowId\":3,\"status\":\"0\"}', 'null', 1, '', '2023-04-15 14:09:23');
INSERT INTO `sys_oper_log` VALUES (29, '公文', 1, 'com.ruoyi.oa.controller.OaDocumentController.add()', 'POST', 1, 'admin', NULL, '/oa/document', '183.230.226.160', 'XX XX', '{\"addTime\":1681538963886,\"addUser\":1,\"params\":{},\"id\":12,\"flowId\":3,\"status\":\"0\"}', 'null', 1, '', '2023-04-15 14:09:23');
INSERT INTO `sys_oper_log` VALUES (30, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '183.230.226.160', 'XX XX', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1677831720000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"15715045@qq.com\",\"nickName\":\"管理员\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"学生处\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":111,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1677831722000,\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员用户', '2023-04-15 14:10:02');
INSERT INTO `sys_oper_log` VALUES (31, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '183.230.226.160', 'XX XX', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"remark\":\"超级管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":1677831722000,\"menuCheckStrictly\":true,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"deptIds\":[],\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员角色', '2023-04-15 14:10:18');
INSERT INTO `sys_oper_log` VALUES (32, '上传文件', 1, 'com.ruoyi.sys.controller.SysFilesController.upload()', 'POST', 1, 'admin', NULL, '/sys/files/upload', '183.230.226.160', 'XX XX', '', '{\"msg\":\"java.io.FileNotFoundException: /tmp/tomcat.8080.5447987322858496496/work/Tomcat/localhost/ROOT/D:/test/upload/2023/04/15/f49a9359-d251-4fd3-9979-f670d8f0cf74.jpg (No such file or directory)\",\"code\":500}', 0, NULL, '2023-04-15 14:11:37');
INSERT INTO `sys_oper_log` VALUES (33, '文档轮阅', 1, 'com.ruoyi.oa.controller.OaArchiveController.add()', 'POST', 1, 'admin', NULL, '/oa/archive', '183.230.226.160', 'XX XX', '{\"addTime\":1681539110719,\"addUser\":1,\"source\":\"Internet\",\"params\":{},\"title\":\"测试\",\"users\":[32,4,3,8,1],\"comment\":\"无\",\"id\":5,\"status\":\"N\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 14:11:50');
INSERT INTO `sys_oper_log` VALUES (34, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '183.230.226.160', 'XX XX', '{\"noticeContent\":\"<p>啊啊啊</p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"啊啊\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 16:07:40');
INSERT INTO `sys_oper_log` VALUES (35, '学生', 1, 'com.ruoyi.base.controller.BaseStudentController.add()', 'POST', 1, 'admin', NULL, '/base/student', '183.230.226.160', 'XX XX', '{\"code\":\"22222\",\"year\":2023,\"roomId\":0,\"classId\":6,\"id\":25,\"isLodge\":\"0\",\"specId\":1,\"sex\":\"0\",\"params\":{},\"userId\":33,\"idcard\":\"AAA\",\"name\":\"AA\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 16:08:45');
INSERT INTO `sys_oper_log` VALUES (36, '老师', 1, 'com.ruoyi.base.controller.BaseTeacherController.add()', 'POST', 1, 'admin', NULL, '/base/teacher', '183.230.226.160', 'XX XX', '{\"code\":\"3333\",\"type\":\"1\",\"id\":6,\"sex\":\"1\",\"deptId\":110,\"params\":{},\"userId\":34,\"idcard\":\"111\",\"name\":\"AA\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 16:10:54');
INSERT INTO `sys_oper_log` VALUES (37, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '183.230.226.160', 'XX XX', '{}', 'null', 0, NULL, '2023-04-15 16:13:42');
INSERT INTO `sys_oper_log` VALUES (38, '招生计划', 1, 'com.ruoyi.student.controller.StudentEnrollController.add()', 'POST', 1, 'admin', NULL, '/student/studentEnroll', '183.230.226.160', 'XX XX', '{\"specId\":1,\"period\":4,\"params\":{},\"title\":\"zhaosheng\",\"content\":\"11\",\"total\":111,\"id\":6,\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 16:15:18');
INSERT INTO `sys_oper_log` VALUES (39, '排课', 1, 'com.ruoyi.education.controller.EducationSchedulingController.manual()', 'POST', 1, 'admin', NULL, '/education/eduScheduling/manual', '183.230.226.160', 'XX XX', '{\"week1\":[2],\"week2\":[],\"week3\":[],\"className\":\"2019会计班\",\"roomId\":1,\"classId\":2,\"semId\":1,\"updateBy\":\"admin\",\"courseId\":4,\"specId\":2,\"teacherName\":\"高强\",\"updateTime\":1677899866000,\"params\":{},\"semName\":\"2022-2023下学期\",\"roomName\":\"教学楼102\",\"courseName\":\"数据结构\",\"createBy\":\"admin\",\"teacherId\":3,\"specName\":\"通信工程\",\"createTime\":1677834254000,\"week4\":[2],\"week5\":[],\"taskId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-15 16:17:44');
INSERT INTO `sys_oper_log` VALUES (40, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'admin', NULL, '/system/notice', '183.230.226.170', 'XX XX', '{\"createBy\":\"admin\",\"noticeType\":\"1\",\"params\":{},\"noticeTitle\":\"<script>alert(2)</script>\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-23 11:52:27');
INSERT INTO `sys_oper_log` VALUES (41, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/7', '183.230.226.170', 'XX XX', '{noticeIds=7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-23 11:52:31');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'headermaster', '校长', 1, '0', 'admin', '2023-03-03 16:22:02', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'submaster', '副校长', 2, '0', 'admin', '2023-03-03 16:22:02', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'teacher', '教师', 3, '0', 'admin', '2023-03-03 16:22:02', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'student', '学生', 4, '0', 'admin', '2023-03-03 16:22:02', 'admin', '2023-03-04 16:21:32', '');
INSERT INTO `sys_post` VALUES (5, 'dept', '部门负责人', 5, '0', 'admin', '2023-03-03 16:22:02', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-03-03 16:22:02', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 0, 1, '0', '0', 'admin', '2023-03-03 16:22:02', 'admin', '2023-04-15 13:37:50', '普通角色');
INSERT INTO `sys_role` VALUES (3, '教师', 'teacher', 3, '1', 1, 1, '0', '0', 'admin', '2023-03-03 16:15:45', 'admin', '2023-03-03 16:11:26', NULL);
INSERT INTO `sys_role` VALUES (4, '学生', 'student', 4, '1', 1, 1, '0', '0', 'admin', '2023-03-03 16:15:59', 'admin', '2023-04-15 13:38:09', NULL);
INSERT INTO `sys_role` VALUES (5, '部门负责人', 'dept', 5, '1', 1, 1, '0', '0', 'admin', NULL, 'admin', '2023-04-15 12:48:22', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (3, 1346);
INSERT INTO `sys_role_menu` VALUES (3, 1350);
INSERT INTO `sys_role_menu` VALUES (3, 1528);
INSERT INTO `sys_role_menu` VALUES (3, 1530);
INSERT INTO `sys_role_menu` VALUES (3, 1532);
INSERT INTO `sys_role_menu` VALUES (3, 1534);
INSERT INTO `sys_role_menu` VALUES (3, 1535);
INSERT INTO `sys_role_menu` VALUES (3, 1536);
INSERT INTO `sys_role_menu` VALUES (3, 1563);
INSERT INTO `sys_role_menu` VALUES (3, 1580);
INSERT INTO `sys_role_menu` VALUES (3, 1581);
INSERT INTO `sys_role_menu` VALUES (3, 1582);
INSERT INTO `sys_role_menu` VALUES (3, 1583);
INSERT INTO `sys_role_menu` VALUES (3, 1584);
INSERT INTO `sys_role_menu` VALUES (3, 1585);
INSERT INTO `sys_role_menu` VALUES (3, 1586);
INSERT INTO `sys_role_menu` VALUES (3, 1587);
INSERT INTO `sys_role_menu` VALUES (3, 1588);
INSERT INTO `sys_role_menu` VALUES (3, 1589);
INSERT INTO `sys_role_menu` VALUES (3, 1590);
INSERT INTO `sys_role_menu` VALUES (3, 1591);
INSERT INTO `sys_role_menu` VALUES (3, 1592);
INSERT INTO `sys_role_menu` VALUES (3, 1593);
INSERT INTO `sys_role_menu` VALUES (3, 1594);
INSERT INTO `sys_role_menu` VALUES (3, 1595);
INSERT INTO `sys_role_menu` VALUES (3, 1596);
INSERT INTO `sys_role_menu` VALUES (3, 1597);
INSERT INTO `sys_role_menu` VALUES (3, 1598);
INSERT INTO `sys_role_menu` VALUES (3, 1599);
INSERT INTO `sys_role_menu` VALUES (3, 1606);
INSERT INTO `sys_role_menu` VALUES (3, 1607);
INSERT INTO `sys_role_menu` VALUES (3, 1608);
INSERT INTO `sys_role_menu` VALUES (3, 1609);
INSERT INTO `sys_role_menu` VALUES (3, 1610);
INSERT INTO `sys_role_menu` VALUES (3, 1616);
INSERT INTO `sys_role_menu` VALUES (3, 1617);
INSERT INTO `sys_role_menu` VALUES (3, 1618);
INSERT INTO `sys_role_menu` VALUES (3, 1619);
INSERT INTO `sys_role_menu` VALUES (3, 1620);
INSERT INTO `sys_role_menu` VALUES (3, 1621);
INSERT INTO `sys_role_menu` VALUES (3, 1622);
INSERT INTO `sys_role_menu` VALUES (3, 1623);
INSERT INTO `sys_role_menu` VALUES (3, 1624);
INSERT INTO `sys_role_menu` VALUES (3, 1625);
INSERT INTO `sys_role_menu` VALUES (3, 1626);
INSERT INTO `sys_role_menu` VALUES (3, 1627);
INSERT INTO `sys_role_menu` VALUES (3, 1628);
INSERT INTO `sys_role_menu` VALUES (3, 1629);
INSERT INTO `sys_role_menu` VALUES (3, 1630);
INSERT INTO `sys_role_menu` VALUES (3, 1698);
INSERT INTO `sys_role_menu` VALUES (3, 1699);
INSERT INTO `sys_role_menu` VALUES (3, 1700);
INSERT INTO `sys_role_menu` VALUES (3, 1701);
INSERT INTO `sys_role_menu` VALUES (3, 1702);
INSERT INTO `sys_role_menu` VALUES (3, 1703);
INSERT INTO `sys_role_menu` VALUES (3, 1706);
INSERT INTO `sys_role_menu` VALUES (3, 1707);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 107);
INSERT INTO `sys_role_menu` VALUES (4, 1036);
INSERT INTO `sys_role_menu` VALUES (4, 1348);
INSERT INTO `sys_role_menu` VALUES (4, 1528);
INSERT INTO `sys_role_menu` VALUES (4, 1580);
INSERT INTO `sys_role_menu` VALUES (4, 1585);
INSERT INTO `sys_role_menu` VALUES (4, 1586);
INSERT INTO `sys_role_menu` VALUES (4, 1587);
INSERT INTO `sys_role_menu` VALUES (4, 1588);
INSERT INTO `sys_role_menu` VALUES (4, 1589);
INSERT INTO `sys_role_menu` VALUES (4, 1631);
INSERT INTO `sys_role_menu` VALUES (4, 1632);
INSERT INTO `sys_role_menu` VALUES (4, 1633);
INSERT INTO `sys_role_menu` VALUES (4, 1634);
INSERT INTO `sys_role_menu` VALUES (4, 1635);
INSERT INTO `sys_role_menu` VALUES (4, 1636);
INSERT INTO `sys_role_menu` VALUES (4, 1637);
INSERT INTO `sys_role_menu` VALUES (4, 1638);
INSERT INTO `sys_role_menu` VALUES (4, 1639);
INSERT INTO `sys_role_menu` VALUES (4, 1640);
INSERT INTO `sys_role_menu` VALUES (4, 1641);
INSERT INTO `sys_role_menu` VALUES (4, 1642);
INSERT INTO `sys_role_menu` VALUES (4, 1643);
INSERT INTO `sys_role_menu` VALUES (4, 1665);
INSERT INTO `sys_role_menu` VALUES (4, 1668);
INSERT INTO `sys_role_menu` VALUES (4, 1669);
INSERT INTO `sys_role_menu` VALUES (4, 1670);
INSERT INTO `sys_role_menu` VALUES (4, 1698);
INSERT INTO `sys_role_menu` VALUES (4, 1699);
INSERT INTO `sys_role_menu` VALUES (4, 1700);
INSERT INTO `sys_role_menu` VALUES (4, 1701);
INSERT INTO `sys_role_menu` VALUES (4, 1706);
INSERT INTO `sys_role_menu` VALUES (4, 1707);
INSERT INTO `sys_role_menu` VALUES (5, 103);
INSERT INTO `sys_role_menu` VALUES (5, 1017);
INSERT INTO `sys_role_menu` VALUES (5, 1018);
INSERT INTO `sys_role_menu` VALUES (5, 1019);
INSERT INTO `sys_role_menu` VALUES (5, 1020);
INSERT INTO `sys_role_menu` VALUES (5, 1061);
INSERT INTO `sys_role_menu` VALUES (5, 1062);
INSERT INTO `sys_role_menu` VALUES (5, 1063);
INSERT INTO `sys_role_menu` VALUES (5, 1064);
INSERT INTO `sys_role_menu` VALUES (5, 1065);
INSERT INTO `sys_role_menu` VALUES (5, 1066);
INSERT INTO `sys_role_menu` VALUES (5, 1067);
INSERT INTO `sys_role_menu` VALUES (5, 1068);
INSERT INTO `sys_role_menu` VALUES (5, 1069);
INSERT INTO `sys_role_menu` VALUES (5, 1070);
INSERT INTO `sys_role_menu` VALUES (5, 1071);
INSERT INTO `sys_role_menu` VALUES (5, 1072);
INSERT INTO `sys_role_menu` VALUES (5, 1073);
INSERT INTO `sys_role_menu` VALUES (5, 1074);
INSERT INTO `sys_role_menu` VALUES (5, 1075);
INSERT INTO `sys_role_menu` VALUES (5, 1076);
INSERT INTO `sys_role_menu` VALUES (5, 1077);
INSERT INTO `sys_role_menu` VALUES (5, 1078);
INSERT INTO `sys_role_menu` VALUES (5, 1079);
INSERT INTO `sys_role_menu` VALUES (5, 1080);
INSERT INTO `sys_role_menu` VALUES (5, 1081);
INSERT INTO `sys_role_menu` VALUES (5, 1082);
INSERT INTO `sys_role_menu` VALUES (5, 1083);
INSERT INTO `sys_role_menu` VALUES (5, 1084);
INSERT INTO `sys_role_menu` VALUES (5, 1085);
INSERT INTO `sys_role_menu` VALUES (5, 1086);
INSERT INTO `sys_role_menu` VALUES (5, 1087);
INSERT INTO `sys_role_menu` VALUES (5, 1088);
INSERT INTO `sys_role_menu` VALUES (5, 1089);
INSERT INTO `sys_role_menu` VALUES (5, 1090);
INSERT INTO `sys_role_menu` VALUES (5, 1091);
INSERT INTO `sys_role_menu` VALUES (5, 1092);
INSERT INTO `sys_role_menu` VALUES (5, 1093);
INSERT INTO `sys_role_menu` VALUES (5, 1094);
INSERT INTO `sys_role_menu` VALUES (5, 1095);
INSERT INTO `sys_role_menu` VALUES (5, 1096);
INSERT INTO `sys_role_menu` VALUES (5, 1097);
INSERT INTO `sys_role_menu` VALUES (5, 1098);
INSERT INTO `sys_role_menu` VALUES (5, 1099);
INSERT INTO `sys_role_menu` VALUES (5, 1100);
INSERT INTO `sys_role_menu` VALUES (5, 1101);
INSERT INTO `sys_role_menu` VALUES (5, 1102);
INSERT INTO `sys_role_menu` VALUES (5, 1103);
INSERT INTO `sys_role_menu` VALUES (5, 1104);
INSERT INTO `sys_role_menu` VALUES (5, 1105);
INSERT INTO `sys_role_menu` VALUES (5, 1106);
INSERT INTO `sys_role_menu` VALUES (5, 1107);
INSERT INTO `sys_role_menu` VALUES (5, 1108);
INSERT INTO `sys_role_menu` VALUES (5, 1109);
INSERT INTO `sys_role_menu` VALUES (5, 1110);
INSERT INTO `sys_role_menu` VALUES (5, 1111);
INSERT INTO `sys_role_menu` VALUES (5, 1112);
INSERT INTO `sys_role_menu` VALUES (5, 1113);
INSERT INTO `sys_role_menu` VALUES (5, 1114);
INSERT INTO `sys_role_menu` VALUES (5, 1115);
INSERT INTO `sys_role_menu` VALUES (5, 1116);
INSERT INTO `sys_role_menu` VALUES (5, 1117);
INSERT INTO `sys_role_menu` VALUES (5, 1118);
INSERT INTO `sys_role_menu` VALUES (5, 1119);
INSERT INTO `sys_role_menu` VALUES (5, 1120);
INSERT INTO `sys_role_menu` VALUES (5, 1121);
INSERT INTO `sys_role_menu` VALUES (5, 1122);
INSERT INTO `sys_role_menu` VALUES (5, 1123);
INSERT INTO `sys_role_menu` VALUES (5, 1124);
INSERT INTO `sys_role_menu` VALUES (5, 1125);
INSERT INTO `sys_role_menu` VALUES (5, 1126);
INSERT INTO `sys_role_menu` VALUES (5, 1127);
INSERT INTO `sys_role_menu` VALUES (5, 1130);
INSERT INTO `sys_role_menu` VALUES (5, 1132);
INSERT INTO `sys_role_menu` VALUES (5, 1133);
INSERT INTO `sys_role_menu` VALUES (5, 1134);
INSERT INTO `sys_role_menu` VALUES (5, 1135);
INSERT INTO `sys_role_menu` VALUES (5, 1136);
INSERT INTO `sys_role_menu` VALUES (5, 1137);
INSERT INTO `sys_role_menu` VALUES (5, 1138);
INSERT INTO `sys_role_menu` VALUES (5, 1139);
INSERT INTO `sys_role_menu` VALUES (5, 1140);
INSERT INTO `sys_role_menu` VALUES (5, 1141);
INSERT INTO `sys_role_menu` VALUES (5, 1142);
INSERT INTO `sys_role_menu` VALUES (5, 1143);
INSERT INTO `sys_role_menu` VALUES (5, 1144);
INSERT INTO `sys_role_menu` VALUES (5, 1145);
INSERT INTO `sys_role_menu` VALUES (5, 1146);
INSERT INTO `sys_role_menu` VALUES (5, 1147);
INSERT INTO `sys_role_menu` VALUES (5, 1148);
INSERT INTO `sys_role_menu` VALUES (5, 1149);
INSERT INTO `sys_role_menu` VALUES (5, 1150);
INSERT INTO `sys_role_menu` VALUES (5, 1151);
INSERT INTO `sys_role_menu` VALUES (5, 1152);
INSERT INTO `sys_role_menu` VALUES (5, 1153);
INSERT INTO `sys_role_menu` VALUES (5, 1154);
INSERT INTO `sys_role_menu` VALUES (5, 1155);
INSERT INTO `sys_role_menu` VALUES (5, 1156);
INSERT INTO `sys_role_menu` VALUES (5, 1193);
INSERT INTO `sys_role_menu` VALUES (5, 1194);
INSERT INTO `sys_role_menu` VALUES (5, 1195);
INSERT INTO `sys_role_menu` VALUES (5, 1196);
INSERT INTO `sys_role_menu` VALUES (5, 1197);
INSERT INTO `sys_role_menu` VALUES (5, 1198);
INSERT INTO `sys_role_menu` VALUES (5, 1199);
INSERT INTO `sys_role_menu` VALUES (5, 1200);
INSERT INTO `sys_role_menu` VALUES (5, 1201);
INSERT INTO `sys_role_menu` VALUES (5, 1202);
INSERT INTO `sys_role_menu` VALUES (5, 1203);
INSERT INTO `sys_role_menu` VALUES (5, 1204);
INSERT INTO `sys_role_menu` VALUES (5, 1205);
INSERT INTO `sys_role_menu` VALUES (5, 1206);
INSERT INTO `sys_role_menu` VALUES (5, 1207);
INSERT INTO `sys_role_menu` VALUES (5, 1208);
INSERT INTO `sys_role_menu` VALUES (5, 1209);
INSERT INTO `sys_role_menu` VALUES (5, 1210);
INSERT INTO `sys_role_menu` VALUES (5, 1211);
INSERT INTO `sys_role_menu` VALUES (5, 1212);
INSERT INTO `sys_role_menu` VALUES (5, 1213);
INSERT INTO `sys_role_menu` VALUES (5, 1214);
INSERT INTO `sys_role_menu` VALUES (5, 1215);
INSERT INTO `sys_role_menu` VALUES (5, 1216);
INSERT INTO `sys_role_menu` VALUES (5, 1217);
INSERT INTO `sys_role_menu` VALUES (5, 1218);
INSERT INTO `sys_role_menu` VALUES (5, 1219);
INSERT INTO `sys_role_menu` VALUES (5, 1220);
INSERT INTO `sys_role_menu` VALUES (5, 1221);
INSERT INTO `sys_role_menu` VALUES (5, 1222);
INSERT INTO `sys_role_menu` VALUES (5, 1223);
INSERT INTO `sys_role_menu` VALUES (5, 1224);
INSERT INTO `sys_role_menu` VALUES (5, 1225);
INSERT INTO `sys_role_menu` VALUES (5, 1226);
INSERT INTO `sys_role_menu` VALUES (5, 1227);
INSERT INTO `sys_role_menu` VALUES (5, 1228);
INSERT INTO `sys_role_menu` VALUES (5, 1229);
INSERT INTO `sys_role_menu` VALUES (5, 1230);
INSERT INTO `sys_role_menu` VALUES (5, 1231);
INSERT INTO `sys_role_menu` VALUES (5, 1232);
INSERT INTO `sys_role_menu` VALUES (5, 1233);
INSERT INTO `sys_role_menu` VALUES (5, 1234);
INSERT INTO `sys_role_menu` VALUES (5, 1235);
INSERT INTO `sys_role_menu` VALUES (5, 1305);
INSERT INTO `sys_role_menu` VALUES (5, 1306);
INSERT INTO `sys_role_menu` VALUES (5, 1307);
INSERT INTO `sys_role_menu` VALUES (5, 1314);
INSERT INTO `sys_role_menu` VALUES (5, 1315);
INSERT INTO `sys_role_menu` VALUES (5, 1316);
INSERT INTO `sys_role_menu` VALUES (5, 1317);
INSERT INTO `sys_role_menu` VALUES (5, 1318);
INSERT INTO `sys_role_menu` VALUES (5, 1319);
INSERT INTO `sys_role_menu` VALUES (5, 1320);
INSERT INTO `sys_role_menu` VALUES (5, 1321);
INSERT INTO `sys_role_menu` VALUES (5, 1322);
INSERT INTO `sys_role_menu` VALUES (5, 1323);
INSERT INTO `sys_role_menu` VALUES (5, 1324);
INSERT INTO `sys_role_menu` VALUES (5, 1325);
INSERT INTO `sys_role_menu` VALUES (5, 1326);
INSERT INTO `sys_role_menu` VALUES (5, 1327);
INSERT INTO `sys_role_menu` VALUES (5, 1328);
INSERT INTO `sys_role_menu` VALUES (5, 1329);
INSERT INTO `sys_role_menu` VALUES (5, 1330);
INSERT INTO `sys_role_menu` VALUES (5, 1331);
INSERT INTO `sys_role_menu` VALUES (5, 1332);
INSERT INTO `sys_role_menu` VALUES (5, 1333);
INSERT INTO `sys_role_menu` VALUES (5, 1334);
INSERT INTO `sys_role_menu` VALUES (5, 1335);
INSERT INTO `sys_role_menu` VALUES (5, 1336);
INSERT INTO `sys_role_menu` VALUES (5, 1337);
INSERT INTO `sys_role_menu` VALUES (5, 1338);
INSERT INTO `sys_role_menu` VALUES (5, 1339);
INSERT INTO `sys_role_menu` VALUES (5, 1340);
INSERT INTO `sys_role_menu` VALUES (5, 1341);
INSERT INTO `sys_role_menu` VALUES (5, 1342);
INSERT INTO `sys_role_menu` VALUES (5, 1343);
INSERT INTO `sys_role_menu` VALUES (5, 1344);
INSERT INTO `sys_role_menu` VALUES (5, 1345);
INSERT INTO `sys_role_menu` VALUES (5, 1346);
INSERT INTO `sys_role_menu` VALUES (5, 1348);
INSERT INTO `sys_role_menu` VALUES (5, 1350);
INSERT INTO `sys_role_menu` VALUES (5, 1368);
INSERT INTO `sys_role_menu` VALUES (5, 1369);
INSERT INTO `sys_role_menu` VALUES (5, 1370);
INSERT INTO `sys_role_menu` VALUES (5, 1373);
INSERT INTO `sys_role_menu` VALUES (5, 1374);
INSERT INTO `sys_role_menu` VALUES (5, 1375);
INSERT INTO `sys_role_menu` VALUES (5, 1376);
INSERT INTO `sys_role_menu` VALUES (5, 1377);
INSERT INTO `sys_role_menu` VALUES (5, 1378);
INSERT INTO `sys_role_menu` VALUES (5, 1379);
INSERT INTO `sys_role_menu` VALUES (5, 1380);
INSERT INTO `sys_role_menu` VALUES (5, 1381);
INSERT INTO `sys_role_menu` VALUES (5, 1382);
INSERT INTO `sys_role_menu` VALUES (5, 1383);
INSERT INTO `sys_role_menu` VALUES (5, 1384);
INSERT INTO `sys_role_menu` VALUES (5, 1385);
INSERT INTO `sys_role_menu` VALUES (5, 1386);
INSERT INTO `sys_role_menu` VALUES (5, 1387);
INSERT INTO `sys_role_menu` VALUES (5, 1388);
INSERT INTO `sys_role_menu` VALUES (5, 1389);
INSERT INTO `sys_role_menu` VALUES (5, 1390);
INSERT INTO `sys_role_menu` VALUES (5, 1391);
INSERT INTO `sys_role_menu` VALUES (5, 1392);
INSERT INTO `sys_role_menu` VALUES (5, 1393);
INSERT INTO `sys_role_menu` VALUES (5, 1394);
INSERT INTO `sys_role_menu` VALUES (5, 1395);
INSERT INTO `sys_role_menu` VALUES (5, 1396);
INSERT INTO `sys_role_menu` VALUES (5, 1397);
INSERT INTO `sys_role_menu` VALUES (5, 1398);
INSERT INTO `sys_role_menu` VALUES (5, 1399);
INSERT INTO `sys_role_menu` VALUES (5, 1400);
INSERT INTO `sys_role_menu` VALUES (5, 1401);
INSERT INTO `sys_role_menu` VALUES (5, 1402);
INSERT INTO `sys_role_menu` VALUES (5, 1403);
INSERT INTO `sys_role_menu` VALUES (5, 1404);
INSERT INTO `sys_role_menu` VALUES (5, 1405);
INSERT INTO `sys_role_menu` VALUES (5, 1406);
INSERT INTO `sys_role_menu` VALUES (5, 1407);
INSERT INTO `sys_role_menu` VALUES (5, 1408);
INSERT INTO `sys_role_menu` VALUES (5, 1409);
INSERT INTO `sys_role_menu` VALUES (5, 1410);
INSERT INTO `sys_role_menu` VALUES (5, 1411);
INSERT INTO `sys_role_menu` VALUES (5, 1412);
INSERT INTO `sys_role_menu` VALUES (5, 1413);
INSERT INTO `sys_role_menu` VALUES (5, 1414);
INSERT INTO `sys_role_menu` VALUES (5, 1415);
INSERT INTO `sys_role_menu` VALUES (5, 1416);
INSERT INTO `sys_role_menu` VALUES (5, 1417);
INSERT INTO `sys_role_menu` VALUES (5, 1418);
INSERT INTO `sys_role_menu` VALUES (5, 1419);
INSERT INTO `sys_role_menu` VALUES (5, 1420);
INSERT INTO `sys_role_menu` VALUES (5, 1421);
INSERT INTO `sys_role_menu` VALUES (5, 1422);
INSERT INTO `sys_role_menu` VALUES (5, 1423);
INSERT INTO `sys_role_menu` VALUES (5, 1424);
INSERT INTO `sys_role_menu` VALUES (5, 1425);
INSERT INTO `sys_role_menu` VALUES (5, 1426);
INSERT INTO `sys_role_menu` VALUES (5, 1427);
INSERT INTO `sys_role_menu` VALUES (5, 1428);
INSERT INTO `sys_role_menu` VALUES (5, 1429);
INSERT INTO `sys_role_menu` VALUES (5, 1430);
INSERT INTO `sys_role_menu` VALUES (5, 1431);
INSERT INTO `sys_role_menu` VALUES (5, 1432);
INSERT INTO `sys_role_menu` VALUES (5, 1433);
INSERT INTO `sys_role_menu` VALUES (5, 1434);
INSERT INTO `sys_role_menu` VALUES (5, 1435);
INSERT INTO `sys_role_menu` VALUES (5, 1436);
INSERT INTO `sys_role_menu` VALUES (5, 1437);
INSERT INTO `sys_role_menu` VALUES (5, 1438);
INSERT INTO `sys_role_menu` VALUES (5, 1439);
INSERT INTO `sys_role_menu` VALUES (5, 1440);
INSERT INTO `sys_role_menu` VALUES (5, 1441);
INSERT INTO `sys_role_menu` VALUES (5, 1442);
INSERT INTO `sys_role_menu` VALUES (5, 1443);
INSERT INTO `sys_role_menu` VALUES (5, 1444);
INSERT INTO `sys_role_menu` VALUES (5, 1445);
INSERT INTO `sys_role_menu` VALUES (5, 1446);
INSERT INTO `sys_role_menu` VALUES (5, 1447);
INSERT INTO `sys_role_menu` VALUES (5, 1448);
INSERT INTO `sys_role_menu` VALUES (5, 1449);
INSERT INTO `sys_role_menu` VALUES (5, 1450);
INSERT INTO `sys_role_menu` VALUES (5, 1451);
INSERT INTO `sys_role_menu` VALUES (5, 1452);
INSERT INTO `sys_role_menu` VALUES (5, 1453);
INSERT INTO `sys_role_menu` VALUES (5, 1454);
INSERT INTO `sys_role_menu` VALUES (5, 1455);
INSERT INTO `sys_role_menu` VALUES (5, 1462);
INSERT INTO `sys_role_menu` VALUES (5, 1463);
INSERT INTO `sys_role_menu` VALUES (5, 1464);
INSERT INTO `sys_role_menu` VALUES (5, 1465);
INSERT INTO `sys_role_menu` VALUES (5, 1466);
INSERT INTO `sys_role_menu` VALUES (5, 1467);
INSERT INTO `sys_role_menu` VALUES (5, 1474);
INSERT INTO `sys_role_menu` VALUES (5, 1475);
INSERT INTO `sys_role_menu` VALUES (5, 1476);
INSERT INTO `sys_role_menu` VALUES (5, 1477);
INSERT INTO `sys_role_menu` VALUES (5, 1478);
INSERT INTO `sys_role_menu` VALUES (5, 1479);
INSERT INTO `sys_role_menu` VALUES (5, 1480);
INSERT INTO `sys_role_menu` VALUES (5, 1481);
INSERT INTO `sys_role_menu` VALUES (5, 1482);
INSERT INTO `sys_role_menu` VALUES (5, 1483);
INSERT INTO `sys_role_menu` VALUES (5, 1484);
INSERT INTO `sys_role_menu` VALUES (5, 1485);
INSERT INTO `sys_role_menu` VALUES (5, 1486);
INSERT INTO `sys_role_menu` VALUES (5, 1487);
INSERT INTO `sys_role_menu` VALUES (5, 1488);
INSERT INTO `sys_role_menu` VALUES (5, 1489);
INSERT INTO `sys_role_menu` VALUES (5, 1490);
INSERT INTO `sys_role_menu` VALUES (5, 1491);
INSERT INTO `sys_role_menu` VALUES (5, 1492);
INSERT INTO `sys_role_menu` VALUES (5, 1493);
INSERT INTO `sys_role_menu` VALUES (5, 1494);
INSERT INTO `sys_role_menu` VALUES (5, 1495);
INSERT INTO `sys_role_menu` VALUES (5, 1496);
INSERT INTO `sys_role_menu` VALUES (5, 1497);
INSERT INTO `sys_role_menu` VALUES (5, 1528);
INSERT INTO `sys_role_menu` VALUES (5, 1529);
INSERT INTO `sys_role_menu` VALUES (5, 1530);
INSERT INTO `sys_role_menu` VALUES (5, 1531);
INSERT INTO `sys_role_menu` VALUES (5, 1532);
INSERT INTO `sys_role_menu` VALUES (5, 1533);
INSERT INTO `sys_role_menu` VALUES (5, 1534);
INSERT INTO `sys_role_menu` VALUES (5, 1549);
INSERT INTO `sys_role_menu` VALUES (5, 1550);
INSERT INTO `sys_role_menu` VALUES (5, 1551);
INSERT INTO `sys_role_menu` VALUES (5, 1552);
INSERT INTO `sys_role_menu` VALUES (5, 1553);
INSERT INTO `sys_role_menu` VALUES (5, 1554);
INSERT INTO `sys_role_menu` VALUES (5, 1555);
INSERT INTO `sys_role_menu` VALUES (5, 1556);
INSERT INTO `sys_role_menu` VALUES (5, 1557);
INSERT INTO `sys_role_menu` VALUES (5, 1558);
INSERT INTO `sys_role_menu` VALUES (5, 1559);
INSERT INTO `sys_role_menu` VALUES (5, 1560);
INSERT INTO `sys_role_menu` VALUES (5, 1561);
INSERT INTO `sys_role_menu` VALUES (5, 1562);
INSERT INTO `sys_role_menu` VALUES (5, 1563);
INSERT INTO `sys_role_menu` VALUES (5, 1590);
INSERT INTO `sys_role_menu` VALUES (5, 1591);
INSERT INTO `sys_role_menu` VALUES (5, 1592);
INSERT INTO `sys_role_menu` VALUES (5, 1593);
INSERT INTO `sys_role_menu` VALUES (5, 1594);
INSERT INTO `sys_role_menu` VALUES (5, 1595);
INSERT INTO `sys_role_menu` VALUES (5, 1596);
INSERT INTO `sys_role_menu` VALUES (5, 1597);
INSERT INTO `sys_role_menu` VALUES (5, 1598);
INSERT INTO `sys_role_menu` VALUES (5, 1599);
INSERT INTO `sys_role_menu` VALUES (5, 1600);
INSERT INTO `sys_role_menu` VALUES (5, 1601);
INSERT INTO `sys_role_menu` VALUES (5, 1602);
INSERT INTO `sys_role_menu` VALUES (5, 1603);
INSERT INTO `sys_role_menu` VALUES (5, 1604);
INSERT INTO `sys_role_menu` VALUES (5, 1605);
INSERT INTO `sys_role_menu` VALUES (5, 1606);
INSERT INTO `sys_role_menu` VALUES (5, 1607);
INSERT INTO `sys_role_menu` VALUES (5, 1608);
INSERT INTO `sys_role_menu` VALUES (5, 1609);
INSERT INTO `sys_role_menu` VALUES (5, 1610);
INSERT INTO `sys_role_menu` VALUES (5, 1611);
INSERT INTO `sys_role_menu` VALUES (5, 1612);
INSERT INTO `sys_role_menu` VALUES (5, 1613);
INSERT INTO `sys_role_menu` VALUES (5, 1614);
INSERT INTO `sys_role_menu` VALUES (5, 1615);
INSERT INTO `sys_role_menu` VALUES (5, 1616);
INSERT INTO `sys_role_menu` VALUES (5, 1617);
INSERT INTO `sys_role_menu` VALUES (5, 1618);
INSERT INTO `sys_role_menu` VALUES (5, 1619);
INSERT INTO `sys_role_menu` VALUES (5, 1620);
INSERT INTO `sys_role_menu` VALUES (5, 1621);
INSERT INTO `sys_role_menu` VALUES (5, 1622);
INSERT INTO `sys_role_menu` VALUES (5, 1623);
INSERT INTO `sys_role_menu` VALUES (5, 1624);
INSERT INTO `sys_role_menu` VALUES (5, 1625);
INSERT INTO `sys_role_menu` VALUES (5, 1626);
INSERT INTO `sys_role_menu` VALUES (5, 1627);
INSERT INTO `sys_role_menu` VALUES (5, 1628);
INSERT INTO `sys_role_menu` VALUES (5, 1629);
INSERT INTO `sys_role_menu` VALUES (5, 1630);
INSERT INTO `sys_role_menu` VALUES (5, 1631);
INSERT INTO `sys_role_menu` VALUES (5, 1632);
INSERT INTO `sys_role_menu` VALUES (5, 1633);
INSERT INTO `sys_role_menu` VALUES (5, 1634);
INSERT INTO `sys_role_menu` VALUES (5, 1635);
INSERT INTO `sys_role_menu` VALUES (5, 1636);
INSERT INTO `sys_role_menu` VALUES (5, 1637);
INSERT INTO `sys_role_menu` VALUES (5, 1638);
INSERT INTO `sys_role_menu` VALUES (5, 1639);
INSERT INTO `sys_role_menu` VALUES (5, 1640);
INSERT INTO `sys_role_menu` VALUES (5, 1641);
INSERT INTO `sys_role_menu` VALUES (5, 1642);
INSERT INTO `sys_role_menu` VALUES (5, 1643);
INSERT INTO `sys_role_menu` VALUES (5, 1665);
INSERT INTO `sys_role_menu` VALUES (5, 1668);
INSERT INTO `sys_role_menu` VALUES (5, 1669);
INSERT INTO `sys_role_menu` VALUES (5, 1670);
INSERT INTO `sys_role_menu` VALUES (5, 1698);
INSERT INTO `sys_role_menu` VALUES (5, 1699);
INSERT INTO `sys_role_menu` VALUES (5, 1700);
INSERT INTO `sys_role_menu` VALUES (5, 1701);
INSERT INTO `sys_role_menu` VALUES (5, 1702);
INSERT INTO `sys_role_menu` VALUES (5, 1703);
INSERT INTO `sys_role_menu` VALUES (5, 1706);
INSERT INTO `sys_role_menu` VALUES (5, 1707);
INSERT INTO `sys_role_menu` VALUES (5, 1729);
INSERT INTO `sys_role_menu` VALUES (5, 1730);
INSERT INTO `sys_role_menu` VALUES (5, 1732);
INSERT INTO `sys_role_menu` VALUES (5, 1733);
INSERT INTO `sys_role_menu` VALUES (5, 1734);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '管理员', '00', '15715045@qq.com', '15888888888', '0', '', '$2a$10$Z3thfVREjuwcXbx5fCVvpuEvBb1iMfToJmGA5B.xH/zjYAh.fBS3y', '0', '0', '127.0.0.1', '2023-03-03 16:22:00', 'admin', '2023-03-03 16:22:02', '', '2023-03-22 18:43:46', '管理员');
INSERT INTO `sys_user` VALUES (2, 111, 'ry', '张校长', '00', 'test@qq.com', '15666666666', '0', '', '$2a$10$Z3thfVREjuwcXbx5fCVvpuEvBb1iMfToJmGA5B.xH/zjYAh.fBS3y', '0', '0', '127.0.0.1', '2023-03-03 16:22:00', 'admin', '2023-03-03 16:22:02', 'admin', '2023-04-15 12:49:36', '测试');
INSERT INTO `sys_user` VALUES (3, 107, '2019105001', '高老师', '00', '23432@qq.com', '13343242314', '0', '', '$2a$10$SnxFB5EJBl8JhBuOicM5teLZR95fr71SR1lYgl22ZYD3bs4Wx7NUi', '0', '0', '', NULL, 'admin', '2023-03-03 16:36:21', 'admin', '2023-03-03 09:06:34', NULL);
INSERT INTO `sys_user` VALUES (4, 106, '2019105002', '宋波', '00', 'fasdf@qq.com', '18956230574', '1', '', '$2a$10$DoUaEkJ00/JfYZQoMla1bexSt58jzL/3xq8erAvbcUegH5JACZmnK', '0', '0', '', NULL, 'admin', '2023-03-03 16:42:42', 'admin', '2023-03-29 15:45:28', NULL);
INSERT INTO `sys_user` VALUES (5, -1, '201903001', '张飞', '00', '53245342@qq.com', '15623092511', '0', '', '$2a$10$LtCqPME2xJ2pc74/tFs1xudgbfsncj3EYkQYTmahuwQYiXfzPb4K6', '0', '0', '', NULL, 'admin', '2023-03-03 17:34:24', 'admin', '2023-03-03 16:19:14', NULL);
INSERT INTO `sys_user` VALUES (6, -1, '201903002', '宋江', '00', 'sdafas@qq.com', '15625556666', '0', '', '$2a$10$W/3m1ZLqnwWSOrS/nHYD6eJzvS9fHtnimcpGpH27G0bkPpEecimxy', '0', '0', '', NULL, 'admin', '2023-03-03 17:34:24', 'admin', '2023-03-03 14:41:38', NULL);
INSERT INTO `sys_user` VALUES (7, -1, '201903003', '程宇', '00', '', '', '1', '', '$2a$10$ic6NseH2uBry/U7/er7tK.a4vkl69EGQMnj9dqLI5Hv9BI5encHcq', '0', '0', '', NULL, 'admin', '2023-03-03 17:34:24', '', '2023-03-03 17:37:40', NULL);
INSERT INTO `sys_user` VALUES (8, 118, '20001', '赵女士', '00', '', '', '1', '', '$2a$10$pCh4ZTDnsRdvI0YdWMhKieaUW73QQIo6dvyyVa5ZQq/QEjKWfm30e', '0', '0', '', NULL, 'admin', '2023-03-04 11:33:22', '', '2023-03-04 11:34:16', NULL);
INSERT INTO `sys_user` VALUES (9, 117, '10002', '李工', '00', '', '', '0', '', '$2a$10$0Yx62Oqu6Y7yf0KzKENLUO80rTA44Ou6yZw8m0eHtHdgb.diqSr5O', '0', '0', '', NULL, 'admin', '2023-03-04 11:33:54', '', '2023-03-04 11:34:56', NULL);
INSERT INTO `sys_user` VALUES (12, -1, '20200001', '叶三', '00', '', '234324', '0', '', '$2a$10$/pdR3xmS7e/DV3urZAplcuJtGSG8xawLMHMxmL87edxzSqSsY9QJC', '0', '0', '', NULL, 'admin', '2023-03-04 15:00:06', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (18, -1, '202101001', '李霸1', '00', '', '5565522', '0', '', '$2a$10$IpXEhMqGp10rusGwj52BSeer14r3CZg.yFmEHPgMg/vasYdnY1WgG', '0', '0', '', NULL, 'admin', '2023-03-05 10:37:39', '', '2023-03-05 10:37:39', NULL);
INSERT INTO `sys_user` VALUES (19, -1, '202101002', '李霸2', '00', '', '', '1', '', '$2a$10$7SvPNZ61XiKt6m6U9kaz/uK1bE.hrC8FpvTkBG2QVUxVVJig0KIji', '0', '0', '', NULL, 'admin', '2023-03-05 10:37:39', '', '2023-03-05 10:37:39', NULL);
INSERT INTO `sys_user` VALUES (20, -1, '202101003', '李霸3', '00', '', '', '0', '', '$2a$10$/lVRF8vqwdMDnmRjoDglO.WyTF3KWImBGzWtt49LZoIYMh3zNrSUq', '0', '0', '', NULL, 'admin', '2023-03-05 10:37:39', '', '2023-03-05 10:37:39', NULL);
INSERT INTO `sys_user` VALUES (21, -1, '202101004', '李霸4', '00', '', '', '1', '', '$2a$10$KCF0qtXsJ4jqKXjX8D3fQespD76IPSHeTM4P79BcGuMMQd/F/JpZO', '0', '0', '', NULL, 'admin', '2023-03-05 10:37:39', '', '2023-03-05 10:37:39', NULL);
INSERT INTO `sys_user` VALUES (22, -1, '202101005', '李霸5', '00', '', '234324', '0', '', '$2a$10$hbDETiInHfRJODB/oTq21eMTYvlY92OQ8F7j13HZiUnXcsDPN.MFK', '0', '0', '', NULL, 'admin', '2023-03-05 10:37:39', '', '2023-03-05 10:37:39', NULL);
INSERT INTO `sys_user` VALUES (24, -1, '202001001', '赵云1', '00', '', '5565522', '0', '', '$2a$10$P4BWblIcu6bqpbJCUjIzXu0mwQqdxhdXodI2GOqv2I05WRl3iBIem', '0', '0', '', NULL, 'admin', '2023-03-05 11:07:59', '', '2023-03-05 11:08:07', NULL);
INSERT INTO `sys_user` VALUES (25, -1, '202001002', '赵云2', '00', '', '', '1', '', '$2a$10$BJ1jWDitlPvoEWvJRKB6c.6I6I1/g6iWXqQqZwMO.KD8hcLt2jGLK', '0', '0', '', NULL, 'admin', '2023-03-05 11:08:07', '', '2023-03-05 11:08:11', NULL);
INSERT INTO `sys_user` VALUES (26, -1, '202001003', '赵云3', '00', '', '', '0', '', '$2a$10$H0ZKGeLK88ayT3F8hGgwGOaTJ5WJvu6GFMgJS/y6If/jW..M0ZS0O', '0', '0', '', NULL, 'admin', '2023-03-05 11:08:11', '', '2023-03-05 11:08:13', NULL);
INSERT INTO `sys_user` VALUES (27, -1, '202001005', '赵云5', '00', '', '5565522', '0', '', '$2a$10$GlKWHScp1bAELBr3qEn.kOql7DqXdBMmYBwfl3KdiEw0eOlH5W3iu', '0', '0', '', NULL, 'admin', '2023-03-05 11:54:27', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (28, -1, '202001006', '赵云6', '00', '', '', '1', '', '$2a$10$3WbtbCCY0oO0UN5MH/9nEuOxhmWJ4C57brz4dGY84rro7STyYwXvi', '0', '0', '', NULL, 'admin', '2023-03-05 11:54:42', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (29, -1, '202001007', '赵云7', '00', '', '', '0', '', '$2a$10$SLn0SqdBhhVMQHblwCLsc.BjbCklxmbaN5.TQhLpFFWAVRJZBU4gS', '0', '0', '', NULL, 'admin', '2023-03-05 11:54:43', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (30, 112, '2010901001', '李一三', '00', '', '5565522', '0', '', '$2a$10$9EtK.3aHDkaJpEvojc3YN.iBNkOxAjA92YJoGZiDmXs0hKik8YtEO', '0', '0', '', NULL, 'admin', '2023-03-05 14:59:23', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (31, 112, '2023105001', 'tom', '00', '', '', '0', '', '$2a$10$I9x44mgjMRCkfLNocd3kBOghyXQ5o8MjpGBqGxaM7rX3DlYrq1xWm', '0', '0', '', NULL, 'admin', '2023-04-15 12:42:10', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (32, 112, '11111', '余文乐', '00', '', '', '0', '', '$2a$10$5b5V90Y5VwNyObqn6MRGDeHsW8vxC7MEjy0Sd2ZJ3/kooiBotMELW', '0', '0', '', NULL, 'admin', '2023-04-15 12:44:41', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (33, 112, '22222', 'AA', '00', '', '', '0', '', '$2a$10$rEf8G/S.mbYqQh3FwEkh/uZSbHrogpJ9JRgb6rgUAufw4boLsURJO', '0', '0', '', NULL, 'admin', '2023-04-15 16:08:45', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (34, 110, '3333', 'AA', '00', '', '', '1', '', '$2a$10$aJr7wnpaE..7vc10bx.3yu8TVHyxV6Qz2Neiv7UpQjoB3/mPCeMQq', '0', '0', '', NULL, 'admin', '2023-04-15 16:10:54', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (27, 4);
INSERT INTO `sys_user_post` VALUES (28, 4);
INSERT INTO `sys_user_post` VALUES (29, 4);
INSERT INTO `sys_user_post` VALUES (30, 4);
INSERT INTO `sys_user_post` VALUES (31, 4);
INSERT INTO `sys_user_post` VALUES (32, 4);
INSERT INTO `sys_user_post` VALUES (33, 4);
INSERT INTO `sys_user_post` VALUES (34, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 5);
INSERT INTO `sys_user_role` VALUES (3, 2);
INSERT INTO `sys_user_role` VALUES (3, 3);
INSERT INTO `sys_user_role` VALUES (4, 2);
INSERT INTO `sys_user_role` VALUES (4, 3);
INSERT INTO `sys_user_role` VALUES (5, 2);
INSERT INTO `sys_user_role` VALUES (5, 4);
INSERT INTO `sys_user_role` VALUES (6, 4);
INSERT INTO `sys_user_role` VALUES (12, 4);
INSERT INTO `sys_user_role` VALUES (27, 2);
INSERT INTO `sys_user_role` VALUES (27, 4);
INSERT INTO `sys_user_role` VALUES (28, 2);
INSERT INTO `sys_user_role` VALUES (28, 4);
INSERT INTO `sys_user_role` VALUES (29, 2);
INSERT INTO `sys_user_role` VALUES (29, 4);
INSERT INTO `sys_user_role` VALUES (30, 2);
INSERT INTO `sys_user_role` VALUES (30, 4);
INSERT INTO `sys_user_role` VALUES (31, 2);
INSERT INTO `sys_user_role` VALUES (31, 4);
INSERT INTO `sys_user_role` VALUES (32, 2);
INSERT INTO `sys_user_role` VALUES (32, 3);
INSERT INTO `sys_user_role` VALUES (33, 2);
INSERT INTO `sys_user_role` VALUES (33, 4);
INSERT INTO `sys_user_role` VALUES (34, 2);
INSERT INTO `sys_user_role` VALUES (34, 3);

-- ----------------------------
-- Table structure for teach_accident
-- ----------------------------
DROP TABLE IF EXISTS `teach_accident`;
CREATE TABLE `teach_accident`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `sem_id` int(11) NOT NULL COMMENT '学期',
  `teacher_id` int(11) NOT NULL COMMENT '老师',
  `course_id` int(11) NOT NULL COMMENT '课程',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级',
  `accident_date` date NOT NULL COMMENT '日期',
  `section` int(11) NOT NULL COMMENT '节次',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '事故类型',
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '事故说明',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `course`(`sem_id`, `teacher_id`, `course_id`, `class_id`, `accident_date`, `section`, `type`) USING BTREE COMMENT '事故不能重复'
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教学事故' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teach_accident
-- ----------------------------
INSERT INTO `teach_accident` VALUES (1, 1, 1, 1, 2, '2023-03-06', 1, '2', '球运');
INSERT INTO `teach_accident` VALUES (2, 1, 1, 1, 1, '2023-03-06', 1, '2', '球运');
INSERT INTO `teach_accident` VALUES (3, 1, 1, 4, 1, '2023-03-06', 1, '1', '333球运');
INSERT INTO `teach_accident` VALUES (4, 2, 8, 2, 2, '2023-03-06', 2, '3', 'sdafasd');

-- ----------------------------
-- Table structure for teach_check
-- ----------------------------
DROP TABLE IF EXISTS `teach_check`;
CREATE TABLE `teach_check`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `sem_id` int(11) NOT NULL COMMENT '学期',
  `teacher_id` int(11) NOT NULL COMMENT '老师',
  `course_id` int(11) NOT NULL COMMENT '课程',
  `class_id` int(11) NOT NULL COMMENT '班级',
  `student_id` int(11) NOT NULL COMMENT '学生',
  `check_date` date NOT NULL COMMENT '日期',
  `section` int(11) NOT NULL COMMENT '节次',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '考勤类型',
  `comment` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '考勤说明',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `course_student`(`course_id`, `student_id`, `check_date`, `section`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课堂考勤' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teach_check
-- ----------------------------
INSERT INTO `teach_check` VALUES (1, 1, 2, 3, 2, 9, '2023-03-05', 2, '2', '');
INSERT INTO `teach_check` VALUES (3, 1, 1, 3, 1, 8, '2023-03-05', 2, '2', '克格勃');
INSERT INTO `teach_check` VALUES (5, 2, 8, 3, 2, 4, '2023-03-06', 2, '2', '');
INSERT INTO `teach_check` VALUES (7, 2, 8, 3, 2, 9, '2023-03-06', 3, '2', '');
INSERT INTO `teach_check` VALUES (8, 1, 1, 4, 1, 11, '2023-03-06', 2, '1', 'ffsdaf');

-- ----------------------------
-- Table structure for teach_plan
-- ----------------------------
DROP TABLE IF EXISTS `teach_plan`;
CREATE TABLE `teach_plan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `sem_id` int(11) NOT NULL COMMENT '学期',
  `spec_id` int(11) NOT NULL COMMENT '专业',
  `course_id` int(11) NOT NULL COMMENT '课程',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级',
  `teacher_id` int(11) NOT NULL DEFAULT 0 COMMENT '教师',
  `book` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '教材分析',
  `student` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生分析',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教学目标',
  `measure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教学措施',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course`(`sem_id`, `spec_id`, `course_id`, `class_id`, `teacher_id`) USING BTREE COMMENT '教学计划不能重复'
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教学计划' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teach_plan
-- ----------------------------
INSERT INTO `teach_plan` VALUES (1, 1, 2, 2, 2, 4, 'adfsa', 'dfadsf', 'adsf', 'adsfsaf');

-- ----------------------------
-- Table structure for teach_plan_period
-- ----------------------------
DROP TABLE IF EXISTS `teach_plan_period`;
CREATE TABLE `teach_plan_period`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `plan_id` int(11) NOT NULL DEFAULT 0 COMMENT '教学计划',
  `period` int(11) NOT NULL DEFAULT 0 COMMENT '课时',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教学内容',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `period`(`plan_id`, `period`) USING BTREE COMMENT '课时不能重复'
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教学计划明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teach_plan_period
-- ----------------------------
INSERT INTO `teach_plan_period` VALUES (1, 1, 1, 'asfasdf');
INSERT INTO `teach_plan_period` VALUES (2, 1, 2, 'asdfads');
INSERT INTO `teach_plan_period` VALUES (3, 1, 3, 'fasdfa');
INSERT INTO `teach_plan_period` VALUES (4, 1, 4, 'afdasdf');
INSERT INTO `teach_plan_period` VALUES (5, 1, 5, 'adsfasd');
INSERT INTO `teach_plan_period` VALUES (6, 1, 6, 'fadsf');
INSERT INTO `teach_plan_period` VALUES (7, 1, 1, '在在');
INSERT INTO `teach_plan_period` VALUES (8, 1, 2, 'asdfads');
INSERT INTO `teach_plan_period` VALUES (9, 1, 3, '在');
INSERT INTO `teach_plan_period` VALUES (10, 1, 4, 'afdasdf');
INSERT INTO `teach_plan_period` VALUES (11, 1, 5, 'adsfasd');
INSERT INTO `teach_plan_period` VALUES (12, 1, 6, 'fadsf');
INSERT INTO `teach_plan_period` VALUES (13, 1, 8, '城');
INSERT INTO `teach_plan_period` VALUES (14, 1, 9, '夺');
INSERT INTO `teach_plan_period` VALUES (15, 1, 1, '在在');
INSERT INTO `teach_plan_period` VALUES (16, 1, 2, 'asdfads');
INSERT INTO `teach_plan_period` VALUES (17, 1, 3, '在');
INSERT INTO `teach_plan_period` VALUES (18, 1, 4, 'afdasdf');
INSERT INTO `teach_plan_period` VALUES (19, 1, 5, 'adsfasd');
INSERT INTO `teach_plan_period` VALUES (20, 1, 6, 'fadsf');
INSERT INTO `teach_plan_period` VALUES (21, 1, 7, '茜3432432');
INSERT INTO `teach_plan_period` VALUES (22, 1, 8, '城');
INSERT INTO `teach_plan_period` VALUES (23, 1, 9, '夺');

-- ----------------------------
-- Table structure for wechat_content
-- ----------------------------
DROP TABLE IF EXISTS `wechat_content`;
CREATE TABLE `wechat_content`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '内容管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wechat_content
-- ----------------------------
INSERT INTO `wechat_content` VALUES (1, '432545', '<p>454235</p><p>45</p><p>423</p><p>5</p><p>4235</p><p>435</p>', 'admin', '2023-03-06 14:01:33', 'admin', '2023-03-06 14:01:38');
INSERT INTO `wechat_content` VALUES (2, '一地', '<p>丰投入使用的</p><p>儿童微软</p><p>受的伤</p>', 'admin', '2023-03-06 14:04:07', NULL, NULL);

-- ----------------------------
-- Table structure for wechat_menu
-- ----------------------------
DROP TABLE IF EXISTS `wechat_menu`;
CREATE TABLE `wechat_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单标题',
  `pid` int(1) NULL DEFAULT 0 COMMENT '上级菜单',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单key',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单地址',
  `media_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '媒体附件',
  `app_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小程序ID',
  `page_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小程序页面路径',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wechat_menu
-- ----------------------------
INSERT INTO `wechat_menu` VALUES (1, '校园风采', 0, '9', NULL, '', NULL, NULL, NULL, '1');
INSERT INTO `wechat_menu` VALUES (2, '简介', 1, 'view', NULL, '/wechat/content/view/1', NULL, NULL, NULL, '1');
INSERT INTO `wechat_menu` VALUES (3, '招生', 0, '9', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `wechat_menu` VALUES (4, '招生简章', 3, 'view', NULL, '/wechat/content/view/2', NULL, NULL, NULL, '0');
INSERT INTO `wechat_menu` VALUES (5, '在线报名', 3, 'view', NULL, '/wechat/content/view/3', NULL, NULL, NULL, '1');
INSERT INTO `wechat_menu` VALUES (6, '掌上校园', 0, 'view', NULL, '/wechat/szxy', NULL, NULL, NULL, '1');
INSERT INTO `wechat_menu` VALUES (8, '在线缴费', 3, 'view', NULL, '/wechat/content/view/4', NULL, NULL, NULL, '1');

-- ----------------------------
-- Table structure for wechat_pay
-- ----------------------------
DROP TABLE IF EXISTS `wechat_pay`;
CREATE TABLE `wechat_pay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `user_id` int(11) NOT NULL COMMENT '用户',
  `stu_id` int(11) NOT NULL COMMENT '学生',
  `money` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '金额',
  `image_id` int(11) NULL DEFAULT NULL COMMENT '图片',
  `pay_date` date NULL DEFAULT NULL COMMENT '缴费日期',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '缴费凭证' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wechat_pay
-- ----------------------------
INSERT INTO `wechat_pay` VALUES (1, 1, 8, 3600.00, 1, '2023-03-05', '栽');
INSERT INTO `wechat_pay` VALUES (2, 1, 9, 0.00, NULL, '2023-03-05', NULL);
INSERT INTO `wechat_pay` VALUES (3, 1, 9, 3455.00, NULL, '2023-03-06', NULL);
INSERT INTO `wechat_pay` VALUES (4, 1, 10, 4535.00, NULL, '2023-03-06', NULL);
INSERT INTO `wechat_pay` VALUES (5, 5, 8, 2000.00, 6, '2023-03-06', NULL);

-- ----------------------------
-- Table structure for wechat_user
-- ----------------------------
DROP TABLE IF EXISTS `wechat_user`;
CREATE TABLE `wechat_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `user_id` int(11) NOT NULL COMMENT '用户',
  `open_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'openId',
  `union_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'unionId',
  `role_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xdata_client
-- ----------------------------
DROP TABLE IF EXISTS `xdata_client`;
CREATE TABLE `xdata_client`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用名称',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用代码',
  `secret` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用密钥',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '媒体附件',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `db_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据库类型',
  `jdbc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据连接',
  `db_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据库账号',
  `db_pass` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据库密码',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xdata_client
-- ----------------------------
INSERT INTO `xdata_client` VALUES (1, '数据备份', '1', 'db2f4bf76f21bf9f44bed10ed30a8aba', '9c0e66ab26e561c4ceff9649a8fcd19e', NULL, NULL, '1', 'jdbc:mysql://47.109.27.152:3306/java_szxy_data?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8', 'root', '', '1');
INSERT INTO `xdata_client` VALUES (2, '教务系统', '1', '12695b8513de059116db8aebf506af6f', '90ca372d19ea42ff8bfeb1d46c5ca7db', NULL, NULL, '1', 'jdbc:mysql://47.109.27.152:3306/java_szxy_data?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8', 'root', '', '1');

-- ----------------------------
-- Table structure for xdata_log
-- ----------------------------
DROP TABLE IF EXISTS `xdata_log`;
CREATE TABLE `xdata_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
  `pipe_id` int(11) NOT NULL COMMENT '管道',
  `start_time` datetime(0) NOT NULL COMMENT '开始时间',
  `end_time` datetime(0) NOT NULL COMMENT '结束时间',
  `result` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '结果',
  `rows` int(11) NULL DEFAULT NULL COMMENT '行数',
  `error` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '错误说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 955 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '传输日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xdata_log
-- ----------------------------
INSERT INTO `xdata_log` VALUES (210, 1, '2023-03-09 02:00:00', '2023-03-09 02:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (209, 1, '2023-03-09 01:50:00', '2023-03-09 01:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (208, 1, '2023-03-09 01:40:00', '2023-03-09 01:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (207, 1, '2023-03-09 01:30:00', '2023-03-09 01:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (206, 1, '2023-03-09 01:20:00', '2023-03-09 01:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (205, 1, '2023-03-09 01:10:00', '2023-03-09 01:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (204, 1, '2023-03-09 01:00:00', '2023-03-09 01:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (203, 1, '2023-03-09 00:50:00', '2023-03-09 00:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (202, 1, '2023-03-09 00:40:00', '2023-03-09 00:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (201, 1, '2023-03-09 00:30:00', '2023-03-09 00:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (200, 1, '2023-03-09 00:20:00', '2023-03-09 00:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (199, 1, '2023-03-09 00:10:00', '2023-03-09 00:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (198, 1, '2023-03-09 00:00:00', '2023-03-09 00:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (197, 1, '2023-03-08 23:50:00', '2023-03-08 23:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (196, 1, '2023-03-08 23:40:00', '2023-03-08 23:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (195, 1, '2023-03-08 23:30:00', '2023-03-08 23:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (194, 1, '2023-03-08 23:30:01', '2023-03-08 23:30:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (193, 1, '2023-03-08 23:20:00', '2023-03-08 23:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (192, 1, '2023-03-08 23:20:01', '2023-03-08 23:20:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (191, 1, '2023-03-08 23:10:01', '2023-03-08 23:10:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (190, 1, '2023-03-08 23:10:00', '2023-03-08 23:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (189, 1, '2023-03-08 23:00:01', '2023-03-08 23:00:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (188, 1, '2023-03-08 23:00:00', '2023-03-08 23:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (187, 1, '2023-03-08 22:50:00', '2023-03-08 22:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (186, 1, '2023-03-08 22:50:01', '2023-03-08 22:50:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (185, 1, '2023-03-08 22:40:00', '2023-03-08 22:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (184, 1, '2023-03-08 22:40:01', '2023-03-08 22:40:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (183, 1, '2023-03-08 22:30:00', '2023-03-08 22:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (182, 1, '2023-03-08 22:30:00', '2023-03-08 22:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (181, 1, '2023-03-08 22:20:00', '2023-03-08 22:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (180, 1, '2023-03-08 22:20:00', '2023-03-08 22:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (179, 1, '2023-03-08 22:10:00', '2023-03-08 22:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (178, 1, '2023-03-08 22:10:00', '2023-03-08 22:10:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (177, 1, '2023-03-08 22:00:00', '2023-03-08 22:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (176, 1, '2023-03-08 22:00:00', '2023-03-08 22:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (175, 1, '2023-03-08 21:50:00', '2023-03-08 21:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (174, 1, '2023-03-08 21:50:00', '2023-03-08 21:50:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (173, 1, '2023-03-08 21:40:01', '2023-03-08 21:40:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (172, 1, '2023-03-08 21:40:00', '2023-03-08 21:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (171, 1, '2023-03-08 21:30:00', '2023-03-08 21:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (170, 1, '2023-03-08 21:30:00', '2023-03-08 21:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (169, 1, '2023-03-08 21:20:00', '2023-03-08 21:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (168, 1, '2023-03-08 21:20:00', '2023-03-08 21:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (167, 1, '2023-03-08 21:10:00', '2023-03-08 21:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (166, 1, '2023-03-08 21:10:00', '2023-03-08 21:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (165, 1, '2023-03-08 21:00:00', '2023-03-08 21:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (164, 1, '2023-03-08 21:00:00', '2023-03-08 21:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (163, 1, '2023-03-08 20:50:00', '2023-03-08 20:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (162, 1, '2023-03-08 20:50:00', '2023-03-08 20:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (161, 1, '2023-03-08 20:40:01', '2023-03-08 20:40:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (160, 1, '2023-03-08 20:40:00', '2023-03-08 20:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (159, 1, '2023-03-08 20:30:01', '2023-03-08 20:30:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (158, 1, '2023-03-08 20:30:00', '2023-03-08 20:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (157, 1, '2023-03-08 20:20:00', '2023-03-08 20:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (156, 1, '2023-03-08 20:20:00', '2023-03-08 20:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (155, 1, '2023-03-08 20:10:00', '2023-03-08 20:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (154, 1, '2023-03-08 20:00:00', '2023-03-08 20:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (153, 1, '2023-03-08 19:50:00', '2023-03-08 19:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (152, 1, '2023-03-08 19:40:00', '2023-03-08 19:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (151, 1, '2023-03-08 19:30:00', '2023-03-08 19:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (150, 1, '2023-03-08 19:20:00', '2023-03-08 19:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (149, 1, '2023-03-08 19:10:00', '2023-03-08 19:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (148, 1, '2023-03-08 19:00:00', '2023-03-08 19:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (147, 1, '2023-03-08 18:50:00', '2023-03-08 18:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (146, 1, '2023-03-08 18:40:00', '2023-03-08 18:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (145, 1, '2023-03-08 18:30:00', '2023-03-08 18:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (144, 1, '2023-03-08 18:20:00', '2023-03-08 18:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (143, 1, '2023-03-08 18:10:00', '2023-03-08 18:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (142, 1, '2023-03-08 18:00:00', '2023-03-08 18:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (141, 1, '2023-03-08 17:50:00', '2023-03-08 17:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (140, 1, '2023-03-08 17:40:00', '2023-03-08 17:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (139, 1, '2023-03-08 17:30:00', '2023-03-08 17:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (138, 1, '2023-03-08 17:20:00', '2023-03-08 17:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (137, 1, '2023-03-08 17:10:00', '2023-03-08 17:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (136, 1, '2023-03-08 17:00:00', '2023-03-08 17:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (135, 1, '2023-03-08 16:50:00', '2023-03-08 16:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (134, 1, '2023-03-08 16:40:00', '2023-03-08 16:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (133, 1, '2023-03-08 16:30:00', '2023-03-08 16:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (132, 1, '2023-03-08 16:20:00', '2023-03-08 16:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (131, 1, '2023-03-08 16:10:00', '2023-03-08 16:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (130, 1, '2023-03-08 16:00:00', '2023-03-08 16:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (129, 1, '2023-03-08 16:00:00', '2023-03-08 16:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (128, 1, '2023-03-08 15:50:00', '2023-03-08 15:50:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (127, 1, '2023-03-08 15:50:00', '2023-03-08 15:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (126, 1, '2023-03-08 15:40:00', '2023-03-08 15:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (125, 1, '2023-03-08 15:40:00', '2023-03-08 15:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (1, 1, '2023-03-08 15:20:00', '2023-03-08 15:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (2, 1, '2023-03-08 15:30:00', '2023-03-08 15:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (3, 1, '2023-03-08 15:30:00', '2023-03-08 15:30:01', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (211, 1, '2023-03-09 02:10:00', '2023-03-09 02:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (212, 1, '2023-03-09 02:20:00', '2023-03-09 02:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (213, 1, '2023-03-09 02:30:00', '2023-03-09 02:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (214, 1, '2023-03-09 02:40:00', '2023-03-09 02:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (215, 1, '2023-03-09 02:50:00', '2023-03-09 02:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (216, 1, '2023-03-09 03:00:00', '2023-03-09 03:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (217, 1, '2023-03-09 03:10:00', '2023-03-09 03:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (218, 1, '2023-03-09 03:20:00', '2023-03-09 03:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (219, 1, '2023-03-09 03:30:00', '2023-03-09 03:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (220, 1, '2023-03-09 03:40:00', '2023-03-09 03:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (221, 1, '2023-03-09 03:50:00', '2023-03-09 03:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (222, 1, '2023-03-09 04:00:00', '2023-03-09 04:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (223, 1, '2023-03-09 04:10:00', '2023-03-09 04:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (224, 1, '2023-03-09 04:20:00', '2023-03-09 04:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (225, 1, '2023-03-09 04:30:00', '2023-03-09 04:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (226, 1, '2023-03-09 04:40:00', '2023-03-09 04:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (227, 1, '2023-03-09 04:50:00', '2023-03-09 04:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (228, 1, '2023-03-09 05:00:00', '2023-03-09 05:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (229, 1, '2023-03-09 05:10:00', '2023-03-09 05:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (230, 1, '2023-03-09 05:20:00', '2023-03-09 05:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (231, 1, '2023-03-09 05:30:00', '2023-03-09 05:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (232, 1, '2023-03-09 05:40:00', '2023-03-09 05:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (233, 1, '2023-03-09 05:50:00', '2023-03-09 05:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (234, 1, '2023-03-09 06:00:00', '2023-03-09 06:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (235, 1, '2023-03-09 06:10:00', '2023-03-09 06:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (236, 1, '2023-03-09 06:20:00', '2023-03-09 06:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (237, 1, '2023-03-09 06:30:00', '2023-03-09 06:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (238, 1, '2023-03-09 06:40:00', '2023-03-09 06:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (239, 1, '2023-03-09 06:50:00', '2023-03-09 06:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (240, 1, '2023-03-09 07:00:00', '2023-03-09 07:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (241, 1, '2023-03-09 07:10:00', '2023-03-09 07:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (242, 1, '2023-03-09 07:20:00', '2023-03-09 07:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (243, 1, '2023-03-09 07:30:00', '2023-03-09 07:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (244, 1, '2023-03-09 07:40:00', '2023-03-09 07:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (245, 1, '2023-03-09 07:50:00', '2023-03-09 07:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (246, 1, '2023-03-09 08:00:00', '2023-03-09 08:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (247, 1, '2023-03-09 08:10:00', '2023-03-09 08:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (248, 1, '2023-03-09 08:20:00', '2023-03-09 08:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (249, 1, '2023-03-09 08:30:00', '2023-03-09 08:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (250, 1, '2023-03-09 08:40:00', '2023-03-09 08:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (251, 1, '2023-03-09 08:50:00', '2023-03-09 08:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (252, 1, '2023-03-09 09:00:00', '2023-03-09 09:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (253, 1, '2023-03-09 09:10:00', '2023-03-09 09:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (254, 1, '2023-03-09 09:20:00', '2023-03-09 09:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (255, 1, '2023-03-09 09:30:00', '2023-03-09 09:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (256, 1, '2023-03-09 09:40:00', '2023-03-09 09:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (257, 1, '2023-03-09 09:50:00', '2023-03-09 09:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (258, 1, '2023-03-09 10:00:00', '2023-03-09 10:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (259, 1, '2023-03-09 10:10:00', '2023-03-09 10:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (260, 1, '2023-03-09 10:20:00', '2023-03-09 10:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (261, 1, '2023-03-09 10:30:00', '2023-03-09 10:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (262, 1, '2023-03-09 10:40:00', '2023-03-09 10:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (263, 1, '2023-03-09 10:50:00', '2023-03-09 10:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (264, 1, '2023-03-09 11:00:00', '2023-03-09 11:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (265, 1, '2023-03-09 11:10:00', '2023-03-09 11:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (266, 1, '2023-03-09 11:20:00', '2023-03-09 11:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (267, 1, '2023-03-09 11:30:00', '2023-03-09 11:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (268, 1, '2023-03-09 11:40:00', '2023-03-09 11:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (269, 1, '2023-03-09 11:50:00', '2023-03-09 11:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (270, 1, '2023-03-09 12:00:00', '2023-03-09 12:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (271, 1, '2023-03-09 12:10:00', '2023-03-09 12:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (272, 1, '2023-03-09 12:20:00', '2023-03-09 12:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (273, 1, '2023-03-09 12:30:00', '2023-03-09 12:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (274, 1, '2023-03-09 12:40:00', '2023-03-09 12:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (275, 1, '2023-03-09 12:50:00', '2023-03-09 12:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (276, 1, '2023-03-09 13:00:00', '2023-03-09 13:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (277, 1, '2023-03-09 13:10:00', '2023-03-09 13:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (278, 1, '2023-03-09 13:20:00', '2023-03-09 13:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (279, 1, '2023-03-09 13:30:00', '2023-03-09 13:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (280, 1, '2023-03-09 13:40:00', '2023-03-09 13:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (281, 1, '2023-03-09 13:50:00', '2023-03-09 13:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (282, 1, '2023-03-09 14:00:00', '2023-03-09 14:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (283, 1, '2023-03-09 14:10:00', '2023-03-09 14:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (284, 1, '2023-03-09 14:20:00', '2023-03-09 14:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (285, 1, '2023-03-09 14:40:00', '2023-03-09 14:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (286, 1, '2023-03-09 14:50:00', '2023-03-09 14:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (287, 1, '2023-03-09 15:00:00', '2023-03-09 15:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (288, 1, '2023-03-09 15:10:00', '2023-03-09 15:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (289, 1, '2023-03-09 15:20:00', '2023-03-09 15:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (290, 1, '2023-03-09 15:30:00', '2023-03-09 15:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (291, 1, '2023-03-09 15:40:00', '2023-03-09 15:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (292, 1, '2023-03-09 15:50:00', '2023-03-09 15:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (293, 1, '2023-03-09 16:00:00', '2023-03-09 16:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (294, 1, '2023-03-09 16:10:00', '2023-03-09 16:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (295, 1, '2023-03-09 16:20:00', '2023-03-09 16:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (296, 1, '2023-03-09 16:30:00', '2023-03-09 16:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (297, 1, '2023-03-09 16:40:00', '2023-03-09 16:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (298, 1, '2023-03-09 16:50:00', '2023-03-09 16:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (299, 1, '2023-03-09 17:00:00', '2023-03-09 17:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (300, 1, '2023-03-09 17:10:00', '2023-03-09 17:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (301, 1, '2023-03-09 17:20:00', '2023-03-09 17:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (302, 1, '2023-03-09 17:30:00', '2023-03-09 17:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (303, 1, '2023-03-09 17:40:00', '2023-03-09 17:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (304, 1, '2023-03-09 17:50:00', '2023-03-09 17:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (305, 1, '2023-03-09 18:00:00', '2023-03-09 18:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (306, 1, '2023-03-09 18:10:00', '2023-03-09 18:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (307, 1, '2023-03-09 18:20:00', '2023-03-09 18:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (308, 1, '2023-03-09 18:30:00', '2023-03-09 18:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (309, 1, '2023-03-09 18:40:00', '2023-03-09 18:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (310, 1, '2023-03-09 18:50:00', '2023-03-09 18:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (311, 1, '2023-03-09 19:00:00', '2023-03-09 19:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (312, 1, '2023-03-09 19:10:00', '2023-03-09 19:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (313, 1, '2023-03-09 19:20:00', '2023-03-09 19:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (314, 1, '2023-03-09 19:30:00', '2023-03-09 19:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (315, 1, '2023-03-09 19:40:00', '2023-03-09 19:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (316, 1, '2023-03-09 19:50:00', '2023-03-09 19:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (317, 1, '2023-03-09 20:00:00', '2023-03-09 20:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (318, 1, '2023-03-09 20:10:00', '2023-03-09 20:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (319, 1, '2023-03-09 20:20:00', '2023-03-09 20:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (320, 1, '2023-03-09 20:30:00', '2023-03-09 20:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (321, 1, '2023-03-09 20:40:00', '2023-03-09 20:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (322, 1, '2023-03-09 20:50:00', '2023-03-09 20:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (323, 1, '2023-03-09 21:00:00', '2023-03-09 21:00:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (324, 1, '2023-03-09 21:10:00', '2023-03-09 21:10:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (325, 1, '2023-03-09 21:20:00', '2023-03-09 21:20:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (326, 1, '2023-03-09 21:30:00', '2023-03-09 21:30:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (327, 1, '2023-03-09 21:40:00', '2023-03-09 21:40:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (328, 1, '2023-03-09 21:50:00', '2023-03-09 21:50:00', '1', 0, NULL);
INSERT INTO `xdata_log` VALUES (329, 1, '2023-03-09 22:00:00', '2023-03-09 22:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (330, 1, '2023-03-09 22:10:00', '2023-03-09 22:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (331, 1, '2023-03-09 22:20:00', '2023-03-09 22:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (332, 1, '2023-03-09 22:30:00', '2023-03-09 22:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (333, 1, '2023-03-09 22:40:00', '2023-03-09 22:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (334, 1, '2023-03-09 22:50:00', '2023-03-09 22:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (335, 1, '2023-03-09 23:00:00', '2023-03-09 23:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (336, 1, '2023-03-09 23:10:00', '2023-03-09 23:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (337, 1, '2023-03-09 23:20:00', '2023-03-09 23:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (338, 1, '2023-03-09 23:30:00', '2023-03-09 23:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (339, 1, '2023-03-09 23:40:00', '2023-03-09 23:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (340, 1, '2023-03-09 23:50:00', '2023-03-09 23:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (341, 1, '2023-03-10 00:00:00', '2023-03-10 00:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (342, 1, '2023-03-10 00:10:00', '2023-03-10 00:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (343, 1, '2023-03-10 00:20:00', '2023-03-10 00:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (344, 1, '2023-03-10 00:30:00', '2023-03-10 00:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (345, 1, '2023-03-10 00:40:00', '2023-03-10 00:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (346, 1, '2023-03-10 00:50:00', '2023-03-10 00:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (347, 1, '2023-03-10 01:00:00', '2023-03-10 01:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (348, 1, '2023-03-10 20:10:00', '2023-03-10 20:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (349, 1, '2023-03-10 20:20:00', '2023-03-10 20:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (350, 1, '2023-03-10 20:30:00', '2023-03-10 20:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (351, 1, '2023-03-10 20:40:00', '2023-03-10 20:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (352, 1, '2023-03-10 20:50:00', '2023-03-10 20:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (353, 1, '2023-03-10 21:00:00', '2023-03-10 21:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (354, 1, '2023-03-10 21:10:00', '2023-03-10 21:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (355, 1, '2023-03-10 21:20:00', '2023-03-10 21:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (356, 1, '2023-03-10 21:30:00', '2023-03-10 21:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (357, 1, '2023-03-10 21:40:00', '2023-03-10 21:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (358, 1, '2023-03-10 21:50:00', '2023-03-10 21:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (359, 1, '2023-03-10 22:00:00', '2023-03-10 22:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (360, 1, '2023-03-10 22:10:00', '2023-03-10 22:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (361, 1, '2023-03-10 22:20:00', '2023-03-10 22:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (362, 1, '2023-03-10 22:30:00', '2023-03-10 22:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (363, 1, '2023-03-10 22:40:00', '2023-03-10 22:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (364, 1, '2023-03-10 22:50:00', '2023-03-10 22:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (365, 1, '2023-03-10 23:00:00', '2023-03-10 23:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (366, 1, '2023-03-10 23:10:00', '2023-03-10 23:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (367, 1, '2023-03-11 14:10:00', '2023-03-11 14:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (368, 1, '2023-03-11 14:20:00', '2023-03-11 14:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (369, 1, '2023-03-11 14:30:00', '2023-03-11 14:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (370, 1, '2023-03-11 14:40:00', '2023-03-11 14:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (371, 1, '2023-03-11 14:50:00', '2023-03-11 14:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (372, 1, '2023-03-11 15:00:00', '2023-03-11 15:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (373, 1, '2023-03-11 15:10:00', '2023-03-11 15:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (374, 1, '2023-03-11 15:20:00', '2023-03-11 15:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (375, 1, '2023-03-11 15:30:00', '2023-03-11 15:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (376, 1, '2023-03-11 15:40:00', '2023-03-11 15:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (377, 1, '2023-03-11 15:50:00', '2023-03-11 15:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (378, 1, '2023-03-11 16:00:00', '2023-03-11 16:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (379, 1, '2023-03-11 16:10:00', '2023-03-11 16:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (380, 1, '2023-03-11 16:20:00', '2023-03-11 16:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (381, 1, '2023-03-11 16:30:00', '2023-03-11 16:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (382, 1, '2023-03-11 16:40:00', '2023-03-11 16:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (383, 1, '2023-03-11 16:50:00', '2023-03-11 16:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (384, 1, '2023-03-11 17:00:00', '2023-03-11 17:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (385, 1, '2023-03-11 17:10:00', '2023-03-11 17:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (386, 1, '2023-03-11 19:20:00', '2023-03-11 19:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (387, 1, '2023-03-11 19:30:00', '2023-03-11 19:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (388, 1, '2023-03-11 19:40:00', '2023-03-11 19:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (389, 1, '2023-03-11 19:50:00', '2023-03-11 19:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (390, 1, '2023-03-11 20:00:00', '2023-03-11 20:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (391, 1, '2023-03-11 20:10:00', '2023-03-11 20:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (392, 1, '2023-03-11 20:20:00', '2023-03-11 20:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (393, 1, '2023-03-11 20:30:00', '2023-03-11 20:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (394, 1, '2023-03-11 20:40:00', '2023-03-11 20:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (395, 1, '2023-03-11 20:50:00', '2023-03-11 20:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (396, 1, '2023-03-11 21:00:00', '2023-03-11 21:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (397, 1, '2023-03-11 21:10:00', '2023-03-11 21:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (398, 1, '2023-03-11 21:20:00', '2023-03-11 21:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (399, 1, '2023-03-11 21:30:00', '2023-03-11 21:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (400, 1, '2023-03-11 21:40:00', '2023-03-11 21:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (401, 1, '2023-03-11 21:50:00', '2023-03-11 21:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (402, 1, '2023-03-11 22:00:00', '2023-03-11 22:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (403, 1, '2023-03-11 22:10:00', '2023-03-11 22:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (404, 1, '2023-03-11 22:20:00', '2023-03-11 22:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (405, 1, '2023-03-19 22:30:00', '2023-03-19 22:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (406, 1, '2023-03-19 22:40:00', '2023-03-19 22:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (407, 1, '2023-03-19 22:50:00', '2023-03-19 22:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (408, 1, '2023-03-19 23:00:00', '2023-03-19 23:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (409, 1, '2023-03-19 23:10:00', '2023-03-19 23:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (410, 1, '2023-03-19 23:20:00', '2023-03-19 23:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (411, 1, '2023-03-19 23:30:00', '2023-03-19 23:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (412, 1, '2023-03-19 23:40:00', '2023-03-19 23:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (413, 1, '2023-03-19 23:50:00', '2023-03-19 23:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (414, 1, '2023-03-20 00:00:00', '2023-03-20 00:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (415, 1, '2023-03-20 00:10:00', '2023-03-20 00:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (416, 1, '2023-03-20 00:20:00', '2023-03-20 00:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (417, 1, '2023-03-20 00:30:00', '2023-03-20 00:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (418, 1, '2023-03-20 00:40:00', '2023-03-20 00:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (419, 1, '2023-03-20 00:50:00', '2023-03-20 00:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (420, 1, '2023-03-20 01:00:00', '2023-03-20 01:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (421, 1, '2023-03-20 01:10:00', '2023-03-20 01:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (422, 1, '2023-03-20 01:20:00', '2023-03-20 01:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (423, 1, '2023-03-20 01:30:00', '2023-03-20 01:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (424, 1, '2023-03-20 14:50:00', '2023-03-20 14:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (425, 1, '2023-03-20 15:00:00', '2023-03-20 15:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (426, 1, '2023-03-20 15:10:00', '2023-03-20 15:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (427, 1, '2023-03-20 15:20:00', '2023-03-20 15:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (428, 1, '2023-03-20 15:30:00', '2023-03-20 15:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (429, 1, '2023-03-20 15:40:00', '2023-03-20 15:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (430, 1, '2023-03-20 15:50:00', '2023-03-20 15:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (431, 1, '2023-03-20 16:00:00', '2023-03-20 16:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (432, 1, '2023-03-20 16:10:00', '2023-03-20 16:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (433, 1, '2023-03-20 16:20:00', '2023-03-20 16:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (434, 1, '2023-03-20 16:30:00', '2023-03-20 16:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (435, 1, '2023-03-20 16:40:00', '2023-03-20 16:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (436, 1, '2023-03-20 16:50:00', '2023-03-20 16:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (437, 1, '2023-03-20 17:00:00', '2023-03-20 17:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (438, 1, '2023-03-20 17:10:00', '2023-03-20 17:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (439, 1, '2023-03-20 17:20:00', '2023-03-20 17:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (440, 1, '2023-03-20 17:30:00', '2023-03-20 17:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (441, 1, '2023-03-20 17:40:00', '2023-03-20 17:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (442, 1, '2023-03-20 17:50:00', '2023-03-20 17:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (443, 1, '2023-03-21 20:10:00', '2023-03-21 20:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (444, 1, '2023-03-21 20:20:00', '2023-03-21 20:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (445, 1, '2023-03-21 20:30:00', '2023-03-21 20:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (446, 1, '2023-03-21 20:40:00', '2023-03-21 20:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (447, 1, '2023-03-21 20:50:00', '2023-03-21 20:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (448, 1, '2023-03-21 21:00:00', '2023-03-21 21:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (449, 1, '2023-03-21 21:10:00', '2023-03-21 21:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (450, 1, '2023-03-21 21:20:00', '2023-03-21 21:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (451, 1, '2023-03-21 21:30:00', '2023-03-21 21:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (452, 1, '2023-03-21 21:40:00', '2023-03-21 21:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (453, 1, '2023-03-21 21:50:00', '2023-03-21 21:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (454, 1, '2023-03-21 22:00:00', '2023-03-21 22:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (455, 1, '2023-03-21 22:10:00', '2023-03-21 22:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (456, 1, '2023-03-21 22:20:00', '2023-03-21 22:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (457, 1, '2023-03-21 22:30:00', '2023-03-21 22:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (458, 1, '2023-03-21 22:40:00', '2023-03-21 22:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (459, 1, '2023-03-21 22:50:00', '2023-03-21 22:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (460, 1, '2023-03-21 23:00:00', '2023-03-21 23:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (461, 1, '2023-03-21 23:10:00', '2023-03-21 23:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (462, 1, '2023-03-22 10:10:00', '2023-03-22 10:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (463, 1, '2023-03-22 10:20:00', '2023-03-22 10:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (464, 1, '2023-03-22 10:30:00', '2023-03-22 10:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (465, 1, '2023-03-22 10:40:00', '2023-03-22 10:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (466, 1, '2023-03-22 10:50:00', '2023-03-22 10:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (467, 1, '2023-03-22 11:00:00', '2023-03-22 11:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (468, 1, '2023-03-22 11:10:00', '2023-03-22 11:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (469, 1, '2023-03-22 11:20:00', '2023-03-22 11:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (470, 1, '2023-03-22 11:30:00', '2023-03-22 11:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (471, 1, '2023-03-22 11:40:00', '2023-03-22 11:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (472, 1, '2023-03-22 11:50:00', '2023-03-22 11:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (473, 1, '2023-03-22 12:00:00', '2023-03-22 12:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (474, 1, '2023-03-22 12:10:00', '2023-03-22 12:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (475, 1, '2023-03-22 12:20:00', '2023-03-22 12:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (476, 1, '2023-03-22 12:30:00', '2023-03-22 12:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (477, 1, '2023-03-22 12:40:00', '2023-03-22 12:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (478, 1, '2023-03-22 12:50:00', '2023-03-22 12:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (479, 1, '2023-03-22 13:00:00', '2023-03-22 13:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (480, 1, '2023-03-22 13:10:00', '2023-03-22 13:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (481, 1, '2023-03-22 18:40:00', '2023-03-22 18:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (482, 1, '2023-03-22 18:50:00', '2023-03-22 18:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (483, 1, '2023-03-22 19:00:00', '2023-03-22 19:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (484, 1, '2023-03-22 19:10:00', '2023-03-22 19:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (485, 1, '2023-03-22 19:20:00', '2023-03-22 19:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (486, 1, '2023-03-22 19:30:00', '2023-03-22 19:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (487, 1, '2023-03-22 19:40:00', '2023-03-22 19:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (488, 1, '2023-03-22 19:50:00', '2023-03-22 19:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (489, 1, '2023-03-22 20:00:00', '2023-03-22 20:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (490, 1, '2023-03-22 20:10:00', '2023-03-22 20:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (491, 1, '2023-03-22 20:20:00', '2023-03-22 20:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (492, 1, '2023-03-22 20:30:00', '2023-03-22 20:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (493, 1, '2023-03-22 20:40:00', '2023-03-22 20:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (494, 1, '2023-03-22 20:50:00', '2023-03-22 20:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (495, 1, '2023-03-22 21:00:00', '2023-03-22 21:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (496, 1, '2023-03-22 21:10:00', '2023-03-22 21:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (497, 1, '2023-03-22 21:20:00', '2023-03-22 21:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (498, 1, '2023-03-22 21:30:00', '2023-03-22 21:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (499, 1, '2023-03-22 21:40:00', '2023-03-22 21:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (500, 1, '2023-03-23 19:00:00', '2023-03-23 19:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (501, 1, '2023-03-23 19:10:00', '2023-03-23 19:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (502, 1, '2023-03-23 19:20:00', '2023-03-23 19:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (503, 1, '2023-03-23 19:30:00', '2023-03-23 19:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (504, 1, '2023-03-23 19:40:00', '2023-03-23 19:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (505, 1, '2023-03-23 19:50:00', '2023-03-23 19:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (506, 1, '2023-03-23 20:00:00', '2023-03-23 20:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (507, 1, '2023-03-23 20:10:00', '2023-03-23 20:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (508, 1, '2023-03-23 20:20:00', '2023-03-23 20:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (509, 1, '2023-03-23 20:30:00', '2023-03-23 20:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (510, 1, '2023-03-23 20:40:00', '2023-03-23 20:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (511, 1, '2023-03-23 20:50:00', '2023-03-23 20:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (512, 1, '2023-03-23 21:00:00', '2023-03-23 21:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (513, 1, '2023-03-23 21:10:00', '2023-03-23 21:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (514, 1, '2023-03-23 21:20:00', '2023-03-23 21:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (515, 1, '2023-03-23 21:30:00', '2023-03-23 21:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (516, 1, '2023-03-23 21:40:00', '2023-03-23 21:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (517, 1, '2023-03-23 21:50:00', '2023-03-23 21:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (518, 1, '2023-03-23 22:00:00', '2023-03-23 22:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (519, 1, '2023-03-23 22:40:00', '2023-03-23 22:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (520, 1, '2023-03-23 22:50:00', '2023-03-23 22:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (521, 1, '2023-03-23 23:00:00', '2023-03-23 23:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (522, 1, '2023-03-23 23:10:00', '2023-03-23 23:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (523, 1, '2023-03-23 23:20:00', '2023-03-23 23:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (524, 1, '2023-03-23 23:30:00', '2023-03-23 23:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (525, 1, '2023-03-23 23:40:00', '2023-03-23 23:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (526, 1, '2023-03-23 23:50:00', '2023-03-23 23:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (527, 1, '2023-03-24 00:00:00', '2023-03-24 00:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (528, 1, '2023-03-24 00:10:00', '2023-03-24 00:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (529, 1, '2023-03-24 00:20:00', '2023-03-24 00:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (530, 1, '2023-03-24 00:30:00', '2023-03-24 00:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (531, 1, '2023-03-24 00:40:00', '2023-03-24 00:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (532, 1, '2023-03-24 00:50:00', '2023-03-24 00:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (533, 1, '2023-03-24 01:00:00', '2023-03-24 01:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (534, 1, '2023-03-24 01:10:00', '2023-03-24 01:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (535, 1, '2023-03-24 01:20:00', '2023-03-24 01:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (536, 1, '2023-03-24 01:30:00', '2023-03-24 01:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (537, 1, '2023-03-24 01:40:00', '2023-03-24 01:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (538, 1, '2023-03-24 19:50:00', '2023-03-24 19:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (539, 1, '2023-03-24 20:00:00', '2023-03-24 20:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (540, 1, '2023-03-24 20:10:00', '2023-03-24 20:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (541, 1, '2023-03-24 20:20:00', '2023-03-24 20:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (542, 1, '2023-03-24 20:30:00', '2023-03-24 20:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (543, 1, '2023-03-24 20:40:00', '2023-03-24 20:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (544, 1, '2023-03-24 20:50:00', '2023-03-24 20:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (545, 1, '2023-03-24 21:00:00', '2023-03-24 21:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (546, 1, '2023-03-24 21:10:00', '2023-03-24 21:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (547, 1, '2023-03-24 21:20:00', '2023-03-24 21:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (548, 1, '2023-03-24 21:30:00', '2023-03-24 21:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (549, 1, '2023-03-24 21:40:00', '2023-03-24 21:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (550, 1, '2023-03-24 21:50:00', '2023-03-24 21:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (551, 1, '2023-03-24 22:00:00', '2023-03-24 22:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (552, 1, '2023-03-24 22:10:00', '2023-03-24 22:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (553, 1, '2023-03-24 22:20:00', '2023-03-24 22:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (554, 1, '2023-03-24 22:30:00', '2023-03-24 22:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (555, 1, '2023-03-24 22:40:00', '2023-03-24 22:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (556, 1, '2023-03-24 22:50:00', '2023-03-24 22:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (557, 1, '2023-03-25 13:50:00', '2023-03-25 13:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (558, 1, '2023-03-25 14:00:00', '2023-03-25 14:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (559, 1, '2023-03-25 14:10:00', '2023-03-25 14:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (560, 1, '2023-03-25 14:20:00', '2023-03-25 14:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (561, 1, '2023-03-25 14:30:00', '2023-03-25 14:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (562, 1, '2023-03-25 14:40:00', '2023-03-25 14:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (563, 1, '2023-03-25 14:50:00', '2023-03-25 14:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (564, 1, '2023-03-25 15:00:00', '2023-03-25 15:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (565, 1, '2023-03-25 15:10:00', '2023-03-25 15:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (566, 1, '2023-03-25 15:20:00', '2023-03-25 15:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (567, 1, '2023-03-25 15:30:00', '2023-03-25 15:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (568, 1, '2023-03-25 15:40:00', '2023-03-25 15:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (569, 1, '2023-03-25 15:50:00', '2023-03-25 15:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (570, 1, '2023-03-25 16:00:00', '2023-03-25 16:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (571, 1, '2023-03-25 16:10:00', '2023-03-25 16:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (572, 1, '2023-03-25 16:20:00', '2023-03-25 16:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (573, 1, '2023-03-25 16:30:00', '2023-03-25 16:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (574, 1, '2023-03-25 16:40:00', '2023-03-25 16:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (575, 1, '2023-03-25 16:50:00', '2023-03-25 16:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (576, 1, '2023-03-28 22:00:00', '2023-03-28 22:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (577, 1, '2023-03-28 22:10:00', '2023-03-28 22:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (578, 1, '2023-03-28 22:20:00', '2023-03-28 22:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (579, 1, '2023-03-28 22:30:00', '2023-03-28 22:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (580, 1, '2023-03-28 22:40:00', '2023-03-28 22:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (581, 1, '2023-03-28 22:50:00', '2023-03-28 22:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (582, 1, '2023-03-28 23:00:00', '2023-03-28 23:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (583, 1, '2023-03-28 23:10:00', '2023-03-28 23:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (584, 1, '2023-03-28 23:20:00', '2023-03-28 23:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (585, 1, '2023-03-28 23:30:00', '2023-03-28 23:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (586, 1, '2023-03-28 23:40:00', '2023-03-28 23:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (587, 1, '2023-03-28 23:50:00', '2023-03-28 23:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (588, 1, '2023-03-29 00:00:00', '2023-03-29 00:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (589, 1, '2023-03-29 00:10:00', '2023-03-29 00:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (590, 1, '2023-03-29 00:20:00', '2023-03-29 00:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (591, 1, '2023-03-29 00:30:00', '2023-03-29 00:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (592, 1, '2023-03-29 00:40:00', '2023-03-29 00:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (593, 1, '2023-03-29 00:50:00', '2023-03-29 00:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (594, 1, '2023-03-29 01:00:00', '2023-03-29 01:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (595, 1, '2023-03-29 09:10:00', '2023-03-29 09:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (596, 1, '2023-03-29 09:20:00', '2023-03-29 09:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (597, 1, '2023-03-29 09:30:00', '2023-03-29 09:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (598, 1, '2023-03-29 09:40:00', '2023-03-29 09:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (599, 1, '2023-03-29 09:50:00', '2023-03-29 09:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (600, 1, '2023-03-29 10:00:00', '2023-03-29 10:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (601, 1, '2023-03-29 10:10:00', '2023-03-29 10:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (602, 1, '2023-03-29 10:20:00', '2023-03-29 10:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (603, 1, '2023-03-29 10:30:00', '2023-03-29 10:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (604, 1, '2023-03-29 10:40:00', '2023-03-29 10:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (605, 1, '2023-03-29 10:50:00', '2023-03-29 10:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (606, 1, '2023-03-29 11:00:00', '2023-03-29 11:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (607, 1, '2023-03-29 11:10:00', '2023-03-29 11:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (608, 1, '2023-03-29 11:20:00', '2023-03-29 11:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (609, 1, '2023-03-29 11:30:00', '2023-03-29 11:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (610, 1, '2023-03-29 11:40:00', '2023-03-29 11:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (611, 1, '2023-03-29 11:50:00', '2023-03-29 11:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (612, 1, '2023-03-29 12:00:00', '2023-03-29 12:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (613, 1, '2023-03-29 12:10:00', '2023-03-29 12:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (614, 1, '2023-03-29 15:40:00', '2023-03-29 15:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (615, 1, '2023-03-29 15:50:00', '2023-03-29 15:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (616, 1, '2023-03-29 16:00:00', '2023-03-29 16:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (617, 1, '2023-03-29 16:10:00', '2023-03-29 16:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (618, 1, '2023-03-29 16:20:00', '2023-03-29 16:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (619, 1, '2023-03-29 16:30:00', '2023-03-29 16:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (620, 1, '2023-03-29 16:40:00', '2023-03-29 16:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (621, 1, '2023-03-29 16:50:00', '2023-03-29 16:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (622, 1, '2023-03-29 17:00:00', '2023-03-29 17:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (623, 1, '2023-03-29 17:10:00', '2023-03-29 17:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (624, 1, '2023-03-29 17:20:00', '2023-03-29 17:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (625, 1, '2023-03-29 17:30:00', '2023-03-29 17:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (626, 1, '2023-03-29 17:40:00', '2023-03-29 17:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (627, 1, '2023-03-29 17:50:00', '2023-03-29 17:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (628, 1, '2023-03-29 18:00:00', '2023-03-29 18:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (629, 1, '2023-03-29 18:10:00', '2023-03-29 18:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (630, 1, '2023-03-29 18:20:00', '2023-03-29 18:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (631, 1, '2023-03-29 18:30:00', '2023-03-29 18:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (632, 1, '2023-03-29 18:40:00', '2023-03-29 18:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (633, 1, '2023-03-30 12:50:00', '2023-03-30 12:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (634, 1, '2023-03-30 13:00:00', '2023-03-30 13:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (635, 1, '2023-03-30 13:10:00', '2023-03-30 13:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (636, 1, '2023-03-30 13:20:00', '2023-03-30 13:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (637, 1, '2023-03-30 13:30:00', '2023-03-30 13:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (638, 1, '2023-03-30 13:40:00', '2023-03-30 13:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (639, 1, '2023-03-30 13:50:00', '2023-03-30 13:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (640, 1, '2023-03-30 14:00:00', '2023-03-30 14:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (641, 1, '2023-03-30 14:10:00', '2023-03-30 14:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (642, 1, '2023-03-30 14:20:00', '2023-03-30 14:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (643, 1, '2023-03-30 14:30:00', '2023-03-30 14:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (644, 1, '2023-03-30 14:40:00', '2023-03-30 14:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (645, 1, '2023-03-30 14:50:00', '2023-03-30 14:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (646, 1, '2023-03-30 15:00:00', '2023-03-30 15:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (647, 1, '2023-03-30 15:10:00', '2023-03-30 15:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (648, 1, '2023-03-30 15:20:00', '2023-03-30 15:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (649, 1, '2023-03-30 15:30:00', '2023-03-30 15:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (650, 1, '2023-03-30 15:40:00', '2023-03-30 15:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (651, 1, '2023-03-30 15:50:00', '2023-03-30 15:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (652, 1, '2023-04-02 10:10:00', '2023-04-02 10:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (653, 1, '2023-04-02 10:20:00', '2023-04-02 10:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (654, 1, '2023-04-02 10:30:00', '2023-04-02 10:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (655, 1, '2023-04-02 10:40:00', '2023-04-02 10:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (656, 1, '2023-04-02 10:50:00', '2023-04-02 10:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (657, 1, '2023-04-02 11:00:00', '2023-04-02 11:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (658, 1, '2023-04-02 11:10:00', '2023-04-02 11:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (659, 1, '2023-04-02 11:20:00', '2023-04-02 11:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (660, 1, '2023-04-02 11:30:00', '2023-04-02 11:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (661, 1, '2023-04-02 11:40:00', '2023-04-02 11:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (662, 1, '2023-04-02 11:50:00', '2023-04-02 11:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (663, 1, '2023-04-02 12:00:00', '2023-04-02 12:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (664, 1, '2023-04-02 12:10:00', '2023-04-02 12:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (665, 1, '2023-04-02 12:20:00', '2023-04-02 12:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (666, 1, '2023-04-02 12:30:00', '2023-04-02 12:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (667, 1, '2023-04-02 12:40:00', '2023-04-02 12:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (668, 1, '2023-04-02 12:50:00', '2023-04-02 12:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (669, 1, '2023-04-02 13:00:00', '2023-04-02 13:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (670, 1, '2023-04-02 13:10:00', '2023-04-02 13:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (671, 1, '2023-04-08 17:10:00', '2023-04-08 17:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (672, 1, '2023-04-08 17:20:00', '2023-04-08 17:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (673, 1, '2023-04-08 17:30:00', '2023-04-08 17:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (674, 1, '2023-04-08 17:40:00', '2023-04-08 17:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (675, 1, '2023-04-08 17:50:00', '2023-04-08 17:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (676, 1, '2023-04-08 18:00:00', '2023-04-08 18:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (677, 1, '2023-04-08 18:10:00', '2023-04-08 18:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (678, 1, '2023-04-08 18:20:00', '2023-04-08 18:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (679, 1, '2023-04-08 18:30:00', '2023-04-08 18:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (680, 1, '2023-04-08 18:40:00', '2023-04-08 18:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (681, 1, '2023-04-08 18:50:00', '2023-04-08 18:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (682, 1, '2023-04-08 19:00:00', '2023-04-08 19:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (683, 1, '2023-04-08 19:10:00', '2023-04-08 19:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (684, 1, '2023-04-08 19:20:00', '2023-04-08 19:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (685, 1, '2023-04-08 19:30:00', '2023-04-08 19:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (686, 1, '2023-04-08 19:40:00', '2023-04-08 19:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (687, 1, '2023-04-08 19:50:00', '2023-04-08 19:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (688, 1, '2023-04-08 20:00:00', '2023-04-08 20:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (689, 1, '2023-04-08 20:10:00', '2023-04-08 20:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (690, 1, '2023-04-08 21:00:00', '2023-04-08 21:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (691, 1, '2023-04-08 21:10:00', '2023-04-08 21:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (692, 1, '2023-04-08 21:20:00', '2023-04-08 21:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (693, 1, '2023-04-08 21:30:00', '2023-04-08 21:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (694, 1, '2023-04-08 21:40:00', '2023-04-08 21:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (695, 1, '2023-04-08 21:50:00', '2023-04-08 21:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (696, 1, '2023-04-08 22:00:00', '2023-04-08 22:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (697, 1, '2023-04-08 22:10:00', '2023-04-08 22:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (698, 1, '2023-04-08 22:20:00', '2023-04-08 22:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (699, 1, '2023-04-08 22:30:00', '2023-04-08 22:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (700, 1, '2023-04-08 22:40:00', '2023-04-08 22:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (701, 1, '2023-04-08 22:50:00', '2023-04-08 22:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (702, 1, '2023-04-08 23:00:00', '2023-04-08 23:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (703, 1, '2023-04-08 23:10:00', '2023-04-08 23:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (704, 1, '2023-04-08 23:20:00', '2023-04-08 23:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (705, 1, '2023-04-08 23:30:00', '2023-04-08 23:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (706, 1, '2023-04-08 23:40:00', '2023-04-08 23:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (707, 1, '2023-04-08 23:50:00', '2023-04-08 23:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (708, 1, '2023-04-09 00:00:00', '2023-04-09 00:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (709, 1, '2023-04-09 22:50:00', '2023-04-09 22:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (710, 1, '2023-04-09 23:00:00', '2023-04-09 23:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (711, 1, '2023-04-09 23:10:00', '2023-04-09 23:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (712, 1, '2023-04-09 23:20:00', '2023-04-09 23:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (713, 1, '2023-04-09 23:30:00', '2023-04-09 23:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (714, 1, '2023-04-09 23:40:00', '2023-04-09 23:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (715, 1, '2023-04-09 23:50:00', '2023-04-09 23:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (716, 1, '2023-04-10 00:00:00', '2023-04-10 00:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (717, 1, '2023-04-10 00:10:00', '2023-04-10 00:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (718, 1, '2023-04-10 00:20:00', '2023-04-10 00:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (719, 1, '2023-04-10 00:30:00', '2023-04-10 00:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (720, 1, '2023-04-10 00:40:00', '2023-04-10 00:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (721, 1, '2023-04-10 00:50:00', '2023-04-10 00:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (722, 1, '2023-04-10 01:00:00', '2023-04-10 01:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (723, 1, '2023-04-10 01:10:00', '2023-04-10 01:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (724, 1, '2023-04-10 01:20:00', '2023-04-10 01:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (725, 1, '2023-04-10 01:30:00', '2023-04-10 01:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (726, 1, '2023-04-10 01:40:00', '2023-04-10 01:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (727, 1, '2023-04-10 01:50:00', '2023-04-10 01:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (728, 1, '2023-04-11 10:50:00', '2023-04-11 10:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (729, 1, '2023-04-11 11:00:00', '2023-04-11 11:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (730, 1, '2023-04-11 11:10:00', '2023-04-11 11:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (731, 1, '2023-04-11 11:20:00', '2023-04-11 11:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (732, 1, '2023-04-11 11:30:00', '2023-04-11 11:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (733, 1, '2023-04-11 11:40:00', '2023-04-11 11:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (734, 1, '2023-04-11 11:50:00', '2023-04-11 11:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (735, 1, '2023-04-11 12:00:00', '2023-04-11 12:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (736, 1, '2023-04-11 12:10:00', '2023-04-11 12:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (737, 1, '2023-04-11 12:20:00', '2023-04-11 12:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (738, 1, '2023-04-11 12:30:00', '2023-04-11 12:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (739, 1, '2023-04-11 12:40:00', '2023-04-11 12:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (740, 1, '2023-04-11 12:50:00', '2023-04-11 12:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (741, 1, '2023-04-11 13:00:00', '2023-04-11 13:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (742, 1, '2023-04-11 13:10:00', '2023-04-11 13:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (743, 1, '2023-04-11 13:20:00', '2023-04-11 13:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (744, 1, '2023-04-11 13:30:00', '2023-04-11 13:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (745, 1, '2023-04-11 13:40:00', '2023-04-11 13:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (746, 1, '2023-04-11 13:50:00', '2023-04-11 13:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (747, 1, '2023-04-13 14:30:00', '2023-04-13 14:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (748, 1, '2023-04-13 14:40:00', '2023-04-13 14:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (749, 1, '2023-04-13 14:50:00', '2023-04-13 14:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (750, 1, '2023-04-13 15:00:00', '2023-04-13 15:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (751, 1, '2023-04-13 15:10:00', '2023-04-13 15:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (752, 1, '2023-04-13 15:20:00', '2023-04-13 15:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (753, 1, '2023-04-13 15:30:00', '2023-04-13 15:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (754, 1, '2023-04-13 15:40:00', '2023-04-13 15:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (755, 1, '2023-04-13 15:50:00', '2023-04-13 15:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (756, 1, '2023-04-13 16:00:00', '2023-04-13 16:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (757, 1, '2023-04-13 16:10:00', '2023-04-13 16:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (758, 1, '2023-04-13 16:20:00', '2023-04-13 16:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (759, 1, '2023-04-13 16:30:00', '2023-04-13 16:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (760, 1, '2023-04-13 16:40:00', '2023-04-13 16:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (761, 1, '2023-04-13 16:50:00', '2023-04-13 16:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (762, 1, '2023-04-13 17:00:00', '2023-04-13 17:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (763, 1, '2023-04-13 17:10:00', '2023-04-13 17:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (764, 1, '2023-04-13 17:20:00', '2023-04-13 17:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (765, 1, '2023-04-13 17:30:00', '2023-04-13 17:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (766, 1, '2023-04-13 17:50:00', '2023-04-13 17:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (767, 1, '2023-04-13 18:00:00', '2023-04-13 18:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (768, 1, '2023-04-13 18:10:00', '2023-04-13 18:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (769, 1, '2023-04-13 18:20:00', '2023-04-13 18:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (770, 1, '2023-04-13 18:30:00', '2023-04-13 18:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (771, 1, '2023-04-13 18:40:00', '2023-04-13 18:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (772, 1, '2023-04-13 18:50:00', '2023-04-13 18:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (773, 1, '2023-04-13 19:00:00', '2023-04-13 19:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (774, 1, '2023-04-13 19:10:00', '2023-04-13 19:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (775, 1, '2023-04-13 19:20:00', '2023-04-13 19:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (776, 1, '2023-04-13 19:30:00', '2023-04-13 19:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (777, 1, '2023-04-13 19:40:00', '2023-04-13 19:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (778, 1, '2023-04-13 19:50:00', '2023-04-13 19:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (779, 1, '2023-04-13 20:00:00', '2023-04-13 20:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (780, 1, '2023-04-13 20:10:00', '2023-04-13 20:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (781, 1, '2023-04-13 20:20:00', '2023-04-13 20:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (782, 1, '2023-04-13 20:30:00', '2023-04-13 20:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (783, 1, '2023-04-13 20:40:00', '2023-04-13 20:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (784, 1, '2023-04-13 20:50:00', '2023-04-13 20:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (785, 1, '2023-04-13 22:10:00', '2023-04-13 22:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (786, 1, '2023-04-13 22:20:00', '2023-04-13 22:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (787, 1, '2023-04-13 22:30:00', '2023-04-13 22:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (788, 1, '2023-04-13 22:40:00', '2023-04-13 22:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (789, 1, '2023-04-13 22:50:00', '2023-04-13 22:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (790, 1, '2023-04-13 23:00:00', '2023-04-13 23:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (791, 1, '2023-04-13 23:10:00', '2023-04-13 23:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (792, 1, '2023-04-13 23:20:00', '2023-04-13 23:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (793, 1, '2023-04-13 23:30:00', '2023-04-13 23:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (794, 1, '2023-04-13 23:40:00', '2023-04-13 23:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (795, 1, '2023-04-13 23:50:00', '2023-04-13 23:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (796, 1, '2023-04-14 00:00:00', '2023-04-14 00:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (797, 1, '2023-04-14 00:10:00', '2023-04-14 00:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (798, 1, '2023-04-14 00:20:00', '2023-04-14 00:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (799, 1, '2023-04-14 00:30:00', '2023-04-14 00:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (800, 1, '2023-04-14 00:40:00', '2023-04-14 00:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (801, 1, '2023-04-14 00:50:00', '2023-04-14 00:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (802, 1, '2023-04-14 01:00:00', '2023-04-14 01:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (803, 1, '2023-04-14 01:10:00', '2023-04-14 01:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (804, 1, '2023-04-14 13:40:00', '2023-04-14 13:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (805, 1, '2023-04-14 13:50:00', '2023-04-14 13:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (806, 1, '2023-04-14 14:00:00', '2023-04-14 14:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (807, 1, '2023-04-14 14:10:00', '2023-04-14 14:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (808, 1, '2023-04-14 14:20:00', '2023-04-14 14:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (809, 1, '2023-04-14 14:30:00', '2023-04-14 14:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (810, 1, '2023-04-14 14:40:00', '2023-04-14 14:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (811, 1, '2023-04-14 14:50:00', '2023-04-14 14:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (812, 1, '2023-04-14 15:00:00', '2023-04-14 15:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (813, 1, '2023-04-14 15:10:00', '2023-04-14 15:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (814, 1, '2023-04-14 15:20:00', '2023-04-14 15:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (815, 1, '2023-04-14 15:30:00', '2023-04-14 15:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (816, 1, '2023-04-14 15:40:00', '2023-04-14 15:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (817, 1, '2023-04-14 15:50:00', '2023-04-14 15:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (818, 1, '2023-04-14 16:00:00', '2023-04-14 16:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (819, 1, '2023-04-14 16:10:00', '2023-04-14 16:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (820, 1, '2023-04-14 16:20:00', '2023-04-14 16:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (821, 1, '2023-04-14 16:30:00', '2023-04-14 16:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (822, 1, '2023-04-14 16:40:00', '2023-04-14 16:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (823, 1, '2023-04-14 20:00:00', '2023-04-14 20:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (824, 1, '2023-04-14 20:10:00', '2023-04-14 20:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (825, 1, '2023-04-14 20:20:00', '2023-04-14 20:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (826, 1, '2023-04-14 20:30:00', '2023-04-14 20:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (827, 1, '2023-04-14 20:40:00', '2023-04-14 20:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (828, 1, '2023-04-14 20:50:00', '2023-04-14 20:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (829, 1, '2023-04-14 21:00:00', '2023-04-14 21:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (830, 1, '2023-04-14 21:10:00', '2023-04-14 21:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (831, 1, '2023-04-14 21:20:00', '2023-04-14 21:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (832, 1, '2023-04-14 21:30:00', '2023-04-14 21:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (833, 1, '2023-04-14 21:40:00', '2023-04-14 21:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (834, 1, '2023-04-14 21:50:00', '2023-04-14 21:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (835, 1, '2023-04-14 22:00:00', '2023-04-14 22:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (836, 1, '2023-04-14 22:10:00', '2023-04-14 22:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (837, 1, '2023-04-14 22:20:00', '2023-04-14 22:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (838, 1, '2023-04-14 22:30:00', '2023-04-14 22:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (839, 1, '2023-04-14 22:40:00', '2023-04-14 22:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (840, 1, '2023-04-14 22:50:00', '2023-04-14 22:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (841, 1, '2023-04-14 23:00:00', '2023-04-14 23:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (842, 1, '2023-04-15 01:20:00', '2023-04-15 01:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (843, 1, '2023-04-15 01:30:00', '2023-04-15 01:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (844, 1, '2023-04-15 01:40:00', '2023-04-15 01:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (845, 1, '2023-04-15 01:50:00', '2023-04-15 01:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (846, 1, '2023-04-15 02:00:00', '2023-04-15 02:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (847, 1, '2023-04-15 02:10:00', '2023-04-15 02:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (848, 1, '2023-04-15 02:20:00', '2023-04-15 02:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (849, 1, '2023-04-15 02:30:00', '2023-04-15 02:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (850, 1, '2023-04-15 02:40:00', '2023-04-15 02:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (851, 1, '2023-04-15 02:50:00', '2023-04-15 02:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (852, 1, '2023-04-15 03:00:00', '2023-04-15 03:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (853, 1, '2023-04-15 03:10:00', '2023-04-15 03:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (854, 1, '2023-04-15 03:20:00', '2023-04-15 03:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (855, 1, '2023-04-15 03:30:00', '2023-04-15 03:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (856, 1, '2023-04-15 03:40:00', '2023-04-15 03:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (857, 1, '2023-04-15 03:50:00', '2023-04-15 03:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (858, 1, '2023-04-15 04:00:00', '2023-04-15 04:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (859, 1, '2023-04-15 04:10:00', '2023-04-15 04:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (860, 1, '2023-04-15 04:20:00', '2023-04-15 04:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (861, 1, '2023-04-15 10:10:00', '2023-04-15 10:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (862, 1, '2023-04-15 10:20:00', '2023-04-15 10:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (863, 1, '2023-04-15 10:30:00', '2023-04-15 10:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (864, 1, '2023-04-15 10:40:00', '2023-04-15 10:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (865, 1, '2023-04-15 10:50:00', '2023-04-15 10:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (866, 1, '2023-04-15 11:00:00', '2023-04-15 11:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (867, 1, '2023-04-15 11:10:00', '2023-04-15 11:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (868, 1, '2023-04-15 11:20:00', '2023-04-15 11:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (869, 1, '2023-04-15 11:30:00', '2023-04-15 11:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (870, 1, '2023-04-15 11:40:00', '2023-04-15 11:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (871, 1, '2023-04-15 11:50:00', '2023-04-15 11:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (872, 1, '2023-04-15 12:00:00', '2023-04-15 12:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (873, 1, '2023-04-15 12:10:00', '2023-04-15 12:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (874, 1, '2023-04-15 12:20:00', '2023-04-15 12:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (875, 1, '2023-04-15 12:30:00', '2023-04-15 12:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (876, 1, '2023-04-15 12:40:00', '2023-04-15 12:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (877, 1, '2023-04-15 12:50:00', '2023-04-15 12:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (878, 1, '2023-04-15 13:00:00', '2023-04-15 13:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (879, 1, '2023-04-15 13:10:00', '2023-04-15 13:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (880, 1, '2023-04-15 13:30:00', '2023-04-15 13:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (881, 1, '2023-04-15 13:40:00', '2023-04-15 13:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (882, 1, '2023-04-15 13:50:00', '2023-04-15 13:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (883, 1, '2023-04-15 14:00:00', '2023-04-15 14:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (884, 1, '2023-04-15 14:10:00', '2023-04-15 14:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (885, 1, '2023-04-15 14:20:00', '2023-04-15 14:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (886, 1, '2023-04-15 14:30:00', '2023-04-15 14:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (887, 1, '2023-04-15 14:40:00', '2023-04-15 14:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (888, 1, '2023-04-15 14:50:00', '2023-04-15 14:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (889, 1, '2023-04-15 15:00:00', '2023-04-15 15:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (890, 1, '2023-04-15 15:10:00', '2023-04-15 15:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (891, 1, '2023-04-15 15:20:00', '2023-04-15 15:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (892, 1, '2023-04-15 15:30:00', '2023-04-15 15:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (893, 1, '2023-04-15 15:40:00', '2023-04-15 15:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (894, 1, '2023-04-15 15:50:00', '2023-04-15 15:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (895, 1, '2023-04-15 16:00:00', '2023-04-15 16:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (896, 1, '2023-04-15 16:10:00', '2023-04-15 16:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (897, 1, '2023-04-15 16:20:00', '2023-04-15 16:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (898, 1, '2023-04-15 16:30:00', '2023-04-15 16:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (899, 1, '2023-04-15 16:40:00', '2023-04-15 16:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (900, 1, '2023-04-15 16:50:00', '2023-04-15 16:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (901, 1, '2023-04-15 17:00:00', '2023-04-15 17:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (902, 1, '2023-04-15 17:10:00', '2023-04-15 17:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (903, 1, '2023-04-15 17:20:00', '2023-04-15 17:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (904, 1, '2023-04-15 17:30:00', '2023-04-15 17:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (905, 1, '2023-04-15 17:40:00', '2023-04-15 17:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (906, 1, '2023-04-15 17:50:00', '2023-04-15 17:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (907, 1, '2023-04-15 18:00:00', '2023-04-15 18:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (908, 1, '2023-04-15 18:10:00', '2023-04-15 18:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (909, 1, '2023-04-15 18:20:00', '2023-04-15 18:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (910, 1, '2023-04-15 18:30:00', '2023-04-15 18:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (911, 1, '2023-04-15 18:40:00', '2023-04-15 18:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (912, 1, '2023-04-15 18:50:00', '2023-04-15 18:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (913, 1, '2023-04-15 19:00:00', '2023-04-15 19:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (914, 1, '2023-04-15 19:10:00', '2023-04-15 19:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (915, 1, '2023-04-21 23:20:00', '2023-04-21 23:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (916, 1, '2023-04-21 23:30:00', '2023-04-21 23:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (917, 1, '2023-04-21 23:40:00', '2023-04-21 23:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (918, 1, '2023-04-21 23:50:00', '2023-04-21 23:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (919, 1, '2023-04-22 00:00:00', '2023-04-22 00:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (920, 1, '2023-04-22 00:10:00', '2023-04-22 00:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (921, 1, '2023-04-22 00:20:00', '2023-04-22 00:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (922, 1, '2023-04-22 00:30:00', '2023-04-22 00:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (923, 1, '2023-04-22 00:40:00', '2023-04-22 00:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (924, 1, '2023-04-22 00:50:00', '2023-04-22 00:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (925, 1, '2023-04-22 01:00:00', '2023-04-22 01:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (926, 1, '2023-04-22 01:10:00', '2023-04-22 01:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (927, 1, '2023-04-22 01:20:00', '2023-04-22 01:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (928, 1, '2023-04-22 01:30:00', '2023-04-22 01:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (929, 1, '2023-04-22 01:40:00', '2023-04-22 01:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (930, 1, '2023-04-22 01:50:00', '2023-04-22 01:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (931, 1, '2023-04-22 02:00:00', '2023-04-22 02:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (932, 1, '2023-04-22 02:10:00', '2023-04-22 02:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (933, 1, '2023-04-22 02:20:00', '2023-04-22 02:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (934, 1, '2023-04-23 11:50:00', '2023-04-23 11:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (935, 1, '2023-04-23 12:00:00', '2023-04-23 12:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (936, 1, '2023-04-23 12:10:00', '2023-04-23 12:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (937, 1, '2023-04-23 12:20:00', '2023-04-23 12:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (938, 1, '2023-04-23 12:30:00', '2023-04-23 12:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (939, 1, '2023-04-23 12:40:00', '2023-04-23 12:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (940, 1, '2023-04-23 12:50:00', '2023-04-23 12:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (941, 1, '2023-04-23 13:00:00', '2023-04-23 13:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (942, 1, '2023-04-23 13:10:00', '2023-04-23 13:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (943, 1, '2023-04-23 13:20:00', '2023-04-23 13:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (944, 1, '2023-04-23 13:30:00', '2023-04-23 13:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (945, 1, '2023-04-23 13:40:00', '2023-04-23 13:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (946, 1, '2023-04-23 13:50:00', '2023-04-23 13:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (947, 1, '2023-04-23 14:00:00', '2023-04-23 14:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (948, 1, '2023-04-23 14:10:00', '2023-04-23 14:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (949, 1, '2023-04-23 14:20:00', '2023-04-23 14:20:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (950, 1, '2023-04-23 14:30:00', '2023-04-23 14:30:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (951, 1, '2023-04-23 14:40:00', '2023-04-23 14:40:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (952, 1, '2023-04-23 14:50:00', '2023-04-23 14:50:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (953, 1, '2023-04-26 13:00:00', '2023-04-26 13:00:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');
INSERT INTO `xdata_log` VALUES (954, 1, '2023-04-26 13:10:00', '2023-04-26 13:10:00', '0', 0, 'Table \'java_szxy_data.base_specialty\' doesn\'t exist');

-- ----------------------------
-- Table structure for xdata_model
-- ----------------------------
DROP TABLE IF EXISTS `xdata_model`;
CREATE TABLE `xdata_model`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模型名称',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `tables` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据表',
  `list_sort` int(11) NULL DEFAULT 9 COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xdata_model
-- ----------------------------
INSERT INTO `xdata_model` VALUES (1, '专业信息', '1', 'base_specialty', 1, '1');

-- ----------------------------
-- Table structure for xdata_pipe
-- ----------------------------
DROP TABLE IF EXISTS `xdata_pipe`;
CREATE TABLE `xdata_pipe`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `client_id` int(11) NOT NULL COMMENT '应用',
  `model_id` int(11) NOT NULL COMMENT '模型名称',
  `mode` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限',
  `read_sql` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '读取操作',
  `insert_sql` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '新增操作',
  `update_sql` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '更新操作',
  `del_sql` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除操作',
  `exist_sql` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '查询操作',
  `last_time` datetime(0) NULL DEFAULT NULL COMMENT '上次同步时间',
  `last_result` int(11) NULL DEFAULT NULL COMMENT '上次同步结果',
  `list_sort` int(11) NULL DEFAULT 9 COMMENT '优先级',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通道' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xdata_pipe
-- ----------------------------
INSERT INTO `xdata_pipe` VALUES (1, '1', 1, 1, 'r', 'SELECT id, dept_id, code, title, period, start_date, end_date, master_user, list_sort, status, is_enroll, create_by, create_time, update_by, update_time FROM base_specialty where update_time > #{_last} limit #{_offset} , #{_rows};', 'INSERT INTO base_specialty( id, dept_id, code, title, period, start_date, end_date, master_user, list_sort, status, is_enroll, create_by, create_time, update_by, update_time ) VALUES ( NULL, #{dept_id}, #{code}, #{title}, #{period}, #{start_date}, #{end_date}, #{master_user}, #{list_sort}, #{status}, #{is_enroll}, #{create_by}, #{create_time}, #{update_by}, #{update_time} );', 'UPDATE base_specialty SET dept_id =  #{dept_id}, code =  #{code}, title =  #{title}, period =  #{period}, start_date =  #{start_date}, end_date =  #{end_date}, master_user =  #{master_user}, list_sort =  #{list_sort}, status =  #{status}, is_enroll =  #{is_enroll}, create_by =  #{create_by}, create_time =  #{create_time}, update_by =  #{update_by}, update_time =  #{update_time} WHERE id = #{id};', NULL, 'SELECT * FROM base_specialty WHERE id = #{id} LIMIT 1', '2023-03-06 11:31:00', 0, 1, '1');
INSERT INTO `xdata_pipe` VALUES (2, '2', 2, 1, 'w', 'SELECT id, dept_id, code, title, period, start_date, end_date, master_user, list_sort, status, is_enroll, create_by, create_time, update_by, update_time FROM base_specialty where update_time > #{_last} limit #{_offset} , #{_rows};', 'INSERT INTO base_specialty( id, dept_id, code, title, period, start_date, end_date, master_user, list_sort, status, is_enroll, create_by, create_time, update_by, update_time ) VALUES ( NULL, #{dept_id}, #{code}, #{title}, #{period}, #{start_date}, #{end_date}, #{master_user}, #{list_sort}, #{status}, #{is_enroll}, #{create_by}, #{create_time}, #{update_by}, #{update_time} );', 'UPDATE base_specialty SET dept_id =  #{dept_id}, code =  #{code}, title =  #{title}, period =  #{period}, start_date =  #{start_date}, end_date =  #{end_date}, master_user =  #{master_user}, list_sort =  #{list_sort}, status =  #{status}, is_enroll =  #{is_enroll}, create_by =  #{create_by}, create_time =  #{create_time}, update_by =  #{update_by}, update_time =  #{update_time} WHERE code = #{code};', NULL, 'SELECT * FROM base_specialty WHERE code = #{code}  LIMIT 1', '2023-03-06 09:05:46', 3, 1, '0');

-- ----------------------------
-- Table structure for yun_files
-- ----------------------------
DROP TABLE IF EXISTS `yun_files`;
CREATE TABLE `yun_files`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `folder_id` int(11) NULL DEFAULT 0 COMMENT '目录',
  `file_id` int(11) NOT NULL COMMENT '文件',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `is_public` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否共享',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '云盘文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yun_files
-- ----------------------------
INSERT INTO `yun_files` VALUES (5, 0, 10, '微信图片_20201128210814.jpg', '2', 'N', 'admin', '2023-03-06 14:45:11', '', NULL);
INSERT INTO `yun_files` VALUES (6, 5, 13, '16121474130256962.mp4', '3', 'N', 'admin', '2023-03-06 14:45:19', '', NULL);
INSERT INTO `yun_files` VALUES (7, 0, 11, 'Web3.2_控件开发包编程指南.pdf', '5', 'Y', 'admin', '2023-03-06 14:45:59', 'admin', '2023-03-06 15:48:43');
INSERT INTO `yun_files` VALUES (8, 0, 10, '微信图片_20201128210814.jpg', '2', 'N', 'admin', '2023-03-06 15:05:16', '', NULL);
INSERT INTO `yun_files` VALUES (9, 0, 15, '消防无线局域智慧消防系统 (1).jpg', '2', 'N', 'admin', '2023-03-06 15:33:51', '', NULL);
INSERT INTO `yun_files` VALUES (10, 8, 14, '“双随机、一公开”消防监督抽查实施细则（试行） (1).doc', '1', 'N', 'admin', '2023-03-06 15:35:47', '', NULL);
INSERT INTO `yun_files` VALUES (11, 8, 12, '爱尚酒店.pdf', '1', 'N', 'admin', '2023-03-06 15:37:39', '', NULL);

-- ----------------------------
-- Table structure for yun_folder
-- ----------------------------
DROP TABLE IF EXISTS `yun_folder`;
CREATE TABLE `yun_folder`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键ID',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `pid` int(11) NULL DEFAULT 0 COMMENT '上级',
  `list_sort` int(11) NULL DEFAULT 9 COMMENT '排序',
  `is_public` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否公开',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '云盘目录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yun_folder
-- ----------------------------
INSERT INTO `yun_folder` VALUES (8, '目录1', 0, 9, 'N', 'admin', '2023-03-06 15:33:31', 'admin', '2023-03-06 15:47:42');

SET FOREIGN_KEY_CHECKS = 1;
