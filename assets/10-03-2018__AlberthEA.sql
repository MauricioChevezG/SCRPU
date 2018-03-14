/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.26-MariaDB : Database - pu_ingenieria
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

insert  into `pu01regusu`(`PU01CEDUSU`,`PU01NOMUSU`,`PU01APE1USU`,`PU01APE2USU`) values (123,'Alberto  ','Espinoza  ','Ortiz  '),(504180821,'Alberth','Esquivel','Alvarado');

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

insert  into `pu02infusu`(`PU01CEDUSU`,`PU02TELUSU`,`PU02CORUSU`,`PU03IDPUES`,`PU02USUARIO`,`PU02CLAVE`) values (123,'909010','Arubato@ ',1,'Aru','123'),(504180821,'86933679','Alberth@',1,'admin','123');

/*Table structure for table `pu03puestos` */

DROP TABLE IF EXISTS `pu03puestos`;

CREATE TABLE `pu03puestos` (
  `PU03IDPUES` int(11) NOT NULL,
  `PU03PUESTO` varchar(30) NOT NULL,
  PRIMARY KEY (`PU03IDPUES`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu03puestos` */

insert  into `pu03puestos`(`PU03IDPUES`,`PU03PUESTO`) values (1,'Administrador'),(2,'Coordinador'),(3,'Asistente'),(4,'Auxiliar'),(5,'Alcalde(sa)');

/*Table structure for table `pu04regtra` */

DROP TABLE IF EXISTS `pu04regtra`;

CREATE TABLE `pu04regtra` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU04FETRA` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PU04NORTE` int(11) NOT NULL,
  `PU04ESTE` int(11) NOT NULL,
  `PU04ALTITUD` int(11) NOT NULL,
  PRIMARY KEY (`PU04IDTRA`),
  CONSTRAINT `pu04regtra_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04tramite1` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu04regtra` */

insert  into `pu04regtra`(`PU04IDTRA`,`PU04FETRA`,`PU04NORTE`,`PU04ESTE`,`PU04ALTITUD`) values (1,'2018-02-28 16:35:07',111,111,111),(2,'2018-02-28 17:23:35',222,222,222),(3,'2018-02-28 21:26:03',333,333,333),(4,'2018-02-28 21:31:39',444,444,444),(5,'2018-03-01 13:20:27',1454,1453,13451),(6,'2018-03-01 15:48:43',1212,1212,1212),(7,'2018-03-07 08:52:59',758,786,67876),(9,'2018-03-07 10:59:16',5654,45645,456),(55671,'2018-03-09 10:27:18',2243,234,3545);

/*Table structure for table `pu04tramite1` */

DROP TABLE IF EXISTS `pu04tramite1`;

CREATE TABLE `pu04tramite1` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU0INDICETRA` int(20) NOT NULL AUTO_INCREMENT,
  `PU04FEINICIO` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PU04DESCRIPCIONLUGAR` varchar(150) NOT NULL,
  `PU04ESTADOTRA` varchar(20) NOT NULL,
  PRIMARY KEY (`PU0INDICETRA`,`PU04IDTRA`),
  KEY `PU04IDTRA` (`PU04IDTRA`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `pu04tramite1` */

insert  into `pu04tramite1`(`PU04IDTRA`,`PU0INDICETRA`,`PU04FEINICIO`,`PU04DESCRIPCIONLUGAR`,`PU04ESTADOTRA`) values (1,1,'2018-02-28 16:31:26','Una-biblioteca','INSPECCIONADO'),(2,2,'2018-02-28 17:11:04','Barrio la granja','INSPECCIONADO'),(3,3,'2018-02-28 21:25:32','La virginia','INSPECCIONADO'),(4,4,'2018-02-28 21:25:41','Nicoya','INSPECCIONADO'),(5,5,'2018-02-28 21:31:04','Nicoya','INSPECCIONADO'),(6,6,'2018-03-01 14:38:00','Una','INGRESADO'),(7,7,'2018-03-07 08:44:02','Lab-una','INSPECCIONADO'),(7,8,'2018-03-07 10:56:40','Prueba','INGRESADO'),(9,9,'2018-03-07 10:59:09','Ofi','INGRESADO'),(55671,10,'2018-03-09 10:26:14','Samara-centro','INGRESADO');

/*Table structure for table `pu05unitra` */

DROP TABLE IF EXISTS `pu05unitra`;

CREATE TABLE `pu05unitra` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU06IDACTDES` int(11) NOT NULL,
  KEY `FK_PU04IDTRAUNITRA` (`PU04IDTRA`),
  KEY `FK_PU06IDACTDESUNITRA` (`PU06IDACTDES`),
  CONSTRAINT `FK_PU06IDACTDESUNITRA` FOREIGN KEY (`PU06IDACTDES`) REFERENCES `pu06actdes` (`PU06IDACTDES`),
  CONSTRAINT `pu05unitra_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu05unitra` */

insert  into `pu05unitra`(`PU04IDTRA`,`PU06IDACTDES`) values (1,2),(2,2),(3,4),(4,2),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(6,3),(6,4),(7,2),(55671,4);

/*Table structure for table `pu06actdes` */

DROP TABLE IF EXISTS `pu06actdes`;

CREATE TABLE `pu06actdes` (
  `PU06IDACTDES` int(11) NOT NULL,
  `PU06DESAD` varchar(30) NOT NULL,
  PRIMARY KEY (`PU06IDACTDES`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu06actdes` */

insert  into `pu06actdes`(`PU06IDACTDES`,`PU06DESAD`) values (1,'Residencial'),(2,'Desarrollos'),(3,'Comerciales'),(4,'Comercial-Industrial'),(5,'Estacion de Servicios'),(6,'Otros');

/*Table structure for table `pu07terrft` */

DROP TABLE IF EXISTS `pu07terrft`;

CREATE TABLE `pu07terrft` (
  `PU07IDTFR` int(11) NOT NULL,
  `PU07NOMTFR` varchar(30) NOT NULL,
  PRIMARY KEY (`PU07IDTFR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu07terrft` */

insert  into `pu07terrft`(`PU07IDTFR`,`PU07NOMTFR`) values (1,'Calle publica'),(2,'Ruta Cantonal'),(3,'Servidumbre Agricola');

/*Table structure for table `pu07traterrft` */

DROP TABLE IF EXISTS `pu07traterrft`;

CREATE TABLE `pu07traterrft` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU07IDTFR` int(11) NOT NULL,
  KEY `FK_PU07IDTFRTRAT` (`PU07IDTFR`),
  KEY `PU04IDTRA` (`PU04IDTRA`),
  CONSTRAINT `FK_PU07IDTFRTRAT` FOREIGN KEY (`PU07IDTFR`) REFERENCES `pu07terrft` (`PU07IDTFR`),
  CONSTRAINT `pu07traterrft_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu07traterrft` */

insert  into `pu07traterrft`(`PU04IDTRA`,`PU07IDTFR`) values (1,1),(2,2),(3,3),(4,2),(5,1),(6,1),(6,3),(7,2),(55671,2);

/*Table structure for table `pu09desceg` */

DROP TABLE IF EXISTS `pu09desceg`;

CREATE TABLE `pu09desceg` (
  `PU09IDDEG` int(11) NOT NULL,
  `PU09DESCREG` varchar(30) NOT NULL,
  PRIMARY KEY (`PU09IDDEG`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu09desceg` */

insert  into `pu09desceg`(`PU09IDDEG`,`PU09DESCREG`) values (0,'Otro'),(1,'Topografia Plana'),(2,'Topografia Semiplana'),(3,'Topografia con Depresiones'),(4,'Topografia Irregular');

/*Table structure for table `pu09tradeg` */

DROP TABLE IF EXISTS `pu09tradeg`;

CREATE TABLE `pu09tradeg` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU09IDDEG` int(11) NOT NULL,
  KEY `FK_PU09IDDEGREGTRA` (`PU04IDTRA`),
  KEY `FK_PU06IDACTDESDESCEG` (`PU09IDDEG`),
  CONSTRAINT `FK_PU06IDACTDESDESCEG` FOREIGN KEY (`PU09IDDEG`) REFERENCES `pu09desceg` (`PU09IDDEG`),
  CONSTRAINT `pu09tradeg_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu09tradeg` */

insert  into `pu09tradeg`(`PU04IDTRA`,`PU09IDDEG`) values (1,1),(2,1),(3,3),(4,1),(5,1),(6,0),(6,1),(6,3),(7,2),(55671,0);

/*Table structure for table `pu10aspbio` */

DROP TABLE IF EXISTS `pu10aspbio`;

CREATE TABLE `pu10aspbio` (
  `PU10IDASBIO` int(11) NOT NULL,
  `PU10DESCABIO` varchar(30) NOT NULL,
  PRIMARY KEY (`PU10IDASBIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu10aspbio` */

insert  into `pu10aspbio`(`PU10IDASBIO`,`PU10DESCABIO`) values (1,'Vegetacion Jardin'),(2,'Vegetacion Tipo Pasto'),(3,'Arboles Dispersos'),(4,'Bosque Primario'),(5,'Bosque Secundario'),(6,'Zonas Boscosas'),(7,'Permiso de corta de arboles');

/*Table structure for table `pu11uniabio` */

DROP TABLE IF EXISTS `pu11uniabio`;

CREATE TABLE `pu11uniabio` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU10IDASBIO` int(11) NOT NULL,
  KEY `FK_PU10IDASBIOREGTRA` (`PU04IDTRA`),
  KEY `FK_PU10IDASBIOASPBIO` (`PU10IDASBIO`),
  CONSTRAINT `FK_PU10IDASBIOASPBIO` FOREIGN KEY (`PU10IDASBIO`) REFERENCES `pu10aspbio` (`PU10IDASBIO`),
  CONSTRAINT `pu11uniabio_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu11uniabio` */

insert  into `pu11uniabio`(`PU04IDTRA`,`PU10IDASBIO`) values (1,1),(2,2),(3,3),(4,1),(5,1),(6,1),(6,2),(6,3),(7,2),(55671,3),(55671,4),(55671,5),(55671,6);

/*Table structure for table `pu12tipdesec` */

DROP TABLE IF EXISTS `pu12tipdesec`;

CREATE TABLE `pu12tipdesec` (
  `PU12IDTDESEC` int(11) NOT NULL,
  `PU12TIPODES` varchar(30) NOT NULL,
  PRIMARY KEY (`PU12IDTDESEC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu12tipdesec` */

insert  into `pu12tipdesec`(`PU12IDTDESEC`,`PU12TIPODES`) values (1,'Infra. de tipo residencial'),(2,'Infra. de tipo comercial'),(3,'Infra. de tipo residecial come'),(4,'No hay desarrollo en la zona'),(5,'Otro');

/*Table structure for table `pu12tratipdesec` */

DROP TABLE IF EXISTS `pu12tratipdesec`;

CREATE TABLE `pu12tratipdesec` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU12IDTDESEC` int(11) NOT NULL,
  KEY `FK_PU12IDTDESEC` (`PU12IDTDESEC`),
  KEY `PU04IDTRA` (`PU04IDTRA`),
  CONSTRAINT `FK_PU12IDTDESEC` FOREIGN KEY (`PU12IDTDESEC`) REFERENCES `pu12tipdesec` (`PU12IDTDESEC`),
  CONSTRAINT `pu12tratipdesec_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu12tratipdesec` */

insert  into `pu12tratipdesec`(`PU04IDTRA`,`PU12IDTDESEC`) values (1,1),(2,2),(3,3),(4,1),(5,1),(6,2),(6,3),(6,5),(7,2),(55671,2);

/*Table structure for table `pu13aarep` */

DROP TABLE IF EXISTS `pu13aarep`;

CREATE TABLE `pu13aarep` (
  `PU13IDAAP` int(11) NOT NULL,
  `PU13DESCAAP` varchar(30) NOT NULL,
  PRIMARY KEY (`PU13IDAAP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu13aarep` */

insert  into `pu13aarep`(`PU13IDAAP`,`PU13DESCAAP`) values (1,'Refugio Ostional'),(2,'Depresiones Naturales'),(3,'Naciente'),(4,'Rios'),(5,'Pozos'),(6,'Acuiferos'),(7,'Zona de Inundacion'),(8,'Quebrada'),(9,'Clase VIII');

/*Table structure for table `pu14trarep` */

DROP TABLE IF EXISTS `pu14trarep`;

CREATE TABLE `pu14trarep` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU13IDAAP` int(11) NOT NULL,
  KEY `FK_PU13IDAAPREGTRA` (`PU04IDTRA`),
  KEY `FK_PU13IDAAPAAREP` (`PU13IDAAP`),
  CONSTRAINT `FK_PU13IDAAPAAREP` FOREIGN KEY (`PU13IDAAP`) REFERENCES `pu13aarep` (`PU13IDAAP`),
  CONSTRAINT `pu14trarep_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu14trarep` */

insert  into `pu14trarep`(`PU04IDTRA`,`PU13IDAAP`) values (1,1),(2,2),(3,4),(4,1),(5,1),(6,1),(6,4),(7,2),(55671,1),(55671,4),(55671,7);

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
  CONSTRAINT `FK_PU21IDSERVICASERV` FOREIGN KEY (`PU21IDSERVI`) REFERENCES `pu21serviservicios` (`PU21IDSERVI`),
  CONSTRAINT `pu15serv_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu15serv` */

/*Table structure for table `pu16servae` */

DROP TABLE IF EXISTS `pu16servae`;

CREATE TABLE `pu16servae` (
  `PU16IDSAE` int(11) NOT NULL,
  `PU16DESCAE` varchar(30) NOT NULL,
  PRIMARY KEY (`PU16IDSAE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu16servae` */

insert  into `pu16servae`(`PU16IDSAE`,`PU16DESCAE`) values (1,'Agua'),(2,'Electricidad');

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

/*Table structure for table `pu18casasser` */

DROP TABLE IF EXISTS `pu18casasser`;

CREATE TABLE `pu18casasser` (
  `PU18IDCSCLS` int(11) NOT NULL,
  `PU18DESCS` varchar(100) NOT NULL,
  PRIMARY KEY (`PU18IDCSCLS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu18casasser` */

insert  into `pu18casasser`(`PU18IDCSCLS`,`PU18DESCS`) values (1,'Existen casas frente a calle Publica'),(2,'No existen casas frente a calle Publica'),(3,'Terreno con dificil acceso a calle Publica');

/*Table structure for table `pu19serpacsca` */

DROP TABLE IF EXISTS `pu19serpacsca`;

CREATE TABLE `pu19serpacsca` (
  `PU15IDSERVI` int(11) NOT NULL,
  `PU18IDCSCLS` int(11) NOT NULL,
  KEY `FK_PU15IDSERVIPASCA` (`PU15IDSERVI`),
  KEY `FK_PU18IDCSCLSCALLE` (`PU18IDCSCLS`),
  CONSTRAINT `FK_PU15IDSERVIPASCA` FOREIGN KEY (`PU15IDSERVI`) REFERENCES `pu15serv` (`PU15IDSERVI`),
  CONSTRAINT `FK_PU18IDCSCLSCALLE` FOREIGN KEY (`PU18IDCSCLS`) REFERENCES `pu18casasser` (`PU18IDCSCLS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu19serpacsca` */

/*Table structure for table `pu20desas` */

DROP TABLE IF EXISTS `pu20desas`;

CREATE TABLE `pu20desas` (
  `PU20IDDESAS` int(11) NOT NULL,
  `PU20DESCS` varchar(30) NOT NULL,
  PRIMARY KEY (`PU20IDDESAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu20desas` */

insert  into `pu20desas`(`PU20IDDESAS`,`PU20DESCS`) values (1,'Aaa');

/*Table structure for table `pu21serviservicios` */

DROP TABLE IF EXISTS `pu21serviservicios`;

CREATE TABLE `pu21serviservicios` (
  `PU21IDSERVI` int(11) NOT NULL COMMENT 'id servicio',
  `PU21DESCSERVI` varchar(100) DEFAULT NULL COMMENT 'descripción del servicio',
  PRIMARY KEY (`PU21IDSERVI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu21serviservicios` */

insert  into `pu21serviservicios`(`PU21IDSERVI`,`PU21DESCSERVI`) values (1,'Servicios de Agua ya Instalado'),(2,'Servicios de Luz  ya Instalado'),(3,'Servicios en calle Publica, sin instalar'),(4,'No existe Servicio');

/*Table structure for table `pu22traserv` */

DROP TABLE IF EXISTS `pu22traserv`;

CREATE TABLE `pu22traserv` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU22IDTREDV` int(11) NOT NULL,
  KEY `PU22IDTREDV` (`PU22IDTREDV`),
  KEY `PU04IDTRA` (`PU04IDTRA`),
  CONSTRAINT `pu22traserv_ibfk_1` FOREIGN KEY (`PU22IDTREDV`) REFERENCES `pu22tredv` (`PU22IDTREDV`),
  CONSTRAINT `pu22traserv_ibfk_2` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu22traserv` */

insert  into `pu22traserv`(`PU04IDTRA`,`PU22IDTREDV`) values (1,1),(2,2),(3,2),(4,2),(5,1),(6,1),(7,1),(55671,1);

/*Table structure for table `pu22tredv` */

DROP TABLE IF EXISTS `pu22tredv`;

CREATE TABLE `pu22tredv` (
  `PU22IDTREDV` int(11) NOT NULL,
  `PU22DESCTRV` varchar(50) NOT NULL,
  PRIMARY KEY (`PU22IDTREDV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu22tredv` */

insert  into `pu22tredv`(`PU22IDTREDV`,`PU22DESCTRV`) values (1,'Calle Fisicamente'),(2,'Solo en Plano');

/*Table structure for table `pu23traservi` */

DROP TABLE IF EXISTS `pu23traservi`;

CREATE TABLE `pu23traservi` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU21IDSERVI` int(11) NOT NULL,
  KEY `FK_PO23REDVREGTRA` (`PU04IDTRA`),
  KEY `FK_PU21REDVCASERV` (`PU21IDSERVI`),
  CONSTRAINT `FK_PU21REDVCASERV` FOREIGN KEY (`PU21IDSERVI`) REFERENCES `pu21serviservicios` (`PU21IDSERVI`),
  CONSTRAINT `pu23traservi_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu23traservi` */

insert  into `pu23traservi`(`PU04IDTRA`,`PU21IDSERVI`) values (1,1),(2,2),(3,2),(4,1),(5,1),(6,1),(6,2),(6,3),(7,1),(55671,3);

/*Table structure for table `pu24infest` */

DROP TABLE IF EXISTS `pu24infest`;

CREATE TABLE `pu24infest` (
  `PU24IDINFR` int(11) NOT NULL,
  `PU24DESCINF` varchar(30) NOT NULL,
  PRIMARY KEY (`PU24IDINFR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu24infest` */

insert  into `pu24infest`(`PU24IDINFR`,`PU24DESCINF`) values (1,'Infraestructura Existente'),(2,'No hay infraestructura');

/*Table structure for table `pu25patent` */

DROP TABLE IF EXISTS `pu25patent`;

CREATE TABLE `pu25patent` (
  `PU21IDSERVI` int(11) NOT NULL,
  `PU04IDTRA` int(11) NOT NULL,
  `PU24IDINFR` int(11) NOT NULL,
  KEY `FK_PU24IDINFRREGTRA` (`PU04IDTRA`),
  KEY `FK_PU24IDINFRPATENT` (`PU24IDINFR`),
  KEY `FK_PPU24IDINFRCASERV` (`PU21IDSERVI`),
  CONSTRAINT `FK_PPU24IDINFRCASERV` FOREIGN KEY (`PU21IDSERVI`) REFERENCES `pu21serviservicios` (`PU21IDSERVI`),
  CONSTRAINT `FK_PU24IDINFRPATENT` FOREIGN KEY (`PU24IDINFR`) REFERENCES `pu24infest` (`PU24IDINFR`),
  CONSTRAINT `pu25patent_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu25patent` */

/*Table structure for table `pu26planreg` */

DROP TABLE IF EXISTS `pu26planreg`;

CREATE TABLE `pu26planreg` (
  `PU26IDPLAN` int(11) NOT NULL,
  `PU26PLNDESC` varchar(30) NOT NULL,
  PRIMARY KEY (`PU26IDPLAN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu26planreg` */

insert  into `pu26planreg`(`PU26IDPLAN`,`PU26PLNDESC`) values (1,'Nicoya'),(2,'Samara'),(3,'Fuera del P.R');

/*Table structure for table `pu27ubicacion` */

DROP TABLE IF EXISTS `pu27ubicacion`;

CREATE TABLE `pu27ubicacion` (
  `PU27IDUBIC` int(11) NOT NULL,
  `PU27DESCRIP` varchar(30) NOT NULL,
  PRIMARY KEY (`PU27IDUBIC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu27ubicacion` */

insert  into `pu27ubicacion`(`PU27IDUBIC`,`PU27DESCRIP`) values (1,'Nicoya'),(2,'Samara');

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

/*Table structure for table `pu29unitradesc` */

DROP TABLE IF EXISTS `pu29unitradesc`;

CREATE TABLE `pu29unitradesc` (
  `PU28IDUBIDESC` int(11) NOT NULL,
  `PU04IDTRA` int(11) NOT NULL,
  KEY `FK_PU28IDUBIDESC` (`PU04IDTRA`),
  KEY `FK_PU28IDUBIDESCR` (`PU28IDUBIDESC`),
  CONSTRAINT `FK_PU28IDUBIDESCR` FOREIGN KEY (`PU28IDUBIDESC`) REFERENCES `pu28ubidescripcion` (`PU28IDUBIDESC`),
  CONSTRAINT `pu29unitradesc_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu29unitradesc` */

/*Table structure for table `pu31trasue` */

DROP TABLE IF EXISTS `pu31trasue`;

CREATE TABLE `pu31trasue` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU35IDTIPS` int(11) NOT NULL,
  KEY `FK_PU035IDTIPSREGTRA` (`PU04IDTRA`),
  KEY `FK_PU35IDTIPSTRASUE` (`PU35IDTIPS`),
  CONSTRAINT `FK_PU35IDTIPSTRASUE` FOREIGN KEY (`PU35IDTIPS`) REFERENCES `pu35tipsue` (`PU35IDTIPS`),
  CONSTRAINT `pu31trasue_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu31trasue` */

/*Table structure for table `pu32capuso` */

DROP TABLE IF EXISTS `pu32capuso`;

CREATE TABLE `pu32capuso` (
  `PU32IDCUSO` int(11) NOT NULL,
  `PU32DESUSO` varchar(30) NOT NULL,
  PRIMARY KEY (`PU32IDCUSO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu32capuso` */

/*Table structure for table `pu33tracap` */

DROP TABLE IF EXISTS `pu33tracap`;

CREATE TABLE `pu33tracap` (
  `PU04IDTRA` int(11) NOT NULL,
  `PU32IDCUSO` int(11) NOT NULL,
  KEY `FK_PU32IDCUSOEGTRA` (`PU04IDTRA`),
  KEY `FK_PU32IDCUSOCAPUSO` (`PU32IDCUSO`),
  CONSTRAINT `FK_PU32IDCUSOCAPUSO` FOREIGN KEY (`PU32IDCUSO`) REFERENCES `pu32capuso` (`PU32IDCUSO`),
  CONSTRAINT `pu33tracap_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu33tracap` */

/*Table structure for table `pu34clases` */

DROP TABLE IF EXISTS `pu34clases`;

CREATE TABLE `pu34clases` (
  `PU34IDCLAS` int(11) NOT NULL,
  `PU34DESCLA` int(11) NOT NULL,
  PRIMARY KEY (`PU34IDCLAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu34clases` */

/*Table structure for table `pu35tipsue` */

DROP TABLE IF EXISTS `pu35tipsue`;

CREATE TABLE `pu35tipsue` (
  `PU35IDTIPS` int(11) NOT NULL,
  `PU35DESTIP` varchar(30) NOT NULL,
  PRIMARY KEY (`PU35IDTIPS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu35tipsue` */

insert  into `pu35tipsue`(`PU35IDTIPS`,`PU35DESTIP`) values (1,'Arenoso');

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
  CONSTRAINT `pu36hisinsp_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu36hisinsp` */

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
  CONSTRAINT `pu37hisofi_ibfk_1` FOREIGN KEY (`PU04IDTRA`) REFERENCES `pu04regtra` (`PU04IDTRA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pu37hisofi` */

/* Procedure structure for procedure `INGRESO_ENTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `INGRESO_ENTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `INGRESO_ENTRAR`(usuario VARCHAR(30), clave VARCHAR(30))
BEGIN
SELECT `pu01regusu`.`PU01NOMUSU`, `pu03puestos`.`PU03IDPUES`, `pu03puestos`.`PU03PUESTO` 
FROM 
	`pu01regusu`
	inner join
	`pu02infusu` 
	on `pu01regusu`.`PU01CEDUSU`=`pu02infusu`.`PU01CEDUSU`
	
	INNER JOIN 
		`pu03puestos`
		ON `pu02infusu`.`PU03IDPUES` = `pu03puestos`.`PU03IDPUES`
		
 WHERE `pu02infusu`.`PU02USUARIO`= usuario AND `pu02infusu`.`PU02CLAVE`=clave;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP00_LISTAR_INGRESO_TRAMITE` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP00_LISTAR_INGRESO_TRAMITE` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP00_LISTAR_INGRESO_TRAMITE`()
BEGIN
	
	SELECT `PU04IDTRA`,`PU04FEINICIO`,`PU04DESCRIPCIONLUGAR`
	FROM 
	`pu04tramite1`	
		WHERE `PU04ESTADOTRA`="INGRESADO";
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP00_LISTAR_TRAMITE_REALIZADO` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP00_LISTAR_TRAMITE_REALIZADO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP00_LISTAR_TRAMITE_REALIZADO`()
BEGIN
  SELECT DISTINCT pu04regtra.PU04IDTRA AS 'Numero Trámite', pu04regtra.PU04FETRA AS 'Fecha',
   pu04regtra.PU04NORTE AS 'Norte', pu04regtra.PU04ESTE AS 'Este', pu04regtra.PU04ALTITUD AS 'Altitud'
   
   FROM pu04regtra
   inner join
   pu04tramite1
   on `pu04tramite1`.`PU04IDTRA` = `pu04regtra`.`PU04IDTRA`
   where `pu04tramite1`.`PU04ESTADOTRA` <> 'INGRESADO';
          END */$$
DELIMITER ;

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

/* Procedure structure for procedure `SP04_REGISTROTRAMITE_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGISTROTRAMITE_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTRAMITE_GUARDAR`( IN IDTRA INT(11), 
IN PU04NORTE INT(11), IN PU04ESTE INT(11), IN PU04ALTITUD INT(11))
BEGIN
-- INSERT DE LA INFORMACIÓN REQUERIDA POR LA TABLA PRINCIPAL DE TRÁMITE
INSERT INTO pu04regtra (PU04IDTRA,PU04NORTE,PU04ESTE,PU04ALTITUD)
 VALUES (IDTRA,PU04NORTE,PU04ESTE,PU04ALTITUD);
 
 
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
  SELECT DISTINCT pu04regtra.PU04IDTRA AS 'Numero Trámite', pu04regtra.PU04FETRA AS 'Fecha',
   pu04regtra.PU04NORTE AS 'Norte', pu04regtra.PU04ESTE AS 'Este', pu04regtra.PU04ALTITUD AS 'Altitud'
   
   FROM pu04regtra;
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

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGISTROTR_GUARDAR`( IN IDTRA INT(11), 
IN PU04NORTE INT(11), IN PU04ESTE INT(11), IN PU04ALTITUD INT(11))
BEGIN
DECLARE ESTADO VARCHAR (20);
SET ESTADO = "INSPECCIONADO";
-- INSERT DE LA INFORMACIÓN REQUERIDA POR LA TABLA PRINCIPAL DE TRÁMITE
INSERT INTO pu04regtra (PU04IDTRA,PU04NORTE,PU04ESTE,PU04ALTITUD)
 VALUES (IDTRA,PU04NORTE,PU04ESTE,PU04ALTITUD);
 
 UPDATE `pu04tramite1`
 SET `PU04ESTADOTRA` = ESTADO
 WHERE `PU04IDTRA` = IDTRA;
 
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGTRAMITEINFO_BUSCAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGTRAMITEINFO_BUSCAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGTRAMITEINFO_BUSCAR`(IN IDTRA INT(11))
BEGIN
SELECT PU04IDTRA, PU04DESCRIPCIONLUGAR
FROM pu04tramite1 
WHERE PU04IDTRA = IDTRA;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGTRAMITEINFO_ELIMINAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGTRAMITEINFO_ELIMINAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGTRAMITEINFO_ELIMINAR`(IN IDTRA INT(11))
BEGIN
DELETE FROM pu04tramite1
 WHERE PU04IDTRA = IDTRA;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGTRAMITEINFO_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGTRAMITEINFO_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGTRAMITEINFO_GUARDAR`(IN IDTRA INT(11),
 IN PU04DESCRIPCIONLUGAR VARCHAR (150)  )
BEGIN
DECLARE ESTADO VARCHAR (20);
SET ESTADO = "INGRESADO";
INSERT INTO pu04tramite1(PU04IDTRA,PU04DESCRIPCIONLUGAR,PU04ESTADOTRA)
VALUES (IDTRA,PU04DESCRIPCIONLUGAR,ESTADO);
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP04_REGTRAMITEINFO_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP04_REGTRAMITEINFO_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP04_REGTRAMITEINFO_MOSTRAR`()
BEGIN
SELECT PU04IDTRA,PU04FEINICIO,PU04DESCRIPCIONLUGAR
 FROM pu04tramite1;
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

/* Procedure structure for procedure `SP07_TERRFR_TRA_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP07_TERRFR_TRA_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP07_TERRFR_TRA_GUARDAR`(IN idtra INT(11), IN idterrfr int(11))
BEGIN
INSERT INTO `pu07traterrft`(`PU04IDTRA`, `PU07IDTFR`)
 VALUES (idtra, idterrfr);
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

/* Procedure structure for procedure `SP121_SERVICIOS_TRA_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP121_SERVICIOS_TRA_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP121_SERVICIOS_TRA_GUARDAR`(IN IDTRA INT(11), IN IDSERV INT(11))
BEGIN
INSERT INTO `pu23traservi` (PU04IDTRA,PU21IDSERVI)
 VALUES (IDTRA, IDSERV);
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

/* Procedure structure for procedure `SP12_TIPODESEC_TRA_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP12_TIPODESEC_TRA_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP12_TIPODESEC_TRA_GUARDAR`(IN IDTRA INT(11), IN IDTIPODESEC INT(11))
BEGIN
INSERT INTO `pu12tratipdesec` (PU04IDTRA,`PU12IDTDESEC`)
 VALUES (IDTRA, IDTIPODESEC);
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

/* Procedure structure for procedure `SP21_SERVICIOS_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP21_SERVICIOS_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP21_SERVICIOS_MOSTRAR`()
BEGIN
SELECT `PU21IDSERVI`,`PU21DESCSERVI`
FROM `pu21serviservicios`;
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

/* Procedure structure for procedure `SP22_TREDV_MOSTRAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP22_TREDV_MOSTRAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP22_TREDV_MOSTRAR`()
BEGIN
SELECT `PU22IDTREDV`,`PU22DESCTRV`
FROM `pu22tredv`;
END */$$
DELIMITER ;

/* Procedure structure for procedure `SP22_TREDV_TRA_GUARDAR` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP22_TREDV_TRA_GUARDAR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SP22_TREDV_TRA_GUARDAR`( IN idtra INT(11),IN idtred INT(11))
BEGIN
INSERT INTO `pu22traserv` (`PU04IDTRA`,`PU22IDTREDV`)
 VALUES (idtra, idtred);
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
