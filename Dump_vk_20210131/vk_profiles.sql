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
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `users_id` int unsigned NOT NULL,
  `firstname` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('m','f','x') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photo_id` int unsigned DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1' COMMENT '1 - active\n-1 - deleted',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`users_id`),
  KEY `fk_profiles_users_idx` (`users_id`),
  KEY `fk_profiles_media1_idx` (`photo_id`),
  CONSTRAINT `fk_profiles_media1` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_profiles_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Claudie','Steuber','f','2013-09-08','44121 Howe Forest\nEast Jeffereyfort, MA 13320','2004-10-31 03:17:22',46,1,'2005-10-31 03:17:22'),(2,'Brendan','Heller','f','2018-03-28','2655 Beahan Turnpike Apt. 896\nNorth Daija, NC 00419-0417','1988-07-15 10:57:23',48,1,'1989-07-15 10:57:23'),(3,'Evert','Osinski','x','1983-02-16','958 Gerda Oval Suite 806\nLake Pearl, MO 46589','1990-02-17 00:46:29',85,1,'1991-02-17 00:46:29'),(4,'Hilton','Beier','m','1970-08-21','387 Neoma Bridge Suite 152\nPort Alberto, OH 11502-2230','1989-07-23 00:02:22',41,1,'1990-07-23 00:02:22'),(5,'Heidi','Krajcik','m','1983-02-17','837 Buckridge Knoll Suite 546\nLake Jerrod, MA 26560','1999-06-19 21:50:00',85,1,'2000-06-19 21:50:00'),(6,'Charlie','Hyatt','f','2003-05-02','38404 Jakubowski Springs Apt. 823\nPort Stephanyberg, TX 20993-5615','1989-11-16 14:21:45',58,0,'1990-11-16 14:21:45'),(7,'Rebecca','Schaden','m','1996-05-18','4418 Karianne Dam\nEast Elmira, WV 01803','2010-07-19 19:21:52',75,0,'2011-07-19 19:21:52'),(8,'Carlo','Hermann','x','2003-11-29','73367 Pfannerstill Lake Suite 776\nCarolyneview, NV 71332','2014-04-18 04:44:51',87,1,'2015-04-18 04:44:51'),(9,'Greg','Erdman','m','1992-05-16','1189 Aubree Pine Suite 991\nClayland, MN 39246-0601','2004-11-02 18:27:20',42,1,'2005-11-02 18:27:20'),(10,'Emery','Brakus','m','1998-10-15','38625 Adams Manors\nNew Rosalyn, MD 90968','2011-07-03 13:40:31',25,0,'2012-07-03 13:40:31'),(11,'Uriel','Larson','m','1983-10-12','64734 Ziemann Alley Suite 739\nEverettchester, NY 96768-4366','1978-05-23 07:07:21',49,1,'1979-05-23 07:07:21'),(12,'Vivienne','Skiles','m','2005-01-30','31504 Kuhic Route Suite 469\nNew Deloresside, TX 33082','1990-09-28 09:36:26',32,0,'1991-09-28 09:36:26'),(13,'Bryana','Morissette','m','2018-08-06','099 Tillman Hills Suite 247\nMaximusborough, WV 61837','1986-12-21 07:58:48',61,1,'1987-12-21 07:58:48'),(14,'Thad','Goodwin','f','2007-07-12','3936 Stark Track\nMyrtismouth, MD 56770-4479','1981-05-17 19:37:39',36,1,'1982-05-17 19:37:39'),(15,'Josiah','Farrell','m','1988-07-03','6986 Nienow Underpass\nNadiaview, TX 89537-3798','1984-10-13 11:26:43',58,0,'1985-10-13 11:26:43'),(16,'Etha','Rohan','f','1996-11-01','62861 Mertz Stravenue Apt. 009\nKellyview, NC 05500-8712','1992-10-31 11:49:13',99,1,'1993-10-31 11:49:13'),(17,'Tre','Moore','m','1990-12-19','9966 Waelchi Unions Apt. 685\nKilbackmouth, MD 70441-3001','1991-05-27 00:43:29',97,1,'1992-05-27 00:43:29'),(18,'Jaiden','Mayert','f','1971-04-03','27101 Carroll Village Suite 248\nMurphyhaven, LA 31823-8116','2002-07-08 16:57:53',49,0,'2003-07-08 16:57:53'),(19,'Esmeralda','Lesch','x','2004-11-22','6207 Morissette Curve\nSwaniawskifort, WI 61889-0787','1985-10-28 00:00:32',66,1,'1986-10-28 00:00:32'),(20,'Jess','Wintheiser','f','1982-09-06','43408 Hagenes Circles\nAldaborough, MO 01430','2016-11-05 10:04:50',91,1,'2017-11-05 10:04:50'),(21,'Emmanuel','Koepp','x','2008-02-01','28406 Mohr Heights\nEast Ozella, GA 64329-4942','1975-04-26 19:58:13',35,1,'1976-04-26 19:58:13'),(22,'Molly','O\'Connell','m','1987-11-14','63494 Larkin Mountains Suite 061\nNew Earnest, CO 36859-9050','2005-12-09 21:05:44',68,0,'2006-12-09 21:05:44'),(23,'Lia','Gutkowski','m','2006-08-29','653 Ladarius Plaza\nLake Janieland, VA 85699','1989-05-08 21:06:21',45,0,'1990-05-08 21:06:21'),(24,'Gabriella','Kertzmann','f','1995-01-02','110 Schmitt Underpass\nGarnetland, ID 41672-6776','1990-02-13 01:58:27',76,1,'1991-02-13 01:58:27'),(25,'Arjun','Carroll','m','2016-08-20','1501 Weissnat Mews\nRaquelbury, WI 33775-8793','1982-09-12 05:16:56',32,1,'1983-09-12 05:16:56'),(26,'Britney','Steuber','m','2006-08-10','0712 Lind Club\nAdellville, KS 39764','1987-04-10 16:00:56',15,1,'1988-04-10 16:00:56'),(27,'Federico','Little','x','2019-03-17','000 Runolfsdottir Causeway Suite 306\nChamplinside, NH 91022','2000-03-09 04:28:37',29,0,'2001-03-09 04:28:37'),(28,'Gladyce','Bartell','f','1996-02-10','452 Orn Circle\nPort Katlyn, TX 56511-5077','1973-12-06 07:08:49',94,1,'1974-12-06 07:08:49'),(29,'Deanna','Rogahn','m','1991-05-31','6577 Lockman Union\nZackeryberg, NV 84980-3726','2017-01-11 13:05:56',65,1,'2018-01-11 13:05:56'),(30,'Mallie','Miller','m','1984-10-23','1722 Marina Inlet Suite 841\nWest Erica, MI 77414','1975-05-27 14:16:17',96,1,'1976-05-27 14:16:17'),(31,'Tia','Roob','m','1995-04-17','2434 Kiley Crest Apt. 995\nLake Paulaland, TN 03359','2010-06-30 05:09:11',74,0,'2011-06-30 05:09:11'),(32,'Kaleigh','O\'Kon','f','2004-12-04','343 Hane Court\nNorth Victorland, MA 21551','1990-06-01 13:49:45',10,0,'1991-06-01 13:49:45'),(33,'Dane','Mante','f','2005-04-06','192 Morissette Meadows Suite 810\nNew Jewelmouth, MT 31014-8021','1994-06-05 08:24:32',43,1,'1995-06-05 08:24:32'),(34,'Fiona','Ullrich','m','2016-08-21','8797 Sauer Underpass\nPort Troychester, OK 29060-6649','1993-11-20 17:03:11',59,0,'1994-11-20 17:03:11'),(35,'Jody','Mitchell','m','1980-05-26','337 Calista Shoal Apt. 150\nAlekview, WV 63799-1548','1986-12-20 02:00:52',51,0,'1987-12-20 02:00:52'),(36,'Soledad','Bahringer','m','1974-07-27','37609 Howell Ports Suite 501\nSouth Ariland, RI 65279','1972-10-11 23:02:24',28,1,'1973-10-11 23:02:24'),(37,'Jo','O\'Kon','m','1994-02-25','34651 Georgiana Harbor\nGleichnerland, VA 96018','1977-10-07 16:04:29',16,1,'1978-10-07 16:04:29'),(38,'Phyllis','Nitzsche','x','1975-11-12','5835 Greenholt Circles Suite 510\nFrederiqueville, MD 18448-5377','2007-10-25 16:53:35',25,0,'2008-10-25 16:53:35'),(39,'Walter','Wiegand','m','1996-07-18','75026 Hills Port\nPort Sonya, IL 68644','2004-07-23 13:12:25',14,0,'2005-07-23 13:12:25'),(40,'Herta','Abbott','f','1986-01-15','91335 Nicolas Radial Suite 927\nDoloresland, GA 43357','1996-07-23 12:53:03',58,1,'1997-07-23 12:53:03'),(41,'Vivienne','Beer','m','2015-08-23','681 Myrtice Extensions Suite 299\nOberbrunnerton, LA 99164','2006-11-17 04:43:09',49,0,'2007-11-17 04:43:09'),(42,'Vicky','Klocko','x','2016-12-16','34892 Gusikowski Fort\nBrakusfort, TN 86541','2012-02-17 07:49:51',62,1,'2013-02-17 07:49:51'),(43,'Ofelia','Ziemann','f','1990-05-12','75201 Destin Divide\nWest Amie, ID 74179-9556','2001-02-03 22:26:45',89,1,'2002-02-03 22:26:45'),(44,'Kaela','Russel','m','2017-12-04','322 Cristina Trail\nEast Oceane, WY 30720','2004-02-29 17:26:06',10,1,'2005-02-28 17:26:06'),(45,'Sterling','Green','x','2020-04-24','315 Herminio Locks Suite 648\nKelsistad, WY 53173','2013-01-30 08:39:44',98,1,'2014-01-30 08:39:44'),(46,'Roman','Batz','x','2019-08-10','3988 Daugherty Mountains Suite 204\nWest Sylvia, AZ 42515-1527','2016-12-27 11:17:06',47,1,'2017-12-27 11:17:06'),(47,'Abigale','Hilll','f','1976-03-26','843 Treutel Divide\nSouth Kirstin, ND 92029','2002-09-25 13:27:17',8,1,'2003-09-25 13:27:17'),(48,'Scot','Christiansen','f','2016-12-23','5728 Ellis Walk\nEast Ryder, NJ 80136-8807','1982-10-17 12:41:43',95,0,'1983-10-17 12:41:43'),(49,'Jimmie','Block','x','2013-05-04','534 Hilma Knoll\nBrandynberg, NM 13539-7658','2008-05-23 23:30:15',96,1,'2009-05-23 23:30:15'),(50,'May','Kovacek','m','1994-01-20','2241 Layne Club\nWindlermouth, CT 89866-6461','2016-05-01 19:04:20',74,0,'2017-05-01 19:04:20'),(51,'Jovan','Fadel','x','1977-08-06','0062 Selina Crossroad\nNorth Greysonton, NV 36621','2011-11-08 08:22:37',85,0,'2012-11-08 08:22:37'),(52,'Ayana','Harris','m','1974-08-17','11382 Bednar Harbors\nLittlechester, AZ 05964-8629','1991-06-03 17:46:27',30,0,'1992-06-03 17:46:27'),(53,'Brooke','Herzog','x','1982-11-04','917 Upton Road Suite 163\nPatienceview, WA 29203','1988-04-17 13:16:03',41,1,'1989-04-17 13:16:03'),(54,'Christopher','Kuphal','m','1988-03-14','122 Dach Cape Suite 689\nSouth Rahulville, WY 90331-2200','2004-10-31 13:09:00',30,1,'2005-10-31 13:09:00'),(55,'Lukas','Lueilwitz','f','1978-02-11','159 Stroman Stravenue\nEast Meghanberg, VA 11197','1988-04-12 19:24:54',6,1,'1989-04-12 19:24:54'),(56,'Jamar','Rogahn','x','1971-11-29','06719 Mattie Creek\nEast Ettie, HI 72042','2018-10-24 10:20:19',72,1,'2019-10-24 10:20:19'),(57,'Lily','Walker','m','1979-06-03','2385 Josie Village\nEast Noelside, MA 10818-1868','1992-10-14 00:09:29',44,0,'1993-10-14 00:09:29'),(58,'Mckayla','Barton','f','1979-04-24','930 Mya Keys Suite 275\nPort Evie, WI 63056-4534','2015-03-31 12:02:09',34,0,'2016-03-31 12:02:09'),(59,'Kacie','Abernathy','f','2006-11-07','61195 Grady Ports\nNew Elfrieda, KS 24913','1996-02-10 02:53:25',66,0,'1997-02-10 02:53:25'),(60,'Maiya','Hayes','f','1980-08-06','46188 Mertz Greens Suite 305\nPort Nettie, GA 38932-6522','1980-11-25 06:10:20',8,0,'1981-11-25 06:10:20'),(61,'Emie','Rau','x','2002-09-12','624 Lind Rue\nWest Lacey, SC 13420-0978','1990-07-28 19:32:10',29,0,'1991-07-28 19:32:10'),(62,'Wyman','Kreiger','f','1991-01-31','8983 Abby Wells Apt. 822\nSouth Aniyah, NM 16327-2532','1987-06-25 12:39:37',39,0,'1988-06-25 12:39:37'),(63,'Dillan','Feest','x','1985-11-12','775 Orn Garden Apt. 403\nGregoriafort, NM 81634','1970-04-21 02:44:37',18,0,'1971-04-21 02:44:37'),(64,'Ocie','Ruecker','m','1991-09-28','5034 Jaskolski Walks\nGreenview, FL 82920','1972-04-06 07:26:44',72,1,'1973-04-06 07:26:44'),(65,'Margarete','Raynor','f','1977-10-08','87808 Gusikowski Heights\nRaubury, SC 87589','2007-11-13 01:54:28',97,0,'2008-11-13 01:54:28'),(66,'Davion','Spinka','f','1985-07-18','50311 Christopher Coves Suite 093\nEast Aniyah, SC 42021','2017-12-06 17:20:20',68,1,'2018-12-06 17:20:20'),(67,'Archibald','Cartwright','f','2017-08-22','5157 Mittie Passage\nGulgowskishire, MI 29843','2009-11-21 17:55:12',99,0,'2010-11-21 17:55:12'),(68,'Kathlyn','Goldner','f','1999-03-25','7156 Josie Divide\nNorth Magalistad, AK 09058-3549','1985-02-16 10:21:28',13,0,'1986-02-16 10:21:28'),(69,'Darrell','Crist','x','1997-07-06','05589 Domenick Manor Suite 543\nBernhardside, NH 27761','2015-06-05 12:03:04',92,1,'2016-06-05 12:03:04'),(70,'Elisa','Wolff','f','2008-12-20','462 Farrell Well\nNew Emil, FL 00385','1996-04-25 02:06:50',13,1,'1997-04-25 02:06:50'),(71,'Jamir','Luettgen','m','1992-10-12','935 Steuber Springs Suite 615\nJoyceview, OK 52109','2014-10-30 01:39:38',70,1,'2015-10-30 01:39:38'),(72,'Irving','Conroy','x','1995-04-25','3767 Wuckert Village Apt. 518\nAlvisport, UT 53636-5261','1971-06-15 01:41:58',41,0,'1972-06-15 01:41:58'),(73,'Benedict','Wyman','m','2008-10-23','564 Little Point\nSiennafort, SC 68756','2003-02-01 18:25:33',75,1,'2004-02-01 18:25:33'),(74,'Ines','Schneider','x','1973-05-22','239 Purdy Village Apt. 180\nEast Jordonmouth, WV 13448-1517','1995-11-22 00:41:49',59,1,'1996-11-22 00:41:49'),(75,'Wiley','Schultz','m','2009-04-19','519 Goldner Crescent Apt. 707\nGastonview, CA 59331','2020-07-06 10:26:04',50,1,'2021-07-06 10:26:04'),(76,'Norma','Beahan','x','1970-05-14','55803 Brakus Stravenue\nNorth Agustinhaven, KY 40210-1007','2015-08-18 01:28:06',73,0,'2016-08-18 01:28:06'),(77,'Theo','Pfeffer','m','1975-11-18','3235 Champlin Terrace Apt. 762\nPowlowskimouth, NE 51837','1986-02-05 12:36:45',5,1,'1987-02-05 12:36:45'),(78,'Elsie','Dooley','m','1978-06-28','72228 Kilback Club\nRosalindchester, NC 32871-5142','1971-05-23 03:02:02',58,0,'1972-05-23 03:02:02'),(79,'Lula','Marvin','x','1973-10-10','35632 Hauck Path\nKossbury, FL 82707','1992-08-02 07:18:19',67,1,'1993-08-02 07:18:19'),(80,'Electa','Rice','f','2005-04-26','57368 Bradtke Groves\nNew Althea, WV 47117','2016-02-29 11:31:09',100,0,'2017-02-28 11:31:09'),(81,'Retha','Quigley','m','1980-03-15','511 Gleichner Mall\nDanykaland, PA 03527','1988-02-24 06:32:37',31,0,'1989-02-24 06:32:37'),(82,'Ruben','Ritchie','m','2000-01-11','5474 Brycen Fort Apt. 346\nNayeliland, NH 51044-5656','1975-12-25 18:14:59',52,0,'1976-12-25 18:14:59'),(83,'Kobe','Schmeler','m','1974-11-07','335 Bertram Dam Suite 516\nJesusbury, MS 75706-8380','2001-04-14 05:35:07',29,1,'2002-04-14 05:35:07'),(84,'Emily','Langworth','f','1979-08-22','65530 Ottilie Harbors Apt. 161\nLake Adolphus, RI 42231','2004-06-01 10:37:51',71,1,'2005-06-01 10:37:51'),(85,'Carlee','Hackett','f','2018-11-06','4517 Johns Lodge\nLake Lori, MO 14829','1979-06-06 02:06:50',81,0,'1980-06-06 02:06:50'),(86,'Kristin','Lowe','x','2013-03-28','1047 Hubert Bypass Apt. 875\nNew Cullenstad, FL 80447','1982-07-08 01:27:37',35,1,'1983-07-08 01:27:37'),(87,'Deshaun','Brekke','x','2014-04-04','90181 Roxanne Pike Suite 941\nKaylieland, MA 72310','1974-11-19 10:20:55',43,1,'1975-11-19 10:20:55'),(88,'Jarvis','Leuschke','x','2002-10-26','1649 Olson Isle\nNew Manuela, VT 88498-8634','2004-08-27 07:09:02',25,0,'2005-08-27 07:09:02'),(89,'Leonard','Hamill','f','2009-08-03','938 Ritchie Square Suite 700\nNew Magnusshire, SC 99243','2016-02-28 13:47:02',68,1,'2017-02-28 13:47:02'),(90,'Oscar','Friesen','x','2008-04-16','7805 Rippin Shoal\nNew Raul, SD 69083','2015-05-08 06:07:28',8,1,'2016-05-08 06:07:28'),(91,'Pearline','Lueilwitz','x','2014-02-11','90851 Block Land Suite 422\nNorth Harry, AK 09079','2016-04-15 03:15:07',33,0,'2017-04-15 03:15:07'),(92,'Maximillian','Bauch','x','1988-08-23','8315 Harvey Springs Suite 833\nPort Hiram, AK 88621','2007-09-29 21:01:24',97,0,'2008-09-29 21:01:24'),(93,'Murphy','Dickinson','m','2000-07-12','5377 Rosalinda Walks Suite 323\nAdelefort, WA 41304-0468','2017-09-05 18:58:26',47,0,'2018-09-05 18:58:26'),(94,'Tristin','Zieme','f','1980-05-10','787 Nicolas Green\nLeannmouth, IN 82272','1984-05-01 05:53:02',50,1,'1985-05-01 05:53:02'),(95,'Cecil','Kihn','m','1991-10-12','93357 Arden Forges\nDachport, MA 26365','1974-05-03 07:53:37',69,1,'1975-05-03 07:53:37'),(96,'Lisette','Terry','f','2019-11-24','7795 Kilback Mews\nWillhaven, NM 61809-0759','2003-10-28 12:46:35',44,0,'2004-10-28 12:46:35'),(97,'Dexter','Hayes','f','1981-07-25','822 Raynor Expressway\nHermanburgh, VT 38534-5909','1971-02-02 00:19:11',18,1,'1972-02-02 00:19:11'),(98,'Lori','Gislason','f','2009-07-08','416 Hermiston Rapids\nWest Marty, SC 32992','1992-06-06 23:30:27',68,0,'1993-06-06 23:30:27'),(99,'Jayme','Langworth','m','1986-04-28','9995 Joelle Pass Suite 470\nPort Jacky, VT 57495','2012-08-16 18:01:00',56,0,'2013-08-16 18:01:00'),(100,'Millie','O\'Keefe','f','1981-07-31','33196 Turcotte Overpass\nLaurianetown, IA 20802','2008-03-21 07:58:52',10,0,'2009-03-21 07:58:52');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
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
