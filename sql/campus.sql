/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80018 (8.0.18)
 Source Host           : localhost:3306
 Source Schema         : campus

 Target Server Type    : MySQL
 Target Server Version : 80018 (8.0.18)
 File Encoding         : 65001

 Date: 10/09/2024 23:22:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_grade
-- ----------------------------
DROP TABLE IF EXISTS `base_grade`;
CREATE TABLE `base_grade`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `grade_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '年级名称',
  `grade_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '年级代码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '年级' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_grade
-- ----------------------------
INSERT INTO `base_grade` VALUES (1, '2020', '2020级');
INSERT INTO `base_grade` VALUES (2, '2021', '2021级');
INSERT INTO `base_grade` VALUES (3, '2022', '2022级');
INSERT INTO `base_grade` VALUES (4, '2023', '2023级');
INSERT INTO `base_grade` VALUES (5, '2024', '2024级');
INSERT INTO `base_grade` VALUES (6, '2019', '2019级');

-- ----------------------------
-- Table structure for base_student
-- ----------------------------
DROP TABLE IF EXISTS `base_student`;
CREATE TABLE `base_student`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '姓名',
  `student_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '学号',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '学生' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_student
-- ----------------------------
INSERT INTO `base_student` VALUES (1, '川川', '20240001', 0);
INSERT INTO `base_student` VALUES (2, '李清清', '20240002', 1);

-- ----------------------------
-- Table structure for base_student_class
-- ----------------------------
DROP TABLE IF EXISTS `base_student_class`;
CREATE TABLE `base_student_class`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '班级编号',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '班级名称',
  `grade_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '年级编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '班级' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_student_class
-- ----------------------------
INSERT INTO `base_student_class` VALUES (1, '202401', '一年级一班', '2024');
INSERT INTO `base_student_class` VALUES (2, '202402', '一年级二班', '2024');

-- ----------------------------
-- Table structure for base_teacher
-- ----------------------------
DROP TABLE IF EXISTS `base_teacher`;
CREATE TABLE `base_teacher`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '教师姓名',
  `teacher_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '教师编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '教师' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of base_teacher
-- ----------------------------
INSERT INTO `base_teacher` VALUES (1, '单雄信', 'T001');
INSERT INTO `base_teacher` VALUES (2, '周朝先', 'T002');
INSERT INTO `base_teacher` VALUES (3, '高启兰', 'T003');
INSERT INTO `base_teacher` VALUES (4, '林冲', 'T004');
INSERT INTO `base_teacher` VALUES (5, '刘梅', 'T005');
INSERT INTO `base_teacher` VALUES (6, '李明', 'T006');
INSERT INTO `base_teacher` VALUES (7, '徐楠', 'T007');
INSERT INTO `base_teacher` VALUES (8, '陈静', 'T008');
INSERT INTO `base_teacher` VALUES (9, '张虓音', 'T009');

-- ----------------------------
-- Table structure for course_base
-- ----------------------------
DROP TABLE IF EXISTS `course_base`;
CREATE TABLE `course_base`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_base
-- ----------------------------
INSERT INTO `course_base` VALUES (1, 'yuwen', '语文');
INSERT INTO `course_base` VALUES (2, 'shuxue', '数学');
INSERT INTO `course_base` VALUES (3, 'yingyu', '英语');
INSERT INTO `course_base` VALUES (4, 'meishu', '美术');
INSERT INTO `course_base` VALUES (5, 'tiyu', '体育');
INSERT INTO `course_base` VALUES (6, 'kexue', '科学');
INSERT INTO `course_base` VALUES (7, 'yinyue', '音乐');

-- ----------------------------
-- Table structure for course_info
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '课程信息',
  `grade_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '开设年级编号',
  `season` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '学期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '课程信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_info
-- ----------------------------
INSERT INTO `course_info` VALUES (1, 'yuwen', '2024', '202401');
INSERT INTO `course_info` VALUES (2, 'shuxue', '2024', '202401');
INSERT INTO `course_info` VALUES (3, 'yingyu', '2024', '202401');

-- ----------------------------
-- Table structure for course_teaching
-- ----------------------------
DROP TABLE IF EXISTS `course_teaching`;
CREATE TABLE `course_teaching`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `course_id` int(20) NOT NULL COMMENT '课程id',
  `teacher_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '教师编号',
  `class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '班级编号',
  `grade_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '年级编号',
  `season` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '学期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '课程教授' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_teaching
-- ----------------------------
INSERT INTO `course_teaching` VALUES (25, 1, 'T001', '202401', '2024', '202401');
INSERT INTO `course_teaching` VALUES (26, 1, 'T001', '202402', '2024', '202401');
INSERT INTO `course_teaching` VALUES (29, 3, 'T003', '202401', '2024', '202401');
INSERT INTO `course_teaching` VALUES (30, 3, 'T003', '202402', '2024', '202401');
INSERT INTO `course_teaching` VALUES (31, 2, 'T006', '202401', '2024', '202401');
INSERT INTO `course_teaching` VALUES (32, 2, 'T006', '202402', '2024', '202401');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '生成功能作者',
  `form_col_num` int(1) NULL DEFAULT 1 COMMENT '表单布局（单列 双列 三列）',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'course_base', '课程基础信息表', '', NULL, 'CourseBase', 'crud', 'com.ruoyi.course', 'course', 'base', '课程基础信息管理', 'ruoyi', 1, '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"基础数据管理\",\"treeCode\":\"\"}', 'admin', '2024-09-05 12:08:50', '', '2024-09-05 12:21:55', '');
INSERT INTO `gen_table` VALUES (3, 'base_grade', '年级', '', NULL, 'BaseGrade', 'crud', 'com.ruoyi.base', 'base', 'grade', '年级', 'ruoyi', 1, '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"基础数据管理\",\"treeCode\":\"\"}', 'admin', '2024-09-05 14:04:56', '', '2024-09-05 14:07:20', '');
INSERT INTO `gen_table` VALUES (4, 'base_student', '学生', '', NULL, 'BaseStudent', 'crud', 'com.ruoyi.base', 'base', 'student', '学生', 'ruoyi', 1, '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"基础数据管理\",\"treeCode\":\"\"}', 'admin', '2024-09-05 14:04:56', '', '2024-09-05 15:50:13', '');
INSERT INTO `gen_table` VALUES (5, 'base_teacher', '教师', '', NULL, 'BaseTeacher', 'crud', 'com.ruoyi.base', 'base', 'teacher', '教师', 'ruoyi', 1, '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"基础数据管理\",\"treeCode\":\"\"}', 'admin', '2024-09-05 14:04:56', '', '2024-09-05 14:38:28', '');
INSERT INTO `gen_table` VALUES (6, 'base_student_class', '班级', '', NULL, 'BaseStudentClass', 'crud', 'com.ruoyi.base', 'base', 'student_class', '班级', 'ruoyi', 1, '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"基础数据管理\",\"treeCode\":\"\"}', 'admin', '2024-09-05 14:51:32', '', '2024-09-05 14:52:17', '');
INSERT INTO `gen_table` VALUES (7, 'score_exam', '考试', 'score_info', 'exam_id', 'ScoreExam', 'sub', 'com.ruoyi.score', 'score', 'exam', '考试', 'ruoyi', 1, '0', '/', '{\"parentMenuId\":\"2003\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"成绩管理\",\"treeCode\":\"\"}', 'admin', '2024-09-05 16:16:53', '', '2024-09-05 16:45:27', '');
INSERT INTO `gen_table` VALUES (9, 'course_info', '课程信息', '', NULL, 'CourseInfo', 'crud', 'com.ruoyi.course', 'course', 'info', '课程信息', 'ruoyi', 1, '0', '/', '{\"parentMenuId\":\"2002\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"授课管理\",\"treeCode\":\"\"}', 'admin', '2024-09-05 17:05:45', '', '2024-09-05 17:06:49', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'id', '主键id', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-09-05 12:08:50', NULL, '2024-09-05 12:21:55');
INSERT INTO `gen_table_column` VALUES (2, 1, 'course_code', '课程基础代码', 'varchar(255)', 'String', 'courseCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-09-05 12:08:50', NULL, '2024-09-05 12:21:55');
INSERT INTO `gen_table_column` VALUES (3, 1, 'course_name', '课程基础名称', 'varchar(255)', 'String', 'courseName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-09-05 12:08:50', NULL, '2024-09-05 12:21:55');
INSERT INTO `gen_table_column` VALUES (8, 3, 'id', '', 'int(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-09-05 14:04:56', NULL, '2024-09-05 14:07:20');
INSERT INTO `gen_table_column` VALUES (9, 3, 'grade_code', '年级名称', 'varchar(255)', 'String', 'gradeCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-09-05 14:04:56', NULL, '2024-09-05 14:07:20');
INSERT INTO `gen_table_column` VALUES (10, 3, 'grade_name', '年级代码', 'varchar(255)', 'String', 'gradeName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-09-05 14:04:56', NULL, '2024-09-05 14:07:20');
INSERT INTO `gen_table_column` VALUES (11, 4, 'id', '', 'int(20)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-09-05 14:04:56', NULL, '2024-09-05 15:50:13');
INSERT INTO `gen_table_column` VALUES (12, 4, 'student_name', '姓名', 'varchar(255)', 'String', 'studentName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-09-05 14:04:56', NULL, '2024-09-05 15:50:13');
INSERT INTO `gen_table_column` VALUES (13, 4, 'student_code', '学号', 'varchar(255)', 'String', 'studentCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-09-05 14:04:56', NULL, '2024-09-05 15:50:13');
INSERT INTO `gen_table_column` VALUES (14, 4, 'sex', '性别', 'tinyint(1)', 'Integer', 'sex', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2024-09-05 14:04:56', NULL, '2024-09-05 15:50:13');
INSERT INTO `gen_table_column` VALUES (15, 5, 'id', '', 'int(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-09-05 14:04:56', NULL, '2024-09-05 14:38:28');
INSERT INTO `gen_table_column` VALUES (16, 5, 'teacher_name', '教师姓名', 'varchar(255)', 'String', 'teacherName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-09-05 14:04:56', NULL, '2024-09-05 14:38:28');
INSERT INTO `gen_table_column` VALUES (17, 5, 'teacher_code', '教师编号', 'varchar(255)', 'String', 'teacherCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-09-05 14:04:56', NULL, '2024-09-05 14:38:28');
INSERT INTO `gen_table_column` VALUES (18, 6, 'id', '', 'int(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-09-05 14:51:32', NULL, '2024-09-05 14:52:17');
INSERT INTO `gen_table_column` VALUES (19, 6, 'class_code', '班级编号', 'varchar(255)', 'String', 'classCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-09-05 14:51:32', NULL, '2024-09-05 14:52:17');
INSERT INTO `gen_table_column` VALUES (20, 6, 'class_name', '班级名称', 'varchar(255)', 'String', 'className', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-09-05 14:51:32', NULL, '2024-09-05 14:52:17');
INSERT INTO `gen_table_column` VALUES (21, 6, 'grade_code', '年级编号', 'varchar(255)', 'String', 'gradeCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-09-05 14:51:32', NULL, '2024-09-05 14:52:17');
INSERT INTO `gen_table_column` VALUES (22, 7, 'id', '', 'int(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-09-05 16:16:53', NULL, '2024-09-05 16:45:27');
INSERT INTO `gen_table_column` VALUES (23, 7, 'exam_course_code', '课程编号', 'varchar(255)', 'String', 'examCourseCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-09-05 16:16:53', NULL, '2024-09-05 16:45:27');
INSERT INTO `gen_table_column` VALUES (24, 7, 'exam_date', '考试日期', 'datetime', 'Date', 'examDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2024-09-05 16:16:53', NULL, '2024-09-05 16:45:27');
INSERT INTO `gen_table_column` VALUES (25, 7, 'class_code', '考试班级', 'varchar(255)', 'String', 'classCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-09-05 16:16:53', NULL, '2024-09-05 16:45:27');
INSERT INTO `gen_table_column` VALUES (30, 9, 'id', '', 'int(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-09-05 17:05:45', NULL, '2024-09-05 17:06:49');
INSERT INTO `gen_table_column` VALUES (31, 9, 'course_code', '课程信息', 'varchar(255)', 'String', 'courseCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-09-05 17:05:45', NULL, '2024-09-05 17:06:49');
INSERT INTO `gen_table_column` VALUES (32, 9, 'grade_code', '开设年级编号', 'varchar(255)', 'String', 'gradeCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-09-05 17:05:45', NULL, '2024-09-05 17:06:49');
INSERT INTO `gen_table_column` VALUES (33, 9, 'season', '学期', 'tinyint(1)', 'Integer', 'season', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-09-05 17:05:45', NULL, '2024-09-05 17:06:49');

-- ----------------------------
-- Table structure for score_exam
-- ----------------------------
DROP TABLE IF EXISTS `score_exam`;
CREATE TABLE `score_exam`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `exam_course_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '课程编号',
  `exam_date` datetime NULL DEFAULT NULL COMMENT '考试日期',
  `class_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '考试班级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '考试' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of score_exam
-- ----------------------------
INSERT INTO `score_exam` VALUES (1, 'yuwen', '2024-09-05 00:00:00', '202401');

-- ----------------------------
-- Table structure for score_info
-- ----------------------------
DROP TABLE IF EXISTS `score_info`;
CREATE TABLE `score_info`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `exam_id` int(20) NULL DEFAULT NULL COMMENT '考试id',
  `student_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '学生学号',
  `score` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '成绩' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of score_info
-- ----------------------------
INSERT INTO `score_info` VALUES (1, 1, '川川', 100.00);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-09-04 17:38:50', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-09-04 17:38:50', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-09-04 17:38:50', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-09-04 17:38:50', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2024-09-04 17:38:50', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '1', 'Y', 'admin', '2024-09-04 17:38:50', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2024-09-04 17:38:50', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2024-09-04 17:38:50', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2024-09-04 17:38:50', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (10, '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2024-09-04 17:38:50', '', NULL, '是否开启菜单多页签显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (11, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-09-04 17:38:50', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '吉祥小学', 0, '川川', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-09-04 17:38:49', 'admin', '2024-09-05 10:05:01');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '教务处', 1, '单老师', '15888888888', 'sls@qq.com', '0', '0', 'admin', '2024-09-04 17:38:49', 'admin', '2024-09-10 23:20:58');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2024-09-04 17:38:49', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '语文教研组', 1, '川川', '15888888888', 'cc@qq.com', '0', '0', 'admin', '2024-09-04 17:38:49', 'admin', '2024-09-10 23:20:35');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2024-09-04 17:38:49', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '数学教研组', 3, '老海', '15888888888', 'laohai@qq.com', '0', '0', 'admin', '2024-09-04 17:38:49', 'admin', '2024-09-10 23:20:42');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2024-09-04 17:38:49', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2024-09-04 17:38:49', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2024-09-04 17:38:49', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2024-09-04 17:38:49', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-09-04 17:38:50', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-09-04 17:38:50', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 263 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-04 17:41:16');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-04 17:43:28');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-04 17:46:10');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-09-04 17:53:56');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-04 17:54:03');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-09-05 10:03:52');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 10:04:01');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-05 12:25:15');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 12:25:27');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-05 12:29:27');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-09-05 12:29:35');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 12:29:46');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-05 12:43:06');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 12:45:03');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 14:13:58');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 14:25:27');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-09-05 14:49:34');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 14:49:38');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 14:55:27');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 15:36:21');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 15:41:08');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 15:54:54');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-09-05 16:08:05');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 16:08:08');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 16:11:10');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 16:49:38');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-09-05 17:11:54');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-05 17:11:57');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-06 09:38:36');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-06 09:38:46');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-09-06 09:38:57');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-06 09:39:03');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-06 09:39:28');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-06 09:39:37');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-09-06 10:33:09');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-06 10:33:13');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-09-06 13:36:41');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-06 13:36:44');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-06 13:41:12');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-09-06 13:49:28');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-06 13:49:31');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-06 13:53:34');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-07 23:20:29');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-09-07 23:32:10');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-09-07 23:32:12');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-07 23:34:55');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-07 23:39:18');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-08 08:28:48');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-08 08:55:41');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 09:09:19');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 09:12:11');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 09:23:11');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 09:42:25');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 09:44:27');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 09:56:40');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 09:58:03');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 10:01:38');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 10:03:03');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 10:11:22');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 10:12:40');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 10:13:32');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 10:14:27');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 10:22:50');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 10:25:32');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 10:26:39');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 10:29:34');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 10:52:15');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 10:53:40');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-09 11:19:33');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 11:19:34');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-09 11:22:46');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 11:22:48');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 11:31:59');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 11:33:33');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 11:35:10');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 11:43:51');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-09 11:45:30');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 11:45:31');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-09 11:46:32');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 11:46:53');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 11:48:23');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 11:52:17');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-09 11:53:18');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 11:56:54');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 12:32:32');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-09 12:35:09');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 12:35:11');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 12:36:07');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-09 12:36:53');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 12:37:22');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 12:37:57');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 12:39:17');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 12:39:45');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 12:42:00');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 12:43:12');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 12:46:36');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 12:49:29');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 12:57:07');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 13:01:38');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 13:02:06');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 13:59:26');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 14:03:52');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 14:09:11');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 14:52:28');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 14:54:20');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 15:06:52');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 15:46:29');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 15:57:25');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 16:45:05');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 16:51:22');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 16:56:39');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-09 17:01:09');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 09:25:07');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 13:03:47');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-10 13:09:50');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 13:12:07');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 13:48:58');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-10 13:50:46');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 13:50:47');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 13:53:03');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 13:57:24');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 14:10:05');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 14:10:50');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 14:11:40');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 14:13:00');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 14:21:10');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 14:59:51');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 15:01:45');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 15:03:36');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 15:11:46');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 15:14:44');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 15:23:57');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 15:29:39');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 15:36:03');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 15:39:58');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 15:52:46');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 15:56:22');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 15:58:18');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 16:04:44');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 16:22:12');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 16:30:42');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 16:46:04');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 16:49:35');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 16:50:49');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-10 16:53:34');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 16:53:36');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 16:54:44');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 17:01:31');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 17:04:15');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 17:07:18');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-10 17:08:41');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 17:11:11');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-10 17:11:19');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 22:22:27');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 22:33:22');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 22:36:58');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-10 22:38:53');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 22:38:55');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-10 22:39:22');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 23:06:35');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-10 23:06:38');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-09-10 23:18:03');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-09-10 23:22:46');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2060 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 10, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2024-09-04 17:38:50', 'admin', '2024-09-05 12:20:46', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 11, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2024-09-04 17:38:50', 'admin', '2024-09-05 12:21:01', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 9, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2024-09-04 17:38:50', 'admin', '2024-09-05 12:24:54', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2024-09-04 17:38:50', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2024-09-04 17:38:50', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2024-09-04 17:38:50', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2024-09-04 17:38:50', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2024-09-04 17:38:50', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2024-09-04 17:38:50', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2024-09-04 17:38:50', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2024-09-04 17:38:50', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2024-09-04 17:38:50', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2024-09-04 17:38:50', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2024-09-04 17:38:50', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2024-09-04 17:38:50', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2024-09-04 17:38:50', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2024-09-04 17:38:50', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2024-09-04 17:38:50', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2024-09-04 17:38:50', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2024-09-04 17:38:50', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2024-09-04 17:38:50', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2024-09-04 17:38:50', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2024-09-04 17:38:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '基础数据管理', 0, 1, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-blind', 'admin', '2024-09-05 12:16:14', 'admin', '2024-09-05 12:18:28', '');
INSERT INTO `sys_menu` VALUES (2002, '授课管理', 0, 2, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-address-card-o', 'admin', '2024-09-05 12:19:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '成绩管理', 0, 3, '#', 'menuItem', 'M', '0', '1', '', 'fa fa-address-card', 'admin', '2024-09-05 12:20:02', 'admin', '2024-09-05 12:20:54', '');
INSERT INTO `sys_menu` VALUES (2004, '课程', 2000, 1, '/course/base', 'menuItem', 'C', '0', '1', 'course:base:view', '#', 'admin', '2024-09-05 12:23:34', 'admin', '2024-09-10 17:08:37', '课程基础信息管理菜单');
INSERT INTO `sys_menu` VALUES (2005, '课程基础信息管理查询', 2004, 1, '#', '', 'F', '0', '1', 'course:base:list', '#', 'admin', '2024-09-05 12:23:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '课程基础信息管理新增', 2004, 2, '#', '', 'F', '0', '1', 'course:base:add', '#', 'admin', '2024-09-05 12:23:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '课程基础信息管理修改', 2004, 3, '#', '', 'F', '0', '1', 'course:base:edit', '#', 'admin', '2024-09-05 12:23:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '课程基础信息管理删除', 2004, 4, '#', '', 'F', '0', '1', 'course:base:remove', '#', 'admin', '2024-09-05 12:23:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '课程基础信息管理导出', 2004, 5, '#', '', 'F', '0', '1', 'course:base:export', '#', 'admin', '2024-09-05 12:23:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '年级', 2000, 1, '/base/grade', '', 'C', '0', '1', 'base:grade:view', '#', 'admin', '2024-09-05 14:08:15', '', NULL, '年级菜单');
INSERT INTO `sys_menu` VALUES (2011, '年级查询', 2010, 1, '#', '', 'F', '0', '1', 'base:grade:list', '#', 'admin', '2024-09-05 14:08:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '年级新增', 2010, 2, '#', '', 'F', '0', '1', 'base:grade:add', '#', 'admin', '2024-09-05 14:08:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '年级修改', 2010, 3, '#', '', 'F', '0', '1', 'base:grade:edit', '#', 'admin', '2024-09-05 14:08:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '年级删除', 2010, 4, '#', '', 'F', '0', '1', 'base:grade:remove', '#', 'admin', '2024-09-05 14:08:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '年级导出', 2010, 5, '#', '', 'F', '0', '1', 'base:grade:export', '#', 'admin', '2024-09-05 14:08:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '学生', 2000, 1, '/base/student', '', 'C', '0', '1', 'base:student:view', '#', 'admin', '2024-09-05 14:44:08', '', NULL, '学生菜单');
INSERT INTO `sys_menu` VALUES (2023, '学生查询', 2022, 1, '#', '', 'F', '0', '1', 'base:student:list', '#', 'admin', '2024-09-05 14:44:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '学生新增', 2022, 2, '#', '', 'F', '0', '1', 'base:student:add', '#', 'admin', '2024-09-05 14:44:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '学生修改', 2022, 3, '#', '', 'F', '0', '1', 'base:student:edit', '#', 'admin', '2024-09-05 14:44:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '学生删除', 2022, 4, '#', '', 'F', '0', '1', 'base:student:remove', '#', 'admin', '2024-09-05 14:44:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '学生导出', 2022, 5, '#', '', 'F', '0', '1', 'base:student:export', '#', 'admin', '2024-09-05 14:44:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '教师', 2000, 1, '/base/teacher', '', 'C', '0', '1', 'base:teacher:view', '#', 'admin', '2024-09-05 14:44:16', '', NULL, '教师菜单');
INSERT INTO `sys_menu` VALUES (2029, '教师查询', 2028, 1, '#', '', 'F', '0', '1', 'base:teacher:list', '#', 'admin', '2024-09-05 14:44:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '教师新增', 2028, 2, '#', '', 'F', '0', '1', 'base:teacher:add', '#', 'admin', '2024-09-05 14:44:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '教师修改', 2028, 3, '#', '', 'F', '0', '1', 'base:teacher:edit', '#', 'admin', '2024-09-05 14:44:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '教师删除', 2028, 4, '#', '', 'F', '0', '1', 'base:teacher:remove', '#', 'admin', '2024-09-05 14:44:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '教师导出', 2028, 5, '#', '', 'F', '0', '1', 'base:teacher:export', '#', 'admin', '2024-09-05 14:44:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '班级', 2000, 1, '/base/student_class', '', 'C', '0', '1', 'base:student_class:view', '#', 'admin', '2024-09-05 14:54:24', '', NULL, '班级菜单');
INSERT INTO `sys_menu` VALUES (2035, '班级查询', 2034, 1, '#', '', 'F', '0', '1', 'base:student_class:list', '#', 'admin', '2024-09-05 14:54:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '班级新增', 2034, 2, '#', '', 'F', '0', '1', 'base:student_class:add', '#', 'admin', '2024-09-05 14:54:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '班级修改', 2034, 3, '#', '', 'F', '0', '1', 'base:student_class:edit', '#', 'admin', '2024-09-05 14:54:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '班级删除', 2034, 4, '#', '', 'F', '0', '1', 'base:student_class:remove', '#', 'admin', '2024-09-05 14:54:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '班级导出', 2034, 5, '#', '', 'F', '0', '1', 'base:student_class:export', '#', 'admin', '2024-09-05 14:54:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '成绩', 2003, 1, '/score/info', '', 'C', '0', '1', 'score:info:view', '#', 'admin', '2024-09-05 16:36:39', '', NULL, '成绩菜单');
INSERT INTO `sys_menu` VALUES (2046, '考试', 2003, 1, '/score/exam', '', 'C', '0', '1', 'score:exam:view', '#', 'admin', '2024-09-05 16:36:52', '', NULL, '考试菜单');
INSERT INTO `sys_menu` VALUES (2047, '考试查询', 2046, 1, '#', '', 'F', '0', '1', 'score:exam:list', '#', 'admin', '2024-09-05 16:36:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '考试新增', 2046, 2, '#', '', 'F', '0', '1', 'score:exam:add', '#', 'admin', '2024-09-05 16:36:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '考试修改', 2046, 3, '#', '', 'F', '0', '1', 'score:exam:edit', '#', 'admin', '2024-09-05 16:36:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2050, '考试删除', 2046, 4, '#', '', 'F', '0', '1', 'score:exam:remove', '#', 'admin', '2024-09-05 16:36:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '考试导出', 2046, 5, '#', '', 'F', '0', '1', 'score:exam:export', '#', 'admin', '2024-09-05 16:36:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '课程信息', 2002, 1, '/course/info', '', 'C', '0', '1', 'course:info:view', '#', 'admin', '2024-09-05 17:07:26', '', NULL, '课程信息菜单');
INSERT INTO `sys_menu` VALUES (2053, '课程信息查询', 2052, 1, '#', '', 'F', '0', '1', 'course:info:list', '#', 'admin', '2024-09-05 17:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '课程信息新增', 2052, 2, '#', '', 'F', '0', '1', 'course:info:add', '#', 'admin', '2024-09-05 17:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '课程信息修改', 2052, 3, '#', '', 'F', '0', '1', 'course:info:edit', '#', 'admin', '2024-09-05 17:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '课程信息删除', 2052, 4, '#', '', 'F', '0', '1', 'course:info:remove', '#', 'admin', '2024-09-05 17:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '课程信息导出', 2052, 5, '#', '', 'F', '0', '1', 'course:info:export', '#', 'admin', '2024-09-05 17:07:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '课程设置', 2002, 1, '/course/teaching_setting', 'menuItem', 'C', '0', '1', 'course.teaching_setting.view', '#', 'admin', '2024-09-06 12:14:22', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-09-04 17:38:50', 'admin', '2024-09-10 23:22:12', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-09-04 17:38:50', 'admin', '2024-09-10 23:22:04', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 312 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '重置密码', 2, 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"loginName\":[\"admin\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-04 17:46:24', 158);
INSERT INTO `sys_oper_log` VALUES (101, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"吉祥小学\"],\"orderNum\":[\"0\"],\"leader\":[\"川川\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 10:05:01', 131);
INSERT INTO `sys_oper_log` VALUES (102, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/102', '127.0.0.1', '内网IP', '102', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":301}', 0, NULL, '2024-09-05 10:05:12', 9);
INSERT INTO `sys_oper_log` VALUES (103, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/108', '127.0.0.1', '内网IP', '108', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 10:05:16', 31);
INSERT INTO `sys_oper_log` VALUES (104, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/109', '127.0.0.1', '内网IP', '109', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 10:05:19', 24);
INSERT INTO `sys_oper_log` VALUES (105, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/102', '127.0.0.1', '内网IP', '102', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 10:05:21', 30);
INSERT INTO `sys_oper_log` VALUES (106, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/107', '127.0.0.1', '内网IP', '107', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 10:05:24', 28);
INSERT INTO `sys_oper_log` VALUES (107, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/106', '127.0.0.1', '内网IP', '106', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 10:05:26', 28);
INSERT INTO `sys_oper_log` VALUES (108, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/105', '127.0.0.1', '内网IP', '105', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":301}', 0, NULL, '2024-09-05 10:05:28', 13);
INSERT INTO `sys_oper_log` VALUES (109, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"吉祥小学\"],\"deptName\":[\"教务处\"],\"orderNum\":[\"1\"],\"leader\":[\"单老师\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 10:05:47', 61);
INSERT INTO `sys_oper_log` VALUES (110, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/103', '127.0.0.1', '内网IP', '103', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":301}', 0, NULL, '2024-09-05 10:06:04', 13);
INSERT INTO `sys_oper_log` VALUES (111, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/104', '127.0.0.1', '内网IP', '104', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 10:06:07', 29);
INSERT INTO `sys_oper_log` VALUES (112, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"校长\"],\"postCode\":[\"ceo\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 10:06:20', 30);
INSERT INTO `sys_oper_log` VALUES (113, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"2\"],\"postName\":[\"主任\"],\"postCode\":[\"se\"],\"postSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 10:06:29', 20);
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2024-09-05 10:08:01', 16);
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2024-09-05 10:09:02', 10);
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2024-09-05 10:10:26', 12);
INSERT INTO `sys_oper_log` VALUES (117, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,113,3,114,115,1057,1058,1059,1060,1061,116\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 10:11:29', 43);
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 10:11:38', 21);
INSERT INTO `sys_oper_log` VALUES (119, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"course_base\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:08:50', 170);
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"course_base\"]}', NULL, 0, NULL, '2024-09-05 12:09:36', 345);
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"学生管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-blind\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:16:14', 16);
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"M\"],\"menuName\":[\"基础数据模块\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:17:18', 27);
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"基础数据管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-blind\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:18:28', 47);
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"授课管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-address-card-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:19:21', 19);
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"成绩管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-card\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:20:02', 28);
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2003\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"成绩管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-address-card\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:20:26', 24);
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:20:33', 21);
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"10\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:20:46', 30);
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2003\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"成绩管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-address-card\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:20:54', 14);
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"11\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:21:01', 21);
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"course_base\"],\"tableComment\":[\"课程基础信息表\"],\"className\":[\"CourseBase\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"课程基础代码\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"courseCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"课程基础名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"courseName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.course\"],\"moduleName\":[\"course\"],\"businessName\":[\"base\"],\"functionName\":[\"课程基础信息管理\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"基础数据管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:21:55', 32);
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/course_base', '127.0.0.1', '内网IP', '\"course_base\"', NULL, 0, NULL, '2024-09-05 12:22:34', 70);
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"9\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:24:54', 24);
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2001', '127.0.0.1', '内网IP', '2001', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:29:19', 24);
INSERT INTO `sys_oper_log` VALUES (135, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"超级管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"2000,2004,2005,2006,2007,2008,2009\"]}', NULL, 1, '不允许操作超级管理员角色', '2024-09-05 12:32:06', 2);
INSERT INTO `sys_oper_log` VALUES (136, '课程基础信息管理', 1, 'com.ruoyi.course.controller.CourseBaseController.addSave()', 'POST', 1, 'admin', '研发部门', '/course/base/add', '127.0.0.1', '内网IP', '{\"courseCode\":[\"yuwen\"],\"courseName\":[\"语文\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 12:45:32', 241);
INSERT INTO `sys_oper_log` VALUES (137, '课程基础信息管理', 5, 'com.ruoyi.course.controller.CourseBaseController.export()', 'POST', 1, 'admin', '研发部门', '/course/base/export', '127.0.0.1', '内网IP', '{\"courseCode\":[\"\"],\"courseName\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', NULL, 1, '导出Excel失败，请联系网站管理员！', '2024-09-05 12:45:41', 809);
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"base_teacher,base_student,base_grade,base_class\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:04:56', 337);
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"base_grade\"],\"tableComment\":[\"年级\"],\"className\":[\"BaseGrade\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"8\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"9\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"年级名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gradeCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"10\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"年级代码\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gradeName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.base\"],\"moduleName\":[\"base\"],\"businessName\":[\"grade\"],\"functionName\":[\"年级\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"基础数据管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:07:20', 21);
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/base_grade', '127.0.0.1', '内网IP', '\"base_grade\"', NULL, 0, NULL, '2024-09-05 14:07:36', 93);
INSERT INTO `sys_oper_log` VALUES (141, '年级', 1, 'com.ruoyi.base.controller.BaseGradeController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/grade/add', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2020级\"],\"gradeName\":[\"2020\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:14:40', 139);
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"base_class\"],\"tableComment\":[\"班级\"],\"className\":[\"BaseClass\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"4\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"5\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"班级编号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"classCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"6\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"班级名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"className\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"7\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"年级编号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gradeCode\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.base\"],\"moduleName\":[\"base\"],\"businessName\":[\"class\"],\"functionName\":[\"班级\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"基础数据管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:17:57', 51);
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/base_class', '127.0.0.1', '内网IP', '\"base_class\"', NULL, 0, NULL, '2024-09-05 14:18:04', 98);
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"base_student\"],\"tableComment\":[\"学生\"],\"className\":[\"BaseStudent\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studentName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentCode\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"sex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.base\"],\"moduleName\":[\"base\"],\"businessName\":[\"student\"],\"functionName\":[\"学生\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"基础数据管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:37:58', 61);
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"base_teacher\"],\"tableComment\":[\"教师\"],\"className\":[\"BaseTeacher\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"15\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"16\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"教师姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"teacherName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"17\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"教师编号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"teacherCode\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.base\"],\"moduleName\":[\"base\"],\"businessName\":[\"teacher\"],\"functionName\":[\"教师\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"基础数据管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:38:28', 50);
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"base_student,base_teacher\"]}', NULL, 0, NULL, '2024-09-05 14:38:45', 324);
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/base_class', '127.0.0.1', '内网IP', '\"base_class\"', NULL, 1, '同步数据失败，原表结构不存在', '2024-09-05 14:51:06', 259);
INSERT INTO `sys_oper_log` VALUES (148, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:51:13', 67);
INSERT INTO `sys_oper_log` VALUES (149, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"base_student_class\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:51:32', 102);
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"base_student_class\"],\"tableComment\":[\"班级\"],\"className\":[\"BaseStudentClass\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"18\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"19\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"班级编号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"classCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"20\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"班级名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"className\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"21\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"年级编号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gradeCode\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.base\"],\"moduleName\":[\"base\"],\"businessName\":[\"student_class\"],\"functionName\":[\"班级\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"基础数据管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:52:17', 34);
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/base_student_class', '127.0.0.1', '内网IP', '\"base_student_class\"', NULL, 0, NULL, '2024-09-05 14:52:24', 349);
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2016', '127.0.0.1', '内网IP', '2016', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2024-09-05 14:53:00', 7);
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2017', '127.0.0.1', '内网IP', '2017', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:53:07', 39);
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2018', '127.0.0.1', '内网IP', '2018', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:53:18', 47);
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2019', '127.0.0.1', '内网IP', '2019', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:53:28', 20);
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2020', '127.0.0.1', '内网IP', '2020', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:53:37', 22);
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2021', '127.0.0.1', '内网IP', '2021', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:53:45', 19);
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2016', '127.0.0.1', '内网IP', '2016', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:53:55', 17);
INSERT INTO `sys_oper_log` VALUES (159, '课程基础信息管理', 1, 'com.ruoyi.course.controller.CourseBaseController.addSave()', 'POST', 1, 'admin', '研发部门', '/course/base/add', '127.0.0.1', '内网IP', '{\"courseCode\":[\"shuxue\"],\"courseName\":[\"数学\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:55:59', 136);
INSERT INTO `sys_oper_log` VALUES (160, '课程基础信息管理', 1, 'com.ruoyi.course.controller.CourseBaseController.addSave()', 'POST', 1, 'admin', '研发部门', '/course/base/add', '127.0.0.1', '内网IP', '{\"courseCode\":[\"yingyu\"],\"courseName\":[\"英语\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:56:09', 14);
INSERT INTO `sys_oper_log` VALUES (161, '课程基础信息管理', 1, 'com.ruoyi.course.controller.CourseBaseController.addSave()', 'POST', 1, 'admin', '研发部门', '/course/base/add', '127.0.0.1', '内网IP', '{\"courseCode\":[\"meishu\"],\"courseName\":[\"美术\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:56:21', 11);
INSERT INTO `sys_oper_log` VALUES (162, '课程基础信息管理', 1, 'com.ruoyi.course.controller.CourseBaseController.addSave()', 'POST', 1, 'admin', '研发部门', '/course/base/add', '127.0.0.1', '内网IP', '{\"courseCode\":[\"tiyu\"],\"courseName\":[\"体育\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:56:30', 13);
INSERT INTO `sys_oper_log` VALUES (163, '课程基础信息管理', 1, 'com.ruoyi.course.controller.CourseBaseController.addSave()', 'POST', 1, 'admin', '研发部门', '/course/base/add', '127.0.0.1', '内网IP', '{\"courseCode\":[\"kexue\"],\"courseName\":[\"科学\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:56:46', 14);
INSERT INTO `sys_oper_log` VALUES (164, '课程基础信息管理', 1, 'com.ruoyi.course.controller.CourseBaseController.addSave()', 'POST', 1, 'admin', '研发部门', '/course/base/add', '127.0.0.1', '内网IP', '{\"courseCode\":[\"yinyue\"],\"courseName\":[\"音乐\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:56:59', 12);
INSERT INTO `sys_oper_log` VALUES (165, '年级', 1, 'com.ruoyi.base.controller.BaseGradeController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/grade/add', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2021级\"],\"gradeName\":[\"2021\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:57:20', 15);
INSERT INTO `sys_oper_log` VALUES (166, '年级', 1, 'com.ruoyi.base.controller.BaseGradeController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/grade/add', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2022级\"],\"gradeName\":[\"2022\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:57:31', 11);
INSERT INTO `sys_oper_log` VALUES (167, '年级', 1, 'com.ruoyi.base.controller.BaseGradeController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/grade/add', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2023级\"],\"gradeName\":[\"2023\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:57:39', 20);
INSERT INTO `sys_oper_log` VALUES (168, '年级', 1, 'com.ruoyi.base.controller.BaseGradeController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/grade/add', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024级\"],\"gradeName\":[\"2024\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:57:49', 10);
INSERT INTO `sys_oper_log` VALUES (169, '年级', 1, 'com.ruoyi.base.controller.BaseGradeController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/grade/add', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2019级\"],\"gradeName\":[\"2019\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 14:59:23', 10);
INSERT INTO `sys_oper_log` VALUES (170, '教师', 1, 'com.ruoyi.base.controller.BaseTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/teacher/add', '127.0.0.1', '内网IP', '{\"teacherName\":[\"单雄信\"],\"teacherCode\":[\"T001\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:13:13', 24);
INSERT INTO `sys_oper_log` VALUES (171, '教师', 1, 'com.ruoyi.base.controller.BaseTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/teacher/add', '127.0.0.1', '内网IP', '{\"teacherName\":[\"周朝先\"],\"teacherCode\":[\"T002\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:13:24', 28);
INSERT INTO `sys_oper_log` VALUES (172, '教师', 1, 'com.ruoyi.base.controller.BaseTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/teacher/add', '127.0.0.1', '内网IP', '{\"teacherName\":[\"高启兰\"],\"teacherCode\":[\"T003\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:13:54', 13);
INSERT INTO `sys_oper_log` VALUES (173, '教师', 1, 'com.ruoyi.base.controller.BaseTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/teacher/add', '127.0.0.1', '内网IP', '{\"teacherName\":[\"林冲\"],\"teacherCode\":[\"T004\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:14:05', 25);
INSERT INTO `sys_oper_log` VALUES (174, '教师', 1, 'com.ruoyi.base.controller.BaseTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/teacher/add', '127.0.0.1', '内网IP', '{\"teacherName\":[\"刘梅\"],\"teacherCode\":[\"T005\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:14:32', 17);
INSERT INTO `sys_oper_log` VALUES (175, '教师', 1, 'com.ruoyi.base.controller.BaseTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/teacher/add', '127.0.0.1', '内网IP', '{\"teacherName\":[\"李明\"],\"teacherCode\":[\"T006\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:14:42', 14);
INSERT INTO `sys_oper_log` VALUES (176, '教师', 1, 'com.ruoyi.base.controller.BaseTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/teacher/add', '127.0.0.1', '内网IP', '{\"teacherName\":[\"徐楠\"],\"teacherCode\":[\"T007\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:14:54', 14);
INSERT INTO `sys_oper_log` VALUES (177, '教师', 1, 'com.ruoyi.base.controller.BaseTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/teacher/add', '127.0.0.1', '内网IP', '{\"teacherName\":[\"陈静\"],\"teacherCode\":[\"T008\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:15:03', 18);
INSERT INTO `sys_oper_log` VALUES (178, '教师', 1, 'com.ruoyi.base.controller.BaseTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/teacher/add', '127.0.0.1', '内网IP', '{\"teacherName\":[\"张虓音\"],\"teacherCode\":[\"T009\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:15:39', 15);
INSERT INTO `sys_oper_log` VALUES (179, '班级', 1, 'com.ruoyi.base.controller.BaseStudentClassController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/student_class/add', '127.0.0.1', '内网IP', '{\"classCode\":[\"202401\"],\"className\":[\"一年级一班\"],\"gradeCode\":[\"2024\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:17:24', 13);
INSERT INTO `sys_oper_log` VALUES (180, '学生', 1, 'com.ruoyi.base.controller.BaseStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/student/add', '127.0.0.1', '内网IP', '{\"studentName\":[\"川川\"],\"studentCode\":[\"202400001\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\workspace_idea\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\base\\BaseStudentMapper.xml]\r\n### The error may involve com.ruoyi.base.mapper.BaseStudentMapper.insertBaseStudent-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into base_student          ( student_name,             student_code )           values ( ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2024-09-05 15:26:04', 154);
INSERT INTO `sys_oper_log` VALUES (181, '学生', 1, 'com.ruoyi.base.controller.BaseStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/student/add', '127.0.0.1', '内网IP', '{\"studentName\":[\"川川\"],\"studentCode\":[\"202400001\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:26:41', 11);
INSERT INTO `sys_oper_log` VALUES (182, '学生', 1, 'com.ruoyi.base.controller.BaseStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/student/add', '127.0.0.1', '内网IP', '{\"studentName\":[\"李清清\"],\"studentCode\":[\"20240002\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:44:51', 155);
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"base_student\"],\"tableComment\":[\"学生\"],\"className\":[\"BaseStudent\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studentName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentCode\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"sex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"radio\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.base\"],\"moduleName\":[\"base\"],\"businessName\":[\"student\"],\"functionName\":[\"学生\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"基础数据管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:48:34', 60);
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"base_student\"],\"tableComment\":[\"学生\"],\"className\":[\"BaseStudent\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studentName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentCode\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"sex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"radio\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.base\"],\"moduleName\":[\"base\"],\"businessName\":[\"student\"],\"functionName\":[\"学生\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"基础数据管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:49:03', 67);
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"base_student\"],\"tableComment\":[\"学生\"],\"className\":[\"BaseStudent\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studentName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentCode\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"sex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.base\"],\"moduleName\":[\"base\"],\"businessName\":[\"student\"],\"functionName\":[\"学生\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"基础数据管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:49:51', 63);
INSERT INTO `sys_oper_log` VALUES (186, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"base_student\"],\"tableComment\":[\"学生\"],\"className\":[\"BaseStudent\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"11\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"12\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"studentName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"13\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentCode\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"14\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"性别\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"sex\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"radio\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.base\"],\"moduleName\":[\"base\"],\"businessName\":[\"student\"],\"functionName\":[\"学生\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"基础数据管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:50:13', 44);
INSERT INTO `sys_oper_log` VALUES (187, '学生', 2, 'com.ruoyi.base.controller.BaseStudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/base/student/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"studentName\":[\"川川\"],\"studentCode\":[\"202400001\"],\"sex\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 15:55:09', 121);
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"score_info,score_exam\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:16:53', 321);
INSERT INTO `sys_oper_log` VALUES (189, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"score_exam\"],\"tableComment\":[\"考试\"],\"className\":[\"ScoreExam\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"22\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"23\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"课程编号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"examCourseCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"24\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"考试日期\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"examDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"25\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"考试班级\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"classCode\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.score\"],\"moduleName\":[\"score\"],\"businessName\":[\"exam\"],\"functionName\":[\"考试\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2003\"],\"params[parentMenuName]\":[\"成绩管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:20:35', 31);
INSERT INTO `sys_oper_log` VALUES (190, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"score_info\"],\"tableComment\":[\"成绩\"],\"className\":[\"ScoreInfo\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"26\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"27\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"考试id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"examId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"28\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"学生姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"studentCode\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"29\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"成绩\"],\"columns[3].javaType\":[\"BigDecimal\"],\"columns[3].javaField\":[\"score\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.score\"],\"moduleName\":[\"score\"],\"businessName\":[\"info\"],\"functionName\":[\"成绩\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2003\"],\"params[parentMenuName]\":[\"成绩管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:35:08', 63);
INSERT INTO `sys_oper_log` VALUES (191, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"score_exam,score_info\"]}', NULL, 0, NULL, '2024-09-05 16:35:17', 364);
INSERT INTO `sys_oper_log` VALUES (192, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"score_exam\"],\"tableComment\":[\"考试\"],\"className\":[\"ScoreExam\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"22\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"23\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"课程编号\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"examCourseCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"24\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"考试日期\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"examDate\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"25\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"考试班级\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"classCode\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"sub\"],\"packageName\":[\"com.ruoyi.score\"],\"moduleName\":[\"score\"],\"businessName\":[\"exam\"],\"functionName\":[\"考试\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2003\"],\"params[parentMenuName]\":[\"成绩管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"score_info\"],\"subTableFkName\":[\"exam_id\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:45:27', 57);
INSERT INTO `sys_oper_log` VALUES (193, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/score_info', '127.0.0.1', '内网IP', '\"score_info\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:48:20', 76);
INSERT INTO `sys_oper_log` VALUES (194, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/score_exam', '127.0.0.1', '内网IP', '\"score_exam\"', NULL, 0, NULL, '2024-09-05 16:48:29', 74);
INSERT INTO `sys_oper_log` VALUES (195, '考试', 1, 'com.ruoyi.score.controller.ScoreExamController.addSave()', 'POST', 1, 'admin', '研发部门', '/score/exam/add', '127.0.0.1', '内网IP', '{\"examCourseCode\":[\"yuwen\"],\"examDate\":[\"2024-09-05\"],\"classCode\":[\"202401\"],\"index\":[\"1\"],\"scoreInfoList[0].studentCode\":[\"川川\"],\"scoreInfoList[0].score\":[\"100\"],\"btSelectAll\":[\"\"],\"btSelectItem\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:51:04', 185);
INSERT INTO `sys_oper_log` VALUES (196, '学生', 2, 'com.ruoyi.base.controller.BaseStudentController.editSave()', 'POST', 1, 'admin', '研发部门', '/base/student/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"studentName\":[\"川川\"],\"studentCode\":[\"20240001\"],\"sex\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:52:08', 22);
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:54:24', 25);
INSERT INTO `sys_oper_log` VALUES (198, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2040', '127.0.0.1', '内网IP', '2040', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2024-09-05 16:54:55', 7);
INSERT INTO `sys_oper_log` VALUES (199, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2041', '127.0.0.1', '内网IP', '2041', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:55:00', 93);
INSERT INTO `sys_oper_log` VALUES (200, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2043', '127.0.0.1', '内网IP', '2043', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:55:14', 37);
INSERT INTO `sys_oper_log` VALUES (201, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2042', '127.0.0.1', '内网IP', '2042', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:55:23', 22);
INSERT INTO `sys_oper_log` VALUES (202, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2044', '127.0.0.1', '内网IP', '2044', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:55:32', 55);
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2045', '127.0.0.1', '内网IP', '2045', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 16:55:53', 17);
INSERT INTO `sys_oper_log` VALUES (204, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"course_info\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 17:05:45', 119);
INSERT INTO `sys_oper_log` VALUES (205, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"course_info\"],\"tableComment\":[\"课程信息\"],\"className\":[\"CourseInfo\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"30\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"31\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"课程信息\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"courseCode\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"32\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"开设年级编号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gradeCode\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"33\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"学期\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"season\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.course\"],\"moduleName\":[\"course\"],\"businessName\":[\"info\"],\"functionName\":[\"课程信息\"],\"formColNum\":[\"1\"],\"genType\":[\"0\"],\"params[parentMenuId]\":[\"2002\"],\"params[parentMenuName]\":[\"授课管理\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 17:06:49', 29);
INSERT INTO `sys_oper_log` VALUES (206, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/course_info', '127.0.0.1', '内网IP', '\"course_info\"', NULL, 0, NULL, '2024-09-05 17:06:56', 349);
INSERT INTO `sys_oper_log` VALUES (207, '课程信息', 1, 'com.ruoyi.course.controller.CourseInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/course/info/add', '127.0.0.1', '内网IP', '{\"courseCode\":[\"yuwen\"],\"gradeCode\":[\"2024\"],\"season\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-05 17:13:21', 142);
INSERT INTO `sys_oper_log` VALUES (208, '重置密码', 2, 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"loginName\":[\"admin\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-06 09:39:24', 148);
INSERT INTO `sys_oper_log` VALUES (209, '课程信息', 1, 'com.ruoyi.course.controller.CourseInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/course/info/add', '127.0.0.1', '内网IP', '{\"courseCode\":[\"shuxue\"],\"gradeCode\":[\"2024\"],\"season\":[\"202401\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-06 10:34:42', 147);
INSERT INTO `sys_oper_log` VALUES (210, '课程信息', 2, 'com.ruoyi.course.controller.CourseInfoController.editSave()', 'POST', 1, 'admin', '研发部门', '/course/info/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"courseCode\":[\"yuwen\"],\"gradeCode\":[\"2024\"],\"season\":[\"202401\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-06 10:34:49', 13);
INSERT INTO `sys_oper_log` VALUES (211, '班级', 1, 'com.ruoyi.base.controller.BaseStudentClassController.addSave()', 'POST', 1, 'admin', '研发部门', '/base/student_class/add', '127.0.0.1', '内网IP', '{\"classCode\":[\"202402\"],\"className\":[\"一年级二班\"],\"gradeCode\":[\"2024\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-06 10:48:15', 15);
INSERT INTO `sys_oper_log` VALUES (212, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2002\"],\"menuType\":[\"C\"],\"menuName\":[\"课程设置\"],\"url\":[\"/course/teaching_setting\"],\"target\":[\"menuItem\"],\"perms\":[\"course.teaching_setting.view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-06 12:14:22', 36);
INSERT INTO `sys_oper_log` VALUES (213, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeacher()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeacher', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-09 14:55:07', 31426);
INSERT INTO `sys_oper_log` VALUES (214, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeacher()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeacher', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-09 15:02:06', 335159);
INSERT INTO `sys_oper_log` VALUES (215, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-09 15:07:17', 14057);
INSERT INTO `sys_oper_log` VALUES (216, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-09 15:11:47', 6628);
INSERT INTO `sys_oper_log` VALUES (217, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.clearTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/clearTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"yuwen\"],\"courseCode\":[\"yuwen\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'course_code\' in \'where clause\'\r\n### The error may exist in file [C:\\workspace_idea\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\course\\TeachingSettingMapper.xml]\r\n### The error may involve com.ruoyi.course.mapper.TeachingSettingMapper.clearTeaching-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from course_teaching         where season =  ?                       AND grade_code = ?                                 AND course_code = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'course_code\' in \'where clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'course_code\' in \'where clause\'', '2024-09-09 16:00:20', 143);
INSERT INTO `sys_oper_log` VALUES (218, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.clearTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/clearTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'array\'.  Return value (1) was not iterable.', '2024-09-09 16:46:20', 77);
INSERT INTO `sys_oper_log` VALUES (219, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.clearTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/clearTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', NULL, 1, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter \'array\' not found. Available parameters are [arg0, collection, list]', '2024-09-09 16:51:27', 81);
INSERT INTO `sys_oper_log` VALUES (220, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.clearTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/clearTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-09 16:56:47', 102);
INSERT INTO `sys_oper_log` VALUES (221, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.clearTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/clearTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-09 16:59:43', 7);
INSERT INTO `sys_oper_log` VALUES (222, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.clearTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/clearTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-09 17:01:14', 89);
INSERT INTO `sys_oper_log` VALUES (223, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2058\"],\"menuType\":[\"C\"],\"menuName\":[\"设置课程\"],\"url\":[\"/course/teaching_setting/setting_course\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 13:09:17', 169);
INSERT INTO `sys_oper_log` VALUES (224, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2059\"],\"parentId\":[\"2058\"],\"menuType\":[\"C\"],\"menuName\":[\"设置课程\"],\"url\":[\"/course/teaching_setting/setting_course\"],\"target\":[\"menuItem\"],\"perms\":[\"course.teaching_setting.edit\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 13:09:47', 22);
INSERT INTO `sys_oper_log` VALUES (225, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2059', '127.0.0.1', '内网IP', '2059', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 13:50:44', 245);
INSERT INTO `sys_oper_log` VALUES (226, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"null\"],\"courseCode\":[\"yuwen\"]}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'course_code\' in \'class com.ruoyi.course.domain.TeachingSettingModel\'', '2024-09-10 13:50:54', 34);
INSERT INTO `sys_oper_log` VALUES (227, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"null\"],\"courseCode\":[\"yuwen\"]}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'course_code\' in \'class com.ruoyi.course.domain.TeachingSettingModel\'', '2024-09-10 13:53:55', 47139);
INSERT INTO `sys_oper_log` VALUES (228, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"null\"],\"courseCode\":[\"yuwen\"]}', NULL, 1, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'ci.course_code = \'yuwen\'\n            bt.teacher_code = \'null\' \n        GROUP BY \' at line 7\r\n### The error may exist in file [C:\\workspace_idea\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\course\\TeachingSettingMapper.xml]\r\n### The error may involve com.ruoyi.course.mapper.TeachingSettingMapper.selectTeachingSettingList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select bg.grade_name,bg.grade_code,course_name,ci.course_code,teacher_name,ct.teacher_code,ci.season from base_grade bg         left join course_info ci on bg.grade_code=ci.grade_code         left join course_base cb on cb.course_code=ci.course_code         left join course_teaching ct on ct.course_id=ci.id         left join base_teacher bt on bt.teacher_code=ct.teacher_code          WHERE ci.grade_code = ?             ci.course_code = ?             bt.teacher_code = ?          GROUP BY bg.grade_code,ci.course_code,ct.teacher_code,ci.season\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'ci.course_code = \'yuwen\'\n            bt.teacher_code = \'null\' \n        GROUP BY \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'ci.course_code = \'yuwen\'\n            bt.teacher_code = \'null\' \n        GROUP BY \' at line 7', '2024-09-10 13:58:04', 11452);
INSERT INTO `sys_oper_log` VALUES (229, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"null\"],\"courseCode\":[\"yuwen\"]}', NULL, 1, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'ci.course_code = \'yuwen\'\n            bt.teacher_code = \'null\' \n        GROUP BY \' at line 7\r\n### The error may exist in file [C:\\workspace_idea\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\course\\TeachingSettingMapper.xml]\r\n### The error may involve com.ruoyi.course.mapper.TeachingSettingMapper.selectTeachingSettingList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select bg.grade_name,bg.grade_code,course_name,ci.course_code,teacher_name,ct.teacher_code,ci.season from base_grade bg         left join course_info ci on bg.grade_code=ci.grade_code         left join course_base cb on cb.course_code=ci.course_code         left join course_teaching ct on ct.course_id=ci.id         left join base_teacher bt on bt.teacher_code=ct.teacher_code          WHERE ci.grade_code = ?             ci.course_code = ?             bt.teacher_code = ?          GROUP BY bg.grade_code,ci.course_code,ct.teacher_code,ci.season\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'ci.course_code = \'yuwen\'\n            bt.teacher_code = \'null\' \n        GROUP BY \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'ci.course_code = \'yuwen\'\n            bt.teacher_code = \'null\' \n        GROUP BY \' at line 7', '2024-09-10 14:09:31', 66518);
INSERT INTO `sys_oper_log` VALUES (230, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', NULL, 1, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'ci.course_code = \'yuwen\' \n        GROUP BY bg.grade_code,ci.course_code,ct.teach\' at line 7\r\n### The error may exist in file [C:\\workspace_idea\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\course\\TeachingSettingMapper.xml]\r\n### The error may involve com.ruoyi.course.mapper.TeachingSettingMapper.selectTeachingSettingList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select bg.grade_name,bg.grade_code,course_name,ci.course_code,teacher_name,ct.teacher_code,ci.season from base_grade bg         left join course_info ci on bg.grade_code=ci.grade_code         left join course_base cb on cb.course_code=ci.course_code         left join course_teaching ct on ct.course_id=ci.id         left join base_teacher bt on bt.teacher_code=ct.teacher_code          WHERE ci.grade_code = ?             ci.course_code = ?          GROUP BY bg.grade_code,ci.course_code,ct.teacher_code,ci.season\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'ci.course_code = \'yuwen\' \n        GROUP BY bg.grade_code,ci.course_code,ct.teach\' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'ci.course_code = \'yuwen\' \n        GROUP BY bg.grade_code,ci.course_code,ct.teach\' at line 7', '2024-09-10 14:13:35', 29685);
INSERT INTO `sys_oper_log` VALUES (231, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 14:21:42', 28479);
INSERT INTO `sys_oper_log` VALUES (232, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 14:28:22', 6782);
INSERT INTO `sys_oper_log` VALUES (233, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 14:29:19', 9);
INSERT INTO `sys_oper_log` VALUES (234, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 14:59:56', 165);
INSERT INTO `sys_oper_log` VALUES (235, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:01:50', 120);
INSERT INTO `sys_oper_log` VALUES (236, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:03:45', 165);
INSERT INTO `sys_oper_log` VALUES (237, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:11:52', 169);
INSERT INTO `sys_oper_log` VALUES (238, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 15:12:11', 6);
INSERT INTO `sys_oper_log` VALUES (239, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:14:55', 187);
INSERT INTO `sys_oper_log` VALUES (240, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'course_code\' in \'field list\'\r\n### The error may exist in file [C:\\workspace_idea\\RuoYi\\ruoyi-admin\\target\\classes\\mapper\\course\\TeachingSettingMapper.xml]\r\n### The error may involve com.ruoyi.course.mapper.TeachingSettingMapper.setTeaching-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into course_teaching          ( course_id,             course_code,             teacher_code,             grade_code,             season )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'course_code\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'course_code\' in \'field list\'', '2024-09-10 15:15:07', 230);
INSERT INTO `sys_oper_log` VALUES (241, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:24:05', 154);
INSERT INTO `sys_oper_log` VALUES (242, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', NULL, 1, 'nested exception is org.apache.ibatis.executor.ExecutorException: Error getting generated key or setting result to parameter object. Cause: org.apache.ibatis.executor.ExecutorException: No setter found for the keyProperty \'id\' in \'com.ruoyi.course.domain.TeachingSettingModel\'.', '2024-09-10 15:24:08', 86);
INSERT INTO `sys_oper_log` VALUES (243, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.clearTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/clearTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 15:24:31', 19);
INSERT INTO `sys_oper_log` VALUES (244, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:26:21', 17);
INSERT INTO `sys_oper_log` VALUES (245, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', NULL, 1, 'nested exception is org.apache.ibatis.executor.ExecutorException: Error getting generated key or setting result to parameter object. Cause: org.apache.ibatis.executor.ExecutorException: No setter found for the keyProperty \'id\' in \'com.ruoyi.course.domain.TeachingSettingModel\'.', '2024-09-10 15:27:15', 50678);
INSERT INTO `sys_oper_log` VALUES (246, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.clearTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/clearTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 15:29:46', 113);
INSERT INTO `sys_oper_log` VALUES (247, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:29:51', 24);
INSERT INTO `sys_oper_log` VALUES (248, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:30:39', 16);
INSERT INTO `sys_oper_log` VALUES (249, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T003\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 15:31:53', 62926);
INSERT INTO `sys_oper_log` VALUES (250, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.clearTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/clearTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T003\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 15:36:09', 108);
INSERT INTO `sys_oper_log` VALUES (251, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:36:14', 16);
INSERT INTO `sys_oper_log` VALUES (252, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:40:03', 140);
INSERT INTO `sys_oper_log` VALUES (253, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:52:55', 152);
INSERT INTO `sys_oper_log` VALUES (254, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:56:28', 175);
INSERT INTO `sys_oper_log` VALUES (255, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 15:58:24', 149);
INSERT INTO `sys_oper_log` VALUES (256, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:04:49', 192);
INSERT INTO `sys_oper_log` VALUES (257, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 16:05:22', 37);
INSERT INTO `sys_oper_log` VALUES (258, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:05:29', 27);
INSERT INTO `sys_oper_log` VALUES (259, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 16:05:35', 25);
INSERT INTO `sys_oper_log` VALUES (260, '课程信息', 1, 'com.ruoyi.course.controller.CourseInfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/course/info/add', '127.0.0.1', '内网IP', '{\"courseCode\":[\"yingyu\"],\"gradeCode\":[\"2024\"],\"season\":[\"202401\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 16:14:56', 21);
INSERT INTO `sys_oper_log` VALUES (261, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:22:19', 148);
INSERT INTO `sys_oper_log` VALUES (262, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 16:22:36', 8314);
INSERT INTO `sys_oper_log` VALUES (263, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:22:36', 6);
INSERT INTO `sys_oper_log` VALUES (264, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:24:19', 16);
INSERT INTO `sys_oper_log` VALUES (265, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 16:29:24', 301625);
INSERT INTO `sys_oper_log` VALUES (266, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:29:24', 9);
INSERT INTO `sys_oper_log` VALUES (267, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:30:47', 147);
INSERT INTO `sys_oper_log` VALUES (268, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 16:30:55', 6696);
INSERT INTO `sys_oper_log` VALUES (269, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:30:55', 9);
INSERT INTO `sys_oper_log` VALUES (270, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:31:14', 9);
INSERT INTO `sys_oper_log` VALUES (271, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 16:31:39', 20503);
INSERT INTO `sys_oper_log` VALUES (272, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:31:39', 8);
INSERT INTO `sys_oper_log` VALUES (273, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:31:49', 12);
INSERT INTO `sys_oper_log` VALUES (274, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T004\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 16:31:53', 34);
INSERT INTO `sys_oper_log` VALUES (275, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:31:53', 6);
INSERT INTO `sys_oper_log` VALUES (276, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.clearTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/clearTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 16:41:42', 13);
INSERT INTO `sys_oper_log` VALUES (277, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:41:47', 9);
INSERT INTO `sys_oper_log` VALUES (278, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 16:42:10', 57);
INSERT INTO `sys_oper_log` VALUES (279, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:42:10', 18);
INSERT INTO `sys_oper_log` VALUES (280, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:42:21', 21);
INSERT INTO `sys_oper_log` VALUES (281, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 16:42:24', 32);
INSERT INTO `sys_oper_log` VALUES (282, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:42:24', 5);
INSERT INTO `sys_oper_log` VALUES (283, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:43:21', 8);
INSERT INTO `sys_oper_log` VALUES (284, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:46:09', 142);
INSERT INTO `sys_oper_log` VALUES (285, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:49:42', 211);
INSERT INTO `sys_oper_log` VALUES (286, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:50:55', 196);
INSERT INTO `sys_oper_log` VALUES (287, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:53:50', 10);
INSERT INTO `sys_oper_log` VALUES (288, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 16:55:00', 401);
INSERT INTO `sys_oper_log` VALUES (289, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 17:01:37', 242);
INSERT INTO `sys_oper_log` VALUES (290, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T002\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 17:04:20', 311);
INSERT INTO `sys_oper_log` VALUES (291, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 17:04:51', 56);
INSERT INTO `sys_oper_log` VALUES (292, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"shuxue\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 17:04:59', 18);
INSERT INTO `sys_oper_log` VALUES (293, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"yuwen\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 17:07:26', 145);
INSERT INTO `sys_oper_log` VALUES (294, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"shuxue\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 17:07:34', 12);
INSERT INTO `sys_oper_log` VALUES (295, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"shuxue\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 17:07:40', 57);
INSERT INTO `sys_oper_log` VALUES (296, '设置教师和课程界面', 2, 'com.ruoyi.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"yingyu\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 17:07:49', 17);
INSERT INTO `sys_oper_log` VALUES (297, '教授信息', 2, 'com.ruoyi.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T003\"],\"courseCode\":[\"yingyu\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 17:07:52', 34);
INSERT INTO `sys_oper_log` VALUES (298, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2004\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"课程\"],\"url\":[\"/course/base\"],\"target\":[\"menuItem\"],\"perms\":[\"course:base:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 17:08:37', 25);
INSERT INTO `sys_oper_log` VALUES (299, '教授信息', 2, 'com.laohai.course.controller.TeachingSettingController.clearTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/clearTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T001\"],\"courseCode\":[\"shuxue\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 22:22:34', 107);
INSERT INTO `sys_oper_log` VALUES (300, '设置教师和课程界面', 2, 'com.laohai.course.controller.TeachingSettingController.settingCourse()', 'GET', 1, 'admin', '研发部门', '/course/teaching_setting/settingCourse/', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"courseCode\":[\"shuxue\"]}', '\"course/teaching_setting/setting_course\"', 0, NULL, '2024-09-10 22:22:39', 9);
INSERT INTO `sys_oper_log` VALUES (301, '教授信息', 2, 'com.laohai.course.controller.TeachingSettingController.setTeaching()', 'POST', 1, 'admin', '研发部门', '/course/teaching_setting/setTeaching', '127.0.0.1', '内网IP', '{\"gradeCode\":[\"2024\"],\"teacherCode\":[\"T006\"],\"courseCode\":[\"shuxue\"]}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-09-10 22:22:42', 39);
INSERT INTO `sys_oper_log` VALUES (302, '用户管理', 2, 'com.laohai.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"105\"],\"userName\":[\"老海\"],\"dept.deptName\":[\"测试部门\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"2\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 22:37:39', 228);
INSERT INTO `sys_oper_log` VALUES (303, '部门管理', 2, 'com.laohai.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"教务处\"],\"deptName\":[\"教导中心\"],\"orderNum\":[\"1\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 23:19:42', 173);
INSERT INTO `sys_oper_log` VALUES (304, '部门管理', 2, 'com.laohai.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"教务处\"],\"deptName\":[\"语文教研组\"],\"orderNum\":[\"1\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 23:19:59', 43);
INSERT INTO `sys_oper_log` VALUES (305, '部门管理', 2, 'com.laohai.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"105\"],\"parentId\":[\"101\"],\"parentName\":[\"教务处\"],\"deptName\":[\"数学教研组\"],\"orderNum\":[\"3\"],\"leader\":[\"老海\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 23:20:16', 46);
INSERT INTO `sys_oper_log` VALUES (306, '部门管理', 2, 'com.laohai.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"教务处\"],\"deptName\":[\"语文教研组\"],\"orderNum\":[\"1\"],\"leader\":[\"川川\"],\"phone\":[\"15888888888\"],\"email\":[\"cc@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 23:20:35', 42);
INSERT INTO `sys_oper_log` VALUES (307, '部门管理', 2, 'com.laohai.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"105\"],\"parentId\":[\"101\"],\"parentName\":[\"教务处\"],\"deptName\":[\"数学教研组\"],\"orderNum\":[\"3\"],\"leader\":[\"老海\"],\"phone\":[\"15888888888\"],\"email\":[\"laohai@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 23:20:43', 40);
INSERT INTO `sys_oper_log` VALUES (308, '部门管理', 2, 'com.laohai.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"吉祥小学\"],\"deptName\":[\"教务处\"],\"orderNum\":[\"1\"],\"leader\":[\"单老师\"],\"phone\":[\"15888888888\"],\"email\":[\"sls@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 23:20:58', 55);
INSERT INTO `sys_oper_log` VALUES (309, '通知公告', 3, 'com.laohai.web.controller.system.SysNoticeController.remove()', 'POST', 1, 'admin', '研发部门', '/system/notice/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 23:21:49', 14);
INSERT INTO `sys_oper_log` VALUES (310, '通知公告', 2, 'com.laohai.web.controller.system.SysNoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"2\"],\"noticeTitle\":[\"维护通知：2018-07-01 系统凌晨维护\"],\"noticeType\":[\"1\"],\"noticeContent\":[\"维护内容\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 23:22:04', 51);
INSERT INTO `sys_oper_log` VALUES (311, '通知公告', 2, 'com.laohai.web.controller.system.SysNoticeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/notice/edit', '127.0.0.1', '内网IP', '{\"noticeId\":[\"1\"],\"noticeTitle\":[\"温馨提醒：2018-07-01 新版本发布啦\"],\"noticeType\":[\"2\"],\"noticeContent\":[\"新版本内容\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-09-10 23:22:12', 17);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '校长', 1, '0', 'admin', '2024-09-04 17:38:49', 'admin', '2024-09-05 10:06:20', '');
INSERT INTO `sys_post` VALUES (2, 'se', '主任', 2, '0', 'admin', '2024-09-04 17:38:49', 'admin', '2024-09-05 10:06:29', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-09-04 17:38:49', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-09-04 17:38:49', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2024-09-04 17:38:49', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2024-09-04 17:38:49', 'admin', '2024-09-05 10:11:29', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
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
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '老海', '00', 'laohai@laohaicode.com', '15888888888', '0', '', '63fa883fe315163ee94c502a9088de4e', '63e443', '0', '0', '127.0.0.1', '2024-09-10 23:18:03', '2024-09-06 09:39:24', 'admin', '2024-09-04 17:38:49', '', '2024-09-10 23:18:03', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'laohai', '老海', '00', 'laohai@laohaicode.com', '15666666666', '0', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', NULL, NULL, 'admin', '2024-09-04 17:38:49', 'admin', '2024-09-10 22:37:39', '测试员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '在线用户记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
