/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : db6

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2021-07-04 21:57:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ou_fk1` (`uid`),
  CONSTRAINT `ou_fk1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('1', 'hm001', '1');
INSERT INTO `orderlist` VALUES ('2', 'hm002', '1');
INSERT INTO `orderlist` VALUES ('3', 'hm003', '2');
INSERT INTO `orderlist` VALUES ('4', 'hm004', '2');
INSERT INTO `orderlist` VALUES ('5', 'hm001', '1');
INSERT INTO `orderlist` VALUES ('6', 'hm002', '1');
INSERT INTO `orderlist` VALUES ('7', 'hm003', '2');
INSERT INTO `orderlist` VALUES ('8', 'hm004', '2');
INSERT INTO `orderlist` VALUES ('10', 'hm001', '1');
INSERT INTO `orderlist` VALUES ('11', 'hm002', '1');
INSERT INTO `orderlist` VALUES ('12', 'hm003', '2');
INSERT INTO `orderlist` VALUES ('13', 'hm004', '2');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `school` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张三', '23', '男', '95', '大学');
INSERT INTO `student` VALUES ('2', '李四', '24', '男', '98', '中学');
INSERT INTO `student` VALUES ('3', '王五', '25', '女', '100', '小学');
INSERT INTO `student` VALUES ('4', '赵六', '26', '女', '90', '大学');
INSERT INTO `student` VALUES ('5', '张天', '27', '男', null, '中学');
INSERT INTO `student` VALUES ('6', '田七', '21', '女', '80', '小学');
INSERT INTO `student` VALUES ('7', '邓九', '22', '男', '76', '大学');
INSERT INTO `student` VALUES ('8', '钱大', '19', '女', '78', '中学');
INSERT INTO `student` VALUES ('9', '孙时', '20', '男', '96', '小学');
INSERT INTO `student` VALUES ('10', '张思', '29', '男', '44', '幼儿园');
INSERT INTO `student` VALUES ('11', '李沁', '18', '女', '33', '大学');
INSERT INTO `student` VALUES ('12', '赵海', '17', '男', '59', '大学');
INSERT INTO `student` VALUES ('13', '周海', '29', '女', '66', '幼儿园');
INSERT INTO `student` VALUES ('14', '拉布拉多', '77', '未知', '75', '中学');
INSERT INTO `student` VALUES ('15', '欧阳晴天', '66', '未知', '66', '小学');
INSERT INTO `student` VALUES ('16', '诸葛孔明', '34', '男', null, '中学');
INSERT INTO `student` VALUES ('17', '司马海', '52', '女', '59', '大学');
INSERT INTO `student` VALUES ('18', '落拓', '66', '男', '58', '幼儿园');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张三');
INSERT INTO `user` VALUES ('2', '李四');
