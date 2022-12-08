CREATE DATABASE  IF NOT EXISTS `team_4_database` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `team_4_database`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: team_4_database
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `disaster`
--

DROP TABLE IF EXISTS `disaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disaster` (
  `Disaster_id` int NOT NULL,
  `acres_burnt` int DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `disaster_type_id` int NOT NULL,
  `length_id` int NOT NULL,
  PRIMARY KEY (`Disaster_id`),
  KEY `fk_Disaster_disaster_length1_idx` (`length_id`),
  KEY `fk_Disaster_disaster_type1_idx` (`disaster_type_id`),
  CONSTRAINT `fk_Disaster_disaster_length1` FOREIGN KEY (`length_id`) REFERENCES `disaster_length` (`length_id`),
  CONSTRAINT `fk_Disaster_disaster_type1` FOREIGN KEY (`disaster_type_id`) REFERENCES `disaster_type` (`disaster_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disaster`
--

LOCK TABLES `disaster` WRITE;
/*!40000 ALTER TABLE `disaster` DISABLE KEYS */;
INSERT INTO `disaster` VALUES (1,3166,NULL,'Summit Fire',1,1),(2,24251,NULL,'Springs Fire',1,2),(3,30274,NULL,'Powerhouse Fire',1,3),(4,1383,NULL,'Falls Fire',1,4),(5,20292,NULL,'Silver Fire',1,5),(6,257314,127000000,'Rim Fire',1,6),(7,8073,65000000,'Clover Fire',1,7),(8,1952,NULL,'Colby Fire',1,8),(9,600,22500000,'Poinsettia Fire',1,9),(10,1995,5700000,'Cocos Fire',1,10),(11,4300,NULL,'Butts Fire',1,11),(12,32416,20000000,'Eiler Fire',1,12),(13,35302,41,'Oregon Gulch Fire ',1,13),(14,13153,41,'Day Fire',1,14),(15,39736,41,'Bald Fire',1,15),(16,612,NULL,'Junction Fire',1,16),(17,4045,41,'Way Fire',1,17),(18,580,NULL,'Oregon Fire',1,18),(19,NULL,362000000,'South Napa Earthquake',2,19),(20,300,NULL,'Bridge Fire',1,20),(21,97000,NULL,'King Fire',1,21),(22,320,NULL,'Courtney Fire',1,22),(23,516,NULL,'Boles Fire',1,23),(24,459,NULL,'Applegate Fire',1,24),(25,4250,NULL,'North Fire',1,25),(26,8501,NULL,'Wragg Fire',1,26),(27,69438,1590300000,'Rocky Fire',1,27),(28,1042,1590300000,'Butte Fire',1,28),(29,109,1590300000,'Valley Fire',1,29),(30,0,NULL,'Old Fire',1,30),(31,7609,NULL,'Border Fire',1,31),(32,5399,NULL,'Fish Fire',1,32),(33,48019,19300000,'Erskine Fire',1,33),(34,1109,NULL,'Sage Fire',1,34),(35,41432,NULL,'Sand Fire',1,35),(36,132127,260000000,'Soberanes Fire',1,36),(37,2241,NULL,'Goose Fire',1,37),(38,8110,NULL,'Pilot Fire',1,38),(39,3929,NULL,'Clayton Fire',1,39),(40,46344,NULL,'Chimney Fire',1,40),(41,36274,NULL,'Blue Cut Fire',1,41),(42,29322,1331000000,'Cedar Fire',1,42),(43,NULL,1550000000,'2017 Floods',3,43),(44,6033,NULL,'Wall Fire',1,44),(45,81826,NULL,'Detwiler Fire',1,45),(46,12407,NULL,'Railroad Fire',1,46),(47,36556,NULL,'Pier Fire',1,47),(48,21846,NULL,'Helena - Fork Fire',1,48),(49,7194,NULL,'La Tuna Fire',1,49),(50,1035,NULL,'Mission Fire',1,50),(51,2662,12000000,'Canyon Fire',1,51),(52,36807,1330000000,'Tubbs Fire',1,52),(53,9989,1881420000,'Cascade Fire (Wind Complex)',1,53),(54,56556,1881420000,'Nun Fire',1,54),(55,245000,1881420000,'Wildfires ',1,55),(56,2207,1881420000,'Sulphur Fire (Mendocino Lake Complex)',1,56),(57,76,1881420000,'Atlas Fire',1,57),(58,821,1881420000,'Lobo Fire (Wind Complex)',1,58),(59,6151,1881420000,'LaPorte Fire (Wind Complex)',1,59),(60,36523,NULL,'Redwood Valley Fire (Mendocino Lake Complex)',1,60),(61,0,NULL,'Partrick Fire (Central LNU Complex)',1,61),(62,9217,NULL,'Canyon 2 Fire',1,62),(63,281893,220000000,'Thomas Fire',1,63),(64,5823,NULL,'James Fire',1,64),(65,307900,NULL,'Wildfire ',1,65),(66,15619,NULL,'Creek Fire',1,66),(67,6049,NULL,'Rye Fire',1,67),(68,422,NULL,'Skirball Fire',1,68),(69,4100,8900000,'Lilac Fire',1,69),(70,15185,36500000,'Pawnee Fire',1,70),(71,1678,NULL,'Creek Fire',1,71),(72,38008,34500000,'Klamathon Fire',1,72),(73,504,NULL,'West Fire',1,73),(74,113,NULL,'Holiday Fire',1,74),(75,13139,22060000,'Cranston Fire',1,75),(76,410203,257000000,'Ranch Fire (Mendocino Complex)',1,76),(77,229651,1659000000,'Carr Fire',1,77),(78,23136,25700000,'Holy Fire',1,78),(79,153336,166500000,'Camp Fire',1,79),(80,4531,NULL,'Hill Fire',1,80),(81,96949,60000000,'Woolsey Fire',1,81),(82,NULL,53000000,'2019 Ridgecrest earthquakes',2,82),(83,8799,NULL,'Saddle Ridge Fire',1,83),(84,77758,NULL,'Kincade Fire',1,84),(85,4615,NULL,'Tick Fire',1,85),(86,745,NULL,'Getty Fire',1,86),(87,1806,NULL,'Easy Fire',1,87),(88,494,NULL,'Hill Fire',1,88),(89,328,NULL,'46 Fire',1,89),(90,200,NULL,'Hillside Fire',1,90),(91,9999,NULL,'Maria Fire',1,91),(92,3126,NULL,'Cave Fire',1,92);
/*!40000 ALTER TABLE `disaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disaster_length`
--

DROP TABLE IF EXISTS `disaster_length`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disaster_length` (
  `length_id` int NOT NULL,
  `days` int DEFAULT NULL,
  `declaration_id` int NOT NULL,
  PRIMARY KEY (`length_id`),
  KEY `fk_disaster_length_federal_response1_idx` (`declaration_id`),
  CONSTRAINT `fk_disaster_length_federal_response1` FOREIGN KEY (`declaration_id`) REFERENCES `federal_response` (`declaration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disaster_length`
--

LOCK TABLES `disaster_length` WRITE;
/*!40000 ALTER TABLE `disaster_length` DISABLE KEYS */;
INSERT INTO `disaster_length` VALUES (1,3,1),(2,8,2),(3,9,3),(4,4,4),(5,5,5),(6,20,6),(7,5,7),(8,11,8),(9,2,9),(10,8,10),(11,8,11),(12,24,12),(13,18,13),(14,13,14),(15,15,15),(16,6,16),(17,9,17),(18,4,18),(19,0,19),(20,6,20),(21,0,21),(22,7,22),(23,26,23),(24,6,24),(25,3,25),(26,0,26),(27,16,27),(28,6,28),(29,1,29),(30,8,30),(31,11,31),(32,672,32),(33,17,33),(34,6,34),(35,18,35),(36,83,36),(37,10,37),(38,8,38),(39,12,39),(40,23,40),(41,6,41),(42,45,42),(43,46,43),(44,185,44),(45,176,45),(46,133,46),(47,133,47),(48,131,48),(49,129,49),(50,128,50),(51,183,51),(52,123,52),(53,123,53),(54,123,54),(55,NULL,55),(56,123,56),(57,123,57),(58,123,58),(59,123,59),(60,123,60),(61,92,61),(62,178,62),(63,464,63),(64,464,64),(65,NULL,65),(66,244,66),(67,43,67),(68,48,68),(69,33,69),(70,194,70),(71,193,71),(72,182,72),(73,181,73),(74,181,74),(75,162,75),(76,160,76),(77,164,77),(78,150,78),(79,17,79),(80,56,80),(81,56,81),(82,1,82),(83,20,83),(84,13,84),(85,NULL,85),(86,8,86),(87,3,87),(88,3,88),(89,3,89),(90,5,90),(91,5,91),(92,18,92);
/*!40000 ALTER TABLE `disaster_length` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disaster_type`
--

DROP TABLE IF EXISTS `disaster_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disaster_type` (
  `disaster_type_id` int NOT NULL,
  `disaster_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`disaster_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disaster_type`
--

LOCK TABLES `disaster_type` WRITE;
/*!40000 ALTER TABLE `disaster_type` DISABLE KEYS */;
INSERT INTO `disaster_type` VALUES (1,'Wildfire'),(2,'Earthquake'),(3,'Floods');
/*!40000 ALTER TABLE `disaster_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `federal_response`
--

DROP TABLE IF EXISTS `federal_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `federal_response` (
  `declaration_id` int NOT NULL,
  `declaration_of_emergency` datetime NOT NULL,
  `length_of_declaration` int DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `time_frame_id` int NOT NULL,
  PRIMARY KEY (`declaration_id`),
  KEY `fk_federal_response_Timeframe_idx` (`time_frame_id`),
  CONSTRAINT `fk_federal_response_Timeframe` FOREIGN KEY (`time_frame_id`) REFERENCES `timeframe` (`time_frame_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `federal_response`
--

LOCK TABLES `federal_response` WRITE;
/*!40000 ALTER TABLE `federal_response` DISABLE KEYS */;
INSERT INTO `federal_response` VALUES (1,'2013-05-01 00:00:00',4,'ACTIVE',1),(2,'2013-05-02 00:00:00',9,'ACTIVE',2),(3,'2013-06-02 00:00:00',8,'ACTIVE',3),(4,'2013-08-06 00:00:00',5,'ACTIVE',4),(5,'2013-08-08 00:00:00',6,'ACTIVE',5),(6,'2013-12-13 00:00:00',68,'ACTIVE',6),(7,'2013-09-10 00:00:00',5,'ACTIVE',7),(8,'2014-01-16 00:00:00',6,'ACTIVE',8),(9,'2014-05-14 00:00:00',3,'ACTIVE',9),(10,'2014-05-14 00:00:00',8,'ACTIVE',10),(11,'2014-07-02 00:00:00',5,'ACTIVE',11),(12,'2014-08-02 00:00:00',15,'ACTIVE',12),(13,'2014-08-02 00:00:00',8,'ACTIVE',13),(14,'2014-08-03 00:00:00',8,'ACTIVE',14),(15,'2014-08-03 00:00:00',7,'ACTIVE',15),(16,'2014-08-19 00:00:00',4,'ACTIVE',16),(17,'2014-08-19 00:00:00',5,'ACTIVE',17),(18,'2014-08-25 00:00:00',4,'ACTIVE',18),(19,'2014-09-11 00:00:00',14,'ACTIVE',19),(20,'2014-09-05 00:00:00',5,'ACTIVE',20),(21,'2014-09-17 00:00:00',20,'ACTIVE',21),(22,'2014-09-14 00:00:00',6,'ACTIVE',22),(23,'2014-09-15 00:00:00',12,'ACTIVE',23),(24,'2014-10-08 00:00:00',5,'ACTIVE',24),(25,'2015-07-17 00:00:00',4,'ACTIVE',25),(26,'2015-07-23 00:00:00',11,'ACTIVE',26),(27,'2015-08-02 00:00:00',17,'ACTIVE',27),(28,'2015-09-10 00:00:00',23,'ACTIVE',28),(29,'2015-09-13 00:00:00',23,'ACTIVE',29),(30,'2016-06-05 00:00:00',6,'ACTIVE',30),(31,'2016-06-19 00:00:00',10,'ACTIVE',31),(32,'2016-06-21 00:00:00',10,'ACTIVE',32),(33,'2016-06-24 00:00:00',13,'ACTIVE',33),(34,'2016-07-09 00:00:00',5,'ACTIVE',34),(35,'2016-07-23 00:00:00',10,'ACTIVE',35),(36,'2016-07-28 00:00:00',75,'ACTIVE',36),(37,'2016-07-31 00:00:00',9,'ACTIVE',37),(38,'2016-08-08 00:00:00',9,'ACTIVE',38),(39,'2016-08-14 00:00:00',9,'ACTIVE',39),(40,'2016-08-14 00:00:00',24,'ACTIVE',40),(41,'2016-08-16 00:00:00',6,'ACTIVE',41),(42,'2016-08-22 00:00:00',23,'ACTIVE',42),(43,'2017-03-16 00:00:00',NULL,'INACTIVE',43),(44,'2017-07-09 00:00:00',10,'ACTIVE',44),(45,'2017-07-17 00:00:00',16,'ACTIVE',45),(46,'2017-09-02 00:00:00',17,'ACTIVE',46),(47,'2017-09-05 00:00:00',21,'ACTIVE',47),(48,'2017-09-01 00:00:00',26,'ACTIVE',48),(49,'2017-09-02 00:00:00',9,'ACTIVE',49),(50,'2017-09-04 00:00:00',11,'ACTIVE',50),(51,'2017-09-26 00:00:00',7,'ACTIVE',51),(52,'2017-10-09 00:00:00',NULL,'INACTIVE',52),(53,'2017-10-09 00:00:00',NULL,'INACTIVE',53),(54,'2017-10-09 00:00:00',NULL,'INACTIVE',54),(55,'2017-10-09 00:00:00',NULL,'INACTIVE',55),(56,'2017-10-10 00:00:00',23,'ACTIVE',56),(57,'2017-10-09 00:00:00',NULL,'INACTIVE',57),(58,'2017-10-09 00:00:00',NULL,'INACTIVE',58),(59,'2017-10-09 00:00:00',NULL,'INACTIVE',59),(60,'2017-10-09 00:00:00',NULL,'INACTIVE',60),(61,'2017-10-09 00:00:00',NULL,'INACTIVE',61),(62,'2017-10-09 00:00:00',NULL,'INACTIVE',62),(63,'2017-10-09 00:00:00',11,'ACTIVE',63),(64,'2017-12-05 00:00:00',NULL,'INACTIVE',64),(65,'2017-12-08 00:00:00',25,'ACTIVE',65),(66,'2017-12-05 00:00:00',9,'ACTIVE',66),(67,'2017-12-05 00:00:00',9,'ACTIVE',67),(68,'2017-12-06 00:00:00',9,'ACTIVE',68),(69,'2017-12-07 00:00:00',9,'ACTIVE',69),(70,'2018-06-24 00:00:00',12,'ACTIVE',70),(71,'2018-06-25 00:00:00',5,'ACTIVE',71),(72,'2018-07-05 00:00:00',11,'ACTIVE',72),(73,'2018-07-06 00:00:00',3,'ACTIVE',73),(74,'2018-07-07 00:00:00',3,'ACTIVE',74),(75,'2018-07-25 00:00:00',7,'ACTIVE',75),(76,'2018-07-28 00:00:00',22,'ACTIVE',76),(77,'2018-07-23 00:00:00',16,'ACTIVE',77),(78,'2018-08-09 00:00:00',9,'ACTIVE',78),(79,'2018-11-08 00:00:00',NULL,'INACTIVE',79),(80,'2018-11-08 00:00:00',NULL,'INACTIVE',80),(81,'2018-11-09 00:00:00',NULL,'INACTIVE',81),(82,'2019-07-08 00:00:00',8,'ACTIVE',82),(83,'2019-10-11 00:00:00',NULL,'INACTIVE',83),(84,'2019-10-24 00:00:00',NULL,'INACTIVE',84),(85,'2019-10-24 00:00:00',NULL,'INACTIVE',85),(86,'2019-10-28 00:00:00',NULL,'INACTIVE',86),(87,'2019-10-30 00:00:00',NULL,'INACTIVE',87),(88,'2019-10-30 00:00:00',NULL,'INACTIVE',88),(89,'2019-10-31 00:00:00',NULL,'INACTIVE',89),(90,'2019-10-31 00:00:00',NULL,'INACTIVE',90),(91,'2019-11-01 00:00:00',NULL,'INACTIVE',91),(92,'2019-11-26 00:00:00',NULL,'INACTIVE',92);
/*!40000 ALTER TABLE `federal_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `County_id` int NOT NULL,
  `county_name` varchar(55) DEFAULT NULL,
  `fips` int DEFAULT NULL,
  `population` int DEFAULT NULL,
  PRIMARY KEY (`County_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Alameda County',1,1578891),(2,'Alpine County',3,1159),(3,'Amador County',5,36519),(4,'Butte County',7,222090),(5,'Calaveras County',9,44515),(6,'Colusa County',11,21358),(7,'Contra Costa County',13,1094205),(8,'Del Norte County',15,27873),(9,'El Dorado County',17,181737),(10,'Fresno County',19,955272),(11,'Glenn County',21,27940),(12,'Humboldt County',23,134493),(13,'Imperial County',25,176584),(14,'Inyo County',27,18467),(15,'Kern County',29,864124),(16,'Kings County',31,150960),(17,'Lake County',33,63860),(18,'Lassen County',35,32163),(19,'Los Angeles County',37,10017068),(20,'Madera County',39,152389),(21,'Marin County',41,258365),(22,'Mariposa County',43,17755),(23,'Mendocino County',45,87192),(24,'Merced County',47,263228),(25,'Modoc County',49,9147),(26,'Mono County',51,14074),(27,'Monterey County',53,428826),(28,'Napa County',55,140326),(29,'Nevada County',57,98200),(30,'Orange County',59,3114363),(31,'Placer County',61,367309),(32,'Plumas County',63,18859),(33,'Riverside County',65,2292507),(34,'Sacramento County',67,1462131),(35,'San Benito County',69,57600),(36,'San Bernardino County',71,2088371),(37,'San Diego County',73,3211252),(38,'San Francisco County',75,837442),(39,'San Joaquin County',77,704379),(40,'San Luis Obispo County',79,276443),(41,'San Mateo County',81,747373),(42,'Santa Barbara County',83,435697),(43,'Santa Clara County',85,1862041),(44,'Santa Cruz County',87,269419),(45,'Shasta County',89,178980),(46,'Sierra County',91,3047),(47,'Siskiyou County',93,43799),(48,'Solano County',95,424788),(49,'Sonoma County',97,495025),(50,'Stanislaus County',99,525491),(51,'Sutter County',101,95350),(52,'Tehama County',103,63057),(53,'Trinity County',105,13448),(54,'Tulare County',107,454143),(55,'Tuolumne County',109,53874),(56,'Ventura County',111,839620),(57,'Yolo County',113,204593),(58,'Yuba County',115,73340),(59,'Karuk Reservation',NULL,3555);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_has_disaster`
--

DROP TABLE IF EXISTS `location_has_disaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_has_disaster` (
  `County_id` int NOT NULL,
  `Disaster_id` int NOT NULL,
  PRIMARY KEY (`County_id`,`Disaster_id`),
  KEY `fk_Location_has_Disaster_Disaster1_idx` (`Disaster_id`),
  KEY `fk_Location_has_Disaster_Location1_idx` (`County_id`),
  CONSTRAINT `fk_Location_has_Disaster_Disaster1` FOREIGN KEY (`Disaster_id`) REFERENCES `disaster` (`Disaster_id`),
  CONSTRAINT `fk_Location_has_Disaster_Location1` FOREIGN KEY (`County_id`) REFERENCES `location` (`County_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_has_disaster`
--

LOCK TABLES `location_has_disaster` WRITE;
/*!40000 ALTER TABLE `location_has_disaster` DISABLE KEYS */;
INSERT INTO `location_has_disaster` VALUES (33,1),(56,2),(19,3),(33,4),(33,5),(22,6),(55,6),(45,7),(19,8),(37,9),(37,10),(28,11),(45,12),(47,13),(25,14),(18,15),(45,15),(20,16),(15,17),(53,18),(28,19),(48,19),(22,20),(9,21),(20,22),(47,23),(31,24),(36,25),(28,26),(48,26),(57,26),(17,27),(3,28),(17,28),(48,28),(5,29),(17,29),(28,29),(49,29),(15,30),(37,31),(19,32),(15,33),(19,34),(19,35),(27,36),(10,37),(36,38),(17,39),(40,40),(36,41),(15,42),(54,42),(1,43),(2,43),(3,43),(4,43),(5,43),(6,43),(7,43),(8,43),(9,43),(10,43),(11,43),(12,43),(13,43),(14,43),(15,43),(16,43),(17,43),(18,43),(19,43),(20,43),(21,43),(22,43),(23,43),(24,43),(25,43),(26,43),(27,43),(28,43),(29,43),(30,43),(31,43),(32,43),(33,43),(34,43),(35,43),(36,43),(37,43),(38,43),(39,43),(40,43),(41,43),(42,43),(43,43),(44,43),(45,43),(46,43),(47,43),(48,43),(49,43),(50,43),(51,43),(52,43),(53,43),(54,43),(55,43),(56,43),(57,43),(58,43),(59,43),(4,44),(22,45),(20,46),(22,46),(54,47),(53,48),(19,49),(20,50),(30,51),(33,51),(28,52),(49,52),(28,53),(4,54),(58,54),(49,55),(4,56),(17,56),(23,56),(28,56),(29,56),(30,56),(48,56),(49,56),(58,56),(28,57),(48,57),(29,58),(4,59),(23,60),(17,61),(28,62),(49,62),(30,63),(33,63),(42,64),(56,64),(19,65),(33,65),(37,65),(42,65),(56,65),(19,66),(19,67),(19,68),(37,69),(17,70),(54,71),(47,72),(37,73),(42,74),(33,75),(17,76),(23,76),(45,77),(53,77),(33,78),(4,79),(56,80),(19,81),(56,81),(15,82),(36,82),(19,83),(56,83),(49,84),(19,85),(19,86),(56,87),(33,88),(33,89),(36,90),(56,91),(42,92);
/*!40000 ALTER TABLE `location_has_disaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeframe`
--

DROP TABLE IF EXISTS `timeframe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeframe` (
  `time_frame_id` int NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`time_frame_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeframe`
--

LOCK TABLES `timeframe` WRITE;
/*!40000 ALTER TABLE `timeframe` DISABLE KEYS */;
INSERT INTO `timeframe` VALUES (1,'2013-05-01 00:00:00','2013-05-05 00:00:00'),(2,'2013-05-02 00:00:00','2013-05-11 00:00:00'),(3,'2013-05-31 00:00:00','2013-06-08 00:00:00'),(4,'2013-08-05 00:00:00','2013-08-10 00:00:00'),(5,'2013-08-07 00:00:00','2013-08-13 00:00:00'),(6,'2013-08-20 00:00:00','2013-09-08 00:00:00'),(7,'2013-08-20 00:00:00','2013-09-08 00:00:00'),(8,'2013-07-29 00:00:00','2013-08-01 00:00:00'),(9,'2013-09-09 00:00:00','2013-09-14 00:00:00'),(10,'2013-08-17 00:00:00','2013-10-24 00:00:00'),(11,'2014-01-16 00:00:00','2014-01-22 00:00:00'),(12,'2014-05-14 00:00:00','2014-05-17 00:00:00'),(13,'2014-05-14 00:00:00','2014-05-22 00:00:00'),(14,'2014-07-01 00:00:00','2014-07-06 00:00:00'),(15,'2014-08-01 00:00:00','2014-08-16 00:00:00'),(16,'2014-08-01 00:00:00','2014-08-09 00:00:00'),(17,'2014-08-02 00:00:00','2014-08-09 00:00:00'),(18,'2014-08-02 00:00:00','2014-08-09 00:00:00'),(19,'2014-08-01 00:00:00','2014-08-09 00:00:00'),(20,'2014-08-18 00:00:00','2014-08-22 00:00:00'),(21,'2014-08-18 00:00:00','2014-08-23 00:00:00'),(22,'2014-08-24 00:00:00','2014-08-28 00:00:00'),(23,'2014-09-05 00:00:00','2014-09-10 00:00:00'),(24,'2014-08-24 00:00:00','2014-09-07 00:00:00'),(25,'2014-08-24 00:00:00','2014-09-07 00:00:00'),(26,'2014-09-14 00:00:00','2014-09-20 00:00:00'),(27,'2014-09-15 00:00:00','2014-09-27 00:00:00'),(28,'2014-09-13 00:00:00','2014-10-03 00:00:00'),(29,'2014-10-08 00:00:00','2014-10-13 00:00:00'),(30,'2014-12-04 00:00:00','2014-12-06 00:00:00'),(31,'2015-07-17 00:00:00','2015-07-21 00:00:00'),(32,'2015-07-22 00:00:00','2015-08-02 00:00:00'),(33,'2015-07-22 00:00:00','2015-08-02 00:00:00'),(34,'2015-07-22 00:00:00','2015-08-02 00:00:00'),(35,'2015-07-29 00:00:00','2015-08-15 00:00:00'),(36,'2015-09-09 00:00:00','2015-10-02 00:00:00'),(37,'2015-09-09 00:00:00','2015-10-02 00:00:00'),(38,'2015-09-12 00:00:00','2015-10-05 00:00:00'),(39,'2015-09-12 00:00:00','2015-10-05 00:00:00'),(40,'2015-09-12 00:00:00','2015-10-05 00:00:00'),(41,'2015-09-09 00:00:00','2015-10-30 00:00:00'),(42,'2015-09-09 00:00:00','2015-10-30 00:00:00'),(43,'2016-06-04 00:00:00','2016-06-10 00:00:00'),(44,'2016-06-19 00:00:00','2016-06-29 00:00:00'),(45,'2016-06-20 00:00:00','2016-06-30 00:00:00'),(46,'2016-06-23 00:00:00','2016-07-06 00:00:00'),(47,'2016-07-09 00:00:00','2016-07-14 00:00:00'),(48,'2016-07-22 00:00:00','2016-08-01 00:00:00'),(49,'2016-07-22 00:00:00','2016-10-05 00:00:00'),(50,'2016-07-30 00:00:00','2016-08-08 00:00:00'),(51,'2016-08-07 00:00:00','2016-08-16 00:00:00'),(52,'2016-08-13 00:00:00','2016-08-22 00:00:00'),(53,'2016-08-13 00:00:00','2016-09-06 00:00:00'),(54,'2016-08-16 00:00:00','2016-08-22 00:00:00'),(55,'2016-08-16 00:00:00','2016-09-08 00:00:00'),(56,'2016-08-16 00:00:00','2016-09-08 00:00:00'),(57,'2017-07-07 00:00:00','2017-07-17 00:00:00'),(58,'2017-07-16 00:00:00','2017-08-01 00:00:00'),(59,'2017-08-30 00:00:00','2017-09-25 00:00:00'),(60,'2017-09-01 00:00:00','2017-09-10 00:00:00'),(61,'2017-08-29 00:00:00','2017-09-15 00:00:00'),(62,'2017-08-29 00:00:00','2017-09-15 00:00:00'),(63,'2017-09-04 00:00:00','2017-09-15 00:00:00'),(64,'2017-08-29 00:00:00','2017-09-19 00:00:00'),(65,'2017-09-25 00:00:00','2017-10-02 00:00:00'),(66,'2017-09-25 00:00:00','2017-10-02 00:00:00'),(67,'2017-10-09 00:00:00',NULL),(68,'2017-10-09 00:00:00',NULL),(69,'2017-10-08 00:00:00',NULL),(70,'2017-10-08 00:00:00',NULL),(71,'2017-10-08 00:00:00',NULL),(72,'2017-10-08 00:00:00',NULL),(73,'2017-10-09 00:00:00',NULL),(74,'2017-10-09 00:00:00',NULL),(75,'2017-10-09 00:00:00',NULL),(76,'2017-10-08 00:00:00',NULL),(77,'2017-10-09 00:00:00',NULL),(78,'2017-10-09 00:00:00',NULL),(79,'2017-10-09 00:00:00',NULL),(80,'2017-10-09 00:00:00','2017-10-20 00:00:00'),(81,'2017-10-09 00:00:00','2017-10-20 00:00:00'),(82,'2017-10-08 00:00:00','2017-10-31 00:00:00'),(83,'2017-10-08 00:00:00','2017-10-31 00:00:00'),(84,'2017-10-08 00:00:00','2017-10-31 00:00:00'),(85,'2017-10-08 00:00:00','2017-10-31 00:00:00'),(86,'2017-10-08 00:00:00','2017-10-31 00:00:00'),(87,'2017-10-08 00:00:00','2017-10-31 00:00:00'),(88,'2017-10-08 00:00:00','2017-10-31 00:00:00'),(89,'2017-10-08 00:00:00','2017-10-31 00:00:00'),(90,'2017-10-08 00:00:00','2017-10-31 00:00:00'),(91,'2017-12-04 00:00:00',NULL),(92,'2017-12-04 00:00:00',NULL);
/*!40000 ALTER TABLE `timeframe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-08 11:43:56
