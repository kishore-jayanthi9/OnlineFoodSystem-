/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - onlinefood
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlinefood` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `onlinefood`;

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` int(100) DEFAULT NULL,
  `restaurant` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `items` */

insert  into `items`(`id`,`name`,`price`,`restaurant`) values (5,'Chicken Biryani',150,'Paradise'),(6,'Veg Birybani',150,'Bawarchi'),(7,'Chicken Biryani',250,'AbsoluteBarbecue');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `quan` int(50) DEFAULT NULL,
  `total` int(50) DEFAULT NULL,
  `cno` varchar(50) DEFAULT NULL,
  `ccv` varchar(50) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `statuss` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `sid` varchar(50) DEFAULT NULL,
  `restaurant` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`id`,`name`,`quan`,`total`,`cno`,`ccv`,`user`,`statuss`,`type`,`sid`,`restaurant`) values (5,'Chicken Biryani',3,450,NULL,NULL,'nikilp306@gmail.com','Conform','Cash on Delivery','1122','Paradise'),(6,'Veg Birybani',3,450,'123456','123','nikilp306@gmail.com','Conform','Card','1122','Bawarchi'),(7,'Chicken Biryani',3,750,NULL,NULL,'nikilp306@gmail.com','Sent','Cash on Delivery','1122','AbsoluteBarbecue');

/*Table structure for table `serviceprovider` */

DROP TABLE IF EXISTS `serviceprovider`;

CREATE TABLE `serviceprovider` (
  `id` int(45) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `gen` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1137 DEFAULT CHARSET=latin1;

/*Data for the table `serviceprovider` */

insert  into `serviceprovider`(`id`,`username`,`password`,`email`,`address`,`gen`,`mobile`) values (1135,'ramu','123','ramu.1000projects@gmail.com','hyd','Male','9052016340'),(1136,'ramu','123','ramu@gmail.com','hyderabad','Male','9052016340');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `password1` varchar(40) DEFAULT NULL,
  `gen` varchar(40) DEFAULT NULL,
  `dt` varchar(40) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `sid` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`,`email`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password1`,`gen`,`dt`,`mobile`,`email`,`address`,`sid`) values (3,'nikith','123','Male','1999-01-01','9988774455','nikilp306@gmail.com','hyd','1122');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
