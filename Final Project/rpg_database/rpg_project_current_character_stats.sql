-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: rpg_project
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `current_character_stats`
--

DROP TABLE IF EXISTS `current_character_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `current_character_stats` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `inventory_id` bigint DEFAULT NULL,
  `level` int DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  `health` float DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `experience` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `level` (`level`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `current_character_stats_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`),
  CONSTRAINT `current_character_stats_ibfk_2` FOREIGN KEY (`level`) REFERENCES `base_stats` (`level`),
  CONSTRAINT `current_character_stats_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_character_stats`
--

LOCK TABLES `current_character_stats` WRITE;
/*!40000 ALTER TABLE `current_character_stats` DISABLE KEYS */;
INSERT INTO `current_character_stats` VALUES (1,1,1,1,20,8,0),(2,2,1,2,12,4.8,0),(3,2,1,2,12,4.8,0),(4,2,1,3,20,8,0),(5,2,1,4,16,12,0),(6,2,1,5,50,10,0),(7,2,1,6,30,16,0),(8,2,1,7,12,20,0),(9,2,1,8,40,16,0),(10,2,1,9,20,8,0),(11,2,1,10,16,20,0),(12,2,1,10,10,20,0),(25,NULL,2,2,52,9.6,11.25),(26,NULL,2,3,31.2,5.76,7.88),(27,NULL,3,2,84,11.2,16.25);
/*!40000 ALTER TABLE `current_character_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-30 23:45:40
