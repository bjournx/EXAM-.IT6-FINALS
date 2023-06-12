-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bjan
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `department` varchar(500) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Emmet Wehner','CEO','Human Resources','50,000'),(2,'Berneice Hilpert','Director','Human Resources','30,000'),(3,'Queenie West','CEO','Human Resources','50,000'),(4,'Pedro Olson','Employee','IT','20,000'),(5,'Davon Hayes Sr.','Employee','Marketing','40,000'),(6,'Miss Margret Zboncak','Supervisor','Finance','50,000'),(7,'Miss Delfina Kertzmann','Director','Marketing','20,000'),(8,'Jacquelyn Hayes III','Director','Finance','20,000'),(9,'Jada Stoltenberg','CEO','Sales','50,000'),(10,'Mr. Jalen Sanford PhD','CEO','Marketing','50,000'),(11,'Randi Treutel','Manager','Sales','30,000'),(12,'Kenny Heller','Manager','Finance','40,000'),(13,'Reggie Nolan','Supervisor','Sales','50,000'),(14,'Sylvester Huels','Manager','IT','40,000'),(15,'Lucile Emmerich','Director','Human Resources','50,000'),(16,'Addie Moen','CEO','Sales','40,000'),(17,'Rowan Champlin Sr.','Director','IT','40,000'),(18,'Evangeline Ruecker','Supervisor','Finance','40,000'),(19,'Jettie Emard','Employee','IT','30,000'),(20,'Billie Kris','Director','Finance','50,000'),(21,'Maybelle Green','Employee','Human Resources','30,000'),(22,'Ms. Ofelia Weissnat DVM','Supervisor','Finance','30,000'),(23,'Florence Pacocha','CEO','Sales','30,000'),(24,'Billy Wilderman','Manager','Human Resources','50,000'),(25,'Eloy Zemlak II','Supervisor','Sales','40,000'),(26,'Florencio Durgan','Employee','IT','40,000'),(27,'Ubaldo Padberg','Manager','Human Resources','20,000'),(28,'Prof. Travon Dach DVM','Manager','Human Resources','20,000'),(29,'Garnett Doyle','Manager','Human Resources','20,000'),(30,'Obie Rau','Director','Sales','30,000'),(31,'Velma Streich','CEO','Sales','50,000'),(32,'Hayley Carroll','Employee','IT','20,000'),(33,'Sadye Kuvalis','Supervisor','Human Resources','50,000'),(34,'Rowland Stokes','CEO','Sales','50,000'),(35,'Brice Kuhlman','CEO','Finance','50,000'),(36,'Velva Stroman','CEO','Sales','30,000'),(37,'Rosemary Weber II','CEO','Human Resources','50,000'),(38,'Prof. Pasquale Stokes','CEO','Finance','20,000'),(39,'Bernadette Kling MD','CEO','Finance','40,000'),(40,'Andres Friesen','Supervisor','Marketing','30,000'),(41,'William Hagenes','Manager','Sales','40,000'),(42,'Prof. Dudley Schamberger','Employee','Human Resources','50,000'),(43,'Clare Cruickshank','CEO','Sales','50,000'),(44,'Ms. Isabelle Keebler II','Director','Marketing','50,000'),(45,'Ms. Malinda Connelly','Manager','IT','30,000'),(46,'Mrs. Rita Carter','Supervisor','Finance','30,000'),(47,'Albin West','Director','IT','40,000'),(48,'Dr. Euna Lesch Jr.','Employee','Human Resources','30,000'),(49,'Reese Senger','Manager','IT','40,000'),(50,'Alfonzo Cole','Employee','IT','30,000'),(51,'Dr. Chadrick Considine','Supervisor','Human Resources','20,000'),(52,'Michele Lubowitz DVM','Employee','Human Resources','40,000'),(53,'Prof. Uriel Rolfson I','Employee','IT','30,000'),(54,'Bertha Kutch','CEO','Human Resources','30,000'),(55,'Axel Stanton','Manager','IT','20,000'),(56,'Freda Kutch','Director','Sales','30,000'),(57,'Mr. Bartholome Buckridge DDS','CEO','Marketing','20,000'),(58,'Rico Quitzon','CEO','Finance','50,000'),(59,'Mike Emmerich','Manager','Human Resources','40,000'),(60,'Prof. Joelle Gutmann','Manager','IT','50,000'),(61,'Leonardo Runolfsdottir','Employee','Sales','30,000'),(62,'Dr. Ben Reilly PhD','Supervisor','IT','50,000'),(63,'Dr. Margarita Stroman III','Director','Human Resources','50,000'),(64,'Uriah Walker II','Director','Sales','40,000'),(65,'Wava Welch PhD','Director','Finance','20,000'),(66,'Raphaelle Hudson V','Director','Finance','20,000'),(67,'Dr. Rusty Toy','Employee','Marketing','40,000'),(68,'Orlando Koch','Manager','Sales','30,000'),(69,'Ramona Ward','CEO','Finance','20,000'),(70,'Theron Rosenbaum','Supervisor','Human Resources','30,000'),(71,'Seth King','Manager','Marketing','50,000'),(72,'Miss Tiana Paucek II','Employee','IT','40,000'),(73,'Ibrahim Metz','Manager','Finance','40,000'),(74,'Amparo Mertz','CEO','Marketing','40,000'),(75,'Garrison Barton Sr.','CEO','Human Resources','30,000'),(76,'Pietro Homenick','Supervisor','IT','30,000'),(77,'Sheila Bahringer','Employee','IT','40,000'),(78,'Mr. Presley Durgan DDS','CEO','Marketing','40,000'),(79,'Elizabeth Graham I','Employee','IT','20,000');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-05 19:54:51
