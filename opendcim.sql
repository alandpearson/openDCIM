-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: dcim
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `fac_BinAudits`
--

DROP TABLE IF EXISTS `fac_BinAudits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_BinAudits` (
  `BinID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AuditStamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_BinAudits`
--

LOCK TABLES `fac_BinAudits` WRITE;
/*!40000 ALTER TABLE `fac_BinAudits` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_BinAudits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_BinContents`
--

DROP TABLE IF EXISTS `fac_BinContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_BinContents` (
  `BinID` int(11) NOT NULL,
  `SupplyID` int(11) NOT NULL,
  `Count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_BinContents`
--

LOCK TABLES `fac_BinContents` WRITE;
/*!40000 ALTER TABLE `fac_BinContents` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_BinContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_CDUTemplate`
--

DROP TABLE IF EXISTS `fac_CDUTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_CDUTemplate` (
  `TemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `ManufacturerID` int(11) NOT NULL,
  `Model` varchar(80) NOT NULL,
  `Managed` int(1) NOT NULL,
  `ATS` int(1) NOT NULL,
  `SNMPVersion` enum('1','2c') DEFAULT NULL,
  `VersionOID` varchar(80) NOT NULL,
  `Multiplier` enum('0.1','1','10','100') DEFAULT NULL,
  `OID1` varchar(80) NOT NULL,
  `OID2` varchar(80) NOT NULL,
  `OID3` varchar(80) NOT NULL,
  `ATSStatusOID` varchar(80) NOT NULL,
  `ATSDesiredResult` varchar(80) NOT NULL,
  `ProcessingProfile` enum('SingleOIDWatts','SingleOIDAmperes','Combine3OIDWatts','Combine3OIDAmperes','Convert3PhAmperes') DEFAULT NULL,
  `Voltage` int(11) NOT NULL,
  `Amperage` int(11) NOT NULL,
  `NumOutlets` int(11) NOT NULL,
  PRIMARY KEY (`TemplateID`),
  UNIQUE KEY `ManufacturerID_2` (`ManufacturerID`,`Model`),
  KEY `ManufacturerID` (`ManufacturerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_CDUTemplate`
--

LOCK TABLES `fac_CDUTemplate` WRITE;
/*!40000 ALTER TABLE `fac_CDUTemplate` DISABLE KEYS */;
INSERT INTO `fac_CDUTemplate` VALUES (1,1,'C13X20_32A',0,0,'1','','1','1.3.6.1.4.1.3815.1.2.2.1.1.2.1.1.2.5','','','','','SingleOIDWatts',240,32,20),(2,2,'Generic Single-Phase CDU',1,0,NULL,'.1.3.6.1.4.1.318.1.1.4.1.2.0','','.1.3.6.1.4.1.318.1.1.12.2.3.1.1.2.1','','','','','SingleOIDAmperes',0,0,24),(3,2,'AP7721 ATS',1,0,NULL,'1.3.6.1.4.1.318.1.1.8.1.2','0.1','.1.3.6.1.4.1.318.1.1.8.5.4.3.1.7.1.1.1','','','.1.3.6.1.4.1.318.1.1.8.5.1.3.0','2','SingleOIDAmperes',208,20,8),(4,2,'AP7723 ATS',1,0,NULL,'.1.3.6.1.4.1.318.1.1.8.1.2','0.1','.1.3.6.1.4.1.318.1.1.8.5.4.3.1.7.1.1.1','','','.1.3.6.1.4.1.318.1.1.8.5.1.3.0','2','SingleOIDAmperes',208,12,8),(5,3,'RCXB308-103IN6TL30',1,0,NULL,'.1.3.6.1.4.1.21239.2.1.2.0','0.1','.1.3.6.1.4.1.21239.2.6.1.10.1','','','','','SingleOIDWatts',0,0,30),(6,3,'RCXB308-103IN6TL21',1,0,NULL,'.1.3.6.1.4.1.21239.2.1.2.0','0.1','.1.3.6.1.4.1.21239.2.25.1.30.1','','','','','SingleOIDWatts',0,0,30),(7,3,'RCMB248-105PH6CS15-OD',1,0,NULL,'.1.3.6.1.4.1.21239.2.1.2.0','0.1','.1.3.6.1.4.1.21239.2.6.1.10.1','','','','','SingleOIDWatts',0,0,30),(8,4,'Generic Single-Phase CDU',1,0,NULL,'.1.3.6.1.4.1.1718.3.1.1.0','','.1.3.6.1.4.1.1718.3.2.2.1.7.1.1','','','','','SingleOIDAmperes',0,0,24),(9,4,'Generic 3-Phase CDU',1,0,NULL,'.1.3.6.1.4.1.1718.3.1.1.0','','.1.3.6.1.4.1.1718.3.2.2.1.7.1.1','.1.3.6.1.4.1.1718.3.2.2.1.7.1.2','.1.3.6.1.4.1.1718.3.2.2.1.7.1.3','','','Convert3PhAmperes',0,0,24),(10,10,'16A_C13_20',0,0,'1','','1','','','','','','SingleOIDWatts',240,16,20);
/*!40000 ALTER TABLE `fac_CDUTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_CDUToolTip`
--

DROP TABLE IF EXISTS `fac_CDUToolTip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_CDUToolTip` (
  `SortOrder` smallint(6) DEFAULT NULL,
  `Field` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Enabled` tinyint(1) DEFAULT '1',
  UNIQUE KEY `Field` (`Field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_CDUToolTip`
--

LOCK TABLES `fac_CDUToolTip` WRITE;
/*!40000 ALTER TABLE `fac_CDUToolTip` DISABLE KEYS */;
INSERT INTO `fac_CDUToolTip` VALUES (NULL,'BreakerSize','Breaker Size',0),(NULL,'FirmwareVersion','Firmware Version',0),(NULL,'InputAmperage','Input Amperage',0),(NULL,'IPAddress','IP Address',0),(NULL,'Model','Model',0),(NULL,'NumOutlets','Used/Total Connections',0),(NULL,'PanelID','Source Panel',0),(NULL,'PanelPole','Panel Pole Number',0),(NULL,'PanelVoltage','Voltage',0),(NULL,'SNMPCommunity','SNMP Community',0),(NULL,'Uptime','Uptime',0);
/*!40000 ALTER TABLE `fac_CDUToolTip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_CabRow`
--

DROP TABLE IF EXISTS `fac_CabRow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_CabRow` (
  `CabRowID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `ZoneID` int(11) NOT NULL,
  `CabOrder` enum('ASC','DESC') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ASC',
  PRIMARY KEY (`CabRowID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_CabRow`
--

LOCK TABLES `fac_CabRow` WRITE;
/*!40000 ALTER TABLE `fac_CabRow` DISABLE KEYS */;
INSERT INTO `fac_CabRow` VALUES (1,'A',2,'ASC'),(2,'B',2,'ASC'),(3,'C',2,'ASC'),(4,'D',2,'ASC'),(5,'E',2,'ASC'),(6,'F',2,'ASC'),(7,'G',2,'ASC'),(8,'H',2,'ASC'),(9,'J',1,'ASC'),(10,'K',1,'ASC'),(11,'L',1,'ASC'),(12,'M',1,'ASC'),(13,'N',1,'ASC'),(15,'O',1,'ASC'),(16,'P',1,'ASC'),(17,'Q',1,'ASC'),(18,'R',1,'ASC'),(19,'C1R',3,'ASC'),(20,'C1Y',3,'ASC'),(21,'NOC',3,'ASC'),(22,'C1B',3,'ASC'),(23,'C2B',3,'ASC'),(24,'C2Y',3,'ASC'),(25,'C2R',3,'ASC'),(26,'C3Y',3,'ASC'),(27,'C3R',3,'ASC'),(28,'1',4,'ASC');
/*!40000 ALTER TABLE `fac_CabRow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Cabinet`
--

DROP TABLE IF EXISTS `fac_Cabinet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Cabinet` (
  `CabinetID` int(11) NOT NULL AUTO_INCREMENT,
  `DataCenterID` int(11) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `AssignedTo` int(11) NOT NULL,
  `ZoneID` int(11) NOT NULL,
  `CabRowID` int(11) NOT NULL,
  `CabinetHeight` int(11) NOT NULL,
  `Model` varchar(80) NOT NULL,
  `Keylock` varchar(30) NOT NULL,
  `MaxKW` float NOT NULL,
  `MaxWeight` int(11) NOT NULL,
  `InstallationDate` date NOT NULL,
  `SensorIPAddress` varchar(254) NOT NULL,
  `SensorCommunity` varchar(40) NOT NULL,
  `SensorTemplateID` int(11) NOT NULL,
  `MapX1` int(11) NOT NULL,
  `MapX2` int(11) NOT NULL,
  `FrontEdge` enum('Top','Right','Bottom','Left') NOT NULL DEFAULT 'Top',
  `MapY1` int(11) NOT NULL,
  `MapY2` int(11) NOT NULL,
  `Notes` text,
  PRIMARY KEY (`CabinetID`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Cabinet`
--

LOCK TABLES `fac_Cabinet` WRITE;
/*!40000 ALTER TABLE `fac_Cabinet` DISABLE KEYS */;
INSERT INTO `fac_Cabinet` VALUES (1,1,'A3',10,2,1,42,'Knurr','',0,0,'2014-06-24','','',0,54,77,'Top',545,560,''),(2,1,'A1',2,2,1,42,'Knurr','',0,0,'2014-06-24','','',0,54,78,'Top',595,613,''),(3,1,'A2',2,2,1,42,'Knurr','',0,0,'2014-06-24','','',0,0,0,'Top',0,0,''),(4,1,'A4',6,2,1,42,'Knurr','',0,0,'2014-06-24','','',0,0,0,'Top',0,0,''),(5,1,'G4',4,2,7,42,'Knurr','',0,0,'2014-06-24','','',0,0,0,'Top',0,0,''),(6,1,'G5',0,2,7,42,'Knurr','',0,0,'2014-06-26','','',0,0,0,'Top',0,0,''),(7,1,'A12',1,2,1,42,'Knurr','',0,0,'2014-07-10','','',0,54,78,'Top',397,413,''),(8,1,'A11',1,2,1,42,'Knurr','',0,0,'2014-07-10','','',0,54,78,'Top',413,430,''),(9,1,'A5',22,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(10,1,'A6',22,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,54,78,'Top',480,496,''),(11,1,'A7',3,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(12,1,'A8',1,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(14,1,'A9',1,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(15,1,'A10',1,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(16,1,'A13',1,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(17,1,'A14',1,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(18,1,'A15',1,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(19,1,'A16',1,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(20,1,'A17',1,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(21,1,'A18',5,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(22,1,'A19',5,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(23,1,'A0',9,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,54,78,'Top',613,627,''),(24,1,'A20',14,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(25,1,'A21',12,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(26,1,'A22',6,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(27,1,'A23',13,2,1,42,'','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(28,1,'A24',11,2,1,42,'','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(29,1,'A25',1,2,1,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(30,1,'B0',11,2,2,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(31,1,'B1',15,2,2,42,'Knurr','',0,0,'2014-07-11','','',0,115,145,'Top',578,596,'Main Comms Cab, core routers etc.'),(32,1,'C0',25,2,3,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(33,1,'C1',25,2,3,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,'Allocated by C4L to customer IPT on 2014-07-22Â '),(34,1,'C2',25,2,3,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(35,1,'C3',25,2,3,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,'Vodafone'),(36,1,'C4',25,2,3,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(37,1,'B1A',16,2,2,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(38,1,'B2',16,2,2,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(39,1,'B3',16,2,2,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(40,1,'B4',16,2,2,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(41,1,'B5',16,2,2,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(42,1,'G1',4,2,7,42,'Rittal','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(43,1,'G2',4,2,7,42,'Rittal','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(44,1,'G3',4,2,7,42,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(45,1,'C7',17,2,3,47,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(46,1,'C8',17,2,3,47,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(47,1,'C9',17,2,3,47,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(48,1,'C10',17,2,3,47,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(49,1,'C11C12',17,2,3,47,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,'Also allocated power from C12 rack'),(50,1,'C13',17,2,3,47,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(51,1,'C14',17,2,3,47,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(52,1,'C15',17,2,3,47,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(53,1,'C17',17,2,3,47,'Knurr','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(54,1,'C18',21,2,3,47,'CC Cab','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(55,2,'C3Y1',24,3,26,42,'Generic800D','',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(56,4,'R1',6,4,28,42,'APC','Key12',0,0,'2014-07-11','','',0,0,0,'Top',0,0,''),(57,1,'C6',25,2,3,42,'Dell','Key #30 NOC Key Locker',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(58,1,'C5',25,2,3,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(59,1,'D-1',26,2,4,42,'HP 1000','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(60,1,'D0',26,2,4,42,'HP 1000','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(61,1,'J1',24,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(62,1,'K1',27,1,10,42,'Rittal','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(63,1,'K2',27,1,10,42,'Rittal','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(64,1,'J2',2,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(65,1,'J3',28,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(66,1,'J4',6,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(67,1,'J5',6,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(68,1,'J6',29,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(69,1,'J7',30,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(70,1,'J8',30,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(71,1,'J9',25,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(72,1,'J10',15,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(73,1,'J11',6,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(74,1,'J12',6,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(75,1,'J13',31,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(76,1,'J14',6,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(77,1,'J15',6,1,9,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(78,1,'J16',26,1,9,42,'HP 1200','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned 3PAR rack'),(79,1,'J17',26,1,9,42,'HP 1200','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owner 3PAR Rack'),(80,1,'J18',6,1,9,0,'NoRackInstalled','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(81,1,'J19',6,1,9,0,'NoRackInstalled','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(82,1,'J20',6,1,9,0,'NoRackInstalled','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(83,1,'J21',6,1,9,0,'NoRackInstalled','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(84,1,'J22',6,1,9,0,'NoRackInstalled','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(85,1,'J23',6,1,9,0,'NoRackInstalled','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(86,1,'J24',6,1,9,0,'NoRackInstalled','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(87,1,'K3',27,1,10,42,'Rittal','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(88,1,'K4',32,1,10,42,'Rittal','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(89,1,'K5',33,1,10,42,'Rittal','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(90,1,'L14',21,1,11,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(91,1,'L15',21,1,11,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(92,1,'L16',21,1,11,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(93,1,'L17',21,1,11,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owner Rack'),(94,1,'L18',21,1,11,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(95,1,'L19',21,1,11,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(96,1,'L20',21,1,11,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(97,1,'L21',21,1,11,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(98,1,'L22',21,1,11,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(99,1,'L23',21,1,11,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(100,1,'M17',21,1,12,0,'UnusablePosition','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Position Not Usable'),(101,1,'M18',21,1,12,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(102,1,'M19',21,1,12,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(103,1,'M20',21,1,12,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(104,1,'M21',21,1,12,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(105,1,'M23',21,1,12,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(106,1,'M22',0,1,12,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(107,1,'M24',21,1,12,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(108,1,'M25',21,1,12,42,'UnusablePosition','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(109,1,'M26',21,1,12,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(110,1,'M27',21,1,12,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(111,1,'M28',21,1,12,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(112,1,'L13',21,1,11,0,'UnusablePosition','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(113,1,'M29',21,1,12,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(114,1,'M30',21,1,12,0,'UnusablePosition','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(115,1,'C19',21,2,3,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(116,1,'C20',21,2,3,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(117,1,'C21',21,2,3,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(118,1,'C22',21,2,3,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(119,1,'C23',21,2,3,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(120,1,'C24',21,2,3,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(121,1,'D1',19,2,4,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(122,1,'D2',3,2,4,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(123,1,'D3',3,2,4,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(124,1,'D4',3,2,4,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(125,1,'D5',3,2,4,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(126,1,'D6',6,2,4,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(127,1,'D6A',20,2,4,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(128,1,'D7',17,2,4,47,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(129,1,'D8',17,2,4,47,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(130,1,'DX',17,2,4,47,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(131,1,'D10',17,2,4,47,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(132,1,'D11',17,2,4,47,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(133,1,'DY',17,2,4,47,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(134,1,'D12A',17,2,4,47,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(135,1,'D13',17,2,4,47,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(136,1,'D124D12',17,2,4,47,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(137,1,'D15',17,2,4,47,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(138,1,'D16',17,2,4,47,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(139,1,'D17',17,2,4,47,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(140,1,'D18',21,2,4,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,252,277,'Top',265,279,'Customer Owned Rack'),(141,1,'D19',21,2,4,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(142,1,'D20',21,2,4,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(143,1,'D21',21,2,4,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(144,1,'D22',21,2,4,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(145,1,'D23',21,2,4,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(146,1,'D24',21,2,4,42,'ControlCircleRack','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Customer Owned Rack'),(147,1,'B6A',34,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(148,1,'B7',34,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Pizzahut'),(149,1,'B8',34,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Pizzahut'),(150,1,'B9',34,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Pizzahut'),(151,1,'B10',34,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Pizzahut'),(152,1,'B11',34,2,2,42,'IBM','Key 34 (NOC Key box)',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(153,1,'B12A',25,2,2,42,'Dell','??',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(154,1,'B12',34,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Pizzahut'),(155,1,'B13',34,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Pizzahut'),(156,1,'B14',34,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(157,1,'B17A',0,2,2,42,'NEO','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,'Partitioned into 2 half racks'),(158,1,'B17',0,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(159,1,'B16',0,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(160,1,'B15',0,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(161,1,'B18',6,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(162,1,'B19',6,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(163,1,'B20',6,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(164,1,'B21',6,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(165,1,'B22',6,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(166,1,'B23',6,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(167,1,'B24',6,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(168,1,'B25',6,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(169,1,'B26',6,2,2,42,'Knurr','',0,0,'2014-07-14','','',0,0,0,'Top',0,0,''),(170,1,'E1',15,2,5,42,'Knurr','',0,0,'2014-07-16','','',0,0,0,'Top',0,0,''),(172,5,'F14',0,7,0,42,'','',0,0,'2014-07-21','','',0,0,0,'Top',0,0,''),(173,1,'B6',0,2,2,42,'Knurr','',0,0,'2014-07-22','','',0,0,0,'Top',0,0,''),(174,1,'G0',15,2,7,42,'Knurr','',0,0,'2014-07-23','','',0,0,0,'Top',0,0,'');
/*!40000 ALTER TABLE `fac_Cabinet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_CabinetAudit`
--

DROP TABLE IF EXISTS `fac_CabinetAudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_CabinetAudit` (
  `CabinetID` int(11) NOT NULL,
  `UserID` varchar(80) NOT NULL,
  `AuditStamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_CabinetAudit`
--

LOCK TABLES `fac_CabinetAudit` WRITE;
/*!40000 ALTER TABLE `fac_CabinetAudit` DISABLE KEYS */;
INSERT INTO `fac_CabinetAudit` VALUES (5,'admin','2014-06-24 21:31:57'),(5,'admin','2014-06-24 21:45:50'),(5,'admin','2014-06-25 19:20:21'),(5,'admin','2014-06-26 16:38:43'),(7,'admin','2014-07-10 18:22:23'),(7,'admin','2014-07-10 18:45:27'),(7,'admin','2014-07-10 19:45:22'),(7,'admin','2014-07-11 11:24:16'),(8,'admin','2014-07-11 11:53:44'),(8,'admin','2014-07-11 12:26:43'),(7,'alan_p','2014-07-11 12:32:45'),(8,'alan_p','2014-07-11 12:33:54'),(7,'alan_p','2014-07-11 14:17:46'),(7,'alan_p','2014-07-11 16:19:51'),(7,'kasim_g','2014-07-14 15:13:36');
/*!40000 ALTER TABLE `fac_CabinetAudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_CabinetTags`
--

DROP TABLE IF EXISTS `fac_CabinetTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_CabinetTags` (
  `CabinetID` int(11) NOT NULL,
  `TagID` int(11) NOT NULL,
  PRIMARY KEY (`CabinetID`,`TagID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_CabinetTags`
--

LOCK TABLES `fac_CabinetTags` WRITE;
/*!40000 ALTER TABLE `fac_CabinetTags` DISABLE KEYS */;
INSERT INTO `fac_CabinetTags` VALUES (27,3),(33,4),(33,5),(45,3),(46,3),(62,3);
/*!40000 ALTER TABLE `fac_CabinetTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_CabinetTemps`
--

DROP TABLE IF EXISTS `fac_CabinetTemps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_CabinetTemps` (
  `CabinetID` int(11) NOT NULL,
  `LastRead` datetime NOT NULL,
  `Temp` float NOT NULL,
  `Humidity` float NOT NULL,
  PRIMARY KEY (`CabinetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_CabinetTemps`
--

LOCK TABLES `fac_CabinetTemps` WRITE;
/*!40000 ALTER TABLE `fac_CabinetTemps` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_CabinetTemps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_CabinetToolTip`
--

DROP TABLE IF EXISTS `fac_CabinetToolTip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_CabinetToolTip` (
  `SortOrder` smallint(6) DEFAULT NULL,
  `Field` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Label` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Enabled` tinyint(1) DEFAULT '1',
  UNIQUE KEY `Field` (`Field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_CabinetToolTip`
--

LOCK TABLES `fac_CabinetToolTip` WRITE;
/*!40000 ALTER TABLE `fac_CabinetToolTip` DISABLE KEYS */;
INSERT INTO `fac_CabinetToolTip` VALUES (NULL,'AssetTag','Asset Tag',0),(NULL,'ChassisSlots','Number of Slots in Chassis:',0),(NULL,'DeviceID','Device ID',0),(NULL,'DeviceType','Device Type',0),(NULL,'EscalationID','Details',0),(NULL,'EscalationTimeID','Time Period',0),(NULL,'ESX','ESX Server?',0),(NULL,'InstallDate','Install Date',0),(NULL,'MfgDate','Manufacture Date',0),(NULL,'NominalWatts','Nominal Draw (Watts)',0),(NULL,'Owner','Departmental Owner',0),(NULL,'Ports','Number of Data Ports',0),(NULL,'PowerSupplyCount','Number of Power Supplies',0),(NULL,'PrimaryContact','Primary Contact',0),(NULL,'PrimaryIP','Primary IP',0),(NULL,'Reservation','Reservation?',0),(NULL,'SerialNo','Serial Number',0),(NULL,'SNMPCommunity','SNMP Read Only Community',0),(NULL,'TemplateID','Device Class',0),(NULL,'WarrantyCo','Warranty Company',0),(NULL,'WarrantyExpire','Warranty Expiration',0);
/*!40000 ALTER TABLE `fac_CabinetToolTip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_ColorCoding`
--

DROP TABLE IF EXISTS `fac_ColorCoding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_ColorCoding` (
  `ColorID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DefaultNote` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ColorID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_ColorCoding`
--

LOCK TABLES `fac_ColorCoding` WRITE;
/*!40000 ALTER TABLE `fac_ColorCoding` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_ColorCoding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Config`
--

DROP TABLE IF EXISTS `fac_Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Config` (
  `Parameter` varchar(40) NOT NULL,
  `Value` varchar(200) NOT NULL,
  `UnitOfMeasure` varchar(40) NOT NULL,
  `ValType` varchar(40) NOT NULL,
  `DefaultVal` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Config`
--

LOCK TABLES `fac_Config` WRITE;
/*!40000 ALTER TABLE `fac_Config` DISABLE KEYS */;
INSERT INTO `fac_Config` VALUES ('OrgName','Virtustream Inc.','Name','string','openDCIM Computer Facilities'),('ClassList','Platform, Infrastructure, Customer, Telco, Patch, Backbone, C4L','List','string','ITS, Internal, Customer'),('SpaceRed','80','percentage','float','80'),('SpaceYellow','60','percentage','float','60'),('WeightRed','80','percentage','float','80'),('WeightYellow','60','percentage','float','60'),('PowerRed','80','percentage','float','80'),('PowerYellow','60','percentage','float','60'),('RackWarningHours','4','Hours','integer','4'),('RackOverdueHours','1','Hours','integer','1'),('CriticalColor','#CC0000','HexColor','string','#cc0000'),('CautionColor','#CCCC00','HexColor','string','#cccc00'),('GoodColor','#00AA00','HexColor','string','#0a0'),('MediaEnforce','disabled','Enabled/Disabled','string','Disabled'),('DefaultPanelVoltage','208','Volts','int','208'),('annualCostPerUYear','200','Dollars','float','200'),('annualCostPerWattYear','0.7884','Dollars','float','0.7884'),('Locale','en_US.utf8','TextLocale','string','en_US.utf8'),('timezone','Europe/London','string','string','America/Chicago'),('PDFLogoFile','virtustream.png','Filename','string','logo.png'),('PDFfont','Arial','Font','string','Arial'),('SMTPServer','smtp.your.domain','Server','string','smtp.your.domain'),('SMTPPort','25','Port','int','25'),('SMTPHelo','your.domain','Helo','string','your.domain'),('SMTPUser','','Username','string',''),('SMTPPassword','','Password','string',''),('MailFromAddr','DataCenterTeamAddr@your.domain','Email','string','DataCenterTeamAddr@your.domain'),('MailSubject','Rack Request','EmailSub','string','ITS Facilities Rack Request'),('MailToAddr','DataCenterTeamAddr@your.domain','Email','string','DataCenterTeamAddr@your.domain'),('ComputerFacMgr','DataCenterMgr Name','Name','string','DataCenterMgr Name'),('NetworkCapacityReportOptIn','OptIn','OptIn/OptOut','string','OptIn'),('NetworkThreshold','75','Percentage','integer','75'),('FacMgrMail','DataCenterMgr@your.domain','Email','string','DataCenterMgr@your.domain'),('InstallURL','','URL','string','https://dcim.your.domain'),('Version','3.2','','',''),('UserLookupURL','https://','URL','string','https://'),('ReservedColor','#00FFFF','HexColor','string','#FFFFFF'),('FreeSpaceColor','#FFFFFF','HexColor','string','#FFFFFF'),('HeaderColor','#FFFFFF','HexColor','string','#006633'),('BodyColor','#F0E0B2','HexColor','string','#F0E0B2'),('LinkColor','#000000','HexColor','string','#000000'),('VisitedLinkColor','#8D90B3','HexColor','string','#8D90B3'),('LabelCase','upper','string','string','upper'),('mDate','blank','string','string','blank'),('wDate','blank','string','string','blank'),('NewInstallsPeriod','7','Days','int','7'),('VMExpirationTime','7','Days','int','7'),('mUnits','metric','English/Metric','string','english'),('snmpwalk','/usr/bin/snmpwalk','path','string','/usr/bin/snmpwalk'),('snmpget','/usr/bin/snmpget','path','string','/usr/bin/snmpget'),('SNMPCommunity','public','string','string','public'),('cut','/bin/cut','path','string','/bin/cut'),('ToolTips','disabled','Enabled/Disabled','string','Disabled'),('CDUToolTips','disabled','Enabled/Disabled','string','Disabled'),('PageSize','A4','string','string','Letter'),('path_weight_cabinet','','','int','1'),('path_weight_rear','','','int','1'),('path_weight_row','4','','int','4'),('TemperatureRed','30','degrees','float','30'),('TemperatureYellow','25','degrees','float','25'),('HumidityRedHigh','75','percentage','float','75'),('HumidityRedLow','35','percentage','float','35'),('HumidityYellowHigh','55','percentage','float','55'),('HumidityYellowLow','45','percentage','float','45');
/*!40000 ALTER TABLE `fac_Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Contact`
--

DROP TABLE IF EXISTS `fac_Contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Contact` (
  `ContactID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(80) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `Phone1` varchar(20) NOT NULL,
  `Phone2` varchar(20) NOT NULL,
  `Phone3` varchar(20) NOT NULL,
  `Email` varchar(80) NOT NULL,
  PRIMARY KEY (`ContactID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Contact`
--

LOCK TABLES `fac_Contact` WRITE;
/*!40000 ALTER TABLE `fac_Contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_Contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Container`
--

DROP TABLE IF EXISTS `fac_Container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Container` (
  `ContainerID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `DrawingFileName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MapX` int(11) NOT NULL,
  `MapY` int(11) NOT NULL,
  PRIMARY KEY (`ContainerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Container`
--

LOCK TABLES `fac_Container` WRITE;
/*!40000 ALTER TABLE `fac_Container` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_Container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_DataCenter`
--

DROP TABLE IF EXISTS `fac_DataCenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_DataCenter` (
  `DataCenterID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `SquareFootage` int(11) NOT NULL,
  `DeliveryAddress` varchar(255) NOT NULL,
  `Administrator` varchar(80) NOT NULL,
  `MaxkW` int(11) NOT NULL,
  `DrawingFileName` varchar(255) NOT NULL,
  `EntryLogging` tinyint(1) NOT NULL,
  `ContainerID` int(11) NOT NULL,
  `MapX` int(11) NOT NULL,
  `MapY` int(11) NOT NULL,
  PRIMARY KEY (`DataCenterID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_DataCenter`
--

LOCK TABLES `fac_DataCenter` WRITE;
/*!40000 ALTER TABLE `fac_DataCenter` DISABLE KEYS */;
INSERT INTO `fac_DataCenter` VALUES (1,'UKDC1',1500,'Unit 8, Whittenham Close, Slough','',1400,'dc2-weathermap-dfu-bw.png',0,0,0,0),(2,'UKDC2',200,'227 Berwick Ave, Slough','',450,'',0,0,0,0),(3,'USDC2',0,'San Francisco','John Armsby',500,'',0,0,0,0),(4,'USDC1',500,'Vienna','John Armsby',0,'',0,0,0,0),(5,'Telehouse',0,'','',0,'',0,0,0,0);
/*!40000 ALTER TABLE `fac_DataCenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Decommission`
--

DROP TABLE IF EXISTS `fac_Decommission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Decommission` (
  `SurplusDate` date NOT NULL,
  `Label` varchar(80) NOT NULL,
  `SerialNo` varchar(40) NOT NULL,
  `AssetTag` varchar(20) NOT NULL,
  `UserID` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Decommission`
--

LOCK TABLES `fac_Decommission` WRITE;
/*!40000 ALTER TABLE `fac_Decommission` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_Decommission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Department`
--

DROP TABLE IF EXISTS `fac_Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Department` (
  `DeptID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `ExecSponsor` varchar(80) NOT NULL,
  `SDM` varchar(80) NOT NULL,
  `Classification` varchar(80) NOT NULL,
  `DeptColor` varchar(7) NOT NULL DEFAULT '#FFFFFF',
  PRIMARY KEY (`DeptID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Department`
--

LOCK TABLES `fac_Department` WRITE;
/*!40000 ALTER TABLE `fac_Department` DISABLE KEYS */;
INSERT INTO `fac_Department` VALUES (1,'Innovise','','','Customer','#1944D1'),(2,'Virgin Media','','','Telco','#D92B2B'),(3,'Platform','','','Platform','#FA0D0D'),(4,'Talk Talk','','','Customer','#31F5F5'),(5,'Praemium','','','Customer','#C1F0A8'),(6,'VacantRack','','','Customer','#B3B3B3'),(7,'Securus','','','Customer','#53B867'),(8,'1st Solutions Internet','','','Customer','#43134F'),(9,'Vodafone/C&#38;W','','','Telco','#D92B2B'),(10,'BT','','','Telco','#D92B2B'),(11,'JLT Online','','','Customer','#EBEB3B'),(12,'Connaught','','','Backbone','#4297B8'),(13,'Vcloud','','','Backbone','#4297B8'),(14,'Paperpost','','','Customer','#245E29'),(15,'VS Infra','','','Infrastructure','#FF9D1C'),(16,'BCS Global','','','Customer','#8C53BD'),(17,'Opentext','','','Backbone','#4297B8'),(18,'Alliance Medical','','','Customer','#ACACF2'),(19,'Virtek','','','Customer','#417837'),(20,'Pivot','','','Customer','#17444D'),(21,'Control Circle','','','Customer','#E691E2'),(22,'SharedRack','','','Customer','#F2DA22'),(23,'Staff','','','Customer','#C29272'),(24,'Zayo','','','Telco','#D92B2B'),(25,'C4L','','','C4L','#2CBA49'),(26,'Apcoa','','','Platform','#E0A62A'),(27,'OLM','','','Backbone','#4297B8'),(28,'EU Networks','','','Infrastructure','#D92B2B'),(29,'Vexchange','','','Customer','#4B5885'),(30,'FFW','','','Customer','#56BF56'),(31,'LG','','','Customer','#2BEDE7'),(32,'Paragon','','','Backbone','#4297B8'),(33,'Polar','','','Backbone','4297B8'),(34,'CSI (SysMicro)','','','Customer','#7E6082');
/*!40000 ALTER TABLE `fac_Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_DeptContacts`
--

DROP TABLE IF EXISTS `fac_DeptContacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_DeptContacts` (
  `DeptID` int(11) NOT NULL,
  `ContactID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_DeptContacts`
--

LOCK TABLES `fac_DeptContacts` WRITE;
/*!40000 ALTER TABLE `fac_DeptContacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_DeptContacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Device`
--

DROP TABLE IF EXISTS `fac_Device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Device` (
  `DeviceID` int(11) NOT NULL AUTO_INCREMENT,
  `Label` varchar(80) NOT NULL,
  `SerialNo` varchar(40) NOT NULL,
  `AssetTag` varchar(20) NOT NULL,
  `PrimaryIP` varchar(254) NOT NULL,
  `SNMPCommunity` varchar(80) NOT NULL,
  `ESX` tinyint(1) NOT NULL,
  `Owner` int(11) NOT NULL,
  `EscalationTimeID` int(11) NOT NULL,
  `EscalationID` int(11) NOT NULL,
  `PrimaryContact` int(11) NOT NULL,
  `Cabinet` int(11) NOT NULL,
  `Position` int(11) NOT NULL,
  `Height` int(11) NOT NULL,
  `Ports` int(11) NOT NULL,
  `FirstPortNum` int(11) NOT NULL,
  `TemplateID` int(11) NOT NULL,
  `NominalWatts` int(11) NOT NULL,
  `PowerSupplyCount` int(11) NOT NULL,
  `DeviceType` enum('Server','Appliance','Storage Array','Switch','Chassis','Patch Panel','Physical Infrastructure') NOT NULL,
  `ChassisSlots` smallint(6) NOT NULL,
  `RearChassisSlots` smallint(6) NOT NULL,
  `ParentDevice` int(11) NOT NULL,
  `MfgDate` date NOT NULL,
  `InstallDate` date NOT NULL,
  `WarrantyCo` varchar(80) NOT NULL,
  `WarrantyExpire` date DEFAULT NULL,
  `Notes` text,
  `Reservation` tinyint(1) NOT NULL,
  `HalfDepth` tinyint(1) NOT NULL DEFAULT '0',
  `BackSide` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DeviceID`),
  KEY `SerialNo` (`SerialNo`,`AssetTag`,`PrimaryIP`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Device`
--

LOCK TABLES `fac_Device` WRITE;
/*!40000 ALTER TABLE `fac_Device` DISABLE KEYS */;
INSERT INTO `fac_Device` VALUES (1,'ASA 5510','JMX1J46X06P','','BS Primary FW','',0,4,0,0,0,5,27,1,0,0,1,0,0,'Switch',0,0,0,'1969-12-31','2014-06-24','','1969-12-31','',0,0,0),(2,'ASA 5510','JMX1J46X07Q','','BS Secondary FW','',0,4,0,0,0,5,28,1,0,0,1,0,0,'Switch',0,0,0,'1969-12-31','2014-06-24','','1969-12-31','',0,0,0),(5,'SWITCH12A','FOC1030X4UX','','','',0,1,0,0,0,7,42,1,0,0,2,0,0,'Switch',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','Cisco 2960',0,0,1),(6,'EQUALLOGIC','EQL03','','','',0,1,0,0,0,7,39,2,0,0,4,0,0,'Storage Array',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','Dell PS4100',0,0,0),(7,'EQUALLOGIC','EQL02','','','',0,1,0,0,0,7,37,2,0,0,4,0,0,'Storage Array',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','Dell PS4100',0,0,0),(8,'EQUALLOGIC','EQL01','','','',0,1,0,0,0,7,34,2,0,0,4,0,0,'Storage Array',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','Dell PS4100',0,0,0),(9,'HV18','CZJ22209R8','','','',0,1,0,0,0,7,32,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL360 G6',0,0,0),(10,'CLCUK','CZJ1410127','','','',0,1,0,0,0,7,29,2,0,0,5,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL385 G2',0,0,0),(11,'NS1','GB865111KOW','','','',0,1,0,0,0,7,28,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL140',0,0,0),(12,'NS0','GB86511V55','','','',0,1,0,0,0,7,27,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL140',0,0,0),(13,'SCH04','CZJ2401LF4','','','',0,1,0,0,0,7,25,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL360P Gen8',0,0,0),(14,'SCHV02','CZJ240ILF5','','','',0,1,0,0,0,7,24,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL360P Gen8',0,0,0),(15,'HV19','GB8809D0R6','','','',0,1,0,0,0,7,23,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL140 G3',0,0,0),(16,'HS1-HVCO3-01','CZJ238OJMG','','','',0,1,0,0,0,7,21,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL360 G7&#60;br&#62;',0,0,0),(17,'HV8','CZJ014A35G','','','',0,1,0,0,0,7,14,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL360P',0,0,0),(18,'HS1HVC03-02','CZJ10800F0','','','',0,1,0,0,0,7,15,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL 360&#13;&#10;  G6',0,0,0),(19,'HV16','CZJ1360Q8N','','','',0,1,0,0,0,7,16,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL360G7',0,0,0),(20,'MOTASOFT HV03','CZJ134063V','','','',0,1,0,0,0,7,18,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL360 G7',0,0,0),(21,'HV-15','CZJ0240BLX','','','',0,1,0,0,0,7,20,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','DL360 G7P',0,0,0),(22,'NO NAME','CZJ3020FQW','','','',0,1,0,0,0,7,13,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL360P G8',0,0,0),(23,'HV12','CZJ7300535','','','',0,1,0,0,0,7,8,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','HP DL360 G8',0,0,0),(24,'BEEFCAKE 2','','','','',0,1,0,0,0,7,4,3,0,0,0,0,0,'Storage Array',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','Dell Equallogic',0,0,0),(25,'BEEFCAKE 1','','','','',0,1,0,0,0,7,1,3,0,0,0,0,0,'Storage Array',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','Dell Equallogic',0,0,0),(27,'FW4','JN11702E1ADB','','','',0,1,0,0,0,8,41,2,8,0,6,0,0,'Switch',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','Juniper SSG550M',0,0,0),(28,'FW5','JN10FCBF6ADB','','','',0,1,0,0,0,8,39,2,8,0,6,0,0,'Switch',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','Juniper SSG550M',0,0,0),(29,'SW0-CORE','FOC1218W253','','','',0,1,0,0,0,8,38,1,28,0,2,0,0,'Switch',0,0,0,'1969-12-31','2014-07-10','','1969-12-31','Cisco Catalyst 3560G',0,0,0),(30,'SW1-CORE','FOC1251W1EL','','','',0,1,0,0,0,8,37,1,0,0,2,0,0,'Switch',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','Cisco Catalyst 3560G',0,0,0),(31,'SW1-A11A','FOC1224V547','','','',0,1,0,0,0,8,36,1,0,0,2,0,0,'Switch',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','Cisco Catalyst 2960G',0,0,1),(32,'SW1-A11B','FOC1306U1YT','','','',0,1,0,0,0,8,35,1,0,0,2,0,0,'Switch',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','Cisco Catalyst 2960G',0,0,1),(33,'SIX-SCOM1','CZC8430W6C','','','',0,1,0,0,0,8,33,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL160',0,0,0),(34,'SIX-HV1','CZJ845A4RB','','','',0,1,0,0,0,8,32,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL360 G5',0,0,0),(35,'SIX-HV2','CZJ845A4YN','','','',0,1,0,0,0,8,31,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL360 G5',0,0,0),(36,'HV14','CZJ0240BCR','','','',0,1,0,0,0,8,30,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL360 G6&#60;img&#62;',0,0,0),(37,'HV4.RAPIDHOSTUKNET','CZC91133QN','','','',0,1,0,0,0,8,29,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL160 G5&#60;img&#62;',0,0,0),(38,'HV5','CZJ916A3KE','','','',0,1,0,0,0,8,28,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL360 G5&#60;img&#62;',0,0,0),(39,'SIX-HV6','CZJ916A3NB','','','',0,1,0,0,0,8,27,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL360 G5&#60;img&#62;',0,0,0),(40,'HV7','CZJ936A58Y','','','',0,1,0,0,0,8,26,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL360 G5&#60;img&#62;',0,0,0),(41,'HV-TEMP','GB8732PTH5','','','',0,1,0,0,0,8,25,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL360 G5&#60;img&#62;',0,0,0),(42,'BALFOURBEATTY01','CZ202377J5','','','',0,1,0,0,0,8,23,2,0,0,5,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL380 G6&#60;img&#62;',0,0,0),(43,'BALFOURBEATTY02','CZ20206CR5','','','',0,1,0,0,0,8,21,2,0,0,5,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL380 G6&#60;img&#62;',0,0,0),(44,'INTERSERVE','C2J1450KQB','','','',0,1,0,0,0,8,20,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL360 G7',0,0,0),(45,'SQL2005-01-NEW','CN29FRT860','','','',0,1,0,0,0,8,2,2,0,0,5,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL380 G5',0,0,0),(46,'CPI-WEB1','C2J903A2K3','','','',0,1,0,0,0,8,1,1,0,0,3,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP DL360 G5',0,0,0),(47,'APC-A11','UNKNOWN','','','',0,1,0,0,0,8,13,2,0,0,0,0,0,'Server',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','APC transfer switch',0,0,0),(48,'PROCURVE-A10','CN29FRT860','','','',0,1,0,0,0,8,15,1,0,0,7,0,0,'Switch',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','HP Procurve 1810-24G',0,1,1),(49,'UNLABELLED','FOC1703Y03','','','',0,1,0,0,0,8,34,1,0,0,2,0,0,'Switch',0,0,0,'1969-12-31','2014-07-11','','1969-12-31','Cisco Catalyst 2960-S',0,0,1),(50,'SECURUS_SWITCH','','','','',0,7,0,0,0,9,0,1,0,0,7,0,0,'Switch',0,0,0,'1970-01-01','2014-07-11','','1970-01-01','HP2626 Switch',0,1,1),(51,'SECURUS_SWITCH','TW403PB1QU','','','',0,7,0,0,0,10,42,1,0,0,7,0,0,'Switch',0,0,0,'1970-01-01','2014-07-11','','1970-01-01','HP2626 switch',0,1,1),(52,'WOTSIT4 TEMP','Z','','','',0,23,0,0,0,10,13,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-11','','1970-01-01','Howard Jones Server',0,0,0),(53,'SECURUS SME2','UNKNOWN','','','',0,7,0,0,0,10,39,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-11','','1970-01-01','',0,0,0),(54,'SECURUS SME2','UNKNOWN','','','',0,7,0,0,0,10,38,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-11','','1970-01-01','',0,0,0),(55,'WD SENTINEL','UNKNOWN','','','',0,7,0,0,0,10,37,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-11','','1970-01-01','',0,0,0),(57,'HV10','CZJ0410G7W','','','',0,1,0,0,0,12,35,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-14','','1970-01-01','HP PROLIANT DL360&#60;br&#62;',0,0,0),(58,'SW A8','','','','',0,1,0,0,0,12,42,1,48,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-14','','1970-01-01','Cisco 2960G&#60;br&#62;',0,0,1),(59,'HI-ESX02','CZ83182KQ','','','',0,1,0,0,0,12,1,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','HP DL380 G5',0,0,0),(60,'HI-ESX01','CZ83182KG','','','',0,1,0,0,0,12,3,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','HP DL380 G5',0,0,0),(61,'HI-BACKUP','CZC81455KC','','','',0,1,0,0,0,12,5,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','HP DL380 G5',0,0,0),(62,'ARRAY1','151726HC4136959D','','','',0,1,0,0,0,12,7,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','IBM',0,0,0),(63,'SANRAD1','8465121762','','','',0,1,0,0,0,12,9,1,48,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','VSWITCH 3440',0,0,0),(64,'HV9','CZJ01809G9','','','',0,1,0,0,0,12,41,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','HP GL360 G6',0,0,0),(65,'INNO HOSTED HV2','CZ2011301G7','','','',0,1,0,0,0,12,39,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','HP DL360 G6',0,0,0),(66,'HV11','CZJ04213VM','','','',0,1,0,0,0,12,34,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','HP DL360 G6',0,0,0),(67,'INNO HOSTED HV3','CZJ0230CFF','','','',0,1,0,0,0,12,38,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','HP DL360 G6',0,0,0),(68,'PT-HOST2','CZJ94117GA','','','',0,1,0,0,0,12,37,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','HP DL360 G6',0,0,0),(69,'STSQLCLUS-SQL2','CZJ841AAFB','','','',0,1,0,0,0,12,36,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','HPÂ  DL360 G7',0,0,0),(70,'STSQLCLUS-SQL1','CZJ12006L2','','','',0,1,0,0,0,12,33,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','HP DL360 G7',0,0,0),(71,'10.1.1.32','00409D2BAE76','','10.1.1.32','',0,15,0,0,0,31,35,1,1,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','EDS HA7NET&#60;br&#62;',0,1,0),(72,'DC2-SEC','FOC1038Z01U','','212.21.96.157','DytNovtid',0,15,0,0,0,31,34,1,28,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','CISCO CATALYST 3750G&#60;br&#62;',0,0,0),(73,'COMPELLENT-SHELF3','SHU9495800034E8','','','',0,1,0,0,0,12,28,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','DELL',0,0,0),(74,'DC2-RTR A','FDO12340A60','','212.21.96.159','',0,15,0,0,0,31,33,1,28,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','CISCO CATALYST 3750G&#60;br&#62;',0,0,0),(75,'DC2-RTR B','FDO1230A93','','212.21.96.159','',0,15,0,0,0,31,31,1,28,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','CISCO CATALYST 3750G&#60;br&#62;',0,0,0),(76,'ROW A&#38;B L2 1','FDO1207Z00P','','10.1.1.46','DytNovtid',0,15,0,0,0,31,26,1,24,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','CISCO CATALYST 3750G&#60;br&#62;',0,0,0),(77,'ROW A&#38;B L2 2','FDO1220X2ZT','','10.1.1.46','',0,15,0,0,0,31,24,1,24,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','CISCO CATALYST 3750G&#60;br&#62;',0,0,0),(78,'NONE','FD012233SHQC','','','',0,15,0,0,0,31,22,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','CISCO RPS 2300&#60;br&#62;',0,0,1),(79,'CONSOLE SERVER','JAC0521A0NB','','','',0,15,0,0,0,31,18,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','CISCO 3620&#60;br&#62;',0,0,0),(80,'ADSLROUTER 212.21.114.9','FCZ100713VQ','','212.21.114.9','',0,15,0,0,0,31,17,1,1,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','CISCO 1700&#60;br&#62;',0,0,0),(81,'OFFICE FW 10.1.1.253','0064022006008033','','10.1.1.253','',0,15,0,0,0,31,16,1,5,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','JUNIPER NS 5GT&#60;br&#62;',0,0,0),(82,'WAN: 192.168.254.100','1PD49BWW00108','','192.168.254.100','',0,15,0,0,0,31,15,1,6,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','NETGEAR FVS336G&#60;br&#62;',0,0,0),(83,'A/C HUB 1','DS56B0A042203','','','',0,15,0,0,0,31,14,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','NETGEAR DS516&#60;br&#62;',0,0,0),(84,'NONE','2CBGB006243','','','',0,15,0,0,0,31,23,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','PANASONIC KX-TCD725E&#60;br&#62;',0,0,1),(85,'HOST-SWITCH01','00561','','','',0,1,0,0,0,12,24,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','HP PROCURVE 1800',0,0,1),(86,'SW-SAN2','MB6654001','','','',0,1,0,0,0,12,23,1,48,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','CISCO 2960G',0,0,1),(87,'SW-SAN1','MB507703','','','',0,1,0,0,0,12,22,1,48,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-15','','1970-01-01','CISCO 2960G',0,0,1),(88,'SW-TG-PRIV','000559','','','',0,1,0,0,0,12,10,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-16','','1970-01-01','HP PROCURVE 1800',0,0,1),(89,'SW-TG-ISCI','000560','','','',0,1,0,0,0,12,11,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-16','','1970-01-01','HP PROCURVE 1800',0,0,1),(90,'SHELF 2','','','','',0,1,0,0,0,12,12,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-16','','1970-01-01','DELL COMPELLENT',0,0,0),(91,'SHELF 1','','','','',0,1,0,0,0,12,14,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-16','','1970-01-01','DELL COMPELLENT',0,0,0),(92,'CONTROL 2','SHU94598000080A','','','',0,1,0,0,0,12,16,3,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-16','','1970-01-01','DELL COMPELLENT',0,0,0),(93,'CONTROL 1','SHU94958000901A','','','',0,1,0,0,0,12,19,3,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-16','','1970-01-01','DELL COMPELLENT',0,0,0),(94,'SW-10G-1','','','','',0,1,0,0,0,12,25,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-16','','1970-01-01','DELL 8024F',0,0,0),(95,'SW-10G-01','','','','',0,1,0,0,0,12,26,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-16','','1970-01-01','DELL 8024F',0,0,0),(96,'PT-HOST1','CZJ94105X6','','','',0,1,0,0,0,14,1,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-16','','1970-01-01','HP DL360 G6',0,0,0),(97,'INNO-DEV-01','','','','',0,1,0,0,0,14,2,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-16','','1970-01-01','FUJITSU SIEMENS',0,0,0),(98,'VS PATCH -&#62; RACK CC1','','','','',0,1,0,0,0,8,4,1,24,0,9,0,0,'Patch Panel',0,0,0,'1970-01-01','2014-07-16','','1970-01-01','',0,0,1),(99,'TRXBOX2','CZJ009017C','','','',0,1,0,0,0,14,11,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G6',0,0,0),(100,'SW-C2B2-A','F0C08442335','','','',0,1,0,0,0,14,14,1,0,0,1,0,0,'Switch',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','CISCO 2450',0,0,0),(101,'TFS01','CZJ121074D','','','',0,1,0,0,0,14,26,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G7',0,0,0),(102,'HV-INTERNAL001','CZJ21405XK','','','',0,1,0,0,0,14,27,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP PROLIANT DL360 G7',0,0,0),(103,'HV3','DEH90416FJ','','','',0,1,0,0,0,14,0,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G6',0,0,0),(104,'HV3','DEH90416FJ','','','',0,1,0,0,0,14,28,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G6',0,0,0),(105,'SANDANDER-HV-2','CZ20112V1H','','','',0,1,0,0,0,14,0,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL380 G6',0,0,0),(106,'SANDANDER-HV-2','CZ20112V1H','','','',0,1,0,0,0,14,29,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL380 G6',0,0,0),(107,'SANDANDER-HV-1','CZ20112TYZ','','','',0,1,0,0,0,14,31,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','DL 380 G6',0,0,0),(108,'SANTANDER-TS2','CZJ0150EE3','','','',0,1,0,0,0,14,33,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G6',0,0,0),(109,'SANTANDER-TS1','CZJ0150EE7','','','',0,1,0,0,0,14,34,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','DL 360 G6',0,0,0),(110,'INNO-HV1','GB87076P0B','','','',0,1,0,0,0,14,35,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','DL 140 G3',0,0,0),(111,'MITIE01','CZJ1150258','','','',0,1,0,0,0,14,37,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G6',0,0,0),(112,'DC2INNOVISE.HOSTED','GB8544NRC','','','',0,1,0,0,0,14,38,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP 140 G3',0,0,0),(113,'SW-INNO-A9','','','','',0,1,0,0,0,14,0,1,48,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','CISCO',0,0,1),(114,'SW-INNO-A9','','','','',0,1,0,0,0,14,42,1,48,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','CISCO',0,0,1),(115,'SW-A10','HB11150026','','','',0,1,0,0,0,15,41,1,0,0,1,0,0,'Switch',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','CISCO 2960G',0,0,1),(116,'FW6','','','','',0,1,0,0,0,15,39,2,0,0,6,0,0,'Switch',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','JUNIPER SSG 350M',0,0,0),(117,'FW7','JN11188B6ADE','','','',0,1,0,0,0,15,38,2,0,0,6,0,0,'Switch',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','JUNIPER SSG 350M',0,0,0),(118,'S1-SW1.CRMHOSTED','','','','',0,1,0,0,0,15,37,1,0,0,1,0,0,'Switch',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','CISCO 2960S',0,0,0),(119,'S2-SW1.CRMHOSTED','','','','',0,1,0,0,0,15,36,1,0,0,1,0,0,'Switch',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','CISCO 2960S',0,0,0),(120,'IB1.CRM.HOSTED','','','','',0,1,0,0,0,15,35,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','LOAD BALANCER',0,0,0),(121,'IB2.CRM.HOSTED','','','','',0,1,0,0,0,15,34,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','LOAD BALANCER',0,0,0),(122,'HS1-HVCO0-07','CZJ1380PGZ','','','',0,1,0,0,0,15,31,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G7',0,0,0),(123,'HU2-CRM','CZJ1380PH3','','','',0,1,0,0,0,15,30,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G7',0,0,0),(124,'HU3-CRM','CZJ1380PH9','','','',0,1,0,0,0,15,29,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G7',0,0,0),(125,'SQL1.CRM','CZJ1400163Y','','','',0,1,0,0,0,15,27,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G7',0,0,0),(126,'SQL2.CRM','CZJ13502NL','','','',0,1,0,0,0,15,27,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G7',0,0,0),(127,'SW-A10-10G-1','','','','',0,1,0,0,0,15,23,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','DELL 8132F',0,0,0),(128,'DRIVE SHELF','','','','',0,1,0,0,0,15,7,16,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP M6710',0,0,0),(129,'HV-CORTEX','CZJ1904HZ','','','',0,1,0,0,0,15,6,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G2',0,0,0),(130,'STANDBY','CZJ841A0HV','','','',0,1,0,0,0,15,4,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G5',0,0,0),(131,'SW-A13','FOC1224W2NA','','','',0,1,0,0,0,16,42,1,0,0,1,0,0,'Switch',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','CISCO CATALYST',0,0,1),(132,'VIRTUOUS','','','','',0,1,0,0,0,16,41,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','SUPERMICRO LOAD BALANCER',0,0,0),(133,'LASERQUEST','CZJ95305BD','','','',0,1,0,0,0,16,31,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL140 G6',0,0,0),(134,'CYCYLING INSTRUCTOR','CZJ94006B4','','','',0,1,0,0,0,16,29,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G6',0,0,0),(135,'VICWHEE3','','','','',0,1,0,0,0,16,29,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL140 G3',0,0,0),(136,'VOLAC D B01','CZ22381NOC','','','',0,1,0,0,0,16,25,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL380 G7',0,0,0),(137,'VOLAC-HV01','','','','',0,1,0,0,0,16,24,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G7',0,0,0),(138,'RUG-TS03','CZJ13209XZ','','','',0,1,0,0,0,16,22,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G7',0,0,0),(139,'RUG-OB02','CZJ13208RV','','','',0,1,0,0,0,16,21,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G7 ',0,0,0),(140,'TRL3','CZJ919A085','','','',0,1,0,0,0,16,20,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL 360',0,0,0),(141,'IXO.ITU.CO.UK','CZJ13208RV','','','',0,1,0,0,0,16,19,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL160',0,0,0),(142,'LTU-HV01','','','','',0,1,0,0,0,16,18,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL160',0,0,0),(143,'CMW','','000435','','',0,1,0,0,0,16,17,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL160 G5',0,0,0),(144,'LOUNGEHOOPER2','','','','',0,1,0,0,0,16,13,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL160GS',0,0,0),(145,'VZLX2','GB8648XVBX','','','',0,1,0,0,0,16,12,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL140',0,0,0),(146,'VZLX1','GB87527CEN','','','',0,1,0,0,0,16,11,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL140',0,0,0),(147,'VZLX0','','','','',0,1,0,0,0,16,10,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360',0,0,0),(148,'OWLBARN2','CZJ916A3K4','','','',0,1,0,0,0,16,8,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G5',0,0,0),(149,'MOTASOFTHV04','CZJ2050723','','','',0,1,0,0,0,16,7,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360 G7',0,0,0),(150,'MOTASOFTHV01','CZJ2060402','','','',0,1,0,0,0,16,3,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-17','','1970-01-01','HP DL360G7',0,0,0),(151,'GAPHOST03','CZJ41406LK','','','',0,1,0,0,0,15,0,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL360 G8',0,0,0),(152,'GAPHOST03','CZJ41406LK','','','',0,1,0,0,0,16,32,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL360 G8',0,0,0),(153,'JORDAN-MEDIA-01','CZJ1111OSO','','','',0,1,0,0,0,17,1,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL360 G6',0,0,0),(154,'JANSOFT-01','CZJ107027M','','','',0,1,0,0,0,17,2,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL360 G6',0,0,0),(155,'SOHNAR02','9HMGJ4J','','','',0,1,0,0,0,17,11,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','DELL PE 710',0,0,0),(156,'TIMEHARVEST','CZJ0490384','','','',0,1,0,0,0,17,19,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL360 G6',0,0,0),(157,'SVMO1','CZJ0150EP','','','',0,1,0,0,0,17,29,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL360',0,0,0),(158,'SVM-HV02','CZJ2450048','','','',0,1,0,0,0,17,30,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL360 G7',0,0,0),(160,'SVM-HV01','CZJ13103Y7','','','',0,1,0,0,0,17,30,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL360 G7',0,0,0),(161,'SW-A14','','','','',0,1,0,0,0,17,42,1,48,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','CISCO 2960G',0,0,1),(162,'NETGEAR','','','','',0,1,0,0,0,17,42,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','NETGEAR ROUTER',0,0,0),(163,'VMC1','','','','',0,1,0,0,0,17,40,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','SUPERMICRO',0,0,0),(164,'VMC2','','','','',0,1,0,0,0,17,39,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','SUPERMICRO',0,0,0),(165,'SYSLOG','','','','',0,1,0,0,0,17,27,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','FAIRCHILD',0,0,0),(166,'ELLIOT2','CZJ109002K','','','',0,1,0,0,0,17,25,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL 360',0,0,0),(167,'MXO','','','','',0,1,0,0,0,17,23,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP',0,0,0),(168,'WORMHOLE','','','','',0,1,0,0,0,17,35,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','WORMHOLE',0,0,0),(169,'MX2','','','','',0,1,0,0,0,17,9,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','GENERIC',0,0,0),(170,'VSANBACKUP1','','000009','','',0,1,0,0,0,17,7,2,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','GENERIC',0,0,0),(171,'ROTHERLETS','CZJ02207CE','','','',0,1,0,0,0,17,5,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL360',0,0,0),(172,'SW-A15','FOC1224X3ZL','','','',0,1,0,0,0,18,42,1,48,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','CISCO CATALYST',0,0,1),(173,'CLINIMED-WEB01','CZJ925A1E9','','','',0,1,0,0,0,18,31,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL360 G5',0,0,0),(174,'CLINIMED-SQL01','CZJ0300ZHN','','','',0,1,0,0,0,18,30,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL 360 G5',0,0,0),(175,'GAP-PHOTOS2','CZJ03002HN','','','',0,1,0,0,0,18,27,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP DL360 G6',0,0,0),(176,'GAP-PHOTO-STORAGE','CZJ123066P','','','',0,1,0,0,0,18,26,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-18','','1970-01-01','HP MSA50',0,0,0),(177,'SW1-CARDINAL','FOC1423Y53X','','','',0,1,0,0,0,29,42,1,0,0,1,0,0,'Switch',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','CISCO 2960G ',0,0,1),(178,'CARD-WEB','ST5Z55VJ2','','','',0,1,0,0,0,29,34,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','DELL PE 2950',0,0,0),(179,'CARD-HV01','CZJ034D8J3','','','',0,1,0,0,0,29,29,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','HP DL360 G6',0,0,0),(181,'CARD-HV03','CZJ2330KJR','','','',0,1,0,0,0,29,26,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','HP DL360 G7',0,0,0),(182,'VIRTUOZZO1','CZ501402CG','','','',0,1,0,0,0,18,19,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','HP DL 140',0,0,0),(183,'CHAPLIN-2','','','','',0,1,0,0,0,18,18,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','HP DL160 GS',0,0,0),(184,'SW-A10-10G-1','HW8ZTS1','','','',0,1,0,0,0,18,11,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','DELL POWERCONNECT 81325',0,0,0),(185,'IXO-CLAIMWATCH','CZJ1060PBJ','','','',0,1,0,0,0,18,7,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','HP DL360',0,0,0),(186,'VIRTUOUS USERS TS2','CZJ94501RT','','','',0,1,0,0,0,18,6,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','HP DL360',0,0,0),(187,'LOCATA WEB3','','','','',0,1,0,0,0,18,5,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','DELL PE R410',0,0,0),(188,'LOCATA DB5','','','','',0,1,0,0,0,18,3,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','DELL R410',0,0,0),(189,'ROW E&#38;F L2 1','F0C1104Y3E4','','10.1.1.49','',0,15,0,0,0,170,20,1,28,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','CISCO CATALYST 3750G&#60;br&#62;',0,0,0),(190,'ROW E&#38;F L2 2','F0C113725PS','','10.1.1.49','',0,15,0,0,0,170,17,1,28,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','CISCO CATALYST 3750G&#60;br&#62;',0,0,0),(192,'TH-EXT-10G','800275-00-10 1210G-02784','','212.21.98.94','',0,0,0,0,0,172,1,1,48,0,0,0,0,'Switch',0,0,0,'1970-01-01','2014-07-21','','1970-01-01','EXTREME SUMMIT X480&#60;br&#62;',0,0,0),(193,'FW1.PROCAM','WGFV-FLX01-8BHW','','','',0,1,0,0,0,29,9,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','BT RACK-P V1-B',0,0,1),(194,'SW1_PROCAM','FOC1418V1W8','','','',0,1,0,0,0,29,8,1,0,0,1,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','CISCO CATALYST 2960G',0,0,1),(195,'SW2_PROCAM','FOC14118V153','','','',0,1,0,0,0,29,7,1,0,0,1,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','CISCO CATALYST 2960G',0,0,1),(196,'RX1.PROCAM','FCZ1419C3K0','','','',0,1,0,0,0,29,7,2,48,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','CISCO 1941',0,0,0),(197,'PRO-CAM DB1','CZ202378GV','','','',0,1,0,0,0,29,5,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP DL380 G6',0,0,0),(198,'PROCAM DB2','CZ202378GS','','','',0,1,0,0,0,29,3,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DL 380 G6',0,0,0),(199,'CARD-HV02','','','','',0,1,0,0,0,29,27,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP DL360 G7',0,0,0),(200,'ORIS01','','','','',0,1,0,0,0,29,28,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP DL360 G7',0,0,0),(201,'SW-A16','FOC1104X1HW','','','',0,1,0,0,0,19,41,1,0,0,1,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','CISCO 2960 G',0,0,1),(202,'NONE','D0GYLD831N','','','',0,15,0,0,0,170,42,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP EO1010&#60;br&#62;',0,0,1),(203,'FTP4 REPLICA','BYHCN03241','','','',0,15,0,0,0,170,37,2,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','SYNOLOGY DS211J&#60;br&#62;',0,0,0),(204,'SPARE','6J68Z2J','','','',0,15,0,0,0,170,36,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL PE 860&#60;br&#62;',0,0,0),(205,'LOCATEWEB1','','','','',0,1,0,0,0,19,35,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL PE 1950',0,0,0),(206,'SPARE','84QFFS1J','','','',0,15,0,0,0,170,34,2,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL PE 2850&#60;br&#62;',0,0,0),(207,'SPARE','','','','',0,15,0,0,0,170,29,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL PE SC 1425&#60;br&#62;',0,0,0),(208,'OLD OFFICE SERVER','GT4L31J','','','',0,15,0,0,0,170,28,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL PE 1750&#60;br&#62;',0,0,0),(209,'SUPPORT3','HB4Q22J','','','',0,15,0,0,0,170,26,2,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL PE 2850&#60;br&#62;',0,0,0),(210,'LOCATEWEB2','','','','',0,1,0,0,0,19,33,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','POWERREDGE 1950',0,0,0),(211,'UK-US SIP GATEWAY','2D5Q401','','10.20.100.10','',0,15,0,0,0,170,24,2,2,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL PE 2450&#60;br&#62;',0,0,0),(212,'SECTORDB2','','','','',0,1,0,0,0,19,27,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL POWERREDGE 2950',0,0,0),(213,'SPARE','255TP2J','','','',0,15,0,0,0,170,22,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL PE 860&#60;br&#62;',0,0,0),(214,'SECTORDB3','','','','',0,1,0,0,0,19,25,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL POWEREDGE 2950',0,0,0),(215,'LOCATEDB4','','','','',0,1,0,0,0,19,23,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL POWEREDGE R710',0,0,0),(216,'CORNER COMMS RACK PATCH','','','','',0,15,0,0,0,170,6,1,24,0,9,0,0,'Patch Panel',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','PATCH PANEL&#60;br&#62;',0,1,0),(217,'ZENITH AREA','25633924073145F4','','','',0,1,0,0,0,19,21,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','ZENITH AREA 2100R',0,0,0),(218,'RACK B1 PATCH','','','','',0,15,0,0,0,170,5,1,16,0,9,0,0,'Patch Panel',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','PATCH PANEL&#60;br&#62;',0,1,0),(219,'RACK B1 PATCH','','','','',0,15,0,0,0,170,3,1,24,0,9,0,0,'Patch Panel',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','PATCH PANEL&#60;br&#62;',0,1,0),(220,'RACK B1 PATCH','','','','',0,15,0,0,0,170,0,1,24,0,9,0,0,'Patch Panel',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','PATCH PANEL&#60;br&#62;',0,1,0),(221,'RACK B1 PATCH','','','','',0,15,0,0,0,170,1,1,24,0,9,0,0,'Patch Panel',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','PATCH PANEL&#60;br&#62;',0,1,0),(222,'SL-EXT-10G','1150N-40001','','212.21.98.33','',0,15,0,0,0,65,39,1,48,0,10,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','EXTREME SUMMIT X480&#60;br&#62;',0,0,0),(223,'02FW02','','','','',0,11,0,0,0,30,35,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','Juniper SSG5',0,0,1),(224,'02FW04','','','','',0,11,0,0,0,30,35,1,0,0,1,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','Cisco ASA5505',0,0,1),(225,'02FW01','','','','',0,11,0,0,0,30,32,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','Juniper SSG5',0,0,1),(226,'02FW03','','','','',0,11,0,0,0,30,32,1,0,0,1,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','Cisco ASA5505',0,0,1),(227,'02SW01','SG0241P07N','','','',0,11,0,0,0,30,26,1,0,0,7,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP Procurve 2910',0,0,1),(228,'02SW02','SG0241P077','','','',0,11,0,0,0,30,24,1,0,0,7,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP Procurve 2910',0,0,1),(229,'02SW03','CN0202G2K1','','','',0,11,0,0,0,30,22,1,0,0,7,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP Procurve 1810',0,0,1),(230,'02VM04','CDJSV4J','','','',0,11,0,0,0,30,13,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL PowerEdge R710',0,0,0),(231,'02VM03','DDJSV4J','','','',0,11,0,0,0,30,11,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL PowerEdge R710',0,0,0),(232,'02VM02','8DJSV4J','','','',0,11,0,0,0,30,9,2,0,0,4,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL PowerEdge R710',0,0,0),(233,'02VM01','BDJSV4J','','','',0,11,0,0,0,30,7,2,0,0,4,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL PowerEdge R710',0,0,0),(234,'02SAN01','5064HJ1','','','',0,11,0,0,0,30,6,1,0,0,8,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','DELL EquaLogic PS4000Â ',0,0,0),(235,'NETBOTZ02','','','','',0,11,0,0,0,30,42,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','APC Netbotz 200',0,0,1),(236,'DATASTACK1','CN30BZ00K2','','','',0,0,0,0,0,173,31,1,0,0,7,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP Procurve 5120-24G',0,0,1),(237,'DATASTACK2','CN30BZ00BQ','','','',0,0,0,0,0,173,32,1,24,0,7,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP Procurve 5120-24G',0,0,1),(238,'PRIMARY','C0EAE4840BAE','','','',0,0,0,0,0,173,34,1,0,0,0,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','Dell Sonicwall NSA3600',0,0,0),(239,'SWITCH','SG3185D00V','','','',0,25,0,0,0,33,40,1,0,0,7,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP 3500-48',0,0,1),(240,'FIREWALL-CISCO','JMX181940WW','','','',0,25,0,0,0,33,0,0,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','CISCO ASA 5505 ON FLOOR',0,1,0),(241,'VOICE GATEWAY 1','13TG50281426','','','',0,25,0,0,0,33,1,3,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','Avaya G450',0,0,0),(242,'SWITCH','SG3185D00K','','','',0,25,0,0,0,33,38,1,0,0,7,0,0,'Switch',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP 3500-48',0,0,1),(243,'SBC','IPC531041161','','','',0,25,0,0,0,33,31,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','Avaya Poweredge R210(11)',0,0,0),(244,'VM WARE SERVER 2','CZJ3350F91','','','',0,25,0,0,0,33,23,2,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP PROLIANT DL385P GEN8',0,0,0),(245,'VMWARE SERVER 4','CZJ4120H2V','','','',0,25,0,0,0,33,27,2,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP PROLIANT DL385P GEN8',0,0,0),(246,'VM WARE SERVER 1','CZJ4120H3F','','','',0,25,0,0,0,33,21,2,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP PROLIANT DL385P GEN8',0,0,0),(247,'VOICE GATEWAY 2','13TG50281488','','','',0,25,0,0,0,33,5,3,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','AVAYA G450',0,0,0),(248,'VOICE GATEWAY 3','13TG48267450','','','',0,25,0,0,0,33,8,3,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','AVAYA G450',0,0,0),(249,'VOICE GATEWAY 4','13TG48238865','','','',0,25,0,0,0,33,12,3,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','AVAYA G450',0,0,0),(250,'VM WARE SERVER 3','CZJ4120H3H','','','',0,25,0,0,0,33,25,2,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-22','','1970-01-01','HP PROVILANT DL385P GEN8',0,0,0),(251,'SECONDARY','C0EAE484QBDA','','','',0,0,0,0,0,173,33,1,0,0,0,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','Sonicwall NSA3600',0,0,0),(252,'PRIMARY CORE','SG350VA01M','','','',0,0,0,0,0,173,28,3,0,0,29,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','HP 4204 VL',0,0,1),(253,'SW01 F01','FCZ1344708L','','','',0,0,0,0,0,173,26,2,0,0,0,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','Cisco 2800',0,0,0),(254,'NONE','0251R-00820','','','',0,15,0,0,0,174,27,1,0,0,24,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','EXTREME SUMMIT24 E3&#60;br&#62;',0,0,0),(255,'NONE','SG916IP01Q','','','',0,15,0,0,0,174,26,1,0,0,23,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','HP PROCURVE 2910AL-24G&#60;br&#62;',0,0,0),(256,'SW09','FOC1133Z9RQ','','','',0,15,0,0,0,174,25,1,0,0,11,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO CATALYST 3560G&#60;br&#62;',0,0,0),(257,'TEMP 1 10.20.1.81','FDO1402Y020','','','',0,15,0,0,0,174,24,1,0,0,12,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO CATALYST 3750&#60;br&#62;',0,0,0),(258,'SWITCH 1/SW14','TW403PB1CV','','','',0,15,0,0,0,174,23,1,0,0,22,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','HP PROCURVE 2626&#60;br&#62;',0,1,0),(259,'TH-SEC/SW07','FDO1220X302','','','',0,15,0,0,0,174,22,1,0,0,12,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO CATALYST 3750&#60;br&#62;',0,1,0),(260,'NONE','','','','',0,15,0,0,0,174,21,1,0,0,25,0,0,'Server',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','HP KVM&#60;br&#62;',0,0,0),(261,'NONE','FOC1245Z4W0','','','',0,15,0,0,0,174,19,1,0,0,13,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO CATALYST 3750G&#60;br&#62;',0,0,0),(262,'SW01 ROI','JMX1342L08N','','','',0,0,0,0,0,173,25,1,0,0,1,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','Cisco ASA5510',0,0,0),(263,'NONE','','','','',0,15,0,0,0,174,18,1,0,0,27,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CONSOLE SWITCH&#60;br&#62;',0,0,0),(264,'NONE','0002D302F429','','','',0,15,0,0,0,174,17,1,0,0,26,0,0,'Physical Infrastructure',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','APC NETBOTZ 320E&#60;br&#62;',0,0,0),(265,'SWITCH 4/SW12','FCZ1041X0HZ','','','',0,15,0,0,0,174,16,1,0,0,14,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO CATALYST 2950&#60;br&#62;',0,0,0),(266,'FW07','0B010188','','','',0,15,0,0,0,174,15,1,0,0,21,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','JUNIPER NETSCREEN 100',0,0,0),(267,'RTR05','FCZ140570PR','','','',0,15,0,0,0,174,14,1,0,0,19,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO 2811&#60;br&#62;',0,0,0),(268,'HOFW02 10.100.240/FW4','CNM7M3PBRA','','','',0,15,0,0,0,174,13,1,0,0,20,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO PIX 515E',0,0,0),(269,'RTR01','FHK0702140V','','','',0,15,0,0,0,174,12,1,0,0,16,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO 1760',0,0,0),(270,'FW03','CNM7Y3PBRA','','','',0,15,0,0,0,174,11,1,0,0,20,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO PIX 515E',0,0,0),(271,'RTR02','FCZ140570PQ','','','',0,15,0,0,0,174,10,1,0,0,18,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO 2800',0,0,0),(272,'SW01SW01','DNI1339E505','','','',0,0,0,0,0,173,24,1,48,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CAT SB',0,0,0),(273,'CIJDC1RTRP03','FCZ140970WQ','','','',0,15,0,0,0,174,9,1,0,0,19,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO 2811&#60;br&#62;',0,0,0),(274,'SRV-ESX2','CZ24110392','','','',0,0,0,0,0,173,20,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','HP Proliant DL380 Gen8',0,0,0),(275,'RTR07','FCZ084240AS','','','',0,15,0,0,0,174,23,1,0,0,15,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO 1700',0,1,1),(276,'RTR06','FTX1410802X','','','',0,15,0,0,0,174,22,1,0,0,17,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','CISCO 877',0,1,1),(277,'SRV-ESX1','CZ4000117','','','',0,0,0,0,0,173,18,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','HP Proliant DL380 Gen8',0,0,0),(278,'SRV-FAS2A','165000Z082477','','','',0,0,0,0,0,173,16,2,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','NetApp FAS2',0,0,0),(279,'SW01S10','39N984J','','','',0,0,0,0,0,173,11,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','DELL PE 2950',0,0,0),(280,'SCT10S01','BJCXF3J','','','',0,0,0,0,0,173,13,1,0,0,8,0,0,'Server',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','Dell PE 1950',0,0,0),(281,'SCT10S02','BK4904J','','','',0,0,0,0,0,173,9,2,0,0,4,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','DELL PE2950',0,0,0),(282,'SW01 H01','CZC9301QG8','','','',0,0,0,0,0,173,7,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','HP Proliant DL380 G6',0,0,0),(283,'SW01 HO2','CZJ9391QF8','','','',0,0,0,0,0,173,5,2,0,0,5,0,0,'Server',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','HP Proliant DL380 G6',0,0,0),(284,'SW01FCS02','','','','',0,0,0,0,0,173,4,1,0,0,7,0,0,'Switch',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','HP Storageworks 8/8',0,0,0),(285,'SW01FCS01','','','','',0,0,0,0,0,173,3,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','HP Storageworks 8/8',0,0,0),(286,'SW01 SAN1','','','','',0,0,0,0,0,173,1,2,0,0,28,0,0,'Storage Array',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','MSA 2000',0,0,0),(287,'NETAPP','','','','',0,0,0,0,0,173,14,1,0,0,0,0,0,'Server',0,0,0,'1970-01-01','2014-07-23','','1970-01-01','NetApp FAS2020',0,0,0),(288,'DL360P G8','CZJ23705V1','','','',0,0,0,0,0,173,30,1,0,0,3,0,0,'Server',0,0,0,'1970-01-01','2014-07-24','','1970-01-01','HP Proliant DL360p G8',0,0,0),(289,'DRSW04','','','','',0,0,0,0,0,173,28,1,48,0,2,0,0,'Switch',0,0,0,'1970-01-01','2014-07-24','','1970-01-01','',0,0,0);
/*!40000 ALTER TABLE `fac_Device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_DevicePorts`
--

DROP TABLE IF EXISTS `fac_DevicePorts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_DevicePorts` (
  `ConnectionID` int(11) NOT NULL AUTO_INCREMENT,
  `DeviceID` int(11) DEFAULT NULL,
  `DevicePort` int(11) DEFAULT NULL,
  `MediaID` int(11) DEFAULT NULL,
  `PortDescriptor` varchar(30) DEFAULT NULL,
  `ColorID` int(11) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`ConnectionID`),
  KEY `DeviceID` (`DeviceID`,`DevicePort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_DevicePorts`
--

LOCK TABLES `fac_DevicePorts` WRITE;
/*!40000 ALTER TABLE `fac_DevicePorts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_DevicePorts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_DeviceTags`
--

DROP TABLE IF EXISTS `fac_DeviceTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_DeviceTags` (
  `DeviceID` int(11) NOT NULL,
  `TagID` int(11) NOT NULL,
  PRIMARY KEY (`DeviceID`,`TagID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_DeviceTags`
--

LOCK TABLES `fac_DeviceTags` WRITE;
/*!40000 ALTER TABLE `fac_DeviceTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_DeviceTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_DeviceTemplate`
--

DROP TABLE IF EXISTS `fac_DeviceTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_DeviceTemplate` (
  `TemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `ManufacturerID` int(11) NOT NULL,
  `Model` varchar(80) NOT NULL,
  `Height` int(11) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Wattage` int(11) NOT NULL,
  `DeviceType` enum('Server','Appliance','Storage Array','Switch','Chassis','Patch Panel','Physical Infrastructure') NOT NULL DEFAULT 'Server',
  `PSCount` int(11) NOT NULL,
  `NumPorts` int(11) NOT NULL,
  `Notes` text NOT NULL,
  `FrontPictureFile` varchar(45) NOT NULL,
  `RearPictureFile` varchar(45) NOT NULL,
  `ChassisSlots` smallint(6) NOT NULL,
  `RearChassisSlots` smallint(6) NOT NULL,
  PRIMARY KEY (`TemplateID`),
  UNIQUE KEY `ManufacturerID` (`ManufacturerID`,`Model`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_DeviceTemplate`
--

LOCK TABLES `fac_DeviceTemplate` WRITE;
/*!40000 ALTER TABLE `fac_DeviceTemplate` DISABLE KEYS */;
INSERT INTO `fac_DeviceTemplate` VALUES (1,5,'ASA 5510',1,0,0,'Switch',0,0,'','Cisco_ASA_5510_front.jpg','Cisco_ASA_5510_rear.jpg',0,0),(2,5,'1U SWITCH',1,0,0,'Switch',0,48,'Generic Cisco Switch','cisco_switch_front.jpg','cisco_switch_rear.jpg',0,0),(3,7,'1U SERVER',1,0,0,'Server',0,0,'','HP_1U_server_front.jpg','HP_1U_server_back.jpg',0,0),(4,8,'EQUALLOGIC 2U',2,0,0,'Storage Array',0,0,'','equallogic_2u_front.jpg','equallogic_2u_rear.png',0,0),(5,7,'2U SERVER',2,0,0,'Server',0,0,'','HP_2U_server_front.png','HP_2U_server_back.jpg',0,0),(6,6,'2U FIREWALL',2,0,0,'Switch',0,0,'','juniper_2u_firewall_front.png','juniper_2u_firewall_back.png',0,0),(7,7,'1U SWITCH',1,0,0,'Switch',0,0,'','hp_switch_front.jpg','cisco_switch_rear.jpg',0,0),(8,8,'1U SERVER',1,0,0,'Server',0,0,'','dell_1u_server_front.jpg','dell_1u_server_back.jpg',0,0),(9,1,'24PORTPATCHPANEL',1,0,0,'Patch Panel',0,24,'','1u_patch_front.jpg','',0,0),(10,12,'SUMMIT X480',1,0,0,'Switch',0,48,'','SummitX480_24X_Front.png','Summit_X440_24X_Rear.JPG',0,0),(11,5,'CATALYST 3560G',1,0,0,'Switch',0,0,'','','',0,0),(12,5,'CATALYST 3750',1,0,0,'Switch',0,0,'','','',0,0),(13,5,'CATALYST 3750G',1,0,0,'Switch',0,0,'','','',0,0),(14,5,'CATALYST 2950',1,0,0,'Switch',0,0,'','','',0,0),(15,5,'1700',1,0,0,'Switch',0,0,'','','',0,0),(16,5,'1760',1,0,0,'Switch',0,0,'','','',0,0),(17,5,'877',1,0,0,'Switch',0,0,'','','',0,0),(18,5,'2800',1,0,0,'Switch',0,0,'','','',0,0),(19,5,'2811',1,0,0,'Switch',0,0,'','','',0,0),(20,5,'PIX 515E',1,0,0,'Switch',0,0,'','','',0,0),(21,6,'NETSCREEN 100',1,0,0,'Switch',0,0,'','','',0,0),(22,7,'PROCURVE 2626',1,0,0,'Switch',0,0,'','','',0,0),(23,7,'PROCURVE 2910AL',1,0,0,'Switch',0,0,'','','',0,0),(24,12,'SUMMIT 24',1,0,0,'Switch',0,0,'','','',0,0),(25,7,'KVM',1,0,0,'Server',0,0,'','','',0,0),(26,2,'NETBOTZ 320E',1,0,0,'Physical Infrastructure',0,0,'','','',0,0),(27,1,'CONSOLE SWITCH',1,0,0,'Switch',0,0,'','','',0,0),(28,7,'MSA 2000',2,0,0,'Storage Array',0,0,'','HP_MSA_2000.jpg','HP_MSA_2000-rear.jpg',0,0),(29,7,'4204 VL',3,0,0,'Switch',0,0,'','HP__4204vl_front.jpg','HP_4204vl_rear.jpg',0,0);
/*!40000 ALTER TABLE `fac_DeviceTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_EscalationTimes`
--

DROP TABLE IF EXISTS `fac_EscalationTimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_EscalationTimes` (
  `EscalationTimeID` int(11) NOT NULL AUTO_INCREMENT,
  `TimePeriod` varchar(80) NOT NULL,
  PRIMARY KEY (`EscalationTimeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_EscalationTimes`
--

LOCK TABLES `fac_EscalationTimes` WRITE;
/*!40000 ALTER TABLE `fac_EscalationTimes` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_EscalationTimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Escalations`
--

DROP TABLE IF EXISTS `fac_Escalations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Escalations` (
  `EscalationID` int(11) NOT NULL AUTO_INCREMENT,
  `Details` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`EscalationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Escalations`
--

LOCK TABLES `fac_Escalations` WRITE;
/*!40000 ALTER TABLE `fac_Escalations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_Escalations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_GenericLog`
--

DROP TABLE IF EXISTS `fac_GenericLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_GenericLog` (
  `UserID` varchar(80) NOT NULL,
  `Class` varchar(40) NOT NULL,
  `ObjectID` varchar(80) NOT NULL,
  `ChildID` int(11) DEFAULT NULL,
  `Action` varchar(40) NOT NULL,
  `Property` varchar(40) NOT NULL,
  `OldVal` varchar(255) NOT NULL,
  `NewVal` varchar(255) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_GenericLog`
--

LOCK TABLES `fac_GenericLog` WRITE;
/*!40000 ALTER TABLE `fac_GenericLog` DISABLE KEYS */;
INSERT INTO `fac_GenericLog` VALUES ('brian_c','DevicePorts','289',44,'1','PortNumber','','44','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',44,'1','Label','','Port44','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',45,'1','DeviceID','','289','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',45,'1','PortNumber','','45','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',45,'1','Label','','Port45','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',46,'1','DeviceID','','289','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',46,'1','PortNumber','','46','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',46,'1','Label','','Port46','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',47,'1','DeviceID','','289','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',47,'1','PortNumber','','47','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',47,'1','Label','','Port47','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',48,'1','DeviceID','','289','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',48,'1','PortNumber','','48','2014-07-24 10:09:50'),('brian_c','DevicePorts','289',48,'1','Label','','Port48','2014-07-24 10:09:50'),('brian_c','Device','289',NULL,'1','DeviceID','','289','2014-07-24 10:09:50'),('brian_c','Device','289',NULL,'1','Label','','DRSW04','2014-07-24 10:09:50'),('brian_c','Device','289',NULL,'1','Cabinet','','173','2014-07-24 10:09:50'),('brian_c','Device','289',NULL,'1','Position','','28','2014-07-24 10:09:50'),('brian_c','Device','289',NULL,'1','Height','','1','2014-07-24 10:09:50'),('brian_c','Device','289',NULL,'1','Ports','','48','2014-07-24 10:09:50'),('brian_c','Device','289',NULL,'1','TemplateID','','2','2014-07-24 10:09:50'),('brian_c','Device','289',NULL,'1','DeviceType','','Switch','2014-07-24 10:09:50'),('brian_c','Device','289',NULL,'1','MfgDate','','1970-01-01','2014-07-24 10:09:50'),('brian_c','Device','289',NULL,'1','InstallDate','','2014-07-24','2014-07-24 10:09:50'),('brian_c','Device','289',NULL,'1','WarrantyExpire','','1970-01-01','2014-07-24 10:09:50'),('brian_c','DeviceTemplate','28',NULL,'3','RearPictureFile','','HP_MSA_2000-rear.jpg','2014-07-24 11:16:50'),('brian_c','DeviceTemplate','29',NULL,'1','TemplateID','','29','2014-07-24 16:56:46'),('brian_c','DeviceTemplate','29',NULL,'1','ManufacturerID','','7','2014-07-24 16:56:46'),('brian_c','DeviceTemplate','29',NULL,'1','Model','','4204 VL','2014-07-24 16:56:46'),('brian_c','DeviceTemplate','29',NULL,'1','Height','','3','2014-07-24 16:56:46'),('brian_c','DeviceTemplate','29',NULL,'1','DeviceType','','Switch','2014-07-24 16:56:46'),('brian_c','DeviceTemplate','29',NULL,'3','FrontPictureFile','','HP__4204vl_front.jpg','2014-07-24 16:58:12'),('brian_c','Device','252',NULL,'3','TemplateID','','29','2014-07-24 16:59:08'),('brian_c','DeviceTemplate','29',NULL,'3','RearPictureFile','','HP_4204vl_rear.jpg','2014-07-24 17:06:48'),('brian_c','DeviceTemplate','1',NULL,'3','FrontPictureFile','','Cisco_ASA_5510_front.jpg','2014-07-24 17:28:38'),('brian_c','DeviceTemplate','1',NULL,'3','RearPictureFile','','Cisco_ASA_5510_rear.jpg','2014-07-24 17:28:38'),('brian_c','Device','224',NULL,'3','TemplateID','','1','2014-07-24 17:31:25'),('brian_c','Device','224',NULL,'3','DeviceType','Server','Switch','2014-07-24 17:31:25'),('brian_c','Device','226',NULL,'3','TemplateID','','1','2014-07-24 17:32:16'),('brian_c','Device','226',NULL,'3','DeviceType','Server','Switch','2014-07-24 17:32:16'),('alan_p','CDUTemplate','1',NULL,'3','OID1','','1.3.6.1.4.1.3815.1.2.2.1.1.2.1.1.2.5','2014-07-24 18:01:34'),('alan_p','CDUTemplate','1',NULL,'3','ProcessingProfile','SingleOIDAmperes','SingleOIDWatts','2014-07-24 18:01:34'),('alan_p','PowerDistribution','7',NULL,'3','IPAddress','','10.22.5.201','2014-07-24 18:03:40'),('alan_p','PowerDistribution','7',NULL,'3','SNMPCommunity','','public','2014-07-24 18:03:40');
/*!40000 ALTER TABLE `fac_GenericLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Manufacturer`
--

DROP TABLE IF EXISTS `fac_Manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Manufacturer` (
  `ManufacturerID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(80) NOT NULL,
  PRIMARY KEY (`ManufacturerID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Manufacturer`
--

LOCK TABLES `fac_Manufacturer` WRITE;
/*!40000 ALTER TABLE `fac_Manufacturer` DISABLE KEYS */;
INSERT INTO `fac_Manufacturer` VALUES (10,'3PAR'),(2,'APC'),(5,'Cisco'),(8,'Dell'),(12,'Extreme Networks'),(3,'Geist'),(1,'Generic'),(7,'HP'),(9,'IBM'),(6,'Juniper'),(4,'ServerTech');
/*!40000 ALTER TABLE `fac_Manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_MediaTypes`
--

DROP TABLE IF EXISTS `fac_MediaTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_MediaTypes` (
  `MediaID` int(11) NOT NULL AUTO_INCREMENT,
  `MediaType` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ColorID` int(11) NOT NULL,
  PRIMARY KEY (`MediaID`),
  UNIQUE KEY `mediatype` (`MediaType`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_MediaTypes`
--

LOCK TABLES `fac_MediaTypes` WRITE;
/*!40000 ALTER TABLE `fac_MediaTypes` DISABLE KEYS */;
INSERT INTO `fac_MediaTypes` VALUES (1,'Copper',0),(2,'SM Fibre',0),(3,'MM Fibre',0);
/*!40000 ALTER TABLE `fac_MediaTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_PDUStats`
--

DROP TABLE IF EXISTS `fac_PDUStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_PDUStats` (
  `PDUID` int(11) NOT NULL,
  `Wattage` int(11) NOT NULL,
  `LastRead` datetime DEFAULT NULL,
  PRIMARY KEY (`PDUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_PDUStats`
--

LOCK TABLES `fac_PDUStats` WRITE;
/*!40000 ALTER TABLE `fac_PDUStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_PDUStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_PanelSchedule`
--

DROP TABLE IF EXISTS `fac_PanelSchedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_PanelSchedule` (
  `PanelID` int(11) NOT NULL AUTO_INCREMENT,
  `PolePosition` int(11) NOT NULL,
  `NumPoles` int(11) NOT NULL,
  `Label` varchar(80) NOT NULL,
  PRIMARY KEY (`PanelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_PanelSchedule`
--

LOCK TABLES `fac_PanelSchedule` WRITE;
/*!40000 ALTER TABLE `fac_PanelSchedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_PanelSchedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_PatchConnection`
--

DROP TABLE IF EXISTS `fac_PatchConnection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_PatchConnection` (
  `PanelDeviceID` int(11) NOT NULL,
  `PanelPortNumber` int(11) NOT NULL,
  `FrontEndpointDeviceID` int(11) DEFAULT NULL,
  `FrontEndpointPort` int(11) DEFAULT NULL,
  `RearEndpointDeviceID` int(11) DEFAULT NULL,
  `RearEndpointPort` int(11) DEFAULT NULL,
  `FrontNotes` varchar(80) DEFAULT NULL,
  `RearNotes` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`PanelDeviceID`,`PanelPortNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_PatchConnection`
--

LOCK TABLES `fac_PatchConnection` WRITE;
/*!40000 ALTER TABLE `fac_PatchConnection` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_PatchConnection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Ports`
--

DROP TABLE IF EXISTS `fac_Ports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Ports` (
  `DeviceID` int(11) NOT NULL,
  `PortNumber` int(11) NOT NULL,
  `Label` varchar(40) NOT NULL,
  `MediaID` int(11) NOT NULL DEFAULT '0',
  `ColorID` int(11) NOT NULL DEFAULT '0',
  `PortNotes` varchar(80) NOT NULL,
  `ConnectedDeviceID` int(11) DEFAULT NULL,
  `ConnectedPort` int(11) DEFAULT NULL,
  `Notes` varchar(80) NOT NULL,
  PRIMARY KEY (`DeviceID`,`PortNumber`),
  UNIQUE KEY `LabeledPort` (`DeviceID`,`PortNumber`,`Label`),
  UNIQUE KEY `ConnectedDevice` (`ConnectedDeviceID`,`ConnectedPort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Ports`
--

LOCK TABLES `fac_Ports` WRITE;
/*!40000 ALTER TABLE `fac_Ports` DISABLE KEYS */;
INSERT INTO `fac_Ports` VALUES (27,1,'Port1',0,0,'',NULL,NULL,''),(27,2,'Port2',0,0,'',77,5,'C10027'),(27,3,'Port3',0,0,'',NULL,NULL,''),(27,4,'Port4',0,0,'',NULL,NULL,''),(27,5,'Port5',0,0,'',NULL,NULL,''),(27,6,'Port6',0,0,'',NULL,NULL,''),(27,7,'Port7',0,0,'',NULL,NULL,''),(27,8,'Port8',0,0,'',NULL,NULL,''),(28,1,'Port1',0,0,'',NULL,NULL,''),(28,2,'Port2',0,0,'',76,10,'C10326'),(28,3,'Port3',0,0,'',NULL,NULL,''),(28,4,'Port4',0,0,'',NULL,NULL,''),(28,5,'Port5',0,0,'',NULL,NULL,''),(28,6,'Port6',0,0,'',NULL,NULL,''),(28,7,'Port7',0,0,'',NULL,NULL,''),(28,8,'Port8',0,0,'',NULL,NULL,''),(29,1,'Port1',0,0,'',NULL,NULL,''),(29,2,'Port2',0,0,'',NULL,NULL,''),(29,3,'Port3',0,0,'',NULL,NULL,''),(29,4,'Port4',0,0,'',NULL,NULL,''),(29,5,'Port5',0,0,'',NULL,NULL,''),(29,6,'Port6',0,0,'',NULL,NULL,''),(29,7,'Port7',0,0,'',NULL,NULL,''),(29,8,'Port8',0,0,'',NULL,NULL,''),(29,9,'Port9',0,0,'',NULL,NULL,''),(29,10,'Port10',0,0,'',NULL,NULL,''),(29,11,'Port11',0,0,'',NULL,NULL,''),(29,12,'Port12',0,0,'',NULL,NULL,''),(29,13,'Port13',0,0,'',NULL,NULL,''),(29,14,'Port14',0,0,'',NULL,NULL,''),(29,15,'Port15',0,0,'',NULL,NULL,''),(29,16,'Port16',0,0,'',NULL,NULL,''),(29,17,'Port17',0,0,'',NULL,NULL,''),(29,18,'Port18',0,0,'',NULL,NULL,''),(29,19,'Port19',0,0,'',NULL,NULL,''),(29,20,'Port20',0,0,'',NULL,NULL,''),(29,21,'Port21',0,0,'',72,13,'C10029'),(29,22,'Port22',0,0,'',NULL,NULL,''),(29,23,'Port23',0,0,'',NULL,NULL,''),(29,24,'Port24',0,0,'',NULL,NULL,''),(29,25,'Port25',0,0,'',NULL,NULL,''),(29,26,'Port26',0,0,'',NULL,NULL,''),(29,27,'Port27',0,0,'',NULL,NULL,''),(29,28,'Port28',0,0,'',NULL,NULL,''),(58,1,'Port1',0,0,'',NULL,NULL,''),(58,2,'Port2',0,0,'',NULL,NULL,''),(58,3,'Port3',0,0,'',NULL,NULL,''),(58,4,'Port4',0,0,'',NULL,NULL,''),(58,5,'Port5',0,0,'',NULL,NULL,''),(58,6,'Port6',0,0,'',NULL,NULL,''),(58,7,'Port7',0,0,'',NULL,NULL,''),(58,8,'Port8',0,0,'',NULL,NULL,''),(58,9,'Port9',0,0,'',NULL,NULL,''),(58,10,'Port10',0,0,'',NULL,NULL,''),(58,11,'Port11',0,0,'',NULL,NULL,''),(58,12,'Port12',0,0,'',NULL,NULL,''),(58,13,'Port13',0,0,'',NULL,NULL,''),(58,14,'Port14',0,0,'',NULL,NULL,''),(58,15,'Port15',0,0,'',NULL,NULL,''),(58,16,'Port16',0,0,'',NULL,NULL,''),(58,17,'Port17',0,0,'',NULL,NULL,''),(58,18,'Port18',0,0,'',NULL,NULL,''),(58,19,'Port19',0,0,'',NULL,NULL,''),(58,20,'Port20',0,0,'',NULL,NULL,''),(58,21,'Port21',0,0,'',NULL,NULL,''),(58,22,'Port22',0,0,'',NULL,NULL,''),(58,23,'Port23',0,0,'',NULL,NULL,''),(58,24,'Port24',0,0,'',NULL,NULL,''),(58,25,'Port25',0,0,'',NULL,NULL,''),(58,26,'Port26',0,0,'',NULL,NULL,''),(58,27,'Port27',0,0,'',NULL,NULL,''),(58,28,'Port28',0,0,'',NULL,NULL,''),(58,29,'Port29',0,0,'',NULL,NULL,''),(58,30,'Port30',0,0,'',NULL,NULL,''),(58,31,'Port31',0,0,'',NULL,NULL,''),(58,32,'Port32',0,0,'',NULL,NULL,''),(58,33,'Port33',0,0,'',NULL,NULL,''),(58,34,'Port34',0,0,'',NULL,NULL,''),(58,35,'Port35',0,0,'',NULL,NULL,''),(58,36,'Port36',0,0,'',NULL,NULL,''),(58,37,'Port37',0,0,'',NULL,NULL,''),(58,38,'Port38',0,0,'',NULL,NULL,''),(58,39,'Port39',0,0,'',NULL,NULL,''),(58,40,'Port40',0,0,'',NULL,NULL,''),(58,41,'Port41',0,0,'',NULL,NULL,''),(58,42,'Port42',0,0,'',NULL,NULL,''),(58,43,'Port43',0,0,'',NULL,NULL,''),(58,44,'Port44',0,0,'',NULL,NULL,''),(58,45,'Port45',0,0,'',NULL,NULL,''),(58,46,'Port46',0,0,'',NULL,NULL,''),(58,47,'Port47',0,0,'',NULL,NULL,''),(58,48,'Port48',0,0,'',NULL,NULL,''),(63,1,'Port1',0,0,'',NULL,NULL,''),(63,2,'Port2',0,0,'',NULL,NULL,''),(63,3,'Port3',0,0,'',NULL,NULL,''),(63,4,'Port4',0,0,'',NULL,NULL,''),(63,5,'Port5',0,0,'',NULL,NULL,''),(63,6,'Port6',0,0,'',NULL,NULL,''),(63,7,'Port7',0,0,'',NULL,NULL,''),(63,8,'Port8',0,0,'',NULL,NULL,''),(63,9,'Port9',0,0,'',NULL,NULL,''),(63,10,'Port10',0,0,'',NULL,NULL,''),(63,11,'Port11',0,0,'',NULL,NULL,''),(63,12,'Port12',0,0,'',NULL,NULL,''),(63,13,'Port13',0,0,'',NULL,NULL,''),(63,14,'Port14',0,0,'',NULL,NULL,''),(63,15,'Port15',0,0,'',NULL,NULL,''),(63,16,'Port16',0,0,'',NULL,NULL,''),(63,17,'Port17',0,0,'',NULL,NULL,''),(63,18,'Port18',0,0,'',NULL,NULL,''),(63,19,'Port19',0,0,'',NULL,NULL,''),(63,20,'Port20',0,0,'',NULL,NULL,''),(63,21,'Port21',0,0,'',NULL,NULL,''),(63,22,'Port22',0,0,'',NULL,NULL,''),(63,23,'Port23',0,0,'',NULL,NULL,''),(63,24,'Port24',0,0,'',NULL,NULL,''),(63,25,'Port25',0,0,'',NULL,NULL,''),(63,26,'Port26',0,0,'',NULL,NULL,''),(63,27,'Port27',0,0,'',NULL,NULL,''),(63,28,'Port28',0,0,'',NULL,NULL,''),(63,29,'Port29',0,0,'',NULL,NULL,''),(63,30,'Port30',0,0,'',NULL,NULL,''),(63,31,'Port31',0,0,'',NULL,NULL,''),(63,32,'Port32',0,0,'',NULL,NULL,''),(63,33,'Port33',0,0,'',NULL,NULL,''),(63,34,'Port34',0,0,'',NULL,NULL,''),(63,35,'Port35',0,0,'',NULL,NULL,''),(63,36,'Port36',0,0,'',NULL,NULL,''),(63,37,'Port37',0,0,'',NULL,NULL,''),(63,38,'Port38',0,0,'',NULL,NULL,''),(63,39,'Port39',0,0,'',NULL,NULL,''),(63,40,'Port40',0,0,'',NULL,NULL,''),(63,41,'Port41',0,0,'',NULL,NULL,''),(63,42,'Port42',0,0,'',NULL,NULL,''),(63,43,'Port43',0,0,'',NULL,NULL,''),(63,44,'Port44',0,0,'',NULL,NULL,''),(63,45,'Port45',0,0,'',NULL,NULL,''),(63,46,'Port46',0,0,'',NULL,NULL,''),(63,47,'Port47',0,0,'',NULL,NULL,''),(63,48,'Port48',0,0,'',NULL,NULL,''),(71,1,'Port1',1,0,'',74,21,'VS-HA7Net'),(72,1,'Gi/1',1,0,'',77,24,'VS-Uplink (Trunk)'),(72,2,'Gi/2',1,0,'',NULL,NULL,'VS-Uplink (Trunk)'),(72,3,'Gi/3',1,0,'',190,24,'VS-to-rtr-2-0-3 (Trunk)'),(72,4,'Gi/4',1,0,'',NULL,NULL,'Polar BGP 2 (V930)'),(72,5,'Gi/5',1,0,'',NULL,NULL,'VS'),(72,6,'Gi/6',1,0,'',NULL,NULL,'VS'),(72,7,'Gi/7',1,0,'',NULL,NULL,'APCOA_L2_TUNNEL (V928)'),(72,8,'Gi/8',1,0,'',NULL,NULL,'Control Circle (via 227) (Trunk)'),(72,9,'Gi/9',1,0,'',NULL,NULL,'FFW Tunnel 2 (V920)'),(72,10,'Gi/10',1,0,'',NULL,NULL,'VS-TestTunnel (V927)'),(72,11,'Gi/11',1,0,'',NULL,NULL,'Opal IDC (V910)'),(72,12,'Gi/12',1,0,'',NULL,NULL,'Control Circle (n/a)'),(72,13,'Gi/13',1,0,'',29,21,'C10029'),(72,14,'Gi/14',1,0,'',NULL,NULL,'VS-Virtustream IDC (V904)'),(72,15,'Gi/15',1,0,'',NULL,NULL,'*SPARE* (V1)'),(72,16,'Gi/16',1,0,'',NULL,NULL,'*SPARE* (V1)'),(72,17,'Gi/17',1,0,'',NULL,NULL,'*SPARE* (V1)'),(72,18,'Gi/18',1,0,'',NULL,NULL,'C4L Tunnel (V914)'),(72,19,'Gi/19',1,0,'',NULL,NULL,'VS-Downstairs Mgmt Switch (V50)'),(72,20,'Gi/20',1,0,'',NULL,NULL,'VS- (Trunk)'),(72,21,'Gi/21',1,0,'',NULL,NULL,'VS-UKDC1_Access_L2_SW1 (Trunk)'),(72,22,'Gi/22',1,0,'',NULL,NULL,'VS-monitoring (V231)'),(72,23,'Gi/23',1,0,'',NULL,NULL,'VS-N3-switch-mgmt (V50)'),(72,24,'Gi/24',1,0,'',74,24,'VS-Uplink (Trunk)'),(72,25,'Gi/25',0,0,'',NULL,NULL,'VS- (Trunk)'),(72,26,'Gi/26',0,0,'',NULL,NULL,'Not present'),(72,27,'Gi/27',0,0,'',NULL,NULL,'Not present'),(72,28,'Gi/28',0,0,'',NULL,NULL,'Not present'),(74,1,'Gi/1',0,0,'',76,24,'VS-Uplink (Trunk)'),(74,2,'Gi/2',0,0,'',NULL,NULL,'VS- (Trunk)'),(74,3,'Gi/3',0,0,'',189,24,'VS- (Trunk)'),(74,4,'Gi/4',0,0,'',NULL,NULL,'VS-Platform DMZ1 (V726)'),(74,5,'Gi/5',0,0,'',NULL,NULL,'VS-DFU Downstairs (V34)'),(74,6,'Gi/6',0,0,'',NULL,NULL,'VS-DFU Upstairs (V34)'),(74,7,'Gi/7',0,0,'',82,1,''),(74,8,'Gi/8',0,0,'',NULL,NULL,'Polar BGP 1 (V929)'),(74,9,'Gi/9',0,0,'',NULL,NULL,'FFW Tunnel 1 (V919)'),(74,10,'Gi/10',0,0,'',NULL,NULL,'TalkTalk (V924)'),(74,11,'Gi/11',0,0,'',NULL,NULL,'AMEC IDC (V902)'),(74,12,'Gi/12',0,0,'',NULL,NULL,'Control Circle (Trunk)'),(74,13,'Gi/13',0,0,'',222,13,''),(74,14,'Gi/14',0,0,'',NULL,NULL,'C4L Tunnel 2 (V915)'),(74,15,'Gi/15',0,0,'',NULL,NULL,'VS-UKDC1_Access_L2_SW1 (Trunk)'),(74,16,'Gi/16',0,0,'',NULL,NULL,'*SPARE* (V1)'),(74,17,'Gi/17',0,0,'',222,14,''),(74,18,'Gi/18',0,0,'',NULL,NULL,'BCS Video Endpoint (V704)'),(74,19,'Gi/19',0,0,'',222,15,''),(74,20,'Gi/20',0,0,'',NULL,NULL,'VS-New Office Uplink (Trunk)'),(74,21,'Gi/21',0,0,'',71,1,'VS-HA7Net'),(74,22,'Gi/22',0,0,'',NULL,NULL,'VS-Office Switch (V50)'),(74,23,'Gi/23',0,0,'',NULL,NULL,'VS-mgmt vlan (V3000/Trunk?)'),(74,24,'Gi/24',0,0,'',72,24,'VS-Uplink (Trunk)'),(74,25,'Gi/25',0,0,'',NULL,NULL,'VS'),(74,26,'Gi/26',0,0,'',NULL,NULL,'Not present'),(74,27,'Gi/27',0,0,'',NULL,NULL,'Not present'),(74,28,'Gi/28',0,0,'',NULL,NULL,'Not present'),(75,1,'Gi/1',0,0,'',NULL,NULL,'VS- (Trunk)'),(75,2,'Gi/2',0,0,'',NULL,NULL,'VS- (Trunk)'),(75,3,'Gi/3',0,0,'',NULL,NULL,'VS- (Trunk)'),(75,4,'Gi/4',0,0,'',NULL,NULL,'a6-uplink (Trunk)'),(75,5,'Gi/5',0,0,'',NULL,NULL,'VS-Platform VPN1 (V726)'),(75,6,'Gi/6',0,0,'',NULL,NULL,'C4L_Tunnel_03A (V931)'),(75,7,'Gi/7',0,0,'',NULL,NULL,'Martineau 1 America Square (V922)'),(75,8,'Gi/8',0,0,'',NULL,NULL,'Martineau London Tunnel (V916)'),(75,9,'Gi/9',0,0,'',NULL,NULL,'VideoCentric Office (V928)'),(75,10,'Gi/10',0,0,'',NULL,NULL,'VS-VM to Virtualise IT Jersey (V749)'),(75,11,'Gi/11',0,0,'',NULL,NULL,'BCS Global (V900)'),(75,12,'Gi/12',0,0,'',NULL,NULL,'Control Circle (V901)'),(75,13,'Gi/13',0,0,'',NULL,NULL,'Rapidhost IDC 2 (V904)'),(75,14,'Gi/14',0,0,'',NULL,NULL,'Rapidhost Kodak IDC (V905)'),(75,15,'Gi/15',0,0,'',NULL,NULL,'VS-bgp-test-router (V50)'),(75,16,'Gi/16',0,0,'',NULL,NULL,'Rapidhost Kodak IDC (V905)'),(75,17,'Gi/17',0,0,'',NULL,NULL,'VS-VSI_Dev_A_Beukes (V103)'),(75,18,'Gi/18',0,0,'',NULL,NULL,'VS-BCS ESXi SC (V50)'),(75,19,'Gi/19',0,0,'',NULL,NULL,'JLT_NAS (V706)'),(75,20,'Gi/20',0,0,'',NULL,NULL,'VS-dc2-shared-router (V50)'),(75,21,'Gi/21',0,0,'',NULL,NULL,'C4L_Tunnel_04A (V932)'),(75,22,'Gi/22',0,0,'',NULL,NULL,'BCS VB Anil Connectio (V705)'),(75,23,'Gi/23',0,0,'',NULL,NULL,'VS-console server (V50)'),(75,24,'Gi/24',0,0,'',NULL,NULL,'VS-to-the (Trunk)'),(75,25,'Gi/25',0,0,'',NULL,NULL,'Not present'),(75,26,'Gi/26',0,0,'',NULL,NULL,'Not present'),(75,27,'Gi/27',0,0,'',NULL,NULL,'Not present'),(75,28,'Gi/28',0,0,'',NULL,NULL,'Not present'),(76,1,'Gi/1',0,0,'',NULL,NULL,'JLT Audit (V700)'),(76,2,'Gi/2',0,0,'',NULL,NULL,'OLM_NEW3 (V753)'),(76,3,'Gi/3',0,0,'',NULL,NULL,'PizzaHut C10018 (V707)'),(76,4,'Gi/4',0,0,'',NULL,NULL,'Paperpost (V748)'),(76,5,'Gi/5',0,0,'',NULL,NULL,'Rapidhost (V708)'),(76,6,'Gi/6',0,0,'',NULL,NULL,'Rapidhost (V708)'),(76,7,'Gi/7',0,0,'',NULL,NULL,'Virtek2 (V745)'),(76,8,'Gi/8',0,0,'',NULL,NULL,'Rapidhost (V708)'),(76,9,'Gi/9',0,0,'',NULL,NULL,'AML Internet 1 (V725)'),(76,10,'Gi/10',0,0,'',28,2,'C10326'),(76,11,'Gi/11',0,0,'',NULL,NULL,'Innovise_V933_C2B3 (V933)'),(76,12,'Gi/12',0,0,'',NULL,NULL,'Praemium1A (V716)'),(76,13,'Gi/13',0,0,'',NULL,NULL,'*SPARE* (V1)'),(76,14,'Gi/14',0,0,'',NULL,NULL,'Meganexus-3 (V743)'),(76,15,'Gi/15',0,0,'',NULL,NULL,'1stSol Own Block (V731)'),(76,16,'Gi/16',0,0,'',NULL,NULL,'AML2 (V732)'),(76,17,'Gi/17',0,0,'',NULL,NULL,'APCOA DC2 Internet (V734)'),(76,18,'Gi/18',0,0,'',NULL,NULL,'JLT Online DC2 Internet Slave (V736)'),(76,19,'Gi/19',0,0,'',NULL,NULL,'8EL (Backbone) C00194 (V737)'),(76,20,'Gi/20',0,0,'',NULL,NULL,'BCS Global Internet (V741)'),(76,21,'Gi/21',0,0,'',NULL,NULL,'BBONE_Paragon (V754)'),(76,22,'Gi/22',0,0,'',NULL,NULL,'vXchnge (V746)'),(76,23,'Gi/23',0,0,'',NULL,NULL,'Rapidhost (V78)'),(76,24,'Gi/24',0,0,'',74,1,'VS-Uplink (Trunk)'),(77,1,'Gi/1',0,0,'',NULL,NULL,'*SPARE* (V1)'),(77,2,'Gi/2',0,0,'',NULL,NULL,'Rapidhost (V708)'),(77,3,'Gi/3',0,0,'',NULL,NULL,'PizzaHut  2 C10024 (V707)'),(77,4,'Gi/4',0,0,'',NULL,NULL,'FFW-GFloor (V730)'),(77,5,'Gi/5',0,0,'',27,2,'C10027'),(77,6,'Gi/6',0,0,'',NULL,NULL,'Rapidhost (V708)'),(77,7,'Gi/7',0,0,'',81,1,''),(77,8,'Gi/8',0,0,'',NULL,NULL,'Swanswell (V723)'),(77,9,'Gi/9',0,0,'',NULL,NULL,'AML Internet 2 (V725)'),(77,10,'Gi/10',0,0,'',82,3,''),(77,11,'Gi/11',0,0,'',NULL,NULL,'Praemium1B (V716)'),(77,12,'Gi/12',0,0,'',NULL,NULL,'Praemium2 (V717)'),(77,13,'Gi/13',0,0,'',NULL,NULL,'OLM_NEW2 (V752)'),(77,14,'Gi/14',0,0,'',NULL,NULL,'AML2 (V732)'),(77,15,'Gi/15',0,0,'',NULL,NULL,'VS-VSI Office (V726)'),(77,16,'Gi/16',0,0,'',NULL,NULL,'Innovise Procam (V724)'),(77,17,'Gi/17',0,0,'',NULL,NULL,'APCOA DC2 Internet (V734)'),(77,18,'Gi/18',0,0,'',NULL,NULL,'JLT Online DC2 Internet Master (V736)'),(77,19,'Gi/19',0,0,'',NULL,NULL,'BackboneConnect_VCloud_A23 (V763)'),(77,20,'Gi/20',0,0,'',NULL,NULL,'Easylink (V742)'),(77,21,'Gi/21',0,0,'',NULL,NULL,'Paperpost (V748)'),(77,22,'Gi/22',0,0,'',NULL,NULL,'vXchnge (V746)'),(77,23,'Gi/23',0,0,'',NULL,NULL,'VS-Paperpost-N3-mgmt (V50)'),(77,24,'Gi/24',0,0,'',72,1,'VS-Uplink (Trunk)'),(80,1,'Port1',0,0,'',81,4,''),(81,1,'Port1',0,0,'',77,7,''),(81,2,'Port2',0,0,'',NULL,NULL,''),(81,3,'Port3',0,0,'',NULL,NULL,''),(81,4,'Port4',0,0,'',80,1,''),(81,5,'Port5',0,0,'',NULL,NULL,''),(82,1,'Port1',1,0,'',74,7,''),(82,2,'Port2',0,0,'',NULL,NULL,''),(82,3,'Port3',1,0,'',77,10,''),(82,4,'Port4',0,0,'',NULL,NULL,''),(82,5,'Port5',0,0,'',NULL,NULL,''),(82,6,'Port6',0,0,'',NULL,NULL,''),(86,1,'Port1',0,0,'',NULL,NULL,''),(86,2,'Port2',0,0,'',NULL,NULL,''),(86,3,'Port3',0,0,'',NULL,NULL,''),(86,4,'Port4',0,0,'',NULL,NULL,''),(86,5,'Port5',0,0,'',NULL,NULL,''),(86,6,'Port6',0,0,'',NULL,NULL,''),(86,7,'Port7',0,0,'',NULL,NULL,''),(86,8,'Port8',0,0,'',NULL,NULL,''),(86,9,'Port9',0,0,'',NULL,NULL,''),(86,10,'Port10',0,0,'',NULL,NULL,''),(86,11,'Port11',0,0,'',NULL,NULL,''),(86,12,'Port12',0,0,'',NULL,NULL,''),(86,13,'Port13',0,0,'',NULL,NULL,''),(86,14,'Port14',0,0,'',NULL,NULL,''),(86,15,'Port15',0,0,'',NULL,NULL,''),(86,16,'Port16',0,0,'',NULL,NULL,''),(86,17,'Port17',0,0,'',NULL,NULL,''),(86,18,'Port18',0,0,'',NULL,NULL,''),(86,19,'Port19',0,0,'',NULL,NULL,''),(86,20,'Port20',0,0,'',NULL,NULL,''),(86,21,'Port21',0,0,'',NULL,NULL,''),(86,22,'Port22',0,0,'',NULL,NULL,''),(86,23,'Port23',0,0,'',NULL,NULL,''),(86,24,'Port24',0,0,'',NULL,NULL,''),(86,25,'Port25',0,0,'',NULL,NULL,''),(86,26,'Port26',0,0,'',NULL,NULL,''),(86,27,'Port27',0,0,'',NULL,NULL,''),(86,28,'Port28',0,0,'',NULL,NULL,''),(86,29,'Port29',0,0,'',NULL,NULL,''),(86,30,'Port30',0,0,'',NULL,NULL,''),(86,31,'Port31',0,0,'',NULL,NULL,''),(86,32,'Port32',0,0,'',NULL,NULL,''),(86,33,'Port33',0,0,'',NULL,NULL,''),(86,34,'Port34',0,0,'',NULL,NULL,''),(86,35,'Port35',0,0,'',NULL,NULL,''),(86,36,'Port36',0,0,'',NULL,NULL,''),(86,37,'Port37',0,0,'',NULL,NULL,''),(86,38,'Port38',0,0,'',NULL,NULL,''),(86,39,'Port39',0,0,'',NULL,NULL,''),(86,40,'Port40',0,0,'',NULL,NULL,''),(86,41,'Port41',0,0,'',NULL,NULL,''),(86,42,'Port42',0,0,'',NULL,NULL,''),(86,43,'Port43',0,0,'',NULL,NULL,''),(86,44,'Port44',0,0,'',NULL,NULL,''),(86,45,'Port45',0,0,'',NULL,NULL,''),(86,46,'Port46',0,0,'',NULL,NULL,''),(86,47,'Port47',0,0,'',NULL,NULL,''),(86,48,'Port48',0,0,'',NULL,NULL,''),(87,1,'Port1',0,0,'',NULL,NULL,''),(87,2,'Port2',0,0,'',NULL,NULL,''),(87,3,'Port3',0,0,'',NULL,NULL,''),(87,4,'Port4',0,0,'',NULL,NULL,''),(87,5,'Port5',0,0,'',NULL,NULL,''),(87,6,'Port6',0,0,'',NULL,NULL,''),(87,7,'Port7',0,0,'',NULL,NULL,''),(87,8,'Port8',0,0,'',NULL,NULL,''),(87,9,'Port9',0,0,'',NULL,NULL,''),(87,10,'Port10',0,0,'',NULL,NULL,''),(87,11,'Port11',0,0,'',NULL,NULL,''),(87,12,'Port12',0,0,'',NULL,NULL,''),(87,13,'Port13',0,0,'',NULL,NULL,''),(87,14,'Port14',0,0,'',NULL,NULL,''),(87,15,'Port15',0,0,'',NULL,NULL,''),(87,16,'Port16',0,0,'',NULL,NULL,''),(87,17,'Port17',0,0,'',NULL,NULL,''),(87,18,'Port18',0,0,'',NULL,NULL,''),(87,19,'Port19',0,0,'',NULL,NULL,''),(87,20,'Port20',0,0,'',NULL,NULL,''),(87,21,'Port21',0,0,'',NULL,NULL,''),(87,22,'Port22',0,0,'',NULL,NULL,''),(87,23,'Port23',0,0,'',NULL,NULL,''),(87,24,'Port24',0,0,'',NULL,NULL,''),(87,25,'Port25',0,0,'',NULL,NULL,''),(87,26,'Port26',0,0,'',NULL,NULL,''),(87,27,'Port27',0,0,'',NULL,NULL,''),(87,28,'Port28',0,0,'',NULL,NULL,''),(87,29,'Port29',0,0,'',NULL,NULL,''),(87,30,'Port30',0,0,'',NULL,NULL,''),(87,31,'Port31',0,0,'',NULL,NULL,''),(87,32,'Port32',0,0,'',NULL,NULL,''),(87,33,'Port33',0,0,'',NULL,NULL,''),(87,34,'Port34',0,0,'',NULL,NULL,''),(87,35,'Port35',0,0,'',NULL,NULL,''),(87,36,'Port36',0,0,'',NULL,NULL,''),(87,37,'Port37',0,0,'',NULL,NULL,''),(87,38,'Port38',0,0,'',NULL,NULL,''),(87,39,'Port39',0,0,'',NULL,NULL,''),(87,40,'Port40',0,0,'',NULL,NULL,''),(87,41,'Port41',0,0,'',NULL,NULL,''),(87,42,'Port42',0,0,'',NULL,NULL,''),(87,43,'Port43',0,0,'',NULL,NULL,''),(87,44,'Port44',0,0,'',NULL,NULL,''),(87,45,'Port45',0,0,'',NULL,NULL,''),(87,46,'Port46',0,0,'',NULL,NULL,''),(87,47,'Port47',0,0,'',NULL,NULL,''),(87,48,'Port48',0,0,'',NULL,NULL,''),(98,-24,'',0,0,'',NULL,NULL,''),(98,-23,'',0,0,'',NULL,NULL,''),(98,-22,'',0,0,'',NULL,NULL,''),(98,-21,'',0,0,'',NULL,NULL,''),(98,-20,'',0,0,'',NULL,NULL,''),(98,-19,'',0,0,'',NULL,NULL,''),(98,-18,'',0,0,'',NULL,NULL,''),(98,-17,'',0,0,'',NULL,NULL,''),(98,-16,'',0,0,'',NULL,NULL,''),(98,-15,'',0,0,'',NULL,NULL,''),(98,-14,'',0,0,'',NULL,NULL,''),(98,-13,'',0,0,'',NULL,NULL,''),(98,-12,'',0,0,'',NULL,NULL,''),(98,-11,'',0,0,'',NULL,NULL,''),(98,-10,'',0,0,'',NULL,NULL,''),(98,-9,'',0,0,'',NULL,NULL,''),(98,-8,'',0,0,'',NULL,NULL,''),(98,-7,'',0,0,'',NULL,NULL,''),(98,-6,'',0,0,'',NULL,NULL,''),(98,-5,'',0,0,'',NULL,NULL,''),(98,-4,'',0,0,'',NULL,NULL,''),(98,-3,'',0,0,'',NULL,NULL,''),(98,-2,'',0,0,'',NULL,NULL,''),(98,-1,'',0,0,'',NULL,NULL,''),(98,1,'Port1',0,0,'',NULL,NULL,''),(98,2,'Port2',0,0,'',NULL,NULL,''),(98,3,'Port3',0,0,'',NULL,NULL,''),(98,4,'Port4',0,0,'',NULL,NULL,''),(98,5,'Port5',0,0,'',NULL,NULL,''),(98,6,'Port6',0,0,'',NULL,NULL,''),(98,7,'Port7',0,0,'',NULL,NULL,''),(98,8,'Port8',0,0,'',NULL,NULL,''),(98,9,'Port9',0,0,'',NULL,NULL,''),(98,10,'Port10',0,0,'',NULL,NULL,''),(98,11,'Port11',0,0,'',NULL,NULL,''),(98,12,'Port12',0,0,'',NULL,NULL,''),(98,13,'Port13',0,0,'',NULL,NULL,''),(98,14,'Port14',0,0,'',NULL,NULL,''),(98,15,'Port15',0,0,'',NULL,NULL,''),(98,16,'Port16',0,0,'',NULL,NULL,''),(98,17,'Port17',0,0,'',NULL,NULL,''),(98,18,'Port18',0,0,'',NULL,NULL,''),(98,19,'Port19',0,0,'',NULL,NULL,''),(98,20,'Port20',0,0,'',NULL,NULL,''),(98,21,'Port21',0,0,'',NULL,NULL,''),(98,22,'Port22',0,0,'',NULL,NULL,''),(98,23,'Port23',0,0,'',NULL,NULL,''),(98,24,'Port24',0,0,'',NULL,NULL,''),(113,1,'Port1',0,0,'',NULL,NULL,''),(113,2,'Port2',0,0,'',NULL,NULL,''),(113,3,'Port3',0,0,'',NULL,NULL,''),(113,4,'Port4',0,0,'',NULL,NULL,''),(113,5,'Port5',0,0,'',NULL,NULL,''),(113,6,'Port6',0,0,'',NULL,NULL,''),(113,7,'Port7',0,0,'',NULL,NULL,''),(113,8,'Port8',0,0,'',NULL,NULL,''),(113,9,'Port9',0,0,'',NULL,NULL,''),(113,10,'Port10',0,0,'',NULL,NULL,''),(113,11,'Port11',0,0,'',NULL,NULL,''),(113,12,'Port12',0,0,'',NULL,NULL,''),(113,13,'Port13',0,0,'',NULL,NULL,''),(113,14,'Port14',0,0,'',NULL,NULL,''),(113,15,'Port15',0,0,'',NULL,NULL,''),(113,16,'Port16',0,0,'',NULL,NULL,''),(113,17,'Port17',0,0,'',NULL,NULL,''),(113,18,'Port18',0,0,'',NULL,NULL,''),(113,19,'Port19',0,0,'',NULL,NULL,''),(113,20,'Port20',0,0,'',NULL,NULL,''),(113,21,'Port21',0,0,'',NULL,NULL,''),(113,22,'Port22',0,0,'',NULL,NULL,''),(113,23,'Port23',0,0,'',NULL,NULL,''),(113,24,'Port24',0,0,'',NULL,NULL,''),(113,25,'Port25',0,0,'',NULL,NULL,''),(113,26,'Port26',0,0,'',NULL,NULL,''),(113,27,'Port27',0,0,'',NULL,NULL,''),(113,28,'Port28',0,0,'',NULL,NULL,''),(113,29,'Port29',0,0,'',NULL,NULL,''),(113,30,'Port30',0,0,'',NULL,NULL,''),(113,31,'Port31',0,0,'',NULL,NULL,''),(113,32,'Port32',0,0,'',NULL,NULL,''),(113,33,'Port33',0,0,'',NULL,NULL,''),(113,34,'Port34',0,0,'',NULL,NULL,''),(113,35,'Port35',0,0,'',NULL,NULL,''),(113,36,'Port36',0,0,'',NULL,NULL,''),(113,37,'Port37',0,0,'',NULL,NULL,''),(113,38,'Port38',0,0,'',NULL,NULL,''),(113,39,'Port39',0,0,'',NULL,NULL,''),(113,40,'Port40',0,0,'',NULL,NULL,''),(113,41,'Port41',0,0,'',NULL,NULL,''),(113,42,'Port42',0,0,'',NULL,NULL,''),(113,43,'Port43',0,0,'',NULL,NULL,''),(113,44,'Port44',0,0,'',NULL,NULL,''),(113,45,'Port45',0,0,'',NULL,NULL,''),(113,46,'Port46',0,0,'',NULL,NULL,''),(113,47,'Port47',0,0,'',NULL,NULL,''),(113,48,'Port48',0,0,'',NULL,NULL,''),(114,1,'Port1',0,0,'',NULL,NULL,''),(114,2,'Port2',0,0,'',NULL,NULL,''),(114,3,'Port3',0,0,'',NULL,NULL,''),(114,4,'Port4',0,0,'',NULL,NULL,''),(114,5,'Port5',0,0,'',NULL,NULL,''),(114,6,'Port6',0,0,'',NULL,NULL,''),(114,7,'Port7',0,0,'',NULL,NULL,''),(114,8,'Port8',0,0,'',NULL,NULL,''),(114,9,'Port9',0,0,'',NULL,NULL,''),(114,10,'Port10',0,0,'',NULL,NULL,''),(114,11,'Port11',0,0,'',NULL,NULL,''),(114,12,'Port12',0,0,'',NULL,NULL,''),(114,13,'Port13',0,0,'',NULL,NULL,''),(114,14,'Port14',0,0,'',NULL,NULL,''),(114,15,'Port15',0,0,'',NULL,NULL,''),(114,16,'Port16',0,0,'',NULL,NULL,''),(114,17,'Port17',0,0,'',NULL,NULL,''),(114,18,'Port18',0,0,'',NULL,NULL,''),(114,19,'Port19',0,0,'',NULL,NULL,''),(114,20,'Port20',0,0,'',NULL,NULL,''),(114,21,'Port21',0,0,'',NULL,NULL,''),(114,22,'Port22',0,0,'',NULL,NULL,''),(114,23,'Port23',0,0,'',NULL,NULL,''),(114,24,'Port24',0,0,'',NULL,NULL,''),(114,25,'Port25',0,0,'',NULL,NULL,''),(114,26,'Port26',0,0,'',NULL,NULL,''),(114,27,'Port27',0,0,'',NULL,NULL,''),(114,28,'Port28',0,0,'',NULL,NULL,''),(114,29,'Port29',0,0,'',NULL,NULL,''),(114,30,'Port30',0,0,'',NULL,NULL,''),(114,31,'Port31',0,0,'',NULL,NULL,''),(114,32,'Port32',0,0,'',NULL,NULL,''),(114,33,'Port33',0,0,'',NULL,NULL,''),(114,34,'Port34',0,0,'',NULL,NULL,''),(114,35,'Port35',0,0,'',NULL,NULL,''),(114,36,'Port36',0,0,'',NULL,NULL,''),(114,37,'Port37',0,0,'',NULL,NULL,''),(114,38,'Port38',0,0,'',NULL,NULL,''),(114,39,'Port39',0,0,'',NULL,NULL,''),(114,40,'Port40',0,0,'',NULL,NULL,''),(114,41,'Port41',0,0,'',NULL,NULL,''),(114,42,'Port42',0,0,'',NULL,NULL,''),(114,43,'Port43',0,0,'',NULL,NULL,''),(114,44,'Port44',0,0,'',NULL,NULL,''),(114,45,'Port45',0,0,'',NULL,NULL,''),(114,46,'Port46',0,0,'',NULL,NULL,''),(114,47,'Port47',0,0,'',NULL,NULL,''),(114,48,'Port48',0,0,'',NULL,NULL,''),(161,1,'Port1',0,0,'',NULL,NULL,''),(161,2,'Port2',0,0,'',NULL,NULL,''),(161,3,'Port3',0,0,'',NULL,NULL,''),(161,4,'Port4',0,0,'',NULL,NULL,''),(161,5,'Port5',0,0,'',NULL,NULL,''),(161,6,'Port6',0,0,'',NULL,NULL,''),(161,7,'Port7',0,0,'',NULL,NULL,''),(161,8,'Port8',0,0,'',NULL,NULL,''),(161,9,'Port9',0,0,'',NULL,NULL,''),(161,10,'Port10',0,0,'',NULL,NULL,''),(161,11,'Port11',0,0,'',NULL,NULL,''),(161,12,'Port12',0,0,'',NULL,NULL,''),(161,13,'Port13',0,0,'',NULL,NULL,''),(161,14,'Port14',0,0,'',NULL,NULL,''),(161,15,'Port15',0,0,'',NULL,NULL,''),(161,16,'Port16',0,0,'',NULL,NULL,''),(161,17,'Port17',0,0,'',NULL,NULL,''),(161,18,'Port18',0,0,'',NULL,NULL,''),(161,19,'Port19',0,0,'',NULL,NULL,''),(161,20,'Port20',0,0,'',NULL,NULL,''),(161,21,'Port21',0,0,'',NULL,NULL,''),(161,22,'Port22',0,0,'',NULL,NULL,''),(161,23,'Port23',0,0,'',NULL,NULL,''),(161,24,'Port24',0,0,'',NULL,NULL,''),(161,25,'Port25',0,0,'',NULL,NULL,''),(161,26,'Port26',0,0,'',NULL,NULL,''),(161,27,'Port27',0,0,'',NULL,NULL,''),(161,28,'Port28',0,0,'',NULL,NULL,''),(161,29,'Port29',0,0,'',NULL,NULL,''),(161,30,'Port30',0,0,'',NULL,NULL,''),(161,31,'Port31',0,0,'',NULL,NULL,''),(161,32,'Port32',0,0,'',NULL,NULL,''),(161,33,'Port33',0,0,'',NULL,NULL,''),(161,34,'Port34',0,0,'',NULL,NULL,''),(161,35,'Port35',0,0,'',NULL,NULL,''),(161,36,'Port36',0,0,'',NULL,NULL,''),(161,37,'Port37',0,0,'',NULL,NULL,''),(161,38,'Port38',0,0,'',NULL,NULL,''),(161,39,'Port39',0,0,'',NULL,NULL,''),(161,40,'Port40',0,0,'',NULL,NULL,''),(161,41,'Port41',0,0,'',NULL,NULL,''),(161,42,'Port42',0,0,'',NULL,NULL,''),(161,43,'Port43',0,0,'',NULL,NULL,''),(161,44,'Port44',0,0,'',NULL,NULL,''),(161,45,'Port45',0,0,'',NULL,NULL,''),(161,46,'Port46',0,0,'',NULL,NULL,''),(161,47,'Port47',0,0,'',NULL,NULL,''),(161,48,'Port48',0,0,'',NULL,NULL,''),(172,1,'Port1',0,0,'',NULL,NULL,''),(172,2,'Port2',0,0,'',NULL,NULL,''),(172,3,'Port3',0,0,'',NULL,NULL,''),(172,4,'Port4',0,0,'',NULL,NULL,''),(172,5,'Port5',0,0,'',NULL,NULL,''),(172,6,'Port6',0,0,'',NULL,NULL,''),(172,7,'Port7',0,0,'',NULL,NULL,''),(172,8,'Port8',0,0,'',NULL,NULL,''),(172,9,'Port9',0,0,'',NULL,NULL,''),(172,10,'Port10',0,0,'',NULL,NULL,''),(172,11,'Port11',0,0,'',NULL,NULL,''),(172,12,'Port12',0,0,'',NULL,NULL,''),(172,13,'Port13',0,0,'',NULL,NULL,''),(172,14,'Port14',0,0,'',NULL,NULL,''),(172,15,'Port15',0,0,'',NULL,NULL,''),(172,16,'Port16',0,0,'',NULL,NULL,''),(172,17,'Port17',0,0,'',NULL,NULL,''),(172,18,'Port18',0,0,'',NULL,NULL,''),(172,19,'Port19',0,0,'',NULL,NULL,''),(172,20,'Port20',0,0,'',NULL,NULL,''),(172,21,'Port21',0,0,'',NULL,NULL,''),(172,22,'Port22',0,0,'',NULL,NULL,''),(172,23,'Port23',0,0,'',NULL,NULL,''),(172,24,'Port24',0,0,'',NULL,NULL,''),(172,25,'Port25',0,0,'',NULL,NULL,''),(172,26,'Port26',0,0,'',NULL,NULL,''),(172,27,'Port27',0,0,'',NULL,NULL,''),(172,28,'Port28',0,0,'',NULL,NULL,''),(172,29,'Port29',0,0,'',NULL,NULL,''),(172,30,'Port30',0,0,'',NULL,NULL,''),(172,31,'Port31',0,0,'',NULL,NULL,''),(172,32,'Port32',0,0,'',NULL,NULL,''),(172,33,'Port33',0,0,'',NULL,NULL,''),(172,34,'Port34',0,0,'',NULL,NULL,''),(172,35,'Port35',0,0,'',NULL,NULL,''),(172,36,'Port36',0,0,'',NULL,NULL,''),(172,37,'Port37',0,0,'',NULL,NULL,''),(172,38,'Port38',0,0,'',NULL,NULL,''),(172,39,'Port39',0,0,'',NULL,NULL,''),(172,40,'Port40',0,0,'',NULL,NULL,''),(172,41,'Port41',0,0,'',NULL,NULL,''),(172,42,'Port42',0,0,'',NULL,NULL,''),(172,43,'Port43',0,0,'',NULL,NULL,''),(172,44,'Port44',0,0,'',NULL,NULL,''),(172,45,'Port45',0,0,'',NULL,NULL,''),(172,46,'Port46',0,0,'',NULL,NULL,''),(172,47,'Port47',0,0,'',NULL,NULL,''),(172,48,'Port48',0,0,'',NULL,NULL,''),(189,1,'Gi/1',0,0,'',NULL,NULL,'Symetriq - Border Switch 2 (V709)'),(189,2,'Gi/2',0,0,'',NULL,NULL,'Opensymmetry (V750)'),(189,3,'Gi/3',0,0,'',NULL,NULL,'TopLevel_F2_V718'),(189,4,'Gi/4',0,0,'',NULL,NULL,'Tandberg (V713)'),(189,5,'Gi/5',0,0,'',NULL,NULL,'HostMyServer (V714)'),(189,6,'Gi/6',0,0,'',NULL,NULL,'Easylinks BGP (V918)'),(189,7,'Gi/7',0,0,'',NULL,NULL,'TopLevel_V228_F2'),(189,8,'Gi/8',0,0,'',NULL,NULL,'STALIN-TEST-DONOTR (V710)'),(189,9,'Gi/9',0,0,'',NULL,NULL,'VS-rt-support4 (V51)'),(189,10,'Gi/10',0,0,'',NULL,NULL,'VS-Virtustream 1 (V726)'),(189,11,'Gi/11',0,0,'',NULL,NULL,'C4L-E9 (V1661)'),(189,12,'Gi/12',0,0,'',NULL,NULL,'Great_Benefit_E11 (V755)'),(189,13,'Gi/13',0,0,'',NULL,NULL,'VS-pop33 (V35)'),(189,14,'Gi/14',0,0,'',NULL,NULL,'London Care (V738)'),(189,15,'Gi/15',0,0,'',NULL,NULL,'LG Internet (V913))'),(189,16,'Gi/16',0,0,'',NULL,NULL,'Meganexus-2 (V722)'),(189,17,'Gi/17',0,0,'',NULL,NULL,'VS-Virtustream VPN 1 (V726)'),(189,18,'Gi/18',0,0,'',NULL,NULL,'MeganexusE4 (V743)'),(189,19,'Gi/19',0,0,'',NULL,NULL,'VS-dc2office (V50)'),(189,20,'Gi/20',0,0,'',NULL,NULL,'VS-New Asterisk Server (V50)'),(189,21,'Gi/21',0,0,'',NULL,NULL,'APCOA_NEW (V751)'),(189,22,'Gi/22',0,0,'',NULL,NULL,'VS-iDC IP KVM (V50)'),(189,23,'Gi/23',0,0,'',NULL,NULL,'VS-Alliance-Temp-Internet (V724)'),(189,24,'Gi/24',0,0,'',74,3,'VS- (Trunk)'),(189,25,'Gi/25',0,0,'',NULL,NULL,'Module not present'),(189,26,'Gi/26',0,0,'',NULL,NULL,'Module not present'),(189,27,'Gi/27',0,0,'',NULL,NULL,'Module not present'),(189,28,'Gi/28',0,0,'',NULL,NULL,'Module not present'),(190,1,'Gi/1',0,0,'',NULL,NULL,'Symetriq - Border Switch 1 (V709)'),(190,2,'Gi/2',0,0,'',NULL,NULL,'VS-ftp4-replica (V50)'),(190,3,'Gi/3',0,0,'',NULL,NULL,'OLM (V747)'),(190,4,'Gi/4',0,0,'',NULL,NULL,'APCOA_NEW_pt2 (V751)'),(190,5,'Gi/5',0,0,'',NULL,NULL,'Toplevel (V50, V718)'),(190,6,'Gi/6',0,0,'',NULL,NULL,'Meganexus (722)'),(190,7,'Gi/7',0,0,'',NULL,NULL,'C4L-E8 (V1616))'),(190,8,'Gi/8',0,0,'',NULL,NULL,'VS-Ahsay-Replication (V196)'),(190,9,'Gi/9',0,0,'',NULL,NULL,'VS-rt-server-2 (V51)'),(190,10,'Gi/10',0,0,'',NULL,NULL,'VS-Virtustream 2 (V726)'),(190,11,'Gi/11',0,0,'',NULL,NULL,'C4L-E9 (V1661)'),(190,12,'Gi/12',0,0,'',NULL,NULL,'AServer-F4 (V727)'),(190,13,'Gi/13',0,0,'',NULL,NULL,'Virtek (V729)'),(190,14,'Gi/14',0,0,'',NULL,NULL,'Aflex DC2 (V733)'),(190,15,'Gi/15',0,0,'',NULL,NULL,'Gearbulk Internet - Shared VLAN (V724)'),(190,16,'Gi/16',0,0,'',NULL,NULL,'TopLevel_V228_F2'),(190,17,'Gi/17',0,0,'',NULL,NULL,'VS-Virtustream VPN 2 (V726)'),(190,18,'Gi/18',0,0,'',NULL,NULL,'Easylink (V742)'),(190,19,'Gi/19',0,0,'',NULL,NULL,'VS-AhsayNAS (V196)'),(190,20,'Gi/20',0,0,'',NULL,NULL,'VS-esx3-mgmt (V50)'),(190,21,'Gi/21',0,0,'',NULL,NULL,'Dnet Pivot (V744)'),(190,22,'Gi/22',0,0,'',NULL,NULL,'TopLevel_F2_V718'),(190,23,'Gi/23',0,0,'',NULL,NULL,'VS-Dell-R900-Cacti (V917)'),(190,24,'Gi/24',1,0,'',72,3,'VS-to-rtr-2-0-3 (Trunk)'),(190,25,'Gi/25',0,0,'',NULL,NULL,'Module not present'),(190,26,'Gi/26',0,0,'',NULL,NULL,'Module not present'),(190,27,'Gi/27',0,0,'',NULL,NULL,'Module not present'),(190,28,'Gi/28',0,0,'',NULL,NULL,'Module not present'),(192,1,'Port1',0,0,'',NULL,NULL,''),(192,2,'Port2',0,0,'',NULL,NULL,''),(192,3,'Port3',0,0,'',NULL,NULL,''),(192,4,'Port4',0,0,'',NULL,NULL,''),(192,5,'Port5',0,0,'',NULL,NULL,''),(192,6,'Port6',0,0,'',NULL,NULL,''),(192,7,'Port7',0,0,'',NULL,NULL,''),(192,8,'Port8',0,0,'',NULL,NULL,''),(192,9,'Port9',0,0,'',NULL,NULL,''),(192,10,'Port10',0,0,'',NULL,NULL,''),(192,11,'Port11',0,0,'',NULL,NULL,''),(192,12,'Port12',0,0,'',NULL,NULL,''),(192,13,'Port13',0,0,'',NULL,NULL,'VS-Uplink TH-CAT1 (Trunk)'),(192,14,'Port14',0,0,'',NULL,NULL,'VS-Uplink TH-CAT1 (Trunk)'),(192,15,'Port15',0,0,'',NULL,NULL,'VS-Uplink TH-CAT1 (Trunk)'),(192,16,'Port16',0,0,'',NULL,NULL,''),(192,17,'Port17',0,0,'',NULL,NULL,''),(192,18,'Port18',0,0,'',NULL,NULL,''),(192,19,'Port19',0,0,'',NULL,NULL,''),(192,20,'Port20',0,0,'',NULL,NULL,''),(192,21,'Port21',0,0,'',NULL,NULL,''),(192,22,'Port22',0,0,'',NULL,NULL,''),(192,23,'Port23',0,0,'',NULL,NULL,''),(192,24,'Port24',0,0,'',NULL,NULL,''),(192,25,'Port25',0,0,'',222,25,'VS-EU Nws 10G to Telehouse'),(192,26,'Port26',0,0,'',NULL,NULL,''),(192,27,'Port27',0,0,'',NULL,NULL,''),(192,28,'Port28',0,0,'',NULL,NULL,''),(192,29,'Port29',0,0,'',NULL,NULL,''),(192,30,'Port30',0,0,'',NULL,NULL,''),(192,31,'Port31',0,0,'',NULL,NULL,''),(192,32,'Port32',0,0,'',NULL,NULL,''),(192,33,'Port33',0,0,'',NULL,NULL,''),(192,34,'Port34',0,0,'',NULL,NULL,''),(192,35,'Port35',0,0,'',NULL,NULL,''),(192,36,'Port36',0,0,'',NULL,NULL,''),(192,37,'Port37',0,0,'',NULL,NULL,''),(192,38,'Port38',0,0,'',NULL,NULL,''),(192,39,'Port39',0,0,'',NULL,NULL,''),(192,40,'Port40',0,0,'',NULL,NULL,''),(192,41,'Port41',0,0,'',NULL,NULL,''),(192,42,'Port42',0,0,'',NULL,NULL,''),(192,43,'Port43',0,0,'',NULL,NULL,''),(192,44,'Port44',0,0,'',NULL,NULL,''),(192,45,'Port45',0,0,'',NULL,NULL,''),(192,46,'Port46',0,0,'',NULL,NULL,''),(192,47,'Port47',0,0,'',NULL,NULL,''),(192,48,'Port48',0,0,'',NULL,NULL,''),(196,1,'Port1',0,0,'',NULL,NULL,''),(196,2,'Port2',0,0,'',NULL,NULL,''),(196,3,'Port3',0,0,'',NULL,NULL,''),(196,4,'Port4',0,0,'',NULL,NULL,''),(196,5,'Port5',0,0,'',NULL,NULL,''),(196,6,'Port6',0,0,'',NULL,NULL,''),(196,7,'Port7',0,0,'',NULL,NULL,''),(196,8,'Port8',0,0,'',NULL,NULL,''),(196,9,'Port9',0,0,'',NULL,NULL,''),(196,10,'Port10',0,0,'',NULL,NULL,''),(196,11,'Port11',0,0,'',NULL,NULL,''),(196,12,'Port12',0,0,'',NULL,NULL,''),(196,13,'Port13',0,0,'',NULL,NULL,''),(196,14,'Port14',0,0,'',NULL,NULL,''),(196,15,'Port15',0,0,'',NULL,NULL,''),(196,16,'Port16',0,0,'',NULL,NULL,''),(196,17,'Port17',0,0,'',NULL,NULL,''),(196,18,'Port18',0,0,'',NULL,NULL,''),(196,19,'Port19',0,0,'',NULL,NULL,''),(196,20,'Port20',0,0,'',NULL,NULL,''),(196,21,'Port21',0,0,'',NULL,NULL,''),(196,22,'Port22',0,0,'',NULL,NULL,''),(196,23,'Port23',0,0,'',NULL,NULL,''),(196,24,'Port24',0,0,'',NULL,NULL,''),(196,25,'Port25',0,0,'',NULL,NULL,''),(196,26,'Port26',0,0,'',NULL,NULL,''),(196,27,'Port27',0,0,'',NULL,NULL,''),(196,28,'Port28',0,0,'',NULL,NULL,''),(196,29,'Port29',0,0,'',NULL,NULL,''),(196,30,'Port30',0,0,'',NULL,NULL,''),(196,31,'Port31',0,0,'',NULL,NULL,''),(196,32,'Port32',0,0,'',NULL,NULL,''),(196,33,'Port33',0,0,'',NULL,NULL,''),(196,34,'Port34',0,0,'',NULL,NULL,''),(196,35,'Port35',0,0,'',NULL,NULL,''),(196,36,'Port36',0,0,'',NULL,NULL,''),(196,37,'Port37',0,0,'',NULL,NULL,''),(196,38,'Port38',0,0,'',NULL,NULL,''),(196,39,'Port39',0,0,'',NULL,NULL,''),(196,40,'Port40',0,0,'',NULL,NULL,''),(196,41,'Port41',0,0,'',NULL,NULL,''),(196,42,'Port42',0,0,'',NULL,NULL,''),(196,43,'Port43',0,0,'',NULL,NULL,''),(196,44,'Port44',0,0,'',NULL,NULL,''),(196,45,'Port45',0,0,'',NULL,NULL,''),(196,46,'Port46',0,0,'',NULL,NULL,''),(196,47,'Port47',0,0,'',NULL,NULL,''),(196,48,'Port48',0,0,'',NULL,NULL,''),(211,1,'Port1',0,0,'',NULL,NULL,'10.20.100.10'),(211,2,'Port2',0,0,'',NULL,NULL,'10.1.1.227'),(216,-24,'Port24',0,0,'',NULL,NULL,''),(216,-23,'Port23',0,0,'',NULL,NULL,''),(216,-22,'Port22',0,0,'',NULL,NULL,''),(216,-21,'Port21',0,0,'',NULL,NULL,''),(216,-20,'Port20',0,0,'',NULL,NULL,''),(216,-19,'Port19',0,0,'',NULL,NULL,''),(216,-18,'Port18',0,0,'',NULL,NULL,''),(216,-17,'Port17',0,0,'',NULL,NULL,''),(216,-16,'Port16',0,0,'',NULL,NULL,''),(216,-15,'Port15',0,0,'',NULL,NULL,''),(216,-14,'Port14',0,0,'',NULL,NULL,''),(216,-13,'Port13',0,0,'',NULL,NULL,''),(216,-12,'Port12',0,0,'',NULL,NULL,''),(216,-11,'Port11',0,0,'',NULL,NULL,''),(216,-10,'Port10',0,0,'',NULL,NULL,''),(216,-9,'Port9',0,0,'',NULL,NULL,''),(216,-8,'Port8',0,0,'',NULL,NULL,''),(216,-7,'Port7',0,0,'',NULL,NULL,''),(216,-6,'Port6',0,0,'',NULL,NULL,''),(216,-5,'Port5',0,0,'',NULL,NULL,''),(216,-4,'',0,0,'',NULL,NULL,''),(216,-3,'',0,0,'',NULL,NULL,''),(216,-2,'',0,0,'',NULL,NULL,''),(216,-1,'',0,0,'',NULL,NULL,''),(216,1,'Port1',0,0,'',NULL,NULL,''),(216,2,'Port2',0,0,'',NULL,NULL,''),(216,3,'Port3',0,0,'',NULL,NULL,''),(216,4,'Port4',0,0,'',NULL,NULL,''),(216,5,'Port5',0,0,'',NULL,NULL,''),(216,6,'Port6',0,0,'',NULL,NULL,''),(216,7,'Port7',0,0,'',NULL,NULL,''),(216,8,'Port8',0,0,'',NULL,NULL,''),(216,9,'Port9',0,0,'',NULL,NULL,''),(216,10,'Port10',0,0,'',NULL,NULL,''),(216,11,'Port11',0,0,'',NULL,NULL,''),(216,12,'Port12',0,0,'',NULL,NULL,''),(216,13,'Port13',0,0,'',NULL,NULL,''),(216,14,'Port14',0,0,'',NULL,NULL,''),(216,15,'Port15',0,0,'',NULL,NULL,''),(216,16,'Port16',0,0,'',NULL,NULL,''),(216,17,'Port17',0,0,'',NULL,NULL,''),(216,18,'Port18',0,0,'',NULL,NULL,''),(216,19,'Port19',0,0,'',NULL,NULL,''),(216,20,'Port20',0,0,'',NULL,NULL,''),(216,21,'Port21',0,0,'',NULL,NULL,''),(216,22,'Port22',0,0,'',NULL,NULL,''),(216,23,'Port23',0,0,'',NULL,NULL,''),(216,24,'Port24',0,0,'',NULL,NULL,''),(218,-16,'',0,0,'',NULL,NULL,''),(218,-15,'',0,0,'',NULL,NULL,''),(218,-14,'',0,0,'',NULL,NULL,''),(218,-13,'',0,0,'',NULL,NULL,''),(218,-12,'',0,0,'',NULL,NULL,''),(218,-11,'',0,0,'',NULL,NULL,''),(218,-10,'',0,0,'',NULL,NULL,''),(218,-9,'',0,0,'',NULL,NULL,''),(218,-8,'',0,0,'',NULL,NULL,''),(218,-7,'',0,0,'',NULL,NULL,''),(218,-6,'',0,0,'',NULL,NULL,''),(218,-5,'',0,0,'',NULL,NULL,''),(218,-4,'',0,0,'',NULL,NULL,''),(218,-3,'',0,0,'',NULL,NULL,''),(218,-2,'',0,0,'',NULL,NULL,''),(218,-1,'',0,0,'',NULL,NULL,''),(218,1,'Port1',0,0,'',NULL,NULL,''),(218,2,'Port2',0,0,'',NULL,NULL,''),(218,3,'Port3',0,0,'',NULL,NULL,''),(218,4,'Port4',0,0,'',NULL,NULL,''),(218,5,'Port5',0,0,'',NULL,NULL,''),(218,6,'Port6',0,0,'',NULL,NULL,''),(218,7,'Port7',0,0,'',NULL,NULL,''),(218,8,'Port8',0,0,'',NULL,NULL,''),(218,9,'Port9',0,0,'',NULL,NULL,''),(218,10,'Port10',0,0,'',NULL,NULL,''),(218,11,'Port11',0,0,'',NULL,NULL,''),(218,12,'Port12',0,0,'',NULL,NULL,''),(218,13,'Port13',0,0,'',NULL,NULL,''),(218,14,'Port14',0,0,'',NULL,NULL,''),(218,15,'Port15',0,0,'',NULL,NULL,''),(218,16,'Port16',0,0,'',NULL,NULL,''),(219,-24,'',0,0,'',NULL,NULL,''),(219,-23,'',0,0,'',NULL,NULL,''),(219,-22,'',0,0,'',NULL,NULL,''),(219,-21,'',0,0,'',NULL,NULL,''),(219,-20,'',0,0,'',NULL,NULL,''),(219,-19,'',0,0,'',NULL,NULL,''),(219,-18,'',0,0,'',NULL,NULL,''),(219,-17,'',0,0,'',NULL,NULL,''),(219,-16,'',0,0,'',NULL,NULL,''),(219,-15,'',0,0,'',NULL,NULL,''),(219,-14,'',0,0,'',NULL,NULL,''),(219,-13,'',0,0,'',NULL,NULL,''),(219,-12,'',0,0,'',NULL,NULL,''),(219,-11,'',0,0,'',NULL,NULL,''),(219,-10,'',0,0,'',NULL,NULL,''),(219,-9,'',0,0,'',NULL,NULL,''),(219,-8,'',0,0,'',NULL,NULL,''),(219,-7,'',0,0,'',NULL,NULL,''),(219,-6,'',0,0,'',NULL,NULL,''),(219,-5,'',0,0,'',NULL,NULL,''),(219,-4,'',0,0,'',NULL,NULL,''),(219,-3,'',0,0,'',NULL,NULL,''),(219,-2,'',0,0,'',NULL,NULL,''),(219,-1,'',0,0,'',NULL,NULL,''),(219,1,'Port1',0,0,'',NULL,NULL,''),(219,2,'Port2',0,0,'',NULL,NULL,''),(219,3,'Port3',0,0,'',NULL,NULL,''),(219,4,'Port4',0,0,'',NULL,NULL,''),(219,5,'Port5',0,0,'',NULL,NULL,''),(219,6,'Port6',0,0,'',NULL,NULL,''),(219,7,'Port7',0,0,'',NULL,NULL,''),(219,8,'Port8',0,0,'',NULL,NULL,''),(219,9,'Port9',0,0,'',NULL,NULL,''),(219,10,'Port10',0,0,'',NULL,NULL,''),(219,11,'Port11',0,0,'',NULL,NULL,''),(219,12,'Port12',0,0,'',NULL,NULL,''),(219,13,'Port13',0,0,'',NULL,NULL,''),(219,14,'Port14',0,0,'',NULL,NULL,''),(219,15,'Port15',0,0,'',NULL,NULL,''),(219,16,'Port16',0,0,'',NULL,NULL,''),(219,17,'Port17',0,0,'',NULL,NULL,''),(219,18,'Port18',0,0,'',NULL,NULL,''),(219,19,'Port19',0,0,'',NULL,NULL,''),(219,20,'Port20',0,0,'',NULL,NULL,''),(219,21,'Port21',0,0,'',NULL,NULL,''),(219,22,'Port22',0,0,'',NULL,NULL,''),(219,23,'Port23',0,0,'',NULL,NULL,''),(219,24,'Port24',0,0,'',NULL,NULL,''),(220,-24,'',0,0,'',NULL,NULL,''),(220,-23,'',0,0,'',NULL,NULL,''),(220,-22,'',0,0,'',NULL,NULL,''),(220,-21,'',0,0,'',NULL,NULL,''),(220,-20,'',0,0,'',NULL,NULL,''),(220,-19,'',0,0,'',NULL,NULL,''),(220,-18,'',0,0,'',NULL,NULL,''),(220,-17,'',0,0,'',NULL,NULL,''),(220,-16,'',0,0,'',NULL,NULL,''),(220,-15,'',0,0,'',NULL,NULL,''),(220,-14,'',0,0,'',NULL,NULL,''),(220,-13,'',0,0,'',NULL,NULL,''),(220,-12,'',0,0,'',NULL,NULL,''),(220,-11,'',0,0,'',NULL,NULL,''),(220,-10,'',0,0,'',NULL,NULL,''),(220,-9,'',0,0,'',NULL,NULL,''),(220,-8,'',0,0,'',NULL,NULL,''),(220,-7,'',0,0,'',NULL,NULL,''),(220,-6,'',0,0,'',NULL,NULL,''),(220,-5,'',0,0,'',NULL,NULL,''),(220,-4,'',0,0,'',NULL,NULL,''),(220,-3,'',0,0,'',NULL,NULL,''),(220,-2,'',0,0,'',NULL,NULL,''),(220,-1,'',0,0,'',NULL,NULL,''),(220,1,'Port1',0,0,'',NULL,NULL,''),(220,2,'Port2',0,0,'',NULL,NULL,''),(220,3,'Port3',0,0,'',NULL,NULL,''),(220,4,'Port4',0,0,'',NULL,NULL,''),(220,5,'Port5',0,0,'',NULL,NULL,''),(220,6,'Port6',0,0,'',NULL,NULL,''),(220,7,'Port7',0,0,'',NULL,NULL,''),(220,8,'Port8',0,0,'',NULL,NULL,''),(220,9,'Port9',0,0,'',NULL,NULL,''),(220,10,'Port10',0,0,'',NULL,NULL,''),(220,11,'Port11',0,0,'',NULL,NULL,''),(220,12,'Port12',0,0,'',NULL,NULL,''),(220,13,'Port13',0,0,'',NULL,NULL,''),(220,14,'Port14',0,0,'',NULL,NULL,''),(220,15,'Port15',0,0,'',NULL,NULL,''),(220,16,'Port16',0,0,'',NULL,NULL,''),(220,17,'Port17',0,0,'',NULL,NULL,''),(220,18,'Port18',0,0,'',NULL,NULL,''),(220,19,'Port19',0,0,'',NULL,NULL,''),(220,20,'Port20',0,0,'',NULL,NULL,''),(220,21,'Port21',0,0,'',NULL,NULL,''),(220,22,'Port22',0,0,'',NULL,NULL,''),(220,23,'Port23',0,0,'',NULL,NULL,''),(220,24,'Port24',0,0,'',NULL,NULL,''),(221,-24,'',0,0,'',NULL,NULL,''),(221,-23,'',0,0,'',NULL,NULL,''),(221,-22,'',0,0,'',NULL,NULL,''),(221,-21,'',0,0,'',NULL,NULL,''),(221,-20,'',0,0,'',NULL,NULL,''),(221,-19,'',0,0,'',NULL,NULL,''),(221,-18,'',0,0,'',NULL,NULL,''),(221,-17,'',0,0,'',NULL,NULL,''),(221,-16,'',0,0,'',NULL,NULL,''),(221,-15,'',0,0,'',NULL,NULL,''),(221,-14,'',0,0,'',NULL,NULL,''),(221,-13,'',0,0,'',NULL,NULL,''),(221,-12,'',0,0,'',NULL,NULL,''),(221,-11,'',0,0,'',NULL,NULL,''),(221,-10,'',0,0,'',NULL,NULL,''),(221,-9,'',0,0,'',NULL,NULL,''),(221,-8,'',0,0,'',NULL,NULL,''),(221,-7,'',0,0,'',NULL,NULL,''),(221,-6,'',0,0,'',NULL,NULL,''),(221,-5,'',0,0,'',NULL,NULL,''),(221,-4,'',0,0,'',NULL,NULL,''),(221,-3,'',0,0,'',NULL,NULL,''),(221,-2,'',0,0,'',NULL,NULL,''),(221,-1,'',0,0,'',NULL,NULL,''),(221,1,'Port1',0,0,'',NULL,NULL,''),(221,2,'Port2',0,0,'',NULL,NULL,''),(221,3,'Port3',0,0,'',NULL,NULL,''),(221,4,'Port4',0,0,'',NULL,NULL,''),(221,5,'Port5',0,0,'',NULL,NULL,''),(221,6,'Port6',0,0,'',NULL,NULL,''),(221,7,'Port7',0,0,'',NULL,NULL,''),(221,8,'Port8',0,0,'',NULL,NULL,''),(221,9,'Port9',0,0,'',NULL,NULL,''),(221,10,'Port10',0,0,'',NULL,NULL,''),(221,11,'Port11',0,0,'',NULL,NULL,''),(221,12,'Port12',0,0,'',NULL,NULL,''),(221,13,'Port13',0,0,'',NULL,NULL,''),(221,14,'Port14',0,0,'',NULL,NULL,''),(221,15,'Port15',0,0,'',NULL,NULL,''),(221,16,'Port16',0,0,'',NULL,NULL,''),(221,17,'Port17',0,0,'',NULL,NULL,''),(221,18,'Port18',0,0,'',NULL,NULL,''),(221,19,'Port19',0,0,'',NULL,NULL,''),(221,20,'Port20',0,0,'',NULL,NULL,''),(221,21,'Port21',0,0,'',NULL,NULL,''),(221,22,'Port22',0,0,'',NULL,NULL,''),(221,23,'Port23',0,0,'',NULL,NULL,''),(221,24,'Port24',0,0,'',NULL,NULL,''),(222,1,'Port1',0,0,'',NULL,NULL,''),(222,2,'Port2',0,0,'',NULL,NULL,''),(222,3,'Port3',0,0,'',NULL,NULL,''),(222,4,'Port4',0,0,'',NULL,NULL,''),(222,5,'Port5',0,0,'',NULL,NULL,''),(222,6,'Port6',0,0,'',NULL,NULL,''),(222,7,'Port7',0,0,'',NULL,NULL,''),(222,8,'Port8',0,0,'',NULL,NULL,''),(222,9,'Port9',0,0,'',NULL,NULL,''),(222,10,'Port10',0,0,'',NULL,NULL,''),(222,11,'Port11',0,0,'',NULL,NULL,''),(222,12,'Port12',0,0,'',NULL,NULL,''),(222,13,'Port13',1,0,'',74,13,''),(222,14,'Port14',1,0,'',74,17,''),(222,15,'Port15',1,0,'',74,19,''),(222,16,'Port16',0,0,'',NULL,NULL,''),(222,17,'Port17',0,0,'',NULL,NULL,''),(222,18,'Port18',0,0,'',NULL,NULL,''),(222,19,'Port19',0,0,'',NULL,NULL,''),(222,20,'Port20',0,0,'',NULL,NULL,''),(222,21,'Port21',0,0,'',NULL,NULL,''),(222,22,'Port22',0,0,'',NULL,NULL,''),(222,23,'Port23',0,0,'',NULL,NULL,''),(222,24,'Port24',0,0,'',NULL,NULL,''),(222,25,'Port25',0,0,'',192,25,'VS-EU Nws 10G to Telehouse'),(222,26,'Port26',0,0,'',NULL,NULL,''),(222,27,'Port27',0,0,'',NULL,NULL,''),(222,28,'Port28',0,0,'',NULL,NULL,''),(222,29,'Port29',0,0,'',NULL,NULL,''),(222,30,'Port30',0,0,'',NULL,NULL,''),(222,31,'Port31',0,0,'',NULL,NULL,''),(222,32,'Port32',0,0,'',NULL,NULL,''),(222,33,'Port33',0,0,'',NULL,NULL,''),(222,34,'Port34',0,0,'',NULL,NULL,''),(222,35,'Port35',0,0,'',NULL,NULL,''),(222,36,'Port36',0,0,'',NULL,NULL,''),(222,37,'Port37',0,0,'',NULL,NULL,''),(222,38,'Port38',0,0,'',NULL,NULL,''),(222,39,'Port39',0,0,'',NULL,NULL,''),(222,40,'Port40',0,0,'',NULL,NULL,''),(222,41,'Port41',0,0,'',NULL,NULL,''),(222,42,'Port42',0,0,'',NULL,NULL,''),(222,43,'Port43',0,0,'',NULL,NULL,''),(222,44,'Port44',0,0,'',NULL,NULL,''),(222,45,'Port45',0,0,'',NULL,NULL,''),(222,46,'Port46',0,0,'',NULL,NULL,''),(222,47,'Port47',0,0,'',NULL,NULL,''),(222,48,'Port48',0,0,'',NULL,NULL,''),(237,1,'Port1',0,0,'',NULL,NULL,''),(237,2,'Port2',0,0,'',NULL,NULL,''),(237,3,'Port3',0,0,'',NULL,NULL,''),(237,4,'Port4',0,0,'',NULL,NULL,''),(237,5,'Port5',0,0,'',NULL,NULL,''),(237,6,'Port6',0,0,'',NULL,NULL,''),(237,7,'Port7',0,0,'',NULL,NULL,''),(237,8,'Port8',0,0,'',NULL,NULL,''),(237,9,'Port9',0,0,'',NULL,NULL,''),(237,10,'Port10',0,0,'',NULL,NULL,''),(237,11,'Port11',0,0,'',NULL,NULL,''),(237,12,'Port12',0,0,'',NULL,NULL,''),(237,13,'Port13',0,0,'',NULL,NULL,''),(237,14,'Port14',0,0,'',NULL,NULL,''),(237,15,'Port15',0,0,'',NULL,NULL,''),(237,16,'Port16',0,0,'',NULL,NULL,''),(237,17,'Port17',0,0,'',NULL,NULL,''),(237,18,'Port18',0,0,'',NULL,NULL,''),(237,19,'Port19',0,0,'',NULL,NULL,''),(237,20,'Port20',0,0,'',NULL,NULL,''),(237,21,'Port21',0,0,'',NULL,NULL,''),(237,22,'Port22',0,0,'',NULL,NULL,''),(237,23,'Port23',0,0,'',NULL,NULL,''),(237,24,'Port24',0,0,'',NULL,NULL,''),(272,1,'Port1',0,0,'',NULL,NULL,''),(272,2,'Port2',0,0,'',NULL,NULL,''),(272,3,'Port3',0,0,'',NULL,NULL,''),(272,4,'Port4',0,0,'',NULL,NULL,''),(272,5,'Port5',0,0,'',NULL,NULL,''),(272,6,'Port6',0,0,'',NULL,NULL,''),(272,7,'Port7',0,0,'',NULL,NULL,''),(272,8,'Port8',0,0,'',NULL,NULL,''),(272,9,'Port9',0,0,'',NULL,NULL,''),(272,10,'Port10',0,0,'',NULL,NULL,''),(272,11,'Port11',0,0,'',NULL,NULL,''),(272,12,'Port12',0,0,'',NULL,NULL,''),(272,13,'Port13',0,0,'',NULL,NULL,''),(272,14,'Port14',0,0,'',NULL,NULL,''),(272,15,'Port15',0,0,'',NULL,NULL,''),(272,16,'Port16',0,0,'',NULL,NULL,''),(272,17,'Port17',0,0,'',NULL,NULL,''),(272,18,'Port18',0,0,'',NULL,NULL,''),(272,19,'Port19',0,0,'',NULL,NULL,''),(272,20,'Port20',0,0,'',NULL,NULL,''),(272,21,'Port21',0,0,'',NULL,NULL,''),(272,22,'Port22',0,0,'',NULL,NULL,''),(272,23,'Port23',0,0,'',NULL,NULL,''),(272,24,'Port24',0,0,'',NULL,NULL,''),(272,25,'Port25',0,0,'',NULL,NULL,''),(272,26,'Port26',0,0,'',NULL,NULL,''),(272,27,'Port27',0,0,'',NULL,NULL,''),(272,28,'Port28',0,0,'',NULL,NULL,''),(272,29,'Port29',0,0,'',NULL,NULL,''),(272,30,'Port30',0,0,'',NULL,NULL,''),(272,31,'Port31',0,0,'',NULL,NULL,''),(272,32,'Port32',0,0,'',NULL,NULL,''),(272,33,'Port33',0,0,'',NULL,NULL,''),(272,34,'Port34',0,0,'',NULL,NULL,''),(272,35,'Port35',0,0,'',NULL,NULL,''),(272,36,'Port36',0,0,'',NULL,NULL,''),(272,37,'Port37',0,0,'',NULL,NULL,''),(272,38,'Port38',0,0,'',NULL,NULL,''),(272,39,'Port39',0,0,'',NULL,NULL,''),(272,40,'Port40',0,0,'',NULL,NULL,''),(272,41,'Port41',0,0,'',NULL,NULL,''),(272,42,'Port42',0,0,'',NULL,NULL,''),(272,43,'Port43',0,0,'',NULL,NULL,''),(272,44,'Port44',0,0,'',NULL,NULL,''),(272,45,'Port45',0,0,'',NULL,NULL,''),(272,46,'Port46',0,0,'',NULL,NULL,''),(272,47,'Port47',0,0,'',NULL,NULL,''),(272,48,'Port48',0,0,'',NULL,NULL,''),(289,1,'Port1',0,0,'',NULL,NULL,''),(289,2,'Port2',0,0,'',NULL,NULL,''),(289,3,'Port3',0,0,'',NULL,NULL,''),(289,4,'Port4',0,0,'',NULL,NULL,''),(289,5,'Port5',0,0,'',NULL,NULL,''),(289,6,'Port6',0,0,'',NULL,NULL,''),(289,7,'Port7',0,0,'',NULL,NULL,''),(289,8,'Port8',0,0,'',NULL,NULL,''),(289,9,'Port9',0,0,'',NULL,NULL,''),(289,10,'Port10',0,0,'',NULL,NULL,''),(289,11,'Port11',0,0,'',NULL,NULL,''),(289,12,'Port12',0,0,'',NULL,NULL,''),(289,13,'Port13',0,0,'',NULL,NULL,''),(289,14,'Port14',0,0,'',NULL,NULL,''),(289,15,'Port15',0,0,'',NULL,NULL,''),(289,16,'Port16',0,0,'',NULL,NULL,''),(289,17,'Port17',0,0,'',NULL,NULL,''),(289,18,'Port18',0,0,'',NULL,NULL,''),(289,19,'Port19',0,0,'',NULL,NULL,''),(289,20,'Port20',0,0,'',NULL,NULL,''),(289,21,'Port21',0,0,'',NULL,NULL,''),(289,22,'Port22',0,0,'',NULL,NULL,''),(289,23,'Port23',0,0,'',NULL,NULL,''),(289,24,'Port24',0,0,'',NULL,NULL,''),(289,25,'Port25',0,0,'',NULL,NULL,''),(289,26,'Port26',0,0,'',NULL,NULL,''),(289,27,'Port27',0,0,'',NULL,NULL,''),(289,28,'Port28',0,0,'',NULL,NULL,''),(289,29,'Port29',0,0,'',NULL,NULL,''),(289,30,'Port30',0,0,'',NULL,NULL,''),(289,31,'Port31',0,0,'',NULL,NULL,''),(289,32,'Port32',0,0,'',NULL,NULL,''),(289,33,'Port33',0,0,'',NULL,NULL,''),(289,34,'Port34',0,0,'',NULL,NULL,''),(289,35,'Port35',0,0,'',NULL,NULL,''),(289,36,'Port36',0,0,'',NULL,NULL,''),(289,37,'Port37',0,0,'',NULL,NULL,''),(289,38,'Port38',0,0,'',NULL,NULL,''),(289,39,'Port39',0,0,'',NULL,NULL,''),(289,40,'Port40',0,0,'',NULL,NULL,''),(289,41,'Port41',0,0,'',NULL,NULL,''),(289,42,'Port42',0,0,'',NULL,NULL,''),(289,43,'Port43',0,0,'',NULL,NULL,''),(289,44,'Port44',0,0,'',NULL,NULL,''),(289,45,'Port45',0,0,'',NULL,NULL,''),(289,46,'Port46',0,0,'',NULL,NULL,''),(289,47,'Port47',0,0,'',NULL,NULL,''),(289,48,'Port48',0,0,'',NULL,NULL,'');
/*!40000 ALTER TABLE `fac_Ports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_PowerConnection`
--

DROP TABLE IF EXISTS `fac_PowerConnection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_PowerConnection` (
  `PDUID` int(11) NOT NULL,
  `PDUPosition` int(11) NOT NULL,
  `DeviceID` int(11) NOT NULL,
  `DeviceConnNumber` int(11) NOT NULL,
  UNIQUE KEY `PDUID` (`PDUID`,`PDUPosition`),
  UNIQUE KEY `DeviceID` (`DeviceID`,`DeviceConnNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_PowerConnection`
--

LOCK TABLES `fac_PowerConnection` WRITE;
/*!40000 ALTER TABLE `fac_PowerConnection` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_PowerConnection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_PowerDistribution`
--

DROP TABLE IF EXISTS `fac_PowerDistribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_PowerDistribution` (
  `PDUID` int(11) NOT NULL AUTO_INCREMENT,
  `Label` varchar(40) NOT NULL,
  `CabinetID` int(11) NOT NULL,
  `TemplateID` int(11) NOT NULL,
  `IPAddress` varchar(254) NOT NULL,
  `SNMPCommunity` varchar(50) NOT NULL,
  `FirmwareVersion` varchar(40) NOT NULL,
  `PanelID` int(11) NOT NULL,
  `BreakerSize` int(11) NOT NULL,
  `PanelPole` int(11) NOT NULL,
  `InputAmperage` int(11) NOT NULL,
  `FailSafe` tinyint(1) NOT NULL,
  `PanelID2` int(11) NOT NULL,
  `PanelPole2` int(11) NOT NULL,
  PRIMARY KEY (`PDUID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_PowerDistribution`
--

LOCK TABLES `fac_PowerDistribution` WRITE;
/*!40000 ALTER TABLE `fac_PowerDistribution` DISABLE KEYS */;
INSERT INTO `fac_PowerDistribution` VALUES (1,'G4_UPS1',5,1,'','','',1,1,12,32,0,0,0),(2,'G4_UPS2',5,1,'','','',2,1,6,32,0,0,0),(3,'UPS1/DB3/MCB16',10,1,'','','',3,1,16,32,0,0,0),(4,'UPS2/DB1/MCB16',10,1,'','','',3,1,16,32,0,0,0),(5,'UPS1/DB1/MCB8',8,1,'','','',3,1,8,32,0,0,0),(6,'UPS2/DB1/MCB8',8,1,'','','',4,1,8,32,0,0,0),(7,'UPS1/DB1/MCB11',7,1,'10.22.5.201','public','',3,1,11,32,0,0,0),(8,'UPS2/DB1/MCB11',7,10,'','','',4,1,11,32,0,0,0),(9,'UPS2/DB1/MCB21',23,10,'','','',4,1,21,16,0,0,0),(10,'UPS1/DB0/10',151,1,'','','',7,1,10,16,0,0,0),(11,'UPS2/DB0/10',151,1,'','','',8,1,10,16,0,0,0),(12,'UPS1/DB2/MCB1',31,1,'','','',9,1,1,16,0,0,0),(13,'UPS2/DB2/MCB1',31,1,'','','',10,1,1,16,0,0,0);
/*!40000 ALTER TABLE `fac_PowerDistribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_PowerPanel`
--

DROP TABLE IF EXISTS `fac_PowerPanel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_PowerPanel` (
  `PanelID` int(11) NOT NULL AUTO_INCREMENT,
  `PowerSourceID` int(11) NOT NULL,
  `PanelLabel` varchar(20) NOT NULL,
  `NumberOfPoles` int(11) NOT NULL,
  `MainBreakerSize` int(11) NOT NULL,
  `PanelVoltage` int(11) NOT NULL,
  `NumberScheme` enum('Odd/Even','Sequential') NOT NULL,
  PRIMARY KEY (`PanelID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_PowerPanel`
--

LOCK TABLES `fac_PowerPanel` WRITE;
/*!40000 ALTER TABLE `fac_PowerPanel` DISABLE KEYS */;
INSERT INTO `fac_PowerPanel` VALUES (1,1,'UPS1/DB5',24,250,240,'Sequential'),(2,2,'UPS1/DB6',24,250,240,'Sequential'),(3,1,'UPS1/DB1',24,250,240,'Sequential'),(4,2,'UPS2/DB1',24,250,240,'Sequential'),(5,2,'UPS2/DB5',24,250,240,'Sequential'),(6,2,'UPS2/DB5',24,250,240,'Sequential'),(7,1,'UPS1/DB0',24,250,240,'Sequential'),(8,2,'UPS2/DB0',24,250,240,'Sequential'),(9,1,'UPS1/DB2',24,250,240,'Sequential'),(10,2,'UPS2/DB2',24,250,240,'Sequential'),(11,1,'UPS1/DB3',24,250,240,'Sequential'),(12,2,'UPS2/DB3',24,250,240,'Sequential'),(13,1,'UPS1/DB4',24,250,240,'Sequential'),(14,2,'UPS2/DB4',24,250,240,'Sequential'),(15,1,'UPS1/DB7',24,250,240,'Sequential'),(16,2,'UPS2/DB7',24,250,240,'Sequential');
/*!40000 ALTER TABLE `fac_PowerPanel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_PowerSource`
--

DROP TABLE IF EXISTS `fac_PowerSource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_PowerSource` (
  `PowerSourceID` int(11) NOT NULL AUTO_INCREMENT,
  `SourceName` varchar(80) NOT NULL,
  `DataCenterID` int(11) NOT NULL,
  `IPAddress` varchar(254) NOT NULL,
  `Community` varchar(40) NOT NULL,
  `LoadOID` varchar(80) NOT NULL,
  `Capacity` int(11) NOT NULL,
  PRIMARY KEY (`PowerSourceID`),
  KEY `DataCenterID` (`DataCenterID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_PowerSource`
--

LOCK TABLES `fac_PowerSource` WRITE;
/*!40000 ALTER TABLE `fac_PowerSource` DISABLE KEYS */;
INSERT INTO `fac_PowerSource` VALUES (1,'UPS1',1,'','','',720),(2,'UPS2',1,'','','',720),(3,'UPS3',1,'10.22.5.42','public','1.3.6.1.4.1.3815.1.2.2.1.1.2.1.1.2.35',724),(4,'UPS4',1,'10.22.5.41','public','1.3.6.1.4.1.3815.1.2.2.1.1.2.1.1.2.35',724);
/*!40000 ALTER TABLE `fac_PowerSource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_RackRequest`
--

DROP TABLE IF EXISTS `fac_RackRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_RackRequest` (
  `RequestID` int(11) NOT NULL AUTO_INCREMENT,
  `RequestorID` int(11) NOT NULL,
  `RequestTime` datetime NOT NULL,
  `CompleteTime` datetime NOT NULL,
  `Label` varchar(40) NOT NULL,
  `SerialNo` varchar(40) NOT NULL,
  `MfgDate` date NOT NULL,
  `AssetTag` varchar(40) NOT NULL,
  `ESX` tinyint(1) NOT NULL,
  `Owner` int(11) NOT NULL,
  `DeviceHeight` int(11) NOT NULL,
  `EthernetCount` int(11) NOT NULL,
  `VLANList` varchar(80) NOT NULL,
  `SANCount` int(11) NOT NULL,
  `SANList` varchar(80) NOT NULL,
  `DeviceClass` varchar(80) NOT NULL,
  `DeviceType` enum('Server','Appliance','Storage Array','Switch','Chassis','Patch Panel','Physical Infrastructure') NOT NULL,
  `LabelColor` varchar(80) NOT NULL,
  `CurrentLocation` varchar(120) NOT NULL,
  `SpecialInstructions` text NOT NULL,
  PRIMARY KEY (`RequestID`),
  KEY `RequestorID` (`RequestorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_RackRequest`
--

LOCK TABLES `fac_RackRequest` WRITE;
/*!40000 ALTER TABLE `fac_RackRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_RackRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_SensorTemplate`
--

DROP TABLE IF EXISTS `fac_SensorTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_SensorTemplate` (
  `TemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `ManufacturerID` int(11) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `SNMPVersion` enum('1','2c') NOT NULL DEFAULT '2c',
  `TemperatureOID` varchar(256) NOT NULL,
  `HumidityOID` varchar(256) NOT NULL,
  `TempMultiplier` float NOT NULL DEFAULT '1',
  `HumidityMultiplier` float NOT NULL DEFAULT '1',
  PRIMARY KEY (`TemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_SensorTemplate`
--

LOCK TABLES `fac_SensorTemplate` WRITE;
/*!40000 ALTER TABLE `fac_SensorTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_SensorTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Slots`
--

DROP TABLE IF EXISTS `fac_Slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Slots` (
  `TemplateID` int(11) NOT NULL,
  `Position` int(11) NOT NULL,
  `BackSide` tinyint(1) NOT NULL,
  `X` int(11) DEFAULT NULL,
  `Y` int(11) DEFAULT NULL,
  `W` int(11) DEFAULT NULL,
  `H` int(11) DEFAULT NULL,
  PRIMARY KEY (`TemplateID`,`Position`,`BackSide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Slots`
--

LOCK TABLES `fac_Slots` WRITE;
/*!40000 ALTER TABLE `fac_Slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_Slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Supplies`
--

DROP TABLE IF EXISTS `fac_Supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Supplies` (
  `SupplyID` int(11) NOT NULL AUTO_INCREMENT,
  `PartNum` varchar(40) NOT NULL,
  `PartName` varchar(80) NOT NULL,
  `MinQty` int(11) NOT NULL,
  `MaxQty` int(11) NOT NULL,
  PRIMARY KEY (`SupplyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Supplies`
--

LOCK TABLES `fac_Supplies` WRITE;
/*!40000 ALTER TABLE `fac_Supplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_Supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_SupplyBin`
--

DROP TABLE IF EXISTS `fac_SupplyBin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_SupplyBin` (
  `BinID` int(11) NOT NULL AUTO_INCREMENT,
  `Location` varchar(40) NOT NULL,
  PRIMARY KEY (`BinID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_SupplyBin`
--

LOCK TABLES `fac_SupplyBin` WRITE;
/*!40000 ALTER TABLE `fac_SupplyBin` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_SupplyBin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_SwitchConnection`
--

DROP TABLE IF EXISTS `fac_SwitchConnection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_SwitchConnection` (
  `SwitchDeviceID` int(11) NOT NULL,
  `SwitchPortNumber` int(11) NOT NULL,
  `EndpointDeviceID` int(11) NOT NULL,
  `EndpointPort` int(11) NOT NULL,
  `Notes` varchar(80) NOT NULL,
  PRIMARY KEY (`SwitchDeviceID`,`SwitchPortNumber`),
  UNIQUE KEY `EndpointDeviceID` (`EndpointDeviceID`,`EndpointPort`),
  UNIQUE KEY `SwitchDeviceID` (`SwitchDeviceID`,`SwitchPortNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_SwitchConnection`
--

LOCK TABLES `fac_SwitchConnection` WRITE;
/*!40000 ALTER TABLE `fac_SwitchConnection` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_SwitchConnection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Tags`
--

DROP TABLE IF EXISTS `fac_Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Tags` (
  `TagID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(128) NOT NULL,
  PRIMARY KEY (`TagID`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Tags`
--

LOCK TABLES `fac_Tags` WRITE;
/*!40000 ALTER TABLE `fac_Tags` DISABLE KEYS */;
INSERT INTO `fac_Tags` VALUES (3,'Backbone'),(4,'C4L'),(5,'IPT'),(2,'NoReport'),(1,'Report');
/*!40000 ALTER TABLE `fac_Tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_TemplatePorts`
--

DROP TABLE IF EXISTS `fac_TemplatePorts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_TemplatePorts` (
  `TemplateID` int(11) NOT NULL,
  `PortNumber` int(11) NOT NULL,
  `Label` varchar(40) NOT NULL,
  `MediaID` int(11) NOT NULL DEFAULT '0',
  `ColorID` int(11) NOT NULL DEFAULT '0',
  `PortNotes` varchar(80) NOT NULL,
  PRIMARY KEY (`TemplateID`,`PortNumber`),
  UNIQUE KEY `LabeledPort` (`TemplateID`,`PortNumber`,`Label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_TemplatePorts`
--

LOCK TABLES `fac_TemplatePorts` WRITE;
/*!40000 ALTER TABLE `fac_TemplatePorts` DISABLE KEYS */;
INSERT INTO `fac_TemplatePorts` VALUES (2,1,'',0,0,''),(2,2,'',0,0,''),(2,3,'',0,0,''),(2,4,'',0,0,''),(2,5,'',0,0,''),(2,6,'',0,0,''),(2,7,'',0,0,''),(2,8,'',0,0,''),(2,9,'',0,0,''),(2,10,'',0,0,''),(2,11,'',0,0,''),(2,12,'',0,0,''),(2,13,'',0,0,''),(2,14,'',0,0,''),(2,15,'',0,0,''),(2,16,'',0,0,''),(2,17,'',0,0,''),(2,18,'',0,0,''),(2,19,'',0,0,''),(2,20,'',0,0,''),(2,21,'',0,0,''),(2,22,'',0,0,''),(2,23,'',0,0,''),(2,24,'',0,0,''),(2,25,'',0,0,''),(2,26,'',0,0,''),(2,27,'',0,0,''),(2,28,'',0,0,''),(2,29,'',0,0,''),(2,30,'',0,0,''),(2,31,'',0,0,''),(2,32,'',0,0,''),(2,33,'',0,0,''),(2,34,'',0,0,''),(2,35,'',0,0,''),(2,36,'',0,0,''),(2,37,'',0,0,''),(2,38,'',0,0,''),(2,39,'',0,0,''),(2,40,'',0,0,''),(2,41,'',0,0,''),(2,42,'',0,0,''),(2,43,'',0,0,''),(2,44,'',0,0,''),(2,45,'',0,0,''),(2,46,'',0,0,''),(2,47,'',0,0,''),(2,48,'',0,0,''),(9,1,'',0,0,''),(9,2,'',0,0,''),(9,3,'',0,0,''),(9,4,'',0,0,''),(9,5,'',0,0,''),(9,6,'',0,0,''),(9,7,'',0,0,''),(9,8,'',0,0,''),(9,9,'',0,0,''),(9,10,'',0,0,''),(9,11,'',0,0,''),(9,12,'',0,0,''),(9,13,'',0,0,''),(9,14,'',0,0,''),(9,15,'',0,0,''),(9,16,'',0,0,''),(9,17,'',0,0,''),(9,18,'',0,0,''),(9,19,'',0,0,''),(9,20,'',0,0,''),(9,21,'',0,0,''),(9,22,'',0,0,''),(9,23,'',0,0,''),(9,24,'',0,0,''),(10,1,'',0,0,''),(10,2,'',0,0,''),(10,3,'',0,0,''),(10,4,'',0,0,''),(10,5,'',0,0,''),(10,6,'',0,0,''),(10,7,'',0,0,''),(10,8,'',0,0,''),(10,9,'',0,0,''),(10,10,'',0,0,''),(10,11,'',0,0,''),(10,12,'',0,0,''),(10,13,'',0,0,''),(10,14,'',0,0,''),(10,15,'',0,0,''),(10,16,'',0,0,''),(10,17,'',0,0,''),(10,18,'',0,0,''),(10,19,'',0,0,''),(10,20,'',0,0,''),(10,21,'',0,0,''),(10,22,'',0,0,''),(10,23,'',0,0,''),(10,24,'',0,0,''),(10,25,'',0,0,''),(10,26,'',0,0,''),(10,27,'',0,0,''),(10,28,'',0,0,''),(10,29,'',0,0,''),(10,30,'',0,0,''),(10,31,'',0,0,''),(10,32,'',0,0,''),(10,33,'',0,0,''),(10,34,'',0,0,''),(10,35,'',0,0,''),(10,36,'',0,0,''),(10,37,'',0,0,''),(10,38,'',0,0,''),(10,39,'',0,0,''),(10,40,'',0,0,''),(10,41,'',0,0,''),(10,42,'',0,0,''),(10,43,'',0,0,''),(10,44,'',0,0,''),(10,45,'',0,0,''),(10,46,'',0,0,''),(10,47,'',0,0,''),(10,48,'',0,0,'');
/*!40000 ALTER TABLE `fac_TemplatePorts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_User`
--

DROP TABLE IF EXISTS `fac_User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_User` (
  `UserID` varchar(80) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `AdminOwnDevices` tinyint(1) NOT NULL,
  `ReadAccess` tinyint(1) NOT NULL,
  `WriteAccess` tinyint(1) NOT NULL,
  `DeleteAccess` tinyint(1) NOT NULL,
  `ContactAdmin` tinyint(1) NOT NULL,
  `RackRequest` tinyint(1) NOT NULL,
  `RackAdmin` tinyint(1) NOT NULL,
  `SiteAdmin` tinyint(1) NOT NULL,
  `Disabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_User`
--

LOCK TABLES `fac_User` WRITE;
/*!40000 ALTER TABLE `fac_User` DISABLE KEYS */;
INSERT INTO `fac_User` VALUES ('admin','Default Admin',1,1,1,1,1,1,1,1,0),('alan_p','Alan Pearson',1,1,1,1,1,1,1,1,0),('alex_l','Alex Laity',1,1,1,1,1,1,1,1,0),('brian_c','Brian Churchill',1,1,1,1,1,1,1,0,0),('howard_j','Howard Jones',1,1,1,1,1,1,1,1,0),('joy_p','Joy Paulose',1,1,1,1,1,1,1,0,0),('kasim_g','Kasim Ghazanfar',1,1,1,1,1,1,1,0,0),('raymond_j','Raymond James',1,1,1,1,1,1,1,0,0),('security.ukdc1','UKDC Security',1,1,1,1,0,1,1,0,0);
/*!40000 ALTER TABLE `fac_User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_VMInventory`
--

DROP TABLE IF EXISTS `fac_VMInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_VMInventory` (
  `VMIndex` int(11) NOT NULL AUTO_INCREMENT,
  `DeviceID` int(11) NOT NULL,
  `LastUpdated` datetime NOT NULL,
  `vmID` int(11) NOT NULL,
  `vmName` varchar(80) NOT NULL,
  `vmState` varchar(80) NOT NULL,
  `Owner` int(11) NOT NULL,
  PRIMARY KEY (`VMIndex`),
  KEY `ValidDevice` (`DeviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_VMInventory`
--

LOCK TABLES `fac_VMInventory` WRITE;
/*!40000 ALTER TABLE `fac_VMInventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `fac_VMInventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_Zone`
--

DROP TABLE IF EXISTS `fac_Zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_Zone` (
  `ZoneID` int(11) NOT NULL AUTO_INCREMENT,
  `DataCenterID` int(11) NOT NULL,
  `Description` varchar(120) NOT NULL,
  `MapX1` int(11) NOT NULL,
  `MapY1` int(11) NOT NULL,
  `MapX2` int(11) NOT NULL,
  `MapY2` int(11) NOT NULL,
  `MapZoom` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`ZoneID`),
  KEY `DataCenterID` (`DataCenterID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_Zone`
--

LOCK TABLES `fac_Zone` WRITE;
/*!40000 ALTER TABLE `fac_Zone` DISABLE KEYS */;
INSERT INTO `fac_Zone` VALUES (1,1,'Ground Floor',0,0,0,0,100),(2,1,'First Floor',0,0,0,0,100),(3,2,'Ground Floor',0,0,0,0,100),(4,4,'FedCloud',0,0,0,0,100),(5,4,'CloudCage1',0,0,0,0,100),(6,3,'CloudCage1',0,0,0,0,100),(7,5,'TFM51',0,0,0,0,100);
/*!40000 ALTER TABLE `fac_Zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-24 22:35:51