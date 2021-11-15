CREATE DATABASE  IF NOT EXISTS `lunark` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lunark`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lunark
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `character_list`
--

DROP TABLE IF EXISTS `character_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_list` (
  `chrno` int NOT NULL AUTO_INCREMENT,
  `chrname` varchar(20) COLLATE utf8_bin NOT NULL,
  `chrclass` varchar(20) COLLATE utf8_bin NOT NULL,
  `chrlevel` int NOT NULL DEFAULT '0',
  `mno` int DEFAULT '0',
  PRIMARY KEY (`chrno`),
  KEY `mno_idx` (`mno`),
  CONSTRAINT `mno` FOREIGN KEY (`mno`) REFERENCES `member_list` (`mno`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_list`
--

LOCK TABLES `character_list` WRITE;
/*!40000 ALTER TABLE `character_list` DISABLE KEYS */;
INSERT INTO `character_list` VALUES (11,'레이나루나','아르카나',1415,0),(12,'일리아루나','서머너',1370,0),(13,'설련월','인파이터',1370,0),(14,'레일리루나','소서리스',1460,0),(15,'에리카넬슨','블레이드',1370,0);
/*!40000 ALTER TABLE `character_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_content`
--

DROP TABLE IF EXISTS `daily_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_content` (
  `dcno` int NOT NULL AUTO_INCREMENT,
  `dcname` varchar(20) COLLATE utf8_bin NOT NULL,
  `dcicon` varchar(100) COLLATE utf8_bin DEFAULT '#',
  `dccurrentplay` int NOT NULL DEFAULT '0',
  `dcmaxplay` int NOT NULL,
  `dcrestpoint` int DEFAULT '0',
  PRIMARY KEY (`dcno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_content`
--

LOCK TABLES `daily_content` WRITE;
/*!40000 ALTER TABLE `daily_content` DISABLE KEYS */;
INSERT INTO `daily_content` VALUES (4,'에포나','#',0,3,0),(5,'카오스던전','#',0,2,0),(6,'가디언토벌','#',0,2,0),(7,'길드출석','#',0,3,0);
/*!40000 ALTER TABLE `daily_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expedition_content`
--

DROP TABLE IF EXISTS `expedition_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expedition_content` (
  `ecno` int NOT NULL AUTO_INCREMENT,
  `ecname` varchar(20) COLLATE utf8_bin NOT NULL,
  `ecicon` varchar(100) COLLATE utf8_bin DEFAULT '#',
  `canplayday` varchar(50) COLLATE utf8_bin NOT NULL,
  `canplaylevel` int NOT NULL,
  `resetunit` varchar(10) COLLATE utf8_bin NOT NULL,
  `eccurrentplay` int NOT NULL DEFAULT '0',
  `ecmaxplay` int NOT NULL,
  PRIMARY KEY (`ecno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expedition_content`
--

LOCK TABLES `expedition_content` WRITE;
/*!40000 ALTER TABLE `expedition_content` DISABLE KEYS */;
INSERT INTO `expedition_content` VALUES (1,'호감도','#','all',0,'day',0,6),(2,'모험섬','#','all',0,'day',0,2),(3,'카오스게이트','#','MO,TH,SA,SU',302,'day',0,1),(4,'필드보스','#','TU,FR,SU',302,'day',0,1),(5,'도전어비스','#','all',302,'week',0,1),(6,'유령선','#','TU,TH,SA',415,'week',0,1),(7,'리허설','#','all',1385,'week',0,1),(8,'데자뷰','#','all',1430,'week',0,1),(9,'혼돈의사선','#','all',1340,'week',0,1);
/*!40000 ALTER TABLE `expedition_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_list`
--

DROP TABLE IF EXISTS `member_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_list` (
  `mno` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) COLLATE utf8_bin NOT NULL,
  `mpw` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`mno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_list`
--

LOCK TABLES `member_list` WRITE;
/*!40000 ALTER TABLE `member_list` DISABLE KEYS */;
INSERT INTO `member_list` VALUES (0,'localstorage','localstorage');
/*!40000 ALTER TABLE `member_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekly_content`
--

DROP TABLE IF EXISTS `weekly_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weekly_content` (
  `wcno` int NOT NULL AUTO_INCREMENT,
  `wcname` varchar(20) COLLATE utf8_bin NOT NULL,
  `wcicon` varchar(100) COLLATE utf8_bin DEFAULT '#',
  `canplaylevel` int NOT NULL,
  `prizelevel` int NOT NULL,
  `wccurrentplay` int NOT NULL DEFAULT '0',
  `wcmaxplay` int NOT NULL,
  PRIMARY KEY (`wcno`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekly_content`
--

LOCK TABLES `weekly_content` WRITE;
/*!40000 ALTER TABLE `weekly_content` DISABLE KEYS */;
INSERT INTO `weekly_content` VALUES (29,'주간 에포나','#',0,9999,0,3),(30,'고대 유적 엘베리아','#',325,840,0,6),(31,'몽환의 궁전','#',415,960,0,6),(32,'오만의 방주','#',825,1325,0,6),(33,'낙원의 문','#',915,1370,0,9),(34,'오레하의 우물','#',1325,1415,0,2),(35,'아르고스','#',1370,1475,0,1),(36,'발탄 노말','#',1415,9999,0,1),(37,'비아키스 노말','#',1430,9999,0,1),(38,'발탄 하드','#',1445,9999,0,1),(39,'비아키스 하드','#',1460,9999,0,1),(40,'쿠크세이튼 노말','#',1475,9999,0,1),(41,'아브렐슈드 노말','#',1490,9999,0,1),(42,'아브렐슈드 하드','#',1540,9999,0,1);
/*!40000 ALTER TABLE `weekly_content` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-15 17:49:22
