-- MySQL dump 10.13  Distrib 8.0.16, for osx10.14 (x86_64)
--
-- Host: localhost    Database: mycoachperso
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_echeance` datetime DEFAULT NULL,
  `boolean_response` int(11) DEFAULT NULL,
  `text_response` text NOT NULL,
  `summary_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_action_summary1_idx` (`summary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` VALUES (1,'2019-07-13 00:00:00',NULL,'2 sq dsfd fd ',6),(2,'2019-07-13 00:00:00',NULL,'4',6),(3,'2019-07-13 00:00:00',NULL,'sq qsdf sqfd ',6),(4,'2019-07-19 00:00:00',NULL,'qsd .  qdsfqsfqf ',12);
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employe`
--

DROP TABLE IF EXISTS `employe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `function` varchar(45) NOT NULL,
  `picture` text,
  `entreprise_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_employe_entreprise_idx` (`entreprise_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe`
--

LOCK TABLES `employe` WRITE;
/*!40000 ALTER TABLE `employe` DISABLE KEYS */;
/*!40000 ALTER TABLE `employe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employe_has_manager`
--

DROP TABLE IF EXISTS `employe_has_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employe_has_manager` (
  `employe_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employe_has_manager_employe1_idx` (`employe_id`,`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe_has_manager`
--

LOCK TABLES `employe_has_manager` WRITE;
/*!40000 ALTER TABLE `employe_has_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `employe_has_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `function` varchar(45) NOT NULL,
  `picture` text,
  `entreprise_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_employe_entreprise_idx` (`entreprise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Kahina','Ouarezki','ouarezki@yahoo.com','web developper',NULL,1),(2,'Mattéo','Farigu','farigu@yahoo.com','web developper',NULL,1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_has_manager`
--

DROP TABLE IF EXISTS `employee_has_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee_has_manager` (
  `employe_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employe_has_manager_employe1_idx` (`employe_id`,`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_has_manager`
--

LOCK TABLES `employee_has_manager` WRITE;
/*!40000 ALTER TABLE `employee_has_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_has_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `entreprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entreprise`
--

LOCK TABLES `entreprise` WRITE;
/*!40000 ALTER TABLE `entreprise` DISABLE KEYS */;
INSERT INTO `entreprise` VALUES (1,'Wild Code School'),(2,'Microsoft');
/*!40000 ALTER TABLE `entreprise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entreprise_has_manager`
--

DROP TABLE IF EXISTS `entreprise_has_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `entreprise_has_manager` (
  `entreprise_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_entreprise_has_manager_manager1_idx` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entreprise_has_manager`
--

LOCK TABLES `entreprise_has_manager` WRITE;
/*!40000 ALTER TABLE `entreprise_has_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `entreprise_has_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icon`
--

DROP TABLE IF EXISTS `icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `icon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_src` text NOT NULL,
  `description_alt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icon`
--

LOCK TABLES `icon` WRITE;
/*!40000 ALTER TABLE `icon` DISABLE KEYS */;
INSERT INTO `icon` VALUES (1,'https://image.noelshack.com/fichiers/2019/23/2/1559660926-screenshot-2019-06-04-bubble-visual-programming-25.png','icone télescope'),(2,'https://image.noelshack.com/fichiers/2019/23/2/1559660926-screenshot-2019-06-04-bubble-visual-programming-23.png','icone header cible rouge'),(3,'https://image.noelshack.com/fichiers/2019/23/2/1559660926-screenshot-2019-06-04-bubble-visual-programming-22.png','icone header fusée'),(4,'https://image.noelshack.com/fichiers/2019/23/2/1559660926-screenshot-2019-06-04-bubble-visual-programming-21.png','icone header étoile jaune'),(5,'https://image.noelshack.com/fichiers/2019/23/2/1559660926-screenshot-2019-06-04-bubble-visual-programming-20.png','icone header formulaire'),(6,'https://image.noelshack.com/fichiers/2019/23/2/1559660926-screenshot-2019-06-04-bubble-visual-programming-15.png','icone header drapeau bleu'),(7,'https://image.noelshack.com/fichiers/2019/23/2/1559660856-screenshot-2019-06-04-bubble-visual-programming-6.png','icone \"main theme\" résoudre problème'),(8,'https://image.noelshack.com/fichiers/2019/23/2/1559660856-screenshot-2019-06-04-bubble-visual-programming-7.png','icone \"main theme\" cible bleue'),(9,'https://image.noelshack.com/fichiers/2019/23/2/1559660806-screenshot-2019-06-04-bubble-visual-programming-9.png','icone page problem épée'),(10,'https://image.noelshack.com/fichiers/2019/23/2/1559660806-screenshot-2019-06-04-bubble-visual-programming-10.png','icone page problem ma performance'),(11,'https://image.noelshack.com/fichiers/2019/23/2/1559660806-screenshot-2019-06-04-bubble-visual-programming-11.png','icone page problem organisation'),(12,'https://image.noelshack.com/fichiers/2019/23/2/1559660806-screenshot-2019-06-04-bubble-visual-programming-12.png','icone page problem communication'),(13,'https://image.noelshack.com/fichiers/2019/23/2/1559660806-screenshot-2019-06-04-bubble-visual-programming-13.png','icone page problem gestion du temps'),(14,'https://image.noelshack.com/fichiers/2019/23/2/1559660806-screenshot-2019-06-04-bubble-visual-programming-14.png','icone page problem gestion du stress'),(15,'https://image.noelshack.com/fichiers/2019/23/2/1559660745-screenshot-2019-06-04-bubble-visual-programming-16.png','icone page \"problem origin\" mon environnement'),(16,'https://image.noelshack.com/fichiers/2019/23/2/1559660745-screenshot-2019-06-04-bubble-visual-programming-17.png','icone page \"problem origin\" mon comportement'),(17,'https://image.noelshack.com/fichiers/2019/23/2/1559660745-screenshot-2019-06-04-bubble-visual-programming-18.png','icone page \"problem origin\" mes capacités'),(18,'https://image.noelshack.com/fichiers/2019/23/2/1559660745-screenshot-2019-06-04-bubble-visual-programming-19.png','icone page \"problem origin\" mes croyances et valeurs'),(19,'https://image.noelshack.com/fichiers/2019/23/2/1559660035-screenshot-2019-06-04-bubble-visual-programming.png','icone page \"recap\" muscle'),(20,'https://image.noelshack.com/fichiers/2019/23/2/1559660035-screenshot-2019-06-04-bubble-visual-programming-1.png','icone page \"recap\" sprinter'),(21,'https://image.noelshack.com/fichiers/2019/23/2/1559660035-screenshot-2019-06-04-bubble-visual-programming-2.png','icone page \"recap\" colombe'),(22,'https://image.noelshack.com/fichiers/2019/23/2/1559660035-screenshot-2019-06-04-bubble-visual-programming-3.png','icone page \"recap\" chaine'),(23,'https://image.noelshack.com/fichiers/2019/23/2/1559660035-screenshot-2019-06-04-bubble-visual-programming-4.png','icone page \"recap\" niveaux logiques'),(24,'https://image.noelshack.com/fichiers/2019/23/2/1559660035-screenshot-2019-06-04-bubble-visual-programming-24.png','icone page \"recap\" tchat follow up'),(25,'https://image.noelshack.com/fichiers/2019/25/2/1560845743-screenshot-2019-06-18-bubble-visual-programming-3.png','téléscope objectif fond bleu'),(26,'https://image.noelshack.com/fichiers/2019/25/2/1560845743-screenshot-2019-06-18-bubble-visual-programming-2.png','téléscope objectif fond blanc'),(27,'https://image.noelshack.com/fichiers/2019/25/2/1560845575-screenshot-2019-06-04-bubble-visual-programming-8.png','téléscope résoudre problème fond blanc'),(28,'https://image.noelshack.com/fichiers/2019/25/2/1560845680-screenshot-2019-06-18-bubble-visual-programming-4.png','plante carnivore'),(29,'https://image.noelshack.com/fichiers/2019/25/2/1560845672-screenshot-2019-06-18-bubble-visual-programming-6.png','fantôme'),(30,'https://image.noelshack.com/fichiers/2019/25/2/1560845672-screenshot-2019-06-18-bubble-visual-programming-5.png','coeur '),(31,'https://image.noelshack.com/fichiers/2019/25/2/1560845667-screenshot-2019-06-18-bubble-visual-programming-1.png','cible'),(32,'https://image.noelshack.com/fichiers/2019/25/2/1560845667-screenshot-2019-06-18-bubble-visual-programming.png','point d\'interrogation'),(33,'https://image.noelshack.com/fichiers/2019/25/2/1560845472-screenshot-2019-06-18-bubble-visual-programming-1.png','viseur orange'),(34,'https://image.noelshack.com/fichiers/2019/25/2/1560845472-screenshot-2019-06-18-bubble-visual-programming.png','cible rouge fond blanc'),(35,'https://image.noelshack.com/fichiers/2019/25/2/1560845467-screenshot-2019-06-18-bubble-visual-programming-5.png','calendrier'),(36,'https://image.noelshack.com/fichiers/2019/25/2/1560845467-screenshot-2019-06-18-bubble-visual-programming-4.png','soucoupe volante'),(37,'https://image.noelshack.com/fichiers/2019/25/2/1560845467-screenshot-2019-06-18-bubble-visual-programming-3.png','montagne'),(38,'https://image.noelshack.com/fichiers/2019/25/2/1560845467-screenshot-2019-06-18-bubble-visual-programming-2.png','cadran'),(39,'https://image.noelshack.com/fichiers/2019/28/5/1562944718-coche-verte.png','coche verte'),(40,'https://image.noelshack.com/fichiers/2019/28/5/1562944718-coche-cerche-jaune.png','coche jaune');
/*!40000 ALTER TABLE `icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icon_has_summary`
--

DROP TABLE IF EXISTS `icon_has_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `icon_has_summary` (
  `icon_id` int(11) NOT NULL,
  `summary_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_icon_has_summary_summary1_idx` (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icon_has_summary`
--

LOCK TABLES `icon_has_summary` WRITE;
/*!40000 ALTER TABLE `icon_has_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `icon_has_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_theme`
--

DROP TABLE IF EXISTS `main_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `main_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon_id` int(11) NOT NULL,
  `text_static_id` int(11) NOT NULL,
  `text_modal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_main_theme_text_static1_idx` (`text_static_id`),
  KEY `fk_main_theme_icon1_idx` (`text_static_id`,`icon_id`),
  KEY `FK_main_theme_text_modal` (`text_modal_id`),
  CONSTRAINT `FK_main_theme_text_modal` FOREIGN KEY (`text_modal_id`) REFERENCES `text_static` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_theme`
--

LOCK TABLES `main_theme` WRITE;
/*!40000 ALTER TABLE `main_theme` DISABLE KEYS */;
INSERT INTO `main_theme` VALUES (1,7,2,6),(2,8,3,64);
/*!40000 ALTER TABLE `main_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fonction` varchar(45) NOT NULL,
  `entreprise` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Kamel','Beikhiri','beikhiri@gmail.com','0000','The boss',NULL),(2,'Said','Slimani','slimani@yahoo.com','1111','The assistant manager',NULL),(3,'Bill','Gates','bill@microsoft.com','3333','co-founder',NULL),(4,'davide','debartolo','david@gmail.com','david','manager',NULL),(5,'blabla','David','cm@dv.com','Hellowirkd','Manage',NULL),(6,'Yeah','TDB','cm@hesde.com','Hellowirkd','Employe',NULL),(7,'de bartolo','carmine','debartolocarminedavide@gmail.com','$2a$10$8KfMfWLH5ODkgvNFVQIHvecXy6dk3A5fDaBTxoNQ/g5I4vftunCii','Manager',NULL),(9,'tristan','db','tdb@gmail.com','$2a$10$i1/E0TVJBmWnQB2FcKA/3.wK4liQ/0vGoy6jWZ.xKrBuroKTvqBTK','Manager',NULL),(10,'de bartolo','carmine','hello@gmail.com','$2a$10$1WBxX1lNeglKUArJolJ/w.7zkZzi5Ry4mWuO5cCb8/Z0dc/98N7pK','Manager',NULL),(11,'de bartolo','carmine','debartolo@gmail.com','$2a$10$zZgOykZwp0t1.bsEeWwpfO7XZWxU0lJJs5I1gtJazmCSH1MiAiKHq','Manager',NULL),(12,'de bartolo','carmine','davide@gmail.com','$2a$10$rZgex5yf4lfKUvugXjBLSOyU0QT3HXbgAni4ac73HvTW6ywh6jxkK','Manager',NULL),(13,'de bartolo','carmine','rminedavide@gmail.com','$2a$10$iIQxq/QVf2jWSAeiuUdJzOCfx.VGuBthLwbWHZQ7rhk..B/Cfn34i','Manager',NULL),(14,'darina','debartolo','darina@monamour.com','$2a$10$dcpPU/un6LeQRa4xsuVt7uJ1zTHDRfLF6BqPdXK6qwx6Kmm2Zoq5q','Première Dame',NULL),(15,'','','','$2a$10$TjZtfs2hznW8IJf9w..Z8u8l47Y.6u4g4ifVVbGZ0wRAq7D3BZtRW','',NULL),(16,'perso','perso','perso@gmail.com','$2a$10$0mCEJcaqTAPDcRn/5gd00.f5w2HXzieuJCW82tWohhl3NMLSDf7qG','perso',NULL),(17,'toto','tati','kamel@test.com','$2a$10$zUERvDWykuQVNh/fRRt8ruPHg1ai5mvqq0sDVuzQe3AHr3.C5ECbq','toooooo',NULL),(18,'frank','frank','franck@test.com','$2a$10$2mtuze4Svk868CvujUBFWec1MHOsnarknRk9cE5N1FDDuNuuO4Ihe','frank',NULL),(19,'iero','poli','ieropoli@yahoo.fr','$2a$10$34DxlBAOZUkPprOyK.o9J.M3FzBI9B4Tx8o8VIWUki7tYQPct1jna','curé',NULL),(20,'David','M','manager@gmail.com','$2a$10$EVW0OEJUF/VS.DZJUWIZFegrPgvxkaMVFOb66tZ3DB4F2T95g/4te','Manager',NULL);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_theme_id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL,
  `text_static_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_problem_main_theme1_idx` (`main_theme_id`,`icon_id`,`text_static_id`),
  KEY `fk_problem_icon1_idx` (`icon_id`),
  KEY `fk_problem_text_static1_idx` (`text_static_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES (1,1,9,5),(2,1,10,9),(3,1,11,10),(4,1,12,11),(5,1,13,12),(6,1,14,13);
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_origin`
--

DROP TABLE IF EXISTS `problem_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `problem_origin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_static_id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_problem_origin_text_static1_idx` (`text_static_id`,`icon_id`),
  KEY `fk_problem_origin_icon1_idx` (`icon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_origin`
--

LOCK TABLES `problem_origin` WRITE;
/*!40000 ALTER TABLE `problem_origin` DISABLE KEYS */;
INSERT INTO `problem_origin` VALUES (1,18,15),(2,19,16),(3,20,17),(4,21,18);
/*!40000 ALTER TABLE `problem_origin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response`
--

DROP TABLE IF EXISTS `response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response_summary` text NOT NULL,
  `summary_id` int(11) NOT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `problem_origin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_response_summary1_idx` (`summary_id`),
  KEY `fk_response_problem` (`problem_id`),
  KEY `fk_response_problem_origin` (`problem_origin_id`),
  CONSTRAINT `fk_response_problem` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`),
  CONSTRAINT `fk_response_problem_origin` FOREIGN KEY (`problem_origin_id`) REFERENCES `problem_origin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response`
--

LOCK TABLES `response` WRITE;
/*!40000 ALTER TABLE `response` DISABLE KEYS */;
INSERT INTO `response` VALUES (1,'sqd qs dfqsdf qdsf qsd fqsdfqf',6,1,NULL),(2,'qsdf qsdfsdf qs fd',6,NULL,1),(3,'qsdfsdfqsf',6,NULL,NULL),(4,'qsdfqsdfqsdfqsf . sqdfqsd ff ',6,NULL,NULL),(5,'qsfdqsdf qs fqs f df',6,NULL,NULL),(6,'qsfqsdf .  df',7,1,NULL),(7,'qsdf q . qsdf qsd . dfs qsd qd ',12,6,NULL),(8,'qsdf qs qsdf .  dsfd sqd ',12,NULL,1),(9,'qsdf sqdf qsdf qsdf qsd q sqdf qs ',12,NULL,NULL),(10,'qsdfqsdf df qd df qsdf ',12,NULL,NULL),(11,'qsdqs qsdfqsd qsdf qs f',12,NULL,NULL),(12,'s frg f . arg fg d fgaaer aer',12,NULL,NULL);
/*!40000 ALTER TABLE `response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary`
--

DROP TABLE IF EXISTS `summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employe_id` int(11) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_summary_employe1_idx` (`employe_id`,`problem_id`,`manager_id`),
  KEY `fk_summary_problem1_idx` (`problem_id`),
  KEY `fk_summary_manager1_idx` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;-- MySQL dump 10.13  Distrib 8.0.16, for osx10.14 (x86_64)
--
-- Host: localhost    Database: mycoachperso
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_echeance` datetime DEFAULT NULL,
  `boolean_response` int(11) DEFAULT NULL,
  `text_response` text NOT NULL,
  `summary_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_action_summary1_idx` (`summary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` VALUES (1,'2019-07-13 00:00:00',NULL,'2 sq dsfd fd ',6),(2,'2019-07-13 00:00:00',NULL,'4',6),(3,'2019-07-13 00:00:00',NULL,'sq qsdf sqfd ',6),(4,'2019-07-19 00:00:00',NULL,'qsd .  qdsfqsfqf ',12);
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employe`
--

DROP TABLE IF EXISTS `employe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `function` varchar(45) NOT NULL,
  `picture` text,
  `entreprise_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_employe_entreprise_idx` (`entreprise_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe`
--

LOCK TABLES `employe` WRITE;
/*!40000 ALTER TABLE `employe` DISABLE KEYS */;
/*!40000 ALTER TABLE `employe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employe_has_manager`
--

DROP TABLE IF EXISTS `employe_has_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employe_has_manager` (
  `employe_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employe_has_manager_employe1_idx` (`employe_id`,`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employe_has_manager`
--

LOCK TABLES `employe_has_manager` WRITE;
/*!40000 ALTER TABLE `employe_has_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `employe_has_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `function` varchar(45) NOT NULL,
  `picture` text,
  `entreprise_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_employe_entreprise_idx` (`entreprise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Kahina','Ouarezki','ouarezki@yahoo.com','web developper',NULL,1),(2,'Mattéo','Farigu','farigu@yahoo.com','web developper',NULL,1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_has_manager`
--

DROP TABLE IF EXISTS `employee_has_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee_has_manager` (
  `employe_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employe_has_manager_employe1_idx` (`employe_id`,`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_has_manager`
--

LOCK TABLES `employee_has_manager` WRITE;
/*!40000 ALTER TABLE `employee_has_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_has_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `entreprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entreprise`
--

LOCK TABLES `entreprise` WRITE;
/*!40000 ALTER TABLE `entreprise` DISABLE KEYS */;
INSERT INTO `entreprise` VALUES (1,'Wild Code School'),(2,'Microsoft');
/*!40000 ALTER TABLE `entreprise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entreprise_has_manager`
--

DROP TABLE IF EXISTS `entreprise_has_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `entreprise_has_manager` (
  `entreprise_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_entreprise_has_manager_manager1_idx` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entreprise_has_manager`
--

LOCK TABLES `entreprise_has_manager` WRITE;
/*!40000 ALTER TABLE `entreprise_has_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `entreprise_has_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icon`
--

DROP TABLE IF EXISTS `icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `icon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_src` text NOT NULL,
  `description_alt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icon`
--

LOCK TABLES `icon` WRITE;
/*!40000 ALTER TABLE `icon` DISABLE KEYS */;
INSERT INTO `icon` VALUES (1,'https://image.noelshack.com/fichiers/2019/23/2/1559660926-screenshot-2019-06-04-bubble-visual-programming-25.png','icone télescope'),(2,'https://image.noelshack.com/fichiers/2019/23/2/1559660926-screenshot-2019-06-04-bubble-visual-programming-23.png','icone header cible rouge'),(3,'https://image.noelshack.com/fichiers/2019/23/2/1559660926-screenshot-2019-06-04-bubble-visual-programming-22.png','icone header fusée'),(4,'https://image.noelshack.com/fichiers/2019/23/2/1559660926-screenshot-2019-06-04-bubble-visual-programming-21.png','icone header étoile jaune'),(5,'https://image.noelshack.com/fichiers/2019/23/2/1559660926-screenshot-2019-06-04-bubble-visual-programming-20.png','icone header formulaire'),(6,'https://image.noelshack.com/fichiers/2019/23/2/1559660926-screenshot-2019-06-04-bubble-visual-programming-15.png','icone header drapeau bleu'),(7,'https://image.noelshack.com/fichiers/2019/23/2/1559660856-screenshot-2019-06-04-bubble-visual-programming-6.png','icone \"main theme\" résoudre problème'),(8,'https://image.noelshack.com/fichiers/2019/23/2/1559660856-screenshot-2019-06-04-bubble-visual-programming-7.png','icone \"main theme\" cible bleue'),(9,'https://image.noelshack.com/fichiers/2019/23/2/1559660806-screenshot-2019-06-04-bubble-visual-programming-9.png','icone page problem épée'),(10,'https://image.noelshack.com/fichiers/2019/23/2/1559660806-screenshot-2019-06-04-bubble-visual-programming-10.png','icone page problem ma performance'),(11,'https://image.noelshack.com/fichiers/2019/23/2/1559660806-screenshot-2019-06-04-bubble-visual-programming-11.png','icone page problem organisation'),(12,'https://image.noelshack.com/fichiers/2019/23/2/1559660806-screenshot-2019-06-04-bubble-visual-programming-12.png','icone page problem communication'),(13,'https://image.noelshack.com/fichiers/2019/23/2/1559660806-screenshot-2019-06-04-bubble-visual-programming-13.png','icone page problem gestion du temps'),(14,'https://image.noelshack.com/fichiers/2019/23/2/1559660806-screenshot-2019-06-04-bubble-visual-programming-14.png','icone page problem gestion du stress'),(15,'https://image.noelshack.com/fichiers/2019/23/2/1559660745-screenshot-2019-06-04-bubble-visual-programming-16.png','icone page \"problem origin\" mon environnement'),(16,'https://image.noelshack.com/fichiers/2019/23/2/1559660745-screenshot-2019-06-04-bubble-visual-programming-17.png','icone page \"problem origin\" mon comportement'),(17,'https://image.noelshack.com/fichiers/2019/23/2/1559660745-screenshot-2019-06-04-bubble-visual-programming-18.png','icone page \"problem origin\" mes capacités'),(18,'https://image.noelshack.com/fichiers/2019/23/2/1559660745-screenshot-2019-06-04-bubble-visual-programming-19.png','icone page \"problem origin\" mes croyances et valeurs'),(19,'https://image.noelshack.com/fichiers/2019/23/2/1559660035-screenshot-2019-06-04-bubble-visual-programming.png','icone page \"recap\" muscle'),(20,'https://image.noelshack.com/fichiers/2019/23/2/1559660035-screenshot-2019-06-04-bubble-visual-programming-1.png','icone page \"recap\" sprinter'),(21,'https://image.noelshack.com/fichiers/2019/23/2/1559660035-screenshot-2019-06-04-bubble-visual-programming-2.png','icone page \"recap\" colombe'),(22,'https://image.noelshack.com/fichiers/2019/23/2/1559660035-screenshot-2019-06-04-bubble-visual-programming-3.png','icone page \"recap\" chaine'),(23,'https://image.noelshack.com/fichiers/2019/23/2/1559660035-screenshot-2019-06-04-bubble-visual-programming-4.png','icone page \"recap\" niveaux logiques'),(24,'https://image.noelshack.com/fichiers/2019/23/2/1559660035-screenshot-2019-06-04-bubble-visual-programming-24.png','icone page \"recap\" tchat follow up'),(25,'https://image.noelshack.com/fichiers/2019/25/2/1560845743-screenshot-2019-06-18-bubble-visual-programming-3.png','téléscope objectif fond bleu'),(26,'https://image.noelshack.com/fichiers/2019/25/2/1560845743-screenshot-2019-06-18-bubble-visual-programming-2.png','téléscope objectif fond blanc'),(27,'https://image.noelshack.com/fichiers/2019/25/2/1560845575-screenshot-2019-06-04-bubble-visual-programming-8.png','téléscope résoudre problème fond blanc'),(28,'https://image.noelshack.com/fichiers/2019/25/2/1560845680-screenshot-2019-06-18-bubble-visual-programming-4.png','plante carnivore'),(29,'https://image.noelshack.com/fichiers/2019/25/2/1560845672-screenshot-2019-06-18-bubble-visual-programming-6.png','fantôme'),(30,'https://image.noelshack.com/fichiers/2019/25/2/1560845672-screenshot-2019-06-18-bubble-visual-programming-5.png','coeur '),(31,'https://image.noelshack.com/fichiers/2019/25/2/1560845667-screenshot-2019-06-18-bubble-visual-programming-1.png','cible'),(32,'https://image.noelshack.com/fichiers/2019/25/2/1560845667-screenshot-2019-06-18-bubble-visual-programming.png','point d\'interrogation'),(33,'https://image.noelshack.com/fichiers/2019/25/2/1560845472-screenshot-2019-06-18-bubble-visual-programming-1.png','viseur orange'),(34,'https://image.noelshack.com/fichiers/2019/25/2/1560845472-screenshot-2019-06-18-bubble-visual-programming.png','cible rouge fond blanc'),(35,'https://image.noelshack.com/fichiers/2019/25/2/1560845467-screenshot-2019-06-18-bubble-visual-programming-5.png','calendrier'),(36,'https://image.noelshack.com/fichiers/2019/25/2/1560845467-screenshot-2019-06-18-bubble-visual-programming-4.png','soucoupe volante'),(37,'https://image.noelshack.com/fichiers/2019/25/2/1560845467-screenshot-2019-06-18-bubble-visual-programming-3.png','montagne'),(38,'https://image.noelshack.com/fichiers/2019/25/2/1560845467-screenshot-2019-06-18-bubble-visual-programming-2.png','cadran'),(39,'https://image.noelshack.com/fichiers/2019/28/5/1562944718-coche-verte.png','coche verte'),(40,'https://image.noelshack.com/fichiers/2019/28/5/1562944718-coche-cerche-jaune.png','coche jaune');
/*!40000 ALTER TABLE `icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icon_has_summary`
--

DROP TABLE IF EXISTS `icon_has_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `icon_has_summary` (
  `icon_id` int(11) NOT NULL,
  `summary_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_icon_has_summary_summary1_idx` (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icon_has_summary`
--

LOCK TABLES `icon_has_summary` WRITE;
/*!40000 ALTER TABLE `icon_has_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `icon_has_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_theme`
--

DROP TABLE IF EXISTS `main_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `main_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon_id` int(11) NOT NULL,
  `text_static_id` int(11) NOT NULL,
  `text_modal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_main_theme_text_static1_idx` (`text_static_id`),
  KEY `fk_main_theme_icon1_idx` (`text_static_id`,`icon_id`),
  KEY `FK_main_theme_text_modal` (`text_modal_id`),
  CONSTRAINT `FK_main_theme_text_modal` FOREIGN KEY (`text_modal_id`) REFERENCES `text_static` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_theme`
--

LOCK TABLES `main_theme` WRITE;
/*!40000 ALTER TABLE `main_theme` DISABLE KEYS */;
INSERT INTO `main_theme` VALUES (1,7,2,6),(2,8,3,64);
/*!40000 ALTER TABLE `main_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fonction` varchar(45) NOT NULL,
  `entreprise` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Kamel','Beikhiri','beikhiri@gmail.com','0000','The boss',NULL),(2,'Said','Slimani','slimani@yahoo.com','1111','The assistant manager',NULL),(3,'Bill','Gates','bill@microsoft.com','3333','co-founder',NULL),(4,'davide','debartolo','david@gmail.com','david','manager',NULL),(5,'blabla','David','cm@dv.com','Hellowirkd','Manage',NULL),(6,'Yeah','TDB','cm@hesde.com','Hellowirkd','Employe',NULL),(7,'de bartolo','carmine','debartolocarminedavide@gmail.com','$2a$10$8KfMfWLH5ODkgvNFVQIHvecXy6dk3A5fDaBTxoNQ/g5I4vftunCii','Manager',NULL),(9,'tristan','db','tdb@gmail.com','$2a$10$i1/E0TVJBmWnQB2FcKA/3.wK4liQ/0vGoy6jWZ.xKrBuroKTvqBTK','Manager',NULL),(10,'de bartolo','carmine','hello@gmail.com','$2a$10$1WBxX1lNeglKUArJolJ/w.7zkZzi5Ry4mWuO5cCb8/Z0dc/98N7pK','Manager',NULL),(11,'de bartolo','carmine','debartolo@gmail.com','$2a$10$zZgOykZwp0t1.bsEeWwpfO7XZWxU0lJJs5I1gtJazmCSH1MiAiKHq','Manager',NULL),(12,'de bartolo','carmine','davide@gmail.com','$2a$10$rZgex5yf4lfKUvugXjBLSOyU0QT3HXbgAni4ac73HvTW6ywh6jxkK','Manager',NULL),(13,'de bartolo','carmine','rminedavide@gmail.com','$2a$10$iIQxq/QVf2jWSAeiuUdJzOCfx.VGuBthLwbWHZQ7rhk..B/Cfn34i','Manager',NULL),(14,'darina','debartolo','darina@monamour.com','$2a$10$dcpPU/un6LeQRa4xsuVt7uJ1zTHDRfLF6BqPdXK6qwx6Kmm2Zoq5q','Première Dame',NULL),(15,'','','','$2a$10$TjZtfs2hznW8IJf9w..Z8u8l47Y.6u4g4ifVVbGZ0wRAq7D3BZtRW','',NULL),(16,'perso','perso','perso@gmail.com','$2a$10$0mCEJcaqTAPDcRn/5gd00.f5w2HXzieuJCW82tWohhl3NMLSDf7qG','perso',NULL),(17,'toto','tati','kamel@test.com','$2a$10$zUERvDWykuQVNh/fRRt8ruPHg1ai5mvqq0sDVuzQe3AHr3.C5ECbq','toooooo',NULL),(18,'frank','frank','franck@test.com','$2a$10$2mtuze4Svk868CvujUBFWec1MHOsnarknRk9cE5N1FDDuNuuO4Ihe','frank',NULL),(19,'iero','poli','ieropoli@yahoo.fr','$2a$10$34DxlBAOZUkPprOyK.o9J.M3FzBI9B4Tx8o8VIWUki7tYQPct1jna','curé',NULL),(20,'David','M','manager@gmail.com','$2a$10$EVW0OEJUF/VS.DZJUWIZFegrPgvxkaMVFOb66tZ3DB4F2T95g/4te','Manager',NULL);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_theme_id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL,
  `text_static_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_problem_main_theme1_idx` (`main_theme_id`,`icon_id`,`text_static_id`),
  KEY `fk_problem_icon1_idx` (`icon_id`),
  KEY `fk_problem_text_static1_idx` (`text_static_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES (1,1,9,5),(2,1,10,9),(3,1,11,10),(4,1,12,11),(5,1,13,12),(6,1,14,13);
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_origin`
--

DROP TABLE IF EXISTS `problem_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `problem_origin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_static_id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_problem_origin_text_static1_idx` (`text_static_id`,`icon_id`),
  KEY `fk_problem_origin_icon1_idx` (`icon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_origin`
--

LOCK TABLES `problem_origin` WRITE;
/*!40000 ALTER TABLE `problem_origin` DISABLE KEYS */;
INSERT INTO `problem_origin` VALUES (1,18,15),(2,19,16),(3,20,17),(4,21,18);
/*!40000 ALTER TABLE `problem_origin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response`
--

DROP TABLE IF EXISTS `response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response_summary` text NOT NULL,
  `summary_id` int(11) NOT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `problem_origin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_response_summary1_idx` (`summary_id`),
  KEY `fk_response_problem` (`problem_id`),
  KEY `fk_response_problem_origin` (`problem_origin_id`),
  CONSTRAINT `fk_response_problem` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`),
  CONSTRAINT `fk_response_problem_origin` FOREIGN KEY (`problem_origin_id`) REFERENCES `problem_origin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response`
--

LOCK TABLES `response` WRITE;
/*!40000 ALTER TABLE `response` DISABLE KEYS */;
INSERT INTO `response` VALUES (1,'sqd qs dfqsdf qdsf qsd fqsdfqf',6,1,NULL),(2,'qsdf qsdfsdf qs fd',6,NULL,1),(3,'qsdfsdfqsf',6,NULL,NULL),(4,'qsdfqsdfqsdfqsf . sqdfqsd ff ',6,NULL,NULL),(5,'qsfdqsdf qs fqs f df',6,NULL,NULL),(6,'qsfqsdf .  df',7,1,NULL),(7,'qsdf q . qsdf qsd . dfs qsd qd ',12,6,NULL),(8,'qsdf qs qsdf .  dsfd sqd ',12,NULL,1),(9,'qsdf sqdf qsdf qsdf qsd q sqdf qs ',12,NULL,NULL),(10,'qsdfqsdf df qd df qsdf ',12,NULL,NULL),(11,'qsdqs qsdfqsd qsdf qs f',12,NULL,NULL),(12,'s frg f . arg fg d fgaaer aer',12,NULL,NULL);
/*!40000 ALTER TABLE `response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary`
--

DROP TABLE IF EXISTS `summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employe_id` int(11) DEFAULT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_summary_employe1_idx` (`employe_id`,`problem_id`,`manager_id`),
  KEY `fk_summary_problem1_idx` (`problem_id`),
  KEY `fk_summary_manager1_idx` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary`
--

LOCK TABLES `summary` WRITE;
/*!40000 ALTER TABLE `summary` DISABLE KEYS */;
INSERT INTO `summary` VALUES (3,NULL,NULL,NULL),(4,NULL,NULL,NULL),(5,NULL,NULL,NULL),(6,NULL,1,NULL),(7,NULL,1,NULL),(8,NULL,2,NULL),(9,NULL,3,NULL),(10,NULL,4,NULL),(11,NULL,5,NULL),(12,NULL,6,NULL),(1,1,1,1),(2,2,2,1);
/*!40000 ALTER TABLE `summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary_has_text_static`
--

DROP TABLE IF EXISTS `summary_has_text_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `summary_has_text_static` (
  `summary_id` int(11) NOT NULL,
  `text_static_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_summary_has_text_static_text_static1_idx` (`text_static_id`),
  KEY `fk_summary_has_text_static_summary1_idx` (`summary_id`,`text_static_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary_has_text_static`
--

LOCK TABLES `summary_has_text_static` WRITE;
/*!40000 ALTER TABLE `summary_has_text_static` DISABLE KEYS */;
/*!40000 ALTER TABLE `summary_has_text_static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text_static`
--

DROP TABLE IF EXISTS `text_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `text_static` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `all_text` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text_static`
--

LOCK TABLES `text_static` WRITE;
/*!40000 ALTER TABLE `text_static` DISABLE KEYS */;
INSERT INTO `text_static` VALUES (1,'C\'est ici que démarre l\'aventure.\n\nTu vas accompagner ton interlocuteur à la manière d\'un coach professionnel.\n\nJe vais te guider tout au long des différentes étapes.\n\n'),(2,'Résoudre un problème'),(3,'Atteindre un objectif'),(4,'Voici des thématiques récurrentes, y en a-t-il une qui correspond à la situation ?'),(5,'Conflit avec un collègue'),(6,'Apaiser une situation conflictuelle\nRésoudre un problème\n Faire évoluer une situation'),(7,'Voici des thématiques récurrentes, y en a-t-il une qui correspondond à la situation ?\n'),(8,'Conflit avec un collègue'),(9,'Ma performance'),(10,'Problème d\'organisation'),(11,'Problème de communication'),(12,'Gestion du temps'),(13,'Gestion du stress'),(14,'Exprime le besoin auquel tu fais face ou la situation à faire évoluer'),(15,'Ton problème actuel est :'),(16,'Voici des raisons qui pourraient expliquer l\'origine du problème. \n\nY en a-t-il une qui te semble correcte ?\n'),(17,'Il faut prendre le temps de réfléchir ... \nSelon toi, qu\'est-ce qui est à l\'origine de ce problème ? '),(18,'Mon environnement'),(19,'Mon comportement'),(20,'Mes capacités'),(21,'Mes croyances et valeurs'),(22,'Il faut s\'interroger : qu\'est ce qui dans ton environnement pourrait être la cause de ton problème ? \n\nOù est-ce que tu travailles le mieux ? \n\nDe quel type de personne aimes-tu t\'entourer ? \n\nQuel type de personne prend toute ton énergie ? \n\nQuelles heures de la journée sont les plus productives pour toi ? \n\nSemble-t-il y avoir un élément dans ton environnement de travail qui serait la cause de ton problème ?\n'),(23,'Il faut s\'interroger : qu\'est ce qui dans ton comportement pourrait être la cause de ton problème ? \n\nQue fais-tu concrètement ? Quelle était ton attitude à ce moment là ? \n\nQue remarques-tu dans les propos des autres ? Dans les mots qu’ils utilisent ? \n\nQue dis-tu régulièrement ? Y décèles-tu des habitudes de fonctionnement ? \n\nSemble-t-il y avoir un élément dans ton comportement qui serait la cause de ton problème ? \n'),(24,'Il faut s\'interroger : qu\'est ce qui dans tes capacités pourrait être la cause de ton problème ? \n\nEs-tu expert d’un domaine qui ne t\'est pas utile ? Quelle compétence te serait plus utile ? \n\nPenses-tu qu\'il te manque une compétence ? \n\nY a-t-il une compétence que tu retrouves chez quelqu\'un d\'autre et qui semble te manquer ? \n\nSemble-t-il y avoir un élément dans tes capacités qui serait la cause de ton problème ?'),(25,'Il faut s\'interroger : est-ce que tu as des croyances qui pourraient participer à ton problème ?'),(26,'As-tu une certitude sur la raison pour laquelle tu as ce problème aujourd\'hui ?\n\nPenses-tu qu\'il y a une raison certaine qui te limite aujourd\'hui ?\n\nSemble-t-il y avoir un élément dans tes croyances qui serait la cause de ton problème ?'),(27,'Qu\'est-ce que ce serait selon toi ?'),(28,'Croyances et valeurs'),(29,'Ce qui en est à l\'origine :'),(30,'Croyances'),(31,'Capacités'),(32,'Comportement'),(33,'Environnement'),(34,'Tu vas maintenant trouver 5 actions concrètes qui vont permettre de commencer à résoudre ce problème\n\n\nParmi les 5, il en faut 2 farfelues qui vont ouvrir de nouveaux circuits neuronaux'),(35,'Parmi ces actions, laquelle semble la plus facile à mettre en oeuvre rapidement ?'),(36,'Quand vas-tu réaliser cette action ?'),(37,'Ce qui en est à l\'origine est:'),(38,'La première action que je vais réaliser est :'),(39,'Avant le :'),(40,'Profil de la personne que vous coachez'),(41,'Problème'),(42,'Origine'),(43,'Action'),(44,'Follow UP'),(45,'Faire un entretien de follow up'),(46,'Outils'),(47,'Apporter de nouvelles ressources'),(48,'Gérer la résistance au changement'),(49,'Communication non violente'),(50,'Chaîne humaine'),(51,'Niveaux logiques'),(52,'1/3\n\nQu’est-ce qu’une croyance ?\n\nUne croyance est une certitude, consciente ou inconsciente, que l’on porte sur soi, sur les autres et sur la vie en général. Une croyance se caractérise par le fait qu’elle existe indépendamment des faits qui viendraient la corroborer ou la démentir.\n\nExemple de croyance : considérer qu’un projet de création d’entreprise est trop risqué, sans avoir mené une analyse de marché au préalable.'),(53,'2/3\n\nCertaines croyances dites « ressources » peuvent être aidantes pour l’individu.\n\nExemple de croyance ressource : Une personne qui est persuadée qu’elle dispose des capacités nécessaires pour réussir dans la vie est une personne qui dispose d’un bon niveau de confiance en elle. Or la confiance en soi est une qualité préalable indispensable pour réussir.'),(54,'3/3\n\nD’autres croyances à l’inverse peuvent être handicapantes.\n\nExemple de croyance limitante : Une personne convaincue qu’il faut à priori se méfier des autres aura du mal à tisser des relations sociales harmonieuses.\n\nLes croyances posent deux types de difficultés. La première tient au fait qu’un certain nombre d’entre elles sont inconscientes.\n\nLa seconde difficulté que posent les croyances porte sur le fait qu’il s’agit de certitude. Or, par définition, nous ne remettons pas en cause nos certitudes.'),(55,'Pourquoi 5 solutions ?\n- 1 solution : c\'est une impasse\n- 2 solutions : c\'est un dilemme\n- 3 solutions et + : le minimum pour avoir le choix\n\nPourquoi 2 farfelus ?\n- Pour faire appel à l’inconscient\n- Pour activer de nouveaux circuits\nneuronaux\n- Pour imaginer de nouvelles solutions'),(56,'Passer >'),(57,'Clique pour en apprendre plus sur ce qu\'est une croyance >'),(58,'Continuer >'),(59,'Fermer >'),(60,'Terminer >'),(61,'Pourquoi 5 actions ? Pourquoi 2 farfelues ? >'),(63,'Compris >'),(64,'Atteindre un objectif individuel\nAméliorer une performance\nRéussir quelque chose qui semble compliqué'),(65,'Pour bien définir un objectif, il va falloir s\'assurer qu\'il est :'),(66,'Spécifique'),(67,'Mesurable'),(68,'Atteignable'),(69,'Réaliste'),(70,'Arrêté dans le temps'),(71,'Formulation de l\'objectif\n\n     L\'objectif doit être formulé comme ceci : \"Je + verbe d\'action + ...\"'),(72,'Note maintenant l\'objectif de ton interlocuteur'),(73,'Exemples d\'objectifs'),(74,'Validation de l\'objectif\nL\'objectif est-il spécifique ?'),(75,'• Est-il clair ?\n\n• Est-il formulé affirmativement, à la première personne, incluant un verbe d’action ?\n\n• Est-il contextualisé (où, quand, avec qui, dans quelles circonstances)'),(76,'Pas sûrs ?'),(77,'Clique pour voir des exemples de questions à poser >'),(78,'Exemples de questions à poser'),(79,'« Qu’est-ce que tu veux atteindre, réaliser… ? »\n\n« Tu ne veux pas de cette situation, que veux-tu à la place ? »\n\n« Où, quand, avec qui, désires-tu mettre cet objectif en place ? »\n\n« Quelle est la signification exacte des mots que tu emploies ? »'),(80,'Fermer >'),(81,'Validation de l\'objectif\n\nL\'objectif est-il mesurable ?'),(82,'• Peut-on définir des critères internes d’accomplissement personnel ?\n\n• Peut-on définir des critères externes d\'accomplissement  ?'),(83,'• Peut-on définir des critères internes d’accomplissement personnel ?\n\n• Peut-on définir des critères externes d\'accomplissement  ?'),(84,'« Comment sauras-tu que tu as atteint ton objectif ? »\n\n« Qu’est-ce que tu verras, entendras, sentiras ? »\n\n« Qu’est-ce que les autres pourront constater concrètement ? »'),(85,'Validation de l\'objectif\n\nL\'objectif est-il acceptable ?'),(86,'• Respecte l’équilibre interne de la personne\n\n• Prend en compte l’entourage, les différentes personnes impliquées\n\n• Prend en compte les avantages de l’état présent'),(87,'« Pourrait-il y avoir un inconvénient pour toi à atteindre cet objectif ? Pour ton entourage ? »\n\n« Y a-t-il une partie de toi qui a une objection ? »\n\n« Y a-t-il des avantages à ne pas atteindre cet objectif ? »\n\n« Que faire pour garder ou remplacer les avantages de la situation présente ? »'),(88,'Validation de l\'objectif\n\nL\'objectif est-il réalisable ?'),(89,'• Atteignable compte tenu du contexte\n\n• Réalisable matériellement\n\n• Formulé de telle façon qu’il dépende uniquement de la personne concernée'),(90,'« Est-ce que la mise en place de cet objectif est de ta responsabilité ? »\n\n« Pour qui, pour quoi, veux-tu cela ? »\n\n« Est-ce qu’il est matériellement possible de le réaliser ? »\n\n« De quelles ressources as-tu besoin pour l’atteindre ? »\n\n* « Y a-t-il des obstacles à la réalisation de cet objectif ? »'),(91,'Validation de l\'objectif\n\nL\'objectif est-il arrêté dans le temps ?'),(92,'Avez-vous inclus une date dans la formulation de l\'objectif ?'),(93,'Bravo ! Vous avez bien défini l\'objectif !'),(94,'Exploration de la situation présente'),(95,'But de cette phase :\n\nAider la personne à prendre conscience de façon claire d\'où elle en est maintenant par rapport à l\'objectif qu\'elle s\'est donné\n\nIl faut veiller à :\n\n1. Garder une bonne distance par rapport à la situation\n\n2. Poser des questions amenant des réponses concrètes'),(96,'Laisse maintenant quelques minutes à ton interlocuteur pour te parler de sa situation présente, et exprimer où il pense en être par rapport à l\'objectif fixé'),(97,'Passer >'),(98,'Décris la situation présente ci-dessous'),(99,'Quelques exemples'),(100,'Spontanément, penses-tu qu\'il y a des ressources ci-dessous qui t\'aideraient à atteindre cet objectif ?'),(101,'Gestion des émotions'),(102,'Confiance en soi'),(103,'Gestion des peurs'),(104,'\"Selon toi, il y a-t-il aujourd\'hui des obstacles qui t\'empêchent d\'atteindre cet objectif ?\"\n\nLaisse quelques secondes de réflexion à ton interlocuteur'),(105,'Quel est l\'objet des entretiens ?'),(106,'Clique pour en apprendre plus sur ce qu\'est une croyance >'),(107,'As-tu une certitude sur la raison pour laquelle tu as ce problème aujourd\'hui ?\n\nSemble-t-il y avoir un élément dans tes croyances qui serait la cause de ton problème ?\n\nPenses-tu qu\'il y a une raison certaine qui te limite aujourd\'hui ?'),(108,'Tu vas accompagner ton interlocuteur à la manière d\'un coach professionnel.'),(109,'Je vais te guider tout au long des différentes étapes.'),(110,'Décrire le problème ou la situation à faire évoluer ci-dessous'),(111,'Login'),(112,'Sign Up'),(113,'C\'est parti'),(114,'Pas vraiment'),(115,'OK, on réessaie !'),(116,'Valider'),(117,'Retour'),(118,'C\'est bien ça '),(119,'Je ne suis pas sûr...'),(120,'Je ne suis pas sûr'),(121,'Oui'),(122,'Non'),(123,'Oui c\'est exactement ça !'),(124,'Non pas exactement...'),(125,'Ajouter des actions'),(126,'Ajouter'),(127,'Je valide'),(128,'Je valide ces actions'),(129,'Je ne valide pas'),(130,'Continuer'),(131,'Je continue'),(132,'C\'est compris'),(133,'Valider'),(134,'Email'),(135,'Mot de passe'),(136,'Prénom'),(137,'Nom'),(138,'Fonction'),(139,'Entreprise'),(140,'Commence à écrire'),(141,'Ecris une action'),(142,'Mypersocoach'),(143,'Tu n\'as pas de compte ?'),(144,'Choisis ton identifiant et ton mot de passe'),(145,'Remplis ces quelques informations complémentaires'),(146,'Ecris au moins 5 actions');
/*!40000 ALTER TABLE `text_static` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-23 11:32:02

--
-- Dumping data for table `summary`
--

LOCK TABLES `summary` WRITE;
/*!40000 ALTER TABLE `summary` DISABLE KEYS */;
INSERT INTO `summary` VALUES (3,NULL,NULL,NULL),(4,NULL,NULL,NULL),(5,NULL,NULL,NULL),(6,NULL,1,NULL),(7,NULL,1,NULL),(8,NULL,2,NULL),(9,NULL,3,NULL),(10,NULL,4,NULL),(11,NULL,5,NULL),(12,NULL,6,NULL),(1,1,1,1),(2,2,2,1);
/*!40000 ALTER TABLE `summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary_has_text_static`
--

DROP TABLE IF EXISTS `summary_has_text_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `summary_has_text_static` (
  `summary_id` int(11) NOT NULL,
  `text_static_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_summary_has_text_static_text_static1_idx` (`text_static_id`),
  KEY `fk_summary_has_text_static_summary1_idx` (`summary_id`,`text_static_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary_has_text_static`
--

LOCK TABLES `summary_has_text_static` WRITE;
/*!40000 ALTER TABLE `summary_has_text_static` DISABLE KEYS */;
/*!40000 ALTER TABLE `summary_has_text_static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text_static`
--

DROP TABLE IF EXISTS `text_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `text_static` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `all_text` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text_static`
--

LOCK TABLES `text_static` WRITE;
/*!40000 ALTER TABLE `text_static` DISABLE KEYS */;
INSERT INTO `text_static` VALUES (1,'C\'est ici que démarre l\'aventure.\n\nTu vas accompagner ton interlocuteur à la manière d\'un coach professionnel.\n\nJe vais te guider tout au long des différentes étapes.\n\n'),(2,'Résoudre un problème'),(3,'Atteindre un objectif'),(4,'Voici des thématiques récurrentes, y en a-t-il une qui correspond à la situation ?'),(5,'Conflit avec un collègue'),(6,'Apaiser une situation conflictuelle\nRésoudre un problème\n Faire évoluer une situation'),(7,'Voici des thématiques récurrentes, y en a-t-il une qui correspondond à la situation ?\n'),(8,'Conflit avec un collègue'),(9,'Ma performance'),(10,'Problème d\'organisation'),(11,'Problème de communication'),(12,'Gestion du temps'),(13,'Gestion du stress'),(14,'Exprime le besoin auquel tu fais face ou la situation à faire évoluer'),(15,'Ton problème actuel est :'),(16,'Voici des raisons qui pourraient expliquer l\'origine du problème. \n\nY en a-t-il une qui te semble correcte ?\n'),(17,'Il faut prendre le temps de réfléchir ... \nSelon toi, qu\'est-ce qui est à l\'origine de ce problème ? '),(18,'Mon environnement'),(19,'Mon comportement'),(20,'Mes capacités'),(21,'Mes croyances et valeurs'),(22,'Il faut s\'interroger : qu\'est ce qui dans ton environnement pourrait être la cause de ton problème ? \n\nOù est-ce que tu travailles le mieux ? \n\nDe quel type de personne aimes-tu t\'entourer ? \n\nQuel type de personne prend toute ton énergie ? \n\nQuelles heures de la journée sont les plus productives pour toi ? \n\nSemble-t-il y avoir un élément dans ton environnement de travail qui serait la cause de ton problème ?\n'),(23,'Il faut s\'interroger : qu\'est ce qui dans ton comportement pourrait être la cause de ton problème ? \n\nQue fais-tu concrètement ? Quelle était ton attitude à ce moment là ? \n\nQue remarques-tu dans les propos des autres ? Dans les mots qu’ils utilisent ? \n\nQue dis-tu régulièrement ? Y décèles-tu des habitudes de fonctionnement ? \n\nSemble-t-il y avoir un élément dans ton comportement qui serait la cause de ton problème ? \n'),(24,'Il faut s\'interroger : qu\'est ce qui dans tes capacités pourrait être la cause de ton problème ? \n\nEs-tu expert d’un domaine qui ne t\'est pas utile ? Quelle compétence te serait plus utile ? \n\nPenses-tu qu\'il te manque une compétence ? \n\nY a-t-il une compétence que tu retrouves chez quelqu\'un d\'autre et qui semble te manquer ? \n\nSemble-t-il y avoir un élément dans tes capacités qui serait la cause de ton problème ?'),(25,'Il faut s\'interroger : est-ce que tu as des croyances qui pourraient participer à ton problème ?'),(26,'As-tu une certitude sur la raison pour laquelle tu as ce problème aujourd\'hui ?\n\nPenses-tu qu\'il y a une raison certaine qui te limite aujourd\'hui ?\n\nSemble-t-il y avoir un élément dans tes croyances qui serait la cause de ton problème ?'),(27,'Qu\'est-ce que ce serait selon toi ?'),(28,'Croyances et valeurs'),(29,'Ce qui en est à l\'origine :'),(30,'Croyances'),(31,'Capacités'),(32,'Comportement'),(33,'Environnement'),(34,'Tu vas maintenant trouver 5 actions concrètes qui vont permettre de commencer à résoudre ce problème\n\n\nParmi les 5, il en faut 2 farfelues qui vont ouvrir de nouveaux circuits neuronaux'),(35,'Parmi ces actions, laquelle semble la plus facile à mettre en oeuvre rapidement ?'),(36,'Quand vas-tu réaliser cette action ?'),(37,'Ce qui en est à l\'origine est:'),(38,'La première action que je vais réaliser est :'),(39,'Avant le :'),(40,'Profil de la personne que vous coachez'),(41,'Problème'),(42,'Origine'),(43,'Action'),(44,'Follow UP'),(45,'Faire un entretien de follow up'),(46,'Outils'),(47,'Apporter de nouvelles ressources'),(48,'Gérer la résistance au changement'),(49,'Communication non violente'),(50,'Chaîne humaine'),(51,'Niveaux logiques'),(52,'1/3\n\nQu’est-ce qu’une croyance ?\n\nUne croyance est une certitude, consciente ou inconsciente, que l’on porte sur soi, sur les autres et sur la vie en général. Une croyance se caractérise par le fait qu’elle existe indépendamment des faits qui viendraient la corroborer ou la démentir.\n\nExemple de croyance : considérer qu’un projet de création d’entreprise est trop risqué, sans avoir mené une analyse de marché au préalable.'),(53,'2/3\n\nCertaines croyances dites « ressources » peuvent être aidantes pour l’individu.\n\nExemple de croyance ressource : Une personne qui est persuadée qu’elle dispose des capacités nécessaires pour réussir dans la vie est une personne qui dispose d’un bon niveau de confiance en elle. Or la confiance en soi est une qualité préalable indispensable pour réussir.'),(54,'3/3\n\nD’autres croyances à l’inverse peuvent être handicapantes.\n\nExemple de croyance limitante : Une personne convaincue qu’il faut à priori se méfier des autres aura du mal à tisser des relations sociales harmonieuses.\n\nLes croyances posent deux types de difficultés. La première tient au fait qu’un certain nombre d’entre elles sont inconscientes.\n\nLa seconde difficulté que posent les croyances porte sur le fait qu’il s’agit de certitude. Or, par définition, nous ne remettons pas en cause nos certitudes.'),(55,'Pourquoi 5 solutions ?\n- 1 solution : c\'est une impasse\n- 2 solutions : c\'est un dilemme\n- 3 solutions et + : le minimum pour avoir le choix\n\nPourquoi 2 farfelus ?\n- Pour faire appel à l’inconscient\n- Pour activer de nouveaux circuits\nneuronaux\n- Pour imaginer de nouvelles solutions'),(56,'Passer >'),(57,'Clique pour en apprendre plus sur ce qu\'est une croyance >'),(58,'Continuer >'),(59,'Fermer >'),(60,'Terminer >'),(61,'Pourquoi 5 actions ? Pourquoi 2 farfelues ? >'),(63,'Compris >'),(64,'Atteindre un objectif individuel\nAméliorer une performance\nRéussir quelque chose qui semble compliqué'),(65,'Pour bien définir un objectif, il va falloir s\'assurer qu\'il est :'),(66,'Spécifique'),(67,'Mesurable'),(68,'Atteignable'),(69,'Réaliste'),(70,'Arrêté dans le temps'),(71,'Formulation de l\'objectif\n\n     L\'objectif doit être formulé comme ceci : \"Je + verbe d\'action + ...\"'),(72,'Note maintenant l\'objectif de ton interlocuteur'),(73,'Exemples d\'objectifs'),(74,'Validation de l\'objectif\nL\'objectif est-il spécifique ?'),(75,'• Est-il clair ?\n\n• Est-il formulé affirmativement, à la première personne, incluant un verbe d’action ?\n\n• Est-il contextualisé (où, quand, avec qui, dans quelles circonstances)'),(76,'Pas sûrs ?'),(77,'Clique pour voir des exemples de questions à poser >'),(78,'Exemples de questions à poser'),(79,'« Qu’est-ce que tu veux atteindre, réaliser… ? »\n\n« Tu ne veux pas de cette situation, que veux-tu à la place ? »\n\n« Où, quand, avec qui, désires-tu mettre cet objectif en place ? »\n\n« Quelle est la signification exacte des mots que tu emploies ? »'),(80,'Fermer >'),(81,'Validation de l\'objectif\n\nL\'objectif est-il mesurable ?'),(82,'• Peut-on définir des critères internes d’accomplissement personnel ?\n\n• Peut-on définir des critères externes d\'accomplissement  ?'),(83,'• Peut-on définir des critères internes d’accomplissement personnel ?\n\n• Peut-on définir des critères externes d\'accomplissement  ?'),(84,'« Comment sauras-tu que tu as atteint ton objectif ? »\n\n« Qu’est-ce que tu verras, entendras, sentiras ? »\n\n« Qu’est-ce que les autres pourront constater concrètement ? »'),(85,'Validation de l\'objectif\n\nL\'objectif est-il acceptable ?'),(86,'• Respecte l’équilibre interne de la personne\n\n• Prend en compte l’entourage, les différentes personnes impliquées\n\n• Prend en compte les avantages de l’état présent'),(87,'« Pourrait-il y avoir un inconvénient pour toi à atteindre cet objectif ? Pour ton entourage ? »\n\n« Y a-t-il une partie de toi qui a une objection ? »\n\n« Y a-t-il des avantages à ne pas atteindre cet objectif ? »\n\n« Que faire pour garder ou remplacer les avantages de la situation présente ? »'),(88,'Validation de l\'objectif\n\nL\'objectif est-il réalisable ?'),(89,'• Atteignable compte tenu du contexte\n\n• Réalisable matériellement\n\n• Formulé de telle façon qu’il dépende uniquement de la personne concernée'),(90,'« Est-ce que la mise en place de cet objectif est de ta responsabilité ? »\n\n« Pour qui, pour quoi, veux-tu cela ? »\n\n« Est-ce qu’il est matériellement possible de le réaliser ? »\n\n« De quelles ressources as-tu besoin pour l’atteindre ? »\n\n* « Y a-t-il des obstacles à la réalisation de cet objectif ? »'),(91,'Validation de l\'objectif\n\nL\'objectif est-il arrêté dans le temps ?'),(92,'Avez-vous inclus une date dans la formulation de l\'objectif ?'),(93,'Bravo ! Vous avez bien défini l\'objectif !'),(94,'Exploration de la situation présente'),(95,'But de cette phase :\n\nAider la personne à prendre conscience de façon claire d\'où elle en est maintenant par rapport à l\'objectif qu\'elle s\'est donné\n\nIl faut veiller à :\n\n1. Garder une bonne distance par rapport à la situation\n\n2. Poser des questions amenant des réponses concrètes'),(96,'Laisse maintenant quelques minutes à ton interlocuteur pour te parler de sa situation présente, et exprimer où il pense en être par rapport à l\'objectif fixé'),(97,'Passer >'),(98,'Décris la situation présente ci-dessous'),(99,'Quelques exemples'),(100,'Spontanément, penses-tu qu\'il y a des ressources ci-dessous qui t\'aideraient à atteindre cet objectif ?'),(101,'Gestion des émotions'),(102,'Confiance en soi'),(103,'Gestion des peurs'),(104,'\"Selon toi, il y a-t-il aujourd\'hui des obstacles qui t\'empêchent d\'atteindre cet objectif ?\"\n\nLaisse quelques secondes de réflexion à ton interlocuteur'),(105,'Quel est l\'objet des entretiens ?'),(106,'Clique pour en apprendre plus sur ce qu\'est une croyance >'),(107,'As-tu une certitude sur la raison pour laquelle tu as ce problème aujourd\'hui ?\n\nSemble-t-il y avoir un élément dans tes croyances qui serait la cause de ton problème ?\n\nPenses-tu qu\'il y a une raison certaine qui te limite aujourd\'hui ?'),(108,'Tu vas accompagner ton interlocuteur à la manière d\'un coach professionnel.'),(109,'Je vais te guider tout au long des différentes étapes.'),(110,'Décrire le problème ou la situation à faire évoluer ci-dessous'),(111,'Login'),(112,'Sign Up'),(113,'C\'est parti'),(114,'Pas vraiment'),(115,'OK, on réessaie !'),(116,'Valider'),(117,'Retour'),(118,'C\'est bien ça '),(119,'Je ne suis pas sûr...'),(120,'Je ne suis pas sûr'),(121,'Oui'),(122,'Non'),(123,'Oui c\'est exactement ça !'),(124,'Non pas exactement...'),(125,'Ajouter des actions'),(126,'Ajouter'),(127,'Je valide'),(128,'Je valide ces actions'),(129,'Je ne valide pas'),(130,'Continuer'),(131,'Je continue'),(132,'C\'est compris'),(133,'Valider'),(134,'Email'),(135,'Mot de passe'),(136,'Prénom'),(137,'Nom'),(138,'Fonction'),(139,'Entreprise'),(140,'Commence à écrire'),(141,'Ecris une action'),(142,'Mypersocoach'),(143,'Tu n\'as pas de compte ?'),(144,'Choisis ton identifiant et ton mot de passe'),(145,'Remplis ces quelques informations complémentaires'),(146,'Ecris au moins 5 actions');
/*!40000 ALTER TABLE `text_static` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-23 11:32:02