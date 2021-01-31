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
-- Table structure for table `likes_media`
--

DROP TABLE IF EXISTS `likes_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_media` (
  `media_id` int unsigned NOT NULL,
  `users_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '-1 - dislike (if needed)\n0 - no one\n1 - like\n2 - repost\n',
  PRIMARY KEY (`media_id`,`users_id`),
  KEY `fk_likes_media_media1_idx` (`media_id`),
  KEY `fk_likes_media_users1_idx` (`users_id`),
  CONSTRAINT `fk_likes_media_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_likes_media_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_media`
--

LOCK TABLES `likes_media` WRITE;
/*!40000 ALTER TABLE `likes_media` DISABLE KEYS */;
INSERT INTO `likes_media` VALUES (1,14,-1),(2,30,-1),(2,60,0),(3,34,0),(3,43,1),(4,41,-1),(4,57,1),(5,19,0),(5,52,1),(6,3,0),(7,16,2),(8,1,1),(9,45,2),(9,57,-1),(13,24,1),(15,98,2),(16,48,2),(17,35,0),(17,70,-1),(17,81,-1),(17,82,1),(18,36,2),(19,74,2),(20,77,1),(21,30,1),(23,38,2),(24,69,2),(25,4,0),(25,16,-1),(25,90,0),(26,43,2),(26,78,-1),(32,94,2),(33,52,1),(34,21,2),(35,89,-1),(36,41,1),(36,50,2),(39,10,-1),(40,39,-1),(40,68,2),(42,66,-1),(43,3,-1),(45,65,0),(48,53,2),(48,69,-1),(50,88,1),(50,96,-1),(51,53,1),(51,59,1),(54,24,2),(54,81,-1),(54,88,1),(55,59,1),(56,47,2),(56,63,1),(56,88,-1),(57,39,-1),(61,70,0),(62,16,0),(63,4,0),(63,71,-1),(64,63,-1),(65,30,2),(65,55,2),(66,4,-1),(66,89,-1),(67,5,-1),(73,28,1),(73,59,-1),(73,90,2),(73,96,2),(74,1,2),(75,4,1),(75,48,-1),(79,61,2),(79,100,0),(80,45,-1),(80,75,0),(81,53,-1),(84,21,2),(84,52,2),(84,55,-1),(85,9,-1),(85,52,-1),(89,62,1),(89,77,1),(90,32,0),(90,39,2),(91,26,2),(91,64,0),(91,67,-1),(92,28,-1),(93,45,0),(93,100,-1),(94,36,1),(95,88,-1),(96,89,1),(97,21,1),(100,77,0);
/*!40000 ALTER TABLE `likes_media` ENABLE KEYS */;
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
