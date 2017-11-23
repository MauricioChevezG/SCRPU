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
  KEY `FK_PU12IDTDESECREGTRA1` (`PU12IDTDESEC`),
  CONSTRAINT `FK_PU04IDTRAMITE` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04tramite` (`PU04IDTRA`),
  CONSTRAINT `FK_PU07IDTFRREGTRA` FOREIGN KEY (`PU07IDTFR`) REFERENCES `pu07terrft` (`PU07IDTFR`),
  CONSTRAINT `FK_PU12IDTDESECREGTRA1` FOREIGN KEY (`PU12IDTDESEC`) REFERENCES `pu12tipdesec` (`PU12IDTDESEC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu04regtra` */

LOCK TABLES `pu04regtra` WRITE;

insert  into `pu04regtra`(`PU04IDTRA`,`PU04FETRA`,`PU07IDTFR`,`PU04NORTE`,`PU04ESTE`,`PU04ALTITUD`,`PU12IDTDESEC`) values (1,'0000-00-00',1,2,3,4,1),(2,'0000-00-00',1,2334,2344,2333,1),(3,'0000-00-00',1,1,1,1,1);

UNLOCK TABLES;

/*Table structure for table `pu04tramite` */

DROP TABLE IF EXISTS `pu04tramite`;

CREATE TABLE `pu04tramite` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU04FEINICIO` date NOT NULL,
  `PU04ESTADO` varchar(20) NOT NULL,
  PRIMARY KEY (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu04tramite` */

LOCK TABLES `pu04tramite` WRITE;

insert  into `pu04tramite`(`PU04IDTRA`,`PU04FEINICIO`,`PU04ESTADO`) values (1,'2000-10-10','Retrasado'),(2,'2000-10-10','Retrasado'),(3,'2000-10-10','Retrasado'),(4,'2000-10-10','Retrasado'),(5,'2000-10-10','Retrasado'),(6,'2000-10-10','Retrasado'),(7,'2000-10-10','Retrasado'),(8,'2000-10-10','Retrasado'),(9,'2000-10-10','Retrasado'),(10,'2000-10-10','Retrasado'),(11,'2000-10-10','Retrasado'),(12,'2000-10-10','Retrasado'),(13,'2000-10-10','Retrasado'),(14,'2000-10-10','Retrasado'),(15,'2000-10-10','Retrasado'),(16,'2000-10-10','Retrasado'),(17,'2000-10-10','Retrasado'),(18,'2000-10-10','Retrasado'),(19,'2000-10-10','Retrasado'),(20,'2000-10-10','Retrasado'),(22,'2000-10-10','Nuevos'),(23,'2000-10-10','Nuevos'),(24,'2000-10-10','Nuevos'),(25,'2000-10-10','Nuevos'),(26,'2000-10-10','Nuevos'),(27,'2000-10-10','Nuevos'),(28,'2000-10-10','Nuevos'),(29,'2000-10-10','Nuevos'),(30,'2000-10-10','Nuevos'),(31,'2000-10-10','Nuevos'),(32,'2000-10-10','Nuevos'),(33,'2000-10-10','Nuevos'),(34,'2000-10-10','Nuevos'),(35,'2000-10-10','Nuevos'),(36,'2000-10-10','Nuevos'),(37,'2000-10-10','Nuevos'),(38,'2000-10-10','Nuevos'),(39,'2000-10-10','Nuevos'),(40,'2000-10-10','Nuevos'),(41,'2000-10-10','Oficina'),(42,'2000-10-10','Oficina'),(43,'2000-10-10','Oficina'),(44,'2000-10-10','Oficina'),(45,'2000-10-10','Oficina'),(46,'2000-10-10','Oficina'),(47,'2000-10-10','Oficina'),(48,'2000-10-10','Oficina'),(49,'2000-10-10','Oficina'),(50,'2000-10-10','Oficina'),(51,'2000-10-10','Oficina'),(52,'2000-10-10','Oficina'),(53,'2000-10-10','Oficina'),(54,'2000-10-10','Oficina'),(55,'2000-10-10','Oficina'),(56,'2000-10-10','Oficina'),(57,'2000-10-10','Oficina'),(58,'2000-10-10','Oficina'),(59,'2000-10-10','Oficina'),(60,'2000-10-10','Oficina'),(61,'2000-10-10','Inspeccion'),(62,'2000-10-10','Inspeccion'),(63,'2000-10-10','Inspeccion'),(64,'2000-10-10','Inspeccion'),(65,'2000-10-10','Inspeccion'),(66,'2000-10-10','Inspeccion'),(67,'2000-10-10','Inspeccion'),(68,'2000-10-10','Inspeccion'),(69,'2000-10-10','Inspeccion'),(70,'2000-10-10','Inspeccion'),(71,'2000-10-10','Inspeccion'),(72,'2000-10-10','Inspeccion'),(73,'2000-10-10','Inspeccion'),(74,'2000-10-10','Inspeccion'),(75,'2000-10-10','Inspeccion'),(76,'2000-10-10','Inspeccion'),(77,'2000-10-10','Inspeccion'),(78,'2000-10-10','Inspeccion'),(79,'2000-10-10','Inspeccion'),(80,'2000-10-10','Inspeccion'),(81,'2000-10-10','Aceptados'),(82,'2000-10-10','Aceptados'),(83,'2000-10-10','Aceptados'),(84,'2000-10-10','Aceptados'),(85,'2000-10-10','Aceptados'),(86,'2000-10-10','Aceptados'),(87,'2000-10-10','Aceptados'),(88,'2000-10-10','Aceptados'),(89,'2000-10-10','Aceptados'),(90,'2000-10-10','Aceptados'),(91,'2000-10-10','Aceptados'),(92,'2000-10-10','Aceptados'),(93,'2000-10-10','Aceptados'),(94,'2000-10-10','Aceptados'),(95,'2000-10-10','Aceptados'),(96,'2000-10-10','Aceptados'),(97,'2000-10-10','Aceptados'),(98,'2000-10-10','Aceptados'),(99,'2000-10-10','Aceptados'),(100,'2000-10-10','Aceptados'),(101,'2000-10-10','Denegados'),(102,'2000-10-10','Denegados'),(103,'2000-10-10','Denegados'),(104,'2000-10-10','Denegados'),(105,'2000-10-10','Denegados'),(106,'2000-10-10','Denegados'),(107,'2000-10-10','Denegados'),(108,'2000-10-10','Denegados'),(109,'2000-10-10','Denegados'),(110,'2000-10-10','Denegados'),(111,'2000-10-10','Denegados'),(112,'2000-10-10','Denegados'),(113,'2000-10-10','Denegados'),(114,'2000-10-10','Denegados'),(115,'2000-10-10','Denegados'),(116,'2000-10-10','Denegados'),(117,'2000-10-10','Denegados'),(118,'2000-10-10','Denegados'),(119,'2000-10-10','Denegados'),(120,'2000-10-10','Denegados');

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

insert  into `pu05unitra`(`PU04IDTRA`,`PU06IDACTDES`) values (1,2),(2,2),(2,2);

UNLOCK TABLES;

/*Table structure for table `pu06actdes` */

DROP TABLE IF EXISTS `pu06actdes`;

CREATE TABLE `pu06actdes` (
  `PU06IDACTDES` int(11) NOT NULL,
  `PU06DESAD` varchar(30) NOT NULL,
  PRIMARY KEY (`PU06IDACTDES`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu06actdes` */

LOCK TABLES `pu06actdes` WRITE;

insert  into `pu06actdes`(`PU06IDACTDES`,`PU06DESAD`) values (1,'Residencial'),(2,'Comercial'),(3,'Comercial-industrial');

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

insert  into `pu07terrft`(`PU07IDTFR`,`PU07NOMTFR`) values (1,'Si existe.'),(2,'No existe');

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

insert  into `pu09desceg`(`PU09IDDEG`,`PU09DESCREG`) values (1,'TopografÃ­a plana'),(2,'TopografÃ­a semiplano'),(3,'TopografÃ­a con depresiÃ³n'),(4,'Existen movimientos de tierra'),(5,'Futuro movimientos de tierra'),(6,'TopografÃ­a irregular');

UNLOCK TABLES;

/*Table structure for table `pu09tradeg` */

DROP TABLE IF EXISTS `pu09tradeg`;

CREATE TABLE `pu09tradeg` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU09IDDEG` int(11) NOT NULL,
  KEY `FK_PU09IDDEGREGTRA` (`PU04IDTRA`),
  KEY `FK_PU06IDACTDESDESCEG` (`PU09IDDEG`),
  CONSTRAINT `FK_PU06IDACTDESDESCEG` FOREIGN KEY (`PU09IDDEG`) REFERENCES `pu09desceg` (`PU09IDDEG`),
  CONSTRAINT `FK_PU09IDDEGREGTRA` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu09tradeg` */

LOCK TABLES `pu09tradeg` WRITE;

insert  into `pu09tradeg`(`PU04IDTRA`,`PU09IDDEG`) values (1,1),(2,4),(2,5),(2,4),(2,5);

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

insert  into `pu10aspbio`(`PU10IDASBIO`,`PU10DESCABIO`) values (1,'VegetaciÃ³n de jardÃ­n'),(2,'Tipo pasto'),(3,'Bosque secundario'),(4,'Bosque primario'),(5,'Arboles dispersos');

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

insert  into `pu11uniabio`(`PU04IDTRA`,`PU10IDASBIO`) values (1,1),(2,4),(2,5),(2,4),(2,5);

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

insert  into `pu12tipdesec`(`PU12IDTDESEC`,`PU12TIPODES`) values (1,'Tipo residencial'),(2,'Tipo Institucional'),(3,'Tipo Comercial      '),(4,'No existen desarrollos en la z'),(5,'Tipo Residencial y Comercial'),(6,'No existen desarrollos en la z');

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

insert  into `pu13aarep`(`PU13IDAAP`,`PU13DESCAAP`) values (1,'Quebradas'),(2,'Pozos'),(3,'Rio'),(4,'Naciente');

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

insert  into `pu14trarep`(`PU04IDTRA`,`PU13IDAAP`) values (1,2),(2,3),(2,3);

UNLOCK TABLES;

/*Table structure for table `pu15serv` */

DROP TABLE IF EXISTS `pu15serv`;

CREATE TABLE `pu15serv` (
  `PU15IDSERVI` int(11) NOT NULL,
  `PU21IDSERVI` int(11) NOT NULL,
  `PU04IDTRA` int(11) NOT NULL,
  `PU20IDDESAS` int(11) NOT NULL,
  PRIMARY KEY (`PU15IDSERVI`),
  KEY `FK_PU21IDSERVICASERV` (`PU21IDSERVI`),
  KEY `FK_PU21IDSERVIREGTRA` (`PU04IDTRA`),
  KEY `FK_PU20IDDESASSERV` (`PU20IDDESAS`),
  CONSTRAINT `FK_PU20IDDESASSERV` FOREIGN KEY (`PU20IDDESAS`) REFERENCES `pu20desas` (`PU20IDDESAS`),
  CONSTRAINT `FK_PU21IDSERVICASERV` FOREIGN KEY (`PU21IDSERVI`) REFERENCES `pu21caserv` (`PU21IDSERVI`),
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

insert  into `pu16servae`(`PU16IDSAE`,`PU16DESCAE`) values (1,'Servicios de luz  ya instalado'),(2,'Servicios de agua ya instalado');

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

insert  into `pu18calleser`(`PU18IDCSCLS`,`PU18DESCS`) values (1,'Existen casas frente a calle p'),(2,'No existen casas frente a call');

UNLOCK TABLES;

/*Table structure for table `pu19serpacsca` */

DROP TABLE IF EXISTS `pu19serpacsca`;

CREATE TABLE `pu19serpacsca` (
  `PU15IDSERVI` int(11) NOT NULL,
  `PU18IDCSCLS` int(11) NOT NULL,
  KEY `FK_PU15IDSERVIPASCA` (`PU15IDSERVI`),
  KEY `FK_PU18IDCSCLSCALLE` (`PU18IDCSCLS`),
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

insert  into `pu20desas`(`PU20IDDESAS`,`PU20DESCS`) values (1,'Existe desarrollo'),(2,'No existe desarrollo');

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
  `PU26PLNDESC` varchar(30) NOT NULL,
  PRIMARY KEY (`PU26IDPLAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu26planreg` */

LOCK TABLES `pu26planreg` WRITE;

insert  into `pu26planreg`(`PU26IDPLAN`,`PU26PLNDESC`) values (1,'Fuera del plan regulador'),(2,'Ubicada por plan regulador');

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

/*Table structure for table `pu31trasue` */

DROP TABLE IF EXISTS `pu31trasue`;

CREATE TABLE `pu31trasue` (
  `PU35IDTIPS` int(11) NOT NULL,
  `PU04IDTRA` int(11) NOT NULL,
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
  `PU32DESUSO` varchar(30) NOT NULL,
  PRIMARY KEY (`PU32IDCUSO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu32capuso` */

LOCK TABLES `pu32capuso` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu33tracap` */

DROP TABLE IF EXISTS `pu33tracap`;

CREATE TABLE `pu33tracap` (
  `PU32IDCUSO` int(11) NOT NULL,
  `PU04IDTRA` int(11) NOT NULL,
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
  `PU34DESCLA` int(11) NOT NULL,
  PRIMARY KEY (`PU34IDCLAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu34clases` */

LOCK TABLES `pu34clases` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu35tipsue` */

DROP TABLE IF EXISTS `pu35tipsue`;

CREATE TABLE `pu35tipsue` (
  `PU35IDTIPS` int(11) NOT NULL,
  `PU35DESTIP` varchar(30) NOT NULL,
  PRIMARY KEY (`PU35IDTIPS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu35tipsue` */

LOCK TABLES `pu35tipsue` WRITE;

UNLOCK TABLES;

/*Table structure for table `pu36hisinsp` */

DROP TABLE IF EXISTS `pu36hisinsp`;

CREATE TABLE `pu36hisinsp` (
  `PU36NUMERACION` int(11) NOT NULL AUTO_INCREMENT,
  `PU04IDTRA` int(11) NOT NULL,
  `PU01CEDUSU` int(11) NOT NULL,
  `PU03IDPUES` int(11) NOT NULL,
  `PU36FEHISINP` date NOT NULL,
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
  `PU04IDTRA` int(11) NOT NULL,
  `PU01CEDUSU` int(11) NOT NULL,
  `PU03IDPUES` int(11) NOT NULL,
  `PU037FEHISOFI` date NOT NULL,
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

/* Procedure structure for procedure `SP01_REGINFUSU_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP01_REGINFUSU_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP01_REGINFUSU_GUARDAR`(IN CEDU INT(11),
 IN NOM VARCHAR(30), IN APE1 VARCHAR(30), IN APE2 VARCHAR(30),
  IN TEL VARCHAR(30), IN COR VARCHAR(100), IN IDPUES INT(11), IN USU VARCHAR(30), IN CLA VARCHAR(30))
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
SELECT `pu01regusu`.`PU01CEDUSU` AS 'Cédula',pu01regusu.`PU01NOMUSU` AS 'Nombre',pu01regusu.`PU01APE1USU` AS 'Primer Apellido',
pu01regusu.`PU01APE2USU` AS 'Segundo Apellido', `pu02infusu`.`PU02TELUSU` AS 'Teléfono',`pu02infusu`.`PU02CORUSU` AS 'Correo',
 CASE`pu02infusu`.`PU03IDPUES` WHEN "1" THEN "Coordinador"
				WHEN "2" THEN "Auxiliar"
				WHEN "3" THEN "Asistente"
				WHEN "4" THEN "Administrador" END AS 'Puesto'
FROM `pu01regusu`
        INNER JOIN `pu02infusu`
        ON pu01regusu.`PU01CEDUSU` = `pu02infusu`.`PU01CEDUSU`;       
        END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_PUESTOS_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_PUESTOS_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_PUESTOS_ACTUALIZAR`(IN IDPUES INT(11), IN PUES VARCHAR(30))
BEGIN
UPDATE PU03PUESTOS
 SET PU03PUESTO = PUES
 WHERE PU03IDPUES = IDPUES;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_PUESTOS_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_PUESTOS_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_PUESTOS_BUSCAR`(IN IDPUES INT(11))
BEGIN
SELECT `PU03IDPUES`,`PU03PUESTO`
FROM PU03PUESTOS 
WHERE PU03IDPUES = IDPUES;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_PUESTOS_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_PUESTOS_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_PUESTOS_ELIMINAR`(IN IDPUES INT(11))
BEGIN
DELETE FROM PU03PUESTOS
 WHERE PU03IDPUES = IDPUES;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_PUESTOS_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_PUESTOS_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_PUESTOS_GUARDAR`(IN IDPUES INT(11), IN PUES VARCHAR(30))
BEGIN
INSERT INTO PU03PUESTOS (PU03IDPUES, PU03PUESTO)
VALUES (IDPUES, PUES);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP03_PUESTOS_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP03_PUESTOS_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP03_PUESTOS_MOSTRAR`()
BEGIN
SELECT `PU03IDPUES`,`PU03PUESTO`
 FROM PU03PUESTOS;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGISTROTRA_DEG_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGISTROTRA_DEG_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTRA_DEG_GUARDAR`( IN IDTRA INT(11),IN PU09IDDEG INT (11))
BEGIN
-- INSERT DE LA DESCRIPCIÓN DEL ESPACIO GEOGRÁFICO
INSERT INTO pu09tradeg (PU04IDTRA,PU09IDDEG)
 VALUES (IDTRA,PU09IDDEG);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGISTROTRA_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGISTROTRA_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTRA_ELIMINAR`(IN IDTRA INT(11))
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

/* Procedure structure for procedure `SP04_REGISTROTRA_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGISTROTRA_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTRA_MOSTRAR`()
BEGIN
  SELECT DISTINCT pu04regtra.PU04IDTRA AS 'Numero Trámite', pu04regtra.PU04FETRA AS 'Fecha', pu07terrft.PU07NOMTFR AS 'T.F.R',
   pu04regtra.PU04NORTE AS 'Norte', pu04regtra.PU04ESTE AS 'Este', pu04regtra.PU04ALTITUD AS 'Altitud',
   pu12tipdesec.PU12TIPODES AS 'Tipo Desarrollo'
   
   FROM ((pu04regtra INNER JOIN pu12tipdesec
   ON pu04regtra.PU12IDTDESEC = pu12tipdesec.PU12IDTDESEC)
   INNER JOIN pu07terrft ON pu04regtra.`PU07IDTFR` = pu07terrft.PU07IDTFR);
       END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGISTROTRA_MOSTRAR_INFOR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGISTROTRA_MOSTRAR_INFOR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTRA_MOSTRAR_INFOR`(IN IDTRA INT(11))
BEGIN
   SELECT DISTINCT pu04regtra.PU04IDTRA AS 'Numero Trámite', pu04regtra.PU04FETRA AS 'Fecha', pu07terrft.PU07NOMTFR AS 'T.F.R',
   pu04regtra.PU04NORTE AS 'Norte', pu04regtra.PU04ESTE AS 'Este', pu04regtra.PU04ALTITUD AS 'Altitud',
   pu12tipdesec.PU12TIPODES AS 'Tipo Desarrollo'
   
   FROM ((pu04regtra INNER JOIN pu12tipdesec
   ON pu04regtra.PU12IDTDESEC = pu12tipdesec.PU12IDTDESEC)
   INNER JOIN pu07terrft ON pu04regtra.`PU07IDTFR` = pu07terrft.PU07IDTFR)
   
  WHERE pu04regtra.PU04IDTRA = 1 AND pu04regtra.PU07IDTFR>0;
   
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGISTROTRA_MOSTRAR_INFOR_ACT_D` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGISTROTRA_MOSTRAR_INFOR_ACT_D` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTRA_MOSTRAR_INFOR_ACT_D`(IN IDTRA INT(11))
BEGIN
 SELECT 
 DISTINCT pu06actdes.PU06DESAD AS 'Actividad Desarrollar'
   
   FROM ((pu04regtra INNER JOIN pu05unitra ON pu04regtra.PU04IDTRA = pu05unitra.PU04IDTRA)
	INNER JOIN pu06actdes ON pu05unitra.PU06IDACTDES = pu06actdes.`PU06IDACTDES`)
	
	WHERE pu04regtra.PU04IDTRA = IDTRA  AND pu05unitra.PU04IDTRA = IDTRA  AND pu05unitra.PU06IDACTDES>0;
   
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGISTROTRA_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGISTROTRA_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTRA_ACTUALIZAR`( IN IDTRA INT(11), IN FETRA DATE, IN IDTFR INT(11), 
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

/* Procedure structure for procedure `SP04_REGISTROTRA_MOSTRAR_INFOR_A_A_P` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGISTROTRA_MOSTRAR_INFOR_A_A_P` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTRA_MOSTRAR_INFOR_A_A_P`(IN IDTRA INT(11))
BEGIN
 SELECT 
 DISTINCT pu13aarep.PU13DESCAAP AS 'Afectacion de Areas de Proteccion'
   
   FROM ((pu04regtra INNER JOIN pu14trarep ON pu04regtra.PU04IDTRA = pu14trarep.PU04IDTRA)
	INNER JOIN pu13aarep ON pu14trarep.PU13IDAAP = pu13aarep.PU13IDAAP)
	
	WHERE pu04regtra.PU04IDTRA = IDTRA  AND pu14trarep.PU04IDTRA = IDTRA  AND pu14trarep.PU13IDAAP>0;
   
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGISTROTRA_MOSTRAR_INFOR_A_B` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGISTROTRA_MOSTRAR_INFOR_A_B` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTRA_MOSTRAR_INFOR_A_B`(IN IDTRA INT(11))
BEGIN
 SELECT 
 DISTINCT pu10aspbio.PU10DESCABIO AS 'Aspectos Biofisicos'
   
   FROM ((pu04regtra INNER JOIN pu11uniabio ON pu04regtra.PU04IDTRA = pu11uniabio.PU04IDTRA)
	INNER JOIN pu10aspbio ON pu11uniabio.PU10IDASBIO = pu10aspbio.PU10IDASBIO)
	
	WHERE pu04regtra.PU04IDTRA = IDTRA  AND pu11uniabio.PU04IDTRA = IDTRA  AND pu11uniabio.PU10IDASBIO>0;
   
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGISTROTRA_MOSTRAR_INFOR_D_E_G` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGISTROTRA_MOSTRAR_INFOR_D_E_G` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTRA_MOSTRAR_INFOR_D_E_G`(IN IDTRA INT(11))
BEGIN
 SELECT 
 DISTINCT pu09desceg.PU09DESCREG AS 'Descripcion del Espacio Geografico'
   
   FROM ((pu04regtra INNER JOIN pu09tradeg ON pu04regtra.`PU04IDTRA` = pu09tradeg.`PU04IDTRA`)
	INNER JOIN pu09desceg ON pu09tradeg.`PU09IDDEG` = pu09desceg.`PU09IDDEG`)
	
	WHERE pu04regtra.PU04IDTRA = IDTRA  AND pu09tradeg.`PU04IDTRA`= IDTRA  AND pu09tradeg.`PU09IDDEG`>0;
   
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGISTROTR_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGISTROTR_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTR_GUARDAR`( IN IDTRA INT(11), IN FETRA DATE,IN IDTFR INT(11), 
IN PU04NORTE INT(11), IN PU04ESTE INT(11), IN PU04ALTITUD INT(11), IN IDTDESEC INT(11))
BEGIN
-- INSERT DE LA INFORMACIÓN REQUERIDA POR LA TABLA PRINCIPAL DE TRÁMITE
INSERT INTO pu04regtra (PU04IDTRA, PU04FETRA,PU07IDTFR,PU04NORTE,PU04ESTE,PU04ALTITUD,PU12IDTDESEC)
 VALUES (IDTRA, FETRA,IDTFR,PU04NORTE,PU04ESTE,PU04ALTITUD,IDTDESEC);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_TRAMITE_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_TRAMITE_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`mauricio`@`localhost` PROCEDURE `SP04_TRAMITE_GUARDAR`(IDTRA  INT(11),FEINICIO date,ESTADO varchar(20))
BEGIN
 insert into `pu04tramite`(`PU04IDTRA`,`PU04FEINICIO`,`PU04ESTADO`)
 values(IDTRA,FEINICIO,ESTADO);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_TRAMITE_MOSTRARACEPTADOS` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_TRAMITE_MOSTRARACEPTADOS` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`mauricio`@`localhost` PROCEDURE `SP04_TRAMITE_MOSTRARACEPTADOS`()
BEGIN
SELECT `PU04IDTRA`,`PU04FEINICIO`,`PU04ESTADO`
FROM `pu04tramite`
WHERE `PU04ESTADO`='Aceptados';
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_TRAMITE_MOSTRARDENEGADOS` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_TRAMITE_MOSTRARDENEGADOS` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_TRAMITE_MOSTRARDENEGADOS`()
BEGIN
SELECT `PU04IDTRA`,`PU04FEINICIO`,`PU04ESTADO`
FROM `pu04tramite`
WHERE `PU04ESTADO`='Denegados';
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_TRAMITE_MOSTRARINSPECCION` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_TRAMITE_MOSTRARINSPECCION` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_TRAMITE_MOSTRARINSPECCION`()
BEGIN
SELECT `PU04IDTRA`,`PU04FEINICIO`,`PU04ESTADO`
FROM `pu04tramite`
WHERE `PU04ESTADO`='Inspección';
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_TRAMITE_MOSTRARNUEVOS` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_TRAMITE_MOSTRARNUEVOS` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_TRAMITE_MOSTRARNUEVOS`()
BEGIN
SELECT `PU04IDTRA`,`PU04FEINICIO`,`PU04ESTADO`
FROM `pu04tramite`
WHERE `PU04ESTADO`='Nuevos';
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGISTROTRA_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGISTROTRA_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTRA_GUARDAR`( IN IDTRA INT(11), IN FETRA DATE, IN ESTADO VARCHAR(20),IN IDTFR INT(11), 
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
INSERT INTO pu04regtra (PU04IDTRA, PU04FETRA,PU04ESTADO,PU07IDTFR,PU04NORTE,PU04ESTE,PU04ALTITUD,PU12IDTDESEC)
 VALUES (IDTRA, FETRA,ESTADO,IDTFR,PU04NORTE,PU04ESTE,PU04ALTITUD,IDTDESEC);
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

/* Procedure structure for procedure `SP04_TRAMITE_MOSTRAROFICINA` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_TRAMITE_MOSTRAROFICINA` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_TRAMITE_MOSTRAROFICINA`()
BEGIN
SELECT `PU04IDTRA`,`PU04FEINICIO`,`PU04ESTADO`
FROM `pu04tramite`
WHERE `PU04ESTADO`='Oficina';
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_TRAMITE_MOSTRARRETRASADOS` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_TRAMITE_MOSTRARRETRASADOS` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_TRAMITE_MOSTRARRETRASADOS`()
BEGIN
SELECT `PU04IDTRA`,`PU04FEINICIO`,`PU04ESTADO`
FROM `pu04tramite`
WHERE `PU04ESTADO`='Retrasado';
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP06_ACTDES_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP06_ACTDES_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP06_ACTDES_ACTUALIZAR`(IN IDACTDES INT(11), IN DESAD VARCHAR(30))
BEGIN
UPDATE PU06ACTDES
 SET PU06DESAD = DESAD
  WHERE PU06IDACTDES = IDACTDES;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP06_ACTDES_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP06_ACTDES_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`mauricio`@`localhost` PROCEDURE `SP06_ACTDES_BUSCAR`(IDACTDES INT)
BEGIN
 SELECT `PU06IDACTDES`,`PU06DESAD`
 FROM pu06actdes 
 WHERE PU06IDACTDES =IDACTDES;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP06_ACTDES_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP06_ACTDES_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP06_ACTDES_ELIMINAR`(IN IDACTDES INT(11))
BEGIN
DELETE FROM `pu06actdes`
 WHERE `PU06IDACTDES` = IDACTDES;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP06_ACTDES_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP06_ACTDES_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP06_ACTDES_GUARDAR`(IN IDACTDES INT(11), IN DESAD VARCHAR(30))
BEGIN
INSERT INTO PU06ACTDES (PU06IDACTDES, PU06DESAD)
 VALUES (IDACTDES, DESAD);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP06_ACTDES_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP06_ACTDES_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP06_ACTDES_MOSTRAR`()
BEGIN
	SELECT `PU06IDACTDES`,`PU06DESAD`
	FROM pu06actdes;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP06_ACTDES_TRA_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP06_ACTDES_TRA_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP06_ACTDES_TRA_GUARDAR`(IN idtra INT(11), IN idactdes int(11))
BEGIN
INSERT INTO `pu05unitra`(`PU04IDTRA`, `PU06IDACTDES`)
 VALUES (idtra, idactdes);
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
SELECT `PU07IDTFR`,`PU07NOMTFR` 
FROM `pu07terrft`
 WHERE `PU07IDTFR` = IDTFR;
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
SELECT `PU07IDTFR`,`PU07NOMTFR` 
FROM `pu07terrft`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP09_DESCEG_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP09_DESCEG_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP09_DESCEG_ACTUALIZAR`(IN IDDEG INT(11), IN DESCREG VARCHAR(30))
BEGIN
UPDATE PU09DESCEG
 SET PU09DESCREG = DESCREG
   WHERE PU09IDDEG = IDDEG;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP09_DESCEG_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP09_DESCEG_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP09_DESCEG_BUSCAR`(IDDEG INT)
BEGIN
	SELECT `PU09IDDEG`,`PU09DESCREG`
	FROM pu09desceg 
	WHERE PU09IDDEG =IDDEG;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP09_DESCEG_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP09_DESCEG_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP09_DESCEG_ELIMINAR`(IN IDDEG INT(11))
BEGIN
DELETE FROM PU09DESCEG
 WHERE PU09IDDEG = IDDEG;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP09_DESCEG_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP09_DESCEG_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP09_DESCEG_GUARDAR`(IN IDDEG INT(11), IN DESCREG VARCHAR(30))
BEGIN
INSERT INTO PU09DESCEG (PU09IDDEG, PU09DESCREG)
 VALUES (IDDEG, DESCREG);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP09_DESCEG_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP09_DESCEG_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP09_DESCEG_MOSTRAR`()
BEGIN
SELECT `PU09IDDEG`,`PU09DESCREG`
FROM `pu09desceg`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP09_DESCEG_TRA_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP09_DESCEG_TRA_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP09_DESCEG_TRA_GUARDAR`(IN IDTRA INT(11),IN IDDEG INT(11))
BEGIN
INSERT INTO PU09tradeg (PU04IDTRA,PU09IDDEG)
 VALUES (IDTRA,IDDEG);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP10_ASPBIO_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP10_ASPBIO_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP10_ASPBIO_ACTUALIZAR`(IN IDASBIO INT(11), IN DESCABIO VARCHAR(30))
BEGIN
UPDATE PU10ASPBIO
 SET PU10DESCABIO = DESCABIO
  WHERE PU10IDASBIO = IDASBIO;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP10_ASPBIO_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP10_ASPBIO_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP10_ASPBIO_ELIMINAR`(IN IDASBIO INT(11))
BEGIN
DELETE FROM PU10ASPBIO
 WHERE PU10IDASBIO = IDASBIO;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP10_ASPBIO_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP10_ASPBIO_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP10_ASPBIO_GUARDAR`(IN IDASBIO INT(11), IN DESCABIO VARCHAR(30))
BEGIN
INSERT INTO PU10ASPBIO (PU10IDASBIO, PU10DESCABIO)
 VALUES (IDASBIO, DESCABIO);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP10_ASPBIO_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP10_ASPBIO_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP10_ASPBIO_MOSTRAR`()
BEGIN
	SELECT `PU10IDASBIO`,`PU10DESCABIO`
	FROM pu10aspbio;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP10_ASPBIO_TRA_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP10_ASPBIO_TRA_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP10_ASPBIO_TRA_GUARDAR`(IN IDTRA INT(11), IN IDASPBIO INT(11))
BEGIN
INSERT INTO pu11uniabio (PU04IDTRA,PU10IDASBIO)
 VALUES (IDTRA, IDASPBIO);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP12_TIPDESEC_ACTUALIZAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP12_TIPDESEC_ACTUALIZAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP12_TIPDESEC_ACTUALIZAR`(IN IDTDESEC INT(11), IN TIPODES VARCHAR(30))
BEGIN
UPDATE PU12TIPDESEC
 SET PU12TIPODES = TIPODES
  WHERE PU12IDTDESEC = IDTDESEC;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP12_TIPDESEC_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP12_TIPDESEC_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP12_TIPDESEC_ELIMINAR`(IN IDTDESEC INT(11))
BEGIN
DELETE FROM PU12TIPDESEC
 WHERE PU12IDTDESEC = IDTDESEC;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP12_TIPDESEC_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP12_TIPDESEC_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP12_TIPDESEC_GUARDAR`(IN IDTDESEC INT(11), IN TIPODES VARCHAR(30))
BEGIN
INSERT INTO PU12TIPDESEC (PU12IDTDESEC, PU12TIPODES)
 VALUES (IDTDESEC, TIPODES);
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP12_TIPDESEC_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP12_TIPDESEC_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP12_TIPDESEC_MOSTRAR`()
BEGIN
	 SELECT `PU12IDTDESEC`,`PU12TIPODES` 
	 FROM pu12tipdesec;
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
	 SELECT `PU13IDAAP`,`PU13DESCAAP`
	 FROM pu13aarep 
	 WHERE PU13IDAAP =IDAAP;
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
	 SELECT `PU13IDAAP`,`PU13DESCAAP`
	 FROM pu13aarep ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP13_AAREP_TRA_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP13_AAREP_TRA_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP13_AAREP_TRA_GUARDAR`( IN idtra INT(11),IN idaap int(11))
BEGIN
INSERT INTO `pu14trarep` (`PU04IDTRA`,`PU13IDAAP`)
 VALUES (idtra, idaap);
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
	 SELECT `PU16IDSAE`,`PU16DESCAE`
	 FROM pu16servae 
	 WHERE PU16IDSAE =IDSAE;
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
	 SELECT `PU16IDSAE`,`PU16DESCAE`
	 FROM pu16servae ;
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
	 SELECT `PU18IDCSCLS`,`PU18DESCS` 
	 FROM PU18CALLESER 
	 WHERE PU18IDCSCLS = IDCSCLS;
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
	SELECT `PU18IDCSCLS`,`PU18DESCS` 
	 FROM PU18CALLESER ;
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
SELECT `PU20IDDESAS`,`PU20DESCS` 
FROM `pu20desas`
 WHERE `PU20IDDESAS` = IDDESAS;
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
SELECT `PU20IDDESAS`,`PU20DESCS` 
FROM `pu20desas`;
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
SELECT `PU22IDREDVI`,`PU22DESSVI`,`PU22OBSERV` 
FROM `pu22serrvi`
 WHERE `PU22IDREDVI` =IDREDVI;
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
SELECT `PU22IDREDVI`,`PU22DESSVI`,`PU22OBSERV` 
FROM `pu22serrvi`;
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
SELECT `PU24IDINFR`,`PU24DESCINF`
FROM `pu24infest`
 WHERE PU24IDINFR = idinfr;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP24_INFEST_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP24_INFEST_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP24_INFEST_ELIMINAR`( IN idinfr INT)
BEGIN
DELETE FROM `pu24infest`
 WHERE `PU24IDINFR`=idredvi;	
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
SELECT `PU24IDINFR`,`PU24DESCINF`
FROM `pu24infest`;
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
SELECT `PU26IDPLAN`,`PU26PLNDESC` 
FROM `pu26planreg`
 WHERE `PU26IDPLAN` =IDPLAN;
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
SELECT `PU26IDPLAN`,`PU26PLNDESC` 
FROM `pu26planreg`;
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
SELECT `PU32IDCUSO`,`PU32DESUSO` 
FROM `pu32capuso`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP35_TIPSUE_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP35_TIPSUE_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP35_TIPSUE_BUSCAR`(IDTIPS INT)
BEGIN
	SELECT `PU35IDTIPS`,`PU35DESTIP`
	FROM `pu35tipsue`
	 WHERE `PU35IDTIPS` =IDTIPS;
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
SELECT `PU35IDTIPS`,`PU35DESTIP`
	FROM `pu35tipsue`;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
