/*
SQLyog Ultimate v9.02 
MySQL - 5.5.5-10.1.25-MariaDB : Database - pu_ingenieria
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pu_ingenieria` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pu_ingenieria`;

/*Table structure for table `pu01regusu` */

DROP TABLE IF EXISTS `pu01regusu`;

CREATE TABLE `pu01regusu` (
  `PU01CEDUSU` int(11) NOT NULL,
  `PU01NOMUSU` varchar(30) NOT NULL,
  `PU01APE1USU` varchar(30) NOT NULL,
  `PU01APE2USU` varchar(30) NOT NULL,
  PRIMARY KEY (`PU01CEDUSU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu01regusu` */

LOCK TABLES `pu01regusu` WRITE;

insert  into `pu01regusu`(`PU01CEDUSU`,`PU01NOMUSU`,`PU01APE1USU`,`PU01APE2USU`) values (12,'abraham Josue','Obando','Villegas'),(123,'Alberth','Esquivel','Alvarado'),(1234,'Mauricio','Chevez','Gutierrez'),(12345,'Alberth','Espinoza','Ortiz');

UNLOCK TABLES;

/*Table structure for table `pu02infusu` */

DROP TABLE IF EXISTS `pu02infusu`;

CREATE TABLE `pu02infusu` (
  `PU01CEDUSU` int(11) NOT NULL,
  `PU02TELUSU` varchar(30) NOT NULL,
  `PU02CORUSU` varchar(100) NOT NULL,
  `PU03IDPUES` int(11) NOT NULL,
  `PU02USUARIO` varchar(30) NOT NULL,
  `PU02CLAVE` varchar(30) NOT NULL,
  PRIMARY KEY (`PU01CEDUSU`),
  KEY `FK_PU03IDPUES` (`PU03IDPUES`),
  CONSTRAINT `FK_PU01CEDUSU` FOREIGN KEY (`PU01CEDUSU`) REFERENCES `pu01regusu` (`PU01CEDUSU`),
  CONSTRAINT `FK_PU03IDPUES` FOREIGN KEY (`PU03IDPUES`) REFERENCES `pu03puestos` (`PU03IDPUES`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu02infusu` */

LOCK TABLES `pu02infusu` WRITE;

insert  into `pu02infusu`(`PU01CEDUSU`,`PU02TELUSU`,`PU02CORUSU`,`PU03IDPUES`,`PU02USUARIO`,`PU02CLAVE`) values (12,'1030','josue@',1,'asd','afas'),(123,'909090','alberth@',4,'usuario','clave'),(1234,'1010','chevez@',2,'123','123'),(12345,'3030','arubato12',3,'aru','123');

UNLOCK TABLES;

/*Table structure for table `pu03puestos` */

DROP TABLE IF EXISTS `pu03puestos`;

CREATE TABLE `pu03puestos` (
  `PU03IDPUES` int(11) NOT NULL,
  `PU03PUESTO` varchar(30) NOT NULL,
  PRIMARY KEY (`PU03IDPUES`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu03puestos` */

LOCK TABLES `pu03puestos` WRITE;

insert  into `pu03puestos`(`PU03IDPUES`,`PU03PUESTO`) values (1,'Coordinador'),(2,'Asistente'),(3,'Alcalde'),(4,'Administrador'),(5,'Estudiante');

UNLOCK TABLES;

/*Table structure for table `pu04regtra` */

DROP TABLE IF EXISTS `pu04regtra`;

CREATE TABLE `pu04regtra` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU04FETRA` date NOT NULL,
  `PU07IDTFR` int(11) NOT NULL,
  `PU04NORTE` int(11) NOT NULL,
  `PU04ESTE` int(11) NOT NULL,
  `PU04ALTITUD` int(11) NOT NULL,
  `PU12IDTDESEC` int(11) NOT NULL,
  PRIMARY KEY (`PU04IDTRA`),
  KEY `FK_PU07IDTFRREGTRA` (`PU07IDTFR`),
  KEY `FK_PU08IDGPSREGTRA` (`PU04NORTE`),
  KEY `FK_PU12IDTDESECREGTRA` (`PU04ESTE`),
  KEY `FK_PU26IDPLANREGTRA` (`PU04ALTITUD`),
  KEY `FK_PU12IDTDESECREGTRA1` (`PU12IDTDESEC`),
  CONSTRAINT `FK_PU07IDTFRREGTRA` FOREIGN KEY (`PU07IDTFR`) REFERENCES `pu07terrft` (`PU07IDTFR`),
  CONSTRAINT `FK_PU12IDTDESECREGTRA1` FOREIGN KEY (`PU12IDTDESEC`) REFERENCES `pu12tipdesec` (`PU12IDTDESEC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu04regtra` */

LOCK TABLES `pu04regtra` WRITE;

insert  into `pu04regtra`(`PU04IDTRA`,`PU04FETRA`,`PU07IDTFR`,`PU04NORTE`,`PU04ESTE`,`PU04ALTITUD`,`PU12IDTDESEC`) values (1,'2017-10-10',2,110,110,210,1),(2,'2001-10-10',2,110,110,210,1),(3,'2002-10-10',2,110,110,210,1),(4,'2003-10-10',2,110,110,210,1),(5,'2004-10-10',2,110,110,210,1),(6,'2005-10-10',2,110,110,210,1),(7,'2006-10-10',2,110,110,210,1),(8,'2007-10-10',2,110,110,210,1),(9,'2008-10-10',2,110,110,210,1),(10,'2009-10-10',2,110,110,210,1),(11,'2010-10-10',2,110,110,210,1),(12,'2011-10-10',2,110,110,210,1),(13,'2012-10-10',2,110,110,210,1),(14,'2013-10-10',2,110,110,210,1),(15,'2014-10-10',2,110,110,210,1),(16,'2015-10-10',2,110,110,210,1),(17,'2016-10-10',2,110,110,210,1),(18,'2017-10-10',2,110,110,210,1),(19,'2018-10-10',2,110,110,210,1),(20,'2019-10-10',2,110,110,210,1),(21,'2020-10-10',2,110,110,210,1),(22,'2021-10-10',2,110,110,210,1),(23,'2022-10-10',2,110,110,210,1),(24,'2023-10-10',2,110,110,210,1),(25,'2024-10-10',2,110,110,210,1),(26,'2025-10-10',2,110,110,210,1),(27,'2026-10-10',2,110,110,210,1),(28,'2027-10-10',2,110,110,210,1),(29,'2028-10-10',2,110,110,210,1),(30,'2029-10-10',2,110,110,210,1),(31,'2030-10-10',2,110,110,210,1),(32,'2031-10-10',2,110,110,210,1),(33,'2032-10-10',2,110,110,210,1),(34,'2033-10-10',2,110,110,210,1),(35,'2034-10-10',2,110,110,210,1),(36,'2035-10-10',2,110,110,210,1),(37,'2036-10-10',2,110,110,210,1),(38,'2036-10-10',2,110,110,210,1),(39,'2037-10-10',2,110,110,210,1),(40,'2038-10-10',2,110,110,210,1),(41,'2039-10-10',2,110,110,210,1),(42,'2017-10-10',2,110,110,210,1),(43,'2017-10-10',2,110,110,210,1),(44,'2017-10-10',2,110,110,210,1),(45,'2017-10-10',2,110,110,210,1),(46,'2017-10-10',2,110,110,210,1),(47,'2017-10-10',2,110,110,210,1),(48,'2017-10-10',2,110,110,210,1),(49,'2017-10-10',2,110,110,210,1),(50,'2017-10-10',2,110,110,210,1),(51,'2017-10-10',2,110,110,210,1),(52,'2017-10-10',2,110,110,210,1),(53,'2017-10-10',2,110,110,210,1),(54,'2017-10-10',2,110,110,210,1),(55,'2017-10-10',2,110,110,210,1),(56,'2017-10-10',2,110,110,210,1),(57,'2017-10-10',2,110,110,210,1),(58,'2017-10-10',2,110,110,210,1),(59,'2017-10-10',2,110,110,210,1),(60,'2017-10-10',2,110,110,210,1),(61,'2017-10-10',2,110,110,210,1),(62,'2017-10-10',2,110,110,210,1),(63,'2017-10-10',2,110,110,210,1),(64,'2017-10-10',2,110,110,210,1),(65,'2017-10-10',2,110,110,210,1),(66,'2017-10-10',2,110,110,210,1),(67,'2017-10-10',2,110,110,210,1),(68,'2017-10-10',2,110,110,210,1),(69,'2017-10-10',2,110,110,210,1),(70,'2017-10-10',2,110,110,210,1),(71,'2017-10-10',2,110,110,210,1),(72,'2017-10-10',2,110,110,210,1),(73,'2017-10-10',2,110,110,210,1),(74,'2017-10-10',2,110,110,210,1),(75,'2017-10-10',2,110,110,210,1),(76,'2017-10-10',2,110,110,210,1),(77,'2017-10-10',2,110,110,210,1),(78,'2017-10-10',2,110,110,210,1),(79,'2017-10-10',2,110,110,210,1),(80,'2017-10-10',2,110,110,210,1),(81,'2017-10-10',2,110,110,210,1),(82,'2017-10-10',2,110,110,210,1),(83,'2017-10-10',2,110,110,210,1),(84,'2017-10-10',2,110,110,210,1),(85,'2017-10-10',2,110,110,210,1),(86,'2017-10-10',2,110,110,210,1),(87,'2017-10-10',2,110,110,210,1),(88,'2017-10-10',2,110,110,210,1),(89,'2017-10-10',2,110,110,210,1),(90,'2017-10-10',2,110,110,210,1),(91,'2017-10-10',2,110,110,210,1),(92,'2017-10-10',2,110,110,210,1),(93,'2017-10-10',2,110,110,210,1),(94,'2017-10-10',2,110,110,210,1),(95,'2017-10-10',2,110,110,210,1),(96,'2017-10-10',2,110,110,210,1),(98,'2017-10-10',2,110,110,210,1),(99,'2017-10-10',2,110,110,210,1),(100,'2017-10-10',2,110,110,210,1);

UNLOCK TABLES;

/*Table structure for table `pu05unitra` */

DROP TABLE IF EXISTS `pu05unitra`;

CREATE TABLE `pu05unitra` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU06IDACTDES` int(11) NOT NULL,
  KEY `FK_PU04IDTRAUNITRA` (`PU04IDTRA`),
  KEY `FK_PU06IDACTDESUNITRA` (`PU06IDACTDES`),
  CONSTRAINT `FK_PU04IDTRAUNITRA` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`),
  CONSTRAINT `FK_PU06IDACTDESUNITRA` FOREIGN KEY (`PU06IDACTDES`) REFERENCES `pu06actdes` (`PU06IDACTDES`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu05unitra` */

LOCK TABLES `pu05unitra` WRITE;

insert  into `pu05unitra`(`PU04IDTRA`,`PU06IDACTDES`) values (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(13,1),(13,2),(13,3),(13,4),(13,5),(13,6),(14,1),(14,2),(14,3),(14,4),(14,5),(14,6),(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(18,1),(18,2),(18,3),(18,4),(18,5),(18,6),(19,1),(19,2),(19,3),(19,4),(19,5),(19,6),(20,1),(20,2),(20,3),(20,4),(20,5),(20,6),(21,1),(21,2),(21,3),(21,4),(21,5),(21,6),(22,1),(22,2),(22,3),(22,4),(22,5),(22,6),(23,1),(23,2),(23,3),(23,4),(23,5),(23,6),(24,1),(24,2),(24,3),(24,4),(24,5),(24,6),(25,1),(25,2),(25,3),(25,4),(25,5),(25,6),(26,1),(26,2),(26,3),(26,4),(26,5),(26,6),(27,1),(27,2),(27,3),(27,4),(27,5),(27,6),(28,1),(28,2),(28,3),(28,4),(28,5),(28,6),(29,1),(29,2),(29,3),(29,4),(29,5),(29,6),(30,1),(30,2),(30,3),(30,4),(30,5),(30,6),(31,1),(31,2),(31,3),(31,4),(31,5),(31,6),(32,1),(32,2),(32,3),(32,4),(32,5),(32,6),(33,1),(33,2),(33,3),(33,4),(33,5),(33,6),(34,1),(34,2),(34,3),(34,4),(34,5),(34,6),(35,1),(35,2),(35,3),(35,4),(35,5),(35,6),(36,1),(36,2),(36,3),(36,4),(36,5),(36,6),(37,1),(37,2),(37,3),(37,4),(37,5),(37,6),(38,1),(38,2),(38,3),(38,4),(38,5),(38,6),(39,1),(39,2),(39,3),(39,4),(39,5),(39,6),(40,1),(40,2),(40,3),(40,4),(40,5),(40,6),(41,1),(41,2),(41,3),(41,4),(41,5),(41,6),(42,1),(42,2),(42,3),(42,4),(42,5),(42,6),(43,1),(43,2),(43,3),(43,4),(43,5),(43,6),(44,1),(44,2),(44,3),(44,4),(44,5),(44,6),(45,1),(45,2),(45,3),(45,4),(45,5),(45,6),(46,1),(46,2),(46,3),(46,4),(46,5),(46,6),(47,1),(47,2),(47,3),(47,4),(47,5),(47,6),(48,1),(48,2),(48,3),(48,4),(48,5),(48,6),(49,1),(49,2),(49,3),(49,4),(49,5),(49,6),(50,1),(50,2),(50,3),(50,4),(50,5),(50,6),(51,1),(51,2),(51,3),(51,4),(51,5),(51,6),(52,1),(52,2),(52,3),(52,4),(52,5),(52,6),(53,1),(53,2),(53,3),(53,4),(53,5),(53,6),(54,1),(54,2),(54,3),(54,4),(54,5),(54,6),(55,1),(55,2),(55,3),(55,4),(55,5),(55,6),(56,1),(56,2),(56,3),(56,4),(56,5),(56,6),(57,1),(57,2),(57,3),(57,4),(57,5),(57,6),(58,1),(58,2),(58,3),(58,4),(58,5),(58,6),(59,1),(59,2),(59,3),(59,4),(59,5),(59,6),(60,1),(60,2),(60,3),(60,4),(60,5),(60,6),(61,1),(61,2),(61,3),(61,4),(61,5),(61,6),(62,1),(62,2),(62,3),(62,4),(62,5),(62,6),(63,1),(63,2),(63,3),(63,4),(63,5),(63,6),(64,1),(64,2),(64,3),(64,4),(64,5),(64,6),(65,1),(65,2),(65,3),(65,4),(65,5),(65,6),(66,1),(66,2),(66,3),(66,4),(66,5),(66,6),(67,1),(67,2),(67,3),(67,4),(67,5),(67,6),(68,1),(68,2),(68,3),(68,4),(68,5),(68,6),(69,1),(69,2),(69,3),(69,4),(69,5),(69,6),(70,1),(70,2),(70,3),(70,4),(70,5),(70,6),(71,1),(71,2),(71,3),(71,4),(71,5),(71,6),(72,1),(72,2),(72,3),(72,4),(72,5),(72,6),(73,1),(73,2),(73,3),(73,4),(73,5),(73,6),(74,1),(74,2),(74,3),(74,4),(74,5),(74,6),(75,1),(75,2),(75,3),(75,4),(75,5),(75,6),(76,1),(76,2),(76,3),(76,4),(76,5),(76,6),(77,1),(77,2),(77,3),(77,4),(77,5),(77,6),(78,1),(78,2),(78,3),(78,4),(78,5),(78,6),(79,1),(79,2),(79,3),(79,4),(79,5),(79,6),(80,1),(80,2),(80,3),(80,4),(80,5),(80,6),(81,1),(81,2),(81,3),(81,4),(81,5),(81,6),(82,1),(82,2),(82,3),(82,4),(82,5),(82,6),(83,1),(83,2),(83,3),(83,4),(83,5),(83,6),(84,1),(84,2),(84,3),(84,4),(84,5),(84,6),(85,1),(85,2),(85,3),(85,4),(85,5),(85,6),(86,1),(86,2),(86,3),(86,4),(86,5),(86,6),(87,1),(87,2),(87,3),(87,4),(87,5),(87,6),(88,1),(88,2),(88,3),(88,4),(88,5),(88,6),(89,1),(89,2),(89,3),(89,4),(89,5),(89,6),(90,1),(90,2),(90,3),(90,4),(90,5),(90,6),(91,1),(91,2),(91,3),(91,4),(91,5),(91,6),(92,1),(92,2),(92,3),(92,4),(92,5),(92,6),(93,1),(93,2),(93,3),(93,4),(93,5),(93,6),(94,1),(94,2),(94,3),(94,4),(94,5),(94,6),(95,1),(95,2),(95,3),(95,4),(95,5),(95,6),(96,1),(96,2),(96,3),(96,4),(96,5),(96,6),(98,1),(98,2),(98,3),(98,4),(98,5),(98,6),(99,1),(99,2),(99,3),(99,4),(99,5),(99,6),(100,1),(100,2),(100,3),(100,4),(100,5),(100,6);

UNLOCK TABLES;

/*Table structure for table `pu06actdes` */

DROP TABLE IF EXISTS `pu06actdes`;

CREATE TABLE `pu06actdes` (
  `PU06IDACTDES` int(11) NOT NULL,
  `PU06DESAD` varchar(100) NOT NULL,
  PRIMARY KEY (`PU06IDACTDES`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu06actdes` */

LOCK TABLES `pu06actdes` WRITE;

insert  into `pu06actdes`(`PU06IDACTDES`,`PU06DESAD`) values (1,'Infraestructura de Tipo Residencial'),(2,'Infraestructura de Tipo Comercial'),(3,'Infraestructura de Tipo Institucional'),(4,'Infraestructura de Tipo Residencial y Comercial'),(5,'No Existen Desarrollos en la Zona'),(6,'Otros');

UNLOCK TABLES;

/*Table structure for table `pu07terrft` */

DROP TABLE IF EXISTS `pu07terrft`;

CREATE TABLE `pu07terrft` (
  `PU07IDTFR` int(11) NOT NULL,
  `PU07NOMTFR` varchar(30) NOT NULL,
  PRIMARY KEY (`PU07IDTFR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu07terrft` */

LOCK TABLES `pu07terrft` WRITE;

insert  into `pu07terrft`(`PU07IDTFR`,`PU07NOMTFR`) values (1,'lastre'),(2,'piedra'),(3,'Adfda');

UNLOCK TABLES;

/*Table structure for table `pu08regcor` */

DROP TABLE IF EXISTS `pu08regcor`;

CREATE TABLE `pu08regcor` (
  `PU08IDGPS` int(11) NOT NULL,
  `PU08NORTE` int(11) NOT NULL,
  `PU08ESTE` int(11) NOT NULL,
  `PU08ALTITUD` int(11) NOT NULL,
  PRIMARY KEY (`PU08IDGPS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu08regcor` */

LOCK TABLES `pu08regcor` WRITE;

insert  into `pu08regcor`(`PU08IDGPS`,`PU08NORTE`,`PU08ESTE`,`PU08ALTITUD`) values (1,100,100,100);

UNLOCK TABLES;

/*Table structure for table `pu09desceg` */

DROP TABLE IF EXISTS `pu09desceg`;

CREATE TABLE `pu09desceg` (
  `PU09IDDEG` int(11) NOT NULL,
  `PU09DESCREG` varchar(30) NOT NULL,
  PRIMARY KEY (`PU09IDDEG`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu09desceg` */

LOCK TABLES `pu09desceg` WRITE;

insert  into `pu09desceg`(`PU09IDDEG`,`PU09DESCREG`) values (1,'Topografía Plana'),(2,'Topografía Semiplano'),(3,'Topografía con Depresión'),(4,'Existen Movimiento de Tierra'),(5,'Futuro Movimiento de Tierra'),(6,'Topografía Irregular'),(7,'Otro');

UNLOCK TABLES;

/*Table structure for table `pu09tradeg` */

DROP TABLE IF EXISTS `pu09tradeg`;

CREATE TABLE `pu09tradeg` (
  `PU09IDDEG` int(11) NOT NULL,
  `PU04IDTRA` int(11) NOT NULL,
  KEY `FK_PU09IDDEGREGTRA` (`PU04IDTRA`),
  KEY `FK_PU06IDACTDESDESCEG` (`PU09IDDEG`),
  CONSTRAINT `FK_PU06IDACTDESDESCEG` FOREIGN KEY (`PU09IDDEG`) REFERENCES `pu09desceg` (`PU09IDDEG`),
  CONSTRAINT `FK_PU09IDDEGREGTRA` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu09tradeg` */

LOCK TABLES `pu09tradeg` WRITE;

insert  into `pu09tradeg`(`PU09IDDEG`,`PU04IDTRA`) values (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(1,13),(2,13),(3,13),(4,13),(5,13),(6,13),(7,13),(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(1,15),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(1,19),(2,19),(3,19),(4,19),(5,19),(6,19),(7,19),(1,20),(2,20),(3,20),(4,20),(5,20),(6,20),(7,20),(1,21),(2,21),(3,21),(4,21),(5,21),(6,21),(7,21),(1,22),(2,22),(3,22),(4,22),(5,22),(6,22),(7,22),(1,23),(2,23),(3,23),(4,23),(5,23),(6,23),(7,23),(1,24),(2,24),(3,24),(4,24),(5,24),(6,24),(7,24),(1,25),(2,25),(3,25),(4,25),(5,25),(6,25),(7,25),(1,26),(2,26),(3,26),(4,26),(5,26),(6,26),(7,26),(1,27),(2,27),(3,27),(4,27),(5,27),(6,27),(7,27),(1,28),(2,28),(3,28),(4,28),(5,28),(6,28),(7,28),(1,29),(2,29),(3,29),(4,29),(5,29),(6,29),(7,29),(1,30),(2,30),(3,30),(4,30),(5,30),(6,30),(7,30),(1,31),(2,31),(3,31),(4,31),(5,31),(6,31),(7,31),(1,32),(2,32),(3,32),(4,32),(5,32),(6,32),(7,32),(1,33),(2,33),(3,33),(4,33),(5,33),(6,33),(7,33),(1,34),(2,34),(3,34),(4,34),(5,34),(6,34),(7,34),(1,35),(2,35),(3,35),(4,35),(5,35),(6,35),(7,35),(1,36),(2,36),(3,36),(4,36),(5,36),(6,36),(7,36),(1,37),(2,37),(3,37),(4,37),(5,37),(6,37),(7,37),(1,38),(2,38),(3,38),(4,38),(5,38),(6,38),(7,38),(1,39),(2,39),(3,39),(4,39),(5,39),(6,39),(7,39),(1,40),(2,40),(3,40),(4,40),(5,40),(6,40),(7,40),(1,41),(2,41),(3,41),(4,41),(5,41),(6,41),(7,41),(1,42),(2,42),(3,42),(4,42),(5,42),(6,42),(7,42),(1,43),(2,43),(3,43),(4,43),(5,43),(6,43),(7,43),(1,44),(2,44),(3,44),(4,44),(5,44),(6,44),(7,44),(1,45),(2,45),(3,45),(4,45),(5,45),(6,45),(7,45),(1,46),(2,46),(3,46),(4,46),(5,46),(6,46),(7,46),(1,47),(2,47),(3,47),(4,47),(5,47),(6,47),(7,47),(1,48),(2,48),(3,48),(4,48),(5,48),(6,48),(7,48),(1,49),(2,49),(3,49),(4,49),(5,49),(6,49),(7,49),(1,50),(2,50),(3,50),(4,50),(5,50),(6,50),(7,50),(1,51),(2,51),(3,51),(4,51),(5,51),(6,51),(7,51),(1,52),(2,52),(3,52),(4,52),(5,52),(6,52),(7,52),(1,53),(2,53),(3,53),(4,53),(5,53),(6,53),(7,53),(1,54),(2,54),(3,54),(4,54),(5,54),(6,54),(7,54),(1,55),(2,55),(3,55),(4,55),(5,55),(6,55),(7,55),(1,56),(2,56),(3,56),(4,56),(5,56),(6,56),(7,56),(1,57),(2,57),(3,57),(4,57),(5,57),(6,57),(7,57),(1,58),(2,58),(3,58),(4,58),(5,58),(6,58),(7,58),(1,59),(2,59),(3,59),(4,59),(5,59),(6,59),(7,59),(1,60),(2,60),(3,60),(4,60),(5,60),(6,60),(7,60),(1,61),(2,61),(3,61),(4,61),(5,61),(6,61),(7,61),(1,62),(2,62),(3,62),(4,62),(5,62),(6,62),(7,62),(1,63),(2,63),(3,63),(4,63),(5,63),(6,63),(7,63),(1,64),(2,64),(3,64),(4,64),(5,64),(6,64),(7,64),(1,65),(2,65),(3,65),(4,65),(5,65),(6,65),(7,65),(1,66),(2,66),(3,66),(4,66),(5,66),(6,66),(7,66),(1,67),(2,67),(3,67),(4,67),(5,67),(6,67),(7,67),(1,68),(2,68),(3,68),(4,68),(5,68),(6,68),(7,68),(1,69),(2,69),(3,69),(4,69),(5,69),(6,69),(7,69),(1,70),(2,70),(3,70),(4,70),(5,70),(6,70),(7,70),(1,71),(2,71),(3,71),(4,71),(5,71),(6,71),(7,71),(1,72),(2,72),(3,72),(4,72),(5,72),(6,72),(7,72),(1,73),(2,73),(3,73),(4,73),(5,73),(6,73),(7,73),(1,74),(2,74),(3,74),(4,74),(5,74),(6,74),(7,74),(1,75),(2,75),(3,75),(4,75),(5,75),(6,75),(7,75),(1,76),(2,76),(3,76),(4,76),(5,76),(6,76),(7,76),(1,77),(2,77),(3,77),(4,77),(5,77),(6,77),(7,77),(1,78),(2,78),(3,78),(4,78),(5,78),(6,78),(7,78),(1,79),(2,79),(3,79),(4,79),(5,79),(6,79),(7,79),(1,80),(2,80),(3,80),(4,80),(5,80),(6,80),(7,80),(1,81),(2,81),(3,81),(4,81),(5,81),(6,81),(7,81),(1,82),(2,82),(3,82),(4,82),(5,82),(6,82),(7,82),(1,83),(2,83),(3,83),(4,83),(5,83),(6,83),(7,83),(1,84),(2,84),(3,84),(4,84),(5,84),(6,84),(7,84),(1,85),(2,85),(3,85),(4,85),(5,85),(6,85),(7,85),(1,86),(2,86),(3,86),(4,86),(5,86),(6,86),(7,86),(1,87),(2,87),(3,87),(4,87),(5,87),(6,87),(7,87),(1,88),(2,88),(3,88),(4,88),(5,88),(6,88),(7,88),(1,89),(2,89),(3,89),(4,89),(5,89),(6,89),(7,89),(1,90),(2,90),(3,90),(4,90),(5,90),(6,90),(7,90),(1,91),(2,91),(3,91),(4,91),(5,91),(6,91),(7,91),(1,92),(2,92),(3,92),(4,92),(5,92),(6,92),(7,92),(1,93),(2,93),(3,93),(4,93),(5,93),(6,93),(7,93),(1,94),(2,94),(3,94),(4,94),(5,94),(6,94),(7,94),(1,95),(2,95),(3,95),(4,95),(5,95),(6,95),(7,95),(1,96),(2,96),(3,96),(4,96),(5,96),(6,96),(7,96),(1,98),(2,98),(3,98),(4,98),(5,98),(6,98),(7,98),(1,99),(2,99),(3,99),(4,99),(5,99),(6,99),(7,99),(1,100),(2,100),(3,100),(4,100),(5,100),(6,100),(7,100);

UNLOCK TABLES;

/*Table structure for table `pu10aspbio` */

DROP TABLE IF EXISTS `pu10aspbio`;

CREATE TABLE `pu10aspbio` (
  `PU10IDASBIO` int(11) NOT NULL,
  `PU10DESCABIO` varchar(30) NOT NULL,
  PRIMARY KEY (`PU10IDASBIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu10aspbio` */

LOCK TABLES `pu10aspbio` WRITE;

insert  into `pu10aspbio`(`PU10IDASBIO`,`PU10DESCABIO`) values (0,'no existe'),(1,'Vegetacion Jardin'),(2,'Tipo Pasto'),(3,'Bosque Primario'),(4,'Bosque Secundario'),(5,'Arboles Dispersion'),(6,'Otros');

UNLOCK TABLES;

/*Table structure for table `pu11uniabio` */

DROP TABLE IF EXISTS `pu11uniabio`;

CREATE TABLE `pu11uniabio` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU10IDASBIO` int(11) NOT NULL,
  KEY `FK_PU10IDASBIOREGTRA` (`PU04IDTRA`),
  KEY `FK_PU10IDASBIOASPBIO` (`PU10IDASBIO`),
  CONSTRAINT `FK_PU10IDASBIOASPBIO` FOREIGN KEY (`PU10IDASBIO`) REFERENCES `pu10aspbio` (`PU10IDASBIO`),
  CONSTRAINT `FK_PU10IDASBIOREGTRA` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu11uniabio` */

LOCK TABLES `pu11uniabio` WRITE;

insert  into `pu11uniabio`(`PU04IDTRA`,`PU10IDASBIO`) values (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(13,1),(13,2),(13,3),(13,4),(13,5),(13,6),(14,1),(14,2),(14,3),(14,4),(14,5),(14,6),(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(18,1),(18,2),(18,3),(18,4),(18,5),(18,6),(19,1),(19,2),(19,3),(19,4),(19,5),(19,6),(20,1),(20,2),(20,3),(20,4),(20,5),(20,6),(21,1),(21,2),(21,3),(21,4),(21,5),(21,6),(22,1),(22,2),(22,3),(22,4),(22,5),(22,6),(23,1),(23,2),(23,3),(23,4),(23,5),(23,6),(24,1),(24,2),(24,3),(24,4),(24,5),(24,6),(25,1),(25,2),(25,3),(25,4),(25,5),(25,6),(26,1),(26,2),(26,3),(26,4),(26,5),(26,6),(27,1),(27,2),(27,3),(27,4),(27,5),(27,6),(28,1),(28,2),(28,3),(28,4),(28,5),(28,6),(29,1),(29,2),(29,3),(29,4),(29,5),(29,6),(30,1),(30,2),(30,3),(30,4),(30,5),(30,6),(31,1),(31,2),(31,3),(31,4),(31,5),(31,6),(32,1),(32,2),(32,3),(32,4),(32,5),(32,6),(33,1),(33,2),(33,3),(33,4),(33,5),(33,6),(34,1),(34,2),(34,3),(34,4),(34,5),(34,6),(35,1),(35,2),(35,3),(35,4),(35,5),(35,6),(36,1),(36,2),(36,3),(36,4),(36,5),(36,6),(37,1),(37,2),(37,3),(37,4),(37,5),(37,6),(38,1),(38,2),(38,3),(38,4),(38,5),(38,6),(39,1),(39,2),(39,3),(39,4),(39,5),(39,6),(40,1),(40,2),(40,3),(40,4),(40,5),(40,6),(41,1),(41,2),(41,3),(41,4),(41,5),(41,6),(42,1),(42,2),(42,3),(42,4),(42,5),(42,6),(43,1),(43,2),(43,3),(43,4),(43,5),(43,6),(44,1),(44,2),(44,3),(44,4),(44,5),(44,6),(45,1),(45,2),(45,3),(45,4),(45,5),(45,6),(46,1),(46,2),(46,3),(46,4),(46,5),(46,6),(47,1),(47,2),(47,3),(47,4),(47,5),(47,6),(48,1),(48,2),(48,3),(48,4),(48,5),(48,6),(49,1),(49,2),(49,3),(49,4),(49,5),(49,6),(50,1),(50,2),(50,3),(50,4),(50,5),(50,6),(51,1),(51,2),(51,3),(51,4),(51,5),(51,6),(52,1),(52,2),(52,3),(52,4),(52,5),(52,6),(53,1),(53,2),(53,3),(53,4),(53,5),(53,6),(54,1),(54,2),(54,3),(54,4),(54,5),(54,6),(55,1),(55,2),(55,3),(55,4),(55,5),(55,6),(56,1),(56,2),(56,3),(56,4),(56,5),(56,6),(57,1),(57,2),(57,3),(57,4),(57,5),(57,6),(58,1),(58,2),(58,3),(58,4),(58,5),(58,6),(59,1),(59,2),(59,3),(59,4),(59,5),(59,6),(60,1),(60,2),(60,3),(60,4),(60,5),(60,6),(61,1),(61,2),(61,3),(61,4),(61,5),(61,6),(62,1),(62,2),(62,3),(62,4),(62,5),(62,6),(63,1),(63,2),(63,3),(63,4),(63,5),(63,6),(64,1),(64,2),(64,3),(64,4),(64,5),(64,6),(65,1),(65,2),(65,3),(65,4),(65,5),(65,6),(66,1),(66,2),(66,3),(66,4),(66,5),(66,6),(67,1),(67,2),(67,3),(67,4),(67,5),(67,6),(68,1),(68,2),(68,3),(68,4),(68,5),(68,6),(69,1),(69,2),(69,3),(69,4),(69,5),(69,6),(70,1),(70,2),(70,3),(70,4),(70,5),(70,6),(71,1),(71,2),(71,3),(71,4),(71,5),(71,6),(72,1),(72,2),(72,3),(72,4),(72,5),(72,6),(73,1),(73,2),(73,3),(73,4),(73,5),(73,6),(74,1),(74,2),(74,3),(74,4),(74,5),(74,6),(75,1),(75,2),(75,3),(75,4),(75,5),(75,6),(76,1),(76,2),(76,3),(76,4),(76,5),(76,6),(77,1),(77,2),(77,3),(77,4),(77,5),(77,6),(78,1),(78,2),(78,3),(78,4),(78,5),(78,6),(79,1),(79,2),(79,3),(79,4),(79,5),(79,6),(80,1),(80,2),(80,3),(80,4),(80,5),(80,6),(81,1),(81,2),(81,3),(81,4),(81,5),(81,6),(82,1),(82,2),(82,3),(82,4),(82,5),(82,6),(83,1),(83,2),(83,3),(83,4),(83,5),(83,6),(84,1),(84,2),(84,3),(84,4),(84,5),(84,6),(85,1),(85,2),(85,3),(85,4),(85,5),(85,6),(86,1),(86,2),(86,3),(86,4),(86,5),(86,6),(87,1),(87,2),(87,3),(87,4),(87,5),(87,6),(88,1),(88,2),(88,3),(88,4),(88,5),(88,6),(89,1),(89,2),(89,3),(89,4),(89,5),(89,6),(90,1),(90,2),(90,3),(90,4),(90,5),(90,6),(91,1),(91,2),(91,3),(91,4),(91,5),(91,6),(92,1),(92,2),(92,3),(92,4),(92,5),(92,6),(93,1),(93,2),(93,3),(93,4),(93,5),(93,6),(94,1),(94,2),(94,3),(94,4),(94,5),(94,6),(95,1),(95,2),(95,3),(95,4),(95,5),(95,6),(96,1),(96,2),(96,3),(96,4),(96,5),(96,6),(98,1),(98,2),(98,3),(98,4),(98,5),(98,6),(99,1),(99,2),(99,3),(99,4),(99,5),(99,6),(100,1),(100,2),(100,3),(100,4),(100,5),(100,6);

UNLOCK TABLES;

/*Table structure for table `pu12tipdesec` */

DROP TABLE IF EXISTS `pu12tipdesec`;

CREATE TABLE `pu12tipdesec` (
  `PU12IDTDESEC` int(11) NOT NULL,
  `PU12TIPODES` varchar(30) NOT NULL,
  PRIMARY KEY (`PU12IDTDESEC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu12tipdesec` */

LOCK TABLES `pu12tipdesec` WRITE;

insert  into `pu12tipdesec`(`PU12IDTDESEC`,`PU12TIPODES`) values (0,'no existe'),(1,'Agricultura');

UNLOCK TABLES;

/*Table structure for table `pu13aarep` */

DROP TABLE IF EXISTS `pu13aarep`;

CREATE TABLE `pu13aarep` (
  `PU13IDAAP` int(11) NOT NULL,
  `PU13DESCAAP` varchar(30) NOT NULL,
  PRIMARY KEY (`PU13IDAAP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu13aarep` */

LOCK TABLES `pu13aarep` WRITE;

insert  into `pu13aarep`(`PU13IDAAP`,`PU13DESCAAP`) values (1,'Quebradas'),(2,'Pozos'),(3,'Río'),(4,'Naciente'),(5,'Acuífero Mala Noche'),(6,'Acuífero Protero Caimital'),(7,'no existe');

UNLOCK TABLES;

/*Table structure for table `pu14trarep` */

DROP TABLE IF EXISTS `pu14trarep`;

CREATE TABLE `pu14trarep` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU13IDAAP` int(11) NOT NULL,
  KEY `FK_PU13IDAAPREGTRA` (`PU04IDTRA`),
  KEY `FK_PU13IDAAPAAREP` (`PU13IDAAP`),
  CONSTRAINT `FK_PU13IDAAPAAREP` FOREIGN KEY (`PU13IDAAP`) REFERENCES `pu13aarep` (`PU13IDAAP`),
  CONSTRAINT `FK_PU13IDAAPREGTRA` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu14trarep` */

LOCK TABLES `pu14trarep` WRITE;

insert  into `pu14trarep`(`PU04IDTRA`,`PU13IDAAP`) values (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,7),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(11,7),(12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(12,7),(13,1),(13,2),(13,3),(13,4),(13,5),(13,6),(13,7),(14,1),(14,2),(14,3),(14,4),(14,5),(14,6),(14,7),(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(15,7),(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(16,7),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(17,7),(18,1),(18,2),(18,3),(18,4),(18,5),(18,6),(18,7),(19,1),(19,2),(19,3),(19,4),(19,5),(19,6),(19,7),(20,1),(20,2),(20,3),(20,4),(20,5),(20,6),(20,7),(21,1),(21,2),(21,3),(21,4),(21,5),(21,6),(21,7),(22,1),(22,2),(22,3),(22,4),(22,5),(22,6),(22,7),(23,1),(23,2),(23,3),(23,4),(23,5),(23,6),(23,7),(24,1),(24,2),(24,3),(24,4),(24,5),(24,6),(24,7),(25,1),(25,2),(25,3),(25,4),(25,5),(25,6),(25,7),(26,1),(26,2),(26,3),(26,4),(26,5),(26,6),(26,7),(27,1),(27,2),(27,3),(27,4),(27,5),(27,6),(27,7),(28,1),(28,2),(28,3),(28,4),(28,5),(28,6),(28,7),(29,1),(29,2),(29,3),(29,4),(29,5),(29,6),(29,7),(30,1),(30,2),(30,3),(30,4),(30,5),(30,6),(30,7),(31,1),(31,2),(31,3),(31,4),(31,5),(31,6),(31,7),(32,1),(32,2),(32,3),(32,4),(32,5),(32,6),(32,7),(33,1),(33,2),(33,3),(33,4),(33,5),(33,6),(33,7),(34,1),(34,2),(34,3),(34,4),(34,5),(34,6),(34,7),(35,1),(35,2),(35,3),(35,4),(35,5),(35,6),(35,7),(36,1),(36,2),(36,3),(36,4),(36,5),(36,6),(36,7),(37,1),(37,2),(37,3),(37,4),(37,5),(37,6),(37,7),(38,1),(38,2),(38,3),(38,4),(38,5),(38,6),(38,7),(39,1),(39,2),(39,3),(39,4),(39,5),(39,6),(39,7),(40,1),(40,2),(40,3),(40,4),(40,5),(40,6),(40,7),(41,1),(41,2),(41,3),(41,4),(41,5),(41,6),(41,7),(42,1),(42,2),(42,3),(42,4),(42,5),(42,6),(42,7),(43,1),(43,2),(43,3),(43,4),(43,5),(43,6),(43,7),(44,1),(44,2),(44,3),(44,4),(44,5),(44,6),(44,7),(45,1),(45,2),(45,3),(45,4),(45,5),(45,6),(45,7),(46,1),(46,2),(46,3),(46,4),(46,5),(46,6),(46,7),(47,1),(47,2),(47,3),(47,4),(47,5),(47,6),(47,7),(48,1),(48,2),(48,3),(48,4),(48,5),(48,6),(48,7),(49,1),(49,2),(49,3),(49,4),(49,5),(49,6),(49,7),(50,1),(50,2),(50,3),(50,4),(50,5),(50,6),(50,7),(51,1),(51,2),(51,3),(51,4),(51,5),(51,6),(51,7),(52,1),(52,2),(52,3),(52,4),(52,5),(52,6),(52,7),(53,1),(53,2),(53,3),(53,4),(53,5),(53,6),(53,7),(54,1),(54,2),(54,3),(54,4),(54,5),(54,6),(54,7),(55,1),(55,2),(55,3),(55,4),(55,5),(55,6),(55,7),(56,1),(56,2),(56,3),(56,4),(56,5),(56,6),(56,7),(57,1),(57,2),(57,3),(57,4),(57,5),(57,6),(57,7),(58,1),(58,2),(58,3),(58,4),(58,5),(58,6),(58,7),(59,1),(59,2),(59,3),(59,4),(59,5),(59,6),(59,7),(60,1),(60,2),(60,3),(60,4),(60,5),(60,6),(60,7),(61,1),(61,2),(61,3),(61,4),(61,5),(61,6),(61,7),(62,1),(62,2),(62,3),(62,4),(62,5),(62,6),(62,7),(63,1),(63,2),(63,3),(63,4),(63,5),(63,6),(63,7),(64,1),(64,2),(64,3),(64,4),(64,5),(64,6),(64,7),(65,1),(65,2),(65,3),(65,4),(65,5),(65,6),(65,7),(66,1),(66,2),(66,3),(66,4),(66,5),(66,6),(66,7),(67,1),(67,2),(67,3),(67,4),(67,5),(67,6),(67,7),(68,1),(68,2),(68,3),(68,4),(68,5),(68,6),(68,7),(69,1),(69,2),(69,3),(69,4),(69,5),(69,6),(69,7),(70,1),(70,2),(70,3),(70,4),(70,5),(70,6),(70,7),(71,1),(71,2),(71,3),(71,4),(71,5),(71,6),(71,7),(72,1),(72,2),(72,3),(72,4),(72,5),(72,6),(72,7),(73,1),(73,2),(73,3),(73,4),(73,5),(73,6),(73,7),(74,1),(74,2),(74,3),(74,4),(74,5),(74,6),(74,7),(75,1),(75,2),(75,3),(75,4),(75,5),(75,6),(75,7),(76,1),(76,2),(76,3),(76,4),(76,5),(76,6),(76,7),(77,1),(77,2),(77,3),(77,4),(77,5),(77,6),(77,7),(78,1),(78,2),(78,3),(78,4),(78,5),(78,6),(78,7),(79,1),(79,2),(79,3),(79,4),(79,5),(79,6),(79,7),(80,1),(80,2),(80,3),(80,4),(80,5),(80,6),(80,7),(81,1),(81,2),(81,3),(81,4),(81,5),(81,6),(81,7),(82,1),(82,2),(82,3),(82,4),(82,5),(82,6),(82,7),(83,1),(83,2),(83,3),(83,4),(83,5),(83,6),(83,7),(84,1),(84,2),(84,3),(84,4),(84,5),(84,6),(84,7),(85,1),(85,2),(85,3),(85,4),(85,5),(85,6),(85,7),(86,1),(86,2),(86,3),(86,4),(86,5),(86,6),(86,7),(87,1),(87,2),(87,3),(87,4),(87,5),(87,6),(87,7),(88,1),(88,2),(88,3),(88,4),(88,5),(88,6),(88,7),(89,1),(89,2),(89,3),(89,4),(89,5),(89,6),(89,7),(90,1),(90,2),(90,3),(90,4),(90,5),(90,6),(90,7),(91,1),(91,2),(91,3),(91,4),(91,5),(91,6),(91,7),(92,1),(92,2),(92,3),(92,4),(92,5),(92,6),(92,7),(93,1),(93,2),(93,3),(93,4),(93,5),(93,6),(93,7),(94,1),(94,2),(94,3),(94,4),(94,5),(94,6),(94,7),(95,1),(95,2),(95,3),(95,4),(95,5),(95,6),(95,7),(96,1),(96,2),(96,3),(96,4),(96,5),(96,6),(96,7),(98,1),(98,2),(98,3),(98,4),(98,5),(98,6),(98,7),(99,1),(99,2),(99,3),(99,4),(99,5),(99,6),(99,7),(100,1),(100,2),(100,3),(100,4),(100,5),(100,6),(100,7);

UNLOCK TABLES;

/*Table structure for table `pu15serv` */

DROP TABLE IF EXISTS `pu15serv`;

CREATE TABLE `pu15serv` (
  `PU15IDSERVI` int(11) NOT NULL,
  `PU04IDTRA` int(11) NOT NULL,
  `PU20IDDESAS` int(11) NOT NULL,
  `PU21IDSERVI` int(11) NOT NULL,
  PRIMARY KEY (`PU15IDSERVI`),
  KEY `FK_PU21IDSERVIREGTRA` (`PU04IDTRA`),
  KEY `FK_PU20IDDESASSERV` (`PU20IDDESAS`),
  CONSTRAINT `FK_PU20IDDESASSERV` FOREIGN KEY (`PU20IDDESAS`) REFERENCES `pu20desas` (`PU20IDDESAS`),
  CONSTRAINT `FK_PU21IDSERVICASERV` FOREIGN KEY (`PU15IDSERVI`) REFERENCES `pu21caserv` (`PU21IDSERVI`),
  CONSTRAINT `FK_PU21IDSERVIREGTRA` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu15serv` */

LOCK TABLES `pu15serv` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu16servae` */

DROP TABLE IF EXISTS `pu16servae`;

CREATE TABLE `pu16servae` (
  `PU16IDSAE` int(11) NOT NULL,
  `PU16DESCAE` varchar(30) NOT NULL,
  PRIMARY KEY (`PU16IDSAE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu16servae` */

LOCK TABLES `pu16servae` WRITE;

insert  into `pu16servae`(`PU16IDSAE`,`PU16DESCAE`) values (1,'Agua');

UNLOCK TABLES;

/*Table structure for table `pu17serae` */

DROP TABLE IF EXISTS `pu17serae`;

CREATE TABLE `pu17serae` (
  `PU15IDSERVI` int(11) NOT NULL,
  `PU16IDSAE` int(11) NOT NULL,
  KEY `FK_PU15IDSERVISERV` (`PU15IDSERVI`),
  KEY `FK_PU16IDSAESERVAE` (`PU16IDSAE`),
  CONSTRAINT `FK_PU15IDSERVISERV` FOREIGN KEY (`PU15IDSERVI`) REFERENCES `pu15serv` (`PU15IDSERVI`),
  CONSTRAINT `FK_PU16IDSAESERVAE` FOREIGN KEY (`PU16IDSAE`) REFERENCES `pu16servae` (`PU16IDSAE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu17serae` */

LOCK TABLES `pu17serae` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu18calleser` */

DROP TABLE IF EXISTS `pu18calleser`;

CREATE TABLE `pu18calleser` (
  `PU18IDCSCLS` int(11) NOT NULL,
  `PU18DESCS` varchar(30) NOT NULL,
  PRIMARY KEY (`PU18IDCSCLS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu18calleser` */

LOCK TABLES `pu18calleser` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu19serpacsca` */

DROP TABLE IF EXISTS `pu19serpacsca`;

CREATE TABLE `pu19serpacsca` (
  `PU15IDSERVI` int(11) NOT NULL,
  `PU18IDCSCLS` int(11) NOT NULL,
  KEY `FK_PU18IDCSCLSCALLE` (`PU18IDCSCLS`),
  KEY `FK_PU15IDSERVIPASCA` (`PU15IDSERVI`),
  CONSTRAINT `FK_PU15IDSERVIPASCA` FOREIGN KEY (`PU15IDSERVI`) REFERENCES `pu15serv` (`PU15IDSERVI`),
  CONSTRAINT `FK_PU18IDCSCLSCALLE` FOREIGN KEY (`PU18IDCSCLS`) REFERENCES `pu18calleser` (`PU18IDCSCLS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu19serpacsca` */

LOCK TABLES `pu19serpacsca` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu20desas` */

DROP TABLE IF EXISTS `pu20desas`;

CREATE TABLE `pu20desas` (
  `PU20IDDESAS` int(11) NOT NULL,
  `PU20DESCS` varchar(30) NOT NULL,
  PRIMARY KEY (`PU20IDDESAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu20desas` */

LOCK TABLES `pu20desas` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu21caserv` */

DROP TABLE IF EXISTS `pu21caserv`;

CREATE TABLE `pu21caserv` (
  `PU21IDSERVI` int(11) NOT NULL,
  `PU21DESCSER` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PU21IDSERVI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu21caserv` */

LOCK TABLES `pu21caserv` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu22serrvi` */

DROP TABLE IF EXISTS `pu22serrvi`;

CREATE TABLE `pu22serrvi` (
  `PU22IDREDVI` int(11) NOT NULL,
  `PU22DESSVI` varchar(30) NOT NULL,
  `PU22OBSERV` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PU22IDREDVI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu22serrvi` */

LOCK TABLES `pu22serrvi` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu23redv` */

DROP TABLE IF EXISTS `pu23redv`;

CREATE TABLE `pu23redv` (
  `PU21IDSERVI` int(11) NOT NULL,
  `PU04IDTRA` int(11) NOT NULL,
  `PU22IDREDVI` int(11) NOT NULL,
  KEY `FK_PO23REDVREGTRA` (`PU04IDTRA`),
  KEY `FK_PU22IDREDVIREDV` (`PU22IDREDVI`),
  KEY `FK_PU21REDVCASERV` (`PU21IDSERVI`),
  CONSTRAINT `FK_PO23REDVREGTRA` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`),
  CONSTRAINT `FK_PU21REDVCASERV` FOREIGN KEY (`PU21IDSERVI`) REFERENCES `pu21caserv` (`PU21IDSERVI`),
  CONSTRAINT `FK_PU22IDREDVIREDV` FOREIGN KEY (`PU22IDREDVI`) REFERENCES `pu22serrvi` (`PU22IDREDVI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu23redv` */

LOCK TABLES `pu23redv` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu24infest` */

DROP TABLE IF EXISTS `pu24infest`;

CREATE TABLE `pu24infest` (
  `PU24IDINFR` int(11) NOT NULL,
  `PU24DESCINF` varchar(30) NOT NULL,
  PRIMARY KEY (`PU24IDINFR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu24infest` */

LOCK TABLES `pu24infest` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu25patent` */

DROP TABLE IF EXISTS `pu25patent`;

CREATE TABLE `pu25patent` (
  `PU21IDSERVI` int(11) NOT NULL,
  `PU04IDTRA` int(11) NOT NULL,
  `PU24IDINFR` int(11) NOT NULL,
  KEY `FK_PU24IDINFRREGTRA` (`PU04IDTRA`),
  KEY `FK_PU24IDINFRPATENT` (`PU24IDINFR`),
  KEY `FK_PPU24IDINFRCASERV` (`PU21IDSERVI`),
  CONSTRAINT `FK_PPU24IDINFRCASERV` FOREIGN KEY (`PU21IDSERVI`) REFERENCES `pu21caserv` (`PU21IDSERVI`),
  CONSTRAINT `FK_PU24IDINFRPATENT` FOREIGN KEY (`PU24IDINFR`) REFERENCES `pu24infest` (`PU24IDINFR`),
  CONSTRAINT `FK_PU24IDINFRREGTRA` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu25patent` */

LOCK TABLES `pu25patent` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu26planreg` */

DROP TABLE IF EXISTS `pu26planreg`;

CREATE TABLE `pu26planreg` (
  `PU26IDPLAN` int(11) NOT NULL,
  `PU26PLNDESC` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PU26IDPLAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu26planreg` */

LOCK TABLES `pu26planreg` WRITE;

insert  into `pu26planreg`(`PU26IDPLAN`,`PU26PLNDESC`) values (1,'NICOYA'),(2,'SAMARA');

UNLOCK TABLES;

/*Table structure for table `pu27cuinic` */

DROP TABLE IF EXISTS `pu27cuinic`;

CREATE TABLE `pu27cuinic` (
  `PU27IDUBIC` int(11) NOT NULL,
  `PU27DSCUBIC` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PU27IDUBIC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu27cuinic` */

LOCK TABLES `pu27cuinic` WRITE;

insert  into `pu27cuinic`(`PU27IDUBIC`,`PU27DSCUBIC`) values (1,'La virginia');

UNLOCK TABLES;

/*Table structure for table `pu27ubicacion` */

DROP TABLE IF EXISTS `pu27ubicacion`;

CREATE TABLE `pu27ubicacion` (
  `PU27IDUBIC` int(11) NOT NULL,
  `PU27DESCRIP` varchar(30) NOT NULL,
  PRIMARY KEY (`PU27IDUBIC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu27ubicacion` */

LOCK TABLES `pu27ubicacion` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu28cuisam` */

DROP TABLE IF EXISTS `pu28cuisam`;

CREATE TABLE `pu28cuisam` (
  `PU28IDUBIC` int(11) NOT NULL,
  `PU28DSCUBIC` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PU28IDUBIC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu28cuisam` */

LOCK TABLES `pu28cuisam` WRITE;

insert  into `pu28cuisam`(`PU28IDUBIC`,`PU28DSCUBIC`) values (1,'Osteonal');

UNLOCK TABLES;

/*Table structure for table `pu28ubidescripcion` */

DROP TABLE IF EXISTS `pu28ubidescripcion`;

CREATE TABLE `pu28ubidescripcion` (
  `PU28IDUBIDESC` int(11) NOT NULL,
  `PU28UBICADESCRIP` varchar(30) NOT NULL,
  `PU27IDUBIC` int(11) NOT NULL,
  PRIMARY KEY (`PU28IDUBIDESC`),
  KEY `FK_PU27IDUBIC` (`PU27IDUBIC`),
  CONSTRAINT `FK_PU27IDUBIC` FOREIGN KEY (`PU27IDUBIC`) REFERENCES `pu27ubicacion` (`PU27IDUBIC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu28ubidescripcion` */

LOCK TABLES `pu28ubidescripcion` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu29tranic` */

DROP TABLE IF EXISTS `pu29tranic`;

CREATE TABLE `pu29tranic` (
  `PU27IDUBIC` int(11) NOT NULL,
  `PU04IDTRA` int(11) DEFAULT NULL,
  KEY `FK_PU27IDUBICREGTRA` (`PU04IDTRA`),
  KEY `FK_PU27IDUBICNICO` (`PU27IDUBIC`),
  CONSTRAINT `FK_PU27IDUBICNICO` FOREIGN KEY (`PU27IDUBIC`) REFERENCES `pu27cuinic` (`PU27IDUBIC`),
  CONSTRAINT `FK_PU27IDUBICREGTRA` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu29tranic` */

LOCK TABLES `pu29tranic` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu29unitradesc` */

DROP TABLE IF EXISTS `pu29unitradesc`;

CREATE TABLE `pu29unitradesc` (
  `PU28IDUBIDESC` int(11) NOT NULL,
  `PU04IDTRA` int(11) NOT NULL,
  KEY `FK_PU28IDUBIDESC` (`PU04IDTRA`),
  KEY `FK_PU28IDUBIDESCR` (`PU28IDUBIDESC`),
  CONSTRAINT `FK_PU28IDUBIDESC` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`),
  CONSTRAINT `FK_PU28IDUBIDESCR` FOREIGN KEY (`PU28IDUBIDESC`) REFERENCES `pu28ubidescripcion` (`PU28IDUBIDESC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu29unitradesc` */

LOCK TABLES `pu29unitradesc` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu30trasam` */

DROP TABLE IF EXISTS `pu30trasam`;

CREATE TABLE `pu30trasam` (
  `PU28IDUBIC` int(11) NOT NULL,
  `PU04IDTRA` int(11) DEFAULT NULL,
  KEY `FK_PU28IDUBICREGTRA` (`PU04IDTRA`),
  KEY `FK_PU28IDUBICSAMA` (`PU28IDUBIC`),
  CONSTRAINT `FK_PU28IDUBICREGTRA` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`),
  CONSTRAINT `FK_PU28IDUBICSAMA` FOREIGN KEY (`PU28IDUBIC`) REFERENCES `pu28cuisam` (`PU28IDUBIC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu30trasam` */

LOCK TABLES `pu30trasam` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu31trasue` */

DROP TABLE IF EXISTS `pu31trasue`;

CREATE TABLE `pu31trasue` (
  `PU35IDTIPS` int(11) NOT NULL,
  `PU04IDTRA` int(11) DEFAULT NULL,
  KEY `FK_PU035IDTIPSREGTRA` (`PU04IDTRA`),
  KEY `FK_PU35IDTIPSTRASUE` (`PU35IDTIPS`),
  CONSTRAINT `FK_PU035IDTIPSREGTRA` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`),
  CONSTRAINT `FK_PU35IDTIPSTRASUE` FOREIGN KEY (`PU35IDTIPS`) REFERENCES `pu35tipsue` (`PU35IDTIPS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu31trasue` */

LOCK TABLES `pu31trasue` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu32capuso` */

DROP TABLE IF EXISTS `pu32capuso`;

CREATE TABLE `pu32capuso` (
  `PU32IDCUSO` int(11) NOT NULL,
  `PU32DESUSO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PU32IDCUSO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu32capuso` */

LOCK TABLES `pu32capuso` WRITE;

insert  into `pu32capuso`(`PU32IDCUSO`,`PU32DESUSO`) values (1,'Erosionado');

UNLOCK TABLES;

/*Table structure for table `pu33tracap` */

DROP TABLE IF EXISTS `pu33tracap`;

CREATE TABLE `pu33tracap` (
  `PU32IDCUSO` int(11) NOT NULL,
  `PU04IDTRA` int(11) DEFAULT NULL,
  KEY `FK_PU32IDCUSOEGTRA` (`PU04IDTRA`),
  KEY `FK_PU32IDCUSOCAPUSO` (`PU32IDCUSO`),
  CONSTRAINT `FK_PU32IDCUSOCAPUSO` FOREIGN KEY (`PU32IDCUSO`) REFERENCES `pu32capuso` (`PU32IDCUSO`),
  CONSTRAINT `FK_PU32IDCUSOEGTRA` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu33tracap` */

LOCK TABLES `pu33tracap` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu34clases` */

DROP TABLE IF EXISTS `pu34clases`;

CREATE TABLE `pu34clases` (
  `PU34IDCLAS` int(11) NOT NULL,
  `PU34DESCLA` int(11) DEFAULT NULL,
  PRIMARY KEY (`PU34IDCLAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu34clases` */

LOCK TABLES `pu34clases` WRITE;

insert  into `pu34clases`(`PU34IDCLAS`,`PU34DESCLA`) values (1,26525);

UNLOCK TABLES;

/*Table structure for table `pu35tipsue` */

DROP TABLE IF EXISTS `pu35tipsue`;

CREATE TABLE `pu35tipsue` (
  `PU35IDTIPS` int(11) NOT NULL,
  `PU35DESTIP` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PU35IDTIPS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu35tipsue` */

LOCK TABLES `pu35tipsue` WRITE;

insert  into `pu35tipsue`(`PU35IDTIPS`,`PU35DESTIP`) values (1,'Plano');

UNLOCK TABLES;

/*Table structure for table `pu36hisinsp` */

DROP TABLE IF EXISTS `pu36hisinsp`;

CREATE TABLE `pu36hisinsp` (
  `PU36NUMERACION` int(11) NOT NULL AUTO_INCREMENT,
  `PU04IDTRA` int(11) DEFAULT NULL,
  `PU01CEDUSU` int(11) DEFAULT NULL,
  `PU03IDPUES` int(11) DEFAULT NULL,
  `PU36FEHISINP` date DEFAULT NULL,
  PRIMARY KEY (`PU36NUMERACION`),
  KEY `FK_PU04IDTRAHISINP` (`PU04IDTRA`),
  KEY `FK_PU01CEDUSUHISINP` (`PU01CEDUSU`),
  KEY `FK_PU03IDPUESHISINP` (`PU03IDPUES`),
  CONSTRAINT `FK_PU01CEDUSUHISINP` FOREIGN KEY (`PU01CEDUSU`) REFERENCES `pu01regusu` (`PU01CEDUSU`),
  CONSTRAINT `FK_PU03IDPUESHISINP` FOREIGN KEY (`PU03IDPUES`) REFERENCES `pu02infusu` (`PU03IDPUES`),
  CONSTRAINT `FK_PU04IDTRAHISINP` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu36hisinsp` */

LOCK TABLES `pu36hisinsp` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu37hisofi` */

DROP TABLE IF EXISTS `pu37hisofi`;

CREATE TABLE `pu37hisofi` (
  `PU37NUMERACION` int(11) NOT NULL AUTO_INCREMENT,
  `PU04IDTRA` int(11) DEFAULT NULL,
  `PU01CEDUSU` int(11) DEFAULT NULL,
  `PU03IDPUES` int(11) DEFAULT NULL,
  `PU037FEHISOFI` date DEFAULT NULL,
  PRIMARY KEY (`PU37NUMERACION`),
  KEY `FK_PU04IDTRAHISOFI` (`PU04IDTRA`),
  KEY `FK_PU01CEDUSUHISOFI` (`PU01CEDUSU`),
  KEY `FK_PU03IDPUESHISOFI` (`PU03IDPUES`),
  CONSTRAINT `FK_PU01CEDUSUHISOFI` FOREIGN KEY (`PU01CEDUSU`) REFERENCES `pu01regusu` (`PU01CEDUSU`),
  CONSTRAINT `FK_PU03IDPUESHISOFI` FOREIGN KEY (`PU03IDPUES`) REFERENCES `pu02infusu` (`PU03IDPUES`),
  CONSTRAINT `FK_PU04IDTRAHISOFI` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu37hisofi` */

LOCK TABLES `pu37hisofi` WRITE;

UNLOCK TABLES;

/* Procedure structure for procedure `SP01_REGINFUSU_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP01_REGINFUSU_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP01_REGINFUSU_ACTUALIZAR`(IN CEDU INT(11), IN NOM VARCHAR(30), IN APE1 VARCHAR(30), IN APE2 VARCHAR(30),
  IN TEL VARCHAR(30), IN COR VARCHAR(100), IN IDPUES INT(11))
BEGIN
UPDATE PU01REGUSU
 SET PU01NOMUSU = NOM,
   PU01APE1USU = APE1,
    PU01APE2USU = APE2
    WHERE PU01CEDUSU = CEDU;
UPDATE PU02INFUSU 
SET PU02TELUSU = TEL,
  PU02CORUSU = COR,
   PU03IDPUES = IDPUES
     WHERE PU01CEDUSU = CEDU;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP01_REGINFUSU_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP01_REGINFUSU_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP01_REGINFUSU_BUSCAR`(IN CEDU INT(11))
BEGIN
   SELECT PU01REGUSU.`PU01CEDUSU` AS 'Cédula', PU01REGUSU.`PU01NOMUSU` AS 'Nombre',
    PU01REGUSU.`PU01APE1USU` AS 'Primer Apellido', PU01REGUSU.`PU01APE2USU` AS 'Segundo Apellido',
   PU02INFUSU.`PU02TELUSU` AS 'Teléfono',PU02INFUSU.`PU02CORUSU` AS 'Correo', 
   CASE PU02INFUSU.`PU03IDPUES`WHEN "1" THEN "Coordinador"
			       WHEN "2" THEN "Asistente"   
			       WHEN "3" THEN "Alcalde"
			       WHEN "4" THEN "Administrador"
			       END AS 'Puesto'
   FROM PU01REGUSU
		INNER JOIN PU02INFUSU
		ON PU01REGUSU.`PU01CEDUSU` = PU02INFUSU.`PU01CEDUSU`
		WHERE PU01REGUSU.`PU01CEDUSU`=CEDU;
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP01_REGINFUSU_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP01_REGINFUSU_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP01_REGINFUSU_ELIMINAR`(IN CEDU INT(11))
BEGIN
DELETE FROM PU02INFUSU
  WHERE PU01CEDUSU = CEDU;
  DELETE FROM PU01REGUSU
 WHERE PU01CEDUSU = CEDU;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP01_REGINFUSU_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP01_REGINFUSU_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP01_REGINFUSU_GUARDAR`(IN CEDU INT(11),
 IN NOM VARCHAR(30), IN APE1 VARCHAR(30), IN APE2 VARCHAR(30),
  IN TEL VARCHAR(30), IN COR VARCHAR(30), IN IDPUES INT(11), IN USU VARCHAR(30), IN CLA VARCHAR(30))
BEGIN
	INSERT INTO PU01REGUSU (PU01CEDUSU, PU01NOMUSU, PU01APE1USU, PU01APE2USU)
		VALUES (CEDU, NOM, APE1, APE2);
	INSERT INTO PU02INFUSU (PU01CEDUSU, PU02TELUSU, PU02CORUSU, PU03IDPUES, PU02USUARIO, PU02CLAVE)
		VALUES (CEDU, TEL, COR, IDPUES, USU, CLA);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP01_REGINFUSU_MOSTRARTODO` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP01_REGINFUSU_MOSTRARTODO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP01_REGINFUSU_MOSTRARTODO`()
BEGIN
SET lc_time_names ='es_CR';
SELECT `pu01regusu`.`PU01CEDUSU` as 'Cédula',pu01regusu.`PU01NOMUSU` as 'Nombre',pu01regusu.`PU01APE1USU` as 'Primer Apellido',
pu01regusu.`PU01APE2USU` as 'Segundo Apellido', `pu02infusu`.`PU02TELUSU` as 'Teléfono',`pu02infusu`.`PU02CORUSU` as 'Correo',
 case`pu02infusu`.`PU03IDPUES` WHEN "1" THEN "Coordinador"
				WHEN "2" THEN "Auxiliar"
				WHEN "3" THEN "Asistente"
				WHEN "4" THEN "Administrador" end as 'Puesto'
FROM `pu01regusu`
        INNER JOIN `pu02infusu`
        ON pu01regusu.`PU01CEDUSU` = `pu02infusu`.`PU01CEDUSU`;       
        END */$$
DELIMITER ;

/* Procedure structure for procedure `SP02_PUESTOS_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP02_PUESTOS_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP02_PUESTOS_ACTUALIZAR`(IN IDPUES INT(11), IN PUES VARCHAR(30))
BEGIN
UPDATE PU03PUESTOS
 SET PU03PUESTO = PUES
 WHERE PU03IDPUES = IDPUES;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP02_PUESTOS_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP02_PUESTOS_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP02_PUESTOS_BUSCAR`(IN IDPUES INT(11))
BEGIN
SELECT * FROM PU03PUESTOS WHERE PU03IDPUES = IDPUES;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP02_PUESTOS_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP02_PUESTOS_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP02_PUESTOS_ELIMINAR`(IN IDPUES INT(11))
BEGIN
DELETE FROM PU03PUESTOS
 WHERE PU03IDPUES = IDPUES;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP02_PUESTOS_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP02_PUESTOS_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP02_PUESTOS_GUARDAR`(IN IDPUES INT(11), IN PUES VARCHAR(30))
BEGIN
INSERT INTO PU03PUESTOS (PU03IDPUES, PU03PUESTO)
VALUES (IDPUES, PUES);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP02_PUESTOS_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP02_PUESTOS_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP02_PUESTOS_MOSTRAR`()
BEGIN
	select * from `pu03puestos`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_REGISTROTRA_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_REGISTROTRA_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_REGISTROTRA_ELIMINAR`(IN IDTRA INT(11))
BEGIN
DELETE FROM pu09tradeg
  WHERE PU04IDTRA = IDTRA;
  
DELETE FROM pu11uniabio
 WHERE PU04IDTRA = IDTRA;
 
 DELETE FROM pu14trarep
  WHERE PU04IDTRA = IDTRA;
  
DELETE FROM pu05unitra
 WHERE PU04IDTRA = IDTRA;
 
 DELETE FROM pu04regtra
 WHERE PU04IDTRA = IDTRA;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_REGISTROTRA_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_REGISTROTRA_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_REGISTROTRA_MOSTRAR`()
BEGIN
  SELECT DISTINCT pu04regtra.PU04IDTRA AS 'Numero Trámite', pu04regtra.PU04FETRA AS 'Fecha', pu07terrft.PU07NOMTFR AS 'T.F.R',
   pu04regtra.PU04NORTE AS 'Norte', pu04regtra.PU04ESTE AS 'Este', pu04regtra.PU04ALTITUD AS 'Altitud',
   pu12tipdesec.PU12TIPODES AS 'Tipo Desarrollo'
   
   FROM ((pu04regtra INNER JOIN pu12tipdesec
   ON pu04regtra.PU12IDTDESEC = pu12tipdesec.PU12IDTDESEC)
   INNER JOIN pu07terrft ON pu04regtra.`PU07IDTFR` = pu07terrft.PU07IDTFR);
       END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_REGISTROTRA_MOSTRAR_INFOR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_REGISTROTRA_MOSTRAR_INFOR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_REGISTROTRA_MOSTRAR_INFOR`(IN IDTRA INT(11))
BEGIN
   SELECT DISTINCT pu04regtra.PU04IDTRA AS 'Numero Trámite', pu04regtra.PU04FETRA AS 'Fecha', pu04regtra.PU07IDTFR AS 'T.F.R',
   pu04regtra.PU04NORTE AS 'Norte', pu04regtra.PU04ESTE AS 'Este', pu04regtra.PU04ALTITUD AS 'Altitud',
   pu12tipdesec.PU12TIPODES AS 'Tipo Desarrollo'
   
   FROM pu04regtra INNER JOIN pu12tipdesec
   ON pu04regtra.PU12IDTDESEC = pu12tipdesec.PU12IDTDESEC
   
  WHERE pu04regtra.PU04IDTRA = IDTRA;
   
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_REGISTROTRA_MOSTRAR_INFOR_ACT_D` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_REGISTROTRA_MOSTRAR_INFOR_ACT_D` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_REGISTROTRA_MOSTRAR_INFOR_ACT_D`(IN IDTRA INT(11))
BEGIN
 SELECT 
 DISTINCT pu06actdes.PU06DESAD AS 'Actividad Desarrollar'
   
   FROM ((pu04regtra INNER JOIN pu05unitra ON pu04regtra.PU04IDTRA = pu05unitra.PU04IDTRA)
	INNER JOIN pu06actdes ON pu05unitra.PU06IDACTDES = pu06actdes.`PU06IDACTDES`)
	
	WHERE pu04regtra.PU04IDTRA = IDTRA  AND pu05unitra.PU04IDTRA = IDTRA  AND pu05unitra.PU06IDACTDES>0;
   
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_REGISTROTRA_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_REGISTROTRA_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_REGISTROTRA_ACTUALIZAR`( IN IDTRA INT(11), IN FETRA DATE, IN IDTFR INT(11), 
IN PU04NORTE INT(11), IN PU04ESTE INT(11), IN PU04ALTITUD INT(11), IN IDTDESEC INT(11),
IN PU09IDDEG_01 INT (11),IN PU09IDDEG_02 INT (11),IN PU09IDDEG_03 INT (11),IN PU09IDDEG_04 INT (11),IN PU09IDDEG_05 INT (11),
IN PU09IDDEG_06 INT (11),IN PU09IDDEG_07 INT (11),
IN PU10IDASBIO_01 INT (11), IN PU10IDASBIO_02 INT (11),IN PU10IDASBIO_03 INT (11), IN PU10IDASBIO_04 INT (11),
 IN PU10IDASBIO_05 INT (11), IN PU10IDASBIO_06 INT (11),
 
 IN PU13IDAAP_1 INT (11),IN PU13IDAAP_2 INT (11),IN PU13IDAAP_3 INT (11),IN PU13IDAAP_4 INT (11),IN PU13IDAAP_5 INT (11),
 IN PU13IDAAP_6 INT (11),IN PU13IDAAP_7 INT (11),
 
 IN PU06IDACTDES_01 INT (11), IN PU06IDACTDES_02 INT (11),IN PU06IDACTDES_03 INT (11), IN PU06IDACTDES_04 INT (11),
 IN PU06IDACTDES_05 INT (11), IN PU06IDACTDES_06 INT (11))
BEGIN
-- UPDATE DE LA INFORMACIÓN REQUERIDA POR LA TABLA PRINCIPAL DE TRÁMITE
UPDATE pu04regtra 
SET PU04FETRA = FETRA,
  PU07IDTFR = IDTFR,
   PU04NORTE = PU04NORTE,
    PU04ESTE = PU04ESTE,
     PU04ALTITUD = PU04ALTITUD,
     PU12IDTDESEC =IDTDESEC
     WHERE PU04IDTRA = IDTRA;
     
-- UPDATE DE LA DESCRIPCIÓN DEL ESPACIO GEOGRÁFICO
 UPDATE pu09tradeg
SET PU09IDDEG = PU09IDDEG_01
     WHERE PU04IDTRA = IDTRA;
--
 UPDATE pu09tradeg 
SET PU09IDDEG = PU09IDDEG_02
     WHERE PU04IDTRA = IDTRA;
 --
 UPDATE pu09tradeg 
SET PU09IDDEG = PU09IDDEG_03
     WHERE PU04IDTRA = IDTRA;
 --
 UPDATE pu09tradeg 
SET PU09IDDEG = PU09IDDEG_04
     WHERE PU04IDTRA = IDTRA;
 --
 UPDATE pu09tradeg 
SET PU09IDDEG = PU09IDDEG_05
     WHERE PU04IDTRA = IDTRA;
 --
 UPDATE pu09tradeg 
SET PU09IDDEG = PU09IDDEG_06
     WHERE PU04IDTRA = IDTRA;
 --
 UPDATE pu09tradeg 
SET PU09IDDEG = PU09IDDEG_07
     WHERE PU04IDTRA = IDTRA;
-- FIN DE EDICIÓN DE DATOS EN TABLA UNIÓN DE TRÁMITE Y DESCRIPCIÓN DEL ESPACIO GEOGRÁFICO
-- ----------------------------------------------------------------------------------------
-- UPDATE DE LOS ASPECTOS BIOFÍSICOS
 UPDATE pu11uniabio 
SET PU10IDASBIO = PU10IDASBIO_01
     WHERE PU04IDTRA = IDTRA;   
--
 UPDATE pu11uniabio 
SET PU10IDASBIO = PU10IDASBIO_02
     WHERE PU04IDTRA = IDTRA;  
--
 UPDATE pu11uniabio 
SET PU10IDASBIO = PU10IDASBIO_03
     WHERE PU04IDTRA = IDTRA;  
--
 UPDATE pu11uniabio 
SET PU10IDASBIO = PU10IDASBIO_04
     WHERE PU04IDTRA = IDTRA;  
--
 UPDATE pu11uniabio 
SET PU10IDASBIO = PU10IDASBIO_05
     WHERE PU04IDTRA = IDTRA;  
--
 UPDATE pu11uniabio 
SET PU10IDASBIO = PU10IDASBIO_06
     WHERE PU04IDTRA = IDTRA;  
-- FIN DE LA ACTUALIZACIÓN DE DATOS EN TABLA UNIÓN DE TRÁMITE Y ASPECTOS BIOFÍSICOS
-- ----------------------------------------------------------------------------------------
-- UPDATE DE LA AFECTACIÓN DE ÁREAS DE PROTECCIÓN
 UPDATE pu14trarep 
SET PU13IDAAP = PU13IDAAP_1
     WHERE PU04IDTRA = IDTRA;      
--
 UPDATE pu14trarep 
SET PU13IDAAP = PU13IDAAP_2
     WHERE PU04IDTRA = IDTRA;  
--
 UPDATE pu14trarep 
SET PU13IDAAP = PU13IDAAP_3
     WHERE PU04IDTRA = IDTRA;  
--
 UPDATE pu14trarep 
SET PU13IDAAP = PU13IDAAP_4
     WHERE PU04IDTRA = IDTRA;  
--
 UPDATE pu14trarep 
SET PU13IDAAP = PU13IDAAP_5
     WHERE PU04IDTRA = IDTRA;  
--
 UPDATE pu14trarep 
SET PU13IDAAP = PU13IDAAP_6
     WHERE PU04IDTRA = IDTRA;  
--
 UPDATE pu14trarep 
SET PU13IDAAP = PU13IDAAP_7
     WHERE PU04IDTRA = IDTRA;  
-- FIN DE ACTUALIZACIÓN DE DATOS EN TABLA UNIÓN DE TRÁMITE Y ASPECTOS BIOFÍSICOS
-- ----------------------------------------------------------------------------------------
-- UPDATE DE LAS ACTIVIDADES A DESARROLLAR
 UPDATE pu05unitra 
SET PU06IDACTDES = PU06IDACTDES_01
     WHERE PU04IDTRA = IDTRA;  
--
 UPDATE pu05unitra 
SET PU06IDACTDES = PU06IDACTDES_02
     WHERE PU04IDTRA = IDTRA;
--
 UPDATE pu05unitra 
SET PU06IDACTDES = PU06IDACTDES_03
     WHERE PU04IDTRA = IDTRA;
--
 UPDATE pu05unitra 
SET PU06IDACTDES = PU06IDACTDES_04
     WHERE PU04IDTRA = IDTRA;
--
 UPDATE pu05unitra 
SET PU06IDACTDES = PU06IDACTDES_05
     WHERE PU04IDTRA = IDTRA;
--
 UPDATE pu05unitra 
SET PU06IDACTDES = PU06IDACTDES_06
     WHERE PU04IDTRA = IDTRA;
-- FIN DE INSERSIÓN DE DATOS EN TABLA UNIÓN DE TRÁMITE Y ACTIVIDAD A DESARROLLAR
-- ----------------------------------------------------------------------------------------
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_REGISTROTRA_MOSTRAR_INFOR_A_A_P` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_REGISTROTRA_MOSTRAR_INFOR_A_A_P` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_REGISTROTRA_MOSTRAR_INFOR_A_A_P`(IN IDTRA INT(11))
BEGIN
 SELECT 
 DISTINCT pu13aarep.PU13DESCAAP AS 'Afectacion de Areas de Proteccion'
   
   FROM ((pu04regtra INNER JOIN pu14trarep ON pu04regtra.PU04IDTRA = pu14trarep.PU04IDTRA)
	INNER JOIN pu13aarep ON pu14trarep.PU13IDAAP = pu13aarep.PU13IDAAP)
	
	WHERE pu04regtra.PU04IDTRA = IDTRA  AND pu14trarep.PU04IDTRA = IDTRA  AND pu14trarep.PU13IDAAP>0;
   
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_REGISTROTRA_MOSTRAR_INFOR_A_B` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_REGISTROTRA_MOSTRAR_INFOR_A_B` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_REGISTROTRA_MOSTRAR_INFOR_A_B`(IN IDTRA INT(11))
BEGIN
 SELECT 
 DISTINCT pu10aspbio.PU10DESCABIO AS 'Aspectos Biofisicos'
   
   FROM ((pu04regtra INNER JOIN pu11uniabio ON pu04regtra.PU04IDTRA = pu11uniabio.PU04IDTRA)
	INNER JOIN pu10aspbio ON pu11uniabio.PU10IDASBIO = pu10aspbio.PU10IDASBIO)
	
	WHERE pu04regtra.PU04IDTRA = IDTRA  AND pu11uniabio.PU04IDTRA = IDTRA  AND pu11uniabio.PU10IDASBIO>0;
   
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_REGISTROTRA_MOSTRAR_INFOR_D_E_G` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_REGISTROTRA_MOSTRAR_INFOR_D_E_G` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_REGISTROTRA_MOSTRAR_INFOR_D_E_G`(IN IDTRA INT(11))
BEGIN
 SELECT 
 DISTINCT pu09desceg.PU09DESCREG AS 'Descripcion del Espacio Geografico'
   
   FROM ((pu04regtra INNER JOIN pu09tradeg ON pu04regtra.`PU04IDTRA` = pu09tradeg.`PU04IDTRA`)
	INNER JOIN pu09desceg ON pu09tradeg.`PU09IDDEG` = pu09desceg.`PU09IDDEG`)
	
	WHERE pu04regtra.PU04IDTRA = IDTRA  AND pu09tradeg.`PU04IDTRA`= IDTRA  AND pu09tradeg.`PU09IDDEG`>0;
   
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_ACTDES_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_ACTDES_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_ACTDES_ELIMINAR`(IN IDACTDES INT(11))
BEGIN
DELETE FROM `pu06actdes`
 WHERE `PU06IDACTDES` = IDACTDES;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_ACTDES_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_ACTDES_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_ACTDES_GUARDAR`(IN IDACTDES INT(11), IN DESAD VARCHAR(30))
BEGIN
INSERT INTO PU06ACTDES (PU06IDACTDES, PU06DESAD)
 VALUES (IDACTDES, DESAD);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_ACTDES_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_ACTDES_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_ACTDES_MOSTRAR`()
BEGIN
	SELECT * FROM pu06actdes;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP05_DESCEG_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP05_DESCEG_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP05_DESCEG_ACTUALIZAR`(IN IDDEG INT(11), IN DESCREG VARCHAR(30))
BEGIN
UPDATE PU09DESCEG
 SET PU09DESCREG = DESCREG
   WHERE PU09IDDEG = IDDEG;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP05_DESCEG_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP05_DESCEG_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP05_DESCEG_BUSCAR`(IDDEG INT)
BEGIN
	SELECT * FROM pu09desceg WHERE PU09IDDEG =IDDEG;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP05_DESCEG_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP05_DESCEG_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP05_DESCEG_ELIMINAR`(IN IDDEG INT(11))
BEGIN
DELETE FROM PU09DESCEG
 WHERE PU09IDDEG = IDDEG;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP05_DESCEG_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP05_DESCEG_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP05_DESCEG_GUARDAR`(IN IDDEG INT(11), IN DESCREG VARCHAR(30))
BEGIN
INSERT INTO PU09DESCEG (PU09IDDEG, PU09DESCREG)
 VALUES (IDDEG, DESCREG);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP05_DESCEG_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP05_DESCEG_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP05_DESCEG_MOSTRAR`()
BEGIN
SET lc_time_names ='es_CR';
	SELECT * FROM pu09desceg;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_REGISTROTRA_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_REGISTROTRA_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_REGISTROTRA_GUARDAR`( IN IDTRA INT(11), IN FETRA DATE, IN IDTFR INT(11), 
IN PU04NORTE INT(11), IN PU04ESTE INT(11), IN PU04ALTITUD INT(11), IN IDTDESEC INT(11),
IN PU09IDDEG_01 INT (11),IN PU09IDDEG_02 INT (11),IN PU09IDDEG_03 INT (11),IN PU09IDDEG_04 INT (11),IN PU09IDDEG_05 INT (11),
IN PU09IDDEG_06 INT (11),IN PU09IDDEG_07 INT (11),
IN PU10IDASBIO_01 INT (11), IN PU10IDASBIO_02 INT (11),IN PU10IDASBIO_03 INT (11), IN PU10IDASBIO_04 INT (11),
 IN PU10IDASBIO_05 INT (11), IN PU10IDASBIO_06 INT (11),
 
 IN PU13IDAAP_1 INT (11),IN PU13IDAAP_2 INT (11),IN PU13IDAAP_3 INT (11),IN PU13IDAAP_4 INT (11),IN PU13IDAAP_5 INT (11),
 IN PU13IDAAP_6 INT (11),IN PU13IDAAP_7 INT (11),
 
 IN PU06IDACTDES_01 INT (11), IN PU06IDACTDES_02 INT (11),IN PU06IDACTDES_03 INT (11), IN PU06IDACTDES_04 INT (11),
 IN PU06IDACTDES_05 INT (11), IN PU06IDACTDES_06 INT (11))
BEGIN
-- INSERT DE LA INFORMACIÓN REQUERIDA POR LA TABLA PRINCIPAL DE TRÁMITE
INSERT INTO pu04regtra (PU04IDTRA, PU04FETRA,PU07IDTFR,PU04NORTE,PU04ESTE,PU04ALTITUD,PU12IDTDESEC)
 VALUES (IDTRA, FETRA,IDTFR,PU04NORTE,PU04ESTE,PU04ALTITUD,IDTDESEC);
-- INSERT DE LA DESCRIPCIÓN DEL ESPACIO GEOGRÁFICO
INSERT INTO pu09tradeg (PU04IDTRA,PU09IDDEG)
 VALUES (IDTRA,PU09IDDEG_01);
--
 INSERT INTO pu09tradeg (PU04IDTRA,PU09IDDEG)
 VALUES (IDTRA,PU09IDDEG_02);
 --
 INSERT INTO pu09tradeg (PU04IDTRA,PU09IDDEG)
 VALUES (IDTRA,PU09IDDEG_03);
 --
 INSERT INTO pu09tradeg (PU04IDTRA,PU09IDDEG)
 VALUES (IDTRA,PU09IDDEG_04);
 --
 INSERT INTO pu09tradeg (PU04IDTRA,PU09IDDEG)
 VALUES (IDTRA,PU09IDDEG_05);
 --
 INSERT INTO pu09tradeg (PU04IDTRA,PU09IDDEG)
 VALUES (IDTRA,PU09IDDEG_06);
 --
 INSERT INTO pu09tradeg (PU04IDTRA,PU09IDDEG)
 VALUES (IDTRA,PU09IDDEG_07);
-- FIN DE INSERSIÓN DE DATOS EN TABLA UNIÓN DE TRÁMITE Y DESCRIPCIÓN DEL ESPACIO GEOGRÁFICO
-- ----------------------------------------------------------------------------------------
-- INSERT DE LOS ASPECTOS BIOFÍSICOS
INSERT INTO pu11uniabio (PU04IDTRA,PU10IDASBIO)
VALUES (IDTRA,PU10IDASBIO_01);
--
INSERT INTO pu11uniabio (PU04IDTRA,PU10IDASBIO)
VALUES (IDTRA,PU10IDASBIO_02);
--
INSERT INTO pu11uniabio (PU04IDTRA,PU10IDASBIO)
VALUES (IDTRA,PU10IDASBIO_03);
--
INSERT INTO pu11uniabio (PU04IDTRA,PU10IDASBIO)
VALUES (IDTRA,PU10IDASBIO_04);
--
INSERT INTO pu11uniabio (PU04IDTRA,PU10IDASBIO)
VALUES (IDTRA,PU10IDASBIO_05);
--
INSERT INTO pu11uniabio (PU04IDTRA,PU10IDASBIO)
VALUES (IDTRA,PU10IDASBIO_06);
-- FIN DE INSERSIÓN DE DATOS EN TABLA UNIÓN DE TRÁMITE Y ASPECTOS BIOFÍSICOS
-- ----------------------------------------------------------------------------------------
-- INSERT DE LA AFECTACIÓN DE ÁREAS DE PROTECCIÓN
INSERT INTO pu14trarep (PU04IDTRA,PU13IDAAP)
VALUES (IDTRA,PU13IDAAP_1);
--
INSERT INTO pu14trarep (PU04IDTRA,PU13IDAAP)
VALUES (IDTRA,PU13IDAAP_2);
--
INSERT INTO pu14trarep (PU04IDTRA,PU13IDAAP)
VALUES (IDTRA,PU13IDAAP_3);
--
INSERT INTO pu14trarep (PU04IDTRA,PU13IDAAP)
VALUES (IDTRA,PU13IDAAP_4);
--
INSERT INTO pu14trarep (PU04IDTRA,PU13IDAAP)
VALUES (IDTRA,PU13IDAAP_5);
--
INSERT INTO pu14trarep (PU04IDTRA,PU13IDAAP)
VALUES (IDTRA,PU13IDAAP_6);
--
INSERT INTO pu14trarep (PU04IDTRA,PU13IDAAP)
VALUES (IDTRA,PU13IDAAP_7);
-- FIN DE INSERSIÓN DE DATOS EN TABLA UNIÓN DE TRÁMITE Y ASPECTOS BIOFÍSICOS
-- ----------------------------------------------------------------------------------------
-- INSERT DE LAS ACTIVIDADES A DESARROLLAR
INSERT INTO pu05unitra (PU04IDTRA,PU06IDACTDES)
VALUES (IDTRA,PU06IDACTDES_01);
--
INSERT INTO pu05unitra (PU04IDTRA,PU06IDACTDES)
VALUES (IDTRA,PU06IDACTDES_02);
--
INSERT INTO pu05unitra (PU04IDTRA,PU06IDACTDES)
VALUES (IDTRA,PU06IDACTDES_03);
--
INSERT INTO pu05unitra (PU04IDTRA,PU06IDACTDES)
VALUES (IDTRA,PU06IDACTDES_04);
--
INSERT INTO pu05unitra (PU04IDTRA,PU06IDACTDES)
VALUES (IDTRA,PU06IDACTDES_05);
--
INSERT INTO pu05unitra (PU04IDTRA,PU06IDACTDES)
VALUES (IDTRA,PU06IDACTDES_06);
-- FIN DE INSERSIÓN DE DATOS EN TABLA UNIÓN DE TRÁMITE Y ACTIVIDAD A DESARROLLAR
-- ----------------------------------------------------------------------------------------
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP06_ASPBIO_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP06_ASPBIO_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP06_ASPBIO_ACTUALIZAR`(IN IDASBIO INT(11), IN DESCABIO VARCHAR(30))
BEGIN
UPDATE PU10ASPBIO
 SET PU10DESCABIO = DESCABIO
  WHERE PU10IDASBIO = IDASBIO;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP06_ASPBIO_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP06_ASPBIO_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP06_ASPBIO_BUSCAR`(IDASBIO INT)
BEGIN
	SELECT * FROM pu10aspbio WHERE PU10IDASBIO =IDASBIO ;
	   END */$$
DELIMITER ;

/* Procedure structure for procedure `SP06_ASPBIO_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP06_ASPBIO_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP06_ASPBIO_ELIMINAR`(IN IDASBIO INT(11))
BEGIN
DELETE FROM PU10ASPBIO
 WHERE PU10IDASBIO = IDASBIO;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP06_ASPBIO_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP06_ASPBIO_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP06_ASPBIO_GUARDAR`(IN IDASBIO INT(11), IN DESCABIO VARCHAR(30))
BEGIN
INSERT INTO PU10ASPBIO (PU10IDASBIO, PU10DESCABIO)
 VALUES (IDASBIO, DESCABIO);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP06_ASPBIO_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP06_ASPBIO_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP06_ASPBIO_MOSTRAR`()
BEGIN
	SELECT * FROM pu10aspbio;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP07_TERRFT_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP07_TERRFT_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP07_TERRFT_ACTUALIZAR`(IN IDTFR INT(11), IN NOMTFR VARCHAR(30))
BEGIN
UPDATE PU07TERRFT
 SET PU07NOMTFR = NOMTFR
  WHERE PU07IDTFR = IDTFR;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP07_TERRFT_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP07_TERRFT_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP07_TERRFT_BUSCAR`(IN IDTFR INT(11))
BEGIN
SELECT * FROM `pu07terrft` WHERE `PU07IDTFR` = IDTFR;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP07_TERRFT_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP07_TERRFT_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP07_TERRFT_ELIMINAR`(IN IDTFR INT(11))
BEGIN
DELETE FROM PU07TERRFT
 WHERE PU07IDTFR = IDTFR;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP07_TERRFT_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP07_TERRFT_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP07_TERRFT_GUARDAR`(IN IDTFR INT(11), IN NOMTFR VARCHAR(30))
BEGIN
INSERT INTO PU07TERRFT (PU07IDTFR, PU07NOMTFR)
 VALUES (IDTFR, NOMTFR);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP07_TERRFT_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP07_TERRFT_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP07_TERRFT_MOSTRAR`()
BEGIN
SELECT * FROM `pu07terrft`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP08_REGCOR_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP08_REGCOR_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP08_REGCOR_ACTUALIZAR`(IN IDGPS INT(11), IN NORTE VARCHAR(30),
 IN ESTE VARCHAR(30), IN ALTITUD VARCHAR(30))
BEGIN
UPDATE PU08REGCOR
 SET PU08NORTE = NORTE,
  PU08ESTE = ESTE,
   PU08ALTITUD = ALTITUD
    WHERE PU08IDGPS = IDGPS;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP08_REGCOR_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP08_REGCOR_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP08_REGCOR_BUSCAR`(IN IDGPS INT(11))
BEGIN
SELECT * FROM `pu08regcor` WHERE `PU08IDGPS` = IDGPS;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP08_REGCOR_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP08_REGCOR_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP08_REGCOR_ELIMINAR`(IN IDGPS INT(11))
BEGIN
DELETE FROM PU08REGCOR
 WHERE PU08IDGPS = IDGPS;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP08_REGCOR_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP08_REGCOR_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP08_REGCOR_GUARDAR`(IN IDGPS INT(11), IN NORTE VARCHAR(30),
 IN ESTE VARCHAR(30), IN ALTITUD VARCHAR(30))
BEGIN
INSERT INTO PU08REGCOR (PU08IDGPS, PU08NORTE, PU08ESTE, PU08ALTITUD)
 VALUES (IDGPS, NORTE, ESTE, ALTITUD);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP08_REGCOR_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP08_REGCOR_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP08_REGCOR_MOSTRAR`()
BEGIN
	SELECT * FROM pu08regcor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP09_TIPDESEC_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP09_TIPDESEC_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP09_TIPDESEC_ACTUALIZAR`(IN IDTDESEC INT(11), IN TIPODES VARCHAR(30))
BEGIN
UPDATE PU12TIPDESEC
 SET PU12TIPODES = TIPODES
  WHERE PU12IDTDESEC = IDTDESEC;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP09_TIPDESEC_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP09_TIPDESEC_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP09_TIPDESEC_ELIMINAR`(IN IDTDESEC INT(11))
BEGIN
DELETE FROM PU12TIPDESEC
 WHERE PU12IDTDESEC = IDTDESEC;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP09_TIPDESEC_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP09_TIPDESEC_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP09_TIPDESEC_GUARDAR`(IN IDTDESEC INT(11), IN TIPODES VARCHAR(30))
BEGIN
INSERT INTO PU12TIPDESEC (PU12IDTDESEC, PU12TIPODES)
 VALUES (IDTDESEC, TIPODES);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP10_TIPDESEC_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP10_TIPDESEC_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP10_TIPDESEC_BUSCAR`(IDTDESEC INT)
BEGIN
	 SELECT * FROM pu12tipdesec WHERE PU12IDTDESEC =IDTDESEC;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP10_TIPDESEC_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP10_TIPDESEC_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP10_TIPDESEC_MOSTRAR`()
BEGIN
	 SELECT * FROM pu12tipdesec;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP13_AAREP_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP13_AAREP_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP13_AAREP_ACTUALIZAR`( IN idapp INT(11),IN descaap VARCHAR(30))
BEGIN
UPDATE `pu13aarep`
 SET `PU13DESCAAP`=descaap
  WHERE `PU13IDAAP`=idapp;	
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP13_AAREP_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP13_AAREP_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP13_AAREP_BUSCAR`(IDAAP INT)
BEGIN
	 SELECT * FROM pu13aarep WHERE PU13IDAAP =IDAAP;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP13_AAREP_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP13_AAREP_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP13_AAREP_ELIMINAR`( IN idapp INT(11))
BEGIN
DELETE FROM `PU13AAREP`
 WHERE `PU13IDAAP`=idapp;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP13_AAREP_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP13_AAREP_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP13_AAREP_GUARDAR`( IN idapp INT(11),IN descaap VARCHAR(30))
BEGIN
INSERT INTO `pu13aarep` ( `PU13IDAAP`,`PU13DESCAAP`)
 VALUES (idapp, descaap);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP13_AAREP_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP13_AAREP_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP13_AAREP_MOSTRAR`()
BEGIN
	 SELECT * FROM pu13aarep;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP15_SERV_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP15_SERV_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP15_SERV_ACTUALIZAR`( IN idserv INT,IN idservid INT,IN idtra INT,IN iddesas INT,IN idsae INT, IN idcscls INT)
BEGIN
UPDATE `pu15serv`
 SET `PU21IDSERVI`=idservid,
  `PU04IDTRA`=idtra,
   `PU20IDDESAS`=iddesas
    WHERE `PU15IDSERVI`=idserv;
    
UPDATE `pu17serae`SET 
	`PU16IDSAE`=idsae
	WHERE `PU15IDSERVI`=idserv;
	
UPDATE `pu19serpacsca` SET 
 `PU18IDCSCLS`=idcscls
   WHERE `PU15IDSERVI`=idserv;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP15_SERV_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP15_SERV_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP15_SERV_ELIMINAR`( IN idserv INT)
BEGIN
DELETE FROM `pu19serpacsca`
 WHERE `PU15IDSERVI`=idserv;
DELETE FROM `pu17serae`
 WHERE `PU15IDSERVI`=idserv;
DELETE FROM `pu15serv`
 WHERE `PU15IDSERVI`=idserv;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP15_SERV_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP15_SERV_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP15_SERV_GUARDAR`( IN idserv INT(11),IN idservid INT(11),IN idtra INT(11),IN iddesas INT(11),IN idsae INT(11), IN idcscls INT(11))
BEGIN
INSERT INTO `pu15serv`( `PU15IDSERVI`,`PU21IDSERVI`,`PU04IDTRA`,`PU20IDDESAS`)
 VALUES (idserv, idservid,idtra,iddesas);
    
INSERT INTO `pu17serae`(`PU15IDSERVI`,`PU16IDSAE`)
 VALUE(idserv,idsae);
    
INSERT INTO `pu19serpacsca`(`PU15IDSERVI`,`PU18IDCSCLS`)
 VALUE(idserv,idcscls);   
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP16_SERVAE_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP16_SERVAE_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP16_SERVAE_ACTUALIZAR`( IN idsae INT,IN descae VARCHAR(30))
BEGIN
UPDATE  `pu16servae`
 SET `PU16DESCAE`=descae
  WHERE `PU16IDSAE`=idsae;	
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP16_SERVAE_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP16_SERVAE_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP16_SERVAE_BUSCAR`(IDSAE INT)
BEGIN
	 SELECT * FROM pu16servae WHERE PU16IDSAE =IDSAE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP16_SERVAE_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP16_SERVAE_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP16_SERVAE_ELIMINAR`( IN idsae INT)
BEGIN
DELETE FROM `pu16servae`
 WHERE `PU16IDSAE`=idsae;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP16_SERVAE_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP16_SERVAE_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP16_SERVAE_GUARDAR`( IN idsae INT,IN descae VARCHAR(30))
BEGIN
INSERT INTO`pu16servae`( `PU16IDSAE`,`PU16DESCAE`)
 VALUES (idsae,descae);   
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP16_SERVAE_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP16_SERVAE_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP16_SERVAE_MOSTRAR`()
BEGIN
	 SELECT * FROM pu16servae;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP18_CALLESER_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP18_CALLESER_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP18_CALLESER_ACTUALIZAR`( IN idcscls INT,IN descs VARCHAR(30))
BEGIN
UPDATE  `pu18calleser`
 SET `PU18DESCS`=descs
  WHERE `PU18IDCSCLS`=idcscls;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP18_CALLESER_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP18_CALLESER_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP18_CALLESER_BUSCAR`(IDCSCLS INT)
BEGIN
	 SELECT * FROM PU18CALLESER WHERE PU18IDCSCLS = IDCSCLS;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP18_CALLESER_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP18_CALLESER_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP18_CALLESER_ELIMINAR`( IN idcscls INT)
BEGIN	
DELETE FROM `pu18calleser`
 WHERE `PU18IDCSCLS`=idcscls;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP18_CALLESER_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP18_CALLESER_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP18_CALLESER_GUARDAR`( IN idcscls INT,IN descs VARCHAR(30))
BEGIN
INSERT INTO `pu18calleser`( `PU18IDCSCLS`,`PU18DESCS`)
 VALUES (idcscls,descs);    
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP18_CALLESER_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP18_CALLESER_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP18_CALLESER_MOSTRAR`()
BEGIN
	SELECT * FROM PU18CALLESER;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP20_DESAS_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP20_DESAS_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP20_DESAS_ACTUALIZAR`( IN iddesas INT,IN descs VARCHAR(30))
BEGIN
UPDATE  `pu20desas`
 SET `PU20DESCS`=descs
  WHERE `PU20IDDESAS`=iddesas;	
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP20_DESAS_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP20_DESAS_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP20_DESAS_BUSCAR`(IDDESAS INT)
BEGIN
SELECT * FROM `pu20desas` WHERE `PU20IDDESAS` = IDDESAS;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP20_DESAS_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP20_DESAS_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP20_DESAS_ELIMINAR`( IN iddesas INT)
BEGIN
DELETE FROM `pu20desas`
 WHERE `PU20IDDESAS`=iddesas;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP20_DESAS_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP20_DESAS_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP20_DESAS_GUARDAR`( IN iddesas INT,IN descs VARCHAR(30))
BEGIN
INSERT INTO `pu20desas`(`PU20IDDESAS`,`PU20DESCS`)
 VALUES (iddesas,descs);  
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP20_DESAS_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP20_DESAS_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP20_DESAS_MOSTRAR`()
BEGIN
SELECT * FROM `pu20desas`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP21_CASERV_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP21_CASERV_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP21_CASERV_ACTUALIZAR`( IN idservi INT,IN descser VARCHAR(30))
BEGIN
UPDATE  `pu21caserv`
 SET `PU21DESCSER`=descser
  WHERE `PU21IDSERVI`=idservi;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP21_CASERV_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP21_CASERV_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP21_CASERV_ELIMINAR`( IN idservi INT)
BEGIN
DELETE FROM `pu21caserv`
 WHERE `PU21IDSERVI`=idservi;	
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP21_CASERV_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP21_CASERV_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP21_CASERV_GUARDAR`( IN idservi INT,IN descser VARCHAR(30))
BEGIN
INSERT INTO `pu21caserv`(`PU21IDSERVI`,`PU21IDSERVI`)
 VALUES (idservi,descser);    
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP22_SERRVI_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP22_SERRVI_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP22_SERRVI_ACTUALIZAR`( IN idredvi INT,IN dessvi VARCHAR(30))
BEGIN
UPDATE  `pu22serrvi` SET 
 `PU22DESSVI`=dessvi
  WHERE `PU22IDREDVI`=idredvi;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP22_SERRVI_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP22_SERRVI_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP22_SERRVI_BUSCAR`(IDREDVI INT)
BEGIN
SELECT * FROM `pu22serrvi` WHERE `PU22IDREDVI` =IDREDVI;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP22_SERRVI_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP22_SERRVI_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP22_SERRVI_ELIMINAR`( IN idredvi INT)
BEGIN	
DELETE FROM `pu22serrvi`
 WHERE `PU22IDREDVI`=idredvi;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP22_SERRVI_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP22_SERRVI_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP22_SERRVI_GUARDAR`( IN idredvi INT,IN dessvi VARCHAR(30))
BEGIN
INSERT INTO `pu22serrvi`(`PU22IDREDVI`,`PU22DESSVI`)
 VALUES (idredvi,dessvi); 
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP22_SERRVI_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP22_SERRVI_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP22_SERRVI_MOSTRAR`()
BEGIN
SELECT * FROM `pu22serrvi`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP24_INFEST_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP24_INFEST_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP24_INFEST_ACTUALIZAR`( IN idinfr INT,IN descinf VARCHAR(30))
BEGIN
UPDATE  `pu24infest`
 SET `PU24DESCINF`=descinf
  WHERE `PU24IDINFR`=idinfr;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP24_INFEST_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP24_INFEST_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP24_INFEST_BUSCAR`(IN idinfr INT(11))
BEGIN
SELECT * FROM `pu24infest`
 WHERE PU24IDINFR = idinfr;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP24_INFEST_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP24_INFEST_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP24_INFEST_ELIMINAR`( IN idinfr INT)
BEGIN
DELETE FROM `pu24infest`
 WHERE `PU24IDINFR`=idinfr;	
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP24_INFEST_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP24_INFEST_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP24_INFEST_GUARDAR`( IN idinfr INT,IN descinf VARCHAR(30))
BEGIN
INSERT INTO `pu24infest`(`PU24IDINFR`,`PU24DESCINF`)
 VALUES (idinfr,descinf);    
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP24_INFEST_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP24_INFEST_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP24_INFEST_MOSTRAR`()
BEGIN
SELECT * FROM `pu24infest`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP26_PLANREG_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP26_PLANREG_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP26_PLANREG_ACTUALIZAR`(IN idplan INT(11),IN plandes VARCHAR(30))
BEGIN
UPDATE pu26planreg SET PU26PLNDESC=plandes WHERE PU26IDPLAN=idplan;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP26_PLANREG_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP26_PLANREG_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP26_PLANREG_BUSCAR`(IDPLAN INT)
BEGIN
SELECT * FROM `pu26planreg` WHERE `PU26IDPLAN` =IDPLAN;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP26_PLANREG_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP26_PLANREG_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP26_PLANREG_ELIMINAR`(IN idplan INT(11))
BEGIN
	DELETE FROM pu26planreg WHERE PU26IDPLAN=idplan;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP26_PLANREG_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP26_PLANREG_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP26_PLANREG_GUARDAR`( IN idplan INT (11), IN plandes VARCHAR(30))
BEGIN
	INSERT INTO pu26planreg (PU26IDPLAN, PU26PLNDESC)
    VALUES (idplan, plandes);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP26_PLANREG_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP26_PLANREG_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP26_PLANREG_MOSTRAR`()
BEGIN
SELECT * FROM `pu26planreg`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP27_CUINIC_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP27_CUINIC_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP27_CUINIC_ACTUALIZAR`(IN idubic INT(11),IN dscubic VARCHAR(30))
BEGIN
UPDATE pu27cuinic SET PU27DSCUBIC=dscubic WHERE PU27IDUBIC=idubic;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP27_CUINIC_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP27_CUINIC_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP27_CUINIC_BUSCAR`(IDUBIC INT)
BEGIN
SELECT * FROM `pu27cuinic` WHERE `PU27IDUBIC` = IDUBIC;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP27_CUINIC_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP27_CUINIC_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP27_CUINIC_ELIMINAR`(IN idubic INT)
BEGIN
	DELETE FROM pu27cuinic WHERE PU27IDUBIC=idubic;
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP27_CUINIC_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP27_CUINIC_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP27_CUINIC_GUARDAR`( IN idubic INT (11), IN dscubic VARCHAR(30))
BEGIN
	INSERT INTO pu27cuinic (PU27IDUBIC, PU27DSCUBIC)
    VALUES (idubic, dscubic);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP27_CUINIC_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP27_CUINIC_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP27_CUINIC_MOSTRAR`()
BEGIN
SELECT * FROM `pu27cuinic`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP28_CUISAM_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP28_CUISAM_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP28_CUISAM_ACTUALIZAR`(IN idubic INT(11),IN dscubic VARCHAR(30))
BEGIN
UPDATE pu28cuisam SET PU28DSCUBIC=dscubic WHERE PU28IDUBIC=idubic;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP28_CUISAM_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP28_CUISAM_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP28_CUISAM_BUSCAR`(IDUBIC INT)
BEGIN
SELECT * FROM `pu28cuisam` WHERE `PU28IDUBIC` = IDUBIC;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP28_CUISAM_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP28_CUISAM_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP28_CUISAM_ELIMINAR`(IN idubic INT)
BEGIN
	DELETE FROM pu28cuisam
	 WHERE PU28IDUBIC=idubic;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP28_CUISAM_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP28_CUISAM_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP28_CUISAM_GUARDAR`( IN idubic INT (11), IN dscubic VARCHAR(30))
BEGIN
	INSERT INTO pu28cuisam (`PU28IDUBIC`, `PU28DSCUBIC`)
    VALUES (idubic, dscubic);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP28_CUISAM_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP28_CUISAM_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP28_CUISAM_MOSTRAR`()
BEGIN
SELECT * FROM `pu28cuisam`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP32_CAPUSO_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP32_CAPUSO_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP32_CAPUSO_ACTUALIZAR`(IN idcuso INT(11),IN dscuso VARCHAR(30))
BEGIN
UPDATE pu32capuso SET PU32DESUSO=dscuso WHERE PU32IDCUSO=idcuso;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP32_CAPUSO_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP32_CAPUSO_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP32_CAPUSO_BUSCAR`(IDCUSO INT)
BEGIN
SELECT * FROM `pu32capuso` WHERE `PU32IDCUSO` = IDCUSO;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP32_CAPUSO_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP32_CAPUSO_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP32_CAPUSO_ELIMINAR`(IN idcuso INT)
BEGIN
	DELETE FROM pu32capuso WHERE PU32IDCUSO=idcuso;
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP32_CAPUSO_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP32_CAPUSO_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP32_CAPUSO_GUARDAR`( IN idcuso INT (11), IN dscuso VARCHAR(30))
BEGIN
	INSERT INTO `pu32capuso`(`PU32IDCUSO`, `PU32DESUSO`)
    VALUES (idcuso, dscuso);
   
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP32_CAPUSO_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP32_CAPUSO_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP32_CAPUSO_MOSTRAR`()
BEGIN
SELECT * FROM `pu32capuso`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP34_CLASES_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP34_CLASES_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP34_CLASES_ACTUALIZAR`(IN idclas INT(11),IN desclas INT (11))
BEGIN
UPDATE pu34clases SET PU34DESCLA=desclas WHERE PU34IDCLAS=idclas;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP34_CLASES_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP34_CLASES_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP34_CLASES_BUSCAR`(IDCLAS INT)
BEGIN
SELECT * FROM `pu34clases` WHERE `PU34IDCLAS` = IDCLAS;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP34_CLASES_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP34_CLASES_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP34_CLASES_ELIMINAR`(IN idclas INT(11))
BEGIN
	DELETE FROM pu34clases WHERE PU34IDCLAS=idclas;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP34_CLASES_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP34_CLASES_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP34_CLASES_GUARDAR`( IN idclas INT (11), IN desclas INT (11))
BEGIN
	INSERT INTO pu34clases (`PU34IDCLAS`, `PU34DESCLA`)
    VALUES (idclas, desclas);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP34_CLASES_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP34_CLASES_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP34_CLASES_MOSTRAR`()
BEGIN
SELECT * FROM `pu34clases`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP35_TIPSUE_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP35_TIPSUE_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP35_TIPSUE_ACTUALIZAR`(IN idtipsue INT(11),IN dstipsue VARCHAR(30))
BEGIN
UPDATE pu35tipsue SET PU35DESTIP=dstipsue WHERE PU35IDTIPS=idtipsue;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP35_TIPSUE_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP35_TIPSUE_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP35_TIPSUE_BUSCAR`(IDTIPS INT)
BEGIN
	SELECT * FROM `pu35tipsue` WHERE `PU35IDTIPS` =IDTIPS;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP35_TIPSUE_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP35_TIPSUE_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP35_TIPSUE_ELIMINAR`(IN idtipsue INT)
BEGIN
	DELETE FROM pu35tipsue WHERE PU35IDTIPS=idtipsue;
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP35_TIPSUE_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP35_TIPSUE_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP35_TIPSUE_GUARDAR`( IN idtipsue INT (11), IN dstipsue VARCHAR(30))
BEGIN
	INSERT INTO `pu35tipsue` (`PU35IDTIPS`, `PU35DESTIP`)
    VALUES (idtipsue, dstipsue);
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP35_TIPSUE_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP35_TIPSUE_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP35_TIPSUE_MOSTRAR`()
BEGIN
SELECT * FROM `pu35tipsue`;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
