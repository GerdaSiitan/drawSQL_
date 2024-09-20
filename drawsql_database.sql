-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: drawsql
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `credits` bigint NOT NULL,
  `teacher` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('ART','Kunst',10,'op.perekonnanimi2'),('CHEM','Chemistry',25,'op.perekonnanimi1'),('GEO','Geograafia',20,'op.perekonnanimi4'),('MATH','Matemaatika',30,'op.Helme'),('PHYS','Füüsika',30,'op.perekonnanimi3');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `idvarch` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `dep_head` varchar(255) NOT NULL,
  PRIMARY KEY (`idvarch`),
  KEY `department_idvarch_index` (`idvarch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Meedia osakond','nimi1perekonnanimi1'),(2,'IT osakond','nimi1perekonnanimi2'),(3,'Elektroonika osakond','nimi1perekonnanimi3'),(4,'Inseneri osakond','nimi1perekonnanimi4'),(5,'SKibidi osakond','nimi1perekonnanimi5');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stgroup`
--

DROP TABLE IF EXISTS `stgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stgroup` (
  `id` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `departmbigintent` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stgroup_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stgroup`
--

LOCK TABLES `stgroup` WRITE;
/*!40000 ALTER TABLE `stgroup` DISABLE KEYS */;
INSERT INTO `stgroup` VALUES ('BM-23','2023','Skibidi osakond'),('MM-22','2022','Meedia osakond'),('SA-22','2022','Inseneri osakond'),('TA-22','2022','IT osakond'),('TA-23','2023','Elektroonika osakond');
/*!40000 ALTER TABLE `stgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `students_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83294469239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (12030943421,'nimi3','perekonnanimi3','2002-08-12','SA-22'),(12390123898,'nimi2','perekonnanimi2','2002-07-12','TA-23'),(32972489348,'nimi1','perekonnanimi1','2002-06-12','TA-22'),(60605089235,'Gerda','Siitan','2006-05-08','MM-22'),(83294469238,'Youngji','Lee','2002-05-12','BM-23');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_instructors`
--

DROP TABLE IF EXISTS `table_instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_instructors` (
  `id` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `table_instructors_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_instructors`
--

LOCK TABLES `table_instructors` WRITE;
/*!40000 ALTER TABLE `table_instructors` DISABLE KEYS */;
INSERT INTO `table_instructors` VALUES ('op.Helme','Martin','Helme','martin.helme@gmail.com'),('op.perekonnanimi1','nimi1','perekonnanimi1','email1@gmail.com'),('op.perekonnanimi2','nimi2','perekonnanimi2','email2@gmail.com'),('op.perekonnanimi3','nimi3','perekonnanimi3','email3@gmail.com'),('op.perekonnanimi4','nimi4','perekonnanimi4','email4@gmail.com');
/*!40000 ALTER TABLE `table_instructors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-20 10:31:29
