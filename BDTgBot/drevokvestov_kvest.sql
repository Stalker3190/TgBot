-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: drevokvestov
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `kvest`
--

DROP TABLE IF EXISTS `kvest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kvest` (
  `idKvest` int NOT NULL AUTO_INCREMENT,
  `nameOfKvest` varchar(45) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `requirements` varchar(45) DEFAULT NULL,
  `reward` varchar(45) DEFAULT NULL,
  `typeID` int NOT NULL,
  `difficultID` int NOT NULL,
  `rangID` int NOT NULL,
  PRIMARY KEY (`idKvest`),
  UNIQUE KEY `idKvest_UNIQUE` (`idKvest`),
  KEY `fk_Kvest_TypeOfKvest_idx` (`typeID`),
  KEY `fk_Kvest_DifficultyOfKvest1_idx` (`difficultID`),
  KEY `fk_Kvest_Rang1_idx` (`rangID`),
  CONSTRAINT `fk_Kvest_DifficultyOfKvest1` FOREIGN KEY (`difficultID`) REFERENCES `difficultyofkvest` (`idDifficultyOfKvest`),
  CONSTRAINT `fk_Kvest_Rang1` FOREIGN KEY (`rangID`) REFERENCES `rang` (`idRang`),
  CONSTRAINT `fk_Kvest_TypeOfKvest` FOREIGN KEY (`typeID`) REFERENCES `typeofkvest` (`idTypeOfKvest`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kvest`
--

LOCK TABLES `kvest` WRITE;
/*!40000 ALTER TABLE `kvest` DISABLE KEYS */;
INSERT INTO `kvest` VALUES (1,'Кто эти черти?','Ведьмаки выходят на большак в одиночку. Но даже самому нелюдимому убийце не помешают связи. А может даже друзья. Познакомься со всеми, запомни имена и узнай немного о каждом. ',NULL,'1 крона и пятюни от всех',1,1,1),(2,'Не зашибу, а поглажу!','Если ведьмаки друг друга резать начнут, то на большаке останутся только самые благородные волки типа мясника. Научись контролировать силу удара и сам цел останешься! Весемир.  Цель: Показать упр. на контроль удара без ошибок 3 раза. ',NULL,'2 кроны, титул: \"Убивашка\"',2,2,1),(3,'Не пальцем деланный!','Техника, техника и еще раз техника. Только упорными тренировками можно дойти до уровня лучших бойцов. Научился чему-нибудь? А покажи! Эскель. Цель: Показать 9ку на выбранном оружии, обе руки + за спиной.','1-4ур','3 кроны, красивое видео для соц. сетей',2,1,1);
/*!40000 ALTER TABLE `kvest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-01  5:40:55
