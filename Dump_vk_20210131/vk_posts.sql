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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `posts_id` int unsigned DEFAULT NULL,
  `users_id` int unsigned NOT NULL,
  `communities_id` int unsigned DEFAULT NULL,
  `posts_type_id` int unsigned NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_posts_users1_idx` (`users_id`),
  KEY `fk_posts_communities1_idx` (`communities_id`),
  KEY `fk_posts_media1_idx` (`media_id`),
  KEY `fk_posts_posts1_idx` (`posts_id`),
  KEY `fk_posts_posts_type1_idx` (`posts_type_id`),
  CONSTRAINT `fk_posts_communities1` FOREIGN KEY (`communities_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `fk_posts_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_posts_posts1` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `fk_posts_posts_type1` FOREIGN KEY (`posts_type_id`) REFERENCES `posts_type` (`id`),
  CONSTRAINT `fk_posts_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,NULL,25,8,2,'Aperiam consequatur neque expedita atque molestiae consequatur voluptates.',15,'1997-08-31 03:34:38',NULL),(2,NULL,73,10,3,'Praesentium ipsa eos quidem deserunt.',64,'1993-04-13 03:06:23',NULL),(3,NULL,83,10,3,'Molestiae aspernatur ex optio nostrum dolorum ea blanditiis soluta.',81,'1996-02-04 23:41:33',NULL),(4,NULL,97,3,1,'Vel quis debitis asperiores quia aut in.',4,'1978-06-12 21:02:18','2011-05-08 18:46:25'),(5,NULL,29,6,3,'Voluptatem autem rerum et dolores aperiam.',31,'1976-03-02 00:30:37','2011-04-23 06:47:00'),(6,NULL,48,10,1,'Veniam et quia consequatur assumenda est.',39,'1975-05-19 16:04:08','2000-06-17 03:55:46'),(7,NULL,19,7,2,'Quia autem sapiente dolorem odio consequuntur et necessitatibus.',4,'1996-07-02 15:10:03',NULL),(8,NULL,19,9,1,'Quas quia aut assumenda consectetur.',44,'2014-10-15 02:51:44',NULL),(9,NULL,60,6,2,'Nihil et quos excepturi quidem quas doloribus.',33,'1972-09-27 20:55:39',NULL),(10,NULL,55,4,3,'Eveniet eos enim ut hic.',38,'1995-09-04 00:39:37',NULL),(11,NULL,36,7,1,'Praesentium quia quo autem et.',33,'2011-12-26 04:14:37','2000-07-01 01:01:55'),(12,NULL,90,3,2,'At rerum quia quia.',19,'2006-09-18 07:36:04',NULL),(13,NULL,79,2,2,'Qui cupiditate consequatur quidem.',26,'1996-05-23 12:22:31',NULL),(14,NULL,12,7,2,'Et expedita nihil enim consequuntur qui quaerat dolores.',30,'2013-04-26 05:25:15',NULL),(15,NULL,28,3,1,'Dicta cum nemo dolores quo perferendis omnis.',47,'1980-03-19 21:55:58',NULL),(16,NULL,8,5,3,'Illum voluptas recusandae voluptatem eos.',68,'1976-10-13 07:55:32',NULL),(17,NULL,9,5,1,'Sapiente odio quis esse enim.',64,'1984-02-13 00:18:43',NULL),(18,NULL,88,10,1,'Omnis placeat sequi consequatur aliquid.',24,'1990-12-06 05:54:35','1974-02-21 21:06:51'),(19,NULL,64,2,2,'Deleniti consequatur vel consequatur.',54,'2020-10-02 06:12:01',NULL),(20,NULL,46,10,3,'Culpa et omnis in praesentium.',25,'1989-05-15 10:31:28','2007-03-01 03:59:12'),(21,NULL,7,3,2,'Vero voluptas libero est illo consectetur aspernatur consequuntur.',18,'2004-11-24 16:49:23','1972-05-08 20:36:35'),(22,NULL,85,2,2,'Repellat sit voluptatum dicta quam laboriosam iste doloremque.',13,'2003-03-27 06:17:21',NULL),(23,NULL,36,9,2,'Deserunt aut rerum odit sint sit culpa.',44,'1976-07-11 21:42:45','1982-02-20 08:42:44'),(24,NULL,30,5,1,'Hic iste voluptatem sed voluptatem quas.',39,'1999-12-25 06:31:01','1997-08-03 01:53:01'),(25,NULL,99,2,1,'Porro esse et totam.',86,'2019-02-06 08:50:14','2012-12-11 08:23:12'),(26,NULL,7,1,1,'Esse inventore qui sit nihil iure quo sint.',71,'1982-02-21 20:39:22',NULL),(27,NULL,21,7,1,'Illum veniam aut quam voluptates tempore est.',67,'1984-10-25 02:32:25','2011-03-09 04:09:50'),(28,NULL,56,10,3,'Provident ut accusamus architecto et totam rerum fugit.',63,'1995-04-29 06:09:27',NULL),(29,NULL,16,5,3,'Quis nesciunt illum reiciendis autem asperiores.',1,'1985-03-10 04:37:45','2012-02-16 04:01:55'),(30,NULL,55,3,1,'Et porro quas distinctio fugit consequuntur suscipit nihil.',91,'1986-01-07 03:17:47',NULL),(31,NULL,9,8,1,'Ut et exercitationem eum itaque tenetur laudantium impedit rem.',38,'1979-01-03 08:26:34',NULL),(32,NULL,21,5,3,'Sunt id vel eos sequi in eum in.',20,'1982-10-07 04:31:48','2015-02-19 05:10:21'),(33,NULL,55,8,1,'Ut aut ea et velit eos optio alias accusantium.',61,'1976-07-30 17:23:13',NULL),(34,NULL,80,2,1,'Culpa et quis error possimus corrupti laudantium reiciendis.',100,'1979-03-05 09:58:54','2001-08-30 22:19:51'),(35,NULL,78,6,2,'Perferendis facilis officiis laudantium ad saepe at.',34,'1988-04-30 08:24:21','2015-01-01 07:23:48'),(36,NULL,50,6,3,'Minus quidem delectus dolorem nesciunt mollitia iste.',65,'1978-06-04 09:33:28',NULL),(37,NULL,97,8,2,'Amet consequatur ut laboriosam nesciunt.',52,'1976-08-22 00:24:54',NULL),(38,NULL,3,8,2,'Omnis sit et nostrum ducimus.',12,'2002-11-16 18:46:58','2007-11-01 01:03:28'),(39,NULL,51,8,2,'Enim maiores labore eveniet id rerum amet.',72,'1971-01-17 13:13:32',NULL),(40,NULL,18,3,3,'Saepe veniam quaerat explicabo iste facere quam voluptatem.',73,'1979-01-09 20:51:06',NULL),(41,NULL,3,10,1,'Impedit quos voluptate nisi veritatis eligendi vero nihil.',82,'1987-09-25 15:46:33','2018-07-12 14:11:01'),(42,NULL,10,7,3,'Aperiam nostrum et eius rerum a.',88,'1992-04-16 00:30:47',NULL),(43,NULL,17,5,1,'Illo est ea nam.',66,'1981-01-30 05:47:55',NULL),(44,NULL,3,2,1,'Amet necessitatibus aut impedit qui.',99,'2011-05-18 18:50:42',NULL),(45,NULL,91,10,2,'Sunt beatae omnis ducimus optio harum sequi quis.',94,'1994-10-26 03:59:55',NULL),(46,NULL,75,10,1,'Voluptatem officiis et facere illum et nobis quaerat.',25,'1973-12-10 07:24:04','2010-05-06 08:55:14'),(47,NULL,66,6,3,'Et est velit eligendi est deleniti quis.',84,'2016-12-11 13:10:08',NULL),(48,NULL,79,9,2,'Enim maxime et veniam.',82,'1986-05-23 20:35:13',NULL),(49,NULL,82,9,2,'Ab adipisci sit libero.',91,'1985-12-11 03:15:39',NULL),(50,NULL,52,5,3,'Blanditiis sunt voluptatibus dolore deserunt natus.',68,'1996-03-26 19:28:32','1983-03-09 12:02:02'),(51,NULL,91,10,2,'Est alias doloremque velit necessitatibus modi necessitatibus.',94,'1984-11-14 13:10:43',NULL),(52,NULL,13,7,3,'Ut repellendus in molestias in est repellat tempore exercitationem.',4,'2005-04-30 12:17:05',NULL),(53,NULL,61,5,3,'Nobis quam id quidem.',36,'1971-11-29 20:21:10','2019-11-27 10:47:50'),(54,NULL,34,1,2,'Tempora et voluptatem dolor ad.',100,'2017-06-07 10:28:30','2000-11-01 16:49:18'),(55,NULL,55,6,3,'Assumenda architecto praesentium sit molestiae quis et natus.',34,'1978-09-17 11:14:43','1985-12-24 03:17:32'),(56,NULL,43,4,1,'Laudantium est omnis eum aspernatur a sint.',25,'1981-06-22 08:31:12',NULL),(57,NULL,28,8,1,'Et eos labore qui.',79,'2020-01-16 14:07:36','2004-12-03 19:54:04'),(58,NULL,22,10,2,'Fugit quo est nihil est.',13,'2008-10-22 01:36:56','1994-05-14 08:13:00'),(59,NULL,91,8,1,'Blanditiis qui quae totam voluptatum.',4,'1974-10-23 02:47:49','1974-03-11 08:07:43'),(60,NULL,45,10,1,'Totam consequuntur rerum aliquam hic voluptatem.',6,'1978-02-04 06:57:12',NULL),(61,NULL,40,1,2,'Odio facilis praesentium consequatur.',74,'2017-01-21 11:22:14',NULL),(62,NULL,4,1,3,'Voluptate laboriosam illum quibusdam sit officiis.',59,'1976-12-16 17:31:05','1972-06-13 05:16:55'),(63,NULL,58,6,3,'Sunt sed aliquid iure.',1,'1970-02-01 11:04:21','2009-12-29 12:31:20'),(64,NULL,96,1,1,'Itaque accusantium debitis tempora maiores id omnis omnis.',23,'1974-07-13 09:23:57','2008-07-16 01:41:17'),(65,NULL,84,4,1,'Voluptas molestias adipisci officiis.',6,'1999-10-06 07:11:28','2005-11-18 08:12:45'),(66,NULL,33,5,1,'Molestias quia tempore reprehenderit id eveniet.',23,'1999-03-05 02:27:53','1977-03-04 18:16:36'),(67,NULL,28,3,1,'Laudantium dignissimos enim est expedita veniam porro.',73,'2018-07-26 12:06:52',NULL),(68,NULL,21,4,3,'Non aut accusantium reiciendis velit repellat modi eum.',61,'1974-10-15 16:58:28','1997-01-24 20:28:03'),(69,NULL,36,2,2,'Ullam itaque pariatur beatae reprehenderit aut.',40,'2016-12-19 03:42:08','2000-02-06 18:26:51'),(70,NULL,20,1,3,'Repellat rerum vitae vel minus tenetur ipsam illum distinctio.',78,'2015-08-21 16:48:48','1983-06-08 05:38:12'),(71,NULL,64,9,3,'Earum cumque suscipit laborum sed suscipit iure ex.',59,'1994-10-09 08:48:55',NULL),(72,NULL,96,1,3,'Adipisci quidem dignissimos qui non consequatur.',79,'2008-07-19 23:15:18','1970-06-16 00:51:44'),(73,NULL,42,9,3,'In qui iste totam enim.',74,'1996-03-23 23:49:00','1986-03-19 08:46:44'),(74,NULL,31,1,3,'Et omnis excepturi doloribus.',59,'1981-06-18 14:01:16',NULL),(75,NULL,25,3,1,'Laboriosam facere tempora aliquam recusandae.',45,'2007-01-26 02:11:16','1995-02-14 21:16:36'),(76,NULL,56,1,1,'Officiis delectus qui temporibus maxime nostrum.',92,'2015-12-14 01:10:21','2016-04-15 08:41:34'),(77,NULL,27,4,1,'Iusto quia commodi iure et ut impedit veritatis.',47,'1988-12-05 03:35:12','1986-03-31 13:48:55'),(78,NULL,47,3,1,'Provident sit et sed nobis ut voluptatem.',10,'2004-12-23 22:48:08',NULL),(79,NULL,18,1,3,'Atque ratione quaerat at voluptates quidem perspiciatis.',13,'1986-04-29 16:00:01','1977-07-10 21:12:22'),(80,NULL,5,5,3,'Voluptas magni quo hic voluptatibus.',47,'1979-10-07 18:47:43',NULL),(81,NULL,33,8,1,'Rerum non fuga in eveniet similique vel suscipit doloribus.',64,'1973-01-19 23:42:50','1990-01-12 08:31:32'),(82,NULL,78,2,1,'Officiis qui quasi quo non.',2,'1979-12-21 01:29:19',NULL),(83,NULL,40,6,2,'Qui fugit autem dolor.',95,'1972-09-24 09:49:30',NULL),(84,NULL,62,6,3,'Voluptates quo dolorum quia.',89,'2002-09-08 23:00:28','1984-04-22 21:58:10'),(85,NULL,92,2,2,'Nostrum similique dolore dolorem magni nesciunt ab commodi impedit.',38,'1978-11-02 15:35:33',NULL),(86,NULL,45,6,2,'Velit minus earum error reprehenderit sint.',63,'1971-01-11 01:26:16','2019-11-11 11:36:16'),(87,NULL,62,2,3,'Magnam voluptate aperiam aspernatur necessitatibus quidem corporis.',66,'2000-08-03 23:42:02','1970-09-23 09:51:28'),(88,NULL,65,7,1,'Recusandae velit dolor qui reprehenderit reprehenderit laudantium dolorem.',98,'1995-08-31 00:07:55',NULL),(89,NULL,43,4,2,'Vitae ipsam ut nisi porro saepe.',20,'1980-07-07 05:05:48','2013-10-19 18:50:21'),(90,NULL,50,9,1,'Et qui laboriosam dolor voluptas ut facilis omnis.',89,'2000-07-18 06:38:49','1996-08-25 13:15:55'),(91,NULL,37,7,3,'Dolore error eos iusto iste alias.',99,'1977-02-07 01:06:58',NULL),(92,NULL,21,7,3,'Aliquid aut quibusdam aut voluptatem eos et dolorem.',13,'1978-03-03 03:02:54',NULL),(93,NULL,86,3,2,'Reprehenderit eligendi officia eos dolorem consequatur at.',30,'1980-05-04 02:55:16',NULL),(94,NULL,83,10,3,'Assumenda qui odit perferendis at sint eos.',44,'1987-01-27 13:48:47','1971-06-07 19:19:45'),(95,NULL,12,7,1,'Ad molestiae magni dolores vitae aut consectetur.',76,'2005-07-29 20:27:26',NULL),(96,NULL,33,3,3,'Aliquam aut accusantium vel hic ea.',76,'1984-02-19 05:36:08',NULL),(97,NULL,55,4,3,'In quod animi fugit voluptatum expedita voluptates.',5,'2009-12-11 09:22:42','2012-09-25 00:00:15'),(98,NULL,18,2,3,'Error et aut modi illo est inventore sit.',55,'1975-06-23 12:10:04',NULL),(99,NULL,86,8,2,'Ut adipisci qui repellendus.',7,'2016-01-08 06:49:18','1970-08-01 17:06:57'),(100,NULL,46,5,1,'Iure molestiae itaque veritatis velit.',31,'1996-04-24 09:31:44','1975-06-10 12:56:05');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
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
