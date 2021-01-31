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
-- Table structure for table `likes_posts`
--

DROP TABLE IF EXISTS `likes_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_posts` (
  `users_id` int unsigned NOT NULL,
  `posts_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '-1 - dislike (if needed)\n0 - no one\n1 - like\n2 - repost',
  PRIMARY KEY (`users_id`,`posts_id`),
  KEY `fk_likes_posts_users1_idx` (`users_id`),
  KEY `fk_likes_posts_posts1_idx` (`posts_id`),
  CONSTRAINT `fk_likes_posts_posts1` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `fk_likes_posts_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_posts`
--

LOCK TABLES `likes_posts` WRITE;
/*!40000 ALTER TABLE `likes_posts` DISABLE KEYS */;
INSERT INTO `likes_posts` VALUES (1,68,-1),(2,48,2),(3,62,2),(5,35,-1),(5,69,0),(6,17,2),(7,37,-1),(7,82,1),(8,47,1),(8,57,0),(8,83,2),(9,81,2),(9,90,-1),(11,27,0),(14,28,-1),(14,52,2),(15,100,0),(16,12,1),(16,83,1),(18,32,2),(18,37,0),(19,49,1),(21,6,-1),(22,81,1),(24,51,1),(24,78,-1),(24,84,0),(25,13,-1),(25,29,-1),(25,92,1),(26,38,0),(26,57,-1),(29,90,-1),(32,36,0),(32,44,-1),(32,54,-1),(33,42,0),(33,51,-1),(34,27,0),(34,54,2),(34,86,-1),(36,62,2),(37,90,0),(38,21,2),(38,65,-1),(39,29,2),(40,38,1),(42,11,-1),(45,14,2),(46,37,1),(46,86,-1),(49,54,-1),(50,13,1),(50,14,2),(50,70,1),(51,38,0),(51,69,2),(51,99,2),(52,14,0),(54,84,0),(54,96,1),(56,60,-1),(56,85,1),(57,40,0),(57,86,-1),(63,16,1),(63,73,1),(65,40,1),(66,26,0),(68,32,2),(68,51,0),(68,57,0),(69,54,1),(69,59,0),(70,69,-1),(71,17,0),(71,96,-1),(72,64,2),(74,18,-1),(76,7,2),(77,4,-1),(77,32,-1),(77,77,2),(78,28,1),(81,21,0),(82,57,0),(86,13,0),(87,61,0),(88,10,0),(89,72,1),(91,19,-1),(94,4,2),(94,80,1),(96,88,2),(97,46,1),(97,54,2),(97,72,2),(98,73,1),(100,13,2),(100,55,2);
/*!40000 ALTER TABLE `likes_posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 19:28:14
