/*
SQLyog Community Edition- MySQL GUI v5.22a
Host - 5.0.19-nt : Database - dbattandance
*********************************************************************
Server version : 5.0.19-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `dbattandance`;

USE `dbattandance`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `uname` varchar(100) default NULL,
  `pwd` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`uname`,`pwd`) values ('admin','admin');

/*Table structure for table `attandance` */

DROP TABLE IF EXISTS `attandance`;

CREATE TABLE `attandance` (
  `sname` varchar(100) default NULL,
  `pstatus` varchar(100) default NULL,
  `course` varchar(100) default NULL,
  `sem` varchar(100) default NULL,
  `date` varchar(100) default NULL,
  `tname` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attandance` */

insert  into `attandance`(`sname`,`pstatus`,`course`,`sem`,`date`,`tname`) values 
  ('Mehul','P','B.Tech','SEM 5','2020-09-06 14:25:40','Ms. Himani'),
  ('Ravi','P','B.Tech','SEM 5','2020-09-06 14:25:40','Ms. Himani'),
  ('Parv','A','B.Tech','SEM 5','2020-09-06 14:25:40','Ms. Himani');

/*Table structure for table `attandancenoti` */

DROP TABLE IF EXISTS `attandancenoti`;

CREATE TABLE `attandancenoti` (
  `sname` varchar(100) default NULL,
  `pstatus` varchar(100) default NULL,
  `course` varchar(100) default NULL,
  `sem` varchar(100) default NULL,
  `date` varchar(100) default NULL,
  `tname` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attandancenoti` */

insert  into `attandancenoti`(`sname`,`pstatus`,`course`,`sem`,`date`,`tname`) values ('Mehul','Submit your Assignment by tomorrow.','B-Tech','Sem 5','2020-10-08 14:27:07','Ms. Himani'),('Ravi','Your attandance is short','B.Tech','Sem 5','2020-10-06 16:06:45','Ms. Himani Sharma');

/*Table structure for table `faq` */

DROP TABLE IF EXISTS `faq`;

CREATE TABLE `faq` (
  `faqid` varchar(100) default NULL,
  `name` varchar(100) default NULL,
  `faqdetails` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `faq` */

insert  into `faq`(`faqid`,`name`,`faqdetails`) values ('5002','Attendance Criteria','Minimum Attendance?');

/*Table structure for table `marksdetails` */

DROP TABLE IF EXISTS `marksdetails`;

CREATE TABLE `marksdetails` (
  `tname` varchar(100) default NULL,
  `sname` varchar(100) default NULL,
  `enroll` varchar(100) default NULL,
  `course` varchar(100) default NULL,
  `sem` varchar(100) default NULL,
  `marks` varchar(100) default NULL,
  `aggre` varchar(100) default NULL,
  `attachement` mediumtext,
  `msg_date` varchar(100) default NULL,
  `a7` varchar(100) default NULL,
  `a8` varchar(100) default NULL,
  `a9` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `marksdetails` */

insert  into `marksdetails`(`tname`,`sname`,`enroll`,`course`,`sem`,`marks`,`aggre`,`attachement`,`msg_date`,`a7`,`a8`,`a9`) values
  ('Ms. Himani','Mehul','04520802718','B.Tech','Sem 5','678','A+','attachement_f2016124732.jpg','2020-05-09 16:17:32','55','55','55'),
  ('Ms. Himani','Ravi','04720802718','B.Tech','Sem 5','679','A+','attachement_f2016124732.jpg','2020-05-09 16:17:32','95','65','25');

/*Table structure for table `reply` */

DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `faqid` varchar(100) default NULL,
  `name` varchar(100) default NULL,
  `faqdetails` varchar(100) default NULL,
  `reply` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reply` */

insert  into `reply`(`faqid`,`name`,`faqdetails`,`reply`) values ('5002','Attendance Criteria','Minimum Attendance?','Attendance should be 75% or above.');

/*Table structure for table `signup` */

DROP TABLE IF EXISTS `signup`;

CREATE TABLE `signup` (
  `sid` varchar(100) default NULL,
  `uname` varchar(100) default NULL,
  `pwd` varchar(100) default NULL,
  `fname` varchar(100) default NULL,
  `lname` varchar(100) default NULL,
  `gender` varchar(100) default NULL,
  `dob` varchar(100) default NULL,
  `mob` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `pin` varchar(100) default NULL,
  `course` varchar(100) default NULL,
  `semester` varchar(100) default NULL,
  `tname` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `signup` */

insert  into `signup`(`sid`,`uname`,`pwd`,`fname`,`lname`,`gender`,`dob`,`mob`,`email`,`address`,`pin`,`course`,`semester`,`tname`)
  values ('045','mehul','mehul','Mehul Kumar','Sony','Male','12-05-2020','7982951355','mehul@gmail.com','Shalimar Bagh','110088','CS','Sem 5','Ms. Himani'),
  ('049','ravi','ravi','Ravi','Kumar','Male','01-10-1997','9865322154','ravi@gmail.com','New Delhi','110022','CS','Sem 5','Ms. Himani'),
  ('055','parv','parv','Parv','Dhamija','Male','01-06-2000','9999836563','parv@gmail.com','Pitampura','110005','Civil','SEM-6','Ms. Bhawna Suri');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `sid` varchar(100) default NULL,
  `uname` varchar(100) default NULL,
  `pwd` varchar(100) default NULL,
  `fname` varchar(100) default NULL,
  `lname` varchar(100) default NULL,
  `gender` varchar(100) default NULL,
  `dob` varchar(100) default NULL,
  `mob` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `address` varchar(100) default NULL,
  `pin` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `teacher` */

insert  into `teacher`(`sid`,`uname`,`pwd`,`fname`,`lname`,`gender`,`dob`,`mob`,`email`,`address`,`pin`)
  values ('4002','himani','himani', 'Himani', 'Sharma', 'Female', '14-08-1988', '459652356', 'hs@gmail.com', 'Rani Bagh', '420156'),
  ('4003','Anu','Sharma','anu','anu','Female','06-10-1990','9865322154','anu@gmail.com','Pitampura','852562');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
