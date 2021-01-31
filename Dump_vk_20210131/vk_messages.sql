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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from_users_id` int unsigned NOT NULL,
  `to_users_id` int unsigned NOT NULL,
  `media_id` int unsigned DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_messages_users1_idx` (`from_users_id`),
  KEY `fk_messages_users2_idx` (`to_users_id`),
  KEY `fk_messages_media1_idx` (`media_id`),
  CONSTRAINT `fk_messages_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_messages_users1` FOREIGN KEY (`from_users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_messages_users2` FOREIGN KEY (`to_users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,36,82,NULL,'Commodi ut sint id quibusdam itaque officia nihil aliquid.','2016-05-01 19:27:02','1970-09-15 12:21:37'),(2,82,27,NULL,'Quia sit amet quaerat corporis et ducimus aut.','2017-07-09 18:49:08',NULL),(3,33,76,56,'Autem ut iusto tempora repudiandae necessitatibus ratione quas.','2019-12-25 07:47:53',NULL),(4,2,75,NULL,'Est autem et repellat qui dolorem sed dolor.','1994-09-20 09:34:10',NULL),(5,100,77,NULL,'Consectetur aut enim et.','2000-04-09 04:42:37','1982-02-10 12:43:43'),(6,100,94,90,'Vel expedita enim facilis quia enim.','1992-04-04 07:19:59',NULL),(7,48,79,NULL,'Dignissimos qui tempora quidem quia sequi quas voluptatem.','1973-08-03 17:56:43',NULL),(8,34,78,NULL,'Deserunt aut et veritatis sunt.','2002-06-15 21:59:54','2020-10-26 22:35:48'),(9,8,42,59,'Autem sapiente in quia.','1991-04-21 20:43:57','1988-07-14 14:53:27'),(10,96,85,NULL,'Corrupti aspernatur ad dolorum voluptates.','2015-05-24 02:18:14',NULL),(11,14,20,NULL,'Voluptatem ut et illo quis.','1973-10-31 14:16:05','1997-09-27 14:52:59'),(12,29,1,62,'Reprehenderit ratione eum hic aperiam libero doloribus saepe aliquam.','1982-11-11 20:08:05','1983-04-13 10:08:25'),(13,60,34,NULL,'Quia quibusdam iste minus neque consequatur.','2003-05-04 13:15:53',NULL),(14,16,35,NULL,'Maiores dolorem vitae mollitia laboriosam aut optio molestiae eum.','1975-03-18 11:47:21',NULL),(15,85,34,89,'Vel id velit optio soluta non officiis qui.','1982-03-10 09:58:08',NULL),(16,59,34,NULL,'Sint sint dolorem iusto fugit.','1988-10-31 20:21:58',NULL),(17,48,81,NULL,'Blanditiis rem quibusdam nihil et nihil.','2011-09-25 15:32:16',NULL),(18,23,15,39,'Ut ratione possimus et nihil vel consequuntur vel.','1976-01-29 06:03:52','2020-12-01 05:51:22'),(19,35,22,NULL,'Tempore quae sit ut aut.','1975-10-04 19:31:02',NULL),(20,93,17,NULL,'Sit accusamus qui laborum vitae.','1977-06-04 00:18:15',NULL),(21,47,31,85,'Porro voluptatibus quo aperiam ea.','1973-11-18 09:39:21',NULL),(22,82,60,NULL,'Id quia dolorem non nulla delectus.','2020-07-30 06:09:44',NULL),(23,44,19,NULL,'Commodi unde saepe nobis.','2003-10-01 16:18:32','1994-03-28 11:58:36'),(24,81,35,54,'Nesciunt non optio labore ad.','2005-01-02 14:33:26','1984-02-25 09:22:58'),(25,92,19,NULL,'Architecto rerum et excepturi.','2009-01-26 05:49:42','2001-07-15 13:02:59'),(26,81,78,NULL,'Aliquid consequatur assumenda nisi omnis blanditiis.','1999-05-06 15:39:53','1972-07-29 18:54:37'),(27,63,25,2,'Quis delectus iure est ad quo qui.','1992-06-16 18:36:08','2016-03-08 06:47:27'),(28,24,48,NULL,'Aut provident eum vel.','2014-08-20 19:52:09','1971-03-11 11:24:53'),(29,63,83,NULL,'Aut molestias aliquid ut.','1975-09-07 08:29:18',NULL),(30,44,76,55,'Dolorum dolor id recusandae ut quo dolores ut rerum.','1990-09-03 14:38:11','2012-02-08 00:21:02'),(31,9,22,NULL,'Molestiae aliquam modi magni autem magnam ipsum ad magni.','1983-07-28 20:52:20',NULL),(32,93,4,NULL,'Non vel commodi dolor atque numquam ut optio et.','1977-07-21 08:17:52','1991-10-08 19:17:18'),(33,79,47,64,'At ut aut vel.','1971-08-05 13:47:31',NULL),(34,97,27,NULL,'Ut itaque modi aperiam distinctio aut.','1978-11-26 17:00:55','1985-03-17 14:05:24'),(35,50,19,NULL,'Eligendi quidem vel dolor nihil molestiae in.','1982-09-30 16:48:43','1978-04-23 19:46:50'),(36,38,100,94,'Vero rem illum voluptatum maxime earum provident.','1993-06-25 17:16:18',NULL),(37,59,63,NULL,'Quasi consequatur laudantium laborum nihil doloribus quae quae.','2020-10-19 02:38:50',NULL),(38,60,87,NULL,'Laborum non dolorum esse cum.','1991-11-04 01:55:20',NULL),(39,77,49,49,'Et vitae cum inventore cum deleniti voluptate iure.','2016-12-22 08:22:36','1979-11-23 13:56:28'),(40,14,93,NULL,'Deserunt quo aut dolores ut.','1988-11-01 22:39:53','2002-12-17 00:20:20'),(41,69,1,NULL,'Repudiandae qui quis nulla sit sit aut qui dolor.','2009-09-15 11:17:43',NULL),(42,54,94,49,'Et non vero iste ea.','2020-12-28 09:42:36','1974-05-17 03:50:48'),(43,99,72,NULL,'Velit est et hic sequi ut sed voluptatem eveniet.','1999-09-08 12:07:26',NULL),(44,62,69,NULL,'Ut laboriosam vel voluptatibus maiores hic qui.','2003-03-07 18:51:48',NULL),(45,59,19,42,'Et qui quaerat velit optio.','1973-03-05 17:00:06','1971-12-07 10:34:43'),(46,76,56,NULL,'Amet error necessitatibus voluptatem rerum unde quam voluptatem.','1991-04-01 20:46:07','2006-12-05 02:13:33'),(47,69,14,NULL,'Eaque quidem necessitatibus rerum nihil animi.','1988-11-27 03:01:39',NULL),(48,87,74,90,'Deserunt officia exercitationem sed sequi.','1971-07-07 20:32:15','2001-08-29 09:04:01'),(49,53,50,NULL,'Impedit quibusdam minus at facere soluta est quisquam.','2013-05-10 00:18:35',NULL),(50,1,64,NULL,'Cumque distinctio cumque officia accusantium est ab qui.','1992-04-09 12:08:55','1980-02-25 22:05:20'),(51,25,32,31,'Voluptas aperiam in et tenetur suscipit est.','1987-02-16 02:25:15',NULL),(52,70,86,NULL,'Cum corporis aut accusantium placeat.','1979-10-09 03:11:22','1991-10-17 06:41:14'),(53,18,84,NULL,'In in corporis dicta ratione.','1986-01-24 06:32:03','1984-04-24 21:49:38'),(54,14,46,64,'Vel deleniti explicabo et.','1984-07-30 18:39:44',NULL),(55,36,5,NULL,'Est quis omnis deserunt accusantium non aperiam et.','2000-06-11 16:53:18','1984-07-03 17:27:55'),(56,77,80,NULL,'Aut rerum numquam fuga molestiae occaecati et qui.','1995-08-27 09:06:34','2005-10-19 15:13:01'),(57,18,48,51,'Ut soluta quo voluptatibus minus voluptas.','1973-06-19 11:38:14','2008-11-06 00:40:23'),(58,21,35,NULL,'Ipsa temporibus commodi earum voluptas eaque aut.','2010-11-26 00:53:02',NULL),(59,10,87,NULL,'Dicta dolor odio dolorum placeat praesentium voluptatum provident.','2000-05-04 10:53:37','1975-10-21 19:40:49'),(60,48,87,37,'Error aperiam et soluta.','1981-11-30 07:19:13','1995-08-15 14:23:17'),(61,78,12,NULL,'Tempore voluptate tempore rerum dolorem aut laboriosam.','1999-06-08 14:35:05',NULL),(62,8,81,NULL,'Quidem aliquid distinctio ullam molestiae.','2004-07-09 13:45:13','2019-02-17 13:37:56'),(63,32,99,39,'Sed sint ut est eum quia a nostrum.','1987-05-08 09:58:32','1986-01-11 17:49:06'),(64,28,12,NULL,'Reiciendis quam sed ex voluptate voluptas et.','2016-10-25 18:33:29','1974-01-16 03:14:53'),(65,91,48,NULL,'Beatae ipsum dicta tempora doloremque nostrum consequatur beatae.','1983-08-14 20:17:35','1973-12-26 09:25:27'),(66,73,24,67,'Est fugit qui est atque.','2019-11-28 18:29:40',NULL),(67,11,42,NULL,'Unde delectus numquam in est.','1982-08-19 23:57:41','2007-01-20 23:35:07'),(68,61,62,NULL,'Autem enim minus ut quo ut odio.','1993-07-27 13:21:53','1996-06-07 02:59:22'),(69,85,71,35,'Nihil saepe voluptate magnam similique dolorem eveniet ad.','1984-01-07 17:20:26',NULL),(70,59,18,NULL,'Et dolore rerum ducimus et nostrum ullam quos.','2008-04-25 07:11:15',NULL),(71,96,95,NULL,'Rem cupiditate expedita nemo voluptatibus est molestiae aliquid.','2020-08-16 09:20:39',NULL),(72,65,3,14,'Unde autem quos explicabo tenetur in consequatur.','2004-05-14 23:59:38',NULL),(73,19,35,NULL,'Sunt accusantium incidunt autem laudantium natus libero nihil.','1993-03-30 04:53:07',NULL),(74,57,62,NULL,'Quod et unde quis quos blanditiis earum.','1992-02-29 15:52:40',NULL),(75,41,53,72,'Occaecati quia sit numquam natus et ratione.','1980-04-06 02:09:11','1994-02-20 05:51:21'),(76,28,26,NULL,'Nihil animi assumenda ea.','1998-10-22 17:17:29','1988-10-12 10:49:34'),(77,95,36,NULL,'Quam dolores sint et voluptates.','1975-12-25 04:07:19','1986-04-16 10:21:29'),(78,10,96,98,'Dolorem non nihil numquam error libero.','1997-04-04 14:19:54','1985-05-02 15:10:30'),(79,58,81,NULL,'Omnis et corporis et dolore occaecati qui.','1992-03-13 16:47:01',NULL),(80,93,40,NULL,'Ab sunt rerum neque et aut fugiat beatae.','2000-12-19 18:22:52','1985-05-04 19:21:11'),(81,15,36,81,'Dolorem et nihil sed nemo ea iure consequatur nihil.','1994-02-23 01:39:30','1995-06-22 17:37:32'),(82,48,100,NULL,'Aspernatur quis eligendi in modi.','1995-11-17 01:03:19',NULL),(83,62,19,NULL,'Iure quod fugiat rerum quo.','1999-05-23 08:00:44',NULL),(84,74,76,79,'Molestiae distinctio autem non labore quae.','1991-11-27 03:31:31',NULL),(85,98,16,NULL,'Voluptas magni molestiae quasi accusamus quisquam corporis reiciendis.','2013-07-20 16:50:03','1975-07-08 11:14:31'),(86,69,44,NULL,'Maxime dolorem similique consequuntur.','2016-10-20 12:38:39',NULL),(87,64,38,92,'Aut quia molestias enim dolorem suscipit sit.','2009-04-02 07:45:22','1990-09-29 20:58:37'),(88,1,47,NULL,'Ut consectetur reprehenderit dicta voluptatem neque quam exercitationem.','1973-06-13 14:33:44','2011-12-11 21:24:49'),(89,98,5,NULL,'Voluptas quis soluta quisquam tempore.','1982-01-17 13:39:25','2016-10-28 22:05:41'),(90,66,98,8,'Molestiae reprehenderit vitae laborum hic ab.','1993-08-09 22:47:11','1975-05-09 12:13:06'),(91,51,12,NULL,'Accusantium esse reiciendis quo omnis quidem et.','2001-09-24 07:58:12',NULL),(92,31,60,NULL,'Vero alias voluptatum molestiae fugit voluptas ut aliquid.','1976-04-05 20:12:36','1992-03-04 22:13:56'),(93,14,21,61,'Quaerat quia quidem voluptate dolorum id autem.','1979-12-03 21:51:07',NULL),(94,31,94,NULL,'Vitae iste reprehenderit culpa dolorem natus consequuntur qui aspernatur.','1999-03-07 18:43:31','2002-10-23 13:42:40'),(95,10,92,NULL,'Earum qui dolores incidunt aut.','2000-11-04 13:38:57',NULL),(96,41,60,95,'Deleniti sunt voluptas sint cum vitae id expedita.','1984-01-07 20:38:26','1987-10-23 18:45:56'),(97,97,24,NULL,'Error voluptatibus temporibus enim doloribus.','1984-11-14 03:31:23',NULL),(98,88,24,NULL,'Delectus deleniti illo quasi ut quo.','1972-11-28 05:10:54',NULL),(99,75,22,84,'Porro iste sed atque non.','2007-02-05 04:24:42',NULL),(100,43,87,NULL,'Ad laborum illo ut provident id nobis totam.','2013-08-04 23:02:59',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
