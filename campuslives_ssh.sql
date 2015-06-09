/*
Navicat MySQL Data Transfer

Source Server         : localhost_3309
Source Server Version : 50541
Source Host           : localhost:3309
Source Database       : campuslives_ssh

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-06-09 09:11:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `follownote`
-- ----------------------------
DROP TABLE IF EXISTS `follownote`;
CREATE TABLE `follownote` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `nid` int(11) NOT NULL,
  `followcontent` varchar(200) NOT NULL,
  `ftime` datetime NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `uid` (`uid`),
  KEY `nid` (`nid`),
  CONSTRAINT `follownote_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`),
  CONSTRAINT `follownote_ibfk_2` FOREIGN KEY (`nid`) REFERENCES `note` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follownote
-- ----------------------------

-- ----------------------------
-- Table structure for `note`
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(200) NOT NULL,
  `ntime` datetime NOT NULL,
  PRIMARY KEY (`nid`),
  KEY `uid` (`uid`),
  CONSTRAINT `note_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note
-- ----------------------------
INSERT INTO `note` VALUES ('8', '6', '临时农场�?��', '�?��啦！@@', '2013-02-02 00:00:00');
INSERT INTO `note` VALUES ('9', '6', '那年以后 你走�?, '没有办法�?, '2015-05-25 13:09:07');
INSERT INTO `note` VALUES ('10', '6', '农场�?���?, '欢迎大家来看看~', '2015-05-25 13:44:25');
INSERT INTO `note` VALUES ('11', '6', '农场具体位置在哪里？', '在北理工的吗�?, '2015-05-25 15:42:29');
INSERT INTO `note` VALUES ('12', '6', '今天是好天气', '适合去农�?, '2015-05-25 16:17:31');
INSERT INTO `note` VALUES ('13', '6', '好吧 终于做完�?, '大功告成了！！！！哈哈~', '2015-05-25 21:54:51');
INSERT INTO `note` VALUES ('14', '6', '测试农场', '是否可以正常上传', '2015-05-31 19:13:19');
INSERT INTO `note` VALUES ('15', '5', 'fdas', 'ffda', '2015-06-08 10:00:36');
INSERT INTO `note` VALUES ('16', '11', 'fdafda', 'fdasfda', '2015-06-08 10:01:04');
INSERT INTO `note` VALUES ('17', '4', 'wrwre', 'rewrewrew', '2015-06-08 10:01:30');
INSERT INTO `note` VALUES ('18', '7', 'ewqewq', 'ewqewq', '2015-06-24 10:01:47');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(20) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '普�?用户');
INSERT INTO `role` VALUES ('2', '管理�?);
INSERT INTO `role` VALUES ('3', '商家');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `rid` int(11) DEFAULT '1',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `age` tinyint(3) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `role` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '3', 'huigse334', '123456', '1', '2015-05-20', '26', '659174@qq.com');
INSERT INTO `user` VALUES ('1', '4', 'huige334', '6981658', '1', '2015-05-20', '23', '659174@qq.com');
INSERT INTO `user` VALUES ('1', '5', 'huigse334', '123456', '1', '2015-05-20', '26', '659174@qq.com');
INSERT INTO `user` VALUES ('1', '6', 'huige23', '6981658', '1', '2015-05-08', '14', '659174@qq.com');
INSERT INTO `user` VALUES ('1', '7', 'huige234', '6981658', '1', '2015-05-12', '23', '654@qq.com');
INSERT INTO `user` VALUES ('1', '9', 'huige432', '6981658', '1', '2015-05-18', '12', '6981658@qq.com');
INSERT INTO `user` VALUES ('1', '11', 'huige789', '123456', '1', '1997-02-18', '26', '123456@163.com');
DROP TABLE IF EXISTS `lost`;

CREATE TABLE `lost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lostname` varchar(40) NOT NULL,
  `lostername` varchar(40) NOT NULL,
  `address` varchar(80) NOT NULL,
  `tel` varchar(80) NOT NULL,
  `description` varchar(250) NOT NULL,
  `promulgator` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `lost` */

/*Table structure for table `restaurant` */

DROP TABLE IF EXISTS `restaurant`;

CREATE TABLE `restaurant` (
  `Num` int(11) NOT NULL AUTO_INCREMENT,
  `Rname` varchar(50) NOT NULL,
  `images` varchar(100) NOT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`Num`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

/*Data for the table `restaurant` */

insert  into `restaurant`(`Num`,`Rname`,`images`,`price`) values (1,'The Factory工厂餐吧','images/food/image/1.jpg',4.5),(2,'肯德�?,'images/food/image/2.jpg',5),(3,'车仔�?,'images/food/image/3.jpg',4),(4,'猪扒�?,'images/food/image/4.jpg',4),(5,'二饭','images/food/image/5.jpg',4.5),(6,'京苑','images/food/image/6.jpg',5),(7,'豪嘉�?,'images/food/image/7.jpg',5),(8,'�?��','images/food/image/6.jpg',3);
