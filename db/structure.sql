
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
DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flights` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `icao` varchar(255) DEFAULT NULL,
  `fseen` datetime DEFAULT NULL,
  `cmsgs` int(11) DEFAULT NULL,
  `altt` tinyint(1) DEFAULT NULL,
  `tisb` tinyint(1) DEFAULT NULL,
  `trkh` tinyint(1) DEFAULT NULL,
  `sqk` int(11) DEFAULT NULL,
  `vsit` tinyint(1) DEFAULT NULL,
  `wtc` int(11) DEFAULT NULL,
  `species` int(11) DEFAULT NULL,
  `engtype` int(11) DEFAULT NULL,
  `engmount` int(11) DEFAULT NULL,
  `mil` tinyint(1) DEFAULT NULL,
  `cou` varchar(255) DEFAULT NULL,
  `haspic` tinyint(1) DEFAULT NULL,
  `interested` tinyint(1) DEFAULT NULL,
  `flightscount` int(11) DEFAULT NULL,
  `gnd` tinyint(1) DEFAULT NULL,
  `spdtyp` int(11) DEFAULT NULL,
  `callsus` tinyint(1) DEFAULT NULL,
  `trt` int(11) DEFAULT NULL,
  `sig` decimal(10,0) DEFAULT NULL,
  `alt` int(11) DEFAULT NULL,
  `galt` int(11) DEFAULT NULL,
  `inhg` decimal(10,0) DEFAULT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `long` decimal(10,6) DEFAULT NULL,
  `postime` datetime DEFAULT NULL,
  `mlat` tinyint(1) DEFAULT NULL,
  `tsecs` int(11) DEFAULT NULL,
  `reg` varchar(255) DEFAULT NULL,
  `call` varchar(255) DEFAULT NULL,
  `spd` decimal(10,0) DEFAULT NULL,
  `trak` float DEFAULT NULL,
  `icao_type_code` varchar(255) DEFAULT NULL,
  `mdl` varchar(255) DEFAULT NULL,
  `man` varchar(255) DEFAULT NULL,
  `cnum` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `op` varchar(255) DEFAULT NULL,
  `opicao` varchar(255) DEFAULT NULL,
  `engines` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `help` tinyint(1) DEFAULT NULL,
  `vsi` int(11) DEFAULT NULL,
  `talt` int(11) DEFAULT NULL,
  `ttrk` int(11) DEFAULT NULL,
  `posstale` tinyint(1) DEFAULT NULL,
  `sat` tinyint(1) DEFAULT NULL,
  `geohash` varchar(255) DEFAULT NULL,
  `alpha2` varchar(255) DEFAULT NULL,
  `alpha3` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_flights_on_icao` (`icao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 WITH SYSTEM VERSIONING;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

INSERT INTO `schema_migrations` (version) VALUES
('20180601011039');


