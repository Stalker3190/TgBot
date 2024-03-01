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
  `context` varchar(600) DEFAULT NULL,
  `requirements` varchar(45) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kvest`
--

LOCK TABLES `kvest` WRITE;
/*!40000 ALTER TABLE `kvest` DISABLE KEYS */;
INSERT INTO `kvest` VALUES (1,'Кто эти черти?','Ведьмаки выходят на большак в одиночку. Но даже самому нелюдимому убийце не помешают связи. А может даже друзья. Познакомься со всеми, запомни имена и узнай немного о каждом. ',NULL,'1 крона и пятюни от всех',1,1,1),(2,'Не зашибу, а поглажу!','Если ведьмаки друг друга резать начнут, то на большаке останутся только самые благородные волки типа мясника. Научись контролировать силу удара и сам цел останешься! Весемир.  Цель: Показать упр. на контроль удара без ошибок 3 раза. ',NULL,'2 кроны, титул: \"Убивашка\"',2,2,1),(3,'Не пальцем деланный!','Техника, техника и еще раз техника. Только упорными тренировками можно дойти до уровня лучших бойцов. Научился чему-нибудь? А покажи! Эскель. Цель: Показать 9ку на выбранном оружии, обе руки + за спиной.','1-4ур','3 кроны, красивое видео для соц. сетей',2,1,1),(4,'Публичная личность!','Школе ведьмаков нужны новые души. Многие не выживут. И единицы дойдут до испытания травами. Но таков путь! Аваллак`х.  Цель: Рассказать о нас в вк и инсте с отметкой.','1+ ур','3 кроны, титул: \"Друг ведьмаков\", респект, уважуха и + в карму!',1,1,1),(5,'Друзья это хорошо ','Дабы не допустить вымирания рода человьего, необходимо обучить как можно более новых ведьмаков. Кайон.  Цель: Приведи друга. ',NULL,'10 крон, скидка 50% на 1 занятие тебе и другу.',1,1,1),(6,'И белку в глаз, и в ','Эльфы и краснолюды, лишённые всяческих прав и загнанный в переполненные гетто, ждали удобного момента, чтобы броситься в бой против королевств Севера. И он наступил во время войны с Нильфгаардом. Когда империя начала вторжение, нелюди ударили с тыла...   Цель: Попробуй стрельбу из арбалета или лука.','2+ ур','1 exp, 3 кроны',3,1,1),(7,'Я выбираю тебя! ','Цель: Выбери оружие и расскажи почему.','1+ ур','1 exp, 3 кроны',1,1,1),(8,'Красавчик','Чудовище не будет смотреть и восхищаться, а вот дама сердца да, если конечно она не чудовище... Ламберт.  Цель: Показать 2 красивых прокрутки.',NULL,'1 exp, 5 крон',2,2,2),(9,'Только не убейся!','Это конечно не легендарная мучильня из Каэр Морхена, но для тренировки тела и рефлексов самое то!  Идеально пройти маятник',NULL,'5 крон',2,2,2),(10,'Банка-ай!','Надоело мутузить чучело? Почему бы не дать по щам кому-то более сильному? Цель: Победи персонажа более высокого ранга.',NULL,'1 exp, 10 крон, титул: \"Как тузик грелку!\"',2,3,1),(11,'Руки не из ж..','Не первый день ты уже оружие в руках держишь, пора заявить о себе! Лучший способ одолеть - противника сильнее, чем ты! Но будь осторожен! Младшие ведьмаки владеют знаками и могут иметь эликсиры... Победи Лучшего в бою!',NULL,'40 крон, титул: \"Будущий хокаге\", Рецепт \"Ласточка\"',2,3,2),(12,'Слон и моська','Воистину, нет ничего более отвратного, нежели монстры оные, натуре противные, ведьмаками именуемые, ибо суть они плоды мерзопакостного волшебства и диавольства. Это есть мерзавцы без достоинства, совести и чести, истинные исчадия адовы, токмо к убиениям приспособленные.  Нет таким, како оне, места меж людьми почтенными. А их Каер Менск, где оные бесчестники гнездятся, где мерзкие свои дела обделывают, стёрт должен быть с лона земли и след по нему солью и селитрой посыпан. Победи Ведьмака в бою.',NULL,'50, титул \"Талантливый\", Рецепт \"Волк\"',2,3,2),(13,'Сражение равных','...но давно уже доказано, что делают это они для удовольствия собственного, ибо убийство для них главное развлечение...  Выбери и победи противника на его оружии (отличном от твоего)',NULL,'20 крон',2,2,2),(14,'Лютик Блять!','Каждый может обидеть поэта, а вот самому что-нибудь да этакое написать, хера с два!    Написать что то в стихотворной форме.  ','Использование доп. квеста ','20 крон, титут \"Бард\"',1,3,1),(15,'Современное искусство','Воистину гениальны полотна его, восхитил но!  Нарисовать что-то связанное с ведьмачим цехом \"Своё Дело\" и, с разрешения мастера, повесить рисунок на доску новостей.   ',NULL,'20 крон',1,1,1),(16,'Чего то не хватает... ','Мастера прошлой ночью перебрали, и кто-то куда то сунул по пьяни свое оружие. Ну а что за ведьмак без своего клинка?! Правильно, просто мутант.  Узнай, кто из мастеров нуждается в помощи и принеси ему его ','3lvl+ ','5 крон, титут \"Ищейка\"',1,2,1);
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

-- Dump completed on 2024-03-01  6:58:59
