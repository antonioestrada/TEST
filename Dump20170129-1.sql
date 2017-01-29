-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: gestion_granjas
-- ------------------------------------------------------
-- Server version	5.7.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bitacora_cuotas`
--

DROP TABLE IF EXISTS `bitacora_cuotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora_cuotas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periodo` varchar(2) DEFAULT NULL,
  `anio` varchar(4) DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `usuario_registro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_cuotas`
--

LOCK TABLES `bitacora_cuotas` WRITE;
/*!40000 ALTER TABLE `bitacora_cuotas` DISABLE KEYS */;
INSERT INTO `bitacora_cuotas` VALUES (1,'12','2014',1,'2015-01-01','joanesbe'),(2,'12','2014',2,'2015-01-01','joanesbe'),(3,'12','2014',3,'2015-01-01','joanesbe'),(46,'01','2015',2,'2017-01-21','joanesbe'),(47,'01','2015',3,'2017-01-21','joanesbe'),(48,'02','2015',2,'2017-01-21','joanesbe'),(49,'02','2015',3,'2017-01-21','joanesbe'),(50,'03','2015',2,'2017-01-21','joanesbe'),(51,'03','2015',3,'2017-01-21','joanesbe'),(52,'04','2015',2,'2017-01-21','joanesbe'),(53,'04','2015',3,'2017-01-21','joanesbe'),(54,'05','2015',2,'2017-01-21','joanesbe'),(55,'05','2015',3,'2017-01-21','joanesbe');
/*!40000 ALTER TABLE `bitacora_cuotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora_sistema`
--

DROP TABLE IF EXISTS `bitacora_sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora_sistema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) DEFAULT NULL,
  `modulo` varchar(150) DEFAULT NULL,
  `accion` varchar(150) DEFAULT NULL,
  `cod_resultado` varchar(10) DEFAULT NULL,
  `resultado` varchar(200) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_sistema`
--

LOCK TABLES `bitacora_sistema` WRITE;
/*!40000 ALTER TABLE `bitacora_sistema` DISABLE KEYS */;
INSERT INTO `bitacora_sistema` VALUES (1,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-15 13:31:35'),(2,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-15 13:40:22'),(3,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-15 13:47:24'),(4,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-15 13:58:19'),(5,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-15 14:04:43'),(6,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-15 14:05:01'),(7,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-15 14:13:22'),(8,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-15 14:13:37'),(9,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-15 14:43:08'),(10,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-15 14:43:26'),(11,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-15 14:50:14'),(12,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-15 14:51:42'),(13,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-15 14:59:02'),(14,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-15 15:11:16'),(15,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-15 15:15:45'),(16,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-15 15:16:14'),(17,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-15 15:26:15'),(18,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-15 15:27:06'),(19,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Marzo','OK','Satisfactorio','2017-01-15 15:33:37'),(20,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Marzo','OK','Satisfactorio','2017-01-15 15:33:55'),(21,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Abril','OK','Satisfactorio','2017-01-15 15:43:15'),(22,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Abril','OK','Satisfactorio','2017-01-15 15:43:35'),(23,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Abril','OK','Satisfactorio','2017-01-15 16:04:30'),(24,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Mayo','OK','Satisfactorio','2017-01-15 16:22:25'),(25,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Mayo','OK','Satisfactorio','2017-01-15 16:22:42'),(26,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Mayo','OK','Satisfactorio','2017-01-15 16:45:45'),(27,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Mayo','OK','Satisfactorio','2017-01-15 16:46:04'),(28,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Mayo','OK','Satisfactorio','2017-01-15 17:20:14'),(29,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Mayo','OK','Satisfactorio','2017-01-15 18:20:09'),(30,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Mayo','OK','Satisfactorio','2017-01-15 18:21:35'),(31,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Junio','OK','Satisfactorio','2017-01-15 18:28:30'),(32,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Junio','OK','Satisfactorio','2017-01-15 18:28:51'),(33,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Julio','OK','Satisfactorio','2017-01-15 18:52:49'),(34,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Julio','OK','Satisfactorio','2017-01-15 18:53:05'),(35,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-15 20:13:53'),(36,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-15 20:14:10'),(37,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-15 20:21:17'),(38,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-15 20:21:42'),(39,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:06:20'),(40,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:14:33'),(41,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:15:38'),(42,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:18:54'),(43,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:19:11'),(44,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:19:40'),(45,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:21:37'),(46,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:21:51'),(47,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:22:25'),(48,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:24:14'),(49,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:24:36'),(50,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:25:01'),(51,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:25:15'),(52,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:31:28'),(53,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:31:42'),(54,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:32:06'),(55,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:32:22'),(56,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:36:08'),(57,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:36:25'),(58,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:37:11'),(59,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:38:25'),(60,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:44:15'),(61,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:44:37'),(62,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:44:58'),(63,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:45:22'),(64,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:48:26'),(65,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 20:48:45'),(66,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:50:51'),(67,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 20:52:05'),(68,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Marzo','OK','Satisfactorio','2017-01-21 20:54:42'),(69,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Marzo','OK','Satisfactorio','2017-01-21 20:54:57'),(70,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Abril','OK','Satisfactorio','2017-01-21 20:58:50'),(71,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Abril','OK','Satisfactorio','2017-01-21 20:59:23'),(72,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 21:03:55'),(73,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 21:04:08'),(74,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 21:04:53'),(75,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 21:05:08'),(76,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Marzo','OK','Satisfactorio','2017-01-21 21:06:11'),(77,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Marzo','OK','Satisfactorio','2017-01-21 21:06:25'),(78,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Abril','OK','Satisfactorio','2017-01-21 21:09:20'),(79,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Abril','OK','Satisfactorio','2017-01-21 21:09:35'),(80,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 21:18:44'),(81,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Enero','OK','Satisfactorio','2017-01-21 21:19:05'),(82,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 21:19:29'),(83,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Febrero','OK','Satisfactorio','2017-01-21 21:19:48'),(84,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Marzo','OK','Satisfactorio','2017-01-21 21:20:17'),(85,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Marzo','OK','Satisfactorio','2017-01-21 21:20:31'),(86,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Abril','OK','Satisfactorio','2017-01-21 21:20:58'),(87,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Abril','OK','Satisfactorio','2017-01-21 21:21:11'),(88,'joanesbe','Administracion.Mantenimiento.Generacion Cuotas Mantenimiento','Generacion de cuotas del mes :Mayo','OK','Satisfactorio','2017-01-21 21:21:55'),(89,'joanesbe','Administracion.Cuotas Agua.Generacion Cuotas de Agua','Generacion de cuotas del mes :Mayo','OK','Satisfactorio','2017-01-21 21:22:21');
/*!40000 ALTER TABLE `bitacora_sistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_anio`
--

DROP TABLE IF EXISTS `cat_anio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_anio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anio` varchar(4) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_anio`
--

LOCK TABLES `cat_anio` WRITE;
/*!40000 ALTER TABLE `cat_anio` DISABLE KEYS */;
INSERT INTO `cat_anio` VALUES (1,'2015','A','2015-01-01'),(2,'2016','P','2016-01-01');
/*!40000 ALTER TABLE `cat_anio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_bancos`
--

DROP TABLE IF EXISTS `cat_bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_bancos` (
  `id_banco` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(100) DEFAULT NULL,
  `cuenta_contable` varchar(45) DEFAULT NULL,
  `subcuenta_contable` varchar(45) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT 'A',
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_banco`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_bancos`
--

LOCK TABLES `cat_bancos` WRITE;
/*!40000 ALTER TABLE `cat_bancos` DISABLE KEYS */;
INSERT INTO `cat_bancos` VALUES (1,'HSBC',NULL,'1000-001','A','2016-10-03'),(2,'BANAMEX',NULL,'1000-002','A','2016-10-03');
/*!40000 ALTER TABLE `cat_bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_colonos`
--

DROP TABLE IF EXISTS `cat_colonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_colonos` (
  `id_colono` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(240) DEFAULT NULL,
  `direccion` text,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `cuenta_contable` varchar(45) DEFAULT NULL,
  `subcuenta_contable` varchar(45) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT 'A',
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_colono`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_colonos`
--

LOCK TABLES `cat_colonos` WRITE;
/*!40000 ALTER TABLE `cat_colonos` DISABLE KEYS */;
INSERT INTO `cat_colonos` VALUES (1,'ADRIAN  VALDES  HERNANDEZ','','4271482522','joanesbe@gmail.com',NULL,NULL,'A','2016-10-20'),(2,'BEATRIZ  MASSO  ROSALES','','','joanesbe@gmail.com',NULL,NULL,'A','2016-10-20'),(3,'CASA CLUB','','','joanesbe@gmail.com',NULL,NULL,'A','2016-10-20');
/*!40000 ALTER TABLE `cat_colonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_conceptos`
--

DROP TABLE IF EXISTS `cat_conceptos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_conceptos` (
  `id_concepto` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(100) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_concepto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_conceptos`
--

LOCK TABLES `cat_conceptos` WRITE;
/*!40000 ALTER TABLE `cat_conceptos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_conceptos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_estatus`
--

DROP TABLE IF EXISTS `cat_estatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_estatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(2) NOT NULL,
  `Descripcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_estatus`
--

LOCK TABLES `cat_estatus` WRITE;
/*!40000 ALTER TABLE `cat_estatus` DISABLE KEYS */;
INSERT INTO `cat_estatus` VALUES (1,'A','Activo','2016-09-01'),(2,'V','Vencido','2016-09-01'),(3,'S','Saldado','2016-09-01'),(4,'C','Convenio','2016-09-01'),(5,'I','Inactivo','2016-09-01'),(6,'P','Pendiente','2016-09-01'),(7,'X','Cancelado','2016-09-01'),(8,'R','Reverso',NULL);
/*!40000 ALTER TABLE `cat_estatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_funcionalidad`
--

DROP TABLE IF EXISTS `cat_funcionalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_funcionalidad` (
  `id_funcionalidad` int(11) NOT NULL AUTO_INCREMENT,
  `funcionalidad` varchar(60) DEFAULT NULL,
  `fecha_registro` varchar(12) DEFAULT NULL,
  `estatus` date DEFAULT NULL,
  PRIMARY KEY (`id_funcionalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalogo de las funcionalidades por modulo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_funcionalidad`
--

LOCK TABLES `cat_funcionalidad` WRITE;
/*!40000 ALTER TABLE `cat_funcionalidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_funcionalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_lotes`
--

DROP TABLE IF EXISTS `cat_lotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_lotes` (
  `id_lote` int(11) NOT NULL AUTO_INCREMENT,
  `lote` varchar(10) DEFAULT NULL,
  `id_manzana` int(11) DEFAULT NULL,
  `id_colono` int(11) DEFAULT NULL,
  `metros_cuadrados` double DEFAULT NULL,
  `estatus` varchar(2) DEFAULT 'A',
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_lote`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='determina los m2 del lote y la manzana a la que pertenece.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_lotes`
--

LOCK TABLES `cat_lotes` WRITE;
/*!40000 ALTER TABLE `cat_lotes` DISABLE KEYS */;
INSERT INTO `cat_lotes` VALUES (1,'1',1,1,2500,'A','2016-10-03'),(2,'1',2,2,5000,'A','2016-10-20'),(3,'1',3,3,2500,'A','2016-10-03'),(4,'2',3,3,4500,'A','2016-10-03');
/*!40000 ALTER TABLE `cat_lotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_manzanas`
--

DROP TABLE IF EXISTS `cat_manzanas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_manzanas` (
  `id_manzana` int(11) NOT NULL AUTO_INCREMENT,
  `manzana` varchar(10) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT 'A',
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_manzana`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_manzanas`
--

LOCK TABLES `cat_manzanas` WRITE;
/*!40000 ALTER TABLE `cat_manzanas` DISABLE KEYS */;
INSERT INTO `cat_manzanas` VALUES (1,'I','A','2016-10-03'),(2,'II','A','2016-10-20'),(3,'III','A','2016-10-03');
/*!40000 ALTER TABLE `cat_manzanas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_medidores`
--

DROP TABLE IF EXISTS `cat_medidores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_medidores` (
  `id_medidor` int(11) NOT NULL AUTO_INCREMENT,
  `id_lote` int(11) DEFAULT NULL,
  `contrato` varchar(45) DEFAULT NULL,
  `medidor` varchar(45) DEFAULT NULL,
  `base_cna` double DEFAULT NULL,
  `estatus` varchar(12) DEFAULT 'A',
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_medidor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_medidores`
--

LOCK TABLES `cat_medidores` WRITE;
/*!40000 ALTER TABLE `cat_medidores` DISABLE KEYS */;
INSERT INTO `cat_medidores` VALUES (1,1,'01-01','123a',81,'A','2016-10-03'),(2,2,'02-01','123b',126,'A','2016-10-20'),(3,3,'03-01','123',81,'A','2016-10-03'),(4,4,'03-01A','123A',117,'A','2016-10-03'),(5,4,'03-02B','123C',117,'A','2016-10-03');
/*!40000 ALTER TABLE `cat_medidores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_modulos`
--

DROP TABLE IF EXISTS `cat_modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_modulos` (
  `id_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `tipo_modulo` varchar(2) DEFAULT NULL COMMENT '1 es modulo\n2 es submodulo',
  `relacion` int(11) DEFAULT NULL,
  `id_componente` varchar(100) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='definicion de modulos\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_modulos`
--

LOCK TABLES `cat_modulos` WRITE;
/*!40000 ALTER TABLE `cat_modulos` DISABLE KEYS */;
INSERT INTO `cat_modulos` VALUES (1,'Administracion',NULL,'1',0,'tpAdmon','A',NULL),(2,'Finanzas',NULL,'1',0,'tpFinanzas','A',NULL),(3,'Catalogos',NULL,'1',0,'tpCatalogos','A',NULL),(4,'Configuracion',NULL,'1',0,'tpConfig','A',NULL),(5,'Mantenimiento',NULL,'2',1,'menuAManto','A',NULL),(6,'Cuotas de Agua',NULL,'2',1,'menuAAgua','A',NULL),(7,'Reportes',NULL,'2',1,'menuAReportes','A',NULL),(8,'Generacion de Cuotas del Mes',NULL,'3',5,'amGeneracionCM','A',NULL),(9,'Imprimir Avisos de Cobranza',NULL,'3',5,'amImprimirAC','A',NULL),(10,'Registro de Convenios',NULL,'3',5,'amConvenios','A',NULL),(11,'Caja General',NULL,'2',2,'menuFCaja','A',NULL),(12,'Credito y Cobranza',NULL,'2',2,'menuFCobranza','A',NULL),(13,'Reportes',NULL,'2',2,'menuFReportes','A',NULL),(14,'General',NULL,'2',3,'menuCGeneral','A',NULL),(15,'Sistema',NULL,'2',3,'menuCSistema','A',NULL);
/*!40000 ALTER TABLE `cat_modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_parametros`
--

DROP TABLE IF EXISTS `cat_parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_parametros` (
  `id_param` int(11) NOT NULL AUTO_INCREMENT,
  `code_param` varchar(45) DEFAULT NULL,
  `descripcion` varchar(245) DEFAULT NULL,
  `valor` varchar(145) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT 'A',
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_param`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_parametros`
--

LOCK TABLES `cat_parametros` WRITE;
/*!40000 ALTER TABLE `cat_parametros` DISABLE KEYS */;
INSERT INTO `cat_parametros` VALUES (1,'param_CNA1','Valor 1 para Calculo CNA','0.33','A','2016-09-04'),(2,'param_CNA2','Valor 2 para Calculo CNA','30','A','2016-01-01'),(3,'param_CNA3','Valor 3 para Calculo CNA','36','A','2016-01-01'),(4,'param_MANTO1','Tipo de Calculo para Mantenimiento','2','A','2016-01-01'),(5,'param_MANTO2','Base para el Calculo de Mantenimiento','0.33','A','2016-01-01'),(6,'PARAM_OTRO','PARAMETRO PARA CALCULO DE CEA','10.5','A','2016-09-04'),(7,'PARAM_OTRO2','PARAMETRO PARA CALCULO DE CEA','10.5','B','2016-09-04'),(8,'param_BCNA','PARAMETRO PARA EL CALCULO DE BCNA Tarifa 1','5.23','A','2017-01-15'),(9,'param_EMAIL1','Servidor de Correo Saliente','smtp.ipage.com','A','2016-10-19'),(10,'param_EMAIL2','Puerto de Correo','587','A','2016-10-19'),(11,'param_EMAIL3','cuenta','antonio.estrada@dstx.mx','A','2016-10-19'),(12,'param_EMAIL4','contraseña','PASS(jeaoeabz17)','A','2016-10-19'),(13,'param_CBASE2','PARAMETRO PARA EL CALCULO TARIFA2','22.50','A','2017-01-15'),(14,'param_BEXCEDENTE2','PARAMETRO PARA EL CALCULO TARIFA 2 MAS 200 M3','39.10','A','2017-01-15'),(15,'param_General1','Nombre de la empresa','ASOCIACION DE COLONOS DE GRANJAS RESIDENCIALES DE TEQUISQUIAPAN, A.C.','A','2016-10-17'),(16,'param_General2','RFC de la empresa','ACG-770310-DG5','A','2016-10-17'),(17,'param_General3','Direccion de la empresa','Oficinas en Casa Club. Calzada San José No. 204 Granjas Residenciales, 76750 Tequisquiapan, Qro.','A','2016-10-17'),(18,'param_General4','Datos de contacto de la empresa','Tel. y Fax: 01 (414) 273 92 44 Apdo. Postal 106 e-mail: granjastx@prodigy.net.mx','A','2016-10-17'),(19,'param_General5','Escritura de empresa','Escritura Pública No. 15,828 de fecha 10 de febrero de 1977 en México, D.F.','A','2016-10-17'),(20,'param_General6','Registro de empresa','Registro Público de la propiedad y el Comercio partida No. 7 libro 9 secc. V: 01 de febrero de 1979','A','2016-10-17'),(21,'param_EMAIL5','ASUNTO','ENVIO DE REPORTE','A','2016-10-17'),(22,'param_EMAIL6','MENSAJE','SE ADJUNTA REPORTE','A','2016-10-17');
/*!40000 ALTER TABLE `cat_parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_perfiles`
--

DROP TABLE IF EXISTS `cat_perfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_perfiles` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Definicion de perfiles.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_perfiles`
--

LOCK TABLES `cat_perfiles` WRITE;
/*!40000 ALTER TABLE `cat_perfiles` DISABLE KEYS */;
INSERT INTO `cat_perfiles` VALUES (1,'Administrador','A','2016-10-01'),(2,'Cajero','A','2016-10-20');
/*!40000 ALTER TABLE `cat_perfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_periodos`
--

DROP TABLE IF EXISTS `cat_periodos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_periodos` (
  `id` int(11) NOT NULL,
  `periodo` varchar(2) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT 'I',
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_periodos`
--

LOCK TABLES `cat_periodos` WRITE;
/*!40000 ALTER TABLE `cat_periodos` DISABLE KEYS */;
INSERT INTO `cat_periodos` VALUES (1,'01','Enero','I','2016-09-01'),(2,'02','Febrero','I','2016-09-01'),(3,'03','Marzo','I','2016-09-01'),(4,'04','Abril','I','2016-09-01'),(5,'05','Mayo','A','2016-09-01'),(6,'06','Junio','I','2016-09-01'),(7,'07','Julio','I','2016-09-01'),(8,'08','Agosto','I','2016-09-01'),(9,'09','Septiembre','I','2016-09-01'),(10,'10','Octubre','I','2016-09-01'),(11,'11','Noviembre','I','2016-09-01'),(12,'12','Diciembre','I','2016-09-01');
/*!40000 ALTER TABLE `cat_periodos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_puestos`
--

DROP TABLE IF EXISTS `cat_puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_puestos` (
  `id_puesto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_puesto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Definicion de puestos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_puestos`
--

LOCK TABLES `cat_puestos` WRITE;
/*!40000 ALTER TABLE `cat_puestos` DISABLE KEYS */;
INSERT INTO `cat_puestos` VALUES (1,'Administrador','A','2010-10-01'),(2,'Contador','A','2016-10-20');
/*!40000 ALTER TABLE `cat_puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_servicios`
--

DROP TABLE IF EXISTS `cat_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_servicios` (
  `id_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `folio` varchar(45) DEFAULT NULL,
  `servicio` varchar(100) DEFAULT NULL,
  `cuota` decimal(10,0) NOT NULL,
  `periodo` varchar(45) NOT NULL COMMENT 'E.J. JUNIO, JULIO\n',
  `ejercicio` varchar(4) NOT NULL,
  `tipo` varchar(2) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `fecha_registro` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_servicios`
--

LOCK TABLES `cat_servicios` WRITE;
/*!40000 ALTER TABLE `cat_servicios` DISABLE KEYS */;
INSERT INTO `cat_servicios` VALUES (1,'PANT00-MA','Anticipo Mantenimiento',0,'00','2016','PM','A','2016-09-07'),(2,'C00-MA','Cuota Mantenimiento',0,'00','2016','SE','A','2016-09-07'),(3,'C00-AG','Cuota Agua',0,'00','2016','SE','A','2016-09-07'),(4,'CONV','Convenio',0,'00','2016','SE','A','2016-09-26'),(5,'ING-CCLUB','Ingresos Casa Club',0,'00','2016','SE','A','2017-01-08');
/*!40000 ALTER TABLE `cat_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_tipopago`
--

DROP TABLE IF EXISTS `cat_tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_tipopago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_tipopago`
--

LOCK TABLES `cat_tipopago` WRITE;
/*!40000 ALTER TABLE `cat_tipopago` DISABLE KEYS */;
INSERT INTO `cat_tipopago` VALUES (1,'ACTIVO','2016-09-01'),(2,'VENCIDO','2016-09-01'),(3,'ANTICIPO','2016-09-01'),(4,'CONVENIO','2016-09-01'),(9,'MORATORIO',NULL);
/*!40000 ALTER TABLE `cat_tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_usuarios`
--

DROP TABLE IF EXISTS `cat_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `puesto` varchar(2) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `id_perfil` varchar(2) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tabla para la gestion del catalogo de usuarios registrados en el sistema.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_usuarios`
--

LOCK TABLES `cat_usuarios` WRITE;
/*!40000 ALTER TABLE `cat_usuarios` DISABLE KEYS */;
INSERT INTO `cat_usuarios` VALUES (1,'Jose Antonio Estrada','Gregorio Moreno','1','joanesbe','123','1','A','2016-01-01'),(2,'Yolanda','Hacienda Grande','2','usuario','contraseña','2','A','2016-10-20');
/*!40000 ALTER TABLE `cat_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenios`
--

DROP TABLE IF EXISTS `convenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `convenios` (
  `id_convenio` int(11) NOT NULL AUTO_INCREMENT,
  `convenio` varchar(100) DEFAULT NULL,
  `id_lote` varchar(10) DEFAULT NULL,
  `importe_total` double DEFAULT NULL,
  `importe_convenio` double DEFAULT NULL,
  `pago_mensual` double DEFAULT NULL,
  `dialimite_pago` int(11) DEFAULT NULL,
  `num_parcialidades` int(11) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_convenio`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenios`
--

LOCK TABLES `convenios` WRITE;
/*!40000 ALTER TABLE `convenios` DISABLE KEYS */;
INSERT INTO `convenios` VALUES (1,NULL,'4',24607.5633435,24607.56,1000,30,25,'A','2017-01-28');
/*!40000 ALTER TABLE `convenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenios_detalle`
--

DROP TABLE IF EXISTS `convenios_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `convenios_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_convenio` int(11) DEFAULT NULL,
  `id_pago` int(11) DEFAULT NULL,
  `cuota` double DEFAULT NULL,
  `num_pago` int(11) DEFAULT NULL,
  `fecha_convenio` date DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `moratorio` double DEFAULT NULL,
  `fecha_moratorio` date DEFAULT NULL,
  `fecha_cambio` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenios_detalle`
--

LOCK TABLES `convenios_detalle` WRITE;
/*!40000 ALTER TABLE `convenios_detalle` DISABLE KEYS */;
INSERT INTO `convenios_detalle` VALUES (1,1,1,1000,1,'2015-06-30','S',NULL,NULL,NULL),(2,1,NULL,1000,2,'2015-07-30','A',NULL,NULL,NULL),(3,1,NULL,1000,3,'2015-08-30','A',NULL,NULL,NULL),(4,1,NULL,1000,4,'2015-09-30','A',NULL,NULL,NULL),(5,1,NULL,1000,5,'2015-10-30','A',NULL,NULL,NULL),(6,1,NULL,1000,6,'2015-11-30','A',NULL,NULL,NULL),(7,1,NULL,1000,7,'2015-12-30','A',NULL,NULL,NULL),(8,1,NULL,1000,8,'2016-01-30','A',NULL,NULL,NULL),(9,1,NULL,1000,9,'2016-02-29','A',NULL,NULL,NULL),(10,1,NULL,1000,10,'2016-03-30','A',NULL,NULL,NULL),(11,1,NULL,1000,11,'2016-04-30','A',NULL,NULL,NULL),(12,1,NULL,1000,12,'2016-05-30','A',NULL,NULL,NULL),(13,1,NULL,1000,13,'2016-06-30','A',NULL,NULL,NULL),(14,1,NULL,1000,14,'2016-07-30','A',NULL,NULL,NULL),(15,1,NULL,1000,15,'2016-08-30','A',NULL,NULL,NULL),(16,1,NULL,1000,16,'2016-09-30','A',NULL,NULL,NULL),(17,1,NULL,1000,17,'2016-10-30','A',NULL,NULL,NULL),(18,1,NULL,1000,18,'2016-11-30','A',NULL,NULL,NULL),(19,1,NULL,1000,19,'2016-12-30','A',NULL,NULL,NULL),(20,1,NULL,1000,20,'2017-01-30','A',NULL,NULL,NULL),(21,1,NULL,1000,21,'2017-02-28','A',NULL,NULL,NULL),(22,1,NULL,1000,22,'2017-03-30','A',NULL,NULL,NULL),(23,1,NULL,1000,23,'2017-04-30','A',NULL,NULL,NULL),(24,1,NULL,1000,24,'2017-05-30','A',NULL,NULL,NULL),(25,1,NULL,607.5600000000013,25,'2017-06-30','A',NULL,NULL,NULL);
/*!40000 ALTER TABLE `convenios_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuotas_base_agua`
--

DROP TABLE IF EXISTS `cuotas_base_agua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuotas_base_agua` (
  `folio` int(11) NOT NULL AUTO_INCREMENT,
  `id_factor` int(11) DEFAULT NULL,
  `periodo` varchar(2) DEFAULT NULL,
  `anio` varchar(4) DEFAULT NULL,
  `cuota` double DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`folio`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuotas_base_agua`
--

LOCK TABLES `cuotas_base_agua` WRITE;
/*!40000 ALTER TABLE `cuotas_base_agua` DISABLE KEYS */;
INSERT INTO `cuotas_base_agua` VALUES (1,1,'01','2015',100,'2015-01-01'),(2,2,'01','2015',100,'2015-01-01'),(3,3,'01','2015',100,'2015-01-01'),(4,4,'01','2015',100,'2015-01-01'),(5,5,'01','2015',100,'2015-01-01'),(6,1,'02','2015',100,'2015-01-01'),(7,2,'02','2015',100,'2015-01-01'),(8,3,'02','2015',100,'2015-01-01'),(9,4,'02','2015',100,'2015-01-01'),(10,5,'02','2015',100,'2015-01-01'),(11,1,'03','2015',100,'2015-01-01'),(12,2,'03','2015',100,'2015-01-01'),(13,3,'03','2015',100,'2015-01-01'),(14,4,'03','2015',100,'2015-01-01'),(15,5,'03','2015',100,'2015-01-01'),(16,1,'04','2015',100,'2015-01-01'),(17,2,'04','2015',100,'2015-01-01'),(18,3,'04','2015',100,'2015-01-01'),(19,4,'04','2015',100,'2015-01-01'),(20,5,'04','2015',100,'2015-01-01'),(21,1,'05','2015',100,'2015-01-01'),(22,2,'05','2015',100,'2015-01-01'),(23,3,'05','2015',100,'2015-01-01'),(24,4,'05','2015',100,'2015-01-01'),(25,5,'05','2015',100,'2015-01-01'),(26,1,'06','2015',100,'2015-01-01'),(27,2,'06','2015',100,'2015-01-01'),(28,3,'06','2015',100,'2015-01-01'),(29,4,'06','2015',100,'2015-01-01'),(30,5,'06','2015',100,'2015-01-01'),(31,1,'07','2015',100,'2015-01-01'),(32,2,'07','2015',100,'2015-01-01'),(33,3,'07','2015',100,'2015-01-01'),(34,4,'07','2015',100,'2015-01-01'),(35,5,'07','2015',100,'2015-01-01');
/*!40000 ALTER TABLE `cuotas_base_agua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_accesos`
--

DROP TABLE IF EXISTS `detalle_accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_accesos` (
  `id_detalleA` int(11) NOT NULL AUTO_INCREMENT,
  `id_perfil` varchar(2) NOT NULL,
  `id_modulo` varchar(2) NOT NULL,
  PRIMARY KEY (`id_detalleA`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_accesos`
--

LOCK TABLES `detalle_accesos` WRITE;
/*!40000 ALTER TABLE `detalle_accesos` DISABLE KEYS */;
INSERT INTO `detalle_accesos` VALUES (1,'1','1'),(2,'1','2'),(3,'1','3'),(4,'1','4'),(5,'1','5'),(6,'1','6'),(7,'1','7'),(8,'1','8'),(9,'1','9'),(10,'1','10'),(15,'1','11'),(16,'1','12'),(24,'3','9'),(25,'1','14'),(26,'1','15'),(27,'3','5'),(28,'3','8'),(30,'3','1'),(31,'4','11'),(32,'2','2'),(33,'2','11'),(34,'2','12'),(35,'2','13');
/*!40000 ALTER TABLE `detalle_accesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_anticipos`
--

DROP TABLE IF EXISTS `detalle_anticipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_anticipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_factor` int(11) DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  `importe_efectivo` double DEFAULT NULL,
  `no_cheque` varchar(45) DEFAULT NULL,
  `banco_cheque` varchar(2) DEFAULT NULL,
  `importe_cheque` double DEFAULT NULL,
  `no_ficha` varchar(45) DEFAULT NULL,
  `banco_ficha` varchar(2) DEFAULT NULL,
  `importe_ficha` double DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `fecha_anticipo` date DEFAULT NULL,
  `id_pago` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_anticipos`
--

LOCK TABLES `detalle_anticipos` WRITE;
/*!40000 ALTER TABLE `detalle_anticipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_anticipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_funcionalidad`
--

DROP TABLE IF EXISTS `detalle_funcionalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_funcionalidad` (
  `id_modulo` varchar(2) NOT NULL,
  `id_funcionalidad` varchar(2) NOT NULL,
  `id_perfil` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_funcionalidad`
--

LOCK TABLES `detalle_funcionalidad` WRITE;
/*!40000 ALTER TABLE `detalle_funcionalidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_funcionalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excedente`
--

DROP TABLE IF EXISTS `excedente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `excedente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  `costo` double DEFAULT NULL,
  `rangoIni` int(11) DEFAULT NULL,
  `rangoFin` int(11) DEFAULT NULL,
  `tarifa` int(11) DEFAULT NULL COMMENT 'Tarifa 1 y Tarifa 2',
  `estatus` varchar(2) DEFAULT 'A',
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excedente`
--

LOCK TABLES `excedente` WRITE;
/*!40000 ALTER TABLE `excedente` DISABLE KEYS */;
INSERT INTO `excedente` VALUES (1,'1 A 30',3.69,1,30,1,'A','2016-10-20'),(2,'31 A 50',4.04,31,50,1,'A','2016-09-26'),(3,'51 A 100',4.55,51,100,1,'A','2016-09-28'),(4,'101 A 200',6.15,101,200,1,'A','2016-10-20'),(5,'201 A 300',7.5,201,300,1,'A','2016-09-26'),(6,'301 A 3000',11.66,301,3000,1,'A','2016-09-26'),(7,'3001 A 999999',20.79,3001,999999,1,'A','2016-09-26'),(8,'',4.51,1,1,2,'A','2016-09-20'),(9,'',9.04,2,2,2,'A','2016-09-20'),(10,'',13.59,3,3,2,'A','2016-09-20'),(11,'',18.16,4,4,2,'A','2016-09-20'),(12,'',22.75,5,5,2,'A','2016-09-20'),(13,'',27.36,6,6,2,'A','2016-09-20'),(14,'',31.99,7,7,2,'A','2016-09-20'),(15,'',36.64,8,8,2,'A','2016-09-20'),(16,'',41.31,9,9,2,'A','2016-09-20'),(17,'',46,10,10,2,'A','2016-09-20'),(18,'',50.71,11,11,2,'A','2016-09-20'),(19,'',55.92,12,12,2,'A','2016-09-20'),(20,'',61.23,13,13,2,'A','2016-09-20'),(21,'',66.64,14,14,2,'A','2016-09-20'),(22,'',72.15,15,15,2,'A','2016-09-20'),(23,'',77.76,16,16,2,'A','2016-09-20'),(24,'',83.47,17,17,2,'A','2016-09-20'),(25,'',89.28,18,18,2,'A','2016-09-20'),(26,'',95.19,19,19,2,'A','2016-09-20'),(27,'',101.2,20,20,2,'A','2016-09-20'),(28,'',107.31,21,21,2,'A','2016-09-20'),(29,'',113.52,22,22,2,'A','2016-09-20'),(30,'',119.83,23,23,2,'A','2016-09-20'),(31,'',126.24,24,24,2,'A','2016-09-20'),(32,'',132.75,25,25,2,'A','2016-09-20'),(33,'',139.36,26,26,2,'A','2016-09-20'),(34,'',146.07,27,27,2,'A','2016-09-20'),(35,'',152.88,28,28,2,'A','2016-09-20'),(36,'',159.79,29,29,2,'A','2016-09-20'),(37,'',166.8,30,30,2,'A','2016-09-20'),(38,'',173.91,31,31,2,'A','2016-09-20'),(39,'',181.12,32,32,2,'A','2016-09-20'),(40,'',188.43,33,33,2,'A','2016-09-20'),(41,'',195.84,34,34,2,'A','2016-09-20'),(42,'',203.35,35,35,2,'A','2016-09-20'),(43,'',210.96,36,36,2,'A','2016-09-20'),(44,'',218.67,37,37,2,'A','2016-09-20'),(45,'',230.28,38,38,2,'A','2016-09-20'),(46,'',242.19,39,39,2,'A','2016-09-20'),(47,'',254.4,40,40,2,'A','2016-09-20'),(48,'',266.91,41,41,2,'A','2016-09-20'),(49,'',277.62,42,42,2,'A','2016-09-20'),(50,'',288.53,43,43,2,'A','2016-09-20'),(51,'',299.64,44,44,2,'A','2016-09-20'),(52,'',310.95,45,45,2,'A','2016-09-20'),(53,'',322.46,46,46,2,'A','2016-09-20'),(54,'',334.17,47,47,2,'A','2016-09-20'),(55,'',346.08,48,48,2,'A','2016-09-20'),(56,'',358.19,49,49,2,'A','2016-09-20'),(57,'',370.5,50,50,2,'A','2016-09-20'),(58,'',383.01,51,51,2,'A','2016-09-20'),(59,'',416.52,52,52,2,'A','2016-09-20'),(60,'',451.03,53,53,2,'A','2016-09-20'),(61,'',486.54,54,54,2,'A','2016-09-20'),(62,'',523.05,55,55,2,'A','2016-09-20'),(63,'',560.56,56,56,2,'A','2016-09-20'),(64,'',599.07,57,57,2,'A','2016-09-20'),(65,'',638.58,58,58,2,'A','2016-09-20'),(66,'',679.09,59,59,2,'A','2016-09-20'),(67,'',720.6,60,60,2,'A','2016-09-20'),(68,'',763.11,61,61,2,'A','2016-09-20'),(69,'',791.12,62,62,2,'A','2016-09-20'),(70,'',819.63,63,63,2,'A','2016-09-20'),(71,'',848.64,64,64,2,'A','2016-09-20'),(72,'',878.15,65,65,2,'A','2016-09-20'),(73,'',908.16,66,66,2,'A','2016-09-20'),(74,'',938.67,67,67,2,'A','2016-09-20'),(75,'',969.68,68,68,2,'A','2016-09-20'),(76,'',1001.19,69,69,2,'A','2016-09-20'),(77,'',1033.2,70,70,2,'A','2016-09-20'),(78,'',1065.71,71,71,2,'A','2016-09-20'),(79,'',1098.72,72,72,2,'A','2016-09-20'),(80,'',1132.23,73,73,2,'A','2016-09-20'),(81,'',1166.24,74,74,2,'A','2016-09-20'),(82,'',1200.75,75,75,2,'A','2016-09-20'),(83,'',1235.76,76,76,2,'A','2016-09-20'),(84,'',1271.27,77,77,2,'A','2016-09-20'),(85,'',1307.28,78,78,2,'A','2016-09-20'),(86,'',1343.79,79,79,2,'A','2016-09-20'),(87,'',1380.8,80,80,2,'A','2016-09-20'),(88,'',1418.31,81,81,2,'A','2016-09-20'),(89,'',1448.12,82,82,2,'A','2016-09-20'),(90,'',1478.23,83,83,2,'A','2016-09-20'),(91,'',1508.64,84,84,2,'A','2016-09-20'),(92,'',1539.35,85,85,2,'A','2016-09-20'),(93,'',1570.36,86,86,2,'A','2016-09-20'),(94,'',1601.67,87,87,2,'A','2016-09-20'),(95,'',1633.28,88,88,2,'A','2016-09-20'),(96,'',1665.19,89,89,2,'A','2016-09-20'),(97,'',1697.4,90,90,2,'A','2016-09-20'),(98,'',1729.91,91,91,2,'A','2016-09-20'),(99,'',1762.72,92,92,2,'A','2016-09-20'),(100,'',1795.83,93,93,2,'A','2016-09-20'),(101,'',1829.24,94,94,2,'A','2016-09-20'),(102,'',1862.95,95,95,2,'A','2016-09-20'),(103,'',1896.96,96,96,2,'A','2016-09-20'),(104,'',1931.27,97,97,2,'A','2016-09-20'),(105,'',1965.88,98,98,2,'A','2016-09-20'),(106,'',2000.79,99,99,2,'A','2016-09-20'),(107,'',2036,100,100,2,'A','2016-09-20'),(108,'',2071.51,101,101,2,'A','2016-09-20'),(109,'',2102.22,102,102,2,'A','2016-09-20'),(110,'',2133.13,103,103,2,'A','2016-09-20'),(111,'',2164.24,104,104,2,'A','2016-09-20'),(112,'',2195.55,105,105,2,'A','2016-09-20'),(113,'',2227.06,106,106,2,'A','2016-09-20'),(114,'',2258.77,107,107,2,'A','2016-09-20'),(115,'',2290.68,108,108,2,'A','2016-09-20'),(116,'',2322.79,109,109,2,'A','2016-09-20'),(117,'',2355.1,110,110,2,'A','2016-09-20'),(118,'',2387.61,111,111,2,'A','2016-09-20'),(119,'',2420.32,112,112,2,'A','2016-09-20'),(120,'',2453.23,113,113,2,'A','2016-09-20'),(121,'',2486.34,114,114,2,'A','2016-09-20'),(122,'',2519.65,115,115,2,'A','2016-09-20'),(123,'',2553.16,116,116,2,'A','2016-09-20'),(124,'',2586.87,117,117,2,'A','2016-09-20'),(125,'',2620.78,118,118,2,'A','2016-09-20'),(126,'',2654.89,119,119,2,'A','2016-09-20'),(127,'',2689.2,120,120,2,'A','2016-09-20'),(128,'',2723.71,121,121,2,'A','2016-09-20'),(129,'',2758.42,122,122,2,'A','2016-09-20'),(130,'',2793.33,123,123,2,'A','2016-09-20'),(131,'',2828.44,124,124,2,'A','2016-09-20'),(132,'',2863.75,125,125,2,'A','2016-09-20'),(133,'',2899.26,126,126,2,'A','2016-09-20'),(134,'',2934.97,127,127,2,'A','2016-09-20'),(135,'',2970.88,128,128,2,'A','2016-09-20'),(136,'',3006.99,129,129,2,'A','2016-09-20'),(137,'',3043.3,130,130,2,'A','2016-09-20'),(138,'',3079.81,131,131,2,'A','2016-09-20'),(139,'',3109.92,132,132,2,'A','2016-09-20'),(140,'',3140.13,133,133,2,'A','2016-09-20'),(141,'',3170.44,134,134,2,'A','2016-09-20'),(142,'',3200.85,135,135,2,'A','2016-09-20'),(143,'',3231.36,136,136,2,'A','2016-09-20'),(144,'',3261.97,137,137,2,'A','2016-09-20'),(145,'',3292.68,138,138,2,'A','2016-09-20'),(146,'',3323.49,139,139,2,'A','2016-09-20'),(147,'',3354.4,140,140,2,'A','2016-09-20'),(148,'',3385.41,141,141,2,'A','2016-09-20'),(149,'',3416.52,142,142,2,'A','2016-09-20'),(150,'',3447.73,143,143,2,'A','2016-09-20'),(151,'',3479.04,144,144,2,'A','2016-09-20'),(152,'',3510.45,145,145,2,'A','2016-09-20'),(153,'',3541.96,146,146,2,'A','2016-09-20'),(154,'',3573.57,147,147,2,'A','2016-09-20'),(155,'',3605.28,148,148,2,'A','2016-09-20'),(156,'',3637.09,149,149,2,'A','2016-09-20'),(157,'',3669,150,150,2,'A','2016-09-20'),(158,'',3701.01,151,151,2,'A','2016-09-20'),(159,'',3733.12,152,152,2,'A','2016-09-20'),(160,'',3765.33,153,153,2,'A','2016-09-20'),(161,'',3797.64,154,154,2,'A','2016-09-20'),(162,'',3830.05,155,155,2,'A','2016-09-20'),(163,'',3862.56,156,156,2,'A','2016-09-20'),(164,'',3895.17,157,157,2,'A','2016-09-20'),(165,'',3927.88,158,158,2,'A','2016-09-20'),(166,'',3960.69,159,159,2,'A','2016-09-20'),(167,'',3993.6,160,160,2,'A','2016-09-20'),(168,'',4023.39,161,161,2,'A','2016-09-20'),(169,'',4053.24,162,162,2,'A','2016-09-20'),(170,'',4083.15,163,163,2,'A','2016-09-20'),(171,'',4113.12,164,164,2,'A','2016-09-20'),(172,'',4143.15,165,165,2,'A','2016-09-20'),(173,'',4173.24,166,166,2,'A','2016-09-20'),(174,'',4203.39,167,167,2,'A','2016-09-20'),(175,'',4233.6,168,168,2,'A','2016-09-20'),(176,'',4263.87,169,169,2,'A','2016-09-20'),(177,'',4294.2,170,170,2,'A','2016-09-20'),(178,'',4324.59,171,171,2,'A','2016-09-20'),(179,'',4355.04,172,172,2,'A','2016-09-20'),(180,'',4385.55,173,173,2,'A','2016-09-20'),(181,'',4416.12,174,174,2,'A','2016-09-20'),(182,'',4446.75,175,175,2,'A','2016-09-20'),(183,'',4477.44,176,176,2,'A','2016-09-20'),(184,'',4508.19,177,177,2,'A','2016-09-20'),(185,'',4539,178,178,2,'A','2016-09-20'),(186,'',4569.87,179,179,2,'A','2016-09-20'),(187,'',4600.8,180,180,2,'A','2016-09-20'),(188,'',4631.79,181,181,2,'A','2016-09-20'),(189,'',4662.84,182,182,2,'A','2016-09-20'),(190,'',4697.61,183,183,2,'A','2016-09-20'),(191,'',4732.48,184,184,2,'A','2016-09-20'),(192,'',4767.45,185,185,2,'A','2016-09-20'),(193,'',4802.52,186,186,2,'A','2016-09-20'),(194,'',4837.69,187,187,2,'A','2016-09-20'),(195,'',4872.96,188,188,2,'A','2016-09-20'),(196,'',4908.33,189,189,2,'A','2016-09-20'),(197,'',4943.8,190,190,2,'A','2016-09-20'),(198,'',4979.37,191,191,2,'A','2016-09-20'),(199,'',5015.04,192,192,2,'A','2016-09-20'),(200,'',5050.81,193,193,2,'A','2016-09-20'),(201,'',5086.68,194,194,2,'A','2016-09-20'),(202,'',5122.65,195,195,2,'A','2016-09-20'),(203,'',5158.72,196,196,2,'A','2016-09-20'),(204,'',5194.89,197,197,2,'A','2016-09-20'),(205,'',5231.16,198,198,2,'A','2016-09-20'),(206,'',5267.53,199,199,2,'A','2016-09-20'),(207,'',5304,200,200,2,'A','2016-09-20');
/*!40000 ALTER TABLE `excedente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestion_cuotas_agua`
--

DROP TABLE IF EXISTS `gestion_cuotas_agua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gestion_cuotas_agua` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kardex` int(11) DEFAULT NULL,
  `id_medio` int(11) DEFAULT NULL,
  `tipo` varchar(2) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `tipo_pago` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestion_cuotas_agua`
--

LOCK TABLES `gestion_cuotas_agua` WRITE;
/*!40000 ALTER TABLE `gestion_cuotas_agua` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestion_cuotas_agua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kardex_convenios`
--

DROP TABLE IF EXISTS `kardex_convenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kardex_convenios` (
  `id_convenio` int(11) NOT NULL AUTO_INCREMENT,
  `convenio` varchar(100) DEFAULT NULL,
  `id_colono` varchar(10) DEFAULT NULL,
  `importe` double DEFAULT NULL,
  `num_parcialidades` int(11) DEFAULT NULL,
  `dialimite_pago` int(11) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_convenio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kardex_convenios`
--

LOCK TABLES `kardex_convenios` WRITE;
/*!40000 ALTER TABLE `kardex_convenios` DISABLE KEYS */;
/*!40000 ALTER TABLE `kardex_convenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kardex_servicios`
--

DROP TABLE IF EXISTS `kardex_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kardex_servicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folio` varchar(20) NOT NULL,
  `folio_pago` int(11) DEFAULT NULL,
  `id_factor` int(11) DEFAULT NULL,
  `id_servicio` int(11) NOT NULL,
  `importe` double DEFAULT NULL,
  `saldo_pagado` double DEFAULT NULL,
  `servicio` varchar(100) DEFAULT NULL,
  `periodo` varchar(2) DEFAULT NULL,
  `anio` varchar(4) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `id_convenio` varchar(10) DEFAULT NULL,
  `tipo_pago` int(11) DEFAULT NULL,
  `tarifa` int(11) DEFAULT NULL,
  `moratorio` double DEFAULT NULL,
  `fecha_moratorio` date DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kardex_servicios`
--

LOCK TABLES `kardex_servicios` WRITE;
/*!40000 ALTER TABLE `kardex_servicios` DISABLE KEYS */;
INSERT INTO `kardex_servicios` VALUES (1,'C00-MA',4,1,2,750,NULL,'Cuota Mantenimiento','01','2015','S',NULL,2,2,NULL,NULL,'2017-01-28'),(2,'C00-MA',0,2,2,1500,NULL,'Cuota Mantenimiento','01','2015','V',NULL,NULL,2,NULL,NULL,'2017-01-21'),(3,'C00-MA',0,3,2,750,NULL,'Cuota Mantenimiento','01','2015','V',NULL,NULL,2,NULL,NULL,'2017-01-21'),(4,'C00-MA',0,4,2,1350,NULL,'Cuota Mantenimiento','01','2015','C','1',NULL,2,NULL,NULL,'2017-01-21'),(5,'C00-AG',0,1,3,418.4,0,'Cuota Agua','01','2015','V',NULL,NULL,0,NULL,NULL,'2017-01-21'),(6,'C00-AG',0,2,3,523,0,'Cuota Agua','01','2015','V',NULL,NULL,0,NULL,NULL,'2017-01-21'),(7,'C00-AG',0,3,3,2210.5,0,'Cuota Agua','01','2015','V',NULL,NULL,0,NULL,NULL,'2017-01-21'),(8,'C00-AG',0,4,3,3188,0,'Cuota Agua','01','2015','C','1',NULL,0,NULL,NULL,'2017-01-21'),(9,'C00-AG',0,5,3,973,0,'Cuota Agua','01','2015','C','1',NULL,0,NULL,NULL,'2017-01-21'),(10,'C00-MA',5,1,2,750,NULL,'Cuota Mantenimiento','02','2015','S',NULL,2,2,NULL,NULL,'2017-01-29'),(11,'C00-MA',0,2,2,1500,NULL,'Cuota Mantenimiento','02','2015','V',NULL,NULL,2,NULL,NULL,'2017-01-21'),(12,'C00-MA',0,3,2,750,NULL,'Cuota Mantenimiento','02','2015','V',NULL,NULL,2,NULL,NULL,'2017-01-21'),(13,'C00-MA',0,4,2,1350,NULL,'Cuota Mantenimiento','02','2015','C','1',NULL,2,NULL,NULL,'2017-01-21'),(14,'C00-AG',0,1,3,973,0,'Cuota Agua','02','2015','V',NULL,NULL,0,NULL,NULL,'2017-01-21'),(15,'C00-AG',0,2,3,104.6,0,'Cuota Agua','02','2015','V',NULL,NULL,0,NULL,NULL,'2017-01-21'),(16,'C00-AG',0,3,3,130.75,0,'Cuota Agua','02','2015','V',NULL,NULL,0,NULL,NULL,'2017-01-21'),(17,'C00-AG',0,4,3,261.5,0,'Cuota Agua','02','2015','C','1',NULL,0,NULL,NULL,'2017-01-21'),(18,'C00-AG',0,5,3,78.45,0,'Cuota Agua','02','2015','C','1',NULL,0,NULL,NULL,'2017-01-21'),(19,'C00-MA',0,1,2,750,NULL,'Cuota Mantenimiento','03','2015','V',NULL,NULL,2,NULL,NULL,'2017-01-21'),(20,'C00-MA',0,2,2,1500,NULL,'Cuota Mantenimiento','03','2015','V',NULL,NULL,2,NULL,NULL,'2017-01-21'),(21,'C00-MA',0,3,2,750,NULL,'Cuota Mantenimiento','03','2015','V',NULL,NULL,2,NULL,NULL,'2017-01-21'),(22,'C00-MA',0,4,2,1350,NULL,'Cuota Mantenimiento','03','2015','C','1',NULL,2,NULL,NULL,'2017-01-21'),(23,'C00-AG',0,1,3,313.8,0,'Cuota Agua','03','2015','V',NULL,NULL,0,NULL,NULL,'2017-01-21'),(24,'C00-AG',0,2,3,423.63,0,'Cuota Agua','03','2015','V',NULL,NULL,0,NULL,NULL,'2017-01-21'),(25,'C00-AG',0,3,3,1085.5,0,'Cuota Agua','03','2015','V',NULL,NULL,0,NULL,NULL,'2017-01-21'),(26,'C00-AG',0,4,3,481.16,0,'Cuota Agua','03','2015','C','1',NULL,0,NULL,NULL,'2017-01-21'),(27,'C00-AG',0,5,3,271.96,0,'Cuota Agua','03','2015','C','1',NULL,0,NULL,NULL,'2017-01-21'),(28,'C00-MA',0,1,2,750,NULL,'Cuota Mantenimiento','04','2015','V',NULL,NULL,2,NULL,NULL,'2017-01-21'),(29,'C00-MA',0,2,2,1500,NULL,'Cuota Mantenimiento','04','2015','V',NULL,NULL,2,NULL,NULL,'2017-01-21'),(30,'C00-MA',0,3,2,750,NULL,'Cuota Mantenimiento','04','2015','V',NULL,NULL,2,NULL,NULL,'2017-01-21'),(31,'C00-MA',0,4,2,1350,NULL,'Cuota Mantenimiento','04','2015','C','1',NULL,2,NULL,NULL,'2017-01-21'),(32,'C00-AG',0,1,3,3127.5,0,'Cuota Agua','04','2015','V',NULL,NULL,0,NULL,NULL,'2017-01-21'),(33,'C00-AG',0,2,3,2250,0,'Cuota Agua','04','2015','V',NULL,NULL,0,NULL,NULL,'2017-01-21'),(34,'C00-AG',0,3,3,2250,0,'Cuota Agua','04','2015','V',NULL,NULL,0,NULL,NULL,'2017-01-21'),(35,'C00-AG',0,4,3,2250,0,'Cuota Agua','04','2015','C','1',NULL,0,NULL,NULL,'2017-01-21'),(36,'C00-AG',0,5,3,4915,0,'Cuota Agua','04','2015','C','1',NULL,0,NULL,NULL,'2017-01-21'),(37,'C00-MA',0,1,2,750,NULL,'Cuota Mantenimiento','05','2015','A',NULL,NULL,2,NULL,NULL,'2017-01-21'),(38,'C00-MA',0,2,2,1500,NULL,'Cuota Mantenimiento','05','2015','A',NULL,NULL,2,NULL,NULL,'2017-01-21'),(39,'C00-MA',0,3,2,750,NULL,'Cuota Mantenimiento','05','2015','A',NULL,NULL,2,NULL,NULL,'2017-01-21'),(40,'C00-MA',0,4,2,1350,NULL,'Cuota Mantenimiento','05','2015','C','1',NULL,2,NULL,NULL,'2017-01-21'),(41,'C00-AG',0,1,3,2250,0,'Cuota Agua','05','2015','A',NULL,NULL,0,NULL,NULL,'2017-01-21'),(42,'C00-AG',0,2,3,2250,0,'Cuota Agua','05','2015','A',NULL,NULL,0,NULL,NULL,'2017-01-21'),(43,'C00-AG',0,3,3,2250,0,'Cuota Agua','05','2015','A',NULL,NULL,0,NULL,NULL,'2017-01-21'),(44,'C00-AG',0,4,3,2250,0,'Cuota Agua','05','2015','C','1',NULL,0,NULL,NULL,'2017-01-21'),(45,'C00-AG',0,5,3,2250,0,'Cuota Agua','05','2015','C','1',NULL,0,NULL,NULL,'2017-01-21');
/*!40000 ALTER TABLE `kardex_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kardex_servicios_detalle`
--

DROP TABLE IF EXISTS `kardex_servicios_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kardex_servicios_detalle` (
  `folio` int(11) NOT NULL AUTO_INCREMENT,
  `id_factor` int(11) DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  `id_concepto` int(11) NOT NULL,
  `consumo` double DEFAULT NULL,
  `importe` double DEFAULT NULL,
  `periodo` varchar(2) DEFAULT NULL,
  `anio` varchar(10) DEFAULT NULL,
  `tarifa` varchar(10) DEFAULT NULL,
  `cuota_tarifa` double DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`folio`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kardex_servicios_detalle`
--

LOCK TABLES `kardex_servicios_detalle` WRITE;
/*!40000 ALTER TABLE `kardex_servicios_detalle` DISABLE KEYS */;
INSERT INTO `kardex_servicios_detalle` VALUES (1,1,3,1,80,418.40000000000003,'01','2015','1',5.23,'A','2017-01-21'),(2,2,3,1,100,523,'01','2015','1',5.23,'A','2017-01-21'),(3,3,3,1,100,523,'01','2015','1',5.23,'A','2017-01-21'),(4,3,3,1,75,1687.5,'01','2015','1A',22.5,'A','2017-01-21'),(5,4,3,1,100,523,'01','2015','1',5.23,'A','2017-01-21'),(6,4,3,1,75,1687.5,'01','2015','1A',22.5,'A','2017-01-21'),(7,4,3,1,25,977.5,'01','2015','2',39.1,'A','2017-01-21'),(8,5,3,1,100,523,'01','2015','1',5.23,'A','2017-01-21'),(9,5,3,1,20,450,'01','2015','1A',22.5,'A','2017-01-21'),(10,1,2,2,0,22.5,'01','2015','3 %',0,'A','2017-01-21'),(11,2,2,2,0,45,'01','2015','3 %',0,'A','2017-01-21'),(12,3,2,2,0,22.5,'01','2015','3 %',0,'A','2017-01-21'),(13,4,2,2,0,40.5,'01','2015','3 %',0,'A','2017-01-21'),(14,1,3,1,100,523,'02','2015','1',5.23,'A','2017-01-21'),(15,1,3,1,20,450,'02','2015','1A',22.5,'A','2017-01-21'),(16,1,3,2,0,12.552,'01','2015','3 %',0,'A','2017-01-21'),(17,2,3,1,20,104.60000000000001,'02','2015','1',5.23,'A','2017-01-21'),(18,2,3,2,0,15.69,'01','2015','3 %',0,'A','2017-01-21'),(19,3,3,1,25,130.75,'02','2015','1',5.23,'A','2017-01-21'),(20,3,3,2,0,66.315,'01','2015','3 %',0,'A','2017-01-21'),(21,4,3,1,50,261.5,'02','2015','1',5.23,'A','2017-01-21'),(22,4,3,2,0,95.64,'01','2015','3 %',0,'A','2017-01-21'),(23,5,3,1,15,78.45,'02','2015','1',5.23,'A','2017-01-21'),(24,5,3,2,0,29.189999999999998,'01','2015','3 %',0,'A','2017-01-21'),(25,1,2,2,0,23.175,'01','2015','3 %',0,'A','2017-01-21'),(26,1,2,2,0,22.5,'02','2015','3 %',0,'A','2017-01-21'),(27,2,2,2,0,46.35,'01','2015','3 %',0,'A','2017-01-21'),(28,2,2,2,0,45,'02','2015','3 %',0,'A','2017-01-21'),(29,3,2,2,0,23.175,'01','2015','3 %',0,'A','2017-01-21'),(30,3,2,2,0,22.5,'02','2015','3 %',0,'A','2017-01-21'),(31,4,2,2,0,41.714999999999996,'01','2015','3 %',0,'A','2017-01-21'),(32,4,2,2,0,40.5,'02','2015','3 %',0,'A','2017-01-21'),(33,1,3,1,60,313.8,'03','2015','1',5.23,'A','2017-01-21'),(34,1,3,2,0,12.92856,'01','2015','3 %',0,'A','2017-01-21'),(35,1,3,2,0,29.189999999999998,'02','2015','3 %',0,'A','2017-01-21'),(36,2,3,1,81,423.63000000000005,'03','2015','1',5.23,'A','2017-01-21'),(37,2,3,2,0,16.160700000000002,'01','2015','3 %',0,'A','2017-01-21'),(38,2,3,2,0,3.138,'02','2015','3 %',0,'A','2017-01-21'),(39,3,3,1,100,523,'03','2015','1',5.23,'A','2017-01-21'),(40,3,3,1,25,562.5,'03','2015','1A',22.5,'A','2017-01-21'),(41,3,3,2,0,68.30445,'01','2015','3 %',0,'A','2017-01-21'),(42,3,3,2,0,3.9225,'02','2015','3 %',0,'A','2017-01-21'),(43,4,3,1,92,481.16,'03','2015','1',5.23,'A','2017-01-21'),(44,4,3,2,0,98.50919999999999,'01','2015','3 %',0,'A','2017-01-21'),(45,4,3,2,0,7.845,'02','2015','3 %',0,'A','2017-01-21'),(46,5,3,1,52,271.96000000000004,'03','2015','1',5.23,'A','2017-01-21'),(47,5,3,2,0,30.0657,'01','2015','3 %',0,'A','2017-01-21'),(48,5,3,2,0,2.3535,'02','2015','3 %',0,'A','2017-01-21'),(49,1,2,2,0,23.87025,'01','2015','3 %',0,'A','2017-01-21'),(50,1,2,2,0,23.175,'02','2015','3 %',0,'A','2017-01-21'),(51,1,2,2,0,22.5,'03','2015','3 %',0,'A','2017-01-21'),(52,2,2,2,0,47.7405,'01','2015','3 %',0,'A','2017-01-21'),(53,2,2,2,0,46.35,'02','2015','3 %',0,'A','2017-01-21'),(54,2,2,2,0,45,'03','2015','3 %',0,'A','2017-01-21'),(55,3,2,2,0,23.87025,'01','2015','3 %',0,'A','2017-01-21'),(56,3,2,2,0,23.175,'02','2015','3 %',0,'A','2017-01-21'),(57,3,2,2,0,22.5,'03','2015','3 %',0,'A','2017-01-21'),(58,4,2,2,0,42.966449999999995,'01','2015','3 %',0,'A','2017-01-21'),(59,4,2,2,0,41.714999999999996,'02','2015','3 %',0,'A','2017-01-21'),(60,4,2,2,0,40.5,'03','2015','3 %',0,'A','2017-01-21'),(61,1,3,1,100,2250,'04','2015','1A',22.5,'A','2017-01-21'),(62,1,3,1,39,877.5,'04','2015','1A',22.5,'A','2017-01-21'),(63,1,3,2,0,13.316416799999997,'01','2015','3 %',0,'A','2017-01-21'),(64,1,3,2,0,30.0657,'02','2015','3 %',0,'A','2017-01-21'),(65,1,3,2,0,9.414,'03','2015','3 %',0,'A','2017-01-21'),(66,2,3,1,100,2250,'04','2015','1A',22.5,'A','2017-01-21'),(67,2,3,2,0,16.645521,'01','2015','3 %',0,'A','2017-01-21'),(68,2,3,2,0,3.23214,'02','2015','3 %',0,'A','2017-01-21'),(69,2,3,2,0,12.7089,'03','2015','3 %',0,'A','2017-01-21'),(70,3,3,1,100,2250,'04','2015','1A',22.5,'A','2017-01-21'),(71,3,3,2,0,70.3535835,'01','2015','3 %',0,'A','2017-01-21'),(72,3,3,2,0,4.0401750000000005,'02','2015','3 %',0,'A','2017-01-21'),(73,3,3,2,0,32.565,'03','2015','3 %',0,'A','2017-01-21'),(74,4,3,1,100,2250,'04','2015','1A',22.5,'A','2017-01-21'),(75,4,3,2,0,101.46447599999999,'01','2015','3 %',0,'A','2017-01-21'),(76,4,3,2,0,8.080350000000001,'02','2015','3 %',0,'A','2017-01-21'),(77,4,3,2,0,14.434800000000001,'03','2015','3 %',0,'A','2017-01-21'),(78,5,3,1,100,2250,'04','2015','1A',22.5,'A','2017-01-21'),(79,5,3,1,75,1687.5,'04','2015','1A',22.5,'A','2017-01-21'),(80,5,3,1,25,977.5,'04','2015','2',39.1,'A','2017-01-21'),(81,5,3,2,0,30.967670999999996,'01','2015','3 %',0,'A','2017-01-21'),(82,5,3,2,0,2.424105,'02','2015','3 %',0,'A','2017-01-21'),(83,5,3,2,0,8.1588,'03','2015','3 %',0,'A','2017-01-21'),(84,1,2,2,0,24.5863575,'01','2015','3 %',0,'A','2017-01-21'),(85,1,2,2,0,23.87025,'02','2015','3 %',0,'A','2017-01-21'),(86,1,2,2,0,23.175,'03','2015','3 %',0,'A','2017-01-21'),(87,1,2,2,0,22.5,'04','2015','3 %',0,'A','2017-01-21'),(88,2,2,2,0,49.172715,'01','2015','3 %',0,'A','2017-01-21'),(89,2,2,2,0,47.7405,'02','2015','3 %',0,'A','2017-01-21'),(90,2,2,2,0,46.35,'03','2015','3 %',0,'A','2017-01-21'),(91,2,2,2,0,45,'04','2015','3 %',0,'A','2017-01-21'),(92,3,2,2,0,24.5863575,'01','2015','3 %',0,'A','2017-01-21'),(93,3,2,2,0,23.87025,'02','2015','3 %',0,'A','2017-01-21'),(94,3,2,2,0,23.175,'03','2015','3 %',0,'A','2017-01-21'),(95,3,2,2,0,22.5,'04','2015','3 %',0,'A','2017-01-21'),(96,4,2,2,0,44.2554435,'01','2015','3 %',0,'A','2017-01-21'),(97,4,2,2,0,42.966449999999995,'02','2015','3 %',0,'A','2017-01-21'),(98,4,2,2,0,41.714999999999996,'03','2015','3 %',0,'A','2017-01-21'),(99,4,2,2,0,40.5,'04','2015','3 %',0,'A','2017-01-21'),(100,1,3,1,100,2250,'05','2015','1A',22.5,'A','2017-01-21'),(101,1,3,2,0,13.715909303999998,'01','2015','3 %',0,'A','2017-01-21'),(102,1,3,2,0,30.967670999999996,'02','2015','3 %',0,'A','2017-01-21'),(103,1,3,2,0,9.69642,'03','2015','3 %',0,'A','2017-01-21'),(104,1,3,2,0,93.825,'04','2015','3 %',0,'A','2017-01-21'),(105,2,3,1,100,2250,'05','2015','1A',22.5,'A','2017-01-21'),(106,2,3,2,0,17.14488663,'01','2015','3 %',0,'A','2017-01-21'),(107,2,3,2,0,3.3291041999999993,'02','2015','3 %',0,'A','2017-01-21'),(108,2,3,2,0,13.090167,'03','2015','3 %',0,'A','2017-01-21'),(109,2,3,2,0,67.5,'04','2015','3 %',0,'A','2017-01-21'),(110,3,3,1,100,2250,'05','2015','1A',22.5,'A','2017-01-21'),(111,3,3,2,0,72.46419100499999,'01','2015','3 %',0,'A','2017-01-21'),(112,3,3,2,0,4.16138025,'02','2015','3 %',0,'A','2017-01-21'),(113,3,3,2,0,33.54195,'03','2015','3 %',0,'A','2017-01-21'),(114,3,3,2,0,67.5,'04','2015','3 %',0,'A','2017-01-21'),(115,4,3,1,100,2250,'05','2015','1A',22.5,'A','2017-01-21'),(116,4,3,2,0,104.50841027999999,'01','2015','3 %',0,'A','2017-01-21'),(117,4,3,2,0,8.3227605,'02','2015','3 %',0,'A','2017-01-21'),(118,4,3,2,0,14.867844,'03','2015','3 %',0,'A','2017-01-21'),(119,4,3,2,0,67.5,'04','2015','3 %',0,'A','2017-01-21'),(120,5,3,1,100,2250,'05','2015','1A',22.5,'A','2017-01-21'),(121,5,3,2,0,31.89670113,'01','2015','3 %',0,'A','2017-01-21'),(122,5,3,2,0,2.49682815,'02','2015','3 %',0,'A','2017-01-21'),(123,5,3,2,0,8.403564,'03','2015','3 %',0,'A','2017-01-21'),(124,5,3,2,0,147.45,'04','2015','3 %',0,'A','2017-01-21');
/*!40000 ALTER TABLE `kardex_servicios_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos_anticipos`
--

DROP TABLE IF EXISTS `pagos_anticipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos_anticipos` (
  `folio` int(11) NOT NULL,
  `id_factor` int(11) DEFAULT NULL,
  `id_servicio` varchar(10) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `importe_efectivo` double DEFAULT NULL,
  `no_cheque` varchar(45) DEFAULT NULL,
  `banco_cheque` varchar(2) DEFAULT NULL,
  `importe_cheque` double DEFAULT NULL,
  `no_ficha` varchar(45) DEFAULT NULL,
  `banco_ficha` varchar(2) DEFAULT NULL,
  `importe_ficha` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `multa` varchar(45) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT 'A',
  `cuenta_contable` varchar(200) DEFAULT NULL,
  `concepto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`folio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_anticipos`
--

LOCK TABLES `pagos_anticipos` WRITE;
/*!40000 ALTER TABLE `pagos_anticipos` DISABLE KEYS */;
INSERT INTO `pagos_anticipos` VALUES (1,4,'4','2017-01-28',1000,'','0',0,'','0',0,NULL,'0','A',NULL,NULL),(2,3,'5','2017-01-28',100,'','0',0,'','0',0,NULL,NULL,'A','420101 Servicios Prestados','Pago'),(3,2,'5','2017-01-28',200,'','0',0,'','0',0,NULL,NULL,'A','420101 Servicios Prestados','Pago por cambio medidor'),(4,1,'2','2017-01-28',844.13,'','0',0,'','0',0,NULL,'0','A',NULL,NULL),(5,1,'2','2017-01-29',819.54,'','0',0,'','0',0,NULL,'0','A',NULL,NULL);
/*!40000 ALTER TABLE `pagos_anticipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos_detalle`
--

DROP TABLE IF EXISTS `pagos_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos_detalle` (
  `folio` int(11) NOT NULL AUTO_INCREMENT,
  `folio_pago` int(11) DEFAULT NULL,
  `cuota` double DEFAULT NULL,
  `periodo` varchar(2) DEFAULT NULL,
  `anio` varchar(4) DEFAULT NULL,
  `tipo_pago` int(11) DEFAULT NULL,
  `id_anticipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`folio`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_detalle`
--

LOCK TABLES `pagos_detalle` WRITE;
/*!40000 ALTER TABLE `pagos_detalle` DISABLE KEYS */;
INSERT INTO `pagos_detalle` VALUES (1,1,1000,'06','2015',4,NULL),(2,2,100,'05','2015',5,NULL),(3,3,200,'05','2015',5,NULL),(4,4,750,'01','2015',2,NULL),(5,5,750,'02','2015',2,NULL),(6,5,69.54525,'02','2015',9,NULL);
/*!40000 ALTER TABLE `pagos_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_lecturas`
--

DROP TABLE IF EXISTS `reg_lecturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reg_lecturas` (
  `id_lectura` int(11) NOT NULL AUTO_INCREMENT,
  `id_medidor` int(11) DEFAULT NULL,
  `lectura` double DEFAULT NULL,
  `periodo` varchar(2) DEFAULT NULL,
  `anio` varchar(4) DEFAULT NULL,
  `fecha_lectura` date DEFAULT NULL,
  `estatus` varchar(2) DEFAULT 'A',
  PRIMARY KEY (`id_lectura`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_lecturas`
--

LOCK TABLES `reg_lecturas` WRITE;
/*!40000 ALTER TABLE `reg_lecturas` DISABLE KEYS */;
INSERT INTO `reg_lecturas` VALUES (2,2,100,'01','2015','2017-01-21','A'),(3,3,175,'01','2015','2017-01-21','A'),(4,4,200,'01','2015','2017-01-21','A'),(5,5,120,'01','2015','2017-01-21','A'),(6,1,200,'02','2015','2017-01-15','A'),(7,2,120,'02','2015','2017-01-15','A'),(8,3,200,'02','2015','2017-01-15','A'),(9,4,250,'02','2015','2017-01-15','A'),(10,5,135,'02','2015','2017-01-15','A'),(11,1,260,'03','2015','2017-01-15','A'),(12,2,201,'03','2015','2017-01-15','A'),(13,3,325,'03','2015','2017-01-15','A'),(14,4,342,'03','2015','2017-01-15','A'),(15,5,187,'03','2015','2016-10-20','A'),(16,1,399,'04','2015','2017-01-15','A'),(17,2,287,'04','2015','2017-01-15','A'),(18,3,375,'04','2015','2017-01-15','A'),(19,4,432,'04','2015','2017-01-15','A'),(20,5,387,'04','2015','2017-01-15','A'),(21,1,499,'05','2015','2017-01-15','A'),(22,2,322,'05','2015','2017-01-15','A'),(23,3,399,'05','2015','2017-01-15','A'),(24,4,490,'05','2015','2017-01-15','A'),(25,5,434,'05','2015','2017-01-15','A'),(26,1,699,'06','2015','2017-01-15','A'),(27,2,399,'06','2015','2017-01-15','A'),(28,3,455,'06','2015','2017-01-15','A'),(29,4,498,'06','2015','2017-01-15','A'),(30,5,500,'06','2015','2017-01-15','A'),(31,1,799,'07','2015','2017-01-15','A'),(32,2,457,'07','2015','2017-01-15','A'),(33,3,786,'07','2015','2017-01-15','A'),(34,4,567,'07','2015','2017-01-15','A'),(35,5,546,'07','2015','2017-01-15','A'),(36,1,654,'08','2015','2016-10-20','A'),(37,2,543,'08','2015','2016-10-20','A'),(38,3,808,'08','2015','2016-10-20','A'),(39,4,587,'08','2015','2016-10-20','A'),(40,5,501,'08','2015','2016-10-20','A'),(41,1,786,'09','2015','2016-10-20','A'),(42,2,598,'09','2015','2016-10-05','A'),(43,3,876,'09','2015','2016-10-05','A'),(44,4,615,'09','2015','2016-10-05','A'),(45,5,587,'09','2015','2016-10-20','A'),(46,1,890,'10','2015','2016-10-05','A'),(47,2,765,'10','2015','2016-10-05','A'),(48,3,986,'10','2015','2016-10-05','A'),(49,4,655,'10','2015','2016-10-05','A'),(50,5,690,'10','2015','2016-10-05','A'),(51,1,913,'11','2015','2016-10-05','A'),(52,1,1020,'12','2015','2016-10-20','A'),(53,2,818,'11','2015','2016-10-05','A'),(54,3,1020,'11','2015','2016-10-05','A'),(55,4,765,'11','2015','2016-10-05','A'),(56,5,718,'11','2015','2016-10-05','A'),(57,2,982,'12','2015','2016-10-20','A'),(58,3,1068,'12','2015','2016-10-05','A'),(59,4,789,'12','2015','2016-10-05','A'),(60,5,914,'12','2015','2016-10-05','A'),(61,1,1118,'01','2016','2016-10-20','A'),(62,2,999,'01','2016','2016-10-09','A'),(63,3,1200,'01','2016','2016-10-09','A'),(64,4,1118,'01','2016','2016-10-20','A'),(65,5,1024,'01','2016','2016-10-20','A'),(66,1,1216,'02','2016','2016-10-18','A'),(67,2,1198,'02','2016','2016-10-18','A'),(68,3,1289,'02','2016','2016-10-18','A'),(69,4,965,'02','2016','2016-10-17','A'),(70,5,1423,'02','2016','2016-10-17','A'),(71,1,1299,'03','2016','2016-10-17','A'),(72,2,1256,'03','2016','2016-10-17','A'),(73,3,1327,'03','2016','2016-10-17','A'),(74,4,999,'03','2016','2016-10-17','A'),(75,5,1512,'03','2016','2016-10-17','A'),(76,1,1350,'04','2016','2016-10-17','A'),(77,2,1299,'04','2016','2016-10-17','A'),(78,3,1423,'04','2016','2016-10-17','A'),(79,4,1023,'04','2016','2016-10-17','A'),(80,5,1800,'04','2016','2016-10-17','A'),(81,1,1423,'05','2016','2016-10-17','A'),(82,2,1324,'05','2016','2016-10-17','A'),(83,3,1534,'05','2016','2016-10-17','A'),(84,4,1230,'05','2016','2016-10-17','A'),(85,5,1900,'05','2016','2016-10-17','A'),(86,3,1598,'06','2016','2016-10-17','A'),(87,4,1334,'06','2016','2016-10-17','A'),(88,5,1976,'06','2016','2016-10-17','A'),(89,1,1976,'06','2016','2016-10-17','A'),(90,2,1425,'06','2016','2016-10-17','A'),(91,1,2016,'07','2016','2016-10-17','A'),(92,1,80,'01','2015','2017-01-21','A');
/*!40000 ALTER TABLE `reg_lecturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saldo_anticipos`
--

DROP TABLE IF EXISTS `saldo_anticipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saldo_anticipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_factor` int(11) DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `fecha_cambio` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saldo_anticipos`
--

LOCK TABLES `saldo_anticipos` WRITE;
/*!40000 ALTER TABLE `saldo_anticipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `saldo_anticipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifas_mantenimiento`
--

DROP TABLE IF EXISTS `tarifas_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifas_mantenimiento` (
  `id_tarimanto` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` int(11) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `fecha_aplicacion` date DEFAULT NULL,
  `estatus` varchar(2) DEFAULT 'V' COMMENT 'V=VIGENTE\nI=INACTIVA\nP=PENDIENTE POR APLICAR',
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_tarimanto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifas_mantenimiento`
--

LOCK TABLES `tarifas_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tarifas_mantenimiento` DISABLE KEYS */;
INSERT INTO `tarifas_mantenimiento` VALUES (1,2,'Tarifa Variable','0.30','2015-01-01','A','2016-10-03'),(2,2,'Tarifa Variable','0.35','2016-01-01','P','2016-10-03'),(3,2,'Tarifa Variable','0.38','2017-01-01','P','2016-10-20');
/*!40000 ALTER TABLE `tarifas_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (152,'ID 1 -PER: 01 -MEDI: 1'),(153,'ID 1 -PER: 01 -MEDI: 2'),(154,'ID 1 -PER: 01 -MEDI: 3'),(155,'ID 1 -PER: 01 -MEDI: 4'),(156,'ID 1 -PER: 01 -MEDI: 1'),(157,'ID 1 -PER: 01 -MEDI: 2'),(158,'ID 1 -PER: 01 -MEDI: 3'),(159,'ID 1 -PER: 01 -MEDI: 4'),(160,'ID 1 -PER: 01 -MEDI: 5'),(161,'ID 1 -PER: 01 -MEDI: 1'),(162,'ID 2 -PER: 02 -MEDI: 1'),(163,'ID 1 -PER: 01 -MEDI: 2'),(164,'ID 2 -PER: 02 -MEDI: 2'),(165,'ID 1 -PER: 01 -MEDI: 3'),(166,'ID 2 -PER: 02 -MEDI: 3'),(167,'ID 1 -PER: 01 -MEDI: 4'),(168,'ID 2 -PER: 02 -MEDI: 4'),(169,'ID 1 -PER: 01 -MEDI: 1'),(170,'ID 2 -PER: 02 -MEDI: 1'),(171,'ID 1 -PER: 01 -MEDI: 2'),(172,'ID 2 -PER: 02 -MEDI: 2'),(173,'ID 1 -PER: 01 -MEDI: 3'),(174,'ID 2 -PER: 02 -MEDI: 3'),(175,'ID 1 -PER: 01 -MEDI: 4'),(176,'ID 2 -PER: 02 -MEDI: 4'),(177,'ID 1 -PER: 01 -MEDI: 5'),(178,'ID 2 -PER: 02 -MEDI: 5'),(179,'ID 1 -PER: 01 -MEDI: 1'),(180,'ID 2 -PER: 02 -MEDI: 1'),(181,'ID 3 -PER: 03 -MEDI: 1'),(182,'ID 1 -PER: 01 -MEDI: 2'),(183,'ID 2 -PER: 02 -MEDI: 2'),(184,'ID 3 -PER: 03 -MEDI: 2'),(185,'ID 1 -PER: 01 -MEDI: 3'),(186,'ID 2 -PER: 02 -MEDI: 3'),(187,'ID 3 -PER: 03 -MEDI: 3'),(188,'ID 1 -PER: 01 -MEDI: 4'),(189,'ID 2 -PER: 02 -MEDI: 4'),(190,'ID 3 -PER: 03 -MEDI: 4'),(191,'ID 1 -PER: 01 -MEDI: 1'),(192,'ID 2 -PER: 02 -MEDI: 1'),(193,'ID 3 -PER: 03 -MEDI: 1'),(194,'ID 1 -PER: 01 -MEDI: 2'),(195,'ID 2 -PER: 02 -MEDI: 2'),(196,'ID 3 -PER: 03 -MEDI: 2'),(197,'ID 1 -PER: 01 -MEDI: 3'),(198,'ID 2 -PER: 02 -MEDI: 3'),(199,'ID 3 -PER: 03 -MEDI: 3'),(200,'ID 1 -PER: 01 -MEDI: 4'),(201,'ID 2 -PER: 02 -MEDI: 4'),(202,'ID 3 -PER: 03 -MEDI: 4'),(203,'ID 1 -PER: 01 -MEDI: 5'),(204,'ID 2 -PER: 02 -MEDI: 5'),(205,'ID 3 -PER: 03 -MEDI: 5'),(206,'ID 1 -PER: 01 -MEDI: 1'),(207,'ID 2 -PER: 02 -MEDI: 1'),(208,'ID 3 -PER: 03 -MEDI: 1'),(209,'ID 4 -PER: 04 -MEDI: 1'),(210,'ID 1 -PER: 01 -MEDI: 2'),(211,'ID 2 -PER: 02 -MEDI: 2'),(212,'ID 3 -PER: 03 -MEDI: 2'),(213,'ID 4 -PER: 04 -MEDI: 2'),(214,'ID 1 -PER: 01 -MEDI: 3'),(215,'ID 2 -PER: 02 -MEDI: 3'),(216,'ID 3 -PER: 03 -MEDI: 3'),(217,'ID 4 -PER: 04 -MEDI: 3'),(218,'ID 1 -PER: 01 -MEDI: 4'),(219,'ID 2 -PER: 02 -MEDI: 4'),(220,'ID 3 -PER: 03 -MEDI: 4'),(221,'ID 4 -PER: 04 -MEDI: 4'),(222,'ID 1 -PER: 01 -MEDI: 1'),(223,'ID 2 -PER: 02 -MEDI: 1'),(224,'ID 3 -PER: 03 -MEDI: 1'),(225,'ID 4 -PER: 04 -MEDI: 1'),(226,'ID 1 -PER: 01 -MEDI: 2'),(227,'ID 2 -PER: 02 -MEDI: 2'),(228,'ID 3 -PER: 03 -MEDI: 2'),(229,'ID 4 -PER: 04 -MEDI: 2'),(230,'ID 1 -PER: 01 -MEDI: 3'),(231,'ID 2 -PER: 02 -MEDI: 3'),(232,'ID 3 -PER: 03 -MEDI: 3'),(233,'ID 4 -PER: 04 -MEDI: 3'),(234,'ID 1 -PER: 01 -MEDI: 4'),(235,'ID 2 -PER: 02 -MEDI: 4'),(236,'ID 3 -PER: 03 -MEDI: 4'),(237,'ID 4 -PER: 04 -MEDI: 4'),(238,'ID 1 -PER: 01 -MEDI: 5'),(239,'ID 2 -PER: 02 -MEDI: 5'),(240,'ID 3 -PER: 03 -MEDI: 5'),(241,'ID 4 -PER: 04 -MEDI: 5');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gestion_granjas'
--

--
-- Dumping routines for database 'gestion_granjas'
--
/*!50003 DROP FUNCTION IF EXISTS `FIRST_DAY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FIRST_DAY`(day DATE) RETURNS date
    DETERMINISTIC
BEGIN
  RETURN ADDDATE(LAST_DAY(SUBDATE(day, INTERVAL 1 MONTH)), 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `borra_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `borra_info`(
  
)
BEGIN

DELETE FROM gestion_granjas.bitacora_cuotas WHERE anio!='2014';
truncate table gestion_granjas.detalle_anticipos;
truncate table gestion_granjas.gestion_cuotas_agua;
truncate table gestion_granjas.kardex_servicios;
truncate table gestion_granjas.kardex_servicios_detalle;
truncate table gestion_granjas.pagos_anticipos;
truncate table gestion_granjas.pagos_detalle;
truncate table gestion_granjas.saldo_anticipos;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_bitacora_sistema` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_bitacora_sistema`(
  IN p_usuario varchar(45),
  IN p_modulo varchar(150),
  IN p_accion varchar(150),
  IN p_codResultado varchar(10),
  IN p_resultado varchar(200),
  OUT bitacora boolean
)
BEGIN

  insert into bitacora_sistema (usuario,modulo,accion,cod_resultado,resultado)values (p_usuario,p_modulo,p_accion,p_codResultado,p_resultado);
 
  set bitacora =true;
  
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_busca_perfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_busca_perfil`(
  IN in_perfil varchar(45),
  OUT resultado INT,
  OUT p_perfil INT,
  OUT p_desc_perfil varchar(50)
)
BEGIN


SELECT
  COUNT(*)
INTO
  resultado
FROM
  gestion_granjas.cat_perfiles
WHERE
	id_perfil = in_perfil;
  if (resultado=1) then
	SELECT a.id_perfil,descripcion as perfil into p_perfil,p_desc_perfil 
    from gestion_granjas.cat_perfiles a
    where  a.id_perfil = in_perfil;
  end if;
  
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_ABanco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_ABanco`(
IN p_banco varchar(100),
IN p_scontable varchar(45),
IN p_fechar date,
OUT resultado INT
/*
resultado=0 Alta exitosa
resultado=1 Existe registro del banco o de subcuenta
resultado=2 Existe banco
resultado=3 Existe subcuenta

*/
)
BEGIN
SELECT
  COUNT(*)
INTO
  resultado
FROM
  gestion_granjas.cat_bancos
WHERE
  banco = p_banco and estatus='A';
  /*Checamos si el banco se duplica*/
if (resultado=0) then
/*En caso de no estar dado de alta continua..*/
	SELECT
	COUNT(*)
	INTO
	resultado
	FROM
	gestion_granjas.cat_bancos
	WHERE
	subcuenta_contable = p_scontable and estatus='A';
    /*Ahora comprobamos que la subcuenta para evitar duplicados*/
	if (resultado=0) then
		/*al revisar que no se duplica se continua con el registro*/
		INSERT INTO gestion_granjas.cat_bancos 
		(
		banco,
		subcuenta_contable,
		fecha_registro
		) 
		values
		(
		p_banco, 
		p_scontable,
		p_fechar
		);	
    else
		SET resultado=3;
    end if;
else
    SET resultado=2;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_ABCBanco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_ABCBanco`(
IN tipo_mov int,
IN p_idbanco int,
IN p_banco varchar(100),
IN p_scontable varchar(45),
IN p_fechar date,
OUT resultado int,
OUT mensaje varchar(100)
)
BEGIN
/*
COMENZAMOS SI TIPO_MOV ES 1 ALTA, 2 BAJA, 3 CAMBIO*/

/*|||||||||||||||||ALTAS|||||||||||||||||||||||||||||||||*/
IF (tipo_mov=1) THEN
/*INICIA CODIGO PARA ALTAS*/
	/*
	resultado=0 Alta, Baja o Cambio exitosa
	resultado=1 Existe registro del banco o de subcuenta
	resultado=2 Existe banco
	resultado=3 Existe subcuenta

	*/
	SELECT
	  COUNT(*)
	INTO
	  resultado
	FROM
	  gestion_granjas.cat_bancos
	WHERE
	  banco = p_banco and estatus='A';
	  /*Checamos si el banco se duplica*/
	if (resultado=0) then
	/*En caso de no estar dado de alta continua..*/
		SELECT
		COUNT(*)
		INTO
		resultado
		FROM
		gestion_granjas.cat_bancos
		WHERE
		subcuenta_contable = p_scontable and estatus='A';
		/*Ahora comprobamos que la subcuenta para evitar duplicados*/
		if (resultado=0) then
			/*al revisar que no se duplica se continua con el registro*/
			INSERT INTO gestion_granjas.cat_bancos 
			(
			banco,
			subcuenta_contable,
			fecha_registro
			) 
			values
			(
			p_banco, 
			p_scontable,
			p_fechar
			);	
            set mensaje='¡El Banco se registró correcatmente!';
		else
			SET resultado=3;
            set mensaje='¡La subcuenta ya esta asignada a otro banco!';
		end if;
	else
		SET resultado=2;
        set mensaje='¡El Banco ya se encuentra registrado!';
	end if;
/*FIN CODIGO PARA ALTAS*/

/*||||||||||||||||BAJAS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=2) THEN
/*INICIA CODIGO PARA BAJAS*/
	/* valores resultado
	resultado=0 Baja exitosa
	resultado=4 Problemas con la baja no existe registro
	*/
	if exists (select * from gestion_granjas.cat_bancos where id_banco = p_idbanco) then
        update gestion_granjas.cat_bancos set estatus="B" where id_banco=p_idbanco;
        set resultado = 0;
        set mensaje='¡El Banco se eliminó correcatmente!';
	else
		/*resultado 4 no existe banco*/
		set resultado = 4;
        set mensaje='¡El Banco no existe!';
	end if;

/*FIN CODIGO PARA BAJAS*/

/*||||||||||||||||CAMBIOS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=3) THEN 
/*INICIA CODIGO PARA CAMBIOS*/
	/* valores resultado	
    resultado=0 Cambio exitosa
    resultado=4 Problemas con los cambios del registro
	*/
    /*comprobamos que existe el id del banco*/
	if exists (select * from gestion_granjas.cat_bancos where id_banco = p_idbanco and estatus='A') then
	/*
	resultado=1 Existe registro del banco o de subcuenta
	resultado=2 Existe banco
	resultado=3 Existe subcuenta
	*/
		SELECT
		  COUNT(*)
		INTO
		  resultado
		FROM
		  gestion_granjas.cat_bancos
		WHERE
		  banco = p_banco and id_banco!=p_idbanco;
		  /*Checamos si el banco se duplica*/
		if (resultado=0) then
		/*En caso de no estar dado de alta continua..*/
			SELECT
			COUNT(*)
			INTO
			resultado
			FROM
			gestion_granjas.cat_bancos
			WHERE
			subcuenta_contable = p_scontable and id_banco!=p_idbanco and estatus='A';
			/*Ahora comprobamos que la subcuenta para evitar duplicados*/
			if (resultado=0) then
				/*al revisar que no se duplica se continua con el registro*/
				update gestion_granjas.cat_bancos 
                set banco=p_banco, subcuenta_contable=p_scontable, fecha_registro=p_fechar 
                where id_banco=p_idbanco;
                /*resultado 6 es igual cambio exitoso*/
                /*set resultado=6;*/
                set mensaje='¡Se guardaron los cambios correcatmente!';
			else
				/*resultado 3 existe subcuenta*/
				SET resultado=3;
                set mensaje='¡La subcuenta ya esta asignada a otro banco!';
			end if;
		else
			/*resultado 2 existe banco*/
			SET resultado=2;
            set mensaje='¡El Banco ya se encuentra registrado!';
		end if;	
	else
		/*resultado 4 no existe banco a modificar*/
		set resultado = 4;
        set mensaje='¡El Banco no existe!';
	end if;
/*FIN CODIGO PARA CAMBIOS*/
END IF;
/*||||||||||||||||||||||||||||||||||||||||||||||||||*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_ABCColono` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_ABCColono`(
IN tipo_mov int,
IN p_idcolono int,
IN p_nombre varchar(200),
IN p_direccion text,
IN p_telefono varchar(45),
IN p_correo varchar(45),
OUT resultado int,
OUT mensaje varchar(100)
)
BEGIN
DECLARE v_subcuenta VARCHAR(45);
/*COMENZAMOS SI TIPO_MOV ES 1 ALTA, 2 BAJA, 3 CAMBIO*/
SELECT LPAD(max(subcuenta_contable)+1,4,"0") INTO v_subcuenta FROM gestion_granjas.cat_colonos where estatus='A';

/*|||||||||||||||||ALTAS|||||||||||||||||||||||||||||||||*/
IF (tipo_mov=1) THEN


/*INICIA CODIGO PARA ALTAS*/
	/*
	resultado=0 Alta, Baja o Cambio exitosa
	resultado=1 Existe registro del colono
	*/
	SELECT
	  COUNT(*)
	INTO
	  resultado
	FROM
	  gestion_granjas.cat_colonos
	WHERE
	  nombre = p_nombre and estatus='A';
	  /*Checamos si el colono se duplica*/
	if (resultado=0) then
	/*En caso de no estar dado de alta continua..*/
			INSERT INTO gestion_granjas.cat_colonos
			(
			nombre,
            direccion,
            telefono,
			correo,
            subcuenta_contable,
            fecha_registro
			) 
			values
			(
            p_nombre,
			p_direccion,
            p_telefono,
			p_correo,
            v_subcuenta,
            now()
			);	
            set mensaje='¡El Colono se registró correctamente!';
	else
		SET resultado=1;
        set mensaje='¡El Colono ya se encuentra registrado!';
	end if;
/*FIN CODIGO PARA ALTAS*/

/*||||||||||||||||BAJAS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=2) THEN
/*INICIA CODIGO PARA BAJAS*/
	/* valores resultado
	resultado=0 Baja exitosa
	resultado=2 Problemas con la baja no existe registro
	*/
	if exists (select * from gestion_granjas.cat_colonos where id_colono = p_idcolono) then
        update gestion_granjas.cat_colonos set estatus="B", fecha_registro=now() 
        where id_colono=p_idcolono;
        set resultado = 0;
        set mensaje='¡El Colono se eliminó correcatmente!';
	else
		/*resultado 2 no existe el colono*/
		set resultado = 2;
        set mensaje='¡El Colono no existe!';
	end if;

/*FIN CODIGO PARA BAJAS*/

/*||||||||||||||||CAMBIOS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=3) THEN 
/*INICIA CODIGO PARA CAMBIOS*/
	/*valores resultado	
    resultado=0 Cambio exitosa
    resultado=2 Problemas con los cambios del registro
	*/
    /*comprobamos que existe el id del lote*/
	if exists (select * from gestion_granjas.cat_colonos where id_colono = p_idcolono and estatus='A') then
	/*
    resultado=0 Se guardo correctamente
	resultado=1 Existe registro
	resultado=2 No Existe registro
	*/
		SELECT
		  COUNT(*)
		INTO
		  resultado
		FROM
		  gestion_granjas.cat_colonos
		WHERE
		   nombre = p_nombre and id_colono != p_idcolono and estatus='A';
		  /*Checamos si el lote se duplica*/
		if (resultado=0) then
		/*En caso de no estar dado de alta continua..*/			
				/*al revisar que no se duplica se continua con el registro*/
				update gestion_granjas.cat_colonos
                set nombre=p_nombre, direccion=p_dirección, telefono=p_telefono, correo=p_correo, fecha_registro=now() 
                where id_colono=p_idcolono;
                set mensaje='¡Se guardaron los cambios correcatmente!';
			
		else
			/*resultado 2 existe banco*/
			SET resultado=1;
            set mensaje='¡El Colono ya se encuentra registrado!';
		end if;	
	else
		/*resultado 4 no existe banco a modificar*/
		set resultado = 2;
        set mensaje='¡El Colono no existe!';
	end if;
/*FIN CODIGO PARA CAMBIOS*/
END IF;
/*||||||||||||||||||||||||||||||||||||||||||||||||||*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_ABCLote` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_ABCLote`(
IN tipo_mov int,
IN p_idlote int,
IN p_lote varchar(10),
IN p_idmanzana int,
IN p_idcolono int,
IN p_m2 double,
OUT resultado int,
OUT mensaje varchar(100)
)
BEGIN
/*
COMENZAMOS SI TIPO_MOV ES 1 ALTA, 2 BAJA, 3 CAMBIO*/

/*|||||||||||||||||ALTAS|||||||||||||||||||||||||||||||||*/
IF (tipo_mov=1) THEN
/*INICIA CODIGO PARA ALTAS*/
	/*
	resultado=0 Alta, Baja o Cambio exitosa
	resultado=1 Existe registro del lote
	*/
	SELECT
	  COUNT(*)
	INTO
	  resultado
	FROM
	  gestion_granjas.cat_lotes
	WHERE
	  lote = p_lote and id_manzana=p_idmanzana and estatus='A';
	  /*Checamos si el lote se duplica dentro de la misma manzana*/
	if (resultado=0) then
	/*En caso de no estar dado de alta continua..*/
			INSERT INTO gestion_granjas.cat_lotes
			(
			lote,
            id_manzana,
            id_colono,
            metros_cuadrados,
			fecha_registro
			) 
			values
			(
            p_lote,
			p_idmanzana,
            p_idcolono,
            p_m2,
			now()
			);	
            set mensaje='¡El Lote se registró correctamente!';
	else
		SET resultado=1;
        set mensaje='¡El Lote ya se encuentra registrado!';
	end if;
/*FIN CODIGO PARA ALTAS*/

/*||||||||||||||||BAJAS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=2) THEN
/*INICIA CODIGO PARA BAJAS*/
	/* valores resultado
	resultado=0 Baja exitosa
	resultado=2 Problemas con la baja no existe registro
	*/
	if exists (select * from gestion_granjas.cat_lotes where id_lote = p_idlote) then
        update gestion_granjas.cat_lotes set estatus="B", fecha_registro=now() where id_lote=p_idlote;
        set resultado = 0;
        set mensaje='¡El Lote se eliminó correcatmente!';
	else
		/*resultado 2 no existe lote*/
		set resultado = 2;
        set mensaje='¡El Lote no existe!';
	end if;

/*FIN CODIGO PARA BAJAS*/

/*||||||||||||||||CAMBIOS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=3) THEN 
/*INICIA CODIGO PARA CAMBIOS*/
	/*valores resultado	
    resultado=0 Cambio exitosa
    resultado=2 Problemas con los cambios del registro
	*/
    /*comprobamos que existe el id del lote*/
	if exists (select * from gestion_granjas.cat_lotes where id_lote = p_idlote and estatus='A') then
	/*
    resultado=0 Se guardo correctamente
	resultado=1 Existe registro
	resultado=2 No Existe registro
	*/
		SELECT
		  COUNT(*)
		INTO
		  resultado
		FROM
		  gestion_granjas.cat_lotes
		WHERE
		   lote = p_lote and id_manzana=p_idmanzana and id_lote != p_idlote and estatus='A';
		  /*Checamos si el lote se duplica*/
		if (resultado=0) then
		/*En caso de no estar dado de alta continua..*/			
				/*al revisar que no se duplica se continua con el registro*/
				update gestion_granjas.cat_lotes
                set lote=p_lote, id_manzana=p_idmanzana, id_colono=p_idcolono, metros_cuadrados=p_m2, fecha_registro=now() 
                where id_lote=p_idlote;
                set mensaje='¡Se guardaron los cambios correcatmente!';
			
		else
			/*resultado 2 existe banco*/
			SET resultado=1;
            set mensaje='¡El Lote ya se encuentra registrado!';
		end if;	
	else
		/*resultado 4 no existe banco a modificar*/
		set resultado = 2;
        set mensaje='¡el Lote no existe!';
	end if;
/*FIN CODIGO PARA CAMBIOS*/
END IF;
/*||||||||||||||||||||||||||||||||||||||||||||||||||*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_ABCManzana` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_ABCManzana`(
IN tipo_mov int,
IN p_idmanzana int,
IN p_manzana varchar(100),
IN p_fechar date,
OUT resultado int,
OUT mensaje varchar(100)
)
BEGIN
/*
COMENZAMOS SI TIPO_MOV ES 1 ALTA, 2 BAJA, 3 CAMBIO*/

/*|||||||||||||||||ALTAS|||||||||||||||||||||||||||||||||*/
IF (tipo_mov=1) THEN
/*INICIA CODIGO PARA ALTAS*/
	/*
	resultado=0 Alta, Baja o Cambio exitosa
	resultado=1 Existe registro de la manzana
	*/
	SELECT
	  COUNT(*)
	INTO
	  resultado
	FROM
	  gestion_granjas.cat_manzanas
	WHERE
	  manzana = p_manzana and estatus='A';
	  /*Checamos si el banco se duplica*/
	if (resultado=0) then
	/*En caso de no estar dado de alta continua..*/
		
			INSERT INTO gestion_granjas.cat_manzanas 
			(
			manzana,
			fecha_registro
			) 
			values
			(
			p_manzana,
			p_fechar
			);	
            set mensaje='¡La Manzana se registró correctamente!';
	else
		SET resultado=1;
        set mensaje='¡La Manzana ya se encuentra registrada!';
	end if;
/*FIN CODIGO PARA ALTAS*/

/*||||||||||||||||BAJAS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=2) THEN
/*INICIA CODIGO PARA BAJAS*/
	/* valores resultado
	resultado=0 Baja exitosa
	resultado=2 Problemas con la baja no existe registro
	*/
	if exists (select * from gestion_granjas.cat_manzanas where id_manzana = p_idmanzana) then
        update gestion_granjas.cat_manzanas set estatus="B" where id_manzana=p_idmanzana;
        set resultado = 0;
        set mensaje='¡La Manzana se eliminó correcatmente!';
	else
		/*resultado 2 no existe manzana*/
		set resultado = 2;
        set mensaje='¡La Manzana no existe!';
	end if;

/*FIN CODIGO PARA BAJAS*/

/*||||||||||||||||CAMBIOS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=3) THEN 
/*INICIA CODIGO PARA CAMBIOS*/
	/*valores resultado	
    resultado=0 Cambio exitosa
    resultado=2 Problemas con los cambios del registro
	*/
    /*comprobamos que existe el id del banco*/
	if exists (select * from gestion_granjas.cat_manzanas where id_manzana = p_idmanzana and estatus='A') then
	/*
    resultado=0 Se guardo correctamente
	resultado=1 Existe registro
	resultado=2 No Existe registro
	*/
		SELECT
		  COUNT(*)
		INTO
		  resultado
		FROM
		  gestion_granjas.cat_manzanas
		WHERE
		  manzana = p_manzana and id_manzana!=p_idmanzana;
		  /*Checamos si la manzana se duplica*/
		if (resultado=0) then
		/*En caso de no estar dado de alta continua..*/			
				/*al revisar que no se duplica se continua con el registro*/
				update gestion_granjas.cat_manzanas 
                set manzana=p_manzana, fecha_registro=p_fechar 
                where id_manzana=p_idmanzana;
                set mensaje='¡Se guardaron los cambios correcatmente!';
			
		else
			/*resultado 2 existe banco*/
			SET resultado=1;
            set mensaje='¡La Manzana ya se encuentra registrada!';
		end if;	
	else
		/*resultado 4 no existe banco a modificar*/
		set resultado = 2;
        set mensaje='¡La Manzana no existe!';
	end if;
/*FIN CODIGO PARA CAMBIOS*/
END IF;
/*||||||||||||||||||||||||||||||||||||||||||||||||||*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_ABCMedidor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_ABCMedidor`(
IN tipo_mov int,
IN p_idmedidor int,
IN p_idlote int,
IN p_contrato varchar(25),
IN p_medidor varchar(25),
IN p_basecna double,
OUT resultado int,
OUT mensaje varchar(100)
)
BEGIN
/*
COMENZAMOS SI TIPO_MOV ES 1 ALTA, 2 BAJA, 3 CAMBIO*/

/*|||||||||||||||||ALTAS|||||||||||||||||||||||||||||||||*/
IF (tipo_mov=1) THEN
/*INICIA CODIGO PARA ALTAS*/
	/*
	resultado=0 Alta, Baja o Cambio exitosa
	resultado=1 Existe contrato/medidor en el lote
	*/
	  /*Checamos si el lote se duplica dentro de la misma manzana*/
	if exists (SELECT * FROM gestion_granjas.cat_medidores	WHERE contrato = p_contrato and id_lote=p_idlote and estatus='A') then
		SET resultado=1;
        set mensaje='¡El Contrato ya se encuentra registrado en este Lote!';
	elseif exists(SELECT * FROM gestion_granjas.cat_medidores	WHERE medidor = p_medidor and id_lote=p_idlote and estatus='A') then
		SET resultado=1;
        set mensaje='¡El Medidor ya se encuentra registrado en este Lote!';
	else
		/*En caso de no estar dado de alta continua..*/
		INSERT INTO gestion_granjas.cat_medidores
		(
		id_lote,
		contrato,
		medidor,
		base_cna,
		fecha_registro
		) 
		values
		(
		p_idlote,
		p_contrato,
		p_medidor,
		p_basecna,
		now()
		);	
        SET resultado=0;
		set mensaje='¡El Medidor se registró correctamente!';
	end if;
/*FIN CODIGO PARA ALTAS*/

/*||||||||||||||||BAJAS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=2) THEN
/*INICIA CODIGO PARA BAJAS*/
	/* valores resultado
	resultado=0 Baja exitosa
	resultado=2 Problemas con la baja no existe registro
	*/
	if exists (select * from gestion_granjas.cat_medidores where id_medidor = p_idmedidor) then
        update gestion_granjas.cat_medidores set estatus="B", fecha_registro=now() where id_medidor=p_idmedidor;
        set resultado = 0;
        set mensaje='¡El Medidor se eliminó correcatmente!';
	else
		/*resultado 2 no existe lote*/
		set resultado = 2;
        set mensaje='¡El Medidor no existe!';
	end if;

/*FIN CODIGO PARA BAJAS*/

/*||||||||||||||||CAMBIOS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=3) THEN 
/*INICIA CODIGO PARA CAMBIOS*/
	/*valores resultado	
    resultado=0 Cambio exitosa
    resultado=1 Existe contrato/medidor
    resultado=2 Problemas con los cambios del registro
	*/
    /*comprobamos que existe el id del lote*/
	if exists (select * from gestion_granjas.cat_medidores where id_medidor = p_idmedidor and estatus='A') then
	/*
    resultado=0 Se guardo correctamente
	resultado=1 Existe registro
	resultado=2 No Existe registro
	*/
		if exists (SELECT * FROM gestion_granjas.cat_medidores	WHERE contrato = p_contrato and id_lote=p_idlote and id_medidor!=p_idmedidor and estatus='A') then
			SET resultado=1;
			set mensaje='¡El Contrato ya se encuentra registrado en este Lote!';
		elseif exists(SELECT * FROM gestion_granjas.cat_medidores	WHERE medidor = p_medidor and id_lote=p_idlote and id_medidor!=p_idmedidor and estatus='A') then
			SET resultado=1;
			set mensaje='¡El Medidor ya se encuentra registrado en este Lote!';
		else
			/*En caso de no estar dado de alta continua..*/
			UPDATE gestion_granjas.cat_medidores
			SET
			contrato=p_contrato,
			medidor=p_medidor,
			base_cna=p_basecna,
			fecha_registro=now()
			WHERE
            id_medidor=p_idmedidor;
            
			SET resultado=0;
			set mensaje='¡Se guardaron los cambios correcatmente!!';
		end if;
	else
		/*resultado 4 no existe banco a modificar*/
		set resultado = 2;
        set mensaje='¡el Lote no existe!';
	end if;
/*FIN CODIGO PARA CAMBIOS*/
END IF;
/*||||||||||||||||||||||||||||||||||||||||||||||||||*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_ABCParametros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_ABCParametros`(
IN tipo_mov int,
IN p_idparam int,
IN p_codeparam varchar(45),
IN p_descripcion varchar(245),
IN p_valor varchar(45),
OUT resultado int,
OUT mensaje varchar(100)
)
BEGIN
/*
COMENZAMOS SI TIPO_MOV ES 1 ALTA, 2 BAJA, 3 CAMBIO*/

/*|||||||||||||||||ALTAS|||||||||||||||||||||||||||||||||*/
IF (tipo_mov=1) THEN
/*INICIA CODIGO PARA ALTAS*/
	/*
	resultado=0 Alta, Baja o Cambio exitosa
	resultado=1 Existe  en el parameto
	*/
	/*Checamos si el lote se duplica registro*/
	if exists(SELECT * FROM gestion_granjas.cat_parametros	WHERE code_param = p_codeparam and estatus='A') then
		SET resultado=1;
        set mensaje='¡El Parametro ya se encuentra registrado!';
	else
		/*En caso de no estar dado de alta continua..*/
		INSERT INTO gestion_granjas.cat_parametros
		(
		code_param,
		descripcion,
		valor,
		fecha_registro
		) 
		values
		(
		p_codeparam,
		p_descripcion,
		p_valor,
		now()
		);	
        SET resultado=0;
		set mensaje='¡El Parametro se registró correctamente!';
	end if;
/*FIN CODIGO PARA ALTAS*/

/*||||||||||||||||BAJAS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=2) THEN
/*INICIA CODIGO PARA BAJAS*/
	/* valores resultado
	resultado=0 Baja exitosa
	resultado=2 Problemas con la baja no existe registro
	*/
	if exists (select * from gestion_granjas.cat_parametros where id_param = p_idparam) then
        update gestion_granjas.cat_parametros set estatus="B", fecha_registro=now() where id_param=p_idparam;
        set resultado = 0;
        set mensaje='¡El Parametro se eliminó correcatmente!';
	else
		/*resultado 2 no existe parametro*/
		set resultado = 2;
        set mensaje='¡El Parametro no existe!';
	end if;

/*FIN CODIGO PARA BAJAS*/

/*||||||||||||||||CAMBIOS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=3) THEN 
/*INICIA CODIGO PARA CAMBIOS*/
	/*valores resultado	
    resultado=0 Cambio exitosa
    resultado=1 Existe contrato/medidor
    resultado=2 Problemas con los cambios del registro
	*/
    /*comprobamos que existe el id del lote*/
	if exists(SELECT * FROM gestion_granjas.cat_parametros	WHERE id_param=p_idparam and estatus='A') then
	/*
    resultado=0 Se guardo correctamente
	resultado=1 Existe registro
	resultado=2 No Existe registro
	*/
		SELECT
		  COUNT(*)
		INTO
		  resultado
		FROM
		  gestion_granjas.cat_parametros
		WHERE
		  code_param = p_codeparam and id_param!=p_idparam;
		  /*Checamos si la manzana se duplica*/
		if (resultado=0) then
		/*En caso de no estar dado de alta continua..*/			
				/*al revisar que no se duplica se continua con el registro*/
				update gestion_granjas.cat_parametros
                set code_param=p_codeparam, descripcion=p_descripcion, valor=p_valor, fecha_registro=now() 
                where id_param=p_idparam;
                set mensaje='¡Se guardaron los cambios correcatmente!';
			
		else
			/*resultado 2 existe parametro*/
			SET resultado=1;
            set mensaje='¡El Parametro ya se encuentra registrado!';
		end if;	
	else
		/*resultado 4 no existe banco a modificar*/
		set resultado = 2;
        set mensaje='¡El Parametro no existe!';
	end if;
/*FIN CODIGO PARA CAMBIOS*/
END IF;
/*||||||||||||||||||||||||||||||||||||||||||||||||||*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_ABCPerfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_ABCPerfil`(
IN tipo_mov int,
IN p_perfil varchar(10),
IN p_descripcion varchar(200),
OUT resultado int,
OUT mensaje varchar(100)
)
BEGIN



/*
COMENZAMOS SI TIPO_MOV ES 1 ALTA, 2 BAJA, 3 CAMBIO*/

/*|||||||||||||||||ALTAS|||||||||||||||||||||||||||||||||*/
IF (tipo_mov=1) THEN
/*INICIA CODIGO PARA ALTAS*/
	/*
	
	*/
	SELECT
	  COUNT(*)
	INTO
	  resultado
	FROM
	  gestion_granjas.cat_perfiles
	WHERE
	 trim(descripcion) =trim( p_descripcion) and estatus='A';
	  /*Checamos si el banco se duplica*/
	if (resultado=0) then
	
	
			/*al revisar que no se duplica se continua con el registro*/
			INSERT INTO gestion_granjas.cat_perfiles 
			(
			descripcion,estatus,fecha_registro
			) 
			values
			(
			p_descripcion,'A', now()
            
			);	
            set mensaje='¡El Perfil se registró correcatmente!';
		
	else
		SET resultado=2;
        set mensaje='¡El Perfil ya se encuentra registrado!';
	end if;
/*FIN CODIGO PARA ALTAS*/

/*||||||||||||||||BAJAS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=2) THEN
/*INICIA CODIGO PARA BAJAS*/

	if exists (select * from gestion_granjas.cat_perfiles where id_perfil = p_perfil) then
        update gestion_granjas.cat_perfiles set estatus="B",fecha_registro= now() where  id_perfil = p_perfil;
        set resultado = 0;
        set mensaje='¡El Perfil se eliminó correcatmente!';
	else
		/*resultado 4 no existe banco*/
		set resultado = 4;
        set mensaje='¡El Perfil no existe!';
	end if;

/*FIN CODIGO PARA BAJAS*/

/*||||||||||||||||CAMBIOS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=3) THEN 
/*INICIA CODIGO PARA CAMBIOS*/

	if exists (select * from gestion_granjas.cat_perfiles where  id_perfil = p_perfil and estatus='A') then


		
				/*al revisar que no se duplica se continua con el registro*/
		update gestion_granjas.cat_perfiles set
			descripcion=p_descripcion,fecha_registro= now()
              where id_perfil=p_perfil;
                /*resultado 6 es igual cambio exitoso*/
                /*set resultado=6;*/
                 set resultado = 0;
                set mensaje='¡Se guardaron los cambios correcatmente!';
	
	else
		/*resultado 4 no existe banco a modificar*/
		set resultado = 4;
        set mensaje='¡El Perfil no existe!';
	end if;
/*FIN CODIGO PARA CAMBIOS*/
END IF;
/*||||||||||||||||||||||||||||||||||||||||||||||||||*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_ABCPuesto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_ABCPuesto`(
IN tipo_mov int,
IN p_puesto varchar(10),
IN p_descripcion varchar(200),
OUT resultado int,
OUT mensaje varchar(100)
)
BEGIN



/*
COMENZAMOS SI TIPO_MOV ES 1 ALTA, 2 BAJA, 3 CAMBIO*/

/*|||||||||||||||||ALTAS|||||||||||||||||||||||||||||||||*/
IF (tipo_mov=1) THEN
/*INICIA CODIGO PARA ALTAS*/
	/*
	
	*/
	SELECT
	  COUNT(*)
	INTO
	  resultado
	FROM
	  gestion_granjas.cat_puestos
	WHERE
	 trim(descripcion) =trim( p_descripcion) and estatus='A';
	  /*Checamos si el banco se duplica*/
	if (resultado=0) then
	
	
			/*al revisar que no se duplica se continua con el registro*/
			INSERT INTO gestion_granjas.cat_puestos 
			(
			descripcion,estatus,fecha_registro
			) 
			values
			(
			p_descripcion,'A', now()
            
			);	
            set mensaje='¡El Puesto se registró correcatmente!';
		
	else
		SET resultado=2;
        set mensaje='¡El Puesto ya se encuentra registrado!';
	end if;
/*FIN CODIGO PARA ALTAS*/

/*||||||||||||||||BAJAS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=2) THEN
/*INICIA CODIGO PARA BAJAS*/

	if exists (select * from gestion_granjas.cat_puestos where id_puesto = p_puesto) then
        update gestion_granjas.cat_puestos set estatus="B",fecha_registro= now() where  id_puesto = p_puesto;
        set resultado = 0;
        set mensaje='¡El Puesto se eliminó correcatmente!';
	else
		/*resultado 4 no existe banco*/
		set resultado = 4;
        set mensaje='¡El Puesto no existe!';
	end if;

/*FIN CODIGO PARA BAJAS*/

/*||||||||||||||||CAMBIOS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=3) THEN 
/*INICIA CODIGO PARA CAMBIOS*/

	if exists (select * from gestion_granjas.cat_puestos where  id_puesto = p_puesto and estatus='A') then


		
				/*al revisar que no se duplica se continua con el registro*/
		update gestion_granjas.cat_puestos set
			descripcion=p_descripcion,fecha_registro= now()
              where id_puesto=p_puesto;
                /*resultado 6 es igual cambio exitoso*/
                /*set resultado=6;*/
                 set resultado = 0;
                set mensaje='¡Se guardaron los cambios correcatmente!';
	
	else
		/*resultado 4 no existe banco a modificar*/
		set resultado = 4;
        set mensaje='¡El Puesto no existe!';
	end if;
/*FIN CODIGO PARA CAMBIOS*/
END IF;
/*||||||||||||||||||||||||||||||||||||||||||||||||||*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_ABCUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_ABCUsuario`(
IN tipo_mov int,
IN p_nombre varchar(100),
IN p_direccion varchar(200),
IN p_puesto varchar(2),
IN p_usuario varchar(20),
IN p_pass varchar(100),
IN p_perfil varchar(100),
IN p_estatus varchar(100),
OUT resultado int,
OUT mensaje varchar(100)
)
BEGIN



/*
COMENZAMOS SI TIPO_MOV ES 1 ALTA, 2 BAJA, 3 CAMBIO*/

/*|||||||||||||||||ALTAS|||||||||||||||||||||||||||||||||*/
IF (tipo_mov=1) THEN
/*INICIA CODIGO PARA ALTAS*/
	/*
	resultado=0 Alta, Baja o Cambio exitosa
	resultado=1 Existe registro del banco o de subcuenta
	resultado=2 Existe banco
	resultado=3 Existe subcuenta

	*/
	SELECT
	  COUNT(*)
	INTO
	  resultado
	FROM
	  gestion_granjas.cat_usuarios
	WHERE
	  usuario = p_usuario and estatus='A';
	  /*Checamos si el banco se duplica*/
	if (resultado=0) then
	
	
			/*al revisar que no se duplica se continua con el registro*/
			INSERT INTO gestion_granjas.cat_usuarios 
			(
			nombre,direccion,
            puesto,usuario,contraseña,
            id_perfil,estatus,fecha_registro
			) 
			values
			(
			p_nombre,p_direccion,
            p_puesto,p_usuario,p_pass,
            p_perfil,p_estatus, now()
            
			);	
            set mensaje='¡El Usuario se registró correcatmente!';
		
	else
		SET resultado=2;
        set mensaje='¡El Usuario ya se encuentra registrado!';
	end if;
/*FIN CODIGO PARA ALTAS*/

/*||||||||||||||||BAJAS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=2) THEN
/*INICIA CODIGO PARA BAJAS*/
	/* valores resultado
	resultado=0 Baja exitosa
	resultado=4 Problemas con la baja no existe registro
	*/
	if exists (select * from gestion_granjas.cat_usuarios where usuario = p_usuario) then
        update gestion_granjas.cat_usuarios set estatus="B",fecha_registro= now() where  usuario = p_usuario;
        set resultado = 0;
        set mensaje='¡El Usuario se eliminó correcatmente!';
	else
		/*resultado 4 no existe banco*/
		set resultado = 4;
        set mensaje='¡El Usuario no existe!';
	end if;

/*FIN CODIGO PARA BAJAS*/

/*||||||||||||||||CAMBIOS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=3) THEN 
/*INICIA CODIGO PARA CAMBIOS*/
	/* valores resultado	
    resultado=0 Cambio exitosa
    resultado=4 Problemas con los cambios del registro
	*/
    /*comprobamos que existe el id del banco*/
	if exists (select * from gestion_granjas.cat_usuarios where  usuario = p_usuario and estatus='A') then
	/*
	resultado=1 Existe registro del banco o de subcuenta
	resultado=2 Existe banco
	resultado=3 Existe subcuenta
	*/

		
				/*al revisar que no se duplica se continua con el registro*/
		update gestion_granjas.cat_usuarios set
			nombre=p_nombre,direccion=p_direccion,
			puesto=p_puesto,contraseña=p_pass,
            id_perfil=p_perfil,estatus=p_estatus,fecha_registro= now()
              where usuario=p_usuario;
                /*resultado 6 es igual cambio exitoso*/
                /*set resultado=6;*/
                 set resultado = 0;
                set mensaje='¡Se guardaron los cambios correcatmente!';
	
	else
		/*resultado 4 no existe banco a modificar*/
		set resultado = 4;
        set mensaje='¡El Usuario no existe!';
	end if;
/*FIN CODIGO PARA CAMBIOS*/
END IF;
/*||||||||||||||||||||||||||||||||||||||||||||||||||*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CAdd_Permisos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CAdd_Permisos`(
  IN in_perfil varchar(45),
  IN in_modulo varchar(45),
  OUT resultado boolean
)
BEGIN
DECLARE v_valida int;
set v_valida=0;

select count(*) into v_valida FROM
  gestion_granjas.detalle_accesos
WHERE
	id_perfil = in_perfil and id_modulo=in_modulo;
  
  if(v_valida=0) then
  insert into detalle_accesos (id_perfil,id_modulo)values (in_perfil,in_modulo);
  end if;
  set resultado =true;
  
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CBanco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CBanco`()
BEGIN


  -- Declare the cursor

    SELECT
        *
    FROM gestion_granjas.cat_bancos a
    where estatus='A';


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CColono` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CColono`(
IN op int,
IN p_nombre varchar(250),
IN p_idmanzana int
)
BEGIN
IF (op=1) THEN
    SELECT
        a.id_colono, a.nombre, a.direccion, a.telefono, a.correo
    FROM gestion_granjas.cat_colonos a
    where a.estatus='A' order by a.nombre asc;
ELSEIF (op=2) THEN
    SELECT
        a.id_colono, a.nombre, a.direccion, a.telefono, a.correo
    FROM gestion_granjas.cat_colonos a
    where a.nombre like concat('%',p_nombre, '%') and a.estatus='A' order by a.nombre asc;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CColonoFolio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CColonoFolio`(
IN p_folio int
)
BEGIN
	
    DECLARE v_servicio VARCHAR(2);
	DECLARE v_factor  int;
    DECLARE v_fechaRecibo varchar(10);
    DECLARE v_folio   int;
    DECLARE v_estatus varchar(20);
     
	SELECT id_servicio,id_factor,folio,fecha_pago,
			CASE WHEN estatus='A' THEN 'Activo' 
				  WHEN estatus='X' THEN 'Cancelado'ELSE estatus END as estado 
            into v_servicio,v_factor,v_folio,v_fechaRecibo ,v_estatus FROM gestion_granjas.pagos_anticipos 
    where folio=p_folio ;
    

	IF(v_servicio in('2','4')) then
		SELECT
			b.id_colono, b.nombre, b.direccion, b.telefono, b.correo,a.id_lote,a.lote,c.id_manzana,c.manzana
			,v_folio,v_fechaRecibo,v_estatus
        FROM gestion_granjas.cat_lotes  a
        LEFT JOIN  gestion_granjas.cat_colonos b on a.id_colono=b.id_colono
		LEFT JOIN gestion_granjas.cat_manzanas c on a.id_manzana=c.id_manzana
		where a.id_lote=v_factor and a.estatus='A' ;

	END IF;
    
    IF(v_servicio='3') then
		select 
			c.id_colono, c.nombre, c.direccion, c.telefono, c.correo,b.id_lote,a.lote,d.id_manzana,d.manzana
		    ,v_folio,v_fechaRecibo,v_estatus
        from  gestion_granjas.cat_lotes a
		LEFT JOIN  gestion_granjas.cat_medidores b on a.id_lote=b.id_lote
		LEFT JOIN  gestion_granjas.cat_colonos c on a.id_colono=c.id_colono
		LEFT JOIN gestion_granjas.cat_manzanas d on a.id_manzana=d.id_manzana
		where b.id_medidor=v_factor and b.estatus='A' ;
        
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CColonoNombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CColonoNombre`(
IN p_nombre varchar(240)
)
BEGIN
    SELECT
        a.id_colono, a.nombre, a.direccion, a.telefono, a.correo,b.id_lote,b.lote,c.id_manzana,c.manzana
    FROM gestion_granjas.cat_colonos a
    LEFT JOIN gestion_granjas.cat_lotes b on a.id_colono=b.id_colono
    LEFT JOIN gestion_granjas.cat_manzanas c on b.id_manzana=c.id_manzana
    where a.nombre like concat('%',p_nombre, '%') and a.estatus='A' order by a.nombre asc;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CDel_Permisos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CDel_Permisos`(
  IN in_perfil varchar(45),
  IN in_modulo varchar(45),
  OUT resultado boolean
)
BEGIN
DECLARE v_valida int;
set v_valida=0;

select count(*) into v_valida FROM
  gestion_granjas.detalle_accesos
WHERE
	id_perfil = in_perfil and id_modulo=in_modulo;
  
  if(v_valida>0) then
    DELETE FROM
        gestion_granjas.detalle_accesos
      WHERE
	id_perfil = in_perfil and id_modulo=in_modulo;
 
 end if;
  set resultado =true;
  
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CGet_Menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CGet_Menu`(
  IN perfil int,
  in p_modulo int,
  out p_result boolean
  
)
BEGIN

Declare valida int;
  -- Declare the cursor

    SELECT
      count(*) into valida
    FROM gestion_granjas.detalle_accesos a
    INNER JOIN gestion_granjas.cat_modulos b on a.id_modulo=b.id_modulo and estatus='A' 
    where a.id_modulo=p_modulo and id_perfil=perfil;
 

		if (valida>0) then
		SET p_result:=true;
        else
        SET p_result:=false;
		end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CidLote` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CidLote`(
IN p_idlote int
)
BEGIN
SELECT
        a.id_lote, a.id_manzana, b.manzana, a.lote, a.metros_cuadrados, c.nombre, a.id_colono
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    where a.id_lote=p_idlote and a.estatus='A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CLote` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CLote`(
IN op int,
IN p_idmanzana int,
IN p_lote varchar(45),
IN p_nombre varchar (240)
)
BEGIN
if(op=1) then
/*Muestra todos los lotes*/
    SELECT
        a.id_lote, a.id_manzana, b.manzana, a.lote, a.metros_cuadrados, c.nombre, a.id_colono
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    where a.estatus='A' order by a.id_manzana and a.id_lote asc;
elseif(op=2) then
	/*Consulta por id de manzana y nombre del lote*/
    SELECT
        a.id_lote, a.id_manzana, b.manzana, a.lote, a.metros_cuadrados, c.nombre, a.id_colono, c.direccion
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    where a.lote=p_lote and a.id_manzana=p_idmanzana and a.estatus='A';
elseif(op=3) then
	/*Consulta por nombre del Colono propietario*/
    SELECT
        a.id_lote, a.id_manzana, b.manzana, a.lote, a.metros_cuadrados, c.nombre, a.id_colono
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    where nombre like concat('%',p_nombre, '%') and a.estatus='A';
elseif(op=4) then
/*Muestra todos los lotes*/
    SELECT
        a.id_lote, a.id_manzana, b.manzana, a.lote, a.metros_cuadrados, c.nombre, a.id_colono
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    where a.id_manzana=p_idmanzana and a.estatus='A' order by a.id_manzana and a.id_lote asc;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CManzana` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CManzana`()
BEGIN


  -- Declare the cursor

    SELECT
        *
    FROM gestion_granjas.cat_manzanas a
    where estatus='A' order by id_manzana asc;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CMedidor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CMedidor`(
IN op int,
IN p_idlote int,
IN p_idmedidor int
)
BEGIN
if(op=1) then
/*Muestra todos los medidores con direccion colono*/
SELECT
        a.id_lote, a.id_manzana, b.manzana, a.lote, a.metros_cuadrados, c.nombre, a.id_colono, d.id_medidor, d.contrato
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    left join gestion_granjas.cat_medidores d
    on a.id_lote=d.id_lote
   where d.estatus='A';
elseif(op=2) then
/*busca contratos*/
	SELECT
	a.id_medidor, a.contrato,  a.medidor, a.base_cna
    FROM gestion_granjas.cat_medidores a
    WHERE id_lote=p_idlote and estatus='A';
elseif(op=3) then
/*busca contratos*/
	SELECT
	a.id_medidor, a.contrato,  a.medidor, a.base_cna
    FROM gestion_granjas.cat_medidores a
    WHERE id_medidor=p_idmedidor and estatus='A'; 
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CMedidor2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CMedidor2`(
IN p_idlote int
)
BEGIN
SELECT
	id_medidor, contrato,  medidor, base_cna
    FROM gestion_granjas.cat_medidores where id_lote=p_idlote;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CMenu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CMenu`(
  in tp_modulo int,
  in relModulo int
  
)
BEGIN


  -- Declare the cursor

    SELECT
       a.id_modulo, nombre
    FROM gestion_granjas.cat_modulos a
    where estatus='A' AND TIPO_MODULO=tp_modulo and relacion=relModulo;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CParametros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CParametros`(
IN op int,
IN p_codeparam varchar(45)
)
BEGIN
if(op=1) then
/*Muestra datos parametros de mantenimiento*/
	/*busca parametros*/
	SELECT code_param, valor 
    FROM gestion_granjas.cat_parametros
    where code_param=p_codeparam;
elseif(op=2) then
	/*busca parametros*/
	SELECT code_param, valor 
    FROM gestion_granjas.cat_parametros;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CTarifasAgua` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CTarifasAgua`(
IN op int,
IN p_tarifa int

)
BEGIN
if(op=1) then
/*Muestra todos los lotes*/
    SELECT
        id, rangoIni, rangoFin, costo, tarifa
    FROM gestion_granjas.excedente
    where tarifa=p_tarifa and estatus='A' order by rangoIni asc;
elseif(op=2) then
	/*Consulta por id de manzana y nombre del lote*/
    SELECT max(rangoFin)+1 as siguienteRenglon FROM gestion_granjas.excedente	WHERE tarifa = p_tarifa and estatus='A';
elseif(op=3) then
	/*Consulta por nombre del Colono propietario*/
    SELECT
        a.id_lote, a.id_manzana, b.manzana, a.lote, a.metros_cuadrados, c.nombre, a.id_colono
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    where nombre like concat('%',p_nombre, '%') and a.estatus='A';
elseif(op=4) then
/*Muestra todos los lotes*/
    SELECT
        a.id_lote, a.id_manzana, b.manzana, a.lote, a.metros_cuadrados, c.nombre, a.id_colono
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    where a.id_manzana=p_idmanzana and a.estatus='A' order by a.id_manzana and a.id_lote asc;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_CUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_CUsuario`(in op int)
BEGIN


  -- Declare the cursor
 if(op=1) then
  SELECT    a.id_usuario,usuario,nombre,direccion,b.descripcion as puesto,c.descripcion as perfil, a.puesto,a.id_perfil,a.contraseña
    FROM gestion_granjas.cat_usuarios a 
	inner join gestion_granjas.cat_puestos b on a.puesto=b.id_puesto
     inner join gestion_granjas.cat_perfiles c on a.id_perfil=c.id_perfil
    where a.estatus='A';

end if;

if(op=2) then
    SELECT
        *
    FROM gestion_granjas.cat_puestos a
    where estatus='A';

end if;

if(op=3) then
    SELECT
        *
    FROM gestion_granjas.cat_perfiles a
    where estatus='A';

end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_catalogo_EditParametros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_catalogo_EditParametros`(
IN tipo_mov int,
IN p_codeparam varchar(45),
IN p_valor varchar(45),
OUT resultado int,
OUT mensaje varchar(100)
)
BEGIN

/*||||||||||||||||CAMBIOS||||||||||||||||||||||||||||||||||*/
IF (tipo_mov=1) THEN 
	if exists(SELECT * FROM gestion_granjas.cat_parametros	WHERE code_param=p_codeparam and estatus='A') then
	/*
    resultado=0 Se guardo correctamente
	resultado=1 Existe registro
	resultado=2 No Existe registro
	*/
		update gestion_granjas.cat_parametros
		set valor=p_valor, fecha_registro=now() 
		where code_param=p_codeparam;
		set resultado = 0;
		set mensaje='¡Se guardaron los cambios correcatmente!';
	else
		/*resultado 4 no existe banco a modificar*/
		set resultado = 2;
        set mensaje='¡El Parametro no existe!';
	end if;
/*FIN CODIGO PARA CAMBIOS*/
END IF;
/*||||||||||||||||||||||||||||||||||||||||||||||||||*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CPeriodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CPeriodo`()
BEGIN
SELECT concat('Periodo Activo: ',a.descripcion,' ', b.anio) as periodo FROM gestion_granjas.cat_periodos a left join gestion_granjas.cat_anio b on a.estatus=b.estatus where  b.estatus='A';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cr_ListadoMedidores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cr_ListadoMedidores`(
IN op int,
IN p_manzana varchar(45)
)
BEGIN
if(op=1) then
/*Muestra todos los medidores con direccion colono*/
SELECT
        a.id_lote, a.id_manzana, b.manzana, a.lote, d.medidor, c.nombre,a.metros_cuadrados, d.base_cna
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    left join gestion_granjas.cat_medidores d
    on a.id_lote=d.id_lote
   where d.estatus='A';
elseif(op=2) then
/*busca contratos*/
	SELECT
        a.id_lote, a.id_manzana, b.manzana, a.lote, d.medidor, c.nombre,a.metros_cuadrados, d.base_cna
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    left join gestion_granjas.cat_medidores d
    on a.id_lote=d.id_lote
   where d.estatus='A' and b.manzana=p_manzana;
elseif(op=3) then
/*busca contratos*/
	SELECT
	a.id_medidor, a.contrato,  a.medidor, a.base_cna
    FROM gestion_granjas.cat_medidores a
    WHERE id_medidor=p_idmedidor and estatus='A'; 
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_depura_permisos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_depura_permisos`(
  IN in_perfil varchar(45),
  IN in_modulo varchar(45),
  OUT resultado boolean
)
BEGIN
DECLARE v_valida int;
set v_valida=0;

select count(*) into v_valida FROM
  gestion_granjas.detalle_accesos
WHERE
	id_perfil = in_perfil and id_modulo=in_modulo;
  
  if(v_valida>0) then
    DELETE FROM
        gestion_granjas.detalle_accesos
      WHERE
	id_perfil = in_perfil and id_modulo=in_modulo;
 
 end if;
  set resultado =true;
  
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_Antp_AddAnticipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_Antp_AddAnticipo`(IN pColono INT,
	IN pManzana int,
	IN pLote int,
	IN pMeses VARCHAR(100),
	IN pImpEfectivo double,
	IN pCheque VARCHAR(50),
	IN pBancoCheque int,
	IN pImpCheque double,
	IN pNoFicha varchar(50),
	IN pBancoFicha int,
	IN pImpFicha double,
    IN pDescuento double,
    IN pServicio double,
    OUT resultado boolean)
BEGIN
  declare texto text;
  declare delimitador char(1);
  declare pos int default 1;
  declare Str varchar(200);
  -- ----------------------------
  
  declare op int;  
  declare parametro double;
  declare metrosCuadrados double default 0;
  declare importeCuota double;
  declare fecha varchar(10);
  declare fechaTarifa  varchar(10);
  declare c int default 0;
  declare folioPago int default 0;
  declare periodoPagoDet varchar(2);
  declare anioPagoDet varchar(4);
  declare folioCuota varchar(20);
  declare nombreServicio varchar(100);
  declare v_anio varchar(4);
  set delimitador=',';
  set texto =pMeses;
  
  -- *************************************************************
  -- **** Se obtiene el folio del Pago
  -- *************************************************************
  select IFNULL(max(folio),0)+1 into folioPago from gestion_granjas.pagos_anticipos;
  
  if(folioPago=0) then
	 
     SET folioPago=1;
  end if;

  -- *************************************************************
  -- **** Se obtiene el folio de la cuota
  -- *************************************************************
    select folio, trim(servicio) into folioCuota,nombreServicio from gestion_granjas.cat_servicios
   where id_servicio=pServicio;
  
    -- ***************************************************************
  
  
  SELECT metros_cuadrados into metrosCuadrados FROM gestion_granjas.cat_lotes
  where id_colono=pColono and id_manzana=pManzana and id_lote=pLote;
  

   
  -- *************************************************************************
  -- **** Consulta de tarifa por periodo
  -- *************************************************************************
        SELECT TIPO,VALOR INTO op,parametro FROM gestion_granjas.tarifas_mantenimiento
			where estatus = 'A';

	-- **************************************************************************
    
		SELECT ANIO into v_anio FROM gestion_granjas.cat_anio WHERE ESTATUS='A';

 -- ******************************************************
 -- ***		Lectura de meses
 -- ******************************************************
 WHILE CHAR_LENGTH(texto) > 0 AND Pos > 0 DO
  SET pos = INSTR(texto, delimitador); 
  IF pos = 0 THEN 
     SET Str = texto; 
  ELSE 
     SET Str = LEFT(texto, pos - 1); 
  END IF; 
  
   IF TRIM(Str) != '' THEN 
   
		-- Armado de fechas
		
        set fechaTarifa=CONCAT(v_anio,'-',LPAD(Str,2,'0'),"-01");
        set periodoPagoDet=LPAD(Str,2,'0');
        set anioPagoDet=v_anio;
        
       
       -- Cuota definida
        IF(op=1) THEN        
        SET importeCuota=parametro;
		END IF;
        
        -- Cuota calculada
        IF(op=2) THEN        
        SET importeCuota= parametro * metrosCuadrados;		
        END IF;
        
-- SELECT Str; 
	END IF; 
   
      SET texto = SUBSTRING(texto, pos + 1); 
	-- Contador
	set c =c+1;
    
    -- Se inserta la cuota por fecha del lote en detalle de pagos
     insert into  gestion_granjas.pagos_detalle( folio_pago,cuota,periodo,anio,tipo_pago)
     values(folioPago,importeCuota,periodoPagoDet,anioPagoDet,3);
    set resultado=true;
    
    -- Se registra kardex de cuotas cubiertas
    insert into gestion_granjas.kardex_servicios(folio, folio_pago, id_factor, id_servicio, importe, 
    servicio,periodo,anio, estatus,  fecha_registro,tipo_pago)
    VALUES(folioCuota,folioPago,pLote,pServicio,importeCuota,nombreServicio,periodoPagoDet,anioPagoDet,'S',NOW(),3);
    
  END WHILE;
  
  -- Validaciones 
  IF(pImpFicha=0) THEN
  SET pBancoFicha=0;
  END IF;
  
  IF(pImpCheque=0) THEN
  SET pBancoCheque=0;
  END IF;
  
  -- Registra encabezado del pago
  insert into  gestion_granjas.pagos_anticipos(folio,id_factor,id_servicio,fecha_Pago,
							importe_efectivo,no_cheque,banco_cheque,importe_cheque,no_ficha,
                            banco_ficha,importe_ficha,descuento) 
     values(folioPago,pLote,pServicio,now(),pImpEfectivo ,pCheque , pBancoCheque ,pImpCheque , pNoFicha ,
           pBancoFicha , pImpFicha ,pDescuento);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_Antp_AddAnticipoAgua` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_Antp_AddAnticipoAgua`(IN pColono INT,
	IN pManzana int,
	IN pLote int,
	IN pMeses VARCHAR(100),
	IN pImpEfectivo double,
	IN pCheque VARCHAR(50),
	IN pBancoCheque int,
	IN pImpCheque double,
	IN pNoFicha varchar(50),
	IN pBancoFicha int,
	IN pImpFicha double,
    IN pDescuento double,
    IN pServicio double,
    OUT resultado boolean)
BEGIN
  declare texto text;
  declare delimitador char(1);
  declare pos int default 1;
  declare Str varchar(200);
  -- ----------------------------
  
  declare op int;  
  declare parametro double;
  declare metrosCuadrados double default 0;
  declare importeCuota double;
  declare fecha varchar(10);
  declare fechaTarifa  varchar(10);
  declare c int default 0;
  declare idColono int default 0;
  declare periodoPagoDet varchar(2);
  declare anioPagoDet varchar(4);
  declare folioCuota varchar(20);
  declare nombreServicio varchar(100);

  set delimitador=',';
  set texto =pMeses;
  
  -- *************************************************************
  -- **** Se obtiene el folio del Pago
  -- *************************************************************
  select ifnull(id,0) into idColono from gestion_granjas.saldo_anticipos 
  where id_factor=pColono;
	
  	SET importeCuota = pImpEfectivo + pImpCheque + pImpFicha;

  
  
  if(idColono=0) then
	INSERT INTO gestion_granjas.saldo_anticipos (ID_FACTOR,SALDO,FECHA_CAMBIO)
    VALUES(pColono,importeCuota,NOW());
    ELSE 
    UPDATE gestion_granjas.saldo_anticipos SET SALDO=SALDO+importeCuota ,FECHA_CAMBIO=NOW()
      where id_factor=pColono;
  end if;
  

    set resultado=true;
    

  
  -- Registra encabezado del pago
  insert into  gestion_granjas.detalle_anticipos(id_factor,id_servicio,fecha_anticipo,importe,
							importe_efectivo,no_cheque,banco_cheque,importe_cheque,no_ficha,
                            banco_ficha,importe_ficha,estatus) 
     values(pColono,pServicio,now(),importeCuota,pImpEfectivo ,pCheque , pBancoCheque ,pImpCheque , pNoFicha ,
           pBancoFicha , pImpFicha ,'A');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_Antp_AddCasaClub` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_Antp_AddCasaClub`(IN pColono INT,
IN pImpEfectivo double,
IN pCheque VARCHAR(50),
IN pBancoCheque int,
IN pImpCheque double,
IN pNoFicha varchar(50),
IN pBancoFicha int,
IN pImpFicha double,
    IN pServicio double,
    IN pCC VARCHAR(200),
    IN pConcepto VARCHAR(200),
    OUT resultado boolean)
BEGIN


  declare importeCuota double;
    declare folioPago int default 0;
    declare v_periodo varchar(2);
    declare v_anio varchar(4);

  
  -- *************************************************************
  -- **** Se obtiene el folio del Pago
  -- *************************************************************
  
  select IFNULL(max(folio),0)+1 into folioPago from gestion_granjas.pagos_anticipos;
  
  if(folioPago=0) then
 
     SET folioPago=1;
  end if;
  SELECT periodo into v_periodo  FROM gestion_granjas.cat_periodos WHERE estatus='A';
  SELECT anio into v_anio  FROM gestion_granjas.cat_anio WHERE estatus='A';

  SET importeCuota = pImpEfectivo + pImpCheque + pImpFicha;

  set resultado=true;

    insert into  gestion_granjas.pagos_detalle( folio_pago,cuota,periodo,anio,tipo_pago)
values(folioPago,importeCuota, v_periodo , v_anio ,5);
           
         -- Validaciones 
  IF(pImpFicha=0) THEN
  SET pBancoFicha=0;
  END IF;
  
  IF(pImpCheque=0) THEN
  SET pBancoCheque=0;
  END IF;   
  
    -- Registra encabezado del pago
  insert into  gestion_granjas.pagos_anticipos(folio,id_factor,id_servicio,fecha_Pago,
importe_efectivo,no_cheque,banco_cheque,importe_cheque,no_ficha,
                            banco_ficha,importe_ficha,cuenta_contable,concepto) 
     values(folioPago,pColono,pServicio,now(),pImpEfectivo ,pCheque , pBancoCheque ,pImpCheque , pNoFicha ,
           pBancoFicha , pImpFicha, pCC, pConcepto );
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_Antp_CalculaPartidas` */;
ALTER DATABASE `gestion_granjas` CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_Antp_CalculaPartidas`(IN pColono INT,
IN pManzana int,
IN pLote int,
IN pMeses VARCHAR(100))
BEGIN
  declare texto text;
  declare delimitador char(1);
  declare pos int default 1;
  declare Str varchar(200);
  -- ----------------------------
  
  declare op int;  
  declare parametro double;
  declare metrosCuadrados double default 0;
  declare cuota double;
  declare fecha varchar(10);
  declare fechaTarifa  varchar(10);
  declare c int default 0;
  
  set delimitador=',';
  set texto =pMeses;
  
  SELECT metros_cuadrados into metrosCuadrados FROM gestion_granjas.cat_lotes
  where id_colono=pColono and id_manzana=pManzana and id_lote=pLote;
  
  
  -- *************************************************************************
  -- **** Consulta de tarifa por periodo
  -- *************************************************************************
        SELECT TIPO,VALOR INTO op,parametro FROM gestion_granjas.tarifas_mantenimiento
			where estatus = 'A';
	-- **************************************************************************
       
  
  -- ****************************************************
  -- ****		Cracion de tabla temporal
  -- ****************************************************
	drop table if exists tmpCuotas;
    CREATE TEMPORARY TABLE IF NOT EXISTS tmpCuotas (   id int(10) NOT NULL ,
		idColono varchar(50),
	  fechaCuota varchar(10) ,
      cuotaMA double	   
	) ;
  -- ********************************************************
 
 -- ******************************************************
 -- ***		Lectura de meses
 -- ******************************************************
 WHILE CHAR_LENGTH(texto) > 0 AND Pos > 0 DO
  SET pos = INSTR(texto, delimitador); 
  IF pos = 0 THEN 
     SET Str = texto; 
  ELSE 
     SET Str = LEFT(texto, pos - 1); 
  END IF; 
  
   IF TRIM(Str) != '' THEN 
   
		-- Armado de fechas
		set fecha=CONCAT('01/',LPAD(Str,2,'0'),"/16");
        set fechaTarifa=CONCAT('2016-',LPAD(Str,2,'0'),"-01");
        
        
       -- Cuota definida
        IF(op=1) THEN        
        SET cuota=parametro;
		END IF;
        
        -- Cuota calculada
        IF(op=2) THEN        
        SET cuota= parametro * metrosCuadrados;		
        END IF;
        
-- SELECT Str; 
	END IF; 
   
      SET texto = SUBSTRING(texto, pos + 1); 
	-- Contador
	set c =c+1;
    
    -- Se inserta la cuota por fecha del colono
     insert into  tmpCuotas(id,idColono,fechaCuota,cuotaMA) values(c,pColono,fechaTarifa,cuota);
     
  END WHILE;
  
  -- Consulta de cuotas calculadas
  select 'Cuotas de Mantenimiento', date_format(fechaCuota, '%b %Y'),TRUNCATE(cuotaMA,2)  from tmpCuotas order by id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `gestion_granjas` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_Antp_CAnticipos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_Antp_CAnticipos`(
IN p_idlote int
)
BEGIN
DECLARE v_anio varchar(4);
DECLARE servicio int;
DECLARE v_perActual varchar(2);

SET servicio=2;
-- set v_anio='2016';
SELECT anio into v_anio FROM gestion_granjas.cat_anio where estatus='A';
SELECT periodo into v_perActual FROM gestion_granjas.cat_periodos WHERE estatus='A';

SELECT PERIODO  FROM gestion_granjas.kardex_servicios where id_servicio=servicio
				and id_factor=p_idlote
				and estatus ='S' 
                AND PERIODO>=date_format(DATE_ADD(CONCAT(v_anio,'-',v_perActual,'-01'), INTERVAL +1 MONTH), '%m')
				and anio=v_anio ORDER BY PERIODO ASC;
 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_Antp_CPeriodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_Antp_CPeriodo`(out v_periodo int)
BEGIN


SELECT periodo into v_periodo  FROM gestion_granjas.cat_periodos WHERE estatus='A';


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_Antp_ValidaAdeudo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_Antp_ValidaAdeudo`(
IN p_idlote int,
IN p_servicio INT,
OUT respuesta boolean
)
BEGIN
-- Servicio de Mantenimiento
declare pServicio int default 2;
declare valida int default 0;

	if(p_servicio=2) then
		SELECT count(*) into valida FROM gestion_granjas.kardex_servicios where id_servicio=p_servicio
		and id_factor=p_idlote
		 and estatus in ('V','A') ;
	end if;
    
    if(p_servicio=3) then
		SELECT count(*) into valida from kardex_servicios a
		inner join gestion_granjas.cat_medidores b on  a.id_factor=b.id_medidor
		where a.id_servicio=p_servicio		and b.id_lote=p_idlote
		 and a.estatus in ('V','A');
	end if;
    
    if(p_servicio=4) then
	
         SELECT COUNT(0) into valida   FROM gestion_granjas.convenios where estatus='A'
         AND id_lote=p_idlote;
         
	end if;
    
 if(valida >0)then
    
    SET respuesta=true;
 else 
	SET respuesta=false;
 end if;
 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_Cancelacion_CFolio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_Cancelacion_CFolio`(
IN p_folio int
)
BEGIN
-- Servicio de Mantenimiento
declare pServicio int default 2;
declare valida int default 0;
SET lc_time_names = 'es_UY';

 SELECT a.folio,c.servicio,(CONCAT(( date_format(concat(a.anio,'-',a.periodo,'-01'),'%M')),' ',a.anio)) as mes,
		a.cuota,
		TRUNCATE( (IFNULL((SELECT e.cuota FROM  gestion_granjas.pagos_detalle e WHERE e.folio_pago=b.folio  and e.tipo_pago=9),0)),2) as mora,
		d.descripcion as estatus
 FROM gestion_granjas.pagos_detalle a
		left join gestion_granjas.pagos_anticipos b on a.folio_pago=b.folio 
		left join gestion_granjas.cat_servicios c on b.id_servicio=c.id_servicio
		left join  gestion_granjas.cat_tipopago d on a.tipo_pago=d.id
	WHERE b.folio=p_folio and b.estatus='A' and a.tipo_pago!=9;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_Convenios_GeneraPagos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_Convenios_GeneraPagos`(
IN p_idlote int,
IN p_impTotal double,
IN p_impConvenio double,
IN p_pagoMensual double,
IN p_dipDiaLimite int,
IN p_Bandera  boolean
)
BEGIN
-- Servicio de Mantenimiento
declare pServicio int default 2;
declare validaMto int default 0;
declare validaAgua int default 0;
declare valida int default 0;
declare vNumPartidas int default 2;
declare c int default 0; 
declare parcialidad int default 0; 
declare vTotal double default 0;
declare vDiferencial double default 0;
declare vPagoMensual double default 0;
declare v_anio varchar(4);
declare v_periodo varchar(2);
declare IdUltima int default 0;
declare v_ultDia int default 0;
declare v_dipDiaLimite  int default 0;
declare v_mes varchar(2);
declare v_fecha_convenio varchar(10);
declare v_fecha_inicial varchar(10);
  -- ****************************************************
  -- ****		Cracion de tabla temporal
  -- ****************************************************
	drop table if exists tmpConvenio;
    CREATE TEMPORARY TABLE IF NOT EXISTS tmpConvenio (   id int(10) NOT NULL ,
		idlote varchar(50),
        numPago int,
	  fechaConvenio date ,
      cuota double	   
	) ;
  -- ********************************************************

  -- Calcula numero de pagos	
	SET vNumPartidas=p_impConvenio/p_pagoMensual;
	SET c=0;
    
     SELECT ANIO into v_anio FROM gestion_granjas.cat_anio WHERE ESTATUS='A';
	 SELECT PERIODO into v_periodo FROM gestion_granjas.cat_periodos WHERE ESTATUS='A';

     
   --  SET v_periodo= LPAD(date_format(now(), '%c' ),2,0);
  -- ********************************************************
  -- 		Inicia calculo de convenio
  -- ********************************************************
	-- SELECT date_format(LAST_DAY(now(),INTERVAL c MONTH ),'%d')  into v_ultDia from dual;

  
     WHILE(c<= vNumPartidas) DO

		SET c= c + 1;
			SET vTotal = vTotal + p_pagoMensual;
            
			IF(vTotal>p_impConvenio) THEN
				SET vDiferencial = vTotal - p_impConvenio;
                SET vPagoMensual =p_pagoMensual - vDiferencial;
            ELSE
				SET vPagoMensual =p_pagoMensual;
            END IF;
            SELECT date_format(LAST_DAY(DATE_ADD(CONCAT(v_anio,'-',v_periodo,'-01'),INTERVAL c MONTH )),'%d')   into v_ultDia from dual;
			SELECT date_format(LAST_DAY(DATE_ADD(CONCAT(v_anio,'-',v_periodo,'-01'),INTERVAL c MONTH )),'%m')   into v_mes from dual;

            	
			if(p_dipDiaLimite<=v_ultDia) then
					SET v_dipDiaLimite=p_dipDiaLimite;
				ELSE
                  SET v_dipDiaLimite=v_ultDia;
			end if;
           if(v_periodo = '02') THEN
			 -- SELECT date_format(LAST_DAY(DATE_ADD(CONCAT(v_anio,'-','02','-01'),INTERVAL c MONTH )),'%d')   into v_ultDia from dual;
		
              SET v_fecha_inicial=CONCAT(v_anio,'-','01','-',v_dipDiaLimite);
              SET v_fecha_convenio= DATE_ADD( v_fecha_inicial, INTERVAL c+1 MONTH );
                              INSERT  INTO TEST(VALOR)VALUE(CONCAT(v_ultDia,'----',v_dipDiaLimite,' FECHA:',CONCAT(v_anio,'-',v_mes,'-',v_dipDiaLimite)));
				
              ELSE
              SET v_fecha_inicial= CONCAT(v_anio,'-',v_periodo,'-',v_dipDiaLimite);
              SET v_fecha_convenio= DATE_ADD( v_fecha_inicial, INTERVAL c MONTH );
              
              END IF;
              
           
            
         IF(p_Bandera=false) then   
				INSERT INTO tmpConvenio(id,idLote,numPago,cuota,fechaConvenio)
				VALUES(c,p_idlote,c,vPagoMensual,( v_fecha_convenio) );
          END IF;
           
           IF(p_Bandera=true AND vPagoMensual>0) then             
				 SELECT AUTO_INCREMENT AS id into IdUltima
					FROM information_schema.Tables
				 WHERE TABLE_SCHEMA='gestion_granjas' AND table_name='convenios';
           
				INSERT INTO  gestion_granjas.convenios_detalle (id_convenio,cuota,num_pago,fecha_convenio, estatus)
				VALUES(IdUltima,vPagoMensual,c,v_fecha_convenio,'A');
			END IF;
            
            IF (vPagoMensual>0) THEN
				SET parcialidad= parcialidad + 1;
             END IF;   
            
      END WHILE;
    -- 		Finaliza Calculo Convenios  
	-- ********************************************************
	IF(p_Bandera=false) then
		select 'CONV001 ', a.* FROM tmpConvenio a WHERE a.CUOTA>0;
        
	 END IF;
     
     IF(p_Bandera=true) then 
		INSERT INTO gestion_granjas.convenios(id_lote,importe_total,importe_convenio,pago_mensual,dialimite_pago,num_parcialidades,estatus,fecha_registro)
		VALUES(p_idlote,p_impTotal,p_impConvenio,p_pagoMensual,p_dipDiaLimite,parcialidad,'A',now());
        
        -- Actualiza Cuotas Mantenimiento
        UPDATE   gestion_granjas.kardex_servicios SET ID_CONVENIO=IdUltima,  ESTATUS='C' WHERE ID_FACTOR=p_idlote AND 
        id_servicio=2 	AND estatus in('A','V');
        
		-- Actualiza Cuotas Agua
		UPDATE   gestion_granjas.kardex_servicios SET ID_CONVENIO=IdUltima ,  ESTATUS='C'
          WHERE  id_servicio=3 	AND estatus in('A','V') 
          and ID_FACTOR IN(SELECT a.id_medidor FROM  gestion_granjas.cat_medidores a
					WHERE a.id_lote=p_idlote	);
        
        select true from dual;
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_Convenios_ValidaAdeudo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_Convenios_ValidaAdeudo`(
IN p_idlote int,
OUT respuesta boolean
)
BEGIN
-- Servicio de Mantenimiento
declare pServicio int default 2;
declare validaMto int default 0;
declare validaAgua int default 0;
declare valida int default 0;



-- Consulta Adeudos de Mantenimiento
		SELECT count(*) into validaMto FROM gestion_granjas.kardex_servicios where id_servicio=2
		and id_factor=p_idlote
		 and estatus in ('V','A') ;

    
-- Consulta Adeudos de Agua
		SELECT count(*) into validaAgua from kardex_servicios a
		inner join gestion_granjas.cat_medidores b on  a.id_factor=b.id_medidor
		where a.id_servicio=3		and b.id_lote=p_idlote
		 and a.estatus in ('V','A');

    SET valida=validaMto + validaAgua;
    
	 if(valida >0)then
		
		SET respuesta=true;
	 else 
		SET respuesta=false;
	 end if;
 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_CTarifasAgua_ABC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_CTarifasAgua_ABC`(
IN tipo_mov int,
IN p_id int,
IN p_de int,
IN p_a int,
IN p_costoimporte double,
IN p_tarifa int,
OUT resultado int,
OUT mensaje varchar(100)
)
BEGIN
/*
COMENZAMOS SI TIPO_MOV ES 1 ALTA, 2 BAJA, 3 CAMBIO*/
DECLARE v_de, v_a int;
DECLARE v_costoimpBD double;
DECLARE v_descripcion varchar (45);

/*|||||||||||||||||ALTAS|||||||||||||||||||||||||||||||||*/
IF (tipo_mov=1) THEN
/*INICIA CODIGO PARA ALTAS*/
	/*
	resultado=0 Alta, Baja o Cambio exitosa
	resultado=1 Existe contrato/medidor en el lote
	*/
	  /*Checamos si hay registros en la tabla de tarifas*/
	if exists (SELECT * FROM gestion_granjas.excedente	WHERE tarifa = p_tarifa and estatus='A') then
		/*hay registro en la table entonces generamos el valor de inicio*/
        /*Aqui se define el valor para v_de tarifa 1 y tarifa 2*/
        SELECT ifnull(max(rangoFin)+1,1) INTO v_de FROM gestion_granjas.excedente	WHERE tarifa = p_tarifa and estatus='A';
	else
		SET v_de=1;		
	end if;
	SET v_descripcion=CONCAT(v_de, ' A ', p_a);
    
   SELECT ifnull(max(costo),0) INTO v_costoimpBD FROM gestion_granjas.excedente WHERE tarifa = p_tarifa and estatus='A';
   
   if(p_costoimporte>v_costoimpBD) then
   INSERT INTO gestion_granjas.excedente
		(
		descripcion,
		costo,
		rangoIni,
		rangoFin,
        tarifa,
        fecha_registro
		) 
		values
		(
		v_descripcion,
		p_costoimporte,
		v_de,
        p_a,
        p_tarifa,
		now()
        );	
        SET resultado=0;
		set mensaje='¡El Renglón se registró correctamente!';
   else
	SET resultado=1;
    if (p_tarifa=1) then
		set mensaje='¡Costo debe ser mayor!';
	else
        set mensaje='¡Importe debe ser mayor!';
    end if;
	
		
   end if;
   
	
		
		

/*FIN CODIGO PARA ALTAS*/

/*||||||||||||||||BAJAS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=2) THEN
/*INICIA CODIGO PARA BAJAS*/
	/* valores resultado
	resultado=0 Baja exitosa
	resultado=2 Problemas con la baja no existe registro
	*/
	if exists (select * from gestion_granjas.excedente where tarifa = p_tarifa) then
        update gestion_granjas.excedente set estatus="B", fecha_registro=now() where tarifa=p_tarifa;
        set resultado = 0;
        set mensaje='¡La Tabla de eliminó correcatmente!';
	else
		/*resultado 2 no existe lote*/
		set resultado = 2;
        set mensaje='¡La tabla no existe!';
	end if;

/*FIN CODIGO PARA BAJAS*/

/*||||||||||||||||CAMBIOS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=3) THEN 
/*INICIA CODIGO PARA CAMBIOS*/
	/*valores resultado	
    resultado=0 Cambio exitosa
    resultado=1 Existe contrato/medidor
    resultado=2 Problemas con los cambios del registro
	*/
    /*comprobamos que existe el id del lote*/
	if exists (select * from gestion_granjas.excedente where id = p_id and estatus='A') then
	/*
    resultado=0 Se guardo correctamente
	resultado=1 Existe registro
	resultado=2 No Existe registro
	*/
			UPDATE gestion_granjas.excedente
			SET
			costo=p_costoimporte,
			fecha_registro=now()
			WHERE
            id=p_id;
            
			SET resultado=0;
			set mensaje='¡Se guardaron los cambios correcatmente!!';
	else
		/*resultado 4 no existe banco a modificar*/
		set resultado = 2;
        set mensaje='¡El valor no existe!';
	end if;
/*FIN CODIGO PARA CAMBIOS*/
END IF;
/*||||||||||||||||||||||||||||||||||||||||||||||||||*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_Login_ValidaUsr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_Login_ValidaUsr`(
  IN usr varchar(45),
  IN contra varchar(45),
  OUT resultado INT,
  OUT perfil INT
)
BEGIN


SELECT
  COUNT(*)
INTO
  resultado
FROM
  gestion_granjas.cat_usuarios
WHERE
  usuario = usr and contraseña = contra ;
  if (resultado=1) then
	SELECT a.id_perfil into perfil from gestion_granjas.cat_usuarios a
    inner join cat_perfiles b on a.id_perfil=b.id_perfil
    where  a.usuario = usr;
  end if;
  
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PagoMto_AddPago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PagoMto_AddPago`(
IN pkardex VARCHAR(100),
IN pidlote int,
IN pServicio int,
IN pImpEfectivo double,
IN pCheque VARCHAR(50),
IN pBancoCheque int,
IN pImpCheque double,
IN pNoFicha varchar(50),
IN pBancoFicha int,
IN pImpFicha double,
IN pMulta double,
IN pidColono int,
OUT resultado int
)
BEGIN
	declare texto text;
	declare delimitador char(1);
	declare pos int default 1;
	declare Str varchar(200);
  -- ----------------------------
    DECLARE done INT DEFAULT FALSE;

	-- declare pServicio int default 2;
	declare valida int default 0;
	declare v_estatus varchar(2) ;
	declare fecha varchar(10);
	declare fechaTarifa  varchar(10);
	declare c int default 0;
	declare folioPago int default 0;
	declare periodoPagoDet varchar(2);
	declare anioPagoDet varchar(4);
	declare folioCuota varchar(20);
	declare nombreServicio varchar(100);
	declare importeCuota double;
    declare pidEstatus int default 0;
    declare v_idServicio int default 0;
	declare folioDetCuota int default 0;
	declare valColono int default 0;
	declare valSaldo double default 0;
	declare valIdAnticipo int default 0;
	declare valImporteAnticipo double default 0;
	declare valTotImporteAnticipo double default 0;
	declare valTotalPago double default 0;
	declare valEstatusAnticipo varchar(2) ;
	declare valSaldoAnticipo double default 0;
	declare valCalculoAnticipo double default 0;
    declare importeTotalCuota double default 0;
    DECLARE valMonto DOUBLE DEFAULT 0;
	DECLARE v_anio VARCHAR(4);
    DECLARE v_parcialidades INT DEFAULT 0;
    DECLARE v_numPagConvenio INT DEFAULT 0;
    DECLARE v_moratorio DOUBLE DEFAULT 0;
    DECLARE v_factor		INT;

 
  -- *************************************************************
  -- **** Se inicializa cursor para pago de cuotas de agua
     declare  cur  cursor for   select id,importe from gestion_granjas.detalle_anticipos 
     where id_servicio=3 and id_factor=pidColono and estatus='A';
		 DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
      
    
	SET v_estatus='S';    
	set delimitador=',';
	set texto =pkardex;    
	SET valEstatusAnticipo='';
 
   set valTotalPago= pImpEfectivo+ pImpCheque+ pImpFicha;
 -- *************************************************************
  -- **** Se obtiene el folio del Pago
  -- *************************************************************
  select IFNULL(max(folio),0)+1 into folioPago from gestion_granjas.pagos_anticipos;
  
  if(folioPago=0) then
	 
     SET folioPago=1;
  end if;
  
  -- *************************************************************
  -- **** Se obtiene el folio de la cuota
  -- *************************************************************
    select folio, trim(servicio) into folioCuota,nombreServicio from gestion_granjas.cat_servicios
   where id_servicio=pServicio;
    
    -- ----------------------------------------------
      SELECT ANIO into v_anio FROM gestion_granjas.cat_anio WHERE ESTATUS='A';
  -- ********************************************************
  -- ** DATOS CONVENIO
  -- ********************************************************
  
  SELECT num_parcialidades into v_parcialidades FROM gestion_granjas.convenios where id_lote= pidlote AND ESTATUS='A';
  
  -- *******************************************************
  
 -- ******************************************************
 -- ***		Lectura de meses
 -- ******************************************************
	 WHILE CHAR_LENGTH(texto) > 0 AND Pos > 0 DO
	  SET pos = INSTR(texto, delimitador); 
	  IF pos = 0 THEN 
		 SET Str = texto; 
	  ELSE 
		 SET Str = LEFT(texto, pos - 1); 
	  END IF; 
	  
	   IF TRIM(Str) != '' THEN 
	   
			-- Armado de fechas
			set fechaTarifa=CONCAT(v_anio,'-',LPAD(Str,2,'0'),"-01");
			set periodoPagoDet=LPAD(Str,2,'0');
			set anioPagoDet=v_anio;
			
             	SET v_estatus='S';  
				select importe - IFNULL(saldo_pagado,0),periodo,anio,estatus,id_factor 
                into importeCuota ,periodoPagoDet,anioPagoDet,v_estatus,v_factor from kardex_servicios WHERE ID=Str;

				IF(v_estatus='A') THEN 
					SET pidEstatus=1;
				
				END IF;
				IF(v_estatus='V') THEN 
					SET pidEstatus=2;
				
				END IF;
				IF(v_estatus='C') THEN 
					SET pidEstatus=4;
				
				END IF;
                
				if(pServicio=2) then
				
				-- Se inserta la cuota por fecha del lote en detalle de pagos
				insert into  gestion_granjas.pagos_detalle( folio_pago,cuota,periodo,anio,tipo_pago)
								values(folioPago,importeCuota,periodoPagoDet,anioPagoDet,pidEstatus);
                                commit;
                                
                 select folio INTO folioDetCuota from  gestion_granjas.pagos_detalle
                 where  folio_pago = folioPago and periodo= periodoPagoDet and anio= anioPagoDet ;    
                 
                 -- Se consulta el moratorio
                 select TRUNCATE(sum(importe),2) into v_moratorio from gestion_granjas.kardex_servicios_detalle 
						where id_factor=v_factor and id_servicio=2 and periodo=periodoPagoDet and anio=anioPagoDet  and estatus='A';
                        
                 IF(v_moratorio>0) THEN
						insert into  gestion_granjas.pagos_detalle( folio_pago,cuota,periodo,anio,tipo_pago)
								values(folioPago,v_moratorio,periodoPagoDet,anioPagoDet,9);
                                commit;
                 END IF;
                 -- Actualiza mora
				UPDATE gestion_granjas.kardex_servicios_detalle SET estatus='S'
						where id_factor=v_factor and id_servicio=2 and periodo=periodoPagoDet and anio=anioPagoDet  and estatus='A';
                            
                 
                 UPDATE kardex_servicios SET ESTATUS='S' , FOLIO_PAGO=folioDetCuota, TIPO_PAGO=pidEstatus,
					 FECHA_REGISTRO=NOW() WHERE ID=Str;
                     
				 end if;
    
                  SET valTotImporteAnticipo =0;
                  
                 if(pServicio=3) then
					
							insert into  gestion_granjas.pagos_detalle( folio_pago,cuota,periodo,anio,tipo_pago)
										values(folioPago,importeCuota,periodoPagoDet,anioPagoDet,pidEstatus);
										commit;
										
							select MAX(folio) INTO folioDetCuota from  gestion_granjas.pagos_detalle
								where  folio_pago = folioPago and periodo= periodoPagoDet and anio= anioPagoDet ;   
						 
							-- Se consulta el moratorio
							 select TRUNCATE(sum(importe),2) into v_moratorio from gestion_granjas.kardex_servicios_detalle 
									where id_factor=v_factor and id_servicio=3 and periodo=periodoPagoDet and anio=anioPagoDet  and estatus='A';
									
							 IF(v_moratorio>0) THEN
									insert into  gestion_granjas.pagos_detalle( folio_pago,cuota,periodo,anio,tipo_pago)
											values(folioPago,v_moratorio,periodoPagoDet,anioPagoDet,9);
											commit;
							 END IF;
                         
                         
							UPDATE kardex_servicios SET ESTATUS='S' , FOLIO_PAGO=folioDetCuota, TIPO_PAGO=pidEstatus,
								FECHA_REGISTRO=NOW() WHERE ID=Str;
							
                            
							-- Actualiza mora
							UPDATE gestion_granjas.kardex_servicios_detalle SET estatus='S'
									where id_factor=v_factor and id_servicio=3 and periodo=periodoPagoDet and anio=anioPagoDet  and estatus='A';
                                
                             										
							INSERT INTO gestion_granjas.gestion_cuotas_agua(id_kardex,id_medio,tipo,monto,tipo_pago)
							values(Str,folioDetCuota,'PA',TRUNCATE(importeCuota,2),pidEstatus);
                            
					end if;
                 
                 
                  if(pServicio=4) then
                   
					select CUOTA,date_format(fecha_convenio, '%m') , date_format(fecha_convenio, '%Y'), num_pago  
						into importeCuota,periodoPagoDet,anioPagoDet,v_numPagConvenio,v_factor from gestion_granjas.convenios_detalle a
                        left join gestion_granjas.convenios b on a.id_convenio=b.id_convenio WHERE ID=Str;

					insert into  gestion_granjas.pagos_detalle( folio_pago,cuota,periodo,anio,tipo_pago)
										values(folioPago,importeCuota,periodoPagoDet,anioPagoDet,4);
										commit;
                                        
					-- Se consulta el moratorio
					select TRUNCATE(sum(importe),2) into v_moratorio from gestion_granjas.kardex_servicios_detalle 
								where id_factor=v_factor and id_servicio=4 and periodo=periodoPagoDet and anio=anioPagoDet  and estatus='A';
									
						IF(v_moratorio>0) THEN
							insert into  gestion_granjas.pagos_detalle( folio_pago,cuota,periodo,anio,tipo_pago)
									values(folioPago,v_moratorio,periodoPagoDet,anioPagoDet,9);
									commit;
						END IF;
                   
                   -- select num_pago into v_numPagConvenio from gestion_granjas.convenios_detalle  WHERE ID=Str;
					
					UPDATE gestion_granjas.convenios_detalle  SET ESTATUS='S', id_pago=folioPago WHERE ID=Str;
                    
                    -- Actualiza mora
					UPDATE gestion_granjas.kardex_servicios_detalle SET estatus='S'
									where id_factor=v_factor and id_servicio=4 and periodo=periodoPagoDet and anio=anioPagoDet  and estatus='A';
                    
                    if(v_numPagConvenio=v_parcialidades) then
							
                            UPDATE  gestion_granjas.convenios SET ESTATUS='S' where id_lote= pidlote AND ESTATUS='A';

							-- Actualiuza servicios de mantenimiento
							UPDATE kardex_servicios SET ESTATUS='S' , FOLIO_PAGO=folioPago, TIPO_PAGO=4,
								FECHA_REGISTRO=NOW() WHERE id_factor=pidlote AND ID_SERVICIO=2 AND ESTATUS='C';
                         
							-- Actualiza servicios de agua
                           	UPDATE kardex_servicios SET ESTATUS='S' , FOLIO_PAGO=folioPago, TIPO_PAGO=4,
								FECHA_REGISTRO=NOW() WHERE   ID_SERVICIO=3 AND ESTATUS='C'
                                AND id_factor IN(   select id_medidor from gestion_granjas.cat_medidores 
														where id_lote=pidlote);
                                                        
							

                    END IF;
                    
                    
                 	end if;
                 
                set resultado=true;
				SET v_estatus='S';  
				-- Se registra kardex de cuotas cubiertas
				
				 
		-- 	END IF;
	-- SELECT Str; 
		END IF; 
	   
		  SET texto = SUBSTRING(texto, pos + 1); 
		-- Contador
		set c =c+1;
		 

	  END WHILE;
  
  -- Validaciones 
  IF(pImpFicha=0) THEN
  SET pBancoFicha=0;
  END IF;
  
  IF(pImpCheque=0) THEN
  SET pBancoCheque=0;
  END IF;
  
  set resultado=folioPago;
  -- Registra encabezado del pago

  insert into  gestion_granjas.pagos_anticipos(folio,id_factor,id_servicio,fecha_Pago,
							importe_efectivo,no_cheque,banco_cheque,importe_cheque,no_ficha,
                            banco_ficha,importe_ficha,multa) 
     values(folioPago,pidlote,pServicio,now(),pImpEfectivo ,pCheque , pBancoCheque ,pImpCheque , pNoFicha ,
           pBancoFicha , pImpFicha ,pMulta);
  
  
  
	-- Se salda en tabla de KARDEX
	


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PagoMto_CAdeudos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PagoMto_CAdeudos`(
IN p_idlote int,
IN p_Servicio int
)
BEGIN
-- Servicio de Mantenimiento
declare pServicio int default 2;
declare valida int default 0;
SET lc_time_names = 'es_UY';

if(p_servicio=2) then
	SELECT a.id,a.id_servicio,TRUNCATE((importe + 
		IFNULL(( SELECT SUM(IMPORTE) FROM gestion_granjas.kardex_servicios_detalle 
			where ID_FACTOR=a.id_factor and periodo=a.periodo and anio=a.anio and estatus='A' AND ID_CONCEPTO=2 and id_servicio=a.id_servicio),0)),2),
			concat(a.periodo,'/',date_format(concat(anio, a.periodo,'01'), '%y') ,
			' (', date_format(concat(anio, a.periodo,'01'), '%b %Y'),' ) $ ', TRUNCATE((importe +
              IFNULL(( SELECT SUM(IMPORTE) FROM gestion_granjas.kardex_servicios_detalle 
					where ID_FACTOR=a.id_factor and periodo=a.periodo and anio=a.anio and estatus='A' AND ID_CONCEPTO=2 and id_servicio=a.id_servicio),0)),2))
		, b.Descripcion,
		c.servicio,date_format(concat(anio, a.periodo,'01'), '%M %Y') as Concat_periodo, a.periodo,
		concat( d.descripcion,' (',d.valor,')') as tasa_periodo,a.anio,
		IFNULL(( SELECT SUM(IMPORTE) FROM gestion_granjas.kardex_servicios_detalle 
				where ID_FACTOR=a.id_factor and periodo=a.periodo and anio=a.anio and estatus='A' AND ID_CONCEPTO=2 and id_servicio=a.id_servicio),0)
	FROM gestion_granjas.kardex_servicios a
	LEFT JOIN gestion_granjas.cat_estatus b on a.estatus = b.clave
	LEFT JOIN gestion_granjas.cat_servicios c on a.id_servicio=c.id_servicio
    LEFT JOIN gestion_granjas.tarifas_mantenimiento d
			ON fecha_aplicacion=(
						SELECT MAX(FECHA_APLICACION) FROM gestion_granjas.tarifas_mantenimiento
						WHERE fecha_aplicacion<=concat(a.anio,'-',a.periodo,'-01')
					-- 	and estatus 'I'
						)
	WHERE a.id_servicio=p_Servicio and  id_factor=p_idlote
	AND a.estatus in('A','V') order by 6, 4
	;
end if;
if(p_servicio=3) then

SELECT e.id_lote,a.id_servicio,truncate(sum(importe)+
	IFNULL(( SELECT SUM(IMPORTE) FROM gestion_granjas.kardex_servicios_detalle 
       where ID_FACTOR=a.id_factor and periodo=a.periodo and anio=a.anio and estatus='A' AND ID_CONCEPTO=2 and id_servicio=a.id_servicio),0)
	-SUM(IFNULL(saldo_pagado,0)),2) ,concat(a.periodo,'/',date_format(concat(anio, a.periodo,'01'), '%y') ,
		' (', date_format(concat(anio, a.periodo,'01'), '%b %Y'),' ) $ '), b.Descripcion,
		c.servicio,date_format(concat(anio, a.periodo,'01'), '%M %Y') as Concat_periodo, a.periodo, 
	CONCAT('Tarifa ',a.tarifa) as tasa_periodo,a.anio,
	IFNULL(( SELECT SUM(IMPORTE) FROM gestion_granjas.kardex_servicios_detalle 
       where ID_FACTOR=a.id_factor and periodo=a.periodo and anio=a.anio and estatus='A' AND ID_CONCEPTO=2 and id_servicio=a.id_servicio),0)
	FROM gestion_granjas.kardex_servicios a
    left join gestion_granjas.cat_medidores e on a.id_factor=e.id_medidor
	LEFT JOIN gestion_granjas.cat_estatus b on a.estatus = b.clave
	LEFT JOIN gestion_granjas.cat_servicios c on a.id_servicio=c.id_servicio
 
	WHERE a.id_servicio=p_Servicio and  e.id_lote=p_idlote
	AND a.estatus in('A','V')
      group by 1,2,4,5,6,7,8,9
	;
    end if;
   if(p_servicio=4) then 
	  SELECT a.id,4,TRUNCATE((a.cuota+IFNULL(( SELECT SUM(IMPORTE) FROM gestion_granjas.kardex_servicios_detalle 
			where ID_FACTOR=a.id_factor and periodo=a.periodo and anio=a.anio and estatus='A' AND ID_CONCEPTO=2 and id_servicio=4),0)),2),
		concat(date_format(fecha_convenio, '%d/%m/%y') ,
				' ( ', date_format(fecha_convenio ,'%b %Y'),' ) $ ', (a.cuota+ IFNULL(moratorio,0))), b.descripcion, c.servicio,
				date_format(fecha_convenio, '%M %Y') as Concat_periodo,
				date_format(fecha_convenio, '%m') as Concat_periodo,
				'Tarifa 2' as tasa_periodo,
				 date_format(fecha_convenio, '%Y') as anio, 
                 IFNULL(( SELECT SUM(IMPORTE) FROM gestion_granjas.kardex_servicios_detalle 
					where ID_FACTOR=a.id_factor and periodo=a.periodo and anio=a.anio and estatus='A' AND ID_CONCEPTO=2 and id_servicio=4),0)
		 FROM gestion_granjas.convenios_detalle a
		 LEFT JOIN gestion_granjas.CONVENIOS d on a.id_convenio=d.id_convenio
		 LEFT JOIN gestion_granjas.cat_estatus b on a.estatus = b.clave
		 LEFT JOIN gestion_granjas.cat_servicios c on c.id_servicio=4
		WHERE d.ID_LOTE=p_idlote AND d.ESTATUS='A' and a.estatus!='S' ORDER BY 10,8
		 ;  
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PagoMto_CFolioKardex` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PagoMto_CFolioKardex`(in pLote int,
								in pPeriodo varchar(2),
								in pAnio varchar(4))
BEGIN


 select id,importe,periodo,anio,a.estatus ,id_lote   from kardex_servicios a
		inner join gestion_granjas.cat_medidores b on a.id_factor=b.id_medidor
        WHERE a.id_servicio=3 and b.id_lote=pLote and periodo=pPeriodo and anio=pAnio AND a.ESTATUS IN('A','V');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PagoMto_CFolioPago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PagoMto_CFolioPago`(
OUT p_folio INT
)
BEGIN


	SET p_folio=0;
-- *************************************************************
  -- **** Se obtiene el folio del Pago
  -- *************************************************************
  select IFNULL(max(folio),0)+1 into p_folio from gestion_granjas.pagos_anticipos;
  
  if(p_folio=0) then
	 
     SET p_folio=1;
  end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PagoMto_CSaldoAnticipo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PagoMto_CSaldoAnticipo`(in pColono int)
BEGIN
-- Servicio de Mantenimiento


 SELECT saldo FROM gestion_granjas.saldo_anticipos where id_factor=pColono;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PrcCuotas_AddCuotaAgua` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PrcCuotas_AddCuotaAgua`( 
	IN p_periodo VARCHAR(2),
	IN p_anio VARCHAR(4),
    IN p_usr varchar(20),
    OUT respuesta boolean)
BEGIN

  DECLARE done boolean DEFAULT FALSE;
  DECLARE doneAnt INT DEFAULT FALSE;

  DECLARE v_medidor int;
  declare folioPago int default 0;
  declare folioCuota varchar(20);
  declare nombreServicio varchar(100);
  declare op int;  
  declare parametro double;
  declare importeCuota double;
  declare fechaTarifa  varchar(12);
  DECLARE v_consumo double;
  DECLARE v_consumo_ant double;
  DECLARE v_consumo_total double;
  DECLARE v_baseCNATerreno double;
  DECLARE v_BCNA double;
  DECLARE v_preliminar double;
  DECLARE v_excedente double;
  DECLARE v_costo double;
  DECLARE calculoExcedente double;
  DECLARE v_importe1 double;
  DECLARE v_importe2 double;
  DECLARE numeroVencimientos int;
  DECLARE numeroVencimientosMA int;
  DECLARE v_lote int;
  DECLARE v_colono INT DEFAULT 0 ;
  DECLARE valColono INT DEFAULT 0;
  DECLARE valSaldo  DOUBLE;
  DECLARE valIdAnticipo INT;
  DECLARE valImporteAnticipo DOUBLE;
  DECLARE valTotImporteAnticipo double default 0;
  DECLARE valTotalPago double default 0;
  DECLARE valEstatusAnticipo varchar(2) ;
  DECLARE valSaldoAnticipo double default 0;
  DECLARE valCalculoAnticipo double default 0;
  DECLARE importeTotalCuota double default 0;
  DECLARE valMonto DOUBLE DEFAULT 0;
  DECLARE v_colonoTmp INT DEFAULT 0;
  DECLARE IdUltima INT;
  DECLARE salida int(11) DEFAULT 0;
  DECLARE TOTAL int(11) DEFAULT 0;
  DECLARE p1 int(11) DEFAULT 1;
  DECLARE p0 int(11) DEFAULT 0;
  DECLARE TOTAL0  int(11) DEFAULT 0;
  DECLARE valEstatusKardex varchar(2) ;
  DECLARE valSldoPagado DOUBLE; 
  DECLARE vTipoTarifa int default 0;
  DECLARE v_periodoAnt varchar(2) ;
  DECLARE v_AnioAnt varchar(4) ;
  DECLARE v_parametroBaseT2 double;
  DECLARE v_parametroExcT2 double;
  
  DECLARE v_CBA double;
  DECLARE v_tarifa1 double;
  DECLARE v_tarifa1A double;
  DECLARE v_tarifa2 double;
  DECLARE v_Calculo double;
  DECLARE v_ConsumoExcedente double;
  DECLARE v_PorcentajeExedente double;
  DECLARE excedente1A double;
  DECLARE excedente2 double;
  DECLARE consumoTarifa1A double;
  DECLARE consumoTarifa2 double;
  DECLARE v_moratorio double;
  DECLARE v_consumo_act double;


  
      -- **** Se inicializa cursor para pago de cuotas de agua
      
	
    declare cur cursor for SELECT id_medidor,base_cna FROM gestion_granjas.cat_medidores  where estatus='A';

     declare  curAnt  cursor for select id,importe from gestion_granjas.detalle_anticipos 
     where id_servicio=3 and id_factor=v_colonoTmp and estatus='A';         
  -- 	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
      DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET salida = 1;
      SET salida = 0;
          

	   -- *************************************************************
	    
      -- ******************************************************** 
      -- Se ejecuta proceso de actualizacion de tarifas
      
      -- call gestion_granjas.sp_prc_actualizaTarifaMTO();
   
       -- ********************************************************
	  -- Se ejecuta proceso de traspaso de cuotas (Vigentes - Vencidas)
	  -- ********************************************************
       UPDATE kardex_servicios SET ESTATUS='V' WHERE ID_SERVICIO=3 AND ESTATUS='A';
       
      
  -- *************************************************************
  -- **** Se obtiene el folio del Pago
  -- *************************************************************
  select IFNULL(max(folio),0)+1 into folioPago from gestion_granjas.pagos_anticipos;
  
  -- *************************************************************
  -- **** Se obtiene datos del servicio
  -- *************************************************************
    select folio, trim(servicio) into folioCuota,nombreServicio from gestion_granjas.cat_servicios
   where id_servicio=3;
  
  
  if(folioPago=0) then
	 
     SET folioPago=1;
  end if;
  -- *************************************************************
  -- **** Se obtiene datos de la tarifa de mantenimiento
  -- *************************************************************
	set fechaTarifa=CONCAT(p_anio,'-',LPAD(p_periodo,2,'0'),"-01");  

	SELECT valor INTO v_tarifa1 FROM gestion_granjas.cat_parametros where code_param='param_BCNA';
	SELECT valor INTO v_tarifa1A FROM gestion_granjas.cat_parametros where code_param='param_CBASE2';
	SELECT valor INTO v_tarifa2 FROM gestion_granjas.cat_parametros where code_param='param_BEXCEDENTE2';

    SET IdUltima = -1;               
    -- Se abre cursor
    SELECT count(0) into TOTAL0 FROM gestion_granjas.cat_medidores  where estatus='A';
    
     -- Se obtiene el periodo anterior
    SELECT date_format(DATE_ADD(fechaTarifa,INTERVAL -1 MONTH ),'%m'),
			date_format(DATE_ADD(fechaTarifa,INTERVAL -1 MONTH ),'%Y') into v_periodoAnt,v_AnioAnt  from dual;
    
	OPEN cur; 
	 read_loop: LOOP
		FETCH cur INTO v_medidor,v_baseCNATerreno;

				IF p0 = TOTAL0 THEN
                                  -- CLOSE curAnt;
					LEAVE read_loop;
				END IF;
                      
                    SET p0 = p0 + 1;
                    
		-- 	Calculo del consumo de agua
        SELECT IFNULL(lectura,0) into v_consumo_ant  FROM gestion_granjas.reg_lecturas where  id_medidor=v_medidor 
				and periodo=v_periodoAnt and anio=v_AnioAnt;
        
          IF(v_consumo_ant IS NULL or v_consumo_ant="") THEN
			set v_consumo_ant=0;
            end if;

		-- 	** Se obtiene el consumo de agua
		SELECT IFNULL(lectura,0) into v_consumo_act  FROM gestion_granjas.reg_lecturas where  id_medidor=v_medidor 
				and estatus='A' and periodo=p_periodo and anio=p_anio;
		
        IF(v_consumo_act IS NULL  ) THEN
			set v_consumo_act=0;
            end if;
        -- Se calcula el consumo    
		set v_consumo=v_consumo_act - v_consumo_ant;
		-- ***********************************************
        -- ** Se obtien CBA de medidor
        
        SELECT IFNULL(cuota,0) into v_CBA  FROM gestion_granjas.cuotas_base_agua where  id_factor=v_medidor 
				and periodo=p_periodo and anio=p_anio;
                
		-- *************************************************************************************
        -- **		Valida Vencimientos
        -- *************************************************************************************
		SELECT id_lote into v_lote FROM gestion_granjas.cat_medidores where id_medidor=v_medidor;
 
		SELECT count(0) into numeroVencimientosMA   FROM gestion_granjas.kardex_servicios a
					WHERE a.id_servicio=2 and  id_factor=v_lote	AND a.estatus in('V');
       
	   select count(0) into numeroVencimientos from (SELECT e.id_lote,a.id_servicio,truncate(sum(importe),2)  as importes ,concat(a.periodo,'/',date_format(concat(anio, a.periodo,'01'), '%y') ,
			' (', date_format(concat(anio, a.periodo,'01'), '%b %Y'),' ) $ '), b.Descripcion,
				c.servicio,date_format(concat(anio, a.periodo,'01'), '%b %y') as Concat_periodo, a.periodo, 
			'Tarifa 1' as tasa_periodo,a.anio
			FROM gestion_granjas.kardex_servicios a
			left join gestion_granjas.cat_medidores e on a.id_factor=e.id_medidor
			LEFT JOIN gestion_granjas.cat_estatus b on a.estatus = b.clave
			LEFT JOIN gestion_granjas.cat_servicios c on a.id_servicio=c.id_servicio
		 
		WHERE a.id_servicio=3  and  e.id_lote=v_lote
								AND a.estatus in('V')
			group by 1,2,4,5,6,7,8,9) as tabla;
       
       -- ----------------------------------------------------------------------------------------------
        -- ****************************************************************************************************************
        -- ********				INICIA CALCULO DE CUOTAS DE AGUA
        -- ****************************************************************************************************************
         IF(numeroVencimientos <= 2 and numeroVencimientosMA<=2) THEN
       	-- ** Validamos si excede el consumo en base a su CBA
            	IF(v_consumo<= v_CBA) THEN
					set importeCuota =v_consumo * v_tarifa1;
					call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(v_medidor,'3','1',v_consumo,importeCuota,p_periodo,p_anio,'1',v_tarifa1);
				else
					-- Se obtiene importe de la tarifa1
					set importeCuota =v_CBA * v_tarifa1;
					set v_ConsumoExcedente = v_consumo - v_CBA;
                    set v_PorcentajeExedente = (v_ConsumoExcedente / v_CBA)*100;
                    call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(v_medidor,'3','1',v_CBA,importeCuota,p_periodo,p_anio,'1',v_tarifa1);
                    -- ** Se valida porcentaje de excedente en base a su CBA
                    IF(v_PorcentajeExedente<=75) THEN
                        set excedente1A		= (v_ConsumoExcedente * v_tarifa1A);
                    	set importeCuota 	= importeCuota + excedente1A ;
                        call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(v_medidor,'3','1',v_ConsumoExcedente,excedente1A,p_periodo,p_anio,'1A',v_tarifa1A);
					else
                        set consumoTarifa1A	= (75/100)* ( v_CBA); -- Se obtiene el 75% de CBA
                        set excedente1A		= ( consumoTarifa1A *  v_tarifa1A);
						call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(v_medidor,'3','1',consumoTarifa1A,excedente1A,p_periodo,p_anio,'1A',v_tarifa1A);

                        set consumoTarifa2	=  v_consumo - (consumoTarifa1A + v_CBA); -- Se obtiene consumo restante
						set excedente2		= ( consumoTarifa2 *  v_tarifa2);
                        call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(v_medidor,'3','1',consumoTarifa2,excedente2,p_periodo,p_anio,'2',v_tarifa2);
                        
                        set importeCuota 	= importeCuota  +( excedente1A  +  excedente2);
                        
                    END IF;
		 
                END IF;
			else
            
           -- ** Validamos si excede el consumo en base a su CBA
            	IF(v_consumo<= v_CBA) THEN
					set importeCuota =v_CBA * v_tarifa1A;
					call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(v_medidor,'3','1',v_CBA,importeCuota,p_periodo,p_anio,'1A',v_tarifa1A);
				else
					-- Se obtiene importe de la tarifa1
					set importeCuota =v_CBA * v_tarifa1A;
					set v_ConsumoExcedente = v_consumo - v_CBA;
                    set v_PorcentajeExedente = (v_ConsumoExcedente / v_CBA)*100;
                    call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(v_medidor,'3','1',v_CBA,importeCuota,p_periodo,p_anio,'1A',v_tarifa1A);
                    -- ** Se valida porcentaje de excedente en base a su CBA
                    IF(v_PorcentajeExedente<=75) THEN
                        set excedente1A		= (v_ConsumoExcedente * v_tarifa1A);
                    	set importeCuota 	= importeCuota + excedente1A ;
                        call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(v_medidor,'3','1',v_ConsumoExcedente,excedente1A,p_periodo,p_anio,'1A',v_tarifa1A);
					else
                        set consumoTarifa1A	= (75/100)* ( v_CBA); -- Se obtiene el 75% de CBA
                        set excedente1A		= ( consumoTarifa1A *  v_tarifa1A);
						call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(v_medidor,'3','1',consumoTarifa1A,excedente1A,p_periodo,p_anio,'1A',v_tarifa1A);

                        set consumoTarifa2	=  v_consumo - (consumoTarifa1A + v_CBA); -- Se obtiene consumo restante
						set excedente2		= ( consumoTarifa2 *  v_tarifa2);
                        call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(v_medidor,'3','1',consumoTarifa2,excedente2,p_periodo,p_anio,'2',v_tarifa2);
                        
                        set importeCuota 	= importeCuota  +( excedente1A  +  excedente2);
                        
                    END IF;
                    
                END IF;
                
				   set v_moratorio = (3/100)* ( importeCuota);
                   -- set importeCuota 	= importeCuota  +( v_moratorio );
                   -- UPDATE  gestion_granjas.kardex_servicios SET moratorio=(case when moratorio=v_moratorio then now() else (moratorio +((3/100)* moratorio)) END) , fecha_moratorio=(case when fecha_moratorio=null then now() else fecha_moratorio END)
				   -- 	where periodo<p_periodo AND anio=p_anio AND id_servicio=3 AND  id_factor=v_medidor	 AND estatus in('V');
                 --  call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(v_medidor,'3','2',0,v_moratorio,p_periodo,p_anio,'3 %',0);

          END IF;
          
          IF(numeroVencimientos>0) THEN
			call gestion_granjas.sp_frm_PrcCuotas_AddMoraAgua(v_medidor,3);
          END IF;
          -- SE VA A BORRAR EL CODIGO SIGUIENTE
     
	   SET valSldoPagado=0;
       SET valEstatusKardex='A';
       -- ********************************************************************************
       -- *****		INICIA PROCESO DE ANTICIPOS
       -- ********************************************************************************
	   SET valTotImporteAnticipo =0;
       SET valCalculoAnticipo=importeCuota;
       SELECT ifnull(id_colono,0) into v_colono FROM gestion_granjas.cat_lotes  where id_lote=v_lote;
            --    insert into  gestion_granjas.test(valor)values(concat("3 ",v_colono));


       select count(0) into valColono  from gestion_granjas.saldo_anticipos 
						where id_factor=v_colono and saldo>0;
         
        SET v_colonoTmp=v_colono;
	
                     if(valColono>0 ) then   
                     
                      select COUNT(0) INTO TOTAL from gestion_granjas.detalle_anticipos 
							where id_servicio=3 and id_factor=v_colonoTmp and estatus='A';
                     	
                        -- 	insert into  gestion_granjas.test(valor)values(concat("4.1 ",valColono,' - ',TOTAL));
						SET p1=0;
                      -- Se abre cursor
						OPEN curAnt; 
						 	  REPEAT 
							FETCH curAnt INTO valIdAnticipo,valImporteAnticipo  ;
                          
							 /*	 IF p1 = TOTAL THEN
                                   CLOSE curAnt;
								  LEAVE LEE_CICLO;
								  END IF;
                      */
                  
					 			select count(0) into valColono  from gestion_granjas.saldo_anticipos 
									where id_factor=v_colono and saldo>0;
                              
                                if(valColono>0 ) then   
                                
								   select ifnull(id,0),ifnull(saldo,0) into valColono ,valSaldo from gestion_granjas.saldo_anticipos 
									where id_factor=v_colono and saldo>0;
									
									IF(valSaldo>=valImporteAnticipo) THEN
										SET valTotImporteAnticipo = valTotImporteAnticipo + valImporteAnticipo;    
									else 
										SET valTotImporteAnticipo = valTotImporteAnticipo + valSaldo;            
									END IF;
									insert into  gestion_granjas.test(valor)values(concat("5 ",valImporteAnticipo,' - ',valCalculoAnticipo,' - ',salida,'**',p1,'-',TOTAL));
		 
										
										
								   if(valCalculoAnticipo <= valTotImporteAnticipo) then
										SET valEstatusAnticipo='A';
										SET valCalculoAnticipo=valCalculoAnticipo-valTotImporteAnticipo;
										SET valMonto=valTotImporteAnticipo +valCalculoAnticipo;
										SET valSaldoAnticipo=valSaldo - valMonto ;-- (valImporteAnticipo -valCalculoAnticipo);
								
								   end if;
						 
								  if(valCalculoAnticipo > valTotImporteAnticipo) then
										SET valEstatusAnticipo='I';
										SET valCalculoAnticipo=valCalculoAnticipo-valTotImporteAnticipo;

										SET valSaldoAnticipo=valSaldo - ( valTotImporteAnticipo );
										SET valMonto=valTotImporteAnticipo;
									end if;
						 
								  -- insert into  gestion_granjas.test(valor)values(concat("5 ",valCalculoAnticipo));

								   SELECT
									 AUTO_INCREMENT AS id into IdUltima
								   FROM information_schema.Tables
										WHERE TABLE_SCHEMA='gestion_granjas'
											AND table_name='kardex_servicios';
																
									INSERT INTO gestion_granjas.gestion_cuotas_agua(id_kardex,id_medio,tipo,monto,tipo_pago)
									values(IdUltima,valIdAnticipo,'AN',TRUNCATE(valMonto,2),3);
									
									update  gestion_granjas.detalle_anticipos set estatus=valEstatusAnticipo
									where id=valIdAnticipo;
									
									UPDATE gestion_granjas.saldo_anticipos SET Saldo = valSaldoAnticipo, fecha_cambio=now()
									where id_factor=v_colono;
									
                                    SET p1 = p1 + 1;
								  
                                  if(valCalculoAnticipo <= valTotImporteAnticipo) then
									set p1 = TOTAL;
                                   end if;
                      --      commit;
										
                              end if;
						 -- END LOOP LEE_CICLO; 
                         
							 UNTIL
                             p1 = TOTAL
					END REPEAT ;
				CLOSE curAnt;
                          
                           if(importeCuota>=valTotImporteAnticipo) then
                          --  SET importeTotalCuota=importeCuota -valTotImporteAnticipo;
								SET valEstatusKardex='A';
                                SET valSldoPagado=importeCuota-(importeCuota-valTotImporteAnticipo);
                          else
							-- SET importeTotalCuota=importeCuota;
                                SET valEstatusKardex='S';
								SET valSldoPagado=importeCuota;
                          end if;
                          
                        --  SET importeCuota=importeTotalCuota;
                          
                          
                        end if;  
                     
       
       
	   -- *****		FIN PROCESO DE ANTICIPOS
       -- ********************************************************************************
	  
	 -- Se registra kardex de cuotas cubiertas
     
		insert into gestion_granjas.kardex_servicios(folio, folio_pago, id_factor, id_servicio, importe, 
		servicio,periodo,anio, estatus,  fecha_registro,saldo_pagado,tarifa)
		VALUES(folioCuota,0,v_medidor,3,TRUNCATE(importeCuota,2) ,nombreServicio,p_periodo,p_anio,valEstatusKardex,NOW(),TRUNCATE(valSldoPagado,2),vTipoTarifa);
		
	  END LOOP read_loop;

	  CLOSE cur;
        
        SET respuesta=TRUE;
        INSERT INTO gestion_granjas.bitacora_cuotas (periodo,anio,fecha_registro,usuario_registro,servicio)
        values(p_periodo,p_anio,now(),p_usr,3);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PrcCuotas_AddCuotaConvenio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PrcCuotas_AddCuotaConvenio`( 
	IN p_periodo VARCHAR(2),
	IN p_anio VARCHAR(4),
    IN p_usr varchar(20),
    OUT respuesta boolean)
BEGIN

  DECLARE done INT DEFAULT FALSE;
  DECLARE v_convenio		INT;
  DECLARE v_lote 			int;
  DECLARE v_idCuota			INT;
  DECLARE v_cuaota 			double;
  DECLARE v_fechaConvenio 	varchar(10);
  DECLARE v_estatus 		varchar(2);
  DECLARE numeroVencimientos INT;
  	  -- ********************************************************
	  -- Se ejecuta proceso de traspaso de cuotas (Vigentes - Vencidas)
	  -- ********************************************************
	

	  declare cur cursor for SELECT b.id_convenio,b.id_lote,a.id,cuota,fecha_convenio,estatus FROM gestion_granjas.convenios_detalle a
		INNER JOIN gestion_granjas.convenios b on a.id_convenio=b.id_convenio and b.estatus='A'
		where a.periodo=p_periodo and a.anio=p_anio and b.estatus='V';
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
      
         UPDATE  gestion_granjas.convenios_detalle SET ESTATUS='V' WHERE ESTATUS='A';
        
         -- Se abre cursor
	OPEN cur;
 
	 read_loop: LOOP
		FETCH cur INTO v_convenio,v_lote,v_idCuota,v_cuaota,v_fechaConvenio,v_estatus;
	   
		IF done THEN
		  LEAVE read_loop;
		END IF;
		-- *************************************************************************************
        -- **		Valida Vencimientos
        -- *************************************************************************************
			SELECT count(0) into numeroVencimientos   FROM gestion_granjas.convenios_detalle a
            INNER JOIN gestion_granjas.convenios b on a.id_convenio=b.id_convenio and b.estatus='A'
					WHERE id_convenio=v_convenio AND id_loter=v_lote	AND a.estatus in('V');
			
            IF numeroVencimientos>0 THEN
            
               	call gestion_granjas.sp_frm_PrcCuotas_AddMoraAgua(v_convenio,4);
		
               
           END IF;
		
	  END LOOP;

	  CLOSE cur;

        SET respuesta=TRUE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PrcCuotas_AddCuotaMA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PrcCuotas_AddCuotaMA`( 
	IN p_periodo VARCHAR(2),
	IN p_anio VARCHAR(4),
    IN p_usr varchar(20),
    OUT respuesta boolean)
BEGIN

  DECLARE done INT DEFAULT FALSE;
  DECLARE v_lote int;
  declare folioPago int default 0;
  declare folioCuota varchar(20);
  declare nombreServicio varchar(100);
  declare op int;  
  declare parametro double;
  declare importeCuota double;
  declare fechaTarifa  varchar(10);
  declare metrosCuadrados double;
  declare numeroVencimientosMA int;
  declare v_moratorio double;
    
    declare cur cursor for SELECT id_lote, metros_cuadrados FROM gestion_granjas.cat_lotes  where estatus='A'
		AND ID_LOTE NOT IN(
		SELECT ID_FACTOR FROM gestion_granjas.kardex_servicios WHERE id_servicio=2
		AND PERIODO=p_periodo AND ANIO=p_anio AND TIPO_PAGO=3 AND ESTATUS='S');
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
      
      -- ******************************************************** 
      -- Se ejecuta proceso de actualizacion de tarifas
	  -- ********************************************************
      /*call gestion_granjas.sp_prc_actualizaTarifaMTO();*/

	  -- ********************************************************
	  -- Se ejecuta proceso de traspaso de cuotas (Vigentes - Vencidas)
	  -- ********************************************************
       UPDATE kardex_servicios SET ESTATUS='V' WHERE ID_SERVICIO=2 AND ESTATUS='A';
       
       
  -- *************************************************************
  -- **** Se obtiene el folio del Pago
  -- *************************************************************
  select IFNULL(max(folio),0)+1 into folioPago from gestion_granjas.pagos_anticipos;
  
  -- *************************************************************
  -- **** Se obtiene datos del servicio
  -- *************************************************************
    select folio, trim(servicio) into folioCuota,nombreServicio from gestion_granjas.cat_servicios
   where id_servicio=2;
  
  
  if(folioPago=0) then
	 
     SET folioPago=1;
  end if;
  -- *************************************************************
  -- **** Se obtiene datos de la tarifa de mantenimiento
  -- *************************************************************
	set fechaTarifa=CONCAT(p_anio,'-',LPAD(p_periodo,2,'0'),"-01");
        
     SELECT TIPO,VALOR INTO op,parametro FROM gestion_granjas.tarifas_mantenimiento
			where fecha_aplicacion=(
						SELECT MAX(FECHA_APLICACION) FROM gestion_granjas.tarifas_mantenimiento
						WHERE fecha_aplicacion<=fechaTarifa
					-- 	and estatus <>'I'
						);

                        
    -- Se abre cursor
	OPEN cur;
 
 
	 read_loop: LOOP
		FETCH cur INTO v_lote,metrosCuadrados;
	   
		IF done THEN
		  LEAVE read_loop;
		END IF;
		 -- Cuota fija
          IF(op=1) THEN        
			SET importeCuota=parametro;
		   END IF;
        
        -- Cuota calculada
			IF(op=2) THEN        
				SET importeCuota= parametro * metrosCuadrados;		
			END IF;
            
		-- *************************************************************************************
        -- **		Valida Vencimientos
        -- *************************************************************************************
			SELECT count(0) into numeroVencimientosMA   FROM gestion_granjas.kardex_servicios a
					WHERE a.id_servicio=2 and  id_factor=v_lote	AND a.estatus in('V');
			
            IF numeroVencimientosMA>0 THEN
            
               set v_moratorio = (3/100)* ( importeCuota);
				call gestion_granjas.sp_frm_PrcCuotas_AddMoraAgua(v_lote,2);
  
              /* UPDATE  gestion_granjas.kardex_servicios SET moratorio=v_moratorio, fecha_moratorio=(case when fecha_moratorio=null then now() else fecha_moratorio END)
               where periodo<p_periodo AND anio=p_anio AND id_servicio=2 AND  id_factor=v_lote	 AND estatus in('V');
			   -- set importeCuota 	= importeCuota  +( v_moratorio );
			   call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(v_lote,'2','2',0,v_moratorio,p_periodo,p_anio,'3 %',0);
           */
           END IF;
	 -- Se registra kardex de cuotas cubiertas
		insert into gestion_granjas.kardex_servicios(folio, folio_pago, id_factor, id_servicio, importe, 
		servicio,periodo,anio, estatus,  fecha_registro,tarifa)
		VALUES(folioCuota,0,v_lote,2,importeCuota,nombreServicio,p_periodo,p_anio,'A',NOW(),OP);
		
	  END LOOP;

	  CLOSE cur;
        
        SET respuesta=TRUE;
        INSERT INTO gestion_granjas.bitacora_cuotas (periodo,anio,fecha_registro,usuario_registro,servicio)
        values(p_periodo,p_anio,now(),p_usr,2);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PrcCuotas_AddDetalleServicio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PrcCuotas_AddDetalleServicio`( 
	IN p_factor VARCHAR(4),
    IN p_servicio VARCHAR(4),
	IN p_concepto VARCHAR(4),
	IN p_consumo double,
    IN p_importe double,
    IN p_periodo VARCHAR(4),
    IN p_anio VARCHAR(4),
    IN p_tarifa  VARCHAR(10),
	IN p_cuota_tarifa double)
BEGIN

  DECLARE done INT DEFAULT FALSE;

	INSERT INTO gestion_granjas.kardex_servicios_detalle(id_factor,id_servicio,id_concepto,consumo, importe, periodo,anio,
	tarifa,cuota_tarifa,estatus,fecha_registro)
    values(p_factor,p_servicio,p_concepto,p_consumo,p_importe,p_periodo,p_anio,p_tarifa,p_cuota_tarifa,'A',now());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PrcCuotas_AddMoraAgua` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PrcCuotas_AddMoraAgua`( 
    IN p_medidor varchar(20), 
    IN p_servicio int)
BEGIN

  DECLARE done boolean DEFAULT FALSE;
  DECLARE doneAnt INT DEFAULT FALSE;

  DECLARE v_medidor int;
  declare op int;  
  DECLARE salida int(11) DEFAULT 0;
  DECLARE TOTAL int(11) DEFAULT 0;
  DECLARE p1 int(11) DEFAULT 1;
  DECLARE p0 int(11) DEFAULT 0;
  DECLARE TOTAL0  int(11) DEFAULT 0;
  
  DECLARE v_periodo VARCHAR(2);
  DECLARE v_anio VARCHAR(4);
  DECLARE v_importe double;
  DECLARE v_saldo_pagado double;
  DECLARE b_mora 	int;
  DECLARE v_folioMora int;
  DECLARE v_importe_mora double;
  DECLARE v_monto_mora double;
  
  

      -- **** Se inicializa cursor para pago de cuotas de agua
    declare cur cursor for SELECT periodo,anio,importe,saldo_pagado FROM gestion_granjas.kardex_servicios  
    where id_factor=p_medidor and  id_servicio=p_servicio and estatus='V' order by id asc;
    
     declare  curDetalle  cursor for select folio,importe from gestion_granjas.kardex_servicios_detalle 
     where id_servicio=p_servicio and id_factor=p_medidor and estatus='A' and id_concepto=2  and periodo=v_periodo and anio =v_anio;        
  -- 	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
      DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET salida = 1;
      SET salida = 0;

      
      -- call gestion_granjas.sp_prc_actualizaTarifaMTO();
       SELECT count(0) into TOTAL0 FROM  gestion_granjas.kardex_servicios   where id_factor=p_medidor and  id_servicio=p_servicio  and  estatus='V';

	OPEN cur; 
	 read_loop: LOOP
		FETCH cur INTO v_periodo,v_anio,v_importe,v_saldo_pagado;

				IF p0 = TOTAL0 THEN
                                  -- CLOSE curAnt;
					LEAVE read_loop;
				END IF;
                  SET p0 = p0 + 1;
                  insert into  gestion_granjas.test(valor)values(concat("ID ",p0," -PER: ",v_periodo," -MEDI: ",p_medidor));
                select count(0),SUM(importe) into b_mora ,v_importe_mora from gestion_granjas.kardex_servicios_detalle 
				where id_servicio=p_servicio and id_factor=p_medidor and estatus='A' and id_concepto=2  and periodo=v_periodo and anio =v_anio ORDER BY folio asc;        
				
                SET v_monto_mora=0;
                
                    	IF(b_mora > 0 ) THEN
						-- 	SET p1=0;
						  -- Se abre cursor
                          SET v_monto_mora= (3/100)* ( v_importe + v_importe_mora );
                          call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(p_medidor,p_servicio,'2',0,v_monto_mora,v_periodo,v_anio,'3 %',0);
						/*	OPEN curDetalle; 
								  REPEAT 
								FETCH curDetalle INTO v_folioMora,v_importe_mora  ;
                                	SET v_monto_mora= (3/100)* ( v_importe + v_importe_mora );
								call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(p_medidor,p_servicio,'2',0,v_monto_mora,v_periodo,v_anio,'3 %',0);
                                
								SET p1 = p1 + 1;
						 
							UNTIL
								 p1 = b_mora
							END REPEAT ;
							CLOSE curDetalle;
                            */
                            else
								SET v_monto_mora= (3/100)*  v_importe;
								call gestion_granjas.sp_frm_PrcCuotas_AddDetalleServicio(p_medidor,p_servicio,'2',0,v_monto_mora,v_periodo,v_anio,'3 %',0);
                            
                        END IF;

	  END LOOP read_loop;

	  CLOSE cur;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PrcCuotas_CPeriodo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PrcCuotas_CPeriodo`(in op int, in p_servicio int)
BEGIN


  -- Declare 
  DECLARE v_anio varchar(4);
  set v_anio=null;
  SELECT ANIO into v_anio FROM gestion_granjas.cat_anio WHERE ESTATUS='A';
  
  
	if(op=1) then

		SELECT periodo,descripcion FROM gestion_granjas.cat_periodos
		where CAST(date_format(concat(v_anio,'-',periodo,'-01'), '%c') AS SIGNED) >
			ifnull(CAST(( SELECT (CASE WHEN MAX(CAST( date_format(concat(anio,'-',periodo,'-01'), '%c' ) AS SIGNED )) =12
						then 0 ELSE MAX(CAST( date_format(concat(anio,'-',periodo,'-01'), '%c' ) AS SIGNED )) END)
					FROM gestion_granjas.bitacora_cuotas 
                    WHERE ANIO=(	select anio from gestion_granjas.cat_anio where estatus='A')
                    and servicio=p_servicio
				) AS SIGNED),0) ;
        
	end if;
    if(op=2) then

		SELECT anio,anio FROM gestion_granjas.cat_anio WHERE ESTATUS='A';
        
	end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PrcCuotas_ValidaCBA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PrcCuotas_ValidaCBA`(out pResultado boolean)
BEGIN


  -- Declare 
  DECLARE valida int;
  
     SELECT count(0) into valida
     FROM gestion_granjas.cat_medidores a
     LEFT JOIN gestion_granjas.cuotas_base_agua b on a.id_medidor=b.id_factor 
     and periodo=(SELECT PERIODO FROM gestion_granjas.cat_periodos WHERE ESTATUS='A' )
     and anio =(SELECT ANIO FROM gestion_granjas.cat_anio WHERE ESTATUS='A')
     where a.estatus='A' and b.id_factor is null;
  
  if(valida>0) then
	SET pResultado =true;
    else	
    SET pResultado =false;
  end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_PrcCuotas_ValidaLecturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_PrcCuotas_ValidaLecturas`(
	in p_periodo varchar(2), in p_anio varchar(4), out pResultado boolean)
BEGIN


  -- Declare 
  DECLARE valida int;
  
  SELECT count(*) into valida FROM gestion_granjas.reg_lecturas 
  where   estatus='A' and periodo=p_periodo and anio=p_anio;
  
  if(valida>0) then
	SET pResultado =true;
    else	
    SET pResultado =false;
  end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_RegLecturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_RegLecturas`(
IN op int,
IN p_idmedidor int,
IN p_periodo int,
IN p_anio int,
IN p_lectura int,

OUT o_periodoAnt int,
OUT o_anioAnt int,
OUT o_lectura int,
OUT o_lecturaAnt int
)
BEGIN

/*VARIABLES PARA LECTURAS Y PERIODOS*/
DECLARE v_lectura int;
DECLARE v_lecturaAnt int;
DECLARE v_periodo int;
DECLARE v_periodoAnt int;
DECLARE v_anio int;
DECLARE v_anioAnt int;

if(op=1) then
	/*altas todos las lecturas y consumos*/
	set v_periodoAnt=p_periodo-1;
    set v_anioAnt=p_anio;
    if(v_periodoAnt=0)then
		set v_periodoAnt=12;
		set v_anioAnt=p_anio-1;
	end if;
	/*Verificamos si existe lectura en el periodo anterior en caso de existir*/
    if exists(SELECT * from gestion_granjas.reg_lecturas WHERE id_medidor=p_idmedidor and periodo=p_periodo and anio=p_anio) then
		/*si existe modificamos*/
        UPDATE gestion_granjas.reg_lecturas SET lectura=p_lectura, fecha_lectura=now() where id_medidor=p_idmedidor and periodo=p_periodo and anio=p_anio;
	else
		INSERT INTO gestion_granjas.reg_lecturas (id_medidor, lectura,periodo,anio,fecha_lectura) VALUES(p_idmedidor,p_lectura,lpad(p_periodo,2,0),p_anio,now());
    end if;
    set o_periodoAnt=v_periodoAnt;
	set o_anioAnt= v_anioAnt;
    SELECT lectura into o_lectura from gestion_granjas.reg_lecturas WHERE id_medidor=p_idmedidor and periodo=p_periodo and anio=p_anio;
    SELECT lectura into o_lectura from gestion_granjas.reg_lecturas WHERE id_medidor=p_idmedidor and periodo=o_periodoAnt and anio=o_anioAnt;
	
elseif(op=2)then
	set v_periodoAnt=p_periodo-1;
    set v_anioAnt=p_anio;
    if(v_periodoAnt=0)then
		set v_periodoAnt=12;
		set v_anioAnt=p_anio-1;
	end if;
        
    if exists(SELECT * from gestion_granjas.reg_lecturas WHERE id_medidor=p_idmedidor and periodo=p_periodo and anio=p_anio) then
		SELECT 
        lectura
        into o_lectura
        from gestion_granjas.reg_lecturas WHERE id_medidor=p_idmedidor and periodo=p_periodo and anio=p_anio;
    end if;
    if exists(SELECT * from gestion_granjas.reg_lecturas WHERE id_medidor=p_idmedidor and periodo=v_periodoAnt and anio=v_anioAnt) then
		SELECT 
        lectura
        into o_lecturaAnt
        from gestion_granjas.reg_lecturas WHERE id_medidor=p_idmedidor and periodo=v_periodoAnt and anio=v_anioAnt;
		set o_periodoAnt=v_periodoAnt;
		set o_anioAnt=v_anioAnt;
    end if;
    
    if(isnull(o_periodoAnt))then
		set o_periodoAnt=0;
    end if;
    if(isnull(o_anioAnt))then
		set o_anioAnt=0;
    end if;
    if(isnull(o_lectura))then
		set o_lectura=0;
    end if;
    if(isnull(o_lecturaAnt))then
		set o_lecturaAnt=0;
    end if;

end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_RegLecturas_Listados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_RegLecturas_Listados`(
IN op int,
IN p_idmanzana int,
IN p_lote varchar(45),
IN p_nombre varchar (240)

)
BEGIN
DECLARE v_subcuenta VARCHAR(45);

/*VARIABLES PARA LECTURAS Y PERIODOS*/
DECLARE v_lectura int;
DECLARE v_lecturaAnt int;
DECLARE v_periodo int;
DECLARE v_periodoAnt int;
DECLARE v_anio int;
DECLARE v_anioAnt int;

if(op=1) then
/*Muestra todos los lotes*/
    SELECT
	d.id_medidor,a.id_manzana,c.nombre, CONCAT('MZ ',b.manzana, ' / LT-', a.lote) as direccion, d.contrato, d.medidor
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    left join gestion_granjas.cat_medidores d
    on a.id_lote=d.id_lote
   where d.estatus='A';
elseif(op=2) then

	/*Consulta por id de manzana y nombre del lote*/
    SELECT
	d.id_medidor,a.id_manzana,c.nombre, CONCAT('MZ ',b.manzana, ' / LT-', a.lote) as direccion, d.contrato, d.medidor
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    left join gestion_granjas.cat_medidores d
    on a.id_lote=d.id_lote
    where a.id_manzana=p_idmanzana and a.estatus='A';
elseif(op=3) then
set v_subcuenta=p_nombre;
	/*Consulta por nombre del Colono propietario*/
   SELECT
	d.id_medidor,a.id_manzana,c.nombre, CONCAT('MZ ',b.manzana, ' / LT-', a.lote) as direccion, d.contrato, d.medidor
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    left join gestion_granjas.cat_medidores d
    on a.id_lote=d.id_lote
    where c.nombre like concat('%',p_nombre,'%') and a.estatus='A';
elseif(op=4) then
/*Muestra todos las lecturas y consumos*/
	select lectura,periodo,anio,periodo-1 as periodoAnterior INTO v_lectura,v_periodo,v_anio,v_periodoAnt from gestion_granjas.reg_lecturas WHERE id_medidor=1 and periodo=02 and anio=2016;

    
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_frm_RegLecturas_valida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_frm_RegLecturas_valida`(
in v_per varchar(2), 
in v_anio varchar(4),  
in v_usr varchar(25),
out v_resul int)
BEGIN
DECLARE v_lecturaReg int;
DECLARE v_Medidores int;

SELECT count(id_lectura) into v_lecturaReg FROM gestion_granjas.reg_lecturas where periodo=v_per and anio=v_anio;
select count(id_medidor) into v_Medidores from cat_medidores where estatus='A';
if (v_lecturaReg=v_Medidores) then
/*LOS REGISTROS DE LECTURAS SON IGUALES A LA CANTIDAD DE MEDIDORES ACTIVOS*/
	INSERT INTO gestion_granjas.bitacora_cuotas (periodo,anio,fecha_registro,usuario_registro,servicio)
	values(v_per,v_anio,now(),v_usr,1);
	set v_resul=0; 
else
/*FALTA CONCLUIR CON LOS REGISTROS DE LECTURAS*/
    set v_resul=1;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_menu`(
  IN perfil int,
  in p_modulo int,
  out p_result boolean
  
)
BEGIN

Declare valida int;
  -- Declare the cursor

    SELECT
      count(*) into valida
    FROM gestion_granjas.detalle_accesos a
    INNER JOIN gestion_granjas.cat_modulos b on a.id_modulo=b.id_modulo and estatus='A' 
    where a.id_modulo=p_modulo and id_perfil=perfil;
 

		if (valida>0) then
		SET p_result:=true;
        else
        SET p_result:=false;
		end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_menu`(
  in tp_modulo int,
  in relModulo int
  
)
BEGIN


  -- Declare the cursor

    SELECT
       a.id_modulo, nombre
    FROM gestion_granjas.cat_modulos a
    where estatus='A' AND TIPO_MODULO=tp_modulo and relacion=relModulo;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_perfil_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_perfil_menu`(
  IN perfil int,
  in tp_modulo int,
  in relModulo int
  
)
BEGIN


  -- Declare the cursor

    SELECT
       a.id_modulo, ID_COMPONENTE
    FROM gestion_granjas.detalle_accesos a
    INNER JOIN gestion_granjas.cat_modulos b on a.id_modulo=b.id_modulo and estatus='A' AND TIPO_MODULO=tp_modulo and relacion=relModulo
    where id_perfil=perfil;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_prc_actualizaTarifaMTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_prc_actualizaTarifaMTO`()
BEGIN
	DECLARE valida int Default 0;
    DECLARE v_Act_fechaApl Date;
	DECLARE v_Pend_fechaApl Date;
    DECLARE v_perActual varchar(2);
    DECLARE v_anioActual varchar(4);
    SELECT periodo into v_perActual FROM gestion_granjas.cat_periodos WHERE estatus='A';
	SELECT anio into v_anioActual FROM gestion_granjas.cat_anio WHERE estatus='A';
	
    SELECT (CASE WHEN CONCAT(v_perActual,'-',v_anioActual)>=date_format(min(FECHA_APLICACION), '%m-%Y') THEN 1 ELSE 0 END) 
	into valida
	FROM gestion_granjas.tarifas_mantenimiento WHERE ESTATUS='P';

	if(valida>0) then
    
     SELECT FECHA_APLICACION
	into v_Act_fechaApl
	FROM gestion_granjas.tarifas_mantenimiento WHERE ESTATUS='A';
    
    SELECT MIN(FECHA_APLICACION) 
	into v_Pend_fechaApl
	FROM gestion_granjas.tarifas_mantenimiento WHERE ESTATUS='P';
    
     -- Actualiza tarifa actual   a estatus Inactiva
     UPDATE gestion_granjas.tarifas_mantenimiento SET  ESTATUS='I'
     WHERE ESTATUS='A' AND FECHA_APLICACION=v_Act_fechaApl;  
     
     
    -- Actualiza tarifa proxima pendiente a Activa
    UPDATE gestion_granjas.tarifas_mantenimiento SET  ESTATUS='A'
     WHERE ESTATUS='P' AND FECHA_APLICACION=v_Pend_fechaApl;
     
     

	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_principal_busca_perfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_principal_busca_perfil`(
  IN in_perfil varchar(45),
  OUT resultado INT,
  OUT p_perfil INT,
  OUT p_desc_perfil varchar(50)
)
BEGIN


SELECT
  COUNT(*)
INTO
  resultado
FROM
  gestion_granjas.cat_perfiles
WHERE
	id_perfil = in_perfil;
  if (resultado=1) then
	SELECT a.id_perfil,descripcion as perfil into p_perfil,p_desc_perfil 
    from gestion_granjas.cat_perfiles a
    where  a.id_perfil = in_perfil;
  end if;
  
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_principal_perfil_menu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_principal_perfil_menu`(
  IN perfil int,
  in tp_modulo int,
  in relModulo int
  
)
BEGIN


  -- Declare the cursor

    SELECT
       a.id_modulo, ID_COMPONENTE
    FROM gestion_granjas.detalle_accesos a
    INNER JOIN gestion_granjas.cat_modulos b on a.id_modulo=b.id_modulo and estatus='A' AND TIPO_MODULO=tp_modulo and relacion=relModulo
    where id_perfil=perfil;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_registra_permisos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registra_permisos`(
  IN in_perfil varchar(45),
  IN in_modulo varchar(45),
  OUT resultado boolean
)
BEGIN
DECLARE v_valida int;
set v_valida=0;

select count(*) into v_valida FROM
  gestion_granjas.detalle_accesos
WHERE
	id_perfil = in_perfil and id_modulo=in_modulo;
  
  if(v_valida=0) then
  insert into detalle_accesos (id_perfil,id_modulo)values (in_perfil,in_modulo);
  end if;
  set resultado =true;
  
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_report_listamedidor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_report_listamedidor`(
IN opL int,
IN p_param1 varchar(45),
IN p_param2 varchar(45)
)
BEGIN
DECLARE v_fecha varchar(12);
DECLARE v_periodoAnt varchar(2);
DECLARE v_anioAnt varchar(4);

if(opL=1) then
/*Muestra todos los medidores*/
    SELECT
        b.manzana, a.lote, d.medidor, c.nombre,a.metros_cuadrados, d.base_cna
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    left join gestion_granjas.cat_medidores d
    on a.id_lote=d.id_lote
   where d.estatus='A';
elseif(opL=2) then
	/*Consulta por manzana
    P_PARAM1 HACE REFERENCIA A LA MANZANA
    */
   SELECT
        b.manzana, a.lote, d.medidor, c.nombre,a.metros_cuadrados, d.base_cna
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    left join gestion_granjas.cat_medidores d
    on a.id_lote=d.id_lote
   where d.estatus='A' and b.manzana=p_param1;
elseif(opL=3)then
	/*Consulta para registro de lecturas
    P_PARAM1 HACE REFERENCIA AL PERIDO
    P_PARAM2 HACE REFERENCIA AL AÑO
    */
	set v_fecha=CONCAT(p_param2,'-',LPAD(p_param1,2,'0'),"-01");  
    /*SETEAMOS FECHA ANTERIOR*/
    SELECT date_format(DATE_ADD(v_fecha,INTERVAL -1 MONTH ),'%m'),
			date_format(DATE_ADD(v_fecha,INTERVAL -1 MONTH ),'%Y') into v_periodoAnt,v_AnioAnt  from dual;

	SELECT
	d.medidor, c.nombre, b.manzana, a.lote, e.lectura
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    left join gestion_granjas.cat_medidores d
    on a.id_lote=d.id_lote
    left join reg_lecturas as e
    on d.id_medidor=e.id_medidor
	where d.estatus='A' and e.periodo=v_periodoAnt and e.anio=v_AnioAnt;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_report_ReciboAgua` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_report_ReciboAgua`(
IN opL int,
IN p_param1 varchar(45),
IN p_param2 varchar(45),
IN p_param3 varchar(45)
)
BEGIN

  DECLARE v_periodoAnt varchar(2) ;
  DECLARE v_AnioAnt varchar(4) ;
  DECLARE v_fecha   varchar(12) ;
if(opL=1) then
	/*Consulta por manzana
    P_PARAM1 HACE REFERENCIA AL LOTE
    */
    select a.id_lote,b.nombre, c.manzana,a.lote,a.metros_cuadrados
	from gestion_granjas.cat_lotes as a 
	left join gestion_granjas.cat_colonos as b
	on a.id_colono=b.id_colono
	left join gestion_granjas.cat_manzanas as c
	on a.id_manzana=c.id_manzana
	where a.id_lote=p_param1;
elseif(opL=2) then
	/*Consulta por manzana
    P_PARAM1 HACE REFERENCIA AL LOTE
	P_PARAM2 HACE REFERENCIA AL id de pago recibo
    SET lc_time_names = 'es_UY';
    SELECT c.id_lote, c.medidor,c.base_cna,date_format(concat(a.anio, a.periodo,'01'), '%b %Y') as periodoA,  ifnull(b.lectura,0) as lectura_ant, a.lectura,(a.lectura - ifnull(b.lectura,0)) as consumo
 FROM gestion_granjas.reg_lecturas a

 LEFT JOIN gestion_granjas.reg_lecturas b ON a. id_medidor=b.id_medidor
   
    and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%m') 
       from dual)				=b.periodo
      
  and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%Y') 
       from dual)				=b.anio
      left join gestion_granjas.cat_medidores as c
		on a.id_medidor=c.id_medidor 
       
   where c.id_lote=p_param1 and (a.periodo=p_param2 or a.periodo=lpad(p_param2+1,2,0)) and a.anio=p_param3 order by a.anio,a.periodo asc;
   */
  SET lc_time_names = 'es_UY';
SELECT 
	c.id_lote, c.medidor,c.base_cna,date_format(concat(a.anio, a.periodo,'01'), '%b %Y') as periodoA,  ifnull(b.lectura,0) as lectura_ant, a.lectura,(a.lectura - ifnull(b.lectura,0)) as consumo
FROM gestion_granjas.reg_lecturas a
LEFT JOIN gestion_granjas.reg_lecturas b 
ON a. id_medidor=b.id_medidor
    and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%m') 
    from dual)=b.periodo
	and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%Y') 
    from dual)=b.anio
left join gestion_granjas.cat_medidores as c
on a.id_medidor=c.id_medidor 
right join (SELECT subB.periodo , subB.anio
					FROM gestion_granjas.pagos_anticipos subA
					left join gestion_granjas.pagos_detalle subB on subB.folio_pago=subA.folio where subA.folio=p_param2
					group by 1  order by subB.anio,1 asc) periodosT
                 on a.periodo=periodosT.periodo and a.anio=periodosT.anio
where c.id_lote=p_param1
order by a.anio,a.periodo asc;   
        -- ************* PAGO DE PERIODOS PARA PARTIDAS *******************************
elseif(opL=3)then
	/*Consulta para registro de lecturas
    P_PARAM1 HACE REFERENCIA AL LOTE
    P_PARAM2 HACE REFERENCIA AL SERVICIO (3 ES AGUA)
    */
	SET lc_time_names = 'es_UY';
	
      SELECT p_param1 as id_lote,'Cuota de Agua' as servicio,
			concat(b.periodo,'/',date_format(concat(b.anio, b.periodo,'01'), '%y') ,
			' (', date_format(concat(b.anio, b.periodo,'01'), '%b %Y'),' )') as periodo,
			sum(cuota) as importe ,'fdgdfg' as descripcion
	FROM gestion_granjas.pagos_anticipos a
		left join gestion_granjas.pagos_detalle b on b.folio_pago=a.folio where a.folio=p_param2 
    group by 3  order by b.anio,3 asc;
    
    
	/*SELECT a.id_factor as id_lote,c.servicio,
	concat(a.periodo,'/',date_format(concat(anio, a.periodo,'01'), '%y') ,
		' (', date_format(concat(anio, a.periodo,'01'), '%b %Y'),' )') as periodo,
        importe, 
        b.Descripcion as descripcion
	FROM gestion_granjas.kardex_servicios a
	LEFT JOIN gestion_granjas.cat_estatus b on a.estatus = b.clave
	LEFT JOIN gestion_granjas.cat_servicios c on a.id_servicio=c.id_servicio
    LEFT JOIN gestion_granjas.tarifas_mantenimiento d
			ON fecha_aplicacion=(
						SELECT MAX(FECHA_APLICACION) FROM gestion_granjas.tarifas_mantenimiento
						WHERE fecha_aplicacion<=concat(a.anio,'-',a.periodo,'-01')
					-- 	and estatus 'I'
						)
	WHERE id_factor=p_param1 AND a.id_servicio=3;*/
    
    
    -- ************* LECTURAS PARA GRAFICA *******************************
elseif (opL=4) then
SET lc_time_names = 'es_UY';

SELECT c.id_lote, date_format(concat(a.anio, a.periodo,'01'), '%b ') as periodo,a.anio,(a.lectura - ifnull(b.lectura,0)) as consumo
	FROM gestion_granjas.reg_lecturas a
    LEFT JOIN gestion_granjas.reg_lecturas b ON a. id_medidor=b.id_medidor
    and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%m') 
       from dual)=b.periodo
	and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%Y') 
       from dual)=b.anio
      left join gestion_granjas.cat_medidores as c
	on a.id_medidor=c.id_medidor 
	where c.id_lote=p_param1 and a.anio in( ( SELECT max(anio) +1 FROM gestion_granjas.pagos_anticipos a
									left join gestion_granjas.pagos_detalle b on b.folio_pago=a.folio where a.folio=p_param2 )
                                    , (SELECT max(anio) FROM gestion_granjas.pagos_anticipos a
									left join gestion_granjas.pagos_detalle b on b.folio_pago=a.folio where a.folio=p_param2 
									)
									)
			 order by a.periodo asc;


	/*SELECT c.id_lote, date_format(concat(a.anio, a.periodo,'01'), '%b ') as periodo,a.anio,(a.lectura - ifnull(b.lectura,0)) as consumo
	FROM gestion_granjas.reg_lecturas a
    LEFT JOIN gestion_granjas.reg_lecturas b ON a. id_medidor=b.id_medidor
    and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%m') 
       from dual)=b.periodo
	and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%Y') 
       from dual)=b.anio
      left join gestion_granjas.cat_medidores as c
	on a.id_medidor=c.id_medidor 
	where c.id_lote=p_param1 and a.anio in(p_param3,p_param3+1) order by a.periodo asc ;
    */
    

-- ****TRIFAS DE EXCEDENTES--
elseif(opL=5) then    
select descripcion, costo from gestion_granjas.excedente where tarifa=1 and estatus='A';

-- +++++FORMA DE PAGO DEL RECIBO++++-----
elseif(opL=6) then
SELECT id_factor as id_lote, a.folio,importe_efectivo, no_cheque,importe_cheque, no_ficha,importe_ficha,fecha_pago 
	FROM gestion_granjas.pagos_anticipos a
		left join gestion_granjas.pagos_detalle b on b.folio_pago=a.folio where a.folio=p_param2
    group by 1;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_report_ReciboConvenio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_report_ReciboConvenio`(
IN opL int,
IN p_param1 varchar(45),
IN p_param2 varchar(45),
IN p_param3 varchar(45)
)
BEGIN

  DECLARE v_periodoAnt varchar(2) ;
  DECLARE v_AnioAnt varchar(4) ;
  DECLARE v_fecha   varchar(12) ;
if(opL=1) then
	/*Consulta por manzana
    P_PARAM1 HACE REFERENCIA AL LOTE
    */
    select a.id_lote,b.nombre, c.manzana,a.lote,a.metros_cuadrados
	from gestion_granjas.cat_lotes as a 
	left join gestion_granjas.cat_colonos as b
	on a.id_colono=b.id_colono
	left join gestion_granjas.cat_manzanas as c
	on a.id_manzana=c.id_manzana
	where a.id_lote=p_param1;
elseif(opL=2) then
	/*Consulta por manzana
    P_PARAM1 HACE REFERENCIA AL LOTE
	P_PARAM2 HACE REFERENCIA AL id de pago recibo
    SET lc_time_names = 'es_UY';
    SELECT c.id_lote, c.medidor,c.base_cna,date_format(concat(a.anio, a.periodo,'01'), '%b %Y') as periodoA,  ifnull(b.lectura,0) as lectura_ant, a.lectura,(a.lectura - ifnull(b.lectura,0)) as consumo
 FROM gestion_granjas.reg_lecturas a

 LEFT JOIN gestion_granjas.reg_lecturas b ON a. id_medidor=b.id_medidor
   
    and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%m') 
       from dual)				=b.periodo
      
  and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%Y') 
       from dual)				=b.anio
      left join gestion_granjas.cat_medidores as c
		on a.id_medidor=c.id_medidor 
       
   where c.id_lote=p_param1 and (a.periodo=p_param2 or a.periodo=lpad(p_param2+1,2,0)) and a.anio=p_param3 order by a.anio,a.periodo asc;
   */
  SET lc_time_names = 'es_UY';
SELECT 
	c.id_lote, c.medidor,c.base_cna,date_format(concat(a.anio, a.periodo,'01'), '%b %Y') as periodoA,  ifnull(b.lectura,0) as lectura_ant, a.lectura,(a.lectura - ifnull(b.lectura,0)) as consumo
FROM gestion_granjas.reg_lecturas a
LEFT JOIN gestion_granjas.reg_lecturas b 
ON a. id_medidor=b.id_medidor
    and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%m') 
    from dual)=b.periodo
	and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%Y') 
    from dual)=b.anio
left join gestion_granjas.cat_medidores as c
on a.id_medidor=c.id_medidor 
right join (SELECT subB.periodo , subB.anio
					FROM gestion_granjas.pagos_anticipos subA
					left join gestion_granjas.pagos_detalle subB on subB.folio_pago=subA.folio where subA.folio=p_param2
					group by 1  order by subB.anio,1 asc) periodosT
                 on a.periodo=periodosT.periodo and a.anio=periodosT.anio
where c.id_lote=p_param1
order by a.anio,a.periodo asc;   
        -- ************* PAGO DE PERIODOS PARA PARTIDAS *******************************
elseif(opL=3)then
	/*Consulta para registro de lecturas
    P_PARAM1 HACE REFERENCIA AL LOTE
    P_PARAM2 HACE REFERENCIA AL SERVICIO (3 ES AGUA)
    */
	SET lc_time_names = 'es_UY';
	
      SELECT p_param1 as id_lote,'Convenio' as servicio,
			concat(b.periodo,'/',date_format(concat(b.anio, b.periodo,'01'), '%y') ,
			' (', date_format(concat(b.anio, b.periodo,'01'), '%b %Y'),' )') as periodo,
			sum(cuota) as importe ,'fdgdfg' as descripcion
	FROM gestion_granjas.pagos_anticipos a
		left join gestion_granjas.pagos_detalle b on b.folio_pago=a.folio where a.folio=p_param2 
    group by 3  order by b.anio,3 asc;
    
    
	/*SELECT a.id_factor as id_lote,c.servicio,
	concat(a.periodo,'/',date_format(concat(anio, a.periodo,'01'), '%y') ,
		' (', date_format(concat(anio, a.periodo,'01'), '%b %Y'),' )') as periodo,
        importe, 
        b.Descripcion as descripcion
	FROM gestion_granjas.kardex_servicios a
	LEFT JOIN gestion_granjas.cat_estatus b on a.estatus = b.clave
	LEFT JOIN gestion_granjas.cat_servicios c on a.id_servicio=c.id_servicio
    LEFT JOIN gestion_granjas.tarifas_mantenimiento d
			ON fecha_aplicacion=(
						SELECT MAX(FECHA_APLICACION) FROM gestion_granjas.tarifas_mantenimiento
						WHERE fecha_aplicacion<=concat(a.anio,'-',a.periodo,'-01')
					-- 	and estatus 'I'
						)
	WHERE id_factor=p_param1 AND a.id_servicio=3;*/
    
    
    -- ************* LECTURAS PARA GRAFICA *******************************
elseif (opL=4) then
SET lc_time_names = 'es_UY';

SELECT c.id_lote, date_format(concat(a.anio, a.periodo,'01'), '%b ') as periodo,a.anio,(a.lectura - ifnull(b.lectura,0)) as consumo
	FROM gestion_granjas.reg_lecturas a
    LEFT JOIN gestion_granjas.reg_lecturas b ON a. id_medidor=b.id_medidor
    and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%m') 
       from dual)=b.periodo
	and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%Y') 
       from dual)=b.anio
      left join gestion_granjas.cat_medidores as c
	on a.id_medidor=c.id_medidor 
	where c.id_lote=p_param1 and a.anio in( ( SELECT max(anio) -1 FROM gestion_granjas.pagos_anticipos a
									left join gestion_granjas.pagos_detalle b on b.folio_pago=a.folio where a.folio=p_param2 )
                                    , (SELECT max(anio) FROM gestion_granjas.pagos_anticipos a
									left join gestion_granjas.pagos_detalle b on b.folio_pago=a.folio where a.folio=p_param2 
									)
									)
			 order by a.periodo asc;


	/*SELECT c.id_lote, date_format(concat(a.anio, a.periodo,'01'), '%b ') as periodo,a.anio,(a.lectura - ifnull(b.lectura,0)) as consumo
	FROM gestion_granjas.reg_lecturas a
    LEFT JOIN gestion_granjas.reg_lecturas b ON a. id_medidor=b.id_medidor
    and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%m') 
       from dual)=b.periodo
	and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%Y') 
       from dual)=b.anio
      left join gestion_granjas.cat_medidores as c
	on a.id_medidor=c.id_medidor 
	where c.id_lote=p_param1 and a.anio in(p_param3,p_param3+1) order by a.periodo asc ;
    */
    

-- ****TRIFAS DE EXCEDENTES--
elseif(opL=5) then    
select descripcion, costo from gestion_granjas.excedente where tarifa=1 and estatus='A';

-- +++++FORMA DE PAGO DEL RECIBO++++-----
elseif(opL=6) then
SELECT id_factor as id_lote, a.folio,importe_efectivo, no_cheque,importe_cheque, no_ficha,importe_ficha,fecha_pago 
	FROM gestion_granjas.pagos_anticipos a
		left join gestion_granjas.pagos_detalle b on b.folio_pago=a.folio where a.folio=p_param2
    group by 1;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_report_ReciboManto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_report_ReciboManto`(
IN opL int,
IN p_param1 varchar(45),
IN p_param2 varchar(45),
IN p_param3 varchar(45)
)
BEGIN

  DECLARE v_periodoAnt varchar(2) ;
  DECLARE v_AnioAnt varchar(4) ;
  DECLARE v_fecha   varchar(12) ;
if(opL=1) then
	/*Consulta por manzana
    P_PARAM1 HACE REFERENCIA AL LOTE
    */
    select a.id_lote,b.nombre, c.manzana,a.lote,a.metros_cuadrados
	from gestion_granjas.cat_lotes as a 
	left join gestion_granjas.cat_colonos as b
	on a.id_colono=b.id_colono
	left join gestion_granjas.cat_manzanas as c
	on a.id_manzana=c.id_manzana
	where a.id_lote=p_param1;
elseif(opL=2) then
	/*Consulta por manzana
    P_PARAM1 HACE REFERENCIA AL LOTE
	P_PARAM2 HACE REFERENCIA AL id de pago recibo
    SET lc_time_names = 'es_UY';
    SELECT c.id_lote, c.medidor,c.base_cna,date_format(concat(a.anio, a.periodo,'01'), '%b %Y') as periodoA,  ifnull(b.lectura,0) as lectura_ant, a.lectura,(a.lectura - ifnull(b.lectura,0)) as consumo
 FROM gestion_granjas.reg_lecturas a

 LEFT JOIN gestion_granjas.reg_lecturas b ON a. id_medidor=b.id_medidor
   
    and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%m') 
       from dual)				=b.periodo
      
  and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%Y') 
       from dual)				=b.anio
      left join gestion_granjas.cat_medidores as c
		on a.id_medidor=c.id_medidor 
       
   where c.id_lote=p_param1 and (a.periodo=p_param2 or a.periodo=lpad(p_param2+1,2,0)) and a.anio=p_param3 order by a.anio,a.periodo asc;
   */
  SET lc_time_names = 'es_UY';
SELECT 
	c.id_lote, c.medidor,c.base_cna,date_format(concat(a.anio, a.periodo,'01'), '%b %Y') as periodoA,  ifnull(b.lectura,0) as lectura_ant, a.lectura,(a.lectura - ifnull(b.lectura,0)) as consumo
FROM gestion_granjas.reg_lecturas a
LEFT JOIN gestion_granjas.reg_lecturas b 
ON a. id_medidor=b.id_medidor
    and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%m') 
    from dual)=b.periodo
	and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%Y') 
    from dual)=b.anio
left join gestion_granjas.cat_medidores as c
on a.id_medidor=c.id_medidor 
right join (SELECT subB.periodo , subB.anio
					FROM gestion_granjas.pagos_anticipos subA
					left join gestion_granjas.pagos_detalle subB on subB.folio_pago=subA.folio where subA.folio=p_param2
					group by 1  order by subB.anio,1 asc) periodosT
                 on a.periodo=periodosT.periodo and a.anio=periodosT.anio
where c.id_lote=p_param1
order by a.anio,a.periodo asc;   
        -- ************* PAGO DE PERIODOS PARA PARTIDAS *******************************
elseif(opL=3)then
	/*Consulta para registro de lecturas
    P_PARAM1 HACE REFERENCIA AL LOTE
    P_PARAM2 HACE REFERENCIA AL SERVICIO (3 ES AGUA)
    */
	SET lc_time_names = 'es_UY';
	
      SELECT p_param1 as id_lote,'Cuota de Mantenimiento' as servicio,
			concat(b.periodo,'/',date_format(concat(b.anio, b.periodo,'01'), '%y') ,
			' (', date_format(concat(b.anio, b.periodo,'01'), '%b %Y'),' )') as periodo,
			sum(cuota) as importe ,'fdgdfg' as descripcion
	FROM gestion_granjas.pagos_anticipos a
		left join gestion_granjas.pagos_detalle b on b.folio_pago=a.folio where a.folio=p_param2 
    group by 3  order by b.anio,3 asc;
    
    
	/*SELECT a.id_factor as id_lote,c.servicio,
	concat(a.periodo,'/',date_format(concat(anio, a.periodo,'01'), '%y') ,
		' (', date_format(concat(anio, a.periodo,'01'), '%b %Y'),' )') as periodo,
        importe, 
        b.Descripcion as descripcion
	FROM gestion_granjas.kardex_servicios a
	LEFT JOIN gestion_granjas.cat_estatus b on a.estatus = b.clave
	LEFT JOIN gestion_granjas.cat_servicios c on a.id_servicio=c.id_servicio
    LEFT JOIN gestion_granjas.tarifas_mantenimiento d
			ON fecha_aplicacion=(
						SELECT MAX(FECHA_APLICACION) FROM gestion_granjas.tarifas_mantenimiento
						WHERE fecha_aplicacion<=concat(a.anio,'-',a.periodo,'-01')
					-- 	and estatus 'I'
						)
	WHERE id_factor=p_param1 AND a.id_servicio=3;*/
    
    
    -- ************* LECTURAS PARA GRAFICA *******************************
elseif (opL=4) then
SET lc_time_names = 'es_UY';

SELECT c.id_lote, date_format(concat(a.anio, a.periodo,'01'), '%b ') as periodo,a.anio,(a.lectura - ifnull(b.lectura,0)) as consumo
	FROM gestion_granjas.reg_lecturas a
    LEFT JOIN gestion_granjas.reg_lecturas b ON a. id_medidor=b.id_medidor
    and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%m') 
       from dual)=b.periodo
	and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%Y') 
       from dual)=b.anio
      left join gestion_granjas.cat_medidores as c
	on a.id_medidor=c.id_medidor 
	where c.id_lote=p_param1 and a.anio in( ( SELECT max(anio) -1 FROM gestion_granjas.pagos_anticipos a
									left join gestion_granjas.pagos_detalle b on b.folio_pago=a.folio where a.folio=p_param2 )
                                    , (SELECT max(anio) FROM gestion_granjas.pagos_anticipos a
									left join gestion_granjas.pagos_detalle b on b.folio_pago=a.folio where a.folio=p_param2 
									)
									)
			 order by a.periodo asc;


	/*SELECT c.id_lote, date_format(concat(a.anio, a.periodo,'01'), '%b ') as periodo,a.anio,(a.lectura - ifnull(b.lectura,0)) as consumo
	FROM gestion_granjas.reg_lecturas a
    LEFT JOIN gestion_granjas.reg_lecturas b ON a. id_medidor=b.id_medidor
    and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%m') 
       from dual)=b.periodo
	and (SELECT date_format(DATE_ADD(CONCAT(a.anio,'-',LPAD(a.periodo,2,'0'),"-01"),INTERVAL -1 MONTH ),'%Y') 
       from dual)=b.anio
      left join gestion_granjas.cat_medidores as c
	on a.id_medidor=c.id_medidor 
	where c.id_lote=p_param1 and a.anio in(p_param3,p_param3+1) order by a.periodo asc ;
    */
    

-- ****TRIFAS DE EXCEDENTES--
elseif(opL=5) then    
select descripcion, costo from gestion_granjas.excedente where tarifa=1 and estatus='A';

-- +++++FORMA DE PAGO DEL RECIBO++++-----
elseif(opL=6) then
SELECT id_factor as id_lote, a.folio,importe_efectivo, no_cheque,importe_cheque, no_ficha,importe_ficha,fecha_pago 
	FROM gestion_granjas.pagos_anticipos a
		left join gestion_granjas.pagos_detalle b on b.folio_pago=a.folio where a.folio=p_param2
    group by 1;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tarifas_ABCMantenimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tarifas_ABCMantenimiento`(
IN tipo_mov int,
IN p_idtarimanto int,
IN p_tipo int,
IN p_descripcion varchar(45),
IN p_valor varchar(45),
IN p_fechaaplica varchar(45),
OUT resultado int,
OUT mensaje varchar(100)
)
BEGIN
/*
COMENZAMOS SI TIPO_MOV ES 1 ALTA, 2 BAJA, 3 CAMBIO*/

declare fechaAplica varchar(45);
declare v_estatus varchar(10);
SELECT FIRST_DAY(p_fechaaplica)	INTO fechaAplica;
/*|||||||||||||||||ALTAS|||||||||||||||||||||||||||||||||*/
IF (tipo_mov=1) THEN
/*INICIA CODIGO PARA ALTAS*/
	/*
	resultado=0 Alta, Baja o Cambio exitosa
	resultado=1 Existe  en el parameto
	*/
	
	IF EXISTS(
		SELECT * FROM gestion_granjas.tarifas_mantenimiento WHERE
		CAST(fecha_aplicacion AS DATE) >= fechaAplica
		AND fecha_aplicacion < DATE_ADD(fechaAplica, INTERVAL 1 month )
        AND estatus!='B'
    ) THEN
		SET resultado=1;
        set mensaje='¡El mes ya tiene una Base de mantenimiento asignada!';
	else
    IF EXISTS(SELECT * FROM gestion_granjas.tarifas_mantenimiento) THEN
		set v_estatus='P';
	else
        set v_estatus='A';
    end if;
		/*En caso de no estar dado de alta continua..*/
		INSERT INTO gestion_granjas.tarifas_mantenimiento
		(
		tipo,
		descripcion,
		valor,
        fecha_aplicacion,
        estatus,
		fecha_registro
		) 
		values
		(
		p_tipo,
		p_descripcion,
		p_valor,
        fechaAplica,
        v_estatus,
		now()
		);	
        SET resultado=0;
		set mensaje='¡La Base de Mantenimiento se registró correctamente!';
	end if;
/*FIN CODIGO PARA ALTAS*/

/*||||||||||||||||BAJAS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=2) THEN
/*INICIA CODIGO PARA BAJAS*/
	/* valores resultado
	resultado=0 Baja exitosa
	resultado=2 Problemas con la baja no existe registro
	*/
	if exists (select * from gestion_granjas.tarifas_mantenimiento where id_tarimanto = p_idtarimanto and estatus!='A') then
        update gestion_granjas.tarifas_mantenimiento set estatus="B", fecha_registro=now() where id_tarimanto=p_idtarimanto;
        set resultado = 0;
        set mensaje='¡La Base de Mantenimiento se eliminó correcatmente!';
	else
		/*resultado 2 no existe parametro*/
		set resultado = 2;
        set mensaje='¡No es posible Eliminar. La Base de Mantenimiento es la Activa!';
	end if;

/*FIN CODIGO PARA BAJAS*/

/*||||||||||||||||CAMBIOS||||||||||||||||||||||||||||||||||*/
ELSEIF (tipo_mov=3) THEN 
/*INICIA CODIGO PARA CAMBIOS*/
	/*valores resultado	
    resultado=0 Cambio exitosa
    resultado=1 Existe contrato/medidor
    resultado=2 Problemas con los cambios del registro
	*/
    /*comprobamos que existe el id de la tarifa*/
	if exists(select * from gestion_granjas.tarifas_mantenimiento where id_tarimanto = p_idtarimanto) then
	/*
    resultado=0 Se guardo correctamente
	resultado=1 Existe registro
	resultado=2 No Existe registro
	*/
		SELECT count(*) INTO resultado
        FROM 
        gestion_granjas.tarifas_mantenimiento 
        WHERE
		CAST(fecha_aplicacion AS DATE) >= fechaAplica
		AND fecha_aplicacion < DATE_ADD(fechaAplica, INTERVAL 1 month )
        AND id_tarimanto!=p_idtarimanto;
		  /*Checamos si la manzana se duplica*/
		if (resultado=0) then
		/*En caso de no estar dado de alta continua..*/			
				/*al revisar que no se duplica se continua con el registro*/
				update gestion_granjas.tarifas_mantenimiento
                set tipo=p_tipo, descripcion=p_descripcion, valor=p_valor, fecha_aplicacion=p_fechaaplica, fecha_registro=now() 
                where id_tarimanto=p_idtarimanto;
                set mensaje='¡Se guardaron los cambios correcatmente!';
			
		else
			/*resultado 2 existe parametro*/
			SET resultado=1;
            set mensaje='¡La Base ya se encuentra registrada para el mes seleccionado!';
		end if;	
	else
		/*resultado 4 no existe banco a modificar*/
		set resultado = 2;
        set mensaje='¡La Tarifa no existe!';
	end if;
/*FIN CODIGO PARA CAMBIOS*/
END IF;
/*||||||||||||||||||||||||||||||||||||||||||||||||||*/
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tarifas_CMantenimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tarifas_CMantenimiento`(
IN op int,
IN p_idtarimanto int
)
BEGIN
if(op=1) then
/*Muestra todos los medidores con direccion colono*/
SELECT
     id_tarimanto, descripcion, valor, fecha_aplicacion, estatus, tipo
    FROM gestion_granjas.tarifas_mantenimiento
   where estatus!='B'
   order by fecha_aplicacion asc;
elseif(op=2) then
/*busca bases por id*/
	SELECT
    id_tarimanto, tipo, descripcion, valor, fecha_aplicacion, estatus
    FROM gestion_granjas.tarifas_mantenimiento
   where id_tarimanto=p_idtarimanto and estatus!='B';
elseif(op=3) then
/*busca bases por id*/
	SELECT
    id_tarimanto, tipo, descripcion, valor, fecha_aplicacion, estatus
    FROM gestion_granjas.tarifas_mantenimiento
   where estatus='A' and estatus!='B';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_TEST02` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_TEST02`(IN pColono INT,
IN pManzana int,
IN pLote int,
IN pMeses VARCHAR(100))
BEGIN
  declare texto text;
  declare delimitador char(1);
  declare pos int default 1;
  declare Str varchar(200);
  -- ----------------------------
  
  declare op int;  
  declare parametro double;
  declare metrosCuadrados double default 0;
  declare cuota double;
  declare fecha varchar(10);
  declare fechaTarifa  varchar(10);
  declare c int default 0;
  
  set delimitador=',';
  set texto =pMeses;
  
  SELECT metros_cuadrados into metrosCuadrados FROM gestion_granjas.cat_lotes
  where id_colono=pColono and id_manzana=pManzana and id_lote=pLote;
  
  -- ****************************************************
  -- ****		Cracion de tabla temporal
  -- ****************************************************
	drop table if exists tmpCuotas;
    CREATE TEMPORARY TABLE IF NOT EXISTS tmpCuotas (   id int(10) NOT NULL ,
		idColono varchar(50),
	  fechaCuota varchar(10) ,
      cuotaMA double	   
	) ;
  -- ********************************************************
 
 -- ******************************************************
 -- ***		Lectura de meses
 -- ******************************************************
 WHILE CHAR_LENGTH(texto) > 0 AND Pos > 0 DO
  SET pos = INSTR(texto, delimitador); 
  IF pos = 0 THEN 
     SET Str = texto; 
  ELSE 
     SET Str = LEFT(texto, pos - 1); 
  END IF; 
  
   IF TRIM(Str) != '' THEN 
   
		-- Armado de fechas
		set fecha=CONCAT('01/',LPAD(Str,2,'0'),"/16");
        set fechaTarifa=CONCAT('2016-',LPAD(Str,2,'0'),"-01");
        
        -- *************************************************************************
        -- **** Consulta de tarifa por periodo
        -- *************************************************************************
        SELECT TIPO,VALOR INTO op,parametro FROM gestion_granjas.tarifas_mantenimiento
			where fecha_aplicacion=(
						SELECT MAX(FECHA_APLICACION) FROM gestion_granjas.tarifas_mantenimiento
						WHERE fecha_aplicacion<=fechaTarifa
						and estatus <>'I'
						);
		-- **************************************************************************
       
       -- Cuota definida
        IF(op=1) THEN        
        SET cuota=parametro;
		END IF;
        
        -- Cuota calculada
        IF(op=2) THEN        
        SET cuota= parametro * metrosCuadrados;		
        END IF;
        
-- SELECT Str; 
	END IF; 
   
      SET texto = SUBSTRING(texto, pos + 1); 
	-- Contador
	set c =c+1;
    
    -- Se inserta la cuota por fecha del colono
     insert into  tmpCuotas(id,idColono,fechaCuota,cuotaMA) values(c,pColono,fechaTarifa,cuota);
     
  END WHILE;
  
  -- Consulta de cuotas calculadas
  select 'Cuotas de Mantenimiento', date_format(fechaCuota, '%b %Y'),TRUNCATE(cuotaMA,2)  from tmpCuotas order by id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_valida_usr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_valida_usr`(
  IN usr varchar(45),
  IN contra varchar(45),
  OUT resultado INT,
  OUT perfil INT
)
BEGIN


SELECT
  COUNT(*)
INTO
  resultado
FROM
  gestion_granjas.cat_usuarios
WHERE
  usuario = usr and contraseña = contra ;
  if (resultado=1) then
	SELECT a.id_perfil into perfil from gestion_granjas.cat_usuarios a
    inner join cat_perfiles b on a.id_perfil=b.id_perfil
    where  a.usuario = usr;
  end if;
  
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-29 17:56:24
