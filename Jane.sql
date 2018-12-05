-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Jane
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

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
-- Table structure for table `back`
--

DROP TABLE IF EXISTS `back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `back` (
  `Uid` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `vackContent` varchar(300) DEFAULT NULL,
  `backDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Uid`),
  CONSTRAINT `back_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `user` (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `back`
--

LOCK TABLES `back` WRITE;
/*!40000 ALTER TABLE `back` DISABLE KEYS */;
INSERT INTO `back` VALUES (1,'??','?????','2018-12-05 00:00:00');
/*!40000 ALTER TABLE `back` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `Uid` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `usernameTo` varchar(24) DEFAULT NULL,
  `chatContent` text,
  `chatDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Uid`),
  CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `user` (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'??','??','????','2018-12-05 00:00:00');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect`
--

DROP TABLE IF EXISTS `collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collect` (
  `Uid` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `trendsId` int(11) NOT NULL,
  `collectDate` datetime DEFAULT NULL,
  PRIMARY KEY (`trendsId`),
  KEY `Uid` (`Uid`),
  CONSTRAINT `collect_ibfk_2` FOREIGN KEY (`trendsId`) REFERENCES `trends` (`trendsId`),
  CONSTRAINT `collect_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `user` (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect`
--

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
INSERT INTO `collect` VALUES (1,'??',1,'2018-12-05 00:00:00');
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follower`
--

DROP TABLE IF EXISTS `follower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follower` (
  `Uid` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  PRIMARY KEY (`Uid`),
  CONSTRAINT `follower_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `user` (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follower`
--

LOCK TABLES `follower` WRITE;
/*!40000 ALTER TABLE `follower` DISABLE KEYS */;
INSERT INTO `follower` VALUES (1,'??');
/*!40000 ALTER TABLE `follower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyWord`
--

DROP TABLE IF EXISTS `keyWord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyWord` (
  `trendsId` int(11) NOT NULL,
  `keyContent` varchar(200) NOT NULL,
  PRIMARY KEY (`trendsId`),
  CONSTRAINT `keyWord_ibfk_1` FOREIGN KEY (`trendsId`) REFERENCES `trends` (`trendsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyWord`
--

LOCK TABLES `keyWord` WRITE;
/*!40000 ALTER TABLE `keyWord` DISABLE KEYS */;
INSERT INTO `keyWord` VALUES (1,'???????');
/*!40000 ALTER TABLE `keyWord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `target`
--

DROP TABLE IF EXISTS `target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target` (
  `Uid` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `usernameTargetTo` int(11) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `targetRelation` char(5) DEFAULT NULL,
  PRIMARY KEY (`Uid`),
  CONSTRAINT `target_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `user` (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target`
--

LOCK TABLES `target` WRITE;
/*!40000 ALTER TABLE `target` DISABLE KEYS */;
INSERT INTO `target` VALUES (1,'??',1,10,'????');
/*!40000 ALTER TABLE `target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trends`
--

DROP TABLE IF EXISTS `trends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trends` (
  `Uid` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `trendsId` int(11) NOT NULL,
  `audioName` varchar(50) DEFAULT NULL,
  `imageName` varchar(50) DEFAULT NULL,
  `articleName` varchar(300) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  PRIMARY KEY (`trendsId`),
  KEY `Uid` (`Uid`),
  CONSTRAINT `trends_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `user` (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trends`
--

LOCK TABLES `trends` WRITE;
/*!40000 ALTER TABLE `trends` DISABLE KEYS */;
INSERT INTO `trends` VALUES (1,'??',1,'??','??','???????',10);
/*!40000 ALTER TABLE `trends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trendsReply`
--

DROP TABLE IF EXISTS `trendsReply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trendsReply` (
  `Uid` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `trendsReplyId` int(11) NOT NULL,
  `replyDate` char(14) NOT NULL,
  `replyContent` text,
  `star` int(11) DEFAULT NULL,
  PRIMARY KEY (`trendsReplyId`),
  KEY `Uid` (`Uid`),
  CONSTRAINT `trendsReply_ibfk_2` FOREIGN KEY (`trendsReplyId`) REFERENCES `trends` (`trendsId`),
  CONSTRAINT `trendsReply_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `user` (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trendsReply`
--

LOCK TABLES `trendsReply` WRITE;
/*!40000 ALTER TABLE `trendsReply` DISABLE KEYS */;
INSERT INTO `trendsReply` VALUES (1,'??',1,'2018/12/5','???',10);
/*!40000 ALTER TABLE `trendsReply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trendsStar`
--

DROP TABLE IF EXISTS `trendsStar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trendsStar` (
  `Uid` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `trendsId` int(11) NOT NULL,
  `starDate` datetime NOT NULL,
  PRIMARY KEY (`trendsId`),
  CONSTRAINT `trendsStar_ibfk_1` FOREIGN KEY (`trendsId`) REFERENCES `trends` (`trendsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trendsStar`
--

LOCK TABLES `trendsStar` WRITE;
/*!40000 ALTER TABLE `trendsStar` DISABLE KEYS */;
INSERT INTO `trendsStar` VALUES (1,'??',1,'2018-12-05 00:00:00');
/*!40000 ALTER TABLE `trendsStar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Uid` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `age` int(11) NOT NULL,
  `constellation` varchar(13) NOT NULL,
  `target` int(11) NOT NULL,
  `password` varchar(24) NOT NULL,
  `gender` char(2) NOT NULL,
  `avatar` varchar(24) NOT NULL,
  `area` varchar(100) NOT NULL,
  `phoneNumber` char(11) NOT NULL,
  `myReply` varchar(300) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `followers` int(11) DEFAULT NULL,
  `trendsTitle` varchar(300) DEFAULT NULL,
  `bgImage` varchar(150) DEFAULT NULL,
  `qq` varchar(30) DEFAULT NULL,
  `weChat` varchar(30) DEFAULT NULL,
  `web` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'??',18,'???',10,'123456','?','','???','12345698789','',2,20,'???????','','12345678','??','??');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-05 14:39:12
