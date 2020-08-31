/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50523
Source Host           : localhost:3306
Source Database       : salarydb

Target Server Type    : MYSQL
Target Server Version : 50523
File Encoding         : 65001

Date: 2013-07-03 20:47:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Director` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Number` int(16) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('ks001', '经理室', '赢政', '10');
INSERT INTO `department` VALUES ('ks002', '财务室', '刘邦', '6');
INSERT INTO `department` VALUES ('ks003', '军机部', '李鸿章', '6');
INSERT INTO `department` VALUES ('ks004', '外交部', '张仪', '8');
INSERT INTO `department` VALUES ('ks005', '技术科', '朱元璋', '10');
INSERT INTO `department` VALUES ('ks006', '董事会', '李世民', '10');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `ID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `sex` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(6) NOT NULL,
  `department` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('0001', '赢政', '男', '37', '经理室', '经理', '10086', '0201-01-01 00:00:00', '咸阳');
INSERT INTO `employee` VALUES ('0002', '刘邦', '男', '40', '技术科', '技术长', '10087910', '2001-05-06 00:00:00', '长安');
INSERT INTO `employee` VALUES ('0003', '武则天', '女', '30', '财务室', '经理', '10088', '1999-08-07 00:00:00', '长安');
INSERT INTO `employee` VALUES ('0004', '刘秀', '男', '46', '军机部', '副部长', '123548788', '2013-05-07 00:00:00', '桂林');
INSERT INTO `employee` VALUES ('0005', '西施', '女', '23', '财务室', '会计', '10089', '2001-02-03 00:00:00', '越国');
INSERT INTO `employee` VALUES ('0006', '李清照', '女', '25', '财务室', '出纳', '125478', '2012-03-04 00:00:00', '宋国');
INSERT INTO `employee` VALUES ('0007', '杨玉环', '女', '29', '财务室', '会计', '125478', '2010-02-04 00:00:00', '长安');
INSERT INTO `employee` VALUES ('0008', '孙权', '男', '35', '外交部', '部长', '150478', '2005-05-04 00:00:00', '江东');
INSERT INTO `employee` VALUES ('0009', '李世民', '男', '54', '董事会', '会长', '100865', '1998-05-08 00:00:00', '西安');
INSERT INTO `employee` VALUES ('0010', '项羽', '男', '40', '经理室', '副经理', '1008670', '2000-02-05 00:00:00', '彭城');
INSERT INTO `employee` VALUES ('0011', '李鸿章', '男', '52', '军机部', '部长', '1008699', '2001-05-08 00:00:00', '北京');
INSERT INTO `employee` VALUES ('0012', '张仪', '男', '44', '外交部', '部长', '10089', '2002-02-04 00:00:00', '魏国');
INSERT INTO `employee` VALUES ('0013', '朱元璋', '男', '35', '技术科', '部长', '100896', '2013-05-07 00:00:00', '南京');
INSERT INTO `employee` VALUES ('0014', '貂蝉', '女', '25', '经理室', '助理', '10086972', '2005-05-04 00:00:00', '洛阳');
INSERT INTO `employee` VALUES ('0015', '李渊', '男', '55', '董事会', '董事', '25897', '2001-02-05 00:00:00', '长安');

-- ----------------------------
-- Table structure for `salary`
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `salaryID` int(4) NOT NULL AUTO_INCREMENT,
  `ID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basepay` int(10) DEFAULT NULL,
  `welfare` int(10) DEFAULT NULL,
  `reward` int(10) DEFAULT NULL,
  `insurance` int(10) DEFAULT NULL,
  `funds` int(10) DEFAULT NULL,
  `month` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`salaryID`,`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES ('1', '0001', '赢政', '3000', '100', '100', '100', '500', '1月', '未结算');
INSERT INTO `salary` VALUES ('13', '0002', '刘邦', '3000', '200', '100', '100', '400', '1月', '未结算');
INSERT INTO `salary` VALUES ('15', '0003', '武则天', '2500', '100', '200', '100', '300', '1月', '未结算');
INSERT INTO `salary` VALUES ('16', '0004', '刘秀', '2900', '100', '150', '250', '200', '1月', '未结算');
INSERT INTO `salary` VALUES ('17', '0005', '西施', '2800', '100', '100', '100', '300', '1月', '未结算');
INSERT INTO `salary` VALUES ('18', '0006', '李清照', '2700', '120', '150', '100', '300', '1月', '未结算');
INSERT INTO `salary` VALUES ('19', '0007', '杨玉环', '2680', '200', '150', '100', '300', '1月', '未结算');
INSERT INTO `salary` VALUES ('20', '0008', '孙权', '2900', '100', '200', '100', '500', '1月', '未结算');
INSERT INTO `salary` VALUES ('21', '0009', '李世民', '2870', '200', '100', '100', '300', '1月', '未结算');
INSERT INTO `salary` VALUES ('22', '0010', '项羽', '2600', '200', '100', '100', '300', '1月', '未结算');
INSERT INTO `salary` VALUES ('23', '0011', '李鸿章', '2800', '200', '100', '100', '300', '1月', '未结算');
INSERT INTO `salary` VALUES ('24', '0012', '张仪', '2900', '200', '150', '100', '500', '1月', '未结算');
INSERT INTO `salary` VALUES ('25', '0013', '朱元璋', '2600', '250', '200', '100', '400', '1月', '未结算');
INSERT INTO `salary` VALUES ('26', '0001', '赢政', '3000', '100', '200', '100', '300', '2月', '未结算');
INSERT INTO `salary` VALUES ('27', '0001', '赢政', '3000', '250', '200', '100', '400', '3月', '未结算');
INSERT INTO `salary` VALUES ('28', '0002', '刘邦', '3000', '250', '150', '100', '400', '2月', '未结算');
INSERT INTO `salary` VALUES ('29', '0002', '刘邦', '3000', '300', '150', '100', '500', '3月', '未结算');
INSERT INTO `salary` VALUES ('30', '0003', '武则天', '2900', '200', '150', '100', '300', '2月', '未结算');
INSERT INTO `salary` VALUES ('31', '0003', '武则天', '2800', '250', '120', '100', '500', '3月', '未结算');
INSERT INTO `salary` VALUES ('33', '0004', '刘秀', '2580', '500', '200', '100', '300', '2月', '未结算');
INSERT INTO `salary` VALUES ('35', '0004', '刘秀', '2900', '200', '150', '100', '300', '3月', '未结算');
INSERT INTO `salary` VALUES ('37', '0005', '西施', '2900', '200', '100', '100', '300', '2月', '未结算');
INSERT INTO `salary` VALUES ('39', '0005', '西施', '2800', '200', '150', '100', '300', '3月', '未结算');
INSERT INTO `salary` VALUES ('40', '0006', '李清照', '2900', '200', '100', '100', '300', '2月', '未结算');
INSERT INTO `salary` VALUES ('41', '0006', '李清照', '2900', '200', '100', '100', '300', '3月', '未结算');

-- ----------------------------
-- Table structure for `userlist`
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist` (
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userlist
-- ----------------------------
INSERT INTO `userlist` VALUES ('管理员', 'admin', '123456');
INSERT INTO `userlist` VALUES ('管理员', 'quan', '1');
INSERT INTO `userlist` VALUES ('管理员', 'wufeng', '123456');

-- ----------------------------
-- Table structure for `view_salary`
-- ----------------------------
DROP TABLE IF EXISTS `view_salary`;
CREATE TABLE `view_salary` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `工号` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `姓名` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `部门` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `职位` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `总工资` int(10) DEFAULT NULL,
  `月份` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `备注` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of view_salary
-- ----------------------------
INSERT INTO `view_salary` VALUES ('1', '0001', '赢政', '经理室', '经理', '2600', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('9', '0002', '刘邦', '技术室', '技术长', '2800', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('11', '0003', '武则天', '财务室', '经理', '2400', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('12', '0004', '刘秀', '军机部', '大王', '2700', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('13', '0005', '西施', '财务室', '会计', '2600', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('14', '0006', '李清照', '财务室', '出纳', '2570', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('15', '0007', '杨玉环', '财务室', '会计', '2630', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('16', '0008', '孙权', '外交部', '部长', '2600', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('17', '0009', '李世民', '董事会', '会长', '2770', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('18', '0010', '项羽', '经理室', '副经理', '2500', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('19', '0011', '李鸿章', '军机部', '部长', '2700', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('20', '0012', '张仪', '外交部', '部长', '2650', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('21', '0013', '朱元璋', '技术科', '部长', '2550', '1月', '未结算');
INSERT INTO `view_salary` VALUES ('22', '0001', '赢政', '经理室', '经理', '2900', '2月', '未结算');
INSERT INTO `view_salary` VALUES ('23', '0001', '赢政', '经理室', '经理', '2950', '3月', '未结算');
INSERT INTO `view_salary` VALUES ('24', '0002', '刘邦', '技术室', '技术长', '2900', '2月', '未结算');
INSERT INTO `view_salary` VALUES ('25', '0002', '刘邦', '技术室', '技术长', '2850', '3月', '未结算');
INSERT INTO `view_salary` VALUES ('26', '0003', '武则天', '财务室', '经理', '2850', '2月', '未结算');
INSERT INTO `view_salary` VALUES ('27', '0003', '武则天', '财务室', '经理', '2570', '3月', '未结算');
INSERT INTO `view_salary` VALUES ('35', '0004', '刘秀', '军机部', '副部长', '2850', '3月', '未结算');
INSERT INTO `view_salary` VALUES ('36', '0004', '刘秀', '军机部', '副部长', '2750', '2月', '未结算');
INSERT INTO `view_salary` VALUES ('37', '0005', '西施', '财务室', '会计', '2800', '2月', '未结算');
INSERT INTO `view_salary` VALUES ('39', '0005', '西施', '财务室', '会计', '2750', '3月', '未结算');
INSERT INTO `view_salary` VALUES ('40', '0006', '李清照', '财务室', '出纳', '2800', '2月', '未结算');
INSERT INTO `view_salary` VALUES ('41', '0006', '李清照', '财务室', '出纳', '2800', '3月', '未结算');
