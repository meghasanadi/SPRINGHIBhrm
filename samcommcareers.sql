CREATE DATABASE  IF NOT EXISTS `db1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db1`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db1
-- ------------------------------------------------------
-- Server version	5.0.15-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `sso_id` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phoneno` varchar(30) NOT NULL,
  `location` varchar(45) default NULL,
  `currentcompany` varchar(45) default NULL,
  `dob` varchar(45) default NULL,
  `content` longblob,
  `description` varchar(2555) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `sso_id` (`sso_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'sam','$2a$10$4eqIF5s/ewJwHK1p8lqlFOEm2QIA0S8g6./Lok.pQxqcxaBZYChRm','Sam','Smith','samy@xyz.com','','','',NULL,NULL),(21,'madhuchoudhary@gmail.com','$2a$10$lYzNktZvOU6qYADhOBpIj.EZe9VZ6vjAwA8LFTTVl8myvNm1aJkR2','madhu','choudhary','9898989898','Bangalore','Samcomm','2018-01-04',NULL,NULL),(22,'meghakf@yahoo.com','$2a$10$vDwOgAVk0TX.VDIs27geKO0wRVf/.bJuO6YaINk313aaSy7r/lPU2','Megha','sanadi','9482566533','Bangalore','Samcomm Technologies','1989-05-26',NULL,NULL),(23,'maya@gmail.com','$2a$10$xa8ZabYkitFSPnvIVZ3itOT2J2MZ7o6pj2AAKWzCbCSI4b/I7./H.','maya','maya','909090909','kkkk','llll','2018-01-05',NULL,NULL),(24,'samee','$2a$10$2YreKg1S2mh67gkbC53SvupZLZgxk4puS6YIrvWQzVUcg/sV1OX3C','erer','erer','er','er','erer','2017-12-08',NULL,NULL),(25,'yemme','$2a$10$199XHdMK.acBBVoS0G1hTuIvOB84h8kVZ60DIFTTKfwFYYROeowWW','yemme','yemme','yemme','yemme','yemme','2018-01-11',NULL,NULL),(26,'kapi','$2a$10$F3kVAU2Ry6rnZ.6BCICHJu7NRl8SRBM8j79zoPCL9V5mZcWa2V8OG','kapi','kapi','kapi','kapi','kapi','2018-01-05',NULL,NULL);
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user_user_profile`
--

DROP TABLE IF EXISTS `app_user_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user_user_profile` (
  `user_id` bigint(20) NOT NULL,
  `user_profile_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`user_id`,`user_profile_id`),
  KEY `FK_USER_PROFILE` (`user_profile_id`),
  CONSTRAINT `FK_APP_USER` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`),
  CONSTRAINT `FK_USER_PROFILE` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user_user_profile`
--

LOCK TABLES `app_user_user_profile` WRITE;
/*!40000 ALTER TABLE `app_user_user_profile` DISABLE KEYS */;
INSERT INTO `app_user_user_profile` VALUES (21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(1,2);
/*!40000 ALTER TABLE `app_user_user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_seeker_application`
--

DROP TABLE IF EXISTS `job_seeker_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_seeker_application` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(20) default NULL,
  `firstname` varchar(45) default NULL,
  `lastname` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `phoneno` varchar(45) default NULL,
  `dob` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `position` varchar(45) default NULL,
  `salary_exp` varchar(45) default NULL,
  `location` varchar(45) default NULL,
  `willingTorellocate` varchar(45) default NULL,
  `relocatelocation` varchar(45) default NULL,
  `pancard` varchar(45) default NULL,
  `curcompany` varchar(45) default NULL,
  `comments` varchar(100) default NULL,
  `Applied` varchar(45) default NULL,
  `date` varchar(45) default NULL,
  `experience` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_seeker_application`
--

LOCK TABLES `job_seeker_application` WRITE;
/*!40000 ALTER TABLE `job_seeker_application` DISABLE KEYS */;
INSERT INTO `job_seeker_application` VALUES (1,'21','madhu','choudhary','madhuchoudhary@gmail.com','9898989898',NULL,NULL,'SAMJID_02',NULL,'Bangalore',NULL,NULL,NULL,'Samcomm',NULL,'Applied','2018-01-11 14:46:06',NULL),(3,'21','madhu','choudhary','madhuchoudhary@gmail.com','9898989898',NULL,NULL,'SAMJID_01',NULL,'Bangalore',NULL,NULL,NULL,'Samcomm',NULL,'Applied','2018-01-11 14:54:30',NULL),(4,'21','madhu','choudhary','madhuchoudhary@gmail.com','9898989898',NULL,NULL,'SAMJID_03',NULL,'Bangalore',NULL,NULL,NULL,'Samcomm',NULL,'Applied','2018-01-11 14:54:54',NULL),(5,'22','Megha','sanadi','meghakf@yahoo.com','9482566533',NULL,NULL,'SAMJID_02',NULL,'Bangalore',NULL,NULL,NULL,'Samcomm Technologies',NULL,'Applied','2018-01-11 14:55:34',NULL),(6,'22','Megha','sanadi','meghakf@yahoo.com','9482566533',NULL,NULL,'SAMJID_01',NULL,'Bangalore',NULL,NULL,NULL,'Samcomm Technologies',NULL,'Applied','2018-01-11 14:55:52',NULL),(9,'22','Megha','sanadi','meghakf@yahoo.com','9482566533',NULL,NULL,'SAMJID_03',NULL,'Bangalore',NULL,NULL,NULL,'Samcomm Technologies',NULL,'Applied','2018-01-11 16:11:04',NULL);
/*!40000 ALTER TABLE `job_seeker_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tbl`
--

DROP TABLE IF EXISTS `job_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_tbl` (
  `id` int(10) NOT NULL auto_increment,
  `job_name` varchar(45) default NULL,
  `date` timestamp NULL default NULL,
  `time` time default NULL,
  `keyskills` varchar(45) default NULL,
  `job_designation` varchar(45) default NULL,
  `job_description` text,
  `description` varchar(2000) default NULL,
  `experience` varchar(45) default NULL,
  `job_type` varchar(45) default NULL,
  `companyname` varchar(45) default NULL,
  `status` varchar(20) default NULL,
  `salary` varchar(45) default NULL,
  `functionalarea` varchar(3000) default NULL,
  `shortdescription` varchar(200) default NULL,
  `jobid` varchar(45) default NULL,
  `education` varchar(100) default NULL,
  `roles` varchar(1000) default NULL,
  `responsiblities` varchar(1000) default NULL,
  `responses` int(10) default NULL,
  `postedBy` varchar(45) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jobid_UNIQUE` (`jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tbl`
--

LOCK TABLES `job_tbl` WRITE;
/*!40000 ALTER TABLE `job_tbl` DISABLE KEYS */;
INSERT INTO `job_tbl` VALUES (1,'System Engineer','2017-12-11 07:46:16',NULL,'Networking, C,C++','Bangalore','Ã?Â¢?Ã?Â¢	SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus','','1-2 years','full time',NULL,'Active','',NULL,'SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus','SAMJID_02',NULL,NULL,NULL,2,'Sam'),(3,'Hadoop Analyst','2018-01-09 13:41:47',NULL,'Hadoop, Hive, Pig, HBase,Scoop,11111','Chennai','Primary Skills (Mandatory):\r\n<li>	Python, C/C++, Strong OOP concepts\r\n<li>	Development of user interface with QT\r\n<li>	Very good in software development and design with a scripting language Python, 4+ years of experience\r\n<li>	Very good in software development and design with 4+ years of experience in C, C++, GUI toolkit like QT(5)\r\n<li>	Strong aptitude\r\n<li>	Knowledge of Design Patterns\r\n<li>	Ability to quickly grasp complex products to understand the different layers of the product.\r\n<li>	Knowledge of coding guidelines and compliance.\r\n<li>	Good written and verbal communication skills\r\n<li>	Experience with Linux Operating system\r\n<li>	\r\nSecondary Skills (Good to have):\r\n<li>	HPC, Multithreading, OpenMP, MPI, CUDA\r\n<li>	Graphics, Geometry\r\n<li>	Familiarity with Agile development processes','SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focusSAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focusSAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus','2-3 years','full time',NULL,'Active','9lpa',NULL,'SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus','SAMJID_01',NULL,NULL,NULL,2,'Sam'),(4,'Hadoop Analyst','2017-12-11 08:07:00',NULL,'Hadoop, Advanced Hadoop','Bangalore','<li>	SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus\r\n<li><br>	brought upon design, development, re<li>engineering, maintenance, support, training and consulting assistance. SAMCOMM renders an \r\no	unflinching support to all level of companies enabling them to vie in their respective fields with IT enabled services precisely to \r\n<li>	accelerate its focus on software testing outsourcing and management. Now Samcomm has educational based solutions as yet another \r\n 	strategic area to unwind innovations prompted by its experience in IT industry spanning 14 yrs.!@#$%%^^&&&***(()\r\n<li>	SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus\r\n<li>	brought upon design, development, re<li>engineering, maintenance, support, training and consulting assistance. SAMCOMM renders an \r\n','','7-11years','Fulltime',NULL,'Active','',NULL,'Short Description(50 word only),Short Description(50 word only),Short Description(50 word only)\r\n\r\n\r\n','SAMJID_03',NULL,NULL,NULL,2,'Sam');
/*!40000 ALTER TABLE `job_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
INSERT INTO `persistent_logins` VALUES ('madhuchoudhary@gmail.com','yTm2n0K9JFc9KFPQwusYbw==','97AiQiiiCm2gUEJXTtNSnA==','2018-01-11 09:15:17');
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_document`
--

DROP TABLE IF EXISTS `user_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_document` (
  `id` bigint(20) NOT NULL auto_increment,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) default NULL,
  `type` varchar(100) NOT NULL,
  `content` longblob NOT NULL,
  `username` varchar(45) default NULL,
  PRIMARY KEY  (`id`),
  KEY `document_user` (`user_id`),
  CONSTRAINT `document_user` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_document`
--

LOCK TABLES `user_document` WRITE;
/*!40000 ALTER TABLE `user_document` DISABLE KEYS */;
INSERT INTO `user_document` VALUES (1,21,'meghakf[2.0].docx','','application/vnd.openxmlformats-officedocument.wordprocessingml.document','PK\0\0\0\0\0!\0񨜢́\0\0͆\0\0\0[Content_Types].xml (\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Օ\̎\ðܣ񏑯(q\ˁ!ԤGɄ񜰜؞Ԗʭ\ڜܜ؟ԉ\ۈ!ڈל\\"E\ҜϜ͜ϜϮ\Ӊ֪õ𠭜ʜظш̴J܅\ƾf/񽋂\nĄi\rdl򜫫t׳\"ʶ!cKD??KɄH̃C_\n\뫁??\܉񩖀oGû.΁0c΁򴍄xۜ͠nϯÜ"ޱ^񜂚4!$Ǣ\Ƚ]Mݱ\❜ɥ@\Ϝ؆??Qh	\˜˕ETI\r缕֖։}SC󼽂B̞͊פmoǇ2􍵜ѦBՍҰ\Ԯt0tصPvҞֻnس\ݩѫΑ??U\΁ӯ??ۗD]9DP??`\ՀI=\"wIyM޵Ԗ\\<ȷ@Jiax\՜ц𤄂 R\0X\ԣrW󍱀:>\蹢\Zٞʂ\ӌ\ؘ͋\t\¹󠜮\Ӝ琚ƙǳYW??߼l򯜰\0\0??0PK\0\0\0\0\0!\0ҜZس\0\0\0N\0\0\0_rels/.rels (\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0̒\܊Aǜࠡ\ɽ7\ܜn\"\Ӝڜ߈·\"\냄ڜ삷̤ھݣ ې\ܞ\絜蝋O֛Û\ԻǼСYՠ؛`G\ࠫxm׋PY\ɛڂg\rGΰino\֯<є|̱ˢⳆA$>\"f3У\\ƈߔڐI	Sϑ\̛??ߜȴWڙǜۙ\rig\5\Ș6_\֎]7\Z~\nf\ݘˉ\ȇao\ٮb*lI\ǲΪ)??l0\ϥݑb͜n6\ᩢ\ֵD??Ŭ	Iʜг|u܃Z^t٢yǯ;!Y,}{󃃳/h>\0\0??0PK\0\0\0\0\0!\0*sӫv\0\0\0\0\0word/_rels/document.xml.rels (\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0̔\̎\ðE??\侱S<ԴRlh񜰜'٤Ʊ\ړ\Ӿ=CE\ڔ\ۀHsޜܹړ\иۖUퟅ?IģŃNM&uӷ\Ƴ\ŭ\n݉\˨ɜن܎\ϜІА	ď\\)kЋv1+\켜ϝZ.45h:ɍUɴЅڔ𜡠0\ⷜ쁦߁,˙ޥ\տѩʳ\ࠜަ\Х\nϦ])\Ѹą/\ʜʖR/\ʔ\؂pg\۴M𞦵ҜZ\Ĕɶŗԑ\淋Õâ??ƏHȔࠫb\֪!ƹ\n\❆\'ܜͶјΒψ؂Nh҉>ʤ??П򝜮??򤷸ʶ\0ݶ\򜙞Д֦\؆ӝ\ԇ1򉁺\ӆ۩ՊµOŜܘ􁰓򠜢\ڿ??ӜZý$֥\߾þȫߌ\r$󟗺#??񄉍ƅHˎ ;Ʌ\ț}򉜰\0??0PK\0\0\0\0\0!\0֘;ќ˷\0\0Q\0\0\0\0word/document.xml\?ڲ\܈ל漇??ԑ??yp_񶜧y8vՎȪگ 	ʨÄ\0JV=??KJIϝ\ȄѤ\0b\˰ĭ޻\޻W??Xʣfٺپުޫ\\)\ۺf\ϵ??\֯??W˜?뺪٫\뙳оķ_??}؛Ԝ;\nѶ?<\㓥\䬾ݿoϖ\ۊ֟ٛm͏ƵR??_ʜ׷\\\\mTGࠜꇜЕ*ͫ??jkͿퟟ?\鴋Սƃ_񠮖򌜣?\ķ̸\ൿ9\ㄦo|oi\ǠϭžҜƜԖi߆).\ƃæ񸲜ŽO۸oܛ\ꔜףeٜľ2ι\Ʋgۭ\䝪\ɽ\ѻbՒ??zŷ͸CќߩFӒ??⎽??\ﾻ\︴ɜބ@˞xijΟ\ꝧFy򜰞ݜࠝ_U*\ުΜ֜^ʋؘ\銥\ߪ??ݢH[ɛáOjĚȜݖࠜݒƖVmW\؛6זހި3P\r\ϴt\ZqΜr\ϳڜܜZؠn󜪽\޺\猟<˜ǵ\Ռ\\ϙ\̽ϵcΝ7ɶLׯо׬ٺV\ꚜ̾\۶]aϚӿ\ēk??Cz{̻\?@ЀO>d6\\ȷm??񇻛\ZŃǜtф͛ʠv#h~wlʜ붊Ⱦا_\"}=??hV\ZP^Oۥ;_\ڜⶅڷKi\鐋\'\̊ǜ\Cͱք!\"gڅM2\n̡\ꗜǺ`ퟶ?۵ɝ??\뜐󵜪h\՜ί}s\\،ٳ\꺣ٙǩ\❉L𫜬А\n\⫝̸᝟p5޸J\濒{S٦\7\ߊ˂ߞΜЇذڜ椯/2Ѱ90\㹪V\ǝ̋Xۜɩضߜᓈہܕ̴CܚÌ\̾^A\ԗppί??0??ӥ\n\짒듢\"Oō𜕨Ũuˏ\쾜֨Ԝ0%4ܽ??ݨҜֲ\󟏈\0͈壮IF\ᆴ,rƉUχrq\狯Ƶ򨜪	nɜﺙ̙LLM\ǱIʘqw׺򾩏ߏVˡ|T7$L??\Z\?I\ٕوғЋBh\ἑʜ"؜͜ؒ,\0\rڜȈB1نԓ6˒K2׳yGֆۿ\㖜r???p\հ̏??˜ّ\rt`r\Z}N!QĜԤƝ\띂4\궜ǀKR\䫼9M0V@\Zi>񌔿w̯#ݝvǺ͜r2;byͣ\خT۝nԞք&\ќけȵؙ??\艛\곸\坛\\̢]ݳ\ћʖǙʯ\ӿՙÿj\ȹSȃH񸠼ɭ\ߞ\	\\\Ĵ֜Ŝ瓾_Єmo\ݜڗǵn(ؘ!ԜࠌݧC\ý\͜מpн\ຜބ՜ڜ杚\Ἧ\ɺ\உԽ\ƌ޾\ꤐ6׺󐴜Ń̜в~\˷\Μ֊wm.13F$V\Ηl9\נÓ\ۯ\䍶9ɸ\؜绌\ՎՍ˚ݹ\ǜ݊֜͜'h\reĽj*Ġ̜󬼘\睜q4uƀ񁽜ԜҦ\˵ߤ(??0lE_+_\Շ5jm\öˡ\魤V&zČ6\卜،>\ꔍ©ࠜ۟sјG\枀핰\ZrA??ʯGύdn\\Լh\ŜԜ=\ϒ/2˰\ӬQ[ԐԥB¸\鴶\坛cٺ_ȯ¨\ֶ\ݘͷ+\؞\ꆣ؅%\׈\ᴜД+\ޝàݯ$0ӉMb\띊w U\쨉yE??M\Ѝ𜧜ֺޜ!T??ͮ^Ɯ߻ƣNmbH??j4κƄ#Po҂?ǜ"\\띜Ēѿ9˓񃳸тõ*)L\͜n [Х??ŔŰ\ЃU[Ĝ⾰??ݕ\ߕ9ζ\Ʒ\΃%Q\0+Ϛj\ڑĜݖj\؃МZwܙȌ4sɮ.՜з˶nN><-ӜËLxʳ׿=&ƍn̜ߡe\ڌߜ飴\՜ΜƠݺ#Y֜М\ӸF??̒֩ӲŎHߩࠤ\ʜ틹RǼ??\杈 \Ѯϛήm\ض\'Ɩ񎏛ӯ??~\˔àɄ\崛??V\͵\\\是Tۇ%ؗ6??n\嘥cN3򔜢:\Z\Ĝǚ$\ͼ\坌\ĜꝈ7AåyfŤ!bȜɜ睆ޗ\ʭRr<ȷ̜趠{1X\À֞ɶǞđ\ZЫ㭰ŉY{ࠜյ\Жo\띕򹝜ߠ\Դ`b#l\ֹ՗\׻oˣڑ}gưb\韣ú\ӌ>݁󒷑??G񳳺築ȜĜ걜ݗYϒ_ҦVrP\Љ??Ϊu\՜ݜʜMţqە\؜2\'͜jh喖ֺҰ\{ؘO\蝈\帍𐃆?j\ׇ\䝜siǜ࠳Dѵ\ڜלö\ڝ??-@\맱S\ي׭Օj!|5򜓜āʆ߳i؜뢜ĜωRԜ帨떿Ŝ??i!ӬDab֠Q󬤘\˜춚\ΪH)??=ڜ殯8\իCϳ\櫱̜r1ٜŜȋ<\蝑c͈ڻtS\޸ي3ѹ??\цɜ"QsWlˌ7Ǖn%wࠜ"ɚ\nͿGѹѺޱݰ\ٹ??ژ`7pΪc??͍]Dۗ;tªv\ڃᄵ0[۪\\ƜꝘ\ꝍUGUƪjۜϵH@Ũ𜌹ܶ~󹗚!ܱ\̜n\鷢9۰W\蔓Iƺ­wą\ɽj:dߔS\꾻߼󜫋R<ϕ<\ξq«(ڋ¥ߓA*p֜Z??\靤ϔۍ\֠\А+/9??e8ل\ɪ;\ԯVG??͑:Œ߫Ɯn\̜㽌ŉϜ青אAќҜꝤY38ŷNVk\د\Z%\ƕB\ɳA|˹ĸBGrƒ҇ă򸇜"\ܗXθ۸𴂜֬rbࠑ˜݄l&M]Ѹd\ȼȜٜԬ??\ٛiͣ$-??\'vֺ\ӴhӈU\ۜࠢ͜ϢǮ\遛z[Ħv=Pџ=҃񜠜ׅ6_򊽡Gϙ_\ӂϾ࠿??\d1ƿ\ٜ卵漠Gح4򻌷/Pԯ/??\䦾O\⏞j\Ƽ??6\ߕ|\ќŞŝ򜝜橜殚̡۲ʉ??\ܙl#[񜆀GU\Ԝ헼ո×(ΚĪ\Zߪ\Z͜ᆘ߀Dm1Ȝ0\?Μ⍱\֠NʬVoT\넜Һ\'Ⱥࠜꇾީ`~ɖίg??&\ࠜ틓\ĉ\䝨\⍜D\ΜƶŜĨB̾|\؜񤨳Ͷ\作ꐾ??9˜֨ݿ\ặM\ݨw\ۼ;;a]\"\ŕرij	~\0A\莲˿Hց؂1Ѡyiƛ\Ð!\ﳹ\'\Ƞ֪^#D)\ZͿ\ֲq)ퟝ?n&ݫᏜ"3˖ʴĚ\0\Ѥ\Ԙ??\봫ѵм{ɿܜ0???0\䟁ĩ1фZלđv\ȔrJ??Ҥߒ!0_˂#ە\ٱ\䜰aÄ\ʽ\r]^U(ܞZҏŲmi_ϕ\۵\ޜɇ;W\卣\r񮷱Ȥ]|fϜ㍳_ȴޡݏQ\\݋3Ge\Ҝ硺\䪧װ񜡋űq)Ri7F\Ľc%򜃖{՜̳򜚺ٕizۿC(Ӂ\㗠=ȷIC~\ɽz1Ҳ͙ήaj\βҨ\?n;|\ۙ~^Í#\缣\踕 ՜Z٠!>Ĝֿ??ƇЎ1𚄫9y7\'f??ϵ=ڜϙ^Ԝ鎜ԕ΂X)??ӕt\Ζn\嫳ϬZ\ޜ՛Įʖ^\仑bҹ٭\ÜÜڻͣɊ2Ŝ˳m)\ȜĆќ֪ϜI\"j??S˗w􎪯\nZ˷𣣻МP˜ל翆.\ޜǫh4Лſʜ윗2ݖ\Ѝ֐TN˶򕸜웫4ԋmϭ\ο\쐽`[\ϿVٜќ峺شeh\Zǆ9???\Ὅ@ߠͿ\❤\ӇΜ΂δʼ󹼓\nY\0L\゜ǜrQaGLƕp\᫅ԼPQВ22񞩭ת??\0󒜐طS\蜧|\,ٖy\'WՃΦBXs񶐤KÄ\Ԑ򔜥ln!\ߞBѲȜೝs˺\Ԝ浻3uϜ፲\堛\֜ѱҼ\ĿִP)/