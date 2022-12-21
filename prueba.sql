-- MariaDB dump 10.19  Distrib 10.11.0-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: prueba
-- ------------------------------------------------------
-- Server version	10.11.0-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ufc`
--

DROP TABLE IF EXISTS `ufc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ufc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Personaje` varchar(255) NOT NULL,
  `Estilo` varchar(255) NOT NULL,
  `Equipo` varchar(255) NOT NULL,
  `Peleas_Ganadas` int(3) NOT NULL,
  `Peleas_Empates` int(3) NOT NULL,
  `Peleas_Perdidas` int(3) NOT NULL,
  `Oponente` varchar(255) NOT NULL,
  `Activo` char(1) NOT NULL,
  `Creado` timestamp NULL DEFAULT current_timestamp(),
  `Modificado` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ufc`
--

LOCK TABLES `ufc` WRITE;
/*!40000 ALTER TABLE `ufc` DISABLE KEYS */;
INSERT INTO `ufc` VALUES
(1,'Connor McGregor','Boxeo','SBG Ireland',22,0,6,'Nate Diaz','S','2022-12-03 07:29:23','2022-12-03 07:29:23'),
(2,'Caín Velásquez','Wrestling','American Kickboxing Academy',17,0,3,'Júnior dos Santos','N','2022-12-03 07:31:22','2022-12-03 07:31:22'),
(3,'Fernando Sibaja','Taekwondo','Armakor TKD',10,2,4,'William Arroyo','S','2022-12-03 07:38:13','2022-12-03 07:38:13'),
(4,'Axel Cobos','Jiu Jitsu','Gracie JiuJitsu',14,2,6,'Juan Pérez','N','2022-12-03 08:15:46','2022-12-03 08:15:46');
/*!40000 ALTER TABLE `ufc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(255) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellidos` varchar(255) NOT NULL,
  `Edad` int(3) NOT NULL,
  `Genero` char(1) DEFAULT NULL,
  `Contrasena` varchar(255) NOT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Activo` char(1) NOT NULL,
  `Creado` timestamp NULL DEFAULT current_timestamp(),
  `Modificado` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES
(1,'ethansibaja@gmail.com','Ethan','Sibaja Valdés',22,'M','1234','2000-04-28','S','2022-10-28 17:20:08','2022-10-28 17:20:08'),
(2,'reynacansecohernandez@gmail.com','Reyna','Canseco Hernández',22,'F','1510','2000-10-15','N','2022-10-28 17:20:08','2022-10-28 17:20:08'),
(3,'vladimirsv@hotmail.com','Vladimir','Sibaja Valdés',19,'M','1111','2003-11-11','S','2022-10-28 17:20:08','2022-10-28 17:20:08'),
(4,'jhosselyngs@gmail.com','Jhosselyn','González Sánchez',22,'F','0807','2001-07-08','N','2022-10-28 17:20:08','2022-10-28 17:20:08'),
(5,'diamaromsi@gmail.com','Diana','Romero Sibaja',25,'','$2a$10$bqwUp1FRwVh5IpCW4QXfSOOl2tUMyEvUvP.toFMfThcSGtrNpK602','1900-01-01','S','2022-11-04 01:32:28','2022-11-04 01:32:28');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-03  2:58:24
