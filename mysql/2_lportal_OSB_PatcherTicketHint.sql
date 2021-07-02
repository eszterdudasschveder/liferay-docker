-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: lportal
-- ------------------------------------------------------
-- Server version	5.6.48-log

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
-- Table structure for table `OSB_PatcherTicketHint`
--

DROP TABLE IF EXISTS `OSB_PatcherTicketHint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSB_PatcherTicketHint` (
  `PatcherTicketHintId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `patcherProductVersionId` bigint(20) DEFAULT NULL,
  `script` longtext,
  PRIMARY KEY (`PatcherTicketHintId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSB_PatcherTicketHint`
--

LOCK TABLES `OSB_PatcherTicketHint` WRITE;
/*!40000 ALTER TABLE `OSB_PatcherTicketHint` DISABLE KEYS */;
INSERT INTO `OSB_PatcherTicketHint` VALUES (0,0,0,'',NULL,NULL,130051253,'if (projectVersion == \"fix-pack-base-7210\") { return \"LPS-93497\" } else if (projectVersion == \"fix-pack-dxp-1-7210\") { return \"LPS-99047\" }'),(1,NULL,NULL,NULL,NULL,NULL,102311424,'if (projectVersion == \"fix-pack-base-7110\" || projectVersion == \"fix-pack-dxp-1-7110\" || projectVersion == \"fix-pack-dxp-2-7110\") { return \"LPS-85987, LPS-88314, LPS-93497\" } else if (projectVersion == \"fix-pack-dxp-3-7110\" || projectVersion == \"fix-pack-dxp-4-7110\") { return \"LPS-88314, LPS-93497, LPS-92441, LPS-94011\" } else if (projectVersion == \"fix-pack-dxp-5-7110\" || projectVersion == \"fix-pack-dxp-6-7110\" || projectVersion == \"fix-pack-dxp-7-7110\" || projectVersion == \"fix-pack-dxp-8-7110\" || projectVersion == \"fix-pack-dxp-9-7110\" || projectVersion == \"fix-pack-dxp-10-7110\") { return \"LPS-93497, LPS-92441, LPS-94011\" } else if (projectVersion == \"fix-pack-dxp-11-7110\" || projectVersion == \"fix-pack-dxp-12-7110\") { return \"LPS-93497, LPS-94011\" } else if (projectVersion == \"fix-pack-dxp-13-7110\" || projectVersion == \"fix-pack-dxp-14-7110\") { return \"LPE-16890, LPS-94011\" }'),(2,NULL,NULL,NULL,NULL,NULL,101625504,'if (projectVersion ==~ /fix-pack-de-\\d{2}-7010/) { def res = []; def version = projectVersion.substring(0, projectVersion.length() - 4).find(/\\d{2}/).toInteger(); if (version != null && version > 27 && version < 89) { res.add(\"LPS-107276\") }; if (ticketList != null && version != null &&  ticketList.contains(\"LPS-78037\") && version < 46) { res.add(\"LPS-85987\") }; return res.join(\",\") }');
/*!40000 ALTER TABLE `OSB_PatcherTicketHint` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-09 10:36:52
