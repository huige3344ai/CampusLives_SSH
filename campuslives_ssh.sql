/*
SQLyog v10.2 
MySQL - 5.5.15 : Database - campuslives_ssh
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`campuslives_ssh` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `campuslives_ssh`;

/*Table structure for table `lost` */

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

insert  into `restaurant`(`Num`,`Rname`,`images`,`price`) values (1,'The Factory工厂餐吧','images/food/image/1.jpg',4.5),(2,'肯德基','images/food/image/2.jpg',5),(3,'车仔面','images/food/image/3.jpg',4),(4,'猪扒包','images/food/image/4.jpg',4),(5,'二饭','images/food/image/5.jpg',4.5),(6,'京苑','images/food/image/6.jpg',5),(7,'豪嘉基','images/food/image/7.jpg',5),(8,'一饭','images/food/image/6.jpg',3);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(20) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`rid`,`rname`) values (1,'普通用户'),(2,'管理员'),(3,'商家');

/*Table structure for table `user` */

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`rid`,`id`,`userName`,`password`,`sex`,`birthday`,`age`,`email`) values (1,3,'huigse334','123456','1','2015-05-20',26,'659174@qq.com'),(1,4,'huige334','6981658','1','2015-05-20',23,'659174@qq.com'),(1,5,'huigse334','123456','1','2015-05-20',26,'659174@qq.com'),(1,6,'huige23','6981658','1','2015-05-08',14,'659174@qq.com'),(1,7,'huige234','6981658','1','2015-05-12',23,'654@qq.com'),(1,9,'huige432','6981658','1','2015-05-18',12,'6981658@qq.com'),(1,10,'huige789','123456','1','1997-02-18',26,'123456@163.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
