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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(145) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `password_hash` char(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'leatha00@example.org',79014883676,'04965c35f948072e42873fc446b8136ece1af94d'),(2,'darren18@example.org',79888235030,'ce60d34b2d1d6056407189b2753bd0d8ae306afc'),(3,'khackett@example.com',79825675941,'759dba6ede14b66b45c08904de0a28d6e3cad2e1'),(4,'merl98@example.org',79896804709,'2103ae649ba7f3d3e18c015019ff9ef00bf843a1'),(5,'strosin.norris@example.org',79485188423,'b4609ca16fd4826d90ea97197497918526c7f349'),(6,'uglover@example.org',79273918491,'b940d278fbf27c0f9406de5977f522bbfef71ca4'),(7,'bergstrom.edward@example.com',79337916780,'22dcf369f18cef38630a52bf4959e1c6f69b000d'),(8,'wbrekke@example.com',79553750332,'65e64eb151969e961d90f3bef198e97385a6bcc9'),(9,'rkoepp@example.org',79194054553,'8ab197db558f31099c07959ea744a68696d3399b'),(10,'norval62@example.com',79680605810,'53c4448e828426c6dc16bbf3ce206f96009c1b19'),(11,'hillard91@example.com',79236266630,'61710c63a3be4c7232f10676c9beb54b990cd825'),(12,'jesse.brakus@example.net',79941170912,'31bec0f9eaa80afa71d106287cf2b0809ce24c5e'),(13,'pete77@example.com',79232049326,'53ee4a91f0325073abe5b1fe28262266de850c9e'),(14,'eulah.romaguera@example.org',79592060706,'5b97000d24eabe80334dcd895c15b4707b9205c1'),(15,'robert.greenfelder@example.com',79770979368,'a2c31c601d92885302471709789cc9ca1400cb5d'),(16,'obailey@example.org',79243319876,'7b809dbb113551188c2644101a3a290e7b034968'),(17,'zboncak.sonny@example.org',79073978730,'3a54b1b75814c81a57f9cbed13e5a95d6d21e532'),(18,'rboyer@example.com',79577726585,'d7173c8ddf4ece397c0b6f9a98907f6274a2d500'),(19,'amaya50@example.net',79653621331,'d77dd33fcebd8d3dd34c61b862da94549c44c549'),(20,'edwina.ullrich@example.net',79908183184,'799cba031809686e8b05632229398345164f485a'),(21,'ghermiston@example.com',79812451542,'430af1358d32a959afd8d34c45398bc31ef02d2d'),(22,'alexzander71@example.com',79051698512,'25bb74b68bc39f817c5911759477e1520a039f68'),(23,'gdonnelly@example.org',79278596306,'3e6018e7ddc544f014150a2d867d907eca30946b'),(24,'thad23@example.org',79509480949,'22da71bdb8b085413ecc0a47ea3d12aefd85b71e'),(25,'areichel@example.com',79899817680,'0fdd698bd47627538d4a7196c0ebf47b67ad52c6'),(26,'stehr.abbey@example.com',79841150884,'172657508eba14066a6f8f361f2c58c3a448decc'),(27,'mlangworth@example.com',79648146556,'34180a20b42ba403980b2fa6ca20b52491ac8a12'),(28,'jkuhic@example.com',79439189271,'ac2dc7d343dde92d6f50db005fec51eb5f955c73'),(29,'gerardo61@example.net',79177655423,'cda7aa2b7b02b6c511cbc4e40be25a4beca3afb8'),(30,'dach.berneice@example.net',79776026007,'c161db233020ad1127cd54545c95755e7f9d5470'),(31,'jmann@example.org',79673883537,'acd2afbcf2abba3b03cb018d21984a0a4d9d1b7e'),(32,'lon.bradtke@example.org',79170613203,'bb185a48bf4c1d6c9de756454dc93515a4cf59d8'),(33,'grady.darrel@example.org',79239164771,'513716bcff5547ba267012276a6a99b6c612c411'),(34,'drunolfsson@example.org',79382783915,'67d6596a98e628e35221944faf0bb9080b3fe02f'),(35,'kub.paris@example.org',79255550128,'53fcf18cd8cbbecf89ca9ff3ea11232d011d95bc'),(36,'armani81@example.com',79682656971,'2299e9f932978adaf9ba7efae387ff8452d1c1e5'),(37,'ghamill@example.org',79380851905,'64760482c86a0cfaa20003386cb9909ce5ffc3f2'),(38,'hipolito.leuschke@example.org',79442925129,'eed25410da51715c49b36f12043a5282a8bf9996'),(39,'travis.pfeffer@example.com',79333065353,'a71f08e7ba071dba6d28cc1cb06977fb583f354a'),(40,'welch.sheila@example.net',79484978006,'ac7e74ec69c5e6971f0967692ce61256b65f50e4'),(41,'leuschke.francisco@example.com',79755187541,'4fde07f0440e9d8eb1deb6f9769f22c198aab26e'),(42,'nicholaus.o\'reilly@example.net',79489775628,'6a7e3516a64db08fc502990b680aba74e6240fd3'),(43,'ddeckow@example.com',79742437609,'334ebb5452a8189303681cab227d6efe90a2a476'),(44,'pamela.kilback@example.org',79164700773,'c83ee37dc8c14d5dba90dab5de859d256ba645e5'),(45,'dmoore@example.net',79584522258,'93a97d32e958582e525cb7bedfdb7a3f8c49b5d3'),(46,'edmond51@example.com',79234620153,'c23429240738f8f10997475fd03a17c4ede7e3f9'),(47,'bill.pollich@example.net',79937684292,'00511fa8f6fdec715dce0d3c0e00a63d99acdfd2'),(48,'bradtke.hollis@example.com',79750089186,'3cd2466c73df8f37fd8b52708c9b724991371d52'),(49,'schuppe.dewitt@example.com',79301106447,'96669a59ffeb945a4dede639c4d8415f71111255'),(50,'landen.adams@example.org',79880016904,'78c90722e65e8a7eac325ff401a7621c9a182c3a'),(51,'pfeeney@example.org',79897156478,'f3756090bdc7c7fa8e1b7a9650c20d90826c282a'),(52,'velda95@example.net',79579300324,'3207cd1b959a425727685bc6e156935801651a58'),(53,'eryn33@example.com',79840790168,'39d4fe4c78a18958e5ac814d909076433dae9652'),(54,'adams.jaleel@example.org',79064970570,'9b017e7483d7d5daa86e51071888d8d985282c37'),(55,'abby.kassulke@example.org',79690563988,'8c729fea79c8b7deec609741e9a71eb55dd4e4c4'),(56,'friedrich.olson@example.com',79054041684,'96ccb4735c6e2247e4133f3a12e223b95e5cdf95'),(57,'martine.kling@example.com',79571278582,'0b1347daa6cee787bf65ad66bdfa241a96be2216'),(58,'oratke@example.com',79286760562,'3216b3a559811b6d9678563cd301526fee609f82'),(59,'erdman.robb@example.org',79320335970,'b43ef047ede654de7fe311a310372d7b39d15157'),(60,'hegmann.bryana@example.org',79762903857,'c1f2d4b14dbe130bc94a8e492dd3becd07490bce'),(61,'uschiller@example.org',79965123842,'72e7011694b2a3ad81192a9f9ab1014970c8715f'),(62,'zemlak.friedrich@example.com',79096925302,'34acea3f5df0484ae93a441b90b1c54d4fd40135'),(63,'gleichner.layla@example.org',79661055034,'6ea11342a330999e7afe21c66f85ed41a940a161'),(64,'yquigley@example.org',79641811854,'0cb5cacf88dce56441ca0ddd5a3a7e3dcf3bddfd'),(65,'russel.emily@example.net',79294173998,'c59b8405522da720c69f9214c84c1b7e5846f01e'),(66,'luettgen.abdul@example.net',79321106691,'e412a9bf1c7eddf39d77b7b3fa61c8ff0547799c'),(67,'eveline.bergstrom@example.com',79751777615,'7f3029b1bd87d689f4152bd3f8f681ba5da2c8a5'),(68,'kody.schmidt@example.org',79389388038,'724370816a51a922ca0ba336306d9e27a3aa2ec4'),(69,'autumn.larson@example.org',79779879917,'127ae0f37d82d5172fc6bb132115ef37868e59fb'),(70,'grover54@example.net',79772836907,'1f535a3c9ed81ad92de8d8e0345fe817e184f2bf'),(71,'sydnee.conn@example.net',79361909278,'998c5c4e27cce4b882faf2bbfa43f744dcfc133d'),(72,'alfonso.schimmel@example.com',79715199408,'f22814f01a0364915b4be2a944c66a33af133891'),(73,'andre.legros@example.org',79679247005,'bcb1a76b7cd1077adcab1cb665b71805d3eb2ff2'),(74,'lubowitz.javier@example.com',79399890056,'55ba65e4a7536e760be3f5137ea7889eae38c88a'),(75,'brielle.schumm@example.net',79128787360,'722ca733508eaf943ad7967811e58eaf94f155eb'),(76,'jarrod90@example.net',79024603081,'294953bef04cf496d4da4ae6e747497fa94f4acf'),(77,'ozella48@example.org',79768603456,'42a8c76d7053e0e671b0fa14bac528ada8f21241'),(78,'brendon03@example.org',79307362586,'b081b8df9815b17dfbc9d60335f88344f3583dcc'),(79,'yhahn@example.net',79563935646,'66f511e11421ba18abfa9715857812907fdddae7'),(80,'jerel35@example.net',79500701737,'b1a5e84f12ba48f25b16f2ac77f5867ed621200f'),(81,'francisco.breitenberg@example.com',79243280547,'4bb57e008333a0b6670d6f25235d0fbebbbd31e7'),(82,'pierre.konopelski@example.org',79144617875,'be9ab95d485cfc414eee720cd3da66b7608ab381'),(83,'nicholas.koch@example.net',79774326921,'0bde6be21bcabb5e8560139d04c57842dfecc4a4'),(84,'roma38@example.com',79260124664,'1ff93fb8a0d93e5f7c0444b5ffaaa8faf50ca64f'),(85,'edna.christiansen@example.org',79705543528,'1af36c8e2e484cdabfa77eacf6a967913e19a61e'),(86,'vlowe@example.net',79804270884,'17243f97166c5275a7bea4bc3b016bac55a448f2'),(87,'genevieve.zboncak@example.net',79597479081,'d3459dde97a323c9495c447a90780de5815c5f64'),(88,'dickens.asa@example.org',79503246699,'aff5f087f21f710c9f685ebdbf61d86ed6869d95'),(89,'hermiston.oral@example.net',79019174804,'4c8a23fe9980c2a8553c0b31dd19f660cd20a465'),(90,'murray.jake@example.net',79765841704,'9513c4ac3141ff9a2c461ce5b4a8a645dc887aa6'),(91,'ransom.glover@example.com',79961518696,'3a6590e01bdad4838eb0efa2fa3560173ff8fd16'),(92,'gabriel37@example.net',79236784026,'b90eda5e05aed5ae2bf4187989610d2dbb7425b1'),(93,'zhomenick@example.net',79726322621,'37aaac5a17c51349ac0c88490c7c2aadd0da81b2'),(94,'ibrahim37@example.org',79008941209,'95b16da4f1add1c010989528572198274699ea11'),(95,'casimir42@example.com',79840281458,'f039959099732d3d82b38a1528ef1e0236a0b34e'),(96,'nienow.rocky@example.com',79277744055,'2ec127483b3bb88e6dd7033eb6cdb0338899fc7f'),(97,'loren83@example.com',79895132146,'9e0d8ca6c3ee0583cbb1868d8b08ea04c65e69af'),(98,'dsteuber@example.com',79684152045,'6b65531c615682dfc403f5874705f76c903ced0c'),(99,'zelma.jerde@example.com',79630367707,'7ba9bbf9568f85d8566cf84070296a83313141a1'),(100,'hailee84@example.com',79860727505,'74cc3189a5d2d01200becb7f1cbcccadfd92c67d');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 19:28:12
