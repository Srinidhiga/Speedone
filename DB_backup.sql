-- MySQL dump 10.13  Distrib 8.1.0, for macos13 (arm64)
--
-- Host: localhost    Database: SpeedOne
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ContactSubmissions`
--

DROP TABLE IF EXISTS `ContactSubmissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ContactSubmissions` (
  `submission_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `submission_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`submission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContactSubmissions`
--

LOCK TABLES `ContactSubmissions` WRITE;
/*!40000 ALTER TABLE `ContactSubmissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ContactSubmissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Drivers`
--

DROP TABLE IF EXISTS `Drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Drivers` (
  `driver_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `team_id` int DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `championships_won` int DEFAULT '0',
  `profile_image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `drivers_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `Teams` (`team_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Drivers`
--

LOCK TABLES `Drivers` WRITE;
/*!40000 ALTER TABLE `Drivers` DISABLE KEYS */;
INSERT INTO `Drivers` VALUES (1,'Max','Verstappen','Dutch',31,'1997-09-30',4,'https://speedone1.s3.us-east-2.amazonaws.com/Max.jpeg'),(2,'Sergio','Perez','Mexican',31,'1990-01-26',0,'https://speedone1.s3.us-east-2.amazonaws.com/Perez.jpg'),(3,'Charles','Leclerc','Monegasque',32,'1997-10-16',0,'https://speedone1.s3.us-east-2.amazonaws.com/charles.jpg'),(4,'Carlos','Sainz','Spanish',32,'1994-09-01',0,'https://speedone1.s3.us-east-2.amazonaws.com/sainz.jpg'),(5,'Lewis','Hamilton','British',33,'1985-01-07',7,'https://speedone1.s3.us-east-2.amazonaws.com/lewis.jpg'),(6,'George','Russell','British',33,'1998-02-15',0,'https://speedone1.s3.us-east-2.amazonaws.com/russell.jpg'),(7,'Lando','Norris','British',34,'1999-11-13',0,'https://speedone1.s3.us-east-2.amazonaws.com/Lando.jpg'),(8,'Oscar','Piastri','Australian',34,'2001-04-06',0,'https://speedone1.s3.us-east-2.amazonaws.com/Oscar.jpg'),(9,'Fernando','Alonso','Spanish',35,'1981-07-29',2,'https://speedone1.s3.us-east-2.amazonaws.com/Alonso.jpg'),(10,'Lance','Stroll','Canadian',35,'1998-10-29',0,'https://speedone1.s3.us-east-2.amazonaws.com/Stroll.jpg'),(11,'Pierre','Gasly','French',36,'1996-02-07',0,'https://speedone1.s3.us-east-2.amazonaws.com/Gasly.jpg'),(12,'Esteban','Ocon','French',36,'1996-09-17',0,'https://speedone1.s3.us-east-2.amazonaws.com/Ocon.jpg'),(13,'Nico','Hulkenberg','German',37,'1987-08-19',0,'https://speedone1.s3.us-east-2.amazonaws.com/Hulk.jpg'),(14,'Kevin','Magnussen','Danish',37,'1992-10-05',0,'https://speedone1.s3.us-east-2.amazonaws.com/Kmag.jpg'),(15,'Yuki','Tsunoda','Japanese',38,'2000-05-11',0,'https://speedone1.s3.us-east-2.amazonaws.com/Yuki.jpg'),(16,'Daniel','Ricciardo','Australian',38,'1989-07-01',0,'https://speedone1.s3.us-east-2.amazonaws.com/Ric.jpg'),(17,'Alexander','Albon','Thai',39,'1996-03-23',0,'https://speedone1.s3.us-east-2.amazonaws.com/Albon.jpg'),(18,'Logan','Sargeant','American',39,'2000-12-31',0,'https://speedone1.s3.us-east-2.amazonaws.com/Logan.jpg'),(19,'Valtteri','Bottas','Finnish',40,'1989-08-28',0,'https://speedone1.s3.us-east-2.amazonaws.com/VB.jpg'),(20,'Zhou','Guanyu','Chinese',40,'1999-05-30',0,'https://speedone1.s3.us-east-2.amazonaws.com/Zhou.jpg');
/*!40000 ALTER TABLE `Drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `News`
--

DROP TABLE IF EXISTS `News`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `News` (
  `news_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `News`
--

LOCK TABLES `News` WRITE;
/*!40000 ALTER TABLE `News` DISABLE KEYS */;
INSERT INTO `News` VALUES (1,'Red Bull Dominates Bahrain Grand Prix','Max Verstappen led a dominant performance in the opening race of the season at Sakhir, securing a comfortable win for Red Bull Racing.','John Doe'),(2,'Ferrari Struggles with Reliability Issues','Despite showing strong pace in practice, Charles Leclerc retired early from the Saudi Arabian Grand Prix due to mechanical issues.','Jane Smith'),(3,'Mercedes Introduces Aero Upgrades','Mercedes has introduced new aerodynamic components for their W15 car ahead of the Australian Grand Prix, aiming to close the gap to Red Bull.','Emily Davis'),(4,'McLaren Secures First Podium of the Season','Lando Norris clinched a hard-fought podium in the Japanese Grand Prix, marking McLaren’s resurgence this season.','Michael Johnson'),(5,'Fernando Alonso Surprises in Singapore','Aston Martin’s Fernando Alonso delivered a stellar performance in Singapore, securing his first win since 2013.','Sarah Lee');
/*!40000 ALTER TABLE `News` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RaceResults`
--

DROP TABLE IF EXISTS `RaceResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RaceResults` (
  `result_id` int NOT NULL AUTO_INCREMENT,
  `race_id` int DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `points_awarded` int DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `race_id` (`race_id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `raceresults_ibfk_1` FOREIGN KEY (`race_id`) REFERENCES `Races` (`race_id`) ON DELETE CASCADE,
  CONSTRAINT `raceresults_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `Drivers` (`driver_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RaceResults`
--

LOCK TABLES `RaceResults` WRITE;
/*!40000 ALTER TABLE `RaceResults` DISABLE KEYS */;
INSERT INTO `RaceResults` VALUES (1,1,1,1,26),(2,1,2,2,18),(3,1,5,3,15),(4,1,3,4,12),(5,1,6,5,10),(6,1,7,6,8),(7,1,4,7,6),(8,1,9,8,4),(9,1,10,9,2),(10,1,11,10,1),(11,2,1,1,25),(12,2,2,2,18),(13,2,3,3,15),(14,2,5,4,12),(15,2,6,5,10),(16,2,7,6,8),(17,2,4,7,6),(18,2,9,8,4),(19,2,10,9,2),(20,2,11,10,1),(21,3,5,1,25),(22,3,3,2,18),(23,3,7,3,15),(24,3,1,4,12),(25,3,2,5,10),(26,3,6,6,8),(27,3,4,7,6),(28,3,9,8,4),(29,3,10,9,2),(30,3,11,10,1),(31,4,1,1,25),(32,4,2,2,18),(33,4,5,3,15),(34,4,3,4,12),(35,4,6,5,10),(36,4,7,6,8),(37,4,4,7,6),(38,4,9,8,4),(39,4,10,9,2),(40,4,11,10,1),(41,5,1,1,25),(42,5,7,2,18),(43,5,2,3,15),(44,5,3,4,12),(45,5,5,5,10),(46,5,6,6,8),(47,5,4,7,6),(48,5,9,8,4),(49,5,10,9,2),(50,5,11,10,1),(51,6,7,1,25),(52,6,1,2,18),(53,6,3,3,15),(54,6,2,4,12),(55,6,5,5,10),(56,6,6,6,8),(57,6,4,7,6),(58,6,9,8,4),(59,6,10,9,2),(60,6,11,10,1),(61,7,1,1,25),(62,7,7,2,18),(63,7,3,3,15),(64,7,2,4,12),(65,7,5,5,10),(66,7,6,6,8),(67,7,4,7,6),(68,7,9,8,4),(69,7,10,9,2),(70,7,11,10,1),(71,8,3,1,25),(72,8,8,2,18),(73,8,5,3,15),(74,8,1,4,12),(75,8,2,5,10),(76,8,6,6,8),(77,8,7,7,6),(78,8,9,8,4),(79,8,10,9,2),(80,8,11,10,1),(81,9,1,1,25),(82,9,7,2,18),(83,9,6,3,15),(84,9,5,4,12),(85,9,3,5,10),(86,9,2,6,8),(87,9,4,7,6),(88,9,9,8,4),(89,9,10,9,2),(90,9,11,10,1),(91,10,1,1,25),(92,10,7,2,18),(93,10,5,3,15),(94,10,3,4,12),(95,10,6,5,10),(96,10,2,6,8),(97,10,4,7,6),(98,10,9,8,4),(99,10,10,9,2),(100,10,11,10,1),(101,11,6,1,25),(102,11,8,2,18),(103,11,5,3,15),(104,11,1,4,12),(105,11,2,5,10),(106,11,3,6,8),(107,11,7,7,6),(108,11,9,8,4),(109,11,10,9,2),(110,11,11,10,1),(111,12,5,1,25),(112,12,1,2,18),(113,12,7,3,15),(114,12,8,4,12),(115,12,6,5,10),(116,12,3,6,8),(117,12,2,7,6),(118,12,9,8,4),(119,12,10,9,2),(120,12,11,10,1),(121,13,1,1,25),(122,13,3,2,18),(123,13,5,3,15),(124,13,7,4,12),(125,13,6,5,10),(126,13,8,6,8),(127,13,2,7,6),(128,13,4,8,4),(129,13,9,9,2),(130,13,10,10,1),(131,14,1,1,25),(132,14,3,2,18),(133,14,5,3,15),(134,14,7,4,12),(135,14,6,5,10),(136,14,8,6,8),(137,14,2,7,6),(138,14,4,8,4),(139,14,9,9,2),(140,14,10,10,1),(141,15,1,1,25),(142,15,7,2,18),(143,15,5,3,15),(144,15,3,4,12),(145,15,6,5,10),(146,15,8,6,8),(147,15,2,7,6),(148,15,4,8,4),(149,15,9,9,2),(150,15,10,10,1),(151,16,1,1,25),(152,16,7,2,18),(153,16,3,3,15),(154,16,6,4,12),(155,16,5,5,10),(156,16,8,6,8),(157,16,2,7,6),(158,16,4,8,4),(159,16,9,9,2),(160,16,10,10,1),(161,17,1,1,25),(162,17,5,2,18),(163,17,7,3,15),(164,17,3,4,12),(165,17,6,5,10),(166,17,8,6,8),(167,17,2,7,6),(168,17,4,8,4),(169,17,9,9,2),(170,17,10,10,1),(171,18,1,1,25),(172,18,7,2,18),(173,18,3,3,15),(174,18,6,4,12),(175,18,5,5,10),(176,18,8,6,8),(177,18,2,7,6),(178,18,4,8,4),(179,18,9,9,2),(180,18,10,10,1),(181,19,1,1,25),(182,19,5,2,18),(183,19,7,3,15),(184,19,3,4,12),(185,19,6,5,10),(186,19,8,6,8),(187,19,2,7,6),(188,19,4,8,4),(189,19,9,9,2),(190,19,10,10,1),(191,20,1,1,25),(192,20,7,2,18),(193,20,5,3,15),(194,20,3,4,12),(195,20,6,5,10),(196,20,8,6,8),(197,20,2,7,6),(198,20,4,8,4),(199,20,9,9,2),(200,20,10,10,1),(201,21,1,1,25),(202,21,5,2,18),(203,21,7,3,15),(204,21,3,4,12),(205,21,6,5,10),(206,21,8,6,8),(207,21,2,7,6),(208,21,4,8,4),(209,21,9,9,2),(210,21,10,10,1),(211,22,1,1,25),(212,22,5,2,18),(213,22,7,3,15),(214,22,3,4,12),(215,22,6,5,10),(216,22,8,6,8),(217,22,2,7,6),(218,22,4,8,4),(219,22,9,9,2),(220,22,10,10,1),(221,23,1,1,25),(222,23,5,2,18),(223,23,7,3,15),(224,23,3,4,12),(225,23,6,5,10),(226,23,8,6,8),(227,23,2,7,6),(228,23,4,8,4),(229,23,9,9,2),(230,23,10,10,1),(231,24,1,1,25),(232,24,5,2,18),(233,24,7,3,15),(234,24,3,4,12),(235,24,6,5,10),(236,24,8,6,8),(237,24,2,7,6),(238,24,4,8,4),(239,24,9,9,2),(240,24,10,10,1);
/*!40000 ALTER TABLE `RaceResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Races`
--

DROP TABLE IF EXISTS `Races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Races` (
  `race_id` int NOT NULL AUTO_INCREMENT,
  `race_name` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `race_date` date NOT NULL,
  `circuit_image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`race_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Races`
--

LOCK TABLES `Races` WRITE;
/*!40000 ALTER TABLE `Races` DISABLE KEYS */;
INSERT INTO `Races` VALUES (1,'Bahrain Grand Prix','Sakhir, Bahrain','2024-03-02','https://www.formula1.com/content/dam/fom-website/races/2024/Bahrain/circuit.png'),(2,'Saudi Arabian Grand Prix','Jeddah, Saudi Arabia','2024-03-09','https://www.formula1.com/content/dam/fom-website/races/2024/Saudi_Arabia/circuit.png'),(3,'Australian Grand Prix','Melbourne, Australia','2024-03-24','https://www.formula1.com/content/dam/fom-website/races/2024/Australia/circuit.png'),(4,'Japanese Grand Prix','Suzuka, Japan','2024-04-07','https://www.formula1.com/content/dam/fom-website/races/2024/Japan/circuit.png'),(5,'Chinese Grand Prix','Shanghai, China','2024-04-21','https://www.formula1.com/content/dam/fom-website/races/2024/China/circuit.png'),(6,'Miami Grand Prix','Miami, USA','2024-05-05','https://www.formula1.com/content/dam/fom-website/races/2024/Miami/circuit.png'),(7,'Emilia Romagna Grand Prix','Imola, Italy','2024-05-19','https://www.formula1.com/content/dam/fom-website/races/2024/Emilia_Romagna/circuit.png'),(8,'Monaco Grand Prix','Monte Carlo, Monaco','2024-05-26','https://www.formula1.com/content/dam/fom-website/races/2024/Monaco/circuit.png'),(9,'Canadian Grand Prix','Montreal, Canada','2024-06-09','https://www.formula1.com/content/dam/fom-website/races/2024/Canada/circuit.png'),(10,'Spanish Grand Prix','Barcelona, Spain','2024-06-23','https://www.formula1.com/content/dam/fom-website/races/2024/Spain/circuit.png'),(11,'Austrian Grand Prix','Spielberg, Austria','2024-06-30','https://www.formula1.com/content/dam/fom-website/races/2024/Austria/circuit.png'),(12,'British Grand Prix','Silverstone, UK','2024-07-07','https://www.formula1.com/content/dam/fom-website/races/2024/Great_Britain/circuit.png'),(13,'Hungarian Grand Prix','Budapest, Hungary','2024-07-21','https://www.formula1.com/content/dam/fom-website/races/2024/Hungary/circuit.png'),(14,'Belgian Grand Prix','Spa, Belgium','2024-07-28','https://www.formula1.com/content/dam/fom-website/races/2024/Belgium/circuit.png'),(15,'Dutch Grand Prix','Zandvoort, Netherlands','2024-08-25','https://www.formula1.com/content/dam/fom-website/races/2024/Netherlands/circuit.png'),(16,'Italian Grand Prix','Monza, Italy','2024-09-01','https://www.formula1.com/content/dam/fom-website/races/2024/Italy/circuit.png'),(17,'Azerbaijan Grand Prix','Baku, Azerbaijan','2024-09-15','https://www.formula1.com/content/dam/fom-website/races/2024/Azerbaijan/circuit.png'),(18,'Singapore Grand Prix','Marina Bay, Singapore','2024-09-22','https://www.formula1.com/content/dam/fom-website/races/2024/Singapore/circuit.png'),(19,'United States Grand Prix','Austin, USA','2024-10-20','https://www.formula1.com/content/dam/fom-website/races/2024/USA/circuit.png'),(20,'Mexican Grand Prix','Mexico City, Mexico','2024-10-27','https://www.formula1.com/content/dam/fom-website/races/2024/Mexico/circuit.png'),(21,'Brazilian Grand Prix','Sao Paulo, Brazil','2024-11-03','https://www.formula1.com/content/dam/fom-website/races/2024/Brazil/circuit.png'),(22,'Las Vegas Grand Prix','Las Vegas, USA','2024-11-23','https://www.formula1.com/content/dam/fom-website/races/2024/Las_Vegas/circuit.png'),(23,'Qatar Grand Prix','Lusail, Qatar','2024-12-01','https://www.formula1.com/content/dam/fom-website/races/2024/Qatar/circuit.png'),(24,'Abu Dhabi Grand Prix','Yas Marina, Abu Dhabi','2024-12-08','https://www.formula1.com/content/dam/fom-website/races/2024/Abu_Dhabi/circuit.png');
/*!40000 ALTER TABLE `Races` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Standings`
--

DROP TABLE IF EXISTS `Standings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Standings` (
  `standing_id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int DEFAULT NULL,
  `total_points` int DEFAULT '0',
  `position` int DEFAULT NULL,
  PRIMARY KEY (`standing_id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `standings_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `Drivers` (`driver_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Standings`
--

LOCK TABLES `Standings` WRITE;
/*!40000 ALTER TABLE `Standings` DISABLE KEYS */;
INSERT INTO `Standings` VALUES (45,1,437,1),(46,7,374,2),(47,3,356,3),(48,8,292,4),(49,4,290,5),(50,6,245,6),(51,5,223,7),(52,2,152,8),(53,9,70,9),(54,11,42,10),(55,13,41,11),(56,15,30,12),(57,10,24,13),(58,12,23,14),(59,14,16,15),(60,17,12,16),(61,16,12,17),(62,20,4,18),(63,19,0,19),(64,18,0,20);
/*!40000 ALTER TABLE `Standings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats` (
  `stat_id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int DEFAULT NULL,
  `races_entered` int DEFAULT NULL,
  `races_started` int DEFAULT NULL,
  `wins` int DEFAULT NULL,
  `pole_positions` int DEFAULT NULL,
  `fastest_laps` int DEFAULT NULL,
  `podiums` int DEFAULT NULL,
  `total_points` decimal(10,2) DEFAULT NULL,
  `championships_won` int DEFAULT NULL,
  PRIMARY KEY (`stat_id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `stats_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
INSERT INTO `stats` VALUES (1,1,200,200,63,30,33,85,1500.00,4),(2,2,250,250,6,5,12,30,800.00,0),(3,3,150,150,8,10,10,25,600.00,0),(4,4,180,180,2,3,5,20,500.00,0),(5,5,300,300,105,104,67,202,4862.50,7),(6,6,100,100,1,1,8,10,300.00,0),(7,7,120,120,0,0,5,10,250.00,0),(8,8,50,50,0,0,2,5,100.00,0),(9,9,350,350,32,22,26,98,2000.00,2),(10,10,150,150,0,0,1,3,150.00,0),(11,11,100,100,1,1,4,10,200.00,0),(12,12,120,120,1,0,1,5,180.00,0),(13,13,200,200,0,1,2,10,300.00,0),(14,14,150,150,1,0,1,5,200.00,0),(15,15,80,80,0,0,0,0,50.00,0),(16,16,250,250,8,3,17,32,1300.00,0),(17,17,100,100,0,0,1,2,100.00,0),(18,18,40,40,0,0,0,0,1.00,0),(19,19,300,300,10,4,19,67,1500.00,0),(20,20,50,50,0,0,0,0,50.00,0);
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teams`
--

DROP TABLE IF EXISTS `Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teams` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(100) NOT NULL,
  `base_location` varchar(100) DEFAULT NULL,
  `team_principal` varchar(100) DEFAULT NULL,
  `championships_won` int DEFAULT '0',
  `team_logo_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teams`
--

LOCK TABLES `Teams` WRITE;
/*!40000 ALTER TABLE `Teams` DISABLE KEYS */;
INSERT INTO `Teams` VALUES (31,'McLaren Mercedes','Woking, United Kingdom','Zak Brown',8,'https://speedone1.s3.us-east-2.amazonaws.com/MClaren.jpg'),(32,'Ferrari','Maranello, Italy','Fred Vasseur',16,'https://speedone1.s3.us-east-2.amazonaws.com/Ferrari.jpg'),(33,'Red Bull Racing Honda RBPT','Milton Keynes, United Kingdom','Christian Horner',6,'https://speedone1.s3.us-east-2.amazonaws.com/Redbull.jpg'),(34,'Mercedes','Brackley, United Kingdom','Toto Wolff',8,'https://speedone1.s3.us-east-2.amazonaws.com/Mercedes.jpg'),(35,'Aston Martin Aramco Mercedes','Silverstone, United Kingdom','Mike Krack',0,'https://speedone1.s3.us-east-2.amazonaws.com/Aston+martin.jpg'),(36,'Alpine Renault','Enstone, United Kingdom','Oliver Oakes',0,'https://speedone1.s3.us-east-2.amazonaws.com/Alpine.jpg'),(37,'Haas Ferrari','Kannapolis, USA','Guenther Steiner',0,'https://speedone1.s3.us-east-2.amazonaws.com/Haas.jpg'),(38,'RB Honda RBPT','Faenza, Italy','Laurent Mekies',0,'https://speedone1.s3.us-east-2.amazonaws.com/RB.jpg'),(39,'Williams Mercedes','Grove, United Kingdom','James Vowles',9,'https://speedone1.s3.us-east-2.amazonaws.com/Williams.jpg'),(40,'Kick Sauber Ferrari','Hinwil, Switzerland','Alessandro Alunni Bravi',0,'https://speedone1.s3.us-east-2.amazonaws.com/Sauber.jpg');
/*!40000 ALTER TABLE `Teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-14 11:49:34
