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
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `use_range` float DEFAULT NULL,
  `gold_value` bigint DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Minor Health Potion','Potion',50,0,10,'The most common health potion. When used, it will restore a small amount of health.'),(2,'Minor Mana Potion','Potion',50,0,10,'The most common mana potion. When used, it will restore a small amount of mana.'),(3,'Wooden Sword','Weapon',5,2,7,'Often used for sparring practice. Not very effective in actual combat.'),(4,'Slingshot','Weapon',3,8,5,'An outdated hunting tool turned into a child\'s play thing. Useful in a pinch as there\'s always a pebble around.'),(5,'Child\'s Wooden Bow','Weapon',6,10,10,'A child\'s bow. It\'s not all that well made.'),(6,'Wooden Shield','Armor',5,0,6,'A common shield made of softwood. Won\'t last long but it will do to block some damage.'),(7,'Health Potion','Potion',100,0,30,'A better than average health potion. When used, it will restore a decent amount of health.'),(8,'Mana Potion','Potion',100,0,30,'A better than average mana potion. When used, it will restore a decent amount of mana.'),(9,'Iron Sword','Weapon',13,2.5,40,'A common sword for a foot soldier. It can be lethal if wielded by a skillful warrior.'),(10,'Wooden Bow','Weapon',10,10,35,'A bow made by a professional weaponsmith.'),(11,'Iron Shield','Armor',10,0,35,'A metal shield made of iron. It\'s hefty and will stop weak attacks.'),(12,'Leath Helmet','Armor',2,0,8,'A light helmet made of leather. It will provide protection from light abrasions, but little else.');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
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
