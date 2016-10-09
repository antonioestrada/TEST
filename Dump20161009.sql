CREATE DATABASE  IF NOT EXISTS `gestion_granjas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gestion_granjas`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: gestion_granjas
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_cuotas`
--

LOCK TABLES `bitacora_cuotas` WRITE;
/*!40000 ALTER TABLE `bitacora_cuotas` DISABLE KEYS */;
REPLACE INTO `bitacora_cuotas` VALUES (1,'01','2015',3,'2016-10-06','joanesbe'),(2,'02','2015',3,'2016-10-06','joanesbe'),(3,'01','2015',2,'2016-10-06','joanesbe'),(4,'02','2015',2,'2016-10-06','joanesbe');
/*!40000 ALTER TABLE `bitacora_cuotas` ENABLE KEYS */;
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
REPLACE INTO `cat_anio` VALUES (1,'2015','A','2015-01-01'),(2,'2016','P','2016-01-01');
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
REPLACE INTO `cat_bancos` VALUES (1,'HSBC',NULL,'1000-001','A','2016-10-03'),(2,'BANAMEX',NULL,'1000-002','A','2016-10-03');
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
REPLACE INTO `cat_colonos` VALUES (1,'JOSE ANTONIO ESTRADA','GREGORIO MORENO SN\r\nAMPL. ADOLFO LOPEZ MATEOS','4271482522','joanesbe@gmail.com',NULL,NULL,'A','2016-10-03'),(2,'CRISTHIAN ESTRADA BERMUDEZ','QUERETARO','','cristhian.estrada@hotmail.com',NULL,NULL,'A','2016-10-03'),(3,'IVAN ESTRADA BERMUDEZ','','','',NULL,NULL,'A','2016-10-03');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_estatus`
--

LOCK TABLES `cat_estatus` WRITE;
/*!40000 ALTER TABLE `cat_estatus` DISABLE KEYS */;
REPLACE INTO `cat_estatus` VALUES (1,'A','Activo','2016-09-01'),(2,'V','Vencido','2016-09-01'),(3,'S','Saldado','2016-09-01'),(4,'C','Convenio','2016-09-01'),(5,'I','Inactivo','2016-09-01'),(6,'p','Pendiente','2016-09-01');
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
REPLACE INTO `cat_lotes` VALUES (1,'1',1,1,2500,'A','2016-10-03'),(2,'1',2,2,5000,'A','2016-10-03'),(3,'1',3,3,2500,'A','2016-10-03'),(4,'2',3,3,4500,'A','2016-10-03');
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
REPLACE INTO `cat_manzanas` VALUES (1,'I','A','2016-10-03'),(2,'II','A','2016-10-03'),(3,'III','A','2016-10-03');
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
REPLACE INTO `cat_medidores` VALUES (1,1,'01-01','123a',81,'A','2016-10-03'),(2,2,'02-01','123b',126,'A','2016-10-03'),(3,3,'03-01','123',81,'A','2016-10-03'),(4,4,'03-01A','123A',117,'A','2016-10-03'),(5,4,'03-02B','123C',117,'A','2016-10-03');
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
REPLACE INTO `cat_modulos` VALUES (1,'Administracion',NULL,'1',0,'tpAdmon','A',NULL),(2,'Finanzas',NULL,'1',0,'tpFinanzas','A',NULL),(3,'Catalogos',NULL,'1',0,'tpCatalogos','A',NULL),(4,'Configuracion',NULL,'1',0,'tpConfig','A',NULL),(5,'Mantenimiento',NULL,'2',1,'menuAManto','A',NULL),(6,'Cuotas de Agua',NULL,'2',1,'menuAAgua','A',NULL),(7,'Reportes',NULL,'2',1,'menuAReportes','A',NULL),(8,'Generacion de Cuotas del Mes',NULL,'3',5,'amGeneracionCM','A',NULL),(9,'Imprimir Avisos de Cobranza',NULL,'3',5,'amImprimirAC','A',NULL),(10,'Registro de Convenios',NULL,'3',5,'amConvenios','A',NULL),(11,'Caja General',NULL,'2',2,'menuFCaja','A',NULL),(12,'Credito y Cobranza',NULL,'2',2,'menuFCobranza','A',NULL),(13,'Reportes',NULL,'2',2,'menuFReportes','A',NULL),(14,'General',NULL,'2',3,'menuCGeneral','A',NULL),(15,'Sistema',NULL,'2',3,'menuCSistema','A',NULL);
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
  `valor` varchar(45) DEFAULT NULL,
  `estatus` varchar(2) DEFAULT 'A',
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_param`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_parametros`
--

LOCK TABLES `cat_parametros` WRITE;
/*!40000 ALTER TABLE `cat_parametros` DISABLE KEYS */;
REPLACE INTO `cat_parametros` VALUES (1,'param_CNA1','Valor 1 para Calculo CNA','0.33','A','2016-09-04'),(2,'param_CNA2','Valor 2 para Calculo CNA','30','A','2016-01-01'),(3,'param_CNA3','Valor 3 para Calculo CNA','36','A','2016-01-01'),(4,'param_MANTO1','Tipo de Calculo para Mantenimiento','2','A','2016-01-01'),(5,'param_MANTO2','Base para el Calculo de Mantenimiento','0.33','A','2016-01-01'),(6,'PARAM_OTRO','PARAMETRO PARA CALCULO DE CEA','10.5','A','2016-09-04'),(7,'PARAM_OTRO2','PARAMETRO PARA CALCULO DE CEA','10.5','B','2016-09-04'),(8,'param_BCNA','PARAMETRO PARA EL CALCULO DE BCNA Tarifa 1','2.97','A','2016-10-03'),(9,'param_EMAIL1','Servidor de Correo Saliente','smtp.ipage.com','A','2016-10-03'),(10,'param_EMAIL2','Puerto de Correo','587','A','2016-10-03'),(11,'param_EMAIL3','cuenta','antonio.estrada@dstx.mx','A','2016-10-03'),(12,'param_EMAIL4','contraseña','PASS(jeaoeabz17)','A','2016-10-03'),(13,'param_CBASE2','PARAMETRO PARA EL CALCULO TARIFA2','19.90','A','2016-09-24'),(14,'param_BEXCEDENTE2','PARAMETRO PARA EL CALCULO TARIFA 2 MAS 200 M3','26.52','A','2016-09-26');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Definicion de perfiles.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_perfiles`
--

LOCK TABLES `cat_perfiles` WRITE;
/*!40000 ALTER TABLE `cat_perfiles` DISABLE KEYS */;
REPLACE INTO `cat_perfiles` VALUES (1,'Administrador','A','2016-10-01');
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
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_periodos`
--

LOCK TABLES `cat_periodos` WRITE;
/*!40000 ALTER TABLE `cat_periodos` DISABLE KEYS */;
REPLACE INTO `cat_periodos` VALUES (1,'01','Enero','2016-09-01'),(2,'02','Febrero','2016-09-01'),(3,'03','Marzo','2016-09-01'),(4,'04','Abril','2016-09-01'),(5,'05','Mayo','2016-09-01'),(6,'06','Junio','2016-09-01'),(7,'07','Julio','2016-09-01'),(8,'08','Agosto','2016-09-01'),(9,'09','Septiembre','2016-09-01'),(10,'10','Octubre','2016-09-01'),(11,'11','Noviembre','2016-09-01'),(12,'12','Diciembre','2016-09-01');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Definicion de puestos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_puestos`
--

LOCK TABLES `cat_puestos` WRITE;
/*!40000 ALTER TABLE `cat_puestos` DISABLE KEYS */;
REPLACE INTO `cat_puestos` VALUES (1,'Administrador','A','2010-10-01');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_servicios`
--

LOCK TABLES `cat_servicios` WRITE;
/*!40000 ALTER TABLE `cat_servicios` DISABLE KEYS */;
REPLACE INTO `cat_servicios` VALUES (1,'PANT00-MA','Anticipo Mantenimiento',0,'00','2016','PM','A','2016-09-07'),(2,'C00-MA','Cuota Mantenimiento',0,'00','2016','SE','A','2016-09-07'),(3,'C00-AG','Cuota Agua',0,'00','2016','SE','A','2016-09-07'),(4,'CONV','Convenio',0,'00','2016','SE','A','2016-09-26');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_tipopago`
--

LOCK TABLES `cat_tipopago` WRITE;
/*!40000 ALTER TABLE `cat_tipopago` DISABLE KEYS */;
REPLACE INTO `cat_tipopago` VALUES (1,'ACTIVO','2016-09-01'),(2,'VENCIDO','2016-09-01'),(3,'ANTICIPO','2016-09-01');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Tabla para la gestion del catalogo de usuarios registrados en el sistema.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_usuarios`
--

LOCK TABLES `cat_usuarios` WRITE;
/*!40000 ALTER TABLE `cat_usuarios` DISABLE KEYS */;
REPLACE INTO `cat_usuarios` VALUES (1,'Jose Antonio Estrada','Gregorio Moreno','1','joanesbe','123','1','A','2016-01-01');
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
REPLACE INTO `convenios` VALUES (1,NULL,'3',2158.26,2500,250,1,10,'A','2016-10-06');
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
  `cuota` double DEFAULT NULL,
  `num_pago` int(11) DEFAULT NULL,
  `fecha_convenio` date DEFAULT NULL,
  `estatus` varchar(2) DEFAULT NULL,
  `fecha_cambio` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenios_detalle`
--

LOCK TABLES `convenios_detalle` WRITE;
/*!40000 ALTER TABLE `convenios_detalle` DISABLE KEYS */;
REPLACE INTO `convenios_detalle` VALUES (1,1,250,1,'2015-11-01','A',NULL),(2,1,250,2,'2015-12-01','A',NULL),(3,1,250,3,'2016-01-01','A',NULL),(4,1,250,4,'2016-02-01','A',NULL),(5,1,250,5,'2016-03-01','A',NULL),(6,1,250,6,'2016-04-01','A',NULL),(7,1,250,7,'2016-05-01','A',NULL),(8,1,250,8,'2016-06-01','A',NULL),(9,1,250,9,'2016-07-01','A',NULL),(10,1,250,10,'2016-08-01','A',NULL),(11,1,0,11,'2016-09-01','A',NULL);
/*!40000 ALTER TABLE `convenios_detalle` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_accesos`
--

LOCK TABLES `detalle_accesos` WRITE;
/*!40000 ALTER TABLE `detalle_accesos` DISABLE KEYS */;
REPLACE INTO `detalle_accesos` VALUES (1,'1','1'),(2,'1','2'),(3,'1','3'),(4,'1','4'),(5,'1','5'),(6,'1','6'),(7,'1','7'),(8,'1','8'),(9,'1','9'),(10,'1','10'),(11,'2','1'),(12,'2','5'),(13,'2','8'),(15,'1','11'),(16,'1','12'),(24,'3','9'),(25,'1','14'),(26,'1','15'),(27,'3','5'),(28,'3','8'),(30,'3','1'),(31,'4','11');
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
REPLACE INTO `excedente` VALUES (1,'1 A 30',3.69,1,30,1,'A','2016-09-26'),(2,'31 A 50',4.04,31,50,1,'A','2016-09-26'),(3,'51 A 100',4.55,51,100,1,'A','2016-09-28'),(4,'101 A 200',6.15,101,200,1,'A','2016-09-26'),(5,'201 A 300',7.5,201,300,1,'A','2016-09-26'),(6,'301 A 3000',11.66,301,3000,1,'A','2016-09-26'),(7,'3001 A 999999',20.79,3001,999999,1,'A','2016-09-26'),(8,'',4.51,1,1,2,'A','2016-09-20'),(9,'',9.04,2,2,2,'A','2016-09-20'),(10,'',13.59,3,3,2,'A','2016-09-20'),(11,'',18.16,4,4,2,'A','2016-09-20'),(12,'',22.75,5,5,2,'A','2016-09-20'),(13,'',27.36,6,6,2,'A','2016-09-20'),(14,'',31.99,7,7,2,'A','2016-09-20'),(15,'',36.64,8,8,2,'A','2016-09-20'),(16,'',41.31,9,9,2,'A','2016-09-20'),(17,'',46,10,10,2,'A','2016-09-20'),(18,'',50.71,11,11,2,'A','2016-09-20'),(19,'',55.92,12,12,2,'A','2016-09-20'),(20,'',61.23,13,13,2,'A','2016-09-20'),(21,'',66.64,14,14,2,'A','2016-09-20'),(22,'',72.15,15,15,2,'A','2016-09-20'),(23,'',77.76,16,16,2,'A','2016-09-20'),(24,'',83.47,17,17,2,'A','2016-09-20'),(25,'',89.28,18,18,2,'A','2016-09-20'),(26,'',95.19,19,19,2,'A','2016-09-20'),(27,'',101.2,20,20,2,'A','2016-09-20'),(28,'',107.31,21,21,2,'A','2016-09-20'),(29,'',113.52,22,22,2,'A','2016-09-20'),(30,'',119.83,23,23,2,'A','2016-09-20'),(31,'',126.24,24,24,2,'A','2016-09-20'),(32,'',132.75,25,25,2,'A','2016-09-20'),(33,'',139.36,26,26,2,'A','2016-09-20'),(34,'',146.07,27,27,2,'A','2016-09-20'),(35,'',152.88,28,28,2,'A','2016-09-20'),(36,'',159.79,29,29,2,'A','2016-09-20'),(37,'',166.8,30,30,2,'A','2016-09-20'),(38,'',173.91,31,31,2,'A','2016-09-20'),(39,'',181.12,32,32,2,'A','2016-09-20'),(40,'',188.43,33,33,2,'A','2016-09-20'),(41,'',195.84,34,34,2,'A','2016-09-20'),(42,'',203.35,35,35,2,'A','2016-09-20'),(43,'',210.96,36,36,2,'A','2016-09-20'),(44,'',218.67,37,37,2,'A','2016-09-20'),(45,'',230.28,38,38,2,'A','2016-09-20'),(46,'',242.19,39,39,2,'A','2016-09-20'),(47,'',254.4,40,40,2,'A','2016-09-20'),(48,'',266.91,41,41,2,'A','2016-09-20'),(49,'',277.62,42,42,2,'A','2016-09-20'),(50,'',288.53,43,43,2,'A','2016-09-20'),(51,'',299.64,44,44,2,'A','2016-09-20'),(52,'',310.95,45,45,2,'A','2016-09-20'),(53,'',322.46,46,46,2,'A','2016-09-20'),(54,'',334.17,47,47,2,'A','2016-09-20'),(55,'',346.08,48,48,2,'A','2016-09-20'),(56,'',358.19,49,49,2,'A','2016-09-20'),(57,'',370.5,50,50,2,'A','2016-09-20'),(58,'',383.01,51,51,2,'A','2016-09-20'),(59,'',416.52,52,52,2,'A','2016-09-20'),(60,'',451.03,53,53,2,'A','2016-09-20'),(61,'',486.54,54,54,2,'A','2016-09-20'),(62,'',523.05,55,55,2,'A','2016-09-20'),(63,'',560.56,56,56,2,'A','2016-09-20'),(64,'',599.07,57,57,2,'A','2016-09-20'),(65,'',638.58,58,58,2,'A','2016-09-20'),(66,'',679.09,59,59,2,'A','2016-09-20'),(67,'',720.6,60,60,2,'A','2016-09-20'),(68,'',763.11,61,61,2,'A','2016-09-20'),(69,'',791.12,62,62,2,'A','2016-09-20'),(70,'',819.63,63,63,2,'A','2016-09-20'),(71,'',848.64,64,64,2,'A','2016-09-20'),(72,'',878.15,65,65,2,'A','2016-09-20'),(73,'',908.16,66,66,2,'A','2016-09-20'),(74,'',938.67,67,67,2,'A','2016-09-20'),(75,'',969.68,68,68,2,'A','2016-09-20'),(76,'',1001.19,69,69,2,'A','2016-09-20'),(77,'',1033.2,70,70,2,'A','2016-09-20'),(78,'',1065.71,71,71,2,'A','2016-09-20'),(79,'',1098.72,72,72,2,'A','2016-09-20'),(80,'',1132.23,73,73,2,'A','2016-09-20'),(81,'',1166.24,74,74,2,'A','2016-09-20'),(82,'',1200.75,75,75,2,'A','2016-09-20'),(83,'',1235.76,76,76,2,'A','2016-09-20'),(84,'',1271.27,77,77,2,'A','2016-09-20'),(85,'',1307.28,78,78,2,'A','2016-09-20'),(86,'',1343.79,79,79,2,'A','2016-09-20'),(87,'',1380.8,80,80,2,'A','2016-09-20'),(88,'',1418.31,81,81,2,'A','2016-09-20'),(89,'',1448.12,82,82,2,'A','2016-09-20'),(90,'',1478.23,83,83,2,'A','2016-09-20'),(91,'',1508.64,84,84,2,'A','2016-09-20'),(92,'',1539.35,85,85,2,'A','2016-09-20'),(93,'',1570.36,86,86,2,'A','2016-09-20'),(94,'',1601.67,87,87,2,'A','2016-09-20'),(95,'',1633.28,88,88,2,'A','2016-09-20'),(96,'',1665.19,89,89,2,'A','2016-09-20'),(97,'',1697.4,90,90,2,'A','2016-09-20'),(98,'',1729.91,91,91,2,'A','2016-09-20'),(99,'',1762.72,92,92,2,'A','2016-09-20'),(100,'',1795.83,93,93,2,'A','2016-09-20'),(101,'',1829.24,94,94,2,'A','2016-09-20'),(102,'',1862.95,95,95,2,'A','2016-09-20'),(103,'',1896.96,96,96,2,'A','2016-09-20'),(104,'',1931.27,97,97,2,'A','2016-09-20'),(105,'',1965.88,98,98,2,'A','2016-09-20'),(106,'',2000.79,99,99,2,'A','2016-09-20'),(107,'',2036,100,100,2,'A','2016-09-20'),(108,'',2071.51,101,101,2,'A','2016-09-20'),(109,'',2102.22,102,102,2,'A','2016-09-20'),(110,'',2133.13,103,103,2,'A','2016-09-20'),(111,'',2164.24,104,104,2,'A','2016-09-20'),(112,'',2195.55,105,105,2,'A','2016-09-20'),(113,'',2227.06,106,106,2,'A','2016-09-20'),(114,'',2258.77,107,107,2,'A','2016-09-20'),(115,'',2290.68,108,108,2,'A','2016-09-20'),(116,'',2322.79,109,109,2,'A','2016-09-20'),(117,'',2355.1,110,110,2,'A','2016-09-20'),(118,'',2387.61,111,111,2,'A','2016-09-20'),(119,'',2420.32,112,112,2,'A','2016-09-20'),(120,'',2453.23,113,113,2,'A','2016-09-20'),(121,'',2486.34,114,114,2,'A','2016-09-20'),(122,'',2519.65,115,115,2,'A','2016-09-20'),(123,'',2553.16,116,116,2,'A','2016-09-20'),(124,'',2586.87,117,117,2,'A','2016-09-20'),(125,'',2620.78,118,118,2,'A','2016-09-20'),(126,'',2654.89,119,119,2,'A','2016-09-20'),(127,'',2689.2,120,120,2,'A','2016-09-20'),(128,'',2723.71,121,121,2,'A','2016-09-20'),(129,'',2758.42,122,122,2,'A','2016-09-20'),(130,'',2793.33,123,123,2,'A','2016-09-20'),(131,'',2828.44,124,124,2,'A','2016-09-20'),(132,'',2863.75,125,125,2,'A','2016-09-20'),(133,'',2899.26,126,126,2,'A','2016-09-20'),(134,'',2934.97,127,127,2,'A','2016-09-20'),(135,'',2970.88,128,128,2,'A','2016-09-20'),(136,'',3006.99,129,129,2,'A','2016-09-20'),(137,'',3043.3,130,130,2,'A','2016-09-20'),(138,'',3079.81,131,131,2,'A','2016-09-20'),(139,'',3109.92,132,132,2,'A','2016-09-20'),(140,'',3140.13,133,133,2,'A','2016-09-20'),(141,'',3170.44,134,134,2,'A','2016-09-20'),(142,'',3200.85,135,135,2,'A','2016-09-20'),(143,'',3231.36,136,136,2,'A','2016-09-20'),(144,'',3261.97,137,137,2,'A','2016-09-20'),(145,'',3292.68,138,138,2,'A','2016-09-20'),(146,'',3323.49,139,139,2,'A','2016-09-20'),(147,'',3354.4,140,140,2,'A','2016-09-20'),(148,'',3385.41,141,141,2,'A','2016-09-20'),(149,'',3416.52,142,142,2,'A','2016-09-20'),(150,'',3447.73,143,143,2,'A','2016-09-20'),(151,'',3479.04,144,144,2,'A','2016-09-20'),(152,'',3510.45,145,145,2,'A','2016-09-20'),(153,'',3541.96,146,146,2,'A','2016-09-20'),(154,'',3573.57,147,147,2,'A','2016-09-20'),(155,'',3605.28,148,148,2,'A','2016-09-20'),(156,'',3637.09,149,149,2,'A','2016-09-20'),(157,'',3669,150,150,2,'A','2016-09-20'),(158,'',3701.01,151,151,2,'A','2016-09-20'),(159,'',3733.12,152,152,2,'A','2016-09-20'),(160,'',3765.33,153,153,2,'A','2016-09-20'),(161,'',3797.64,154,154,2,'A','2016-09-20'),(162,'',3830.05,155,155,2,'A','2016-09-20'),(163,'',3862.56,156,156,2,'A','2016-09-20'),(164,'',3895.17,157,157,2,'A','2016-09-20'),(165,'',3927.88,158,158,2,'A','2016-09-20'),(166,'',3960.69,159,159,2,'A','2016-09-20'),(167,'',3993.6,160,160,2,'A','2016-09-20'),(168,'',4023.39,161,161,2,'A','2016-09-20'),(169,'',4053.24,162,162,2,'A','2016-09-20'),(170,'',4083.15,163,163,2,'A','2016-09-20'),(171,'',4113.12,164,164,2,'A','2016-09-20'),(172,'',4143.15,165,165,2,'A','2016-09-20'),(173,'',4173.24,166,166,2,'A','2016-09-20'),(174,'',4203.39,167,167,2,'A','2016-09-20'),(175,'',4233.6,168,168,2,'A','2016-09-20'),(176,'',4263.87,169,169,2,'A','2016-09-20'),(177,'',4294.2,170,170,2,'A','2016-09-20'),(178,'',4324.59,171,171,2,'A','2016-09-20'),(179,'',4355.04,172,172,2,'A','2016-09-20'),(180,'',4385.55,173,173,2,'A','2016-09-20'),(181,'',4416.12,174,174,2,'A','2016-09-20'),(182,'',4446.75,175,175,2,'A','2016-09-20'),(183,'',4477.44,176,176,2,'A','2016-09-20'),(184,'',4508.19,177,177,2,'A','2016-09-20'),(185,'',4539,178,178,2,'A','2016-09-20'),(186,'',4569.87,179,179,2,'A','2016-09-20'),(187,'',4600.8,180,180,2,'A','2016-09-20'),(188,'',4631.79,181,181,2,'A','2016-09-20'),(189,'',4662.84,182,182,2,'A','2016-09-20'),(190,'',4697.61,183,183,2,'A','2016-09-20'),(191,'',4732.48,184,184,2,'A','2016-09-20'),(192,'',4767.45,185,185,2,'A','2016-09-20'),(193,'',4802.52,186,186,2,'A','2016-09-20'),(194,'',4837.69,187,187,2,'A','2016-09-20'),(195,'',4872.96,188,188,2,'A','2016-09-20'),(196,'',4908.33,189,189,2,'A','2016-09-20'),(197,'',4943.8,190,190,2,'A','2016-09-20'),(198,'',4979.37,191,191,2,'A','2016-09-20'),(199,'',5015.04,192,192,2,'A','2016-09-20'),(200,'',5050.81,193,193,2,'A','2016-09-20'),(201,'',5086.68,194,194,2,'A','2016-09-20'),(202,'',5122.65,195,195,2,'A','2016-09-20'),(203,'',5158.72,196,196,2,'A','2016-09-20'),(204,'',5194.89,197,197,2,'A','2016-09-20'),(205,'',5231.16,198,198,2,'A','2016-09-20'),(206,'',5267.53,199,199,2,'A','2016-09-20'),(207,'',5304,200,200,2,'A','2016-09-20');
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
) ENGINE=InnoDB AUTO_INCREMENT=5310 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestion_cuotas_agua`
--

LOCK TABLES `gestion_cuotas_agua` WRITE;
/*!40000 ALTER TABLE `gestion_cuotas_agua` DISABLE KEYS */;
REPLACE INTO `gestion_cuotas_agua` VALUES (1,36,9,'PA',297,2),(2,41,10,'PA',240.57,2),(3,51,11,'PA',59.4,2),(4,56,12,'PA',1590.26,1),(5,5,2,'AN',237.6,3),(6,6,1,'AN',297,3),(7,2,1,'AN',237.6,3),(8,3,1,'AN',297,3),(9,3,1,'AN',-156,3),(10,3,1,'AN',-765,3),(11,3,1,'AN',-1686,3),(12,3,1,'AN',-3357,3),(13,3,1,'AN',-5778,3),(14,3,1,'AN',-8949,3),(15,3,1,'AN',-12870,3),(16,3,1,'AN',-17541,3),(17,3,1,'AN',-22962,3),(18,3,1,'AN',-29133,3),(19,3,1,'AN',-36054,3),(20,3,1,'AN',-43725,3),(21,3,1,'AN',-52146,3),(22,3,1,'AN',-61317,3),(23,3,1,'AN',-71238,3),(24,3,1,'AN',-81909,3),(25,3,1,'AN',-93330,3),(26,3,1,'AN',-105501,3),(27,3,1,'AN',-118422,3),(28,3,1,'AN',-132093,3),(29,3,1,'AN',-146514,3),(30,3,1,'AN',-161685,3),(31,3,1,'AN',-177606,3),(32,3,1,'AN',-194277,3),(33,3,1,'AN',-211698,3),(34,3,1,'AN',-229869,3),(35,3,1,'AN',-248790,3),(36,3,1,'AN',-268461,3),(37,3,1,'AN',-288882,3),(38,3,1,'AN',-310053,3),(39,3,1,'AN',-331974,3),(40,3,1,'AN',-354645,3),(41,3,1,'AN',-378066,3),(42,3,1,'AN',-402237,3),(43,3,1,'AN',-427158,3),(44,3,1,'AN',-452829,3),(45,3,1,'AN',-479250,3),(46,3,1,'AN',-506421,3),(47,3,1,'AN',-534342,3),(48,3,1,'AN',-563013,3),(49,3,1,'AN',-592434,3),(50,3,1,'AN',-622605,3),(51,3,1,'AN',-653526,3),(52,3,1,'AN',-685197,3),(53,3,1,'AN',-717618,3),(54,3,1,'AN',-750789,3),(55,3,1,'AN',-784710,3),(56,3,1,'AN',-819381,3),(57,3,1,'AN',-854802,3),(58,3,1,'AN',-890973,3),(59,3,1,'AN',-927894,3),(60,3,1,'AN',-965565,3),(61,3,1,'AN',-1003986,3),(62,3,1,'AN',-1043157,3),(63,3,1,'AN',-1083078,3),(64,3,1,'AN',-1123749,3),(65,3,1,'AN',-1165170,3),(66,3,1,'AN',-1207341,3),(67,3,1,'AN',-1250262,3),(68,3,1,'AN',-1293933,3),(69,3,1,'AN',-1338354,3),(70,3,1,'AN',-1383525,3),(71,3,1,'AN',-1429446,3),(72,3,1,'AN',-1476117,3),(73,3,1,'AN',-1523538,3),(74,3,1,'AN',-1571709,3),(75,3,1,'AN',-1620630,3),(76,3,1,'AN',-1670301,3),(77,3,1,'AN',-1720722,3),(78,3,1,'AN',-1771893,3),(79,3,1,'AN',-1823814,3),(80,3,1,'AN',-1876485,3),(81,3,1,'AN',-1929906,3),(82,3,1,'AN',-1984077,3),(83,3,1,'AN',-2038998,3),(84,3,1,'AN',-2094669,3),(85,3,1,'AN',-2151090,3),(86,3,1,'AN',-2208261,3),(87,3,1,'AN',-2266182,3),(88,3,1,'AN',-2324853,3),(89,3,1,'AN',-2384274,3),(90,3,1,'AN',-2444445,3),(91,3,1,'AN',-2505366,3),(92,3,1,'AN',-2567037,3),(93,3,1,'AN',-2629458,3),(94,3,1,'AN',-2692629,3),(95,3,1,'AN',-2756550,3),(96,3,1,'AN',-2821221,3),(97,3,1,'AN',-2886642,3),(98,3,1,'AN',-2952813,3),(99,3,1,'AN',-3019734,3),(100,3,1,'AN',-3087405,3),(101,3,1,'AN',-3155826,3),(102,3,1,'AN',-3224997,3),(103,3,1,'AN',-3294918,3),(104,3,1,'AN',-3365589,3),(105,3,1,'AN',-3437010,3),(106,3,1,'AN',-3509181,3),(107,3,1,'AN',-3582102,3),(108,3,1,'AN',-3655773,3),(109,3,1,'AN',-3730194,3),(110,3,1,'AN',-3805365,3),(111,3,1,'AN',-3881286,3),(112,3,1,'AN',-3957957,3),(113,3,1,'AN',-4035378,3),(114,3,1,'AN',-4113549,3),(115,3,1,'AN',-4192470,3),(116,3,1,'AN',-4272141,3),(117,3,1,'AN',-4352562,3),(118,3,1,'AN',-4433733,3),(119,3,1,'AN',-4515654,3),(120,3,1,'AN',-4598325,3),(121,3,1,'AN',-4681746,3),(122,3,1,'AN',-4765917,3),(123,3,1,'AN',-4850838,3),(124,3,1,'AN',-4936509,3),(125,3,1,'AN',-5022930,3),(126,3,1,'AN',-5110101,3),(127,3,1,'AN',-5198022,3),(128,3,1,'AN',-5286693,3),(129,3,1,'AN',-5376114,3),(130,3,1,'AN',-5466285,3),(131,3,1,'AN',-5557206,3),(132,3,1,'AN',-5648877,3),(133,3,1,'AN',-5741298,3),(134,3,1,'AN',-5834469,3),(135,3,1,'AN',-5928390,3),(136,3,1,'AN',-6023061,3),(137,3,1,'AN',-6118482,3),(138,3,1,'AN',-6214653,3),(139,3,1,'AN',-6311574,3),(140,3,1,'AN',-6409245,3),(141,3,1,'AN',-6507666,3),(142,3,1,'AN',-6606837,3),(143,3,1,'AN',-6706758,3),(144,3,1,'AN',-6807429,3),(145,3,1,'AN',-6908850,3),(146,3,1,'AN',-7011021,3),(147,3,1,'AN',-7113942,3),(148,3,1,'AN',-7217613,3),(149,3,1,'AN',-7322034,3),(150,3,1,'AN',-7427205,3),(151,3,1,'AN',-7533126,3),(152,3,1,'AN',-7639797,3),(153,3,1,'AN',-7747218,3),(154,3,1,'AN',-7855389,3),(155,3,1,'AN',-7964310,3),(156,3,1,'AN',-8073981,3),(157,3,1,'AN',-8184402,3),(158,3,1,'AN',-8295573,3),(159,3,1,'AN',-8407494,3),(160,3,1,'AN',-8520165,3),(161,3,1,'AN',-8633586,3),(162,3,1,'AN',-8747757,3),(163,3,1,'AN',-8862678,3),(164,3,1,'AN',-8978349,3),(165,3,1,'AN',-9094770,3),(166,3,1,'AN',-9211941,3),(167,3,1,'AN',-9329862,3),(168,3,1,'AN',-9448533,3),(169,3,1,'AN',-9567954,3),(170,3,1,'AN',-9688125,3),(171,3,1,'AN',-9809046,3),(172,3,1,'AN',-9930717,3),(173,3,1,'AN',-10053138,3),(174,3,1,'AN',-10176309,3),(175,3,1,'AN',-10300230,3),(176,3,1,'AN',-10424901,3),(177,3,1,'AN',-10550322,3),(178,3,1,'AN',-10676493,3),(179,3,1,'AN',-10803414,3),(180,3,1,'AN',-10931085,3),(181,3,1,'AN',-11059506,3),(182,3,1,'AN',-11188677,3),(183,3,1,'AN',-11318598,3),(184,3,1,'AN',-11449269,3),(185,3,1,'AN',-11580690,3),(186,3,1,'AN',-11712861,3),(187,3,1,'AN',-11845782,3),(188,3,1,'AN',-11979453,3),(189,3,1,'AN',-12113874,3),(190,3,1,'AN',-12249045,3),(191,3,1,'AN',-12384966,3),(192,3,1,'AN',-12521637,3),(193,3,1,'AN',-12659058,3),(194,3,1,'AN',-12797229,3),(195,3,1,'AN',-12936150,3),(196,3,1,'AN',-13075821,3),(197,3,1,'AN',-13216242,3),(198,3,1,'AN',-13357413,3),(199,3,1,'AN',-13499334,3),(200,3,1,'AN',-13642005,3),(201,3,1,'AN',-13785426,3),(202,3,1,'AN',-13929597,3),(203,3,1,'AN',-14074518,3),(204,3,1,'AN',-14220189,3),(205,3,1,'AN',-14366610,3),(206,3,1,'AN',-14513781,3),(207,3,1,'AN',-14661702,3),(208,3,1,'AN',-14810373,3),(209,3,1,'AN',-14959794,3),(210,3,1,'AN',-15109965,3),(211,3,1,'AN',-15260886,3),(212,3,1,'AN',-15412557,3),(213,3,1,'AN',-15564978,3),(214,3,1,'AN',-15718149,3),(215,3,1,'AN',-15872070,3),(216,3,1,'AN',-16026741,3),(217,3,1,'AN',-16182162,3),(218,3,1,'AN',-16338333,3),(219,3,1,'AN',-16495254,3),(220,3,1,'AN',-16652925,3),(221,3,1,'AN',-16811346,3),(222,3,1,'AN',-16970517,3),(223,3,1,'AN',-17130438,3),(224,3,1,'AN',-17291109,3),(225,3,1,'AN',-17452530,3),(226,3,1,'AN',-17614701,3),(227,3,1,'AN',-17777622,3),(228,3,1,'AN',-17941293,3),(229,3,1,'AN',-18105714,3),(230,3,1,'AN',-18270885,3),(231,3,1,'AN',-18436806,3),(232,3,1,'AN',-18603477,3),(233,3,1,'AN',-18770898,3),(234,3,1,'AN',-18939069,3),(235,3,1,'AN',-19107990,3),(236,3,1,'AN',-19277661,3),(237,3,1,'AN',-19448082,3),(238,3,1,'AN',-19619253,3),(239,3,1,'AN',-19791174,3),(240,3,1,'AN',-19963845,3),(241,3,1,'AN',-20137266,3),(242,3,1,'AN',-20311437,3),(243,3,1,'AN',-20486358,3),(244,3,1,'AN',-20662029,3),(245,3,1,'AN',-20838450,3),(246,3,1,'AN',-21015621,3),(247,3,1,'AN',-21193542,3),(248,3,1,'AN',-21372213,3),(249,3,1,'AN',-21551634,3),(250,3,1,'AN',-21731805,3),(251,3,1,'AN',-21912726,3),(252,3,1,'AN',-22094397,3),(253,3,1,'AN',-22276818,3),(254,3,1,'AN',-22459989,3),(255,3,1,'AN',-22643910,3),(256,3,1,'AN',-22828581,3),(257,3,1,'AN',-23014002,3),(258,3,1,'AN',-23200173,3),(259,3,1,'AN',-23387094,3),(260,3,1,'AN',-23574765,3),(261,3,1,'AN',-23763186,3),(262,3,1,'AN',-23952357,3),(263,3,1,'AN',-24142278,3),(264,3,1,'AN',-24332949,3),(265,3,1,'AN',-24524370,3),(266,3,1,'AN',-24716541,3),(267,3,1,'AN',-24909462,3),(268,3,1,'AN',-25103133,3),(269,3,1,'AN',-25297554,3),(270,3,1,'AN',-25492725,3),(271,3,1,'AN',-25688646,3),(272,3,1,'AN',-25885317,3),(273,3,1,'AN',-26082738,3),(274,3,1,'AN',-26280909,3),(275,3,1,'AN',-26479830,3),(276,3,1,'AN',-26679501,3),(277,3,1,'AN',-26879922,3),(278,3,1,'AN',-27081093,3),(279,3,1,'AN',-27283014,3),(280,3,1,'AN',-27485685,3),(281,3,1,'AN',-27689106,3),(282,3,1,'AN',-27893277,3),(283,3,1,'AN',-28098198,3),(284,3,1,'AN',-28303869,3),(285,3,1,'AN',-28510290,3),(286,3,1,'AN',-28717461,3),(287,3,1,'AN',-28925382,3),(288,3,1,'AN',-29134053,3),(289,3,1,'AN',-29343474,3),(290,3,1,'AN',-29553645,3),(291,3,1,'AN',-29764566,3),(292,3,1,'AN',-29976237,3),(293,3,1,'AN',-30188658,3),(294,3,1,'AN',-30401829,3),(295,3,1,'AN',-30615750,3),(296,3,1,'AN',-30830421,3),(297,3,1,'AN',-31045842,3),(298,3,1,'AN',-31262013,3),(299,3,1,'AN',-31478934,3),(300,3,1,'AN',-31696605,3),(301,3,1,'AN',-31915026,3),(302,3,1,'AN',-32134197,3),(303,3,1,'AN',-32354118,3),(304,3,1,'AN',-32574789,3),(305,3,1,'AN',-32796210,3),(306,3,1,'AN',-33018381,3),(307,3,1,'AN',-33241302,3),(308,3,1,'AN',-33464973,3),(309,3,1,'AN',-33689394,3),(310,3,1,'AN',-33914565,3),(311,3,1,'AN',-34140486,3),(312,3,1,'AN',-34367157,3),(313,3,1,'AN',-34594578,3),(314,3,1,'AN',-34822749,3),(315,3,1,'AN',-35051670,3),(316,3,1,'AN',-35281341,3),(317,3,1,'AN',-35511762,3),(318,3,1,'AN',-35742933,3),(319,3,1,'AN',-35974854,3),(320,3,1,'AN',-36207525,3),(321,3,1,'AN',-36440946,3),(322,3,1,'AN',-36675117,3),(323,3,1,'AN',-36910038,3),(324,3,1,'AN',-37145709,3),(325,3,1,'AN',-37382130,3),(326,3,1,'AN',-37619301,3),(327,3,1,'AN',-37857222,3),(328,3,1,'AN',-38095893,3),(329,3,1,'AN',-38335314,3),(330,3,1,'AN',-38575485,3),(331,3,1,'AN',-38816406,3),(332,3,1,'AN',-39058077,3),(333,3,1,'AN',-39300498,3),(334,3,1,'AN',-39543669,3),(335,3,1,'AN',-39787590,3),(336,3,1,'AN',-40032261,3),(337,3,1,'AN',-40277682,3),(338,3,1,'AN',-40523853,3),(339,3,1,'AN',-40770774,3),(340,3,1,'AN',-41018445,3),(341,3,1,'AN',-41266866,3),(342,3,1,'AN',-41516037,3),(343,3,1,'AN',-41765958,3),(344,3,1,'AN',-42016629,3),(345,3,1,'AN',-42268050,3),(346,3,1,'AN',-42520221,3),(347,3,1,'AN',-42773142,3),(348,3,1,'AN',-43026813,3),(349,3,1,'AN',-43281234,3),(350,3,1,'AN',-43536405,3),(351,3,1,'AN',-43792326,3),(352,3,1,'AN',-44048997,3),(353,3,1,'AN',-44306418,3),(354,3,1,'AN',-44564589,3),(355,3,1,'AN',-44823510,3),(356,3,1,'AN',-45083181,3),(357,3,1,'AN',-45343602,3),(358,3,1,'AN',-45604773,3),(359,3,1,'AN',-45866694,3),(360,3,1,'AN',-46129365,3),(361,3,1,'AN',-46392786,3),(362,3,1,'AN',-46656957,3),(363,3,1,'AN',-46921878,3),(364,3,1,'AN',-47187549,3),(365,3,1,'AN',-47453970,3),(366,3,1,'AN',-47721141,3),(367,3,1,'AN',-47989062,3),(368,3,1,'AN',-48257733,3),(369,3,1,'AN',-48527154,3),(370,3,1,'AN',-48797325,3),(371,3,1,'AN',-49068246,3),(372,3,1,'AN',-49339917,3),(373,3,1,'AN',-49612338,3),(374,3,1,'AN',-49885509,3),(375,3,1,'AN',-50159430,3),(376,3,1,'AN',-50434101,3),(377,3,1,'AN',-50709522,3),(378,3,1,'AN',-50985693,3),(379,3,1,'AN',-51262614,3),(380,3,1,'AN',-51540285,3),(381,3,1,'AN',-51818706,3),(382,3,1,'AN',-52097877,3),(383,3,1,'AN',-52377798,3),(384,3,1,'AN',-52658469,3),(385,3,1,'AN',-52939890,3),(386,3,1,'AN',-53222061,3),(387,3,1,'AN',-53504982,3),(388,3,1,'AN',-53788653,3),(389,3,1,'AN',-54073074,3),(390,3,1,'AN',-54358245,3),(391,3,1,'AN',-54644166,3),(392,3,1,'AN',-54930837,3),(393,3,1,'AN',-55218258,3),(394,3,1,'AN',-55506429,3),(395,3,1,'AN',-55795350,3),(396,3,1,'AN',-56085021,3),(397,3,1,'AN',-56375442,3),(398,3,1,'AN',-56666613,3),(399,3,1,'AN',-56958534,3),(400,3,1,'AN',-57251205,3),(401,3,1,'AN',-57544626,3),(402,3,1,'AN',-57838797,3),(403,3,1,'AN',-58133718,3),(404,3,1,'AN',-58429389,3),(405,3,1,'AN',-58725810,3),(406,3,1,'AN',-59022981,3),(407,3,1,'AN',-59320902,3),(408,3,1,'AN',-59619573,3),(409,3,1,'AN',-59918994,3),(410,3,1,'AN',-60219165,3),(411,3,1,'AN',-60520086,3),(412,3,1,'AN',-60821757,3),(413,3,1,'AN',-61124178,3),(414,3,1,'AN',-61427349,3),(415,3,1,'AN',-61731270,3),(416,3,1,'AN',-62035941,3),(417,3,1,'AN',-62341362,3),(418,3,1,'AN',-62647533,3),(419,3,1,'AN',-62954454,3),(420,3,1,'AN',-63262125,3),(421,3,1,'AN',-63570546,3),(422,3,1,'AN',-63879717,3),(423,3,1,'AN',-64189638,3),(424,3,1,'AN',-64500309,3),(425,3,1,'AN',-64811730,3),(426,3,1,'AN',-65123901,3),(427,3,1,'AN',-65436822,3),(428,3,1,'AN',-65750493,3),(429,3,1,'AN',-66064914,3),(430,3,1,'AN',-66380085,3),(431,3,1,'AN',-66696006,3),(432,3,1,'AN',-67012677,3),(433,3,1,'AN',-67330098,3),(434,3,1,'AN',-67648269,3),(435,3,1,'AN',-67967190,3),(436,3,1,'AN',-68286861,3),(437,3,1,'AN',-68607282,3),(438,3,1,'AN',-68928453,3),(439,3,1,'AN',-69250374,3),(440,3,1,'AN',-69573045,3),(441,3,1,'AN',-69896466,3),(442,3,1,'AN',-70220637,3),(443,3,1,'AN',-70545558,3),(444,3,1,'AN',-70871229,3),(445,3,1,'AN',-71197650,3),(446,3,1,'AN',-71524821,3),(447,3,1,'AN',-71852742,3),(448,3,1,'AN',-72181413,3),(449,3,1,'AN',-72510834,3),(450,3,1,'AN',-72841005,3),(451,3,1,'AN',-73171926,3),(452,3,1,'AN',-73503597,3),(453,3,1,'AN',-73836018,3),(454,3,1,'AN',-74169189,3),(455,3,1,'AN',-74503110,3),(456,3,1,'AN',-74837781,3),(457,3,1,'AN',-75173202,3),(458,3,1,'AN',-75509373,3),(459,3,1,'AN',-75846294,3),(460,3,1,'AN',-76183965,3),(461,3,1,'AN',-76522386,3),(462,3,1,'AN',-76861557,3),(463,3,1,'AN',-77201478,3),(464,3,1,'AN',-77542149,3),(465,3,1,'AN',-77883570,3),(466,3,1,'AN',-78225741,3),(467,3,1,'AN',-78568662,3),(468,3,1,'AN',-78912333,3),(469,3,1,'AN',-79256754,3),(470,3,1,'AN',-79601925,3),(471,3,1,'AN',-79947846,3),(472,3,1,'AN',-80294517,3),(473,3,1,'AN',-80641938,3),(474,3,1,'AN',-80990109,3),(475,3,1,'AN',-81339030,3),(476,3,1,'AN',-81688701,3),(477,3,1,'AN',-82039122,3),(478,3,1,'AN',-82390293,3),(479,3,1,'AN',-82742214,3),(480,3,1,'AN',-83094885,3),(481,3,1,'AN',-83448306,3),(482,3,1,'AN',-83802477,3),(483,3,1,'AN',-84157398,3),(484,3,1,'AN',-84513069,3),(485,3,1,'AN',-84869490,3),(486,3,1,'AN',-85226661,3),(487,3,1,'AN',-85584582,3),(488,3,1,'AN',-85943253,3),(489,3,1,'AN',-86302674,3),(490,3,1,'AN',-86662845,3),(491,3,1,'AN',-87023766,3),(492,3,1,'AN',-87385437,3),(493,3,1,'AN',-87747858,3),(494,3,1,'AN',-88111029,3),(495,3,1,'AN',-88474950,3),(496,3,1,'AN',-88839621,3),(497,3,1,'AN',-89205042,3),(498,3,1,'AN',-89571213,3),(499,3,1,'AN',-89938134,3),(500,3,1,'AN',-90305805,3),(501,3,1,'AN',-90674226,3),(502,3,1,'AN',-91043397,3),(503,3,1,'AN',-91413318,3),(504,3,1,'AN',-91783989,3),(505,3,1,'AN',-92155410,3),(506,3,1,'AN',-92527581,3),(507,3,1,'AN',-92900502,3),(508,3,1,'AN',-93274173,3),(509,3,1,'AN',-93648594,3),(510,3,1,'AN',-94023765,3),(511,3,1,'AN',-94399686,3),(512,3,1,'AN',-94776357,3),(513,3,1,'AN',-95153778,3),(514,3,1,'AN',-95531949,3),(515,3,1,'AN',-95910870,3),(516,3,1,'AN',-96290541,3),(517,3,1,'AN',-96670962,3),(518,3,1,'AN',-97052133,3),(519,3,1,'AN',-97434054,3),(520,3,1,'AN',-97816725,3),(521,3,1,'AN',-98200146,3),(522,3,1,'AN',-98584317,3),(523,3,1,'AN',-98969238,3),(524,3,1,'AN',-99354909,3),(525,3,1,'AN',-99741330,3),(526,3,1,'AN',-100128501,3),(527,3,1,'AN',-100516422,3),(528,3,1,'AN',-100905093,3),(529,3,1,'AN',-101294514,3),(530,3,1,'AN',-101684685,3),(531,3,1,'AN',-102075606,3),(532,3,1,'AN',-102467277,3),(533,3,1,'AN',-102859698,3),(534,3,1,'AN',-103252869,3),(535,3,1,'AN',-103646790,3),(536,3,1,'AN',-104041461,3),(537,3,1,'AN',-104436882,3),(538,3,1,'AN',-104833053,3),(539,3,1,'AN',-105229974,3),(540,3,1,'AN',-105627645,3),(541,3,1,'AN',-106026066,3),(542,3,1,'AN',-106425237,3),(543,3,1,'AN',-106825158,3),(544,3,1,'AN',-107225829,3),(545,3,1,'AN',-107627250,3),(546,3,1,'AN',-108029421,3),(547,3,1,'AN',-108432342,3),(548,3,1,'AN',-108836013,3),(549,3,1,'AN',-109240434,3),(550,3,1,'AN',-109645605,3),(551,3,1,'AN',-110051526,3),(552,3,1,'AN',-110458197,3),(553,3,1,'AN',-110865618,3),(554,3,1,'AN',-111273789,3),(555,3,1,'AN',-111682710,3),(556,3,1,'AN',-112092381,3),(557,3,1,'AN',-112502802,3),(558,3,1,'AN',-112913973,3),(559,3,1,'AN',-113325894,3),(560,3,1,'AN',-113738565,3),(561,3,1,'AN',-114151986,3),(562,3,1,'AN',-114566157,3),(563,3,1,'AN',-114981078,3),(564,3,1,'AN',-115396749,3),(565,3,1,'AN',-115813170,3),(566,3,1,'AN',-116230341,3),(567,3,1,'AN',-116648262,3),(568,3,1,'AN',-117066933,3),(569,3,1,'AN',-117486354,3),(570,3,1,'AN',-117906525,3),(571,3,1,'AN',-118327446,3),(572,3,1,'AN',-118749117,3),(573,3,1,'AN',-119171538,3),(574,3,1,'AN',-119594709,3),(575,3,1,'AN',-120018630,3),(576,3,1,'AN',-120443301,3),(577,3,1,'AN',-120868722,3),(578,3,1,'AN',-121294893,3),(579,3,1,'AN',-121721814,3),(580,3,1,'AN',-122149485,3),(581,3,1,'AN',-122577906,3),(582,3,1,'AN',-123007077,3),(583,3,1,'AN',-123436998,3),(584,3,1,'AN',-123867669,3),(585,3,1,'AN',-124299090,3),(586,3,1,'AN',-124731261,3),(587,3,1,'AN',-125164182,3),(588,3,1,'AN',-125597853,3),(589,3,1,'AN',-126032274,3),(590,3,1,'AN',-126467445,3),(591,3,1,'AN',-126903366,3),(592,3,1,'AN',-127340037,3),(593,3,1,'AN',-127777458,3),(594,3,1,'AN',-128215629,3),(595,3,1,'AN',-128654550,3),(596,3,1,'AN',-129094221,3),(597,3,1,'AN',-129534642,3),(598,3,1,'AN',-129975813,3),(599,3,1,'AN',-130417734,3),(600,3,1,'AN',-130860405,3),(601,3,1,'AN',-131303826,3),(602,3,1,'AN',-131747997,3),(603,3,1,'AN',-132192918,3),(604,3,1,'AN',-132638589,3),(605,3,1,'AN',-133085010,3),(606,3,1,'AN',-133532181,3),(607,3,1,'AN',-133980102,3),(608,3,1,'AN',-134428773,3),(609,3,1,'AN',-134878194,3),(610,3,1,'AN',-135328365,3),(611,3,1,'AN',-135779286,3),(612,3,1,'AN',-136230957,3),(613,3,1,'AN',-136683378,3),(614,3,1,'AN',-137136549,3),(615,3,1,'AN',-137590470,3),(616,3,1,'AN',-138045141,3),(617,3,1,'AN',-138500562,3),(618,3,1,'AN',-138956733,3),(619,3,1,'AN',-139413654,3),(620,3,1,'AN',-139871325,3),(621,3,1,'AN',-140329746,3),(622,3,1,'AN',-140788917,3),(623,3,1,'AN',-141248838,3),(624,3,1,'AN',-141709509,3),(625,3,1,'AN',-142170930,3),(626,3,1,'AN',-142633101,3),(627,3,1,'AN',-143096022,3),(628,3,1,'AN',-143559693,3),(629,3,1,'AN',-144024114,3),(630,3,1,'AN',-144489285,3),(631,3,1,'AN',-144955206,3),(632,3,1,'AN',-145421877,3),(633,3,1,'AN',-145889298,3),(634,3,1,'AN',-146357469,3),(635,3,1,'AN',-146826390,3),(636,3,1,'AN',-147296061,3),(637,3,1,'AN',-147766482,3),(638,3,1,'AN',-148237653,3),(639,3,1,'AN',-148709574,3),(640,3,1,'AN',-149182245,3),(641,3,1,'AN',-149655666,3),(642,3,1,'AN',-150129837,3),(643,3,1,'AN',-150604758,3),(644,3,1,'AN',-151080429,3),(645,3,1,'AN',-151556850,3),(646,3,1,'AN',-152034021,3),(647,3,1,'AN',-152511942,3),(648,3,1,'AN',-152990613,3),(649,3,1,'AN',-153470034,3),(650,3,1,'AN',-153950205,3),(651,3,1,'AN',-154431126,3),(652,3,1,'AN',-154912797,3),(653,3,1,'AN',-155395218,3),(654,3,1,'AN',-155878389,3),(655,3,1,'AN',-156362310,3),(656,3,1,'AN',-156846981,3),(657,3,1,'AN',-157332402,3),(658,3,1,'AN',-157818573,3),(659,3,1,'AN',-158305494,3),(660,3,1,'AN',-158793165,3),(661,3,1,'AN',-159281586,3),(662,3,1,'AN',-159770757,3),(663,3,1,'AN',-160260678,3),(664,3,1,'AN',-160751349,3),(665,3,1,'AN',-161242770,3),(666,3,1,'AN',-161734941,3),(667,3,1,'AN',-162227862,3),(668,3,1,'AN',-162721533,3),(669,3,1,'AN',-163215954,3),(670,3,1,'AN',-163711125,3),(671,3,1,'AN',-164207046,3),(672,3,1,'AN',-164703717,3),(673,3,1,'AN',-165201138,3),(674,3,1,'AN',-165699309,3),(675,3,1,'AN',-166198230,3),(676,3,1,'AN',-166697901,3),(677,3,1,'AN',-167198322,3),(678,3,1,'AN',-167699493,3),(679,3,1,'AN',-168201414,3),(680,3,1,'AN',-168704085,3),(681,3,1,'AN',-169207506,3),(682,3,1,'AN',-169711677,3),(683,3,1,'AN',-170216598,3),(684,3,1,'AN',-170722269,3),(685,3,1,'AN',-171228690,3),(686,3,1,'AN',-171735861,3),(687,3,1,'AN',-172243782,3),(688,3,1,'AN',-172752453,3),(689,3,1,'AN',-173261874,3),(690,3,1,'AN',-173772045,3),(691,3,1,'AN',-174282966,3),(692,3,1,'AN',-174794637,3),(693,3,1,'AN',-175307058,3),(694,3,1,'AN',-175820229,3),(695,3,1,'AN',-176334150,3),(696,3,1,'AN',-176848821,3),(697,3,1,'AN',-177364242,3),(698,3,1,'AN',-177880413,3),(699,3,1,'AN',-178397334,3),(700,3,1,'AN',-178915005,3),(701,3,1,'AN',-179433426,3),(702,3,1,'AN',-179952597,3),(703,3,1,'AN',-180472518,3),(704,3,1,'AN',-180993189,3),(705,3,1,'AN',-181514610,3),(706,3,1,'AN',-182036781,3),(707,3,1,'AN',-182559702,3),(708,3,1,'AN',-183083373,3),(709,3,1,'AN',-183607794,3),(710,3,1,'AN',-184132965,3),(711,3,1,'AN',-184658886,3),(712,3,1,'AN',-185185557,3),(713,3,1,'AN',-185712978,3),(714,3,1,'AN',-186241149,3),(715,3,1,'AN',-186770070,3),(716,3,1,'AN',-187299741,3),(717,3,1,'AN',-187830162,3),(718,3,1,'AN',-188361333,3),(719,3,1,'AN',-188893254,3),(720,3,1,'AN',-189425925,3),(721,3,1,'AN',-189959346,3),(722,3,1,'AN',-190493517,3),(723,3,1,'AN',-191028438,3),(724,3,1,'AN',-191564109,3),(725,3,1,'AN',-192100530,3),(726,3,1,'AN',-192637701,3),(727,3,1,'AN',-193175622,3),(728,3,1,'AN',-193714293,3),(729,3,1,'AN',-194253714,3),(730,3,1,'AN',-194793885,3),(731,3,1,'AN',-195334806,3),(732,3,1,'AN',-195876477,3),(733,3,1,'AN',-196418898,3),(734,3,1,'AN',-196962069,3),(735,3,1,'AN',-197505990,3),(736,3,1,'AN',-198050661,3),(737,3,1,'AN',-198596082,3),(738,3,1,'AN',-199142253,3),(739,3,1,'AN',-199689174,3),(740,3,1,'AN',-200236845,3),(741,3,1,'AN',-200785266,3),(742,3,1,'AN',-201334437,3),(743,3,1,'AN',-201884358,3),(744,3,1,'AN',-202435029,3),(745,3,1,'AN',-202986450,3),(746,3,1,'AN',-203538621,3),(747,3,1,'AN',-204091542,3),(748,3,1,'AN',-204645213,3),(749,3,1,'AN',-205199634,3),(750,3,1,'AN',-205754805,3),(751,3,1,'AN',-206310726,3),(752,3,1,'AN',-206867397,3),(753,3,1,'AN',-207424818,3),(754,3,1,'AN',-207982989,3),(755,3,1,'AN',-208541910,3),(756,3,1,'AN',-209101581,3),(757,3,1,'AN',-209662002,3),(758,3,1,'AN',-210223173,3),(759,3,1,'AN',-210785094,3),(760,3,1,'AN',-211347765,3),(761,3,1,'AN',-211911186,3),(762,3,1,'AN',-212475357,3),(763,3,1,'AN',-213040278,3),(764,3,1,'AN',-213605949,3),(765,3,1,'AN',-214172370,3),(766,3,1,'AN',-214739541,3),(767,3,1,'AN',-215307462,3),(768,3,1,'AN',-215876133,3),(769,3,1,'AN',-216445554,3),(770,3,1,'AN',-217015725,3),(771,3,1,'AN',-217586646,3),(772,3,1,'AN',-218158317,3),(773,3,1,'AN',-218730738,3),(774,3,1,'AN',-219303909,3),(775,3,1,'AN',-219877830,3),(776,3,1,'AN',-220452501,3),(777,3,1,'AN',-221027922,3),(778,3,1,'AN',-221604093,3),(779,3,1,'AN',-222181014,3),(780,3,1,'AN',-222758685,3),(781,3,1,'AN',-223337106,3),(782,3,1,'AN',-223916277,3),(783,3,1,'AN',-224496198,3),(784,3,1,'AN',-225076869,3),(785,3,1,'AN',-225658290,3),(786,3,1,'AN',-226240461,3),(787,3,1,'AN',-226823382,3),(788,3,1,'AN',-227407053,3),(789,3,1,'AN',-227991474,3),(790,3,1,'AN',-228576645,3),(791,3,1,'AN',-229162566,3),(792,3,1,'AN',-229749237,3),(793,3,1,'AN',-230336658,3),(794,3,1,'AN',-230924829,3),(795,3,1,'AN',-231513750,3),(796,3,1,'AN',-232103421,3),(797,3,1,'AN',-232693842,3),(798,3,1,'AN',-233285013,3),(799,3,1,'AN',-233876934,3),(800,3,1,'AN',-234469605,3),(801,3,1,'AN',-235063026,3),(802,3,1,'AN',-235657197,3),(803,3,1,'AN',-236252118,3),(804,3,1,'AN',-236847789,3),(805,3,1,'AN',-237444210,3),(806,3,1,'AN',-238041381,3),(807,3,1,'AN',-238639302,3),(808,3,1,'AN',-239237973,3),(809,3,1,'AN',-239837394,3),(810,3,1,'AN',-240437565,3),(811,3,1,'AN',-241038486,3),(812,3,1,'AN',-241640157,3),(813,3,1,'AN',-242242578,3),(814,3,1,'AN',-242845749,3),(815,3,1,'AN',-243449670,3),(816,3,1,'AN',-244054341,3),(817,3,1,'AN',-244659762,3),(818,3,1,'AN',-245265933,3),(819,3,1,'AN',-245872854,3),(820,3,1,'AN',-246480525,3),(821,3,1,'AN',-247088946,3),(822,3,1,'AN',-247698117,3),(823,3,1,'AN',-248308038,3),(824,3,1,'AN',-248918709,3),(825,3,1,'AN',-249530130,3),(826,3,1,'AN',-250142301,3),(827,3,1,'AN',-250755222,3),(828,3,1,'AN',-251368893,3),(829,3,1,'AN',-251983314,3),(830,3,1,'AN',-252598485,3),(831,3,1,'AN',-253214406,3),(832,3,1,'AN',-253831077,3),(833,3,1,'AN',-254448498,3),(834,3,1,'AN',-255066669,3),(835,3,1,'AN',-255685590,3),(836,3,1,'AN',-256305261,3),(837,3,1,'AN',-256925682,3),(838,3,1,'AN',-257546853,3),(839,3,1,'AN',-258168774,3),(840,3,1,'AN',-258791445,3),(841,3,1,'AN',-259414866,3),(842,3,1,'AN',-260039037,3),(843,3,1,'AN',-260663958,3),(844,3,1,'AN',-261289629,3),(845,3,1,'AN',-261916050,3),(846,3,1,'AN',-262543221,3),(847,3,1,'AN',-263171142,3),(848,3,1,'AN',-263799813,3),(849,3,1,'AN',-264429234,3),(850,3,1,'AN',-265059405,3),(851,3,1,'AN',-265690326,3),(852,3,1,'AN',-266321997,3),(853,3,1,'AN',-266954418,3),(854,3,1,'AN',-267587589,3),(855,3,1,'AN',-268221510,3),(856,3,1,'AN',-268856181,3),(857,3,1,'AN',-269491602,3),(858,3,1,'AN',-270127773,3),(859,3,1,'AN',-270764694,3),(860,3,1,'AN',-271402365,3),(861,3,1,'AN',-272040786,3),(862,3,1,'AN',-272679957,3),(863,3,1,'AN',-273319878,3),(864,3,1,'AN',-273960549,3),(865,3,1,'AN',-274601970,3),(866,3,1,'AN',-275244141,3),(867,3,1,'AN',-275887062,3),(868,3,1,'AN',-276530733,3),(869,3,1,'AN',-277175154,3),(870,3,1,'AN',-277820325,3),(871,3,1,'AN',-278466246,3),(872,3,1,'AN',-279112917,3),(873,3,1,'AN',-279760338,3),(874,3,1,'AN',-280408509,3),(875,3,1,'AN',-281057430,3),(876,3,1,'AN',-281707101,3),(877,3,1,'AN',-282357522,3),(878,3,1,'AN',-283008693,3),(879,3,1,'AN',-283660614,3),(880,3,1,'AN',-284313285,3),(881,3,1,'AN',-284966706,3),(882,3,1,'AN',-285620877,3),(883,3,1,'AN',-286275798,3),(884,3,1,'AN',-286931469,3),(885,3,1,'AN',-287587890,3),(886,3,1,'AN',-288245061,3),(887,3,1,'AN',-288902982,3),(888,3,1,'AN',-289561653,3),(889,3,1,'AN',-290221074,3),(890,3,1,'AN',-290881245,3),(891,3,1,'AN',-291542166,3),(892,3,1,'AN',-292203837,3),(893,3,1,'AN',-292866258,3),(894,3,1,'AN',-293529429,3),(895,3,1,'AN',-294193350,3),(896,3,1,'AN',-294858021,3),(897,3,1,'AN',-295523442,3),(898,3,1,'AN',-296189613,3),(899,3,1,'AN',-296856534,3),(900,3,1,'AN',-297524205,3),(901,3,1,'AN',-298192626,3),(902,3,1,'AN',-298861797,3),(903,3,1,'AN',-299531718,3),(904,3,1,'AN',-300202389,3),(905,3,1,'AN',-300873810,3),(906,3,1,'AN',-301545981,3),(907,3,1,'AN',-302218902,3),(908,3,1,'AN',-302892573,3),(909,3,1,'AN',-303566994,3),(910,3,1,'AN',-304242165,3),(911,3,1,'AN',-304918086,3),(912,3,1,'AN',-305594757,3),(913,3,1,'AN',-306272178,3),(914,3,1,'AN',-306950349,3),(915,3,1,'AN',-307629270,3),(916,3,1,'AN',-308308941,3),(917,3,1,'AN',-308989362,3),(918,3,1,'AN',-309670533,3),(919,3,1,'AN',-310352454,3),(920,3,1,'AN',-311035125,3),(921,3,1,'AN',-311718546,3),(922,3,1,'AN',-312402717,3),(923,3,1,'AN',-313087638,3),(924,3,1,'AN',-313773309,3),(925,3,1,'AN',-314459730,3),(926,3,1,'AN',-315146901,3),(927,3,1,'AN',-315834822,3),(928,3,1,'AN',-316523493,3),(929,3,1,'AN',-317212914,3),(930,3,1,'AN',-317903085,3),(931,3,1,'AN',-318594006,3),(932,3,1,'AN',-319285677,3),(933,3,1,'AN',-319978098,3),(934,3,1,'AN',-320671269,3),(935,3,1,'AN',-321365190,3),(936,3,1,'AN',-322059861,3),(937,3,1,'AN',-322755282,3),(938,3,1,'AN',-323451453,3),(939,3,1,'AN',-324148374,3),(940,3,1,'AN',-324846045,3),(941,3,1,'AN',-325544466,3),(942,3,1,'AN',-326243637,3),(943,3,1,'AN',-326943558,3),(944,3,1,'AN',-327644229,3),(945,3,1,'AN',-328345650,3),(946,3,1,'AN',-329047821,3),(947,3,1,'AN',-329750742,3),(948,3,1,'AN',-330454413,3),(949,3,1,'AN',-331158834,3),(950,3,1,'AN',-331864005,3),(951,3,1,'AN',-332569926,3),(952,3,1,'AN',-333276597,3),(953,3,1,'AN',-333984018,3),(954,3,1,'AN',-334692189,3),(955,3,1,'AN',-335401110,3),(956,3,1,'AN',-336110781,3),(957,3,1,'AN',-336821202,3),(958,3,1,'AN',-337532373,3),(959,3,1,'AN',-338244294,3),(960,3,1,'AN',-338956965,3),(961,3,1,'AN',-339670386,3),(962,3,1,'AN',-340384557,3),(963,3,1,'AN',-341099478,3),(964,3,1,'AN',-341815149,3),(965,3,1,'AN',-342531570,3),(966,3,1,'AN',-343248741,3),(967,3,1,'AN',-343966662,3),(968,3,1,'AN',-344685333,3),(969,3,1,'AN',-345404754,3),(970,3,1,'AN',-346124925,3),(971,3,1,'AN',-346845846,3),(972,3,1,'AN',-347567517,3),(973,3,1,'AN',-348289938,3),(974,3,1,'AN',-349013109,3),(975,3,1,'AN',-349737030,3),(976,3,1,'AN',-350461701,3),(977,3,1,'AN',-351187122,3),(978,3,1,'AN',-351913293,3),(979,3,1,'AN',-352640214,3),(980,3,1,'AN',-353367885,3),(981,3,1,'AN',-354096306,3),(982,3,1,'AN',-354825477,3),(983,3,1,'AN',-355555398,3),(984,3,1,'AN',-356286069,3),(985,3,1,'AN',-357017490,3),(986,3,1,'AN',-357749661,3),(987,3,1,'AN',-358482582,3),(988,3,1,'AN',-359216253,3),(989,3,1,'AN',-359950674,3),(990,3,1,'AN',-360685845,3),(991,3,1,'AN',-361421766,3),(992,3,1,'AN',-362158437,3),(993,3,1,'AN',-362895858,3),(994,3,1,'AN',-363634029,3),(995,3,1,'AN',-364372950,3),(996,3,1,'AN',-365112621,3),(997,3,1,'AN',-365853042,3),(998,3,1,'AN',-366594213,3),(999,3,1,'AN',-367336134,3),(1000,3,1,'AN',-368078805,3),(1001,3,1,'AN',-368822226,3),(1002,3,1,'AN',-369566397,3),(1003,3,1,'AN',-370311318,3),(1004,3,1,'AN',-371056989,3),(1005,3,1,'AN',-371803410,3),(1006,3,1,'AN',-372550581,3),(1007,3,1,'AN',-373298502,3),(1008,3,1,'AN',-374047173,3),(1009,3,1,'AN',-374796594,3),(1010,3,1,'AN',-375546765,3),(1011,3,1,'AN',-376297686,3),(1012,3,1,'AN',-377049357,3),(1013,3,1,'AN',-377801778,3),(1014,3,1,'AN',-378554949,3),(1015,3,1,'AN',-379308870,3),(1016,3,1,'AN',-380063541,3),(1017,3,1,'AN',-380818962,3),(1018,3,1,'AN',-381575133,3),(1019,3,1,'AN',-382332054,3),(1020,3,1,'AN',-383089725,3),(1021,3,1,'AN',-383848146,3),(1022,3,1,'AN',-384607317,3),(1023,3,1,'AN',-385367238,3),(1024,3,1,'AN',-386127909,3),(1025,3,1,'AN',-386889330,3),(1026,3,1,'AN',-387651501,3),(1027,3,1,'AN',-388414422,3),(1028,3,1,'AN',-389178093,3),(1029,3,1,'AN',-389942514,3),(1030,3,1,'AN',-390707685,3),(1031,3,1,'AN',-391473606,3),(1032,3,1,'AN',-392240277,3),(1033,3,1,'AN',-393007698,3),(1034,3,1,'AN',-393775869,3),(1035,3,1,'AN',-394544790,3),(1036,3,1,'AN',-395314461,3),(1037,3,1,'AN',237.6,3),(1038,3,1,'AN',-396084882,3),(1039,4,1,'AN',-396856053,3),(1040,4,1,'AN',297,3),(1041,4,1,'AN',-397627974,3),(1042,4,1,'AN',-453,3),(1043,4,1,'AN',-398400645,3),(1044,4,1,'AN',-1953,3),(1045,4,1,'AN',-399174066,3),(1046,4,1,'AN',-4203,3),(1047,4,1,'AN',-399948237,3),(1048,4,1,'AN',-7203,3),(1049,4,1,'AN',-400723158,3),(1050,4,1,'AN',-10953,3),(1051,4,1,'AN',-401498829,3),(1052,4,1,'AN',-15453,3),(1053,4,1,'AN',-402275250,3),(1054,4,1,'AN',-20703,3),(1055,4,1,'AN',-403052421,3),(1056,4,1,'AN',-26703,3),(1057,4,1,'AN',-403830342,3),(1058,4,1,'AN',-33453,3),(1059,4,1,'AN',-404609013,3),(1060,4,1,'AN',-40953,3),(1061,4,1,'AN',-405388434,3),(1062,4,1,'AN',-49203,3),(1063,4,1,'AN',-406168605,3),(1064,4,1,'AN',-58203,3),(1065,4,1,'AN',-406949526,3),(1066,4,1,'AN',-67953,3),(1067,4,1,'AN',-407731197,3),(1068,4,1,'AN',-78453,3),(1069,4,1,'AN',-408513618,3),(1070,4,1,'AN',-89703,3),(1071,4,1,'AN',-409296789,3),(1072,4,1,'AN',-101703,3),(1073,4,1,'AN',-410080710,3),(1074,4,1,'AN',-114453,3),(1075,4,1,'AN',-410865381,3),(1076,4,1,'AN',-127953,3),(1077,4,1,'AN',-411650802,3),(1078,4,1,'AN',-142203,3),(1079,4,1,'AN',-412436973,3),(1080,4,1,'AN',-157203,3),(1081,4,1,'AN',-413223894,3),(1082,4,1,'AN',-172953,3),(1083,4,1,'AN',-414011565,3),(1084,4,1,'AN',-189453,3),(1085,4,1,'AN',-414799986,3),(1086,4,1,'AN',-206703,3),(1087,4,1,'AN',-415589157,3),(1088,4,1,'AN',-224703,3),(1089,4,1,'AN',-416379078,3),(1090,4,1,'AN',-243453,3),(1091,4,1,'AN',-417169749,3),(1092,4,1,'AN',-262953,3),(1093,4,1,'AN',-417961170,3),(1094,4,1,'AN',-283203,3),(1095,4,1,'AN',-418753341,3),(1096,4,1,'AN',-304203,3),(1097,4,1,'AN',-419546262,3),(1098,4,1,'AN',-325953,3),(1099,4,1,'AN',-420339933,3),(1100,4,1,'AN',-348453,3),(1101,4,1,'AN',-421134354,3),(1102,4,1,'AN',-371703,3),(1103,4,1,'AN',-421929525,3),(1104,4,1,'AN',-395703,3),(1105,4,1,'AN',-422725446,3),(1106,4,1,'AN',-420453,3),(1107,4,1,'AN',-423522117,3),(1108,4,1,'AN',-445953,3),(1109,4,1,'AN',-424319538,3),(1110,4,1,'AN',-472203,3),(1111,4,1,'AN',-425117709,3),(1112,4,1,'AN',-499203,3),(1113,4,1,'AN',-425916630,3),(1114,4,1,'AN',-526953,3),(1115,4,1,'AN',-426716301,3),(1116,4,1,'AN',-555453,3),(1117,4,1,'AN',-427516722,3),(1118,4,1,'AN',-584703,3),(1119,4,1,'AN',-428317893,3),(1120,4,1,'AN',-614703,3),(1121,4,1,'AN',-429119814,3),(1122,4,1,'AN',-645453,3),(1123,4,1,'AN',-429922485,3),(1124,4,1,'AN',-676953,3),(1125,4,1,'AN',-430725906,3),(1126,4,1,'AN',-709203,3),(1127,4,1,'AN',-431530077,3),(1128,4,1,'AN',-742203,3),(1129,4,1,'AN',-432334998,3),(1130,4,1,'AN',-775953,3),(1131,4,1,'AN',-433140669,3),(1132,4,1,'AN',-810453,3),(1133,4,1,'AN',-433947090,3),(1134,4,1,'AN',-845703,3),(1135,4,1,'AN',-434754261,3),(1136,4,1,'AN',-881703,3),(1137,4,1,'AN',-435562182,3),(1138,4,1,'AN',-918453,3),(1139,4,1,'AN',-436370853,3),(1140,4,1,'AN',-955953,3),(1141,4,1,'AN',-437180274,3),(1142,4,1,'AN',-994203,3),(1143,4,1,'AN',-437990445,3),(1144,4,1,'AN',-1033203,3),(1145,4,1,'AN',-438801366,3),(1146,4,1,'AN',-1072953,3),(1147,4,1,'AN',-439613037,3),(1148,4,1,'AN',-1113453,3),(1149,4,1,'AN',-440425458,3),(1150,4,1,'AN',-1154703,3),(1151,4,1,'AN',-441238629,3),(1152,4,1,'AN',-1196703,3),(1153,4,1,'AN',-442052550,3),(1154,4,1,'AN',-1239453,3),(1155,4,1,'AN',-442867221,3),(1156,4,1,'AN',-1282953,3),(1157,4,1,'AN',-443682642,3),(1158,4,1,'AN',-1327203,3),(1159,4,1,'AN',-444498813,3),(1160,4,1,'AN',-1372203,3),(1161,4,1,'AN',-445315734,3),(1162,4,1,'AN',-1417953,3),(1163,4,1,'AN',-446133405,3),(1164,4,1,'AN',-1464453,3),(1165,4,1,'AN',-446951826,3),(1166,4,1,'AN',-1511703,3),(1167,4,1,'AN',-447770997,3),(1168,4,1,'AN',-1559703,3),(1169,4,1,'AN',-448590918,3),(1170,4,1,'AN',-1608453,3),(1171,4,1,'AN',-449411589,3),(1172,4,1,'AN',-1657953,3),(1173,4,1,'AN',-450233010,3),(1174,4,1,'AN',-1708203,3),(1175,4,1,'AN',-451055181,3),(1176,4,1,'AN',-1759203,3),(1177,4,1,'AN',-451878102,3),(1178,4,1,'AN',-1810953,3),(1179,4,1,'AN',-452701773,3),(1180,4,1,'AN',-1863453,3),(1181,4,1,'AN',-453526194,3),(1182,4,1,'AN',-1916703,3),(1183,4,1,'AN',-454351365,3),(1184,4,1,'AN',-1970703,3),(1185,4,1,'AN',-455177286,3),(1186,4,1,'AN',-2025453,3),(1187,4,1,'AN',-456003957,3),(1188,4,1,'AN',-2080953,3),(1189,4,1,'AN',-456831378,3),(1190,4,1,'AN',-2137203,3),(1191,4,1,'AN',-457659549,3),(1192,4,1,'AN',-2194203,3),(1193,4,1,'AN',-458488470,3),(1194,4,1,'AN',-2251953,3),(1195,4,1,'AN',-459318141,3),(1196,4,1,'AN',-2310453,3),(1197,4,1,'AN',-460148562,3),(1198,4,1,'AN',-2369703,3),(1199,4,1,'AN',-460979733,3),(1200,4,1,'AN',-2429703,3),(1201,4,1,'AN',-461811654,3),(1202,4,1,'AN',-2490453,3),(1203,4,1,'AN',-462644325,3),(1204,4,1,'AN',-2551953,3),(1205,4,1,'AN',-463477746,3),(1206,4,1,'AN',-2614203,3),(1207,4,1,'AN',-464311917,3),(1208,4,1,'AN',-2677203,3),(1209,4,1,'AN',-465146838,3),(1210,4,1,'AN',-465982509,3),(1211,4,1,'AN',-2740953,3),(1212,4,1,'AN',-466818930,3),(1213,4,1,'AN',-2805453,3),(1214,4,1,'AN',-467656101,3),(1215,4,1,'AN',-2870703,3),(1216,4,1,'AN',-468494022,3),(1217,4,1,'AN',-2936703,3),(1218,4,1,'AN',-469332693,3),(1219,4,1,'AN',-3003453,3),(1220,4,1,'AN',-470172114,3),(1221,4,1,'AN',-3070953,3),(1222,4,1,'AN',-471012285,3),(1223,4,1,'AN',-3139203,3),(1224,4,1,'AN',-471853206,3),(1225,4,1,'AN',-3208203,3),(1226,4,1,'AN',-472694877,3),(1227,4,1,'AN',-3277953,3),(1228,4,1,'AN',-473537298,3),(1229,4,1,'AN',-3348453,3),(1230,4,1,'AN',-474380469,3),(1231,4,1,'AN',-3419703,3),(1232,4,1,'AN',-475224390,3),(1233,4,1,'AN',-3491703,3),(1234,4,1,'AN',-476069061,3),(1235,4,1,'AN',-3564453,3),(1236,4,1,'AN',-476914482,3),(1237,4,1,'AN',-3637953,3),(1238,4,1,'AN',-477760653,3),(1239,4,1,'AN',-3712203,3),(1240,4,1,'AN',-478607574,3),(1241,4,1,'AN',-3787203,3),(1242,4,1,'AN',-479455245,3),(1243,4,1,'AN',-3862953,3),(1244,4,1,'AN',-480303666,3),(1245,4,1,'AN',-3939453,3),(1246,4,1,'AN',-481152837,3),(1247,4,1,'AN',-4016703,3),(1248,4,1,'AN',-482002758,3),(1249,4,1,'AN',-4094703,3),(1250,4,1,'AN',-482853429,3),(1251,4,1,'AN',-4173453,3),(1252,4,1,'AN',-483704850,3),(1253,4,1,'AN',-4252953,3),(1254,4,1,'AN',-484557021,3),(1255,4,1,'AN',-4333203,3),(1256,4,1,'AN',-485409942,3),(1257,4,1,'AN',-4414203,3),(1258,4,1,'AN',-486263613,3),(1259,4,1,'AN',-4495953,3),(1260,4,1,'AN',-487118034,3),(1261,4,1,'AN',-4578453,3),(1262,4,1,'AN',-487973205,3),(1263,4,1,'AN',-4661703,3),(1264,4,1,'AN',-488829126,3),(1265,4,1,'AN',-4745703,3),(1266,4,1,'AN',-489685797,3),(1267,4,1,'AN',-4830453,3),(1268,4,1,'AN',-490543218,3),(1269,4,1,'AN',-4915953,3),(1270,4,1,'AN',-491401389,3),(1271,4,1,'AN',-5002203,3),(1272,4,1,'AN',-492260310,3),(1273,4,1,'AN',-5089203,3),(1274,4,1,'AN',-493119981,3),(1275,4,1,'AN',-5176953,3),(1276,4,1,'AN',-493980402,3),(1277,4,1,'AN',-5265453,3),(1278,4,1,'AN',-494841573,3),(1279,4,1,'AN',-5354703,3),(1280,4,1,'AN',-495703494,3),(1281,4,1,'AN',-5444703,3),(1282,4,1,'AN',-496566165,3),(1283,4,1,'AN',-5535453,3),(1284,4,1,'AN',-497429586,3),(1285,4,1,'AN',-5626953,3),(1286,4,1,'AN',-498293757,3),(1287,4,1,'AN',-5719203,3),(1288,4,1,'AN',-499158678,3),(1289,4,1,'AN',-5812203,3),(1290,4,1,'AN',-500024349,3),(1291,4,1,'AN',-5905953,3),(1292,4,1,'AN',-500890770,3),(1293,4,1,'AN',-6000453,3),(1294,4,1,'AN',-501757941,3),(1295,4,1,'AN',-6095703,3),(1296,4,1,'AN',-502625862,3),(1297,4,1,'AN',-6191703,3),(1298,4,1,'AN',-503494533,3),(1299,4,1,'AN',-6288453,3),(1300,4,1,'AN',-504363954,3),(1301,4,1,'AN',-6385953,3),(1302,4,1,'AN',-505234125,3),(1303,4,1,'AN',-6484203,3),(1304,4,1,'AN',-506105046,3),(1305,4,1,'AN',-6583203,3),(1306,4,1,'AN',-506976717,3),(1307,4,1,'AN',-6682953,3),(1308,4,1,'AN',-507849138,3),(1309,4,1,'AN',-6783453,3),(1310,4,1,'AN',-508722309,3),(1311,4,1,'AN',-6884703,3),(1312,4,1,'AN',-509596230,3),(1313,4,1,'AN',-6986703,3),(1314,4,1,'AN',-510470901,3),(1315,4,1,'AN',-7089453,3),(1316,4,1,'AN',-511346322,3),(1317,4,1,'AN',-7192953,3),(1318,4,1,'AN',-7297203,3),(1319,4,1,'AN',-512222493,3),(1320,4,1,'AN',-7402203,3),(1321,4,1,'AN',-513099414,3),(1322,4,1,'AN',-7507953,3),(1323,4,1,'AN',-513977085,3),(1324,4,1,'AN',-7614453,3),(1325,4,1,'AN',-514855506,3),(1326,4,1,'AN',-7721703,3),(1327,4,1,'AN',-515734677,3),(1328,4,1,'AN',-7829703,3),(1329,4,1,'AN',-516614598,3),(1330,4,1,'AN',-7938453,3),(1331,4,1,'AN',-517495269,3),(1332,4,1,'AN',-8047953,3),(1333,4,1,'AN',-518376690,3),(1334,4,1,'AN',-8158203,3),(1335,4,1,'AN',-519258861,3),(1336,4,1,'AN',-8269203,3),(1337,4,1,'AN',-520141782,3),(1338,4,1,'AN',-8380953,3),(1339,4,1,'AN',-521025453,3),(1340,4,1,'AN',-8493453,3),(1341,4,1,'AN',-521909874,3),(1342,4,1,'AN',-8606703,3),(1343,4,1,'AN',-522795045,3),(1344,4,1,'AN',-8720703,3),(1345,4,1,'AN',-523680966,3),(1346,4,1,'AN',-8835453,3),(1347,4,1,'AN',-524567637,3),(1348,4,1,'AN',-8950953,3),(1349,4,1,'AN',-525455058,3),(1350,4,1,'AN',-9067203,3),(1351,4,1,'AN',-526343229,3),(1352,4,1,'AN',-9184203,3),(1353,4,1,'AN',-527232150,3),(1354,4,1,'AN',-9301953,3),(1355,4,1,'AN',-528121821,3),(1356,4,1,'AN',-9420453,3),(1357,4,1,'AN',-529012242,3),(1358,4,1,'AN',-9539703,3),(1359,4,1,'AN',-529903413,3),(1360,4,1,'AN',-9659703,3),(1361,4,1,'AN',-530795334,3),(1362,4,1,'AN',-9780453,3),(1363,4,1,'AN',-531688005,3),(1364,4,1,'AN',-9901953,3),(1365,4,1,'AN',-532581426,3),(1366,4,1,'AN',-10024203,3),(1367,4,1,'AN',-533475597,3),(1368,4,1,'AN',-10147203,3),(1369,4,1,'AN',-534370518,3),(1370,4,1,'AN',-10270953,3),(1371,4,1,'AN',-535266189,3),(1372,4,1,'AN',-10395453,3),(1373,4,1,'AN',-536162610,3),(1374,4,1,'AN',-10520703,3),(1375,4,1,'AN',-537059781,3),(1376,4,1,'AN',-10646703,3),(1377,4,1,'AN',-537957702,3),(1378,4,1,'AN',-10773453,3),(1379,4,1,'AN',-538856373,3),(1380,4,1,'AN',-10900953,3),(1381,4,1,'AN',-539755794,3),(1382,4,1,'AN',-11029203,3),(1383,4,1,'AN',-540655965,3),(1384,4,1,'AN',-11158203,3),(1385,4,1,'AN',-541556886,3),(1386,4,1,'AN',-11287953,3),(1387,4,1,'AN',-542458557,3),(1388,4,1,'AN',-11418453,3),(1389,4,1,'AN',-543360978,3),(1390,4,1,'AN',-11549703,3),(1391,4,1,'AN',-544264149,3),(1392,4,1,'AN',-11681703,3),(1393,4,1,'AN',-545168070,3),(1394,4,1,'AN',-11814453,3),(1395,4,1,'AN',-546072741,3),(1396,4,1,'AN',-11947953,3),(1397,4,1,'AN',-546978162,3),(1398,4,1,'AN',-12082203,3),(1399,4,1,'AN',-547884333,3),(1400,4,1,'AN',-12217203,3),(1401,4,1,'AN',-548791254,3),(1402,4,1,'AN',-12352953,3),(1403,4,1,'AN',-549698925,3),(1404,4,1,'AN',-12489453,3),(1405,4,1,'AN',-550607346,3),(1406,4,1,'AN',-12626703,3),(1407,4,1,'AN',-551516517,3),(1408,4,1,'AN',-12764703,3),(1409,4,1,'AN',-552426438,3),(1410,4,1,'AN',-12903453,3),(1411,4,1,'AN',-553337109,3),(1412,4,1,'AN',-13042953,3),(1413,4,1,'AN',-554248530,3),(1414,4,1,'AN',-13183203,3),(1415,4,1,'AN',-555160701,3),(1416,4,1,'AN',-13324203,3),(1417,4,1,'AN',-556073622,3),(1418,4,1,'AN',-13465953,3),(1419,4,1,'AN',-556987293,3),(1420,4,1,'AN',-13608453,3),(1421,4,1,'AN',-557901714,3),(1422,4,1,'AN',-13751703,3),(1423,4,1,'AN',-558816885,3),(1424,4,1,'AN',-13895703,3),(1425,4,1,'AN',-559732806,3),(1426,4,1,'AN',-14040453,3),(1427,4,1,'AN',-560649477,3),(1428,4,1,'AN',-14185953,3),(1429,4,1,'AN',-561566898,3),(1430,4,1,'AN',-14332203,3),(1431,4,1,'AN',-562485069,3),(1432,4,1,'AN',-14479203,3),(1433,4,1,'AN',-563403990,3),(1434,4,1,'AN',-14626953,3),(1435,4,1,'AN',-564323661,3),(1436,4,1,'AN',-14775453,3),(1437,4,1,'AN',-565244082,3),(1438,4,1,'AN',-14924703,3),(1439,4,1,'AN',-566165253,3),(1440,4,1,'AN',-15074703,3),(1441,4,1,'AN',-567087174,3),(1442,4,1,'AN',-15225453,3),(1443,4,1,'AN',-568009845,3),(1444,4,1,'AN',-15376953,3),(1445,4,1,'AN',-568933266,3),(1446,4,1,'AN',-15529203,3),(1447,4,1,'AN',-569857437,3),(1448,4,1,'AN',-15682203,3),(1449,4,1,'AN',-570782358,3),(1450,4,1,'AN',-15835953,3),(1451,4,1,'AN',-571708029,3),(1452,4,1,'AN',-15990453,3),(1453,4,1,'AN',-572634450,3),(1454,4,1,'AN',-16145703,3),(1455,4,1,'AN',-573561621,3),(1456,4,1,'AN',-16301703,3),(1457,4,1,'AN',-574489542,3),(1458,4,1,'AN',-16458453,3),(1459,4,1,'AN',-575418213,3),(1460,4,1,'AN',-16615953,3),(1461,4,1,'AN',-576347634,3),(1462,4,1,'AN',-16774203,3),(1463,4,1,'AN',-577277805,3),(1464,4,1,'AN',-16933203,3),(1465,4,1,'AN',-578208726,3),(1466,4,1,'AN',-17092953,3),(1467,4,1,'AN',-579140397,3),(1468,4,1,'AN',-17253453,3),(1469,4,1,'AN',-580072818,3),(1470,4,1,'AN',-17414703,3),(1471,4,1,'AN',-581005989,3),(1472,4,1,'AN',-17576703,3),(1473,4,1,'AN',-581939910,3),(1474,4,1,'AN',-17739453,3),(1475,4,1,'AN',-582874581,3),(1476,4,1,'AN',-17902953,3),(1477,4,1,'AN',-583810002,3),(1478,4,1,'AN',-18067203,3),(1479,4,1,'AN',-584746173,3),(1480,4,1,'AN',-585683094,3),(1481,4,1,'AN',-18232203,3),(1482,4,1,'AN',-586620765,3),(1483,4,1,'AN',-18397953,3),(1484,4,1,'AN',-587559186,3),(1485,4,1,'AN',-18564453,3),(1486,4,1,'AN',-588498357,3),(1487,4,1,'AN',-18731703,3),(1488,4,1,'AN',-589438278,3),(1489,4,1,'AN',-18899703,3),(1490,4,1,'AN',-590378949,3),(1491,4,1,'AN',-19068453,3),(1492,4,1,'AN',-591320370,3),(1493,4,1,'AN',-19237953,3),(1494,4,1,'AN',-592262541,3),(1495,4,1,'AN',-19408203,3),(1496,4,1,'AN',-593205462,3),(1497,4,1,'AN',-19579203,3),(1498,4,1,'AN',-594149133,3),(1499,4,1,'AN',-19750953,3),(1500,4,1,'AN',-595093554,3),(1501,4,1,'AN',-19923453,3),(1502,4,1,'AN',-596038725,3),(1503,4,1,'AN',-20096703,3),(1504,4,1,'AN',-596984646,3),(1505,4,1,'AN',-20270703,3),(1506,4,1,'AN',-597931317,3),(1507,4,1,'AN',-20445453,3),(1508,4,1,'AN',-598878738,3),(1509,4,1,'AN',-20620953,3),(1510,4,1,'AN',-599826909,3),(1511,4,1,'AN',-20797203,3),(1512,4,1,'AN',-600775830,3),(1513,4,1,'AN',-20974203,3),(1514,4,1,'AN',-601725501,3),(1515,4,1,'AN',-21151953,3),(1516,4,1,'AN',-602675922,3),(1517,4,1,'AN',-21330453,3),(1518,4,1,'AN',-603627093,3),(1519,4,1,'AN',-21509703,3),(1520,4,1,'AN',-604579014,3),(1521,4,1,'AN',-21689703,3),(1522,4,1,'AN',-605531685,3),(1523,4,1,'AN',-21870453,3),(1524,4,1,'AN',-606485106,3),(1525,4,1,'AN',-22051953,3),(1526,4,1,'AN',-607439277,3),(1527,4,1,'AN',-22234203,3),(1528,4,1,'AN',-608394198,3),(1529,4,1,'AN',-22417203,3),(1530,4,1,'AN',-609349869,3),(1531,4,1,'AN',-22600953,3),(1532,4,1,'AN',-610306290,3),(1533,4,1,'AN',-22785453,3),(1534,4,1,'AN',-611263461,3),(1535,4,1,'AN',-22970703,3),(1536,4,1,'AN',-612221382,3),(1537,4,1,'AN',-23156703,3),(1538,4,1,'AN',-613180053,3),(1539,4,1,'AN',-23343453,3),(1540,4,1,'AN',-614139474,3),(1541,4,1,'AN',-23530953,3),(1542,4,1,'AN',-615099645,3),(1543,4,1,'AN',-23719203,3),(1544,4,1,'AN',-616060566,3),(1545,4,1,'AN',-23908203,3),(1546,4,1,'AN',-617022237,3),(1547,4,1,'AN',-24097953,3),(1548,4,1,'AN',-617984658,3),(1549,4,1,'AN',-24288453,3),(1550,4,1,'AN',-618947829,3),(1551,4,1,'AN',-24479703,3),(1552,4,1,'AN',-619911750,3),(1553,4,1,'AN',-24671703,3),(1554,4,1,'AN',-620876421,3),(1555,4,1,'AN',-24864453,3),(1556,4,1,'AN',-621841842,3),(1557,4,1,'AN',-25057953,3),(1558,4,1,'AN',-622808013,3),(1559,4,1,'AN',-25252203,3),(1560,4,1,'AN',-623774934,3),(1561,4,1,'AN',-25447203,3),(1562,4,1,'AN',-624742605,3),(1563,4,1,'AN',-25642953,3),(1564,4,1,'AN',-625711026,3),(1565,4,1,'AN',-25839453,3),(1566,4,1,'AN',-626680197,3),(1567,4,1,'AN',-26036703,3),(1568,4,1,'AN',-627650118,3),(1569,4,1,'AN',-26234703,3),(1570,4,1,'AN',-628620789,3),(1571,4,1,'AN',-26433453,3),(1572,4,1,'AN',-629592210,3),(1573,4,1,'AN',-26632953,3),(1574,4,1,'AN',-630564381,3),(1575,4,1,'AN',-26833203,3),(1576,4,1,'AN',-631537302,3),(1577,4,1,'AN',-27034203,3),(1578,4,1,'AN',-632510973,3),(1579,4,1,'AN',-27235953,3),(1580,4,1,'AN',-633485394,3),(1581,4,1,'AN',-27438453,3),(1582,4,1,'AN',-634460565,3),(1583,4,1,'AN',-27641703,3),(1584,4,1,'AN',-635436486,3),(1585,4,1,'AN',-27845703,3),(1586,4,1,'AN',-636413157,3),(1587,4,1,'AN',-28050453,3),(1588,4,1,'AN',-637390578,3),(1589,4,1,'AN',-28255953,3),(1590,4,1,'AN',-638368749,3),(1591,4,1,'AN',-28462203,3),(1592,4,1,'AN',-639347670,3),(1593,4,1,'AN',-28669203,3),(1594,4,1,'AN',-640327341,3),(1595,4,1,'AN',-28876953,3),(1596,4,1,'AN',-641307762,3),(1597,4,1,'AN',-29085453,3),(1598,4,1,'AN',-642288933,3),(1599,4,1,'AN',-29294703,3),(1600,4,1,'AN',-643270854,3),(1601,4,1,'AN',-29504703,3),(1602,4,1,'AN',-644253525,3),(1603,4,1,'AN',-29715453,3),(1604,4,1,'AN',-645236946,3),(1605,4,1,'AN',-29926953,3),(1606,4,1,'AN',-646221117,3),(1607,4,1,'AN',-30139203,3),(1608,4,1,'AN',-647206038,3),(1609,4,1,'AN',-30352203,3),(1610,4,1,'AN',-648191709,3),(1611,4,1,'AN',-30565953,3),(1612,4,1,'AN',-649178130,3),(1613,4,1,'AN',-30780453,3),(1614,4,1,'AN',-650165301,3),(1615,4,1,'AN',-30995703,3),(1616,4,1,'AN',-651153222,3),(1617,4,1,'AN',-31211703,3),(1618,4,1,'AN',-652141893,3),(1619,4,1,'AN',-31428453,3),(1620,4,1,'AN',-653131314,3),(1621,4,1,'AN',-31645953,3),(1622,4,1,'AN',-654121485,3),(1623,4,1,'AN',-31864203,3),(1624,4,1,'AN',-655112406,3),(1625,4,1,'AN',-32083203,3),(1626,4,1,'AN',-656104077,3),(1627,4,1,'AN',-32302953,3),(1628,4,1,'AN',-657096498,3),(1629,4,1,'AN',-32523453,3),(1630,4,1,'AN',-658089669,3),(1631,4,1,'AN',-32744703,3),(1632,4,1,'AN',-659083590,3),(1633,4,1,'AN',-32966703,3),(1634,4,1,'AN',-660078261,3),(1635,4,1,'AN',-33189453,3),(1636,4,1,'AN',-661073682,3),(1637,4,1,'AN',-33412953,3),(1638,4,1,'AN',-662069853,3),(1639,4,1,'AN',-33637203,3),(1640,4,1,'AN',-663066774,3),(1641,4,1,'AN',-33862203,3),(1642,4,1,'AN',-664064445,3),(1643,4,1,'AN',-34087953,3),(1644,4,1,'AN',-665062866,3),(1645,4,1,'AN',-34314453,3),(1646,4,1,'AN',-666062037,3),(1647,4,1,'AN',-34541703,3),(1648,4,1,'AN',-667061958,3),(1649,4,1,'AN',-34769703,3),(1650,4,1,'AN',-668062629,3),(1651,4,1,'AN',-34998453,3),(1652,4,1,'AN',-669064050,3),(1653,4,1,'AN',-35227953,3),(1654,4,1,'AN',-670066221,3),(1655,4,1,'AN',-35458203,3),(1656,4,1,'AN',-671069142,3),(1657,4,1,'AN',-35689203,3),(1658,4,1,'AN',-672072813,3),(1659,7,1,'AN',-673077234,3),(1660,7,1,'AN',-35920953,3),(1661,7,1,'AN',-674082405,3),(1662,7,1,'AN',-36153453,3),(1663,7,1,'AN',-675088326,3),(1664,7,1,'AN',-36386703,3),(1665,7,1,'AN',-676094997,3),(1666,7,1,'AN',-36620703,3),(1667,7,1,'AN',-677102418,3),(1668,7,1,'AN',-36855453,3),(1669,7,1,'AN',-678110589,3),(1670,7,1,'AN',-37090953,3),(1671,7,1,'AN',-679119510,3),(1672,7,1,'AN',-37327203,3),(1673,7,1,'AN',-680129181,3),(1674,7,1,'AN',-37564203,3),(1675,7,1,'AN',-681139602,3),(1676,7,1,'AN',-37801953,3),(1677,7,1,'AN',-682150773,3),(1678,7,1,'AN',-38040453,3),(1679,7,1,'AN',-683162694,3),(1680,7,1,'AN',-38279703,3),(1681,7,1,'AN',-684175365,3),(1682,7,1,'AN',-38519703,3),(1683,7,1,'AN',-685188786,3),(1684,7,1,'AN',-38760453,3),(1685,7,1,'AN',-686202957,3),(1686,7,1,'AN',-39001953,3),(1687,7,1,'AN',-687217878,3),(1688,7,1,'AN',-39244203,3),(1689,7,1,'AN',-688233549,3),(1690,7,1,'AN',-39487203,3),(1691,7,1,'AN',-689249970,3),(1692,7,1,'AN',-39730953,3),(1693,7,1,'AN',-690267141,3),(1694,7,1,'AN',-39975453,3),(1695,7,1,'AN',-691285062,3),(1696,7,1,'AN',-40220703,3),(1697,7,1,'AN',-692303733,3),(1698,7,1,'AN',-40466703,3),(1699,7,1,'AN',-693323154,3),(1700,7,1,'AN',-40713453,3),(1701,7,1,'AN',-694343325,3),(1702,7,1,'AN',-40960953,3),(1703,7,1,'AN',-695364246,3),(1704,7,1,'AN',-41209203,3),(1705,7,1,'AN',-696385917,3),(1706,7,1,'AN',-41458203,3),(1707,7,1,'AN',-697408338,3),(1708,7,1,'AN',-41707953,3),(1709,7,1,'AN',-698431509,3),(1710,7,1,'AN',-41958453,3),(1711,7,1,'AN',-699455430,3),(1712,7,1,'AN',-42209703,3),(1713,7,1,'AN',-700480101,3),(1714,7,1,'AN',-42461703,3),(1715,7,1,'AN',-701505522,3),(1716,7,1,'AN',-42714453,3),(1717,7,1,'AN',-702531693,3),(1718,7,1,'AN',-42967953,3),(1719,7,1,'AN',-703558614,3),(1720,7,1,'AN',-43222203,3),(1721,7,1,'AN',-704586285,3),(1722,7,1,'AN',-43477203,3),(1723,7,1,'AN',-705614706,3),(1724,7,1,'AN',-43732953,3),(1725,7,1,'AN',-706643877,3),(1726,7,1,'AN',-43989453,3),(1727,7,1,'AN',-707673798,3),(1728,7,1,'AN',-44246703,3),(1729,7,1,'AN',-708704469,3),(1730,7,1,'AN',-44504703,3),(1731,7,1,'AN',-709735890,3),(1732,7,1,'AN',-44763453,3),(1733,7,1,'AN',-710768061,3),(1734,7,1,'AN',-45022953,3),(1735,7,1,'AN',-711800982,3),(1736,7,1,'AN',-45283203,3),(1737,7,1,'AN',-712834653,3),(1738,7,1,'AN',-45544203,3),(1739,7,1,'AN',-713869074,3),(1740,7,1,'AN',-45805953,3),(1741,7,1,'AN',-714904245,3),(1742,7,1,'AN',-46068453,3),(1743,7,1,'AN',-715940166,3),(1744,7,1,'AN',-46331703,3),(1745,7,1,'AN',-716976837,3),(1746,7,1,'AN',-46595703,3),(1747,7,1,'AN',-718014258,3),(1748,7,1,'AN',-46860453,3),(1749,7,1,'AN',-719052429,3),(1750,7,1,'AN',-720091350,3),(1751,7,1,'AN',-47125953,3),(1752,7,1,'AN',-721131021,3),(1753,7,1,'AN',-47392203,3),(1754,7,1,'AN',-722171442,3),(1755,7,1,'AN',-47659203,3),(1756,7,1,'AN',-723212613,3),(1757,7,1,'AN',-47926953,3),(1758,7,1,'AN',-724254534,3),(1759,7,1,'AN',-48195453,3),(1760,7,1,'AN',-725297205,3),(1761,7,1,'AN',-48464703,3),(1762,7,1,'AN',-726340626,3),(1763,7,1,'AN',-48734703,3),(1764,7,1,'AN',-727384797,3),(1765,7,1,'AN',-49005453,3),(1766,7,1,'AN',-728429718,3),(1767,7,1,'AN',-49276953,3),(1768,7,1,'AN',-729475389,3),(1769,7,1,'AN',-49549203,3),(1770,7,1,'AN',-730521810,3),(1771,7,1,'AN',-49822203,3),(1772,7,1,'AN',-731568981,3),(1773,7,1,'AN',-50095953,3),(1774,7,1,'AN',-732616902,3),(1775,7,1,'AN',-50370453,3),(1776,7,1,'AN',-733665573,3),(1777,7,1,'AN',-50645703,3),(1778,7,1,'AN',-734714994,3),(1779,7,1,'AN',-50921703,3),(1780,7,1,'AN',-735765165,3),(1781,7,1,'AN',-51198453,3),(1782,7,1,'AN',-736816086,3),(1783,7,1,'AN',-51475953,3),(1784,7,1,'AN',-737867757,3),(1785,7,1,'AN',-51754203,3),(1786,7,1,'AN',-738920178,3),(1787,7,1,'AN',-52033203,3),(1788,7,1,'AN',-739973349,3),(1789,7,1,'AN',-52312953,3),(1790,7,1,'AN',-741027270,3),(1791,7,1,'AN',-52593453,3),(1792,7,1,'AN',-742081941,3),(1793,7,1,'AN',-52874703,3),(1794,7,1,'AN',-743137362,3),(1795,7,1,'AN',-53156703,3),(1796,7,1,'AN',-744193533,3),(1797,7,1,'AN',-53439453,3),(1798,7,1,'AN',-745250454,3),(1799,7,1,'AN',-53722953,3),(1800,7,1,'AN',-746308125,3),(1801,7,1,'AN',-54007203,3),(1802,7,1,'AN',-747366546,3),(1803,7,1,'AN',-54292203,3),(1804,7,1,'AN',-748425717,3),(1805,7,1,'AN',-54577953,3),(1806,7,1,'AN',-749485638,3),(1807,7,1,'AN',-54864453,3),(1808,7,1,'AN',-750546309,3),(1809,7,1,'AN',-55151703,3),(1810,7,1,'AN',-751607730,3),(1811,7,1,'AN',-55439703,3),(1812,7,1,'AN',-752669901,3),(1813,7,1,'AN',-55728453,3),(1814,7,1,'AN',-753732822,3),(1815,7,1,'AN',-754796493,3),(1816,7,1,'AN',-56017953,3),(1817,7,1,'AN',-755860914,3),(1818,7,1,'AN',-56308203,3),(1819,7,1,'AN',-756926085,3),(1820,7,1,'AN',-56599203,3),(1821,7,1,'AN',-757992006,3),(1822,7,1,'AN',-56890953,3),(1823,7,1,'AN',-759058677,3),(1824,7,1,'AN',-57183453,3),(1825,7,1,'AN',-760126098,3),(1826,7,1,'AN',-57476703,3),(1827,7,1,'AN',-761194269,3),(1828,7,1,'AN',-57770703,3),(1829,7,1,'AN',-762263190,3),(1830,7,1,'AN',-58065453,3),(1831,7,1,'AN',-763332861,3),(1832,7,1,'AN',-58360953,3),(1833,7,1,'AN',-764403282,3),(1834,7,1,'AN',-58657203,3),(1835,7,1,'AN',-765474453,3),(1836,7,1,'AN',-58954203,3),(1837,7,1,'AN',-59251953,3),(1838,7,1,'AN',-766546374,3),(1839,7,1,'AN',-59550453,3),(1840,7,1,'AN',-767619045,3),(1841,7,1,'AN',-59849703,3),(1842,7,1,'AN',-768692466,3),(1843,7,1,'AN',-60149703,3),(1844,7,1,'AN',-769766637,3),(1845,7,1,'AN',-770841558,3),(1846,7,1,'AN',-60450453,3),(1847,7,1,'AN',-771917229,3),(1848,7,1,'AN',-60751953,3),(1849,7,1,'AN',237.6,3),(1850,7,1,'AN',-772993650,3),(1851,7,1,'AN',-61054203,3),(1852,8,1,'AN',297,3),(1853,8,1,'AN',-774070821,3),(1854,8,1,'AN',-61357203,3),(1855,8,1,'AN',-453,3),(1856,8,1,'AN',-775148742,3),(1857,8,1,'AN',-61660953,3),(1858,8,1,'AN',-1953,3),(1859,8,1,'AN',-776227413,3),(1860,8,1,'AN',-61965453,3),(1861,8,1,'AN',-4203,3),(1862,8,1,'AN',-777306834,3),(1863,8,1,'AN',-62270703,3),(1864,8,1,'AN',-7203,3),(1865,8,1,'AN',-778387005,3),(1866,8,1,'AN',-62576703,3),(1867,8,1,'AN',-10953,3),(1868,8,1,'AN',-779467926,3),(1869,8,1,'AN',-62883453,3),(1870,8,1,'AN',-15453,3),(1871,8,1,'AN',-780549597,3),(1872,8,1,'AN',-63190953,3),(1873,8,1,'AN',-781632018,3),(1874,8,1,'AN',-63499203,3),(1875,8,1,'AN',-20703,3),(1876,8,1,'AN',-782715189,3),(1877,8,1,'AN',-63808203,3),(1878,8,1,'AN',-26703,3),(1879,8,1,'AN',-64117953,3),(1880,8,1,'AN',-783799110,3),(1881,8,1,'AN',-33453,3),(1882,8,1,'AN',-64428453,3),(1883,8,1,'AN',-784883781,3),(1884,8,1,'AN',-40953,3),(1885,8,1,'AN',-64739703,3),(1886,8,1,'AN',-785969202,3),(1887,8,1,'AN',-49203,3),(1888,8,1,'AN',-65051703,3),(1889,8,1,'AN',-787055373,3),(1890,8,1,'AN',-58203,3),(1891,8,1,'AN',-65364453,3),(1892,8,1,'AN',-788142294,3),(1893,8,1,'AN',-67953,3),(1894,8,1,'AN',-65677953,3),(1895,8,1,'AN',-789229965,3),(1896,8,1,'AN',-78453,3),(1897,8,1,'AN',-65992203,3),(1898,8,1,'AN',-790318386,3),(1899,8,1,'AN',-89703,3),(1900,8,1,'AN',-66307203,3),(1901,8,1,'AN',-791407557,3),(1902,8,1,'AN',-101703,3),(1903,8,1,'AN',-66622953,3),(1904,8,1,'AN',-792497478,3),(1905,8,1,'AN',-114453,3),(1906,8,1,'AN',-66939453,3),(1907,8,1,'AN',-793588149,3),(1908,8,1,'AN',-127953,3),(1909,8,1,'AN',-67256703,3),(1910,8,1,'AN',-794679570,3),(1911,8,1,'AN',-142203,3),(1912,8,1,'AN',-67574703,3),(1913,8,1,'AN',-157203,3),(1914,8,1,'AN',-795771741,3),(1915,8,1,'AN',-67893453,3),(1916,8,1,'AN',-172953,3),(1917,8,1,'AN',-68212953,3),(1918,8,1,'AN',-796864662,3),(1919,8,1,'AN',-189453,3),(1920,8,1,'AN',-797958333,3),(1921,8,1,'AN',-68533203,3),(1922,8,1,'AN',-206703,3),(1923,8,1,'AN',-799052754,3),(1924,8,1,'AN',-68854203,3),(1925,8,1,'AN',-224703,3),(1926,8,1,'AN',-800147925,3),(1927,8,1,'AN',-69175953,3),(1928,8,1,'AN',-243453,3),(1929,8,1,'AN',-801243846,3),(1930,8,1,'AN',-69498453,3),(1931,8,1,'AN',-262953,3),(1932,8,1,'AN',-802340517,3),(1933,8,1,'AN',-69821703,3),(1934,8,1,'AN',-70145703,3),(1935,8,1,'AN',-283203,3),(1936,8,1,'AN',-803437938,3),(1937,8,1,'AN',-304203,3),(1938,8,1,'AN',-804536109,3),(1939,8,1,'AN',-70470453,3),(1940,8,1,'AN',-325953,3),(1941,8,1,'AN',-805635030,3),(1942,8,1,'AN',-70795953,3),(1943,8,1,'AN',-348453,3),(1944,8,1,'AN',-806734701,3),(1945,8,1,'AN',-71122203,3),(1946,8,1,'AN',-371703,3),(1947,8,1,'AN',-807835122,3),(1948,8,1,'AN',-71449203,3),(1949,8,1,'AN',-395703,3),(1950,8,1,'AN',-808936293,3),(1951,8,1,'AN',-71776953,3),(1952,8,1,'AN',-420453,3),(1953,8,1,'AN',-810038214,3),(1954,8,1,'AN',-72105453,3),(1955,8,1,'AN',-445953,3),(1956,8,1,'AN',-811140885,3),(1957,8,1,'AN',-72434703,3),(1958,8,1,'AN',-472203,3),(1959,8,1,'AN',-812244306,3),(1960,8,1,'AN',-72764703,3),(1961,8,1,'AN',-499203,3),(1962,8,1,'AN',-813348477,3),(1963,8,1,'AN',-73095453,3),(1964,8,1,'AN',-526953,3),(1965,8,1,'AN',-814453398,3),(1966,8,1,'AN',-73426953,3),(1967,8,1,'AN',-555453,3),(1968,8,1,'AN',-815559069,3),(1969,8,1,'AN',-73759203,3),(1970,8,1,'AN',-584703,3),(1971,8,1,'AN',-816665490,3),(1972,8,1,'AN',-74092203,3),(1973,8,1,'AN',-614703,3),(1974,8,1,'AN',-817772661,3),(1975,8,1,'AN',-74425953,3),(1976,8,1,'AN',-645453,3),(1977,8,1,'AN',-818880582,3),(1978,8,1,'AN',-74760453,3),(1979,8,1,'AN',-676953,3),(1980,8,1,'AN',-819989253,3),(1981,8,1,'AN',-75095703,3),(1982,8,1,'AN',-709203,3),(1983,8,1,'AN',-821098674,3),(1984,8,1,'AN',-75431703,3),(1985,8,1,'AN',-742203,3),(1986,8,1,'AN',-822208845,3),(1987,8,1,'AN',-75768453,3),(1988,8,1,'AN',-775953,3),(1989,8,1,'AN',-823319766,3),(1990,8,1,'AN',-76105953,3),(1991,8,1,'AN',-810453,3),(1992,8,1,'AN',-824431437,3),(1993,8,1,'AN',-76444203,3),(1994,8,1,'AN',-845703,3),(1995,8,1,'AN',-825543858,3),(1996,8,1,'AN',-76783203,3),(1997,8,1,'AN',-881703,3),(1998,8,1,'AN',-826657029,3),(1999,8,1,'AN',-77122953,3),(2000,8,1,'AN',-918453,3),(2001,8,1,'AN',-827770950,3),(2002,8,1,'AN',-77463453,3),(2003,8,1,'AN',-955953,3),(2004,8,1,'AN',-828885621,3),(2005,8,1,'AN',-77804703,3),(2006,8,1,'AN',-994203,3),(2007,8,1,'AN',-830001042,3),(2008,8,1,'AN',-78146703,3),(2009,8,1,'AN',-1033203,3),(2010,8,1,'AN',-831117213,3),(2011,8,1,'AN',-78489453,3),(2012,8,1,'AN',-832234134,3),(2013,8,1,'AN',-1072953,3),(2014,8,1,'AN',-78832953,3),(2015,8,1,'AN',-833351805,3),(2016,8,1,'AN',-1113453,3),(2017,8,1,'AN',-79177203,3),(2018,8,1,'AN',-834470226,3),(2019,8,1,'AN',-1154703,3),(2020,8,1,'AN',-79522203,3),(2021,8,1,'AN',-835589397,3),(2022,8,1,'AN',-1196703,3),(2023,8,1,'AN',-79867953,3),(2024,8,1,'AN',-836709318,3),(2025,8,1,'AN',-1239453,3),(2026,8,1,'AN',-80214453,3),(2027,8,1,'AN',-837829989,3),(2028,8,1,'AN',-1282953,3),(2029,8,1,'AN',-80561703,3),(2030,8,1,'AN',-838951410,3),(2031,8,1,'AN',-1327203,3),(2032,8,1,'AN',-80909703,3),(2033,8,1,'AN',-840073581,3),(2034,8,1,'AN',-1372203,3),(2035,8,1,'AN',-81258453,3),(2036,8,1,'AN',-841196502,3),(2037,8,1,'AN',-1417953,3),(2038,8,1,'AN',-81607953,3),(2039,8,1,'AN',-842320173,3),(2040,8,1,'AN',-1464453,3),(2041,8,1,'AN',-81958203,3),(2042,8,1,'AN',-1511703,3),(2043,8,1,'AN',-843444594,3),(2044,8,1,'AN',-82309203,3),(2045,8,1,'AN',-844569765,3),(2046,8,1,'AN',-1559703,3),(2047,8,1,'AN',-82660953,3),(2048,8,1,'AN',-845695686,3),(2049,8,1,'AN',-83013453,3),(2050,8,1,'AN',-1608453,3),(2051,8,1,'AN',-846822357,3),(2052,8,1,'AN',-83366703,3),(2053,8,1,'AN',-1657953,3),(2054,8,1,'AN',-847949778,3),(2055,8,1,'AN',-83720703,3),(2056,8,1,'AN',-1708203,3),(2057,8,1,'AN',-849077949,3),(2058,8,1,'AN',-84075453,3),(2059,8,1,'AN',-1759203,3),(2060,8,1,'AN',-850206870,3),(2061,8,1,'AN',-84430953,3),(2062,8,1,'AN',-1810953,3),(2063,8,1,'AN',-851336541,3),(2064,8,1,'AN',-84787203,3),(2065,8,1,'AN',-1863453,3),(2066,8,1,'AN',-852466962,3),(2067,8,1,'AN',-85144203,3),(2068,8,1,'AN',-1916703,3),(2069,8,1,'AN',-853598133,3),(2070,8,1,'AN',-85501953,3),(2071,8,1,'AN',-1970703,3),(2072,8,1,'AN',-854730054,3),(2073,8,1,'AN',-85860453,3),(2074,8,1,'AN',-2025453,3),(2075,8,1,'AN',-855862725,3),(2076,8,1,'AN',-86219703,3),(2077,8,1,'AN',-2080953,3),(2078,8,1,'AN',-856996146,3),(2079,8,1,'AN',-86579703,3),(2080,8,1,'AN',-2137203,3),(2081,8,1,'AN',-858130317,3),(2082,8,1,'AN',-86940453,3),(2083,8,1,'AN',-2194203,3),(2084,8,1,'AN',-859265238,3),(2085,8,1,'AN',-87301953,3),(2086,8,1,'AN',-860400909,3),(2087,8,1,'AN',-2251953,3),(2088,8,1,'AN',-87664203,3),(2089,8,1,'AN',-861537330,3),(2090,8,1,'AN',-2310453,3),(2091,8,1,'AN',-88027203,3),(2092,8,1,'AN',-862674501,3),(2093,8,1,'AN',-2369703,3),(2094,8,1,'AN',-88390953,3),(2095,8,1,'AN',-863812422,3),(2096,8,1,'AN',-88755453,3),(2097,8,1,'AN',-2429703,3),(2098,8,1,'AN',-864951093,3),(2099,8,1,'AN',-89120703,3),(2100,8,1,'AN',-2490453,3),(2101,8,1,'AN',-866090514,3),(2102,8,1,'AN',-89486703,3),(2103,8,1,'AN',-2551953,3),(2104,8,1,'AN',-867230685,3),(2105,8,1,'AN',-89853453,3),(2106,8,1,'AN',-2614203,3),(2107,8,1,'AN',-868371606,3),(2108,8,1,'AN',-90220953,3),(2109,8,1,'AN',-2677203,3),(2110,8,1,'AN',-869513277,3),(2111,8,1,'AN',-90589203,3),(2112,8,1,'AN',-2740953,3),(2113,8,1,'AN',-870655698,3),(2114,8,1,'AN',-90958203,3),(2115,8,1,'AN',-2805453,3),(2116,8,1,'AN',-871798869,3),(2117,8,1,'AN',-91327953,3),(2118,8,1,'AN',-2870703,3),(2119,8,1,'AN',-91698453,3),(2120,8,1,'AN',-872942790,3),(2121,8,1,'AN',-2936703,3),(2122,8,1,'AN',-92069703,3),(2123,8,1,'AN',-874087461,3),(2124,8,1,'AN',-3003453,3),(2125,8,1,'AN',-92441703,3),(2126,8,1,'AN',-875232882,3),(2127,8,1,'AN',-3070953,3),(2128,8,1,'AN',-92814453,3),(2129,8,1,'AN',-876379053,3),(2130,8,1,'AN',-3139203,3),(2131,8,1,'AN',-93187953,3),(2132,8,1,'AN',-877525974,3),(2133,8,1,'AN',-3208203,3),(2134,8,1,'AN',-93562203,3),(2135,8,1,'AN',-878673645,3),(2136,8,1,'AN',-3277953,3),(2137,8,1,'AN',-93937203,3),(2138,8,1,'AN',-879822066,3),(2139,8,1,'AN',-94312953,3),(2140,8,1,'AN',-3348453,3),(2141,8,1,'AN',-94689453,3),(2142,8,1,'AN',-3419703,3),(2143,8,1,'AN',-880971237,3),(2144,8,1,'AN',-3491703,3),(2145,8,1,'AN',-95066703,3),(2146,8,1,'AN',-882121158,3),(2147,8,1,'AN',-95444703,3),(2148,8,1,'AN',-3564453,3),(2149,8,1,'AN',-883271829,3),(2150,8,1,'AN',-95823453,3),(2151,8,1,'AN',-884423250,3),(2152,8,1,'AN',-3637953,3),(2153,8,1,'AN',-96202953,3),(2154,8,1,'AN',-885575421,3),(2155,8,1,'AN',-3712203,3),(2156,8,1,'AN',-96583203,3),(2157,8,1,'AN',-886728342,3),(2158,8,1,'AN',-3787203,3),(2159,8,1,'AN',-96964203,3),(2160,8,1,'AN',-3862953,3),(2161,8,1,'AN',-887882013,3),(2162,8,1,'AN',-97345953,3),(2163,8,1,'AN',-3939453,3),(2164,8,1,'AN',-889036434,3),(2165,8,1,'AN',-97728453,3),(2166,8,1,'AN',-4016703,3),(2167,8,1,'AN',-890191605,3),(2168,8,1,'AN',-4094703,3),(2169,8,1,'AN',-98111703,3),(2170,8,1,'AN',-891347526,3),(2171,8,1,'AN',-4173453,3),(2172,8,1,'AN',-98495703,3),(2173,8,1,'AN',-892504197,3),(2174,8,1,'AN',-4252953,3),(2175,8,1,'AN',-98880453,3),(2176,8,1,'AN',-893661618,3),(2177,8,1,'AN',-4333203,3),(2178,8,1,'AN',-99265953,3),(2179,8,1,'AN',-894819789,3),(2180,8,1,'AN',-4414203,3),(2181,8,1,'AN',-99652203,3),(2182,8,1,'AN',-895978710,3),(2183,8,1,'AN',-4495953,3),(2184,8,1,'AN',-897138381,3),(2185,8,1,'AN',-4578453,3),(2186,8,1,'AN',-100039203,3),(2187,8,1,'AN',-898298802,3),(2188,8,1,'AN',-4661703,3),(2189,8,1,'AN',-100426953,3),(2190,8,1,'AN',-899459973,3),(2191,8,1,'AN',-4745703,3),(2192,8,1,'AN',-100815453,3),(2193,8,1,'AN',-900621894,3),(2194,8,1,'AN',-4830453,3),(2195,8,1,'AN',-101204703,3),(2196,8,1,'AN',-901784565,3),(2197,8,1,'AN',-4915953,3),(2198,8,1,'AN',-101594703,3),(2199,8,1,'AN',-902947986,3),(2200,8,1,'AN',-5002203,3),(2201,8,1,'AN',-101985453,3),(2202,8,1,'AN',-5089203,3),(2203,8,1,'AN',-904112157,3),(2204,8,1,'AN',-102376953,3),(2205,8,1,'AN',-5176953,3),(2206,8,1,'AN',-905277078,3),(2207,8,1,'AN',-102769203,3),(2208,8,1,'AN',-5265453,3),(2209,8,1,'AN',-906442749,3),(2210,8,1,'AN',-103162203,3),(2211,8,1,'AN',-5354703,3),(2212,8,1,'AN',-907609170,3),(2213,8,1,'AN',-103555953,3),(2214,8,1,'AN',-5444703,3),(2215,8,1,'AN',-908776341,3),(2216,8,1,'AN',-103950453,3),(2217,8,1,'AN',-5535453,3),(2218,8,1,'AN',-909944262,3),(2219,8,1,'AN',-104345703,3),(2220,8,1,'AN',-5626953,3),(2221,8,1,'AN',-911112933,3),(2222,8,1,'AN',-104741703,3),(2223,8,1,'AN',-5719203,3),(2224,8,1,'AN',-105138453,3),(2225,8,1,'AN',-912282354,3),(2226,8,1,'AN',-5812203,3),(2227,8,1,'AN',-105535953,3),(2228,8,1,'AN',-913452525,3),(2229,8,1,'AN',-5905953,3),(2230,8,1,'AN',-105934203,3),(2231,8,1,'AN',-914623446,3),(2232,8,1,'AN',-6000453,3),(2233,8,1,'AN',-106333203,3),(2234,8,1,'AN',-915795117,3),(2235,8,1,'AN',-6095703,3),(2236,8,1,'AN',-106732953,3),(2237,8,1,'AN',-916967538,3),(2238,8,1,'AN',-6191703,3),(2239,8,1,'AN',-107133453,3),(2240,8,1,'AN',-918140709,3),(2241,8,1,'AN',-6288453,3),(2242,8,1,'AN',-107534703,3),(2243,8,1,'AN',-919314630,3),(2244,8,1,'AN',-6385953,3),(2245,8,1,'AN',-107936703,3),(2246,8,1,'AN',-920489301,3),(2247,8,1,'AN',-6484203,3),(2248,8,1,'AN',-108339453,3),(2249,8,1,'AN',-921664722,3),(2250,8,1,'AN',-6583203,3),(2251,8,1,'AN',-108742953,3),(2252,8,1,'AN',-922840893,3),(2253,8,1,'AN',-6682953,3),(2254,8,1,'AN',-109147203,3),(2255,8,1,'AN',-924017814,3),(2256,8,1,'AN',-6783453,3),(2257,8,1,'AN',-109552203,3),(2258,8,1,'AN',-925195485,3),(2259,8,1,'AN',-6884703,3),(2260,8,1,'AN',-109957953,3),(2261,8,1,'AN',-926373906,3),(2262,8,1,'AN',-110364453,3),(2263,8,1,'AN',-6986703,3),(2264,8,1,'AN',-927553077,3),(2265,8,1,'AN',-7089453,3),(2266,8,1,'AN',-110771703,3),(2267,8,1,'AN',-928732998,3),(2268,8,1,'AN',-7192953,3),(2269,8,1,'AN',-929913669,3),(2270,8,1,'AN',-111179703,3),(2271,8,1,'AN',-7297203,3),(2272,8,1,'AN',-111588453,3),(2273,8,1,'AN',-931095090,3),(2274,8,1,'AN',-932277261,3),(2275,8,1,'AN',-111997953,3),(2276,8,1,'AN',-7402203,3),(2277,8,1,'AN',-933460182,3),(2278,8,1,'AN',-7507953,3),(2279,8,1,'AN',-112408203,3),(2280,8,1,'AN',-934643853,3),(2281,8,1,'AN',-7614453,3),(2282,8,1,'AN',-112819203,3),(2283,8,1,'AN',-935828274,3),(2284,8,1,'AN',-7721703,3),(2285,8,1,'AN',-113230953,3),(2286,8,1,'AN',-937013445,3),(2287,8,1,'AN',-7829703,3),(2288,8,1,'AN',-113643453,3),(2289,8,1,'AN',-938199366,3),(2290,8,1,'AN',-7938453,3),(2291,8,1,'AN',-114056703,3),(2292,8,1,'AN',-939386037,3),(2293,8,1,'AN',-8047953,3),(2294,8,1,'AN',-114470703,3),(2295,8,1,'AN',-8158203,3),(2296,8,1,'AN',-940573458,3),(2297,8,1,'AN',-114885453,3),(2298,8,1,'AN',-8269203,3),(2299,8,1,'AN',-115300953,3),(2300,8,1,'AN',-941761629,3),(2301,8,1,'AN',-8380953,3),(2302,8,1,'AN',-115717203,3),(2303,8,1,'AN',-942950550,3),(2304,8,1,'AN',-8493453,3),(2305,8,1,'AN',-116134203,3),(2306,8,1,'AN',-944140221,3),(2307,8,1,'AN',-8606703,3),(2308,8,1,'AN',-116551953,3),(2309,8,1,'AN',-945330642,3),(2310,8,1,'AN',-8720703,3),(2311,8,1,'AN',-116970453,3),(2312,8,1,'AN',-946521813,3),(2313,8,1,'AN',-8835453,3),(2314,8,1,'AN',-117389703,3),(2315,8,1,'AN',-947713734,3),(2316,8,1,'AN',-8950953,3),(2317,8,1,'AN',-117809703,3),(2318,8,1,'AN',-948906405,3),(2319,8,1,'AN',-9067203,3),(2320,8,1,'AN',-118230453,3),(2321,8,1,'AN',-950099826,3),(2322,8,1,'AN',-9184203,3),(2323,8,1,'AN',-118651953,3),(2324,8,1,'AN',-951293997,3),(2325,8,1,'AN',-119074203,3),(2326,8,1,'AN',-9301953,3),(2327,8,1,'AN',-952488918,3),(2328,8,1,'AN',-119497203,3),(2329,8,1,'AN',-9420453,3),(2330,8,1,'AN',-953684589,3),(2331,8,1,'AN',-119920953,3),(2332,8,1,'AN',-9539703,3),(2333,8,1,'AN',-954881010,3),(2334,8,1,'AN',-120345453,3),(2335,8,1,'AN',-9659703,3),(2336,8,1,'AN',-956078181,3),(2337,8,1,'AN',-120770703,3),(2338,8,1,'AN',-957276102,3),(2339,8,1,'AN',-9780453,3),(2340,8,1,'AN',-958474773,3),(2341,8,1,'AN',-121196703,3),(2342,8,1,'AN',-9901953,3),(2343,8,1,'AN',-959674194,3),(2344,8,1,'AN',-121623453,3),(2345,8,1,'AN',-10024203,3),(2346,8,1,'AN',-122050953,3),(2347,8,1,'AN',-960874365,3),(2348,8,1,'AN',-10147203,3),(2349,8,1,'AN',-122479203,3),(2350,8,1,'AN',-962075286,3),(2351,8,1,'AN',-10270953,3),(2352,8,1,'AN',-963276957,3),(2353,8,1,'AN',-122908203,3),(2354,8,1,'AN',-10395453,3),(2355,8,1,'AN',-964479378,3),(2356,8,1,'AN',-123337953,3),(2357,8,1,'AN',-10520703,3),(2358,8,1,'AN',-965682549,3),(2359,8,1,'AN',-123768453,3),(2360,8,1,'AN',-10646703,3),(2361,8,1,'AN',-966886470,3),(2362,8,1,'AN',-124199703,3),(2363,8,1,'AN',-10773453,3),(2364,8,1,'AN',-968091141,3),(2365,8,1,'AN',-124631703,3),(2366,8,1,'AN',-969296562,3),(2367,8,1,'AN',-10900953,3),(2368,8,1,'AN',-125064453,3),(2369,8,1,'AN',-970502733,3),(2370,8,1,'AN',-11029203,3),(2371,8,1,'AN',-125497953,3),(2372,8,1,'AN',-971709654,3),(2373,8,1,'AN',-11158203,3),(2374,8,1,'AN',-125932203,3),(2375,8,1,'AN',-972917325,3),(2376,8,1,'AN',-11287953,3),(2377,8,1,'AN',-126367203,3),(2378,8,1,'AN',-974125746,3),(2379,8,1,'AN',-11418453,3),(2380,8,1,'AN',-126802953,3),(2381,8,1,'AN',-975334917,3),(2382,8,1,'AN',-11549703,3),(2383,8,1,'AN',-127239453,3),(2384,8,1,'AN',-976544838,3),(2385,8,1,'AN',-11681703,3),(2386,8,1,'AN',-127676703,3),(2387,8,1,'AN',-977755509,3),(2388,8,1,'AN',-11814453,3),(2389,8,1,'AN',-128114703,3),(2390,8,1,'AN',-978966930,3),(2391,8,1,'AN',-128553453,3),(2392,8,1,'AN',-11947953,3),(2393,8,1,'AN',-980179101,3),(2394,8,1,'AN',-12082203,3),(2395,8,1,'AN',-981392022,3),(2396,8,1,'AN',-128992953,3),(2397,8,1,'AN',-12217203,3),(2398,8,1,'AN',-982605693,3),(2399,8,1,'AN',-129433203,3),(2400,8,1,'AN',-12352953,3),(2401,8,1,'AN',-983820114,3),(2402,8,1,'AN',-129874203,3),(2403,8,1,'AN',-12489453,3),(2404,8,1,'AN',-985035285,3),(2405,8,1,'AN',-130315953,3),(2406,8,1,'AN',-12626703,3),(2407,8,1,'AN',-986251206,3),(2408,8,1,'AN',-130758453,3),(2409,8,1,'AN',-12764703,3),(2410,8,1,'AN',-987467877,3),(2411,8,1,'AN',-131201703,3),(2412,8,1,'AN',-12903453,3),(2413,8,1,'AN',-988685298,3),(2414,8,1,'AN',-131645703,3),(2415,8,1,'AN',-13042953,3),(2416,8,1,'AN',-989903469,3),(2417,8,1,'AN',-132090453,3),(2418,8,1,'AN',-13183203,3),(2419,8,1,'AN',-991122390,3),(2420,8,1,'AN',-132535953,3),(2421,8,1,'AN',-13324203,3),(2422,8,1,'AN',-992342061,3),(2423,8,1,'AN',-132982203,3),(2424,8,1,'AN',-13465953,3),(2425,8,1,'AN',-993562482,3),(2426,8,1,'AN',-133429203,3),(2427,8,1,'AN',-13608453,3),(2428,8,1,'AN',-133876953,3),(2429,8,1,'AN',-994783653,3),(2430,8,1,'AN',-13751703,3),(2431,8,1,'AN',-134325453,3),(2432,8,1,'AN',-13895703,3),(2433,8,1,'AN',-996005574,3),(2434,8,1,'AN',-134774703,3),(2435,8,1,'AN',-14040453,3),(2436,8,1,'AN',-997228245,3),(2437,8,1,'AN',-135224703,3),(2438,8,1,'AN',-14185953,3),(2439,8,1,'AN',-998451666,3),(2440,8,1,'AN',-135675453,3),(2441,8,1,'AN',-14332203,3),(2442,8,1,'AN',-999675837,3),(2443,8,1,'AN',-136126953,3),(2444,8,1,'AN',-14479203,3),(2445,8,1,'AN',-1000900758,3),(2446,8,1,'AN',-136579203,3),(2447,8,1,'AN',-14626953,3),(2448,8,1,'AN',-1002126429,3),(2449,8,1,'AN',-137032203,3),(2450,8,1,'AN',-1003352850,3),(2451,8,1,'AN',-14775453,3),(2452,8,1,'AN',-137485953,3),(2453,8,1,'AN',-1004580021,3),(2454,8,1,'AN',-14924703,3),(2455,8,1,'AN',-137940453,3),(2456,8,1,'AN',-1005807942,3),(2457,8,1,'AN',-138395703,3),(2458,8,1,'AN',-15074703,3),(2459,8,1,'AN',-1007036613,3),(2460,8,1,'AN',-138851703,3),(2461,8,1,'AN',-15225453,3),(2462,8,1,'AN',-1008266034,3),(2463,8,1,'AN',-139308453,3),(2464,8,1,'AN',-15376953,3),(2465,8,1,'AN',-139765953,3),(2466,8,1,'AN',-1009496205,3),(2467,8,1,'AN',-15529203,3),(2468,8,1,'AN',-140224203,3),(2469,8,1,'AN',-15682203,3),(2470,8,1,'AN',-1010727126,3),(2471,8,1,'AN',-140683203,3),(2472,8,1,'AN',-15835953,3),(2473,8,1,'AN',-1011958797,3),(2474,8,1,'AN',-141142953,3),(2475,8,1,'AN',-15990453,3),(2476,8,1,'AN',-141603453,3),(2477,8,1,'AN',-1013191218,3),(2478,8,1,'AN',-142064703,3),(2479,8,1,'AN',-1014424389,3),(2480,8,1,'AN',-16145703,3),(2481,8,1,'AN',-142526703,3),(2482,8,1,'AN',-16301703,3),(2483,8,1,'AN',-1015658310,3),(2484,8,1,'AN',-142989453,3),(2485,8,1,'AN',-1016892981,3),(2486,8,1,'AN',-16458453,3),(2487,8,1,'AN',-143452953,3),(2488,8,1,'AN',-1018128402,3),(2489,8,1,'AN',-16615953,3),(2490,8,1,'AN',-143917203,3),(2491,8,1,'AN',-1019364573,3),(2492,8,1,'AN',-16774203,3),(2493,8,1,'AN',-144382203,3),(2494,8,1,'AN',-1020601494,3),(2495,8,1,'AN',-16933203,3),(2496,8,1,'AN',-144847953,3),(2497,8,1,'AN',-17092953,3),(2498,8,1,'AN',-1021839165,3),(2499,8,1,'AN',-145314453,3),(2500,8,1,'AN',-1023077586,3),(2501,8,1,'AN',-17253453,3),(2502,8,1,'AN',-145781703,3),(2503,8,1,'AN',-1024316757,3),(2504,8,1,'AN',-17414703,3),(2505,8,1,'AN',-146249703,3),(2506,8,1,'AN',-1025556678,3),(2507,8,1,'AN',-17576703,3),(2508,8,1,'AN',-146718453,3),(2509,8,1,'AN',-1026797349,3),(2510,8,1,'AN',-147187953,3),(2511,8,1,'AN',-17739453,3),(2512,8,1,'AN',-1028038770,3),(2513,8,1,'AN',-147658203,3),(2514,8,1,'AN',-17902953,3),(2515,8,1,'AN',-1029280941,3),(2516,8,1,'AN',-148129203,3),(2517,8,1,'AN',-18067203,3),(2518,8,1,'AN',-1030523862,3),(2519,8,1,'AN',-148600953,3),(2520,8,1,'AN',-18232203,3),(2521,8,1,'AN',-1031767533,3),(2522,8,1,'AN',-149073453,3),(2523,8,1,'AN',-18397953,3),(2524,8,1,'AN',-1033011954,3),(2525,8,1,'AN',-149546703,3),(2526,8,1,'AN',-18564453,3),(2527,8,1,'AN',-1034257125,3),(2528,8,1,'AN',-150020703,3),(2529,8,1,'AN',-18731703,3),(2530,8,1,'AN',-1035503046,3),(2531,8,1,'AN',-150495453,3),(2532,8,1,'AN',-18899703,3),(2533,8,1,'AN',-1036749717,3),(2534,8,1,'AN',-19068453,3),(2535,8,1,'AN',-150970953,3),(2536,8,1,'AN',-1037997138,3),(2537,8,1,'AN',-19237953,3),(2538,8,1,'AN',-151447203,3),(2539,8,1,'AN',-1039245309,3),(2540,8,1,'AN',-19408203,3),(2541,8,1,'AN',-151924203,3),(2542,8,1,'AN',-1040494230,3),(2543,8,1,'AN',-152401953,3),(2544,8,1,'AN',-19579203,3),(2545,8,1,'AN',-1041743901,3),(2546,8,1,'AN',-19750953,3),(2547,8,1,'AN',-152880453,3),(2548,8,1,'AN',-1042994322,3),(2549,8,1,'AN',-153359703,3),(2550,8,1,'AN',-19923453,3),(2551,8,1,'AN',-1044245493,3),(2552,8,1,'AN',-153839703,3),(2553,8,1,'AN',-20096703,3),(2554,8,1,'AN',-1045497414,3),(2555,8,1,'AN',-154320453,3),(2556,8,1,'AN',-20270703,3),(2557,8,1,'AN',-1046750085,3),(2558,8,1,'AN',-154801953,3),(2559,8,1,'AN',-1048003506,3),(2560,8,1,'AN',-20445453,3),(2561,8,1,'AN',-155284203,3),(2562,8,1,'AN',-20620953,3),(2563,8,1,'AN',-1049257677,3),(2564,8,1,'AN',-155767203,3),(2565,8,1,'AN',-20797203,3),(2566,8,1,'AN',-1050512598,3),(2567,8,1,'AN',-156250953,3),(2568,8,1,'AN',-20974203,3),(2569,8,1,'AN',-1051768269,3),(2570,8,1,'AN',-156735453,3),(2571,8,1,'AN',-21151953,3),(2572,8,1,'AN',-1053024690,3),(2573,8,1,'AN',-157220703,3),(2574,8,1,'AN',-21330453,3),(2575,8,1,'AN',-1054281861,3),(2576,8,1,'AN',-157706703,3),(2577,8,1,'AN',-21509703,3),(2578,8,1,'AN',-1055539782,3),(2579,8,1,'AN',-158193453,3),(2580,8,1,'AN',-21689703,3),(2581,8,1,'AN',-1056798453,3),(2582,8,1,'AN',-158680953,3),(2583,8,1,'AN',-21870453,3),(2584,8,1,'AN',-1058057874,3),(2585,8,1,'AN',-159169203,3),(2586,8,1,'AN',-22051953,3),(2587,8,1,'AN',-1059318045,3),(2588,8,1,'AN',-159658203,3),(2589,8,1,'AN',-22234203,3),(2590,8,1,'AN',-1060578966,3),(2591,8,1,'AN',-160147953,3),(2592,8,1,'AN',-22417203,3),(2593,8,1,'AN',-1061840637,3),(2594,8,1,'AN',-160638453,3),(2595,8,1,'AN',-1063103058,3),(2596,8,1,'AN',-22600953,3),(2597,8,1,'AN',-161129703,3),(2598,8,1,'AN',-1064366229,3),(2599,8,1,'AN',-22785453,3),(2600,8,1,'AN',-161621703,3),(2601,8,1,'AN',-1065630150,3),(2602,8,1,'AN',-22970703,3),(2603,8,1,'AN',-162114453,3),(2604,8,1,'AN',-1066894821,3),(2605,8,1,'AN',-23156703,3),(2606,8,1,'AN',-162607953,3),(2607,8,1,'AN',-1068160242,3),(2608,8,1,'AN',-23343453,3),(2609,8,1,'AN',-163102203,3),(2610,8,1,'AN',-1069426413,3),(2611,8,1,'AN',-23530953,3),(2612,8,1,'AN',-163597203,3),(2613,8,1,'AN',-1070693334,3),(2614,8,1,'AN',-23719203,3),(2615,8,1,'AN',-164092953,3),(2616,8,1,'AN',-1071961005,3),(2617,8,1,'AN',-23908203,3),(2618,8,1,'AN',-164589453,3),(2619,8,1,'AN',-1073229426,3),(2620,8,1,'AN',-24097953,3),(2621,8,1,'AN',-165086703,3),(2622,8,1,'AN',-1074498597,3),(2623,8,1,'AN',-24288453,3),(2624,8,1,'AN',-165584703,3),(2625,8,1,'AN',-1075768518,3),(2626,8,1,'AN',-24479703,3),(2627,8,1,'AN',-166083453,3),(2628,8,1,'AN',-1077039189,3),(2629,8,1,'AN',-24671703,3),(2630,8,1,'AN',-1078310610,3),(2631,8,1,'AN',-166582953,3),(2632,8,1,'AN',-24864453,3),(2633,8,1,'AN',-1079582781,3),(2634,8,1,'AN',-167083203,3),(2635,8,1,'AN',-25057953,3),(2636,8,1,'AN',-1080855702,3),(2637,8,1,'AN',-167584203,3),(2638,8,1,'AN',-25252203,3),(2639,8,1,'AN',-168085953,3),(2640,8,1,'AN',-25447203,3),(2641,8,1,'AN',-1082129373,3),(2642,8,1,'AN',-168588453,3),(2643,8,1,'AN',-25642953,3),(2644,8,1,'AN',-1083403794,3),(2645,8,1,'AN',-169091703,3),(2646,8,1,'AN',-25839453,3),(2647,8,1,'AN',-1084678965,3),(2648,8,1,'AN',-26036703,3),(2649,8,1,'AN',-169595703,3),(2650,8,1,'AN',-1085954886,3),(2651,8,1,'AN',-26234703,3),(2652,8,1,'AN',-170100453,3),(2653,8,1,'AN',-1087231557,3),(2654,8,1,'AN',-26433453,3),(2655,8,1,'AN',-1088508978,3),(2656,8,1,'AN',-170605953,3),(2657,8,1,'AN',-171112203,3),(2658,8,1,'AN',-1089787149,3),(2659,8,1,'AN',-26632953,3),(2660,8,1,'AN',-171619203,3),(2661,8,1,'AN',-1091066070,3),(2662,8,1,'AN',-26833203,3),(2663,8,1,'AN',-172126953,3),(2664,8,1,'AN',-1092345741,3),(2665,8,1,'AN',-27034203,3),(2666,8,1,'AN',-172635453,3),(2667,8,1,'AN',-1093626162,3),(2668,8,1,'AN',-27235953,3),(2669,8,1,'AN',-1094907333,3),(2670,8,1,'AN',-173144703,3),(2671,8,1,'AN',-27438453,3),(2672,8,1,'AN',-1096189254,3),(2673,8,1,'AN',-173654703,3),(2674,8,1,'AN',-27641703,3),(2675,8,1,'AN',-1097471925,3),(2676,8,1,'AN',-174165453,3),(2677,8,1,'AN',-27845703,3),(2678,8,1,'AN',-1098755346,3),(2679,8,1,'AN',-174676953,3),(2680,8,1,'AN',-28050453,3),(2681,8,1,'AN',-1100039517,3),(2682,8,1,'AN',-175189203,3),(2683,8,1,'AN',-28255953,3),(2684,8,1,'AN',-1101324438,3),(2685,8,1,'AN',-175702203,3),(2686,8,1,'AN',-28462203,3),(2687,8,1,'AN',-1102610109,3),(2688,8,1,'AN',-176215953,3),(2689,8,1,'AN',-28669203,3),(2690,8,1,'AN',-1103896530,3),(2691,8,1,'AN',-28876953,3),(2692,8,1,'AN',-176730453,3),(2693,8,1,'AN',-1105183701,3),(2694,8,1,'AN',-29085453,3),(2695,8,1,'AN',-177245703,3),(2696,8,1,'AN',-1106471622,3),(2697,8,1,'AN',-29294703,3),(2698,8,1,'AN',-177761703,3),(2699,8,1,'AN',-1107760293,3),(2700,8,1,'AN',-29504703,3),(2701,8,1,'AN',-178278453,3),(2702,8,1,'AN',-1109049714,3),(2703,8,1,'AN',-29715453,3),(2704,8,1,'AN',-178795953,3),(2705,8,1,'AN',-1110339885,3),(2706,8,1,'AN',-29926953,3),(2707,8,1,'AN',-179314203,3),(2708,8,1,'AN',-1111630806,3),(2709,8,1,'AN',-30139203,3),(2710,8,1,'AN',-179833203,3),(2711,8,1,'AN',-1112922477,3),(2712,8,1,'AN',-30352203,3),(2713,8,1,'AN',-180352953,3),(2714,8,1,'AN',-1114214898,3),(2715,8,1,'AN',-30565953,3),(2716,8,1,'AN',-180873453,3),(2717,8,1,'AN',-1115508069,3),(2718,8,1,'AN',-30780453,3),(2719,8,1,'AN',-181394703,3),(2720,8,1,'AN',-1116801990,3),(2721,8,1,'AN',-30995703,3),(2722,8,1,'AN',-181916703,3),(2723,8,1,'AN',-1118096661,3),(2724,8,1,'AN',-31211703,3),(2725,8,1,'AN',-182439453,3),(2726,8,1,'AN',-1119392082,3),(2727,8,1,'AN',-31428453,3),(2728,8,1,'AN',-182962953,3),(2729,8,1,'AN',-1120688253,3),(2730,8,1,'AN',-183487203,3),(2731,8,1,'AN',-31645953,3),(2732,8,1,'AN',-1121985174,3),(2733,8,1,'AN',-184012203,3),(2734,8,1,'AN',-31864203,3),(2735,8,1,'AN',-1123282845,3),(2736,8,1,'AN',-184537953,3),(2737,8,1,'AN',-32083203,3),(2738,8,1,'AN',-1124581266,3),(2739,8,1,'AN',-185064453,3),(2740,8,1,'AN',-32302953,3),(2741,8,1,'AN',-1125880437,3),(2742,8,1,'AN',-185591703,3),(2743,8,1,'AN',-32523453,3),(2744,8,1,'AN',-186119703,3),(2745,8,1,'AN',-1127180358,3),(2746,8,1,'AN',-32744703,3),(2747,8,1,'AN',-186648453,3),(2748,8,1,'AN',-1128481029,3),(2749,8,1,'AN',-32966703,3),(2750,8,1,'AN',-187177953,3),(2751,8,1,'AN',-1129782450,3),(2752,8,1,'AN',-33189453,3),(2753,8,1,'AN',-187708203,3),(2754,8,1,'AN',-1131084621,3),(2755,8,1,'AN',-33412953,3),(2756,8,1,'AN',-188239203,3),(2757,8,1,'AN',-1132387542,3),(2758,8,1,'AN',-33637203,3),(2759,8,1,'AN',-188770953,3),(2760,8,1,'AN',-1133691213,3),(2761,8,1,'AN',-33862203,3),(2762,8,1,'AN',-189303453,3),(2763,8,1,'AN',-1134995634,3),(2764,8,1,'AN',-34087953,3),(2765,8,1,'AN',-189836703,3),(2766,8,1,'AN',-1136300805,3),(2767,8,1,'AN',-34314453,3),(2768,8,1,'AN',-190370703,3),(2769,8,1,'AN',-1137606726,3),(2770,8,1,'AN',-34541703,3),(2771,8,1,'AN',-190905453,3),(2772,8,1,'AN',-1138913397,3),(2773,8,1,'AN',-34769703,3),(2774,8,1,'AN',-191440953,3),(2775,8,1,'AN',-1140220818,3),(2776,8,1,'AN',-34998453,3),(2777,8,1,'AN',-191977203,3),(2778,8,1,'AN',-1141528989,3),(2779,8,1,'AN',-35227953,3),(2780,8,1,'AN',-192514203,3),(2781,8,1,'AN',-1142837910,3),(2782,8,1,'AN',-35458203,3),(2783,8,1,'AN',-193051953,3),(2784,8,1,'AN',-1144147581,3),(2785,8,1,'AN',-35689203,3),(2786,8,1,'AN',-193590453,3),(2787,8,1,'AN',-1145458002,3),(2788,8,1,'AN',-35920953,3),(2789,8,1,'AN',-194129703,3),(2790,8,1,'AN',-1146769173,3),(2791,8,1,'AN',-36153453,3),(2792,8,1,'AN',-194669703,3),(2793,8,1,'AN',-1148081094,3),(2794,8,1,'AN',-36386703,3),(2795,8,1,'AN',-195210453,3),(2796,8,1,'AN',-1149393765,3),(2797,8,1,'AN',-36620703,3),(2798,8,1,'AN',-195751953,3),(2799,8,1,'AN',-1150707186,3),(2800,8,1,'AN',-36855453,3),(2801,8,1,'AN',-196294203,3),(2802,8,1,'AN',-1152021357,3),(2803,8,1,'AN',-37090953,3),(2804,8,1,'AN',-196837203,3),(2805,8,1,'AN',-1153336278,3),(2806,8,1,'AN',-37327203,3),(2807,8,1,'AN',-197380953,3),(2808,8,1,'AN',-1154651949,3),(2809,8,1,'AN',-37564203,3),(2810,8,1,'AN',-197925453,3),(2811,8,1,'AN',-1155968370,3),(2812,8,1,'AN',-37801953,3),(2813,8,1,'AN',-198470703,3),(2814,8,1,'AN',-1157285541,3),(2815,8,1,'AN',-38040453,3),(2816,8,1,'AN',-1158603462,3),(2817,8,1,'AN',-199016703,3),(2818,8,1,'AN',-38279703,3),(2819,8,1,'AN',-1159922133,3),(2820,8,1,'AN',-199563453,3),(2821,8,1,'AN',-38519703,3),(2822,8,1,'AN',-1161241554,3),(2823,8,1,'AN',-200110953,3),(2824,8,1,'AN',-38760453,3),(2825,8,1,'AN',-1162561725,3),(2826,8,1,'AN',-200659203,3),(2827,8,1,'AN',-1163882646,3),(2828,8,1,'AN',-39001953,3),(2829,8,1,'AN',-201208203,3),(2830,8,1,'AN',-1165204317,3),(2831,8,1,'AN',-39244203,3),(2832,8,1,'AN',-201757953,3),(2833,8,1,'AN',-1166526738,3),(2834,8,1,'AN',-39487203,3),(2835,8,1,'AN',-202308453,3),(2836,8,1,'AN',-1167849909,3),(2837,8,1,'AN',-39730953,3),(2838,8,1,'AN',-202859703,3),(2839,8,1,'AN',-1169173830,3),(2840,8,1,'AN',-39975453,3),(2841,8,1,'AN',-203411703,3),(2842,1,1,'AN',-40220703,3),(2843,1,1,'AN',-1170498501,3),(2844,1,1,'AN',-203964453,3),(2845,1,1,'AN',-40466703,3),(2846,1,1,'AN',-1171823922,3),(2847,1,1,'AN',-204517953,3),(2848,1,1,'AN',-40713453,3),(2849,1,1,'AN',-1173150093,3),(2850,1,1,'AN',-205072203,3),(2851,1,1,'AN',-40960953,3),(2852,1,1,'AN',-1174477014,3),(2853,1,1,'AN',-205627203,3),(2854,1,1,'AN',-41209203,3),(2855,1,1,'AN',-206182953,3),(2856,1,1,'AN',-1175804685,3),(2857,1,1,'AN',-41458203,3),(2858,1,1,'AN',-206739453,3),(2859,1,1,'AN',-1177133106,3),(2860,1,1,'AN',-41707953,3),(2861,1,1,'AN',-207296703,3),(2862,1,1,'AN',-1178462277,3),(2863,1,1,'AN',-41958453,3),(2864,1,1,'AN',-207854703,3),(2865,1,1,'AN',-1179792198,3),(2866,1,1,'AN',-42209703,3),(2867,1,1,'AN',-208413453,3),(2868,1,1,'AN',-1181122869,3),(2869,1,1,'AN',-42461703,3),(2870,1,1,'AN',-208972953,3),(2871,1,1,'AN',-1182454290,3),(2872,1,1,'AN',-209533203,3),(2873,1,1,'AN',-42714453,3),(2874,1,1,'AN',-1183786461,3),(2875,1,1,'AN',-210094203,3),(2876,1,1,'AN',-42967953,3),(2877,1,1,'AN',-1185119382,3),(2878,1,1,'AN',-210655953,3),(2879,1,1,'AN',-43222203,3),(2880,1,1,'AN',-1186453053,3),(2881,1,1,'AN',-43477203,3),(2882,1,1,'AN',-211218453,3),(2883,1,1,'AN',-1187787474,3),(2884,1,1,'AN',-43732953,3),(2885,1,1,'AN',-211781703,3),(2886,1,1,'AN',-1189122645,3),(2887,1,1,'AN',-43989453,3),(2888,1,1,'AN',-1190458566,3),(2889,1,1,'AN',-212345703,3),(2890,1,1,'AN',-44246703,3),(2891,1,1,'AN',-1191795237,3),(2892,1,1,'AN',-212910453,3),(2893,1,1,'AN',-1193132658,3),(2894,1,1,'AN',-44504703,3),(2895,1,1,'AN',-213475953,3),(2896,1,1,'AN',-44763453,3),(2897,1,1,'AN',-1194470829,3),(2898,1,1,'AN',-214042203,3),(2899,1,1,'AN',-45022953,3),(2900,1,1,'AN',-1195809750,3),(2901,1,1,'AN',-214609203,3),(2902,1,1,'AN',-1197149421,3),(2903,1,1,'AN',-45283203,3),(2904,1,1,'AN',-215176953,3),(2905,1,1,'AN',-1198489842,3),(2906,1,1,'AN',-215745453,3),(2907,1,1,'AN',-45544203,3),(2908,1,1,'AN',-1199831013,3),(2909,1,1,'AN',-216314703,3),(2910,1,1,'AN',-45805953,3),(2911,1,1,'AN',-216884703,3),(2912,1,1,'AN',-1201172934,3),(2913,1,1,'AN',-46068453,3),(2914,1,1,'AN',-1202515605,3),(2915,1,1,'AN',-217455453,3),(2916,1,1,'AN',-46331703,3),(2917,1,1,'AN',-1203859026,3),(2918,1,1,'AN',-218026953,3),(2919,1,1,'AN',-46595703,3),(2920,1,1,'AN',-1205203197,3),(2921,1,1,'AN',-46860453,3),(2922,1,1,'AN',-218599203,3),(2923,1,1,'AN',-1206548118,3),(2924,1,1,'AN',-219172203,3),(2925,1,1,'AN',-47125953,3),(2926,1,1,'AN',-1207893789,3),(2927,1,1,'AN',-219745953,3),(2928,1,1,'AN',-47392203,3),(2929,1,1,'AN',-1209240210,3),(2930,1,1,'AN',-220320453,3),(2931,1,1,'AN',-47659203,3),(2932,1,1,'AN',-1210587381,3),(2933,1,1,'AN',-220895703,3),(2934,1,1,'AN',-47926953,3),(2935,1,1,'AN',-1211935302,3),(2936,1,1,'AN',-221471703,3),(2937,1,1,'AN',-48195453,3),(2938,1,1,'AN',-1213283973,3),(2939,1,1,'AN',-222048453,3),(2940,1,1,'AN',-48464703,3),(2941,1,1,'AN',-1214633394,3),(2942,1,1,'AN',-222625953,3),(2943,1,1,'AN',-48734703,3),(2944,1,1,'AN',-223204203,3),(2945,1,1,'AN',-1215983565,3),(2946,1,1,'AN',-49005453,3),(2947,1,1,'AN',-1217334486,3),(2948,1,1,'AN',-223783203,3),(2949,1,1,'AN',-49276953,3),(2950,1,1,'AN',-224362953,3),(2951,1,1,'AN',-1218686157,3),(2952,1,1,'AN',-49549203,3),(2953,1,1,'AN',-224943453,3),(2954,1,1,'AN',-1220038578,3),(2955,1,1,'AN',-49822203,3),(2956,1,1,'AN',-225524703,3),(2957,1,1,'AN',-1221391749,3),(2958,1,1,'AN',-50095953,3),(2959,1,1,'AN',-226106703,3),(2960,1,1,'AN',-1222745670,3),(2961,1,1,'AN',-50370453,3),(2962,1,1,'AN',-226689453,3),(2963,1,1,'AN',-1224100341,3),(2964,1,1,'AN',-50645703,3),(2965,1,1,'AN',-227272953,3),(2966,1,1,'AN',-1225455762,3),(2967,1,1,'AN',-50921703,3),(2968,1,1,'AN',-227857203,3),(2969,1,1,'AN',-1226811933,3),(2970,1,1,'AN',-51198453,3),(2971,1,1,'AN',-228442203,3),(2972,1,1,'AN',-1228168854,3),(2973,1,1,'AN',-51475953,3),(2974,1,1,'AN',-229027953,3),(2975,1,1,'AN',-1229526525,3),(2976,1,1,'AN',-51754203,3),(2977,1,1,'AN',-229614453,3),(2978,1,1,'AN',-1230884946,3),(2979,1,1,'AN',-52033203,3),(2980,1,1,'AN',-230201703,3),(2981,1,1,'AN',-1232244117,3),(2982,1,1,'AN',-52312953,3),(2983,1,1,'AN',-230789703,3),(2984,1,1,'AN',-1233604038,3),(2985,1,1,'AN',-231378453,3),(2986,1,1,'AN',-52593453,3),(2987,1,1,'AN',-1234964709,3),(2988,1,1,'AN',-231967953,3),(2989,1,1,'AN',-52874703,3),(2990,1,1,'AN',-1236326130,3),(2991,1,1,'AN',-232558203,3),(2992,1,1,'AN',-53156703,3),(2993,1,1,'AN',-1237688301,3),(2994,1,1,'AN',-233149203,3),(2995,1,1,'AN',-53439453,3),(2996,1,1,'AN',-1239051222,3),(2997,1,1,'AN',-233740953,3),(2998,1,1,'AN',-53722953,3),(2999,1,1,'AN',-1240414893,3),(3000,1,1,'AN',-234333453,3),(3001,1,1,'AN',-54007203,3),(3002,1,1,'AN',-1241779314,3),(3003,1,1,'AN',-234926703,3),(3004,1,1,'AN',-54292203,3),(3005,1,1,'AN',-1243144485,3),(3006,1,1,'AN',-235520703,3),(3007,1,1,'AN',-54577953,3),(3008,1,1,'AN',-1244510406,3),(3009,1,1,'AN',-236115453,3),(3010,1,1,'AN',-54864453,3),(3011,1,1,'AN',-1245877077,3),(3012,1,1,'AN',-236710953,3),(3013,1,1,'AN',-55151703,3),(3014,1,1,'AN',-1247244498,3),(3015,1,1,'AN',-237307203,3),(3016,1,1,'AN',-55439703,3),(3017,1,1,'AN',-1248612669,3),(3018,1,1,'AN',-237904203,3),(3019,1,1,'AN',-55728453,3),(3020,1,1,'AN',-1249981590,3),(3021,1,1,'AN',-1251351261,3),(3022,1,1,'AN',-238501953,3),(3023,1,1,'AN',-56017953,3),(3024,1,1,'AN',-239100453,3),(3025,1,1,'AN',-1252721682,3),(3026,1,1,'AN',-56308203,3),(3027,1,1,'AN',-239699703,3),(3028,1,1,'AN',-56599203,3),(3029,1,1,'AN',-1254092853,3),(3030,1,1,'AN',-240299703,3),(3031,1,1,'AN',-56890953,3),(3032,1,1,'AN',-1255464774,3),(3033,1,1,'AN',-240900453,3),(3034,1,1,'AN',-57183453,3),(3035,1,1,'AN',-1256837445,3),(3036,1,1,'AN',-241501953,3),(3037,1,1,'AN',-57476703,3),(3038,1,1,'AN',-1258210866,3),(3039,1,1,'AN',-242104203,3),(3040,1,1,'AN',-1259585037,3),(3041,1,1,'AN',-57770703,3),(3042,1,1,'AN',-1260959958,3),(3043,1,1,'AN',-242707203,3),(3044,1,1,'AN',-58065453,3),(3045,1,1,'AN',-1262335629,3),(3046,1,1,'AN',-243310953,3),(3047,1,1,'AN',-58360953,3),(3048,1,1,'AN',-1263712050,3),(3049,1,1,'AN',-243915453,3),(3050,1,1,'AN',-58657203,3),(3051,1,1,'AN',-244520703,3),(3052,1,1,'AN',-58954203,3),(3053,1,1,'AN',-1265089221,3),(3054,1,1,'AN',-59251953,3),(3055,1,1,'AN',-245126703,3),(3056,1,1,'AN',-1266467142,3),(3057,1,1,'AN',-59550453,3),(3058,1,1,'AN',-245733453,3),(3059,1,1,'AN',-1267845813,3),(3060,1,1,'AN',-59849703,3),(3061,1,1,'AN',-1269225234,3),(3062,1,1,'AN',-246340953,3),(3063,1,1,'AN',-60149703,3),(3064,1,1,'AN',-246949203,3),(3065,1,1,'AN',-1270605405,3),(3066,1,1,'AN',-60450453,3),(3067,1,1,'AN',-247558203,3),(3068,1,1,'AN',-1271986326,3),(3069,1,1,'AN',-60751953,3),(3070,1,1,'AN',-248167953,3),(3071,1,1,'AN',-1273367997,3),(3072,1,1,'AN',-61054203,3),(3073,1,1,'AN',-248778453,3),(3074,1,1,'AN',-1274750418,3),(3075,1,1,'AN',-61357203,3),(3076,1,1,'AN',-249389703,3),(3077,1,1,'AN',-1276133589,3),(3078,1,1,'AN',-61660953,3),(3079,1,1,'AN',-1277517510,3),(3080,1,1,'AN',-61965453,3),(3081,1,1,'AN',-250001703,3),(3082,1,1,'AN',-1278902181,3),(3083,1,1,'AN',-62270703,3),(3084,1,1,'AN',-250614453,3),(3085,1,1,'AN',-1280287602,3),(3086,1,1,'AN',-62576703,3),(3087,1,1,'AN',-251227953,3),(3088,1,1,'AN',-1281673773,3),(3089,1,1,'AN',-62883453,3),(3090,1,1,'AN',-1283060694,3),(3091,1,1,'AN',-251842203,3),(3092,1,1,'AN',-63190953,3),(3093,1,1,'AN',-1284448365,3),(3094,1,1,'AN',-252457203,3),(3095,1,1,'AN',-63499203,3),(3096,1,1,'AN',-1285836786,3),(3097,1,1,'AN',-253072953,3),(3098,1,1,'AN',-63808203,3),(3099,1,1,'AN',-1287225957,3),(3100,1,1,'AN',-253689453,3),(3101,1,1,'AN',-64117953,3),(3102,1,1,'AN',-1288615878,3),(3103,1,1,'AN',-254306703,3),(3104,1,1,'AN',-64428453,3),(3105,1,1,'AN',-1290006549,3),(3106,1,1,'AN',-254924703,3),(3107,1,1,'AN',-64739703,3),(3108,1,1,'AN',-1291397970,3),(3109,1,1,'AN',-255543453,3),(3110,1,1,'AN',-1292790141,3),(3111,1,1,'AN',-256162953,3),(3112,1,1,'AN',-65051703,3),(3113,1,1,'AN',-1294183062,3),(3114,1,1,'AN',-256783203,3),(3115,1,1,'AN',-65364453,3),(3116,1,1,'AN',-1295576733,3),(3117,1,1,'AN',-257404203,3),(3118,1,1,'AN',-65677953,3),(3119,1,1,'AN',-1296971154,3),(3120,1,1,'AN',-258025953,3),(3121,1,1,'AN',-65992203,3),(3122,1,1,'AN',-1298366325,3),(3123,1,1,'AN',-258648453,3),(3124,1,1,'AN',-1299762246,3),(3125,1,1,'AN',-66307203,3),(3126,1,1,'AN',-259271703,3),(3127,1,1,'AN',-1301158917,3),(3128,1,1,'AN',-66622953,3),(3129,1,1,'AN',-259895703,3),(3130,1,1,'AN',-1302556338,3),(3131,1,1,'AN',-66939453,3),(3132,1,1,'AN',-260520453,3),(3133,1,1,'AN',-1303954509,3),(3134,1,1,'AN',-67256703,3),(3135,1,1,'AN',-261145953,3),(3136,1,1,'AN',-1305353430,3),(3137,1,1,'AN',-67574703,3),(3138,1,1,'AN',-261772203,3),(3139,1,1,'AN',-1306753101,3),(3140,1,1,'AN',-67893453,3),(3141,1,1,'AN',-262399203,3),(3142,1,1,'AN',-68212953,3),(3143,1,1,'AN',-1308153522,3),(3144,1,1,'AN',-263026953,3),(3145,1,1,'AN',-68533203,3),(3146,1,1,'AN',-1309554693,3),(3147,1,1,'AN',-263655453,3),(3148,1,1,'AN',-68854203,3),(3149,1,1,'AN',-1310956614,3),(3150,1,1,'AN',-264284703,3),(3151,1,1,'AN',-69175953,3),(3152,1,1,'AN',-1312359285,3),(3153,1,1,'AN',-69498453,3),(3154,1,1,'AN',-1313762706,3),(3155,1,1,'AN',-264914703,3),(3156,1,1,'AN',-69821703,3),(3157,1,1,'AN',-265545453,3),(3158,1,1,'AN',-1315166877,3),(3159,1,1,'AN',-70145703,3),(3160,1,1,'AN',-1316571798,3),(3161,1,1,'AN',-266176953,3),(3162,1,1,'AN',-70470453,3),(3163,1,1,'AN',-1317977469,3),(3164,1,1,'AN',-266809203,3),(3165,1,1,'AN',-70795953,3),(3166,1,1,'AN',-267442203,3),(3167,1,1,'AN',-1319383890,3),(3168,1,1,'AN',-268075953,3),(3169,1,1,'AN',-1320791061,3),(3170,1,1,'AN',-71122203,3),(3171,1,1,'AN',-1322198982,3),(3172,1,1,'AN',-71449203,3),(3173,1,1,'AN',-268710453,3),(3174,1,1,'AN',-1323607653,3),(3175,1,1,'AN',-71776953,3),(3176,1,1,'AN',-269345703,3),(3177,1,1,'AN',-1325017074,3),(3178,1,1,'AN',-72105453,3),(3179,1,1,'AN',-269981703,3),(3180,1,1,'AN',-72434703,3),(3181,1,1,'AN',-1326427245,3),(3182,1,1,'AN',-270618453,3),(3183,1,1,'AN',-72764703,3),(3184,1,1,'AN',-1327838166,3),(3185,1,1,'AN',-271255953,3),(3186,1,1,'AN',-1329249837,3),(3187,1,1,'AN',-271894203,3),(3188,1,1,'AN',-73095453,3),(3189,1,1,'AN',-1330662258,3),(3190,1,1,'AN',-272533203,3),(3191,1,1,'AN',-73426953,3),(3192,1,1,'AN',-1332075429,3),(3193,1,1,'AN',-273172953,3),(3194,1,1,'AN',-73759203,3),(3195,1,1,'AN',-273813453,3),(3196,1,1,'AN',-1333489350,3),(3197,1,1,'AN',-74092203,3),(3198,1,1,'AN',-274454703,3),(3199,1,1,'AN',-74425953,3),(3200,1,1,'AN',-1334904021,3),(3201,1,1,'AN',-275096703,3),(3202,1,1,'AN',-74760453,3),(3203,1,1,'AN',-1336319442,3),(3204,1,1,'AN',-275739453,3),(3205,1,1,'AN',-75095703,3),(3206,1,1,'AN',-1337735613,3),(3207,1,1,'AN',-276382953,3),(3208,1,1,'AN',-75431703,3),(3209,1,1,'AN',-1339152534,3),(3210,1,1,'AN',-277027203,3),(3211,1,1,'AN',-75768453,3),(3212,1,1,'AN',-1340570205,3),(3213,1,1,'AN',-277672203,3),(3214,1,1,'AN',-76105953,3),(3215,1,1,'AN',-1341988626,3),(3216,1,1,'AN',-278317953,3),(3217,1,1,'AN',-76444203,3),(3218,1,1,'AN',-1343407797,3),(3219,1,1,'AN',-278964453,3),(3220,1,1,'AN',-76783203,3),(3221,1,1,'AN',-1344827718,3),(3222,1,1,'AN',-279611703,3),(3223,1,1,'AN',-77122953,3),(3224,1,1,'AN',-1346248389,3),(3225,1,1,'AN',-280259703,3),(3226,1,1,'AN',-77463453,3),(3227,1,1,'AN',-1347669810,3),(3228,1,1,'AN',-280908453,3),(3229,1,1,'AN',-77804703,3),(3230,1,1,'AN',-1349091981,3),(3231,1,1,'AN',-281557953,3),(3232,1,1,'AN',-1350514902,3),(3233,1,1,'AN',-78146703,3),(3234,1,1,'AN',-282208203,3),(3235,1,1,'AN',-78489453,3),(3236,1,1,'AN',-1351938573,3),(3237,1,1,'AN',-282859203,3),(3238,1,1,'AN',-78832953,3),(3239,1,1,'AN',-283510953,3),(3240,1,1,'AN',-1353362994,3),(3241,1,1,'AN',-1354788165,3),(3242,1,1,'AN',-79177203,3),(3243,1,1,'AN',-284163453,3),(3244,1,1,'AN',-1356214086,3),(3245,1,1,'AN',-79522203,3),(3246,1,1,'AN',-284816703,3),(3247,1,1,'AN',-1357640757,3),(3248,1,1,'AN',-285470703,3),(3249,1,1,'AN',-79867953,3),(3250,1,1,'AN',-1359068178,3),(3251,1,1,'AN',-286125453,3),(3252,1,1,'AN',-80214453,3),(3253,1,1,'AN',-1360496349,3),(3254,1,1,'AN',-286780953,3),(3255,1,1,'AN',-80561703,3),(3256,1,1,'AN',-1361925270,3),(3257,1,1,'AN',-287437203,3),(3258,1,1,'AN',-80909703,3),(3259,1,1,'AN',-1363354941,3),(3260,1,NULL,'AN',237.6,3),(3261,1,1,'AN',-288094203,3),(3262,1,1,'AN',-81258453,3),(3263,1,NULL,'AN',-312,3),(3264,1,1,'AN',-1364785362,3),(3265,1,1,'AN',-288751953,3),(3266,1,1,'AN',-81607953,3),(3267,1,NULL,'AN',-1173.6,3),(3268,1,1,'AN',-1366216533,3),(3269,1,1,'AN',-81958203,3),(3270,1,NULL,'AN',-2659.2,3),(3271,1,1,'AN',-289410453,3),(3272,1,1,'AN',-1367648454,3),(3273,1,1,'AN',-82309203,3),(3274,1,NULL,'AN',-5942.4,3),(3275,1,1,'AN',-290069703,3),(3276,1,1,'AN',-1369081125,3),(3277,1,1,'AN',-82660953,3),(3278,1,NULL,'AN',-13682.4,3),(3279,1,1,'AN',-290729703,3),(3280,1,1,'AN',-1370514546,3),(3281,1,1,'AN',-83013453,3),(3282,1,NULL,'AN',-31821.6,3),(3283,1,1,'AN',-291390453,3),(3284,1,1,'AN',-1371948717,3),(3285,1,1,'AN',-292051953,3),(3286,1,NULL,'AN',-74042.4,3),(3287,1,1,'AN',-83366703,3),(3288,1,1,'AN',-1373383638,3),(3289,1,1,'AN',-292714203,3),(3290,1,NULL,'AN',-172166.4,3),(3291,1,1,'AN',-83720703,3),(3292,1,1,'AN',-1374819309,3),(3293,1,1,'AN',-293377203,3),(3294,1,NULL,'AN',-400236,3),(3295,1,1,'AN',-84075453,3),(3296,1,1,'AN',-1376255730,3),(3297,1,1,'AN',-294040953,3),(3298,1,NULL,'AN',-930417.6,3),(3299,1,1,'AN',-1377692901,3),(3300,1,1,'AN',-84430953,3),(3301,1,1,'AN',-294705453,3),(3302,1,NULL,'AN',-2162947.2,3),(3303,1,1,'AN',-1379130822,3),(3304,1,1,'AN',-84787203,3),(3305,1,1,'AN',-295370703,3),(3306,1,NULL,'AN',-5028242.4,3),(3307,1,1,'AN',-85144203,3),(3308,1,1,'AN',-1380569493,3),(3309,1,1,'AN',-296036703,3),(3310,1,NULL,'AN',-11689250.4,3),(3311,1,1,'AN',-85501953,3),(3312,1,1,'AN',-296703453,3),(3313,1,1,'AN',-1382008914,3),(3314,1,NULL,'AN',-27174213.6,3),(3315,1,1,'AN',-85860453,3),(3316,1,1,'AN',-297370953,3),(3317,1,1,'AN',-1383449085,3),(3318,1,NULL,'AN',-63172382.4,3),(3319,1,1,'AN',-86219703,3),(3320,1,1,'AN',-298039203,3),(3321,1,NULL,'AN',-146857970.4,3),(3322,1,1,'AN',-1384890006,3),(3323,1,1,'AN',-86579703,3),(3324,1,1,'AN',-298708203,3),(3325,1,NULL,'AN',-341403360,3),(3326,1,1,'AN',-1386331677,3),(3327,1,1,'AN',-86940453,3),(3328,1,1,'AN',-1387774098,3),(3329,1,NULL,'AN',-793666521.6,3),(3330,1,1,'AN',-299377953,3),(3331,1,1,'AN',-87301953,3),(3332,1,NULL,'AN',-1845050815.2,3),(3333,1,1,'AN',-300048453,3),(3334,1,1,'AN',-1389217269,3),(3335,1,1,'AN',-87664203,3),(3336,1,1,'AN',-300719703,3),(3337,1,NULL,'AN',-4289222762.4,3),(3338,1,1,'AN',-1390661190,3),(3339,1,1,'AN',-88027203,3),(3340,1,1,'AN',-301391703,3),(3341,1,NULL,'AN',-9971233178.4,3),(3342,1,1,'AN',-1392105861,3),(3343,1,NULL,'AN',-23180304825.6,3),(3344,1,1,'AN',-88390953,3),(3345,1,1,'AN',-302064453,3),(3346,1,1,'AN',-1393551282,3),(3347,1,1,'AN',-302737953,3),(3348,1,1,'AN',-88755453,3),(3349,1,NULL,'AN',-53887670882.4,3),(3350,1,1,'AN',-1394997453,3),(3351,1,1,'AN',-303412203,3),(3352,1,1,'AN',-89120703,3),(3353,1,NULL,'AN',-125273636174.4,3),(3354,1,1,'AN',-1396444374,3),(3355,1,1,'AN',-304087203,3),(3356,1,1,'AN',-89486703,3),(3357,1,NULL,'AN',-291225871584,3),(3358,1,1,'AN',-1397892045,3),(3359,1,1,'AN',-304762953,3),(3360,1,1,'AN',-89853453,3),(3361,1,1,'AN',-305439453,3),(3362,1,NULL,'AN',-677018013285.6,3),(3363,1,1,'AN',-1399340466,3),(3364,1,1,'AN',-306116703,3),(3365,1,1,'AN',-90220953,3),(3366,1,NULL,'AN',-1573875932863.2,3),(3367,1,1,'AN',-1400789637,3),(3368,1,NULL,'AN',-3658817643602.4,3),(3369,1,1,'AN',-90589203,3),(3370,1,1,'AN',-306794703,3),(3371,1,1,'AN',-1402239558,3),(3372,1,NULL,'AN',-8505719078366.4,3),(3373,1,1,'AN',-307473453,3),(3374,1,1,'AN',-90958203,3),(3375,1,1,'AN',-1403690229,3),(3376,1,NULL,'AN',-19773397880757.6,3),(3377,1,1,'AN',-308152953,3),(3378,1,1,'AN',-91327953,3),(3379,1,1,'AN',-1405141650,3),(3380,1,NULL,'AN',-45967573129142.42,3),(3381,1,1,'AN',-308833203,3),(3382,1,1,'AN',-1406593821,3),(3383,1,1,'AN',-91698453,3),(3384,1,NULL,'AN',-106861642704278.44,3),(3385,1,1,'AN',-309514203,3),(3386,1,1,'AN',-1408046742,3),(3387,1,1,'AN',-92069703,3),(3388,1,NULL,'AN',-248423179735308.1,3),(3389,1,1,'AN',-310195953,3),(3390,1,1,'AN',-1409500413,3),(3391,1,1,'AN',-92441703,3),(3392,1,1,'AN',-310878453,3),(3393,1,NULL,'AN',-577513826926509.8,3),(3394,1,1,'AN',-1410954834,3),(3395,1,1,'AN',-92814453,3),(3396,1,1,'AN',-311561703,3),(3397,1,NULL,'AN',-1342556764013191.5,3),(3398,1,1,'AN',-1412410005,3),(3399,1,1,'AN',-93187953,3),(3400,1,1,'AN',-312245703,3),(3401,1,NULL,'AN',-3.121065817921863e15,3),(3402,1,1,'AN',-1413865926,3),(3403,1,1,'AN',-93562203,3),(3404,1,NULL,'AN',-7.255597752665716e15,3),(3405,1,1,'AN',-312930453,3),(3406,1,1,'AN',-1415322597,3),(3407,1,1,'AN',-93937203,3),(3408,1,1,'AN',-313615953,3),(3409,1,NULL,'AN',-1.6867218386166616e16,3),(3410,1,1,'AN',-1416780018,3),(3411,1,1,'AN',-94312953,3),(3412,1,1,'AN',-314302203,3),(3413,1,NULL,'AN',-3.9211525471090264e16,3),(3414,1,1,'AN',-1418238189,3),(3415,1,NULL,'AN',-9.11557373936033e16,3),(3416,1,1,'AN',-94689453,3),(3417,1,1,'AN',-314989203,3),(3418,1,1,'AN',-1419697110,3),(3419,1,NULL,'AN',-2.11911379624796e17,3),(3420,1,1,'AN',-95066703,3),(3421,1,1,'AN',-315676953,3),(3422,1,1,'AN',-1421156781,3),(3423,1,NULL,'AN',-4.926341895582716e17,3),(3424,1,1,'AN',-95444703,3),(3425,1,1,'AN',-316365453,3),(3426,1,1,'AN',-1422617202,3),(3427,1,NULL,'AN',-1.1452355468188262e18,3),(3428,1,1,'AN',-95823453,3),(3429,1,1,'AN',-317054703,3),(3430,1,1,'AN',-1424078373,3),(3431,1,NULL,'AN',-2.6623496409647314e18,3),(3432,1,1,'AN',-96202953,3),(3433,1,1,'AN',-1425540294,3),(3434,1,1,'AN',-317744703,3),(3435,1,NULL,'AN',-6.189212018814812e18,3),(3436,1,1,'AN',-96583203,3),(3437,1,1,'AN',-1427002965,3),(3438,1,1,'AN',-318435453,3),(3439,1,NULL,'AN',-1.43881723213338e19,3),(3440,1,1,'AN',-96964203,3),(3441,1,1,'AN',-1428466386,3),(3442,1,1,'AN',-319126953,3),(3443,1,1,'AN',-97345953,3),(3444,1,NULL,'AN',-3.3448442567336514e19,3),(3445,1,1,'AN',-1429930557,3),(3446,1,1,'AN',-1431395478,3),(3447,1,1,'AN',-97728453,3),(3448,1,NULL,'AN',-7.775819507815675e19,3),(3449,1,1,'AN',-319819203,3),(3450,1,NULL,'AN',-1.80765872421131e20,3),(3451,1,1,'AN',-320512203,3),(3452,1,1,'AN',-1432861149,3),(3453,1,1,'AN',-98111703,3),(3454,1,NULL,'AN',-4.2022966967441614e20,3),(3455,1,1,'AN',-321205953,3),(3456,1,1,'AN',-1434327570,3),(3457,1,1,'AN',-98495703,3),(3458,1,NULL,'AN',-9.76915459259143e20,3),(3459,1,1,'AN',-321900453,3),(3460,1,1,'AN',-1435794741,3),(3461,1,1,'AN',-98880453,3),(3462,1,NULL,'AN',-2.2710529108497274e21,3),(3463,1,1,'AN',-322595703,3),(3464,1,1,'AN',-1437262662,3),(3465,1,1,'AN',-99265953,3),(3466,1,NULL,'AN',-5.279557483705313e21,3),(3467,1,1,'AN',-323291703,3),(3468,1,1,'AN',-1438731333,3),(3469,1,1,'AN',-99652203,3),(3470,1,1,'AN',-323988453,3),(3471,1,1,'AN',-1440200754,3),(3472,1,NULL,'AN',-1.2273482088675627e22,3),(3473,1,1,'AN',-100039203,3),(3474,1,1,'AN',-324685953,3),(3475,1,NULL,'AN',-2.8532384209465986e22,3),(3476,1,1,'AN',-1441670925,3),(3477,1,1,'AN',-100426953,3),(3478,1,1,'AN',-325384203,3),(3479,1,1,'AN',-100815453,3),(3480,1,1,'AN',-1443141846,3),(3481,1,1,'AN',-326083203,3),(3482,1,NULL,'AN',-6.632974593475201e22,3),(3483,1,1,'AN',-1444613517,3),(3484,1,1,'AN',-101204703,3),(3485,1,NULL,'AN',-1.5419795147399968e23,3),(3486,1,1,'AN',-326782953,3),(3487,1,1,'AN',-101594703,3),(3488,1,NULL,'AN',-3.584667467619609e23,3),(3489,1,1,'AN',-1446085938,3),(3490,1,1,'AN',-327483453,3),(3491,1,NULL,'AN',-8.333340832726355e23,3),(3492,1,1,'AN',-1447559109,3),(3493,1,1,'AN',-101985453,3),(3494,1,1,'AN',-328184703,3),(3495,1,NULL,'AN',-1.9372667077679843e24,3),(3496,1,1,'AN',-1449033030,3),(3497,1,1,'AN',-328886703,3),(3498,1,1,'AN',-102376953,3),(3499,1,NULL,'AN',-4.503598703520644e24,3),(3500,1,1,'AN',-1450507701,3),(3501,1,1,'AN',-102769203,3),(3502,1,1,'AN',-329589453,3),(3503,1,NULL,'AN',-1.0469596778298594e25,3),(3504,1,1,'AN',-1451983122,3),(3505,1,1,'AN',-103162203,3),(3506,1,NULL,'AN',-2.4338859635622485e25,3),(3507,1,1,'AN',-330292953,3),(3508,1,1,'AN',-1453459293,3),(3509,1,NULL,'AN',-5.6580984053790905e25,3),(3510,1,1,'AN',-330997203,3),(3511,1,1,'AN',-103555953,3),(3512,1,1,'AN',-1454936214,3),(3513,1,NULL,'AN',-1.3153482966842632e26,3),(3514,1,1,'AN',-1456413885,3),(3515,1,1,'AN',-331702203,3),(3516,1,1,'AN',-103950453,3),(3517,1,NULL,'AN',-3.057813805333197e26,3),(3518,1,1,'AN',-332407953,3),(3519,1,1,'AN',-1457892306,3),(3520,1,1,'AN',-104345703,3),(3521,1,NULL,'AN',-7.108554663168972e26,3),(3522,1,1,'AN',-104741703,3),(3523,1,1,'AN',-333114453,3),(3524,1,1,'AN',-1459371477,3),(3525,1,NULL,'AN',-1.652538467552479e27,3),(3526,1,1,'AN',-105138453,3),(3527,1,1,'AN',-333821703,3),(3528,1,1,'AN',-1460851398,3),(3529,1,1,'AN',-105535953,3),(3530,1,NULL,'AN',-3.8416858505569617e27,3),(3531,1,1,'AN',-334529703,3),(3532,1,1,'AN',-1462332069,3),(3533,1,NULL,'AN',-8.930836082882823e27,3),(3534,1,1,'AN',-105934203,3),(3535,1,1,'AN',-335238453,3),(3536,1,1,'AN',-1463813490,3),(3537,1,NULL,'AN',-2.0761675015087033e28,3),(3538,1,1,'AN',-106333203,3),(3539,1,1,'AN',-335947953,3),(3540,1,1,'AN',-1465295661,3),(3541,1,NULL,'AN',-4.82650387300524e28,3),(3542,1,1,'AN',-106732953,3),(3543,1,1,'AN',-336658203,3),(3544,1,1,'AN',-1466778582,3),(3545,1,NULL,'AN',-1.1220260224286597e29,3),(3546,1,1,'AN',-337369203,3),(3547,1,1,'AN',-107133453,3),(3548,1,NULL,'AN',-2.608394042835801e29,3),(3549,1,1,'AN',-338080953,3),(3550,1,1,'AN',-107534703,3),(3551,1,1,'AN',-1468262253,3),(3552,1,NULL,'AN',-6.063780470950607e29,3),(3553,1,1,'AN',-338793453,3),(3554,1,1,'AN',-107936703,3),(3555,1,1,'AN',-1469746674,3),(3556,1,NULL,'AN',-1.409657934960888e30,3),(3557,1,1,'AN',-339506703,3),(3558,1,1,'AN',-1471231845,3),(3559,1,1,'AN',-108339453,3),(3560,1,NULL,'AN',-3.277057114976124e30,3),(3561,1,1,'AN',-340220703,3),(3562,1,1,'AN',-1472717766,3),(3563,1,1,'AN',-108742953,3),(3564,1,NULL,'AN',-7.618233522101654e30,3),(3565,1,1,'AN',-340935453,3),(3566,1,1,'AN',-1474204437,3),(3567,1,1,'AN',-109147203,3),(3568,1,NULL,'AN',-1.7710244271313603e31,3),(3569,1,1,'AN',-341650953,3),(3570,1,1,'AN',-109552203,3),(3571,1,NULL,'AN',-4.117132288471362e31,3),(3572,1,1,'AN',-1475691858,3),(3573,1,NULL,'AN',-9.571171363361533e31,3),(3574,1,1,'AN',-342367203,3),(3575,1,1,'AN',-109957953,3),(3576,1,1,'AN',-1477180029,3),(3577,1,1,'AN',-343084203,3),(3578,1,1,'AN',-110364453,3),(3579,1,NULL,'AN',-2.2250273940273233e32,3),(3580,1,1,'AN',-1478668950,3),(3581,1,1,'AN',-110771703,3),(3582,1,NULL,'AN',-5.1725611382567994e32,3),(3583,1,1,'AN',-343801953,3),(3584,1,1,'AN',-1480158621,3),(3585,1,NULL,'AN',-1.2024745763051905e33,3),(3586,1,1,'AN',-111179703,3),(3587,1,1,'AN',-344520453,3),(3588,1,1,'AN',-1481649042,3),(3589,1,NULL,'AN',-2.795414240666944e33,3),(3590,1,1,'AN',-111588453,3),(3591,1,1,'AN',-345239703,3),(3592,1,1,'AN',-1483140213,3),(3593,1,1,'AN',-111997953,3),(3594,1,NULL,'AN',-6.498549683216131e33,3),(3595,1,1,'AN',-345959703,3),(3596,1,1,'AN',-1484632134,3),(3597,1,NULL,'AN',-1.5107295144619698e34,3),(3598,1,1,'AN',-346680453,3),(3599,1,1,'AN',-112408203,3),(3600,1,1,'AN',-1486124805,3),(3601,1,NULL,'AN',-3.512020030809377e34,3),(3602,1,1,'AN',-347401953,3),(3603,1,1,'AN',-1487618226,3),(3604,1,1,'AN',-112819203,3),(3605,1,NULL,'AN',-8.164456031825805e34,3),(3606,1,1,'AN',-348124203,3),(3607,1,1,'AN',-1489112397,3),(3608,1,1,'AN',-113230953,3),(3609,1,NULL,'AN',-1.8980057548320634e35,3),(3610,1,1,'AN',-348847203,3),(3611,1,1,'AN',-1490607318,3),(3612,1,1,'AN',-113643453,3),(3613,1,NULL,'AN',-4.4123280612119666e35,3),(3614,1,1,'AN',-349570953,3),(3615,1,1,'AN',-1492102989,3),(3616,1,1,'AN',-114056703,3),(3617,1,NULL,'AN',-1.0257418277154352e36,3),(3618,1,1,'AN',-350295453,3),(3619,1,1,'AN',-1493599410,3),(3620,1,1,'AN',-114470703,3),(3621,1,1,'AN',-351020703,3),(3622,1,1,'AN',-1495096581,3),(3623,1,NULL,'AN',-2.3845604463871188e36,3),(3624,1,1,'AN',-114885453,3),(3625,1,1,'AN',-351746703,3),(3626,1,1,'AN',-1496594502,3),(3627,1,NULL,'AN',-5.543430489851683e36,3),(3628,1,1,'AN',-115300953,3),(3629,1,1,'AN',-352473453,3),(3630,1,1,'AN',-1498093173,3),(3631,1,NULL,'AN',-1.2886912404496244e37,3),(3632,1,1,'AN',-115717203,3),(3633,1,1,'AN',-353200953,3),(3634,1,1,'AN',-1499592594,3),(3635,1,NULL,'AN',-2.995843668017249e37,3),(3636,1,1,'AN',-116134203,3),(3637,1,1,'AN',-353929203,3),(3638,1,1,'AN',-1501092765,3),(3639,1,NULL,'AN',-6.964491572137665e37,3),(3640,1,1,'AN',-116551953,3),(3641,1,NULL,'AN',-1.6190478620828124e38,3),(3642,1,1,'AN',-1502593686,3),(3643,1,1,'AN',-354658203,3),(3644,1,1,'AN',-116970453,3),(3645,1,1,'AN',-355387953,3),(3646,1,NULL,'AN',-3.763829638622628e38,3),(3647,1,1,'AN',-1504095357,3),(3648,1,1,'AN',-117389703,3),(3649,1,NULL,'AN',-8.749842348916028e38,3),(3650,1,1,'AN',-356118453,3),(3651,1,1,'AN',-1505597778,3),(3652,1,1,'AN',-117809703,3),(3653,1,NULL,'AN',-2.0340915631585642e39,3),(3654,1,1,'AN',-356849703,3),(3655,1,1,'AN',-1507100949,3),(3656,1,1,'AN',-118230453,3),(3657,1,1,'AN',-357581703,3),(3658,1,NULL,'AN',-4.72868918355475e39,3),(3659,1,1,'AN',-1508604870,3),(3660,1,1,'AN',-118651953,3),(3661,1,NULL,'AN',-1.0992868659238727e40,3),(3662,1,1,'AN',-1510109541,3),(3663,1,1,'AN',-358314453,3),(3664,1,1,'AN',-119074203,3),(3665,1,NULL,'AN',-2.555531917376524e40,3),(3666,1,1,'AN',-359047953,3),(3667,1,1,'AN',-1511614962,3),(3668,1,1,'AN',-119497203,3),(3669,1,NULL,'AN',-5.940890938637302e40,3),(3670,1,1,'AN',-1513121133,3),(3671,1,1,'AN',-359782203,3),(3672,1,1,'AN',-119920953,3),(3673,1,NULL,'AN',-1.381089584708273e41,3),(3674,1,1,'AN',-1514628054,3),(3675,1,1,'AN',-360517203,3),(3676,1,1,'AN',-120345453,3),(3677,1,NULL,'AN',-3.2106437581350114e41,3),(3678,1,1,'AN',-361252953,3),(3679,1,1,'AN',-1516135725,3),(3680,1,NULL,'AN',-7.46384119885222e41,3),(3681,1,1,'AN',-120770703,3),(3682,1,1,'AN',-361989453,3),(3683,1,1,'AN',-1517644146,3),(3684,1,NULL,'AN',-1.735132566499491e42,3),(3685,1,1,'AN',-121196703,3),(3686,1,1,'AN',-362726703,3),(3687,1,1,'AN',-1519153317,3),(3688,1,1,'AN',-363464703,3),(3689,1,NULL,'AN',-4.0336938355415295e42,3),(3690,1,1,'AN',-1520663238,3),(3691,1,1,'AN',-121623453,3),(3692,1,NULL,'AN',-9.377200493510829e42,3),(3693,1,1,'AN',-364203453,3),(3694,1,1,'AN',-1522173909,3),(3695,1,1,'AN',-122050953,3),(3696,1,NULL,'AN',-2.1799346375948916e43,3),(3697,1,1,'AN',-364942953,3),(3698,1,1,'AN',-1523685330,3),(3699,1,1,'AN',-122479203,3),(3700,1,NULL,'AN',-5.067733197636663e43,3),(3701,1,1,'AN',-365683203,3),(3702,1,1,'AN',-1525197501,3),(3703,1,1,'AN',-122908203,3),(3704,1,NULL,'AN',-1.1781050367071285e44,3),(3705,1,1,'AN',-1526710422,3),(3706,1,1,'AN',-366424203,3),(3707,1,1,'AN',-123337953,3),(3708,1,NULL,'AN',-2.7387619343535423e44,3),(3709,1,1,'AN',-1528224093,3),(3710,1,1,'AN',-367165953,3),(3711,1,1,'AN',-123768453,3),(3712,1,NULL,'AN',-6.366849049410039e44,3),(3713,1,1,'AN',-1529738514,3),(3714,1,1,'AN',-367908453,3),(3715,1,1,'AN',-124199703,3),(3716,1,NULL,'AN',-1.4801128316230155e45,3),(3717,1,1,'AN',-368651703,3),(3718,1,1,'AN',-1531253685,3),(3719,1,1,'AN',-124631703,3),(3720,1,NULL,'AN',-3.4408448784223927e45,3),(3721,1,1,'AN',-369395703,3),(3722,1,1,'AN',-1532769606,3),(3723,1,1,'AN',-125064453,3),(3724,1,NULL,'AN',-7.998993876962153e45,3),(3725,1,1,'AN',-370140453,3),(3726,1,1,'AN',-1534286277,3),(3727,1,NULL,'AN',-1.8595404705664688e46,3),(3728,1,1,'AN',-125497953,3),(3729,1,1,'AN',-370885953,3),(3730,1,1,'AN',-1535803698,3),(3731,1,NULL,'AN',-4.3229071241492137e46,3),(3732,1,1,'AN',-125932203,3),(3733,1,1,'AN',-371632203,3),(3734,1,1,'AN',-1537321869,3),(3735,1,NULL,'AN',-1.0049539819010921e47,3),(3736,1,1,'AN',-126367203,3),(3737,1,1,'AN',-372379203,3),(3738,1,1,'AN',-1538840790,3),(3739,1,NULL,'AN',-2.33623456793008e47,3),(3740,1,1,'AN',-126802953,3),(3741,1,1,'AN',-373126953,3),(3742,1,1,'AN',-1540360461,3),(3743,1,NULL,'AN',-5.43108645240298e47,3),(3744,1,1,'AN',-127239453,3),(3745,1,1,'AN',-373875453,3),(3746,1,1,'AN',-127676703,3),(3747,1,NULL,'AN',-1.2625744203249867e48,3),(3748,1,1,'AN',-1541880882,3),(3749,1,1,'AN',-374624703,3),(3750,1,NULL,'AN',-2.935129427287373e48,3),(3751,1,1,'AN',-1543402053,3),(3752,1,1,'AN',-128114703,3),(3753,1,1,'AN',-375374703,3),(3754,1,1,'AN',-1544923974,3),(3755,1,1,'AN',-128553453,3),(3756,1,NULL,'AN',-6.823348086452443e48,3),(3757,1,1,'AN',-376125453,3),(3758,1,1,'AN',-128992953,3),(3759,1,1,'AN',-1546446645,3),(3760,1,NULL,'AN',-1.5862359825107572e49,3),(3761,1,1,'AN',-376876953,3),(3762,1,1,'AN',-129433203,3),(3763,1,1,'AN',-1547970066,3),(3764,1,1,'AN',-377629203,3),(3765,1,NULL,'AN',-3.68755127297052e49,3),(3766,1,1,'AN',-129874203,3),(3767,1,1,'AN',-1549494237,3),(3768,1,NULL,'AN',-8.572516662535288e49,3),(3769,1,1,'AN',-378382203,3),(3770,1,1,'AN',-1551019158,3),(3771,1,1,'AN',-130315953,3),(3772,1,NULL,'AN',-1.992868342417559e50,3),(3773,1,1,'AN',-379135953,3),(3774,1,1,'AN',-1552544829,3),(3775,1,1,'AN',-130758453,3),(3776,1,NULL,'AN',-4.63285682204267e50,3),(3777,1,1,'AN',-131201703,3),(3778,1,1,'AN',-1554071250,3),(3779,1,1,'AN',-379890453,3),(3780,1,NULL,'AN',-1.0770085447546423e51,3),(3781,1,1,'AN',-131645703,3),(3782,1,1,'AN',-1555598421,3),(3783,1,1,'AN',-380645703,3),(3784,1,NULL,'AN',-2.5037411040971483e51,3),(3785,1,1,'AN',-132090453,3),(3786,1,1,'AN',-1557126342,3),(3787,1,1,'AN',-381401703,3),(3788,1,NULL,'AN',-5.8204919049864274e51,3),(3789,1,1,'AN',-1558655013,3),(3790,1,1,'AN',-132535953,3),(3791,1,1,'AN',-382158453,3),(3792,1,NULL,'AN',-1.353100205151963e52,3),(3793,1,1,'AN',-1560184434,3),(3794,1,1,'AN',-132982203,3),(3795,1,1,'AN',-382915953,3),(3796,1,NULL,'AN',-3.145576344868318e52,3),(3797,1,1,'AN',-1561714605,3),(3798,1,1,'AN',-383674203,3),(3799,1,1,'AN',-133429203,3),(3800,1,NULL,'AN',-7.31257781479967e52,3),(3801,1,1,'AN',-1563245526,3),(3802,1,1,'AN',-384433203,3),(3803,1,1,'AN',-133876953,3),(3804,1,NULL,'AN',-1.6999680959814334e53,3),(3805,1,1,'AN',-1564777197,3),(3806,1,1,'AN',-385192953,3),(3807,1,NULL,'AN',-3.951946359471199e53,3),(3808,1,1,'AN',-134325453,3),(3809,1,1,'AN',-1566309618,3),(3810,1,1,'AN',-385953453,3),(3811,1,NULL,'AN',-9.187160667930697e53,3),(3812,1,1,'AN',-134774703,3),(3813,1,1,'AN',-1567842789,3),(3814,1,1,'AN',-386714703,3),(3815,1,NULL,'AN',-2.135755738083113e54,3),(3816,1,1,'AN',-387476703,3),(3817,1,1,'AN',-1569376710,3),(3818,1,1,'AN',-135224703,3),(3819,1,NULL,'AN',-4.965029716610319e54,3),(3820,1,1,'AN',-1570911381,3),(3821,1,1,'AN',-135675453,3),(3822,1,1,'AN',-388239453,3),(3823,1,NULL,'AN',-1.1542293740457802e55,3),(3824,1,1,'AN',-1572446802,3),(3825,1,1,'AN',-136126953,3),(3826,1,1,'AN',-389002953,3),(3827,1,1,'AN',-1573982973,3),(3828,1,NULL,'AN',-2.6832577526235886e55,3),(3829,1,1,'AN',-136579203,3),(3830,1,1,'AN',-389767203,3),(3831,1,NULL,'AN',-6.237817481440235e55,3),(3832,1,1,'AN',-1575519894,3),(3833,1,1,'AN',-390532203,3),(3834,1,1,'AN',-137032203,3),(3835,1,NULL,'AN',-1.450116631311931e56,3),(3836,1,1,'AN',-1577057565,3),(3837,1,1,'AN',-391297953,3),(3838,1,1,'AN',-137485953,3),(3839,1,NULL,'AN',-3.371112172910105e56,3),(3840,1,1,'AN',-1578595986,3),(3841,1,1,'AN',-137940453,3),(3842,1,1,'AN',-392064453,3),(3843,1,NULL,'AN',-7.836885004250474e56,3),(3844,1,1,'AN',-1580135157,3),(3845,1,1,'AN',-392831703,3),(3846,1,NULL,'AN',-1.8218547298243148e57,3),(3847,1,1,'AN',-138395703,3),(3848,1,1,'AN',-1581675078,3),(3849,1,NULL,'AN',-4.235298405913859e57,3),(3850,1,1,'AN',-138851703,3),(3851,1,1,'AN',-393599703,3),(3852,1,1,'AN',-1583215749,3),(3853,1,NULL,'AN',-9.845874258517997e57,3),(3854,1,1,'AN',-139308453,3),(3855,1,1,'AN',-394368453,3),(3856,1,1,'AN',-1584757170,3),(3857,1,NULL,'AN',-2.2888880693550586e58,3),(3858,1,1,'AN',-139765953,3),(3859,1,1,'AN',-1586299341,3),(3860,1,1,'AN',-395137953,3),(3861,1,1,'AN',-140224203,3),(3862,1,NULL,'AN',-5.321019196952963e58,3),(3863,1,1,'AN',-1587842262,3),(3864,1,1,'AN',-395908203,3),(3865,1,1,'AN',-140683203,3),(3866,1,1,'AN',-1589385933,3),(3867,1,NULL,'AN',-1.2369868878000568e59,3),(3868,1,1,'AN',-396679203,3),(3869,1,1,'AN',-141142953,3),(3870,1,NULL,'AN',-2.8756456309450843e59,3),(3871,1,1,'AN',-1590930354,3),(3872,1,1,'AN',-141603453,3),(3873,1,1,'AN',-397450953,3),(3874,1,NULL,'AN',-6.685065036930435e59,3),(3875,1,1,'AN',-1592475525,3),(3876,1,1,'AN',-398223453,3),(3877,1,1,'AN',-142064703,3),(3878,1,NULL,'AN',-1.5540890736701197e60,3),(3879,1,1,'AN',-398996703,3),(3880,1,1,'AN',-1594021446,3),(3881,1,1,'AN',-142526703,3),(3882,1,NULL,'AN',-3.612818776718779e60,3),(3883,1,1,'AN',-399770703,3),(3884,1,1,'AN',-142989453,3),(3885,1,1,'AN',-1595568117,3),(3886,1,1,'AN',-1597115538,3),(3887,1,1,'AN',-143452953,3),(3888,1,1,'AN',-400545453,3),(3889,1,NULL,'AN',-8.398784686509143e60,3),(3890,1,1,'AN',-1598663709,3),(3891,1,NULL,'AN',-1.9524805579759986e61,3),(3892,1,1,'AN',-143917203,3),(3893,1,1,'AN',-401320953,3),(3894,1,1,'AN',-1600212630,3),(3895,1,1,'AN',-144382203,3),(3896,1,NULL,'AN',-4.538966614298044e61,3),(3897,1,1,'AN',-402097203,3),(3898,1,1,'AN',-1601762301,3),(3899,1,NULL,'AN',-1.0551817195593055e62,3),(3900,1,1,'AN',-144847953,3),(3901,1,1,'AN',-402874203,3),(3902,1,1,'AN',-1603312722,3),(3903,1,NULL,'AN',-2.452999891615907e62,3),(3904,1,1,'AN',-145314453,3),(3905,1,1,'AN',-403651953,3),(3906,1,1,'AN',-1604863893,3),(3907,1,NULL,'AN',-5.7025328971589155e62,3),(3908,1,1,'AN',-145781703,3),(3909,1,1,'AN',-404430453,3),(3910,1,1,'AN',-1606415814,3),(3911,1,NULL,'AN',-1.3256780627804236e63,3),(3912,1,1,'AN',-146249703,3),(3913,1,1,'AN',-405209703,3),(3914,1,1,'AN',-1607968485,3),(3915,1,NULL,'AN',-3.081827598071078e63,3),(3916,1,NULL,'AN',-7.16437995836828e63,3),(3917,1,1,'AN',-405989703,3),(3918,1,1,'AN',-146718453,3),(3919,1,1,'AN',-1609521906,3),(3920,1,NULL,'AN',-1.6655162741743106e64,3),(3921,1,1,'AN',-406770453,3),(3922,1,1,'AN',-147187953,3),(3923,1,1,'AN',-1611076077,3),(3924,1,NULL,'AN',-3.8718555906563837e64,3),(3925,1,1,'AN',-407551953,3),(3926,1,1,'AN',-147658203,3),(3927,1,1,'AN',-1612630998,3),(3928,1,NULL,'AN',-9.000972219457356e64,3),(3929,1,1,'AN',-408334203,3),(3930,1,1,'AN',-148129203,3),(3931,1,1,'AN',-1614186669,3),(3932,1,NULL,'AN',-2.0924721751233616e65,3),(3933,1,1,'AN',-409117203,3),(3934,1,1,'AN',-148600953,3),(3935,1,NULL,'AN',-4.86440764054425e65,3),(3936,1,1,'AN',-1615743090,3),(3937,1,1,'AN',-409900953,3),(3938,1,1,'AN',-1617300261,3),(3939,1,1,'AN',-149073453,3),(3940,1,NULL,'AN',-1.1308375793331766e66,3),(3941,1,1,'AN',-410685453,3),(3942,1,1,'AN',-149546703,3),(3943,1,NULL,'AN',-2.6288784274030155e66,3),(3944,1,1,'AN',-1618858182,3),(3945,1,NULL,'AN',-6.111400887597117e66,3),(3946,1,1,'AN',-150020703,3),(3947,1,1,'AN',-411470703,3),(3948,1,1,'AN',-1620416853,3),(3949,1,1,'AN',-150495453,3),(3950,1,NULL,'AN',-1.42072833873185e67,3),(3951,1,1,'AN',-412256703,3),(3952,1,1,'AN',-150970953,3),(3953,1,1,'AN',-1621976274,3),(3954,1,NULL,'AN',-3.3027926814164274e67,3),(3955,1,1,'AN',-413043453,3),(3956,1,1,'AN',-1623536445,3),(3957,1,1,'AN',-151447203,3),(3958,1,NULL,'AN',-7.678061455545295e67,3),(3959,1,1,'AN',-413830953,3),(3960,1,1,'AN',-1625097366,3),(3961,1,NULL,'AN',-1.7849327342534877e68,3),(3962,1,1,'AN',-151924203,3),(3963,1,1,'AN',-414619203,3),(3964,1,1,'AN',-1626659037,3),(3965,1,1,'AN',-152401953,3),(3966,1,NULL,'AN',-4.1494651797930467e68,3),(3967,1,1,'AN',-415408203,3),(3968,1,1,'AN',-152880453,3),(3969,1,NULL,'AN',-9.646336216426694e68,3),(3970,1,1,'AN',-1628221458,3),(3971,1,1,'AN',-416197953,3),(3972,1,1,'AN',-1629784629,3),(3973,1,NULL,'AN',-2.242501102394748e69,3),(3974,1,1,'AN',-153359703,3),(3975,1,1,'AN',-416988453,3),(3976,1,1,'AN',-1631348550,3),(3977,1,NULL,'AN',-5.21318258187821e69,3),(3978,1,1,'AN',-153839703,3),(3979,1,1,'AN',-417779703,3),(3980,1,1,'AN',-1632913221,3),(3981,1,1,'AN',-154320453,3),(3982,1,NULL,'AN',-1.2119179162487803e70,3),(3983,1,1,'AN',-418571703,3),(3984,1,1,'AN',-1634478642,3),(3985,1,1,'AN',-154801953,3),(3986,1,NULL,'AN',-2.8173673426101737e70,3),(3987,1,1,'AN',-419364453,3),(3988,1,1,'AN',-1636044813,3),(3989,1,1,'AN',-155284203,3),(3990,1,NULL,'AN',-6.549584453520783e70,3),(3991,1,1,'AN',-420157953,3),(3992,1,1,'AN',-1637611734,3),(3993,1,1,'AN',-155767203,3),(3994,1,NULL,'AN',-1.522593659159078e71,3),(3995,1,1,'AN',-420952203,3),(3996,1,1,'AN',-1639179405,3),(3997,1,NULL,'AN',-3.5396008210340947e71,3),(3998,1,1,'AN',-421747203,3),(3999,1,1,'AN',-156250953,3),(4000,1,1,'AN',-1640747826,3),(4001,1,NULL,'AN',-8.228573590136208e71,3),(4002,1,1,'AN',-422542953,3),(4003,1,1,'AN',-156735453,3),(4004,1,1,'AN',-1642316997,3),(4005,1,NULL,'AN',-1.912911278749951e72,3),(4006,1,1,'AN',-423339453,3),(4007,1,1,'AN',-157220703,3),(4008,1,1,'AN',-1643886918,3),(4009,1,NULL,'AN',-4.44697920032602e72,3),(4010,1,1,'AN',-424136703,3),(4011,1,1,'AN',-157706703,3),(4012,1,1,'AN',-1645457589,3),(4013,1,NULL,'AN',-1.033797240249178e73,3),(4014,1,1,'AN',-424934703,3),(4015,1,1,'AN',-158193453,3),(4016,1,1,'AN',-1647029010,3),(4017,1,NULL,'AN',-2.4032870085573256e73,3),(4018,1,1,'AN',-425733453,3),(4019,1,1,'AN',-158680953,3),(4020,1,1,'AN',-1648601181,3),(4021,1,1,'AN',-426532953,3),(4022,1,NULL,'AN',-5.5869644652062205e73,3),(4023,1,1,'AN',-159169203,3),(4024,1,1,'AN',-1650174102,3),(4025,1,1,'AN',-427333203,3),(4026,1,NULL,'AN',-1.2988116618753193e74,3),(4027,1,1,'AN',-159658203,3),(4028,1,1,'AN',-1651747773,3),(4029,1,1,'AN',-428134203,3),(4030,1,NULL,'AN',-3.019370793440446e74,3),(4031,1,1,'AN',-1653322194,3),(4032,1,1,'AN',-160147953,3),(4033,1,NULL,'AN',-7.019185503091321e74,3),(4034,1,1,'AN',-428935953,3),(4035,1,1,'AN',-160638453,3),(4036,1,1,'AN',-1654897365,3),(4037,1,1,'AN',-429738453,3),(4038,1,NULL,'AN',-1.6317626584268393e75,3),(4039,1,1,'AN',-161129703,3),(4040,1,1,'AN',-1656473286,3),(4041,1,1,'AN',-430541703,3),(4042,1,1,'AN',-161621703,3),(4043,1,NULL,'AN',-3.793387954006298e75,3),(4044,1,1,'AN',-1658049957,3),(4045,1,1,'AN',-431345703,3),(4046,1,1,'AN',-162114453,3),(4047,1,NULL,'AN',-8.81855709547435e75,3),(4048,1,1,'AN',-1659627378,3),(4049,1,1,'AN',-162607953,3),(4050,1,NULL,'AN',-2.0500658036837287e76,3),(4051,1,1,'AN',-432150453,3),(4052,1,1,'AN',-1661205549,3),(4053,1,1,'AN',-163102203,3),(4054,1,NULL,'AN',-4.765824787356946e76,3),(4055,1,1,'AN',-432955953,3),(4056,1,1,'AN',-1662784470,3),(4057,1,1,'AN',-163597203,3),(4058,1,NULL,'AN',-1.1079198464250815e77,3),(4059,1,1,'AN',-433762203,3),(4060,1,1,'AN',-1664364141,3),(4061,1,1,'AN',-164092953,3),(4062,1,NULL,'AN',-2.575601162172228e77,3),(4063,1,1,'AN',-434569203,3),(4064,1,1,'AN',-1665944562,3),(4065,1,1,'AN',-164589453,3),(4066,1,1,'AN',-435376953,3),(4067,1,NULL,'AN',-5.987546272402216e77,3),(4068,1,1,'AN',-1667525733,3),(4069,1,1,'AN',-165086703,3),(4070,1,1,'AN',-436185453,3),(4071,1,NULL,'AN',-1.3919356339287271e78,3),(4072,1,1,'AN',-1669107654,3),(4073,1,1,'AN',-165584703,3),(4074,1,NULL,'AN',-3.235857763522962e78,3),(4075,1,1,'AN',-436994703,3),(4076,1,1,'AN',-1670690325,3),(4077,1,1,'AN',-166083453,3),(4078,1,NULL,'AN',-7.522456649951652e78,3),(4079,1,1,'AN',-437804703,3),(4080,1,1,'AN',-1672273746,3),(4081,1,1,'AN',-166582953,3),(4082,1,NULL,'AN',-1.7487590056737757e79,3),(4083,1,1,'AN',-438615453,3),(4084,1,1,'AN',-167083203,3),(4085,1,1,'AN',-1673857917,3),(4086,1,NULL,'AN',-4.065371463383294e79,3),(4087,1,1,'AN',-167584203,3),(4088,1,1,'AN',-439426953,3),(4089,1,1,'AN',-1675442838,3),(4090,1,1,'AN',-168085953,3),(4091,1,NULL,'AN',-9.450842043797494e79,3),(4092,1,1,'AN',-440239203,3),(4093,1,1,'AN',-1677028509,3),(4094,1,1,'AN',-168588453,3),(4095,1,NULL,'AN',-2.1970542210299676e80,3),(4096,1,1,'AN',-441052203,3),(4097,1,1,'AN',-1678614930,3),(4098,1,1,'AN',-169091703,3),(4099,1,NULL,'AN',-5.107531400668732e80,3),(4100,1,1,'AN',-441865953,3),(4101,1,1,'AN',-1680202101,3),(4102,1,1,'AN',-169595703,3),(4103,1,NULL,'AN',-1.187356996432601e81,3),(4104,1,1,'AN',-442680453,3),(4105,1,1,'AN',-1681790022,3),(4106,1,1,'AN',-170100453,3),(4107,1,1,'AN',-443495703,3),(4108,1,NULL,'AN',-2.7602701312670536e81,3),(4109,1,1,'AN',-1683378693,3),(4110,1,NULL,'AN',-6.416849541002832e81,3),(4111,1,1,'AN',-170605953,3),(4112,1,1,'AN',-444311703,3),(4113,1,1,'AN',-1684968114,3),(4114,1,1,'AN',-171112203,3),(4115,1,NULL,'AN',-1.4917365356906988e82,3),(4116,1,1,'AN',-445128453,3),(4117,1,1,'AN',-1686558285,3),(4118,1,1,'AN',-171619203,3),(4119,1,NULL,'AN',-3.4678667119982356e82,3),(4120,1,1,'AN',-1688149206,3),(4121,1,1,'AN',-445945953,3),(4122,1,1,'AN',-172126953,3),(4123,1,NULL,'AN',-8.061812018713593e82,3),(4124,1,1,'AN',-1689740877,3),(4125,1,1,'AN',-446764203,3),(4126,1,1,'AN',-172635453,3),(4127,1,NULL,'AN',-1.8741439167835003e83,3),(4128,1,1,'AN',-1691333298,3),(4129,1,1,'AN',-447583203,3),(4130,1,1,'AN',-173144703,3),(4131,1,NULL,'AN',-4.3568560178076066e83,3),(4132,1,1,'AN',-448402953,3),(4133,1,1,'AN',-173654703,3),(4134,1,1,'AN',-1692926469,3),(4135,1,NULL,'AN',-1.0128461421727178e84,3),(4136,1,1,'AN',-449223453,3),(4137,1,1,'AN',-174165453,3),(4138,1,1,'AN',-1694520390,3),(4139,1,NULL,'AN',-2.3545816146349816e84,3),(4140,1,1,'AN',-450044703,3),(4141,1,1,'AN',-1696115061,3),(4142,1,1,'AN',-174676953,3),(4143,1,NULL,'AN',-5.47373816134027e84,3),(4144,1,1,'AN',-450866703,3),(4145,1,1,'AN',-1697710482,3),(4146,1,NULL,'AN',-1.2724897396923565e85,3),(4147,1,1,'AN',-451689453,3),(4148,1,1,'AN',-175189203,3),(4149,1,1,'AN',-1699306653,3),(4150,1,NULL,'AN',-2.958179748272514e85,3),(4151,1,1,'AN',-452512953,3),(4152,1,1,'AN',-175702203,3),(4153,1,1,'AN',-1700903574,3),(4154,1,1,'AN',-453337203,3),(4155,1,NULL,'AN',-6.876933581566855e85,3),(4156,1,1,'AN',-176215953,3),(4157,1,NULL,'AN',-1.5986930987847898e86,3),(4158,1,1,'AN',-1702501245,3),(4159,1,1,'AN',-454162203,3),(4160,1,1,'AN',-176730453,3),(4161,1,NULL,'AN',-3.716510554868249e86,3),(4162,1,1,'AN',-454987953,3),(4163,1,1,'AN',-1704099666,3),(4164,1,1,'AN',-177245703,3),(4165,1,NULL,'AN',-8.639838825191856e86,3),(4166,1,1,'AN',-455814453,3),(4167,1,1,'AN',-1705698837,3),(4168,1,1,'AN',-177761703,3),(4169,1,NULL,'AN',-2.0085188464623857e87,3),(4170,1,1,'AN',-456641703,3),(4171,1,NULL,'AN',-4.6692398298356104e87,3),(4172,1,1,'AN',-1707298758,3),(4173,1,1,'AN',-178278453,3),(4174,1,1,'AN',-457469703,3),(4175,1,1,'AN',-178795953,3),(4176,1,NULL,'AN',-1.0854665679101248e88,3),(4177,1,1,'AN',-1708899429,3),(4178,1,1,'AN',-179314203,3),(4179,1,1,'AN',-458298453,3),(4180,1,NULL,'AN',-2.5234036224094906e88,3),(4181,1,1,'AN',-1710500850,3),(4182,1,1,'AN',-179833203,3),(4183,1,1,'AN',-459127953,3),(4184,1,NULL,'AN',-5.866201714391783e88,3),(4185,1,1,'AN',-1712103021,3),(4186,1,1,'AN',-180352953,3),(4187,1,1,'AN',-459958203,3),(4188,1,1,'AN',-1713705942,3),(4189,1,NULL,'AN',-1.363726446626649e89,3),(4190,1,1,'AN',-180873453,3),(4191,1,1,'AN',-460789203,3),(4192,1,1,'AN',-1715309613,3),(4193,1,1,'AN',-181394703,3),(4194,1,NULL,'AN',-3.17027935924254e89,3),(4195,1,1,'AN',-1716914034,3),(4196,1,1,'AN',-461620953,3),(4197,1,NULL,'AN',-7.3700053559135e89,3),(4198,1,1,'AN',-181916703,3),(4199,1,1,'AN',-1718519205,3),(4200,1,1,'AN',-462453453,3),(4201,1,NULL,'AN',-1.7133183795882072e90,3),(4202,1,1,'AN',-182439453,3),(4203,1,1,'AN',-1720125126,3),(4204,1,1,'AN',-463286703,3),(4205,1,NULL,'AN',-3.9829820035061743e90,3),(4206,1,1,'AN',-182962953,3),(4207,1,1,'AN',-1721731797,3),(4208,1,1,'AN',-464120703,3),(4209,1,NULL,'AN',-9.259309786933461e90,3),(4210,1,1,'AN',-183487203,3),(4211,1,1,'AN',-1723339218,3),(4212,1,1,'AN',-464955453,3),(4213,1,NULL,'AN',-2.152528373337624e91,3),(4214,1,1,'AN',-184012203,3),(4215,1,1,'AN',-465790953,3),(4216,1,1,'AN',-1724947389,3),(4217,1,NULL,'AN',-5.0040213629767975e91,3),(4218,1,1,'AN',-184537953,3),(4219,1,NULL,'AN',-1.1632938320948488e92,3),(4220,1,1,'AN',-466627203,3),(4221,1,1,'AN',-1726556310,3),(4222,1,1,'AN',-185064453,3),(4223,1,1,'AN',-1728165981,3),(4224,1,NULL,'AN',-2.704330061022949e92,3),(4225,1,1,'AN',-185591703,3),(4226,1,1,'AN',-467464203,3),(4227,1,NULL,'AN',-6.286804655176831e92,3),(4228,1,1,'AN',-1729776402,3),(4229,1,1,'AN',-186119703,3),(4230,1,1,'AN',-468301953,3),(4231,1,NULL,'AN',-1.4615047675579445e93,3),(4232,1,1,'AN',-1731387573,3),(4233,1,1,'AN',-469140453,3),(4234,1,1,'AN',-186648453,3),(4235,1,NULL,'AN',-3.3975863777407615e93,3),(4236,1,1,'AN',-1732999494,3),(4237,1,1,'AN',-469979703,3),(4238,1,1,'AN',-187177953,3),(4239,1,NULL,'AN',-7.898430063624078e93,3),(4240,1,1,'AN',-1734612165,3),(4241,1,1,'AN',-187708203,3),(4242,1,1,'AN',-470819703,3),(4243,1,NULL,'AN',-1.836162220294866e94,3),(4244,1,1,'AN',-1736225586,3),(4245,1,1,'AN',-188239203,3),(4246,1,NULL,'AN',-4.268559285933858e94,3),(4247,1,1,'AN',-471660453,3),(4248,1,1,'AN',-1737839757,3),(4249,1,NULL,'AN',-9.92319642357425e94,3),(4250,1,1,'AN',-188770953,3),(4251,1,1,'AN',-472501953,3),(4252,1,1,'AN',-189303453,3),(4253,1,NULL,'AN',-2.3068632919149898e95,3),(4254,1,1,'AN',-1739454678,3),(4255,1,1,'AN',-473344203,3),(4256,1,NULL,'AN',-5.362806519623506e95,3),(4257,1,1,'AN',-189836703,3),(4258,1,1,'AN',-1741070349,3),(4259,1,1,'AN',-474187203,3),(4260,1,NULL,'AN',-1.2467012617397962e96,3),(4261,1,1,'AN',-190370703,3),(4262,1,1,'AN',-1742686770,3),(4263,1,1,'AN',-475030953,3),(4264,1,NULL,'AN',-2.8982288104861864e96,3),(4265,1,1,'AN',-190905453,3),(4266,1,1,'AN',-1744303941,3),(4267,1,1,'AN',-475875453,3),(4268,1,NULL,'AN',-6.737564559941317e96,3),(4269,1,1,'AN',-191440953,3),(4270,1,1,'AN',-1745921862,3),(4271,1,1,'AN',-476720703,3),(4272,1,NULL,'AN',-1.566293732059138e97,3),(4273,1,1,'AN',-191977203,3),(4274,1,1,'AN',-477566703,3),(4275,1,1,'AN',-1747540533,3),(4276,1,NULL,'AN',-3.6411911652377674e97,3),(4277,1,1,'AN',-192514203,3),(4278,1,1,'AN',-478413453,3),(4279,1,1,'AN',-1749159954,3),(4280,1,NULL,'AN',-8.46474248758916e97,3),(4281,1,1,'AN',-193051953,3),(4282,1,1,'AN',-479260953,3),(4283,1,1,'AN',-1750780125,3),(4284,1,NULL,'AN',-1.9678138864351084e98,3),(4285,1,1,'AN',-480109203,3),(4286,1,1,'AN',-193590453,3),(4287,1,1,'AN',-1752401046,3),(4288,1,NULL,'AN',-4.57461227831127e98,3),(4289,1,1,'AN',-480958203,3),(4290,1,1,'AN',-194129703,3),(4291,1,NULL,'AN',-1.0634683310822506e99,3),(4292,1,1,'AN',-1754022717,3),(4293,1,1,'AN',-481807953,3),(4294,1,1,'AN',-194669703,3),(4295,1,1,'AN',-1755645138,3),(4296,1,NULL,'AN',-2.472263926228009e99,3),(4297,1,1,'AN',-482658453,3),(4298,1,1,'AN',-195210453,3),(4299,1,NULL,'AN',-5.747316344350654e99,3),(4300,1,1,'AN',-483509703,3),(4301,1,1,'AN',-1757268309,3),(4302,1,NULL,'AN',-1.336088951167819e100,3),(4303,1,1,'AN',-195751953,3),(4304,1,1,'AN',-484361703,3),(4305,1,1,'AN',-1758892230,3),(4306,1,NULL,'AN',-3.1060299772561282e100,3),(4307,1,1,'AN',-485214453,3),(4308,1,1,'AN',-196294203,3),(4309,1,1,'AN',-1760516901,3),(4310,1,NULL,'AN',-7.220643663867809e100,3),(4311,1,1,'AN',-486067953,3),(4312,1,NULL,'AN',-1.678595998825899e101,3),(4313,1,1,'AN',-1762142322,3),(4314,1,1,'AN',-196837203,3),(4315,1,1,'AN',-486922203,3),(4316,1,NULL,'AN',-3.9022622614297486e101,3),(4317,1,1,'AN',-1763768493,3),(4318,1,1,'AN',-197380953,3),(4319,1,1,'AN',-487777203,3),(4320,1,NULL,'AN',-9.07165915302423e101,3),(4321,1,1,'AN',-197925453,3),(4322,1,1,'AN',-1765395414,3),(4323,1,1,'AN',-488632953,3),(4324,1,NULL,'AN',-2.1089048935039087e102,3),(4325,1,1,'AN',-198470703,3),(4326,1,1,'AN',-489489453,3),(4327,1,1,'AN',-1767023085,3),(4328,1,NULL,'AN',-4.902609076049856e102,3),(4329,1,1,'AN',-199016703,3),(4330,1,1,'AN',-490346703,3),(4331,1,1,'AN',-1768651506,3),(4332,1,NULL,'AN',-1.1397183356444173e103,3),(4333,1,1,'AN',-199563453,3),(4334,1,1,'AN',-491204703,3),(4335,1,1,'AN',-1770280677,3),(4336,1,NULL,'AN',-2.6495236810736714e103,3),(4337,1,1,'AN',-492063453,3),(4338,1,1,'AN',-1771910598,3),(4339,1,1,'AN',-200110953,3),(4340,1,NULL,'AN',-6.159395279537165e103,3),(4341,1,1,'AN',-492922953,3),(4342,1,1,'AN',-1773541269,3),(4343,1,1,'AN',-200659203,3),(4344,1,NULL,'AN',-1.4318856812108573e104,3),(4345,1,1,'AN',-493783203,3),(4346,1,NULL,'AN',-3.328730355832506e104,3),(4347,1,1,'AN',-201208203,3),(4348,1,1,'AN',-1775172690,3),(4349,1,1,'AN',-494644203,3),(4350,1,NULL,'AN',-7.738359233029516e104,3),(4351,1,1,'AN',-201757953,3),(4352,1,1,'AN',-1776804861,3),(4353,1,1,'AN',-495505953,3),(4354,1,NULL,'AN',-1.79895026686344e105,3),(4355,1,1,'AN',-202308453,3),(4356,1,1,'AN',-1778437782,3),(4357,1,1,'AN',-496368453,3),(4358,1,1,'AN',-202859703,3),(4359,1,1,'AN',-1780071453,3),(4360,1,NULL,'AN',-4.182051989567667e105,3),(4361,1,1,'AN',-497231703,3),(4362,1,1,'AN',-203411703,3),(4363,1,1,'AN',-1781705874,3),(4364,1,1,'AN',-498095703,3),(4365,1,NULL,'AN',-9.722091358279076e105,3),(4366,1,1,'AN',-203964453,3),(4367,1,1,'AN',-1783341045,3),(4368,1,1,'AN',-498960453,3),(4369,1,NULL,'AN',-2.2601120362565333e106,3),(4370,1,1,'AN',-204517953,3),(4371,1,1,'AN',-1784976966,3),(4372,1,1,'AN',-499825953,3),(4373,1,NULL,'AN',-5.254123036070551e106,3),(4374,1,1,'AN',-205072203,3),(4375,1,1,'AN',-1786613637,3),(4376,1,NULL,'AN',-1.2214354171526494e107,3),(4377,1,1,'AN',-1788251058,3),(4378,1,1,'AN',-205627203,3),(4379,1,1,'AN',-500692203,3),(4380,1,NULL,'AN',-2.8394928478694905e107,3),(4381,1,1,'AN',-1789889229,3),(4382,1,1,'AN',-206182953,3),(4383,1,NULL,'AN',-6.601020012910229e107,3),(4384,1,1,'AN',-501559203,3),(4385,1,1,'AN',-206739453,3),(4386,1,1,'AN',-1791528150,3),(4387,1,NULL,'AN',-1.5345509760144358e108,3),(4388,1,1,'AN',-502426953,3),(4389,1,1,'AN',-207296703,3),(4390,1,1,'AN',-1793167821,3),(4391,1,NULL,'AN',-3.56739821024821e108,3),(4392,1,1,'AN',-207854703,3),(4393,1,1,'AN',-503295453,3),(4394,1,NULL,'AN',-8.29319468000678e108,3),(4395,1,1,'AN',-1794808242,3),(4396,1,1,'AN',-208413453,3),(4397,1,1,'AN',-504164703,3),(4398,1,NULL,'AN',-1.9279338595538365e109,3),(4399,1,1,'AN',-1796449413,3),(4400,1,1,'AN',-208972953,3),(4401,1,1,'AN',-505034703,3),(4402,1,NULL,'AN',-4.481902463684973e109,3),(4403,1,1,'AN',-1798091334,3),(4404,1,1,'AN',-209533203,3),(4405,1,1,'AN',-505905453,3),(4406,1,NULL,'AN',-1.0419159139947924e110,3),(4407,1,1,'AN',-1799734005,3),(4408,1,1,'AN',-210094203,3),(4409,1,1,'AN',-506776953,3),(4410,1,NULL,'AN',-2.4221606352027666e110,3),(4411,1,1,'AN',-1801377426,3),(4412,1,1,'AN',-210655953,3),(4413,1,1,'AN',-507649203,3),(4414,1,NULL,'AN',-5.630840323987212e110,3),(4415,1,1,'AN',-211218453,3),(4416,1,1,'AN',-1803021597,3),(4417,1,1,'AN',-508522203,3),(4418,1,NULL,'AN',-1.3090115615550893e111,3),(4419,1,1,'AN',-211781703,3),(4420,1,1,'AN',-1804666518,3),(4421,1,1,'AN',-509395953,3),(4422,1,NULL,'AN',-3.043082683388103e111,3),(4423,1,1,'AN',-1806312189,3),(4424,1,1,'AN',-212345703,3),(4425,1,1,'AN',-510270453,3),(4426,1,NULL,'AN',-7.074308959452851e111,3),(4427,1,1,'AN',-1807958610,3),(4428,1,1,'AN',-212910453,3),(4429,1,1,'AN',-511145703,3),(4430,1,NULL,'AN',-1.6445773073137435e112,3),(4431,1,1,'AN',-1809605781,3),(4432,1,1,'AN',-213475953,3),(4433,1,1,'AN',-512021703,3),(4434,1,NULL,'AN',-3.823178398389471e112,3),(4435,1,1,'AN',-1811253702,3),(4436,1,1,'AN',-214042203,3),(4437,1,1,'AN',-512898453,3),(4438,1,1,'AN',-1812902373,3),(4439,1,1,'AN',-214609203,3),(4440,1,NULL,'AN',-8.88781147648621e112,3),(4441,1,1,'AN',-513775953,3),(4442,1,1,'AN',-1814551794,3),(4443,1,1,'AN',-215176953,3),(4444,1,NULL,'AN',-2.0661654939993434e113,3),(4445,1,1,'AN',-1816201965,3),(4446,1,1,'AN',-514654203,3),(4447,1,1,'AN',-215745453,3),(4448,1,NULL,'AN',-4.803252026539736e113,3),(4449,1,1,'AN',-515533203,3),(4450,1,1,'AN',-1817852886,3),(4451,1,1,'AN',-216314703,3),(4452,1,NULL,'AN',-1.1166206239269143e114,3),(4453,1,1,'AN',-516412953,3),(4454,1,1,'AN',-216884703,3),(4455,1,1,'AN',-1819504557,3),(4456,1,1,'AN',-517293453,3),(4457,1,NULL,'AN',-2.595828015872729e114,3),(4458,1,1,'AN',-1821156978,3),(4459,1,1,'AN',-217455453,3),(4460,1,1,'AN',-518174703,3),(4461,1,NULL,'AN',-6.034568002418333e114,3),(4462,1,1,'AN',-1822810149,3),(4463,1,1,'AN',-218026953,3),(4464,1,1,'AN',-519056703,3),(4465,1,NULL,'AN',-1.4028668599436455e115,3),(4466,1,1,'AN',-1824464070,3),(4467,1,1,'AN',-218599203,3),(4468,1,1,'AN',-519939453,3),(4469,1,NULL,'AN',-3.2612697809345424e115,3),(4470,1,1,'AN',-1826118741,3),(4471,1,1,'AN',-219172203,3),(4472,1,1,'AN',-520822953,3),(4473,1,NULL,'AN',-7.581532423158172e115,3),(4474,1,1,'AN',-1827774162,3),(4475,1,1,'AN',-219745953,3),(4476,1,1,'AN',-521707203,3),(4477,1,NULL,'AN',-1.7624924567549075e116,3),(4478,1,1,'AN',-1829430333,3),(4479,1,1,'AN',-220320453,3),(4480,1,1,'AN',-522592203,3),(4481,1,NULL,'AN',-4.097297863726542e116,3),(4482,1,1,'AN',-1831087254,3),(4483,1,1,'AN',-220895703,3),(4484,1,1,'AN',-523477953,3),(4485,1,NULL,'AN',-9.525061919985627e116,3),(4486,1,1,'AN',-1832744925,3),(4487,1,1,'AN',-221471703,3),(4488,1,1,'AN',-524364453,3),(4489,1,NULL,'AN',-2.214308248925871e117,3),(4490,1,1,'AN',-1834403346,3),(4491,1,1,'AN',-222048453,3),(4492,1,1,'AN',-1836062517,3),(4493,1,1,'AN',-525251703,3),(4494,1,NULL,'AN',-5.147642149153142e117,3),(4495,1,1,'AN',-222625953,3),(4496,1,NULL,'AN',-1.1966816141606245e118,3),(4497,1,1,'AN',-526139703,3),(4498,1,1,'AN',-1837722438,3),(4499,1,1,'AN',-223204203,3),(4500,1,1,'AN',-1839383109,3),(4501,1,NULL,'AN',-2.7819472375438324e118,3),(4502,1,1,'AN',-527028453,3),(4503,1,1,'AN',-223783203,3),(4504,1,1,'AN',-1841044530,3),(4505,1,1,'AN',-527917953,3),(4506,1,NULL,'AN',-6.467242699225563e118,3),(4507,1,1,'AN',-224362953,3),(4508,1,1,'AN',-1842706701,3),(4509,1,NULL,'AN',-1.5034515236749651e119,3),(4510,1,1,'AN',-528808203,3),(4511,1,1,'AN',-224943453,3),(4512,1,1,'AN',-1844369622,3),(4513,1,1,'AN',-529699203,3),(4514,1,NULL,'AN',-3.4951007549341654e119,3),(4515,1,1,'AN',-225524703,3),(4516,1,1,'AN',-1846033293,3),(4517,1,1,'AN',-530590953,3),(4518,1,NULL,'AN',-8.125123487375122e119,3),(4519,1,1,'AN',-1847697714,3),(4520,1,1,'AN',-226106703,3),(4521,1,1,'AN',-531483453,3),(4522,1,NULL,'AN',-1.8888620475932e120,3),(4523,1,1,'AN',-1849362885,3),(4524,1,1,'AN',-226689453,3),(4525,1,1,'AN',-532376703,3),(4526,1,NULL,'AN',-4.391071520797993e120,3),(4527,1,1,'AN',-1851028806,3),(4528,1,1,'AN',-227272953,3),(4529,1,1,'AN',-533270703,3),(4530,1,NULL,'AN',-1.0208002815945089e121,3),(4531,1,1,'AN',-1852695477,3),(4532,1,1,'AN',-227857203,3),(4533,1,NULL,'AN',-2.373072745383248e121,3),(4534,1,1,'AN',-534165453,3),(4535,1,1,'AN',-1854362898,3),(4536,1,1,'AN',-228442203,3),(4537,1,NULL,'AN',-5.516724825040525e121,3),(4538,1,1,'AN',-1856031069,3),(4539,1,1,'AN',-535060953,3),(4540,1,1,'AN',-229027953,3),(4541,1,1,'AN',-1857699990,3),(4542,1,NULL,'AN',-1.282482926594959e122,3),(4543,1,1,'AN',-535957203,3),(4544,1,1,'AN',-229614453,3),(4545,1,1,'AN',-536854203,3),(4546,1,1,'AN',-1859369661,3),(4547,1,NULL,'AN',-2.981411089315097e122,3),(4548,1,1,'AN',-230201703,3),(4549,1,NULL,'AN',-6.930939897259424e122,3),(4550,1,1,'AN',-537751953,3),(4551,1,1,'AN',-1861040082,3),(4552,1,1,'AN',-230789703,3),(4553,1,NULL,'AN',-1.6112480439743038e123,3),(4554,1,1,'AN',-1862711253,3),(4555,1,1,'AN',-538650453,3),(4556,1,1,'AN',-231378453,3),(4557,1,NULL,'AN',-3.745697261402537e123,3),(4558,1,1,'AN',-1864383174,3),(4559,1,1,'AN',-539549703,3),(4560,1,1,'AN',-231967953,3),(4561,1,NULL,'AN',-8.707689685984945e123,3),(4562,1,1,'AN',-1866055845,3),(4563,1,1,'AN',-232558203,3),(4564,1,1,'AN',-540449703,3),(4565,1,NULL,'AN',-2.0242922579124066e124,3),(4566,1,1,'AN',-1867729266,3),(4567,1,1,'AN',-233149203,3),(4568,1,1,'AN',-541350453,3),(4569,1,1,'AN',-233740953,3),(4570,1,1,'AN',-1869403437,3),(4571,1,1,'AN',-542251953,3),(4572,1,NULL,'AN',-4.705908562680484e124,3),(4573,1,1,'AN',-234333453,3),(4574,1,1,'AN',-1871078358,3),(4575,1,1,'AN',-543154203,3),(4576,1,NULL,'AN',-1.093991014081513e125,3),(4577,1,1,'AN',-234926703,3),(4578,1,1,'AN',-1872754029,3),(4579,1,1,'AN',-544057203,3),(4580,1,1,'AN',-235520703,3),(4581,1,NULL,'AN',-2.543220555499684e125,3),(4582,1,1,'AN',-1874430450,3),(4583,1,1,'AN',-544960953,3),(4584,1,1,'AN',-236115453,3),(4585,1,NULL,'AN',-5.9122704946040734e125,3),(4586,1,1,'AN',-1876107621,3),(4587,1,1,'AN',-545865453,3),(4588,1,NULL,'AN',-1.374436138689436e126,3),(4589,1,1,'AN',-236710953,3),(4590,1,1,'AN',-1877785542,3),(4591,1,1,'AN',-546770703,3),(4592,1,1,'AN',-237307203,3),(4593,1,NULL,'AN',-3.195176372697463e126,3),(4594,1,1,'AN',-1879464213,3),(4595,1,1,'AN',-547676703,3),(4596,1,1,'AN',-237904203,3),(4597,1,NULL,'AN',-7.427883890173924e126,3),(4598,1,1,'AN',-1881143634,3),(4599,1,1,'AN',-548583453,3),(4600,1,1,'AN',-238501953,3),(4601,1,NULL,'AN',-1.726773506381628e127,3),(4602,1,1,'AN',-1882823805,3),(4603,1,1,'AN',-549490953,3),(4604,1,1,'AN',-239100453,3),(4605,1,NULL,'AN',-4.0142613783798455e127,3),(4606,1,1,'AN',-550399203,3),(4607,1,1,'AN',-1884504726,3),(4608,1,1,'AN',-239699703,3),(4609,1,NULL,'AN',-9.332025511393675e127,3),(4610,1,1,'AN',-1886186397,3),(4611,1,1,'AN',-551308203,3),(4612,1,1,'AN',-240299703,3),(4613,1,1,'AN',-1887868818,3),(4614,1,NULL,'AN',-2.1694327283802957e128,3),(4615,1,1,'AN',-240900453,3),(4616,1,1,'AN',-552217953,3),(4617,1,NULL,'AN',-5.043319220700135e128,3),(4618,1,1,'AN',-1889551989,3),(4619,1,1,'AN',-241501953,3),(4620,1,1,'AN',-553128453,3),(4621,1,1,'AN',-1891235910,3),(4622,1,NULL,'AN',-1.1724294756479185e129,3),(4623,1,1,'AN',-242104203,3),(4624,1,1,'AN',-554039703,3),(4625,1,1,'AN',-1892920581,3),(4626,1,NULL,'AN',-2.7255678556417573e129,3),(4627,1,1,'AN',-554951703,3),(4628,1,1,'AN',-242707203,3),(4629,1,1,'AN',-1894606002,3),(4630,1,NULL,'AN',-6.33617653769945e129,3),(4631,1,1,'AN',-555864453,3),(4632,1,1,'AN',-243310953,3),(4633,1,1,'AN',-1896292173,3),(4634,1,NULL,'AN',-1.4729823377462752e130,3),(4635,1,1,'AN',-243915453,3),(4636,1,1,'AN',-556777953,3),(4637,1,1,'AN',-1897979094,3),(4638,1,NULL,'AN',-3.4242684912631116e130,3),(4639,1,1,'AN',-244520703,3),(4640,1,1,'AN',-557692203,3),(4641,1,1,'AN',-1899666765,3),(4642,1,NULL,'AN',-7.960458452066728e130,3),(4643,1,1,'AN',-558607203,3),(4644,1,NULL,'AN',-1.8505820711420237e131,3),(4645,1,1,'AN',-245126703,3),(4646,1,1,'AN',-1901355186,3),(4647,1,1,'AN',-245733453,3),(4648,1,1,'AN',-559522953,3),(4649,1,NULL,'AN',-4.302081372139036e131,3),(4650,1,1,'AN',-1903044357,3),(4651,1,1,'AN',-246340953,3),(4652,1,1,'AN',-560439453,3),(4653,1,NULL,'AN',-1.0001125819339735e132,3),(4654,1,1,'AN',-1904734278,3),(4655,1,1,'AN',-246949203,3),(4656,1,1,'AN',-561356703,3),(4657,1,1,'AN',-1906424949,3),(4658,1,1,'AN',-247558203,3),(4659,1,NULL,'AN',-2.3249796784883153e132,3),(4660,1,1,'AN',-562274703,3),(4661,1,1,'AN',-1908116370,3),(4662,1,1,'AN',-248167953,3),(4663,1,NULL,'AN',-5.404922008810905e132,3),(4664,1,1,'AN',-248778453,3),(4665,1,1,'AN',-1909808541,3),(4666,1,1,'AN',-563193453,3),(4667,1,NULL,'AN',-1.2564919251390058e133,3),(4668,1,1,'AN',-249389703,3),(4669,1,1,'AN',-564112953,3),(4670,1,1,'AN',-1911501462,3),(4671,1,NULL,'AN',-2.9209893415036674e133,3),(4672,1,1,'AN',-250001703,3),(4673,1,NULL,'AN',-6.790476375114082e133,3),(4674,1,1,'AN',-565033203,3),(4675,1,1,'AN',-1913195133,3),(4676,1,1,'AN',-250614453,3),(4677,1,NULL,'AN',-1.5785942367473917e134,3),(4678,1,1,'AN',-565954203,3),(4679,1,NULL,'AN',-3.669786369369725e134,3),(4680,1,1,'AN',-251227953,3),(4681,1,1,'AN',-1914889554,3),(4682,1,1,'AN',-566875953,3),(4683,1,NULL,'AN',-8.5312182721258e134,3),(4684,1,1,'AN',-1916584725,3),(4685,1,1,'AN',-251842203,3),(4686,1,1,'AN',-567798453,3),(4687,1,NULL,'AN',-1.983267631438534e135,3),(4688,1,1,'AN',-1918280646,3),(4689,1,1,'AN',-568721703,3),(4690,1,1,'AN',-252457203,3),(4691,1,NULL,'AN',-4.610537876827415e135,3),(4692,1,1,'AN',-1919977317,3),(4693,1,1,'AN',-569645703,3),(4694,1,1,'AN',-253072953,3),(4695,1,NULL,'AN',-1.0718200194817759e136,3),(4696,1,1,'AN',-1921674738,3),(4697,1,1,'AN',-570570453,3),(4698,1,1,'AN',-253689453,3),(4699,1,NULL,'AN',-2.491679246223698e136,3),(4700,1,1,'AN',-1923372909,3),(4701,1,1,'AN',-571495953,3),(4702,1,1,'AN',-254306703,3),(4703,1,NULL,'AN',-5.792451487390283e136,3),(4704,1,1,'AN',-572422203,3),(4705,1,1,'AN',-1925071830,3),(4706,1,1,'AN',-254924703,3),(4707,1,NULL,'AN',-1.346581598920523e137,3),(4708,1,1,'AN',-573349203,3),(4709,1,1,'AN',-1926771501,3),(4710,1,1,'AN',-255543453,3),(4711,1,NULL,'AN',-3.1304224239058822e137,3),(4712,1,1,'AN',-574276953,3),(4713,1,1,'AN',-1928471922,3),(4714,1,1,'AN',-256162953,3),(4715,1,NULL,'AN',-7.277349222615627e137,3),(4716,1,1,'AN',-575205453,3),(4717,1,NULL,'AN',-1.6917784418955642e138,3),(4718,1,1,'AN',-1930173093,3),(4719,1,1,'AN',-256783203,3),(4720,1,1,'AN',-576134703,3),(4721,1,NULL,'AN',-3.9329077235541554e138,3),(4722,1,1,'AN',-257404203,3),(4723,1,1,'AN',-577064703,3),(4724,1,1,'AN',-1931875014,3),(4725,1,NULL,'AN',-9.1429012091329e138,3),(4726,1,1,'AN',-258025953,3),(4727,1,1,'AN',-577995453,3),(4728,1,1,'AN',-1933577685,3),(4729,1,NULL,'AN',-2.125466662218596e139,3),(4730,1,1,'AN',-258648453,3),(4731,1,1,'AN',-578926953,3),(4732,1,1,'AN',-1935281106,3),(4733,1,NULL,'AN',-4.941110517184621e139,3),(4734,1,1,'AN',-259271703,3),(4735,1,1,'AN',-579859203,3),(4736,1,1,'AN',-1936985277,3),(4737,1,NULL,'AN',-1.1486688348029962e140,3),(4738,1,1,'AN',-259895703,3),(4739,1,1,'AN',-580792203,3),(4740,1,1,'AN',-1938690198,3),(4741,1,1,'AN',-260520453,3),(4742,1,NULL,'AN',-2.6703310671939244e140,3),(4743,1,1,'AN',-581725953,3),(4744,1,1,'AN',-1940395869,3),(4745,1,1,'AN',-261145953,3),(4746,1,NULL,'AN',-6.207766583694243e140,3),(4747,1,1,'AN',-582660453,3),(4748,1,1,'AN',-1942102290,3),(4749,1,1,'AN',-261772203,3),(4750,1,NULL,'AN',-1.4431306451497876e141,3),(4751,1,1,'AN',-1943809461,3),(4752,1,1,'AN',-583595703,3),(4753,1,1,'AN',-262399203,3),(4754,1,NULL,'AN',-3.354871725429906e141,3),(4755,1,1,'AN',-584531703,3),(4756,1,1,'AN',-1945517382,3),(4757,1,1,'AN',-263026953,3),(4758,1,NULL,'AN',-7.799130544359569e141,3),(4759,1,1,'AN',-585468453,3),(4760,1,1,'AN',-263655453,3),(4761,1,1,'AN',-1947226053,3),(4762,1,NULL,'AN',-1.813077882736868e142,3),(4763,1,1,'AN',-586405953,3),(4764,1,1,'AN',-1948935474,3),(4765,1,1,'AN',-264284703,3),(4766,1,NULL,'AN',-4.214894711881682e142,3),(4767,1,1,'AN',-587344203,3),(4768,1,1,'AN',-1950645645,3),(4769,1,1,'AN',-264914703,3),(4770,1,NULL,'AN',-9.798441424607263e142,3),(4771,1,1,'AN',-588283203,3),(4772,1,1,'AN',-1952356566,3),(4773,1,1,'AN',-265545453,3),(4774,1,1,'AN',-589222953,3),(4775,1,NULL,'AN',-2.2778612732795297e143,3),(4776,1,1,'AN',-1954068237,3),(4777,1,1,'AN',-266176953,3),(4778,1,NULL,'AN',-5.2953850061053045e143,3),(4779,1,1,'AN',-1955780658,3),(4780,1,1,'AN',-266809203,3),(4781,1,1,'AN',-590163453,3),(4782,1,1,'AN',-267442203,3),(4783,1,1,'AN',-591104703,3),(4784,1,NULL,'AN',-1.231027661421758e144,3),(4785,1,1,'AN',-1957493829,3),(4786,1,1,'AN',-268075953,3),(4787,1,NULL,'AN',-2.8617921103721653e144,3),(4788,1,1,'AN',-592046703,3),(4789,1,1,'AN',-1959207750,3),(4790,1,NULL,'AN',-6.652859508883512e144,3),(4791,1,1,'AN',-268710453,3),(4792,1,1,'AN',-592989453,3),(4793,1,1,'AN',-1960922421,3),(4794,1,NULL,'AN',-1.5466021967327963e145,3),(4795,1,1,'AN',-593932953,3),(4796,1,1,'AN',-269345703,3),(4797,1,1,'AN',-1962637842,3),(4798,1,NULL,'AN',-3.5954138994589035e145,3),(4799,1,1,'AN',-594877203,3),(4800,1,1,'AN',-269981703,3),(4801,1,1,'AN',-1964354013,3),(4802,1,NULL,'AN',-8.358323255799468e145,3),(4803,1,1,'AN',-595822203,3),(4804,1,1,'AN',-270618453,3),(4805,1,1,'AN',-1966070934,3),(4806,1,NULL,'AN',-1.9430744165213393e146,3),(4807,1,1,'AN',-596767953,3),(4808,1,1,'AN',-1967788605,3),(4809,1,NULL,'AN',-4.517099988350015e146,3),(4810,1,1,'AN',-271255953,3),(4811,1,1,'AN',-597714453,3),(4812,1,NULL,'AN',-1.0500983457587314e147,3),(4813,1,1,'AN',-1969507026,3),(4814,1,1,'AN',-271894203,3),(4815,1,1,'AN',-598661703,3),(4816,1,NULL,'AN',-2.441182481258325e147,3),(4817,1,1,'AN',-272533203,3),(4818,1,1,'AN',-1971226197,3),(4819,1,1,'AN',-599609703,3),(4820,1,NULL,'AN',-5.675060751092512e147,3),(4821,1,1,'AN',-1972946118,3),(4822,1,1,'AN',-600558453,3),(4823,1,1,'AN',-273172953,3),(4824,1,NULL,'AN',-1.3192915636519618e148,3),(4825,1,1,'AN',-1974666789,3),(4826,1,1,'AN',-273813453,3),(4827,1,1,'AN',-601507953,3),(4828,1,NULL,'AN',-3.0669807888632164e148,3),(4829,1,1,'AN',-1976388210,3),(4830,1,1,'AN',-274454703,3),(4831,1,1,'AN',-602458203,3),(4832,1,NULL,'AN',-7.129865314394976e148,3),(4833,1,1,'AN',-1978110381,3),(4834,1,1,'AN',-603409203,3),(4835,1,1,'AN',-275096703,3),(4836,1,NULL,'AN',-1.6574925929110455e149,3),(4837,1,1,'AN',-1979833302,3),(4838,1,1,'AN',-275739453,3),(4839,1,1,'AN',-604360953,3),(4840,1,NULL,'AN',-3.8532027947404626e149,3),(4841,1,1,'AN',-1981556973,3),(4842,1,1,'AN',-276382953,3),(4843,1,1,'AN',-605313453,3),(4844,1,NULL,'AN',-8.957609729838796e149,3),(4845,1,1,'AN',-1983281394,3),(4846,1,1,'AN',-277027203,3),(4847,1,NULL,'AN',-2.082391619294651e150,3),(4848,1,1,'AN',-606266703,3),(4849,1,1,'AN',-1985006565,3),(4850,1,1,'AN',-277672203,3),(4851,1,1,'AN',-607220703,3),(4852,1,1,'AN',-1986732486,3),(4853,1,NULL,'AN',-4.8409731913902405e150,3),(4854,1,1,'AN',-278317953,3),(4855,1,1,'AN',-608175453,3),(4856,1,1,'AN',-1988459157,3),(4857,1,NULL,'AN',-1.1253897308565297e151,3),(4858,1,1,'AN',-278964453,3),(4859,1,NULL,'AN',-2.6162137162210058e151,3),(4860,1,1,'AN',-609130953,3),(4861,1,1,'AN',-1990186578,3),(4862,1,1,'AN',-279611703,3),(4863,1,NULL,'AN',-6.081959006088983e151,3),(4864,1,1,'AN',-1991914749,3),(4865,1,1,'AN',-610087203,3),(4866,1,1,'AN',-280259703,3),(4867,1,NULL,'AN',-1.4138839316681465e152,3),(4868,1,1,'AN',-1993643670,3),(4869,1,1,'AN',-611044203,3),(4870,1,1,'AN',-280908453,3),(4871,1,NULL,'AN',-3.2868813654087435e152,3),(4872,1,1,'AN',-1995373341,3),(4873,1,1,'AN',-281557953,3),(4874,1,1,'AN',-612001953,3),(4875,1,NULL,'AN',-7.6410721334988335e152,3),(4876,1,1,'AN',-1997103762,3),(4877,1,1,'AN',-612960453,3),(4878,1,1,'AN',-282208203,3),(4879,1,NULL,'AN',-1.776333760134717e153,3),(4880,1,1,'AN',-1998834933,3),(4881,1,1,'AN',-613919703,3),(4882,1,1,'AN',-282859203,3),(4883,1,NULL,'AN',-4.129474990245257e153,3),(4884,1,1,'AN',-2000566854,3),(4885,1,1,'AN',-614879703,3),(4886,1,1,'AN',-283510953,3),(4887,1,NULL,'AN',0,3),(4888,1,NULL,'AN',-7.246723433705683e153,3),(4889,1,NULL,'AN',-2.1740170301117045e154,3),(4890,1,NULL,'AN',-5.072706403593978e154,3),(4891,1,NULL,'AN',-1.1594757493929092e155,3),(4892,1,NULL,'AN',-2.681287670471103e155,3),(4893,1,NULL,'AN',-6.232182152986888e155,3),(4894,1,NULL,'AN',-1.4493446867411367e156,3),(4895,1,NULL,'AN',-3.369726396673142e156,3),(4896,1,NULL,'AN',-7.833708031835843e156,3),(4897,1,NULL,'AN',-1.821101598890238e157,3),(4898,1,NULL,'AN',-4.2335358299708594e157,3),(4899,1,NULL,'AN',-9.841775095315687e157,3),(4900,1,NULL,'AN',-2.2879355224895586e158,3),(4901,1,NULL,'AN',-5.318805131402623e158,3),(4902,1,NULL,'AN',-1.2364721858760323e159,3),(4903,1,NULL,'AN',-2.8744490835965276e159,3),(4904,1,NULL,'AN',-6.682283392177781e159,3),(4905,1,NULL,'AN',-1.5534424195216324e160,3),(4906,1,NULL,'AN',-3.6113154884889935e160,3),(4907,1,NULL,'AN',-8.395289965641493e160,3),(4908,1,NULL,'AN',-1.951668133946813e161,3),(4909,1,NULL,'AN',-4.53707795756104e161,3),(4910,1,NULL,'AN',-1.054742660135364e162,3),(4911,1,NULL,'AN',-2.4519792022885657e162,3),(4912,1,NULL,'AN',-5.700160082351073e162,3),(4913,1,NULL,'AN',-1.3251264502611454e163,3),(4914,1,NULL,'AN',-3.0805452545420775e163,3),(4915,1,NULL,'AN',-7.161398871339049e163,3),(4916,1,NULL,'AN',-1.6648232555194137e164,3),(4917,1,NULL,'AN',-3.8702445177446386e164,3),(4918,1,NULL,'AN',-8.997226929328996e164,3),(4919,1,NULL,'AN',-2.091601500801712e165,3),(4920,1,NULL,'AN',-4.8623835683138e165,3),(4921,1,NULL,'AN',-1.1303670396270878e166,3),(4922,1,NULL,'AN',-2.6277845552986753e166,3),(4923,1,NULL,'AN',-6.108857943473228e166,3),(4924,1,NULL,'AN',-1.4201371759449422e167,3),(4925,1,NULL,'AN',-3.301418394670049e167,3),(4926,1,NULL,'AN',-7.674866626467583e167,3),(4927,1,NULL,'AN',-1.7841900266007593e168,3),(4928,1,NULL,'AN',-4.1477385939757676e168,3),(4929,1,NULL,'AN',-9.64232239137254e168,3),(4930,1,NULL,'AN',-2.2415680012766848e169,3),(4931,1,NULL,'AN',-5.2110133849531244e169,3),(4932,1,NULL,'AN',-1.2114136391443255e170,3),(4933,1,NULL,'AN',-2.81619504057002e170,3),(4934,1,NULL,'AN',-6.546859181916723e170,3),(4935,1,NULL,'AN',-1.5219601103754452e171,3),(4936,1,NULL,'AN',-3.5381279987999932e171,3),(4937,1,NULL,'AN',-8.22514969384076e171,3),(4938,1,NULL,'AN',-1.912115319429774e172,3),(4939,1,NULL,'AN',-4.4451288194011695e172,3),(4940,1,NULL,'AN',-1.0333670788728035e173,3),(4941,1,NULL,'AN',-2.4022870046811547e173,3),(4942,1,NULL,'AN',-5.584639738237973e173,3),(4943,1,NULL,'AN',-1.2982712284224416e174,3),(4944,1,NULL,'AN',-3.018114438087845e174,3),(4945,1,NULL,'AN',-7.01626483124245e174,3),(4946,1,NULL,'AN',-1.6310836845974096e175,3),(4947,1,NULL,'AN',-3.791809531352524e175,3),(4948,1,NULL,'AN',-8.814887707986999e175,3),(4949,1,NULL,'AN',-2.0492127745853355e176,3),(4950,1,NULL,'AN',-4.763841735293859e176,3),(4951,1,NULL,'AN',-1.1074588427509607e177,3),(4952,1,NULL,'AN',-2.5745294586526442e177,3),(4953,1,NULL,'AN',-5.985054863985396e177,3),(4954,1,NULL,'AN',-1.3913564517401864e178,3),(4955,1,NULL,'AN',-3.234511328288743e178,3),(4956,1,NULL,'AN',-7.519326567784398e178,3),(4957,1,NULL,'AN',-1.7480313498515893e179,3),(4958,1,NULL,'AN',-4.0636798688267626e179,3),(4959,1,NULL,'AN',-9.44690956355555e179,3),(4960,1,NULL,'AN',-2.1961400302864717e180,3),(4961,1,NULL,'AN',-5.105406165030981e180,3),(4962,1,NULL,'AN',-1.1868629390875554e181,3),(4963,1,NULL,'AN',-2.7591215872851176e181,3),(4964,1,NULL,'AN',-6.414179500183339e181,3),(4965,1,NULL,'AN',-1.4911158265067337e182,3),(4966,1,NULL,'AN',-3.4664237382120457e182,3),(4967,1,NULL,'AN',-8.058457511641003e182,3),(4968,1,NULL,'AN',-1.8733640885005647e183,3),(4969,1,NULL,'AN',-4.355043136994699e183,3),(4970,1,NULL,'AN',-1.0124246985147069e184,3),(4971,1,NULL,'AN',-2.353601876995237e184,3),(4972,1,NULL,'AN',-5.471460547655768e184,3),(4973,1,NULL,'AN',-1.2719602587491539e185,3),(4974,1,NULL,'AN',-2.956948854415831e185,3),(4975,1,NULL,'AN',-6.874072100514764e185,3),(4976,1,NULL,'AN',-1.598027885146178e186,3),(4977,1,NULL,'AN',-3.7149641207771655e186,3),(4978,1,NULL,'AN',-8.636243802090616e186,3),(4979,1,NULL,'AN',-2.007683104986369e187,3),(4980,1,NULL,'AN',-4.6672969666187015e187,3),(4981,1,NULL,'AN',-1.0850149070092429e188,3),(4982,1,NULL,'AN',-2.522353638202625e188,3),(4983,1,NULL,'AN',-5.863760797251261e188,3),(4984,1,NULL,'AN',-1.3631590022357775e189,3),(4985,1,NULL,'AN',-3.1689602110773425e189,3),(4986,1,NULL,'AN',-7.366938708485599e189,3),(4987,1,NULL,'AN',-1.7126054705537889e190,3),(4988,1,NULL,'AN',-3.981324691071981e190,3),(4989,1,NULL,'AN',-9.255457002956924e190,3),(4990,1,NULL,'AN',-2.15163270972806e191,3),(4991,1,NULL,'AN',-5.001939197699995e191,3),(4992,1,NULL,'AN',-1.162809787393955e192,3),(4993,1,NULL,'AN',-2.703204793614673e192,3),(4994,1,NULL,'AN',-6.284188725826109e192,3),(4995,1,NULL,'AN',-1.4608966377642933e193,3),(4996,1,NULL,'AN',-3.3961726474891253e193,3),(4997,1,NULL,'AN',-7.895143539521402e193,3),(4998,1,NULL,'AN',-1.8353981961350246e194,3),(4999,1,NULL,'AN',-4.266783145249706e194,3),(5000,1,NULL,'AN',-9.91906739743121e194,3),(5001,1,NULL,'AN',-2.3059034097929244e195,3),(5002,1,NULL,'AN',-5.360575064417502e195,3),(5003,1,NULL,'AN',-1.2461825113409778e196,3),(5004,1,NULL,'AN',-2.8970228621187254e196,3),(5005,1,NULL,'AN',-6.7347610701159725e196,3),(5006,1,NULL,'AN',-1.565641999745144e197,3),(5007,1,NULL,'AN',-3.639676071424111e197,3),(5008,1,NULL,'AN',-8.461220321793641e197,3),(5009,1,NULL,'AN',-1.9669950822277852e198,3),(5010,1,NULL,'AN',-4.572708789467038e198,3),(5011,1,NULL,'AN',-1.0630258236124908e199,3),(5012,1,NULL,'AN',-2.4712352211668435e199,3),(5013,1,NULL,'AN',-5.744924895222252e199,3),(5014,1,NULL,'AN',-1.3355330066945557e200,3),(5015,1,NULL,'AN',-3.104737563155902e200,3),(5016,1,NULL,'AN',-7.217639165600819e200,3),(5017,1,NULL,'AN',-1.6778975377185206e201,3),(5018,1,NULL,'AN',-3.9006385363509886e201,3),(5019,1,NULL,'AN',-9.067884450176006e201,3),(5020,1,NULL,'AN',-2.1080273815544566e202,3),(5021,1,NULL,'AN',-4.900569108263267e202,3),(5022,1,NULL,'AN',-1.1392441006698487e203,3),(5023,1,NULL,'AN',-2.6484212185123384e203,3),(5024,1,NULL,'AN',-6.156832365023644e203,3),(5025,1,NULL,'AN',-1.4312898758716103e204,3),(5026,1,NULL,'AN',-3.3273452764613365e204,3),(5027,1,NULL,'AN',-7.735139314143152e204,3),(5028,1,NULL,'AN',-1.7982017265378398e205,3),(5029,1,NULL,'AN',-4.180311844431022e205,3),(5030,1,NULL,'AN',-9.718046011631702e205,3),(5031,1,NULL,'AN',-2.25917160725709e206,3),(5032,1,NULL,'AN',-5.251936803888032e206,3),(5033,1,NULL,'AN',-1.2209271798313087e207,3),(5034,1,NULL,'AN',-2.838311339442028e207,3),(5035,1,NULL,'AN',-6.598273339052271e207,3),(5036,1,NULL,'AN',-1.5339124518104067e208,3),(5037,1,NULL,'AN',-3.5659138215649684e208,3),(5038,1,NULL,'AN',-8.289743894979319e208,3),(5039,1,NULL,'AN',-1.9271316493618427e209,3),(5040,1,NULL,'AN',-4.48003755124616e209,3),(5041,1,NULL,'AN',-1.0414823744512729e210,3),(5042,1,NULL,'AN',-2.421152778040771e210,3),(5043,1,NULL,'AN',-5.628497340344382e210,3),(5044,1,NULL,'AN',-1.308466883940288e211,3),(5045,1,NULL,'AN',-3.041816461556064e211,3),(5046,1,NULL,'AN',-7.071365350822055e211,3),(5047,1,NULL,'AN',-1.6438930013294326e212,3),(5048,1,NULL,'AN',-3.821587579979493e212,3),(5049,1,NULL,'AN',-8.884113272361819e212,3),(5050,1,NULL,'AN',-2.0653057658455904e213,3),(5051,1,NULL,'AN',-4.8012534010623563e213,3),(5052,1,NULL,'AN',-1.1161559998732073e214,3),(5053,1,NULL,'AN',-2.5947478959917095e214,3),(5054,1,NULL,'AN',-6.032057028334949e214,3),(5055,1,NULL,'AN',-1.4022831292894636e215,3),(5056,1,NULL,'AN',-3.2599127718005728e215,3),(5057,1,NULL,'AN',-7.578377759656284e215,3),(5058,1,NULL,'AN',-1.761759086465717e216,3),(5059,1,NULL,'AN',-4.095592984645952e216,3),(5060,1,NULL,'AN',-9.521098556972052e216,3),(5061,1,NULL,'AN',-2.213386878808996e217,3),(5062,1,NULL,'AN',-5.145500223497174e217,3),(5063,1,NULL,'AN',-1.1961836768570736e218,3),(5064,1,NULL,'AN',-2.780789673752685e218,3),(5065,1,NULL,'AN',-6.464551689893626e218,3),(5066,1,NULL,'AN',-1.5028259399032583e219,3),(5067,1,NULL,'AN',-3.493646449106318e219,3),(5068,1,NULL,'AN',-8.1217426365018e219,3),(5069,1,NULL,'AN',-1.8880760951196022e220,3),(5070,1,NULL,'AN',-4.389244402969078e220,3),(5071,1,NULL,'AN',-1.020375528231821e221,3),(5072,1,NULL,'AN',-2.3720853136136076e221,3),(5073,1,NULL,'AN',-5.514429324674088e221,3),(5074,1,NULL,'AN',-1.2819492875026876e222,3),(5075,1,NULL,'AN',-2.9801705289346046e222,3),(5076,1,NULL,'AN',-6.928055944265848e222,3),(5077,1,NULL,'AN',-1.610577606243102e223,3),(5078,1,NULL,'AN',-3.744138682769597e223,3),(5079,1,NULL,'AN',-8.704066430249174e223,3),(5080,1,NULL,'AN',-2.0234499531451428e224,3),(5081,1,NULL,'AN',-4.703950441662553e224,3),(5082,1,NULL,'AN',-1.093535806172229e225,3),(5083,1,NULL,'AN',-2.542162325498691e225,3),(5084,1,NULL,'AN',-5.909810408317869e225,3),(5085,1,NULL,'AN',-1.3738642380128457e226,3),(5086,1,NULL,'AN',-3.1938468649248317e226,3),(5087,1,NULL,'AN',-7.424793159580592e226,3),(5088,1,NULL,'AN',-1.7260549986904963e227,3),(5089,1,NULL,'AN',-4.012591050647853e227,3),(5090,1,NULL,'AN',-9.328142470520627e227,3),(5091,1,NULL,'AN',-2.168530030895667e228,3),(5092,1,NULL,'AN',-5.0412207036476605e228,3),(5093,1,NULL,'AN',-1.1719416296203713e229,3),(5094,1,NULL,'AN',-2.7244337512211483e229,3),(5095,1,NULL,'AN',-6.333540064787467e229,3),(5096,1,NULL,'AN',-1.4723694321540483e230,3),(5097,1,NULL,'AN',-3.4228436586267658e230,3),(5098,1,NULL,'AN',-7.957146118050947e230,3),(5099,1,NULL,'AN',-1.8498120469053353e231,3),(5100,1,NULL,'AN',-4.300291282968494e231,3),(5101,1,NULL,'AN',-9.996964366899905e231,3),(5102,1,NULL,'AN',-2.3240122581668064e232,3),(5103,1,NULL,'AN',-5.402673029417288e232,3),(5104,1,NULL,'AN',-1.2559691008608243e233,3),(5105,1,NULL,'AN',-2.9197739225156956e233,3),(5106,1,NULL,'AN',-6.787650868767167e233,3),(5107,1,NULL,'AN',-1.5779373862130934e234,3),(5108,1,NULL,'AN',-3.6682593771374164e234,3),(5109,1,NULL,'AN',-8.52766844586278e234,3),(5110,1,NULL,'AN',-1.98244239695266e235,3),(5111,1,NULL,'AN',-4.608619439399165e235,3),(5112,1,NULL,'AN',-1.0713740368878452e236,3),(5113,1,NULL,'AN',-2.490642462478969e236,3),(5114,1,NULL,'AN',-5.7900412576011305e236,3),(5115,1,NULL,'AN',-1.3460212884733304e237,3),(5116,1,NULL,'AN',-3.1291198601476617e237,3),(5117,1,NULL,'AN',-7.274321129256436e237,3),(5118,1,NULL,'AN',-1.6910744955947322e238,3),(5119,1,NULL,'AN',-3.9312712469476747e238,3),(5120,1,NULL,'AN',-9.139096862579206e238,3),(5121,1,NULL,'AN',-2.1245822589436994e239,3),(5122,1,NULL,'AN',-4.939054529010025e239,3),(5123,1,NULL,'AN',-1.1481908755400599e240,3),(5124,1,NULL,'AN',-2.669219946712544e240,3),(5125,1,NULL,'AN',-6.205183541958514e240,3),(5126,1,NULL,'AN',-1.4425301607990514e241,3),(5127,1,NULL,'AN',-3.3534757686767055e241,3),(5128,1,NULL,'AN',-7.795885338627866e241,3),(5129,1,NULL,'AN',-1.8123234639329236e242,3),(5130,1,NULL,'AN',-4.2131409009408683e242,3),(5131,1,NULL,'AN',-9.794364308819545e242,3),(5132,1,NULL,'AN',-2.2769134588509816e243,3),(5133,1,NULL,'AN',-5.293181604883124e243,3),(5134,1,NULL,'AN',-1.2305154327829362e244,3),(5135,1,NULL,'AN',-2.860601323257283e244,3),(5136,1,NULL,'AN',-6.650091264694287e244,3),(5137,1,NULL,'AN',-1.5459586580351231e245,3),(5138,1,NULL,'AN',-3.59391785349224e245,3),(5139,1,NULL,'AN',-8.354845370875903e245,3),(5140,1,NULL,'AN',-1.9422659063678348e246,3),(5141,1,NULL,'AN',-4.515220430277548e246,3),(5142,1,NULL,'AN',-1.0496614015184566e247,3),(5143,1,NULL,'AN',-2.4401667091366433e247,3),(5144,1,NULL,'AN',-5.672699367400772e247,3),(5145,1,NULL,'AN',-1.3187426085447489e248,3),(5146,1,NULL,'AN',-3.065704623067756e248,3),(5147,1,NULL,'AN',-7.126898588853849e248,3),(5148,1,NULL,'AN',-1.6568029128970782e249,3),(5149,1,NULL,'AN',-3.8515994832272404e249,3),(5150,1,NULL,'AN',-8.95388248277295e249,3),(5151,1,NULL,'AN',-2.0815251394761443e250,3),(5152,1,NULL,'AN',-4.838958870196569e250,3),(5153,1,NULL,'AN',-1.1249214579914711e251,3),(5154,1,NULL,'AN',-2.615125113882714e251,3),(5155,1,NULL,'AN',-6.079428312684857e251,3),(5156,1,NULL,'AN',-1.4132956168280613e252,3),(5157,1,NULL,'AN',-3.2855136993354848e252,3),(5158,1,NULL,'AN',-7.637892695618814e252,3),(5159,1,NULL,'AN',-1.7755946305013537e253,3),(5160,1,NULL,'AN',-4.1277567223138474e253,3),(5161,1,NULL,'AN',-9.595870175500714e253,3),(5162,1,NULL,'AN',-2.2307691712375806e254,3),(5163,1,NULL,'AN',-5.185909150843983e254,3),(5164,1,NULL,'AN',-1.205577612760686e255,3),(5165,1,NULL,'AN',-2.802627925237019e255,3),(5166,1,NULL,'AN',-6.515319465274084e255,3),(5167,1,NULL,'AN',-1.51462801581089e256,3),(5168,1,NULL,'AN',-3.521082946901555e256,3),(5169,1,NULL,'AN',-8.185524755610292e256,3),(5170,1,NULL,'AN',-1.902903638883866e257,3),(5171,1,NULL,'AN',-4.4237142602196945e257,3),(5172,1,NULL,'AN',-1.0283887978452381e258,3),(5173,1,NULL,'AN',-2.390713905380162e258,3),(5174,1,NULL,'AN',-5.55773554647198e258,3),(5175,1,NULL,'AN',-1.2920167626500853e259,3),(5176,1,NULL,'AN',-3.0035745691938763e259,3),(5177,1,NULL,'AN',-6.982463736928657e259,3),(5178,1,NULL,'AN',-1.6232258835048304e260,3),(5179,1,NULL,'AN',-3.773542360048146e260,3),(5180,1,NULL,'AN',-8.772421686827644e260,3),(5181,1,NULL,'AN',-2.0393406223891466e261,3),(5182,1,NULL,'AN',-4.740891765806728e261,3),(5183,1,NULL,'AN',-1.102123622132465e262,3),(5184,1,NULL,'AN',-2.5621265754749645e262,3),(5185,1,NULL,'AN',-5.9562216587406365e262,3),(5186,1,NULL,'AN',-1.3846535447404446e263,3),(5187,1,NULL,'AN',-3.218928960020703e263,3),(5188,1,NULL,'AN',-7.483101956455282e263,3),(5189,1,NULL,'AN',-1.7396101494064883e264,3),(5190,1,NULL,'AN',-4.04410295293048e264,3),(5191,1,NULL,'AN',-9.40139875562399e264,3),(5192,1,NULL,'AN',-2.1855600510417495e265,3),(5193,1,NULL,'AN',-5.080810697293499e265,3),(5194,1,NULL,'AN',-1.1811451865359397e266,3),(5195,1,NULL,'AN',-2.745829425253294e266,3),(5196,1,NULL,'AN',-6.383278972417353e266,3),(5197,1,NULL,'AN',-1.4839323253281408e267,3),(5198,1,NULL,'AN',-3.449724124026282e267,3),(5199,1,NULL,'AN',-8.019635618664298e267,3),(5200,1,NULL,'AN',-1.8643390933268474e268,3),(5201,1,NULL,'AN',-4.3340625686503104e268,3),(5202,1,NULL,'AN',-1.0075473081163666e269,3),(5203,1,NULL,'AN',-2.3422633199517225e269,3),(5204,1,NULL,'AN',-5.445101600487464e269,3),(5205,1,NULL,'AN',-1.2658325469675317e270,3),(5206,1,NULL,'AN',-2.942703652800274e270,3),(5207,1,NULL,'AN',-6.840956024514507e270,3),(5208,1,NULL,'AN',-1.5903293314910503e271,3),(5209,1,NULL,'AN',-3.697067154850276e271,3),(5210,1,NULL,'AN',-8.59463840402018e271,3),(5211,1,NULL,'AN',-1.9980110233851037e272,3),(5212,1,NULL,'AN',-4.6448121048363027e272,3),(5213,1,NULL,'AN',-1.079787810814072e273,3),(5214,1,NULL,'AN',-2.510202113813465e273,3),(5215,1,NULL,'AN',-5.835511930295882e273,3),(5216,1,NULL,'AN',-1.3565919374074786e274,3),(5217,1,NULL,'AN',-3.1536936375446056e274,3),(5218,1,NULL,'AN',-7.331448230848449e274,3),(5219,1,NULL,'AN',-1.704354935486361e275,3),(5220,1,NULL,'AN',-3.962144524043855e275,3),(5221,1,NULL,'AN',-9.210868524243684e275,3),(5222,1,NULL,'AN',-2.1412671460129714e276,3),(5223,1,NULL,'AN',-4.977842185594562e276,3),(5224,1,NULL,'AN',-1.157207911718211e277,3),(5225,1,NULL,'AN',-2.690182012637018e277,3),(5226,1,NULL,'AN',-6.253914433034088e277,3),(5227,1,NULL,'AN',-1.4538587185546437e278,3),(5228,1,NULL,'AN',-3.379811470320816e278,3),(5229,1,NULL,'AN',-7.857108417156569e278,3),(5230,1,NULL,'AN',-1.826556102938272e279,3),(5231,1,NULL,'AN',-4.2462277724155834e279,3),(5232,1,NULL,'AN',-9.871281953085861e279,3),(5233,1,NULL,'AN',-2.2947946417364694e280,3),(5234,1,NULL,'AN',-5.3347503118337934e280,3),(5235,1,NULL,'AN',-1.2401789847337029e281,3),(5236,1,NULL,'AN',-2.8830663560079967e281,3),(5237,1,NULL,'AN',-6.702316129739963e281,3),(5238,1,NULL,'AN',-1.55809946619376e282,3),(5239,1,NULL,'AN',-3.622141808234087e282,3),(5240,1,NULL,'AN',-8.420458105288734e282,3),(5241,1,NULL,'AN',-1.9575190165591794e283,3),(5242,1,NULL,'AN',-4.5506796094432e283,3),(5243,1,NULL,'AN',-1.0579046605740112e284,3),(5244,1,NULL,'AN',-2.459329961489312e284,3),(5245,1,NULL,'AN',-5.717248524264234e284,3),(5246,1,NULL,'AN',-1.329099031038809e285,3),(5247,1,NULL,'AN',-3.0897803844125105e285,3),(5248,1,NULL,'AN',-7.18286794358634e285,3),(5249,1,NULL,'AN',-1.6698142092972803e286,3),(5250,1,NULL,'AN',-3.8818470776158255e286,3),(5251,1,NULL,'AN',-9.024199608611546e286,3),(5252,1,NULL,'AN',-2.0978718879900272e287,3),(5253,1,NULL,'AN',-4.876960450009354e287,3),(5254,1,NULL,'AN',-1.1337557534909164e288,3),(5255,1,NULL,'AN',-2.635662359269881e288,3),(5256,1,NULL,'AN',-6.127171615828746e288,3),(5257,1,NULL,'AN',-1.4243945882437392e289,3),(5258,1,NULL,'AN',-3.3113156774924565e289,3),(5259,1,NULL,'AN',-7.697875017572767e289,3),(5260,1,NULL,'AN',-1.7895388285977127e290,3),(5261,1,NULL,'AN',-4.1601730500278304e290,3),(5262,1,NULL,'AN',-9.671228994645341e290,3),(5263,1,NULL,'AN',-2.2482879712478076e291,3),(5264,1,NULL,'AN',-5.226635419817137e291,3),(5265,1,NULL,'AN',-1.2150453216420332e292,3),(5266,1,NULL,'AN',-2.8246376780874533e292,3),(5267,1,NULL,'AN',-6.566485932960006e292,3),(5268,1,NULL,'AN',-1.5265227764347144e293,3),(5269,1,NULL,'AN',-3.548734910520887e293,3),(5270,1,NULL,'AN',-8.249807771989235e293,3),(5271,1,NULL,'AN',-1.9178476271360641e294,3),(5272,1,NULL,'AN',-4.458454818062434e294,3),(5273,1,NULL,'AN',-1.0364649977114098e295,3),(5274,1,NULL,'AN',-2.409488792235349e295,3),(5275,1,NULL,'AN',-5.601381863089472e295,3),(5276,1,NULL,'AN',-1.3021633002509122e296,3),(5277,1,NULL,'AN',-3.027162407358378e296,3),(5278,1,NULL,'AN',-7.037298807882255e296,3),(5279,1,NULL,'AN',-1.6359734909180924e297,3),(5280,1,NULL,'AN',-3.803176951913664e297,3),(5281,1,NULL,'AN',-8.841313754693032e297,3),(5282,1,NULL,'AN',-2.055356085116986e298,3),(5283,1,NULL,'AN',-4.778123199603718e298,3),(5284,1,NULL,'AN',-1.1107788804046486e299,3),(5285,1,NULL,'AN',-2.5822476098049006e299,3),(5286,1,NULL,'AN',-6.002997388565778e299,3),(5287,1,NULL,'AN',-1.395527582649218e300,3),(5288,1,NULL,'AN',-3.244208031214988e300,3),(5289,1,NULL,'AN',-7.541868667203107e300,3),(5290,1,NULL,'AN',-1.7532717521828562e301,3),(5291,1,NULL,'AN',-4.0758623262294455e301,3),(5292,1,NULL,'AN',-9.475230341042938e301,3),(5293,1,NULL,'AN',-2.2027238122852776e302,3),(5294,1,NULL,'AN',-5.120711601270191e302,3),(5295,1,NULL,'AN',-1.190421021334431e303,3),(5296,1,NULL,'AN',-2.7673931249777825e303,3),(5297,1,NULL,'AN',-6.433408492391503e303,3),(5298,1,NULL,'AN',-1.4955860248553378e304,3),(5299,1,NULL,'AN',-3.4768156885854903e304,3),(5300,1,NULL,'AN',-8.082615865284949e304,3),(5301,1,NULL,'AN',-1.8789802243539196e305,3),(5302,1,NULL,'AN',-4.368099068863319e305,3),(5303,1,NULL,'AN',-1.0154598344410612e306,3),(5304,1,NULL,'AN',-2.3606577119859117e306,3),(5305,1,NULL,'AN',-5.487863373961945e306,3),(5306,1,NULL,'AN',-1.2757734532355075e307,3),(5307,1,NULL,'AN',-2.965813456112724e307,3),(5308,1,NULL,'AN',-6.894679799263351e307,3),(5309,1,NULL,'AN',0,3);
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
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kardex_servicios`
--

LOCK TABLES `kardex_servicios` WRITE;
/*!40000 ALTER TABLE `kardex_servicios` DISABLE KEYS */;
REPLACE INTO `kardex_servicios` VALUES (1,'C00-AG',0,1,3,237.6,0,'Cuota Agua','01','2015','C','1',NULL,1,'2016-10-06'),(2,'C00-AG',0,2,3,297,0,'Cuota Agua','01','2015','C','1',NULL,1,'2016-10-06'),(3,'C00-AG',0,3,3,310.68,0,'Cuota Agua','01','2015','C','1',NULL,1,'2016-10-06'),(4,'C00-AG',0,4,3,358.56,0,'Cuota Agua','01','2015','V',NULL,NULL,1,'2016-10-06'),(5,'C00-AG',0,5,3,358.56,0,'Cuota Agua','01','2015','V',NULL,NULL,1,'2016-10-06'),(6,'C00-AG',0,1,3,59.4,0,'Cuota Agua','02','2015','C','2',NULL,1,'2016-10-06'),(7,'C00-AG',0,2,3,240.57,0,'Cuota Agua','02','2015','C','1',NULL,1,'2016-10-06'),(8,'C00-AG',0,3,3,347.58,0,'Cuota Agua','02','2015','C','1',NULL,1,'2016-10-06'),(9,'C00-AG',0,4,3,388.08,0,'Cuota Agua','02','2015','A',NULL,NULL,1,'2016-10-06'),(10,'C00-AG',0,5,3,14.85,0,'Cuota Agua','02','2015','A',NULL,NULL,1,'2016-10-06'),(11,'C00-MA',0,1,2,750,NULL,'Cuota Mantenimiento','01','2015','C','2',NULL,2,'2016-10-06'),(12,'C00-MA',0,2,2,1500,NULL,'Cuota Mantenimiento','01','2015','C','1',NULL,2,'2016-10-06'),(13,'C00-MA',0,3,2,750,NULL,'Cuota Mantenimiento','01','2015','C','1',NULL,2,'2016-10-06'),(14,'C00-MA',0,4,2,1350,NULL,'Cuota Mantenimiento','01','2015','V',NULL,NULL,2,'2016-10-06'),(15,'C00-MA',0,1,2,750,NULL,'Cuota Mantenimiento','02','2015','C','2',NULL,2,'2016-10-06'),(16,'C00-MA',0,2,2,1500,NULL,'Cuota Mantenimiento','02','2015','C','1',NULL,2,'2016-10-06'),(17,'C00-MA',0,3,2,750,NULL,'Cuota Mantenimiento','02','2015','C','1',NULL,2,'2016-10-06'),(18,'C00-MA',0,4,2,1350,NULL,'Cuota Mantenimiento','02','2015','A',NULL,NULL,2,'2016-10-06');
/*!40000 ALTER TABLE `kardex_servicios` ENABLE KEYS */;
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
  `estatus` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`folio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_anticipos`
--

LOCK TABLES `pagos_anticipos` WRITE;
/*!40000 ALTER TABLE `pagos_anticipos` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos_detalle`
--

LOCK TABLES `pagos_detalle` WRITE;
/*!40000 ALTER TABLE `pagos_detalle` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_lecturas`
--

LOCK TABLES `reg_lecturas` WRITE;
/*!40000 ALTER TABLE `reg_lecturas` DISABLE KEYS */;
REPLACE INTO `reg_lecturas` VALUES (1,1,80,'01','2015','2016-10-04','A'),(2,2,100,'01','2015','2016-10-04','A'),(3,3,100,'01','2015','2016-10-04','A'),(4,4,120,'01','2015','2016-10-04','A'),(5,5,120,'01','2015','2016-10-04','A'),(6,1,100,'02','2015','2016-10-04','A'),(7,2,181,'02','2015','2016-10-04','A'),(8,3,210,'02','2015','2016-10-04','A'),(9,4,248,'02','2015','2016-10-04','A'),(10,5,125,'02','2015','2016-10-04','A'),(11,1,198,'03','2015','2016-10-04','A'),(12,2,201,'03','2015','2016-10-04','A'),(13,3,325,'03','2015','2016-10-04','A'),(14,4,342,'03','2015','2016-10-04','A'),(15,5,187,'03','2015','2016-10-04','A'),(16,1,399,'04','2015','2016-10-04','A'),(17,2,287,'04','2015','2016-10-04','A'),(18,3,375,'04','2015','2016-10-04','A'),(19,4,432,'04','2015','2016-10-04','A'),(20,5,222,'04','2015','2016-10-04','A'),(21,1,450,'05','2015','2016-10-05','A'),(22,2,322,'05','2015','2016-10-05','A'),(23,3,399,'05','2015','2016-10-05','A'),(24,4,490,'05','2015','2016-10-05','A'),(25,5,298,'05','2015','2016-10-05','A'),(26,1,478,'06','2015','2016-10-05','A'),(27,2,399,'06','2015','2016-10-05','A'),(28,3,455,'06','2015','2016-10-05','A'),(29,4,498,'06','2015','2016-10-05','A'),(30,5,348,'06','2015','2016-10-05','A'),(31,1,589,'07','2015','2016-10-05','A'),(32,2,457,'07','2015','2016-10-05','A'),(33,3,786,'07','2015','2016-10-05','A'),(34,4,567,'07','2015','2016-10-05','A'),(35,5,467,'07','2015','2016-10-05','A'),(36,1,654,'08','2015','2016-10-05','A'),(37,2,543,'08','2015','2016-10-05','A'),(38,3,808,'08','2015','2016-10-05','A'),(39,4,587,'08','2015','2016-10-05','A'),(40,5,501,'08','2015','2016-10-05','A'),(41,1,786,'09','2015','2016-10-05','A'),(42,2,598,'09','2015','2016-10-05','A'),(43,3,876,'09','2015','2016-10-05','A'),(44,4,615,'09','2015','2016-10-05','A'),(45,5,587,'09','2015','2016-10-05','A'),(46,1,890,'10','2015','2016-10-05','A'),(47,2,765,'10','2015','2016-10-05','A'),(48,3,986,'10','2015','2016-10-05','A'),(49,4,655,'10','2015','2016-10-05','A'),(50,5,690,'10','2015','2016-10-05','A'),(51,1,913,'11','2015','2016-10-05','A'),(52,1,1020,'12','2015','2016-10-05','A'),(53,2,818,'11','2015','2016-10-05','A'),(54,3,1020,'11','2015','2016-10-05','A'),(55,4,765,'11','2015','2016-10-05','A'),(56,5,718,'11','2015','2016-10-05','A'),(57,2,982,'12','2015','2016-10-05','A'),(58,3,1068,'12','2015','2016-10-05','A'),(59,4,789,'12','2015','2016-10-05','A'),(60,5,914,'12','2015','2016-10-05','A');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifas_mantenimiento`
--

LOCK TABLES `tarifas_mantenimiento` WRITE;
/*!40000 ALTER TABLE `tarifas_mantenimiento` DISABLE KEYS */;
REPLACE INTO `tarifas_mantenimiento` VALUES (1,2,'Tarifa Variable','0.30','2015-01-01','I','2016-10-03'),(2,2,'Tarifa Variable','0.35','2016-01-01','A','2016-10-03');
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
) ENGINE=MyISAM AUTO_INCREMENT=5361 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
REPLACE INTO `test` VALUES (1,NULL),(2,NULL),(3,NULL),(4,NULL),(5,NULL),(6,'0'),(7,'80'),(8,'0'),(9,'100'),(10,'0'),(11,'100'),(12,'0'),(13,'120'),(14,'0'),(15,'120'),(16,'80'),(17,'100'),(18,'100'),(19,'181'),(20,'100'),(21,'210'),(22,'120'),(23,'248'),(24,'120'),(25,'125'),(26,'100'),(27,'198'),(28,'181'),(29,'201'),(30,'210'),(31,'325'),(32,'248'),(33,'342'),(34,'125'),(35,'187'),(36,'100'),(37,'198'),(38,'181'),(39,'201'),(40,'210'),(41,'325'),(42,'248'),(43,'342'),(44,'125'),(45,'187'),(46,'198'),(47,'399'),(48,'201'),(49,'287'),(50,'325'),(51,'375'),(52,'342'),(53,'432'),(54,'187'),(55,'222'),(56,'5 750 - 237.60000000000002 - 1**0-1'),(57,'5 750 - 297 - 1**0-1'),(58,'5 750 - 237.60000000000002 - 1**0-1'),(59,'5 750 - 297 - 1**0-0'),(60,'5 750 - -156 - 1**1-0'),(61,'5 750 - -765 - 1**2-0'),(62,'5 750 - -1686 - 1**3-0'),(63,'5 750 - -3357 - 1**4-0'),(64,'5 750 - -5778 - 1**5-0'),(65,'5 750 - -8949 - 1**6-0'),(66,'5 750 - -12870 - 1**7-0'),(67,'5 750 - -17541 - 1**8-0'),(68,'5 750 - -22962 - 1**9-0'),(69,'5 750 - -29133 - 1**10-0'),(70,'5 750 - -36054 - 1**11-0'),(71,'5 750 - -43725 - 1**12-0'),(72,'5 750 - -52146 - 1**13-0'),(73,'5 750 - -61317 - 1**14-0'),(74,'5 750 - -71238 - 1**15-0'),(75,'5 750 - -81909 - 1**16-0'),(76,'5 750 - -93330 - 1**17-0'),(77,'5 750 - -105501 - 1**18-0'),(78,'5 750 - -118422 - 1**19-0'),(79,'5 750 - -132093 - 1**20-0'),(80,'5 750 - -146514 - 1**21-0'),(81,'5 750 - -161685 - 1**22-0'),(82,'5 750 - -177606 - 1**23-0'),(83,'5 750 - -194277 - 1**24-0'),(84,'5 750 - -211698 - 1**25-0'),(85,'5 750 - -229869 - 1**26-0'),(86,'5 750 - -248790 - 1**27-0'),(87,'5 750 - -268461 - 1**28-0'),(88,'5 750 - -288882 - 1**29-0'),(89,'5 750 - -310053 - 1**30-0'),(90,'5 750 - -331974 - 1**31-0'),(91,'5 750 - -354645 - 1**32-0'),(92,'5 750 - -378066 - 1**33-0'),(93,'5 750 - -402237 - 1**34-0'),(94,'5 750 - -427158 - 1**35-0'),(95,'5 750 - -452829 - 1**36-0'),(96,'5 750 - -479250 - 1**37-0'),(97,'5 750 - -506421 - 1**38-0'),(98,'5 750 - -534342 - 1**39-0'),(99,'5 750 - -563013 - 1**40-0'),(100,'5 750 - -592434 - 1**41-0'),(101,'5 750 - -622605 - 1**42-0'),(102,'5 750 - -653526 - 1**43-0'),(103,'5 750 - -685197 - 1**44-0'),(104,'5 750 - -717618 - 1**45-0'),(105,'5 750 - -750789 - 1**46-0'),(106,'5 750 - -784710 - 1**47-0'),(107,'5 750 - -819381 - 1**48-0'),(108,'5 750 - -854802 - 1**49-0'),(109,'5 750 - -890973 - 1**50-0'),(110,'5 750 - -927894 - 1**51-0'),(111,'5 750 - -965565 - 1**52-0'),(112,'5 750 - -1003986 - 1**53-0'),(113,'5 750 - -1043157 - 1**54-0'),(114,'5 750 - -1083078 - 1**55-0'),(115,'5 750 - -1123749 - 1**56-0'),(116,'5 750 - -1165170 - 1**57-0'),(117,'5 750 - -1207341 - 1**58-0'),(118,'5 750 - -1250262 - 1**59-0'),(119,'5 750 - -1293933 - 1**60-0'),(120,'5 750 - -1338354 - 1**61-0'),(121,'5 750 - -1383525 - 1**62-0'),(122,'5 750 - -1429446 - 1**63-0'),(123,'5 750 - -1476117 - 1**64-0'),(124,'5 750 - -1523538 - 1**65-0'),(125,'5 750 - -1571709 - 1**66-0'),(126,'5 750 - -1620630 - 1**67-0'),(127,'5 750 - -1670301 - 1**68-0'),(128,'5 750 - -1720722 - 1**69-0'),(129,'5 750 - -1771893 - 1**70-0'),(130,'5 750 - -1823814 - 1**71-0'),(131,'5 750 - -1876485 - 1**72-0'),(132,'5 750 - -1929906 - 1**73-0'),(133,'5 750 - -1984077 - 1**74-0'),(134,'5 750 - -2038998 - 1**75-0'),(135,'5 750 - -2094669 - 1**76-0'),(136,'5 750 - -2151090 - 1**77-0'),(137,'5 750 - -2208261 - 1**78-0'),(138,'5 750 - -2266182 - 1**79-0'),(139,'5 750 - -2324853 - 1**80-0'),(140,'5 750 - -2384274 - 1**81-0'),(141,'5 750 - -2444445 - 1**82-0'),(142,'5 750 - -2505366 - 1**83-0'),(143,'5 750 - -2567037 - 1**84-0'),(144,'5 750 - -2629458 - 1**85-0'),(145,'5 750 - -2692629 - 1**86-0'),(146,'5 750 - -2756550 - 1**87-0'),(147,'5 750 - -2821221 - 1**88-0'),(148,'5 750 - -2886642 - 1**89-0'),(149,'5 750 - -2952813 - 1**90-0'),(150,'5 750 - -3019734 - 1**91-0'),(151,'5 750 - -3087405 - 1**92-0'),(152,'5 750 - -3155826 - 1**93-0'),(153,'5 750 - -3224997 - 1**94-0'),(154,'5 750 - -3294918 - 1**95-0'),(155,'5 750 - -3365589 - 1**96-0'),(156,'5 750 - -3437010 - 1**97-0'),(157,'5 750 - -3509181 - 1**98-0'),(158,'5 750 - -3582102 - 1**99-0'),(159,'5 750 - -3655773 - 1**100-0'),(160,'5 750 - -3730194 - 1**101-0'),(161,'5 750 - -3805365 - 1**102-0'),(162,'5 750 - -3881286 - 1**103-0'),(163,'5 750 - -3957957 - 1**104-0'),(164,'5 750 - -4035378 - 1**105-0'),(165,'5 750 - -4113549 - 1**106-0'),(166,'5 750 - -4192470 - 1**107-0'),(167,'5 750 - -4272141 - 1**108-0'),(168,'5 750 - -4352562 - 1**109-0'),(169,'5 750 - -4433733 - 1**110-0'),(170,'5 750 - -4515654 - 1**111-0'),(171,'5 750 - -4598325 - 1**112-0'),(172,'5 750 - -4681746 - 1**113-0'),(173,'5 750 - -4765917 - 1**114-0'),(174,'5 750 - -4850838 - 1**115-0'),(175,'5 750 - -4936509 - 1**116-0'),(176,'5 750 - -5022930 - 1**117-0'),(177,'5 750 - -5110101 - 1**118-0'),(178,'5 750 - -5198022 - 1**119-0'),(179,'5 750 - -5286693 - 1**120-0'),(180,'5 750 - -5376114 - 1**121-0'),(181,'5 750 - -5466285 - 1**122-0'),(182,'5 750 - -5557206 - 1**123-0'),(183,'5 750 - -5648877 - 1**124-0'),(184,'5 750 - -5741298 - 1**125-0'),(185,'5 750 - -5834469 - 1**126-0'),(186,'5 750 - -5928390 - 1**127-0'),(187,'5 750 - -6023061 - 1**128-0'),(188,'5 750 - -6118482 - 1**129-0'),(189,'5 750 - -6214653 - 1**130-0'),(190,'5 750 - -6311574 - 1**131-0'),(191,'5 750 - -6409245 - 1**132-0'),(192,'5 750 - -6507666 - 1**133-0'),(193,'5 750 - -6606837 - 1**134-0'),(194,'5 750 - -6706758 - 1**135-0'),(195,'5 750 - -6807429 - 1**136-0'),(196,'5 750 - -6908850 - 1**137-0'),(197,'5 750 - -7011021 - 1**138-0'),(198,'5 750 - -7113942 - 1**139-0'),(199,'5 750 - -7217613 - 1**140-0'),(200,'5 750 - -7322034 - 1**141-0'),(201,'5 750 - -7427205 - 1**142-0'),(202,'5 750 - -7533126 - 1**143-0'),(203,'5 750 - -7639797 - 1**144-0'),(204,'5 750 - -7747218 - 1**145-0'),(205,'5 750 - -7855389 - 1**146-0'),(206,'5 750 - -7964310 - 1**147-0'),(207,'5 750 - -8073981 - 1**148-0'),(208,'5 750 - -8184402 - 1**149-0'),(209,'5 750 - -8295573 - 1**150-0'),(210,'5 750 - -8407494 - 1**151-0'),(211,'5 750 - -8520165 - 1**152-0'),(212,'5 750 - -8633586 - 1**153-0'),(213,'5 750 - -8747757 - 1**154-0'),(214,'5 750 - -8862678 - 1**155-0'),(215,'5 750 - -8978349 - 1**156-0'),(216,'5 750 - -9094770 - 1**157-0'),(217,'5 750 - -9211941 - 1**158-0'),(218,'5 750 - -9329862 - 1**159-0'),(219,'5 750 - -9448533 - 1**160-0'),(220,'5 750 - -9567954 - 1**161-0'),(221,'5 750 - -9688125 - 1**162-0'),(222,'5 750 - -9809046 - 1**163-0'),(223,'5 750 - -9930717 - 1**164-0'),(224,'5 750 - -10053138 - 1**165-0'),(225,'5 750 - -10176309 - 1**166-0'),(226,'5 750 - -10300230 - 1**167-0'),(227,'5 750 - -10424901 - 1**168-0'),(228,'5 750 - -10550322 - 1**169-0'),(229,'5 750 - -10676493 - 1**170-0'),(230,'5 750 - -10803414 - 1**171-0'),(231,'5 750 - -10931085 - 1**172-0'),(232,'5 750 - -11059506 - 1**173-0'),(233,'5 750 - -11188677 - 1**174-0'),(234,'5 750 - -11318598 - 1**175-0'),(235,'5 750 - -11449269 - 1**176-0'),(236,'5 750 - -11580690 - 1**177-0'),(237,'5 750 - -11712861 - 1**178-0'),(238,'5 750 - -11845782 - 1**179-0'),(239,'5 750 - -11979453 - 1**180-0'),(240,'5 750 - -12113874 - 1**181-0'),(241,'5 750 - -12249045 - 1**182-0'),(242,'5 750 - -12384966 - 1**183-0'),(243,'5 750 - -12521637 - 1**184-0'),(244,'5 750 - -12659058 - 1**185-0'),(245,'5 750 - -12797229 - 1**186-0'),(246,'5 750 - -12936150 - 1**187-0'),(247,'5 750 - -13075821 - 1**188-0'),(248,'5 750 - -13216242 - 1**189-0'),(249,'5 750 - -13357413 - 1**190-0'),(250,'5 750 - -13499334 - 1**191-0'),(251,'5 750 - -13642005 - 1**192-0'),(252,'5 750 - -13785426 - 1**193-0'),(253,'5 750 - -13929597 - 1**194-0'),(254,'5 750 - -14074518 - 1**195-0'),(255,'5 750 - -14220189 - 1**196-0'),(256,'5 750 - -14366610 - 1**197-0'),(257,'5 750 - -14513781 - 1**198-0'),(258,'5 750 - -14661702 - 1**199-0'),(259,'5 750 - -14810373 - 1**200-0'),(260,'5 750 - -14959794 - 1**201-0'),(261,'5 750 - -15109965 - 1**202-0'),(262,'5 750 - -15260886 - 1**203-0'),(263,'5 750 - -15412557 - 1**204-0'),(264,'5 750 - -15564978 - 1**205-0'),(265,'5 750 - -15718149 - 1**206-0'),(266,'5 750 - -15872070 - 1**207-0'),(267,'5 750 - -16026741 - 1**208-0'),(268,'5 750 - -16182162 - 1**209-0'),(269,'5 750 - -16338333 - 1**210-0'),(270,'5 750 - -16495254 - 1**211-0'),(271,'5 750 - -16652925 - 1**212-0'),(272,'5 750 - -16811346 - 1**213-0'),(273,'5 750 - -16970517 - 1**214-0'),(274,'5 750 - -17130438 - 1**215-0'),(275,'5 750 - -17291109 - 1**216-0'),(276,'5 750 - -17452530 - 1**217-0'),(277,'5 750 - -17614701 - 1**218-0'),(278,'5 750 - -17777622 - 1**219-0'),(279,'5 750 - -17941293 - 1**220-0'),(280,'5 750 - -18105714 - 1**221-0'),(281,'5 750 - -18270885 - 1**222-0'),(282,'5 750 - -18436806 - 1**223-0'),(283,'5 750 - -18603477 - 1**224-0'),(284,'5 750 - -18770898 - 1**225-0'),(285,'5 750 - -18939069 - 1**226-0'),(286,'5 750 - -19107990 - 1**227-0'),(287,'5 750 - -19277661 - 1**228-0'),(288,'5 750 - -19448082 - 1**229-0'),(289,'5 750 - -19619253 - 1**230-0'),(290,'5 750 - -19791174 - 1**231-0'),(291,'5 750 - -19963845 - 1**232-0'),(292,'5 750 - -20137266 - 1**233-0'),(293,'5 750 - -20311437 - 1**234-0'),(294,'5 750 - -20486358 - 1**235-0'),(295,'5 750 - -20662029 - 1**236-0'),(296,'5 750 - -20838450 - 1**237-0'),(297,'5 750 - -21015621 - 1**238-0'),(298,'5 750 - -21193542 - 1**239-0'),(299,'5 750 - -21372213 - 1**240-0'),(300,'5 750 - -21551634 - 1**241-0'),(301,'5 750 - -21731805 - 1**242-0'),(302,'5 750 - -21912726 - 1**243-0'),(303,'5 750 - -22094397 - 1**244-0'),(304,'5 750 - -22276818 - 1**245-0'),(305,'5 750 - -22459989 - 1**246-0'),(306,'5 750 - -22643910 - 1**247-0'),(307,'5 750 - -22828581 - 1**248-0'),(308,'5 750 - -23014002 - 1**249-0'),(309,'5 750 - -23200173 - 1**250-0'),(310,'5 750 - -23387094 - 1**251-0'),(311,'5 750 - -23574765 - 1**252-0'),(312,'5 750 - -23763186 - 1**253-0'),(313,'5 750 - -23952357 - 1**254-0'),(314,'5 750 - -24142278 - 1**255-0'),(315,'5 750 - -24332949 - 1**256-0'),(316,'5 750 - -24524370 - 1**257-0'),(317,'5 750 - -24716541 - 1**258-0'),(318,'5 750 - -24909462 - 1**259-0'),(319,'5 750 - -25103133 - 1**260-0'),(320,'5 750 - -25297554 - 1**261-0'),(321,'5 750 - -25492725 - 1**262-0'),(322,'5 750 - -25688646 - 1**263-0'),(323,'5 750 - -25885317 - 1**264-0'),(324,'5 750 - -26082738 - 1**265-0'),(325,'5 750 - -26280909 - 1**266-0'),(326,'5 750 - -26479830 - 1**267-0'),(327,'5 750 - -26679501 - 1**268-0'),(328,'5 750 - -26879922 - 1**269-0'),(329,'5 750 - -27081093 - 1**270-0'),(330,'5 750 - -27283014 - 1**271-0'),(331,'5 750 - -27485685 - 1**272-0'),(332,'5 750 - -27689106 - 1**273-0'),(333,'5 750 - -27893277 - 1**274-0'),(334,'5 750 - -28098198 - 1**275-0'),(335,'5 750 - -28303869 - 1**276-0'),(336,'5 750 - -28510290 - 1**277-0'),(337,'5 750 - -28717461 - 1**278-0'),(338,'5 750 - -28925382 - 1**279-0'),(339,'5 750 - -29134053 - 1**280-0'),(340,'5 750 - -29343474 - 1**281-0'),(341,'5 750 - -29553645 - 1**282-0'),(342,'5 750 - -29764566 - 1**283-0'),(343,'5 750 - -29976237 - 1**284-0'),(344,'5 750 - -30188658 - 1**285-0'),(345,'5 750 - -30401829 - 1**286-0'),(346,'5 750 - -30615750 - 1**287-0'),(347,'5 750 - -30830421 - 1**288-0'),(348,'5 750 - -31045842 - 1**289-0'),(349,'5 750 - -31262013 - 1**290-0'),(350,'5 750 - -31478934 - 1**291-0'),(351,'5 750 - -31696605 - 1**292-0'),(352,'5 750 - -31915026 - 1**293-0'),(353,'5 750 - -32134197 - 1**294-0'),(354,'5 750 - -32354118 - 1**295-0'),(355,'5 750 - -32574789 - 1**296-0'),(356,'5 750 - -32796210 - 1**297-0'),(357,'5 750 - -33018381 - 1**298-0'),(358,'5 750 - -33241302 - 1**299-0'),(359,'5 750 - -33464973 - 1**300-0'),(360,'5 750 - -33689394 - 1**301-0'),(361,'5 750 - -33914565 - 1**302-0'),(362,'5 750 - -34140486 - 1**303-0'),(363,'5 750 - -34367157 - 1**304-0'),(364,'5 750 - -34594578 - 1**305-0'),(365,'5 750 - -34822749 - 1**306-0'),(366,'5 750 - -35051670 - 1**307-0'),(367,'5 750 - -35281341 - 1**308-0'),(368,'5 750 - -35511762 - 1**309-0'),(369,'5 750 - -35742933 - 1**310-0'),(370,'5 750 - -35974854 - 1**311-0'),(371,'5 750 - -36207525 - 1**312-0'),(372,'5 750 - -36440946 - 1**313-0'),(373,'5 750 - -36675117 - 1**314-0'),(374,'5 750 - -36910038 - 1**315-0'),(375,'5 750 - -37145709 - 1**316-0'),(376,'5 750 - -37382130 - 1**317-0'),(377,'5 750 - -37619301 - 1**318-0'),(378,'5 750 - -37857222 - 1**319-0'),(379,'5 750 - -38095893 - 1**320-0'),(380,'5 750 - -38335314 - 1**321-0'),(381,'5 750 - -38575485 - 1**322-0'),(382,'5 750 - -38816406 - 1**323-0'),(383,'5 750 - -39058077 - 1**324-0'),(384,'5 750 - -39300498 - 1**325-0'),(385,'5 750 - -39543669 - 1**326-0'),(386,'5 750 - -39787590 - 1**327-0'),(387,'5 750 - -40032261 - 1**328-0'),(388,'5 750 - -40277682 - 1**329-0'),(389,'5 750 - -40523853 - 1**330-0'),(390,'5 750 - -40770774 - 1**331-0'),(391,'5 750 - -41018445 - 1**332-0'),(392,'5 750 - -41266866 - 1**333-0'),(393,'5 750 - -41516037 - 1**334-0'),(394,'5 750 - -41765958 - 1**335-0'),(395,'5 750 - -42016629 - 1**336-0'),(396,'5 750 - -42268050 - 1**337-0'),(397,'5 750 - -42520221 - 1**338-0'),(398,'5 750 - -42773142 - 1**339-0'),(399,'5 750 - -43026813 - 1**340-0'),(400,'5 750 - -43281234 - 1**341-0'),(401,'5 750 - -43536405 - 1**342-0'),(402,'5 750 - -43792326 - 1**343-0'),(403,'5 750 - -44048997 - 1**344-0'),(404,'5 750 - -44306418 - 1**345-0'),(405,'5 750 - -44564589 - 1**346-0'),(406,'5 750 - -44823510 - 1**347-0'),(407,'5 750 - -45083181 - 1**348-0'),(408,'5 750 - -45343602 - 1**349-0'),(409,'5 750 - -45604773 - 1**350-0'),(410,'5 750 - -45866694 - 1**351-0'),(411,'5 750 - -46129365 - 1**352-0'),(412,'5 750 - -46392786 - 1**353-0'),(413,'5 750 - -46656957 - 1**354-0'),(414,'5 750 - -46921878 - 1**355-0'),(415,'5 750 - -47187549 - 1**356-0'),(416,'5 750 - -47453970 - 1**357-0'),(417,'5 750 - -47721141 - 1**358-0'),(418,'5 750 - -47989062 - 1**359-0'),(419,'5 750 - -48257733 - 1**360-0'),(420,'5 750 - -48527154 - 1**361-0'),(421,'5 750 - -48797325 - 1**362-0'),(422,'5 750 - -49068246 - 1**363-0'),(423,'5 750 - -49339917 - 1**364-0'),(424,'5 750 - -49612338 - 1**365-0'),(425,'5 750 - -49885509 - 1**366-0'),(426,'5 750 - -50159430 - 1**367-0'),(427,'5 750 - -50434101 - 1**368-0'),(428,'5 750 - -50709522 - 1**369-0'),(429,'5 750 - -50985693 - 1**370-0'),(430,'5 750 - -51262614 - 1**371-0'),(431,'5 750 - -51540285 - 1**372-0'),(432,'5 750 - -51818706 - 1**373-0'),(433,'5 750 - -52097877 - 1**374-0'),(434,'5 750 - -52377798 - 1**375-0'),(435,'5 750 - -52658469 - 1**376-0'),(436,'5 750 - -52939890 - 1**377-0'),(437,'5 750 - -53222061 - 1**378-0'),(438,'5 750 - -53504982 - 1**379-0'),(439,'5 750 - -53788653 - 1**380-0'),(440,'5 750 - -54073074 - 1**381-0'),(441,'5 750 - -54358245 - 1**382-0'),(442,'5 750 - -54644166 - 1**383-0'),(443,'5 750 - -54930837 - 1**384-0'),(444,'5 750 - -55218258 - 1**385-0'),(445,'5 750 - -55506429 - 1**386-0'),(446,'5 750 - -55795350 - 1**387-0'),(447,'5 750 - -56085021 - 1**388-0'),(448,'5 750 - -56375442 - 1**389-0'),(449,'5 750 - -56666613 - 1**390-0'),(450,'5 750 - -56958534 - 1**391-0'),(451,'5 750 - -57251205 - 1**392-0'),(452,'5 750 - -57544626 - 1**393-0'),(453,'5 750 - -57838797 - 1**394-0'),(454,'5 750 - -58133718 - 1**395-0'),(455,'5 750 - -58429389 - 1**396-0'),(456,'5 750 - -58725810 - 1**397-0'),(457,'5 750 - -59022981 - 1**398-0'),(458,'5 750 - -59320902 - 1**399-0'),(459,'5 750 - -59619573 - 1**400-0'),(460,'5 750 - -59918994 - 1**401-0'),(461,'5 750 - -60219165 - 1**402-0'),(462,'5 750 - -60520086 - 1**403-0'),(463,'5 750 - -60821757 - 1**404-0'),(464,'5 750 - -61124178 - 1**405-0'),(465,'5 750 - -61427349 - 1**406-0'),(466,'5 750 - -61731270 - 1**407-0'),(467,'5 750 - -62035941 - 1**408-0'),(468,'5 750 - -62341362 - 1**409-0'),(469,'5 750 - -62647533 - 1**410-0'),(470,'5 750 - -62954454 - 1**411-0'),(471,'5 750 - -63262125 - 1**412-0'),(472,'5 750 - -63570546 - 1**413-0'),(473,'5 750 - -63879717 - 1**414-0'),(474,'5 750 - -64189638 - 1**415-0'),(475,'5 750 - -64500309 - 1**416-0'),(476,'5 750 - -64811730 - 1**417-0'),(477,'5 750 - -65123901 - 1**418-0'),(478,'5 750 - -65436822 - 1**419-0'),(479,'5 750 - -65750493 - 1**420-0'),(480,'5 750 - -66064914 - 1**421-0'),(481,'5 750 - -66380085 - 1**422-0'),(482,'5 750 - -66696006 - 1**423-0'),(483,'5 750 - -67012677 - 1**424-0'),(484,'5 750 - -67330098 - 1**425-0'),(485,'5 750 - -67648269 - 1**426-0'),(486,'5 750 - -67967190 - 1**427-0'),(487,'5 750 - -68286861 - 1**428-0'),(488,'5 750 - -68607282 - 1**429-0'),(489,'5 750 - -68928453 - 1**430-0'),(490,'5 750 - -69250374 - 1**431-0'),(491,'5 750 - -69573045 - 1**432-0'),(492,'5 750 - -69896466 - 1**433-0'),(493,'5 750 - -70220637 - 1**434-0'),(494,'5 750 - -70545558 - 1**435-0'),(495,'5 750 - -70871229 - 1**436-0'),(496,'5 750 - -71197650 - 1**437-0'),(497,'5 750 - -71524821 - 1**438-0'),(498,'5 750 - -71852742 - 1**439-0'),(499,'5 750 - -72181413 - 1**440-0'),(500,'5 750 - -72510834 - 1**441-0'),(501,'5 750 - -72841005 - 1**442-0'),(502,'5 750 - -73171926 - 1**443-0'),(503,'5 750 - -73503597 - 1**444-0'),(504,'5 750 - -73836018 - 1**445-0'),(505,'5 750 - -74169189 - 1**446-0'),(506,'5 750 - -74503110 - 1**447-0'),(507,'5 750 - -74837781 - 1**448-0'),(508,'5 750 - -75173202 - 1**449-0'),(509,'5 750 - -75509373 - 1**450-0'),(510,'5 750 - -75846294 - 1**451-0'),(511,'5 750 - -76183965 - 1**452-0'),(512,'5 750 - -76522386 - 1**453-0'),(513,'5 750 - -76861557 - 1**454-0'),(514,'5 750 - -77201478 - 1**455-0'),(515,'5 750 - -77542149 - 1**456-0'),(516,'5 750 - -77883570 - 1**457-0'),(517,'5 750 - -78225741 - 1**458-0'),(518,'5 750 - -78568662 - 1**459-0'),(519,'5 750 - -78912333 - 1**460-0'),(520,'5 750 - -79256754 - 1**461-0'),(521,'5 750 - -79601925 - 1**462-0'),(522,'5 750 - -79947846 - 1**463-0'),(523,'5 750 - -80294517 - 1**464-0'),(524,'5 750 - -80641938 - 1**465-0'),(525,'5 750 - -80990109 - 1**466-0'),(526,'5 750 - -81339030 - 1**467-0'),(527,'5 750 - -81688701 - 1**468-0'),(528,'5 750 - -82039122 - 1**469-0'),(529,'5 750 - -82390293 - 1**470-0'),(530,'5 750 - -82742214 - 1**471-0'),(531,'5 750 - -83094885 - 1**472-0'),(532,'5 750 - -83448306 - 1**473-0'),(533,'5 750 - -83802477 - 1**474-0'),(534,'5 750 - -84157398 - 1**475-0'),(535,'5 750 - -84513069 - 1**476-0'),(536,'5 750 - -84869490 - 1**477-0'),(537,'5 750 - -85226661 - 1**478-0'),(538,'5 750 - -85584582 - 1**479-0'),(539,'5 750 - -85943253 - 1**480-0'),(540,'5 750 - -86302674 - 1**481-0'),(541,'5 750 - -86662845 - 1**482-0'),(542,'5 750 - -87023766 - 1**483-0'),(543,'5 750 - -87385437 - 1**484-0'),(544,'5 750 - -87747858 - 1**485-0'),(545,'5 750 - -88111029 - 1**486-0'),(546,'5 750 - -88474950 - 1**487-0'),(547,'5 750 - -88839621 - 1**488-0'),(548,'5 750 - -89205042 - 1**489-0'),(549,'5 750 - -89571213 - 1**490-0'),(550,'5 750 - -89938134 - 1**491-0'),(551,'5 750 - -90305805 - 1**492-0'),(552,'5 750 - -90674226 - 1**493-0'),(553,'5 750 - -91043397 - 1**494-0'),(554,'5 750 - -91413318 - 1**495-0'),(555,'5 750 - -91783989 - 1**496-0'),(556,'5 750 - -92155410 - 1**497-0'),(557,'5 750 - -92527581 - 1**498-0'),(558,'5 750 - -92900502 - 1**499-0'),(559,'5 750 - -93274173 - 1**500-0'),(560,'5 750 - -93648594 - 1**501-0'),(561,'5 750 - -94023765 - 1**502-0'),(562,'5 750 - -94399686 - 1**503-0'),(563,'5 750 - -94776357 - 1**504-0'),(564,'5 750 - -95153778 - 1**505-0'),(565,'5 750 - -95531949 - 1**506-0'),(566,'5 750 - -95910870 - 1**507-0'),(567,'5 750 - -96290541 - 1**508-0'),(568,'5 750 - -96670962 - 1**509-0'),(569,'5 750 - -97052133 - 1**510-0'),(570,'5 750 - -97434054 - 1**511-0'),(571,'5 750 - -97816725 - 1**512-0'),(572,'5 750 - -98200146 - 1**513-0'),(573,'5 750 - -98584317 - 1**514-0'),(574,'5 750 - -98969238 - 1**515-0'),(575,'5 750 - -99354909 - 1**516-0'),(576,'5 750 - -99741330 - 1**517-0'),(577,'5 750 - -100128501 - 1**518-0'),(578,'5 750 - -100516422 - 1**519-0'),(579,'5 750 - -100905093 - 1**520-0'),(580,'5 750 - -101294514 - 1**521-0'),(581,'5 750 - -101684685 - 1**522-0'),(582,'5 750 - -102075606 - 1**523-0'),(583,'5 750 - -102467277 - 1**524-0'),(584,'5 750 - -102859698 - 1**525-0'),(585,'5 750 - -103252869 - 1**526-0'),(586,'5 750 - -103646790 - 1**527-0'),(587,'5 750 - -104041461 - 1**528-0'),(588,'5 750 - -104436882 - 1**529-0'),(589,'5 750 - -104833053 - 1**530-0'),(590,'5 750 - -105229974 - 1**531-0'),(591,'5 750 - -105627645 - 1**532-0'),(592,'5 750 - -106026066 - 1**533-0'),(593,'5 750 - -106425237 - 1**534-0'),(594,'5 750 - -106825158 - 1**535-0'),(595,'5 750 - -107225829 - 1**536-0'),(596,'5 750 - -107627250 - 1**537-0'),(597,'5 750 - -108029421 - 1**538-0'),(598,'5 750 - -108432342 - 1**539-0'),(599,'5 750 - -108836013 - 1**540-0'),(600,'5 750 - -109240434 - 1**541-0'),(601,'5 750 - -109645605 - 1**542-0'),(602,'5 750 - -110051526 - 1**543-0'),(603,'5 750 - -110458197 - 1**544-0'),(604,'5 750 - -110865618 - 1**545-0'),(605,'5 750 - -111273789 - 1**546-0'),(606,'5 750 - -111682710 - 1**547-0'),(607,'5 750 - -112092381 - 1**548-0'),(608,'5 750 - -112502802 - 1**549-0'),(609,'5 750 - -112913973 - 1**550-0'),(610,'5 750 - -113325894 - 1**551-0'),(611,'5 750 - -113738565 - 1**552-0'),(612,'5 750 - -114151986 - 1**553-0'),(613,'5 750 - -114566157 - 1**554-0'),(614,'5 750 - -114981078 - 1**555-0'),(615,'5 750 - -115396749 - 1**556-0'),(616,'5 750 - -115813170 - 1**557-0'),(617,'5 750 - -116230341 - 1**558-0'),(618,'5 750 - -116648262 - 1**559-0'),(619,'5 750 - -117066933 - 1**560-0'),(620,'5 750 - -117486354 - 1**561-0'),(621,'5 750 - -117906525 - 1**562-0'),(622,'5 750 - -118327446 - 1**563-0'),(623,'5 750 - -118749117 - 1**564-0'),(624,'5 750 - -119171538 - 1**565-0'),(625,'5 750 - -119594709 - 1**566-0'),(626,'5 750 - -120018630 - 1**567-0'),(627,'5 750 - -120443301 - 1**568-0'),(628,'5 750 - -120868722 - 1**569-0'),(629,'5 750 - -121294893 - 1**570-0'),(630,'5 750 - -121721814 - 1**571-0'),(631,'5 750 - -122149485 - 1**572-0'),(632,'5 750 - -122577906 - 1**573-0'),(633,'5 750 - -123007077 - 1**574-0'),(634,'5 750 - -123436998 - 1**575-0'),(635,'5 750 - -123867669 - 1**576-0'),(636,'5 750 - -124299090 - 1**577-0'),(637,'5 750 - -124731261 - 1**578-0'),(638,'5 750 - -125164182 - 1**579-0'),(639,'5 750 - -125597853 - 1**580-0'),(640,'5 750 - -126032274 - 1**581-0'),(641,'5 750 - -126467445 - 1**582-0'),(642,'5 750 - -126903366 - 1**583-0'),(643,'5 750 - -127340037 - 1**584-0'),(644,'5 750 - -127777458 - 1**585-0'),(645,'5 750 - -128215629 - 1**586-0'),(646,'5 750 - -128654550 - 1**587-0'),(647,'5 750 - -129094221 - 1**588-0'),(648,'5 750 - -129534642 - 1**589-0'),(649,'5 750 - -129975813 - 1**590-0'),(650,'5 750 - -130417734 - 1**591-0'),(651,'5 750 - -130860405 - 1**592-0'),(652,'5 750 - -131303826 - 1**593-0'),(653,'5 750 - -131747997 - 1**594-0'),(654,'5 750 - -132192918 - 1**595-0'),(655,'5 750 - -132638589 - 1**596-0'),(656,'5 750 - -133085010 - 1**597-0'),(657,'5 750 - -133532181 - 1**598-0'),(658,'5 750 - -133980102 - 1**599-0'),(659,'5 750 - -134428773 - 1**600-0'),(660,'5 750 - -134878194 - 1**601-0'),(661,'5 750 - -135328365 - 1**602-0'),(662,'5 750 - -135779286 - 1**603-0'),(663,'5 750 - -136230957 - 1**604-0'),(664,'5 750 - -136683378 - 1**605-0'),(665,'5 750 - -137136549 - 1**606-0'),(666,'5 750 - -137590470 - 1**607-0'),(667,'5 750 - -138045141 - 1**608-0'),(668,'5 750 - -138500562 - 1**609-0'),(669,'5 750 - -138956733 - 1**610-0'),(670,'5 750 - -139413654 - 1**611-0'),(671,'5 750 - -139871325 - 1**612-0'),(672,'5 750 - -140329746 - 1**613-0'),(673,'5 750 - -140788917 - 1**614-0'),(674,'5 750 - -141248838 - 1**615-0'),(675,'5 750 - -141709509 - 1**616-0'),(676,'5 750 - -142170930 - 1**617-0'),(677,'5 750 - -142633101 - 1**618-0'),(678,'5 750 - -143096022 - 1**619-0'),(679,'5 750 - -143559693 - 1**620-0'),(680,'5 750 - -144024114 - 1**621-0'),(681,'5 750 - -144489285 - 1**622-0'),(682,'5 750 - -144955206 - 1**623-0'),(683,'5 750 - -145421877 - 1**624-0'),(684,'5 750 - -145889298 - 1**625-0'),(685,'5 750 - -146357469 - 1**626-0'),(686,'5 750 - -146826390 - 1**627-0'),(687,'5 750 - -147296061 - 1**628-0'),(688,'5 750 - -147766482 - 1**629-0'),(689,'5 750 - -148237653 - 1**630-0'),(690,'5 750 - -148709574 - 1**631-0'),(691,'5 750 - -149182245 - 1**632-0'),(692,'5 750 - -149655666 - 1**633-0'),(693,'5 750 - -150129837 - 1**634-0'),(694,'5 750 - -150604758 - 1**635-0'),(695,'5 750 - -151080429 - 1**636-0'),(696,'5 750 - -151556850 - 1**637-0'),(697,'5 750 - -152034021 - 1**638-0'),(698,'5 750 - -152511942 - 1**639-0'),(699,'5 750 - -152990613 - 1**640-0'),(700,'5 750 - -153470034 - 1**641-0'),(701,'5 750 - -153950205 - 1**642-0'),(702,'5 750 - -154431126 - 1**643-0'),(703,'5 750 - -154912797 - 1**644-0'),(704,'5 750 - -155395218 - 1**645-0'),(705,'5 750 - -155878389 - 1**646-0'),(706,'5 750 - -156362310 - 1**647-0'),(707,'5 750 - -156846981 - 1**648-0'),(708,'5 750 - -157332402 - 1**649-0'),(709,'5 750 - -157818573 - 1**650-0'),(710,'5 750 - -158305494 - 1**651-0'),(711,'5 750 - -158793165 - 1**652-0'),(712,'5 750 - -159281586 - 1**653-0'),(713,'5 750 - -159770757 - 1**654-0'),(714,'5 750 - -160260678 - 1**655-0'),(715,'5 750 - -160751349 - 1**656-0'),(716,'5 750 - -161242770 - 1**657-0'),(717,'5 750 - -161734941 - 1**658-0'),(718,'5 750 - -162227862 - 1**659-0'),(719,'5 750 - -162721533 - 1**660-0'),(720,'5 750 - -163215954 - 1**661-0'),(721,'5 750 - -163711125 - 1**662-0'),(722,'5 750 - -164207046 - 1**663-0'),(723,'5 750 - -164703717 - 1**664-0'),(724,'5 750 - -165201138 - 1**665-0'),(725,'5 750 - -165699309 - 1**666-0'),(726,'5 750 - -166198230 - 1**667-0'),(727,'5 750 - -166697901 - 1**668-0'),(728,'5 750 - -167198322 - 1**669-0'),(729,'5 750 - -167699493 - 1**670-0'),(730,'5 750 - -168201414 - 1**671-0'),(731,'5 750 - -168704085 - 1**672-0'),(732,'5 750 - -169207506 - 1**673-0'),(733,'5 750 - -169711677 - 1**674-0'),(734,'5 750 - -170216598 - 1**675-0'),(735,'5 750 - -170722269 - 1**676-0'),(736,'5 750 - -171228690 - 1**677-0'),(737,'5 750 - -171735861 - 1**678-0'),(738,'5 750 - -172243782 - 1**679-0'),(739,'5 750 - -172752453 - 1**680-0'),(740,'5 750 - -173261874 - 1**681-0'),(741,'5 750 - -173772045 - 1**682-0'),(742,'5 750 - -174282966 - 1**683-0'),(743,'5 750 - -174794637 - 1**684-0'),(744,'5 750 - -175307058 - 1**685-0'),(745,'5 750 - -175820229 - 1**686-0'),(746,'5 750 - -176334150 - 1**687-0'),(747,'5 750 - -176848821 - 1**688-0'),(748,'5 750 - -177364242 - 1**689-0'),(749,'5 750 - -177880413 - 1**690-0'),(750,'5 750 - -178397334 - 1**691-0'),(751,'5 750 - -178915005 - 1**692-0'),(752,'5 750 - -179433426 - 1**693-0'),(753,'5 750 - -179952597 - 1**694-0'),(754,'5 750 - -180472518 - 1**695-0'),(755,'5 750 - -180993189 - 1**696-0'),(756,'5 750 - -181514610 - 1**697-0'),(757,'5 750 - -182036781 - 1**698-0'),(758,'5 750 - -182559702 - 1**699-0'),(759,'5 750 - -183083373 - 1**700-0'),(760,'5 750 - -183607794 - 1**701-0'),(761,'5 750 - -184132965 - 1**702-0'),(762,'5 750 - -184658886 - 1**703-0'),(763,'5 750 - -185185557 - 1**704-0'),(764,'5 750 - -185712978 - 1**705-0'),(765,'5 750 - -186241149 - 1**706-0'),(766,'5 750 - -186770070 - 1**707-0'),(767,'5 750 - -187299741 - 1**708-0'),(768,'5 750 - -187830162 - 1**709-0'),(769,'5 750 - -188361333 - 1**710-0'),(770,'5 750 - -188893254 - 1**711-0'),(771,'5 750 - -189425925 - 1**712-0'),(772,'5 750 - -189959346 - 1**713-0'),(773,'5 750 - -190493517 - 1**714-0'),(774,'5 750 - -191028438 - 1**715-0'),(775,'5 750 - -191564109 - 1**716-0'),(776,'5 750 - -192100530 - 1**717-0'),(777,'5 750 - -192637701 - 1**718-0'),(778,'5 750 - -193175622 - 1**719-0'),(779,'5 750 - -193714293 - 1**720-0'),(780,'5 750 - -194253714 - 1**721-0'),(781,'5 750 - -194793885 - 1**722-0'),(782,'5 750 - -195334806 - 1**723-0'),(783,'5 750 - -195876477 - 1**724-0'),(784,'5 750 - -196418898 - 1**725-0'),(785,'5 750 - -196962069 - 1**726-0'),(786,'5 750 - -197505990 - 1**727-0'),(787,'5 750 - -198050661 - 1**728-0'),(788,'5 750 - -198596082 - 1**729-0'),(789,'5 750 - -199142253 - 1**730-0'),(790,'5 750 - -199689174 - 1**731-0'),(791,'5 750 - -200236845 - 1**732-0'),(792,'5 750 - -200785266 - 1**733-0'),(793,'5 750 - -201334437 - 1**734-0'),(794,'5 750 - -201884358 - 1**735-0'),(795,'5 750 - -202435029 - 1**736-0'),(796,'5 750 - -202986450 - 1**737-0'),(797,'5 750 - -203538621 - 1**738-0'),(798,'5 750 - -204091542 - 1**739-0'),(799,'5 750 - -204645213 - 1**740-0'),(800,'5 750 - -205199634 - 1**741-0'),(801,'5 750 - -205754805 - 1**742-0'),(802,'5 750 - -206310726 - 1**743-0'),(803,'5 750 - -206867397 - 1**744-0'),(804,'5 750 - -207424818 - 1**745-0'),(805,'5 750 - -207982989 - 1**746-0'),(806,'5 750 - -208541910 - 1**747-0'),(807,'5 750 - -209101581 - 1**748-0'),(808,'5 750 - -209662002 - 1**749-0'),(809,'5 750 - -210223173 - 1**750-0'),(810,'5 750 - -210785094 - 1**751-0'),(811,'5 750 - -211347765 - 1**752-0'),(812,'5 750 - -211911186 - 1**753-0'),(813,'5 750 - -212475357 - 1**754-0'),(814,'5 750 - -213040278 - 1**755-0'),(815,'5 750 - -213605949 - 1**756-0'),(816,'5 750 - -214172370 - 1**757-0'),(817,'5 750 - -214739541 - 1**758-0'),(818,'5 750 - -215307462 - 1**759-0'),(819,'5 750 - -215876133 - 1**760-0'),(820,'5 750 - -216445554 - 1**761-0'),(821,'5 750 - -217015725 - 1**762-0'),(822,'5 750 - -217586646 - 1**763-0'),(823,'5 750 - -218158317 - 1**764-0'),(824,'5 750 - -218730738 - 1**765-0'),(825,'5 750 - -219303909 - 1**766-0'),(826,'5 750 - -219877830 - 1**767-0'),(827,'5 750 - -220452501 - 1**768-0'),(828,'5 750 - -221027922 - 1**769-0'),(829,'5 750 - -221604093 - 1**770-0'),(830,'5 750 - -222181014 - 1**771-0'),(831,'5 750 - -222758685 - 1**772-0'),(832,'5 750 - -223337106 - 1**773-0'),(833,'5 750 - -223916277 - 1**774-0'),(834,'5 750 - -224496198 - 1**775-0'),(835,'5 750 - -225076869 - 1**776-0'),(836,'5 750 - -225658290 - 1**777-0'),(837,'5 750 - -226240461 - 1**778-0'),(838,'5 750 - -226823382 - 1**779-0'),(839,'5 750 - -227407053 - 1**780-0'),(840,'5 750 - -227991474 - 1**781-0'),(841,'5 750 - -228576645 - 1**782-0'),(842,'5 750 - -229162566 - 1**783-0'),(843,'5 750 - -229749237 - 1**784-0'),(844,'5 750 - -230336658 - 1**785-0'),(845,'5 750 - -230924829 - 1**786-0'),(846,'5 750 - -231513750 - 1**787-0'),(847,'5 750 - -232103421 - 1**788-0'),(848,'5 750 - -232693842 - 1**789-0'),(849,'5 750 - -233285013 - 1**790-0'),(850,'5 750 - -233876934 - 1**791-0'),(851,'5 750 - -234469605 - 1**792-0'),(852,'5 750 - -235063026 - 1**793-0'),(853,'5 750 - -235657197 - 1**794-0'),(854,'5 750 - -236252118 - 1**795-0'),(855,'5 750 - -236847789 - 1**796-0'),(856,'5 750 - -237444210 - 1**797-0'),(857,'5 750 - -238041381 - 1**798-0'),(858,'5 750 - -238639302 - 1**799-0'),(859,'5 750 - -239237973 - 1**800-0'),(860,'5 750 - -239837394 - 1**801-0'),(861,'5 750 - -240437565 - 1**802-0'),(862,'5 750 - -241038486 - 1**803-0'),(863,'5 750 - -241640157 - 1**804-0'),(864,'5 750 - -242242578 - 1**805-0'),(865,'5 750 - -242845749 - 1**806-0'),(866,'5 750 - -243449670 - 1**807-0'),(867,'5 750 - -244054341 - 1**808-0'),(868,'5 750 - -244659762 - 1**809-0'),(869,'5 750 - -245265933 - 1**810-0'),(870,'5 750 - -245872854 - 1**811-0'),(871,'5 750 - -246480525 - 1**812-0'),(872,'5 750 - -247088946 - 1**813-0'),(873,'5 750 - -247698117 - 1**814-0'),(874,'5 750 - -248308038 - 1**815-0'),(875,'5 750 - -248918709 - 1**816-0'),(876,'5 750 - -249530130 - 1**817-0'),(877,'5 750 - -250142301 - 1**818-0'),(878,'5 750 - -250755222 - 1**819-0'),(879,'5 750 - -251368893 - 1**820-0'),(880,'5 750 - -251983314 - 1**821-0'),(881,'5 750 - -252598485 - 1**822-0'),(882,'5 750 - -253214406 - 1**823-0'),(883,'5 750 - -253831077 - 1**824-0'),(884,'5 750 - -254448498 - 1**825-0'),(885,'5 750 - -255066669 - 1**826-0'),(886,'5 750 - -255685590 - 1**827-0'),(887,'5 750 - -256305261 - 1**828-0'),(888,'5 750 - -256925682 - 1**829-0'),(889,'5 750 - -257546853 - 1**830-0'),(890,'5 750 - -258168774 - 1**831-0'),(891,'5 750 - -258791445 - 1**832-0'),(892,'5 750 - -259414866 - 1**833-0'),(893,'5 750 - -260039037 - 1**834-0'),(894,'5 750 - -260663958 - 1**835-0'),(895,'5 750 - -261289629 - 1**836-0'),(896,'5 750 - -261916050 - 1**837-0'),(897,'5 750 - -262543221 - 1**838-0'),(898,'5 750 - -263171142 - 1**839-0'),(899,'5 750 - -263799813 - 1**840-0'),(900,'5 750 - -264429234 - 1**841-0'),(901,'5 750 - -265059405 - 1**842-0'),(902,'5 750 - -265690326 - 1**843-0'),(903,'5 750 - -266321997 - 1**844-0'),(904,'5 750 - -266954418 - 1**845-0'),(905,'5 750 - -267587589 - 1**846-0'),(906,'5 750 - -268221510 - 1**847-0'),(907,'5 750 - -268856181 - 1**848-0'),(908,'5 750 - -269491602 - 1**849-0'),(909,'5 750 - -270127773 - 1**850-0'),(910,'5 750 - -270764694 - 1**851-0'),(911,'5 750 - -271402365 - 1**852-0'),(912,'5 750 - -272040786 - 1**853-0'),(913,'5 750 - -272679957 - 1**854-0'),(914,'5 750 - -273319878 - 1**855-0'),(915,'5 750 - -273960549 - 1**856-0'),(916,'5 750 - -274601970 - 1**857-0'),(917,'5 750 - -275244141 - 1**858-0'),(918,'5 750 - -275887062 - 1**859-0'),(919,'5 750 - -276530733 - 1**860-0'),(920,'5 750 - -277175154 - 1**861-0'),(921,'5 750 - -277820325 - 1**862-0'),(922,'5 750 - -278466246 - 1**863-0'),(923,'5 750 - -279112917 - 1**864-0'),(924,'5 750 - -279760338 - 1**865-0'),(925,'5 750 - -280408509 - 1**866-0'),(926,'5 750 - -281057430 - 1**867-0'),(927,'5 750 - -281707101 - 1**868-0'),(928,'5 750 - -282357522 - 1**869-0'),(929,'5 750 - -283008693 - 1**870-0'),(930,'5 750 - -283660614 - 1**871-0'),(931,'5 750 - -284313285 - 1**872-0'),(932,'5 750 - -284966706 - 1**873-0'),(933,'5 750 - -285620877 - 1**874-0'),(934,'5 750 - -286275798 - 1**875-0'),(935,'5 750 - -286931469 - 1**876-0'),(936,'5 750 - -287587890 - 1**877-0'),(937,'5 750 - -288245061 - 1**878-0'),(938,'5 750 - -288902982 - 1**879-0'),(939,'5 750 - -289561653 - 1**880-0'),(940,'5 750 - -290221074 - 1**881-0'),(941,'5 750 - -290881245 - 1**882-0'),(942,'5 750 - -291542166 - 1**883-0'),(943,'5 750 - -292203837 - 1**884-0'),(944,'5 750 - -292866258 - 1**885-0'),(945,'5 750 - -293529429 - 1**886-0'),(946,'5 750 - -294193350 - 1**887-0'),(947,'5 750 - -294858021 - 1**888-0'),(948,'5 750 - -295523442 - 1**889-0'),(949,'5 750 - -296189613 - 1**890-0'),(950,'5 750 - -296856534 - 1**891-0'),(951,'5 750 - -297524205 - 1**892-0'),(952,'5 750 - -298192626 - 1**893-0'),(953,'5 750 - -298861797 - 1**894-0'),(954,'5 750 - -299531718 - 1**895-0'),(955,'5 750 - -300202389 - 1**896-0'),(956,'5 750 - -300873810 - 1**897-0'),(957,'5 750 - -301545981 - 1**898-0'),(958,'5 750 - -302218902 - 1**899-0'),(959,'5 750 - -302892573 - 1**900-0'),(960,'5 750 - -303566994 - 1**901-0'),(961,'5 750 - -304242165 - 1**902-0'),(962,'5 750 - -304918086 - 1**903-0'),(963,'5 750 - -305594757 - 1**904-0'),(964,'5 750 - -306272178 - 1**905-0'),(965,'5 750 - -306950349 - 1**906-0'),(966,'5 750 - -307629270 - 1**907-0'),(967,'5 750 - -308308941 - 1**908-0'),(968,'5 750 - -308989362 - 1**909-0'),(969,'5 750 - -309670533 - 1**910-0'),(970,'5 750 - -310352454 - 1**911-0'),(971,'5 750 - -311035125 - 1**912-0'),(972,'5 750 - -311718546 - 1**913-0'),(973,'5 750 - -312402717 - 1**914-0'),(974,'5 750 - -313087638 - 1**915-0'),(975,'5 750 - -313773309 - 1**916-0'),(976,'5 750 - -314459730 - 1**917-0'),(977,'5 750 - -315146901 - 1**918-0'),(978,'5 750 - -315834822 - 1**919-0'),(979,'5 750 - -316523493 - 1**920-0'),(980,'5 750 - -317212914 - 1**921-0'),(981,'5 750 - -317903085 - 1**922-0'),(982,'5 750 - -318594006 - 1**923-0'),(983,'5 750 - -319285677 - 1**924-0'),(984,'5 750 - -319978098 - 1**925-0'),(985,'5 750 - -320671269 - 1**926-0'),(986,'5 750 - -321365190 - 1**927-0'),(987,'5 750 - -322059861 - 1**928-0'),(988,'5 750 - -322755282 - 1**929-0'),(989,'5 750 - -323451453 - 1**930-0'),(990,'5 750 - -324148374 - 1**931-0'),(991,'5 750 - -324846045 - 1**932-0'),(992,'5 750 - -325544466 - 1**933-0'),(993,'5 750 - -326243637 - 1**934-0'),(994,'5 750 - -326943558 - 1**935-0'),(995,'5 750 - -327644229 - 1**936-0'),(996,'5 750 - -328345650 - 1**937-0'),(997,'5 750 - -329047821 - 1**938-0'),(998,'5 750 - -329750742 - 1**939-0'),(999,'5 750 - -330454413 - 1**940-0'),(1000,'5 750 - -331158834 - 1**941-0'),(1001,'5 750 - -331864005 - 1**942-0'),(1002,'5 750 - -332569926 - 1**943-0'),(1003,'5 750 - -333276597 - 1**944-0'),(1004,'5 750 - -333984018 - 1**945-0'),(1005,'5 750 - -334692189 - 1**946-0'),(1006,'5 750 - -335401110 - 1**947-0'),(1007,'5 750 - -336110781 - 1**948-0'),(1008,'5 750 - -336821202 - 1**949-0'),(1009,'5 750 - -337532373 - 1**950-0'),(1010,'5 750 - -338244294 - 1**951-0'),(1011,'5 750 - -338956965 - 1**952-0'),(1012,'5 750 - -339670386 - 1**953-0'),(1013,'5 750 - -340384557 - 1**954-0'),(1014,'5 750 - -341099478 - 1**955-0'),(1015,'5 750 - -341815149 - 1**956-0'),(1016,'5 750 - -342531570 - 1**957-0'),(1017,'5 750 - -343248741 - 1**958-0'),(1018,'5 750 - -343966662 - 1**959-0'),(1019,'5 750 - -344685333 - 1**960-0'),(1020,'5 750 - -345404754 - 1**961-0'),(1021,'5 750 - -346124925 - 1**962-0'),(1022,'5 750 - -346845846 - 1**963-0'),(1023,'5 750 - -347567517 - 1**964-0'),(1024,'5 750 - -348289938 - 1**965-0'),(1025,'5 750 - -349013109 - 1**966-0'),(1026,'5 750 - -349737030 - 1**967-0'),(1027,'5 750 - -350461701 - 1**968-0'),(1028,'5 750 - -351187122 - 1**969-0'),(1029,'5 750 - -351913293 - 1**970-0'),(1030,'5 750 - -352640214 - 1**971-0'),(1031,'5 750 - -353367885 - 1**972-0'),(1032,'5 750 - -354096306 - 1**973-0'),(1033,'5 750 - -354825477 - 1**974-0'),(1034,'5 750 - -355555398 - 1**975-0'),(1035,'5 750 - -356286069 - 1**976-0'),(1036,'5 750 - -357017490 - 1**977-0'),(1037,'5 750 - -357749661 - 1**978-0'),(1038,'5 750 - -358482582 - 1**979-0'),(1039,'5 750 - -359216253 - 1**980-0'),(1040,'5 750 - -359950674 - 1**981-0'),(1041,'5 750 - -360685845 - 1**982-0'),(1042,'5 750 - -361421766 - 1**983-0'),(1043,'5 750 - -362158437 - 1**984-0'),(1044,'5 750 - -362895858 - 1**985-0'),(1045,'5 750 - -363634029 - 1**986-0'),(1046,'5 750 - -364372950 - 1**987-0'),(1047,'5 750 - -365112621 - 1**988-0'),(1048,'5 750 - -365853042 - 1**989-0'),(1049,'5 750 - -366594213 - 1**990-0'),(1050,'5 750 - -367336134 - 1**991-0'),(1051,'5 750 - -368078805 - 1**992-0'),(1052,'5 750 - -368822226 - 1**993-0'),(1053,'5 750 - -369566397 - 1**994-0'),(1054,'5 750 - -370311318 - 1**995-0'),(1055,'5 750 - -371056989 - 1**996-0'),(1056,'5 750 - -371803410 - 1**997-0'),(1057,'5 750 - -372550581 - 1**998-0'),(1058,'5 750 - -373298502 - 1**999-0'),(1059,'5 750 - -374047173 - 1**1000-0'),(1060,'5 750 - -374796594 - 1**1001-0'),(1061,'5 750 - -375546765 - 1**1002-0'),(1062,'5 750 - -376297686 - 1**1003-0'),(1063,'5 750 - -377049357 - 1**1004-0'),(1064,'5 750 - -377801778 - 1**1005-0'),(1065,'5 750 - -378554949 - 1**1006-0'),(1066,'5 750 - -379308870 - 1**1007-0'),(1067,'5 750 - -380063541 - 1**1008-0'),(1068,'5 750 - -380818962 - 1**1009-0'),(1069,'5 750 - -381575133 - 1**1010-0'),(1070,'5 750 - -382332054 - 1**1011-0'),(1071,'5 750 - -383089725 - 1**1012-0'),(1072,'5 750 - -383848146 - 1**1013-0'),(1073,'5 750 - -384607317 - 1**1014-0'),(1074,'5 750 - -385367238 - 1**1015-0'),(1075,'5 750 - -386127909 - 1**1016-0'),(1076,'5 750 - -386889330 - 1**1017-0'),(1077,'5 750 - -387651501 - 1**1018-0'),(1078,'5 750 - -388414422 - 1**1019-0'),(1079,'5 750 - -389178093 - 1**1020-0'),(1080,'5 750 - -389942514 - 1**1021-0'),(1081,'5 750 - -390707685 - 1**1022-0'),(1082,'5 750 - -391473606 - 1**1023-0'),(1083,'5 750 - -392240277 - 1**1024-0'),(1084,'5 750 - -393007698 - 1**1025-0'),(1085,'5 750 - -393775869 - 1**1026-0'),(1086,'5 750 - -394544790 - 1**1027-0'),(1087,'5 750 - -395314461 - 1**1028-0'),(1088,'5 750 - 237.60000000000002 - 1**0-1'),(1089,'5 750 - -396084882 - 1**1029-0'),(1090,'5 750 - -396856053 - 1**1030-0'),(1091,'5 750 - 297 - 1**0-0'),(1092,'5 750 - -397627974 - 1**1031-0'),(1093,'5 750 - -453 - 1**1-0'),(1094,'5 750 - -398400645 - 1**1032-0'),(1095,'5 750 - -1953 - 1**2-0'),(1096,'5 750 - -399174066 - 1**1033-0'),(1097,'5 750 - -4203 - 1**3-0'),(1098,'5 750 - -399948237 - 1**1034-0'),(1099,'5 750 - -7203 - 1**4-0'),(1100,'5 750 - -400723158 - 1**1035-0'),(1101,'5 750 - -10953 - 1**5-0'),(1102,'5 750 - -401498829 - 1**1036-0'),(1103,'5 750 - -15453 - 1**6-0'),(1104,'5 750 - -402275250 - 1**1037-0'),(1105,'5 750 - -20703 - 1**7-0'),(1106,'5 750 - -403052421 - 1**1038-0'),(1107,'5 750 - -26703 - 1**8-0'),(1108,'5 750 - -403830342 - 1**1039-0'),(1109,'5 750 - -33453 - 1**9-0'),(1110,'5 750 - -404609013 - 1**1040-0'),(1111,'5 750 - -40953 - 1**10-0'),(1112,'5 750 - -405388434 - 1**1041-0'),(1113,'5 750 - -49203 - 1**11-0'),(1114,'5 750 - -406168605 - 1**1042-0'),(1115,'5 750 - -58203 - 1**12-0'),(1116,'5 750 - -406949526 - 1**1043-0'),(1117,'5 750 - -67953 - 1**13-0'),(1118,'5 750 - -407731197 - 1**1044-0'),(1119,'5 750 - -78453 - 1**14-0'),(1120,'5 750 - -408513618 - 1**1045-0'),(1121,'5 750 - -89703 - 1**15-0'),(1122,'5 750 - -409296789 - 1**1046-0'),(1123,'5 750 - -101703 - 1**16-0'),(1124,'5 750 - -410080710 - 1**1047-0'),(1125,'5 750 - -114453 - 1**17-0'),(1126,'5 750 - -410865381 - 1**1048-0'),(1127,'5 750 - -127953 - 1**18-0'),(1128,'5 750 - -411650802 - 1**1049-0'),(1129,'5 750 - -142203 - 1**19-0'),(1130,'5 750 - -412436973 - 1**1050-0'),(1131,'5 750 - -157203 - 1**20-0'),(1132,'5 750 - -413223894 - 1**1051-0'),(1133,'5 750 - -172953 - 1**21-0'),(1134,'5 750 - -414011565 - 1**1052-0'),(1135,'5 750 - -189453 - 1**22-0'),(1136,'5 750 - -414799986 - 1**1053-0'),(1137,'5 750 - -206703 - 1**23-0'),(1138,'5 750 - -415589157 - 1**1054-0'),(1139,'5 750 - -224703 - 1**24-0'),(1140,'5 750 - -416379078 - 1**1055-0'),(1141,'5 750 - -243453 - 1**25-0'),(1142,'5 750 - -417169749 - 1**1056-0'),(1143,'5 750 - -262953 - 1**26-0'),(1144,'5 750 - -417961170 - 1**1057-0'),(1145,'5 750 - -283203 - 1**27-0'),(1146,'5 750 - -418753341 - 1**1058-0'),(1147,'5 750 - -304203 - 1**28-0'),(1148,'5 750 - -419546262 - 1**1059-0'),(1149,'5 750 - -325953 - 1**29-0'),(1150,'5 750 - -420339933 - 1**1060-0'),(1151,'5 750 - -348453 - 1**30-0'),(1152,'5 750 - -421134354 - 1**1061-0'),(1153,'5 750 - -371703 - 1**31-0'),(1154,'5 750 - -421929525 - 1**1062-0'),(1155,'5 750 - -395703 - 1**32-0'),(1156,'5 750 - -422725446 - 1**1063-0'),(1157,'5 750 - -420453 - 1**33-0'),(1158,'5 750 - -423522117 - 1**1064-0'),(1159,'5 750 - -445953 - 1**34-0'),(1160,'5 750 - -424319538 - 1**1065-0'),(1161,'5 750 - -472203 - 1**35-0'),(1162,'5 750 - -425117709 - 1**1066-0'),(1163,'5 750 - -499203 - 1**36-0'),(1164,'5 750 - -425916630 - 1**1067-0'),(1165,'5 750 - -526953 - 1**37-0'),(1166,'5 750 - -426716301 - 1**1068-0'),(1167,'5 750 - -555453 - 1**38-0'),(1168,'5 750 - -427516722 - 1**1069-0'),(1169,'5 750 - -584703 - 1**39-0'),(1170,'5 750 - -428317893 - 1**1070-0'),(1171,'5 750 - -614703 - 1**40-0'),(1172,'5 750 - -429119814 - 1**1071-0'),(1173,'5 750 - -645453 - 1**41-0'),(1174,'5 750 - -429922485 - 1**1072-0'),(1175,'5 750 - -676953 - 1**42-0'),(1176,'5 750 - -430725906 - 1**1073-0'),(1177,'5 750 - -709203 - 1**43-0'),(1178,'5 750 - -431530077 - 1**1074-0'),(1179,'5 750 - -742203 - 1**44-0'),(1180,'5 750 - -432334998 - 1**1075-0'),(1181,'5 750 - -775953 - 1**45-0'),(1182,'5 750 - -433140669 - 1**1076-0'),(1183,'5 750 - -810453 - 1**46-0'),(1184,'5 750 - -433947090 - 1**1077-0'),(1185,'5 750 - -845703 - 1**47-0'),(1186,'5 750 - -434754261 - 1**1078-0'),(1187,'5 750 - -881703 - 1**48-0'),(1188,'5 750 - -435562182 - 1**1079-0'),(1189,'5 750 - -918453 - 1**49-0'),(1190,'5 750 - -436370853 - 1**1080-0'),(1191,'5 750 - -955953 - 1**50-0'),(1192,'5 750 - -437180274 - 1**1081-0'),(1193,'5 750 - -994203 - 1**51-0'),(1194,'5 750 - -437990445 - 1**1082-0'),(1195,'5 750 - -1033203 - 1**52-0'),(1196,'5 750 - -438801366 - 1**1083-0'),(1197,'5 750 - -1072953 - 1**53-0'),(1198,'5 750 - -439613037 - 1**1084-0'),(1199,'5 750 - -1113453 - 1**54-0'),(1200,'5 750 - -440425458 - 1**1085-0'),(1201,'5 750 - -1154703 - 1**55-0'),(1202,'5 750 - -441238629 - 1**1086-0'),(1203,'5 750 - -1196703 - 1**56-0'),(1204,'5 750 - -442052550 - 1**1087-0'),(1205,'5 750 - -1239453 - 1**57-0'),(1206,'5 750 - -442867221 - 1**1088-0'),(1207,'5 750 - -1282953 - 1**58-0'),(1208,'5 750 - -443682642 - 1**1089-0'),(1209,'5 750 - -1327203 - 1**59-0'),(1210,'5 750 - -444498813 - 1**1090-0'),(1211,'5 750 - -1372203 - 1**60-0'),(1212,'5 750 - -445315734 - 1**1091-0'),(1213,'5 750 - -1417953 - 1**61-0'),(1214,'5 750 - -446133405 - 1**1092-0'),(1215,'5 750 - -1464453 - 1**62-0'),(1216,'5 750 - -446951826 - 1**1093-0'),(1217,'5 750 - -1511703 - 1**63-0'),(1218,'5 750 - -447770997 - 1**1094-0'),(1219,'5 750 - -1559703 - 1**64-0'),(1220,'5 750 - -448590918 - 1**1095-0'),(1221,'5 750 - -1608453 - 1**65-0'),(1222,'5 750 - -449411589 - 1**1096-0'),(1223,'5 750 - -1657953 - 1**66-0'),(1224,'5 750 - -450233010 - 1**1097-0'),(1225,'5 750 - -1708203 - 1**67-0'),(1226,'5 750 - -451055181 - 1**1098-0'),(1227,'5 750 - -1759203 - 1**68-0'),(1228,'5 750 - -451878102 - 1**1099-0'),(1229,'5 750 - -1810953 - 1**69-0'),(1230,'5 750 - -452701773 - 1**1100-0'),(1231,'5 750 - -1863453 - 1**70-0'),(1232,'5 750 - -453526194 - 1**1101-0'),(1233,'5 750 - -1916703 - 1**71-0'),(1234,'5 750 - -454351365 - 1**1102-0'),(1235,'5 750 - -1970703 - 1**72-0'),(1236,'5 750 - -455177286 - 1**1103-0'),(1237,'5 750 - -2025453 - 1**73-0'),(1238,'5 750 - -456003957 - 1**1104-0'),(1239,'5 750 - -2080953 - 1**74-0'),(1240,'5 750 - -456831378 - 1**1105-0'),(1241,'5 750 - -2137203 - 1**75-0'),(1242,'5 750 - -457659549 - 1**1106-0'),(1243,'5 750 - -2194203 - 1**76-0'),(1244,'5 750 - -458488470 - 1**1107-0'),(1245,'5 750 - -2251953 - 1**77-0'),(1246,'5 750 - -459318141 - 1**1108-0'),(1247,'5 750 - -2310453 - 1**78-0'),(1248,'5 750 - -460148562 - 1**1109-0'),(1249,'5 750 - -2369703 - 1**79-0'),(1250,'5 750 - -460979733 - 1**1110-0'),(1251,'5 750 - -2429703 - 1**80-0'),(1252,'5 750 - -461811654 - 1**1111-0'),(1253,'5 750 - -2490453 - 1**81-0'),(1254,'5 750 - -462644325 - 1**1112-0'),(1255,'5 750 - -2551953 - 1**82-0'),(1256,'5 750 - -463477746 - 1**1113-0'),(1257,'5 750 - -2614203 - 1**83-0'),(1258,'5 750 - -464311917 - 1**1114-0'),(1259,'5 750 - -2677203 - 1**84-0'),(1260,'5 750 - -465146838 - 1**1115-0'),(1261,'5 750 - -465982509 - 1**1116-0'),(1262,'5 750 - -2740953 - 1**85-0'),(1263,'5 750 - -466818930 - 1**1117-0'),(1264,'5 750 - -2805453 - 1**86-0'),(1265,'5 750 - -467656101 - 1**1118-0'),(1266,'5 750 - -2870703 - 1**87-0'),(1267,'5 750 - -468494022 - 1**1119-0'),(1268,'5 750 - -2936703 - 1**88-0'),(1269,'5 750 - -469332693 - 1**1120-0'),(1270,'5 750 - -3003453 - 1**89-0'),(1271,'5 750 - -470172114 - 1**1121-0'),(1272,'5 750 - -3070953 - 1**90-0'),(1273,'5 750 - -471012285 - 1**1122-0'),(1274,'5 750 - -3139203 - 1**91-0'),(1275,'5 750 - -471853206 - 1**1123-0'),(1276,'5 750 - -3208203 - 1**92-0'),(1277,'5 750 - -472694877 - 1**1124-0'),(1278,'5 750 - -3277953 - 1**93-0'),(1279,'5 750 - -473537298 - 1**1125-0'),(1280,'5 750 - -3348453 - 1**94-0'),(1281,'5 750 - -474380469 - 1**1126-0'),(1282,'5 750 - -3419703 - 1**95-0'),(1283,'5 750 - -475224390 - 1**1127-0'),(1284,'5 750 - -3491703 - 1**96-0'),(1285,'5 750 - -476069061 - 1**1128-0'),(1286,'5 750 - -3564453 - 1**97-0'),(1287,'5 750 - -476914482 - 1**1129-0'),(1288,'5 750 - -3637953 - 1**98-0'),(1289,'5 750 - -477760653 - 1**1130-0'),(1290,'5 750 - -3712203 - 1**99-0'),(1291,'5 750 - -478607574 - 1**1131-0'),(1292,'5 750 - -3787203 - 1**100-0'),(1293,'5 750 - -479455245 - 1**1132-0'),(1294,'5 750 - -3862953 - 1**101-0'),(1295,'5 750 - -480303666 - 1**1133-0'),(1296,'5 750 - -3939453 - 1**102-0'),(1297,'5 750 - -481152837 - 1**1134-0'),(1298,'5 750 - -4016703 - 1**103-0'),(1299,'5 750 - -482002758 - 1**1135-0'),(1300,'5 750 - -4094703 - 1**104-0'),(1301,'5 750 - -482853429 - 1**1136-0'),(1302,'5 750 - -4173453 - 1**105-0'),(1303,'5 750 - -483704850 - 1**1137-0'),(1304,'5 750 - -4252953 - 1**106-0'),(1305,'5 750 - -484557021 - 1**1138-0'),(1306,'5 750 - -4333203 - 1**107-0'),(1307,'5 750 - -485409942 - 1**1139-0'),(1308,'5 750 - -4414203 - 1**108-0'),(1309,'5 750 - -486263613 - 1**1140-0'),(1310,'5 750 - -4495953 - 1**109-0'),(1311,'5 750 - -487118034 - 1**1141-0'),(1312,'5 750 - -4578453 - 1**110-0'),(1313,'5 750 - -487973205 - 1**1142-0'),(1314,'5 750 - -4661703 - 1**111-0'),(1315,'5 750 - -488829126 - 1**1143-0'),(1316,'5 750 - -4745703 - 1**112-0'),(1317,'5 750 - -489685797 - 1**1144-0'),(1318,'5 750 - -4830453 - 1**113-0'),(1319,'5 750 - -490543218 - 1**1145-0'),(1320,'5 750 - -4915953 - 1**114-0'),(1321,'5 750 - -491401389 - 1**1146-0'),(1322,'5 750 - -5002203 - 1**115-0'),(1323,'5 750 - -492260310 - 1**1147-0'),(1324,'5 750 - -5089203 - 1**116-0'),(1325,'5 750 - -493119981 - 1**1148-0'),(1326,'5 750 - -5176953 - 1**117-0'),(1327,'5 750 - -493980402 - 1**1149-0'),(1328,'5 750 - -5265453 - 1**118-0'),(1329,'5 750 - -494841573 - 1**1150-0'),(1330,'5 750 - -5354703 - 1**119-0'),(1331,'5 750 - -495703494 - 1**1151-0'),(1332,'5 750 - -5444703 - 1**120-0'),(1333,'5 750 - -496566165 - 1**1152-0'),(1334,'5 750 - -5535453 - 1**121-0'),(1335,'5 750 - -497429586 - 1**1153-0'),(1336,'5 750 - -5626953 - 1**122-0'),(1337,'5 750 - -498293757 - 1**1154-0'),(1338,'5 750 - -5719203 - 1**123-0'),(1339,'5 750 - -499158678 - 1**1155-0'),(1340,'5 750 - -5812203 - 1**124-0'),(1341,'5 750 - -500024349 - 1**1156-0'),(1342,'5 750 - -5905953 - 1**125-0'),(1343,'5 750 - -500890770 - 1**1157-0'),(1344,'5 750 - -6000453 - 1**126-0'),(1345,'5 750 - -501757941 - 1**1158-0'),(1346,'5 750 - -6095703 - 1**127-0'),(1347,'5 750 - -502625862 - 1**1159-0'),(1348,'5 750 - -6191703 - 1**128-0'),(1349,'5 750 - -503494533 - 1**1160-0'),(1350,'5 750 - -6288453 - 1**129-0'),(1351,'5 750 - -504363954 - 1**1161-0'),(1352,'5 750 - -6385953 - 1**130-0'),(1353,'5 750 - -505234125 - 1**1162-0'),(1354,'5 750 - -6484203 - 1**131-0'),(1355,'5 750 - -506105046 - 1**1163-0'),(1356,'5 750 - -6583203 - 1**132-0'),(1357,'5 750 - -506976717 - 1**1164-0'),(1358,'5 750 - -6682953 - 1**133-0'),(1359,'5 750 - -507849138 - 1**1165-0'),(1360,'5 750 - -6783453 - 1**134-0'),(1361,'5 750 - -508722309 - 1**1166-0'),(1362,'5 750 - -6884703 - 1**135-0'),(1363,'5 750 - -509596230 - 1**1167-0'),(1364,'5 750 - -6986703 - 1**136-0'),(1365,'5 750 - -510470901 - 1**1168-0'),(1366,'5 750 - -7089453 - 1**137-0'),(1367,'5 750 - -511346322 - 1**1169-0'),(1368,'5 750 - -7192953 - 1**138-0'),(1369,'5 750 - -7297203 - 1**139-0'),(1370,'5 750 - -512222493 - 1**1170-0'),(1371,'5 750 - -7402203 - 1**140-0'),(1372,'5 750 - -513099414 - 1**1171-0'),(1373,'5 750 - -7507953 - 1**141-0'),(1374,'5 750 - -513977085 - 1**1172-0'),(1375,'5 750 - -7614453 - 1**142-0'),(1376,'5 750 - -514855506 - 1**1173-0'),(1377,'5 750 - -7721703 - 1**143-0'),(1378,'5 750 - -515734677 - 1**1174-0'),(1379,'5 750 - -7829703 - 1**144-0'),(1380,'5 750 - -516614598 - 1**1175-0'),(1381,'5 750 - -7938453 - 1**145-0'),(1382,'5 750 - -517495269 - 1**1176-0'),(1383,'5 750 - -8047953 - 1**146-0'),(1384,'5 750 - -518376690 - 1**1177-0'),(1385,'5 750 - -8158203 - 1**147-0'),(1386,'5 750 - -519258861 - 1**1178-0'),(1387,'5 750 - -8269203 - 1**148-0'),(1388,'5 750 - -520141782 - 1**1179-0'),(1389,'5 750 - -8380953 - 1**149-0'),(1390,'5 750 - -521025453 - 1**1180-0'),(1391,'5 750 - -8493453 - 1**150-0'),(1392,'5 750 - -521909874 - 1**1181-0'),(1393,'5 750 - -8606703 - 1**151-0'),(1394,'5 750 - -522795045 - 1**1182-0'),(1395,'5 750 - -8720703 - 1**152-0'),(1396,'5 750 - -523680966 - 1**1183-0'),(1397,'5 750 - -8835453 - 1**153-0'),(1398,'5 750 - -524567637 - 1**1184-0'),(1399,'5 750 - -8950953 - 1**154-0'),(1400,'5 750 - -525455058 - 1**1185-0'),(1401,'5 750 - -9067203 - 1**155-0'),(1402,'5 750 - -526343229 - 1**1186-0'),(1403,'5 750 - -9184203 - 1**156-0'),(1404,'5 750 - -527232150 - 1**1187-0'),(1405,'5 750 - -9301953 - 1**157-0'),(1406,'5 750 - -528121821 - 1**1188-0'),(1407,'5 750 - -9420453 - 1**158-0'),(1408,'5 750 - -529012242 - 1**1189-0'),(1409,'5 750 - -9539703 - 1**159-0'),(1410,'5 750 - -529903413 - 1**1190-0'),(1411,'5 750 - -9659703 - 1**160-0'),(1412,'5 750 - -530795334 - 1**1191-0'),(1413,'5 750 - -9780453 - 1**161-0'),(1414,'5 750 - -531688005 - 1**1192-0'),(1415,'5 750 - -9901953 - 1**162-0'),(1416,'5 750 - -532581426 - 1**1193-0'),(1417,'5 750 - -10024203 - 1**163-0'),(1418,'5 750 - -533475597 - 1**1194-0'),(1419,'5 750 - -10147203 - 1**164-0'),(1420,'5 750 - -534370518 - 1**1195-0'),(1421,'5 750 - -10270953 - 1**165-0'),(1422,'5 750 - -535266189 - 1**1196-0'),(1423,'5 750 - -10395453 - 1**166-0'),(1424,'5 750 - -536162610 - 1**1197-0'),(1425,'5 750 - -10520703 - 1**167-0'),(1426,'5 750 - -537059781 - 1**1198-0'),(1427,'5 750 - -10646703 - 1**168-0'),(1428,'5 750 - -537957702 - 1**1199-0'),(1429,'5 750 - -10773453 - 1**169-0'),(1430,'5 750 - -538856373 - 1**1200-0'),(1431,'5 750 - -10900953 - 1**170-0'),(1432,'5 750 - -539755794 - 1**1201-0'),(1433,'5 750 - -11029203 - 1**171-0'),(1434,'5 750 - -540655965 - 1**1202-0'),(1435,'5 750 - -11158203 - 1**172-0'),(1436,'5 750 - -541556886 - 1**1203-0'),(1437,'5 750 - -11287953 - 1**173-0'),(1438,'5 750 - -542458557 - 1**1204-0'),(1439,'5 750 - -11418453 - 1**174-0'),(1440,'5 750 - -543360978 - 1**1205-0'),(1441,'5 750 - -11549703 - 1**175-0'),(1442,'5 750 - -544264149 - 1**1206-0'),(1443,'5 750 - -11681703 - 1**176-0'),(1444,'5 750 - -545168070 - 1**1207-0'),(1445,'5 750 - -11814453 - 1**177-0'),(1446,'5 750 - -546072741 - 1**1208-0'),(1447,'5 750 - -11947953 - 1**178-0'),(1448,'5 750 - -546978162 - 1**1209-0'),(1449,'5 750 - -12082203 - 1**179-0'),(1450,'5 750 - -547884333 - 1**1210-0'),(1451,'5 750 - -12217203 - 1**180-0'),(1452,'5 750 - -548791254 - 1**1211-0'),(1453,'5 750 - -12352953 - 1**181-0'),(1454,'5 750 - -549698925 - 1**1212-0'),(1455,'5 750 - -12489453 - 1**182-0'),(1456,'5 750 - -550607346 - 1**1213-0'),(1457,'5 750 - -12626703 - 1**183-0'),(1458,'5 750 - -551516517 - 1**1214-0'),(1459,'5 750 - -12764703 - 1**184-0'),(1460,'5 750 - -552426438 - 1**1215-0'),(1461,'5 750 - -12903453 - 1**185-0'),(1462,'5 750 - -553337109 - 1**1216-0'),(1463,'5 750 - -13042953 - 1**186-0'),(1464,'5 750 - -554248530 - 1**1217-0'),(1465,'5 750 - -13183203 - 1**187-0'),(1466,'5 750 - -555160701 - 1**1218-0'),(1467,'5 750 - -13324203 - 1**188-0'),(1468,'5 750 - -556073622 - 1**1219-0'),(1469,'5 750 - -13465953 - 1**189-0'),(1470,'5 750 - -556987293 - 1**1220-0'),(1471,'5 750 - -13608453 - 1**190-0'),(1472,'5 750 - -557901714 - 1**1221-0'),(1473,'5 750 - -13751703 - 1**191-0'),(1474,'5 750 - -558816885 - 1**1222-0'),(1475,'5 750 - -13895703 - 1**192-0'),(1476,'5 750 - -559732806 - 1**1223-0'),(1477,'5 750 - -14040453 - 1**193-0'),(1478,'5 750 - -560649477 - 1**1224-0'),(1479,'5 750 - -14185953 - 1**194-0'),(1480,'5 750 - -561566898 - 1**1225-0'),(1481,'5 750 - -14332203 - 1**195-0'),(1482,'5 750 - -562485069 - 1**1226-0'),(1483,'5 750 - -14479203 - 1**196-0'),(1484,'5 750 - -563403990 - 1**1227-0'),(1485,'5 750 - -14626953 - 1**197-0'),(1486,'5 750 - -564323661 - 1**1228-0'),(1487,'5 750 - -14775453 - 1**198-0'),(1488,'5 750 - -565244082 - 1**1229-0'),(1489,'5 750 - -14924703 - 1**199-0'),(1490,'5 750 - -566165253 - 1**1230-0'),(1491,'5 750 - -15074703 - 1**200-0'),(1492,'5 750 - -567087174 - 1**1231-0'),(1493,'5 750 - -15225453 - 1**201-0'),(1494,'5 750 - -568009845 - 1**1232-0'),(1495,'5 750 - -15376953 - 1**202-0'),(1496,'5 750 - -568933266 - 1**1233-0'),(1497,'5 750 - -15529203 - 1**203-0'),(1498,'5 750 - -569857437 - 1**1234-0'),(1499,'5 750 - -15682203 - 1**204-0'),(1500,'5 750 - -570782358 - 1**1235-0'),(1501,'5 750 - -15835953 - 1**205-0'),(1502,'5 750 - -571708029 - 1**1236-0'),(1503,'5 750 - -15990453 - 1**206-0'),(1504,'5 750 - -572634450 - 1**1237-0'),(1505,'5 750 - -16145703 - 1**207-0'),(1506,'5 750 - -573561621 - 1**1238-0'),(1507,'5 750 - -16301703 - 1**208-0'),(1508,'5 750 - -574489542 - 1**1239-0'),(1509,'5 750 - -16458453 - 1**209-0'),(1510,'5 750 - -575418213 - 1**1240-0'),(1511,'5 750 - -16615953 - 1**210-0'),(1512,'5 750 - -576347634 - 1**1241-0'),(1513,'5 750 - -16774203 - 1**211-0'),(1514,'5 750 - -577277805 - 1**1242-0'),(1515,'5 750 - -16933203 - 1**212-0'),(1516,'5 750 - -578208726 - 1**1243-0'),(1517,'5 750 - -17092953 - 1**213-0'),(1518,'5 750 - -579140397 - 1**1244-0'),(1519,'5 750 - -17253453 - 1**214-0'),(1520,'5 750 - -580072818 - 1**1245-0'),(1521,'5 750 - -17414703 - 1**215-0'),(1522,'5 750 - -581005989 - 1**1246-0'),(1523,'5 750 - -17576703 - 1**216-0'),(1524,'5 750 - -581939910 - 1**1247-0'),(1525,'5 750 - -17739453 - 1**217-0'),(1526,'5 750 - -582874581 - 1**1248-0'),(1527,'5 750 - -17902953 - 1**218-0'),(1528,'5 750 - -583810002 - 1**1249-0'),(1529,'5 750 - -18067203 - 1**219-0'),(1530,'5 750 - -584746173 - 1**1250-0'),(1531,'5 750 - -585683094 - 1**1251-0'),(1532,'5 750 - -18232203 - 1**220-0'),(1533,'5 750 - -586620765 - 1**1252-0'),(1534,'5 750 - -18397953 - 1**221-0'),(1535,'5 750 - -587559186 - 1**1253-0'),(1536,'5 750 - -18564453 - 1**222-0'),(1537,'5 750 - -588498357 - 1**1254-0'),(1538,'5 750 - -18731703 - 1**223-0'),(1539,'5 750 - -589438278 - 1**1255-0'),(1540,'5 750 - -18899703 - 1**224-0'),(1541,'5 750 - -590378949 - 1**1256-0'),(1542,'5 750 - -19068453 - 1**225-0'),(1543,'5 750 - -591320370 - 1**1257-0'),(1544,'5 750 - -19237953 - 1**226-0'),(1545,'5 750 - -592262541 - 1**1258-0'),(1546,'5 750 - -19408203 - 1**227-0'),(1547,'5 750 - -19579203 - 1**228-0'),(1548,'5 750 - -593205462 - 1**1259-0'),(1549,'5 750 - -594149133 - 1**1260-0'),(1550,'5 750 - -19750953 - 1**229-0'),(1551,'5 750 - -595093554 - 1**1261-0'),(1552,'5 750 - -19923453 - 1**230-0'),(1553,'5 750 - -596038725 - 1**1262-0'),(1554,'5 750 - -20096703 - 1**231-0'),(1555,'5 750 - -596984646 - 1**1263-0'),(1556,'5 750 - -20270703 - 1**232-0'),(1557,'5 750 - -597931317 - 1**1264-0'),(1558,'5 750 - -20445453 - 1**233-0'),(1559,'5 750 - -598878738 - 1**1265-0'),(1560,'5 750 - -20620953 - 1**234-0'),(1561,'5 750 - -599826909 - 1**1266-0'),(1562,'5 750 - -20797203 - 1**235-0'),(1563,'5 750 - -600775830 - 1**1267-0'),(1564,'5 750 - -20974203 - 1**236-0'),(1565,'5 750 - -601725501 - 1**1268-0'),(1566,'5 750 - -21151953 - 1**237-0'),(1567,'5 750 - -602675922 - 1**1269-0'),(1568,'5 750 - -21330453 - 1**238-0'),(1569,'5 750 - -603627093 - 1**1270-0'),(1570,'5 750 - -21509703 - 1**239-0'),(1571,'5 750 - -604579014 - 1**1271-0'),(1572,'5 750 - -21689703 - 1**240-0'),(1573,'5 750 - -605531685 - 1**1272-0'),(1574,'5 750 - -21870453 - 1**241-0'),(1575,'5 750 - -606485106 - 1**1273-0'),(1576,'5 750 - -22051953 - 1**242-0'),(1577,'5 750 - -607439277 - 1**1274-0'),(1578,'5 750 - -22234203 - 1**243-0'),(1579,'5 750 - -608394198 - 1**1275-0'),(1580,'5 750 - -22417203 - 1**244-0'),(1581,'5 750 - -609349869 - 1**1276-0'),(1582,'5 750 - -22600953 - 1**245-0'),(1583,'5 750 - -610306290 - 1**1277-0'),(1584,'5 750 - -22785453 - 1**246-0'),(1585,'5 750 - -611263461 - 1**1278-0'),(1586,'5 750 - -22970703 - 1**247-0'),(1587,'5 750 - -612221382 - 1**1279-0'),(1588,'5 750 - -23156703 - 1**248-0'),(1589,'5 750 - -613180053 - 1**1280-0'),(1590,'5 750 - -23343453 - 1**249-0'),(1591,'5 750 - -614139474 - 1**1281-0'),(1592,'5 750 - -23530953 - 1**250-0'),(1593,'5 750 - -615099645 - 1**1282-0'),(1594,'5 750 - -23719203 - 1**251-0'),(1595,'5 750 - -616060566 - 1**1283-0'),(1596,'5 750 - -23908203 - 1**252-0'),(1597,'5 750 - -617022237 - 1**1284-0'),(1598,'5 750 - -24097953 - 1**253-0'),(1599,'5 750 - -617984658 - 1**1285-0'),(1600,'5 750 - -24288453 - 1**254-0'),(1601,'5 750 - -618947829 - 1**1286-0'),(1602,'5 750 - -24479703 - 1**255-0'),(1603,'5 750 - -619911750 - 1**1287-0'),(1604,'5 750 - -24671703 - 1**256-0'),(1605,'5 750 - -620876421 - 1**1288-0'),(1606,'5 750 - -24864453 - 1**257-0'),(1607,'5 750 - -621841842 - 1**1289-0'),(1608,'5 750 - -25057953 - 1**258-0'),(1609,'5 750 - -622808013 - 1**1290-0'),(1610,'5 750 - -25252203 - 1**259-0'),(1611,'5 750 - -623774934 - 1**1291-0'),(1612,'5 750 - -25447203 - 1**260-0'),(1613,'5 750 - -624742605 - 1**1292-0'),(1614,'5 750 - -25642953 - 1**261-0'),(1615,'5 750 - -625711026 - 1**1293-0'),(1616,'5 750 - -25839453 - 1**262-0'),(1617,'5 750 - -626680197 - 1**1294-0'),(1618,'5 750 - -26036703 - 1**263-0'),(1619,'5 750 - -627650118 - 1**1295-0'),(1620,'5 750 - -26234703 - 1**264-0'),(1621,'5 750 - -628620789 - 1**1296-0'),(1622,'5 750 - -26433453 - 1**265-0'),(1623,'5 750 - -629592210 - 1**1297-0'),(1624,'5 750 - -26632953 - 1**266-0'),(1625,'5 750 - -630564381 - 1**1298-0'),(1626,'5 750 - -26833203 - 1**267-0'),(1627,'5 750 - -631537302 - 1**1299-0'),(1628,'5 750 - -27034203 - 1**268-0'),(1629,'5 750 - -632510973 - 1**1300-0'),(1630,'5 750 - -27235953 - 1**269-0'),(1631,'5 750 - -633485394 - 1**1301-0'),(1632,'5 750 - -27438453 - 1**270-0'),(1633,'5 750 - -634460565 - 1**1302-0'),(1634,'5 750 - -27641703 - 1**271-0'),(1635,'5 750 - -635436486 - 1**1303-0'),(1636,'5 750 - -27845703 - 1**272-0'),(1637,'5 750 - -636413157 - 1**1304-0'),(1638,'5 750 - -28050453 - 1**273-0'),(1639,'5 750 - -637390578 - 1**1305-0'),(1640,'5 750 - -28255953 - 1**274-0'),(1641,'5 750 - -638368749 - 1**1306-0'),(1642,'5 750 - -28462203 - 1**275-0'),(1643,'5 750 - -639347670 - 1**1307-0'),(1644,'5 750 - -28669203 - 1**276-0'),(1645,'5 750 - -640327341 - 1**1308-0'),(1646,'5 750 - -28876953 - 1**277-0'),(1647,'5 750 - -641307762 - 1**1309-0'),(1648,'5 750 - -29085453 - 1**278-0'),(1649,'5 750 - -642288933 - 1**1310-0'),(1650,'5 750 - -29294703 - 1**279-0'),(1651,'5 750 - -643270854 - 1**1311-0'),(1652,'5 750 - -29504703 - 1**280-0'),(1653,'5 750 - -644253525 - 1**1312-0'),(1654,'5 750 - -29715453 - 1**281-0'),(1655,'5 750 - -645236946 - 1**1313-0'),(1656,'5 750 - -29926953 - 1**282-0'),(1657,'5 750 - -646221117 - 1**1314-0'),(1658,'5 750 - -30139203 - 1**283-0'),(1659,'5 750 - -647206038 - 1**1315-0'),(1660,'5 750 - -30352203 - 1**284-0'),(1661,'5 750 - -648191709 - 1**1316-0'),(1662,'5 750 - -30565953 - 1**285-0'),(1663,'5 750 - -649178130 - 1**1317-0'),(1664,'5 750 - -30780453 - 1**286-0'),(1665,'5 750 - -650165301 - 1**1318-0'),(1666,'5 750 - -30995703 - 1**287-0'),(1667,'5 750 - -651153222 - 1**1319-0'),(1668,'5 750 - -31211703 - 1**288-0'),(1669,'5 750 - -652141893 - 1**1320-0'),(1670,'5 750 - -31428453 - 1**289-0'),(1671,'5 750 - -653131314 - 1**1321-0'),(1672,'5 750 - -31645953 - 1**290-0'),(1673,'5 750 - -654121485 - 1**1322-0'),(1674,'5 750 - -31864203 - 1**291-0'),(1675,'5 750 - -655112406 - 1**1323-0'),(1676,'5 750 - -32083203 - 1**292-0'),(1677,'5 750 - -656104077 - 1**1324-0'),(1678,'5 750 - -32302953 - 1**293-0'),(1679,'5 750 - -657096498 - 1**1325-0'),(1680,'5 750 - -32523453 - 1**294-0'),(1681,'5 750 - -658089669 - 1**1326-0'),(1682,'5 750 - -32744703 - 1**295-0'),(1683,'5 750 - -659083590 - 1**1327-0'),(1684,'5 750 - -32966703 - 1**296-0'),(1685,'5 750 - -660078261 - 1**1328-0'),(1686,'5 750 - -33189453 - 1**297-0'),(1687,'5 750 - -661073682 - 1**1329-0'),(1688,'5 750 - -33412953 - 1**298-0'),(1689,'5 750 - -662069853 - 1**1330-0'),(1690,'5 750 - -33637203 - 1**299-0'),(1691,'5 750 - -663066774 - 1**1331-0'),(1692,'5 750 - -33862203 - 1**300-0'),(1693,'5 750 - -664064445 - 1**1332-0'),(1694,'5 750 - -34087953 - 1**301-0'),(1695,'5 750 - -665062866 - 1**1333-0'),(1696,'5 750 - -34314453 - 1**302-0'),(1697,'5 750 - -666062037 - 1**1334-0'),(1698,'5 750 - -34541703 - 1**303-0'),(1699,'5 750 - -667061958 - 1**1335-0'),(1700,'5 750 - -34769703 - 1**304-0'),(1701,'5 750 - -668062629 - 1**1336-0'),(1702,'5 750 - -34998453 - 1**305-0'),(1703,'5 750 - -669064050 - 1**1337-0'),(1704,'5 750 - -35227953 - 1**306-0'),(1705,'5 750 - -670066221 - 1**1338-0'),(1706,'5 750 - -35458203 - 1**307-0'),(1707,'5 750 - -671069142 - 1**1339-0'),(1708,'5 750 - -35689203 - 1**308-0'),(1709,'5 750 - -672072813 - 1**1340-0'),(1710,'5 750 - -673077234 - 1**1341-0'),(1711,'5 750 - -35920953 - 1**309-0'),(1712,'5 750 - -674082405 - 1**1342-0'),(1713,'5 750 - -36153453 - 1**310-0'),(1714,'5 750 - -675088326 - 1**1343-0'),(1715,'5 750 - -36386703 - 1**311-0'),(1716,'5 750 - -676094997 - 1**1344-0'),(1717,'5 750 - -36620703 - 1**312-0'),(1718,'5 750 - -677102418 - 1**1345-0'),(1719,'5 750 - -36855453 - 1**313-0'),(1720,'5 750 - -678110589 - 1**1346-0'),(1721,'5 750 - -37090953 - 1**314-0'),(1722,'5 750 - -679119510 - 1**1347-0'),(1723,'5 750 - -37327203 - 1**315-0'),(1724,'5 750 - -680129181 - 1**1348-0'),(1725,'5 750 - -37564203 - 1**316-0'),(1726,'5 750 - -681139602 - 1**1349-0'),(1727,'5 750 - -37801953 - 1**317-0'),(1728,'5 750 - -682150773 - 1**1350-0'),(1729,'5 750 - -38040453 - 1**318-0'),(1730,'5 750 - -683162694 - 1**1351-0'),(1731,'5 750 - -38279703 - 1**319-0'),(1732,'5 750 - -684175365 - 1**1352-0'),(1733,'5 750 - -38519703 - 1**320-0'),(1734,'5 750 - -685188786 - 1**1353-0'),(1735,'5 750 - -38760453 - 1**321-0'),(1736,'5 750 - -686202957 - 1**1354-0'),(1737,'5 750 - -39001953 - 1**322-0'),(1738,'5 750 - -687217878 - 1**1355-0'),(1739,'5 750 - -39244203 - 1**323-0'),(1740,'5 750 - -688233549 - 1**1356-0'),(1741,'5 750 - -39487203 - 1**324-0'),(1742,'5 750 - -689249970 - 1**1357-0'),(1743,'5 750 - -39730953 - 1**325-0'),(1744,'5 750 - -690267141 - 1**1358-0'),(1745,'5 750 - -39975453 - 1**326-0'),(1746,'5 750 - -691285062 - 1**1359-0'),(1747,'5 750 - -40220703 - 1**327-0'),(1748,'5 750 - -692303733 - 1**1360-0'),(1749,'5 750 - -40466703 - 1**328-0'),(1750,'5 750 - -693323154 - 1**1361-0'),(1751,'5 750 - -40713453 - 1**329-0'),(1752,'5 750 - -694343325 - 1**1362-0'),(1753,'5 750 - -40960953 - 1**330-0'),(1754,'5 750 - -695364246 - 1**1363-0'),(1755,'5 750 - -41209203 - 1**331-0'),(1756,'5 750 - -696385917 - 1**1364-0'),(1757,'5 750 - -41458203 - 1**332-0'),(1758,'5 750 - -697408338 - 1**1365-0'),(1759,'5 750 - -41707953 - 1**333-0'),(1760,'5 750 - -698431509 - 1**1366-0'),(1761,'5 750 - -41958453 - 1**334-0'),(1762,'5 750 - -699455430 - 1**1367-0'),(1763,'5 750 - -42209703 - 1**335-0'),(1764,'5 750 - -700480101 - 1**1368-0'),(1765,'5 750 - -42461703 - 1**336-0'),(1766,'5 750 - -701505522 - 1**1369-0'),(1767,'5 750 - -42714453 - 1**337-0'),(1768,'5 750 - -702531693 - 1**1370-0'),(1769,'5 750 - -42967953 - 1**338-0'),(1770,'5 750 - -703558614 - 1**1371-0'),(1771,'5 750 - -43222203 - 1**339-0'),(1772,'5 750 - -704586285 - 1**1372-0'),(1773,'5 750 - -43477203 - 1**340-0'),(1774,'5 750 - -705614706 - 1**1373-0'),(1775,'5 750 - -43732953 - 1**341-0'),(1776,'5 750 - -706643877 - 1**1374-0'),(1777,'5 750 - -43989453 - 1**342-0'),(1778,'5 750 - -707673798 - 1**1375-0'),(1779,'5 750 - -44246703 - 1**343-0'),(1780,'5 750 - -708704469 - 1**1376-0'),(1781,'5 750 - -44504703 - 1**344-0'),(1782,'5 750 - -709735890 - 1**1377-0'),(1783,'5 750 - -44763453 - 1**345-0'),(1784,'5 750 - -710768061 - 1**1378-0'),(1785,'5 750 - -45022953 - 1**346-0'),(1786,'5 750 - -711800982 - 1**1379-0'),(1787,'5 750 - -45283203 - 1**347-0'),(1788,'5 750 - -712834653 - 1**1380-0'),(1789,'5 750 - -45544203 - 1**348-0'),(1790,'5 750 - -713869074 - 1**1381-0'),(1791,'5 750 - -45805953 - 1**349-0'),(1792,'5 750 - -714904245 - 1**1382-0'),(1793,'5 750 - -46068453 - 1**350-0'),(1794,'5 750 - -715940166 - 1**1383-0'),(1795,'5 750 - -46331703 - 1**351-0'),(1796,'5 750 - -716976837 - 1**1384-0'),(1797,'5 750 - -46595703 - 1**352-0'),(1798,'5 750 - -718014258 - 1**1385-0'),(1799,'5 750 - -46860453 - 1**353-0'),(1800,'5 750 - -719052429 - 1**1386-0'),(1801,'5 750 - -720091350 - 1**1387-0'),(1802,'5 750 - -47125953 - 1**354-0'),(1803,'5 750 - -721131021 - 1**1388-0'),(1804,'5 750 - -47392203 - 1**355-0'),(1805,'5 750 - -722171442 - 1**1389-0'),(1806,'5 750 - -47659203 - 1**356-0'),(1807,'5 750 - -723212613 - 1**1390-0'),(1808,'5 750 - -47926953 - 1**357-0'),(1809,'5 750 - -724254534 - 1**1391-0'),(1810,'5 750 - -48195453 - 1**358-0'),(1811,'5 750 - -725297205 - 1**1392-0'),(1812,'5 750 - -48464703 - 1**359-0'),(1813,'5 750 - -726340626 - 1**1393-0'),(1814,'5 750 - -48734703 - 1**360-0'),(1815,'5 750 - -727384797 - 1**1394-0'),(1816,'5 750 - -49005453 - 1**361-0'),(1817,'5 750 - -728429718 - 1**1395-0'),(1818,'5 750 - -49276953 - 1**362-0'),(1819,'5 750 - -729475389 - 1**1396-0'),(1820,'5 750 - -49549203 - 1**363-0'),(1821,'5 750 - -730521810 - 1**1397-0'),(1822,'5 750 - -49822203 - 1**364-0'),(1823,'5 750 - -731568981 - 1**1398-0'),(1824,'5 750 - -50095953 - 1**365-0'),(1825,'5 750 - -732616902 - 1**1399-0'),(1826,'5 750 - -50370453 - 1**366-0'),(1827,'5 750 - -733665573 - 1**1400-0'),(1828,'5 750 - -50645703 - 1**367-0'),(1829,'5 750 - -734714994 - 1**1401-0'),(1830,'5 750 - -50921703 - 1**368-0'),(1831,'5 750 - -735765165 - 1**1402-0'),(1832,'5 750 - -51198453 - 1**369-0'),(1833,'5 750 - -736816086 - 1**1403-0'),(1834,'5 750 - -51475953 - 1**370-0'),(1835,'5 750 - -737867757 - 1**1404-0'),(1836,'5 750 - -51754203 - 1**371-0'),(1837,'5 750 - -738920178 - 1**1405-0'),(1838,'5 750 - -52033203 - 1**372-0'),(1839,'5 750 - -739973349 - 1**1406-0'),(1840,'5 750 - -52312953 - 1**373-0'),(1841,'5 750 - -741027270 - 1**1407-0'),(1842,'5 750 - -52593453 - 1**374-0'),(1843,'5 750 - -742081941 - 1**1408-0'),(1844,'5 750 - -52874703 - 1**375-0'),(1845,'5 750 - -743137362 - 1**1409-0'),(1846,'5 750 - -53156703 - 1**376-0'),(1847,'5 750 - -744193533 - 1**1410-0'),(1848,'5 750 - -53439453 - 1**377-0'),(1849,'5 750 - -745250454 - 1**1411-0'),(1850,'5 750 - -53722953 - 1**378-0'),(1851,'5 750 - -746308125 - 1**1412-0'),(1852,'5 750 - -54007203 - 1**379-0'),(1853,'5 750 - -747366546 - 1**1413-0'),(1854,'5 750 - -54292203 - 1**380-0'),(1855,'5 750 - -748425717 - 1**1414-0'),(1856,'5 750 - -54577953 - 1**381-0'),(1857,'5 750 - -749485638 - 1**1415-0'),(1858,'5 750 - -54864453 - 1**382-0'),(1859,'5 750 - -750546309 - 1**1416-0'),(1860,'5 750 - -55151703 - 1**383-0'),(1861,'5 750 - -751607730 - 1**1417-0'),(1862,'5 750 - -55439703 - 1**384-0'),(1863,'5 750 - -752669901 - 1**1418-0'),(1864,'5 750 - -55728453 - 1**385-0'),(1865,'5 750 - -753732822 - 1**1419-0'),(1866,'5 750 - -754796493 - 1**1420-0'),(1867,'5 750 - -56017953 - 1**386-0'),(1868,'5 750 - -755860914 - 1**1421-0'),(1869,'5 750 - -56308203 - 1**387-0'),(1870,'5 750 - -756926085 - 1**1422-0'),(1871,'5 750 - -56599203 - 1**388-0'),(1872,'5 750 - -757992006 - 1**1423-0'),(1873,'5 750 - -56890953 - 1**389-0'),(1874,'5 750 - -759058677 - 1**1424-0'),(1875,'5 750 - -57183453 - 1**390-0'),(1876,'5 750 - -760126098 - 1**1425-0'),(1877,'5 750 - -57476703 - 1**391-0'),(1878,'5 750 - -761194269 - 1**1426-0'),(1879,'5 750 - -57770703 - 1**392-0'),(1880,'5 750 - -762263190 - 1**1427-0'),(1881,'5 750 - -58065453 - 1**393-0'),(1882,'5 750 - -763332861 - 1**1428-0'),(1883,'5 750 - -58360953 - 1**394-0'),(1884,'5 750 - -764403282 - 1**1429-0'),(1885,'5 750 - -58657203 - 1**395-0'),(1886,'5 750 - -765474453 - 1**1430-0'),(1887,'5 750 - -58954203 - 1**396-0'),(1888,'5 750 - -59251953 - 1**397-0'),(1889,'5 750 - -766546374 - 1**1431-0'),(1890,'5 750 - -59550453 - 1**398-0'),(1891,'5 750 - -767619045 - 1**1432-0'),(1892,'5 750 - -59849703 - 1**399-0'),(1893,'5 750 - -768692466 - 1**1433-0'),(1894,'5 750 - -60149703 - 1**400-0'),(1895,'5 750 - -769766637 - 1**1434-0'),(1896,'5 750 - -770841558 - 1**1435-0'),(1897,'5 750 - -60450453 - 1**401-0'),(1898,'5 750 - -771917229 - 1**1436-0'),(1899,'5 750 - -60751953 - 1**402-0'),(1900,'5 750 - 237.60000000000002 - 1**0-1'),(1901,'5 750 - -772993650 - 1**1437-0'),(1902,'5 750 - -61054203 - 1**403-0'),(1903,'5 750 - 297 - 1**0-0'),(1904,'5 750 - -774070821 - 1**1438-0'),(1905,'5 750 - -61357203 - 1**404-0'),(1906,'5 750 - -453 - 1**1-0'),(1907,'5 750 - -775148742 - 1**1439-0'),(1908,'5 750 - -61660953 - 1**405-0'),(1909,'5 750 - -1953 - 1**2-0'),(1910,'5 750 - -776227413 - 1**1440-0'),(1911,'5 750 - -61965453 - 1**406-0'),(1912,'5 750 - -4203 - 1**3-0'),(1913,'5 750 - -777306834 - 1**1441-0'),(1914,'5 750 - -62270703 - 1**407-0'),(1915,'5 750 - -7203 - 1**4-0'),(1916,'5 750 - -778387005 - 1**1442-0'),(1917,'5 750 - -62576703 - 1**408-0'),(1918,'5 750 - -10953 - 1**5-0'),(1919,'5 750 - -779467926 - 1**1443-0'),(1920,'5 750 - -62883453 - 1**409-0'),(1921,'5 750 - -15453 - 1**6-0'),(1922,'5 750 - -780549597 - 1**1444-0'),(1923,'5 750 - -63190953 - 1**410-0'),(1924,'5 750 - -781632018 - 1**1445-0'),(1925,'5 750 - -63499203 - 1**411-0'),(1926,'5 750 - -20703 - 1**7-0'),(1927,'5 750 - -782715189 - 1**1446-0'),(1928,'5 750 - -63808203 - 1**412-0'),(1929,'5 750 - -26703 - 1**8-0'),(1930,'5 750 - -64117953 - 1**413-0'),(1931,'5 750 - -783799110 - 1**1447-0'),(1932,'5 750 - -33453 - 1**9-0'),(1933,'5 750 - -64428453 - 1**414-0'),(1934,'5 750 - -784883781 - 1**1448-0'),(1935,'5 750 - -40953 - 1**10-0'),(1936,'5 750 - -64739703 - 1**415-0'),(1937,'5 750 - -785969202 - 1**1449-0'),(1938,'5 750 - -49203 - 1**11-0'),(1939,'5 750 - -65051703 - 1**416-0'),(1940,'5 750 - -787055373 - 1**1450-0'),(1941,'5 750 - -58203 - 1**12-0'),(1942,'5 750 - -65364453 - 1**417-0'),(1943,'5 750 - -788142294 - 1**1451-0'),(1944,'5 750 - -67953 - 1**13-0'),(1945,'5 750 - -65677953 - 1**418-0'),(1946,'5 750 - -789229965 - 1**1452-0'),(1947,'5 750 - -78453 - 1**14-0'),(1948,'5 750 - -65992203 - 1**419-0'),(1949,'5 750 - -790318386 - 1**1453-0'),(1950,'5 750 - -89703 - 1**15-0'),(1951,'5 750 - -66307203 - 1**420-0'),(1952,'5 750 - -791407557 - 1**1454-0'),(1953,'5 750 - -101703 - 1**16-0'),(1954,'5 750 - -66622953 - 1**421-0'),(1955,'5 750 - -792497478 - 1**1455-0'),(1956,'5 750 - -114453 - 1**17-0'),(1957,'5 750 - -66939453 - 1**422-0'),(1958,'5 750 - -793588149 - 1**1456-0'),(1959,'5 750 - -127953 - 1**18-0'),(1960,'5 750 - -67256703 - 1**423-0'),(1961,'5 750 - -794679570 - 1**1457-0'),(1962,'5 750 - -142203 - 1**19-0'),(1963,'5 750 - -67574703 - 1**424-0'),(1964,'5 750 - -157203 - 1**20-0'),(1965,'5 750 - -795771741 - 1**1458-0'),(1966,'5 750 - -67893453 - 1**425-0'),(1967,'5 750 - -172953 - 1**21-0'),(1968,'5 750 - -796864662 - 1**1459-0'),(1969,'5 750 - -68212953 - 1**426-0'),(1970,'5 750 - -189453 - 1**22-0'),(1971,'5 750 - -797958333 - 1**1460-0'),(1972,'5 750 - -68533203 - 1**427-0'),(1973,'5 750 - -206703 - 1**23-0'),(1974,'5 750 - -799052754 - 1**1461-0'),(1975,'5 750 - -68854203 - 1**428-0'),(1976,'5 750 - -224703 - 1**24-0'),(1977,'5 750 - -800147925 - 1**1462-0'),(1978,'5 750 - -69175953 - 1**429-0'),(1979,'5 750 - -243453 - 1**25-0'),(1980,'5 750 - -801243846 - 1**1463-0'),(1981,'5 750 - -69498453 - 1**430-0'),(1982,'5 750 - -262953 - 1**26-0'),(1983,'5 750 - -802340517 - 1**1464-0'),(1984,'5 750 - -69821703 - 1**431-0'),(1985,'5 750 - -70145703 - 1**432-0'),(1986,'5 750 - -283203 - 1**27-0'),(1987,'5 750 - -803437938 - 1**1465-0'),(1988,'5 750 - -304203 - 1**28-0'),(1989,'5 750 - -804536109 - 1**1466-0'),(1990,'5 750 - -70470453 - 1**433-0'),(1991,'5 750 - -325953 - 1**29-0'),(1992,'5 750 - -805635030 - 1**1467-0'),(1993,'5 750 - -70795953 - 1**434-0'),(1994,'5 750 - -348453 - 1**30-0'),(1995,'5 750 - -806734701 - 1**1468-0'),(1996,'5 750 - -71122203 - 1**435-0'),(1997,'5 750 - -371703 - 1**31-0'),(1998,'5 750 - -807835122 - 1**1469-0'),(1999,'5 750 - -71449203 - 1**436-0'),(2000,'5 750 - -395703 - 1**32-0'),(2001,'5 750 - -808936293 - 1**1470-0'),(2002,'5 750 - -71776953 - 1**437-0'),(2003,'5 750 - -420453 - 1**33-0'),(2004,'5 750 - -810038214 - 1**1471-0'),(2005,'5 750 - -72105453 - 1**438-0'),(2006,'5 750 - -445953 - 1**34-0'),(2007,'5 750 - -811140885 - 1**1472-0'),(2008,'5 750 - -72434703 - 1**439-0'),(2009,'5 750 - -472203 - 1**35-0'),(2010,'5 750 - -812244306 - 1**1473-0'),(2011,'5 750 - -72764703 - 1**440-0'),(2012,'5 750 - -499203 - 1**36-0'),(2013,'5 750 - -813348477 - 1**1474-0'),(2014,'5 750 - -73095453 - 1**441-0'),(2015,'5 750 - -526953 - 1**37-0'),(2016,'5 750 - -814453398 - 1**1475-0'),(2017,'5 750 - -73426953 - 1**442-0'),(2018,'5 750 - -555453 - 1**38-0'),(2019,'5 750 - -815559069 - 1**1476-0'),(2020,'5 750 - -73759203 - 1**443-0'),(2021,'5 750 - -584703 - 1**39-0'),(2022,'5 750 - -816665490 - 1**1477-0'),(2023,'5 750 - -74092203 - 1**444-0'),(2024,'5 750 - -614703 - 1**40-0'),(2025,'5 750 - -817772661 - 1**1478-0'),(2026,'5 750 - -74425953 - 1**445-0'),(2027,'5 750 - -645453 - 1**41-0'),(2028,'5 750 - -818880582 - 1**1479-0'),(2029,'5 750 - -74760453 - 1**446-0'),(2030,'5 750 - -676953 - 1**42-0'),(2031,'5 750 - -819989253 - 1**1480-0'),(2032,'5 750 - -75095703 - 1**447-0'),(2033,'5 750 - -709203 - 1**43-0'),(2034,'5 750 - -821098674 - 1**1481-0'),(2035,'5 750 - -75431703 - 1**448-0'),(2036,'5 750 - -742203 - 1**44-0'),(2037,'5 750 - -822208845 - 1**1482-0'),(2038,'5 750 - -75768453 - 1**449-0'),(2039,'5 750 - -775953 - 1**45-0'),(2040,'5 750 - -823319766 - 1**1483-0'),(2041,'5 750 - -76105953 - 1**450-0'),(2042,'5 750 - -810453 - 1**46-0'),(2043,'5 750 - -824431437 - 1**1484-0'),(2044,'5 750 - -76444203 - 1**451-0'),(2045,'5 750 - -845703 - 1**47-0'),(2046,'5 750 - -825543858 - 1**1485-0'),(2047,'5 750 - -76783203 - 1**452-0'),(2048,'5 750 - -881703 - 1**48-0'),(2049,'5 750 - -826657029 - 1**1486-0'),(2050,'5 750 - -77122953 - 1**453-0'),(2051,'5 750 - -918453 - 1**49-0'),(2052,'5 750 - -827770950 - 1**1487-0'),(2053,'5 750 - -77463453 - 1**454-0'),(2054,'5 750 - -955953 - 1**50-0'),(2055,'5 750 - -828885621 - 1**1488-0'),(2056,'5 750 - -77804703 - 1**455-0'),(2057,'5 750 - -994203 - 1**51-0'),(2058,'5 750 - -830001042 - 1**1489-0'),(2059,'5 750 - -78146703 - 1**456-0'),(2060,'5 750 - -1033203 - 1**52-0'),(2061,'5 750 - -831117213 - 1**1490-0'),(2062,'5 750 - -78489453 - 1**457-0'),(2063,'5 750 - -832234134 - 1**1491-0'),(2064,'5 750 - -1072953 - 1**53-0'),(2065,'5 750 - -78832953 - 1**458-0'),(2066,'5 750 - -833351805 - 1**1492-0'),(2067,'5 750 - -1113453 - 1**54-0'),(2068,'5 750 - -79177203 - 1**459-0'),(2069,'5 750 - -834470226 - 1**1493-0'),(2070,'5 750 - -1154703 - 1**55-0'),(2071,'5 750 - -79522203 - 1**460-0'),(2072,'5 750 - -835589397 - 1**1494-0'),(2073,'5 750 - -1196703 - 1**56-0'),(2074,'5 750 - -79867953 - 1**461-0'),(2075,'5 750 - -836709318 - 1**1495-0'),(2076,'5 750 - -1239453 - 1**57-0'),(2077,'5 750 - -80214453 - 1**462-0'),(2078,'5 750 - -837829989 - 1**1496-0'),(2079,'5 750 - -1282953 - 1**58-0'),(2080,'5 750 - -80561703 - 1**463-0'),(2081,'5 750 - -838951410 - 1**1497-0'),(2082,'5 750 - -1327203 - 1**59-0'),(2083,'5 750 - -80909703 - 1**464-0'),(2084,'5 750 - -840073581 - 1**1498-0'),(2085,'5 750 - -1372203 - 1**60-0'),(2086,'5 750 - -81258453 - 1**465-0'),(2087,'5 750 - -841196502 - 1**1499-0'),(2088,'5 750 - -1417953 - 1**61-0'),(2089,'5 750 - -81607953 - 1**466-0'),(2090,'5 750 - -842320173 - 1**1500-0'),(2091,'5 750 - -1464453 - 1**62-0'),(2092,'5 750 - -81958203 - 1**467-0'),(2093,'5 750 - -843444594 - 1**1501-0'),(2094,'5 750 - -1511703 - 1**63-0'),(2095,'5 750 - -82309203 - 1**468-0'),(2096,'5 750 - -844569765 - 1**1502-0'),(2097,'5 750 - -1559703 - 1**64-0'),(2098,'5 750 - -82660953 - 1**469-0'),(2099,'5 750 - -845695686 - 1**1503-0'),(2100,'5 750 - -83013453 - 1**470-0'),(2101,'5 750 - -1608453 - 1**65-0'),(2102,'5 750 - -846822357 - 1**1504-0'),(2103,'5 750 - -83366703 - 1**471-0'),(2104,'5 750 - -1657953 - 1**66-0'),(2105,'5 750 - -847949778 - 1**1505-0'),(2106,'5 750 - -83720703 - 1**472-0'),(2107,'5 750 - -1708203 - 1**67-0'),(2108,'5 750 - -849077949 - 1**1506-0'),(2109,'5 750 - -84075453 - 1**473-0'),(2110,'5 750 - -1759203 - 1**68-0'),(2111,'5 750 - -850206870 - 1**1507-0'),(2112,'5 750 - -84430953 - 1**474-0'),(2113,'5 750 - -1810953 - 1**69-0'),(2114,'5 750 - -851336541 - 1**1508-0'),(2115,'5 750 - -84787203 - 1**475-0'),(2116,'5 750 - -1863453 - 1**70-0'),(2117,'5 750 - -852466962 - 1**1509-0'),(2118,'5 750 - -85144203 - 1**476-0'),(2119,'5 750 - -1916703 - 1**71-0'),(2120,'5 750 - -853598133 - 1**1510-0'),(2121,'5 750 - -85501953 - 1**477-0'),(2122,'5 750 - -1970703 - 1**72-0'),(2123,'5 750 - -854730054 - 1**1511-0'),(2124,'5 750 - -85860453 - 1**478-0'),(2125,'5 750 - -2025453 - 1**73-0'),(2126,'5 750 - -855862725 - 1**1512-0'),(2127,'5 750 - -86219703 - 1**479-0'),(2128,'5 750 - -2080953 - 1**74-0'),(2129,'5 750 - -856996146 - 1**1513-0'),(2130,'5 750 - -86579703 - 1**480-0'),(2131,'5 750 - -2137203 - 1**75-0'),(2132,'5 750 - -858130317 - 1**1514-0'),(2133,'5 750 - -86940453 - 1**481-0'),(2134,'5 750 - -2194203 - 1**76-0'),(2135,'5 750 - -859265238 - 1**1515-0'),(2136,'5 750 - -87301953 - 1**482-0'),(2137,'5 750 - -860400909 - 1**1516-0'),(2138,'5 750 - -2251953 - 1**77-0'),(2139,'5 750 - -87664203 - 1**483-0'),(2140,'5 750 - -861537330 - 1**1517-0'),(2141,'5 750 - -2310453 - 1**78-0'),(2142,'5 750 - -88027203 - 1**484-0'),(2143,'5 750 - -862674501 - 1**1518-0'),(2144,'5 750 - -2369703 - 1**79-0'),(2145,'5 750 - -88390953 - 1**485-0'),(2146,'5 750 - -863812422 - 1**1519-0'),(2147,'5 750 - -88755453 - 1**486-0'),(2148,'5 750 - -2429703 - 1**80-0'),(2149,'5 750 - -864951093 - 1**1520-0'),(2150,'5 750 - -89120703 - 1**487-0'),(2151,'5 750 - -2490453 - 1**81-0'),(2152,'5 750 - -866090514 - 1**1521-0'),(2153,'5 750 - -89486703 - 1**488-0'),(2154,'5 750 - -2551953 - 1**82-0'),(2155,'5 750 - -867230685 - 1**1522-0'),(2156,'5 750 - -89853453 - 1**489-0'),(2157,'5 750 - -2614203 - 1**83-0'),(2158,'5 750 - -868371606 - 1**1523-0'),(2159,'5 750 - -90220953 - 1**490-0'),(2160,'5 750 - -2677203 - 1**84-0'),(2161,'5 750 - -869513277 - 1**1524-0'),(2162,'5 750 - -90589203 - 1**491-0'),(2163,'5 750 - -2740953 - 1**85-0'),(2164,'5 750 - -870655698 - 1**1525-0'),(2165,'5 750 - -90958203 - 1**492-0'),(2166,'5 750 - -2805453 - 1**86-0'),(2167,'5 750 - -871798869 - 1**1526-0'),(2168,'5 750 - -91327953 - 1**493-0'),(2169,'5 750 - -2870703 - 1**87-0'),(2170,'5 750 - -91698453 - 1**494-0'),(2171,'5 750 - -872942790 - 1**1527-0'),(2172,'5 750 - -2936703 - 1**88-0'),(2173,'5 750 - -92069703 - 1**495-0'),(2174,'5 750 - -874087461 - 1**1528-0'),(2175,'5 750 - -3003453 - 1**89-0'),(2176,'5 750 - -92441703 - 1**496-0'),(2177,'5 750 - -875232882 - 1**1529-0'),(2178,'5 750 - -3070953 - 1**90-0'),(2179,'5 750 - -92814453 - 1**497-0'),(2180,'5 750 - -876379053 - 1**1530-0'),(2181,'5 750 - -3139203 - 1**91-0'),(2182,'5 750 - -93187953 - 1**498-0'),(2183,'5 750 - -877525974 - 1**1531-0'),(2184,'5 750 - -3208203 - 1**92-0'),(2185,'5 750 - -93562203 - 1**499-0'),(2186,'5 750 - -878673645 - 1**1532-0'),(2187,'5 750 - -3277953 - 1**93-0'),(2188,'5 750 - -93937203 - 1**500-0'),(2189,'5 750 - -879822066 - 1**1533-0'),(2190,'5 750 - -94312953 - 1**501-0'),(2191,'5 750 - -3348453 - 1**94-0'),(2192,'5 750 - -94689453 - 1**502-0'),(2193,'5 750 - -3419703 - 1**95-0'),(2194,'5 750 - -880971237 - 1**1534-0'),(2195,'5 750 - -3491703 - 1**96-0'),(2196,'5 750 - -95066703 - 1**503-0'),(2197,'5 750 - -882121158 - 1**1535-0'),(2198,'5 750 - -95444703 - 1**504-0'),(2199,'5 750 - -3564453 - 1**97-0'),(2200,'5 750 - -883271829 - 1**1536-0'),(2201,'5 750 - -95823453 - 1**505-0'),(2202,'5 750 - -884423250 - 1**1537-0'),(2203,'5 750 - -3637953 - 1**98-0'),(2204,'5 750 - -96202953 - 1**506-0'),(2205,'5 750 - -885575421 - 1**1538-0'),(2206,'5 750 - -3712203 - 1**99-0'),(2207,'5 750 - -96583203 - 1**507-0'),(2208,'5 750 - -886728342 - 1**1539-0'),(2209,'5 750 - -3787203 - 1**100-0'),(2210,'5 750 - -96964203 - 1**508-0'),(2211,'5 750 - -3862953 - 1**101-0'),(2212,'5 750 - -887882013 - 1**1540-0'),(2213,'5 750 - -97345953 - 1**509-0'),(2214,'5 750 - -3939453 - 1**102-0'),(2215,'5 750 - -889036434 - 1**1541-0'),(2216,'5 750 - -97728453 - 1**510-0'),(2217,'5 750 - -4016703 - 1**103-0'),(2218,'5 750 - -890191605 - 1**1542-0'),(2219,'5 750 - -4094703 - 1**104-0'),(2220,'5 750 - -98111703 - 1**511-0'),(2221,'5 750 - -891347526 - 1**1543-0'),(2222,'5 750 - -4173453 - 1**105-0'),(2223,'5 750 - -98495703 - 1**512-0'),(2224,'5 750 - -892504197 - 1**1544-0'),(2225,'5 750 - -4252953 - 1**106-0'),(2226,'5 750 - -98880453 - 1**513-0'),(2227,'5 750 - -893661618 - 1**1545-0'),(2228,'5 750 - -4333203 - 1**107-0'),(2229,'5 750 - -99265953 - 1**514-0'),(2230,'5 750 - -894819789 - 1**1546-0'),(2231,'5 750 - -4414203 - 1**108-0'),(2232,'5 750 - -99652203 - 1**515-0'),(2233,'5 750 - -895978710 - 1**1547-0'),(2234,'5 750 - -4495953 - 1**109-0'),(2235,'5 750 - -897138381 - 1**1548-0'),(2236,'5 750 - -4578453 - 1**110-0'),(2237,'5 750 - -100039203 - 1**516-0'),(2238,'5 750 - -898298802 - 1**1549-0'),(2239,'5 750 - -4661703 - 1**111-0'),(2240,'5 750 - -100426953 - 1**517-0'),(2241,'5 750 - -899459973 - 1**1550-0'),(2242,'5 750 - -4745703 - 1**112-0'),(2243,'5 750 - -100815453 - 1**518-0'),(2244,'5 750 - -900621894 - 1**1551-0'),(2245,'5 750 - -4830453 - 1**113-0'),(2246,'5 750 - -101204703 - 1**519-0'),(2247,'5 750 - -901784565 - 1**1552-0'),(2248,'5 750 - -4915953 - 1**114-0'),(2249,'5 750 - -101594703 - 1**520-0'),(2250,'5 750 - -902947986 - 1**1553-0'),(2251,'5 750 - -5002203 - 1**115-0'),(2252,'5 750 - -101985453 - 1**521-0'),(2253,'5 750 - -5089203 - 1**116-0'),(2254,'5 750 - -904112157 - 1**1554-0'),(2255,'5 750 - -102376953 - 1**522-0'),(2256,'5 750 - -5176953 - 1**117-0'),(2257,'5 750 - -905277078 - 1**1555-0'),(2258,'5 750 - -102769203 - 1**523-0'),(2259,'5 750 - -5265453 - 1**118-0'),(2260,'5 750 - -906442749 - 1**1556-0'),(2261,'5 750 - -103162203 - 1**524-0'),(2262,'5 750 - -5354703 - 1**119-0'),(2263,'5 750 - -907609170 - 1**1557-0'),(2264,'5 750 - -103555953 - 1**525-0'),(2265,'5 750 - -5444703 - 1**120-0'),(2266,'5 750 - -908776341 - 1**1558-0'),(2267,'5 750 - -103950453 - 1**526-0'),(2268,'5 750 - -5535453 - 1**121-0'),(2269,'5 750 - -909944262 - 1**1559-0'),(2270,'5 750 - -104345703 - 1**527-0'),(2271,'5 750 - -5626953 - 1**122-0'),(2272,'5 750 - -911112933 - 1**1560-0'),(2273,'5 750 - -104741703 - 1**528-0'),(2274,'5 750 - -5719203 - 1**123-0'),(2275,'5 750 - -912282354 - 1**1561-0'),(2276,'5 750 - -105138453 - 1**529-0'),(2277,'5 750 - -5812203 - 1**124-0'),(2278,'5 750 - -105535953 - 1**530-0'),(2279,'5 750 - -913452525 - 1**1562-0'),(2280,'5 750 - -5905953 - 1**125-0'),(2281,'5 750 - -105934203 - 1**531-0'),(2282,'5 750 - -6000453 - 1**126-0'),(2283,'5 750 - -914623446 - 1**1563-0'),(2284,'5 750 - -106333203 - 1**532-0'),(2285,'5 750 - -915795117 - 1**1564-0'),(2286,'5 750 - -6095703 - 1**127-0'),(2287,'5 750 - -106732953 - 1**533-0'),(2288,'5 750 - -916967538 - 1**1565-0'),(2289,'5 750 - -6191703 - 1**128-0'),(2290,'5 750 - -107133453 - 1**534-0'),(2291,'5 750 - -918140709 - 1**1566-0'),(2292,'5 750 - -6288453 - 1**129-0'),(2293,'5 750 - -107534703 - 1**535-0'),(2294,'5 750 - -919314630 - 1**1567-0'),(2295,'5 750 - -6385953 - 1**130-0'),(2296,'5 750 - -107936703 - 1**536-0'),(2297,'5 750 - -920489301 - 1**1568-0'),(2298,'5 750 - -6484203 - 1**131-0'),(2299,'5 750 - -108339453 - 1**537-0'),(2300,'5 750 - -921664722 - 1**1569-0'),(2301,'5 750 - -6583203 - 1**132-0'),(2302,'5 750 - -108742953 - 1**538-0'),(2303,'5 750 - -922840893 - 1**1570-0'),(2304,'5 750 - -6682953 - 1**133-0'),(2305,'5 750 - -109147203 - 1**539-0'),(2306,'5 750 - -924017814 - 1**1571-0'),(2307,'5 750 - -6783453 - 1**134-0'),(2308,'5 750 - -109552203 - 1**540-0'),(2309,'5 750 - -925195485 - 1**1572-0'),(2310,'5 750 - -6884703 - 1**135-0'),(2311,'5 750 - -109957953 - 1**541-0'),(2312,'5 750 - -926373906 - 1**1573-0'),(2313,'5 750 - -110364453 - 1**542-0'),(2314,'5 750 - -6986703 - 1**136-0'),(2315,'5 750 - -927553077 - 1**1574-0'),(2316,'5 750 - -110771703 - 1**543-0'),(2317,'5 750 - -7089453 - 1**137-0'),(2318,'5 750 - -928732998 - 1**1575-0'),(2319,'5 750 - -7192953 - 1**138-0'),(2320,'5 750 - -111179703 - 1**544-0'),(2321,'5 750 - -929913669 - 1**1576-0'),(2322,'5 750 - -7297203 - 1**139-0'),(2323,'5 750 - -931095090 - 1**1577-0'),(2324,'5 750 - -111588453 - 1**545-0'),(2325,'5 750 - -932277261 - 1**1578-0'),(2326,'5 750 - -111997953 - 1**546-0'),(2327,'5 750 - -7402203 - 1**140-0'),(2328,'5 750 - -933460182 - 1**1579-0'),(2329,'5 750 - -7507953 - 1**141-0'),(2330,'5 750 - -112408203 - 1**547-0'),(2331,'5 750 - -934643853 - 1**1580-0'),(2332,'5 750 - -7614453 - 1**142-0'),(2333,'5 750 - -112819203 - 1**548-0'),(2334,'5 750 - -935828274 - 1**1581-0'),(2335,'5 750 - -7721703 - 1**143-0'),(2336,'5 750 - -113230953 - 1**549-0'),(2337,'5 750 - -937013445 - 1**1582-0'),(2338,'5 750 - -7829703 - 1**144-0'),(2339,'5 750 - -113643453 - 1**550-0'),(2340,'5 750 - -938199366 - 1**1583-0'),(2341,'5 750 - -7938453 - 1**145-0'),(2342,'5 750 - -114056703 - 1**551-0'),(2343,'5 750 - -939386037 - 1**1584-0'),(2344,'5 750 - -8047953 - 1**146-0'),(2345,'5 750 - -114470703 - 1**552-0'),(2346,'5 750 - -8158203 - 1**147-0'),(2347,'5 750 - -940573458 - 1**1585-0'),(2348,'5 750 - -114885453 - 1**553-0'),(2349,'5 750 - -8269203 - 1**148-0'),(2350,'5 750 - -115300953 - 1**554-0'),(2351,'5 750 - -941761629 - 1**1586-0'),(2352,'5 750 - -8380953 - 1**149-0'),(2353,'5 750 - -115717203 - 1**555-0'),(2354,'5 750 - -942950550 - 1**1587-0'),(2355,'5 750 - -8493453 - 1**150-0'),(2356,'5 750 - -116134203 - 1**556-0'),(2357,'5 750 - -944140221 - 1**1588-0'),(2358,'5 750 - -8606703 - 1**151-0'),(2359,'5 750 - -116551953 - 1**557-0'),(2360,'5 750 - -945330642 - 1**1589-0'),(2361,'5 750 - -8720703 - 1**152-0'),(2362,'5 750 - -116970453 - 1**558-0'),(2363,'5 750 - -946521813 - 1**1590-0'),(2364,'5 750 - -8835453 - 1**153-0'),(2365,'5 750 - -117389703 - 1**559-0'),(2366,'5 750 - -947713734 - 1**1591-0'),(2367,'5 750 - -8950953 - 1**154-0'),(2368,'5 750 - -117809703 - 1**560-0'),(2369,'5 750 - -948906405 - 1**1592-0'),(2370,'5 750 - -9067203 - 1**155-0'),(2371,'5 750 - -118230453 - 1**561-0'),(2372,'5 750 - -950099826 - 1**1593-0'),(2373,'5 750 - -9184203 - 1**156-0'),(2374,'5 750 - -118651953 - 1**562-0'),(2375,'5 750 - -951293997 - 1**1594-0'),(2376,'5 750 - -119074203 - 1**563-0'),(2377,'5 750 - -9301953 - 1**157-0'),(2378,'5 750 - -952488918 - 1**1595-0'),(2379,'5 750 - -119497203 - 1**564-0'),(2380,'5 750 - -9420453 - 1**158-0'),(2381,'5 750 - -953684589 - 1**1596-0'),(2382,'5 750 - -119920953 - 1**565-0'),(2383,'5 750 - -9539703 - 1**159-0'),(2384,'5 750 - -954881010 - 1**1597-0'),(2385,'5 750 - -120345453 - 1**566-0'),(2386,'5 750 - -9659703 - 1**160-0'),(2387,'5 750 - -956078181 - 1**1598-0'),(2388,'5 750 - -120770703 - 1**567-0'),(2389,'5 750 - -957276102 - 1**1599-0'),(2390,'5 750 - -9780453 - 1**161-0'),(2391,'5 750 - -958474773 - 1**1600-0'),(2392,'5 750 - -121196703 - 1**568-0'),(2393,'5 750 - -9901953 - 1**162-0'),(2394,'5 750 - -959674194 - 1**1601-0'),(2395,'5 750 - -121623453 - 1**569-0'),(2396,'5 750 - -10024203 - 1**163-0'),(2397,'5 750 - -122050953 - 1**570-0'),(2398,'5 750 - -960874365 - 1**1602-0'),(2399,'5 750 - -10147203 - 1**164-0'),(2400,'5 750 - -122479203 - 1**571-0'),(2401,'5 750 - -962075286 - 1**1603-0'),(2402,'5 750 - -10270953 - 1**165-0'),(2403,'5 750 - -963276957 - 1**1604-0'),(2404,'5 750 - -122908203 - 1**572-0'),(2405,'5 750 - -10395453 - 1**166-0'),(2406,'5 750 - -964479378 - 1**1605-0'),(2407,'5 750 - -123337953 - 1**573-0'),(2408,'5 750 - -10520703 - 1**167-0'),(2409,'5 750 - -965682549 - 1**1606-0'),(2410,'5 750 - -123768453 - 1**574-0'),(2411,'5 750 - -10646703 - 1**168-0'),(2412,'5 750 - -966886470 - 1**1607-0'),(2413,'5 750 - -124199703 - 1**575-0'),(2414,'5 750 - -10773453 - 1**169-0'),(2415,'5 750 - -968091141 - 1**1608-0'),(2416,'5 750 - -124631703 - 1**576-0'),(2417,'5 750 - -969296562 - 1**1609-0'),(2418,'5 750 - -10900953 - 1**170-0'),(2419,'5 750 - -125064453 - 1**577-0'),(2420,'5 750 - -970502733 - 1**1610-0'),(2421,'5 750 - -11029203 - 1**171-0'),(2422,'5 750 - -125497953 - 1**578-0'),(2423,'5 750 - -971709654 - 1**1611-0'),(2424,'5 750 - -11158203 - 1**172-0'),(2425,'5 750 - -125932203 - 1**579-0'),(2426,'5 750 - -972917325 - 1**1612-0'),(2427,'5 750 - -11287953 - 1**173-0'),(2428,'5 750 - -126367203 - 1**580-0'),(2429,'5 750 - -974125746 - 1**1613-0'),(2430,'5 750 - -11418453 - 1**174-0'),(2431,'5 750 - -126802953 - 1**581-0'),(2432,'5 750 - -975334917 - 1**1614-0'),(2433,'5 750 - -11549703 - 1**175-0'),(2434,'5 750 - -127239453 - 1**582-0'),(2435,'5 750 - -976544838 - 1**1615-0'),(2436,'5 750 - -11681703 - 1**176-0'),(2437,'5 750 - -127676703 - 1**583-0'),(2438,'5 750 - -977755509 - 1**1616-0'),(2439,'5 750 - -11814453 - 1**177-0'),(2440,'5 750 - -128114703 - 1**584-0'),(2441,'5 750 - -978966930 - 1**1617-0'),(2442,'5 750 - -128553453 - 1**585-0'),(2443,'5 750 - -11947953 - 1**178-0'),(2444,'5 750 - -980179101 - 1**1618-0'),(2445,'5 750 - -12082203 - 1**179-0'),(2446,'5 750 - -981392022 - 1**1619-0'),(2447,'5 750 - -128992953 - 1**586-0'),(2448,'5 750 - -12217203 - 1**180-0'),(2449,'5 750 - -982605693 - 1**1620-0'),(2450,'5 750 - -129433203 - 1**587-0'),(2451,'5 750 - -12352953 - 1**181-0'),(2452,'5 750 - -983820114 - 1**1621-0'),(2453,'5 750 - -129874203 - 1**588-0'),(2454,'5 750 - -12489453 - 1**182-0'),(2455,'5 750 - -985035285 - 1**1622-0'),(2456,'5 750 - -130315953 - 1**589-0'),(2457,'5 750 - -12626703 - 1**183-0'),(2458,'5 750 - -986251206 - 1**1623-0'),(2459,'5 750 - -130758453 - 1**590-0'),(2460,'5 750 - -12764703 - 1**184-0'),(2461,'5 750 - -987467877 - 1**1624-0'),(2462,'5 750 - -131201703 - 1**591-0'),(2463,'5 750 - -12903453 - 1**185-0'),(2464,'5 750 - -988685298 - 1**1625-0'),(2465,'5 750 - -131645703 - 1**592-0'),(2466,'5 750 - -13042953 - 1**186-0'),(2467,'5 750 - -989903469 - 1**1626-0'),(2468,'5 750 - -132090453 - 1**593-0'),(2469,'5 750 - -13183203 - 1**187-0'),(2470,'5 750 - -991122390 - 1**1627-0'),(2471,'5 750 - -132535953 - 1**594-0'),(2472,'5 750 - -13324203 - 1**188-0'),(2473,'5 750 - -992342061 - 1**1628-0'),(2474,'5 750 - -132982203 - 1**595-0'),(2475,'5 750 - -13465953 - 1**189-0'),(2476,'5 750 - -993562482 - 1**1629-0'),(2477,'5 750 - -133429203 - 1**596-0'),(2478,'5 750 - -13608453 - 1**190-0'),(2479,'5 750 - -133876953 - 1**597-0'),(2480,'5 750 - -994783653 - 1**1630-0'),(2481,'5 750 - -13751703 - 1**191-0'),(2482,'5 750 - -134325453 - 1**598-0'),(2483,'5 750 - -13895703 - 1**192-0'),(2484,'5 750 - -996005574 - 1**1631-0'),(2485,'5 750 - -134774703 - 1**599-0'),(2486,'5 750 - -14040453 - 1**193-0'),(2487,'5 750 - -997228245 - 1**1632-0'),(2488,'5 750 - -135224703 - 1**600-0'),(2489,'5 750 - -14185953 - 1**194-0'),(2490,'5 750 - -998451666 - 1**1633-0'),(2491,'5 750 - -135675453 - 1**601-0'),(2492,'5 750 - -14332203 - 1**195-0'),(2493,'5 750 - -999675837 - 1**1634-0'),(2494,'5 750 - -136126953 - 1**602-0'),(2495,'5 750 - -14479203 - 1**196-0'),(2496,'5 750 - -1000900758 - 1**1635-0'),(2497,'5 750 - -136579203 - 1**603-0'),(2498,'5 750 - -14626953 - 1**197-0'),(2499,'5 750 - -1002126429 - 1**1636-0'),(2500,'5 750 - -137032203 - 1**604-0'),(2501,'5 750 - -1003352850 - 1**1637-0'),(2502,'5 750 - -14775453 - 1**198-0'),(2503,'5 750 - -137485953 - 1**605-0'),(2504,'5 750 - -1004580021 - 1**1638-0'),(2505,'5 750 - -14924703 - 1**199-0'),(2506,'5 750 - -137940453 - 1**606-0'),(2507,'5 750 - -1005807942 - 1**1639-0'),(2508,'5 750 - -138395703 - 1**607-0'),(2509,'5 750 - -15074703 - 1**200-0'),(2510,'5 750 - -1007036613 - 1**1640-0'),(2511,'5 750 - -138851703 - 1**608-0'),(2512,'5 750 - -15225453 - 1**201-0'),(2513,'5 750 - -1008266034 - 1**1641-0'),(2514,'5 750 - -139308453 - 1**609-0'),(2515,'5 750 - -15376953 - 1**202-0'),(2516,'5 750 - -139765953 - 1**610-0'),(2517,'5 750 - -1009496205 - 1**1642-0'),(2518,'5 750 - -15529203 - 1**203-0'),(2519,'5 750 - -140224203 - 1**611-0'),(2520,'5 750 - -15682203 - 1**204-0'),(2521,'5 750 - -1010727126 - 1**1643-0'),(2522,'5 750 - -140683203 - 1**612-0'),(2523,'5 750 - -15835953 - 1**205-0'),(2524,'5 750 - -1011958797 - 1**1644-0'),(2525,'5 750 - -141142953 - 1**613-0'),(2526,'5 750 - -15990453 - 1**206-0'),(2527,'5 750 - -141603453 - 1**614-0'),(2528,'5 750 - -1013191218 - 1**1645-0'),(2529,'5 750 - -142064703 - 1**615-0'),(2530,'5 750 - -16145703 - 1**207-0'),(2531,'5 750 - -1014424389 - 1**1646-0'),(2532,'5 750 - -142526703 - 1**616-0'),(2533,'5 750 - -16301703 - 1**208-0'),(2534,'5 750 - -1015658310 - 1**1647-0'),(2535,'5 750 - -142989453 - 1**617-0'),(2536,'5 750 - -16458453 - 1**209-0'),(2537,'5 750 - -1016892981 - 1**1648-0'),(2538,'5 750 - -143452953 - 1**618-0'),(2539,'5 750 - -16615953 - 1**210-0'),(2540,'5 750 - -1018128402 - 1**1649-0'),(2541,'5 750 - -143917203 - 1**619-0'),(2542,'5 750 - -1019364573 - 1**1650-0'),(2543,'5 750 - -16774203 - 1**211-0'),(2544,'5 750 - -144382203 - 1**620-0'),(2545,'5 750 - -1020601494 - 1**1651-0'),(2546,'5 750 - -16933203 - 1**212-0'),(2547,'5 750 - -144847953 - 1**621-0'),(2548,'5 750 - -17092953 - 1**213-0'),(2549,'5 750 - -1021839165 - 1**1652-0'),(2550,'5 750 - -145314453 - 1**622-0'),(2551,'5 750 - -1023077586 - 1**1653-0'),(2552,'5 750 - -17253453 - 1**214-0'),(2553,'5 750 - -145781703 - 1**623-0'),(2554,'5 750 - -1024316757 - 1**1654-0'),(2555,'5 750 - -17414703 - 1**215-0'),(2556,'5 750 - -146249703 - 1**624-0'),(2557,'5 750 - -1025556678 - 1**1655-0'),(2558,'5 750 - -17576703 - 1**216-0'),(2559,'5 750 - -146718453 - 1**625-0'),(2560,'5 750 - -1026797349 - 1**1656-0'),(2561,'5 750 - -147187953 - 1**626-0'),(2562,'5 750 - -17739453 - 1**217-0'),(2563,'5 750 - -1028038770 - 1**1657-0'),(2564,'5 750 - -147658203 - 1**627-0'),(2565,'5 750 - -17902953 - 1**218-0'),(2566,'5 750 - -1029280941 - 1**1658-0'),(2567,'5 750 - -148129203 - 1**628-0'),(2568,'5 750 - -18067203 - 1**219-0'),(2569,'5 750 - -1030523862 - 1**1659-0'),(2570,'5 750 - -148600953 - 1**629-0'),(2571,'5 750 - -18232203 - 1**220-0'),(2572,'5 750 - -1031767533 - 1**1660-0'),(2573,'5 750 - -149073453 - 1**630-0'),(2574,'5 750 - -18397953 - 1**221-0'),(2575,'5 750 - -1033011954 - 1**1661-0'),(2576,'5 750 - -149546703 - 1**631-0'),(2577,'5 750 - -18564453 - 1**222-0'),(2578,'5 750 - -1034257125 - 1**1662-0'),(2579,'5 750 - -150020703 - 1**632-0'),(2580,'5 750 - -18731703 - 1**223-0'),(2581,'5 750 - -1035503046 - 1**1663-0'),(2582,'5 750 - -150495453 - 1**633-0'),(2583,'5 750 - -18899703 - 1**224-0'),(2584,'5 750 - -1036749717 - 1**1664-0'),(2585,'5 750 - -19068453 - 1**225-0'),(2586,'5 750 - -150970953 - 1**634-0'),(2587,'5 750 - -1037997138 - 1**1665-0'),(2588,'5 750 - -19237953 - 1**226-0'),(2589,'5 750 - -151447203 - 1**635-0'),(2590,'5 750 - -1039245309 - 1**1666-0'),(2591,'5 750 - -19408203 - 1**227-0'),(2592,'5 750 - -151924203 - 1**636-0'),(2593,'5 750 - -1040494230 - 1**1667-0'),(2594,'5 750 - -152401953 - 1**637-0'),(2595,'5 750 - -19579203 - 1**228-0'),(2596,'5 750 - -1041743901 - 1**1668-0'),(2597,'5 750 - -19750953 - 1**229-0'),(2598,'5 750 - -152880453 - 1**638-0'),(2599,'5 750 - -1042994322 - 1**1669-0'),(2600,'5 750 - -153359703 - 1**639-0'),(2601,'5 750 - -19923453 - 1**230-0'),(2602,'5 750 - -1044245493 - 1**1670-0'),(2603,'5 750 - -153839703 - 1**640-0'),(2604,'5 750 - -20096703 - 1**231-0'),(2605,'5 750 - -1045497414 - 1**1671-0'),(2606,'5 750 - -154320453 - 1**641-0'),(2607,'5 750 - -20270703 - 1**232-0'),(2608,'5 750 - -1046750085 - 1**1672-0'),(2609,'5 750 - -154801953 - 1**642-0'),(2610,'5 750 - -1048003506 - 1**1673-0'),(2611,'5 750 - -20445453 - 1**233-0'),(2612,'5 750 - -155284203 - 1**643-0'),(2613,'5 750 - -20620953 - 1**234-0'),(2614,'5 750 - -1049257677 - 1**1674-0'),(2615,'5 750 - -155767203 - 1**644-0'),(2616,'5 750 - -20797203 - 1**235-0'),(2617,'5 750 - -1050512598 - 1**1675-0'),(2618,'5 750 - -156250953 - 1**645-0'),(2619,'5 750 - -20974203 - 1**236-0'),(2620,'5 750 - -1051768269 - 1**1676-0'),(2621,'5 750 - -156735453 - 1**646-0'),(2622,'5 750 - -21151953 - 1**237-0'),(2623,'5 750 - -1053024690 - 1**1677-0'),(2624,'5 750 - -157220703 - 1**647-0'),(2625,'5 750 - -21330453 - 1**238-0'),(2626,'5 750 - -1054281861 - 1**1678-0'),(2627,'5 750 - -157706703 - 1**648-0'),(2628,'5 750 - -21509703 - 1**239-0'),(2629,'5 750 - -1055539782 - 1**1679-0'),(2630,'5 750 - -158193453 - 1**649-0'),(2631,'5 750 - -21689703 - 1**240-0'),(2632,'5 750 - -1056798453 - 1**1680-0'),(2633,'5 750 - -158680953 - 1**650-0'),(2634,'5 750 - -21870453 - 1**241-0'),(2635,'5 750 - -1058057874 - 1**1681-0'),(2636,'5 750 - -159169203 - 1**651-0'),(2637,'5 750 - -22051953 - 1**242-0'),(2638,'5 750 - -1059318045 - 1**1682-0'),(2639,'5 750 - -159658203 - 1**652-0'),(2640,'5 750 - -22234203 - 1**243-0'),(2641,'5 750 - -1060578966 - 1**1683-0'),(2642,'5 750 - -160147953 - 1**653-0'),(2643,'5 750 - -22417203 - 1**244-0'),(2644,'5 750 - -1061840637 - 1**1684-0'),(2645,'5 750 - -160638453 - 1**654-0'),(2646,'5 750 - -1063103058 - 1**1685-0'),(2647,'5 750 - -22600953 - 1**245-0'),(2648,'5 750 - -161129703 - 1**655-0'),(2649,'5 750 - -1064366229 - 1**1686-0'),(2650,'5 750 - -22785453 - 1**246-0'),(2651,'5 750 - -161621703 - 1**656-0'),(2652,'5 750 - -1065630150 - 1**1687-0'),(2653,'5 750 - -22970703 - 1**247-0'),(2654,'5 750 - -162114453 - 1**657-0'),(2655,'5 750 - -1066894821 - 1**1688-0'),(2656,'5 750 - -23156703 - 1**248-0'),(2657,'5 750 - -162607953 - 1**658-0'),(2658,'5 750 - -1068160242 - 1**1689-0'),(2659,'5 750 - -23343453 - 1**249-0'),(2660,'5 750 - -163102203 - 1**659-0'),(2661,'5 750 - -1069426413 - 1**1690-0'),(2662,'5 750 - -23530953 - 1**250-0'),(2663,'5 750 - -163597203 - 1**660-0'),(2664,'5 750 - -1070693334 - 1**1691-0'),(2665,'5 750 - -23719203 - 1**251-0'),(2666,'5 750 - -164092953 - 1**661-0'),(2667,'5 750 - -1071961005 - 1**1692-0'),(2668,'5 750 - -23908203 - 1**252-0'),(2669,'5 750 - -164589453 - 1**662-0'),(2670,'5 750 - -1073229426 - 1**1693-0'),(2671,'5 750 - -24097953 - 1**253-0'),(2672,'5 750 - -165086703 - 1**663-0'),(2673,'5 750 - -1074498597 - 1**1694-0'),(2674,'5 750 - -24288453 - 1**254-0'),(2675,'5 750 - -165584703 - 1**664-0'),(2676,'5 750 - -1075768518 - 1**1695-0'),(2677,'5 750 - -24479703 - 1**255-0'),(2678,'5 750 - -166083453 - 1**665-0'),(2679,'5 750 - -1077039189 - 1**1696-0'),(2680,'5 750 - -24671703 - 1**256-0'),(2681,'5 750 - -1078310610 - 1**1697-0'),(2682,'5 750 - -166582953 - 1**666-0'),(2683,'5 750 - -24864453 - 1**257-0'),(2684,'5 750 - -1079582781 - 1**1698-0'),(2685,'5 750 - -167083203 - 1**667-0'),(2686,'5 750 - -25057953 - 1**258-0'),(2687,'5 750 - -1080855702 - 1**1699-0'),(2688,'5 750 - -167584203 - 1**668-0'),(2689,'5 750 - -25252203 - 1**259-0'),(2690,'5 750 - -168085953 - 1**669-0'),(2691,'5 750 - -25447203 - 1**260-0'),(2692,'5 750 - -1082129373 - 1**1700-0'),(2693,'5 750 - -168588453 - 1**670-0'),(2694,'5 750 - -25642953 - 1**261-0'),(2695,'5 750 - -1083403794 - 1**1701-0'),(2696,'5 750 - -169091703 - 1**671-0'),(2697,'5 750 - -25839453 - 1**262-0'),(2698,'5 750 - -1084678965 - 1**1702-0'),(2699,'5 750 - -26036703 - 1**263-0'),(2700,'5 750 - -169595703 - 1**672-0'),(2701,'5 750 - -1085954886 - 1**1703-0'),(2702,'5 750 - -26234703 - 1**264-0'),(2703,'5 750 - -170100453 - 1**673-0'),(2704,'5 750 - -1087231557 - 1**1704-0'),(2705,'5 750 - -26433453 - 1**265-0'),(2706,'5 750 - -1088508978 - 1**1705-0'),(2707,'5 750 - -170605953 - 1**674-0'),(2708,'5 750 - -171112203 - 1**675-0'),(2709,'5 750 - -1089787149 - 1**1706-0'),(2710,'5 750 - -26632953 - 1**266-0'),(2711,'5 750 - -171619203 - 1**676-0'),(2712,'5 750 - -1091066070 - 1**1707-0'),(2713,'5 750 - -26833203 - 1**267-0'),(2714,'5 750 - -172126953 - 1**677-0'),(2715,'5 750 - -1092345741 - 1**1708-0'),(2716,'5 750 - -27034203 - 1**268-0'),(2717,'5 750 - -172635453 - 1**678-0'),(2718,'5 750 - -1093626162 - 1**1709-0'),(2719,'5 750 - -27235953 - 1**269-0'),(2720,'5 750 - -1094907333 - 1**1710-0'),(2721,'5 750 - -173144703 - 1**679-0'),(2722,'5 750 - -27438453 - 1**270-0'),(2723,'5 750 - -1096189254 - 1**1711-0'),(2724,'5 750 - -173654703 - 1**680-0'),(2725,'5 750 - -27641703 - 1**271-0'),(2726,'5 750 - -1097471925 - 1**1712-0'),(2727,'5 750 - -174165453 - 1**681-0'),(2728,'5 750 - -27845703 - 1**272-0'),(2729,'5 750 - -1098755346 - 1**1713-0'),(2730,'5 750 - -174676953 - 1**682-0'),(2731,'5 750 - -28050453 - 1**273-0'),(2732,'5 750 - -1100039517 - 1**1714-0'),(2733,'5 750 - -175189203 - 1**683-0'),(2734,'5 750 - -28255953 - 1**274-0'),(2735,'5 750 - -1101324438 - 1**1715-0'),(2736,'5 750 - -175702203 - 1**684-0'),(2737,'5 750 - -28462203 - 1**275-0'),(2738,'5 750 - -1102610109 - 1**1716-0'),(2739,'5 750 - -176215953 - 1**685-0'),(2740,'5 750 - -28669203 - 1**276-0'),(2741,'5 750 - -1103896530 - 1**1717-0'),(2742,'5 750 - -28876953 - 1**277-0'),(2743,'5 750 - -176730453 - 1**686-0'),(2744,'5 750 - -1105183701 - 1**1718-0'),(2745,'5 750 - -29085453 - 1**278-0'),(2746,'5 750 - -177245703 - 1**687-0'),(2747,'5 750 - -1106471622 - 1**1719-0'),(2748,'5 750 - -29294703 - 1**279-0'),(2749,'5 750 - -177761703 - 1**688-0'),(2750,'5 750 - -1107760293 - 1**1720-0'),(2751,'5 750 - -29504703 - 1**280-0'),(2752,'5 750 - -178278453 - 1**689-0'),(2753,'5 750 - -1109049714 - 1**1721-0'),(2754,'5 750 - -29715453 - 1**281-0'),(2755,'5 750 - -178795953 - 1**690-0'),(2756,'5 750 - -1110339885 - 1**1722-0'),(2757,'5 750 - -29926953 - 1**282-0'),(2758,'5 750 - -179314203 - 1**691-0'),(2759,'5 750 - -1111630806 - 1**1723-0'),(2760,'5 750 - -30139203 - 1**283-0'),(2761,'5 750 - -179833203 - 1**692-0'),(2762,'5 750 - -1112922477 - 1**1724-0'),(2763,'5 750 - -30352203 - 1**284-0'),(2764,'5 750 - -180352953 - 1**693-0'),(2765,'5 750 - -1114214898 - 1**1725-0'),(2766,'5 750 - -30565953 - 1**285-0'),(2767,'5 750 - -180873453 - 1**694-0'),(2768,'5 750 - -1115508069 - 1**1726-0'),(2769,'5 750 - -30780453 - 1**286-0'),(2770,'5 750 - -181394703 - 1**695-0'),(2771,'5 750 - -1116801990 - 1**1727-0'),(2772,'5 750 - -30995703 - 1**287-0'),(2773,'5 750 - -181916703 - 1**696-0'),(2774,'5 750 - -1118096661 - 1**1728-0'),(2775,'5 750 - -31211703 - 1**288-0'),(2776,'5 750 - -182439453 - 1**697-0'),(2777,'5 750 - -1119392082 - 1**1729-0'),(2778,'5 750 - -31428453 - 1**289-0'),(2779,'5 750 - -182962953 - 1**698-0'),(2780,'5 750 - -1120688253 - 1**1730-0'),(2781,'5 750 - -183487203 - 1**699-0'),(2782,'5 750 - -31645953 - 1**290-0'),(2783,'5 750 - -1121985174 - 1**1731-0'),(2784,'5 750 - -184012203 - 1**700-0'),(2785,'5 750 - -31864203 - 1**291-0'),(2786,'5 750 - -1123282845 - 1**1732-0'),(2787,'5 750 - -184537953 - 1**701-0'),(2788,'5 750 - -32083203 - 1**292-0'),(2789,'5 750 - -1124581266 - 1**1733-0'),(2790,'5 750 - -185064453 - 1**702-0'),(2791,'5 750 - -32302953 - 1**293-0'),(2792,'5 750 - -1125880437 - 1**1734-0'),(2793,'5 750 - -185591703 - 1**703-0'),(2794,'5 750 - -32523453 - 1**294-0'),(2795,'5 750 - -186119703 - 1**704-0'),(2796,'5 750 - -1127180358 - 1**1735-0'),(2797,'5 750 - -32744703 - 1**295-0'),(2798,'5 750 - -186648453 - 1**705-0'),(2799,'5 750 - -1128481029 - 1**1736-0'),(2800,'5 750 - -32966703 - 1**296-0'),(2801,'5 750 - -187177953 - 1**706-0'),(2802,'5 750 - -1129782450 - 1**1737-0'),(2803,'5 750 - -33189453 - 1**297-0'),(2804,'5 750 - -187708203 - 1**707-0'),(2805,'5 750 - -1131084621 - 1**1738-0'),(2806,'5 750 - -33412953 - 1**298-0'),(2807,'5 750 - -188239203 - 1**708-0'),(2808,'5 750 - -1132387542 - 1**1739-0'),(2809,'5 750 - -33637203 - 1**299-0'),(2810,'5 750 - -188770953 - 1**709-0'),(2811,'5 750 - -1133691213 - 1**1740-0'),(2812,'5 750 - -33862203 - 1**300-0'),(2813,'5 750 - -189303453 - 1**710-0'),(2814,'5 750 - -1134995634 - 1**1741-0'),(2815,'5 750 - -34087953 - 1**301-0'),(2816,'5 750 - -189836703 - 1**711-0'),(2817,'5 750 - -1136300805 - 1**1742-0'),(2818,'5 750 - -34314453 - 1**302-0'),(2819,'5 750 - -190370703 - 1**712-0'),(2820,'5 750 - -1137606726 - 1**1743-0'),(2821,'5 750 - -34541703 - 1**303-0'),(2822,'5 750 - -190905453 - 1**713-0'),(2823,'5 750 - -1138913397 - 1**1744-0'),(2824,'5 750 - -34769703 - 1**304-0'),(2825,'5 750 - -191440953 - 1**714-0'),(2826,'5 750 - -1140220818 - 1**1745-0'),(2827,'5 750 - -34998453 - 1**305-0'),(2828,'5 750 - -191977203 - 1**715-0'),(2829,'5 750 - -1141528989 - 1**1746-0'),(2830,'5 750 - -35227953 - 1**306-0'),(2831,'5 750 - -192514203 - 1**716-0'),(2832,'5 750 - -1142837910 - 1**1747-0'),(2833,'5 750 - -35458203 - 1**307-0'),(2834,'5 750 - -193051953 - 1**717-0'),(2835,'5 750 - -1144147581 - 1**1748-0'),(2836,'5 750 - -35689203 - 1**308-0'),(2837,'5 750 - -193590453 - 1**718-0'),(2838,'5 750 - -1145458002 - 1**1749-0'),(2839,'5 750 - -35920953 - 1**309-0'),(2840,'5 750 - -194129703 - 1**719-0'),(2841,'5 750 - -1146769173 - 1**1750-0'),(2842,'5 750 - -36153453 - 1**310-0'),(2843,'5 750 - -194669703 - 1**720-0'),(2844,'5 750 - -1148081094 - 1**1751-0'),(2845,'5 750 - -36386703 - 1**311-0'),(2846,'5 750 - -195210453 - 1**721-0'),(2847,'5 750 - -1149393765 - 1**1752-0'),(2848,'5 750 - -36620703 - 1**312-0'),(2849,'5 750 - -195751953 - 1**722-0'),(2850,'5 750 - -1150707186 - 1**1753-0'),(2851,'5 750 - -36855453 - 1**313-0'),(2852,'5 750 - -196294203 - 1**723-0'),(2853,'5 750 - -1152021357 - 1**1754-0'),(2854,'5 750 - -37090953 - 1**314-0'),(2855,'5 750 - -196837203 - 1**724-0'),(2856,'5 750 - -1153336278 - 1**1755-0'),(2857,'5 750 - -37327203 - 1**315-0'),(2858,'5 750 - -197380953 - 1**725-0'),(2859,'5 750 - -1154651949 - 1**1756-0'),(2860,'5 750 - -37564203 - 1**316-0'),(2861,'5 750 - -197925453 - 1**726-0'),(2862,'5 750 - -1155968370 - 1**1757-0'),(2863,'5 750 - -37801953 - 1**317-0'),(2864,'5 750 - -198470703 - 1**727-0'),(2865,'5 750 - -1157285541 - 1**1758-0'),(2866,'5 750 - -38040453 - 1**318-0'),(2867,'5 750 - -1158603462 - 1**1759-0'),(2868,'5 750 - -199016703 - 1**728-0'),(2869,'5 750 - -38279703 - 1**319-0'),(2870,'5 750 - -1159922133 - 1**1760-0'),(2871,'5 750 - -199563453 - 1**729-0'),(2872,'5 750 - -38519703 - 1**320-0'),(2873,'5 750 - -1161241554 - 1**1761-0'),(2874,'5 750 - -200110953 - 1**730-0'),(2875,'5 750 - -38760453 - 1**321-0'),(2876,'5 750 - -1162561725 - 1**1762-0'),(2877,'5 750 - -200659203 - 1**731-0'),(2878,'5 750 - -1163882646 - 1**1763-0'),(2879,'5 750 - -39001953 - 1**322-0'),(2880,'5 750 - -201208203 - 1**732-0'),(2881,'5 750 - -1165204317 - 1**1764-0'),(2882,'5 750 - -39244203 - 1**323-0'),(2883,'5 750 - -201757953 - 1**733-0'),(2884,'5 750 - -1166526738 - 1**1765-0'),(2885,'5 750 - -39487203 - 1**324-0'),(2886,'5 750 - -202308453 - 1**734-0'),(2887,'5 750 - -1167849909 - 1**1766-0'),(2888,'5 750 - -39730953 - 1**325-0'),(2889,'5 750 - -202859703 - 1**735-0'),(2890,'5 750 - -1169173830 - 1**1767-0'),(2891,'5 750 - -39975453 - 1**326-0'),(2892,'5 750 - -203411703 - 1**736-0'),(2893,'5 750 - -1170498501 - 1**1768-0'),(2894,'5 750 - -40220703 - 1**327-0'),(2895,'5 750 - -203964453 - 1**737-0'),(2896,'5 750 - -40466703 - 1**328-0'),(2897,'5 750 - -1171823922 - 1**1769-0'),(2898,'5 750 - -204517953 - 1**738-0'),(2899,'5 750 - -40713453 - 1**329-0'),(2900,'5 750 - -1173150093 - 1**1770-0'),(2901,'5 750 - -205072203 - 1**739-0'),(2902,'5 750 - -40960953 - 1**330-0'),(2903,'5 750 - -1174477014 - 1**1771-0'),(2904,'5 750 - -205627203 - 1**740-0'),(2905,'5 750 - -41209203 - 1**331-0'),(2906,'5 750 - -206182953 - 1**741-0'),(2907,'5 750 - -1175804685 - 1**1772-0'),(2908,'5 750 - -41458203 - 1**332-0'),(2909,'5 750 - -206739453 - 1**742-0'),(2910,'5 750 - -1177133106 - 1**1773-0'),(2911,'5 750 - -41707953 - 1**333-0'),(2912,'5 750 - -207296703 - 1**743-0'),(2913,'5 750 - -1178462277 - 1**1774-0'),(2914,'5 750 - -41958453 - 1**334-0'),(2915,'5 750 - -207854703 - 1**744-0'),(2916,'5 750 - -1179792198 - 1**1775-0'),(2917,'5 750 - -42209703 - 1**335-0'),(2918,'5 750 - -208413453 - 1**745-0'),(2919,'5 750 - -1181122869 - 1**1776-0'),(2920,'5 750 - -208972953 - 1**746-0'),(2921,'5 750 - -42461703 - 1**336-0'),(2922,'5 750 - -1182454290 - 1**1777-0'),(2923,'5 750 - -209533203 - 1**747-0'),(2924,'5 750 - -42714453 - 1**337-0'),(2925,'5 750 - -1183786461 - 1**1778-0'),(2926,'5 750 - -210094203 - 1**748-0'),(2927,'5 750 - -42967953 - 1**338-0'),(2928,'5 750 - -1185119382 - 1**1779-0'),(2929,'5 750 - -210655953 - 1**749-0'),(2930,'5 750 - -43222203 - 1**339-0'),(2931,'5 750 - -1186453053 - 1**1780-0'),(2932,'5 750 - -43477203 - 1**340-0'),(2933,'5 750 - -211218453 - 1**750-0'),(2934,'5 750 - -1187787474 - 1**1781-0'),(2935,'5 750 - -43732953 - 1**341-0'),(2936,'5 750 - -211781703 - 1**751-0'),(2937,'5 750 - -1189122645 - 1**1782-0'),(2938,'5 750 - -43989453 - 1**342-0'),(2939,'5 750 - -1190458566 - 1**1783-0'),(2940,'5 750 - -212345703 - 1**752-0'),(2941,'5 750 - -44246703 - 1**343-0'),(2942,'5 750 - -1191795237 - 1**1784-0'),(2943,'5 750 - -212910453 - 1**753-0'),(2944,'5 750 - -1193132658 - 1**1785-0'),(2945,'5 750 - -44504703 - 1**344-0'),(2946,'5 750 - -213475953 - 1**754-0'),(2947,'5 750 - -44763453 - 1**345-0'),(2948,'5 750 - -1194470829 - 1**1786-0'),(2949,'5 750 - -214042203 - 1**755-0'),(2950,'5 750 - -45022953 - 1**346-0'),(2951,'5 750 - -1195809750 - 1**1787-0'),(2952,'5 750 - -214609203 - 1**756-0'),(2953,'5 750 - -1197149421 - 1**1788-0'),(2954,'5 750 - -45283203 - 1**347-0'),(2955,'5 750 - -215176953 - 1**757-0'),(2956,'5 750 - -1198489842 - 1**1789-0'),(2957,'5 750 - -215745453 - 1**758-0'),(2958,'5 750 - -45544203 - 1**348-0'),(2959,'5 750 - -1199831013 - 1**1790-0'),(2960,'5 750 - -216314703 - 1**759-0'),(2961,'5 750 - -45805953 - 1**349-0'),(2962,'5 750 - -216884703 - 1**760-0'),(2963,'5 750 - -1201172934 - 1**1791-0'),(2964,'5 750 - -46068453 - 1**350-0'),(2965,'5 750 - -1202515605 - 1**1792-0'),(2966,'5 750 - -217455453 - 1**761-0'),(2967,'5 750 - -46331703 - 1**351-0'),(2968,'5 750 - -1203859026 - 1**1793-0'),(2969,'5 750 - -218026953 - 1**762-0'),(2970,'5 750 - -46595703 - 1**352-0'),(2971,'5 750 - -1205203197 - 1**1794-0'),(2972,'5 750 - -218599203 - 1**763-0'),(2973,'5 750 - -46860453 - 1**353-0'),(2974,'5 750 - -1206548118 - 1**1795-0'),(2975,'5 750 - -219172203 - 1**764-0'),(2976,'5 750 - -47125953 - 1**354-0'),(2977,'5 750 - -1207893789 - 1**1796-0'),(2978,'5 750 - -219745953 - 1**765-0'),(2979,'5 750 - -47392203 - 1**355-0'),(2980,'5 750 - -1209240210 - 1**1797-0'),(2981,'5 750 - -220320453 - 1**766-0'),(2982,'5 750 - -47659203 - 1**356-0'),(2983,'5 750 - -1210587381 - 1**1798-0'),(2984,'5 750 - -220895703 - 1**767-0'),(2985,'5 750 - -47926953 - 1**357-0'),(2986,'5 750 - -1211935302 - 1**1799-0'),(2987,'5 750 - -221471703 - 1**768-0'),(2988,'5 750 - -48195453 - 1**358-0'),(2989,'5 750 - -222048453 - 1**769-0'),(2990,'5 750 - -1213283973 - 1**1800-0'),(2991,'5 750 - -48464703 - 1**359-0'),(2992,'5 750 - -1214633394 - 1**1801-0'),(2993,'5 750 - -222625953 - 1**770-0'),(2994,'5 750 - -48734703 - 1**360-0'),(2995,'5 750 - -223204203 - 1**771-0'),(2996,'5 750 - -1215983565 - 1**1802-0'),(2997,'5 750 - -49005453 - 1**361-0'),(2998,'5 750 - -1217334486 - 1**1803-0'),(2999,'5 750 - -223783203 - 1**772-0'),(3000,'5 750 - -49276953 - 1**362-0'),(3001,'5 750 - -224362953 - 1**773-0'),(3002,'5 750 - -1218686157 - 1**1804-0'),(3003,'5 750 - -49549203 - 1**363-0'),(3004,'5 750 - -224943453 - 1**774-0'),(3005,'5 750 - -1220038578 - 1**1805-0'),(3006,'5 750 - -49822203 - 1**364-0'),(3007,'5 750 - -225524703 - 1**775-0'),(3008,'5 750 - -1221391749 - 1**1806-0'),(3009,'5 750 - -50095953 - 1**365-0'),(3010,'5 750 - -226106703 - 1**776-0'),(3011,'5 750 - -1222745670 - 1**1807-0'),(3012,'5 750 - -50370453 - 1**366-0'),(3013,'5 750 - -226689453 - 1**777-0'),(3014,'5 750 - -1224100341 - 1**1808-0'),(3015,'5 750 - -50645703 - 1**367-0'),(3016,'5 750 - -227272953 - 1**778-0'),(3017,'5 750 - -1225455762 - 1**1809-0'),(3018,'5 750 - -50921703 - 1**368-0'),(3019,'5 750 - -227857203 - 1**779-0'),(3020,'5 750 - -1226811933 - 1**1810-0'),(3021,'5 750 - -51198453 - 1**369-0'),(3022,'5 750 - -228442203 - 1**780-0'),(3023,'5 750 - -1228168854 - 1**1811-0'),(3024,'5 750 - -51475953 - 1**370-0'),(3025,'5 750 - -229027953 - 1**781-0'),(3026,'5 750 - -1229526525 - 1**1812-0'),(3027,'5 750 - -51754203 - 1**371-0'),(3028,'5 750 - -229614453 - 1**782-0'),(3029,'5 750 - -1230884946 - 1**1813-0'),(3030,'5 750 - -52033203 - 1**372-0'),(3031,'5 750 - -230201703 - 1**783-0'),(3032,'5 750 - -1232244117 - 1**1814-0'),(3033,'5 750 - -52312953 - 1**373-0'),(3034,'5 750 - -230789703 - 1**784-0'),(3035,'5 750 - -1233604038 - 1**1815-0'),(3036,'5 750 - -231378453 - 1**785-0'),(3037,'5 750 - -52593453 - 1**374-0'),(3038,'5 750 - -1234964709 - 1**1816-0'),(3039,'5 750 - -231967953 - 1**786-0'),(3040,'5 750 - -52874703 - 1**375-0'),(3041,'5 750 - -1236326130 - 1**1817-0'),(3042,'5 750 - -232558203 - 1**787-0'),(3043,'5 750 - -53156703 - 1**376-0'),(3044,'5 750 - -1237688301 - 1**1818-0'),(3045,'5 750 - -233149203 - 1**788-0'),(3046,'5 750 - -53439453 - 1**377-0'),(3047,'5 750 - -1239051222 - 1**1819-0'),(3048,'5 750 - -233740953 - 1**789-0'),(3049,'5 750 - -53722953 - 1**378-0'),(3050,'5 750 - -1240414893 - 1**1820-0'),(3051,'5 750 - -234333453 - 1**790-0'),(3052,'5 750 - -54007203 - 1**379-0'),(3053,'5 750 - -1241779314 - 1**1821-0'),(3054,'5 750 - -234926703 - 1**791-0'),(3055,'5 750 - -54292203 - 1**380-0'),(3056,'5 750 - -1243144485 - 1**1822-0'),(3057,'5 750 - -235520703 - 1**792-0'),(3058,'5 750 - -54577953 - 1**381-0'),(3059,'5 750 - -1244510406 - 1**1823-0'),(3060,'5 750 - -236115453 - 1**793-0'),(3061,'5 750 - -54864453 - 1**382-0'),(3062,'5 750 - -1245877077 - 1**1824-0'),(3063,'5 750 - -236710953 - 1**794-0'),(3064,'5 750 - -55151703 - 1**383-0'),(3065,'5 750 - -1247244498 - 1**1825-0'),(3066,'5 750 - -237307203 - 1**795-0'),(3067,'5 750 - -55439703 - 1**384-0'),(3068,'5 750 - -1248612669 - 1**1826-0'),(3069,'5 750 - -55728453 - 1**385-0'),(3070,'5 750 - -237904203 - 1**796-0'),(3071,'5 750 - -1249981590 - 1**1827-0'),(3072,'5 750 - -238501953 - 1**797-0'),(3073,'5 750 - -1251351261 - 1**1828-0'),(3074,'5 750 - -56017953 - 1**386-0'),(3075,'5 750 - -239100453 - 1**798-0'),(3076,'5 750 - -1252721682 - 1**1829-0'),(3077,'5 750 - -56308203 - 1**387-0'),(3078,'5 750 - -239699703 - 1**799-0'),(3079,'5 750 - -56599203 - 1**388-0'),(3080,'5 750 - -1254092853 - 1**1830-0'),(3081,'5 750 - -240299703 - 1**800-0'),(3082,'5 750 - -56890953 - 1**389-0'),(3083,'5 750 - -1255464774 - 1**1831-0'),(3084,'5 750 - -240900453 - 1**801-0'),(3085,'5 750 - -57183453 - 1**390-0'),(3086,'5 750 - -1256837445 - 1**1832-0'),(3087,'5 750 - -241501953 - 1**802-0'),(3088,'5 750 - -57476703 - 1**391-0'),(3089,'5 750 - -1258210866 - 1**1833-0'),(3090,'5 750 - -1259585037 - 1**1834-0'),(3091,'5 750 - -242104203 - 1**803-0'),(3092,'5 750 - -57770703 - 1**392-0'),(3093,'5 750 - -1260959958 - 1**1835-0'),(3094,'5 750 - -242707203 - 1**804-0'),(3095,'5 750 - -58065453 - 1**393-0'),(3096,'5 750 - -1262335629 - 1**1836-0'),(3097,'5 750 - -243310953 - 1**805-0'),(3098,'5 750 - -58360953 - 1**394-0'),(3099,'5 750 - -1263712050 - 1**1837-0'),(3100,'5 750 - -243915453 - 1**806-0'),(3101,'5 750 - -58657203 - 1**395-0'),(3102,'5 750 - -244520703 - 1**807-0'),(3103,'5 750 - -58954203 - 1**396-0'),(3104,'5 750 - -1265089221 - 1**1838-0'),(3105,'5 750 - -59251953 - 1**397-0'),(3106,'5 750 - -245126703 - 1**808-0'),(3107,'5 750 - -1266467142 - 1**1839-0'),(3108,'5 750 - -59550453 - 1**398-0'),(3109,'5 750 - -245733453 - 1**809-0'),(3110,'5 750 - -1267845813 - 1**1840-0'),(3111,'5 750 - -59849703 - 1**399-0'),(3112,'5 750 - -1269225234 - 1**1841-0'),(3113,'5 750 - -246340953 - 1**810-0'),(3114,'5 750 - -60149703 - 1**400-0'),(3115,'5 750 - -246949203 - 1**811-0'),(3116,'5 750 - -1270605405 - 1**1842-0'),(3117,'5 750 - -60450453 - 1**401-0'),(3118,'5 750 - -247558203 - 1**812-0'),(3119,'5 750 - -1271986326 - 1**1843-0'),(3120,'5 750 - -60751953 - 1**402-0'),(3121,'5 750 - -248167953 - 1**813-0'),(3122,'5 750 - -1273367997 - 1**1844-0'),(3123,'5 750 - -61054203 - 1**403-0'),(3124,'5 750 - -248778453 - 1**814-0'),(3125,'5 750 - -1274750418 - 1**1845-0'),(3126,'5 750 - -61357203 - 1**404-0'),(3127,'5 750 - -249389703 - 1**815-0'),(3128,'5 750 - -1276133589 - 1**1846-0'),(3129,'5 750 - -61660953 - 1**405-0'),(3130,'5 750 - -1277517510 - 1**1847-0'),(3131,'5 750 - -61965453 - 1**406-0'),(3132,'5 750 - -250001703 - 1**816-0'),(3133,'5 750 - -1278902181 - 1**1848-0'),(3134,'5 750 - -62270703 - 1**407-0'),(3135,'5 750 - -250614453 - 1**817-0'),(3136,'5 750 - -1280287602 - 1**1849-0'),(3137,'5 750 - -62576703 - 1**408-0'),(3138,'5 750 - -251227953 - 1**818-0'),(3139,'5 750 - -1281673773 - 1**1850-0'),(3140,'5 750 - -62883453 - 1**409-0'),(3141,'5 750 - -1283060694 - 1**1851-0'),(3142,'5 750 - -251842203 - 1**819-0'),(3143,'5 750 - -63190953 - 1**410-0'),(3144,'5 750 - -1284448365 - 1**1852-0'),(3145,'5 750 - -252457203 - 1**820-0'),(3146,'5 750 - -63499203 - 1**411-0'),(3147,'5 750 - -1285836786 - 1**1853-0'),(3148,'5 750 - -253072953 - 1**821-0'),(3149,'5 750 - -63808203 - 1**412-0'),(3150,'5 750 - -1287225957 - 1**1854-0'),(3151,'5 750 - -253689453 - 1**822-0'),(3152,'5 750 - -64117953 - 1**413-0'),(3153,'5 750 - -1288615878 - 1**1855-0'),(3154,'5 750 - -254306703 - 1**823-0'),(3155,'5 750 - -64428453 - 1**414-0'),(3156,'5 750 - -1290006549 - 1**1856-0'),(3157,'5 750 - -254924703 - 1**824-0'),(3158,'5 750 - -64739703 - 1**415-0'),(3159,'5 750 - -1291397970 - 1**1857-0'),(3160,'5 750 - -255543453 - 1**825-0'),(3161,'5 750 - -1292790141 - 1**1858-0'),(3162,'5 750 - -256162953 - 1**826-0'),(3163,'5 750 - -65051703 - 1**416-0'),(3164,'5 750 - -1294183062 - 1**1859-0'),(3165,'5 750 - -256783203 - 1**827-0'),(3166,'5 750 - -65364453 - 1**417-0'),(3167,'5 750 - -1295576733 - 1**1860-0'),(3168,'5 750 - -257404203 - 1**828-0'),(3169,'5 750 - -65677953 - 1**418-0'),(3170,'5 750 - -1296971154 - 1**1861-0'),(3171,'5 750 - -258025953 - 1**829-0'),(3172,'5 750 - -65992203 - 1**419-0'),(3173,'5 750 - -1298366325 - 1**1862-0'),(3174,'5 750 - -258648453 - 1**830-0'),(3175,'5 750 - -1299762246 - 1**1863-0'),(3176,'5 750 - -66307203 - 1**420-0'),(3177,'5 750 - -259271703 - 1**831-0'),(3178,'5 750 - -1301158917 - 1**1864-0'),(3179,'5 750 - -66622953 - 1**421-0'),(3180,'5 750 - -259895703 - 1**832-0'),(3181,'5 750 - -1302556338 - 1**1865-0'),(3182,'5 750 - -66939453 - 1**422-0'),(3183,'5 750 - -260520453 - 1**833-0'),(3184,'5 750 - -1303954509 - 1**1866-0'),(3185,'5 750 - -67256703 - 1**423-0'),(3186,'5 750 - -261145953 - 1**834-0'),(3187,'5 750 - -1305353430 - 1**1867-0'),(3188,'5 750 - -67574703 - 1**424-0'),(3189,'5 750 - -261772203 - 1**835-0'),(3190,'5 750 - -1306753101 - 1**1868-0'),(3191,'5 750 - -67893453 - 1**425-0'),(3192,'5 750 - -262399203 - 1**836-0'),(3193,'5 750 - -68212953 - 1**426-0'),(3194,'5 750 - -1308153522 - 1**1869-0'),(3195,'5 750 - -263026953 - 1**837-0'),(3196,'5 750 - -68533203 - 1**427-0'),(3197,'5 750 - -1309554693 - 1**1870-0'),(3198,'5 750 - -263655453 - 1**838-0'),(3199,'5 750 - -68854203 - 1**428-0'),(3200,'5 750 - -1310956614 - 1**1871-0'),(3201,'5 750 - -264284703 - 1**839-0'),(3202,'5 750 - -69175953 - 1**429-0'),(3203,'5 750 - -1312359285 - 1**1872-0'),(3204,'5 750 - -69498453 - 1**430-0'),(3205,'5 750 - -1313762706 - 1**1873-0'),(3206,'5 750 - -264914703 - 1**840-0'),(3207,'5 750 - -69821703 - 1**431-0'),(3208,'5 750 - -265545453 - 1**841-0'),(3209,'5 750 - -1315166877 - 1**1874-0'),(3210,'5 750 - -70145703 - 1**432-0'),(3211,'5 750 - -1316571798 - 1**1875-0'),(3212,'5 750 - -266176953 - 1**842-0'),(3213,'5 750 - -70470453 - 1**433-0'),(3214,'5 750 - -1317977469 - 1**1876-0'),(3215,'5 750 - -266809203 - 1**843-0'),(3216,'5 750 - -70795953 - 1**434-0'),(3217,'5 750 - -267442203 - 1**844-0'),(3218,'5 750 - -1319383890 - 1**1877-0'),(3219,'5 750 - -268075953 - 1**845-0'),(3220,'5 750 - -1320791061 - 1**1878-0'),(3221,'5 750 - -71122203 - 1**435-0'),(3222,'5 750 - -1322198982 - 1**1879-0'),(3223,'5 750 - -71449203 - 1**436-0'),(3224,'5 750 - -268710453 - 1**846-0'),(3225,'5 750 - -1323607653 - 1**1880-0'),(3226,'5 750 - -71776953 - 1**437-0'),(3227,'5 750 - -269345703 - 1**847-0'),(3228,'5 750 - -1325017074 - 1**1881-0'),(3229,'5 750 - -72105453 - 1**438-0'),(3230,'5 750 - -269981703 - 1**848-0'),(3231,'5 750 - -72434703 - 1**439-0'),(3232,'5 750 - -1326427245 - 1**1882-0'),(3233,'5 750 - -270618453 - 1**849-0'),(3234,'5 750 - -72764703 - 1**440-0'),(3235,'5 750 - -1327838166 - 1**1883-0'),(3236,'5 750 - -271255953 - 1**850-0'),(3237,'5 750 - -1329249837 - 1**1884-0'),(3238,'5 750 - -271894203 - 1**851-0'),(3239,'5 750 - -73095453 - 1**441-0'),(3240,'5 750 - -1330662258 - 1**1885-0'),(3241,'5 750 - -272533203 - 1**852-0'),(3242,'5 750 - -73426953 - 1**442-0'),(3243,'5 750 - -1332075429 - 1**1886-0'),(3244,'5 750 - -273172953 - 1**853-0'),(3245,'5 750 - -73759203 - 1**443-0'),(3246,'5 750 - -273813453 - 1**854-0'),(3247,'5 750 - -1333489350 - 1**1887-0'),(3248,'5 750 - -74092203 - 1**444-0'),(3249,'5 750 - -274454703 - 1**855-0'),(3250,'5 750 - -74425953 - 1**445-0'),(3251,'5 750 - -1334904021 - 1**1888-0'),(3252,'5 750 - -275096703 - 1**856-0'),(3253,'5 750 - -74760453 - 1**446-0'),(3254,'5 750 - -1336319442 - 1**1889-0'),(3255,'5 750 - -275739453 - 1**857-0'),(3256,'5 750 - -75095703 - 1**447-0'),(3257,'5 750 - -1337735613 - 1**1890-0'),(3258,'5 750 - -276382953 - 1**858-0'),(3259,'5 750 - -75431703 - 1**448-0'),(3260,'5 750 - -1339152534 - 1**1891-0'),(3261,'5 750 - -277027203 - 1**859-0'),(3262,'5 750 - -75768453 - 1**449-0'),(3263,'5 750 - -1340570205 - 1**1892-0'),(3264,'5 750 - -277672203 - 1**860-0'),(3265,'5 750 - -76105953 - 1**450-0'),(3266,'5 750 - -1341988626 - 1**1893-0'),(3267,'5 750 - -278317953 - 1**861-0'),(3268,'5 750 - -76444203 - 1**451-0'),(3269,'5 750 - -1343407797 - 1**1894-0'),(3270,'5 750 - -278964453 - 1**862-0'),(3271,'5 750 - -76783203 - 1**452-0'),(3272,'5 750 - -1344827718 - 1**1895-0'),(3273,'5 750 - -279611703 - 1**863-0'),(3274,'5 750 - -77122953 - 1**453-0'),(3275,'5 750 - -1346248389 - 1**1896-0'),(3276,'5 750 - -280259703 - 1**864-0'),(3277,'5 750 - -77463453 - 1**454-0'),(3278,'5 750 - -1347669810 - 1**1897-0'),(3279,'5 750 - -280908453 - 1**865-0'),(3280,'5 750 - -77804703 - 1**455-0'),(3281,'5 750 - -1349091981 - 1**1898-0'),(3282,'5 750 - -281557953 - 1**866-0'),(3283,'5 750 - -1350514902 - 1**1899-0'),(3284,'5 750 - -78146703 - 1**456-0'),(3285,'5 750 - -282208203 - 1**867-0'),(3286,'5 750 - -1351938573 - 1**1900-0'),(3287,'5 750 - -78489453 - 1**457-0'),(3288,'5 750 - -282859203 - 1**868-0'),(3289,'5 750 - -78832953 - 1**458-0'),(3290,'5 750 - -283510953 - 1**869-0'),(3291,'5 750 - -1353362994 - 1**1901-0'),(3292,'5 750 - -1354788165 - 1**1902-0'),(3293,'5 750 - -79177203 - 1**459-0'),(3294,'5 750 - -284163453 - 1**870-0'),(3295,'5 750 - -1356214086 - 1**1903-0'),(3296,'5 750 - -79522203 - 1**460-0'),(3297,'5 750 - -284816703 - 1**871-0'),(3298,'5 750 - -1357640757 - 1**1904-0'),(3299,'5 750 - -285470703 - 1**872-0'),(3300,'5 750 - -79867953 - 1**461-0'),(3301,'5 750 - -1359068178 - 1**1905-0'),(3302,'5 750 - -286125453 - 1**873-0'),(3303,'5 750 - -80214453 - 1**462-0'),(3304,'5 750 - -1360496349 - 1**1906-0'),(3305,'5 750 - -286780953 - 1**874-0'),(3306,'5 750 - -80561703 - 1**463-0'),(3307,'5 750 - -1361925270 - 1**1907-0'),(3308,'5 750 - -287437203 - 1**875-0'),(3309,'5 750 - -80909703 - 1**464-0'),(3310,'5 750 - -1363354941 - 1**1908-0'),(3311,NULL),(3312,'5 750 - -288094203 - 1**876-0'),(3313,'5 750 - -81258453 - 1**465-0'),(3314,NULL),(3315,'5 750 - -1364785362 - 1**1909-0'),(3316,'5 750 - -288751953 - 1**877-0'),(3317,'5 750 - -81607953 - 1**466-0'),(3318,NULL),(3319,'5 750 - -1366216533 - 1**1910-0'),(3320,'5 750 - -81958203 - 1**467-0'),(3321,NULL),(3322,'5 750 - -289410453 - 1**878-0'),(3323,'5 750 - -1367648454 - 1**1911-0'),(3324,'5 750 - -82309203 - 1**468-0'),(3325,NULL),(3326,'5 750 - -290069703 - 1**879-0'),(3327,'5 750 - -1369081125 - 1**1912-0'),(3328,'5 750 - -82660953 - 1**469-0'),(3329,NULL),(3330,'5 750 - -290729703 - 1**880-0'),(3331,'5 750 - -1370514546 - 1**1913-0'),(3332,'5 750 - -83013453 - 1**470-0'),(3333,NULL),(3334,'5 750 - -291390453 - 1**881-0'),(3335,'5 750 - -1371948717 - 1**1914-0'),(3336,'5 750 - -292051953 - 1**882-0'),(3337,NULL),(3338,'5 750 - -83366703 - 1**471-0'),(3339,'5 750 - -1373383638 - 1**1915-0'),(3340,'5 750 - -292714203 - 1**883-0'),(3341,NULL),(3342,'5 750 - -83720703 - 1**472-0'),(3343,'5 750 - -1374819309 - 1**1916-0'),(3344,'5 750 - -293377203 - 1**884-0'),(3345,NULL),(3346,'5 750 - -84075453 - 1**473-0'),(3347,'5 750 - -1376255730 - 1**1917-0'),(3348,'5 750 - -294040953 - 1**885-0'),(3349,NULL),(3350,'5 750 - -1377692901 - 1**1918-0'),(3351,'5 750 - -84430953 - 1**474-0'),(3352,'5 750 - -294705453 - 1**886-0'),(3353,NULL),(3354,'5 750 - -1379130822 - 1**1919-0'),(3355,'5 750 - -84787203 - 1**475-0'),(3356,'5 750 - -295370703 - 1**887-0'),(3357,NULL),(3358,'5 750 - -85144203 - 1**476-0'),(3359,'5 750 - -1380569493 - 1**1920-0'),(3360,'5 750 - -296036703 - 1**888-0'),(3361,NULL),(3362,'5 750 - -85501953 - 1**477-0'),(3363,'5 750 - -296703453 - 1**889-0'),(3364,'5 750 - -1382008914 - 1**1921-0'),(3365,NULL),(3366,'5 750 - -85860453 - 1**478-0'),(3367,'5 750 - -297370953 - 1**890-0'),(3368,'5 750 - -1383449085 - 1**1922-0'),(3369,NULL),(3370,'5 750 - -86219703 - 1**479-0'),(3371,'5 750 - -298039203 - 1**891-0'),(3372,NULL),(3373,'5 750 - -1384890006 - 1**1923-0'),(3374,'5 750 - -86579703 - 1**480-0'),(3375,'5 750 - -298708203 - 1**892-0'),(3376,NULL),(3377,'5 750 - -1386331677 - 1**1924-0'),(3378,'5 750 - -86940453 - 1**481-0'),(3379,'5 750 - -1387774098 - 1**1925-0'),(3380,NULL),(3381,'5 750 - -299377953 - 1**893-0'),(3382,'5 750 - -87301953 - 1**482-0'),(3383,NULL),(3384,'5 750 - -300048453 - 1**894-0'),(3385,'5 750 - -1389217269 - 1**1926-0'),(3386,'5 750 - -87664203 - 1**483-0'),(3387,'5 750 - -300719703 - 1**895-0'),(3388,NULL),(3389,'5 750 - -1390661190 - 1**1927-0'),(3390,'5 750 - -88027203 - 1**484-0'),(3391,'5 750 - -301391703 - 1**896-0'),(3392,NULL),(3393,'5 750 - -1392105861 - 1**1928-0'),(3394,NULL),(3395,'5 750 - -88390953 - 1**485-0'),(3396,'5 750 - -302064453 - 1**897-0'),(3397,'5 750 - -1393551282 - 1**1929-0'),(3398,'5 750 - -88755453 - 1**486-0'),(3399,'5 750 - -302737953 - 1**898-0'),(3400,NULL),(3401,'5 750 - -1394997453 - 1**1930-0'),(3402,'5 750 - -303412203 - 1**899-0'),(3403,'5 750 - -89120703 - 1**487-0'),(3404,NULL),(3405,'5 750 - -1396444374 - 1**1931-0'),(3406,'5 750 - -304087203 - 1**900-0'),(3407,'5 750 - -89486703 - 1**488-0'),(3408,NULL),(3409,'5 750 - -1397892045 - 1**1932-0'),(3410,'5 750 - -304762953 - 1**901-0'),(3411,'5 750 - -89853453 - 1**489-0'),(3412,'5 750 - -305439453 - 1**902-0'),(3413,NULL),(3414,'5 750 - -1399340466 - 1**1933-0'),(3415,'5 750 - -90220953 - 1**490-0'),(3416,'5 750 - -306116703 - 1**903-0'),(3417,NULL),(3418,'5 750 - -1400789637 - 1**1934-0'),(3419,NULL),(3420,'5 750 - -90589203 - 1**491-0'),(3421,'5 750 - -306794703 - 1**904-0'),(3422,'5 750 - -1402239558 - 1**1935-0'),(3423,NULL),(3424,'5 750 - -307473453 - 1**905-0'),(3425,'5 750 - -90958203 - 1**492-0'),(3426,'5 750 - -1403690229 - 1**1936-0'),(3427,NULL),(3428,'5 750 - -308152953 - 1**906-0'),(3429,'5 750 - -91327953 - 1**493-0'),(3430,'5 750 - -1405141650 - 1**1937-0'),(3431,NULL),(3432,'5 750 - -308833203 - 1**907-0'),(3433,'5 750 - -1406593821 - 1**1938-0'),(3434,'5 750 - -91698453 - 1**494-0'),(3435,NULL),(3436,'5 750 - -309514203 - 1**908-0'),(3437,'5 750 - -1408046742 - 1**1939-0'),(3438,'5 750 - -92069703 - 1**495-0'),(3439,NULL),(3440,'5 750 - -310195953 - 1**909-0'),(3441,'5 750 - -1409500413 - 1**1940-0'),(3442,'5 750 - -92441703 - 1**496-0'),(3443,'5 750 - -310878453 - 1**910-0'),(3444,NULL),(3445,'5 750 - -1410954834 - 1**1941-0'),(3446,'5 750 - -92814453 - 1**497-0'),(3447,'5 750 - -311561703 - 1**911-0'),(3448,NULL),(3449,'5 750 - -1412410005 - 1**1942-0'),(3450,'5 750 - -93187953 - 1**498-0'),(3451,'5 750 - -312245703 - 1**912-0'),(3452,NULL),(3453,'5 750 - -1413865926 - 1**1943-0'),(3454,'5 750 - -93562203 - 1**499-0'),(3455,NULL),(3456,'5 750 - -312930453 - 1**913-0'),(3457,'5 750 - -1415322597 - 1**1944-0'),(3458,'5 750 - -93937203 - 1**500-0'),(3459,'5 750 - -313615953 - 1**914-0'),(3460,NULL),(3461,'5 750 - -1416780018 - 1**1945-0'),(3462,'5 750 - -94312953 - 1**501-0'),(3463,'5 750 - -314302203 - 1**915-0'),(3464,NULL),(3465,'5 750 - -1418238189 - 1**1946-0'),(3466,NULL),(3467,'5 750 - -94689453 - 1**502-0'),(3468,'5 750 - -314989203 - 1**916-0'),(3469,'5 750 - -1419697110 - 1**1947-0'),(3470,NULL),(3471,'5 750 - -95066703 - 1**503-0'),(3472,'5 750 - -315676953 - 1**917-0'),(3473,'5 750 - -1421156781 - 1**1948-0'),(3474,NULL),(3475,'5 750 - -95444703 - 1**504-0'),(3476,'5 750 - -316365453 - 1**918-0'),(3477,'5 750 - -1422617202 - 1**1949-0'),(3478,NULL),(3479,'5 750 - -95823453 - 1**505-0'),(3480,'5 750 - -317054703 - 1**919-0'),(3481,'5 750 - -1424078373 - 1**1950-0'),(3482,NULL),(3483,'5 750 - -96202953 - 1**506-0'),(3484,'5 750 - -1425540294 - 1**1951-0'),(3485,'5 750 - -317744703 - 1**920-0'),(3486,NULL),(3487,'5 750 - -96583203 - 1**507-0'),(3488,'5 750 - -1427002965 - 1**1952-0'),(3489,'5 750 - -318435453 - 1**921-0'),(3490,NULL),(3491,'5 750 - -96964203 - 1**508-0'),(3492,'5 750 - -1428466386 - 1**1953-0'),(3493,'5 750 - -319126953 - 1**922-0'),(3494,NULL),(3495,'5 750 - -97345953 - 1**509-0'),(3496,'5 750 - -1429930557 - 1**1954-0'),(3497,'5 750 - -1431395478 - 1**1955-0'),(3498,NULL),(3499,'5 750 - -97728453 - 1**510-0'),(3500,'5 750 - -319819203 - 1**923-0'),(3501,NULL),(3502,'5 750 - -320512203 - 1**924-0'),(3503,'5 750 - -1432861149 - 1**1956-0'),(3504,'5 750 - -98111703 - 1**511-0'),(3505,NULL),(3506,'5 750 - -321205953 - 1**925-0'),(3507,'5 750 - -1434327570 - 1**1957-0'),(3508,'5 750 - -98495703 - 1**512-0'),(3509,NULL),(3510,'5 750 - -321900453 - 1**926-0'),(3511,'5 750 - -1435794741 - 1**1958-0'),(3512,'5 750 - -98880453 - 1**513-0'),(3513,NULL),(3514,'5 750 - -322595703 - 1**927-0'),(3515,'5 750 - -1437262662 - 1**1959-0'),(3516,'5 750 - -99265953 - 1**514-0'),(3517,NULL),(3518,'5 750 - -323291703 - 1**928-0'),(3519,'5 750 - -1438731333 - 1**1960-0'),(3520,'5 750 - -99652203 - 1**515-0'),(3521,'5 750 - -323988453 - 1**929-0'),(3522,'5 750 - -1440200754 - 1**1961-0'),(3523,NULL),(3524,'5 750 - -100039203 - 1**516-0'),(3525,'5 750 - -324685953 - 1**930-0'),(3526,NULL),(3527,'5 750 - -1441670925 - 1**1962-0'),(3528,'5 750 - -100426953 - 1**517-0'),(3529,'5 750 - -325384203 - 1**931-0'),(3530,'5 750 - -100815453 - 1**518-0'),(3531,'5 750 - -1443141846 - 1**1963-0'),(3532,'5 750 - -326083203 - 1**932-0'),(3533,NULL),(3534,'5 750 - -1444613517 - 1**1964-0'),(3535,'5 750 - -101204703 - 1**519-0'),(3536,NULL),(3537,'5 750 - -326782953 - 1**933-0'),(3538,'5 750 - -101594703 - 1**520-0'),(3539,NULL),(3540,'5 750 - -1446085938 - 1**1965-0'),(3541,'5 750 - -327483453 - 1**934-0'),(3542,NULL),(3543,'5 750 - -1447559109 - 1**1966-0'),(3544,'5 750 - -101985453 - 1**521-0'),(3545,'5 750 - -328184703 - 1**935-0'),(3546,NULL),(3547,'5 750 - -1449033030 - 1**1967-0'),(3548,'5 750 - -102376953 - 1**522-0'),(3549,'5 750 - -328886703 - 1**936-0'),(3550,NULL),(3551,'5 750 - -1450507701 - 1**1968-0'),(3552,'5 750 - -102769203 - 1**523-0'),(3553,'5 750 - -329589453 - 1**937-0'),(3554,NULL),(3555,'5 750 - -1451983122 - 1**1969-0'),(3556,'5 750 - -103162203 - 1**524-0'),(3557,'5 750 - -330292953 - 1**938-0'),(3558,NULL),(3559,'5 750 - -1453459293 - 1**1970-0'),(3560,NULL),(3561,'5 750 - -330997203 - 1**939-0'),(3562,'5 750 - -103555953 - 1**525-0'),(3563,'5 750 - -1454936214 - 1**1971-0'),(3564,NULL),(3565,'5 750 - -1456413885 - 1**1972-0'),(3566,'5 750 - -331702203 - 1**940-0'),(3567,'5 750 - -103950453 - 1**526-0'),(3568,NULL),(3569,'5 750 - -1457892306 - 1**1973-0'),(3570,'5 750 - -332407953 - 1**941-0'),(3571,'5 750 - -104345703 - 1**527-0'),(3572,NULL),(3573,'5 750 - -104741703 - 1**528-0'),(3574,'5 750 - -333114453 - 1**942-0'),(3575,'5 750 - -1459371477 - 1**1974-0'),(3576,NULL),(3577,'5 750 - -105138453 - 1**529-0'),(3578,'5 750 - -333821703 - 1**943-0'),(3579,'5 750 - -1460851398 - 1**1975-0'),(3580,'5 750 - -105535953 - 1**530-0'),(3581,NULL),(3582,'5 750 - -334529703 - 1**944-0'),(3583,'5 750 - -1462332069 - 1**1976-0'),(3584,NULL),(3585,'5 750 - -105934203 - 1**531-0'),(3586,'5 750 - -335238453 - 1**945-0'),(3587,'5 750 - -1463813490 - 1**1977-0'),(3588,NULL),(3589,'5 750 - -106333203 - 1**532-0'),(3590,'5 750 - -335947953 - 1**946-0'),(3591,'5 750 - -1465295661 - 1**1978-0'),(3592,NULL),(3593,'5 750 - -106732953 - 1**533-0'),(3594,'5 750 - -336658203 - 1**947-0'),(3595,'5 750 - -1466778582 - 1**1979-0'),(3596,'5 750 - -337369203 - 1**948-0'),(3597,NULL),(3598,'5 750 - -107133453 - 1**534-0'),(3599,NULL),(3600,'5 750 - -338080953 - 1**949-0'),(3601,'5 750 - -107534703 - 1**535-0'),(3602,'5 750 - -1468262253 - 1**1980-0'),(3603,NULL),(3604,'5 750 - -338793453 - 1**950-0'),(3605,'5 750 - -107936703 - 1**536-0'),(3606,'5 750 - -1469746674 - 1**1981-0'),(3607,NULL),(3608,'5 750 - -339506703 - 1**951-0'),(3609,'5 750 - -1471231845 - 1**1982-0'),(3610,'5 750 - -108339453 - 1**537-0'),(3611,NULL),(3612,'5 750 - -340220703 - 1**952-0'),(3613,'5 750 - -1472717766 - 1**1983-0'),(3614,'5 750 - -108742953 - 1**538-0'),(3615,NULL),(3616,'5 750 - -340935453 - 1**953-0'),(3617,'5 750 - -1474204437 - 1**1984-0'),(3618,'5 750 - -109147203 - 1**539-0'),(3619,NULL),(3620,'5 750 - -341650953 - 1**954-0'),(3621,'5 750 - -109552203 - 1**540-0'),(3622,NULL),(3623,'5 750 - -1475691858 - 1**1985-0'),(3624,NULL),(3625,'5 750 - -342367203 - 1**955-0'),(3626,'5 750 - -109957953 - 1**541-0'),(3627,'5 750 - -1477180029 - 1**1986-0'),(3628,'5 750 - -343084203 - 1**956-0'),(3629,'5 750 - -110364453 - 1**542-0'),(3630,NULL),(3631,'5 750 - -1478668950 - 1**1987-0'),(3632,'5 750 - -110771703 - 1**543-0'),(3633,NULL),(3634,'5 750 - -1480158621 - 1**1988-0'),(3635,'5 750 - -343801953 - 1**957-0'),(3636,NULL),(3637,'5 750 - -111179703 - 1**544-0'),(3638,'5 750 - -344520453 - 1**958-0'),(3639,'5 750 - -1481649042 - 1**1989-0'),(3640,NULL),(3641,'5 750 - -111588453 - 1**545-0'),(3642,'5 750 - -345239703 - 1**959-0'),(3643,'5 750 - -1483140213 - 1**1990-0'),(3644,'5 750 - -111997953 - 1**546-0'),(3645,NULL),(3646,'5 750 - -345959703 - 1**960-0'),(3647,'5 750 - -1484632134 - 1**1991-0'),(3648,NULL),(3649,'5 750 - -346680453 - 1**961-0'),(3650,'5 750 - -1486124805 - 1**1992-0'),(3651,'5 750 - -112408203 - 1**547-0'),(3652,NULL),(3653,'5 750 - -347401953 - 1**962-0'),(3654,'5 750 - -1487618226 - 1**1993-0'),(3655,'5 750 - -112819203 - 1**548-0'),(3656,NULL),(3657,'5 750 - -348124203 - 1**963-0'),(3658,'5 750 - -1489112397 - 1**1994-0'),(3659,'5 750 - -113230953 - 1**549-0'),(3660,'5 750 - -348847203 - 1**964-0'),(3661,NULL),(3662,'5 750 - -1490607318 - 1**1995-0'),(3663,'5 750 - -113643453 - 1**550-0'),(3664,NULL),(3665,'5 750 - -349570953 - 1**965-0'),(3666,'5 750 - -1492102989 - 1**1996-0'),(3667,'5 750 - -114056703 - 1**551-0'),(3668,NULL),(3669,'5 750 - -350295453 - 1**966-0'),(3670,'5 750 - -1493599410 - 1**1997-0'),(3671,'5 750 - -114470703 - 1**552-0'),(3672,'5 750 - -351020703 - 1**967-0'),(3673,'5 750 - -1495096581 - 1**1998-0'),(3674,NULL),(3675,'5 750 - -114885453 - 1**553-0'),(3676,'5 750 - -351746703 - 1**968-0'),(3677,'5 750 - -1496594502 - 1**1999-0'),(3678,NULL),(3679,'5 750 - -115300953 - 1**554-0'),(3680,'5 750 - -352473453 - 1**969-0'),(3681,'5 750 - -1498093173 - 1**2000-0'),(3682,NULL),(3683,'5 750 - -115717203 - 1**555-0'),(3684,'5 750 - -353200953 - 1**970-0'),(3685,'5 750 - -1499592594 - 1**2001-0'),(3686,NULL),(3687,'5 750 - -116134203 - 1**556-0'),(3688,'5 750 - -353929203 - 1**971-0'),(3689,'5 750 - -1501092765 - 1**2002-0'),(3690,NULL),(3691,'5 750 - -116551953 - 1**557-0'),(3692,'5 750 - -1502593686 - 1**2003-0'),(3693,NULL),(3694,'5 750 - -354658203 - 1**972-0'),(3695,'5 750 - -116970453 - 1**558-0'),(3696,'5 750 - -355387953 - 1**973-0'),(3697,NULL),(3698,'5 750 - -1504095357 - 1**2004-0'),(3699,'5 750 - -117389703 - 1**559-0'),(3700,NULL),(3701,'5 750 - -356118453 - 1**974-0'),(3702,'5 750 - -1505597778 - 1**2005-0'),(3703,'5 750 - -117809703 - 1**560-0'),(3704,NULL),(3705,'5 750 - -356849703 - 1**975-0'),(3706,'5 750 - -1507100949 - 1**2006-0'),(3707,'5 750 - -118230453 - 1**561-0'),(3708,NULL),(3709,'5 750 - -357581703 - 1**976-0'),(3710,'5 750 - -1508604870 - 1**2007-0'),(3711,'5 750 - -118651953 - 1**562-0'),(3712,NULL),(3713,'5 750 - -1510109541 - 1**2008-0'),(3714,'5 750 - -358314453 - 1**977-0'),(3715,'5 750 - -119074203 - 1**563-0'),(3716,NULL),(3717,'5 750 - -359047953 - 1**978-0'),(3718,'5 750 - -1511614962 - 1**2009-0'),(3719,'5 750 - -119497203 - 1**564-0'),(3720,NULL),(3721,'5 750 - -1513121133 - 1**2010-0'),(3722,'5 750 - -359782203 - 1**979-0'),(3723,'5 750 - -119920953 - 1**565-0'),(3724,NULL),(3725,'5 750 - -1514628054 - 1**2011-0'),(3726,'5 750 - -360517203 - 1**980-0'),(3727,'5 750 - -120345453 - 1**566-0'),(3728,NULL),(3729,'5 750 - -361252953 - 1**981-0'),(3730,'5 750 - -1516135725 - 1**2012-0'),(3731,NULL),(3732,'5 750 - -120770703 - 1**567-0'),(3733,'5 750 - -361989453 - 1**982-0'),(3734,'5 750 - -1517644146 - 1**2013-0'),(3735,'5 750 - -121196703 - 1**568-0'),(3736,NULL),(3737,'5 750 - -362726703 - 1**983-0'),(3738,'5 750 - -1519153317 - 1**2014-0'),(3739,NULL),(3740,'5 750 - -363464703 - 1**984-0'),(3741,'5 750 - -1520663238 - 1**2015-0'),(3742,'5 750 - -121623453 - 1**569-0'),(3743,NULL),(3744,'5 750 - -364203453 - 1**985-0'),(3745,'5 750 - -1522173909 - 1**2016-0'),(3746,'5 750 - -122050953 - 1**570-0'),(3747,NULL),(3748,'5 750 - -364942953 - 1**986-0'),(3749,'5 750 - -1523685330 - 1**2017-0'),(3750,'5 750 - -122479203 - 1**571-0'),(3751,NULL),(3752,'5 750 - -365683203 - 1**987-0'),(3753,'5 750 - -1525197501 - 1**2018-0'),(3754,'5 750 - -122908203 - 1**572-0'),(3755,NULL),(3756,'5 750 - -1526710422 - 1**2019-0'),(3757,'5 750 - -366424203 - 1**988-0'),(3758,'5 750 - -123337953 - 1**573-0'),(3759,NULL),(3760,'5 750 - -1528224093 - 1**2020-0'),(3761,'5 750 - -367165953 - 1**989-0'),(3762,'5 750 - -123768453 - 1**574-0'),(3763,NULL),(3764,'5 750 - -1529738514 - 1**2021-0'),(3765,'5 750 - -367908453 - 1**990-0'),(3766,'5 750 - -124199703 - 1**575-0'),(3767,NULL),(3768,'5 750 - -368651703 - 1**991-0'),(3769,'5 750 - -1531253685 - 1**2022-0'),(3770,'5 750 - -124631703 - 1**576-0'),(3771,NULL),(3772,'5 750 - -369395703 - 1**992-0'),(3773,'5 750 - -1532769606 - 1**2023-0'),(3774,'5 750 - -125064453 - 1**577-0'),(3775,NULL),(3776,'5 750 - -370140453 - 1**993-0'),(3777,'5 750 - -1534286277 - 1**2024-0'),(3778,NULL),(3779,'5 750 - -125497953 - 1**578-0'),(3780,'5 750 - -370885953 - 1**994-0'),(3781,'5 750 - -1535803698 - 1**2025-0'),(3782,'5 750 - -125932203 - 1**579-0'),(3783,NULL),(3784,'5 750 - -371632203 - 1**995-0'),(3785,'5 750 - -1537321869 - 1**2026-0'),(3786,NULL),(3787,'5 750 - -126367203 - 1**580-0'),(3788,'5 750 - -372379203 - 1**996-0'),(3789,'5 750 - -1538840790 - 1**2027-0'),(3790,NULL),(3791,'5 750 - -126802953 - 1**581-0'),(3792,'5 750 - -373126953 - 1**997-0'),(3793,'5 750 - -1540360461 - 1**2028-0'),(3794,NULL),(3795,'5 750 - -127239453 - 1**582-0'),(3796,'5 750 - -373875453 - 1**998-0'),(3797,'5 750 - -127676703 - 1**583-0'),(3798,NULL),(3799,'5 750 - -1541880882 - 1**2029-0'),(3800,'5 750 - -374624703 - 1**999-0'),(3801,NULL),(3802,'5 750 - -1543402053 - 1**2030-0'),(3803,'5 750 - -128114703 - 1**584-0'),(3804,'5 750 - -375374703 - 1**1000-0'),(3805,'5 750 - -1544923974 - 1**2031-0'),(3806,'5 750 - -128553453 - 1**585-0'),(3807,NULL),(3808,'5 750 - -376125453 - 1**1001-0'),(3809,'5 750 - -128992953 - 1**586-0'),(3810,'5 750 - -1546446645 - 1**2032-0'),(3811,NULL),(3812,'5 750 - -376876953 - 1**1002-0'),(3813,'5 750 - -129433203 - 1**587-0'),(3814,'5 750 - -1547970066 - 1**2033-0'),(3815,'5 750 - -377629203 - 1**1003-0'),(3816,NULL),(3817,'5 750 - -129874203 - 1**588-0'),(3818,'5 750 - -1549494237 - 1**2034-0'),(3819,NULL),(3820,'5 750 - -378382203 - 1**1004-0'),(3821,'5 750 - -1551019158 - 1**2035-0'),(3822,'5 750 - -130315953 - 1**589-0'),(3823,NULL),(3824,'5 750 - -379135953 - 1**1005-0'),(3825,'5 750 - -1552544829 - 1**2036-0'),(3826,'5 750 - -130758453 - 1**590-0'),(3827,NULL),(3828,'5 750 - -131201703 - 1**591-0'),(3829,'5 750 - -1554071250 - 1**2037-0'),(3830,'5 750 - -379890453 - 1**1006-0'),(3831,NULL),(3832,'5 750 - -131645703 - 1**592-0'),(3833,'5 750 - -1555598421 - 1**2038-0'),(3834,'5 750 - -380645703 - 1**1007-0'),(3835,NULL),(3836,'5 750 - -1557126342 - 1**2039-0'),(3837,'5 750 - -132090453 - 1**593-0'),(3838,'5 750 - -381401703 - 1**1008-0'),(3839,NULL),(3840,'5 750 - -132535953 - 1**594-0'),(3841,'5 750 - -1558655013 - 1**2040-0'),(3842,'5 750 - -382158453 - 1**1009-0'),(3843,NULL),(3844,'5 750 - -1560184434 - 1**2041-0'),(3845,'5 750 - -382915953 - 1**1010-0'),(3846,'5 750 - -132982203 - 1**595-0'),(3847,NULL),(3848,'5 750 - -1561714605 - 1**2042-0'),(3849,'5 750 - -133429203 - 1**596-0'),(3850,'5 750 - -383674203 - 1**1011-0'),(3851,NULL),(3852,'5 750 - -1563245526 - 1**2043-0'),(3853,'5 750 - -384433203 - 1**1012-0'),(3854,'5 750 - -133876953 - 1**597-0'),(3855,NULL),(3856,'5 750 - -1564777197 - 1**2044-0'),(3857,'5 750 - -385192953 - 1**1013-0'),(3858,NULL),(3859,'5 750 - -134325453 - 1**598-0'),(3860,'5 750 - -1566309618 - 1**2045-0'),(3861,'5 750 - -385953453 - 1**1014-0'),(3862,NULL),(3863,'5 750 - -134774703 - 1**599-0'),(3864,'5 750 - -1567842789 - 1**2046-0'),(3865,'5 750 - -386714703 - 1**1015-0'),(3866,NULL),(3867,'5 750 - -1569376710 - 1**2047-0'),(3868,'5 750 - -387476703 - 1**1016-0'),(3869,'5 750 - -135224703 - 1**600-0'),(3870,NULL),(3871,'5 750 - -1570911381 - 1**2048-0'),(3872,'5 750 - -135675453 - 1**601-0'),(3873,'5 750 - -388239453 - 1**1017-0'),(3874,NULL),(3875,'5 750 - -1572446802 - 1**2049-0'),(3876,'5 750 - -136126953 - 1**602-0'),(3877,'5 750 - -389002953 - 1**1018-0'),(3878,'5 750 - -1573982973 - 1**2050-0'),(3879,NULL),(3880,'5 750 - -136579203 - 1**603-0'),(3881,'5 750 - -389767203 - 1**1019-0'),(3882,NULL),(3883,'5 750 - -1575519894 - 1**2051-0'),(3884,'5 750 - -390532203 - 1**1020-0'),(3885,'5 750 - -137032203 - 1**604-0'),(3886,NULL),(3887,'5 750 - -1577057565 - 1**2052-0'),(3888,'5 750 - -391297953 - 1**1021-0'),(3889,'5 750 - -137485953 - 1**605-0'),(3890,NULL),(3891,'5 750 - -1578595986 - 1**2053-0'),(3892,'5 750 - -137940453 - 1**606-0'),(3893,'5 750 - -392064453 - 1**1022-0'),(3894,NULL),(3895,'5 750 - -1580135157 - 1**2054-0'),(3896,'5 750 - -392831703 - 1**1023-0'),(3897,NULL),(3898,'5 750 - -138395703 - 1**607-0'),(3899,'5 750 - -1581675078 - 1**2055-0'),(3900,NULL),(3901,'5 750 - -138851703 - 1**608-0'),(3902,'5 750 - -393599703 - 1**1024-0'),(3903,'5 750 - -1583215749 - 1**2056-0'),(3904,NULL),(3905,'5 750 - -139308453 - 1**609-0'),(3906,'5 750 - -394368453 - 1**1025-0'),(3907,'5 750 - -1584757170 - 1**2057-0'),(3908,NULL),(3909,'5 750 - -139765953 - 1**610-0'),(3910,'5 750 - -1586299341 - 1**2058-0'),(3911,'5 750 - -395137953 - 1**1026-0'),(3912,'5 750 - -140224203 - 1**611-0'),(3913,NULL),(3914,'5 750 - -1587842262 - 1**2059-0'),(3915,'5 750 - -395908203 - 1**1027-0'),(3916,'5 750 - -140683203 - 1**612-0'),(3917,NULL),(3918,'5 750 - -1589385933 - 1**2060-0'),(3919,'5 750 - -396679203 - 1**1028-0'),(3920,'5 750 - -141142953 - 1**613-0'),(3921,NULL),(3922,'5 750 - -1590930354 - 1**2061-0'),(3923,'5 750 - -141603453 - 1**614-0'),(3924,'5 750 - -397450953 - 1**1029-0'),(3925,NULL),(3926,'5 750 - -1592475525 - 1**2062-0'),(3927,'5 750 - -398223453 - 1**1030-0'),(3928,'5 750 - -142064703 - 1**615-0'),(3929,NULL),(3930,'5 750 - -398996703 - 1**1031-0'),(3931,'5 750 - -1594021446 - 1**2063-0'),(3932,'5 750 - -142526703 - 1**616-0'),(3933,NULL),(3934,'5 750 - -142989453 - 1**617-0'),(3935,'5 750 - -399770703 - 1**1032-0'),(3936,'5 750 - -1595568117 - 1**2064-0'),(3937,'5 750 - -1597115538 - 1**2065-0'),(3938,'5 750 - -143452953 - 1**618-0'),(3939,'5 750 - -400545453 - 1**1033-0'),(3940,NULL),(3941,'5 750 - -1598663709 - 1**2066-0'),(3942,NULL),(3943,'5 750 - -143917203 - 1**619-0'),(3944,'5 750 - -401320953 - 1**1034-0'),(3945,'5 750 - -1600212630 - 1**2067-0'),(3946,'5 750 - -144382203 - 1**620-0'),(3947,NULL),(3948,'5 750 - -402097203 - 1**1035-0'),(3949,'5 750 - -1601762301 - 1**2068-0'),(3950,NULL),(3951,'5 750 - -144847953 - 1**621-0'),(3952,'5 750 - -402874203 - 1**1036-0'),(3953,'5 750 - -1603312722 - 1**2069-0'),(3954,NULL),(3955,'5 750 - -145314453 - 1**622-0'),(3956,'5 750 - -403651953 - 1**1037-0'),(3957,'5 750 - -1604863893 - 1**2070-0'),(3958,NULL),(3959,'5 750 - -145781703 - 1**623-0'),(3960,'5 750 - -404430453 - 1**1038-0'),(3961,'5 750 - -1606415814 - 1**2071-0'),(3962,NULL),(3963,'5 750 - -405209703 - 1**1039-0'),(3964,'5 750 - -146249703 - 1**624-0'),(3965,'5 750 - -1607968485 - 1**2072-0'),(3966,NULL),(3967,NULL),(3968,'5 750 - -405989703 - 1**1040-0'),(3969,'5 750 - -146718453 - 1**625-0'),(3970,'5 750 - -1609521906 - 1**2073-0'),(3971,NULL),(3972,'5 750 - -406770453 - 1**1041-0'),(3973,'5 750 - -147187953 - 1**626-0'),(3974,'5 750 - -1611076077 - 1**2074-0'),(3975,NULL),(3976,'5 750 - -407551953 - 1**1042-0'),(3977,'5 750 - -147658203 - 1**627-0'),(3978,'5 750 - -1612630998 - 1**2075-0'),(3979,NULL),(3980,'5 750 - -408334203 - 1**1043-0'),(3981,'5 750 - -148129203 - 1**628-0'),(3982,'5 750 - -1614186669 - 1**2076-0'),(3983,NULL),(3984,'5 750 - -409117203 - 1**1044-0'),(3985,'5 750 - -148600953 - 1**629-0'),(3986,NULL),(3987,'5 750 - -1615743090 - 1**2077-0'),(3988,'5 750 - -409900953 - 1**1045-0'),(3989,'5 750 - -1617300261 - 1**2078-0'),(3990,'5 750 - -149073453 - 1**630-0'),(3991,NULL),(3992,'5 750 - -410685453 - 1**1046-0'),(3993,'5 750 - -149546703 - 1**631-0'),(3994,NULL),(3995,'5 750 - -1618858182 - 1**2079-0'),(3996,'5 750 - -150020703 - 1**632-0'),(3997,NULL),(3998,'5 750 - -411470703 - 1**1047-0'),(3999,'5 750 - -1620416853 - 1**2080-0'),(4000,'5 750 - -150495453 - 1**633-0'),(4001,NULL),(4002,'5 750 - -412256703 - 1**1048-0'),(4003,'5 750 - -150970953 - 1**634-0'),(4004,'5 750 - -1621976274 - 1**2081-0'),(4005,NULL),(4006,'5 750 - -413043453 - 1**1049-0'),(4007,'5 750 - -1623536445 - 1**2082-0'),(4008,'5 750 - -151447203 - 1**635-0'),(4009,NULL),(4010,'5 750 - -413830953 - 1**1050-0'),(4011,'5 750 - -1625097366 - 1**2083-0'),(4012,NULL),(4013,'5 750 - -151924203 - 1**636-0'),(4014,'5 750 - -414619203 - 1**1051-0'),(4015,'5 750 - -1626659037 - 1**2084-0'),(4016,'5 750 - -152401953 - 1**637-0'),(4017,NULL),(4018,'5 750 - -415408203 - 1**1052-0'),(4019,'5 750 - -152880453 - 1**638-0'),(4020,NULL),(4021,'5 750 - -1628221458 - 1**2085-0'),(4022,'5 750 - -416197953 - 1**1053-0'),(4023,'5 750 - -1629784629 - 1**2086-0'),(4024,NULL),(4025,'5 750 - -153359703 - 1**639-0'),(4026,'5 750 - -416988453 - 1**1054-0'),(4027,'5 750 - -1631348550 - 1**2087-0'),(4028,NULL),(4029,'5 750 - -153839703 - 1**640-0'),(4030,'5 750 - -417779703 - 1**1055-0'),(4031,'5 750 - -1632913221 - 1**2088-0'),(4032,'5 750 - -154320453 - 1**641-0'),(4033,NULL),(4034,'5 750 - -1634478642 - 1**2089-0'),(4035,'5 750 - -418571703 - 1**1056-0'),(4036,'5 750 - -154801953 - 1**642-0'),(4037,NULL),(4038,'5 750 - -419364453 - 1**1057-0'),(4039,'5 750 - -1636044813 - 1**2090-0'),(4040,'5 750 - -155284203 - 1**643-0'),(4041,NULL),(4042,'5 750 - -420157953 - 1**1058-0'),(4043,'5 750 - -1637611734 - 1**2091-0'),(4044,'5 750 - -155767203 - 1**644-0'),(4045,NULL),(4046,'5 750 - -420952203 - 1**1059-0'),(4047,'5 750 - -1639179405 - 1**2092-0'),(4048,'5 750 - -421747203 - 1**1060-0'),(4049,NULL),(4050,'5 750 - -156250953 - 1**645-0'),(4051,'5 750 - -1640747826 - 1**2093-0'),(4052,NULL),(4053,'5 750 - -422542953 - 1**1061-0'),(4054,'5 750 - -156735453 - 1**646-0'),(4055,'5 750 - -1642316997 - 1**2094-0'),(4056,NULL),(4057,'5 750 - -423339453 - 1**1062-0'),(4058,'5 750 - -157220703 - 1**647-0'),(4059,'5 750 - -1643886918 - 1**2095-0'),(4060,NULL),(4061,'5 750 - -424136703 - 1**1063-0'),(4062,'5 750 - -157706703 - 1**648-0'),(4063,'5 750 - -1645457589 - 1**2096-0'),(4064,NULL),(4065,'5 750 - -424934703 - 1**1064-0'),(4066,'5 750 - -158193453 - 1**649-0'),(4067,'5 750 - -1647029010 - 1**2097-0'),(4068,NULL),(4069,'5 750 - -425733453 - 1**1065-0'),(4070,'5 750 - -158680953 - 1**650-0'),(4071,'5 750 - -1648601181 - 1**2098-0'),(4072,NULL),(4073,'5 750 - -426532953 - 1**1066-0'),(4074,'5 750 - -159169203 - 1**651-0'),(4075,'5 750 - -1650174102 - 1**2099-0'),(4076,'5 750 - -427333203 - 1**1067-0'),(4077,NULL),(4078,'5 750 - -159658203 - 1**652-0'),(4079,'5 750 - -1651747773 - 1**2100-0'),(4080,'5 750 - -428134203 - 1**1068-0'),(4081,NULL),(4082,'5 750 - -1653322194 - 1**2101-0'),(4083,'5 750 - -160147953 - 1**653-0'),(4084,NULL),(4085,'5 750 - -428935953 - 1**1069-0'),(4086,'5 750 - -160638453 - 1**654-0'),(4087,'5 750 - -1654897365 - 1**2102-0'),(4088,'5 750 - -429738453 - 1**1070-0'),(4089,NULL),(4090,'5 750 - -161129703 - 1**655-0'),(4091,'5 750 - -1656473286 - 1**2103-0'),(4092,'5 750 - -430541703 - 1**1071-0'),(4093,'5 750 - -161621703 - 1**656-0'),(4094,NULL),(4095,'5 750 - -1658049957 - 1**2104-0'),(4096,'5 750 - -431345703 - 1**1072-0'),(4097,'5 750 - -162114453 - 1**657-0'),(4098,NULL),(4099,'5 750 - -1659627378 - 1**2105-0'),(4100,'5 750 - -162607953 - 1**658-0'),(4101,NULL),(4102,'5 750 - -432150453 - 1**1073-0'),(4103,'5 750 - -1661205549 - 1**2106-0'),(4104,'5 750 - -163102203 - 1**659-0'),(4105,NULL),(4106,'5 750 - -432955953 - 1**1074-0'),(4107,'5 750 - -1662784470 - 1**2107-0'),(4108,'5 750 - -163597203 - 1**660-0'),(4109,NULL),(4110,'5 750 - -433762203 - 1**1075-0'),(4111,'5 750 - -1664364141 - 1**2108-0'),(4112,'5 750 - -164092953 - 1**661-0'),(4113,NULL),(4114,'5 750 - -434569203 - 1**1076-0'),(4115,'5 750 - -1665944562 - 1**2109-0'),(4116,'5 750 - -164589453 - 1**662-0'),(4117,'5 750 - -435376953 - 1**1077-0'),(4118,NULL),(4119,'5 750 - -1667525733 - 1**2110-0'),(4120,'5 750 - -165086703 - 1**663-0'),(4121,NULL),(4122,'5 750 - -436185453 - 1**1078-0'),(4123,'5 750 - -1669107654 - 1**2111-0'),(4124,'5 750 - -165584703 - 1**664-0'),(4125,NULL),(4126,'5 750 - -436994703 - 1**1079-0'),(4127,'5 750 - -1670690325 - 1**2112-0'),(4128,'5 750 - -166083453 - 1**665-0'),(4129,NULL),(4130,'5 750 - -437804703 - 1**1080-0'),(4131,'5 750 - -1672273746 - 1**2113-0'),(4132,'5 750 - -166582953 - 1**666-0'),(4133,NULL),(4134,'5 750 - -438615453 - 1**1081-0'),(4135,'5 750 - -167083203 - 1**667-0'),(4136,'5 750 - -1673857917 - 1**2114-0'),(4137,NULL),(4138,'5 750 - -167584203 - 1**668-0'),(4139,'5 750 - -439426953 - 1**1082-0'),(4140,'5 750 - -1675442838 - 1**2115-0'),(4141,'5 750 - -168085953 - 1**669-0'),(4142,NULL),(4143,'5 750 - -440239203 - 1**1083-0'),(4144,'5 750 - -1677028509 - 1**2116-0'),(4145,'5 750 - -168588453 - 1**670-0'),(4146,NULL),(4147,'5 750 - -441052203 - 1**1084-0'),(4148,'5 750 - -1678614930 - 1**2117-0'),(4149,'5 750 - -169091703 - 1**671-0'),(4150,NULL),(4151,'5 750 - -441865953 - 1**1085-0'),(4152,'5 750 - -1680202101 - 1**2118-0'),(4153,'5 750 - -169595703 - 1**672-0'),(4154,NULL),(4155,'5 750 - -442680453 - 1**1086-0'),(4156,'5 750 - -1681790022 - 1**2119-0'),(4157,'5 750 - -170100453 - 1**673-0'),(4158,'5 750 - -443495703 - 1**1087-0'),(4159,NULL),(4160,'5 750 - -1683378693 - 1**2120-0'),(4161,'5 750 - -444311703 - 1**1088-0'),(4162,NULL),(4163,'5 750 - -170605953 - 1**674-0'),(4164,'5 750 - -1684968114 - 1**2121-0'),(4165,'5 750 - -171112203 - 1**675-0'),(4166,NULL),(4167,'5 750 - -445128453 - 1**1089-0'),(4168,'5 750 - -1686558285 - 1**2122-0'),(4169,'5 750 - -171619203 - 1**676-0'),(4170,NULL),(4171,'5 750 - -1688149206 - 1**2123-0'),(4172,'5 750 - -445945953 - 1**1090-0'),(4173,'5 750 - -172126953 - 1**677-0'),(4174,NULL),(4175,'5 750 - -1689740877 - 1**2124-0'),(4176,'5 750 - -446764203 - 1**1091-0'),(4177,'5 750 - -172635453 - 1**678-0'),(4178,NULL),(4179,'5 750 - -1691333298 - 1**2125-0'),(4180,'5 750 - -447583203 - 1**1092-0'),(4181,'5 750 - -173144703 - 1**679-0'),(4182,NULL),(4183,'5 750 - -448402953 - 1**1093-0'),(4184,'5 750 - -1692926469 - 1**2126-0'),(4185,'5 750 - -173654703 - 1**680-0'),(4186,NULL),(4187,'5 750 - -449223453 - 1**1094-0'),(4188,'5 750 - -1694520390 - 1**2127-0'),(4189,'5 750 - -174165453 - 1**681-0'),(4190,NULL),(4191,'5 750 - -450044703 - 1**1095-0'),(4192,'5 750 - -1696115061 - 1**2128-0'),(4193,'5 750 - -174676953 - 1**682-0'),(4194,NULL),(4195,'5 750 - -450866703 - 1**1096-0'),(4196,'5 750 - -1697710482 - 1**2129-0'),(4197,NULL),(4198,'5 750 - -451689453 - 1**1097-0'),(4199,'5 750 - -175189203 - 1**683-0'),(4200,'5 750 - -1699306653 - 1**2130-0'),(4201,NULL),(4202,'5 750 - -452512953 - 1**1098-0'),(4203,'5 750 - -175702203 - 1**684-0'),(4204,'5 750 - -1700903574 - 1**2131-0'),(4205,'5 750 - -453337203 - 1**1099-0'),(4206,NULL),(4207,'5 750 - -176215953 - 1**685-0'),(4208,NULL),(4209,'5 750 - -1702501245 - 1**2132-0'),(4210,'5 750 - -454162203 - 1**1100-0'),(4211,'5 750 - -176730453 - 1**686-0'),(4212,NULL),(4213,'5 750 - -454987953 - 1**1101-0'),(4214,'5 750 - -1704099666 - 1**2133-0'),(4215,'5 750 - -177245703 - 1**687-0'),(4216,NULL),(4217,'5 750 - -455814453 - 1**1102-0'),(4218,'5 750 - -1705698837 - 1**2134-0'),(4219,'5 750 - -177761703 - 1**688-0'),(4220,NULL),(4221,'5 750 - -456641703 - 1**1103-0'),(4222,NULL),(4223,'5 750 - -1707298758 - 1**2135-0'),(4224,'5 750 - -178278453 - 1**689-0'),(4225,'5 750 - -457469703 - 1**1104-0'),(4226,'5 750 - -178795953 - 1**690-0'),(4227,NULL),(4228,'5 750 - -1708899429 - 1**2136-0'),(4229,'5 750 - -179314203 - 1**691-0'),(4230,'5 750 - -458298453 - 1**1105-0'),(4231,NULL),(4232,'5 750 - -1710500850 - 1**2137-0'),(4233,'5 750 - -179833203 - 1**692-0'),(4234,'5 750 - -459127953 - 1**1106-0'),(4235,NULL),(4236,'5 750 - -1712103021 - 1**2138-0'),(4237,'5 750 - -180352953 - 1**693-0'),(4238,'5 750 - -459958203 - 1**1107-0'),(4239,'5 750 - -1713705942 - 1**2139-0'),(4240,NULL),(4241,'5 750 - -180873453 - 1**694-0'),(4242,'5 750 - -460789203 - 1**1108-0'),(4243,'5 750 - -1715309613 - 1**2140-0'),(4244,NULL),(4245,'5 750 - -181394703 - 1**695-0'),(4246,'5 750 - -1716914034 - 1**2141-0'),(4247,'5 750 - -461620953 - 1**1109-0'),(4248,NULL),(4249,'5 750 - -181916703 - 1**696-0'),(4250,'5 750 - -1718519205 - 1**2142-0'),(4251,'5 750 - -462453453 - 1**1110-0'),(4252,NULL),(4253,'5 750 - -182439453 - 1**697-0'),(4254,'5 750 - -1720125126 - 1**2143-0'),(4255,'5 750 - -463286703 - 1**1111-0'),(4256,NULL),(4257,'5 750 - -182962953 - 1**698-0'),(4258,'5 750 - -1721731797 - 1**2144-0'),(4259,'5 750 - -464120703 - 1**1112-0'),(4260,NULL),(4261,'5 750 - -183487203 - 1**699-0'),(4262,'5 750 - -1723339218 - 1**2145-0'),(4263,'5 750 - -464955453 - 1**1113-0'),(4264,NULL),(4265,'5 750 - -184012203 - 1**700-0'),(4266,'5 750 - -465790953 - 1**1114-0'),(4267,'5 750 - -1724947389 - 1**2146-0'),(4268,NULL),(4269,'5 750 - -184537953 - 1**701-0'),(4270,'5 750 - -466627203 - 1**1115-0'),(4271,NULL),(4272,'5 750 - -1726556310 - 1**2147-0'),(4273,'5 750 - -185064453 - 1**702-0'),(4274,NULL),(4275,'5 750 - -1728165981 - 1**2148-0'),(4276,'5 750 - -467464203 - 1**1116-0'),(4277,'5 750 - -185591703 - 1**703-0'),(4278,NULL),(4279,'5 750 - -1729776402 - 1**2149-0'),(4280,'5 750 - -186119703 - 1**704-0'),(4281,'5 750 - -468301953 - 1**1117-0'),(4282,NULL),(4283,'5 750 - -1731387573 - 1**2150-0'),(4284,'5 750 - -469140453 - 1**1118-0'),(4285,'5 750 - -186648453 - 1**705-0'),(4286,NULL),(4287,'5 750 - -1732999494 - 1**2151-0'),(4288,'5 750 - -469979703 - 1**1119-0'),(4289,'5 750 - -187177953 - 1**706-0'),(4290,NULL),(4291,'5 750 - -1734612165 - 1**2152-0'),(4292,'5 750 - -187708203 - 1**707-0'),(4293,'5 750 - -470819703 - 1**1120-0'),(4294,NULL),(4295,'5 750 - -1736225586 - 1**2153-0'),(4296,NULL),(4297,'5 750 - -188239203 - 1**708-0'),(4298,'5 750 - -471660453 - 1**1121-0'),(4299,'5 750 - -1737839757 - 1**2154-0'),(4300,NULL),(4301,'5 750 - -188770953 - 1**709-0'),(4302,'5 750 - -472501953 - 1**1122-0'),(4303,'5 750 - -189303453 - 1**710-0'),(4304,NULL),(4305,'5 750 - -1739454678 - 1**2155-0'),(4306,'5 750 - -473344203 - 1**1123-0'),(4307,NULL),(4308,'5 750 - -189836703 - 1**711-0'),(4309,'5 750 - -1741070349 - 1**2156-0'),(4310,'5 750 - -474187203 - 1**1124-0'),(4311,NULL),(4312,'5 750 - -190370703 - 1**712-0'),(4313,'5 750 - -1742686770 - 1**2157-0'),(4314,'5 750 - -475030953 - 1**1125-0'),(4315,NULL),(4316,'5 750 - -190905453 - 1**713-0'),(4317,'5 750 - -1744303941 - 1**2158-0'),(4318,'5 750 - -475875453 - 1**1126-0'),(4319,NULL),(4320,'5 750 - -191440953 - 1**714-0'),(4321,'5 750 - -1745921862 - 1**2159-0'),(4322,'5 750 - -476720703 - 1**1127-0'),(4323,NULL),(4324,'5 750 - -191977203 - 1**715-0'),(4325,'5 750 - -1747540533 - 1**2160-0'),(4326,'5 750 - -477566703 - 1**1128-0'),(4327,NULL),(4328,'5 750 - -192514203 - 1**716-0'),(4329,'5 750 - -478413453 - 1**1129-0'),(4330,'5 750 - -1749159954 - 1**2161-0'),(4331,NULL),(4332,'5 750 - -193051953 - 1**717-0'),(4333,'5 750 - -479260953 - 1**1130-0'),(4334,'5 750 - -1750780125 - 1**2162-0'),(4335,NULL),(4336,'5 750 - -480109203 - 1**1131-0'),(4337,'5 750 - -193590453 - 1**718-0'),(4338,'5 750 - -1752401046 - 1**2163-0'),(4339,NULL),(4340,'5 750 - -480958203 - 1**1132-0'),(4341,'5 750 - -194129703 - 1**719-0'),(4342,NULL),(4343,'5 750 - -1754022717 - 1**2164-0'),(4344,'5 750 - -481807953 - 1**1133-0'),(4345,'5 750 - -194669703 - 1**720-0'),(4346,NULL),(4347,'5 750 - -1755645138 - 1**2165-0'),(4348,'5 750 - -482658453 - 1**1134-0'),(4349,'5 750 - -195210453 - 1**721-0'),(4350,NULL),(4351,'5 750 - -483509703 - 1**1135-0'),(4352,'5 750 - -1757268309 - 1**2166-0'),(4353,NULL),(4354,'5 750 - -195751953 - 1**722-0'),(4355,'5 750 - -484361703 - 1**1136-0'),(4356,'5 750 - -1758892230 - 1**2167-0'),(4357,NULL),(4358,'5 750 - -485214453 - 1**1137-0'),(4359,'5 750 - -196294203 - 1**723-0'),(4360,'5 750 - -1760516901 - 1**2168-0'),(4361,NULL),(4362,'5 750 - -486067953 - 1**1138-0'),(4363,NULL),(4364,'5 750 - -1762142322 - 1**2169-0'),(4365,'5 750 - -196837203 - 1**724-0'),(4366,'5 750 - -486922203 - 1**1139-0'),(4367,NULL),(4368,'5 750 - -1763768493 - 1**2170-0'),(4369,'5 750 - -197380953 - 1**725-0'),(4370,'5 750 - -487777203 - 1**1140-0'),(4371,NULL),(4372,'5 750 - -197925453 - 1**726-0'),(4373,'5 750 - -1765395414 - 1**2171-0'),(4374,'5 750 - -488632953 - 1**1141-0'),(4375,NULL),(4376,'5 750 - -198470703 - 1**727-0'),(4377,'5 750 - -489489453 - 1**1142-0'),(4378,'5 750 - -1767023085 - 1**2172-0'),(4379,NULL),(4380,'5 750 - -199016703 - 1**728-0'),(4381,'5 750 - -490346703 - 1**1143-0'),(4382,'5 750 - -1768651506 - 1**2173-0'),(4383,NULL),(4384,'5 750 - -491204703 - 1**1144-0'),(4385,'5 750 - -199563453 - 1**729-0'),(4386,'5 750 - -1770280677 - 1**2174-0'),(4387,NULL),(4388,'5 750 - -492063453 - 1**1145-0'),(4389,'5 750 - -1771910598 - 1**2175-0'),(4390,'5 750 - -200110953 - 1**730-0'),(4391,NULL),(4392,'5 750 - -492922953 - 1**1146-0'),(4393,'5 750 - -1773541269 - 1**2176-0'),(4394,'5 750 - -200659203 - 1**731-0'),(4395,NULL),(4396,'5 750 - -493783203 - 1**1147-0'),(4397,NULL),(4398,'5 750 - -1775172690 - 1**2177-0'),(4399,'5 750 - -201208203 - 1**732-0'),(4400,'5 750 - -494644203 - 1**1148-0'),(4401,NULL),(4402,'5 750 - -201757953 - 1**733-0'),(4403,'5 750 - -1776804861 - 1**2178-0'),(4404,'5 750 - -495505953 - 1**1149-0'),(4405,NULL),(4406,'5 750 - -202308453 - 1**734-0'),(4407,'5 750 - -1778437782 - 1**2179-0'),(4408,'5 750 - -496368453 - 1**1150-0'),(4409,'5 750 - -202859703 - 1**735-0'),(4410,'5 750 - -1780071453 - 1**2180-0'),(4411,NULL),(4412,'5 750 - -497231703 - 1**1151-0'),(4413,'5 750 - -203411703 - 1**736-0'),(4414,'5 750 - -1781705874 - 1**2181-0'),(4415,'5 750 - -498095703 - 1**1152-0'),(4416,NULL),(4417,'5 750 - -203964453 - 1**737-0'),(4418,'5 750 - -1783341045 - 1**2182-0'),(4419,'5 750 - -498960453 - 1**1153-0'),(4420,NULL),(4421,'5 750 - -204517953 - 1**738-0'),(4422,'5 750 - -1784976966 - 1**2183-0'),(4423,'5 750 - -499825953 - 1**1154-0'),(4424,NULL),(4425,'5 750 - -205072203 - 1**739-0'),(4426,'5 750 - -1786613637 - 1**2184-0'),(4427,NULL),(4428,'5 750 - -1788251058 - 1**2185-0'),(4429,'5 750 - -205627203 - 1**740-0'),(4430,'5 750 - -500692203 - 1**1155-0'),(4431,NULL),(4432,'5 750 - -1789889229 - 1**2186-0'),(4433,'5 750 - -206182953 - 1**741-0'),(4434,NULL),(4435,'5 750 - -501559203 - 1**1156-0'),(4436,'5 750 - -206739453 - 1**742-0'),(4437,'5 750 - -1791528150 - 1**2187-0'),(4438,NULL),(4439,'5 750 - -502426953 - 1**1157-0'),(4440,'5 750 - -207296703 - 1**743-0'),(4441,'5 750 - -1793167821 - 1**2188-0'),(4442,NULL),(4443,'5 750 - -207854703 - 1**744-0'),(4444,'5 750 - -503295453 - 1**1158-0'),(4445,NULL),(4446,'5 750 - -1794808242 - 1**2189-0'),(4447,'5 750 - -208413453 - 1**745-0'),(4448,'5 750 - -504164703 - 1**1159-0'),(4449,NULL),(4450,'5 750 - -1796449413 - 1**2190-0'),(4451,'5 750 - -208972953 - 1**746-0'),(4452,'5 750 - -505034703 - 1**1160-0'),(4453,NULL),(4454,'5 750 - -1798091334 - 1**2191-0'),(4455,'5 750 - -209533203 - 1**747-0'),(4456,'5 750 - -505905453 - 1**1161-0'),(4457,'5 750 - -1799734005 - 1**2192-0'),(4458,NULL),(4459,'5 750 - -210094203 - 1**748-0'),(4460,'5 750 - -506776953 - 1**1162-0'),(4461,NULL),(4462,'5 750 - -1801377426 - 1**2193-0'),(4463,'5 750 - -210655953 - 1**749-0'),(4464,'5 750 - -507649203 - 1**1163-0'),(4465,NULL),(4466,'5 750 - -211218453 - 1**750-0'),(4467,'5 750 - -1803021597 - 1**2194-0'),(4468,'5 750 - -508522203 - 1**1164-0'),(4469,NULL),(4470,'5 750 - -211781703 - 1**751-0'),(4471,'5 750 - -1804666518 - 1**2195-0'),(4472,'5 750 - -509395953 - 1**1165-0'),(4473,NULL),(4474,'5 750 - -1806312189 - 1**2196-0'),(4475,'5 750 - -212345703 - 1**752-0'),(4476,'5 750 - -510270453 - 1**1166-0'),(4477,NULL),(4478,'5 750 - -1807958610 - 1**2197-0'),(4479,'5 750 - -212910453 - 1**753-0'),(4480,'5 750 - -511145703 - 1**1167-0'),(4481,NULL),(4482,'5 750 - -1809605781 - 1**2198-0'),(4483,'5 750 - -213475953 - 1**754-0'),(4484,'5 750 - -512021703 - 1**1168-0'),(4485,NULL),(4486,'5 750 - -1811253702 - 1**2199-0'),(4487,'5 750 - -214042203 - 1**755-0'),(4488,'5 750 - -512898453 - 1**1169-0'),(4489,'5 750 - -1812902373 - 1**2200-0'),(4490,'5 750 - -214609203 - 1**756-0'),(4491,NULL),(4492,'5 750 - -513775953 - 1**1170-0'),(4493,'5 750 - -1814551794 - 1**2201-0'),(4494,'5 750 - -215176953 - 1**757-0'),(4495,NULL),(4496,'5 750 - -1816201965 - 1**2202-0'),(4497,'5 750 - -514654203 - 1**1171-0'),(4498,'5 750 - -215745453 - 1**758-0'),(4499,NULL),(4500,'5 750 - -515533203 - 1**1172-0'),(4501,'5 750 - -1817852886 - 1**2203-0'),(4502,'5 750 - -216314703 - 1**759-0'),(4503,NULL),(4504,'5 750 - -516412953 - 1**1173-0'),(4505,'5 750 - -216884703 - 1**760-0'),(4506,'5 750 - -1819504557 - 1**2204-0'),(4507,'5 750 - -517293453 - 1**1174-0'),(4508,NULL),(4509,'5 750 - -1821156978 - 1**2205-0'),(4510,'5 750 - -217455453 - 1**761-0'),(4511,'5 750 - -518174703 - 1**1175-0'),(4512,NULL),(4513,'5 750 - -1822810149 - 1**2206-0'),(4514,'5 750 - -218026953 - 1**762-0'),(4515,'5 750 - -519056703 - 1**1176-0'),(4516,NULL),(4517,'5 750 - -1824464070 - 1**2207-0'),(4518,'5 750 - -218599203 - 1**763-0'),(4519,'5 750 - -519939453 - 1**1177-0'),(4520,NULL),(4521,'5 750 - -1826118741 - 1**2208-0'),(4522,'5 750 - -219172203 - 1**764-0'),(4523,'5 750 - -520822953 - 1**1178-0'),(4524,NULL),(4525,'5 750 - -1827774162 - 1**2209-0'),(4526,'5 750 - -219745953 - 1**765-0'),(4527,'5 750 - -521707203 - 1**1179-0'),(4528,NULL),(4529,'5 750 - -1829430333 - 1**2210-0'),(4530,'5 750 - -220320453 - 1**766-0'),(4531,'5 750 - -522592203 - 1**1180-0'),(4532,NULL),(4533,'5 750 - -1831087254 - 1**2211-0'),(4534,'5 750 - -220895703 - 1**767-0'),(4535,'5 750 - -523477953 - 1**1181-0'),(4536,NULL),(4537,'5 750 - -1832744925 - 1**2212-0'),(4538,'5 750 - -221471703 - 1**768-0'),(4539,'5 750 - -524364453 - 1**1182-0'),(4540,NULL),(4541,'5 750 - -1834403346 - 1**2213-0'),(4542,'5 750 - -222048453 - 1**769-0'),(4543,'5 750 - -1836062517 - 1**2214-0'),(4544,'5 750 - -525251703 - 1**1183-0'),(4545,NULL),(4546,'5 750 - -222625953 - 1**770-0'),(4547,NULL),(4548,'5 750 - -526139703 - 1**1184-0'),(4549,'5 750 - -1837722438 - 1**2215-0'),(4550,'5 750 - -223204203 - 1**771-0'),(4551,'5 750 - -1839383109 - 1**2216-0'),(4552,NULL),(4553,'5 750 - -527028453 - 1**1185-0'),(4554,'5 750 - -223783203 - 1**772-0'),(4555,'5 750 - -1841044530 - 1**2217-0'),(4556,'5 750 - -527917953 - 1**1186-0'),(4557,NULL),(4558,'5 750 - -224362953 - 1**773-0'),(4559,'5 750 - -1842706701 - 1**2218-0'),(4560,NULL),(4561,'5 750 - -528808203 - 1**1187-0'),(4562,'5 750 - -224943453 - 1**774-0'),(4563,'5 750 - -1844369622 - 1**2219-0'),(4564,'5 750 - -529699203 - 1**1188-0'),(4565,NULL),(4566,'5 750 - -225524703 - 1**775-0'),(4567,'5 750 - -1846033293 - 1**2220-0'),(4568,'5 750 - -530590953 - 1**1189-0'),(4569,NULL),(4570,'5 750 - -1847697714 - 1**2221-0'),(4571,'5 750 - -226106703 - 1**776-0'),(4572,'5 750 - -531483453 - 1**1190-0'),(4573,NULL),(4574,'5 750 - -1849362885 - 1**2222-0'),(4575,'5 750 - -226689453 - 1**777-0'),(4576,'5 750 - -532376703 - 1**1191-0'),(4577,NULL),(4578,'5 750 - -1851028806 - 1**2223-0'),(4579,'5 750 - -227272953 - 1**778-0'),(4580,'5 750 - -533270703 - 1**1192-0'),(4581,NULL),(4582,'5 750 - -1852695477 - 1**2224-0'),(4583,'5 750 - -227857203 - 1**779-0'),(4584,NULL),(4585,'5 750 - -534165453 - 1**1193-0'),(4586,'5 750 - -1854362898 - 1**2225-0'),(4587,'5 750 - -228442203 - 1**780-0'),(4588,NULL),(4589,'5 750 - -1856031069 - 1**2226-0'),(4590,'5 750 - -535060953 - 1**1194-0'),(4591,'5 750 - -229027953 - 1**781-0'),(4592,'5 750 - -1857699990 - 1**2227-0'),(4593,NULL),(4594,'5 750 - -535957203 - 1**1195-0'),(4595,'5 750 - -229614453 - 1**782-0'),(4596,'5 750 - -536854203 - 1**1196-0'),(4597,'5 750 - -1859369661 - 1**2228-0'),(4598,NULL),(4599,'5 750 - -230201703 - 1**783-0'),(4600,'5 750 - -537751953 - 1**1197-0'),(4601,NULL),(4602,'5 750 - -1861040082 - 1**2229-0'),(4603,'5 750 - -230789703 - 1**784-0'),(4604,NULL),(4605,'5 750 - -1862711253 - 1**2230-0'),(4606,'5 750 - -538650453 - 1**1198-0'),(4607,'5 750 - -231378453 - 1**785-0'),(4608,NULL),(4609,'5 750 - -1864383174 - 1**2231-0'),(4610,'5 750 - -539549703 - 1**1199-0'),(4611,'5 750 - -231967953 - 1**786-0'),(4612,NULL),(4613,'5 750 - -1866055845 - 1**2232-0'),(4614,'5 750 - -232558203 - 1**787-0'),(4615,'5 750 - -540449703 - 1**1200-0'),(4616,NULL),(4617,'5 750 - -1867729266 - 1**2233-0'),(4618,'5 750 - -233149203 - 1**788-0'),(4619,'5 750 - -541350453 - 1**1201-0'),(4620,'5 750 - -233740953 - 1**789-0'),(4621,'5 750 - -1869403437 - 1**2234-0'),(4622,'5 750 - -542251953 - 1**1202-0'),(4623,NULL),(4624,'5 750 - -234333453 - 1**790-0'),(4625,'5 750 - -1871078358 - 1**2235-0'),(4626,'5 750 - -543154203 - 1**1203-0'),(4627,NULL),(4628,'5 750 - -234926703 - 1**791-0'),(4629,'5 750 - -1872754029 - 1**2236-0'),(4630,'5 750 - -544057203 - 1**1204-0'),(4631,'5 750 - -235520703 - 1**792-0'),(4632,NULL),(4633,'5 750 - -1874430450 - 1**2237-0'),(4634,'5 750 - -544960953 - 1**1205-0'),(4635,'5 750 - -236115453 - 1**793-0'),(4636,NULL),(4637,'5 750 - -1876107621 - 1**2238-0'),(4638,'5 750 - -545865453 - 1**1206-0'),(4639,NULL),(4640,'5 750 - -236710953 - 1**794-0'),(4641,'5 750 - -1877785542 - 1**2239-0'),(4642,'5 750 - -546770703 - 1**1207-0'),(4643,'5 750 - -237307203 - 1**795-0'),(4644,NULL),(4645,'5 750 - -1879464213 - 1**2240-0'),(4646,'5 750 - -547676703 - 1**1208-0'),(4647,'5 750 - -237904203 - 1**796-0'),(4648,NULL),(4649,'5 750 - -1881143634 - 1**2241-0'),(4650,'5 750 - -548583453 - 1**1209-0'),(4651,'5 750 - -238501953 - 1**797-0'),(4652,NULL),(4653,'5 750 - -1882823805 - 1**2242-0'),(4654,'5 750 - -549490953 - 1**1210-0'),(4655,'5 750 - -239100453 - 1**798-0'),(4656,NULL),(4657,'5 750 - -550399203 - 1**1211-0'),(4658,'5 750 - -1884504726 - 1**2243-0'),(4659,'5 750 - -239699703 - 1**799-0'),(4660,NULL),(4661,'5 750 - -551308203 - 1**1212-0'),(4662,'5 750 - -1886186397 - 1**2244-0'),(4663,'5 750 - -240299703 - 1**800-0'),(4664,'5 750 - -1887868818 - 1**2245-0'),(4665,NULL),(4666,'5 750 - -240900453 - 1**801-0'),(4667,'5 750 - -552217953 - 1**1213-0'),(4668,NULL),(4669,'5 750 - -1889551989 - 1**2246-0'),(4670,'5 750 - -241501953 - 1**802-0'),(4671,'5 750 - -553128453 - 1**1214-0'),(4672,'5 750 - -1891235910 - 1**2247-0'),(4673,NULL),(4674,'5 750 - -242104203 - 1**803-0'),(4675,'5 750 - -554039703 - 1**1215-0'),(4676,'5 750 - -1892920581 - 1**2248-0'),(4677,NULL),(4678,'5 750 - -554951703 - 1**1216-0'),(4679,'5 750 - -242707203 - 1**804-0'),(4680,'5 750 - -1894606002 - 1**2249-0'),(4681,NULL),(4682,'5 750 - -243310953 - 1**805-0'),(4683,'5 750 - -555864453 - 1**1217-0'),(4684,'5 750 - -1896292173 - 1**2250-0'),(4685,NULL),(4686,'5 750 - -243915453 - 1**806-0'),(4687,'5 750 - -556777953 - 1**1218-0'),(4688,'5 750 - -1897979094 - 1**2251-0'),(4689,NULL),(4690,'5 750 - -244520703 - 1**807-0'),(4691,'5 750 - -557692203 - 1**1219-0'),(4692,'5 750 - -1899666765 - 1**2252-0'),(4693,NULL),(4694,'5 750 - -558607203 - 1**1220-0'),(4695,'5 750 - -245126703 - 1**808-0'),(4696,NULL),(4697,'5 750 - -1901355186 - 1**2253-0'),(4698,'5 750 - -245733453 - 1**809-0'),(4699,'5 750 - -559522953 - 1**1221-0'),(4700,NULL),(4701,'5 750 - -1903044357 - 1**2254-0'),(4702,'5 750 - -246340953 - 1**810-0'),(4703,'5 750 - -560439453 - 1**1222-0'),(4704,NULL),(4705,'5 750 - -1904734278 - 1**2255-0'),(4706,'5 750 - -246949203 - 1**811-0'),(4707,'5 750 - -561356703 - 1**1223-0'),(4708,'5 750 - -1906424949 - 1**2256-0'),(4709,'5 750 - -247558203 - 1**812-0'),(4710,NULL),(4711,'5 750 - -562274703 - 1**1224-0'),(4712,'5 750 - -248167953 - 1**813-0'),(4713,'5 750 - -1908116370 - 1**2257-0'),(4714,NULL),(4715,'5 750 - -248778453 - 1**814-0'),(4716,'5 750 - -1909808541 - 1**2258-0'),(4717,'5 750 - -563193453 - 1**1225-0'),(4718,NULL),(4719,'5 750 - -249389703 - 1**815-0'),(4720,'5 750 - -1911501462 - 1**2259-0'),(4721,'5 750 - -564112953 - 1**1226-0'),(4722,NULL),(4723,'5 750 - -250001703 - 1**816-0'),(4724,NULL),(4725,'5 750 - -565033203 - 1**1227-0'),(4726,'5 750 - -250614453 - 1**817-0'),(4727,'5 750 - -1913195133 - 1**2260-0'),(4728,NULL),(4729,'5 750 - -565954203 - 1**1228-0'),(4730,'5 750 - -251227953 - 1**818-0'),(4731,NULL),(4732,'5 750 - -1914889554 - 1**2261-0'),(4733,'5 750 - -566875953 - 1**1229-0'),(4734,NULL),(4735,'5 750 - -1916584725 - 1**2262-0'),(4736,'5 750 - -251842203 - 1**819-0'),(4737,'5 750 - -567798453 - 1**1230-0'),(4738,NULL),(4739,'5 750 - -1918280646 - 1**2263-0'),(4740,'5 750 - -568721703 - 1**1231-0'),(4741,'5 750 - -252457203 - 1**820-0'),(4742,NULL),(4743,'5 750 - -1919977317 - 1**2264-0'),(4744,'5 750 - -569645703 - 1**1232-0'),(4745,'5 750 - -253072953 - 1**821-0'),(4746,NULL),(4747,'5 750 - -570570453 - 1**1233-0'),(4748,'5 750 - -1921674738 - 1**2265-0'),(4749,'5 750 - -253689453 - 1**822-0'),(4750,NULL),(4751,'5 750 - -1923372909 - 1**2266-0'),(4752,'5 750 - -571495953 - 1**1234-0'),(4753,'5 750 - -254306703 - 1**823-0'),(4754,NULL),(4755,'5 750 - -572422203 - 1**1235-0'),(4756,'5 750 - -1925071830 - 1**2267-0'),(4757,'5 750 - -254924703 - 1**824-0'),(4758,NULL),(4759,'5 750 - -573349203 - 1**1236-0'),(4760,'5 750 - -1926771501 - 1**2268-0'),(4761,'5 750 - -255543453 - 1**825-0'),(4762,NULL),(4763,'5 750 - -574276953 - 1**1237-0'),(4764,'5 750 - -1928471922 - 1**2269-0'),(4765,'5 750 - -256162953 - 1**826-0'),(4766,NULL),(4767,'5 750 - -575205453 - 1**1238-0'),(4768,NULL),(4769,'5 750 - -1930173093 - 1**2270-0'),(4770,'5 750 - -256783203 - 1**827-0'),(4771,'5 750 - -576134703 - 1**1239-0'),(4772,NULL),(4773,'5 750 - -257404203 - 1**828-0'),(4774,'5 750 - -577064703 - 1**1240-0'),(4775,'5 750 - -1931875014 - 1**2271-0'),(4776,NULL),(4777,'5 750 - -258025953 - 1**829-0'),(4778,'5 750 - -577995453 - 1**1241-0'),(4779,'5 750 - -1933577685 - 1**2272-0'),(4780,NULL),(4781,'5 750 - -258648453 - 1**830-0'),(4782,'5 750 - -578926953 - 1**1242-0'),(4783,'5 750 - -1935281106 - 1**2273-0'),(4784,'5 750 - -259271703 - 1**831-0'),(4785,NULL),(4786,'5 750 - -579859203 - 1**1243-0'),(4787,'5 750 - -1936985277 - 1**2274-0'),(4788,NULL),(4789,'5 750 - -259895703 - 1**832-0'),(4790,'5 750 - -580792203 - 1**1244-0'),(4791,'5 750 - -1938690198 - 1**2275-0'),(4792,'5 750 - -260520453 - 1**833-0'),(4793,NULL),(4794,'5 750 - -581725953 - 1**1245-0'),(4795,'5 750 - -1940395869 - 1**2276-0'),(4796,'5 750 - -261145953 - 1**834-0'),(4797,NULL),(4798,'5 750 - -582660453 - 1**1246-0'),(4799,'5 750 - -1942102290 - 1**2277-0'),(4800,'5 750 - -261772203 - 1**835-0'),(4801,NULL),(4802,'5 750 - -583595703 - 1**1247-0'),(4803,'5 750 - -1943809461 - 1**2278-0'),(4804,'5 750 - -262399203 - 1**836-0'),(4805,NULL),(4806,'5 750 - -584531703 - 1**1248-0'),(4807,'5 750 - -1945517382 - 1**2279-0'),(4808,'5 750 - -263026953 - 1**837-0'),(4809,NULL),(4810,'5 750 - -585468453 - 1**1249-0'),(4811,'5 750 - -1947226053 - 1**2280-0'),(4812,'5 750 - -263655453 - 1**838-0'),(4813,NULL),(4814,'5 750 - -586405953 - 1**1250-0'),(4815,'5 750 - -1948935474 - 1**2281-0'),(4816,NULL),(4817,'5 750 - -264284703 - 1**839-0'),(4818,'5 750 - -587344203 - 1**1251-0'),(4819,'5 750 - -1950645645 - 1**2282-0'),(4820,'5 750 - -264914703 - 1**840-0'),(4821,NULL),(4822,'5 750 - -588283203 - 1**1252-0'),(4823,'5 750 - -1952356566 - 1**2283-0'),(4824,'5 750 - -265545453 - 1**841-0'),(4825,NULL),(4826,'5 750 - -589222953 - 1**1253-0'),(4827,'5 750 - -1954068237 - 1**2284-0'),(4828,'5 750 - -266176953 - 1**842-0'),(4829,NULL),(4830,'5 750 - -1955780658 - 1**2285-0'),(4831,'5 750 - -266809203 - 1**843-0'),(4832,'5 750 - -590163453 - 1**1254-0'),(4833,'5 750 - -267442203 - 1**844-0'),(4834,'5 750 - -591104703 - 1**1255-0'),(4835,NULL),(4836,'5 750 - -1957493829 - 1**2286-0'),(4837,'5 750 - -268075953 - 1**845-0'),(4838,NULL),(4839,'5 750 - -592046703 - 1**1256-0'),(4840,'5 750 - -1959207750 - 1**2287-0'),(4841,NULL),(4842,'5 750 - -268710453 - 1**846-0'),(4843,'5 750 - -592989453 - 1**1257-0'),(4844,'5 750 - -1960922421 - 1**2288-0'),(4845,NULL),(4846,'5 750 - -593932953 - 1**1258-0'),(4847,'5 750 - -269345703 - 1**847-0'),(4848,'5 750 - -1962637842 - 1**2289-0'),(4849,NULL),(4850,'5 750 - -594877203 - 1**1259-0'),(4851,'5 750 - -269981703 - 1**848-0'),(4852,'5 750 - -1964354013 - 1**2290-0'),(4853,NULL),(4854,'5 750 - -595822203 - 1**1260-0'),(4855,'5 750 - -270618453 - 1**849-0'),(4856,'5 750 - -1966070934 - 1**2291-0'),(4857,NULL),(4858,'5 750 - -596767953 - 1**1261-0'),(4859,'5 750 - -1967788605 - 1**2292-0'),(4860,NULL),(4861,'5 750 - -271255953 - 1**850-0'),(4862,'5 750 - -597714453 - 1**1262-0'),(4863,NULL),(4864,'5 750 - -1969507026 - 1**2293-0'),(4865,'5 750 - -271894203 - 1**851-0'),(4866,'5 750 - -598661703 - 1**1263-0'),(4867,NULL),(4868,'5 750 - -272533203 - 1**852-0'),(4869,'5 750 - -1971226197 - 1**2294-0'),(4870,'5 750 - -599609703 - 1**1264-0'),(4871,NULL),(4872,'5 750 - -600558453 - 1**1265-0'),(4873,'5 750 - -1972946118 - 1**2295-0'),(4874,'5 750 - -273172953 - 1**853-0'),(4875,NULL),(4876,'5 750 - -1974666789 - 1**2296-0'),(4877,'5 750 - -273813453 - 1**854-0'),(4878,'5 750 - -601507953 - 1**1266-0'),(4879,NULL),(4880,'5 750 - -1976388210 - 1**2297-0'),(4881,'5 750 - -602458203 - 1**1267-0'),(4882,'5 750 - -274454703 - 1**855-0'),(4883,NULL),(4884,'5 750 - -1978110381 - 1**2298-0'),(4885,'5 750 - -275096703 - 1**856-0'),(4886,'5 750 - -603409203 - 1**1268-0'),(4887,NULL),(4888,'5 750 - -1979833302 - 1**2299-0'),(4889,'5 750 - -275739453 - 1**857-0'),(4890,'5 750 - -604360953 - 1**1269-0'),(4891,NULL),(4892,'5 750 - -1981556973 - 1**2300-0'),(4893,'5 750 - -276382953 - 1**858-0'),(4894,'5 750 - -605313453 - 1**1270-0'),(4895,NULL),(4896,'5 750 - -1983281394 - 1**2301-0'),(4897,'5 750 - -277027203 - 1**859-0'),(4898,NULL),(4899,'5 750 - -606266703 - 1**1271-0'),(4900,'5 750 - -1985006565 - 1**2302-0'),(4901,'5 750 - -277672203 - 1**860-0'),(4902,'5 750 - -607220703 - 1**1272-0'),(4903,'5 750 - -1986732486 - 1**2303-0'),(4904,NULL),(4905,'5 750 - -278317953 - 1**861-0'),(4906,'5 750 - -608175453 - 1**1273-0'),(4907,'5 750 - -1988459157 - 1**2304-0'),(4908,NULL),(4909,'5 750 - -278964453 - 1**862-0'),(4910,NULL),(4911,'5 750 - -609130953 - 1**1274-0'),(4912,'5 750 - -1990186578 - 1**2305-0'),(4913,'5 750 - -279611703 - 1**863-0'),(4914,'5 750 - -1991914749 - 1**2306-0'),(4915,NULL),(4916,'5 750 - -610087203 - 1**1275-0'),(4917,'5 750 - -280259703 - 1**864-0'),(4918,NULL),(4919,'5 750 - -1993643670 - 1**2307-0'),(4920,'5 750 - -611044203 - 1**1276-0'),(4921,'5 750 - -280908453 - 1**865-0'),(4922,NULL),(4923,'5 750 - -1995373341 - 1**2308-0'),(4924,'5 750 - -281557953 - 1**866-0'),(4925,'5 750 - -612001953 - 1**1277-0'),(4926,NULL),(4927,'5 750 - -1997103762 - 1**2309-0'),(4928,'5 750 - -612960453 - 1**1278-0'),(4929,'5 750 - -282208203 - 1**867-0'),(4930,NULL),(4931,'5 750 - -613919703 - 1**1279-0'),(4932,'5 750 - -1998834933 - 1**2310-0'),(4933,'5 750 - -282859203 - 1**868-0'),(4934,NULL),(4935,'5 750 - -2000566854 - 1**2311-0'),(4936,'5 750 - -614879703 - 1**1280-0'),(4937,'5 750 - -283510953 - 1**869-0'),(4938,NULL),(4939,NULL),(4940,NULL),(4941,NULL),(4942,NULL),(4943,NULL),(4944,NULL),(4945,NULL),(4946,NULL),(4947,NULL),(4948,NULL),(4949,NULL),(4950,NULL),(4951,NULL),(4952,NULL),(4953,NULL),(4954,NULL),(4955,NULL),(4956,NULL),(4957,NULL),(4958,NULL),(4959,NULL),(4960,NULL),(4961,NULL),(4962,NULL),(4963,NULL),(4964,NULL),(4965,NULL),(4966,NULL),(4967,NULL),(4968,NULL),(4969,NULL),(4970,NULL),(4971,NULL),(4972,NULL),(4973,NULL),(4974,NULL),(4975,NULL),(4976,NULL),(4977,NULL),(4978,NULL),(4979,NULL),(4980,NULL),(4981,NULL),(4982,NULL),(4983,NULL),(4984,NULL),(4985,NULL),(4986,NULL),(4987,NULL),(4988,NULL),(4989,NULL),(4990,NULL),(4991,NULL),(4992,NULL),(4993,NULL),(4994,NULL),(4995,NULL),(4996,NULL),(4997,NULL),(4998,NULL),(4999,NULL),(5000,NULL),(5001,NULL),(5002,NULL),(5003,NULL),(5004,NULL),(5005,NULL),(5006,NULL),(5007,NULL),(5008,NULL),(5009,NULL),(5010,NULL),(5011,NULL),(5012,NULL),(5013,NULL),(5014,NULL),(5015,NULL),(5016,NULL),(5017,NULL),(5018,NULL),(5019,NULL),(5020,NULL),(5021,NULL),(5022,NULL),(5023,NULL),(5024,NULL),(5025,NULL),(5026,NULL),(5027,NULL),(5028,NULL),(5029,NULL),(5030,NULL),(5031,NULL),(5032,NULL),(5033,NULL),(5034,NULL),(5035,NULL),(5036,NULL),(5037,NULL),(5038,NULL),(5039,NULL),(5040,NULL),(5041,NULL),(5042,NULL),(5043,NULL),(5044,NULL),(5045,NULL),(5046,NULL),(5047,NULL),(5048,NULL),(5049,NULL),(5050,NULL),(5051,NULL),(5052,NULL),(5053,NULL),(5054,NULL),(5055,NULL),(5056,NULL),(5057,NULL),(5058,NULL),(5059,NULL),(5060,NULL),(5061,NULL),(5062,NULL),(5063,NULL),(5064,NULL),(5065,NULL),(5066,NULL),(5067,NULL),(5068,NULL),(5069,NULL),(5070,NULL),(5071,NULL),(5072,NULL),(5073,NULL),(5074,NULL),(5075,NULL),(5076,NULL),(5077,NULL),(5078,NULL),(5079,NULL),(5080,NULL),(5081,NULL),(5082,NULL),(5083,NULL),(5084,NULL),(5085,NULL),(5086,NULL),(5087,NULL),(5088,NULL),(5089,NULL),(5090,NULL),(5091,NULL),(5092,NULL),(5093,NULL),(5094,NULL),(5095,NULL),(5096,NULL),(5097,NULL),(5098,NULL),(5099,NULL),(5100,NULL),(5101,NULL),(5102,NULL),(5103,NULL),(5104,NULL),(5105,NULL),(5106,NULL),(5107,NULL),(5108,NULL),(5109,NULL),(5110,NULL),(5111,NULL),(5112,NULL),(5113,NULL),(5114,NULL),(5115,NULL),(5116,NULL),(5117,NULL),(5118,NULL),(5119,NULL),(5120,NULL),(5121,NULL),(5122,NULL),(5123,NULL),(5124,NULL),(5125,NULL),(5126,NULL),(5127,NULL),(5128,NULL),(5129,NULL),(5130,NULL),(5131,NULL),(5132,NULL),(5133,NULL),(5134,NULL),(5135,NULL),(5136,NULL),(5137,NULL),(5138,NULL),(5139,NULL),(5140,NULL),(5141,NULL),(5142,NULL),(5143,NULL),(5144,NULL),(5145,NULL),(5146,NULL),(5147,NULL),(5148,NULL),(5149,NULL),(5150,NULL),(5151,NULL),(5152,NULL),(5153,NULL),(5154,NULL),(5155,NULL),(5156,NULL),(5157,NULL),(5158,NULL),(5159,NULL),(5160,NULL),(5161,NULL),(5162,NULL),(5163,NULL),(5164,NULL),(5165,NULL),(5166,NULL),(5167,NULL),(5168,NULL),(5169,NULL),(5170,NULL),(5171,NULL),(5172,NULL),(5173,NULL),(5174,NULL),(5175,NULL),(5176,NULL),(5177,NULL),(5178,NULL),(5179,NULL),(5180,NULL),(5181,NULL),(5182,NULL),(5183,NULL),(5184,NULL),(5185,NULL),(5186,NULL),(5187,NULL),(5188,NULL),(5189,NULL),(5190,NULL),(5191,NULL),(5192,NULL),(5193,NULL),(5194,NULL),(5195,NULL),(5196,NULL),(5197,NULL),(5198,NULL),(5199,NULL),(5200,NULL),(5201,NULL),(5202,NULL),(5203,NULL),(5204,NULL),(5205,NULL),(5206,NULL),(5207,NULL),(5208,NULL),(5209,NULL),(5210,NULL),(5211,NULL),(5212,NULL),(5213,NULL),(5214,NULL),(5215,NULL),(5216,NULL),(5217,NULL),(5218,NULL),(5219,NULL),(5220,NULL),(5221,NULL),(5222,NULL),(5223,NULL),(5224,NULL),(5225,NULL),(5226,NULL),(5227,NULL),(5228,NULL),(5229,NULL),(5230,NULL),(5231,NULL),(5232,NULL),(5233,NULL),(5234,NULL),(5235,NULL),(5236,NULL),(5237,NULL),(5238,NULL),(5239,NULL),(5240,NULL),(5241,NULL),(5242,NULL),(5243,NULL),(5244,NULL),(5245,NULL),(5246,NULL),(5247,NULL),(5248,NULL),(5249,NULL),(5250,NULL),(5251,NULL),(5252,NULL),(5253,NULL),(5254,NULL),(5255,NULL),(5256,NULL),(5257,NULL),(5258,NULL),(5259,NULL),(5260,NULL),(5261,NULL),(5262,NULL),(5263,NULL),(5264,NULL),(5265,NULL),(5266,NULL),(5267,NULL),(5268,NULL),(5269,NULL),(5270,NULL),(5271,NULL),(5272,NULL),(5273,NULL),(5274,NULL),(5275,NULL),(5276,NULL),(5277,NULL),(5278,NULL),(5279,NULL),(5280,NULL),(5281,NULL),(5282,NULL),(5283,NULL),(5284,NULL),(5285,NULL),(5286,NULL),(5287,NULL),(5288,NULL),(5289,NULL),(5290,NULL),(5291,NULL),(5292,NULL),(5293,NULL),(5294,NULL),(5295,NULL),(5296,NULL),(5297,NULL),(5298,NULL),(5299,NULL),(5300,NULL),(5301,NULL),(5302,NULL),(5303,NULL),(5304,NULL),(5305,NULL),(5306,NULL),(5307,NULL),(5308,NULL),(5309,NULL),(5310,NULL),(5311,NULL),(5312,NULL),(5313,NULL),(5314,NULL),(5315,NULL),(5316,NULL),(5317,NULL),(5318,NULL),(5319,NULL),(5320,NULL),(5321,NULL),(5322,NULL),(5323,NULL),(5324,NULL),(5325,NULL),(5326,NULL),(5327,NULL),(5328,NULL),(5329,NULL),(5330,NULL),(5331,NULL),(5332,NULL),(5333,NULL),(5334,NULL),(5335,NULL),(5336,NULL),(5337,NULL),(5338,NULL),(5339,NULL),(5340,NULL),(5341,NULL),(5342,NULL),(5343,NULL),(5344,NULL),(5345,NULL),(5346,NULL),(5347,NULL),(5348,NULL),(5349,NULL),(5350,NULL),(5351,NULL),(5352,NULL),(5353,NULL),(5354,NULL),(5355,NULL),(5356,NULL),(5357,NULL),(5358,NULL),(5359,NULL),(5360,NULL);
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

SET servicio=2;
-- set v_anio='2016';
SELECT anio into v_anio FROM gestion_granjas.cat_anio where estatus='A';
SELECT PERIODO  FROM gestion_granjas.kardex_servicios where id_servicio=servicio
				and id_factor=p_idlote
				and estatus ='S' 
                AND PERIODO>=date_format(DATE_ADD(now(), INTERVAL +1 MONTH), '%m')
				and anio=v_anio ORDER BY PERIODO ASC;
 

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
     SET v_periodo= LPAD(date_format(now(), '%c' ),2,0);
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
            SELECT date_format(LAST_DAY(DATE_ADD(now(),INTERVAL c MONTH )),'%d')   into v_ultDia from dual;
            
			if(p_dipDiaLimite<=v_ultDia) then
					SET v_dipDiaLimite=p_dipDiaLimite;
				ELSE
                  SET v_dipDiaLimite=v_ultDia;
			end if;
         IF(p_Bandera=false) then   
				INSERT INTO tmpConvenio(id,idLote,numPago,cuota,fechaConvenio)
				VALUES(c,p_idlote,c,vPagoMensual,DATE_ADD( CONCAT(v_anio,'-',v_periodo,'-',v_dipDiaLimite), INTERVAL c MONTH ) );
          END IF;
           
           IF(p_Bandera=true) then             
				 SELECT AUTO_INCREMENT AS id into IdUltima
					FROM information_schema.Tables
				 WHERE TABLE_SCHEMA='gestion_granjas' AND table_name='convenios';
           
				INSERT INTO  gestion_granjas.convenios_detalle (id_convenio,cuota,num_pago,fecha_convenio, estatus)
				VALUES(IdUltima,vPagoMensual,c,DATE_ADD( CONCAT(v_anio,'-',v_periodo,'-',v_dipDiaLimite), INTERVAL c MONTH ),'A');
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
OUT resultado boolean
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
				select importe - IFNULL(saldo_pagado,0),periodo,anio,estatus into importeCuota ,periodoPagoDet,anioPagoDet,v_estatus from kardex_servicios WHERE ID=Str;

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
						 
							UPDATE kardex_servicios SET ESTATUS='S' , FOLIO_PAGO=folioDetCuota, TIPO_PAGO=pidEstatus,
								FECHA_REGISTRO=NOW() WHERE ID=Str;
                                
                             										
							INSERT INTO gestion_granjas.gestion_cuotas_agua(id_kardex,id_medio,tipo,monto,tipo_pago)
							values(Str,folioDetCuota,'PA',TRUNCATE(importeCuota,2),pidEstatus);
                          
                                
					-- 	end if;
                 
					end if;
                 
                 
                  if(pServicio=4) then
                   
                  select CUOTA,date_format(fecha_convenio, '%m') , date_format(fecha_convenio, '%Y'), num_pago   into importeCuota,periodoPagoDet,anioPagoDet,v_numPagConvenio from gestion_granjas.convenios_detalle  WHERE ID=Str;

                   insert into  gestion_granjas.pagos_detalle( folio_pago,cuota,periodo,anio,tipo_pago)
										values(folioPago,importeCuota,periodoPagoDet,anioPagoDet,4);
										commit;
                   
                   -- select num_pago into v_numPagConvenio from gestion_granjas.convenios_detalle  WHERE ID=Str;
					
					UPDATE gestion_granjas.convenios_detalle  SET ESTATUS='S' WHERE ID=Str;
                    
                    if(num_pago=v_parcialidades) then
							
                            UPDATE  gestion_granjas.convenios SET ESTATUS='S' where id_lote= pidlote AND ESTATUS='A';

							-- Actualiuza servicios de mantenimiento
							UPDATE kardex_servicios SET ESTATUS='S' , FOLIO_PAGO=folioPago, TIPO_PAGO=4,
								FECHA_REGISTRO=NOW() WHERE id_factor=pidlote AND ID_SERVICIO=2 AND ESTATUS='C';
                         
							-- Actualiza servicios de agua
                           	UPDATE kardex_servicios SET ESTATUS='S' , FOLIO_PAGO=folioPago, TIPO_PAGO=4,
								FECHA_REGISTRO=NOW() WHERE   ID_SERVICIO=2 AND ESTATUS='C'
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
  
  set resultado=true;
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


if(p_servicio=2) then

	SELECT a.id,a.id_servicio,importe ,concat(a.periodo,'/',date_format(concat(anio, a.periodo,'01'), '%y') ,
		' (', date_format(concat(anio, a.periodo,'01'), '%b %Y'),' ) $ ', importe), b.Descripcion,
		c.servicio,date_format(concat(anio, a.periodo,'01'), '%b %y') as Concat_periodo, a.periodo,
		concat( d.descripcion,' (',d.valor,')') as tasa_periodo,a.anio
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
	AND a.estatus in('A','V')
	;
end if;
if(p_servicio=3) then

	SELECT e.id_lote,a.id_servicio,truncate(sum(importe)-SUM(IFNULL(saldo_pagado,0)),2) ,concat(a.periodo,'/',date_format(concat(anio, a.periodo,'01'), '%y') ,
		' (', date_format(concat(anio, a.periodo,'01'), '%b %Y'),' ) $ '), b.Descripcion,
		c.servicio,date_format(concat(anio, a.periodo,'01'), '%b %y') as Concat_periodo, a.periodo, 
	'Tarifa 1' as tasa_periodo,a.anio
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
    
	  SELECT a.id,4,a.cuota,
		concat(date_format(fecha_convenio, '%d/%m/%y') ,
				' ( ', date_format(fecha_convenio ,'%b %Y'),' ) $ ', a.cuota), b.descripcion, c.servicio,
				date_format(fecha_convenio, '%b %y') as Concat_periodo,
				date_format(fecha_convenio, '%m') as Concat_periodo,
				'Tarifa 2' as tasa_periodo,
				 date_format(fecha_convenio, '%Y') as anio
		 FROM gestion_granjas.convenios_detalle a
		 LEFT JOIN gestion_granjas.CONVENIOS d on a.id_convenio=d.id_convenio
		 LEFT JOIN gestion_granjas.cat_estatus b on a.estatus = b.clave
		 LEFT JOIN gestion_granjas.cat_servicios c on c.id_servicio=4
		WHERE d.ID_LOTE=p_idlote AND d.ESTATUS='A'
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
      
      call gestion_granjas.sp_prc_actualizaTarifaMTO();
      
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

	SELECT valor INTO v_BCNA FROM gestion_granjas.cat_parametros where code_param='param_BCNA';
	SELECT valor INTO v_parametroBaseT2 FROM gestion_granjas.cat_parametros where code_param='param_CBASE2';
	SELECT valor INTO v_parametroExcT2 FROM gestion_granjas.cat_parametros where code_param='param_BEXCEDENTE2';

    SET IdUltima = -1;               
    -- Se abre cursor
    SELECT count(0) into TOTAL0 FROM gestion_granjas.cat_medidores  where estatus='A';
    
     -- Se obtiene el periodo anterior
    SELECT date_format(DATE_ADD(fechaTarifa,INTERVAL -1 MONTH ),'%m'),
			date_format(DATE_ADD(fechaTarifa,INTERVAL -1 MONTH ),'%Y') into v_periodoAnt,v_AnioAnt  from dual;
    
	OPEN cur; 
	 read_loop: LOOP
		FETCH cur INTO v_medidor,v_baseCNATerreno;
	   
    --   insert into  gestion_granjas.test(valor)values(concat("0 ",v_consumo," - ",v_medidor,' - ',salida));

     
				IF p0 = TOTAL0 THEN
                                  -- CLOSE curAnt;
					LEAVE read_loop;
				END IF;
                      
                    SET p0 = p0 + 1;


	-- 	 IF  salida =1  THEN
     --    close cur;
	-- 	  LEAVE read_loop;
 -- 	 	 END IF;
		-- 	Calculo del consumo de agua
        SELECT IFNULL(lectura,0) into v_consumo_ant  FROM gestion_granjas.reg_lecturas where  id_medidor=v_medidor 
				and periodo=v_periodoAnt and anio=v_AnioAnt;
        
          IF(v_consumo_ant IS NULL or v_consumo_ant="") THEN
			set v_consumo_ant=0;
            end if;
            
        SELECT IFNULL(lectura,0) into v_consumo  FROM gestion_granjas.reg_lecturas where  id_medidor=v_medidor 
				and estatus='A' and periodo=p_periodo and anio=p_anio;
		
        IF(v_consumo=NULL) THEN
			set v_consumo=0;
            end if;
        
        set v_consumo_total=v_consumo - v_consumo_ant;
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
			
			-- ***********************************************************
			-- **			TARIFA 1
			-- ***********************************************************
            SET vTipoTarifa=1;
			IF(v_consumo_total<= v_baseCNATerreno) THEN
			
					SET importeCuota=v_consumo_total*v_BCNA;
			
				ELSE 
					SET v_importe1 = v_baseCNATerreno *  v_BCNA;
					SET v_excedente = v_consumo_total - v_baseCNATerreno;
					
					SELECT costo into v_costo FROM gestion_granjas.excedente
							WHERE ID= (SELECT MIN(ID) FROM gestion_granjas.excedente
														WHERE ESTATUS='A' and (rangoIni<=v_excedente and v_excedente<=rangoFin) and tarifa=1) and tarifa=1 ;
					
					SET v_importe2 = v_excedente *  v_costo;
					SET importeCuota= v_importe1 +v_importe2 ;

			
			END IF; 
           
			
			-- Fin TARIFA 1
			-- ************************************************************
			
        ELSE 
			SET vTipoTarifa=2;
			-- ***********************************************************
			-- **			TARIFA 2
			-- ***********************************************************
            IF(v_consumo_total<= 200) THEN
           
				 SELECT COSTO INTO v_costo FROM gestion_granjas.excedente WHERE rangoIni=v_consumo_total AND ESTATUS='A';
				 
				 SET importeCuota=v_costo + v_parametroBaseT2;
            ELSE
                  SET importeCuota=(v_consumo_total * v_parametroExcT2 )+ v_parametroBaseT2;
			  END IF;
			  -- Fin TARIFA 2
			-- ***********************************************************
       
       END IF;
       
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
         
		-- insert into  gestion_granjas.test(valor)values(concat("4 ",valColono));
        
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
								
                      --      commit;
										
                              end if;
						 -- END LOOP LEE_CICLO; 
                           SET p1 = p1 + 1;
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
  set v_anio='2016';
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


	SELECT (CASE WHEN NOW()>=MIN(FECHA_APLICACION) THEN 1 ELSE 0 END) 
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
if(opL=1) then
	/*Consulta por manzana
    P_PARAM1 HACE REFERENCIA AL LOTE
    */
    select a.id_lote,b.nombre, c.manzana,a.lote
	from gestion_granjas.cat_lotes as a 
	left join gestion_granjas.cat_colonos as b
	on a.id_colono=b.id_colono
	left join gestion_granjas.cat_manzanas as c
	on a.id_manzana=c.id_manzana
	where a.id_lote=p_param1;
elseif(opL=2) then
	/*Consulta por manzana
      P_PARAM1 HACE REFERENCIA AL LOTE
    P_PARAM2 HACE REFERENCIA AL PERIDO
    P_PARAM3 HACE REFERENCIA AL AÑO
    */
	select b.id_lote,b.medidor, b.base_cna, a.lectura,a.periodo,a.anio
	from gestion_granjas.reg_lecturas as a
	left join gestion_granjas.cat_medidores as b
	on a.id_medidor=b.id_medidor where b.id_lote=p_param1 and a.periodo=p_param2 and a.anio=p_param3;
elseif(opL=3)then
	/*Consulta para registro de lecturas
    P_PARAM1 HACE REFERENCIA AL LOTE
    P_PARAM2 HACE REFERENCIA AL SERVICIO (3 ES AGUA)
    */
	SET lc_time_names = 'es_UY';

	SELECT a.id_factor as id_lote,c.servicio,
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
	WHERE id_factor=p_param1 AND a.id_servicio=p_param2;
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

-- Dump completed on 2016-10-09 12:36:50
