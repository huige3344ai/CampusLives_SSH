/*
Navicat MySQL Data Transfer

Source Server         : localhost_3309
Source Server Version : 50045
Source Host           : localhost:3309
Source Database       : campuslives_ssh

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-06-22 17:40:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` int(11) NOT NULL auto_increment,
  `rname` varchar(20) NOT NULL,
  PRIMARY KEY  (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '普通用户');
INSERT INTO `role` VALUES ('2', '管理员');
INSERT INTO `role` VALUES ('3', '商家');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `rid` int(11) default '1',
  `id` int(11) NOT NULL auto_increment,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `age` tinyint(3) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `rid` (`rid`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `role` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '3', 'huigse334', '123456', '1', '2015-05-20', '26', '659174@qq.com');
INSERT INTO `user` VALUES ('1', '4', 'huige334', '6981658', '1', '2015-05-20', '23', '659174@qq.com');
INSERT INTO `user` VALUES ('1', '5', 'huigse334', '123456', '1', '2015-05-20', '26', '659174@qq.com');
INSERT INTO `user` VALUES ('1', '6', 'huige23', '6981658', '1', '2015-05-08', '14', '659174@qq.com');
INSERT INTO `user` VALUES ('1', '7', 'huige234', '6981658', '1', '2015-05-12', '23', '654@qq.com');
INSERT INTO `user` VALUES ('1', '9', 'huige432', '6981658', '1', '2015-05-18', '12', '6981658@qq.com');
INSERT INTO `user` VALUES ('1', '10', 'huige789', '123456', '1', '1997-02-18', '26', '123456@163.com');
