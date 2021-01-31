-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int unsigned NOT NULL,
  `media_types_id` int unsigned NOT NULL,
  `file` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '/folder/file.jpg\n',
  `blob` blob,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_media_media_types1_idx` (`media_types_id`),
  KEY `fk_media_users1_idx` (`users_id`),
  CONSTRAINT `fk_media_media_types1` FOREIGN KEY (`media_types_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `fk_media_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,31,3,'application/vnd.ms-htmlhelp',NULL,NULL,'1998-08-03 19:19:51',NULL),(2,92,3,'application/reginfo+xml',NULL,NULL,'2010-12-16 03:02:29','1994-03-23 16:01:34'),(3,52,2,'image/cgm',NULL,NULL,'1972-10-29 15:54:02','2001-01-09 04:58:59'),(4,64,3,'video/vnd.dece.video',NULL,NULL,'1991-10-02 18:18:26',NULL),(5,71,1,'text/vnd.wap.wml',NULL,NULL,'1998-08-14 15:55:52','1986-09-14 15:49:06'),(6,42,2,'application/x-mscardfile',NULL,NULL,'2020-11-28 09:32:58',NULL),(7,80,3,'application/x-msmetafile',NULL,NULL,'1975-09-03 10:32:14','2005-02-11 10:48:35'),(8,68,2,'image/vnd.fst',NULL,NULL,'1987-07-25 00:03:33',NULL),(9,36,2,'application/x-glulx',NULL,NULL,'1972-12-15 14:18:04','2020-09-01 13:15:36'),(10,88,2,'application/vnd.sema',NULL,NULL,'1972-10-14 06:53:00',NULL),(11,4,1,'application/x-tex-tfm',NULL,NULL,'2015-06-26 19:12:33','1988-03-02 15:42:49'),(12,21,1,'application/x-mscardfile',NULL,NULL,'1974-06-09 14:23:53',NULL),(13,74,1,'application/vnd.dece.data',NULL,NULL,'2014-01-05 15:56:52','1994-02-07 17:58:39'),(14,2,1,'model/vnd.mts',NULL,NULL,'2014-05-16 09:45:03',NULL),(15,21,1,'audio/x-pn-realaudio',NULL,NULL,'1999-11-20 18:41:16','1981-03-03 22:52:12'),(16,31,2,'application/mp4',NULL,NULL,'2002-02-23 16:32:29',NULL),(17,14,1,'application/vnd.ms-pki.stl',NULL,NULL,'2010-01-02 11:45:03',NULL),(18,30,2,'application/vnd.vsf',NULL,NULL,'2002-08-15 04:23:42',NULL),(19,72,3,'application/x-debian-package',NULL,NULL,'1986-08-11 05:26:29',NULL),(20,43,2,'application/vnd.ahead.space',NULL,NULL,'1972-04-26 09:03:25',NULL),(21,17,3,'application/vnd.kde.kpresenter',NULL,NULL,'1975-07-19 01:23:48','1979-09-05 21:44:25'),(22,86,3,'application/xaml+xml',NULL,NULL,'2020-04-18 16:55:08','2011-05-14 05:20:16'),(23,69,2,'application/emma+xml',NULL,NULL,'1994-01-12 17:52:31',NULL),(24,32,1,'image/vnd.wap.wbmp',NULL,NULL,'1988-05-31 12:31:14','1975-05-11 14:09:17'),(25,9,1,'application/x-csh',NULL,NULL,'1996-02-09 15:37:27','2015-09-20 21:30:45'),(26,51,1,'application/vnd.openxmlformats-officedocument',NULL,NULL,'1979-11-27 15:50:28','2014-02-12 19:23:24'),(27,40,3,'application/pkixcmp',NULL,NULL,'1997-09-22 04:36:16',NULL),(28,15,1,'application/jsonml+json',NULL,NULL,'1974-05-14 23:09:44',NULL),(29,88,1,'application/vnd.tao.intent-module-archive',NULL,NULL,'2005-09-20 00:32:07',NULL),(30,26,1,'audio/x-aac',NULL,NULL,'2002-03-30 13:31:46',NULL),(31,37,2,'application/x-msmetafile',NULL,NULL,'1972-03-12 17:11:46','2008-02-15 06:11:46'),(32,59,2,'application/mods+xml',NULL,NULL,'2017-07-14 09:08:24','1979-06-20 08:21:39'),(33,78,3,'audio/xm',NULL,NULL,'1985-03-21 10:05:51','2015-05-12 17:09:21'),(34,14,2,'application/x-sql',NULL,NULL,'1997-05-28 14:14:17','2009-04-29 14:34:59'),(35,80,2,'audio/vnd.rip',NULL,NULL,'2017-09-17 19:02:05',NULL),(36,93,3,'application/vnd.wap.wbxml',NULL,NULL,'2003-09-18 13:33:32','1975-02-16 20:44:14'),(37,40,3,'text/cache-manifest',NULL,NULL,'1982-07-18 10:28:26','1989-01-07 17:34:41'),(38,93,1,'application/pls+xml',NULL,NULL,'2011-09-28 08:35:04',NULL),(39,31,1,'application/vnd.dvb.service',NULL,NULL,'2006-02-18 11:53:50',NULL),(40,13,2,'application/emma+xml',NULL,NULL,'2000-03-13 13:58:36','1988-03-30 23:58:51'),(41,42,2,'application/vnd.quark.quarkxpress',NULL,NULL,'1972-01-07 06:28:55',NULL),(42,51,3,'application/vnd.oasis.opendocument.image',NULL,NULL,'1999-05-01 11:18:28',NULL),(43,34,2,'application/vnd.ms-excel.sheet.binary.macroen',NULL,NULL,'1990-04-19 10:34:14',NULL),(44,94,1,'application/vnd.semd',NULL,NULL,'2018-07-30 02:58:27',NULL),(45,81,1,'text/vnd.dvb.subtitle',NULL,NULL,'2019-09-22 06:02:04',NULL),(46,30,1,'text/css',NULL,NULL,'1985-11-15 22:23:16',NULL),(47,75,3,'application/vnd.trid.tpt',NULL,NULL,'2009-04-18 07:07:48',NULL),(48,67,2,'application/x-sh',NULL,NULL,'2011-05-02 09:42:56',NULL),(49,76,3,'application/x-xliff+xml',NULL,NULL,'2002-07-04 02:04:30',NULL),(50,3,2,'application/java-vm',NULL,NULL,'2013-12-18 19:18:59',NULL),(51,36,3,'application/vnd.route66.link66+xml',NULL,NULL,'2009-09-18 02:45:15',NULL),(52,52,3,'text/prs.lines.tag',NULL,NULL,'1980-03-28 10:40:49','2011-10-23 17:51:02'),(53,72,2,'image/x-icon',NULL,NULL,'2018-07-16 11:04:49',NULL),(54,85,1,'application/vnd.dynageo',NULL,NULL,'2003-05-26 12:44:20',NULL),(55,68,3,'application/vnd.lotus-notes',NULL,NULL,'2019-06-24 17:47:49','2000-04-16 05:45:56'),(56,41,1,'application/pgp-signature',NULL,NULL,'2000-12-12 00:59:20','2001-02-27 17:29:47'),(57,60,3,'application/vnd.sun.xml.draw',NULL,NULL,'1978-02-20 03:05:12',NULL),(58,90,3,'application/javascript',NULL,NULL,'2010-02-24 18:35:08','1978-10-21 15:59:55'),(59,56,3,'application/vnd.ms-officetheme',NULL,NULL,'1987-05-15 07:30:45','2008-08-16 22:07:18'),(60,15,2,'image/vnd.net-fpx',NULL,NULL,'1990-05-26 16:14:33','2017-06-10 08:31:38'),(61,2,2,'application/reginfo+xml',NULL,NULL,'1992-08-17 23:46:55',NULL),(62,54,3,'application/xspf+xml',NULL,NULL,'1995-10-14 12:13:02',NULL),(63,32,1,'application/vnd.data-vision.rdz',NULL,NULL,'1986-02-05 02:53:40',NULL),(64,30,1,'video/vnd.dece.sd',NULL,NULL,'2010-11-25 11:32:06','1977-03-17 06:51:28'),(65,100,1,'image/x-rgb',NULL,NULL,'1994-02-01 07:18:46',NULL),(66,62,2,'application/x-chat',NULL,NULL,'2008-05-07 00:41:34',NULL),(67,26,1,'application/vnd.kde.kword',NULL,NULL,'1984-07-29 02:05:33',NULL),(68,12,3,'application/vnd.ms-excel.sheet.binary.macroen',NULL,NULL,'1985-11-30 01:02:31','2001-12-06 04:39:05'),(69,58,3,'image/ief',NULL,NULL,'1988-11-04 17:09:26',NULL),(70,100,1,'application/vnd.ms-htmlhelp',NULL,NULL,'2003-01-08 23:51:27','1987-01-30 15:39:15'),(71,92,2,'image/vnd.fastbidsheet',NULL,NULL,'1997-03-31 10:49:23','2017-04-08 10:50:18'),(72,34,2,'application/vnd.lotus-freelance',NULL,NULL,'2019-05-27 17:42:27',NULL),(73,32,1,'application/vnd.openxmlformats-officedocument',NULL,NULL,'2008-11-30 16:01:18','2019-09-01 13:44:19'),(74,45,3,'application/xv+xml',NULL,NULL,'2004-03-09 23:31:51',NULL),(75,6,2,'text/vnd.curl.scurl',NULL,NULL,'1973-02-01 03:55:50','1975-12-07 04:24:05'),(76,25,1,'application/xaml+xml',NULL,NULL,'2015-04-06 05:58:01',NULL),(77,4,3,'application/vnd.ms-officetheme',NULL,NULL,'1987-11-07 02:30:07',NULL),(78,85,2,'application/x-msbinder',NULL,NULL,'1971-12-07 00:41:46',NULL),(79,97,1,'application/vnd.tmobile-livetv',NULL,NULL,'1993-05-31 06:47:38',NULL),(80,42,3,'application/mods+xml',NULL,NULL,'1982-08-09 17:47:38',NULL),(81,45,1,'video/h264',NULL,NULL,'1987-10-13 11:34:11','1979-03-01 13:36:33'),(82,32,3,'application/vnd.kenameaapp',NULL,NULL,'1996-02-26 09:45:55','1975-07-17 00:41:38'),(83,17,2,'application/vnd.wap.wmlc',NULL,NULL,'1993-10-03 20:10:10','2007-01-26 19:05:20'),(84,69,3,'application/vnd.vcx',NULL,NULL,'1988-11-28 21:25:43',NULL),(85,38,3,'audio/mpeg',NULL,NULL,'1993-12-09 02:20:11','2010-03-29 20:41:42'),(86,99,1,'application/vnd.tcpdump.pcap',NULL,NULL,'1989-06-16 16:25:10','1997-06-30 05:13:58'),(87,9,1,'application/vnd.ms-cab-compressed',NULL,NULL,'1980-05-02 06:55:44',NULL),(88,82,2,'application/x-tcl',NULL,NULL,'2009-11-19 07:55:23',NULL),(89,56,1,'application/vnd.rim.cod',NULL,NULL,'2019-11-02 22:36:18',NULL),(90,29,2,'video/x-fli',NULL,NULL,'1973-03-03 15:11:24',NULL),(91,86,2,'application/msword',NULL,NULL,'1986-10-04 20:15:45','2002-09-19 15:22:55'),(92,69,3,'video/x-sgi-movie',NULL,NULL,'1991-07-28 10:57:33','2013-09-14 10:20:23'),(93,31,2,'text/n3',NULL,NULL,'1981-04-18 08:55:34','2009-02-03 19:39:39'),(94,24,1,'application/x-tcl',NULL,NULL,'1998-11-19 17:32:45',NULL),(95,67,2,'application/vnd.lotus-1-2-3',NULL,NULL,'1996-03-12 21:24:07',NULL),(96,24,1,'application/vnd.triscape.mxs',NULL,NULL,'1977-03-10 05:34:19','1989-06-09 02:47:00'),(97,70,2,'audio/x-flac',NULL,NULL,'2000-06-05 20:43:12','1975-05-04 19:54:30'),(98,82,3,'application/vnd.seemail',NULL,NULL,'1994-06-01 06:23:07','1972-08-04 03:19:06'),(99,98,2,'application/vnd.oasis.opendocument.image',NULL,NULL,'1985-08-08 20:12:56','1999-04-07 08:51:37'),(100,61,2,'application/xhtml+xml',NULL,NULL,'1997-02-19 14:01:25','2004-03-12 20:45:50');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 19:28:13
