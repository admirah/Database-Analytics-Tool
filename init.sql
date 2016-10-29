CREATE DATABASE  IF NOT EXISTS `zamger` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `zamger`;
-- MySQL dump 10.13  Distrib 5.7.12, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: zamger
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `akademska_godina`
--

DROP TABLE IF EXISTS `akademska_godina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akademska_godina` (
  `id` int(11) NOT NULL,
  `naziv` varchar(20) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `aktuelna` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akademska_godina`
--

LOCK TABLES `akademska_godina` WRITE;
/*!40000 ALTER TABLE `akademska_godina` DISABLE KEYS */;
INSERT INTO `akademska_godina` VALUES (1,'2008/2009',0),(2,'2009/2010',0),(3,'2010/2011',0),(4,'2011/2012',0),(5,'2012/2013',0),(6,'2013/2014',0),(7,'2014/2015',0),(8,'2015/2016',0),(9,'2016/2017',1);
/*!40000 ALTER TABLE `akademska_godina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `akademska_godina_predmet`
--

DROP TABLE IF EXISTS `akademska_godina_predmet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `akademska_godina_predmet` (
  `akademska_godina` int(11) NOT NULL,
  `predmet` int(11) NOT NULL,
  PRIMARY KEY (`akademska_godina`,`predmet`),
  KEY `predmet` (`predmet`),
  CONSTRAINT `akademska_godina_predmet_ibfk_1` FOREIGN KEY (`akademska_godina`) REFERENCES `akademska_godina` (`id`),
  CONSTRAINT `akademska_godina_predmet_ibfk_2` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `akademska_godina_predmet`
--

LOCK TABLES `akademska_godina_predmet` WRITE;
/*!40000 ALTER TABLE `akademska_godina_predmet` DISABLE KEYS */;
INSERT INTO `akademska_godina_predmet` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(8,7),(9,7),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(9,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(9,9),(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(9,10),(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(8,11),(9,11),(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(8,12),(9,12),(1,13),(2,13),(3,13),(4,13),(5,13),(6,13),(7,13),(8,13),(9,13),(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(8,14),(9,14),(1,15),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(8,15),(9,15),(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16),(8,16),(9,16),(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(8,17),(9,17),(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(8,18),(9,18),(1,19),(2,19),(3,19),(4,19),(5,19),(6,19),(7,19),(8,19),(9,19),(1,20),(2,20),(3,20),(4,20),(5,20),(6,20),(7,20),(8,20),(9,20),(1,21),(2,21),(3,21),(4,21),(5,21),(6,21),(7,21),(8,21),(9,21),(1,22),(2,22),(3,22),(4,22),(5,22),(6,22),(7,22),(8,22),(9,22),(1,23),(2,23),(3,23),(4,23),(5,23),(6,23),(7,23),(8,23),(9,23),(1,24),(2,24),(3,24),(4,24),(5,24),(6,24),(7,24),(8,24),(9,24),(1,25),(2,25),(3,25),(4,25),(5,25),(6,25),(7,25),(8,25),(9,25),(1,26),(2,26),(3,26),(4,26),(5,26),(6,26),(7,26),(8,26),(9,26),(1,27),(2,27),(3,27),(4,27),(5,27),(6,27),(7,27),(8,27),(9,27),(1,28),(2,28),(3,28),(4,28),(5,28),(6,28),(7,28),(8,28),(9,28),(1,29),(2,29),(3,29),(4,29),(5,29),(6,29),(7,29),(8,29),(9,29),(1,30),(2,30),(3,30),(4,30),(5,30),(6,30),(7,30),(8,30),(9,30),(1,31),(2,31),(3,31),(4,31),(5,31),(6,31),(7,31),(8,31),(9,31),(1,32),(2,32),(3,32),(4,32),(5,32),(6,32),(7,32),(8,32),(9,32),(1,33),(2,33),(3,33),(4,33),(5,33),(6,33),(7,33),(8,33),(9,33),(1,34),(2,34),(3,34),(4,34),(5,34),(6,34),(7,34),(8,34),(9,34),(1,35),(2,35),(3,35),(4,35),(5,35),(6,35),(7,35),(8,35),(9,35),(1,36),(2,36),(3,36),(4,36),(5,36),(6,36),(7,36),(8,36),(9,36),(1,37),(2,37),(3,37),(4,37),(5,37),(6,37),(7,37),(8,37),(9,37),(1,38),(2,38),(3,38),(4,38),(5,38),(6,38),(7,38),(8,38),(9,38),(1,39),(2,39),(3,39),(4,39),(5,39),(6,39),(7,39),(8,39),(9,39),(1,40),(2,40),(3,40),(4,40),(5,40),(6,40),(7,40),(8,40),(9,40),(1,41),(2,41),(3,41),(4,41),(5,41),(6,41),(7,41),(8,41),(9,41),(1,42),(2,42),(3,42),(4,42),(5,42),(6,42),(7,42),(8,42),(9,42),(1,43),(2,43),(3,43),(4,43),(5,43),(6,43),(7,43),(8,43),(9,43),(1,44),(2,44),(3,44),(4,44),(5,44),(6,44),(7,44),(8,44),(9,44),(1,45),(2,45),(3,45),(4,45),(5,45),(6,45),(7,45),(8,45),(9,45),(1,46),(2,46),(3,46),(4,46),(5,46),(6,46),(7,46),(8,46),(9,46),(1,47),(2,47),(3,47),(4,47),(5,47),(6,47),(7,47),(8,47),(9,47),(1,48),(2,48),(3,48),(4,48),(5,48),(6,48),(7,48),(8,48),(9,48),(1,49),(2,49),(3,49),(4,49),(5,49),(6,49),(7,49),(8,49),(9,49),(1,50),(2,50),(3,50),(4,50),(5,50),(6,50),(7,50),(8,50),(9,50),(1,51),(2,51),(3,51),(4,51),(5,51),(6,51),(7,51),(8,51),(9,51),(1,52),(2,52),(3,52),(4,52),(5,52),(6,52),(7,52),(8,52),(9,52),(1,53),(2,53),(3,53),(4,53),(5,53),(6,53),(7,53),(8,53),(9,53),(1,54),(2,54),(3,54),(4,54),(5,54),(6,54),(7,54),(8,54),(9,54),(1,55),(2,55),(3,55),(4,55),(5,55),(6,55),(7,55),(8,55),(9,55),(1,56),(2,56),(3,56),(4,56),(5,56),(6,56),(7,56),(8,56),(9,56),(1,57),(2,57),(3,57),(4,57),(5,57),(6,57),(7,57),(8,57),(9,57),(1,58),(2,58),(3,58),(4,58),(5,58),(6,58),(7,58),(8,58),(9,58),(1,59),(2,59),(3,59),(4,59),(5,59),(6,59),(7,59),(8,59),(9,59),(1,60),(2,60),(3,60),(4,60),(5,60),(6,60),(7,60),(8,60),(9,60),(1,61),(2,61),(3,61),(4,61),(5,61),(6,61),(7,61),(8,61),(9,61),(1,62),(2,62),(3,62),(4,62),(5,62),(6,62),(7,62),(8,62),(9,62),(1,63),(2,63),(3,63),(4,63),(5,63),(6,63),(7,63),(8,63),(9,63),(1,64),(2,64),(3,64),(4,64),(5,64),(6,64),(7,64),(8,64),(9,64),(1,65),(2,65),(3,65),(4,65),(5,65),(6,65),(7,65),(8,65),(9,65),(1,66),(2,66),(3,66),(4,66),(5,66),(6,66),(7,66),(8,66),(9,66),(1,67),(2,67),(3,67),(4,67),(5,67),(6,67),(7,67),(8,67),(9,67),(1,68),(2,68),(3,68),(4,68),(5,68),(6,68),(7,68),(8,68),(9,68),(1,69),(2,69),(3,69),(4,69),(5,69),(6,69),(7,69),(8,69),(9,69),(1,70),(2,70),(3,70),(4,70),(5,70),(6,70),(7,70),(8,70),(9,70),(1,71),(2,71),(3,71),(4,71),(5,71),(6,71),(7,71),(8,71),(9,71),(1,72),(2,72),(3,72),(4,72),(5,72),(6,72),(7,72),(8,72),(9,72),(1,73),(2,73),(3,73),(4,73),(5,73),(6,73),(7,73),(8,73),(9,73),(1,74),(2,74),(3,74),(4,74),(5,74),(6,74),(7,74),(8,74),(9,74),(1,75),(2,75),(3,75),(4,75),(5,75),(6,75),(7,75),(8,75),(9,75),(1,76),(2,76),(3,76),(4,76),(5,76),(6,76),(7,76),(8,76),(9,76),(1,77),(2,77),(3,77),(4,77),(5,77),(6,77),(7,77),(8,77),(9,77),(1,78),(2,78),(3,78),(4,78),(5,78),(6,78),(7,78),(8,78),(9,78),(1,79),(2,79),(3,79),(4,79),(5,79),(6,79),(7,79),(8,79),(9,79),(1,80),(2,80),(3,80),(4,80),(5,80),(6,80),(7,80),(8,80),(9,80),(1,81),(2,81),(3,81),(4,81),(5,81),(6,81),(7,81),(8,81),(9,81),(1,82),(2,82),(3,82),(4,82),(5,82),(6,82),(7,82),(8,82),(9,82),(1,83),(2,83),(3,83),(4,83),(5,83),(6,83),(7,83),(8,83),(9,83),(1,84),(2,84),(3,84),(4,84),(5,84),(6,84),(7,84),(8,84),(9,84),(1,85),(2,85),(3,85),(4,85),(5,85),(6,85),(7,85),(8,85),(9,85),(1,86),(2,86),(3,86),(4,86),(5,86),(6,86),(7,86),(8,86),(9,86),(1,87),(2,87),(3,87),(4,87),(5,87),(6,87),(7,87),(8,87),(9,87),(1,88),(2,88),(3,88),(4,88),(5,88),(6,88),(7,88),(8,88),(9,88),(1,89),(2,89),(3,89),(4,89),(5,89),(6,89),(7,89),(8,89),(9,89),(1,90),(2,90),(3,90),(4,90),(5,90),(6,90),(7,90),(8,90),(9,90),(1,91),(2,91),(3,91),(4,91),(5,91),(6,91),(7,91),(8,91),(9,91),(1,92),(2,92),(3,92),(4,92),(5,92),(6,92),(7,92),(8,92),(9,92),(1,93),(2,93),(3,93),(4,93),(5,93),(6,93),(7,93),(8,93),(9,93),(1,94),(2,94),(3,94),(4,94),(5,94),(6,94),(7,94),(8,94),(9,94),(1,95),(2,95),(3,95),(4,95),(5,95),(6,95),(7,95),(8,95),(9,95),(1,96),(2,96),(3,96),(4,96),(5,96),(6,96),(7,96),(8,96),(9,96),(1,97),(2,97),(3,97),(4,97),(5,97),(6,97),(7,97),(8,97),(9,97),(1,98),(2,98),(3,98),(4,98),(5,98),(6,98),(7,98),(8,98),(9,98),(1,99),(2,99),(3,99),(4,99),(5,99),(6,99),(7,99),(8,99),(9,99),(1,100),(2,100),(3,100),(4,100),(5,100),(6,100),(7,100),(8,100),(9,100),(1,101),(2,101),(3,101),(4,101),(5,101),(6,101),(7,101),(8,101),(9,101),(1,102),(2,102),(3,102),(4,102),(5,102),(6,102),(7,102),(8,102),(9,102),(1,103),(2,103),(3,103),(4,103),(5,103),(6,103),(7,103),(8,103),(9,103),(1,104),(2,104),(3,104),(4,104),(5,104),(6,104),(7,104),(8,104),(9,104),(1,105),(2,105),(3,105),(4,105),(5,105),(6,105),(7,105),(8,105),(9,105),(1,106),(2,106),(3,106),(4,106),(5,106),(6,106),(7,106),(8,106),(9,106),(1,107),(2,107),(3,107),(4,107),(5,107),(6,107),(7,107),(8,107),(9,107),(1,108),(2,108),(3,108),(4,108),(5,108),(6,108),(7,108),(8,108),(9,108),(1,109),(2,109),(3,109),(4,109),(5,109),(6,109),(7,109),(8,109),(9,109),(1,110),(2,110),(3,110),(4,110),(5,110),(6,110),(7,110),(8,110),(9,110),(1,111),(2,111),(3,111),(4,111),(5,111),(6,111),(7,111),(8,111),(9,111),(1,112),(2,112),(3,112),(4,112),(5,112),(6,112),(7,112),(8,112),(9,112),(1,113),(2,113),(3,113),(4,113),(5,113),(6,113),(7,113),(8,113),(9,113),(1,114),(2,114),(3,114),(4,114),(5,114),(6,114),(7,114),(8,114),(9,114),(1,115),(2,115),(3,115),(4,115),(5,115),(6,115),(7,115),(8,115),(9,115),(1,116),(2,116),(3,116),(4,116),(5,116),(6,116),(7,116),(8,116),(9,116),(1,117),(2,117),(3,117),(4,117),(5,117),(6,117),(7,117),(8,117),(9,117),(1,118),(2,118),(3,118),(4,118),(5,118),(6,118),(7,118),(8,118),(9,118),(1,119),(2,119),(3,119),(4,119),(5,119),(6,119),(7,119),(8,119),(9,119),(1,120),(2,120),(3,120),(4,120),(5,120),(6,120),(7,120),(8,120),(9,120),(1,121),(2,121),(3,121),(4,121),(5,121),(6,121),(7,121),(8,121),(9,121),(1,122),(2,122),(3,122),(4,122),(5,122),(6,122),(7,122),(8,122),(9,122),(1,123),(2,123),(3,123),(4,123),(5,123),(6,123),(7,123),(8,123),(9,123),(1,124),(2,124),(3,124),(4,124),(5,124),(6,124),(7,124),(8,124),(9,124),(1,125),(2,125),(3,125),(4,125),(5,125),(6,125),(7,125),(8,125),(9,125),(1,126),(2,126),(3,126),(4,126),(5,126),(6,126),(7,126),(8,126),(9,126),(1,127),(2,127),(3,127),(4,127),(5,127),(6,127),(7,127),(8,127),(9,127),(1,128),(2,128),(3,128),(4,128),(5,128),(6,128),(7,128),(8,128),(9,128),(1,129),(2,129),(3,129),(4,129),(5,129),(6,129),(7,129),(8,129),(9,129),(1,130),(2,130),(3,130),(4,130),(5,130),(6,130),(7,130),(8,130),(9,130),(1,131),(2,131),(3,131),(4,131),(5,131),(6,131),(7,131),(8,131),(9,131),(1,132),(2,132),(3,132),(4,132),(5,132),(6,132),(7,132),(8,132),(9,132),(1,133),(2,133),(3,133),(4,133),(5,133),(6,133),(7,133),(8,133),(9,133),(1,134),(2,134),(3,134),(4,134),(5,134),(6,134),(7,134),(8,134),(9,134),(1,135),(2,135),(3,135),(4,135),(5,135),(6,135),(7,135),(8,135),(9,135),(1,136),(2,136),(3,136),(4,136),(5,136),(6,136),(7,136),(8,136),(9,136),(1,137),(2,137),(3,137),(4,137),(5,137),(6,137),(7,137),(8,137),(9,137),(1,138),(2,138),(3,138),(4,138),(5,138),(6,138),(7,138),(8,138),(9,138),(1,139),(2,139),(3,139),(4,139),(5,139),(6,139),(7,139),(8,139),(9,139),(1,140),(2,140),(3,140),(4,140),(5,140),(6,140),(7,140),(8,140),(9,140),(1,141),(2,141),(3,141),(4,141),(5,141),(6,141),(7,141),(8,141),(9,141),(1,142),(2,142),(3,142),(4,142),(5,142),(6,142),(7,142),(8,142),(9,142),(1,143),(2,143),(3,143),(4,143),(5,143),(6,143),(7,143),(8,143),(9,143),(1,144),(2,144),(3,144),(4,144),(5,144),(6,144),(7,144),(8,144),(9,144),(1,145),(2,145),(3,145),(4,145),(5,145),(6,145),(7,145),(8,145),(9,145),(1,146),(2,146),(3,146),(4,146),(5,146),(6,146),(7,146),(8,146),(9,146),(1,147),(2,147),(3,147),(4,147),(5,147),(6,147),(7,147),(8,147),(9,147),(1,148),(2,148),(3,148),(4,148),(5,148),(6,148),(7,148),(8,148),(9,148),(1,149),(2,149),(3,149),(4,149),(5,149),(6,149),(7,149),(8,149),(9,149),(1,150),(2,150),(3,150),(4,150),(5,150),(6,150),(7,150),(8,150),(9,150),(1,151),(2,151),(3,151),(4,151),(5,151),(6,151),(7,151),(8,151),(9,151),(1,152),(2,152),(3,152),(4,152),(5,152),(6,152),(7,152),(8,152),(9,152),(1,153),(2,153),(3,153),(4,153),(5,153),(6,153),(7,153),(8,153),(9,153),(1,154),(2,154),(3,154),(4,154),(5,154),(6,154),(7,154),(8,154),(9,154),(1,155),(2,155),(3,155),(4,155),(5,155),(6,155),(7,155),(8,155),(9,155),(1,156),(2,156),(3,156),(4,156),(5,156),(6,156),(7,156),(8,156),(9,156),(1,157),(2,157),(3,157),(4,157),(5,157),(6,157),(7,157),(8,157),(9,157),(1,158),(2,158),(3,158),(4,158),(5,158),(6,158),(7,158),(8,158),(9,158),(1,159),(2,159),(3,159),(4,159),(5,159),(6,159),(7,159),(8,159),(9,159),(1,160),(2,160),(3,160),(4,160),(5,160),(6,160),(7,160),(8,160),(9,160),(1,161),(2,161),(3,161),(4,161),(5,161),(6,161),(7,161),(8,161),(9,161),(1,162),(2,162),(3,162),(4,162),(5,162),(6,162),(7,162),(8,162),(9,162),(1,163),(2,163),(3,163),(4,163),(5,163),(6,163),(7,163),(8,163),(9,163),(1,164),(2,164),(3,164),(4,164),(5,164),(6,164),(7,164),(8,164),(9,164),(1,165),(2,165),(3,165),(4,165),(5,165),(6,165),(7,165),(8,165),(9,165),(1,166),(2,166),(3,166),(4,166),(5,166),(6,166),(7,166),(8,166),(9,166),(1,167),(2,167),(3,167),(4,167),(5,167),(6,167),(7,167),(8,167),(9,167),(1,168),(2,168),(3,168),(4,168),(5,168),(6,168),(7,168),(8,168),(9,168),(1,169),(2,169),(3,169),(4,169),(5,169),(6,169),(7,169),(8,169),(9,169),(1,170),(2,170),(3,170),(4,170),(5,170),(6,170),(7,170),(8,170),(9,170),(1,171),(2,171),(3,171),(4,171),(5,171),(6,171),(7,171),(8,171),(9,171),(1,172),(2,172),(3,172),(4,172),(5,172),(6,172),(7,172),(8,172),(9,172),(1,173),(2,173),(3,173),(4,173),(5,173),(6,173),(7,173),(8,173),(9,173),(1,174),(2,174),(3,174),(4,174),(5,174),(6,174),(7,174),(8,174),(9,174),(1,175),(2,175),(3,175),(4,175),(5,175),(6,175),(7,175),(8,175),(9,175),(1,176),(2,176),(3,176),(4,176),(5,176),(6,176),(7,176),(8,176),(9,176),(1,177),(2,177),(3,177),(4,177),(5,177),(6,177),(7,177),(8,177),(9,177),(1,178),(2,178),(3,178),(4,178),(5,178),(6,178),(7,178),(8,178),(9,178),(1,179),(2,179),(3,179),(4,179),(5,179),(6,179),(7,179),(8,179),(9,179),(1,180),(2,180),(3,180),(4,180),(5,180),(6,180),(7,180),(8,180),(9,180),(1,181),(2,181),(3,181),(4,181),(5,181),(6,181),(7,181),(8,181),(9,181),(1,182),(2,182),(3,182),(4,182),(5,182),(6,182),(7,182),(8,182),(9,182),(1,183),(2,183),(3,183),(4,183),(5,183),(6,183),(7,183),(8,183),(9,183),(1,184),(2,184),(3,184),(4,184),(5,184),(6,184),(7,184),(8,184),(9,184),(1,185),(2,185),(3,185),(4,185),(5,185),(6,185),(7,185),(8,185),(9,185),(1,186),(2,186),(3,186),(4,186),(5,186),(6,186),(7,186),(8,186),(9,186),(1,187),(2,187),(3,187),(4,187),(5,187),(6,187),(7,187),(8,187),(9,187),(1,188),(2,188),(3,188),(4,188),(5,188),(6,188),(7,188),(8,188),(9,188),(1,189),(2,189),(3,189),(4,189),(5,189),(6,189),(7,189),(8,189),(9,189),(1,190),(2,190),(3,190),(4,190),(5,190),(6,190),(7,190),(8,190),(9,190),(1,191),(2,191),(3,191),(4,191),(5,191),(6,191),(7,191),(8,191),(9,191),(1,192),(2,192),(3,192),(4,192),(5,192),(6,192),(7,192),(8,192),(9,192),(1,193),(2,193),(3,193),(4,193),(5,193),(6,193),(7,193),(8,193),(9,193),(1,194),(2,194),(3,194),(4,194),(5,194),(6,194),(7,194),(8,194),(9,194),(1,195),(2,195),(3,195),(4,195),(5,195),(6,195),(7,195),(8,195),(9,195),(1,196),(2,196),(3,196),(4,196),(5,196),(6,196),(7,196),(8,196),(9,196),(1,197),(2,197),(3,197),(4,197),(5,197),(6,197),(7,197),(8,197),(9,197),(1,198),(2,198),(3,198),(4,198),(5,198),(6,198),(7,198),(8,198),(9,198),(1,199),(2,199),(3,199),(4,199),(5,199),(6,199),(7,199),(8,199),(9,199),(1,200),(2,200),(3,200),(4,200),(5,200),(6,200),(7,200),(8,200),(9,200);
/*!40000 ALTER TABLE `akademska_godina_predmet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `angazman`
--

DROP TABLE IF EXISTS `angazman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `angazman` (
  `predmet` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `osoba` int(11) NOT NULL,
  `angazman_status` int(11) NOT NULL,
  PRIMARY KEY (`predmet`,`akademska_godina`,`osoba`),
  KEY `angazman_status` (`angazman_status`),
  KEY `akademska_godina` (`akademska_godina`),
  KEY `osoba` (`osoba`),
  CONSTRAINT `angazman_ibfk_10` FOREIGN KEY (`osoba`) REFERENCES `osoba` (`id`),
  CONSTRAINT `angazman_ibfk_11` FOREIGN KEY (`angazman_status`) REFERENCES `angazman_status` (`id`),
  CONSTRAINT `angazman_ibfk_8` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`),
  CONSTRAINT `angazman_ibfk_9` FOREIGN KEY (`akademska_godina`) REFERENCES `akademska_godina` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `angazman`
--

LOCK TABLES `angazman` WRITE;
/*!40000 ALTER TABLE `angazman` DISABLE KEYS */;
/*!40000 ALTER TABLE `angazman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `angazman_status`
--

DROP TABLE IF EXISTS `angazman_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `angazman_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `angazman_status`
--

LOCK TABLES `angazman_status` WRITE;
/*!40000 ALTER TABLE `angazman_status` DISABLE KEYS */;
INSERT INTO `angazman_status` VALUES (1,'odgovorni nastavnik'),(2,'asistent'),(3,'demonstrator'),(4,'predavač - istaknuti stručnjak iz prakse'),(5,'asistent - istaknuti stručnjak iz prakse'),(6,'profesor emeritus');
/*!40000 ALTER TABLE `angazman_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anketa_anketa`
--

DROP TABLE IF EXISTS `anketa_anketa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anketa_anketa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum_otvaranja` datetime DEFAULT NULL,
  `datum_zatvaranja` datetime DEFAULT NULL,
  `naziv` char(255) COLLATE utf8_slovenian_ci NOT NULL,
  `opis` text COLLATE utf8_slovenian_ci,
  `aktivna` tinyint(1) DEFAULT '0',
  `editable` tinyint(1) DEFAULT '1',
  `akademska_godina` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `akademska_godina` (`akademska_godina`),
  CONSTRAINT `anketa_anketa_ibfk_1` FOREIGN KEY (`akademska_godina`) REFERENCES `akademska_godina` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anketa_anketa`
--

LOCK TABLES `anketa_anketa` WRITE;
/*!40000 ALTER TABLE `anketa_anketa` DISABLE KEYS */;
/*!40000 ALTER TABLE `anketa_anketa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anketa_izbori_pitanja`
--

DROP TABLE IF EXISTS `anketa_izbori_pitanja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anketa_izbori_pitanja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pitanje` int(11) NOT NULL,
  `izbor` text COLLATE utf8_slovenian_ci NOT NULL,
  `dopisani_odgovor` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pitanje` (`pitanje`),
  CONSTRAINT `anketa_izbori_pitanja_ibfk_1` FOREIGN KEY (`pitanje`) REFERENCES `anketa_pitanje` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anketa_izbori_pitanja`
--

LOCK TABLES `anketa_izbori_pitanja` WRITE;
/*!40000 ALTER TABLE `anketa_izbori_pitanja` DISABLE KEYS */;
/*!40000 ALTER TABLE `anketa_izbori_pitanja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anketa_odgovor_dopisani`
--

DROP TABLE IF EXISTS `anketa_odgovor_dopisani`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anketa_odgovor_dopisani` (
  `rezultat` int(11) NOT NULL,
  `pitanje` int(11) NOT NULL,
  `odgovor` text COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`rezultat`,`pitanje`),
  KEY `pitanje` (`pitanje`),
  CONSTRAINT `anketa_odgovor_dopisani_ibfk_1` FOREIGN KEY (`rezultat`) REFERENCES `anketa_rezultat` (`id`),
  CONSTRAINT `anketa_odgovor_dopisani_ibfk_2` FOREIGN KEY (`pitanje`) REFERENCES `anketa_pitanje` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anketa_odgovor_dopisani`
--

LOCK TABLES `anketa_odgovor_dopisani` WRITE;
/*!40000 ALTER TABLE `anketa_odgovor_dopisani` DISABLE KEYS */;
/*!40000 ALTER TABLE `anketa_odgovor_dopisani` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anketa_odgovor_izbori`
--

DROP TABLE IF EXISTS `anketa_odgovor_izbori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anketa_odgovor_izbori` (
  `rezultat` int(11) NOT NULL,
  `pitanje` int(11) NOT NULL,
  `izbor_id` int(11) NOT NULL,
  PRIMARY KEY (`rezultat`,`pitanje`,`izbor_id`),
  KEY `pitanje` (`pitanje`),
  CONSTRAINT `anketa_odgovor_izbori_ibfk_1` FOREIGN KEY (`pitanje`) REFERENCES `anketa_pitanje` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anketa_odgovor_izbori`
--

LOCK TABLES `anketa_odgovor_izbori` WRITE;
/*!40000 ALTER TABLE `anketa_odgovor_izbori` DISABLE KEYS */;
/*!40000 ALTER TABLE `anketa_odgovor_izbori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anketa_odgovor_rank`
--

DROP TABLE IF EXISTS `anketa_odgovor_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anketa_odgovor_rank` (
  `rezultat` int(11) NOT NULL,
  `pitanje` int(11) NOT NULL,
  `izbor_id` int(11) NOT NULL,
  PRIMARY KEY (`rezultat`,`pitanje`,`izbor_id`),
  KEY `rezultat` (`rezultat`),
  KEY `pitanje` (`pitanje`),
  CONSTRAINT `anketa_odgovor_rank_ibfk_2` FOREIGN KEY (`rezultat`) REFERENCES `anketa_rezultat` (`id`),
  CONSTRAINT `anketa_odgovor_rank_ibfk_3` FOREIGN KEY (`pitanje`) REFERENCES `anketa_pitanje` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anketa_odgovor_rank`
--

LOCK TABLES `anketa_odgovor_rank` WRITE;
/*!40000 ALTER TABLE `anketa_odgovor_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `anketa_odgovor_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anketa_odgovor_text`
--

DROP TABLE IF EXISTS `anketa_odgovor_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anketa_odgovor_text` (
  `rezultat` int(11) NOT NULL,
  `pitanje` int(11) NOT NULL,
  `odgovor` text COLLATE utf8_slovenian_ci,
  PRIMARY KEY (`rezultat`,`pitanje`),
  KEY `pitanje` (`pitanje`),
  CONSTRAINT `anketa_odgovor_text_ibfk_2` FOREIGN KEY (`rezultat`) REFERENCES `anketa_rezultat` (`id`),
  CONSTRAINT `anketa_odgovor_text_ibfk_3` FOREIGN KEY (`pitanje`) REFERENCES `anketa_pitanje` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anketa_odgovor_text`
--

LOCK TABLES `anketa_odgovor_text` WRITE;
/*!40000 ALTER TABLE `anketa_odgovor_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `anketa_odgovor_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anketa_pitanje`
--

DROP TABLE IF EXISTS `anketa_pitanje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anketa_pitanje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anketa` int(11) NOT NULL DEFAULT '0',
  `tip_pitanja` int(11) NOT NULL,
  `tekst` text COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `anketa` (`anketa`),
  KEY `tip_pitanja` (`tip_pitanja`),
  CONSTRAINT `anketa_pitanje_ibfk_1` FOREIGN KEY (`anketa`) REFERENCES `anketa_anketa` (`id`),
  CONSTRAINT `anketa_pitanje_ibfk_2` FOREIGN KEY (`tip_pitanja`) REFERENCES `anketa_tip_pitanja` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anketa_pitanje`
--

LOCK TABLES `anketa_pitanje` WRITE;
/*!40000 ALTER TABLE `anketa_pitanje` DISABLE KEYS */;
/*!40000 ALTER TABLE `anketa_pitanje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anketa_predmet`
--

DROP TABLE IF EXISTS `anketa_predmet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anketa_predmet` (
  `anketa` int(11) NOT NULL,
  `predmet` int(11) DEFAULT NULL,
  `akademska_godina` int(11) NOT NULL,
  `semestar` int(11) NOT NULL,
  `aktivna` tinyint(1) NOT NULL,
  KEY `predmet` (`predmet`),
  KEY `anketa` (`anketa`),
  KEY `akademska_godina` (`akademska_godina`),
  CONSTRAINT `anketa_predmet_ibfk_1` FOREIGN KEY (`anketa`) REFERENCES `anketa_anketa` (`id`),
  CONSTRAINT `anketa_predmet_ibfk_2` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`),
  CONSTRAINT `anketa_predmet_ibfk_3` FOREIGN KEY (`akademska_godina`) REFERENCES `akademska_godina` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anketa_predmet`
--

LOCK TABLES `anketa_predmet` WRITE;
/*!40000 ALTER TABLE `anketa_predmet` DISABLE KEYS */;
/*!40000 ALTER TABLE `anketa_predmet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anketa_rezultat`
--

DROP TABLE IF EXISTS `anketa_rezultat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anketa_rezultat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anketa` int(11) NOT NULL,
  `zavrsena` enum('Y','N') COLLATE utf8_slovenian_ci DEFAULT 'N',
  `predmet` int(11) DEFAULT NULL,
  `unique_id` varchar(50) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `akademska_godina` int(10) NOT NULL,
  `studij` int(11) NOT NULL,
  `semestar` int(11) NOT NULL,
  `student` int(11) DEFAULT NULL,
  `labgrupa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `unique_id` (`unique_id`),
  KEY `akademska_godina` (`akademska_godina`),
  KEY `studij` (`studij`),
  KEY `student` (`student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anketa_rezultat`
--

LOCK TABLES `anketa_rezultat` WRITE;
/*!40000 ALTER TABLE `anketa_rezultat` DISABLE KEYS */;
/*!40000 ALTER TABLE `anketa_rezultat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anketa_student_zavrsio`
--

DROP TABLE IF EXISTS `anketa_student_zavrsio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anketa_student_zavrsio` (
  `student` int(11) NOT NULL,
  `predmet` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `anketa` int(11) NOT NULL,
  `zavrsena` enum('Y','N') COLLATE utf8_slovenian_ci NOT NULL DEFAULT 'N',
  `anketa_rezultat` int(11) NOT NULL,
  PRIMARY KEY (`student`,`predmet`,`akademska_godina`,`anketa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anketa_student_zavrsio`
--

LOCK TABLES `anketa_student_zavrsio` WRITE;
/*!40000 ALTER TABLE `anketa_student_zavrsio` DISABLE KEYS */;
/*!40000 ALTER TABLE `anketa_student_zavrsio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anketa_tip_pitanja`
--

DROP TABLE IF EXISTS `anketa_tip_pitanja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anketa_tip_pitanja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tip` char(32) COLLATE utf8_slovenian_ci NOT NULL,
  `postoji_izbor` enum('Y','N') COLLATE utf8_slovenian_ci NOT NULL,
  `tabela_odgovora` char(32) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anketa_tip_pitanja`
--

LOCK TABLES `anketa_tip_pitanja` WRITE;
/*!40000 ALTER TABLE `anketa_tip_pitanja` DISABLE KEYS */;
INSERT INTO `anketa_tip_pitanja` VALUES (1,'Ocjena (skala 1..5)','Y','odgovor_rank'),(2,'Komentar','N','odgovor_text'),(3,'Izbor (pojedinačni)','Y','odgovor_izbor'),(4,'Izbor (višestruki)','Y','odgovor_izbor'),(5,'Naslov','N',''),(6,'Podnaslov','N','');
/*!40000 ALTER TABLE `anketa_tip_pitanja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth` (
  `id` int(11) NOT NULL DEFAULT '0',
  `login` varchar(50) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `password` varchar(20) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `external_id` varchar(50) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  `posljednji_pristup` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`,`login`),
  CONSTRAINT `auth_ibfk_1` FOREIGN KEY (`id`) REFERENCES `osoba` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autotest`
--

DROP TABLE IF EXISTS `autotest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autotest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zadaca` int(11) NOT NULL,
  `zadatak` int(11) NOT NULL,
  `kod` text COLLATE utf8_slovenian_ci NOT NULL,
  `rezultat` text COLLATE utf8_slovenian_ci NOT NULL,
  `alt_rezultat` text COLLATE utf8_slovenian_ci NOT NULL,
  `fuzzy` tinyint(1) NOT NULL DEFAULT '0',
  `global_scope` text COLLATE utf8_slovenian_ci NOT NULL,
  `pozicija_globala` enum('prije_svega','prije_maina') COLLATE utf8_slovenian_ci NOT NULL DEFAULT 'prije_maina',
  `stdin` text COLLATE utf8_slovenian_ci NOT NULL,
  `partial_match` tinyint(4) NOT NULL DEFAULT '0',
  `aktivan` tinyint(1) NOT NULL DEFAULT '1',
  `sakriven` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `zadaca` (`zadaca`),
  KEY `zadaca_2` (`zadaca`,`zadatak`),
  CONSTRAINT `autotest_ibfk_1` FOREIGN KEY (`zadaca`) REFERENCES `zadaca` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autotest`
--

LOCK TABLES `autotest` WRITE;
/*!40000 ALTER TABLE `autotest` DISABLE KEYS */;
/*!40000 ALTER TABLE `autotest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autotest_replace`
--

DROP TABLE IF EXISTS `autotest_replace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autotest_replace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zadaca` int(11) NOT NULL,
  `zadatak` int(11) NOT NULL,
  `tip` enum('funkcija','klasa','metoda') COLLATE utf8_slovenian_ci NOT NULL,
  `specifikacija` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `zamijeni` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zadaca` (`zadaca`),
  CONSTRAINT `autotest_replace_ibfk_1` FOREIGN KEY (`zadaca`) REFERENCES `zadaca` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autotest_replace`
--

LOCK TABLES `autotest_replace` WRITE;
/*!40000 ALTER TABLE `autotest_replace` DISABLE KEYS */;
/*!40000 ALTER TABLE `autotest_replace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autotest_rezultat`
--

DROP TABLE IF EXISTS `autotest_rezultat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autotest_rezultat` (
  `autotest` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `izlaz_programa` text COLLATE utf8_slovenian_ci NOT NULL,
  `status` enum('ok','wrong','error','no_func','exec_fail','too_long','crash','find_fail','oob','uninit','memleak','invalid_free','mismatched_free') COLLATE utf8_slovenian_ci NOT NULL DEFAULT 'error',
  `nalaz` text COLLATE utf8_slovenian_ci NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trajanje` int(11) NOT NULL DEFAULT '0',
  `testni_sistem` text COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`autotest`,`student`),
  KEY `student` (`student`),
  CONSTRAINT `autotest_rezultat_ibfk_1` FOREIGN KEY (`student`) REFERENCES `osoba` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autotest_rezultat`
--

LOCK TABLES `autotest_rezultat` WRITE;
/*!40000 ALTER TABLE `autotest_rezultat` DISABLE KEYS */;
/*!40000 ALTER TABLE `autotest_rezultat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_post`
--

DROP TABLE IF EXISTS `bb_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_post` (
  `id` int(11) NOT NULL,
  `naslov` varchar(300) COLLATE utf8_slovenian_ci NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `osoba` int(11) NOT NULL,
  `tema` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `osoba` (`osoba`),
  KEY `tema` (`tema`),
  CONSTRAINT `bb_post_ibfk_1` FOREIGN KEY (`osoba`) REFERENCES `osoba` (`id`),
  CONSTRAINT `bb_post_ibfk_2` FOREIGN KEY (`tema`) REFERENCES `bb_tema` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_post`
--

LOCK TABLES `bb_post` WRITE;
/*!40000 ALTER TABLE `bb_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_post_text`
--

DROP TABLE IF EXISTS `bb_post_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_post_text` (
  `post` int(11) NOT NULL,
  `tekst` text COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`post`),
  CONSTRAINT `bb_post_text_ibfk_1` FOREIGN KEY (`post`) REFERENCES `bb_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_post_text`
--

LOCK TABLES `bb_post_text` WRITE;
/*!40000 ALTER TABLE `bb_post_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_post_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_tema`
--

DROP TABLE IF EXISTS `bb_tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bb_tema` (
  `id` int(11) NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prvi_post` int(11) NOT NULL DEFAULT '0',
  `zadnji_post` int(11) NOT NULL DEFAULT '0',
  `pregleda` int(11) unsigned NOT NULL DEFAULT '0',
  `osoba` int(11) NOT NULL,
  `projekat` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prvi_post` (`prvi_post`),
  KEY `zadnji_post` (`zadnji_post`),
  KEY `osoba` (`osoba`),
  KEY `projekat` (`projekat`),
  CONSTRAINT `bb_tema_ibfk_1` FOREIGN KEY (`prvi_post`) REFERENCES `bb_post` (`id`),
  CONSTRAINT `bb_tema_ibfk_2` FOREIGN KEY (`zadnji_post`) REFERENCES `bb_post` (`id`),
  CONSTRAINT `bb_tema_ibfk_3` FOREIGN KEY (`osoba`) REFERENCES `osoba` (`id`),
  CONSTRAINT `bb_tema_ibfk_4` FOREIGN KEY (`projekat`) REFERENCES `projekat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_tema`
--

LOCK TABLES `bb_tema` WRITE;
/*!40000 ALTER TABLE `bb_tema` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bl_clanak`
--

DROP TABLE IF EXISTS `bl_clanak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bl_clanak` (
  `id` int(11) NOT NULL,
  `naslov` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `tekst` text COLLATE utf8_slovenian_ci NOT NULL,
  `slika` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `osoba` int(11) NOT NULL,
  `projekat` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `osoba` (`osoba`),
  KEY `projekat` (`projekat`),
  CONSTRAINT `bl_clanak_ibfk_1` FOREIGN KEY (`osoba`) REFERENCES `osoba` (`id`),
  CONSTRAINT `bl_clanak_ibfk_2` FOREIGN KEY (`projekat`) REFERENCES `projekat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bl_clanak`
--

LOCK TABLES `bl_clanak` WRITE;
/*!40000 ALTER TABLE `bl_clanak` DISABLE KEYS */;
/*!40000 ALTER TABLE `bl_clanak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildservice_tracking`
--

DROP TABLE IF EXISTS `buildservice_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buildservice_tracking` (
  `zadatak` int(11) NOT NULL,
  `buildhost` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`zadatak`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildservice_tracking`
--

LOCK TABLES `buildservice_tracking` WRITE;
/*!40000 ALTER TABLE `buildservice_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `buildservice_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cas`
--

DROP TABLE IF EXISTS `cas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum` date NOT NULL DEFAULT '0000-00-00',
  `vrijeme` time NOT NULL DEFAULT '00:00:00',
  `labgrupa` int(11) NOT NULL,
  `nastavnik` int(11) NOT NULL,
  `komponenta` int(11) NOT NULL,
  `kviz` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `labgrupa` (`labgrupa`),
  KEY `nastavnik` (`nastavnik`),
  KEY `komponenta` (`komponenta`),
  CONSTRAINT `cas_ibfk_6` FOREIGN KEY (`labgrupa`) REFERENCES `labgrupa` (`id`),
  CONSTRAINT `cas_ibfk_7` FOREIGN KEY (`nastavnik`) REFERENCES `osoba` (`id`),
  CONSTRAINT `cas_ibfk_8` FOREIGN KEY (`komponenta`) REFERENCES `komponenta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cas`
--

LOCK TABLES `cas` WRITE;
/*!40000 ALTER TABLE `cas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron`
--

DROP TABLE IF EXISTS `cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `aktivan` tinyint(1) NOT NULL,
  `godina` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `mjesec` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `dan` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `sat` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `minuta` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `sekunda` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `zadnje_izvrsenje` datetime NOT NULL,
  `sljedece_izvrsenje` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron`
--

LOCK TABLES `cron` WRITE;
/*!40000 ALTER TABLE `cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_rezultat`
--

DROP TABLE IF EXISTS `cron_rezultat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_rezultat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cron` int(11) NOT NULL,
  `izlaz` mediumtext COLLATE utf8_slovenian_ci NOT NULL,
  `return_value` int(11) NOT NULL,
  `vrijeme` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cron` (`cron`),
  CONSTRAINT `cron_rezultat_ibfk_1` FOREIGN KEY (`cron`) REFERENCES `cron` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_rezultat`
--

LOCK TABLES `cron_rezultat` WRITE;
/*!40000 ALTER TABLE `cron_rezultat` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_rezultat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drzava`
--

DROP TABLE IF EXISTS `drzava`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drzava` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drzava`
--

LOCK TABLES `drzava` WRITE;
/*!40000 ALTER TABLE `drzava` DISABLE KEYS */;
INSERT INTO `drzava` VALUES (1,'Bosna i Hercegovina'),(2,'Srbija'),(3,'Hrvatska'),(4,'Crna Gora'),(5,'Slovenija'),(6,'Kosovo'),(7,'Turska'),(8,'Njemačka'),(9,'Makedonija'),(10,'Iran'),(11,'Libija'),(12,'Švedska'),(13,'Austrija'),(14,'SAD'),(15,'Italija'),(16,'Australija'),(17,'Velika Britanija'),(18,'Malezija'),(19,'Holandija'),(20,'Švicarska'),(21,'Tajland'),(22,'Češka'),(23,'Slovačka'),(24,'Norveška'),(25,'Južna Koreja'),(26,'Jordan'),(27,'Francuska'),(28,'Egipat'),(29,'Rusija'),(30,'Irak'),(31,'Kuvajt');
/*!40000 ALTER TABLE `drzava` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ekstenzije`
--

DROP TABLE IF EXISTS `ekstenzije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ekstenzije` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ekstenzije`
--

LOCK TABLES `ekstenzije` WRITE;
/*!40000 ALTER TABLE `ekstenzije` DISABLE KEYS */;
/*!40000 ALTER TABLE `ekstenzije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `osoba` int(11) NOT NULL,
  `adresa` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `sistemska` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `osoba` (`osoba`),
  CONSTRAINT `email_ibfk_1` FOREIGN KEY (`osoba`) REFERENCES `osoba` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institucija`
--

DROP TABLE IF EXISTS `institucija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institucija` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `roditelj` int(11) NOT NULL DEFAULT '0',
  `kratki_naziv` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `tipinstitucije` int(11) NOT NULL,
  `dekan` int(11) NOT NULL,
  `broj_protokola` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institucija`
--

LOCK TABLES `institucija` WRITE;
/*!40000 ALTER TABLE `institucija` DISABLE KEYS */;
INSERT INTO `institucija` VALUES (1,'Elektrotehnički fakultet Sarajevo',0,'ETF',1,3010,'06-4-1-'),(2,'Odsjek za računarstvo i informatiku',1,'RI',0,0,''),(3,'Odsjek za automatiku i elektroniku',1,'AE',0,0,''),(4,'Odsjek za elektroenergetiku',1,'EE',0,0,''),(5,'Odsjek za telekomunikacije',1,'TK',0,0,'');
/*!40000 ALTER TABLE `institucija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ispit`
--

DROP TABLE IF EXISTS `ispit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ispit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `predmet` int(11) NOT NULL DEFAULT '0',
  `akademska_godina` int(11) NOT NULL DEFAULT '0',
  `datum` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `predmet` (`predmet`),
  KEY `akademska_godina` (`akademska_godina`),
  CONSTRAINT `ispit_ibfk_3` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`),
  CONSTRAINT `ispit_ibfk_4` FOREIGN KEY (`akademska_godina`) REFERENCES `akademska_godina` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ispit`
--

LOCK TABLES `ispit` WRITE;
/*!40000 ALTER TABLE `ispit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ispit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ispit_termin`
--

DROP TABLE IF EXISTS `ispit_termin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ispit_termin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datumvrijeme` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `maxstudenata` int(11) NOT NULL,
  `deadline` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ispit` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ispit` (`ispit`),
  CONSTRAINT `ispit_termin_ibfk_1` FOREIGN KEY (`ispit`) REFERENCES `ispit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ispit_termin`
--

LOCK TABLES `ispit_termin` WRITE;
/*!40000 ALTER TABLE `ispit_termin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ispit_termin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ispitocjene`
--

DROP TABLE IF EXISTS `ispitocjene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ispitocjene` (
  `ispit` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `ocjena` float NOT NULL,
  PRIMARY KEY (`ispit`,`student`),
  KEY `student` (`student`),
  CONSTRAINT `ispitocjene_ibfk_1` FOREIGN KEY (`ispit`) REFERENCES `ispit` (`id`),
  CONSTRAINT `ispitocjene_ibfk_2` FOREIGN KEY (`student`) REFERENCES `osoba` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ispitocjene`
--

LOCK TABLES `ispitocjene` WRITE;
/*!40000 ALTER TABLE `ispitocjene` DISABLE KEYS */;
/*!40000 ALTER TABLE `ispitocjene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `izbor`
--

DROP TABLE IF EXISTS `izbor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `izbor` (
  `osoba` int(11) NOT NULL,
  `zvanje` int(11) NOT NULL,
  `datum_izbora` date NOT NULL,
  `datum_isteka` date NOT NULL,
  `oblast` int(11) NOT NULL,
  `podoblast` int(11) NOT NULL,
  `dopunski` tinyint(1) NOT NULL,
  `druga_institucija` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `izbor`
--

LOCK TABLES `izbor` WRITE;
/*!40000 ALTER TABLE `izbor` DISABLE KEYS */;
/*!40000 ALTER TABLE `izbor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `izborni_slot`
--

DROP TABLE IF EXISTS `izborni_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `izborni_slot` (
  `id` int(11) NOT NULL,
  `predmet` int(11) NOT NULL,
  PRIMARY KEY (`id`,`predmet`),
  KEY `predmet` (`predmet`),
  CONSTRAINT `izborni_slot_ibfk_1` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `izborni_slot`
--

LOCK TABLES `izborni_slot` WRITE;
/*!40000 ALTER TABLE `izborni_slot` DISABLE KEYS */;
/*!40000 ALTER TABLE `izborni_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kandidati`
--

DROP TABLE IF EXISTS `kandidati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kandidati` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(64) COLLATE utf8_slovenian_ci NOT NULL,
  `prezime` varchar(64) COLLATE utf8_slovenian_ci NOT NULL,
  `ime_oca` varchar(64) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `prezime_oca` varchar(64) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `ime_majke` varchar(64) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `prezime_majke` varchar(64) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `spol` enum('M','Z','') COLLATE utf8_slovenian_ci DEFAULT NULL,
  `datum_rodjenja` date NOT NULL,
  `mjesto_rodjenja` int(11) NOT NULL,
  `nacionalnost` int(11) NOT NULL,
  `drzavljanstvo` int(11) NOT NULL,
  `boracka_kategorija` int(11) DEFAULT NULL,
  `boracka_kategorija_br_rjesenja` varchar(128) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `boracka_kategorija_datum_rjesenja` date DEFAULT NULL,
  `boracka_kategorija_organ_izdavanja` varchar(256) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `jmbg` varchar(64) COLLATE utf8_slovenian_ci NOT NULL,
  `ulica_prebivalista` varchar(100) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `mjesto_prebivalista` varchar(128) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `telefon` varchar(15) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `kanton` int(11) DEFAULT NULL,
  `studijski_program` int(11) NOT NULL,
  `naziv_skole` varchar(128) COLLATE utf8_slovenian_ci NOT NULL,
  `opcina_skole` int(11) NOT NULL,
  `strana_skola` tinyint(1) DEFAULT '0',
  `skolska_godina_zavrsetka` int(11) NOT NULL,
  `opci_uspjeh` float NOT NULL,
  `znacajni_predmeti` float NOT NULL,
  `datum_kreiranja` datetime NOT NULL,
  `email` varchar(128) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `prijava_potvrdjena` tinyint(1) DEFAULT '0',
  `podaci_uvezeni` tinyint(1) DEFAULT '0',
  `osoba` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mjesto_rodjenja` (`mjesto_rodjenja`),
  KEY `nacionalnost` (`nacionalnost`),
  KEY `drzavljanstvo` (`drzavljanstvo`),
  KEY `boracka_kategorija` (`boracka_kategorija`),
  KEY `opcina_skole` (`opcina_skole`),
  KEY `studijski_program` (`studijski_program`),
  KEY `skolska_godina_zavrsetka` (`skolska_godina_zavrsetka`),
  CONSTRAINT `kandidati_ibfk_1` FOREIGN KEY (`mjesto_rodjenja`) REFERENCES `kandidati_mjesto` (`id`),
  CONSTRAINT `kandidati_ibfk_2` FOREIGN KEY (`nacionalnost`) REFERENCES `nacionalnost` (`id`),
  CONSTRAINT `kandidati_ibfk_3` FOREIGN KEY (`drzavljanstvo`) REFERENCES `drzava` (`id`),
  CONSTRAINT `kandidati_ibfk_4` FOREIGN KEY (`boracka_kategorija`) REFERENCES `posebne_kategorije` (`id`),
  CONSTRAINT `kandidati_ibfk_5` FOREIGN KEY (`opcina_skole`) REFERENCES `opcina` (`id`),
  CONSTRAINT `kandidati_ibfk_6` FOREIGN KEY (`studijski_program`) REFERENCES `studij` (`id`),
  CONSTRAINT `kandidati_ibfk_7` FOREIGN KEY (`skolska_godina_zavrsetka`) REFERENCES `akademska_godina` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kandidati`
--

LOCK TABLES `kandidati` WRITE;
/*!40000 ALTER TABLE `kandidati` DISABLE KEYS */;
/*!40000 ALTER TABLE `kandidati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kandidati_mjesto`
--

DROP TABLE IF EXISTS `kandidati_mjesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kandidati_mjesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(40) COLLATE utf8_slovenian_ci NOT NULL,
  `opcina` int(11) NOT NULL,
  `drzava` int(11) NOT NULL,
  `opcina_van_bih` varchar(40) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `opcina` (`opcina`),
  KEY `drzava` (`drzava`),
  CONSTRAINT `kandidati_mjesto_ibfk_1` FOREIGN KEY (`opcina`) REFERENCES `opcina` (`id`),
  CONSTRAINT `kandidati_mjesto_ibfk_2` FOREIGN KEY (`drzava`) REFERENCES `drzava` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kandidati_mjesto`
--

LOCK TABLES `kandidati_mjesto` WRITE;
/*!40000 ALTER TABLE `kandidati_mjesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `kandidati_mjesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kandidati_ocjene`
--

DROP TABLE IF EXISTS `kandidati_ocjene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kandidati_ocjene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kandidat_id` int(11) NOT NULL,
  `naziv_predmeta` varchar(128) COLLATE utf8_slovenian_ci NOT NULL,
  `prvi_razred` tinyint(4) NOT NULL,
  `drugi_razred` tinyint(4) NOT NULL,
  `treci_razred` tinyint(4) NOT NULL,
  `cetvrti_razred` tinyint(4) NOT NULL,
  `kljucni_predmet` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `kandidat_id` (`kandidat_id`),
  CONSTRAINT `kandidati_ocjene_ibfk_1` FOREIGN KEY (`kandidat_id`) REFERENCES `kandidati` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kandidati_ocjene`
--

LOCK TABLES `kandidati_ocjene` WRITE;
/*!40000 ALTER TABLE `kandidati_ocjene` DISABLE KEYS */;
/*!40000 ALTER TABLE `kandidati_ocjene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kanton`
--

DROP TABLE IF EXISTS `kanton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kanton` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `kratki_naziv` varchar(5) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kanton`
--

LOCK TABLES `kanton` WRITE;
/*!40000 ALTER TABLE `kanton` DISABLE KEYS */;
INSERT INTO `kanton` VALUES (1,'Bosansko-Podrinjski kanton','BPK'),(2,'Hercegovačko-Neretvanski kanton','HNK'),(3,'Livanjski kanton','LK'),(4,'Posavski kanton','PK'),(5,'Sarajevski kanton','SK'),(6,'Srednjobosanski kanton','SBK'),(7,'Tuzlanski kanton','TK'),(8,'Unsko-Sanski kanton','USK'),(9,'Zapadno-Hercegovački kanton','ZHK'),(10,'Zeničko-Dobojski kanton','ZDK'),(11,'Republika Srpska','RS'),(12,'Distrikt Brčko','DB'),(13,'Strani državljanin','SD');
/*!40000 ALTER TABLE `kanton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kolizija`
--

DROP TABLE IF EXISTS `kolizija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kolizija` (
  `student` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `semestar` int(11) NOT NULL,
  `predmet` int(11) NOT NULL,
  KEY `student` (`student`,`akademska_godina`),
  KEY `predmet` (`predmet`),
  KEY `akademska_godina` (`akademska_godina`),
  CONSTRAINT `kolizija_ibfk_1` FOREIGN KEY (`student`) REFERENCES `osoba` (`id`),
  CONSTRAINT `kolizija_ibfk_2` FOREIGN KEY (`akademska_godina`) REFERENCES `akademska_godina` (`id`),
  CONSTRAINT `kolizija_ibfk_3` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kolizija`
--

LOCK TABLES `kolizija` WRITE;
/*!40000 ALTER TABLE `kolizija` DISABLE KEYS */;
/*!40000 ALTER TABLE `kolizija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `komentar`
--

DROP TABLE IF EXISTS `komentar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `komentar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(11) NOT NULL,
  `nastavnik` int(11) NOT NULL,
  `labgrupa` int(11) NOT NULL,
  `datum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `komentar` text COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student` (`student`),
  KEY `nastavnik` (`nastavnik`),
  KEY `labgrupa` (`labgrupa`),
  CONSTRAINT `komentar_ibfk_2` FOREIGN KEY (`student`) REFERENCES `osoba` (`id`),
  CONSTRAINT `komentar_ibfk_3` FOREIGN KEY (`nastavnik`) REFERENCES `osoba` (`id`),
  CONSTRAINT `komentar_ibfk_4` FOREIGN KEY (`labgrupa`) REFERENCES `labgrupa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komentar`
--

LOCK TABLES `komentar` WRITE;
/*!40000 ALTER TABLE `komentar` DISABLE KEYS */;
/*!40000 ALTER TABLE `komentar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `komponenta`
--

DROP TABLE IF EXISTS `komponenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `komponenta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(40) COLLATE utf8_slovenian_ci NOT NULL,
  `gui_naziv` varchar(20) COLLATE utf8_slovenian_ci NOT NULL,
  `kratki_gui_naziv` varchar(20) COLLATE utf8_slovenian_ci NOT NULL,
  `tipkomponente` int(11) NOT NULL,
  `maxbodova` double NOT NULL,
  `prolaz` double NOT NULL,
  `opcija` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `uslov` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tipkomponente` (`tipkomponente`),
  CONSTRAINT `komponenta_ibfk_1` FOREIGN KEY (`tipkomponente`) REFERENCES `tipkomponente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komponenta`
--

LOCK TABLES `komponenta` WRITE;
/*!40000 ALTER TABLE `komponenta` DISABLE KEYS */;
INSERT INTO `komponenta` VALUES (1,'I parcijalni (ETF BSc)','I parcijalni','I parc',1,20,10,'',0),(2,'II parcijalni (ETF BSc)','II parcijalni','II parc',1,20,10,'',0),(3,'Integralni (ETF BSc)','Integralni','Int',2,40,20,'1+2',0),(4,'Usmeni (ETF BSc)','Usmeni','Usmeni',1,40,0,'',0),(5,'Prisustvo (ETF BSc)','Prisustvo','Prisustvo',3,10,0,'3',0),(6,'Zadace (ETF BSc)','Zadace','Zadace',4,10,0,'',0);
/*!40000 ALTER TABLE `komponenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `komponentebodovi`
--

DROP TABLE IF EXISTS `komponentebodovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `komponentebodovi` (
  `student` int(11) NOT NULL,
  `predmet` int(11) NOT NULL,
  `komponenta` int(11) NOT NULL,
  `bodovi` double NOT NULL,
  PRIMARY KEY (`student`,`predmet`,`komponenta`),
  KEY `predmet` (`predmet`),
  KEY `komponenta` (`komponenta`),
  CONSTRAINT `komponentebodovi_ibfk_1` FOREIGN KEY (`student`) REFERENCES `osoba` (`id`),
  CONSTRAINT `komponentebodovi_ibfk_2` FOREIGN KEY (`predmet`) REFERENCES `ponudakursa` (`id`),
  CONSTRAINT `komponentebodovi_ibfk_3` FOREIGN KEY (`komponenta`) REFERENCES `komponenta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komponentebodovi`
--

LOCK TABLES `komponentebodovi` WRITE;
/*!40000 ALTER TABLE `komponentebodovi` DISABLE KEYS */;
/*!40000 ALTER TABLE `komponentebodovi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konacna_ocjena`
--

DROP TABLE IF EXISTS `konacna_ocjena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konacna_ocjena` (
  `student` int(11) NOT NULL,
  `predmet` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `ocjena` int(3) NOT NULL,
  `datum` datetime NOT NULL,
  PRIMARY KEY (`student`,`predmet`),
  KEY `akademska_godina` (`akademska_godina`),
  KEY `predmet` (`predmet`),
  CONSTRAINT `konacna_ocjena_ibfk_1` FOREIGN KEY (`student`) REFERENCES `osoba` (`id`),
  CONSTRAINT `konacna_ocjena_ibfk_2` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`),
  CONSTRAINT `konacna_ocjena_ibfk_3` FOREIGN KEY (`akademska_godina`) REFERENCES `akademska_godina` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konacna_ocjena`
--

LOCK TABLES `konacna_ocjena` WRITE;
/*!40000 ALTER TABLE `konacna_ocjena` DISABLE KEYS */;
INSERT INTO `konacna_ocjena` VALUES (1923,100,5,10,'2017-05-23 00:00:00'),(1923,107,5,7,'2017-02-15 00:00:00'),(1923,113,7,9,'2017-04-26 00:00:00'),(1923,120,8,7,'2017-07-02 00:00:00'),(1923,127,9,10,'2017-05-28 00:00:00'),(1923,133,8,7,'2017-04-20 00:00:00'),(1923,140,8,8,'2017-05-16 00:00:00'),(1923,147,4,6,'2017-08-26 00:00:00'),(1923,153,4,8,'2017-04-16 00:00:00'),(1923,160,2,10,'2017-06-24 00:00:00'),(1923,167,4,6,'2017-05-30 00:00:00'),(1923,173,9,9,'2017-03-03 00:00:00'),(1923,180,3,7,'2017-09-14 00:00:00'),(1923,187,7,7,'2017-07-17 00:00:00'),(1923,193,3,9,'2017-04-03 00:00:00'),(1923,200,6,9,'2017-05-19 00:00:00'),(1924,7,1,10,'2017-06-01 00:00:00'),(1924,14,3,7,'2017-09-20 00:00:00'),(1924,20,3,10,'2017-08-03 00:00:00'),(1924,27,3,7,'2017-05-23 00:00:00'),(1924,34,8,10,'2017-04-15 00:00:00'),(1924,40,8,6,'2017-04-08 00:00:00'),(1924,47,8,10,'2017-03-07 00:00:00'),(1924,53,4,10,'2017-06-29 00:00:00'),(1924,60,5,6,'2017-09-02 00:00:00'),(1924,67,1,6,'2017-06-19 00:00:00'),(1924,73,1,7,'2017-03-20 00:00:00'),(1924,80,1,9,'2017-04-14 00:00:00'),(1924,87,2,6,'2017-04-04 00:00:00'),(1924,93,3,7,'2017-08-21 00:00:00'),(1924,100,2,8,'2017-09-22 00:00:00'),(1924,107,6,9,'2017-09-08 00:00:00'),(1924,113,2,9,'2017-04-11 00:00:00'),(1924,120,1,6,'2017-09-19 00:00:00'),(1924,127,1,10,'2017-05-17 00:00:00'),(1924,133,7,8,'2017-08-23 00:00:00'),(1924,140,7,6,'2017-07-23 00:00:00'),(1924,147,9,8,'2017-09-26 00:00:00'),(1924,153,3,7,'2017-03-17 00:00:00'),(1924,160,6,6,'2017-09-14 00:00:00'),(1924,167,4,10,'2017-04-26 00:00:00'),(1924,173,9,9,'2017-02-24 00:00:00'),(1924,180,7,6,'2017-03-19 00:00:00'),(1924,187,6,10,'2017-09-14 00:00:00'),(1924,193,5,9,'2017-06-17 00:00:00'),(1924,200,1,6,'2017-02-07 00:00:00'),(1925,7,7,6,'2017-05-05 00:00:00'),(1925,14,3,8,'2017-07-15 00:00:00'),(1925,20,3,10,'2017-05-21 00:00:00'),(1925,27,9,7,'2017-06-27 00:00:00'),(1925,34,7,7,'2017-08-19 00:00:00'),(1925,40,6,8,'2017-04-12 00:00:00'),(1925,47,6,8,'2017-04-19 00:00:00'),(1925,53,5,7,'2017-02-26 00:00:00'),(1925,60,5,9,'2017-07-14 00:00:00'),(1925,67,3,6,'2017-02-05 00:00:00'),(1925,73,1,8,'2017-08-08 00:00:00'),(1925,80,4,10,'2017-05-10 00:00:00'),(1925,87,6,10,'2017-02-22 00:00:00'),(1925,93,9,8,'2017-08-12 00:00:00'),(1925,100,3,10,'2017-03-11 00:00:00'),(1925,107,2,7,'2017-09-12 00:00:00'),(1925,113,3,7,'2017-06-15 00:00:00'),(1925,120,3,9,'2017-08-18 00:00:00'),(1925,127,3,8,'2017-05-22 00:00:00'),(1925,133,4,9,'2017-03-23 00:00:00'),(1925,140,4,8,'2017-07-28 00:00:00'),(1925,147,1,10,'2017-02-05 00:00:00'),(1925,153,8,6,'2017-08-28 00:00:00'),(1925,160,8,8,'2017-04-18 00:00:00'),(1925,167,6,9,'2017-05-18 00:00:00'),(1925,173,3,9,'2017-06-21 00:00:00'),(1925,180,4,7,'2017-02-15 00:00:00'),(1925,187,8,8,'2017-04-16 00:00:00'),(1925,193,8,6,'2017-08-21 00:00:00'),(1925,200,2,7,'2017-03-14 00:00:00'),(1926,7,9,6,'2017-08-02 00:00:00'),(1926,14,5,6,'2017-06-01 00:00:00'),(1926,20,1,9,'2017-01-22 00:00:00'),(1926,27,3,10,'2017-09-01 00:00:00'),(1926,34,9,6,'2017-03-17 00:00:00'),(1926,40,4,10,'2017-06-29 00:00:00'),(1926,47,7,8,'2017-03-12 00:00:00'),(1926,53,5,8,'2017-09-23 00:00:00'),(1926,60,9,9,'2017-03-26 00:00:00'),(1926,67,7,7,'2017-09-25 00:00:00'),(1926,73,2,7,'2017-08-22 00:00:00'),(1926,80,7,9,'2017-05-30 00:00:00'),(1926,87,6,9,'2017-06-22 00:00:00'),(1926,93,9,6,'2017-05-23 00:00:00'),(1926,100,2,7,'2017-07-25 00:00:00'),(1926,107,2,8,'2017-04-28 00:00:00'),(1926,113,2,8,'2017-05-06 00:00:00'),(1926,120,5,9,'2017-05-20 00:00:00'),(1926,127,9,9,'2017-02-21 00:00:00'),(1926,133,1,10,'2017-07-21 00:00:00'),(1926,140,7,10,'2017-08-17 00:00:00'),(1926,147,9,9,'2017-05-05 00:00:00'),(1926,153,4,8,'2017-03-30 00:00:00'),(1926,160,7,10,'2017-06-27 00:00:00'),(1926,167,6,10,'2017-05-01 00:00:00'),(1926,173,8,10,'2017-06-29 00:00:00'),(1926,180,5,6,'2017-06-14 00:00:00'),(1926,187,8,7,'2017-09-23 00:00:00'),(1926,193,6,6,'2017-02-12 00:00:00'),(1926,200,2,9,'2017-08-25 00:00:00'),(1927,7,9,8,'2017-06-15 00:00:00'),(1927,14,3,9,'2017-03-24 00:00:00'),(1927,20,3,9,'2017-06-27 00:00:00'),(1927,27,5,9,'2017-02-17 00:00:00'),(1927,34,3,10,'2017-03-25 00:00:00'),(1927,40,9,8,'2017-04-12 00:00:00'),(1927,47,4,8,'2017-03-22 00:00:00'),(1927,54,3,8,'2017-05-04 00:00:00'),(1927,60,6,8,'2017-02-04 00:00:00'),(1927,67,6,10,'2017-03-21 00:00:00'),(1927,73,1,9,'2017-09-11 00:00:00'),(1927,80,9,9,'2017-08-19 00:00:00'),(1927,87,6,10,'2017-03-30 00:00:00'),(1927,93,1,8,'2017-04-25 00:00:00'),(1927,100,2,7,'2017-06-28 00:00:00'),(1927,107,6,9,'2017-03-04 00:00:00'),(1927,113,8,8,'2017-05-01 00:00:00'),(1927,120,2,9,'2017-08-26 00:00:00'),(1927,127,7,7,'2017-08-12 00:00:00'),(1927,133,3,6,'2017-07-10 00:00:00'),(1927,140,2,9,'2017-06-11 00:00:00'),(1927,147,3,6,'2017-03-17 00:00:00'),(1927,153,7,7,'2017-04-10 00:00:00'),(1927,160,7,10,'2017-03-06 00:00:00'),(1927,167,2,8,'2017-05-05 00:00:00'),(1927,173,1,7,'2017-07-20 00:00:00'),(1927,180,7,9,'2017-05-14 00:00:00'),(1927,187,3,9,'2017-04-24 00:00:00'),(1927,193,5,10,'2017-09-10 00:00:00'),(1927,200,7,6,'2017-05-27 00:00:00'),(1928,7,4,6,'2017-05-02 00:00:00'),(1928,14,1,10,'2017-03-12 00:00:00'),(1928,20,1,8,'2017-01-27 00:00:00'),(1928,27,6,8,'2017-06-30 00:00:00'),(1928,34,2,10,'2017-03-07 00:00:00'),(1928,40,9,7,'2017-03-12 00:00:00'),(1928,47,3,6,'2017-04-01 00:00:00'),(1928,54,5,9,'2017-02-11 00:00:00'),(1928,60,2,8,'2017-02-17 00:00:00'),(1928,67,5,9,'2017-05-01 00:00:00'),(1928,73,2,10,'2017-06-25 00:00:00'),(1928,80,2,7,'2017-05-27 00:00:00'),(1928,87,8,6,'2017-04-19 00:00:00'),(1928,93,9,10,'2017-03-13 00:00:00'),(1928,100,7,9,'2017-08-06 00:00:00'),(1928,107,2,10,'2017-09-19 00:00:00'),(1928,113,6,8,'2017-09-04 00:00:00'),(1928,120,2,9,'2017-08-21 00:00:00'),(1928,127,4,6,'2017-07-13 00:00:00'),(1928,133,8,10,'2017-06-14 00:00:00'),(1928,140,5,8,'2017-05-31 00:00:00'),(1928,147,6,10,'2017-04-15 00:00:00'),(1928,153,7,8,'2017-08-02 00:00:00'),(1928,160,3,7,'2017-08-22 00:00:00'),(1928,167,5,9,'2017-09-04 00:00:00'),(1928,173,6,10,'2017-07-29 00:00:00'),(1928,180,1,9,'2017-07-07 00:00:00'),(1928,187,4,9,'2017-09-22 00:00:00'),(1928,193,6,9,'2017-05-23 00:00:00'),(1928,200,3,7,'2017-04-20 00:00:00'),(1929,7,4,8,'2017-08-27 00:00:00'),(1929,14,1,8,'2017-06-27 00:00:00'),(1929,20,3,10,'2017-09-08 00:00:00'),(1929,27,4,10,'2017-04-20 00:00:00'),(1929,34,6,6,'2017-05-07 00:00:00'),(1929,40,9,9,'2017-02-25 00:00:00'),(1929,47,9,9,'2017-05-17 00:00:00'),(1929,54,4,10,'2017-04-21 00:00:00'),(1929,60,9,6,'2017-07-18 00:00:00'),(1929,67,9,10,'2017-04-26 00:00:00'),(1929,73,8,9,'2017-07-09 00:00:00'),(1929,80,9,8,'2017-03-02 00:00:00'),(1929,87,5,9,'2017-08-01 00:00:00'),(1929,93,8,9,'2017-07-28 00:00:00'),(1929,100,8,8,'2017-08-14 00:00:00'),(1929,107,5,9,'2017-05-19 00:00:00'),(1929,113,7,10,'2017-07-16 00:00:00'),(1929,120,9,10,'2017-08-22 00:00:00'),(1929,127,3,9,'2017-02-04 00:00:00'),(1929,133,9,6,'2017-02-12 00:00:00'),(1929,140,1,8,'2017-04-04 00:00:00'),(1929,147,5,10,'2017-05-14 00:00:00'),(1929,153,4,9,'2017-09-10 00:00:00'),(1929,160,1,8,'2017-09-04 00:00:00'),(1929,167,4,7,'2017-08-29 00:00:00'),(1929,173,7,7,'2017-09-03 00:00:00'),(1929,180,5,6,'2017-09-14 00:00:00'),(1929,187,4,6,'2017-02-13 00:00:00'),(1929,193,1,6,'2017-08-04 00:00:00'),(1929,200,3,8,'2017-03-03 00:00:00'),(1930,7,8,8,'2017-06-01 00:00:00'),(1930,14,3,6,'2017-09-08 00:00:00'),(1930,20,2,10,'2017-01-23 00:00:00'),(1930,27,3,7,'2017-08-05 00:00:00'),(1930,34,4,7,'2017-09-01 00:00:00'),(1930,40,3,6,'2017-06-01 00:00:00'),(1930,47,7,9,'2017-02-15 00:00:00'),(1930,54,7,7,'2017-08-30 00:00:00'),(1930,60,5,10,'2017-08-30 00:00:00'),(1930,67,6,7,'2017-07-08 00:00:00'),(1930,73,1,8,'2017-09-01 00:00:00'),(1930,80,7,6,'2017-09-05 00:00:00'),(1930,87,1,9,'2017-07-04 00:00:00'),(1930,93,5,10,'2017-03-24 00:00:00'),(1930,100,2,9,'2017-03-07 00:00:00'),(1930,107,3,7,'2017-08-12 00:00:00'),(1930,113,5,6,'2017-07-11 00:00:00'),(1930,120,4,10,'2017-03-15 00:00:00'),(1930,127,9,10,'2017-06-21 00:00:00'),(1930,133,5,10,'2017-04-24 00:00:00'),(1930,140,3,10,'2017-05-24 00:00:00'),(1930,147,7,10,'2017-05-19 00:00:00'),(1930,153,8,10,'2017-04-29 00:00:00'),(1930,160,5,6,'2017-07-22 00:00:00'),(1930,167,7,8,'2017-07-04 00:00:00'),(1930,173,2,8,'2017-09-18 00:00:00'),(1930,180,3,7,'2017-03-18 00:00:00'),(1930,187,7,9,'2017-07-08 00:00:00'),(1930,193,9,10,'2017-06-21 00:00:00'),(1930,200,6,6,'2017-03-09 00:00:00'),(1931,7,6,7,'2017-07-25 00:00:00'),(1931,14,2,9,'2017-08-20 00:00:00'),(1931,20,8,6,'2017-09-09 00:00:00'),(1931,27,6,6,'2017-08-28 00:00:00'),(1931,34,8,6,'2017-05-17 00:00:00'),(1931,40,1,6,'2017-05-07 00:00:00'),(1931,47,3,6,'2017-08-06 00:00:00'),(1931,54,5,6,'2017-04-08 00:00:00'),(1931,60,1,10,'2017-05-01 00:00:00'),(1931,67,5,7,'2017-03-25 00:00:00'),(1931,73,9,7,'2017-08-07 00:00:00'),(1931,80,5,8,'2017-04-18 00:00:00'),(1931,87,2,8,'2017-07-06 00:00:00'),(1931,93,6,9,'2017-02-13 00:00:00'),(1931,100,4,7,'2017-07-22 00:00:00'),(1931,107,3,6,'2017-06-28 00:00:00'),(1931,113,5,7,'2017-04-17 00:00:00'),(1931,120,2,8,'2017-05-16 00:00:00'),(1931,127,5,7,'2017-07-07 00:00:00'),(1931,133,7,8,'2017-07-17 00:00:00'),(1931,140,7,10,'2017-08-31 00:00:00'),(1931,147,4,7,'2017-06-19 00:00:00'),(1931,153,2,9,'2017-05-28 00:00:00'),(1931,160,7,8,'2017-07-18 00:00:00'),(1931,167,3,10,'2017-05-21 00:00:00'),(1931,173,4,10,'2017-07-06 00:00:00'),(1931,180,7,8,'2017-04-12 00:00:00'),(1931,187,9,7,'2017-06-04 00:00:00'),(1931,193,4,6,'2017-03-17 00:00:00'),(1931,200,5,8,'2017-07-13 00:00:00'),(1932,7,1,8,'2017-08-01 00:00:00'),(1932,14,7,7,'2017-05-07 00:00:00'),(1932,20,3,10,'2017-04-08 00:00:00'),(1932,27,2,10,'2017-03-08 00:00:00'),(1932,34,2,9,'2017-07-07 00:00:00'),(1932,40,6,7,'2017-04-20 00:00:00'),(1932,47,3,9,'2017-07-04 00:00:00'),(1932,54,8,9,'2017-05-01 00:00:00'),(1932,60,5,10,'2017-05-11 00:00:00'),(1932,67,2,10,'2017-07-18 00:00:00'),(1932,73,9,9,'2017-08-23 00:00:00'),(1932,80,1,9,'2017-06-26 00:00:00'),(1932,87,2,8,'2017-03-15 00:00:00'),(1932,93,1,7,'2017-09-12 00:00:00'),(1932,100,7,6,'2017-06-29 00:00:00'),(1932,107,6,7,'2017-05-03 00:00:00'),(1932,113,6,8,'2017-02-14 00:00:00'),(1932,120,8,7,'2017-08-15 00:00:00'),(1932,127,6,6,'2017-04-19 00:00:00'),(1932,133,9,9,'2017-07-25 00:00:00'),(1932,140,4,9,'2017-03-14 00:00:00'),(1932,147,6,10,'2017-07-09 00:00:00'),(1932,153,5,8,'2017-07-12 00:00:00'),(1932,160,9,9,'2017-07-09 00:00:00'),(1932,167,9,6,'2017-07-02 00:00:00'),(1932,173,2,10,'2017-03-27 00:00:00'),(1932,180,5,10,'2017-03-26 00:00:00'),(1932,187,7,7,'2017-07-14 00:00:00'),(1932,193,6,7,'2017-05-03 00:00:00'),(1932,200,8,8,'2017-09-04 00:00:00'),(1933,7,3,8,'2017-08-19 00:00:00'),(1933,14,3,8,'2017-08-23 00:00:00'),(1933,20,5,10,'2017-07-12 00:00:00'),(1933,27,8,6,'2017-03-16 00:00:00'),(1933,34,5,9,'2017-08-08 00:00:00'),(1933,40,5,10,'2017-07-09 00:00:00'),(1933,47,4,8,'2017-03-11 00:00:00'),(1933,54,6,9,'2017-03-31 00:00:00'),(1933,60,9,7,'2017-04-07 00:00:00'),(1933,67,1,8,'2017-04-17 00:00:00'),(1933,73,7,6,'2017-01-21 00:00:00'),(1933,80,6,7,'2017-05-14 00:00:00'),(1933,87,8,9,'2017-03-13 00:00:00'),(1933,93,4,7,'2017-09-24 00:00:00'),(1933,100,5,7,'2017-08-19 00:00:00'),(1933,107,9,8,'2017-09-03 00:00:00'),(1933,113,4,8,'2017-09-25 00:00:00'),(1933,120,9,6,'2017-07-04 00:00:00'),(1933,127,4,9,'2017-03-02 00:00:00'),(1933,133,1,10,'2017-03-27 00:00:00'),(1933,140,3,8,'2017-06-25 00:00:00'),(1933,147,4,10,'2017-03-01 00:00:00'),(1933,153,7,8,'2017-05-11 00:00:00'),(1933,160,3,7,'2017-03-31 00:00:00'),(1933,167,1,7,'2017-08-16 00:00:00'),(1933,173,3,10,'2017-09-14 00:00:00'),(1933,180,9,7,'2017-05-28 00:00:00'),(1933,187,6,6,'2017-05-27 00:00:00'),(1933,193,1,9,'2017-08-15 00:00:00'),(1933,200,9,9,'2017-07-06 00:00:00'),(1934,7,6,8,'2017-03-09 00:00:00'),(1934,14,7,8,'2017-03-13 00:00:00'),(1934,20,6,6,'2017-05-19 00:00:00'),(1934,27,1,8,'2017-05-12 00:00:00'),(1934,34,9,7,'2017-07-20 00:00:00'),(1934,40,6,6,'2017-06-26 00:00:00'),(1934,47,4,9,'2017-06-23 00:00:00'),(1934,54,4,8,'2017-08-09 00:00:00'),(1934,60,8,9,'2017-09-21 00:00:00'),(1934,67,6,9,'2017-04-14 00:00:00'),(1934,73,1,7,'2017-09-04 00:00:00'),(1934,80,5,9,'2017-02-28 00:00:00'),(1934,87,1,7,'2017-06-01 00:00:00'),(1934,93,2,9,'2017-09-18 00:00:00'),(1934,100,4,7,'2017-06-14 00:00:00'),(1934,107,8,8,'2017-09-16 00:00:00'),(1934,113,7,9,'2017-05-24 00:00:00'),(1934,120,3,8,'2017-05-11 00:00:00'),(1934,127,2,8,'2017-02-03 00:00:00'),(1934,133,4,8,'2017-06-26 00:00:00'),(1934,140,9,10,'2017-01-29 00:00:00'),(1934,147,6,10,'2017-02-10 00:00:00'),(1934,153,7,9,'2017-04-22 00:00:00'),(1934,160,9,6,'2017-05-26 00:00:00'),(1934,167,4,6,'2017-04-24 00:00:00'),(1934,173,9,7,'2017-09-25 00:00:00'),(1934,180,6,9,'2017-01-24 00:00:00'),(1934,187,8,7,'2017-06-26 00:00:00'),(1934,193,3,10,'2017-09-25 00:00:00'),(1934,200,9,7,'2017-03-09 00:00:00'),(1935,7,1,6,'2017-03-17 00:00:00'),(1935,14,5,8,'2017-04-17 00:00:00'),(1935,20,3,6,'2017-01-21 00:00:00'),(1935,27,8,8,'2017-02-26 00:00:00'),(1935,34,1,9,'2017-05-26 00:00:00'),(1935,40,9,7,'2017-01-24 00:00:00'),(1935,47,6,8,'2017-03-03 00:00:00'),(1935,54,5,8,'2017-05-23 00:00:00'),(1935,60,9,6,'2017-04-03 00:00:00'),(1935,67,1,9,'2017-05-23 00:00:00'),(1935,73,6,6,'2017-05-09 00:00:00'),(1935,80,5,10,'2017-08-18 00:00:00'),(1935,87,6,7,'2017-05-19 00:00:00'),(1935,93,1,7,'2017-04-26 00:00:00'),(1935,100,1,7,'2017-05-27 00:00:00'),(1935,107,5,9,'2017-06-03 00:00:00'),(1935,113,1,8,'2017-05-12 00:00:00'),(1935,120,4,10,'2017-06-21 00:00:00'),(1935,127,1,8,'2017-04-22 00:00:00'),(1935,133,6,9,'2017-08-08 00:00:00'),(1935,140,6,8,'2017-08-21 00:00:00'),(1935,147,2,9,'2017-06-03 00:00:00'),(1935,153,2,10,'2017-09-15 00:00:00'),(1935,160,1,10,'2017-04-19 00:00:00'),(1935,167,5,7,'2017-05-23 00:00:00'),(1935,173,6,9,'2017-02-14 00:00:00'),(1935,180,8,7,'2017-03-11 00:00:00'),(1935,187,3,6,'2017-07-29 00:00:00'),(1935,193,2,10,'2017-09-09 00:00:00'),(1935,200,6,7,'2017-03-11 00:00:00'),(1936,7,1,7,'2017-07-22 00:00:00'),(1936,14,1,10,'2017-05-31 00:00:00'),(1936,20,4,7,'2017-04-24 00:00:00'),(1936,27,3,9,'2017-09-21 00:00:00'),(1936,34,1,7,'2017-08-26 00:00:00'),(1936,40,3,7,'2017-06-13 00:00:00'),(1936,47,2,6,'2017-04-17 00:00:00'),(1936,54,4,7,'2017-09-05 00:00:00'),(1936,60,8,10,'2017-04-30 00:00:00'),(1936,67,1,7,'2017-07-12 00:00:00'),(1936,74,8,8,'2017-06-30 00:00:00'),(1936,80,5,9,'2017-04-21 00:00:00'),(1936,87,3,10,'2017-03-26 00:00:00'),(1936,93,8,6,'2017-05-02 00:00:00'),(1936,100,3,7,'2017-04-29 00:00:00'),(1936,107,9,7,'2017-04-26 00:00:00'),(1936,113,3,7,'2017-05-05 00:00:00'),(1936,120,9,7,'2017-09-01 00:00:00'),(1936,127,6,6,'2017-06-11 00:00:00'),(1936,133,9,7,'2017-05-10 00:00:00'),(1936,140,5,9,'2017-05-04 00:00:00'),(1936,147,6,9,'2017-04-19 00:00:00'),(1936,153,5,7,'2017-02-20 00:00:00'),(1936,160,7,7,'2017-09-09 00:00:00'),(1936,167,5,8,'2017-02-18 00:00:00'),(1936,173,4,8,'2017-08-30 00:00:00'),(1936,180,4,9,'2017-06-12 00:00:00'),(1936,187,8,9,'2017-02-01 00:00:00'),(1936,193,5,6,'2017-04-23 00:00:00'),(1936,200,9,6,'2017-04-13 00:00:00'),(1937,7,7,7,'2017-04-19 00:00:00'),(1937,14,2,9,'2017-05-16 00:00:00'),(1937,20,6,9,'2017-06-16 00:00:00'),(1937,27,3,7,'2017-06-16 00:00:00'),(1937,34,8,6,'2017-04-13 00:00:00'),(1937,40,9,6,'2017-06-01 00:00:00'),(1937,47,6,6,'2017-05-13 00:00:00'),(1937,54,9,8,'2017-01-21 00:00:00'),(1937,60,9,6,'2017-01-29 00:00:00'),(1937,67,7,8,'2017-04-19 00:00:00'),(1937,74,1,6,'2017-04-18 00:00:00'),(1937,80,9,10,'2017-03-24 00:00:00'),(1937,87,3,9,'2017-09-09 00:00:00'),(1937,93,6,7,'2017-05-05 00:00:00'),(1937,100,7,7,'2017-07-20 00:00:00'),(1937,107,5,6,'2017-06-25 00:00:00'),(1937,113,8,6,'2017-06-11 00:00:00'),(1937,120,1,8,'2017-01-21 00:00:00'),(1937,127,7,7,'2017-04-02 00:00:00'),(1937,133,2,7,'2017-02-15 00:00:00'),(1937,140,5,10,'2017-05-23 00:00:00'),(1937,147,6,10,'2017-04-21 00:00:00'),(1937,153,2,7,'2017-05-31 00:00:00'),(1937,160,1,8,'2017-09-03 00:00:00'),(1937,167,5,8,'2017-03-14 00:00:00'),(1937,173,4,9,'2017-08-17 00:00:00'),(1937,180,8,10,'2017-06-01 00:00:00'),(1937,187,1,6,'2017-07-03 00:00:00'),(1937,193,7,7,'2017-05-15 00:00:00'),(1937,200,1,10,'2017-08-16 00:00:00'),(1938,7,4,10,'2017-07-19 00:00:00'),(1938,14,8,10,'2017-05-17 00:00:00'),(1938,20,8,6,'2017-08-20 00:00:00'),(1938,27,4,6,'2017-06-07 00:00:00'),(1938,34,5,7,'2017-07-27 00:00:00'),(1938,40,2,6,'2017-09-10 00:00:00'),(1938,47,1,6,'2017-03-02 00:00:00'),(1938,54,3,7,'2017-05-20 00:00:00'),(1938,60,6,6,'2017-02-28 00:00:00'),(1938,67,8,7,'2017-03-26 00:00:00'),(1938,74,2,6,'2017-07-31 00:00:00'),(1938,80,3,8,'2017-02-24 00:00:00'),(1938,87,2,9,'2017-04-05 00:00:00'),(1938,93,8,7,'2017-03-19 00:00:00'),(1938,100,3,10,'2017-05-29 00:00:00'),(1938,107,2,8,'2017-05-01 00:00:00'),(1938,113,6,6,'2017-03-02 00:00:00'),(1938,120,8,8,'2017-02-19 00:00:00'),(1938,127,4,7,'2017-04-20 00:00:00'),(1938,133,4,8,'2017-09-22 00:00:00'),(1938,140,5,8,'2017-03-22 00:00:00'),(1938,147,4,10,'2017-04-02 00:00:00'),(1938,153,7,6,'2017-02-15 00:00:00'),(1938,160,5,10,'2017-05-10 00:00:00'),(1938,167,9,6,'2017-01-29 00:00:00'),(1938,173,4,6,'2017-08-25 00:00:00'),(1938,180,5,6,'2017-02-24 00:00:00'),(1938,187,3,9,'2017-05-26 00:00:00'),(1938,193,1,7,'2017-06-26 00:00:00'),(1938,200,6,9,'2017-08-12 00:00:00'),(1939,7,3,6,'2017-02-14 00:00:00'),(1939,14,3,6,'2017-04-09 00:00:00'),(1939,20,4,10,'2017-05-22 00:00:00'),(1939,27,9,8,'2017-08-14 00:00:00'),(1939,34,3,10,'2017-04-06 00:00:00'),(1939,40,3,7,'2017-04-08 00:00:00'),(1939,47,3,7,'2017-03-22 00:00:00'),(1939,54,4,9,'2017-04-08 00:00:00'),(1939,60,5,8,'2017-05-07 00:00:00'),(1939,67,4,7,'2017-03-30 00:00:00'),(1939,74,9,7,'2017-07-10 00:00:00'),(1939,80,1,10,'2017-02-16 00:00:00'),(1939,87,9,9,'2017-06-09 00:00:00'),(1939,93,4,8,'2017-09-12 00:00:00'),(1939,100,4,7,'2017-05-09 00:00:00'),(1939,107,6,6,'2017-06-12 00:00:00'),(1939,113,2,9,'2017-03-06 00:00:00'),(1939,120,8,8,'2017-03-01 00:00:00'),(1939,127,1,9,'2017-04-30 00:00:00'),(1939,133,5,10,'2017-09-11 00:00:00'),(1939,140,5,8,'2017-09-19 00:00:00'),(1939,147,9,10,'2017-09-05 00:00:00'),(1939,153,4,9,'2017-02-02 00:00:00'),(1939,160,4,8,'2017-06-22 00:00:00'),(1939,167,4,9,'2017-04-06 00:00:00'),(1939,173,8,10,'2017-01-24 00:00:00'),(1939,180,3,6,'2017-06-10 00:00:00'),(1939,187,7,8,'2017-01-31 00:00:00'),(1939,193,3,10,'2017-07-12 00:00:00'),(1939,200,1,8,'2017-08-04 00:00:00'),(1940,7,9,8,'2017-01-24 00:00:00'),(1940,14,5,10,'2017-06-30 00:00:00'),(1940,20,1,7,'2017-04-23 00:00:00'),(1940,27,4,6,'2017-05-20 00:00:00'),(1940,34,7,7,'2017-06-06 00:00:00'),(1940,40,5,6,'2017-03-17 00:00:00'),(1940,47,8,7,'2017-05-17 00:00:00'),(1940,54,1,7,'2017-02-20 00:00:00'),(1940,60,2,8,'2017-03-29 00:00:00'),(1940,67,2,9,'2017-02-14 00:00:00'),(1940,74,8,6,'2017-06-23 00:00:00'),(1940,80,1,10,'2017-03-16 00:00:00'),(1940,87,1,7,'2017-08-14 00:00:00'),(1940,93,9,8,'2017-07-18 00:00:00'),(1940,100,7,7,'2017-07-26 00:00:00'),(1940,107,4,7,'2017-04-16 00:00:00'),(1940,113,9,7,'2017-06-22 00:00:00'),(1940,120,1,10,'2017-05-23 00:00:00'),(1940,127,6,7,'2017-07-15 00:00:00'),(1940,133,8,9,'2017-04-15 00:00:00'),(1940,140,8,10,'2017-03-30 00:00:00'),(1940,147,5,8,'2017-02-17 00:00:00'),(1940,153,6,10,'2017-05-17 00:00:00'),(1940,160,1,9,'2017-01-26 00:00:00'),(1940,167,1,10,'2017-02-05 00:00:00'),(1940,173,4,7,'2017-09-04 00:00:00'),(1940,180,6,6,'2017-07-19 00:00:00'),(1940,187,7,7,'2017-07-25 00:00:00'),(1940,193,4,8,'2017-08-23 00:00:00'),(1940,200,8,9,'2017-03-04 00:00:00'),(1941,7,9,10,'2017-05-12 00:00:00'),(1941,14,4,9,'2017-05-28 00:00:00'),(1941,20,8,7,'2017-09-20 00:00:00'),(1941,27,7,7,'2017-09-24 00:00:00'),(1941,34,5,7,'2017-06-25 00:00:00'),(1941,40,6,9,'2017-04-22 00:00:00'),(1941,47,3,10,'2017-07-13 00:00:00'),(1941,54,7,10,'2017-07-27 00:00:00'),(1941,60,5,6,'2017-05-12 00:00:00'),(1941,67,8,10,'2017-01-24 00:00:00'),(1941,74,1,10,'2017-05-13 00:00:00'),(1941,80,4,7,'2017-09-08 00:00:00'),(1941,87,3,7,'2017-01-21 00:00:00'),(1941,93,4,10,'2017-06-26 00:00:00'),(1941,100,9,9,'2017-07-18 00:00:00'),(1941,107,5,7,'2017-04-18 00:00:00'),(1941,113,3,10,'2017-06-21 00:00:00'),(1941,120,4,9,'2017-07-08 00:00:00'),(1941,127,6,7,'2017-02-14 00:00:00'),(1941,133,3,9,'2017-06-12 00:00:00'),(1941,140,7,7,'2017-08-04 00:00:00'),(1941,147,4,10,'2017-01-28 00:00:00'),(1941,153,5,7,'2017-07-19 00:00:00'),(1941,160,3,9,'2017-09-02 00:00:00'),(1941,167,3,9,'2017-07-23 00:00:00'),(1941,173,2,10,'2017-07-29 00:00:00'),(1941,180,6,8,'2017-09-12 00:00:00'),(1941,187,5,8,'2017-09-20 00:00:00'),(1941,193,8,6,'2017-06-11 00:00:00'),(1941,200,9,9,'2017-08-11 00:00:00'),(1942,7,7,8,'2017-02-26 00:00:00'),(1942,14,1,6,'2017-01-27 00:00:00'),(1942,20,1,7,'2017-05-23 00:00:00'),(1942,27,7,6,'2017-03-15 00:00:00'),(1942,34,7,8,'2017-07-01 00:00:00'),(1942,40,3,7,'2017-01-21 00:00:00'),(1942,47,6,10,'2017-07-06 00:00:00'),(1942,54,7,10,'2017-08-11 00:00:00'),(1942,60,4,10,'2017-08-22 00:00:00'),(1942,67,4,6,'2017-09-05 00:00:00'),(1942,74,1,7,'2017-05-02 00:00:00'),(1942,80,5,6,'2017-03-21 00:00:00'),(1942,87,3,7,'2017-06-05 00:00:00'),(1942,93,8,6,'2017-04-03 00:00:00'),(1942,100,3,9,'2017-04-09 00:00:00'),(1942,107,8,9,'2017-07-12 00:00:00'),(1942,113,6,10,'2017-06-28 00:00:00'),(1942,120,4,8,'2017-09-01 00:00:00'),(1942,127,2,10,'2017-02-25 00:00:00'),(1942,133,3,9,'2017-07-28 00:00:00'),(1942,140,7,7,'2017-09-12 00:00:00'),(1942,147,2,6,'2017-09-09 00:00:00'),(1942,153,3,8,'2017-02-20 00:00:00'),(1942,160,2,9,'2017-06-02 00:00:00'),(1942,167,1,6,'2017-06-29 00:00:00'),(1942,173,3,10,'2017-03-23 00:00:00'),(1942,180,2,10,'2017-04-12 00:00:00'),(1942,187,3,8,'2017-02-18 00:00:00'),(1942,193,2,9,'2017-02-25 00:00:00'),(1942,200,4,7,'2017-05-02 00:00:00'),(1943,7,2,6,'2017-03-09 00:00:00'),(1943,14,8,6,'2017-07-15 00:00:00'),(1943,20,1,9,'2017-06-03 00:00:00'),(1943,27,9,7,'2017-08-03 00:00:00'),(1943,34,6,7,'2017-07-27 00:00:00'),(1943,40,9,6,'2017-06-07 00:00:00'),(1943,47,9,10,'2017-06-14 00:00:00'),(1943,54,5,6,'2017-07-03 00:00:00'),(1943,60,1,8,'2017-08-15 00:00:00'),(1943,67,1,7,'2017-08-13 00:00:00'),(1943,74,3,10,'2017-01-26 00:00:00'),(1943,80,8,9,'2017-01-23 00:00:00'),(1943,87,9,8,'2017-02-28 00:00:00'),(1943,93,9,8,'2017-09-11 00:00:00'),(1943,100,9,7,'2017-04-22 00:00:00'),(1943,107,9,6,'2017-03-18 00:00:00'),(1943,113,1,10,'2017-03-06 00:00:00'),(1943,120,3,9,'2017-03-09 00:00:00'),(1943,127,1,8,'2017-08-09 00:00:00'),(1943,133,8,8,'2017-07-26 00:00:00'),(1943,140,3,8,'2017-05-13 00:00:00'),(1943,147,5,10,'2017-04-09 00:00:00'),(1943,153,8,10,'2017-06-05 00:00:00'),(1943,160,5,6,'2017-05-04 00:00:00'),(1943,167,9,9,'2017-07-10 00:00:00'),(1943,173,3,10,'2017-09-10 00:00:00'),(1943,180,6,7,'2017-08-15 00:00:00'),(1943,187,2,6,'2017-05-08 00:00:00'),(1943,193,2,7,'2017-04-18 00:00:00'),(1943,200,2,7,'2017-09-17 00:00:00'),(1944,7,9,9,'2017-02-03 00:00:00'),(1944,14,7,8,'2017-04-23 00:00:00'),(1944,20,1,9,'2017-08-12 00:00:00'),(1944,27,5,6,'2017-02-23 00:00:00'),(1944,34,4,7,'2017-08-24 00:00:00'),(1944,40,9,7,'2017-08-28 00:00:00'),(1944,47,2,9,'2017-07-09 00:00:00'),(1944,54,6,6,'2017-08-14 00:00:00'),(1944,60,9,9,'2017-03-11 00:00:00'),(1944,67,5,10,'2017-03-02 00:00:00'),(1944,74,8,6,'2017-06-03 00:00:00'),(1944,80,3,8,'2017-06-16 00:00:00'),(1944,87,8,9,'2017-07-20 00:00:00'),(1944,93,7,7,'2017-03-27 00:00:00'),(1944,100,2,8,'2017-07-31 00:00:00'),(1944,107,2,9,'2017-05-01 00:00:00'),(1944,113,4,6,'2017-05-19 00:00:00'),(1944,120,5,9,'2017-09-23 00:00:00'),(1944,127,1,10,'2017-09-16 00:00:00'),(1944,133,8,9,'2017-04-23 00:00:00'),(1944,140,3,10,'2017-01-31 00:00:00'),(1944,147,4,6,'2017-06-22 00:00:00'),(1944,153,8,10,'2017-06-08 00:00:00'),(1944,160,3,9,'2017-03-15 00:00:00'),(1944,167,7,10,'2017-08-01 00:00:00'),(1944,173,5,9,'2017-04-02 00:00:00'),(1944,180,4,8,'2017-04-30 00:00:00'),(1944,187,8,7,'2017-02-20 00:00:00'),(1944,193,9,8,'2017-02-18 00:00:00'),(1944,200,2,6,'2017-09-02 00:00:00'),(1945,7,2,9,'2017-09-07 00:00:00'),(1945,14,3,6,'2017-07-22 00:00:00'),(1945,20,6,8,'2017-08-05 00:00:00'),(1945,27,6,8,'2017-03-14 00:00:00'),(1945,34,6,8,'2017-06-04 00:00:00'),(1945,40,1,9,'2017-05-02 00:00:00'),(1945,47,3,6,'2017-04-26 00:00:00'),(1945,54,6,7,'2017-05-26 00:00:00'),(1945,60,9,9,'2017-06-03 00:00:00'),(1945,67,5,7,'2017-06-15 00:00:00'),(1945,74,6,6,'2017-09-19 00:00:00'),(1945,80,5,7,'2017-07-22 00:00:00'),(1945,87,3,9,'2017-03-22 00:00:00'),(1945,94,2,10,'2017-04-10 00:00:00'),(1945,100,7,10,'2017-02-11 00:00:00'),(1945,107,6,10,'2017-04-19 00:00:00'),(1945,113,3,8,'2017-05-24 00:00:00'),(1945,120,8,8,'2017-07-04 00:00:00'),(1945,127,4,8,'2017-08-29 00:00:00'),(1945,133,9,9,'2017-09-13 00:00:00'),(1945,140,4,10,'2017-05-18 00:00:00'),(1945,147,2,10,'2017-07-18 00:00:00'),(1945,153,1,7,'2017-08-28 00:00:00'),(1945,160,6,9,'2017-04-17 00:00:00'),(1945,167,7,6,'2017-09-11 00:00:00'),(1945,173,4,7,'2017-09-04 00:00:00'),(1945,180,8,9,'2017-04-11 00:00:00'),(1945,187,1,7,'2017-06-26 00:00:00'),(1945,193,4,8,'2017-05-02 00:00:00'),(1945,200,2,10,'2017-02-14 00:00:00'),(1946,7,3,7,'2017-01-26 00:00:00'),(1946,14,4,9,'2017-07-07 00:00:00'),(1946,20,2,8,'2017-03-21 00:00:00'),(1946,27,2,7,'2017-05-01 00:00:00'),(1946,34,1,7,'2017-08-27 00:00:00'),(1946,40,9,8,'2017-02-17 00:00:00'),(1946,47,7,8,'2017-03-23 00:00:00'),(1946,54,8,6,'2017-09-25 00:00:00'),(1946,60,2,8,'2017-08-14 00:00:00'),(1946,67,4,8,'2017-09-11 00:00:00'),(1946,74,8,10,'2017-06-14 00:00:00'),(1946,80,4,9,'2017-09-13 00:00:00'),(1946,87,1,10,'2017-06-08 00:00:00'),(1946,94,8,10,'2017-04-01 00:00:00'),(1946,100,1,8,'2017-04-18 00:00:00'),(1946,107,3,7,'2017-09-13 00:00:00'),(1946,113,4,9,'2017-05-12 00:00:00'),(1946,120,9,8,'2017-03-25 00:00:00'),(1946,127,1,9,'2017-03-06 00:00:00'),(1946,133,5,7,'2017-05-10 00:00:00'),(1946,140,2,7,'2017-05-23 00:00:00'),(1946,147,4,9,'2017-02-27 00:00:00'),(1946,153,4,6,'2017-01-30 00:00:00'),(1946,160,9,6,'2017-06-12 00:00:00'),(1946,167,8,8,'2017-04-05 00:00:00'),(1946,173,3,6,'2017-06-04 00:00:00'),(1946,180,8,8,'2017-09-20 00:00:00'),(1946,187,2,6,'2017-03-15 00:00:00'),(1946,193,2,7,'2017-04-28 00:00:00'),(1946,200,8,10,'2017-04-14 00:00:00'),(1947,7,9,9,'2017-03-28 00:00:00'),(1947,14,4,8,'2017-09-17 00:00:00'),(1947,20,3,6,'2017-03-01 00:00:00'),(1947,27,1,9,'2017-08-22 00:00:00'),(1947,34,9,7,'2017-09-11 00:00:00'),(1947,40,9,8,'2017-04-15 00:00:00'),(1947,47,3,9,'2017-04-25 00:00:00'),(1947,54,6,8,'2017-01-31 00:00:00'),(1947,60,2,8,'2017-08-28 00:00:00'),(1947,67,2,7,'2017-03-06 00:00:00'),(1947,74,2,6,'2017-04-14 00:00:00'),(1947,80,9,9,'2017-05-09 00:00:00'),(1947,87,1,6,'2017-07-28 00:00:00'),(1947,94,6,10,'2017-03-25 00:00:00'),(1947,100,9,10,'2017-09-03 00:00:00'),(1947,107,3,8,'2017-04-30 00:00:00'),(1947,113,2,10,'2017-03-24 00:00:00'),(1947,120,5,7,'2017-05-05 00:00:00'),(1947,127,2,9,'2017-08-02 00:00:00'),(1947,133,4,9,'2017-05-29 00:00:00'),(1947,140,7,9,'2017-07-27 00:00:00'),(1947,147,1,8,'2017-06-24 00:00:00'),(1947,153,6,9,'2017-07-04 00:00:00'),(1947,160,2,8,'2017-07-23 00:00:00'),(1947,167,3,6,'2017-01-31 00:00:00'),(1947,173,2,10,'2017-09-09 00:00:00'),(1947,180,7,9,'2017-07-31 00:00:00'),(1947,187,6,10,'2017-01-24 00:00:00'),(1947,193,9,6,'2017-01-24 00:00:00'),(1947,200,8,6,'2017-01-20 00:00:00'),(1948,7,6,9,'2017-08-30 00:00:00'),(1948,14,6,7,'2017-05-19 00:00:00'),(1948,20,2,7,'2017-08-29 00:00:00'),(1948,27,3,8,'2017-06-27 00:00:00'),(1948,34,5,6,'2017-06-13 00:00:00'),(1948,40,4,9,'2017-03-16 00:00:00'),(1948,47,4,7,'2017-04-26 00:00:00'),(1948,54,7,8,'2017-08-25 00:00:00'),(1948,60,8,7,'2017-08-22 00:00:00'),(1948,67,2,9,'2017-04-30 00:00:00'),(1948,74,4,10,'2017-08-29 00:00:00'),(1948,80,7,9,'2017-09-01 00:00:00'),(1948,87,9,10,'2017-07-18 00:00:00'),(1948,94,1,8,'2017-02-02 00:00:00'),(1948,100,6,7,'2017-09-19 00:00:00'),(1948,107,8,10,'2017-02-17 00:00:00'),(1948,113,9,8,'2017-07-03 00:00:00'),(1948,120,6,6,'2017-06-06 00:00:00'),(1948,127,4,7,'2017-02-10 00:00:00'),(1948,133,9,8,'2017-09-01 00:00:00'),(1948,140,7,8,'2017-04-19 00:00:00'),(1948,147,2,6,'2017-08-18 00:00:00'),(1948,153,3,9,'2017-05-20 00:00:00'),(1948,160,3,8,'2017-07-04 00:00:00'),(1948,167,5,9,'2017-03-21 00:00:00'),(1948,173,2,7,'2017-04-11 00:00:00'),(1948,180,6,9,'2017-04-28 00:00:00'),(1948,187,7,8,'2017-07-08 00:00:00'),(1948,193,6,9,'2017-04-22 00:00:00'),(1948,200,6,6,'2017-04-22 00:00:00'),(1949,7,8,8,'2017-08-12 00:00:00'),(1949,14,3,8,'2017-03-30 00:00:00'),(1949,20,7,10,'2017-03-27 00:00:00'),(1949,27,4,10,'2017-04-04 00:00:00'),(1949,34,2,9,'2017-04-05 00:00:00'),(1949,40,2,10,'2017-03-05 00:00:00'),(1949,47,5,9,'2017-01-29 00:00:00'),(1949,54,5,9,'2017-07-27 00:00:00'),(1949,60,8,10,'2017-01-26 00:00:00'),(1949,67,6,8,'2017-06-20 00:00:00'),(1949,74,4,8,'2017-06-08 00:00:00'),(1949,80,6,9,'2017-03-27 00:00:00'),(1949,87,3,9,'2017-07-10 00:00:00'),(1949,94,5,9,'2017-04-17 00:00:00'),(1949,100,3,8,'2017-04-09 00:00:00'),(1949,107,3,9,'2017-09-11 00:00:00'),(1949,113,6,6,'2017-03-21 00:00:00'),(1949,120,2,9,'2017-03-30 00:00:00'),(1949,127,4,8,'2017-02-20 00:00:00'),(1949,133,9,9,'2017-05-05 00:00:00'),(1949,140,6,8,'2017-09-08 00:00:00'),(1949,147,6,7,'2017-08-03 00:00:00'),(1949,153,8,9,'2017-07-29 00:00:00'),(1949,160,2,7,'2017-06-09 00:00:00'),(1949,167,8,9,'2017-08-19 00:00:00'),(1949,173,6,9,'2017-03-10 00:00:00'),(1949,180,9,9,'2017-05-10 00:00:00'),(1949,187,9,9,'2017-07-17 00:00:00'),(1949,193,1,10,'2017-02-06 00:00:00'),(1949,200,5,8,'2017-09-04 00:00:00'),(1950,7,1,6,'2017-04-29 00:00:00'),(1950,14,2,10,'2017-09-20 00:00:00'),(1950,20,8,8,'2017-02-19 00:00:00'),(1950,27,9,10,'2017-07-15 00:00:00'),(1950,34,5,10,'2017-05-25 00:00:00'),(1950,40,9,10,'2017-04-29 00:00:00'),(1950,47,3,10,'2017-04-17 00:00:00'),(1950,54,8,10,'2017-06-11 00:00:00'),(1950,60,7,8,'2017-02-12 00:00:00'),(1950,67,2,8,'2017-05-17 00:00:00'),(1950,74,8,10,'2017-09-12 00:00:00'),(1950,80,9,6,'2017-04-16 00:00:00'),(1950,87,2,6,'2017-03-05 00:00:00'),(1950,94,8,9,'2017-07-08 00:00:00'),(1950,100,3,8,'2017-02-03 00:00:00'),(1950,107,4,6,'2017-02-02 00:00:00'),(1950,113,1,7,'2017-05-10 00:00:00'),(1950,120,3,7,'2017-07-02 00:00:00'),(1950,127,3,6,'2017-03-19 00:00:00'),(1950,133,5,9,'2017-04-22 00:00:00'),(1950,140,5,6,'2017-08-05 00:00:00'),(1950,147,9,6,'2017-03-18 00:00:00'),(1950,153,8,8,'2017-08-15 00:00:00'),(1950,160,7,10,'2017-05-21 00:00:00'),(1950,167,3,10,'2017-08-24 00:00:00'),(1950,173,9,8,'2017-01-27 00:00:00'),(1950,180,5,8,'2017-04-17 00:00:00'),(1950,187,6,9,'2017-01-31 00:00:00'),(1950,193,8,8,'2017-07-11 00:00:00'),(1950,200,8,7,'2017-04-29 00:00:00'),(1951,7,9,6,'2017-05-31 00:00:00'),(1951,14,7,9,'2017-02-21 00:00:00'),(1951,20,8,6,'2017-07-09 00:00:00'),(1951,27,3,8,'2017-07-01 00:00:00'),(1951,34,4,6,'2017-05-14 00:00:00'),(1951,40,3,10,'2017-01-23 00:00:00'),(1951,47,8,7,'2017-08-23 00:00:00'),(1951,54,9,8,'2017-06-21 00:00:00'),(1951,60,4,9,'2017-03-22 00:00:00'),(1951,67,7,6,'2017-02-09 00:00:00'),(1951,74,4,7,'2017-07-12 00:00:00'),(1951,80,6,10,'2017-02-22 00:00:00'),(1951,87,6,10,'2017-07-22 00:00:00'),(1951,94,5,6,'2017-01-30 00:00:00'),(1951,100,9,8,'2017-09-18 00:00:00'),(1951,107,3,9,'2017-01-27 00:00:00'),(1951,113,5,8,'2017-05-12 00:00:00'),(1951,120,6,8,'2017-05-08 00:00:00'),(1951,127,6,9,'2017-01-23 00:00:00'),(1951,133,1,7,'2017-08-09 00:00:00'),(1951,140,3,9,'2017-04-24 00:00:00'),(1951,147,9,9,'2017-05-31 00:00:00'),(1951,153,2,10,'2017-02-22 00:00:00'),(1951,160,2,9,'2017-07-01 00:00:00'),(1951,167,2,9,'2017-04-28 00:00:00'),(1951,173,5,10,'2017-04-11 00:00:00'),(1951,180,9,7,'2017-06-14 00:00:00'),(1951,187,2,8,'2017-02-11 00:00:00'),(1951,193,8,6,'2017-01-30 00:00:00'),(1951,200,4,9,'2017-02-12 00:00:00'),(1952,7,3,9,'2017-06-16 00:00:00'),(1952,14,3,9,'2017-02-20 00:00:00'),(1952,20,8,7,'2017-09-01 00:00:00'),(1952,27,1,8,'2017-08-30 00:00:00'),(1952,34,4,9,'2017-08-02 00:00:00'),(1952,40,1,10,'2017-09-13 00:00:00'),(1952,47,7,7,'2017-04-09 00:00:00'),(1952,54,5,7,'2017-08-23 00:00:00'),(1952,60,2,10,'2017-02-20 00:00:00'),(1952,67,4,9,'2017-02-28 00:00:00'),(1952,74,2,7,'2017-05-15 00:00:00'),(1952,80,8,10,'2017-05-22 00:00:00'),(1952,87,8,6,'2017-09-08 00:00:00'),(1952,94,8,10,'2017-07-21 00:00:00'),(1952,100,9,8,'2017-07-19 00:00:00'),(1952,107,1,6,'2017-09-20 00:00:00'),(1952,113,9,6,'2017-05-06 00:00:00'),(1952,120,8,10,'2017-03-18 00:00:00'),(1952,127,2,9,'2017-03-14 00:00:00'),(1952,133,1,9,'2017-05-01 00:00:00'),(1952,140,9,10,'2017-01-24 00:00:00'),(1952,147,9,6,'2017-02-07 00:00:00'),(1952,153,6,8,'2017-07-13 00:00:00'),(1952,160,6,10,'2017-04-01 00:00:00'),(1952,167,4,6,'2017-06-30 00:00:00'),(1952,173,4,8,'2017-06-03 00:00:00'),(1952,180,2,7,'2017-07-26 00:00:00'),(1952,187,9,7,'2017-03-22 00:00:00'),(1952,193,5,6,'2017-08-18 00:00:00'),(1952,200,3,9,'2017-04-15 00:00:00'),(1953,7,2,7,'2017-07-28 00:00:00'),(1953,14,2,10,'2017-04-06 00:00:00'),(1953,20,7,6,'2017-05-29 00:00:00'),(1953,27,3,8,'2017-02-06 00:00:00'),(1953,34,5,8,'2017-07-06 00:00:00'),(1953,40,5,10,'2017-05-25 00:00:00'),(1953,47,9,7,'2017-06-07 00:00:00'),(1953,54,6,6,'2017-02-23 00:00:00'),(1953,60,7,8,'2017-04-03 00:00:00'),(1953,67,2,8,'2017-04-25 00:00:00'),(1953,74,2,9,'2017-03-12 00:00:00'),(1953,80,1,10,'2017-08-26 00:00:00'),(1953,87,5,8,'2017-07-18 00:00:00'),(1953,94,5,8,'2017-08-12 00:00:00'),(1953,100,5,9,'2017-03-13 00:00:00'),(1953,107,1,7,'2017-04-19 00:00:00'),(1953,113,8,10,'2017-08-12 00:00:00'),(1953,120,1,10,'2017-05-06 00:00:00'),(1953,127,2,9,'2017-05-23 00:00:00'),(1953,133,6,9,'2017-03-06 00:00:00'),(1953,140,4,7,'2017-06-05 00:00:00'),(1953,147,9,10,'2017-07-04 00:00:00'),(1953,153,5,8,'2017-07-15 00:00:00'),(1953,160,2,6,'2017-02-03 00:00:00'),(1953,167,9,10,'2017-08-29 00:00:00'),(1953,173,4,6,'2017-08-17 00:00:00'),(1953,180,3,7,'2017-03-16 00:00:00'),(1953,187,4,9,'2017-02-19 00:00:00'),(1953,193,2,10,'2017-05-09 00:00:00'),(1953,200,3,6,'2017-05-06 00:00:00'),(1954,7,7,6,'2017-03-24 00:00:00'),(1954,14,5,10,'2017-07-02 00:00:00'),(1954,20,4,6,'2017-06-29 00:00:00'),(1954,27,3,9,'2017-09-12 00:00:00'),(1954,34,9,8,'2017-05-16 00:00:00'),(1954,40,4,6,'2017-04-09 00:00:00'),(1954,47,3,10,'2017-05-02 00:00:00'),(1954,54,9,8,'2017-02-11 00:00:00'),(1954,60,2,7,'2017-04-22 00:00:00'),(1954,67,9,10,'2017-05-20 00:00:00'),(1954,74,9,9,'2017-09-26 00:00:00'),(1954,80,6,9,'2017-03-16 00:00:00'),(1954,87,8,8,'2017-08-05 00:00:00'),(1954,94,5,10,'2017-07-18 00:00:00'),(1954,100,4,6,'2017-04-25 00:00:00'),(1954,107,2,6,'2017-07-11 00:00:00'),(1954,114,8,8,'2017-02-18 00:00:00'),(1954,120,9,8,'2017-04-19 00:00:00'),(1954,127,1,9,'2017-02-22 00:00:00'),(1954,133,8,10,'2017-04-16 00:00:00'),(1954,140,7,6,'2017-02-13 00:00:00'),(1954,147,7,7,'2017-08-05 00:00:00'),(1954,153,3,10,'2017-07-12 00:00:00'),(1954,160,1,10,'2017-07-25 00:00:00'),(1954,167,9,7,'2017-08-15 00:00:00'),(1954,173,4,6,'2017-06-18 00:00:00'),(1954,180,1,9,'2017-03-17 00:00:00'),(1954,187,3,9,'2017-05-27 00:00:00'),(1954,193,1,9,'2017-02-22 00:00:00'),(1954,200,4,7,'2017-02-17 00:00:00'),(1955,7,2,10,'2017-08-03 00:00:00'),(1955,14,3,9,'2017-07-24 00:00:00'),(1955,20,5,8,'2017-04-30 00:00:00'),(1955,27,7,9,'2017-09-11 00:00:00'),(1955,34,8,7,'2017-05-02 00:00:00'),(1955,40,4,8,'2017-04-20 00:00:00'),(1955,47,7,9,'2017-03-16 00:00:00'),(1955,54,8,6,'2017-02-06 00:00:00'),(1955,60,3,9,'2017-05-24 00:00:00'),(1955,67,5,9,'2017-01-22 00:00:00'),(1955,74,7,8,'2017-05-03 00:00:00'),(1955,80,6,10,'2017-01-24 00:00:00'),(1955,87,2,7,'2017-02-27 00:00:00'),(1955,94,8,8,'2017-03-09 00:00:00'),(1955,100,3,10,'2017-06-01 00:00:00'),(1955,107,5,7,'2017-03-05 00:00:00'),(1955,114,5,10,'2017-02-03 00:00:00'),(1955,120,9,10,'2017-02-03 00:00:00'),(1955,127,6,8,'2017-06-16 00:00:00'),(1955,133,7,6,'2017-08-24 00:00:00'),(1955,140,2,10,'2017-01-25 00:00:00'),(1955,147,5,10,'2017-08-27 00:00:00'),(1955,153,6,7,'2017-02-15 00:00:00'),(1955,160,8,6,'2017-05-20 00:00:00'),(1955,167,6,7,'2017-04-16 00:00:00'),(1955,173,9,7,'2017-02-24 00:00:00'),(1955,180,4,7,'2017-08-30 00:00:00'),(1955,187,1,8,'2017-06-23 00:00:00'),(1955,193,9,7,'2017-05-08 00:00:00'),(1955,200,6,9,'2017-05-22 00:00:00'),(1956,7,3,6,'2017-03-28 00:00:00'),(1956,14,8,9,'2017-06-25 00:00:00'),(1956,20,5,10,'2017-04-04 00:00:00'),(1956,27,5,10,'2017-05-14 00:00:00'),(1956,34,2,9,'2017-08-05 00:00:00'),(1956,40,7,10,'2017-06-09 00:00:00'),(1956,47,1,6,'2017-08-24 00:00:00'),(1956,54,2,8,'2017-08-28 00:00:00'),(1956,60,2,6,'2017-02-02 00:00:00'),(1956,67,6,8,'2017-06-22 00:00:00'),(1956,74,8,10,'2017-09-02 00:00:00'),(1956,80,9,8,'2017-04-04 00:00:00'),(1956,87,1,8,'2017-06-19 00:00:00'),(1956,94,6,7,'2017-08-05 00:00:00'),(1956,100,9,8,'2017-08-11 00:00:00'),(1956,107,2,6,'2017-02-22 00:00:00'),(1956,114,1,9,'2017-02-01 00:00:00'),(1956,120,1,7,'2017-08-23 00:00:00'),(1956,127,3,7,'2017-07-03 00:00:00'),(1956,133,8,9,'2017-04-13 00:00:00'),(1956,140,4,8,'2017-02-16 00:00:00'),(1956,147,3,8,'2017-07-27 00:00:00'),(1956,153,3,6,'2017-01-27 00:00:00'),(1956,160,6,9,'2017-06-26 00:00:00'),(1956,167,6,7,'2017-05-11 00:00:00'),(1956,173,8,8,'2017-08-02 00:00:00'),(1956,180,1,8,'2017-01-31 00:00:00'),(1956,187,7,7,'2017-09-01 00:00:00'),(1956,193,5,9,'2017-04-19 00:00:00'),(1956,200,8,6,'2017-05-09 00:00:00'),(1957,7,5,6,'2017-04-07 00:00:00'),(1957,14,9,8,'2017-06-28 00:00:00'),(1957,20,2,7,'2017-05-01 00:00:00'),(1957,27,2,10,'2017-02-07 00:00:00'),(1957,34,5,7,'2017-04-14 00:00:00'),(1957,40,2,6,'2017-05-02 00:00:00'),(1957,47,6,10,'2017-07-07 00:00:00'),(1957,54,8,8,'2017-06-15 00:00:00'),(1957,60,4,7,'2017-03-16 00:00:00'),(1957,67,3,6,'2017-07-31 00:00:00'),(1957,74,4,6,'2017-07-03 00:00:00'),(1957,80,4,7,'2017-04-01 00:00:00'),(1957,87,9,6,'2017-04-18 00:00:00'),(1957,94,5,10,'2017-07-19 00:00:00'),(1957,100,9,6,'2017-07-17 00:00:00'),(1957,107,4,9,'2017-08-05 00:00:00'),(1957,114,5,9,'2017-05-16 00:00:00'),(1957,120,1,10,'2017-04-17 00:00:00'),(1957,127,6,10,'2017-03-18 00:00:00'),(1957,133,4,8,'2017-04-03 00:00:00'),(1957,140,8,7,'2017-03-02 00:00:00'),(1957,147,3,10,'2017-03-12 00:00:00'),(1957,153,1,7,'2017-04-09 00:00:00'),(1957,160,4,10,'2017-08-07 00:00:00'),(1957,167,4,8,'2017-08-16 00:00:00'),(1957,173,5,6,'2017-03-26 00:00:00'),(1957,180,9,9,'2017-03-06 00:00:00'),(1957,187,2,8,'2017-05-26 00:00:00'),(1957,193,5,10,'2017-09-10 00:00:00'),(1957,200,6,7,'2017-06-09 00:00:00'),(1958,7,4,10,'2017-05-10 00:00:00'),(1958,14,3,10,'2017-08-08 00:00:00'),(1958,20,6,10,'2017-08-22 00:00:00'),(1958,27,3,10,'2017-04-17 00:00:00'),(1958,34,7,7,'2017-04-05 00:00:00'),(1958,40,1,10,'2017-09-22 00:00:00'),(1958,47,6,8,'2017-05-10 00:00:00'),(1958,54,2,8,'2017-05-11 00:00:00'),(1958,60,7,9,'2017-01-22 00:00:00'),(1958,67,9,8,'2017-05-16 00:00:00'),(1958,74,9,9,'2017-05-06 00:00:00'),(1958,80,2,7,'2017-08-29 00:00:00'),(1958,87,6,10,'2017-09-11 00:00:00'),(1958,94,3,10,'2017-02-01 00:00:00'),(1958,100,1,8,'2017-04-24 00:00:00'),(1958,107,1,9,'2017-02-26 00:00:00'),(1958,114,5,10,'2017-08-26 00:00:00'),(1958,120,6,10,'2017-02-25 00:00:00'),(1958,127,8,6,'2017-02-24 00:00:00'),(1958,133,7,6,'2017-08-09 00:00:00'),(1958,140,3,9,'2017-05-30 00:00:00'),(1958,147,4,10,'2017-01-31 00:00:00'),(1958,153,5,10,'2017-09-25 00:00:00'),(1958,160,1,7,'2017-01-26 00:00:00'),(1958,167,7,8,'2017-06-28 00:00:00'),(1958,173,4,7,'2017-03-19 00:00:00'),(1958,180,4,10,'2017-03-10 00:00:00'),(1958,187,3,7,'2017-06-21 00:00:00'),(1958,193,2,7,'2017-08-10 00:00:00'),(1958,200,8,8,'2017-06-15 00:00:00'),(1959,7,1,8,'2017-02-16 00:00:00'),(1959,14,8,8,'2017-03-07 00:00:00'),(1959,20,3,6,'2017-05-11 00:00:00'),(1959,27,3,10,'2017-09-13 00:00:00'),(1959,34,7,9,'2017-02-09 00:00:00'),(1959,40,3,8,'2017-05-18 00:00:00'),(1959,47,8,6,'2017-03-29 00:00:00'),(1959,54,6,8,'2017-08-19 00:00:00'),(1959,60,5,7,'2017-03-18 00:00:00'),(1959,67,8,7,'2017-03-13 00:00:00'),(1959,74,7,7,'2017-08-19 00:00:00'),(1959,80,3,9,'2017-02-12 00:00:00'),(1959,87,5,9,'2017-08-02 00:00:00'),(1959,94,1,9,'2017-09-12 00:00:00'),(1959,100,7,6,'2017-04-11 00:00:00'),(1959,107,6,9,'2017-08-25 00:00:00'),(1959,114,4,9,'2017-04-05 00:00:00'),(1959,120,3,6,'2017-08-25 00:00:00'),(1959,127,5,7,'2017-02-01 00:00:00'),(1959,133,8,6,'2017-08-11 00:00:00'),(1959,140,5,9,'2017-07-02 00:00:00'),(1959,147,8,7,'2017-06-24 00:00:00'),(1959,153,1,9,'2017-04-21 00:00:00'),(1959,160,8,6,'2017-06-24 00:00:00'),(1959,167,3,6,'2017-09-17 00:00:00'),(1959,173,4,7,'2017-05-05 00:00:00'),(1959,180,6,7,'2017-03-14 00:00:00'),(1959,187,3,6,'2017-03-13 00:00:00'),(1959,193,8,6,'2017-05-12 00:00:00'),(1959,200,5,6,'2017-05-27 00:00:00'),(1960,7,8,10,'2017-03-11 00:00:00'),(1960,14,9,8,'2017-09-20 00:00:00'),(1960,20,8,6,'2017-02-01 00:00:00'),(1960,27,5,7,'2017-08-08 00:00:00'),(1960,34,3,7,'2017-01-26 00:00:00'),(1960,40,5,8,'2017-06-09 00:00:00'),(1960,47,5,10,'2017-09-08 00:00:00'),(1960,54,5,7,'2017-09-11 00:00:00'),(1960,60,1,9,'2017-05-27 00:00:00'),(1960,67,8,6,'2017-07-21 00:00:00'),(1960,74,6,6,'2017-09-17 00:00:00'),(1960,80,8,10,'2017-06-28 00:00:00'),(1960,87,5,9,'2017-06-07 00:00:00'),(1960,94,2,9,'2017-05-18 00:00:00'),(1960,100,2,7,'2017-09-26 00:00:00'),(1960,107,9,9,'2017-02-25 00:00:00'),(1960,114,6,6,'2017-09-15 00:00:00'),(1960,120,4,7,'2017-04-02 00:00:00'),(1960,127,3,10,'2017-05-14 00:00:00'),(1960,133,4,10,'2017-04-30 00:00:00'),(1960,140,2,7,'2017-04-13 00:00:00'),(1960,147,5,10,'2017-08-26 00:00:00'),(1960,153,2,8,'2017-05-21 00:00:00'),(1960,160,9,8,'2017-06-21 00:00:00'),(1960,167,8,10,'2017-09-18 00:00:00'),(1960,173,1,8,'2017-02-25 00:00:00'),(1960,180,6,10,'2017-07-15 00:00:00'),(1960,187,3,9,'2017-09-21 00:00:00'),(1960,193,9,10,'2017-04-15 00:00:00'),(1960,200,6,10,'2017-05-04 00:00:00'),(1961,7,4,9,'2017-07-13 00:00:00'),(1961,14,7,7,'2017-04-26 00:00:00'),(1961,20,1,6,'2017-07-26 00:00:00'),(1961,27,3,9,'2017-02-10 00:00:00'),(1961,34,6,9,'2017-08-12 00:00:00'),(1961,40,7,6,'2017-01-31 00:00:00'),(1961,47,3,8,'2017-07-01 00:00:00'),(1961,54,7,9,'2017-03-25 00:00:00'),(1961,60,4,6,'2017-09-02 00:00:00'),(1961,67,6,6,'2017-03-18 00:00:00'),(1961,74,5,10,'2017-02-24 00:00:00'),(1961,80,9,8,'2017-09-06 00:00:00'),(1961,87,3,8,'2017-08-22 00:00:00'),(1961,94,4,6,'2017-08-15 00:00:00'),(1961,100,5,10,'2017-05-21 00:00:00'),(1961,107,1,10,'2017-07-09 00:00:00'),(1961,114,7,7,'2017-03-29 00:00:00'),(1961,120,7,7,'2017-07-10 00:00:00'),(1961,127,5,10,'2017-08-31 00:00:00'),(1961,133,1,9,'2017-04-03 00:00:00'),(1961,140,7,10,'2017-09-19 00:00:00'),(1961,147,5,7,'2017-05-25 00:00:00'),(1961,153,9,6,'2017-04-11 00:00:00'),(1961,160,2,7,'2017-02-14 00:00:00'),(1961,167,2,6,'2017-04-18 00:00:00'),(1961,173,4,6,'2017-08-01 00:00:00'),(1961,180,4,10,'2017-05-16 00:00:00'),(1961,187,6,6,'2017-02-07 00:00:00'),(1961,193,2,8,'2017-07-19 00:00:00'),(1961,200,3,8,'2017-09-18 00:00:00'),(1962,7,6,10,'2017-07-23 00:00:00'),(1962,14,9,7,'2017-07-16 00:00:00'),(1962,20,2,10,'2017-09-07 00:00:00'),(1962,27,9,9,'2017-05-29 00:00:00'),(1962,34,8,10,'2017-09-12 00:00:00'),(1962,40,4,9,'2017-07-25 00:00:00'),(1962,47,4,9,'2017-03-31 00:00:00'),(1962,54,3,6,'2017-08-01 00:00:00'),(1962,60,8,6,'2017-06-28 00:00:00'),(1962,67,5,8,'2017-06-08 00:00:00'),(1962,74,4,10,'2017-03-12 00:00:00'),(1962,80,6,6,'2017-08-08 00:00:00'),(1962,87,3,8,'2017-07-04 00:00:00'),(1962,94,6,9,'2017-03-17 00:00:00'),(1962,100,7,10,'2017-08-18 00:00:00'),(1962,107,7,10,'2017-02-20 00:00:00'),(1962,114,5,7,'2017-05-08 00:00:00'),(1962,120,7,10,'2017-04-19 00:00:00'),(1962,127,7,8,'2017-05-08 00:00:00'),(1962,133,6,9,'2017-08-16 00:00:00'),(1962,140,3,8,'2017-07-04 00:00:00'),(1962,147,9,7,'2017-09-14 00:00:00'),(1962,153,7,7,'2017-03-19 00:00:00'),(1962,160,7,7,'2017-07-22 00:00:00'),(1962,167,9,9,'2017-06-08 00:00:00'),(1962,173,9,7,'2017-05-27 00:00:00'),(1962,180,9,6,'2017-05-11 00:00:00'),(1962,187,1,8,'2017-01-31 00:00:00'),(1962,193,8,6,'2017-03-01 00:00:00'),(1962,200,2,6,'2017-05-09 00:00:00'),(1963,7,9,7,'2017-07-29 00:00:00'),(1963,14,2,8,'2017-08-23 00:00:00'),(1963,20,8,7,'2017-05-31 00:00:00'),(1963,27,4,6,'2017-08-28 00:00:00'),(1963,34,8,8,'2017-05-24 00:00:00'),(1963,40,2,6,'2017-08-11 00:00:00'),(1963,47,7,6,'2017-08-06 00:00:00'),(1963,54,1,6,'2017-02-16 00:00:00'),(1963,60,6,8,'2017-06-10 00:00:00'),(1963,67,9,10,'2017-08-06 00:00:00'),(1963,74,7,6,'2017-08-18 00:00:00'),(1963,80,1,10,'2017-04-11 00:00:00'),(1963,87,1,6,'2017-08-01 00:00:00'),(1963,94,8,6,'2017-01-28 00:00:00'),(1963,100,8,9,'2017-02-25 00:00:00'),(1963,107,1,9,'2017-02-04 00:00:00'),(1963,114,5,6,'2017-05-02 00:00:00'),(1963,120,6,10,'2017-08-12 00:00:00'),(1963,127,4,7,'2017-02-20 00:00:00'),(1963,134,7,6,'2017-09-06 00:00:00'),(1963,140,2,7,'2017-03-11 00:00:00'),(1963,147,1,10,'2017-02-17 00:00:00'),(1963,153,4,7,'2017-04-25 00:00:00'),(1963,160,8,7,'2017-08-03 00:00:00'),(1963,167,6,9,'2017-03-10 00:00:00'),(1963,173,9,6,'2017-08-20 00:00:00'),(1963,180,9,7,'2017-08-06 00:00:00'),(1963,187,4,9,'2017-06-20 00:00:00'),(1963,193,6,7,'2017-08-15 00:00:00'),(1963,200,8,7,'2017-08-17 00:00:00'),(1964,7,3,6,'2017-02-05 00:00:00'),(1964,14,2,6,'2017-08-17 00:00:00'),(1964,20,2,8,'2017-09-01 00:00:00'),(1964,27,2,10,'2017-05-01 00:00:00'),(1964,34,3,9,'2017-09-04 00:00:00'),(1964,40,2,7,'2017-01-29 00:00:00'),(1964,47,9,8,'2017-01-22 00:00:00'),(1964,54,3,7,'2017-06-23 00:00:00'),(1964,60,1,9,'2017-06-14 00:00:00'),(1964,67,9,9,'2017-05-18 00:00:00'),(1964,74,7,6,'2017-08-04 00:00:00'),(1964,80,7,8,'2017-02-11 00:00:00'),(1964,87,1,8,'2017-02-15 00:00:00'),(1964,94,6,8,'2017-06-03 00:00:00'),(1964,100,1,8,'2017-05-28 00:00:00'),(1964,107,3,10,'2017-05-22 00:00:00'),(1964,114,5,8,'2017-03-14 00:00:00'),(1964,120,9,7,'2017-02-09 00:00:00'),(1964,127,7,6,'2017-07-14 00:00:00'),(1964,134,8,9,'2017-07-04 00:00:00'),(1964,140,8,7,'2017-06-13 00:00:00'),(1964,147,9,7,'2017-07-08 00:00:00'),(1964,153,7,9,'2017-04-04 00:00:00'),(1964,160,1,9,'2017-03-30 00:00:00'),(1964,167,1,10,'2017-02-25 00:00:00'),(1964,173,7,9,'2017-08-26 00:00:00'),(1964,180,5,6,'2017-09-17 00:00:00'),(1964,187,5,7,'2017-07-31 00:00:00'),(1964,193,4,7,'2017-05-09 00:00:00'),(1964,200,4,10,'2017-07-01 00:00:00'),(1965,7,5,8,'2017-06-21 00:00:00'),(1965,14,5,10,'2017-05-29 00:00:00'),(1965,20,8,10,'2017-02-19 00:00:00'),(1965,27,3,10,'2017-05-07 00:00:00'),(1965,34,5,6,'2017-09-12 00:00:00'),(1965,40,4,7,'2017-04-21 00:00:00'),(1965,47,6,10,'2017-06-24 00:00:00'),(1965,54,9,7,'2017-06-03 00:00:00'),(1965,60,5,9,'2017-03-31 00:00:00'),(1965,67,2,8,'2017-07-29 00:00:00'),(1965,74,5,10,'2017-07-15 00:00:00'),(1965,80,9,7,'2017-05-28 00:00:00'),(1965,87,3,9,'2017-04-19 00:00:00'),(1965,94,8,8,'2017-07-29 00:00:00'),(1965,100,2,6,'2017-04-11 00:00:00'),(1965,107,8,6,'2017-09-06 00:00:00'),(1965,114,9,9,'2017-03-14 00:00:00'),(1965,120,5,10,'2017-01-29 00:00:00'),(1965,127,1,6,'2017-09-22 00:00:00'),(1965,134,3,7,'2017-05-30 00:00:00'),(1965,140,9,7,'2017-07-12 00:00:00'),(1965,147,8,8,'2017-03-04 00:00:00'),(1965,153,1,6,'2017-08-03 00:00:00'),(1965,160,9,8,'2017-01-22 00:00:00'),(1965,167,1,9,'2017-09-02 00:00:00'),(1965,173,1,10,'2017-05-22 00:00:00'),(1965,180,4,9,'2017-09-22 00:00:00'),(1965,187,7,7,'2017-09-11 00:00:00'),(1965,193,5,10,'2017-09-26 00:00:00'),(1965,200,9,6,'2017-06-25 00:00:00'),(1966,7,6,7,'2017-03-18 00:00:00'),(1966,14,8,9,'2017-08-11 00:00:00'),(1966,20,4,7,'2017-02-13 00:00:00'),(1966,27,1,9,'2017-02-14 00:00:00'),(1966,34,2,9,'2017-07-05 00:00:00'),(1966,40,1,7,'2017-03-18 00:00:00'),(1966,47,9,9,'2017-03-28 00:00:00'),(1966,54,3,9,'2017-02-01 00:00:00'),(1966,60,3,8,'2017-09-08 00:00:00'),(1966,67,1,9,'2017-01-27 00:00:00'),(1966,74,3,6,'2017-06-03 00:00:00'),(1966,80,3,6,'2017-05-17 00:00:00'),(1966,87,9,9,'2017-08-24 00:00:00'),(1966,94,1,8,'2017-02-24 00:00:00'),(1966,100,7,7,'2017-07-02 00:00:00'),(1966,107,4,6,'2017-07-27 00:00:00'),(1966,114,8,9,'2017-09-20 00:00:00'),(1966,120,6,9,'2017-08-24 00:00:00'),(1966,127,2,9,'2017-03-08 00:00:00'),(1966,134,3,6,'2017-07-07 00:00:00'),(1966,140,4,9,'2017-08-14 00:00:00'),(1966,147,4,7,'2017-09-06 00:00:00'),(1966,153,1,8,'2017-04-03 00:00:00'),(1966,160,6,6,'2017-07-28 00:00:00'),(1966,167,2,9,'2017-01-28 00:00:00'),(1966,173,5,9,'2017-08-16 00:00:00'),(1966,180,2,6,'2017-03-23 00:00:00'),(1966,187,3,9,'2017-05-02 00:00:00'),(1966,193,7,10,'2017-05-15 00:00:00'),(1966,200,7,9,'2017-06-19 00:00:00'),(1967,7,5,10,'2017-06-16 00:00:00'),(1967,14,8,6,'2017-09-08 00:00:00'),(1967,20,6,7,'2017-03-26 00:00:00'),(1967,27,9,7,'2017-06-04 00:00:00'),(1967,34,8,7,'2017-05-03 00:00:00'),(1967,40,1,10,'2017-01-27 00:00:00'),(1967,47,4,9,'2017-03-19 00:00:00'),(1967,54,5,10,'2017-06-21 00:00:00'),(1967,60,4,8,'2017-05-15 00:00:00'),(1967,67,5,10,'2017-08-04 00:00:00'),(1967,74,3,10,'2017-08-11 00:00:00'),(1967,80,4,6,'2017-08-09 00:00:00'),(1967,87,7,8,'2017-02-23 00:00:00'),(1967,94,2,8,'2017-07-26 00:00:00'),(1967,100,8,6,'2017-05-13 00:00:00'),(1967,107,6,7,'2017-04-27 00:00:00'),(1967,114,6,8,'2017-07-13 00:00:00'),(1967,120,3,10,'2017-07-06 00:00:00'),(1967,127,3,9,'2017-03-25 00:00:00'),(1967,134,3,8,'2017-05-14 00:00:00'),(1967,140,8,10,'2017-09-14 00:00:00'),(1967,147,3,9,'2017-06-17 00:00:00'),(1967,153,2,7,'2017-04-07 00:00:00'),(1967,160,7,9,'2017-09-25 00:00:00'),(1967,167,6,9,'2017-08-12 00:00:00'),(1967,173,4,8,'2017-02-03 00:00:00'),(1967,180,1,10,'2017-03-30 00:00:00'),(1967,187,7,8,'2017-02-15 00:00:00'),(1967,193,7,7,'2017-08-16 00:00:00'),(1967,200,6,8,'2017-01-23 00:00:00'),(1968,7,9,9,'2017-09-02 00:00:00'),(1968,14,2,7,'2017-07-22 00:00:00'),(1968,20,3,6,'2017-05-16 00:00:00'),(1968,27,5,8,'2017-06-07 00:00:00'),(1968,34,4,9,'2017-06-28 00:00:00'),(1968,40,7,8,'2017-06-05 00:00:00'),(1968,47,2,9,'2017-03-18 00:00:00'),(1968,54,2,6,'2017-05-28 00:00:00'),(1968,60,2,8,'2017-05-28 00:00:00'),(1968,67,4,10,'2017-08-27 00:00:00'),(1968,74,7,9,'2017-04-02 00:00:00'),(1968,80,8,8,'2017-09-09 00:00:00'),(1968,87,9,10,'2017-04-17 00:00:00'),(1968,94,5,8,'2017-04-06 00:00:00'),(1968,100,4,6,'2017-01-28 00:00:00'),(1968,107,3,6,'2017-04-20 00:00:00'),(1968,114,6,9,'2017-06-28 00:00:00'),(1968,120,2,10,'2017-02-09 00:00:00'),(1968,127,6,10,'2017-06-18 00:00:00'),(1968,134,1,7,'2017-02-28 00:00:00'),(1968,140,7,9,'2017-09-25 00:00:00'),(1968,147,1,9,'2017-03-31 00:00:00'),(1968,153,1,8,'2017-01-20 00:00:00'),(1968,160,9,8,'2017-06-22 00:00:00'),(1968,167,6,6,'2017-02-21 00:00:00'),(1968,173,3,9,'2017-04-18 00:00:00'),(1968,180,5,10,'2017-03-05 00:00:00'),(1968,187,9,7,'2017-05-14 00:00:00'),(1968,193,9,6,'2017-07-13 00:00:00'),(1968,200,3,6,'2017-02-17 00:00:00'),(1969,7,9,9,'2017-06-11 00:00:00'),(1969,14,1,8,'2017-08-29 00:00:00'),(1969,20,6,7,'2017-04-23 00:00:00'),(1969,27,2,8,'2017-09-21 00:00:00'),(1969,34,6,9,'2017-01-26 00:00:00'),(1969,40,1,9,'2017-05-01 00:00:00'),(1969,47,1,8,'2017-05-16 00:00:00'),(1969,54,2,6,'2017-02-20 00:00:00'),(1969,60,2,8,'2017-04-19 00:00:00'),(1969,67,5,10,'2017-04-08 00:00:00'),(1969,74,3,9,'2017-08-23 00:00:00'),(1969,80,1,10,'2017-07-13 00:00:00'),(1969,87,7,10,'2017-02-22 00:00:00'),(1969,94,7,10,'2017-03-15 00:00:00'),(1969,100,4,8,'2017-07-15 00:00:00'),(1969,107,8,7,'2017-03-14 00:00:00'),(1969,114,5,6,'2017-04-10 00:00:00'),(1969,120,3,10,'2017-02-19 00:00:00'),(1969,127,4,8,'2017-08-27 00:00:00'),(1969,134,7,8,'2017-04-09 00:00:00'),(1969,140,7,9,'2017-04-24 00:00:00'),(1969,147,5,8,'2017-07-03 00:00:00'),(1969,153,5,8,'2017-03-27 00:00:00'),(1969,160,3,10,'2017-01-30 00:00:00'),(1969,167,4,6,'2017-03-10 00:00:00'),(1969,173,3,8,'2017-04-15 00:00:00'),(1969,180,9,7,'2017-04-08 00:00:00'),(1969,187,3,10,'2017-04-21 00:00:00'),(1969,193,9,10,'2017-09-26 00:00:00'),(1969,200,9,6,'2017-09-09 00:00:00'),(1970,7,5,7,'2017-02-09 00:00:00'),(1970,14,4,6,'2017-03-18 00:00:00'),(1970,20,8,7,'2017-07-22 00:00:00'),(1970,27,2,7,'2017-04-28 00:00:00'),(1970,34,3,10,'2017-06-09 00:00:00'),(1970,40,5,8,'2017-04-15 00:00:00'),(1970,47,4,9,'2017-04-18 00:00:00'),(1970,54,8,8,'2017-03-28 00:00:00'),(1970,60,2,6,'2017-07-15 00:00:00'),(1970,67,3,9,'2017-04-02 00:00:00'),(1970,74,8,9,'2017-07-07 00:00:00'),(1970,80,8,9,'2017-09-19 00:00:00'),(1970,87,1,9,'2017-04-08 00:00:00'),(1970,94,2,8,'2017-09-01 00:00:00'),(1970,100,2,8,'2017-06-29 00:00:00'),(1970,107,5,9,'2017-01-27 00:00:00'),(1970,114,8,6,'2017-02-03 00:00:00'),(1970,120,3,9,'2017-03-12 00:00:00'),(1970,127,6,9,'2017-06-21 00:00:00'),(1970,134,6,7,'2017-07-13 00:00:00'),(1970,140,6,8,'2017-03-05 00:00:00'),(1970,147,2,8,'2017-04-14 00:00:00'),(1970,153,9,6,'2017-08-08 00:00:00'),(1970,160,7,9,'2017-09-16 00:00:00'),(1970,167,3,8,'2017-06-02 00:00:00'),(1970,173,9,8,'2017-02-01 00:00:00'),(1970,180,4,6,'2017-02-06 00:00:00'),(1970,187,1,9,'2017-01-29 00:00:00'),(1970,193,4,10,'2017-08-10 00:00:00'),(1970,200,8,7,'2017-08-24 00:00:00'),(1971,7,3,7,'2017-07-03 00:00:00'),(1971,14,8,7,'2017-01-26 00:00:00'),(1971,20,9,6,'2017-05-26 00:00:00'),(1971,27,8,10,'2017-08-11 00:00:00'),(1971,34,3,8,'2017-05-01 00:00:00'),(1971,40,5,10,'2017-05-31 00:00:00'),(1971,47,1,7,'2017-04-19 00:00:00'),(1971,54,9,6,'2017-02-09 00:00:00'),(1971,60,4,10,'2017-02-19 00:00:00'),(1971,67,1,6,'2017-01-30 00:00:00'),(1971,74,8,7,'2017-03-23 00:00:00'),(1971,80,4,9,'2017-04-01 00:00:00'),(1971,87,5,10,'2017-04-29 00:00:00'),(1971,94,1,6,'2017-05-31 00:00:00'),(1971,100,7,6,'2017-01-20 00:00:00'),(1971,107,5,10,'2017-04-10 00:00:00'),(1971,114,6,6,'2017-03-06 00:00:00'),(1971,120,9,9,'2017-05-24 00:00:00'),(1971,127,6,10,'2017-05-19 00:00:00'),(1971,134,5,10,'2017-02-06 00:00:00'),(1971,140,6,8,'2017-04-23 00:00:00'),(1971,147,7,7,'2017-04-12 00:00:00'),(1971,153,6,6,'2017-04-02 00:00:00'),(1971,160,8,10,'2017-07-06 00:00:00'),(1971,167,3,7,'2017-07-11 00:00:00'),(1971,173,2,8,'2017-04-28 00:00:00'),(1971,180,4,6,'2017-09-17 00:00:00'),(1971,187,1,10,'2017-07-14 00:00:00'),(1971,193,6,9,'2017-02-22 00:00:00'),(1971,200,5,8,'2017-04-27 00:00:00'),(1972,7,9,8,'2017-03-13 00:00:00'),(1972,14,6,6,'2017-07-14 00:00:00'),(1972,20,7,9,'2017-07-17 00:00:00'),(1972,27,4,6,'2017-07-26 00:00:00'),(1972,34,8,8,'2017-07-27 00:00:00'),(1972,40,1,9,'2017-02-20 00:00:00'),(1972,47,4,10,'2017-08-08 00:00:00'),(1972,54,9,8,'2017-04-17 00:00:00'),(1972,60,4,7,'2017-08-03 00:00:00'),(1972,67,1,8,'2017-08-14 00:00:00'),(1972,74,9,7,'2017-02-14 00:00:00'),(1972,80,5,6,'2017-07-13 00:00:00'),(1972,87,9,8,'2017-06-03 00:00:00'),(1972,94,2,10,'2017-04-13 00:00:00'),(1972,100,9,9,'2017-06-09 00:00:00'),(1972,107,8,7,'2017-09-01 00:00:00'),(1972,114,2,10,'2017-06-04 00:00:00'),(1972,120,8,8,'2017-04-20 00:00:00'),(1972,127,7,8,'2017-06-15 00:00:00'),(1972,134,8,6,'2017-03-22 00:00:00'),(1972,140,5,8,'2017-05-07 00:00:00'),(1972,147,3,8,'2017-03-08 00:00:00'),(1972,154,3,9,'2017-05-12 00:00:00'),(1972,160,3,10,'2017-09-12 00:00:00'),(1972,167,4,9,'2017-03-27 00:00:00'),(1972,173,4,10,'2017-05-24 00:00:00'),(1972,180,4,8,'2017-08-02 00:00:00'),(1972,187,8,6,'2017-03-27 00:00:00'),(1972,193,2,8,'2017-07-27 00:00:00'),(1972,200,6,10,'2017-05-07 00:00:00'),(1973,7,3,8,'2017-03-13 00:00:00'),(1973,14,7,6,'2017-03-23 00:00:00'),(1973,20,2,7,'2017-04-28 00:00:00'),(1973,27,5,10,'2017-07-10 00:00:00'),(1973,34,8,10,'2017-08-04 00:00:00'),(1973,40,8,6,'2017-08-08 00:00:00'),(1973,47,5,8,'2017-07-15 00:00:00'),(1973,54,5,6,'2017-01-30 00:00:00'),(1973,60,7,7,'2017-05-22 00:00:00'),(1973,67,4,9,'2017-06-04 00:00:00'),(1973,74,5,10,'2017-01-29 00:00:00'),(1973,80,6,10,'2017-03-17 00:00:00'),(1973,87,1,9,'2017-06-16 00:00:00'),(1973,94,6,9,'2017-04-26 00:00:00'),(1973,100,5,7,'2017-05-10 00:00:00'),(1973,107,9,6,'2017-02-23 00:00:00'),(1973,114,5,8,'2017-04-02 00:00:00'),(1973,120,9,10,'2017-06-06 00:00:00'),(1973,127,1,10,'2017-09-15 00:00:00'),(1973,134,1,7,'2017-05-21 00:00:00'),(1973,140,7,10,'2017-04-26 00:00:00'),(1973,147,5,7,'2017-08-04 00:00:00'),(1973,154,1,7,'2017-05-22 00:00:00'),(1973,160,5,10,'2017-09-21 00:00:00'),(1973,167,1,10,'2017-04-08 00:00:00'),(1973,173,2,10,'2017-06-06 00:00:00'),(1973,180,3,7,'2017-03-26 00:00:00'),(1973,187,5,9,'2017-01-27 00:00:00'),(1973,193,3,9,'2017-07-18 00:00:00'),(1973,200,8,7,'2017-07-05 00:00:00'),(1974,7,4,7,'2017-07-20 00:00:00'),(1974,14,1,8,'2017-02-03 00:00:00'),(1974,20,1,9,'2017-07-20 00:00:00'),(1974,27,9,10,'2017-06-11 00:00:00'),(1974,34,6,8,'2017-05-20 00:00:00'),(1974,40,6,7,'2017-05-22 00:00:00'),(1974,47,8,8,'2017-03-15 00:00:00'),(1974,54,4,6,'2017-01-25 00:00:00'),(1974,60,8,8,'2017-02-23 00:00:00'),(1974,67,5,7,'2017-02-08 00:00:00'),(1974,74,4,8,'2017-07-13 00:00:00'),(1974,80,5,7,'2017-02-23 00:00:00'),(1974,87,1,7,'2017-09-16 00:00:00'),(1974,94,3,8,'2017-07-29 00:00:00'),(1974,100,2,8,'2017-09-03 00:00:00'),(1974,107,8,6,'2017-03-19 00:00:00'),(1974,114,3,7,'2017-03-05 00:00:00'),(1974,120,9,6,'2017-06-14 00:00:00'),(1974,127,1,8,'2017-05-05 00:00:00'),(1974,134,6,8,'2017-07-13 00:00:00'),(1974,140,8,6,'2017-05-01 00:00:00'),(1974,147,3,8,'2017-06-02 00:00:00'),(1974,154,2,10,'2017-09-13 00:00:00'),(1974,160,3,7,'2017-02-12 00:00:00'),(1974,167,1,8,'2017-05-26 00:00:00'),(1974,173,5,8,'2017-05-19 00:00:00'),(1974,180,4,6,'2017-07-21 00:00:00'),(1974,187,9,6,'2017-07-17 00:00:00'),(1974,193,2,7,'2017-07-15 00:00:00'),(1974,200,7,9,'2017-09-26 00:00:00'),(1975,7,1,10,'2017-02-02 00:00:00'),(1975,14,1,6,'2017-06-10 00:00:00'),(1975,20,1,8,'2017-05-12 00:00:00'),(1975,27,6,8,'2017-02-25 00:00:00'),(1975,34,6,10,'2017-07-07 00:00:00'),(1975,40,5,10,'2017-05-28 00:00:00'),(1975,47,4,7,'2017-07-09 00:00:00'),(1975,54,7,9,'2017-02-18 00:00:00'),(1975,60,4,8,'2017-02-12 00:00:00'),(1975,67,3,10,'2017-07-02 00:00:00'),(1975,74,4,9,'2017-09-15 00:00:00'),(1975,80,6,7,'2017-08-23 00:00:00'),(1975,87,7,10,'2017-06-02 00:00:00'),(1975,94,4,10,'2017-07-03 00:00:00'),(1975,100,5,9,'2017-06-11 00:00:00'),(1975,107,2,7,'2017-09-01 00:00:00'),(1975,114,9,6,'2017-03-25 00:00:00'),(1975,120,7,7,'2017-08-30 00:00:00'),(1975,127,2,6,'2017-03-05 00:00:00'),(1975,134,3,7,'2017-03-23 00:00:00'),(1975,140,2,9,'2017-01-21 00:00:00'),(1975,147,8,8,'2017-07-24 00:00:00'),(1975,154,2,8,'2017-02-20 00:00:00'),(1975,160,7,6,'2017-02-21 00:00:00'),(1975,167,8,6,'2017-05-16 00:00:00'),(1975,173,8,10,'2017-08-10 00:00:00'),(1975,180,1,7,'2017-05-11 00:00:00'),(1975,187,2,6,'2017-02-11 00:00:00'),(1975,193,8,10,'2017-04-25 00:00:00'),(1975,200,3,6,'2017-08-13 00:00:00'),(1976,7,1,7,'2017-04-24 00:00:00'),(1976,14,7,6,'2017-02-08 00:00:00'),(1976,20,1,9,'2017-02-07 00:00:00'),(1976,27,1,9,'2017-08-30 00:00:00'),(1976,34,4,8,'2017-05-08 00:00:00'),(1976,40,7,6,'2017-02-22 00:00:00'),(1976,47,2,8,'2017-08-07 00:00:00'),(1976,54,8,8,'2017-05-12 00:00:00'),(1976,60,7,7,'2017-07-20 00:00:00'),(1976,67,3,6,'2017-07-25 00:00:00'),(1976,74,2,8,'2017-07-11 00:00:00'),(1976,80,7,7,'2017-03-27 00:00:00'),(1976,87,1,6,'2017-04-05 00:00:00'),(1976,94,2,10,'2017-07-09 00:00:00'),(1976,100,6,10,'2017-02-07 00:00:00'),(1976,107,3,8,'2017-04-24 00:00:00'),(1976,114,9,9,'2017-04-06 00:00:00'),(1976,120,7,7,'2017-06-24 00:00:00'),(1976,127,2,6,'2017-06-23 00:00:00'),(1976,134,6,10,'2017-02-01 00:00:00'),(1976,140,5,6,'2017-09-12 00:00:00'),(1976,147,2,7,'2017-07-10 00:00:00'),(1976,154,7,6,'2017-02-27 00:00:00'),(1976,160,6,9,'2017-06-13 00:00:00'),(1976,167,3,9,'2017-07-14 00:00:00'),(1976,173,3,9,'2017-04-12 00:00:00'),(1976,180,3,9,'2017-09-17 00:00:00'),(1976,187,3,8,'2017-09-11 00:00:00'),(1976,193,9,10,'2017-03-23 00:00:00'),(1976,200,8,7,'2017-05-28 00:00:00'),(1977,7,5,9,'2017-07-19 00:00:00'),(1977,14,9,8,'2017-04-04 00:00:00'),(1977,20,2,9,'2017-02-15 00:00:00'),(1977,27,1,7,'2017-09-22 00:00:00'),(1977,34,7,7,'2017-03-18 00:00:00'),(1977,40,8,10,'2017-04-24 00:00:00'),(1977,47,8,7,'2017-01-28 00:00:00'),(1977,54,8,9,'2017-05-06 00:00:00'),(1977,60,7,10,'2017-07-18 00:00:00'),(1977,67,8,9,'2017-06-29 00:00:00'),(1977,74,2,6,'2017-02-11 00:00:00'),(1977,80,7,10,'2017-08-31 00:00:00'),(1977,87,8,8,'2017-03-17 00:00:00'),(1977,94,1,10,'2017-03-11 00:00:00'),(1977,100,1,7,'2017-06-27 00:00:00'),(1977,107,5,8,'2017-05-15 00:00:00'),(1977,114,5,8,'2017-06-23 00:00:00'),(1977,120,6,8,'2017-07-21 00:00:00'),(1977,127,9,9,'2017-04-02 00:00:00'),(1977,134,2,8,'2017-01-26 00:00:00'),(1977,140,5,9,'2017-04-05 00:00:00'),(1977,147,1,6,'2017-05-24 00:00:00'),(1977,154,2,6,'2017-08-18 00:00:00'),(1977,160,6,9,'2017-09-20 00:00:00'),(1977,167,3,10,'2017-01-25 00:00:00'),(1977,173,3,7,'2017-05-11 00:00:00'),(1977,180,7,8,'2017-05-16 00:00:00'),(1977,187,3,7,'2017-07-11 00:00:00'),(1977,193,5,9,'2017-04-18 00:00:00'),(1977,200,5,10,'2017-02-15 00:00:00'),(1978,7,8,10,'2017-02-19 00:00:00'),(1978,14,3,10,'2017-07-10 00:00:00'),(1978,20,6,6,'2017-07-15 00:00:00'),(1978,27,8,9,'2017-04-15 00:00:00'),(1978,34,2,6,'2017-06-12 00:00:00'),(1978,40,1,8,'2017-03-18 00:00:00'),(1978,47,3,10,'2017-04-20 00:00:00'),(1978,54,7,8,'2017-05-25 00:00:00'),(1978,60,8,10,'2017-04-08 00:00:00'),(1978,67,8,10,'2017-09-18 00:00:00'),(1978,74,4,10,'2017-06-17 00:00:00'),(1978,80,2,8,'2017-03-24 00:00:00'),(1978,87,9,10,'2017-02-15 00:00:00'),(1978,94,3,10,'2017-09-13 00:00:00'),(1978,100,9,8,'2017-03-11 00:00:00'),(1978,107,7,10,'2017-02-20 00:00:00'),(1978,114,8,9,'2017-04-26 00:00:00'),(1978,120,6,8,'2017-02-14 00:00:00'),(1978,127,6,7,'2017-09-22 00:00:00'),(1978,134,8,8,'2017-09-23 00:00:00'),(1978,140,9,10,'2017-03-17 00:00:00'),(1978,147,2,6,'2017-04-06 00:00:00'),(1978,154,2,9,'2017-08-10 00:00:00'),(1978,160,3,9,'2017-02-11 00:00:00'),(1978,167,1,7,'2017-08-15 00:00:00'),(1978,173,5,8,'2017-07-04 00:00:00'),(1978,180,7,6,'2017-06-08 00:00:00'),(1978,187,3,10,'2017-06-28 00:00:00'),(1978,193,8,8,'2017-05-02 00:00:00'),(1978,200,7,7,'2017-08-14 00:00:00'),(1979,7,1,6,'2017-08-27 00:00:00'),(1979,14,1,9,'2017-02-16 00:00:00'),(1979,20,4,9,'2017-02-17 00:00:00'),(1979,27,6,9,'2017-08-26 00:00:00'),(1979,34,5,6,'2017-07-12 00:00:00'),(1979,40,4,10,'2017-03-13 00:00:00'),(1979,47,7,6,'2017-05-28 00:00:00'),(1979,54,6,10,'2017-08-11 00:00:00'),(1979,60,4,7,'2017-08-18 00:00:00'),(1979,67,2,7,'2017-07-20 00:00:00'),(1979,74,9,10,'2017-01-30 00:00:00'),(1979,80,1,7,'2017-08-22 00:00:00'),(1979,87,9,8,'2017-03-04 00:00:00'),(1979,94,8,7,'2017-02-11 00:00:00'),(1979,100,5,8,'2017-03-14 00:00:00'),(1979,107,3,9,'2017-05-20 00:00:00'),(1979,114,1,8,'2017-07-26 00:00:00'),(1979,120,5,9,'2017-03-23 00:00:00'),(1979,127,8,10,'2017-08-01 00:00:00'),(1979,134,4,10,'2017-03-14 00:00:00'),(1979,140,6,6,'2017-06-07 00:00:00'),(1979,147,9,8,'2017-06-13 00:00:00'),(1979,154,6,8,'2017-03-06 00:00:00'),(1979,160,2,7,'2017-08-12 00:00:00'),(1979,167,6,6,'2017-06-27 00:00:00'),(1979,173,3,9,'2017-09-13 00:00:00'),(1979,180,7,9,'2017-03-25 00:00:00'),(1979,187,9,9,'2017-03-08 00:00:00'),(1979,193,2,7,'2017-02-03 00:00:00'),(1979,200,8,8,'2017-01-30 00:00:00'),(1980,7,9,9,'2017-04-15 00:00:00'),(1980,14,3,8,'2017-01-30 00:00:00'),(1980,20,6,8,'2017-02-07 00:00:00'),(1980,27,6,6,'2017-08-29 00:00:00'),(1980,34,6,7,'2017-08-03 00:00:00'),(1980,40,1,8,'2017-06-13 00:00:00'),(1980,47,2,6,'2017-08-04 00:00:00'),(1980,54,9,7,'2017-08-05 00:00:00'),(1980,60,8,10,'2017-06-19 00:00:00'),(1980,67,9,7,'2017-08-16 00:00:00'),(1980,74,3,6,'2017-04-20 00:00:00'),(1980,80,2,8,'2017-08-10 00:00:00'),(1980,87,6,10,'2017-05-21 00:00:00'),(1980,94,5,6,'2017-03-03 00:00:00'),(1980,100,9,10,'2017-04-15 00:00:00'),(1980,107,8,7,'2017-05-07 00:00:00'),(1980,114,4,10,'2017-07-31 00:00:00'),(1980,120,6,9,'2017-07-17 00:00:00'),(1980,127,1,6,'2017-09-05 00:00:00'),(1980,134,6,10,'2017-09-16 00:00:00'),(1980,140,4,10,'2017-06-28 00:00:00'),(1980,147,8,6,'2017-02-10 00:00:00'),(1980,154,2,8,'2017-05-15 00:00:00'),(1980,160,6,6,'2017-06-18 00:00:00'),(1980,167,8,10,'2017-09-05 00:00:00'),(1980,173,5,7,'2017-05-27 00:00:00'),(1980,180,7,7,'2017-06-01 00:00:00'),(1980,187,5,10,'2017-05-19 00:00:00'),(1980,193,7,8,'2017-03-19 00:00:00'),(1980,200,5,8,'2017-02-18 00:00:00'),(1981,7,6,6,'2017-06-20 00:00:00'),(1981,14,8,9,'2017-07-27 00:00:00'),(1981,20,7,9,'2017-08-11 00:00:00'),(1981,27,6,10,'2017-07-16 00:00:00'),(1981,34,4,7,'2017-02-11 00:00:00'),(1981,40,5,10,'2017-02-18 00:00:00'),(1981,47,5,9,'2017-08-21 00:00:00'),(1981,54,2,10,'2017-08-25 00:00:00'),(1981,60,1,7,'2017-02-15 00:00:00'),(1981,67,3,6,'2017-09-06 00:00:00'),(1981,74,4,6,'2017-03-07 00:00:00'),(1981,80,1,6,'2017-08-13 00:00:00'),(1981,87,7,10,'2017-07-30 00:00:00'),(1981,94,5,6,'2017-04-14 00:00:00'),(1981,100,9,6,'2017-01-27 00:00:00'),(1981,107,1,8,'2017-08-07 00:00:00'),(1981,114,7,8,'2017-07-12 00:00:00'),(1981,120,9,8,'2017-08-04 00:00:00'),(1981,127,1,7,'2017-08-28 00:00:00'),(1981,134,5,9,'2017-05-24 00:00:00'),(1981,140,1,6,'2017-07-06 00:00:00'),(1981,147,3,7,'2017-03-04 00:00:00'),(1981,154,2,9,'2017-03-18 00:00:00'),(1981,160,8,10,'2017-09-02 00:00:00'),(1981,167,9,8,'2017-07-28 00:00:00'),(1981,174,5,6,'2017-09-23 00:00:00'),(1981,180,6,9,'2017-03-16 00:00:00'),(1981,187,3,9,'2017-07-11 00:00:00'),(1981,193,7,7,'2017-03-06 00:00:00'),(1981,200,8,9,'2017-05-09 00:00:00'),(1982,7,3,7,'2017-03-11 00:00:00'),(1982,14,4,10,'2017-08-13 00:00:00'),(1982,20,9,10,'2017-08-23 00:00:00'),(1982,27,7,6,'2017-03-13 00:00:00'),(1982,34,2,10,'2017-04-05 00:00:00'),(1982,40,3,10,'2017-02-21 00:00:00'),(1982,47,6,10,'2017-07-22 00:00:00'),(1982,54,2,10,'2017-05-26 00:00:00'),(1982,60,3,10,'2017-02-16 00:00:00'),(1982,67,9,9,'2017-08-19 00:00:00'),(1982,74,7,8,'2017-05-01 00:00:00'),(1982,80,3,10,'2017-08-14 00:00:00'),(1982,87,8,10,'2017-04-27 00:00:00'),(1982,94,1,8,'2017-05-16 00:00:00'),(1982,100,9,10,'2017-03-17 00:00:00'),(1982,107,6,9,'2017-09-01 00:00:00'),(1982,114,5,9,'2017-02-04 00:00:00'),(1982,120,6,7,'2017-05-05 00:00:00'),(1982,127,2,7,'2017-03-26 00:00:00'),(1982,134,6,8,'2017-01-25 00:00:00'),(1982,140,9,10,'2017-03-15 00:00:00'),(1982,147,8,8,'2017-07-09 00:00:00'),(1982,154,7,6,'2017-08-12 00:00:00'),(1982,160,4,9,'2017-07-10 00:00:00'),(1982,167,3,6,'2017-03-07 00:00:00'),(1982,174,7,8,'2017-06-14 00:00:00'),(1982,180,8,6,'2017-01-25 00:00:00'),(1982,187,5,8,'2017-04-12 00:00:00'),(1982,193,5,8,'2017-02-27 00:00:00'),(1982,200,7,6,'2017-06-07 00:00:00'),(1983,7,4,10,'2017-04-20 00:00:00'),(1983,14,4,10,'2017-02-27 00:00:00'),(1983,20,9,7,'2017-07-27 00:00:00'),(1983,27,2,8,'2017-05-23 00:00:00'),(1983,34,2,9,'2017-05-09 00:00:00'),(1983,40,3,8,'2017-05-08 00:00:00'),(1983,47,7,8,'2017-05-08 00:00:00'),(1983,54,2,7,'2017-09-21 00:00:00'),(1983,60,7,7,'2017-02-09 00:00:00'),(1983,67,3,9,'2017-03-20 00:00:00'),(1983,74,6,10,'2017-06-20 00:00:00'),(1983,80,9,9,'2017-08-28 00:00:00'),(1983,87,2,9,'2017-01-29 00:00:00'),(1983,94,4,9,'2017-09-09 00:00:00'),(1983,100,2,7,'2017-04-13 00:00:00'),(1983,107,5,6,'2017-06-04 00:00:00'),(1983,114,9,6,'2017-06-12 00:00:00'),(1983,120,6,7,'2017-08-18 00:00:00'),(1983,127,5,6,'2017-02-15 00:00:00'),(1983,134,9,10,'2017-05-29 00:00:00'),(1983,140,8,10,'2017-04-23 00:00:00'),(1983,147,4,8,'2017-03-01 00:00:00'),(1983,154,3,8,'2017-06-26 00:00:00'),(1983,160,5,9,'2017-03-01 00:00:00'),(1983,167,2,9,'2017-04-29 00:00:00'),(1983,174,9,8,'2017-09-06 00:00:00'),(1983,180,7,7,'2017-03-29 00:00:00'),(1983,187,6,6,'2017-07-01 00:00:00'),(1983,193,6,9,'2017-09-07 00:00:00'),(1983,200,1,10,'2017-04-06 00:00:00'),(1984,7,8,7,'2017-09-05 00:00:00'),(1984,14,3,9,'2017-02-24 00:00:00'),(1984,20,6,8,'2017-04-13 00:00:00'),(1984,27,3,7,'2017-02-02 00:00:00'),(1984,34,7,6,'2017-09-17 00:00:00'),(1984,40,9,7,'2017-02-16 00:00:00'),(1984,47,5,8,'2017-06-10 00:00:00'),(1984,54,4,9,'2017-03-06 00:00:00'),(1984,60,9,9,'2017-05-19 00:00:00'),(1984,67,3,10,'2017-03-16 00:00:00'),(1984,74,6,8,'2017-07-18 00:00:00'),(1984,80,4,10,'2017-02-06 00:00:00'),(1984,87,6,7,'2017-04-05 00:00:00'),(1984,94,8,9,'2017-08-22 00:00:00'),(1984,100,2,8,'2017-03-30 00:00:00'),(1984,107,7,8,'2017-01-21 00:00:00'),(1984,114,8,9,'2017-09-06 00:00:00'),(1984,120,2,7,'2017-06-03 00:00:00'),(1984,127,9,6,'2017-08-05 00:00:00'),(1984,134,1,7,'2017-03-13 00:00:00'),(1984,140,1,9,'2017-05-22 00:00:00'),(1984,147,4,8,'2017-07-14 00:00:00'),(1984,154,2,10,'2017-03-22 00:00:00'),(1984,160,6,7,'2017-09-18 00:00:00'),(1984,167,5,6,'2017-05-31 00:00:00'),(1984,174,9,6,'2017-03-01 00:00:00'),(1984,180,4,10,'2017-09-07 00:00:00'),(1984,187,6,8,'2017-08-02 00:00:00'),(1984,193,4,7,'2017-09-12 00:00:00'),(1984,200,9,10,'2017-07-14 00:00:00'),(1985,7,8,8,'2017-08-11 00:00:00'),(1985,14,7,6,'2017-03-27 00:00:00'),(1985,20,1,6,'2017-08-13 00:00:00'),(1985,27,5,10,'2017-08-05 00:00:00'),(1985,34,5,8,'2017-04-03 00:00:00'),(1985,40,9,9,'2017-04-24 00:00:00'),(1985,47,8,9,'2017-03-15 00:00:00'),(1985,54,9,7,'2017-08-26 00:00:00'),(1985,60,4,8,'2017-07-17 00:00:00'),(1985,67,9,7,'2017-05-31 00:00:00'),(1985,74,9,9,'2017-07-10 00:00:00'),(1985,80,9,8,'2017-03-02 00:00:00'),(1985,87,1,8,'2017-07-19 00:00:00'),(1985,94,2,8,'2017-03-27 00:00:00'),(1985,100,4,6,'2017-01-26 00:00:00'),(1985,107,1,10,'2017-02-10 00:00:00'),(1985,114,5,7,'2017-03-18 00:00:00'),(1985,120,5,9,'2017-03-29 00:00:00'),(1985,127,4,8,'2017-05-27 00:00:00'),(1985,134,3,7,'2017-09-03 00:00:00'),(1985,140,8,7,'2017-04-16 00:00:00'),(1985,147,6,10,'2017-07-17 00:00:00'),(1985,154,3,10,'2017-03-21 00:00:00'),(1985,160,9,9,'2017-09-17 00:00:00'),(1985,167,3,10,'2017-07-14 00:00:00'),(1985,174,8,9,'2017-01-28 00:00:00'),(1985,180,1,8,'2017-06-29 00:00:00'),(1985,187,4,10,'2017-05-11 00:00:00'),(1985,193,1,7,'2017-08-15 00:00:00'),(1985,200,1,9,'2017-09-16 00:00:00'),(1986,7,2,6,'2017-05-07 00:00:00'),(1986,14,4,8,'2017-08-23 00:00:00'),(1986,20,5,6,'2017-07-26 00:00:00'),(1986,27,2,7,'2017-08-28 00:00:00'),(1986,34,2,9,'2017-09-12 00:00:00'),(1986,40,2,10,'2017-02-14 00:00:00'),(1986,47,9,7,'2017-03-19 00:00:00'),(1986,54,3,7,'2017-09-10 00:00:00'),(1986,60,6,6,'2017-06-08 00:00:00'),(1986,67,3,6,'2017-02-05 00:00:00'),(1986,74,3,10,'2017-01-20 00:00:00'),(1986,80,6,8,'2017-08-17 00:00:00'),(1986,87,6,9,'2017-08-30 00:00:00'),(1986,94,4,8,'2017-08-18 00:00:00'),(1986,100,8,10,'2017-05-28 00:00:00'),(1986,107,2,10,'2017-07-26 00:00:00'),(1986,114,2,8,'2017-06-08 00:00:00'),(1986,120,6,6,'2017-04-11 00:00:00'),(1986,127,4,8,'2017-02-06 00:00:00'),(1986,134,4,10,'2017-05-16 00:00:00'),(1986,140,1,9,'2017-02-22 00:00:00'),(1986,147,1,7,'2017-05-10 00:00:00'),(1986,154,8,8,'2017-09-09 00:00:00'),(1986,160,2,6,'2017-03-10 00:00:00'),(1986,167,9,8,'2017-03-07 00:00:00'),(1986,174,2,6,'2017-08-05 00:00:00'),(1986,180,7,8,'2017-03-19 00:00:00'),(1986,187,1,10,'2017-08-22 00:00:00'),(1986,193,1,8,'2017-06-13 00:00:00'),(1986,200,8,8,'2017-07-14 00:00:00'),(1987,7,9,9,'2017-08-21 00:00:00'),(1987,14,8,9,'2017-05-06 00:00:00'),(1987,20,6,9,'2017-03-16 00:00:00'),(1987,27,9,7,'2017-05-03 00:00:00'),(1987,34,5,7,'2017-09-10 00:00:00'),(1987,40,3,6,'2017-04-25 00:00:00'),(1987,47,6,9,'2017-07-16 00:00:00'),(1987,54,3,9,'2017-09-22 00:00:00'),(1987,60,4,8,'2017-01-25 00:00:00'),(1987,67,7,7,'2017-07-15 00:00:00'),(1987,74,9,10,'2017-09-26 00:00:00'),(1987,80,2,9,'2017-04-27 00:00:00'),(1987,87,9,8,'2017-04-03 00:00:00'),(1987,94,3,8,'2017-04-04 00:00:00'),(1987,100,2,10,'2017-02-26 00:00:00'),(1987,107,3,9,'2017-07-19 00:00:00'),(1987,114,1,8,'2017-05-17 00:00:00'),(1987,120,4,6,'2017-05-05 00:00:00'),(1987,127,2,9,'2017-02-09 00:00:00'),(1987,134,9,10,'2017-08-21 00:00:00'),(1987,140,2,10,'2017-02-11 00:00:00'),(1987,147,7,7,'2017-03-07 00:00:00'),(1987,154,6,7,'2017-05-16 00:00:00'),(1987,160,6,6,'2017-08-16 00:00:00'),(1987,167,1,10,'2017-09-10 00:00:00'),(1987,174,3,9,'2017-09-02 00:00:00'),(1987,180,6,6,'2017-08-27 00:00:00'),(1987,187,7,8,'2017-06-24 00:00:00'),(1987,193,5,8,'2017-09-23 00:00:00'),(1987,200,6,8,'2017-07-26 00:00:00'),(1988,7,3,8,'2017-05-05 00:00:00'),(1988,14,6,7,'2017-06-25 00:00:00'),(1988,20,8,8,'2017-05-31 00:00:00'),(1988,27,1,7,'2017-08-07 00:00:00'),(1988,34,8,7,'2017-09-26 00:00:00'),(1988,40,9,8,'2017-01-23 00:00:00'),(1988,47,6,10,'2017-06-17 00:00:00'),(1988,54,7,8,'2017-04-10 00:00:00'),(1988,60,8,9,'2017-05-31 00:00:00'),(1988,67,2,9,'2017-06-06 00:00:00'),(1988,74,5,6,'2017-04-09 00:00:00'),(1988,80,4,7,'2017-07-30 00:00:00'),(1988,87,9,6,'2017-01-23 00:00:00'),(1988,94,2,7,'2017-02-27 00:00:00'),(1988,100,8,6,'2017-05-23 00:00:00'),(1988,107,2,9,'2017-08-09 00:00:00'),(1988,114,6,10,'2017-02-05 00:00:00'),(1988,120,8,8,'2017-04-13 00:00:00'),(1988,127,1,9,'2017-04-09 00:00:00'),(1988,134,9,8,'2017-05-24 00:00:00'),(1988,140,9,10,'2017-02-22 00:00:00'),(1988,147,4,10,'2017-09-22 00:00:00'),(1988,154,1,7,'2017-08-23 00:00:00'),(1988,160,3,8,'2017-06-03 00:00:00'),(1988,167,5,10,'2017-05-17 00:00:00'),(1988,174,6,9,'2017-09-12 00:00:00'),(1988,180,3,8,'2017-04-06 00:00:00'),(1988,187,9,6,'2017-08-25 00:00:00'),(1988,193,4,9,'2017-02-23 00:00:00'),(1988,200,5,8,'2017-02-20 00:00:00'),(1989,7,7,10,'2017-03-08 00:00:00'),(1989,14,1,8,'2017-05-15 00:00:00'),(1989,20,1,6,'2017-09-17 00:00:00'),(1989,27,2,6,'2017-03-20 00:00:00'),(1989,34,3,10,'2017-04-21 00:00:00'),(1989,40,1,10,'2017-07-09 00:00:00'),(1989,47,1,7,'2017-08-11 00:00:00'),(1989,54,9,8,'2017-07-19 00:00:00'),(1989,60,4,10,'2017-04-23 00:00:00'),(1989,67,3,7,'2017-08-02 00:00:00'),(1989,74,5,6,'2017-02-11 00:00:00'),(1989,80,2,8,'2017-03-08 00:00:00'),(1989,87,8,6,'2017-09-15 00:00:00'),(1989,94,1,10,'2017-02-21 00:00:00'),(1989,100,8,8,'2017-04-25 00:00:00'),(1989,107,1,10,'2017-02-27 00:00:00'),(1989,114,4,7,'2017-06-24 00:00:00'),(1989,120,9,6,'2017-04-27 00:00:00'),(1989,127,2,7,'2017-05-02 00:00:00'),(1989,134,2,8,'2017-06-22 00:00:00'),(1989,140,8,6,'2017-03-01 00:00:00'),(1989,147,5,8,'2017-09-18 00:00:00'),(1989,154,5,10,'2017-09-07 00:00:00'),(1989,160,3,8,'2017-04-08 00:00:00'),(1989,167,7,7,'2017-02-09 00:00:00'),(1989,174,6,6,'2017-03-06 00:00:00'),(1989,180,6,6,'2017-06-28 00:00:00'),(1989,187,2,9,'2017-06-22 00:00:00'),(1989,193,8,7,'2017-08-01 00:00:00'),(1989,200,5,7,'2017-05-10 00:00:00'),(1990,7,1,9,'2017-08-03 00:00:00'),(1990,14,4,8,'2017-04-27 00:00:00'),(1990,20,1,8,'2017-07-11 00:00:00'),(1990,27,3,6,'2017-01-20 00:00:00'),(1990,34,9,10,'2017-05-23 00:00:00'),(1990,40,4,7,'2017-03-19 00:00:00'),(1990,47,8,6,'2017-08-21 00:00:00'),(1990,54,5,6,'2017-05-05 00:00:00'),(1990,60,9,10,'2017-03-18 00:00:00'),(1990,67,8,6,'2017-03-31 00:00:00'),(1990,74,7,7,'2017-09-01 00:00:00'),(1990,80,4,6,'2017-07-08 00:00:00'),(1990,87,2,8,'2017-04-29 00:00:00'),(1990,94,9,6,'2017-02-01 00:00:00'),(1990,100,7,9,'2017-04-07 00:00:00'),(1990,107,7,7,'2017-02-13 00:00:00'),(1990,114,4,8,'2017-02-17 00:00:00'),(1990,120,8,8,'2017-07-18 00:00:00'),(1990,127,3,6,'2017-02-21 00:00:00'),(1990,134,8,8,'2017-03-29 00:00:00'),(1990,140,9,8,'2017-05-08 00:00:00'),(1990,147,9,8,'2017-05-21 00:00:00'),(1990,154,9,8,'2017-07-22 00:00:00'),(1990,160,1,8,'2017-03-27 00:00:00'),(1990,167,5,7,'2017-01-24 00:00:00'),(1990,174,6,7,'2017-02-23 00:00:00'),(1990,180,4,10,'2017-09-17 00:00:00'),(1990,187,9,9,'2017-06-12 00:00:00'),(1990,194,7,6,'2017-05-13 00:00:00'),(1990,200,7,8,'2017-04-22 00:00:00'),(1991,7,6,10,'2017-05-01 00:00:00'),(1991,14,3,9,'2017-08-08 00:00:00'),(1991,20,4,7,'2017-06-12 00:00:00'),(1991,27,7,7,'2017-03-12 00:00:00'),(1991,34,5,6,'2017-08-17 00:00:00'),(1991,40,4,6,'2017-09-12 00:00:00'),(1991,47,9,6,'2017-03-08 00:00:00'),(1991,54,3,10,'2017-08-16 00:00:00'),(1991,60,3,9,'2017-07-11 00:00:00'),(1991,67,1,10,'2017-02-11 00:00:00'),(1991,74,3,9,'2017-02-26 00:00:00'),(1991,80,2,8,'2017-04-11 00:00:00'),(1991,87,7,9,'2017-06-04 00:00:00'),(1991,94,8,7,'2017-09-04 00:00:00'),(1991,100,9,8,'2017-07-03 00:00:00'),(1991,107,4,6,'2017-07-01 00:00:00'),(1991,114,6,7,'2017-06-04 00:00:00'),(1991,120,9,8,'2017-09-20 00:00:00'),(1991,127,6,6,'2017-06-14 00:00:00'),(1991,134,3,8,'2017-06-12 00:00:00'),(1991,140,5,6,'2017-02-28 00:00:00'),(1991,147,5,6,'2017-04-12 00:00:00'),(1991,154,9,6,'2017-03-26 00:00:00'),(1991,160,9,10,'2017-08-24 00:00:00'),(1991,167,8,7,'2017-03-09 00:00:00'),(1991,174,1,6,'2017-02-24 00:00:00'),(1991,180,3,10,'2017-03-20 00:00:00'),(1991,187,2,6,'2017-05-29 00:00:00'),(1991,194,1,8,'2017-06-23 00:00:00'),(1991,200,6,9,'2017-03-16 00:00:00'),(1992,7,5,8,'2017-04-28 00:00:00'),(1992,14,9,10,'2017-05-21 00:00:00'),(1992,20,3,6,'2017-02-08 00:00:00'),(1992,27,5,10,'2017-04-12 00:00:00'),(1992,34,6,8,'2017-03-02 00:00:00'),(1992,40,3,10,'2017-03-25 00:00:00'),(1992,47,2,8,'2017-03-10 00:00:00'),(1992,54,6,7,'2017-03-16 00:00:00'),(1992,60,7,7,'2017-09-05 00:00:00'),(1992,67,3,6,'2017-06-28 00:00:00'),(1992,74,2,6,'2017-08-18 00:00:00'),(1992,80,7,6,'2017-07-05 00:00:00'),(1992,87,7,6,'2017-09-18 00:00:00'),(1992,94,5,8,'2017-08-14 00:00:00'),(1992,100,3,7,'2017-04-19 00:00:00'),(1992,107,4,8,'2017-04-30 00:00:00'),(1992,114,3,8,'2017-03-13 00:00:00'),(1992,120,4,8,'2017-04-30 00:00:00'),(1992,127,1,6,'2017-05-09 00:00:00'),(1992,134,3,8,'2017-08-09 00:00:00'),(1992,140,9,7,'2017-02-24 00:00:00'),(1992,147,8,10,'2017-01-27 00:00:00'),(1992,154,9,10,'2017-09-24 00:00:00'),(1992,160,8,9,'2017-02-22 00:00:00'),(1992,167,7,6,'2017-09-07 00:00:00'),(1992,174,6,7,'2017-07-06 00:00:00'),(1992,180,7,10,'2017-04-16 00:00:00'),(1992,187,4,8,'2017-08-05 00:00:00'),(1992,194,9,7,'2017-06-16 00:00:00'),(1992,200,5,9,'2017-04-07 00:00:00'),(1993,7,4,7,'2017-06-20 00:00:00'),(1993,14,5,9,'2017-07-08 00:00:00'),(1993,20,4,10,'2017-05-02 00:00:00'),(1993,27,4,6,'2017-06-20 00:00:00'),(1993,34,8,9,'2017-09-03 00:00:00'),(1993,40,8,8,'2017-06-25 00:00:00'),(1993,47,3,7,'2017-07-27 00:00:00'),(1993,54,7,10,'2017-06-17 00:00:00'),(1993,60,4,7,'2017-07-08 00:00:00'),(1993,67,3,6,'2017-04-09 00:00:00'),(1993,74,9,7,'2017-08-14 00:00:00'),(1993,80,3,9,'2017-05-25 00:00:00'),(1993,87,5,9,'2017-01-27 00:00:00'),(1993,94,3,6,'2017-02-02 00:00:00'),(1993,100,4,10,'2017-09-11 00:00:00'),(1993,107,7,8,'2017-01-21 00:00:00'),(1993,114,8,6,'2017-02-27 00:00:00'),(1993,120,4,8,'2017-09-23 00:00:00'),(1993,127,4,6,'2017-04-15 00:00:00'),(1993,134,8,8,'2017-02-28 00:00:00'),(1993,140,6,6,'2017-09-03 00:00:00'),(1993,147,4,9,'2017-06-13 00:00:00'),(1993,154,8,8,'2017-03-17 00:00:00'),(1993,160,8,8,'2017-08-31 00:00:00'),(1993,167,5,8,'2017-05-21 00:00:00'),(1993,174,1,8,'2017-02-13 00:00:00'),(1993,180,6,8,'2017-04-23 00:00:00'),(1993,187,2,9,'2017-04-08 00:00:00'),(1993,194,5,7,'2017-06-12 00:00:00'),(1993,200,1,7,'2017-03-02 00:00:00'),(1994,7,8,6,'2017-06-13 00:00:00'),(1994,14,5,8,'2017-05-22 00:00:00'),(1994,20,6,8,'2017-05-10 00:00:00'),(1994,27,3,6,'2017-02-04 00:00:00'),(1994,34,4,7,'2017-08-06 00:00:00'),(1994,40,2,10,'2017-05-01 00:00:00'),(1994,47,1,9,'2017-07-27 00:00:00'),(1994,54,8,10,'2017-08-24 00:00:00'),(1994,60,2,8,'2017-02-27 00:00:00'),(1994,67,4,10,'2017-09-04 00:00:00'),(1994,74,7,10,'2017-05-22 00:00:00'),(1994,80,9,7,'2017-06-14 00:00:00'),(1994,87,7,7,'2017-03-07 00:00:00'),(1994,94,5,7,'2017-03-09 00:00:00'),(1994,100,1,8,'2017-04-22 00:00:00'),(1994,107,6,9,'2017-09-14 00:00:00'),(1994,114,1,7,'2017-09-03 00:00:00'),(1994,120,8,8,'2017-03-30 00:00:00'),(1994,127,2,7,'2017-07-17 00:00:00'),(1994,134,8,9,'2017-07-07 00:00:00'),(1994,140,1,8,'2017-06-24 00:00:00'),(1994,147,8,8,'2017-03-24 00:00:00'),(1994,154,2,10,'2017-02-03 00:00:00'),(1994,160,1,9,'2017-08-27 00:00:00'),(1994,167,7,7,'2017-02-05 00:00:00'),(1994,174,8,7,'2017-03-06 00:00:00'),(1994,180,7,9,'2017-03-11 00:00:00'),(1994,187,5,6,'2017-01-28 00:00:00'),(1994,194,7,8,'2017-08-15 00:00:00'),(1994,200,3,9,'2017-06-07 00:00:00'),(1995,7,1,6,'2017-04-11 00:00:00'),(1995,14,1,7,'2017-06-23 00:00:00'),(1995,20,5,8,'2017-05-11 00:00:00'),(1995,27,2,7,'2017-05-01 00:00:00'),(1995,34,1,8,'2017-06-15 00:00:00'),(1995,40,8,9,'2017-04-22 00:00:00'),(1995,47,7,10,'2017-09-01 00:00:00'),(1995,54,7,6,'2017-02-08 00:00:00'),(1995,60,4,6,'2017-06-19 00:00:00'),(1995,67,6,8,'2017-08-21 00:00:00'),(1995,74,1,6,'2017-04-13 00:00:00'),(1995,80,5,8,'2017-01-24 00:00:00'),(1995,87,4,10,'2017-08-26 00:00:00'),(1995,94,2,9,'2017-05-29 00:00:00'),(1995,100,4,8,'2017-06-23 00:00:00'),(1995,107,1,7,'2017-03-22 00:00:00'),(1995,114,9,8,'2017-06-25 00:00:00'),(1995,120,9,10,'2017-08-13 00:00:00'),(1995,127,2,9,'2017-08-23 00:00:00'),(1995,134,5,8,'2017-04-28 00:00:00'),(1995,140,7,7,'2017-03-18 00:00:00'),(1995,147,1,10,'2017-07-25 00:00:00'),(1995,154,6,10,'2017-05-22 00:00:00'),(1995,160,5,6,'2017-04-04 00:00:00'),(1995,167,2,10,'2017-08-03 00:00:00'),(1995,174,1,7,'2017-05-16 00:00:00'),(1995,180,8,6,'2017-05-02 00:00:00'),(1995,187,6,9,'2017-06-08 00:00:00'),(1995,194,7,9,'2017-05-02 00:00:00'),(1995,200,8,9,'2017-04-08 00:00:00'),(1996,7,3,9,'2017-08-08 00:00:00'),(1996,14,7,7,'2017-04-08 00:00:00'),(1996,20,5,9,'2017-03-27 00:00:00'),(1996,27,6,10,'2017-01-29 00:00:00'),(1996,34,1,7,'2017-08-20 00:00:00'),(1996,40,6,6,'2017-05-02 00:00:00'),(1996,47,8,6,'2017-06-05 00:00:00'),(1996,54,5,8,'2017-09-16 00:00:00'),(1996,60,6,9,'2017-02-28 00:00:00'),(1996,67,8,7,'2017-04-02 00:00:00'),(1996,74,6,9,'2017-01-27 00:00:00'),(1996,80,8,6,'2017-02-23 00:00:00'),(1996,87,7,9,'2017-06-07 00:00:00'),(1996,94,5,8,'2017-09-03 00:00:00'),(1996,100,4,6,'2017-08-26 00:00:00'),(1996,107,9,8,'2017-03-24 00:00:00'),(1996,114,3,10,'2017-03-06 00:00:00'),(1996,120,1,7,'2017-07-17 00:00:00'),(1996,127,3,6,'2017-06-22 00:00:00'),(1996,134,3,9,'2017-09-25 00:00:00'),(1996,140,3,8,'2017-05-22 00:00:00'),(1996,147,5,7,'2017-07-27 00:00:00'),(1996,154,5,8,'2017-03-12 00:00:00'),(1996,160,8,9,'2017-04-24 00:00:00'),(1996,167,9,8,'2017-07-05 00:00:00'),(1996,174,8,8,'2017-08-13 00:00:00'),(1996,180,4,8,'2017-08-11 00:00:00'),(1996,187,7,10,'2017-08-24 00:00:00'),(1996,194,3,9,'2017-06-27 00:00:00'),(1996,200,1,10,'2017-06-01 00:00:00'),(1997,7,4,9,'2017-05-31 00:00:00'),(1997,14,9,10,'2017-02-12 00:00:00'),(1997,20,9,10,'2017-05-23 00:00:00'),(1997,27,5,6,'2017-09-05 00:00:00'),(1997,34,4,7,'2017-05-22 00:00:00'),(1997,40,2,6,'2017-08-23 00:00:00'),(1997,47,9,7,'2017-07-13 00:00:00'),(1997,54,4,8,'2017-05-02 00:00:00'),(1997,60,4,9,'2017-03-05 00:00:00'),(1997,67,2,9,'2017-01-31 00:00:00'),(1997,74,6,7,'2017-01-25 00:00:00'),(1997,80,8,9,'2017-03-19 00:00:00'),(1997,87,1,8,'2017-09-21 00:00:00'),(1997,94,3,9,'2017-06-02 00:00:00'),(1997,100,2,8,'2017-07-03 00:00:00'),(1997,107,2,10,'2017-08-26 00:00:00'),(1997,114,9,10,'2017-08-05 00:00:00'),(1997,120,5,7,'2017-04-21 00:00:00'),(1997,127,6,8,'2017-09-12 00:00:00'),(1997,134,2,7,'2017-06-23 00:00:00'),(1997,140,2,10,'2017-08-25 00:00:00'),(1997,147,2,8,'2017-04-12 00:00:00'),(1997,154,4,7,'2017-07-12 00:00:00'),(1997,160,6,7,'2017-07-19 00:00:00'),(1997,167,5,6,'2017-03-13 00:00:00'),(1997,174,1,6,'2017-01-22 00:00:00'),(1997,180,6,10,'2017-05-01 00:00:00'),(1997,187,9,7,'2017-08-09 00:00:00'),(1997,194,3,8,'2017-02-11 00:00:00'),(1997,200,5,10,'2017-02-09 00:00:00'),(1998,7,7,7,'2017-06-24 00:00:00'),(1998,14,4,8,'2017-05-05 00:00:00'),(1998,20,5,6,'2017-01-24 00:00:00'),(1998,27,7,8,'2017-02-20 00:00:00'),(1998,34,2,6,'2017-08-26 00:00:00'),(1998,40,3,8,'2017-03-02 00:00:00'),(1998,47,7,7,'2017-06-25 00:00:00'),(1998,54,9,7,'2017-09-04 00:00:00'),(1998,60,3,8,'2017-04-02 00:00:00'),(1998,67,2,8,'2017-08-23 00:00:00'),(1998,74,9,7,'2017-09-11 00:00:00'),(1998,80,3,10,'2017-06-21 00:00:00'),(1998,87,1,9,'2017-09-03 00:00:00'),(1998,94,7,7,'2017-08-27 00:00:00'),(1998,100,5,7,'2017-06-10 00:00:00'),(1998,107,4,7,'2017-07-16 00:00:00'),(1998,114,4,8,'2017-09-25 00:00:00'),(1998,120,6,9,'2017-04-19 00:00:00'),(1998,127,7,10,'2017-03-07 00:00:00'),(1998,134,6,6,'2017-06-10 00:00:00'),(1998,140,2,6,'2017-06-22 00:00:00'),(1998,147,9,9,'2017-09-01 00:00:00'),(1998,154,8,6,'2017-02-18 00:00:00'),(1998,160,4,9,'2017-03-27 00:00:00'),(1998,167,8,9,'2017-06-28 00:00:00'),(1998,174,4,7,'2017-06-15 00:00:00'),(1998,180,2,10,'2017-03-31 00:00:00'),(1998,187,7,7,'2017-06-04 00:00:00'),(1998,194,5,8,'2017-08-21 00:00:00'),(1998,200,1,6,'2017-05-08 00:00:00'),(1999,7,6,10,'2017-09-05 00:00:00'),(1999,14,2,7,'2017-03-26 00:00:00'),(1999,20,2,10,'2017-06-02 00:00:00'),(1999,27,8,7,'2017-07-11 00:00:00'),(1999,34,5,9,'2017-06-11 00:00:00'),(1999,40,1,10,'2017-06-12 00:00:00'),(1999,47,7,6,'2017-05-03 00:00:00'),(1999,54,5,7,'2017-08-08 00:00:00'),(1999,60,1,8,'2017-09-23 00:00:00'),(1999,67,1,9,'2017-03-19 00:00:00'),(1999,74,6,8,'2017-02-14 00:00:00'),(1999,80,1,10,'2017-08-24 00:00:00'),(1999,87,4,7,'2017-09-24 00:00:00'),(1999,94,4,6,'2017-04-15 00:00:00'),(1999,100,7,7,'2017-04-03 00:00:00'),(1999,107,5,8,'2017-01-23 00:00:00'),(1999,114,5,8,'2017-02-09 00:00:00'),(1999,120,4,10,'2017-06-19 00:00:00'),(1999,127,8,6,'2017-05-14 00:00:00'),(1999,134,6,6,'2017-03-19 00:00:00'),(1999,140,8,9,'2017-08-19 00:00:00'),(1999,147,6,10,'2017-08-07 00:00:00'),(1999,154,7,7,'2017-01-30 00:00:00'),(1999,160,2,7,'2017-07-15 00:00:00'),(1999,167,5,10,'2017-04-07 00:00:00'),(1999,174,2,9,'2017-03-21 00:00:00'),(1999,180,4,9,'2017-02-06 00:00:00'),(1999,187,4,6,'2017-01-24 00:00:00'),(1999,194,7,6,'2017-02-19 00:00:00'),(1999,200,6,7,'2017-02-06 00:00:00'),(2000,7,2,9,'2017-09-06 00:00:00'),(2000,14,2,8,'2017-08-20 00:00:00'),(2000,20,2,7,'2017-05-23 00:00:00'),(2000,27,3,6,'2017-04-18 00:00:00'),(2000,34,3,6,'2017-02-23 00:00:00'),(2000,40,1,7,'2017-04-10 00:00:00'),(2000,47,8,10,'2017-06-09 00:00:00'),(2000,54,7,7,'2017-07-02 00:00:00'),(2000,60,9,8,'2017-02-28 00:00:00'),(2000,67,8,6,'2017-05-26 00:00:00'),(2000,74,3,8,'2017-02-21 00:00:00'),(2000,80,3,6,'2017-07-30 00:00:00'),(2000,87,9,7,'2017-05-06 00:00:00'),(2000,94,4,10,'2017-01-23 00:00:00'),(2000,100,9,10,'2017-06-15 00:00:00'),(2000,107,5,9,'2017-03-31 00:00:00'),(2000,114,8,6,'2017-02-21 00:00:00'),(2000,120,6,7,'2017-06-07 00:00:00'),(2000,127,1,10,'2017-06-20 00:00:00'),(2000,134,3,8,'2017-06-20 00:00:00'),(2000,140,5,10,'2017-05-18 00:00:00'),(2000,147,3,7,'2017-05-14 00:00:00'),(2000,154,4,10,'2017-03-05 00:00:00'),(2000,160,4,7,'2017-01-27 00:00:00'),(2000,167,2,6,'2017-05-10 00:00:00'),(2000,174,4,10,'2017-03-29 00:00:00'),(2000,180,3,7,'2017-03-12 00:00:00'),(2000,187,5,10,'2017-09-25 00:00:00'),(2000,194,7,8,'2017-03-31 00:00:00'),(2000,200,9,7,'2017-05-27 00:00:00');
/*!40000 ALTER TABLE `konacna_ocjena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kviz`
--

DROP TABLE IF EXISTS `kviz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kviz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `predmet` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `vrijeme_pocetak` datetime NOT NULL,
  `vrijeme_kraj` datetime NOT NULL,
  `labgrupa` int(11) NOT NULL,
  `ip_adrese` text COLLATE utf8_slovenian_ci NOT NULL,
  `prolaz_bodova` float NOT NULL,
  `broj_pitanja` int(11) NOT NULL,
  `trajanje_kviza` int(11) NOT NULL COMMENT 'u sekundama',
  `aktivan` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `predmet` (`predmet`),
  KEY `akademska_godina` (`akademska_godina`),
  KEY `labgrupa` (`labgrupa`),
  CONSTRAINT `kviz_ibfk_1` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`),
  CONSTRAINT `kviz_ibfk_2` FOREIGN KEY (`akademska_godina`) REFERENCES `akademska_godina` (`id`),
  CONSTRAINT `kviz_ibfk_3` FOREIGN KEY (`labgrupa`) REFERENCES `labgrupa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kviz`
--

LOCK TABLES `kviz` WRITE;
/*!40000 ALTER TABLE `kviz` DISABLE KEYS */;
/*!40000 ALTER TABLE `kviz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kviz_odgovor`
--

DROP TABLE IF EXISTS `kviz_odgovor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kviz_odgovor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kviz_pitanje` int(11) NOT NULL,
  `tekst` text COLLATE utf8_slovenian_ci NOT NULL,
  `tacan` tinyint(1) NOT NULL,
  `vidljiv` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `kviz_pitanje` (`kviz_pitanje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kviz_odgovor`
--

LOCK TABLES `kviz_odgovor` WRITE;
/*!40000 ALTER TABLE `kviz_odgovor` DISABLE KEYS */;
/*!40000 ALTER TABLE `kviz_odgovor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kviz_pitanje`
--

DROP TABLE IF EXISTS `kviz_pitanje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kviz_pitanje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kviz` int(11) NOT NULL,
  `tip` enum('mcsa','mcma','tekstualno') COLLATE utf8_slovenian_ci NOT NULL DEFAULT 'mcsa',
  `tekst` text COLLATE utf8_slovenian_ci NOT NULL,
  `bodova` float NOT NULL DEFAULT '1',
  `vidljivo` tinyint(1) NOT NULL DEFAULT '1',
  `ukupno` int(11) NOT NULL,
  `tacnih` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kviz` (`kviz`),
  CONSTRAINT `kviz_pitanje_ibfk_1` FOREIGN KEY (`kviz`) REFERENCES `kviz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kviz_pitanje`
--

LOCK TABLES `kviz_pitanje` WRITE;
/*!40000 ALTER TABLE `kviz_pitanje` DISABLE KEYS */;
/*!40000 ALTER TABLE `kviz_pitanje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kviz_student`
--

DROP TABLE IF EXISTS `kviz_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kviz_student` (
  `student` int(11) NOT NULL,
  `kviz` int(11) NOT NULL,
  `dovrsen` tinyint(1) NOT NULL DEFAULT '0',
  `bodova` float NOT NULL,
  `vrijeme_aktivacije` datetime NOT NULL,
  PRIMARY KEY (`student`,`kviz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kviz_student`
--

LOCK TABLES `kviz_student` WRITE;
/*!40000 ALTER TABLE `kviz_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `kviz_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labgrupa`
--

DROP TABLE IF EXISTS `labgrupa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labgrupa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `tip` enum('predavanja','vjezbe','tutorijali','vjezbe+tutorijali') COLLATE utf8_slovenian_ci NOT NULL DEFAULT 'vjezbe+tutorijali',
  `predmet` int(11) NOT NULL DEFAULT '0',
  `akademska_godina` int(11) NOT NULL DEFAULT '0',
  `virtualna` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `predmet` (`predmet`),
  KEY `akademska_godina` (`akademska_godina`),
  CONSTRAINT `labgrupa_ibfk_1` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`),
  CONSTRAINT `labgrupa_ibfk_2` FOREIGN KEY (`akademska_godina`) REFERENCES `akademska_godina` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labgrupa`
--

LOCK TABLES `labgrupa` WRITE;
/*!40000 ALTER TABLE `labgrupa` DISABLE KEYS */;
/*!40000 ALTER TABLE `labgrupa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL DEFAULT '0',
  `dogadjaj` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `nivo` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dogadjaj` (`dogadjaj`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log2`
--

DROP TABLE IF EXISTS `log2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL,
  `modul` int(11) NOT NULL,
  `dogadjaj` int(11) NOT NULL,
  `objekat1` int(11) NOT NULL,
  `objekat2` int(11) NOT NULL,
  `objekat3` int(11) NOT NULL,
  `ipaddress` varchar(16) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log2`
--

LOCK TABLES `log2` WRITE;
/*!40000 ALTER TABLE `log2` DISABLE KEYS */;
/*!40000 ALTER TABLE `log2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log2_blob`
--

DROP TABLE IF EXISTS `log2_blob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log2_blob` (
  `log2` int(11) NOT NULL,
  `tekst` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`log2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log2_blob`
--

LOCK TABLES `log2_blob` WRITE;
/*!40000 ALTER TABLE `log2_blob` DISABLE KEYS */;
/*!40000 ALTER TABLE `log2_blob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log2_dogadjaj`
--

DROP TABLE IF EXISTS `log2_dogadjaj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log2_dogadjaj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opis` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `nivo` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `opis` (`opis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log2_dogadjaj`
--

LOCK TABLES `log2_dogadjaj` WRITE;
/*!40000 ALTER TABLE `log2_dogadjaj` DISABLE KEYS */;
/*!40000 ALTER TABLE `log2_dogadjaj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log2_modul`
--

DROP TABLE IF EXISTS `log2_modul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log2_modul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `naziv` (`naziv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log2_modul`
--

LOCK TABLES `log2_modul` WRITE;
/*!40000 ALTER TABLE `log2_modul` DISABLE KEYS */;
/*!40000 ALTER TABLE `log2_modul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mjesto`
--

DROP TABLE IF EXISTS `mjesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mjesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(40) COLLATE utf8_slovenian_ci NOT NULL,
  `opcina` int(11) NOT NULL,
  `drzava` int(11) NOT NULL,
  `opcina_van_bih` varchar(40) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `opcina` (`opcina`),
  KEY `drzava` (`drzava`),
  CONSTRAINT `mjesto_ibfk_1` FOREIGN KEY (`drzava`) REFERENCES `drzava` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mjesto`
--

LOCK TABLES `mjesto` WRITE;
/*!40000 ALTER TABLE `mjesto` DISABLE KEYS */;
INSERT INTO `mjesto` VALUES (1,'Banovići',1,1,'0'),(2,'Bihać',2,1,'0'),(3,'Bosanska Krupa',3,1,'0'),(4,'Bosanski Petrovac',4,1,'0'),(5,'Bosansko Grahovo',5,1,'0'),(6,'Breza',6,1,'0'),(7,'Bugojno',7,1,'0'),(8,'Busovača',8,1,'0'),(9,'Bužim',9,1,'0'),(10,'Čapljina',10,1,'0'),(11,'Cazin',11,1,'0'),(12,'Čelić',12,1,'0'),(13,'Centar, Sarajevo',13,1,'0'),(14,'Čitluk',14,1,'0'),(15,'Drvar',15,1,'0'),(16,'Doboj Istok',16,1,'0'),(17,'Doboj Jug',17,1,'0'),(18,'Dobretići',18,1,'0'),(19,'Domaljevac-Šamac',19,1,'0'),(20,'Donji Vakuf',20,1,'0'),(21,'Foča-Ustikolina',21,1,'0'),(22,'Fojnica',22,1,'0'),(23,'Glamoč',23,1,'0'),(24,'Goražde',24,1,'0'),(25,'Gornji Vakuf-Uskoplje',25,1,'0'),(26,'Gračanica',26,1,'0'),(27,'Gradačac',27,1,'0'),(28,'Grude',28,1,'0'),(29,'Hadžići',29,1,'0'),(30,'Ilidža',30,1,'0'),(31,'Ilijaš',31,1,'0'),(32,'Jablanica',32,1,'0'),(33,'Jajce',33,1,'0'),(34,'Kakanj',34,1,'0'),(35,'Kalesija',35,1,'0'),(36,'Kiseljak',36,1,'0'),(37,'Kladanj',37,1,'0'),(38,'Ključ',38,1,'0'),(39,'Konjic',39,1,'0'),(40,'Kreševo',40,1,'0'),(41,'Kupres',41,1,'0'),(42,'Livno',42,1,'0'),(43,'Ljubuški',43,1,'0'),(44,'Lukavac',44,1,'0'),(45,'Maglaj',45,1,'0'),(46,'Mostar',46,1,'0'),(47,'Neum',47,1,'0'),(48,'Novi Grad, Sarajevo',48,1,'0'),(49,'Novo Sarajevo',49,1,'0'),(50,'Novi Travnik',50,1,'0'),(51,'Odžak',51,1,'0'),(52,'Olovo',52,1,'0'),(53,'Orašje',53,1,'0'),(54,'Pale-Prača',54,1,'0'),(55,'Posušje',55,1,'0'),(56,'Prozor-Rama',56,1,'0'),(57,'Ravno',57,1,'0'),(58,'Sanski Most',58,1,'0'),(59,'Sapna',59,1,'0'),(60,'Široki Brijeg',60,1,'0'),(61,'Srebrenik',61,1,'0'),(62,'Stari Grad, Sarajevo',62,1,'0'),(63,'Stolac',63,1,'0'),(64,'Teočak',64,1,'0'),(65,'Tešanj',65,1,'0'),(66,'Tomislavgrad',66,1,'0'),(67,'Travnik',67,1,'0'),(68,'Trnovo (FBiH)',68,1,'0'),(69,'Tuzla',69,1,'0'),(70,'Usora',70,1,'0'),(71,'Vareš',71,1,'0'),(72,'Velika Kladuša',72,1,'0'),(73,'Visoko',73,1,'0'),(74,'Vitez',74,1,'0'),(75,'Vogošća',75,1,'0'),(76,'Zavidovići',76,1,'0'),(77,'Zenica',77,1,'0'),(78,'Žepče',78,1,'0'),(79,'Živinice',79,1,'0'),(80,'Berkovići',80,1,'0'),(81,'Bijeljina',81,1,'0'),(82,'Bileća',82,1,'0'),(83,'Bosanska Kostajnica',83,1,'0'),(84,'Bosanski Brod',84,1,'0'),(85,'Bratunac',85,1,'0'),(86,'Čajniče',86,1,'0'),(87,'Čelinac',87,1,'0'),(88,'Derventa',88,1,'0'),(89,'Doboj',89,1,'0'),(90,'Donji Žabar',90,1,'0'),(91,'Foča',91,1,'0'),(92,'Gacko',92,1,'0'),(93,'Banja Luka',93,1,'0'),(94,'Gradiška',94,1,'0'),(95,'Han Pijesak',95,1,'0'),(96,'Istočni Drvar',96,1,'0'),(97,'Istočna Ilidža',97,1,'0'),(98,'Istočni Mostar',98,1,'0'),(99,'Istočni Stari Grad',99,1,'0'),(100,'Istočno Novo Sarajevo',100,1,'0'),(101,'Jezero',101,1,'0'),(102,'Kalinovik',102,1,'0'),(103,'Kneževo',103,1,'0'),(104,'Kozarska Dubica',104,1,'0'),(105,'Kotor Varoš',105,1,'0'),(106,'Krupa na Uni',106,1,'0'),(107,'Kupres (RS)',107,1,'0'),(108,'Laktaši',108,1,'0'),(109,'Ljubinje',109,1,'0'),(110,'Lopare',110,1,'0'),(111,'Milići',111,1,'0'),(112,'Modriča',112,1,'0'),(113,'Mrkonjić Grad',113,1,'0'),(114,'Nevesinje',114,1,'0'),(115,'Novi Grad (RS)',115,1,'0'),(116,'Novo Goražde',116,1,'0'),(117,'Osmaci',117,1,'0'),(118,'Oštra Luka',118,1,'0'),(119,'Pale',119,1,'0'),(120,'Pelagićevo',120,1,'0'),(121,'Petrovac',121,1,'0'),(122,'Petrovo',122,1,'0'),(123,'Prijedor',123,1,'0'),(124,'Prnjavor',124,1,'0'),(125,'Ribnik',125,1,'0'),(126,'Rogatica',126,1,'0'),(127,'Rudo',127,1,'0'),(128,'Šamac',128,1,'0'),(129,'Šekovići',129,1,'0'),(130,'Šipovo',130,1,'0'),(131,'Sokolac',131,1,'0'),(132,'Srbac',132,1,'0'),(133,'Srebrenica',133,1,'0'),(134,'Teslić',134,1,'0'),(135,'Trebinje',135,1,'0'),(136,'Trnovo (RS)',136,1,'0'),(137,'Ugljevik',137,1,'0'),(138,'Višegrad',138,1,'0'),(139,'Vlasenica',139,1,'0'),(140,'Vukosavlje',140,1,'0'),(141,'Zvornik',141,1,'0'),(142,'Brčko',142,1,'0'),(143,'(nije u BiH)',143,1,'0');
/*!40000 ALTER TABLE `mjesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moodle_predmet_id`
--

DROP TABLE IF EXISTS `moodle_predmet_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moodle_predmet_id` (
  `predmet` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `moodle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moodle_predmet_id`
--

LOCK TABLES `moodle_predmet_id` WRITE;
/*!40000 ALTER TABLE `moodle_predmet_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `moodle_predmet_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moodle_predmet_rss`
--

DROP TABLE IF EXISTS `moodle_predmet_rss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moodle_predmet_rss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vrstanovosti` int(2) NOT NULL,
  `moodle_id` int(11) NOT NULL,
  `sadrzaj` text COLLATE utf8_slovenian_ci NOT NULL,
  `vrijeme_promjene` bigint(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `moodle_id` (`moodle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moodle_predmet_rss`
--

LOCK TABLES `moodle_predmet_rss` WRITE;
/*!40000 ALTER TABLE `moodle_predmet_rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `moodle_predmet_rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacin_studiranja`
--

DROP TABLE IF EXISTS `nacin_studiranja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nacin_studiranja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `moguc_upis` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacin_studiranja`
--

LOCK TABLES `nacin_studiranja` WRITE;
/*!40000 ALTER TABLE `nacin_studiranja` DISABLE KEYS */;
INSERT INTO `nacin_studiranja` VALUES (1,'Redovan',1),(2,'Paralelan',0),(3,'Redovan samofinansirajući',1),(4,'Vanredan',1),(5,'DL',1),(6,'Mobilnost',0);
/*!40000 ALTER TABLE `nacin_studiranja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacionalnost`
--

DROP TABLE IF EXISTS `nacionalnost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nacionalnost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacionalnost`
--

LOCK TABLES `nacionalnost` WRITE;
/*!40000 ALTER TABLE `nacionalnost` DISABLE KEYS */;
INSERT INTO `nacionalnost` VALUES (1,'Bošnjak/Bošnjakinja'),(2,'Srbin/Srpkinja'),(3,'Hrvat/Hrvatica'),(4,'Rom/Romkinja'),(5,'Ostalo'),(6,'Nepoznato / Nije se izjasnio/la');
/*!40000 ALTER TABLE `nacionalnost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nastavnik_predmet`
--

DROP TABLE IF EXISTS `nastavnik_predmet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nastavnik_predmet` (
  `nastavnik` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `predmet` int(11) NOT NULL,
  PRIMARY KEY (`nastavnik`,`akademska_godina`,`predmet`),
  KEY `akademska_godina` (`akademska_godina`),
  KEY `predmet` (`predmet`),
  CONSTRAINT `nastavnik_predmet_ibfk_1` FOREIGN KEY (`nastavnik`) REFERENCES `osoba` (`id`),
  CONSTRAINT `nastavnik_predmet_ibfk_2` FOREIGN KEY (`akademska_godina`) REFERENCES `akademska_godina` (`id`),
  CONSTRAINT `nastavnik_predmet_ibfk_3` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nastavnik_predmet`
--

LOCK TABLES `nastavnik_predmet` WRITE;
/*!40000 ALTER TABLE `nastavnik_predmet` DISABLE KEYS */;
INSERT INTO `nastavnik_predmet` VALUES (2,9,56),(2,9,70),(2,9,119),(2,9,131),(2,9,195),(3,9,17),(3,9,61),(3,9,95),(3,9,151),(3,9,161),(3,9,165),(3,9,177),(4,9,74),(4,9,102),(4,9,129),(4,9,160),(5,9,2),(5,9,11),(5,9,48),(5,9,139),(6,9,68),(6,9,78),(6,9,97),(6,9,107),(6,9,110),(6,9,115),(6,9,126),(6,9,152),(7,9,21),(7,9,25),(7,9,35),(7,9,52),(7,9,66),(7,9,88),(7,9,111),(7,9,173),(7,9,174),(7,9,185),(8,9,41),(8,9,92),(8,9,167),(8,9,175),(9,9,1),(9,9,7),(9,9,32),(9,9,37),(9,9,104),(9,9,162),(9,9,182),(10,9,154),(10,9,164),(10,9,196),(11,9,53),(11,9,116),(11,9,118),(12,9,82),(12,9,123),(13,9,72),(13,9,135),(14,9,10),(14,9,26),(14,9,63),(14,9,94),(14,9,103),(14,9,153),(14,9,190),(15,9,23),(15,9,36),(15,9,86),(15,9,93),(15,9,134),(15,9,183),(15,9,189),(15,9,192),(15,9,199),(16,9,3),(16,9,90),(16,9,132),(17,9,16),(17,9,24),(17,9,65),(17,9,148),(17,9,163),(18,9,77),(18,9,113),(18,9,168),(18,9,176),(19,9,31),(19,9,71),(19,9,193),(20,9,14),(20,9,114),(21,9,6),(21,9,34),(21,9,45),(21,9,150),(21,9,157),(21,9,166),(22,9,85),(22,9,101),(23,9,29),(23,9,80),(23,9,141),(23,9,146),(24,9,33),(24,9,39),(25,9,100),(25,9,117),(25,9,191),(26,9,44),(26,9,46),(26,9,49),(26,9,120),(26,9,125),(27,9,42),(27,9,58),(27,9,99),(27,9,130),(27,9,137),(27,9,149),(27,9,155),(28,9,50),(28,9,108),(29,9,5),(29,9,18),(29,9,81),(29,9,127),(29,9,188),(30,9,76),(30,9,128),(31,9,54),(31,9,75),(31,9,140),(31,9,171),(32,9,22),(32,9,38),(32,9,73),(32,9,79),(32,9,124),(32,9,136),(32,9,172),(33,9,27),(33,9,43),(33,9,84),(33,9,98),(33,9,106),(33,9,147),(33,9,170),(34,9,51),(34,9,156),(35,9,28),(35,9,30),(35,9,60),(35,9,87),(35,9,181),(35,9,187),(36,9,12),(36,9,62),(36,9,144),(36,9,200),(37,9,57),(37,9,64),(37,9,69),(37,9,105),(37,9,109),(37,9,186),(37,9,194),(38,9,9),(38,9,40),(38,9,55),(38,9,133),(38,9,197),(39,9,4),(39,9,20),(39,9,59),(39,9,91),(39,9,121),(39,9,158),(39,9,180),(40,9,67),(40,9,83),(40,9,96),(40,9,138),(40,9,143),(40,9,145),(40,9,159),(40,9,179),(40,9,184),(40,9,198),(41,9,8),(41,9,15),(41,9,112),(41,9,169),(42,9,13),(42,9,47),(42,9,89),(42,9,122),(42,9,178),(43,9,19),(43,9,142);
/*!40000 ALTER TABLE `nastavnik_predmet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `naucni_stepen`
--

DROP TABLE IF EXISTS `naucni_stepen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `naucni_stepen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `titula` varchar(15) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `naucni_stepen`
--

LOCK TABLES `naucni_stepen` WRITE;
/*!40000 ALTER TABLE `naucni_stepen` DISABLE KEYS */;
INSERT INTO `naucni_stepen` VALUES (1,'Doktor nauka','dr'),(2,'Magistar nauka','mr'),(6,'Bez naučnog stepena','');
/*!40000 ALTER TABLE `naucni_stepen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oblast`
--

DROP TABLE IF EXISTS `oblast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oblast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institucija` int(11) NOT NULL,
  `naziv` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `institucija` (`institucija`),
  CONSTRAINT `oblast_ibfk_1` FOREIGN KEY (`institucija`) REFERENCES `institucija` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oblast`
--

LOCK TABLES `oblast` WRITE;
/*!40000 ALTER TABLE `oblast` DISABLE KEYS */;
/*!40000 ALTER TABLE `oblast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odluka`
--

DROP TABLE IF EXISTS `odluka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odluka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum` date NOT NULL,
  `broj_protokola` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `student` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student` (`student`),
  CONSTRAINT `odluka_ibfk_1` FOREIGN KEY (`student`) REFERENCES `osoba` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odluka`
--

LOCK TABLES `odluka` WRITE;
/*!40000 ALTER TABLE `odluka` DISABLE KEYS */;
/*!40000 ALTER TABLE `odluka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogranicenje`
--

DROP TABLE IF EXISTS `ogranicenje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ogranicenje` (
  `nastavnik` int(11) NOT NULL DEFAULT '0',
  `labgrupa` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nastavnik`,`labgrupa`),
  KEY `labgrupa` (`labgrupa`),
  CONSTRAINT `ogranicenje_ibfk_2` FOREIGN KEY (`nastavnik`) REFERENCES `osoba` (`id`),
  CONSTRAINT `ogranicenje_ibfk_3` FOREIGN KEY (`labgrupa`) REFERENCES `labgrupa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogranicenje`
--

LOCK TABLES `ogranicenje` WRITE;
/*!40000 ALTER TABLE `ogranicenje` DISABLE KEYS */;
/*!40000 ALTER TABLE `ogranicenje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opcina`
--

DROP TABLE IF EXISTS `opcina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opcina`
--

LOCK TABLES `opcina` WRITE;
/*!40000 ALTER TABLE `opcina` DISABLE KEYS */;
INSERT INTO `opcina` VALUES (1,'Banovići'),(2,'Bihać'),(3,'Bosanska Krupa'),(4,'Bosanski Petrovac'),(5,'Bosansko Grahovo'),(6,'Breza'),(7,'Bugojno'),(8,'Busovača'),(9,'Bužim'),(10,'Čapljina'),(11,'Cazin'),(12,'Čelić'),(13,'Centar, Sarajevo'),(14,'Čitluk'),(15,'Drvar'),(16,'Doboj Istok'),(17,'Doboj Jug'),(18,'Dobretići'),(19,'Domaljevac-Šamac'),(20,'Donji Vakuf'),(21,'Foča-Ustikolina'),(22,'Fojnica'),(23,'Glamoč'),(24,'Goražde'),(25,'Gornji Vakuf-Uskoplje'),(26,'Gračanica'),(27,'Gradačac'),(28,'Grude'),(29,'Hadžići'),(30,'Ilidža'),(31,'Ilijaš'),(32,'Jablanica'),(33,'Jajce'),(34,'Kakanj'),(35,'Kalesija'),(36,'Kiseljak'),(37,'Kladanj'),(38,'Ključ'),(39,'Konjic'),(40,'Kreševo'),(41,'Kupres'),(42,'Livno'),(43,'Ljubuški'),(44,'Lukavac'),(45,'Maglaj'),(46,'Mostar'),(47,'Neum'),(48,'Novi Grad, Sarajevo'),(49,'Novo Sarajevo'),(50,'Novi Travnik'),(51,'Odžak'),(52,'Olovo'),(53,'Orašje'),(54,'Pale-Prača'),(55,'Posušje'),(56,'Prozor-Rama'),(57,'Ravno'),(58,'Sanski Most'),(59,'Sapna'),(60,'Široki Brijeg'),(61,'Srebrenik'),(62,'Stari Grad, Sarajevo'),(63,'Stolac'),(64,'Teočak'),(65,'Tešanj'),(66,'Tomislavgrad'),(67,'Travnik'),(68,'Trnovo (FBiH)'),(69,'Tuzla'),(70,'Usora'),(71,'Vareš'),(72,'Velika Kladuša'),(73,'Visoko'),(74,'Vitez'),(75,'Vogošća'),(76,'Zavidovići'),(77,'Zenica'),(78,'Žepče'),(79,'Živinice'),(80,'Berkovići'),(81,'Bijeljina'),(82,'Bileća'),(83,'Bosanska Kostajnica'),(84,'Bosanski Brod'),(85,'Bratunac'),(86,'Čajniče'),(87,'Čelinac'),(88,'Derventa'),(89,'Doboj'),(90,'Donji Žabar'),(91,'Foča'),(92,'Gacko'),(93,'Banja Luka'),(94,'Gradiška'),(95,'Han Pijesak'),(96,'Istočni Drvar'),(97,'Istočna Ilidža'),(98,'Istočni Mostar'),(99,'Istočni Stari Grad'),(100,'Istočno Novo Sarajevo'),(101,'Jezero'),(102,'Kalinovik'),(103,'Kneževo'),(104,'Kozarska Dubica'),(105,'Kotor Varoš'),(106,'Krupa na Uni'),(107,'Kupres (RS)'),(108,'Laktaši'),(109,'Ljubinje'),(110,'Lopare'),(111,'Milići'),(112,'Modriča'),(113,'Mrkonjić Grad'),(114,'Nevesinje'),(115,'Novi Grad (RS)'),(116,'Novo Goražde'),(117,'Osmaci'),(118,'Oštra Luka'),(119,'Pale'),(120,'Pelagićevo'),(121,'Petrovac'),(122,'Petrovo'),(123,'Prijedor'),(124,'Prnjavor'),(125,'Ribnik'),(126,'Rogatica'),(127,'Rudo'),(128,'Šamac'),(129,'Šekovići'),(130,'Šipovo'),(131,'Sokolac'),(132,'Srbac'),(133,'Srebrenica'),(134,'Teslić'),(135,'Trebinje'),(136,'Trnovo (RS)'),(137,'Ugljevik'),(138,'Višegrad'),(139,'Vlasenica'),(140,'Vukosavlje'),(141,'Zvornik'),(142,'Brčko'),(143,'(nije u BiH)');
/*!40000 ALTER TABLE `opcina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `osoba`
--

DROP TABLE IF EXISTS `osoba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osoba` (
  `id` int(11) NOT NULL,
  `ime` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `prezime` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `spol` enum('M','Z','') COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `brindexa` varchar(10) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `datum_rodjenja` date DEFAULT NULL,
  `adresa_mjesto` int(11) DEFAULT NULL,
  `kanton` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `adresa_mjesto` (`adresa_mjesto`),
  KEY `kanton` (`kanton`),
  CONSTRAINT `osoba_ibfk_4` FOREIGN KEY (`adresa_mjesto`) REFERENCES `mjesto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osoba`
--

LOCK TABLES `osoba` WRITE;
/*!40000 ALTER TABLE `osoba` DISABLE KEYS */;
INSERT INTO `osoba` VALUES (1,'Site','Admin','','',NULL,NULL,NULL),(2,'Olivia','Mccray','Z','-1','1935-05-05',72,4),(3,'Knox','Gray','M','-1','1930-08-10',127,5),(4,'Zane','Clay','M','-1','1960-06-24',121,3),(5,'Scarlett','Baker','Z','-1','1963-10-20',10,6),(6,'Deacon','Simon','M','-1','1958-08-08',106,3),(7,'Wing','Arnold','M','-1','1977-03-07',35,7),(8,'Dahlia','Bradshaw','M','-1','1981-08-12',95,3),(9,'Orli','Macias','M','-1','1980-07-27',130,6),(10,'Knox','Dyer','M','-1','1984-10-18',104,4),(11,'Rhonda','Conrad','Z','-1','1977-04-03',65,1),(12,'John','Goodman','M','-1','1973-01-18',44,8),(13,'Steel','Arnold','M','-1','1972-07-17',61,8),(14,'Medge','Blair','M','-1','1981-11-18',1,11),(15,'Lavinia','Molina','Z','-1','1982-01-01',138,11),(16,'Keane','Clark','M','-1','1946-12-20',37,7),(17,'Leila','Anderson','Z','-1','1986-04-21',57,11),(18,'Lynn','Mcgowan','M','-1','1959-07-22',27,10),(19,'Mark','Whitney','M','-1','1981-05-13',140,10),(20,'Debra','Bentley','Z','-1','1986-06-07',92,3),(21,'Hector','Brooks','M','-1','1986-06-21',81,8),(22,'John','Moss','M','-1','1939-12-06',128,10),(23,'Blossom','Mckay','M','-1','1970-08-02',60,9),(24,'Graiden','Vaughan','M','-1','1962-07-10',80,3),(25,'Sopoline','Cantrell','M','-1','1961-09-11',88,1),(26,'Callum','Swanson','M','-1','1974-04-02',81,3),(27,'Jakeem','Flores','M','-1','1938-12-10',56,4),(28,'Imogene','Torres','M','-1','1984-10-25',105,5),(29,'Jack','Horn','M','-1','1982-12-31',52,5),(30,'Evan','Holland','M','-1','1976-06-28',25,4),(31,'Candice','Obrien','Z','-1','1940-08-11',124,11),(32,'Meredith','Goff','M','-1','1973-02-27',126,12),(33,'Molly','Hobbs','M','-1','1961-03-19',8,5),(34,'Carolyn','Sanchez','Z','-1','1977-02-24',65,7),(35,'Liberty','Bray','M','-1','1971-01-25',99,1),(36,'Lenore','Murphy','Z','-1','1968-04-26',48,9),(37,'Owen','Melendez','M','-1','1947-09-15',125,12),(38,'Gretchen','Harvey','Z','-1','1964-02-11',15,8),(39,'Fritz','Whitley','M','-1','1953-06-27',33,1),(40,'Ishmael','Bauer','M','-1','1996-05-11',59,5),(41,'Russell','Medina','M','-1','1982-12-02',78,1),(42,'Darrel','Mcleod','M','-1','1953-02-28',89,1),(43,'Arsenio','Turner','M','-1','1983-02-13',39,9),(44,'Jayme','Kim','Z','18583','1995-02-01',5,10),(45,'Dora','Francis','Z','58623','1994-08-20',35,3),(46,'Macy','Reilly','Z','14292','1995-02-27',15,6),(47,'Ingrid','Clay','Z','71757','1993-12-27',39,2),(48,'Francesca','Price','Z','25490','1993-10-29',50,10),(49,'Nelle','Guzman','Z','20261','1996-01-22',90,10),(50,'Indira','Bauer','Z','86251','1993-09-23',53,4),(51,'Colette','Reynolds','Z','71727','1991-05-02',97,10),(52,'Joy','Brooks','Z','82683','1995-04-07',66,6),(53,'Kiona','Rodriguez','Z','14983','1995-12-22',49,6),(54,'Kylee','Frank','Z','16503','1991-03-01',68,10),(55,'Riley','Bishop','Z','33803','1994-02-04',18,9),(56,'Mona','Kaufman','Z','78170','1993-03-17',41,9),(57,'Amethyst','Morse','Z','54622','1997-06-21',105,7),(58,'Ann','Sellers','Z','92435','1997-10-15',76,5),(59,'April','Sharp','Z','43397','1994-06-02',21,6),(60,'Rina','Conley','Z','83231','1994-06-20',141,5),(61,'Gemma','Oneill','Z','81821','1992-09-18',125,9),(62,'Frances','Maxwell','Z','28143','1993-02-19',57,2),(63,'Sybill','Carlson','Z','38428','1994-01-12',41,7),(64,'Jessica','Ray','Z','86954','1996-04-24',110,9),(65,'Quinn','Vazquez','Z','61986','1992-04-13',26,7),(66,'Skyler','Rodgers','Z','45547','1993-02-20',26,6),(67,'Belle','Sandoval','Z','32747','1993-09-29',82,9),(68,'Jena','Valentine','Z','61215','1992-12-19',30,10),(69,'Lacota','Justice','Z','27621','1996-12-06',138,9),(70,'Lynn','Grant','Z','41110','1994-01-21',55,5),(71,'Tatyana','Hanson','Z','73024','1995-01-25',19,11),(72,'Alika','Weiss','Z','32553','1991-10-20',137,8),(73,'Ina','Anderson','Z','64130','1996-12-27',127,10),(74,'April','Banks','Z','92829','1991-03-28',101,11),(75,'Mary','Castillo','Z','55861','1997-09-09',2,3),(76,'Bethany','Justice','Z','37880','1997-03-31',55,2),(77,'Rose','Hawkins','Z','83801','1995-04-15',115,3),(78,'Jenette','Estrada','Z','58087','1993-06-19',112,10),(79,'Octavia','Fleming','Z','33830','1992-01-06',140,7),(80,'Gwendolyn','Castro','Z','37198','1997-06-07',22,6),(81,'Odette','Becker','Z','44915','1993-10-29',90,8),(82,'Quon','Weeks','Z','71935','1994-06-16',76,1),(83,'Sasha','Guerrero','Z','63255','1996-09-28',4,11),(84,'Jael','Bartlett','Z','49863','1992-09-05',61,10),(85,'Xyla','Hodge','Z','65843','1992-07-13',105,2),(86,'Yvette','Mendoza','Z','81573','1992-11-20',108,9),(87,'Yuri','Hodge','Z','62075','1992-07-16',102,2),(88,'Minerva','Levy','Z','47827','1994-02-06',131,7),(89,'Natalie','Johnson','Z','80854','1997-05-24',24,7),(90,'Gisela','Trevino','Z','46269','1997-05-11',85,2),(91,'Anika','Todd','Z','64665','1992-03-28',83,8),(92,'Roary','Mckenzie','Z','14755','1994-07-16',87,3),(93,'Remedios','Black','Z','35314','1996-12-31',16,6),(94,'Jolene','Mckay','Z','25702','1995-12-13',104,10),(95,'Jeanette','Frye','Z','59471','1994-05-19',141,10),(96,'Jescie','Burch','Z','45362','1991-12-18',42,11),(97,'Elaine','Murray','Z','52870','1994-09-23',120,6),(98,'Gay','Cox','Z','22375','1992-09-18',57,9),(99,'Naomi','Dennis','Z','82709','1991-07-19',79,3),(100,'Courtney','Livingston','Z','18366','1991-04-13',52,2),(101,'Beatrice','Barker','Z','95159','1994-12-29',47,11),(102,'Scarlet','Strong','Z','58807','1991-07-02',104,10),(103,'Phyllis','Hardy','Z','45387','1995-11-01',60,3),(104,'Hadley','Mclaughlin','Z','97484','1991-12-31',12,8),(105,'Daphne','Oconnor','Z','74698','1996-05-22',65,1),(106,'Dahlia','Baldwin','Z','89138','1995-11-07',47,11),(107,'Madeline','Powell','Z','85539','1997-08-29',84,9),(108,'Dora','Fowler','Z','77538','1996-07-01',73,10),(109,'Natalie','Stone','Z','93472','1995-07-31',53,5),(110,'Abra','Alexander','Z','57568','1994-06-21',136,7),(111,'Madeson','Kaufman','Z','42032','1991-01-13',38,3),(112,'Larissa','Townsend','Z','48976','1991-12-09',2,4),(113,'Iola','Cunningham','Z','69006','1991-02-25',92,7),(114,'Beatrice','Gates','Z','54262','1991-04-16',7,2),(115,'Maxine','Grant','Z','65611','1993-08-09',110,9),(116,'Hilda','Glover','Z','39848','1991-11-17',7,10),(117,'Dorothy','Decker','Z','94361','1991-04-20',41,3),(118,'Mariam','Doyle','Z','79209','1997-05-28',134,1),(119,'Uta','Snow','Z','64447','1996-10-25',137,9),(120,'Carol','Schroeder','Z','36630','1994-04-22',80,4),(121,'Whilemina','Sutton','Z','19258','1992-03-15',136,7),(122,'Rina','Everett','Z','27613','1994-05-04',61,4),(123,'Isabella','Rojas','Z','44006','1997-08-21',82,11),(124,'Leigh','Horton','Z','89908','1992-02-08',3,6),(125,'Holly','Raymond','Z','46741','1992-09-17',10,7),(126,'Willow','Cervantes','Z','67473','1994-05-25',6,1),(127,'Cameron','Todd','Z','31117','1992-05-15',43,3),(128,'Natalie','Hopkins','Z','74993','1997-08-24',109,11),(129,'Tasha','Hood','Z','50200','1994-06-01',101,11),(130,'Minerva','Hendricks','Z','58838','1996-07-18',75,2),(131,'Iliana','Mosley','Z','94349','1997-02-10',13,1),(132,'Hadley','Ramsey','Z','12324','1996-12-16',17,10),(133,'Penelope','Chase','Z','51199','1997-07-15',89,7),(134,'Maile','Hatfield','Z','32597','1994-12-15',30,3),(135,'Kirestin','Ball','Z','64608','1997-03-23',73,7),(136,'Jena','Mills','Z','95699','1996-04-28',57,9),(137,'Grace','Tate','Z','50490','1994-05-16',96,5),(138,'Samantha','Estes','Z','37297','1995-11-16',1,9),(139,'Rina','Guzman','Z','26082','1991-08-14',114,9),(140,'Unity','Oneill','Z','45002','1997-07-13',132,1),(141,'Cailin','Tyson','Z','27350','1993-05-03',81,7),(142,'Heidi','Mullins','Z','29458','1995-11-12',113,5),(143,'Rhona','Henderson','Z','14623','1991-09-23',13,5),(144,'Jemima','Cobb','Z','18910','1992-07-07',77,9),(145,'Whitney','Potts','Z','25897','1994-10-17',113,9),(146,'Stephanie','Oneill','Z','98050','1992-07-24',115,7),(147,'Germane','Vargas','Z','88313','1995-10-12',118,5),(148,'Ingrid','Skinner','Z','59867','1995-01-11',82,8),(149,'Bryar','Orr','Z','27253','1996-10-17',72,7),(150,'Desirae','Hopkins','Z','35795','1996-11-30',9,6),(151,'Mary','Morrison','Z','47340','1991-08-07',117,8),(152,'Kellie','Griffin','Z','27941','1994-02-22',115,2),(153,'Brenna','Marshall','Z','15441','1990-11-19',35,5),(154,'Madaline','Jennings','Z','46569','1995-10-02',70,3),(155,'Adria','Mckinney','Z','90061','1991-02-15',94,7),(156,'Beatrice','Carroll','Z','53350','1992-06-12',13,1),(157,'Claudia','Craft','Z','63915','1992-08-24',43,10),(158,'Mallory','Ochoa','Z','57241','1990-10-26',106,8),(159,'Laura','Mcgowan','Z','20260','1997-04-04',122,8),(160,'Iola','Rose','Z','94020','1993-02-01',20,4),(161,'Lynn','Parrish','Z','80997','1993-01-31',27,7),(162,'Aileen','Aguirre','Z','32409','1995-09-30',100,8),(163,'Eugenia','White','Z','24893','1992-08-09',91,6),(164,'Jemima','Rios','Z','22748','1996-06-11',40,1),(165,'Ivory','Leon','Z','54792','1991-08-11',105,8),(166,'Gisela','Travis','Z','21032','1993-02-14',129,6),(167,'Amber','Huber','Z','63409','1992-07-23',100,7),(168,'Darryl','Richards','Z','98382','1995-11-30',69,5),(169,'Lana','Ramirez','Z','43672','1993-08-13',106,1),(170,'Kathleen','Vaughan','Z','80576','1993-06-06',120,1),(171,'Justina','Pate','Z','84866','1994-11-28',18,4),(172,'Xena','Farmer','Z','36857','1995-08-29',29,11),(173,'Desiree','Charles','Z','63573','1995-02-13',79,11),(174,'Tatum','Haynes','Z','72360','1996-03-31',119,6),(175,'Kyra','Kelley','Z','48419','1994-10-04',102,3),(176,'Rachel','Carter','Z','80630','1991-08-18',80,7),(177,'Karleigh','Waller','Z','99419','1994-11-20',95,6),(178,'Leilani','Cochran','Z','85504','1990-11-19',131,5),(179,'Leigh','Norris','Z','87837','1997-03-31',114,4),(180,'Mia','Clements','Z','47171','1995-03-24',119,11),(181,'Ingrid','Porter','Z','90565','1996-04-21',40,1),(182,'Buffy','Duncan','Z','34567','1991-11-22',135,5),(183,'Chastity','Aguirre','Z','17903','1991-03-28',137,6),(184,'Suki','Wood','Z','57793','1995-10-28',137,5),(185,'Quintessa','Daugherty','Z','56965','1993-02-26',52,6),(186,'Ursula','Kennedy','Z','54378','1997-06-30',3,7),(187,'Leslie','Zamora','Z','54854','1995-03-31',126,8),(188,'Keely','Foley','Z','92101','1997-07-15',128,8),(189,'Freya','Holcomb','Z','11979','1993-06-17',121,9),(190,'Mira','Schneider','Z','86989','1995-12-26',13,4),(191,'Madison','Hopper','Z','37478','1991-10-10',65,7),(192,'Anjolie','Hunt','Z','84872','1996-03-20',31,6),(193,'Dominique','Huffman','Z','95615','1996-05-10',27,6),(194,'Mallory','Mitchell','Z','65100','1993-03-15',115,11),(195,'Gay','Camacho','Z','34401','1991-02-06',61,5),(196,'Bryar','Fletcher','Z','56735','1993-05-18',134,10),(197,'Erin','Macdonald','Z','70573','1997-05-25',75,2),(198,'Hanna','Townsend','Z','66756','1993-01-30',45,6),(199,'Sonya','Farrell','Z','88820','1997-04-16',23,4),(200,'Imogene','Zamora','Z','52346','1993-07-16',137,5),(201,'Cailin','Shannon','Z','89387','1992-01-18',99,8),(202,'Sade','Kirkland','Z','83966','1991-06-20',130,4),(203,'Regina','Cline','Z','59893','1995-10-21',33,1),(204,'Constance','Finley','Z','67037','1997-02-18',138,10),(205,'Selma','Valdez','Z','22872','1994-07-31',42,4),(206,'Eugenia','Battle','Z','40104','1993-01-30',6,10),(207,'Anastasia','Mann','Z','27827','1997-05-07',95,7),(208,'Quintessa','Bowers','Z','92867','1997-08-11',17,10),(209,'Odette','Aguirre','Z','97854','1991-06-19',16,7),(210,'Susan','Crawford','Z','49077','1990-10-22',23,3),(211,'Cailin','Bullock','Z','47364','1996-01-21',48,5),(212,'Bree','Buckley','Z','30861','1996-06-17',109,10),(213,'Rana','Davidson','Z','41747','1994-07-22',118,6),(214,'Lee','Barnes','Z','83560','1994-04-10',47,11),(215,'Shay','Hebert','Z','13166','1990-11-13',79,4),(216,'Quon','Cunningham','Z','70386','1996-07-06',90,10),(217,'Brynne','Hancock','Z','65500','1997-01-18',83,9),(218,'Leilani','Mclean','Z','29181','1994-12-23',30,3),(219,'Kimberly','Webb','Z','83047','1992-09-13',39,11),(220,'Athena','Wilkins','Z','15405','1992-08-08',113,9),(221,'Imelda','Bradley','Z','59086','1996-10-25',126,10),(222,'Leila','Ramos','Z','11855','1992-08-09',29,7),(223,'Tatum','Henry','Z','81899','1993-06-09',115,11),(224,'Adena','Langley','Z','82761','1993-09-30',15,8),(225,'Montana','Turner','Z','92385','1992-08-29',53,5),(226,'Teegan','Benton','Z','93587','1991-10-20',68,3),(227,'Lara','Lester','Z','28496','1997-08-04',39,2),(228,'Lara','Sanchez','Z','28870','1996-12-24',37,4),(229,'Glenna','Mcmahon','Z','44413','1996-03-16',52,10),(230,'Chloe','Rich','Z','20635','1996-04-30',100,5),(231,'Phyllis','Spence','Z','90957','1996-01-31',94,4),(232,'Desiree','Park','Z','65651','1995-11-08',110,2),(233,'Brenda','Rosa','Z','68623','1992-07-16',108,8),(234,'Brenda','Joseph','Z','30045','1991-10-02',112,3),(235,'Miriam','Navarro','Z','75014','1992-06-05',88,6),(236,'Sage','Robinson','Z','43428','1991-11-22',18,6),(237,'Xandra','Tran','Z','35016','1993-08-25',5,4),(238,'Whilemina','Flowers','Z','24580','1997-05-09',92,8),(239,'Bertha','Knowles','Z','17974','1996-07-24',64,7),(240,'Halee','Rutledge','Z','40775','1992-09-03',112,1),(241,'Kylie','Kirk','Z','70934','1994-01-23',94,3),(242,'Jordan','Fuentes','Z','71541','1997-01-10',10,4),(243,'Macey','Conway','Z','35793','1997-10-23',108,7),(244,'Rowan','Allen','Z','46789','1993-08-29',12,3),(245,'Hedy','Morrow','Z','32828','1993-12-19',74,8),(246,'India','Riley','Z','50858','1994-10-31',9,3),(247,'Isadora','Roy','Z','66148','1991-06-13',53,4),(248,'Lee','Mayo','Z','72689','1994-07-30',101,1),(249,'Amela','Macdonald','Z','60878','1992-03-15',109,9),(250,'Kylynn','Moore','Z','76506','1992-09-13',79,3),(251,'Amena','Nunez','Z','43951','1995-10-11',26,7),(252,'Carla','King','Z','52065','1990-10-22',7,8),(253,'Alexis','Reynolds','Z','45441','1994-10-05',43,1),(254,'Nora','Turner','Z','89100','1991-02-03',120,9),(255,'Cecilia','Beasley','Z','71523','1995-08-20',114,10),(256,'Denise','Sullivan','Z','89312','1996-02-02',109,7),(257,'Mariko','Joseph','Z','15405','1992-11-08',70,8),(258,'Rhoda','Koch','Z','28720','1994-07-17',122,10),(259,'Rylee','Mclaughlin','Z','45819','1993-11-12',83,2),(260,'Quail','Justice','Z','65008','1994-07-17',123,1),(261,'Meghan','Suarez','Z','85951','1993-07-08',2,7),(262,'Shafira','Hester','Z','86589','1995-01-14',3,3),(263,'Deirdre','Strong','Z','80719','1996-08-11',137,2),(264,'Anastasia','Merritt','Z','87345','1997-10-17',125,9),(265,'Dawn','Mills','Z','66052','1993-07-12',131,6),(266,'Piper','Keith','Z','55816','1992-03-02',112,3),(267,'Kay','Stone','Z','21928','1994-10-05',47,1),(268,'Rebekah','Goodwin','Z','25958','1994-12-28',49,7),(269,'Anjolie','Hodge','Z','45102','1994-05-18',7,10),(270,'Teagan','Larsen','Z','65826','1991-04-16',103,7),(271,'Brenda','Butler','Z','75203','1992-01-26',44,11),(272,'Joy','Malone','Z','23408','1991-03-01',74,10),(273,'Fallon','Santos','Z','67704','1995-08-04',53,5),(274,'Sydney','Alexander','Z','21743','1996-08-10',64,5),(275,'Juliet','Madden','Z','31382','1993-12-04',41,3),(276,'Xena','Gilliam','Z','86173','1993-07-31',13,5),(277,'Amelia','Sherman','Z','28982','1992-11-12',86,4),(278,'Ayanna','Durham','Z','76483','1996-02-25',114,3),(279,'Jada','Frazier','Z','61374','1991-07-10',33,5),(280,'Halee','Carpenter','Z','37210','1991-12-13',108,8),(281,'Jessica','Beasley','Z','60586','1994-06-04',14,11),(282,'Janna','Webster','Z','57395','1996-06-09',46,8),(283,'Winter','Cunningham','Z','85940','1991-01-16',83,6),(284,'Josephine','Farrell','Z','47326','1992-10-19',60,2),(285,'Vera','Jacobson','Z','36441','1994-07-14',79,1),(286,'Blythe','Ellis','Z','18626','1997-04-29',91,7),(287,'Carly','Holmes','Z','79395','1995-01-16',114,4),(288,'Kellie','Booker','Z','35443','1993-08-31',95,9),(289,'Noel','Blevins','Z','80899','1995-06-20',72,10),(290,'Sigourney','Pruitt','Z','36699','1992-12-08',100,5),(291,'Gisela','Hodge','Z','92799','1993-03-07',114,2),(292,'Marah','Carson','Z','12969','1994-02-18',10,1),(293,'Scarlet','Craig','Z','62244','1997-02-17',28,9),(294,'Heather','Hickman','Z','13079','1994-03-05',41,10),(295,'Gloria','Marshall','Z','25788','1996-09-06',22,2),(296,'Stacy','Chaney','Z','20720','1991-05-02',38,9),(297,'Brittany','Fisher','Z','98329','1995-10-05',22,5),(298,'Barbara','Pierce','Z','60665','1996-06-09',98,8),(299,'Kitra','Pope','Z','24467','1995-05-02',43,7),(300,'Maxine','Freeman','Z','30357','1992-12-17',113,5),(301,'Halee','Stanton','Z','57456','1996-06-05',14,7),(302,'Simone','Harrell','Z','84092','1994-10-17',132,3),(303,'Venus','Bruce','Z','91463','1996-10-31',72,1),(304,'Gretchen','Jacobs','Z','40332','1992-04-03',25,1),(305,'Carly','Mcknight','Z','99034','1993-06-18',34,1),(306,'Hope','Graves','Z','75162','1993-12-20',95,2),(307,'Alika','Skinner','Z','63513','1991-11-02',15,4),(308,'Alika','Vincent','Z','96709','1996-08-01',73,8),(309,'Amber','Woods','Z','69288','1992-05-01',136,5),(310,'Jorden','Sutton','Z','52681','1990-11-06',88,6),(311,'Jemima','Coffey','Z','49029','1993-05-03',57,8),(312,'Brooke','Rodgers','Z','53969','1997-02-28',85,1),(313,'Lareina','Berger','Z','21934','1993-03-23',2,3),(314,'Cynthia','Phelps','Z','82699','1992-01-27',137,4),(315,'Ariel','Bridges','Z','29666','1997-05-18',81,4),(316,'Ginger','Huff','Z','38787','1995-07-01',4,5),(317,'Hollee','Montgomery','Z','39699','1997-09-25',84,8),(318,'Petra','Burks','Z','37861','1996-03-01',138,4),(319,'Deirdre','Rivers','Z','42668','1992-10-30',12,1),(320,'Sydney','Bright','Z','52787','1994-09-07',113,4),(321,'Charlotte','Pitts','Z','42834','1996-10-11',88,3),(322,'Gwendolyn','Richard','Z','53032','1997-09-13',48,4),(323,'Kitra','Banks','Z','78564','1996-07-06',69,11),(324,'Elaine','Livingston','Z','80062','1994-01-15',106,7),(325,'Tara','Mccormick','Z','16332','1995-12-21',25,3),(326,'Sage','Fletcher','Z','39987','1992-04-13',80,3),(327,'Erica','Hunt','Z','67860','1997-08-13',14,11),(328,'Zephr','Weeks','Z','70364','1991-02-03',137,8),(329,'Regina','Kim','Z','60032','1996-11-04',31,5),(330,'Melissa','Gardner','Z','80771','1994-03-09',18,10),(331,'Jana','Le','Z','41787','1995-08-18',44,1),(332,'Alma','Willis','Z','82916','1992-01-20',36,9),(333,'TaShya','Strong','Z','27463','1995-02-11',37,4),(334,'Harriet','Melendez','Z','94482','1995-05-01',11,6),(335,'Camilla','Serrano','Z','33652','1994-08-17',53,3),(336,'Kiona','Little','Z','40310','1995-05-11',117,1),(337,'Madeson','Jenkins','Z','38618','1994-08-08',38,2),(338,'Leilani','Coffey','Z','90712','1996-06-12',138,1),(339,'Wilma','Cochran','Z','51183','1994-07-06',13,2),(340,'Serena','Parker','Z','66395','1992-02-06',131,4),(341,'Maite','Bauer','Z','12482','1992-12-21',105,11),(342,'Zia','Meyers','Z','42338','1995-10-28',84,1),(343,'Caryn','Foster','Z','15372','1994-04-29',46,7),(344,'Karina','Everett','Z','19016','1995-09-03',118,8),(345,'Xandra','Davis','Z','96858','1995-03-15',50,5),(346,'Medge','Mckenzie','Z','70244','1994-05-08',24,2),(347,'Martha','Townsend','Z','10860','1992-10-09',93,2),(348,'Kyra','Ward','Z','20702','1994-03-30',134,5),(349,'Galena','Parker','Z','52597','1993-04-28',102,7),(350,'Hadassah','Waters','Z','18626','1991-01-27',100,7),(351,'Maggie','Mccray','Z','51371','1996-03-15',91,8),(352,'Molly','York','Z','35445','1991-06-21',55,8),(353,'Lilah','Osborne','Z','28148','1997-06-15',5,1),(354,'Michelle','Diaz','Z','97185','1996-07-31',15,7),(355,'Whitney','Aguirre','Z','30495','1994-07-26',58,3),(356,'Brittany','Downs','Z','73031','1991-02-24',123,6),(357,'Vielka','Monroe','Z','82804','1991-07-18',140,3),(358,'Sybil','Byrd','Z','86778','1996-11-20',129,1),(359,'Kylynn','Lamb','Z','52430','1997-07-11',29,10),(360,'Jaquelyn','Drake','Z','85386','1995-06-28',47,9),(361,'Jenette','Summers','Z','19150','1993-06-21',137,2),(362,'Inez','Kelley','Z','20324','1992-04-01',45,5),(363,'Vielka','Rush','Z','11113','1997-09-25',98,7),(364,'Cara','Byrd','Z','26650','1994-02-01',98,1),(365,'Charissa','Compton','Z','54603','1994-10-28',112,6),(366,'Destiny','Whitley','Z','81864','1996-01-17',105,3),(367,'Signe','Buckley','Z','80755','1992-10-01',116,3),(368,'Megan','Wilkinson','Z','87445','1991-01-09',69,11),(369,'Karen','Sellers','Z','29344','1995-04-08',8,10),(370,'Cathleen','Le','Z','34832','1996-11-21',111,7),(371,'Lilah','Nguyen','Z','23234','1992-03-09',98,6),(372,'Ella','Walton','Z','38334','1995-07-01',104,7),(373,'Leilani','Alexander','Z','16278','1997-09-09',46,3),(374,'Stephanie','Terrell','Z','69176','1992-03-24',36,6),(375,'Adara','Marquez','Z','33079','1994-11-12',85,7),(376,'Isabelle','Robinson','Z','78761','1995-06-03',139,11),(377,'Hannah','Day','Z','50668','1997-10-21',19,4),(378,'Nora','Hendricks','Z','20128','1996-05-21',101,4),(379,'Lucy','Klein','Z','37055','1995-06-01',21,6),(380,'Wendy','Todd','Z','32661','1992-10-14',132,11),(381,'Ursa','Tanner','Z','99771','1992-09-25',13,6),(382,'Quyn','Parrish','Z','67667','1992-12-10',137,2),(383,'Denise','Oneill','Z','50923','1993-02-17',93,11),(384,'Illiana','Irwin','Z','57086','1990-12-28',20,6),(385,'Cleo','Robertson','Z','41455','1991-11-13',103,4),(386,'Leslie','Lee','Z','50351','1995-09-18',140,10),(387,'Rinah','Howe','Z','20764','1996-08-05',74,9),(388,'Lila','Griffith','Z','14063','1997-04-04',108,2),(389,'Lois','Hopper','Z','45435','1993-07-31',12,8),(390,'Quynn','Ellis','Z','39035','1996-12-02',79,7),(391,'Mia','Morrison','Z','24789','1994-05-10',45,7),(392,'Kalia','Mann','Z','75753','1993-12-12',126,5),(393,'Belle','Rhodes','Z','42700','1993-12-17',51,5),(394,'Dawn','Vinson','Z','48480','1996-09-09',57,10),(395,'Mariko','Barton','Z','75072','1995-01-02',35,5),(396,'Chiquita','May','Z','81497','1993-08-04',39,5),(397,'Brynne','Barr','Z','52180','1991-04-07',18,11),(398,'Kiayada','Rose','Z','52569','1993-04-27',93,10),(399,'Harriet','Hodge','Z','81149','1996-04-11',31,7),(400,'Elaine','Odonnell','Z','34780','1992-03-06',20,7),(401,'Lavinia','Brennan','Z','90580','1992-11-10',79,8),(402,'Quin','Newton','Z','67846','1993-09-08',12,6),(403,'Demetria','Fletcher','Z','67143','1994-07-23',131,3),(404,'Charlotte','Richmond','Z','81181','1994-11-18',95,8),(405,'Leilani','Figueroa','Z','52824','1992-01-07',117,10),(406,'Quail','Dejesus','Z','92987','1993-09-18',29,11),(407,'Dana','Shaw','Z','96133','1995-11-17',114,10),(408,'Nayda','Ray','Z','67585','1996-07-14',63,6),(409,'Leah','Jefferson','Z','41887','1996-01-08',139,6),(410,'Joan','Riggs','Z','99787','1991-07-24',7,3),(411,'Idona','Cochran','Z','29269','1992-12-10',111,9),(412,'Rhea','Richards','Z','37174','1993-10-18',133,5),(413,'Nomlanga','Mcconnell','Z','38993','1993-10-15',26,1),(414,'Leandra','Whitley','Z','74076','1992-03-24',57,3),(415,'Irma','Wagner','Z','98365','1993-03-23',105,10),(416,'MacKenzie','Washington','Z','84812','1992-05-08',120,9),(417,'Callie','Velasquez','Z','68476','1993-09-14',121,4),(418,'Macy','Guy','Z','25872','1990-11-11',78,11),(419,'Ima','Espinoza','Z','28552','1993-11-19',75,1),(420,'Tatyana','Bryan','Z','99024','1991-07-25',83,2),(421,'Isabella','Klein','Z','40941','1994-08-12',6,9),(422,'Helen','Johns','Z','59164','1997-04-14',107,11),(423,'Lilah','Rhodes','Z','11708','1990-11-24',58,7),(424,'Quail','Joyce','Z','67641','1991-01-05',82,8),(425,'Lucy','Sandoval','Z','22597','1997-04-05',92,4),(426,'Imogene','Patterson','Z','29763','1991-01-09',9,7),(427,'Savannah','Hester','Z','11219','1992-08-02',124,10),(428,'Katell','Cantu','Z','52093','1991-03-10',130,4),(429,'Germaine','Robertson','Z','71950','1996-01-10',63,3),(430,'Tatum','Holcomb','Z','75649','1994-02-01',123,2),(431,'Robin','Durham','Z','93582','1995-09-28',33,1),(432,'Sage','Bean','Z','66674','1997-08-18',57,3),(433,'Courtney','Hill','Z','39263','1994-06-08',85,3),(434,'Emma','Clarke','Z','12380','1996-10-24',44,2),(435,'Brenna','Sellers','Z','89556','1995-12-22',52,3),(436,'Vivien','Cherry','Z','35797','1995-01-15',88,7),(437,'Ignacia','Hyde','Z','81013','1994-01-29',105,3),(438,'Raya','Garrison','Z','31081','1992-06-17',81,4),(439,'Candace','Smith','Z','54413','1993-05-18',108,8),(440,'Jennifer','Mcclure','Z','78217','1993-03-26',31,10),(441,'Medge','Beck','Z','27533','1994-10-30',67,2),(442,'Jessica','Guerra','Z','60506','1993-10-31',80,11),(443,'Macy','Gilbert','Z','84543','1992-12-30',25,10),(444,'Miriam','Montgomery','Z','23438','1994-02-01',46,6),(445,'Sonia','Davidson','Z','17053','1992-08-19',131,10),(446,'Wynter','Rosa','Z','86674','1994-02-07',127,9),(447,'Cassandra','Valencia','Z','17846','1994-04-03',123,10),(448,'Summer','Perkins','Z','96445','1995-03-27',112,6),(449,'Freya','Ramos','Z','98867','1994-04-24',71,7),(450,'Megan','Lucas','Z','98579','1996-06-15',5,10),(451,'Winifred','Gross','Z','80239','1996-01-27',86,3),(452,'Xandra','Ruiz','Z','94754','1993-12-31',83,8),(453,'Virginia','Wells','Z','35281','1993-11-22',140,9),(454,'Ciara','Brown','Z','85647','1995-06-02',123,5),(455,'Mariam','Dean','Z','14086','1995-12-25',123,9),(456,'Roary','Potter','Z','84617','1997-01-10',62,4),(457,'Britanni','Briggs','Z','57825','1991-09-05',80,10),(458,'Melodie','Holland','Z','26419','1995-09-02',116,1),(459,'Kaye','Ochoa','Z','90395','1996-12-22',24,1),(460,'Bianca','Langley','Z','20744','1992-02-18',76,9),(461,'Cally','Rush','Z','66246','1990-10-29',67,4),(462,'Sonya','Cole','Z','69395','1993-12-24',89,9),(463,'Georgia','Stout','Z','32252','1996-01-18',13,3),(464,'Pascale','Jacobson','Z','74367','1995-12-26',69,3),(465,'Echo','Ellison','Z','33630','1995-05-02',136,1),(466,'Alma','Porter','Z','84662','1993-05-11',83,1),(467,'Whilemina','Vance','Z','88503','1992-04-19',15,8),(468,'Renee','Greer','Z','92277','1994-08-05',122,9),(469,'September','Pearson','Z','47220','1993-01-13',101,1),(470,'Tamekah','Mercer','Z','98718','1991-03-16',36,11),(471,'Kelsey','Albert','Z','56605','1996-01-19',124,6),(472,'Haley','Carrillo','Z','76683','1997-08-10',82,2),(473,'Amity','Bass','Z','99234','1994-12-04',94,4),(474,'Dara','Pena','Z','44000','1997-07-11',68,5),(475,'Alisa','Ellis','Z','79690','1996-08-23',131,9),(476,'Shana','Moreno','Z','45799','1994-02-25',74,4),(477,'Victoria','Sexton','Z','67889','1996-10-01',106,11),(478,'Aline','Klein','Z','93763','1995-10-24',48,2),(479,'Winter','Ramos','Z','85736','1991-06-16',30,7),(480,'India','Collier','Z','72061','1994-09-19',101,11),(481,'Piper','Rollins','Z','98745','1993-09-19',49,4),(482,'Whilemina','Pitts','Z','12240','1995-09-17',140,5),(483,'Sylvia','Bailey','Z','55946','1991-10-20',139,8),(484,'Cecilia','Lancaster','Z','28969','1994-07-30',74,7),(485,'Veda','Briggs','Z','21520','1992-05-11',78,5),(486,'Ila','Bell','Z','20132','1997-04-20',61,2),(487,'Iliana','Grant','Z','19319','1994-01-04',14,9),(488,'Galena','Goodwin','Z','55963','1992-10-15',140,2),(489,'Raven','Everett','Z','95000','1996-06-01',29,5),(490,'Britanney','Jacobs','Z','35808','1993-10-17',54,10),(491,'Faith','Houston','Z','27819','1997-02-01',112,3),(492,'Larissa','Mitchell','Z','24267','1993-06-03',3,8),(493,'Virginia','Burnett','Z','34600','1993-08-26',99,10),(494,'Rhonda','Espinoza','Z','64062','1997-02-22',22,6),(495,'Yetta','Guy','Z','41707','1995-02-21',14,5),(496,'Cailin','Guerra','Z','91161','1994-10-13',80,4),(497,'Martina','Irwin','Z','18589','1996-01-03',39,7),(498,'Kylan','Jordan','Z','66450','1993-05-22',88,10),(499,'Athena','Christensen','Z','67969','1996-06-19',65,5),(500,'Roanna','Hendrix','Z','83488','1990-12-08',98,5),(501,'Francesca','Warner','Z','21891','1994-03-27',96,2),(502,'TaShya','Kelley','Z','57630','1997-08-13',122,1),(503,'Jessamine','Herman','Z','40983','1993-03-19',140,10),(504,'Jane','Hurst','Z','98083','1995-05-18',83,3),(505,'Jaquelyn','Parker','Z','94112','1991-02-12',100,7),(506,'Ebony','Brown','Z','68734','1995-01-15',54,10),(507,'Kylie','Ochoa','Z','58288','1995-05-05',141,4),(508,'Wendy','Oneill','Z','34344','1993-06-02',8,7),(509,'Candice','Flynn','Z','23544','1994-02-25',62,10),(510,'Ora','Mayo','Z','86108','1997-02-06',123,3),(511,'Juliet','Lynch','Z','72097','1991-08-07',30,2),(512,'Minerva','Lindsey','Z','36418','1997-03-19',81,11),(513,'Holly','Salazar','Z','68057','1995-07-16',104,10),(514,'Tatyana','Huff','Z','29109','1992-04-27',141,2),(515,'Bryar','Gill','Z','18925','1991-01-08',110,11),(516,'Jasmine','Michael','Z','55114','1990-10-30',17,5),(517,'Ann','Booker','Z','39326','1996-04-08',109,10),(518,'Ariel','Duran','Z','10091','1992-08-11',70,8),(519,'Destiny','Mendez','Z','78428','1995-09-08',39,6),(520,'Stella','Hood','Z','26765','1994-06-02',62,3),(521,'Unity','Joyner','Z','84234','1994-10-04',70,4),(522,'Mona','Beasley','Z','42280','1993-01-18',102,8),(523,'Alfreda','Johnson','Z','98253','1996-03-15',49,10),(524,'Heidi','Elliott','Z','48242','1991-09-28',95,6),(525,'Hannah','Bryan','Z','10553','1994-04-11',58,11),(526,'Summer','Rollins','Z','11321','1993-05-14',73,3),(527,'Emma','Mcneil','Z','48144','1991-11-19',53,8),(528,'Mari','Russo','Z','13027','1996-10-04',128,11),(529,'Yoshi','Klein','Z','53461','1996-08-22',38,4),(530,'Gisela','Mcintyre','Z','30547','1992-08-31',23,11),(531,'Jane','Cabrera','Z','27550','1995-12-03',60,10),(532,'Eve','Nichols','Z','88918','1995-01-03',27,9),(533,'Aurora','Ballard','Z','98891','1996-04-16',112,3),(534,'Lesley','Dickson','Z','99566','1992-02-18',40,9),(535,'Unity','Blackburn','Z','99462','1997-04-28',85,8),(536,'Whitney','Hess','Z','65268','1995-09-23',49,3),(537,'Sonya','Hickman','Z','32678','1996-11-03',127,3),(538,'Leandra','Nichols','Z','89872','1994-06-23',12,2),(539,'Leila','Allen','Z','51837','1995-08-17',92,11),(540,'Mollie','Wallace','Z','16391','1993-03-12',48,5),(541,'Iona','Foster','Z','28731','1992-08-30',108,6),(542,'Melyssa','Avery','Z','24554','1994-03-24',1,6),(543,'Anjolie','English','Z','26388','1995-08-10',113,11),(544,'Vielka','Stuart','Z','26932','1994-07-09',68,11),(545,'Samantha','Gamble','Z','46582','1995-11-15',112,4),(546,'Allegra','Wilkerson','Z','17694','1992-08-31',130,4),(547,'Jael','Mccarthy','Z','99837','1992-02-26',9,2),(548,'Aline','Rocha','Z','27764','1994-10-09',72,5),(549,'Sasha','Roy','Z','36600','1994-08-31',77,3),(550,'Rebecca','Woods','Z','87313','1994-02-23',59,3),(551,'Brynn','Lara','Z','72712','1993-03-30',45,5),(552,'Michelle','Norris','Z','20539','1996-09-25',30,8),(553,'Madonna','Cunningham','Z','51724','1994-03-31',17,11),(554,'Venus','Middleton','Z','33456','1995-12-08',43,8),(555,'Cleo','Castaneda','Z','89052','1994-10-30',66,2),(556,'Clio','Landry','Z','62429','1992-10-30',117,4),(557,'Brianna','Ayala','Z','11452','1992-04-21',85,6),(558,'Amaya','Sharp','Z','60142','1991-12-23',86,2),(559,'Camille','Preston','Z','16567','1993-05-12',89,7),(560,'Astra','Odonnell','Z','56010','1991-12-16',11,6),(561,'Ebony','Payne','Z','30143','1991-04-06',122,11),(562,'Justina','Glover','Z','39181','1995-06-15',85,4),(563,'Noelani','Coffey','Z','55923','1993-08-23',119,9),(564,'Paula','Blevins','Z','19696','1991-03-27',40,11),(565,'Zena','Carey','Z','14081','1991-02-19',121,10),(566,'Tashya','Aguirre','Z','71884','1992-02-13',133,9),(567,'Kimberly','Berger','Z','23810','1995-10-19',89,1),(568,'Orli','Walter','Z','32278','1993-09-02',108,8),(569,'Nadine','Ware','Z','11110','1993-04-27',40,3),(570,'Nayda','Velez','Z','28407','1991-07-11',24,6),(571,'Yael','Cohen','Z','30664','1994-06-29',114,7),(572,'Azalia','Burnett','Z','90134','1991-10-06',141,11),(573,'Jaden','Levy','Z','52982','1997-05-19',90,8),(574,'Tanya','Nielsen','Z','11611','1997-06-03',71,11),(575,'Kelsey','Marshall','Z','73226','1994-04-29',110,4),(576,'Jolie','Ryan','Z','84501','1992-06-16',40,1),(577,'Olympia','Flores','Z','46658','1995-05-06',93,3),(578,'Tatiana','Sellers','Z','62292','1994-11-25',95,1),(579,'Morgan','Henderson','Z','32252','1996-07-16',95,9),(580,'Martha','Heath','Z','18476','1997-06-10',60,1),(581,'Chava','Pugh','Z','18826','1992-10-23',133,10),(582,'Britanney','Stanley','Z','23210','1991-07-18',21,5),(583,'Autumn','Sharpe','Z','88017','1994-07-18',103,1),(584,'Ifeoma','Chapman','Z','71573','1995-07-27',113,2),(585,'Mona','Henderson','Z','78870','1992-09-09',2,5),(586,'Sybil','Cantu','Z','68388','1994-05-13',118,11),(587,'Dai','Huber','Z','85954','1995-01-20',23,5),(588,'Jemima','Newman','Z','53512','1993-03-08',93,6),(589,'Kimberley','Mccall','Z','75923','1993-07-02',57,5),(590,'Winifred','Jimenez','Z','43896','1997-02-08',22,7),(591,'Shaine','Mercado','Z','94095','1994-01-23',135,10),(592,'Sophia','Craig','Z','36978','1991-09-24',97,8),(593,'Madeline','Bailey','Z','92678','1997-02-04',86,6),(594,'Rachel','Ware','Z','60357','1997-01-02',137,7),(595,'Reagan','Richardson','Z','12445','1994-09-19',5,5),(596,'Patience','Jacobs','Z','74562','1997-06-04',112,5),(597,'Doris','Weber','Z','32421','1996-10-19',91,8),(598,'Leandra','Salas','Z','37885','1996-09-27',30,10),(599,'Jenette','Faulkner','Z','18452','1992-07-25',84,9),(600,'Laura','Gamble','Z','92566','1992-07-22',102,8),(601,'Sandra','Wallace','Z','74332','1995-05-22',124,9),(602,'Jaden','Warren','Z','66142','1995-11-16',87,10),(603,'Bethany','Valenzuela','Z','75438','1997-07-08',121,11),(604,'Rama','Vinson','Z','96150','1996-01-22',107,9),(605,'Audrey','Lloyd','Z','32366','1992-12-19',83,4),(606,'Alfreda','Nicholson','Z','59194','1995-01-29',85,9),(607,'Bree','Britt','Z','57798','1991-06-28',95,11),(608,'Echo','Jacobson','Z','75658','1997-05-19',59,5),(609,'Blossom','Bowers','Z','52228','1995-10-09',90,5),(610,'Adele','Estrada','Z','71257','1992-01-27',62,3),(611,'Adena','Jacobson','Z','60870','1996-12-20',81,2),(612,'Madeson','Hayes','Z','17917','1993-03-18',91,4),(613,'Eve','Kinney','Z','80312','1997-01-17',71,4),(614,'Debra','Summers','Z','36622','1994-05-27',63,7),(615,'Brielle','Robles','Z','36137','1992-09-10',50,7),(616,'Ella','Payne','Z','64917','1991-03-02',67,8),(617,'Zephr','Young','Z','53336','1995-07-04',107,2),(618,'Daphne','Singleton','Z','99778','1994-08-14',121,5),(619,'Lynn','Duffy','Z','20414','1997-08-30',104,5),(620,'Madonna','Barton','Z','36083','1995-08-10',12,10),(621,'Ursa','Gilliam','Z','82511','1994-07-30',98,6),(622,'Denise','Daniel','Z','30507','1997-08-29',59,7),(623,'Quintessa','Carrillo','Z','42951','1991-10-26',49,6),(624,'Irma','Pugh','Z','16609','1996-05-26',135,10),(625,'Leila','Mayer','Z','25065','1991-11-12',136,8),(626,'Erin','Cummings','Z','53192','1996-09-29',112,4),(627,'Hermione','Bernard','Z','85790','1997-01-24',103,3),(628,'Whoopi','Spencer','Z','18870','1991-08-15',35,10),(629,'Dai','Rios','Z','78101','1997-05-12',79,7),(630,'Ria','Rose','Z','59202','1997-01-25',50,5),(631,'Lillian','Schroeder','Z','35326','1995-12-01',75,7),(632,'Hilary','Zimmerman','Z','24418','1993-02-14',49,4),(633,'Justine','Lopez','Z','39574','1994-07-31',63,9),(634,'Giselle','Mccarty','Z','80325','1992-08-27',46,8),(635,'Abra','Case','Z','88194','1996-10-01',45,7),(636,'Aimee','Santana','Z','56004','1992-11-17',60,5),(637,'Amethyst','Good','Z','80471','1996-10-02',124,6),(638,'Willow','Pruitt','Z','28205','1991-11-13',127,11),(639,'Kiona','Richardson','Z','68711','1996-10-25',17,2),(640,'Fleur','Burke','Z','46425','1997-04-14',9,5),(641,'Kalia','Nicholson','Z','73050','1997-05-04',17,3),(642,'Dara','Garrett','Z','40576','1996-05-12',48,9),(643,'Shoshana','Russell','Z','86846','1995-04-21',100,7),(644,'Jael','Willis','Z','92838','1995-08-31',55,10),(645,'Dara','Horton','Z','53124','1996-06-05',3,5),(646,'Barbara','Savage','Z','54130','1991-08-25',2,1),(647,'Hiroko','Carney','Z','32859','1993-08-07',88,9),(648,'Oprah','Stafford','Z','31659','1994-12-21',120,7),(649,'Cheyenne','Wooten','Z','24685','1996-09-28',22,9),(650,'Ursa','Cannon','Z','18969','1994-07-22',123,4),(651,'Patience','Malone','Z','90589','1995-04-07',29,8),(652,'Breanna','Mooney','Z','47695','1995-01-22',111,10),(653,'Paloma','Stevens','Z','39028','1992-10-25',28,3),(654,'Vielka','Newton','Z','48505','1997-07-25',4,4),(655,'Olympia','Dodson','Z','27670','1992-10-05',125,5),(656,'Eleanor','Howell','Z','79376','1995-09-09',81,7),(657,'Rosalyn','Navarro','Z','87230','1994-08-23',72,2),(658,'Illana','Carter','Z','53633','1993-11-16',32,6),(659,'Jayme','Thornton','Z','24821','1995-11-20',49,10),(660,'Mona','Dennis','Z','38724','1992-06-14',122,7),(661,'Farrah','Knowles','Z','61619','1992-11-11',67,4),(662,'Julie','Tucker','Z','54338','1996-08-30',123,11),(663,'Donna','Moss','Z','60307','1992-04-05',74,11),(664,'Vivien','Wooten','Z','45628','1994-12-29',79,1),(665,'Gretchen','Newton','Z','76749','1994-01-22',73,1),(666,'Halla','Lindsay','Z','77513','1995-10-13',128,8),(667,'Lael','Buckley','Z','94113','1995-10-22',87,5),(668,'Yoko','Payne','Z','95845','1991-08-13',98,2),(669,'Leila','Rocha','Z','67292','1991-12-04',134,7),(670,'Rylee','Bird','Z','86681','1997-01-14',38,9),(671,'Dai','Maynard','Z','94310','1992-07-27',127,7),(672,'Naida','Oneill','Z','82304','1990-12-28',35,1),(673,'Zenaida','Gillespie','Z','86065','1997-03-31',138,2),(674,'Hedda','Andrews','Z','53459','1993-05-23',32,11),(675,'Yoshi','Turner','Z','32764','1991-10-31',141,4),(676,'Tatyana','Doyle','Z','13938','1995-02-07',8,7),(677,'Summer','Higgins','Z','23352','1995-01-09',14,1),(678,'Nelle','Raymond','Z','45862','1992-11-09',134,6),(679,'Ila','Moses','Z','97705','1996-05-18',16,10),(680,'Eliana','Welch','Z','51480','1992-08-06',45,2),(681,'Tasha','Rogers','Z','21958','1993-04-15',128,11),(682,'Nelle','Manning','Z','30548','1993-09-28',92,7),(683,'Rhea','Key','Z','96100','1996-10-26',40,9),(684,'Wyoming','Ruiz','Z','85785','1996-09-30',10,10),(685,'Kristen','Combs','Z','64121','1991-10-17',8,5),(686,'Alma','Hart','Z','79152','1991-02-09',128,7),(687,'Willow','Dean','Z','52708','1995-07-08',59,8),(688,'Christen','Small','Z','58872','1993-07-29',136,2),(689,'Kelsey','Hyde','Z','66896','1996-02-09',10,4),(690,'Hollee','Stanley','Z','33316','1996-11-17',80,4),(691,'Chelsea','Morton','Z','91688','1996-05-19',13,3),(692,'Whilemina','Torres','Z','24968','1996-09-22',55,5),(693,'Noelani','Rice','Z','71014','1997-01-23',10,9),(694,'Tatiana','Flores','Z','85681','1990-12-05',116,6),(695,'Shellie','Byrd','Z','47679','1993-12-10',61,3),(696,'Larissa','Bonner','Z','47174','1992-12-18',20,8),(697,'Fleur','Lloyd','Z','76484','1991-09-27',39,7),(698,'Brianna','Sims','Z','72628','1994-07-11',62,11),(699,'Lucy','Aguilar','Z','20117','1995-05-18',115,6),(700,'Anastasia','Brennan','Z','34572','1992-05-02',50,8),(701,'Justina','Mcleod','Z','26289','1996-03-08',24,10),(702,'Isadora','Ray','Z','28084','1991-05-14',118,1),(703,'Cameran','Jones','Z','89649','1993-08-16',120,11),(704,'Chanda','Justice','Z','43305','1991-10-26',117,10),(705,'Nelle','Potts','Z','11305','1994-05-08',31,5),(706,'Fatima','Nielsen','Z','30671','1992-07-13',135,2),(707,'Faith','Randall','Z','73136','1997-03-26',47,11),(708,'Autumn','Anthony','Z','33917','1994-09-09',110,6),(709,'Kyra','Franks','Z','46110','1991-02-04',17,7),(710,'Ashely','Holland','Z','30906','1991-05-29',102,1),(711,'Unity','Wallace','Z','47605','1992-09-11',124,9),(712,'Cherokee','Haney','Z','67818','1997-03-19',88,2),(713,'Jenna','Leonard','Z','31833','1992-10-18',54,8),(714,'Lareina','Ford','Z','74848','1992-03-09',115,1),(715,'Remedios','Browning','Z','66590','1993-10-08',6,5),(716,'Donna','Brewer','Z','17115','1996-07-10',57,11),(717,'Scarlett','Page','Z','30152','1996-02-16',47,9),(718,'Keelie','George','Z','24646','1997-04-28',88,4),(719,'Britanni','Mcneil','Z','94675','1991-12-02',99,7),(720,'Jaden','Pittman','Z','95114','1994-06-29',27,5),(721,'Kay','Moody','Z','94503','1992-01-10',27,8),(722,'Summer','Kidd','Z','99422','1993-07-08',34,2),(723,'Alika','Hall','Z','48166','1993-03-30',132,1),(724,'Leila','Richmond','Z','70661','1993-01-25',11,8),(725,'Hillary','Parker','Z','77328','1995-03-20',68,7),(726,'Dora','Warner','Z','20924','1997-02-28',116,2),(727,'Tana','Roth','Z','43062','1996-09-25',24,11),(728,'Demetria','Ray','Z','47542','1993-05-02',108,2),(729,'Barbara','Gill','Z','52495','1993-08-12',34,10),(730,'Mariam','Newman','Z','76543','1993-09-04',9,2),(731,'Mari','Woodard','Z','91999','1996-06-13',49,5),(732,'Breanna','Nieves','Z','17709','1994-06-06',3,6),(733,'Kelsey','Greer','Z','47245','1997-04-03',79,11),(734,'Jemima','Irwin','Z','54538','1993-06-05',80,1),(735,'Kiona','Campbell','Z','21191','1991-09-17',39,4),(736,'Kirsten','Valentine','Z','49356','1991-10-17',66,11),(737,'Miriam','Bond','Z','21591','1994-09-30',16,6),(738,'Jane','Pace','Z','74213','1991-09-09',127,5),(739,'Neve','Walter','Z','29180','1994-04-19',60,1),(740,'Adele','Wade','Z','22840','1996-10-29',20,8),(741,'Evangeline','Le','Z','39442','1994-07-15',100,2),(742,'Clementine','Harrison','Z','77478','1995-02-02',81,9),(743,'Quynn','Grimes','Z','83715','1994-02-18',63,2),(744,'Georgia','Gilliam','Z','13220','1992-10-12',131,2),(745,'Rama','Fulton','Z','39077','1992-08-27',14,5),(746,'Alea','Cooper','Z','91005','1993-10-06',129,5),(747,'Marny','Vasquez','Z','36342','1996-03-20',55,9),(748,'Cailin','Carpenter','Z','81270','1995-09-27',130,10),(749,'Bree','Gomez','Z','20725','1993-10-14',45,6),(750,'Bianca','Conrad','Z','23023','1994-11-09',99,3),(751,'Jaime','Houston','Z','32532','1993-02-14',106,5),(752,'Jolie','Gardner','Z','84891','1992-07-08',98,7),(753,'Aretha','Schwartz','Z','49573','1992-06-16',69,8),(754,'Ursa','Dejesus','Z','29206','1996-12-19',114,6),(755,'Charlotte','Peters','Z','90271','1992-09-30',1,3),(756,'Justina','Warren','Z','88357','1992-03-01',7,1),(757,'Jocelyn','Greene','Z','58707','1996-09-29',47,8),(758,'Zena','Garrison','Z','60330','1993-06-29',19,5),(759,'Lareina','Nieves','Z','70630','1992-08-07',1,2),(760,'Jasmine','Wiggins','Z','39146','1992-02-12',113,1),(761,'Martena','Frost','Z','33846','1993-10-08',31,8),(762,'Melanie','Villarreal','Z','77179','1993-02-25',51,3),(763,'Aiko','Park','Z','28704','1992-10-12',32,8),(764,'Tatiana','Emerson','Z','44871','1994-01-26',28,1),(765,'Velma','Hoover','Z','27176','1995-07-03',125,5),(766,'Carissa','Kramer','Z','73334','1992-10-04',117,7),(767,'Yolanda','Arnold','Z','13270','1992-05-27',132,10),(768,'Nell','Gregory','Z','98391','1996-08-07',71,1),(769,'Winifred','Pittman','Z','78422','1995-12-14',36,2),(770,'September','Mcdowell','Z','78295','1991-07-12',24,3),(771,'Melodie','Marks','Z','25580','1990-12-15',40,3),(772,'Sage','Harris','Z','16789','1993-02-06',61,10),(773,'Jaime','Chen','Z','38382','1992-09-04',54,5),(774,'Jessamine','Stuart','Z','99368','1991-03-11',73,9),(775,'Odette','Weaver','Z','21426','1995-02-28',50,11),(776,'Jamalia','Ferrell','Z','50739','1993-03-29',64,2),(777,'Brynn','Barber','Z','20866','1995-09-03',111,4),(778,'Zoe','Chambers','Z','19772','1991-03-21',123,3),(779,'Stacy','Sampson','Z','98438','1997-02-12',109,1),(780,'Ayanna','Strong','Z','72397','1995-02-24',127,2),(781,'Karina','Long','Z','43620','1993-10-31',79,6),(782,'Liberty','Barr','Z','37384','1993-07-14',40,7),(783,'Sopoline','Stanley','Z','57741','1992-09-08',20,7),(784,'Deanna','Sharp','Z','75145','1993-03-11',91,8),(785,'Quon','Zamora','Z','73916','1993-02-24',50,4),(786,'Yolanda','Buck','Z','18663','1993-07-21',140,3),(787,'Lisandra','Berry','Z','43809','1990-12-19',45,5),(788,'Geraldine','Alexander','Z','18639','1992-08-27',76,4),(789,'Helen','Byrd','Z','99518','1995-11-27',123,3),(790,'Evangeline','Michael','Z','58468','1993-04-24',121,9),(791,'Lacey','Vasquez','Z','34636','1996-01-28',110,2),(792,'Desirae','Salazar','Z','91737','1991-09-11',79,6),(793,'Chastity','Frederick','Z','69771','1996-04-24',137,7),(794,'Petra','White','Z','68776','1997-03-14',4,9),(795,'Raya','Perez','Z','87504','1995-01-20',83,11),(796,'Chloe','Walls','Z','48153','1995-07-16',33,4),(797,'Brenda','Beasley','Z','11685','1991-02-10',91,10),(798,'Quon','Hopper','Z','59233','1993-02-14',28,10),(799,'Jorden','Carpenter','Z','54149','1997-05-11',1,4),(800,'Tallulah','Scott','Z','35967','1991-11-14',124,3),(801,'Kiayada','Huffman','Z','45110','1997-06-06',33,9),(802,'Yetta','Crawford','Z','11365','1996-04-06',141,8),(803,'Amber','Hull','Z','98418','1995-12-09',98,10),(804,'Indira','Bennett','Z','19641','1991-05-17',1,7),(805,'Naomi','Watkins','Z','24620','1994-03-29',102,3),(806,'Minerva','Hardin','Z','10980','1997-03-23',139,9),(807,'Petra','Gallegos','Z','65510','1991-09-11',111,6),(808,'Darryl','Glass','Z','12658','1997-06-27',91,9),(809,'Orla','Bell','Z','97178','1993-07-03',74,10),(810,'Britanni','Ball','Z','97088','1993-05-31',19,10),(811,'Violet','Miles','Z','79150','1993-03-28',109,9),(812,'Clare','Fitzpatrick','Z','50155','1992-12-22',96,2),(813,'Olivia','Burch','Z','59100','1996-12-25',29,4),(814,'Halee','Stout','Z','88051','1995-01-26',68,9),(815,'Carla','Graves','Z','65700','1993-09-30',62,4),(816,'Clio','Stanton','Z','49267','1992-05-04',33,10),(817,'Joan','Strickland','Z','88374','1995-07-18',70,9),(818,'Pascale','Zamora','Z','38218','1995-10-25',98,1),(819,'Hedwig','Bates','Z','14577','1996-11-11',24,11),(820,'Renee','Ball','Z','17468','1995-01-13',58,10),(821,'Faith','Avila','Z','75936','1995-07-23',61,3),(822,'Jaden','Browning','Z','77143','1997-02-19',26,6),(823,'Odessa','Bright','Z','25293','1994-09-18',128,1),(824,'Rhiannon','Kane','Z','84170','1992-05-03',17,8),(825,'Susan','Snider','Z','94021','1991-10-05',24,8),(826,'Virginia','Rollins','Z','31212','1992-11-23',124,6),(827,'Demetria','Giles','Z','95442','1997-03-12',55,6),(828,'Kaitlin','Rowe','Z','10285','1994-03-17',13,10),(829,'Gemma','Greer','Z','56225','1993-02-16',90,1),(830,'Tatyana','Walter','Z','32946','1994-12-16',34,5),(831,'Summer','Cross','Z','88636','1992-07-09',10,11),(832,'Miranda','Rocha','Z','80628','1994-10-30',123,4),(833,'Yeo','Booker','Z','64319','1997-04-08',91,3),(834,'Noelle','Finley','Z','73980','1993-08-08',141,5),(835,'Darrel','Perry','Z','35641','1996-10-08',125,4),(836,'Kylee','Beasley','Z','90656','1996-02-11',2,7),(837,'Veronica','Beach','Z','21528','1990-12-31',64,8),(838,'Galena','Justice','Z','35704','1997-09-01',64,5),(839,'Mariko','Charles','Z','49212','1990-12-31',129,4),(840,'Judith','Burnett','Z','38022','1994-10-19',48,2),(841,'Illana','Perry','Z','52276','1996-03-21',67,5),(842,'Georgia','Wade','Z','21792','1993-11-15',12,1),(843,'Martena','Cantu','Z','20555','1995-07-26',140,3),(844,'Amery','Mills','M','57500','1994-06-22',56,9),(845,'Leroy','Alvarado','M','67723','1992-04-04',91,4),(846,'Steel','Ferrell','M','90804','1992-01-05',101,8),(847,'Hilel','Everett','M','60076','1992-05-04',126,10),(848,'Ethan','Joyner','M','32804','1997-10-19',65,1),(849,'Hamilton','Evans','M','34494','1996-02-28',12,4),(850,'Ferris','Tyson','M','97373','1996-03-08',92,3),(851,'Reece','Logan','M','40722','1995-10-11',10,10),(852,'Kasimir','Bryant','M','78457','1996-01-22',30,6),(853,'Kevin','Parrish','M','11844','1993-01-10',118,1),(854,'Paki','Good','M','60171','1992-05-11',63,8),(855,'Camden','Carrillo','M','20789','1997-10-04',140,8),(856,'Michael','Greene','M','90911','1997-10-14',38,11),(857,'William','Hale','M','17986','1990-10-30',80,9),(858,'Palmer','Oneil','M','51069','1993-06-11',7,10),(859,'Lee','Raymond','M','86414','1997-02-17',38,6),(860,'Gannon','Strong','M','17617','1995-10-08',97,2),(861,'Quinlan','Estrada','M','31096','1993-03-11',98,9),(862,'Cruz','Carter','M','46507','1992-01-28',63,6),(863,'Henry','Rich','M','83315','1995-07-20',30,3),(864,'Channing','Stein','M','53238','1994-09-02',141,8),(865,'Chaim','Sherman','M','64901','1996-03-09',54,3),(866,'Axel','Cline','M','55456','1991-08-09',82,4),(867,'Zephania','Mckinney','M','48649','1992-07-12',47,11),(868,'Berk','Pierce','M','34705','1995-05-10',90,7),(869,'Avram','Mays','M','82525','1993-11-17',86,6),(870,'Raja','Gonzalez','M','48870','1995-05-29',98,8),(871,'Simon','Parker','M','71988','1993-04-15',69,3),(872,'Eaton','Buckner','M','26268','1991-02-01',29,9),(873,'Victor','Baxter','M','96917','1996-05-21',44,4),(874,'Scott','Knight','M','81342','1996-06-23',38,5),(875,'Nero','Schneider','M','44557','1993-04-17',86,2),(876,'Herrod','Kinney','M','96818','1995-05-13',58,8),(877,'Isaac','Cline','M','77977','1991-01-13',51,2),(878,'Henry','Hines','M','36069','1995-02-14',124,1),(879,'Todd','Stone','M','14138','1996-07-02',87,7),(880,'Adrian','Franco','M','80167','1995-10-19',24,6),(881,'Hayden','Burgess','M','69401','1997-10-12',15,6),(882,'Ezekiel','Ferguson','M','71693','1994-03-05',22,1),(883,'Gabriel','Houston','M','64208','1997-06-25',59,8),(884,'Warren','Valencia','M','69942','1995-03-28',103,3),(885,'Herman','Delaney','M','37412','1994-02-10',105,5),(886,'Allen','Lester','M','96262','1991-03-17',84,8),(887,'Orson','Cotton','M','52409','1992-04-22',31,9),(888,'Brenden','Barnes','M','87524','1995-07-02',39,10),(889,'Reed','Carter','M','51227','1992-08-08',67,9),(890,'Tyler','Sanford','M','95055','1993-09-24',120,6),(891,'Graiden','Farmer','M','73749','1994-09-22',95,11),(892,'Ciaran','Daniels','M','33685','1994-07-16',28,4),(893,'Clarke','Lancaster','M','41340','1995-05-08',37,8),(894,'Len','Browning','M','94973','1995-03-18',47,3),(895,'Harper','Barnes','M','93000','1993-02-05',91,5),(896,'Keefe','Mooney','M','75866','1993-12-28',59,6),(897,'Hilel','Joseph','M','15803','1992-12-03',121,8),(898,'Garrison','Pittman','M','81228','1995-05-26',49,9),(899,'Amery','Hansen','M','30325','1995-07-30',23,5),(900,'Arthur','Ortega','M','38346','1991-10-16',102,5),(901,'Damon','Snow','M','18138','1994-01-11',61,5),(902,'Basil','Mcpherson','M','40242','1992-09-02',11,6),(903,'Wylie','Petersen','M','55928','1997-07-24',104,8),(904,'Cody','Harrison','M','28580','1994-10-03',90,6),(905,'Troy','Crane','M','63067','1993-02-16',114,3),(906,'Thor','Harrington','M','56715','1994-10-03',19,3),(907,'Nathan','Good','M','98190','1992-12-05',80,4),(908,'Silas','Buck','M','87793','1997-08-30',53,10),(909,'Chandler','Fowler','M','48956','1992-10-24',62,3),(910,'Nissim','Glover','M','75417','1995-09-14',6,5),(911,'Hedley','Cobb','M','55359','1996-11-20',90,6),(912,'Zahir','Smith','M','91007','1994-11-16',32,2),(913,'Abel','Silva','M','86111','1997-02-04',129,5),(914,'Reece','Hood','M','88785','1995-09-18',130,5),(915,'Burton','Dickerson','M','13270','1994-08-21',33,2),(916,'Herman','Mullins','M','95688','1992-09-27',32,7),(917,'Marvin','Flynn','M','94280','1996-03-31',112,3),(918,'Jin','Mcintyre','M','51042','1996-11-17',132,7),(919,'Christopher','Daniels','M','81695','1997-01-12',32,4),(920,'Abbot','Herring','M','93759','1993-06-10',39,11),(921,'Kennan','Downs','M','11917','1996-02-29',5,7),(922,'Carl','Delacruz','M','17880','1992-09-14',53,2),(923,'Brett','Browning','M','57064','1991-06-30',24,7),(924,'Gil','Terrell','M','95708','1994-07-04',90,5),(925,'Jack','Brock','M','63282','1991-08-04',37,9),(926,'Yoshio','Sosa','M','91085','1996-10-28',57,3),(927,'Jarrod','Hobbs','M','12752','1995-04-19',130,1),(928,'Oleg','Herrera','M','28381','1996-04-01',61,9),(929,'Duncan','Humphrey','M','94820','1991-04-21',133,5),(930,'Caleb','Foreman','M','98455','1994-02-18',85,7),(931,'Aquila','Bush','M','84052','1995-01-17',15,10),(932,'Allen','Mckay','M','22966','1993-01-07',67,6),(933,'Hall','Bruce','M','71516','1995-01-23',28,5),(934,'Henry','Sanchez','M','46293','1994-07-01',60,9),(935,'Brandon','Daniel','M','83614','1992-10-17',100,10),(936,'Mark','Goff','M','76434','1996-05-09',49,9),(937,'Dennis','Berry','M','93945','1997-10-03',28,2),(938,'Gavin','Daniels','M','41045','1995-10-19',9,9),(939,'Mason','Sims','M','61519','1995-12-13',112,3),(940,'Justin','Black','M','85169','1995-06-21',134,6),(941,'Dale','Harrison','M','28187','1996-12-07',31,1),(942,'Harper','Lopez','M','84197','1996-02-28',86,1),(943,'Quinn','Walton','M','33755','1991-07-19',47,3),(944,'Boris','Ford','M','74339','1996-08-16',100,9),(945,'Carlos','Ortega','M','23506','1992-12-08',3,3),(946,'Nasim','Pacheco','M','12151','1997-10-19',26,1),(947,'Brian','Good','M','41992','1995-02-23',74,9),(948,'Ciaran','Richards','M','50409','1994-12-14',130,10),(949,'Adam','Case','M','41553','1995-11-28',47,3),(950,'Armand','Wolfe','M','70295','1996-04-01',8,5),(951,'Jerome','Salazar','M','16526','1995-11-01',130,6),(952,'Clinton','Koch','M','30298','1992-10-05',90,1),(953,'Brian','Obrien','M','36419','1996-12-31',63,3),(954,'Wade','Valdez','M','74360','1991-05-03',27,9),(955,'Drake','Gilliam','M','74158','1995-02-01',122,10),(956,'Channing','Jensen','M','72159','1992-02-26',35,5),(957,'Upton','Luna','M','93640','1996-10-27',46,11),(958,'Francis','Hawkins','M','66120','1994-10-03',93,6),(959,'Ray','Kent','M','44893','1996-07-02',65,5),(960,'Vladimir','Wilder','M','89309','1997-05-16',85,7),(961,'Robert','Clay','M','81576','1996-05-25',34,10),(962,'Edan','Hicks','M','10679','1997-01-02',31,11),(963,'Grant','Manning','M','31741','1993-11-07',91,3),(964,'Plato','Strickland','M','35910','1994-05-12',134,4),(965,'Hector','Daugherty','M','27846','1993-01-26',39,10),(966,'Merritt','Mills','M','67006','1997-10-09',4,3),(967,'Elijah','Gaines','M','91614','1995-09-03',132,3),(968,'Wallace','Knight','M','98181','1991-05-25',112,5),(969,'Palmer','Dalton','M','78995','1991-09-16',112,10),(970,'Uriel','Phelps','M','74425','1992-08-06',24,7),(971,'Xavier','Woodward','M','75254','1996-08-25',41,7),(972,'Kermit','Rollins','M','24744','1992-11-23',57,5),(973,'Edan','Leblanc','M','21622','1997-03-31',109,9),(974,'Andrew','Mcbride','M','93486','1993-01-05',76,3),(975,'Tyler','Solis','M','32166','1994-09-06',129,9),(976,'Zeph','Zimmerman','M','68559','1993-02-27',39,1),(977,'Wing','Blanchard','M','18662','1995-11-06',27,6),(978,'Malcolm','Wheeler','M','29963','1992-01-05',34,10),(979,'Jin','Miranda','M','88180','1996-11-03',14,9),(980,'Baxter','Morton','M','62979','1991-12-22',66,10),(981,'Wayne','Shaffer','M','11437','1995-05-12',122,5),(982,'Branden','Barker','M','95930','1993-05-26',33,10),(983,'Harper','Fischer','M','53026','1991-08-10',29,4),(984,'Bevis','Stanton','M','80196','1995-10-31',81,6),(985,'Carlos','Lloyd','M','87902','1991-02-22',113,10),(986,'Garrett','Mathews','M','32422','1993-01-27',35,6),(987,'Mason','Travis','M','14786','1996-09-30',58,2),(988,'Travis','Hardy','M','40619','1995-11-02',137,10),(989,'Benedict','Schwartz','M','76930','1994-04-01',40,8),(990,'Jasper','Glenn','M','86421','1997-06-08',70,5),(991,'Noble','Andrews','M','47944','1997-01-12',36,7),(992,'Merrill','Obrien','M','14846','1996-12-17',111,6),(993,'Lee','Beach','M','69555','1996-08-24',53,2),(994,'Axel','Heath','M','28476','1993-04-07',40,5),(995,'Moses','Vinson','M','14155','1993-10-07',84,10),(996,'Colton','Frost','M','46154','1991-05-24',128,4),(997,'Clarke','Stephenson','M','90757','1994-01-31',52,3),(998,'Duncan','Herrera','M','51270','1990-11-10',87,9),(999,'Brennan','Bailey','M','54951','1992-11-02',127,11),(1000,'Kareem','Harmon','M','50522','1994-03-04',124,2),(1001,'Ulysses','Roberson','M','79885','1995-10-16',68,11),(1002,'Hector','Hernandez','M','91424','1997-05-03',127,2),(1003,'Hu','Massey','M','35074','1990-12-18',64,6),(1004,'Wade','Garner','M','68308','1995-09-09',38,4),(1005,'Oscar','Buckner','M','87040','1994-03-13',126,7),(1006,'Grady','Hebert','M','62404','1992-11-17',48,10),(1007,'Clarke','Estrada','M','58729','1996-09-07',141,4),(1008,'Forrest','Ashley','M','76155','1995-06-25',81,5),(1009,'Dolan','Villarreal','M','93710','1996-08-31',116,6),(1010,'Noble','Glenn','M','13184','1993-06-16',25,9),(1011,'Raja','Alford','M','70250','1992-08-27',79,4),(1012,'Addison','Knight','M','99469','1997-10-20',48,1),(1013,'Finn','Love','M','31369','1991-12-15',20,8),(1014,'Graiden','Quinn','M','50195','1990-10-24',62,9),(1015,'Jeremy','Campbell','M','81632','1996-06-04',138,3),(1016,'Jesse','Stanton','M','66864','1992-06-15',54,1),(1017,'Eaton','Brown','M','59793','1991-08-13',128,2),(1018,'Benedict','Zimmerman','M','64687','1991-07-27',111,6),(1019,'Judah','Snider','M','27776','1992-06-16',8,9),(1020,'Bruno','Glenn','M','11325','1994-09-27',31,1),(1021,'Fitzgerald','Rodriguez','M','79961','1997-01-16',80,9),(1022,'Prescott','Green','M','69408','1995-01-22',89,11),(1023,'Wesley','Morrow','M','86603','1992-10-01',50,4),(1024,'James','Kaufman','M','76076','1997-02-27',99,8),(1025,'Bevis','Smith','M','51906','1992-07-09',9,10),(1026,'Tiger','Mooney','M','91513','1994-06-16',35,2),(1027,'Gannon','Chang','M','75398','1991-03-26',137,9),(1028,'Nissim','Valentine','M','39204','1994-05-14',83,11),(1029,'Lamar','Brennan','M','50991','1993-01-22',60,11),(1030,'Travis','Horne','M','12557','1992-05-18',37,3),(1031,'Nathaniel','Guerra','M','13034','1996-01-16',89,6),(1032,'Grady','Watkins','M','60142','1993-12-01',97,5),(1033,'Uriah','Collier','M','81034','1997-05-30',114,9),(1034,'Ulric','Cooley','M','37049','1996-04-19',12,10),(1035,'Wing','Swanson','M','96165','1992-10-05',3,3),(1036,'Rahim','Frost','M','39699','1997-04-10',110,3),(1037,'Kibo','Conrad','M','14029','1996-06-05',27,8),(1038,'Maxwell','Dean','M','18344','1991-05-04',53,3),(1039,'Colby','Alvarado','M','55057','1994-12-16',79,6),(1040,'Branden','Flynn','M','99476','1996-02-28',126,7),(1041,'Kaseem','Melton','M','62756','1991-11-13',55,7),(1042,'Allistair','Santos','M','81209','1994-04-22',47,1),(1043,'Emery','Jimenez','M','17296','1994-04-13',14,3),(1044,'Simon','Chase','M','78195','1996-12-25',112,10),(1045,'Elijah','Strong','M','78003','1995-12-31',117,6),(1046,'Cadman','Gillespie','M','49809','1996-05-10',134,11),(1047,'Kadeem','Wright','M','46910','1996-02-11',53,11),(1048,'Anthony','Ball','M','23325','1996-01-12',55,5),(1049,'Tad','Hyde','M','79257','1993-10-08',63,9),(1050,'Dolan','Wagner','M','32642','1993-08-16',133,1),(1051,'Christopher','Lambert','M','99546','1996-06-28',9,10),(1052,'Fritz','Patel','M','22232','1995-01-25',87,6),(1053,'Tyler','Meyer','M','87587','1995-06-05',129,10),(1054,'Gabriel','Henson','M','62512','1995-10-16',22,8),(1055,'Ulric','Burgess','M','57169','1995-04-16',59,8),(1056,'Cairo','Fitzgerald','M','50808','1991-07-18',21,11),(1057,'Wang','Sherman','M','86609','1993-10-22',60,8),(1058,'Akeem','Monroe','M','87868','1996-08-22',93,10),(1059,'Chase','Griffin','M','34402','1991-06-14',90,1),(1060,'Uriah','Patel','M','37168','1993-05-03',104,2),(1061,'Cullen','James','M','37426','1993-07-28',19,8),(1062,'Neil','Edwards','M','54610','1994-10-13',65,7),(1063,'Donovan','Jordan','M','10288','1996-06-25',92,5),(1064,'Rafael','Christensen','M','54514','1995-09-07',55,10),(1065,'Edward','Bernard','M','83233','1997-03-28',35,7),(1066,'Daniel','Gordon','M','41678','1996-07-04',123,3),(1067,'Hayes','Potts','M','55012','1993-05-20',112,3),(1068,'Brian','Wiggins','M','16957','1993-06-10',6,2),(1069,'Price','Forbes','M','63468','1992-06-03',115,11),(1070,'Jamal','Greene','M','25254','1994-02-10',16,8),(1071,'Gavin','Hull','M','30798','1996-05-21',71,8),(1072,'Timon','Kramer','M','82044','1991-07-01',66,5),(1073,'Oliver','Dennis','M','67707','1993-07-23',70,5),(1074,'Giacomo','Oliver','M','54785','1993-04-29',88,3),(1075,'Conan','Butler','M','68854','1997-08-17',37,10),(1076,'Dominic','Jefferson','M','56013','1992-08-01',106,10),(1077,'Samson','Yates','M','66636','1995-09-17',129,5),(1078,'Kareem','Carlson','M','26548','1997-01-21',72,8),(1079,'Mohammad','Cantu','M','89004','1993-03-13',14,11),(1080,'Rajah','Nelson','M','43826','1994-06-11',121,1),(1081,'Thor','Barron','M','66722','1994-07-04',128,6),(1082,'Kenneth','Cabrera','M','80984','1997-03-02',85,5),(1083,'Alden','Stone','M','84380','1993-10-23',16,10),(1084,'Carlos','Parker','M','54981','1992-05-10',126,2),(1085,'Ezekiel','Ramos','M','82891','1990-12-28',126,11),(1086,'Neville','Roach','M','97389','1993-02-27',50,2),(1087,'August','Ratliff','M','86677','1991-07-07',19,11),(1088,'Forrest','Lawrence','M','66364','1993-10-05',64,4),(1089,'Holmes','Sears','M','57140','1993-05-21',44,8),(1090,'Oleg','Sims','M','66498','1994-12-12',67,10),(1091,'Rajah','Atkins','M','21840','1995-05-15',26,4),(1092,'Fitzgerald','Callahan','M','51745','1991-09-09',25,3),(1093,'Perry','Rose','M','18394','1996-02-29',126,10),(1094,'Abraham','Pratt','M','79201','1991-09-29',100,10),(1095,'Carlos','Wright','M','74004','1993-05-31',115,2),(1096,'Gage','Hopkins','M','58425','1996-08-21',5,9),(1097,'Brian','Jackson','M','84611','1993-06-24',129,6),(1098,'Xander','York','M','26488','1997-04-01',51,3),(1099,'Palmer','Brennan','M','48454','1993-02-21',133,2),(1100,'Isaiah','Santana','M','10481','1997-02-07',33,7),(1101,'Brandon','Mcknight','M','80880','1993-07-07',93,10),(1102,'Ira','Hickman','M','60138','1990-11-07',32,11),(1103,'Fletcher','Boyer','M','77491','1992-12-20',105,9),(1104,'Gareth','Craig','M','48711','1995-08-16',84,8),(1105,'Lewis','Griffith','M','60432','1995-11-19',123,3),(1106,'Asher','Spears','M','54419','1994-08-21',121,3),(1107,'Drew','Ray','M','64686','1996-08-01',90,10),(1108,'Daniel','Clay','M','16441','1993-01-27',98,2),(1109,'Ethan','Espinoza','M','45953','1995-07-07',49,6),(1110,'Michael','Baird','M','50611','1997-02-23',52,8),(1111,'Phillip','Weiss','M','53768','1996-05-03',116,3),(1112,'Peter','Lindsay','M','24347','1992-03-05',65,3),(1113,'Cedric','Charles','M','47683','1991-07-23',37,5),(1114,'Garrett','Franks','M','96349','1993-03-06',125,9),(1115,'Drake','Jacobs','M','21275','1991-04-17',113,5),(1116,'Raphael','Willis','M','92191','1996-08-21',76,10),(1117,'Ezekiel','Mullins','M','93749','1991-09-22',109,10),(1118,'Brent','Cherry','M','12948','1993-07-14',6,3),(1119,'Martin','Mann','M','44442','1992-12-06',4,2),(1120,'Patrick','Rose','M','12193','1994-11-03',36,8),(1121,'Colton','Richardson','M','11420','1995-07-30',10,11),(1122,'Axel','Ball','M','27655','1992-01-27',102,10),(1123,'Brian','Fowler','M','58495','1992-11-26',22,4),(1124,'Victor','Rutledge','M','58434','1996-05-08',84,7),(1125,'Oliver','Grant','M','24233','1991-07-23',17,4),(1126,'Slade','Thompson','M','87521','1994-06-14',29,10),(1127,'Elliott','Dixon','M','43674','1993-05-02',50,4),(1128,'Ivan','Herman','M','69850','1994-06-25',45,11),(1129,'Mufutau','Coffey','M','86757','1994-02-08',101,11),(1130,'Emerson','Rodriquez','M','55099','1993-01-11',67,8),(1131,'Colby','Greer','M','13424','1993-04-16',24,6),(1132,'Joshua','Hardy','M','40480','1995-12-10',44,8),(1133,'Darius','Mueller','M','57554','1997-04-13',78,3),(1134,'Kibo','Petty','M','29199','1993-06-14',134,9),(1135,'Wyatt','Olson','M','21730','1996-06-29',93,1),(1136,'Solomon','Randolph','M','44341','1993-07-04',58,9),(1137,'Lars','Lang','M','26078','1995-01-09',118,10),(1138,'Abel','Pace','M','22314','1994-08-07',72,8),(1139,'Leroy','Terrell','M','89646','1995-08-06',52,9),(1140,'Kareem','Hebert','M','21108','1996-06-08',101,1),(1141,'Paul','Wise','M','38052','1992-08-28',42,11),(1142,'Otto','Barrera','M','36532','1993-07-19',99,9),(1143,'Thomas','Casey','M','82800','1994-06-24',133,3),(1144,'Abbot','Wilkins','M','47295','1993-08-16',8,11),(1145,'Dexter','Dunlap','M','71433','1997-09-12',120,5),(1146,'Kasimir','Merrill','M','52420','1993-12-01',13,2),(1147,'Ferdinand','Love','M','55848','1996-11-22',12,6),(1148,'Hayden','Schultz','M','24393','1995-08-05',87,1),(1149,'Tate','Mcclain','M','82980','1991-09-04',73,5),(1150,'Preston','Cohen','M','39744','1996-09-24',81,9),(1151,'Brendan','Myers','M','28319','1993-09-20',19,2),(1152,'Prescott','Tyler','M','29071','1995-10-05',128,6),(1153,'Akeem','Mckay','M','13093','1997-10-08',74,9),(1154,'Prescott','Meyer','M','13389','1995-09-21',1,11),(1155,'Colorado','Kaufman','M','75395','1991-10-08',4,11),(1156,'Lev','Chase','M','64111','1994-02-28',120,7),(1157,'Fritz','Fuentes','M','13250','1994-04-02',19,11),(1158,'Carl','Palmer','M','39427','1993-11-26',12,4),(1159,'Richard','Kelly','M','90539','1993-12-12',68,1),(1160,'Omar','Buchanan','M','19916','1995-10-04',76,3),(1161,'Laith','Rutledge','M','54811','1995-03-04',116,9),(1162,'Amal','Brock','M','58067','1992-09-28',122,4),(1163,'Deacon','Shannon','M','45371','1996-05-20',4,4),(1164,'Kane','Castillo','M','73832','1992-11-16',34,5),(1165,'Merritt','Schultz','M','49175','1995-01-25',79,5),(1166,'Graiden','Farrell','M','23250','1993-10-17',140,11),(1167,'Channing','Sears','M','27403','1995-07-03',70,3),(1168,'Gil','Tanner','M','45231','1994-08-21',65,7),(1169,'Philip','Lucas','M','26569','1991-11-02',1,11),(1170,'Ferdinand','Golden','M','49078','1996-04-01',114,11),(1171,'Alden','Garcia','M','51618','1990-12-20',14,7),(1172,'Aristotle','Poole','M','31831','1996-01-28',43,5),(1173,'Jarrod','Holder','M','37990','1992-10-16',116,7),(1174,'Dorian','Bright','M','94232','1993-02-01',97,3),(1175,'Quentin','Carney','M','24503','1995-08-14',10,11),(1176,'Denton','Foster','M','68270','1991-10-19',133,2),(1177,'Donovan','Odonnell','M','23353','1996-01-24',133,1),(1178,'Arsenio','Patel','M','52755','1990-12-02',15,5),(1179,'Griffin','Hinton','M','76267','1994-01-31',51,1),(1180,'Andrew','Blanchard','M','39847','1996-04-06',109,1),(1181,'Clayton','Mejia','M','16293','1997-04-15',37,10),(1182,'Boris','Carpenter','M','22973','1994-02-01',27,5),(1183,'Emery','Bird','M','87571','1996-09-05',37,10),(1184,'Steel','Hammond','M','68965','1997-06-30',116,8),(1185,'Justin','Haney','M','51558','1992-12-06',104,6),(1186,'Uriah','Odom','M','74637','1995-07-29',20,11),(1187,'Ivor','Baxter','M','78684','1997-01-10',53,3),(1188,'Mason','Bray','M','38330','1996-06-25',121,10),(1189,'Kennan','Houston','M','93017','1997-10-22',32,1),(1190,'Calvin','Oliver','M','60622','1991-10-23',46,10),(1191,'Yuli','Lara','M','64697','1991-06-23',9,1),(1192,'Griffith','Mckay','M','43275','1993-09-22',51,3),(1193,'Chandler','Sherman','M','45983','1994-04-04',33,10),(1194,'Salvador','Barnes','M','77595','1991-10-19',45,1),(1195,'Anthony','Sanders','M','45302','1997-04-12',127,2),(1196,'Bevis','Atkinson','M','86493','1992-01-31',9,5),(1197,'Dante','Burris','M','23522','1993-06-22',114,2),(1198,'Drew','Chase','M','54489','1996-10-25',119,2),(1199,'Vaughan','Gaines','M','15464','1996-09-01',98,6),(1200,'Chandler','Valdez','M','87357','1991-09-25',1,7),(1201,'Brenden','Doyle','M','88851','1995-04-17',65,4),(1202,'Dolan','Long','M','18663','1996-04-03',39,7),(1203,'Jermaine','Battle','M','55521','1993-02-24',46,1),(1204,'Clark','Ross','M','86217','1994-03-17',27,9),(1205,'Julian','Hood','M','61705','1993-08-14',37,3),(1206,'Brennan','Leonard','M','91424','1993-08-01',93,7),(1207,'Philip','Benson','M','91341','1991-09-24',38,1),(1208,'Seth','Baldwin','M','84046','1993-08-07',116,1),(1209,'Kermit','Rosales','M','15797','1994-03-22',99,8),(1210,'Stone','Maddox','M','78676','1992-07-06',129,9),(1211,'Jack','Melendez','M','86105','1993-03-17',117,2),(1212,'Joel','Guzman','M','77293','1994-06-22',107,5),(1213,'Mark','Scott','M','80674','1995-03-24',101,10),(1214,'Steven','Mosley','M','59811','1990-12-14',5,2),(1215,'Dieter','Wilson','M','38144','1992-09-21',57,2),(1216,'Alfonso','Lester','M','70106','1996-10-03',32,1),(1217,'Reece','Thompson','M','35492','1997-02-10',110,6),(1218,'Bruno','Booker','M','88828','1996-02-02',56,6),(1219,'Finn','Frederick','M','17443','1995-10-25',74,8),(1220,'Buckminster','Henson','M','70875','1994-04-24',102,10),(1221,'Abbot','Brock','M','82807','1996-11-11',99,11),(1222,'Blaze','Ashley','M','30589','1995-03-20',115,7),(1223,'Kennedy','Mccarty','M','27915','1991-09-06',14,4),(1224,'Rooney','Flowers','M','33779','1991-09-01',75,11),(1225,'Rooney','King','M','85635','1996-07-20',118,4),(1226,'Graham','Carpenter','M','93057','1994-12-28',4,1),(1227,'Patrick','Buckner','M','94056','1992-07-10',105,9),(1228,'Dillon','Burns','M','43589','1997-01-12',118,1),(1229,'Aristotle','Doyle','M','10858','1993-04-17',56,11),(1230,'Noble','Richardson','M','15738','1992-10-02',120,9),(1231,'Otto','Berg','M','68398','1997-04-22',127,1),(1232,'Dennis','Roach','M','14653','1997-01-07',97,3),(1233,'Steel','Logan','M','90098','1992-08-25',64,6),(1234,'Camden','Hyde','M','38658','1994-04-23',80,1),(1235,'Carl','Garner','M','48020','1996-12-17',85,3),(1236,'Kenneth','Tyson','M','19645','1992-01-23',20,7),(1237,'Christopher','Benjamin','M','94058','1997-01-11',93,8),(1238,'Jeremy','Cole','M','63067','1994-04-22',57,1),(1239,'Linus','Cohen','M','73267','1994-03-07',18,10),(1240,'Kenyon','Gaines','M','95561','1996-04-21',24,5),(1241,'Ashton','Holman','M','77835','1991-02-21',77,7),(1242,'Kasper','Levy','M','44551','1992-09-27',117,1),(1243,'Zachary','Gordon','M','27120','1992-09-21',88,8),(1244,'Hamish','Nolan','M','98136','1996-06-05',106,4),(1245,'Jacob','Clements','M','54738','1995-08-07',25,4),(1246,'Harding','Klein','M','87358','1993-08-18',24,6),(1247,'Chaney','Mendez','M','34833','1996-02-27',8,10),(1248,'Kenneth','Hooper','M','19280','1995-09-20',53,8),(1249,'Beck','Tate','M','25656','1992-04-29',126,6),(1250,'Caesar','Faulkner','M','57905','1996-01-02',57,11),(1251,'Dale','Rollins','M','61687','1997-06-20',37,11),(1252,'Leo','Burch','M','14369','1997-10-04',99,1),(1253,'Mufutau','Mcdonald','M','31928','1991-05-18',32,6),(1254,'Kasimir','Padilla','M','52929','1991-03-05',82,10),(1255,'Logan','England','M','51822','1993-10-15',62,1),(1256,'Adam','Robinson','M','44314','1997-07-14',137,9),(1257,'Yardley','Cooley','M','87992','1992-12-20',29,4),(1258,'Ferdinand','Levine','M','81555','1993-05-03',62,7),(1259,'Kato','Wiley','M','61005','1992-10-18',51,3),(1260,'Amir','Norton','M','10223','1991-12-23',81,6),(1261,'Denton','Bullock','M','84273','1992-01-06',46,4),(1262,'Brady','Newman','M','55901','1995-05-14',67,6),(1263,'Calvin','Watkins','M','97579','1991-08-09',136,6),(1264,'Amery','Spears','M','26572','1994-01-28',46,6),(1265,'Hunter','Ross','M','46315','1992-02-07',52,9),(1266,'Vladimir','Owen','M','67601','1995-12-31',7,2),(1267,'Philip','Tate','M','82231','1995-07-24',75,10),(1268,'Abdul','Gaines','M','99351','1992-07-08',48,1),(1269,'Jerome','Kane','M','25289','1994-06-18',75,10),(1270,'Cyrus','Robinson','M','88435','1995-11-30',11,8),(1271,'Amery','Garrison','M','41093','1995-09-07',81,7),(1272,'Kasimir','Turner','M','12323','1995-10-22',113,3),(1273,'Ulysses','Gonzalez','M','82377','1995-07-02',130,6),(1274,'Kelly','Mcclure','M','20734','1996-11-20',28,9),(1275,'Troy','Daugherty','M','59248','1995-12-21',134,1),(1276,'Zeus','Klein','M','79884','1991-03-11',46,6),(1277,'Richard','Hooper','M','77341','1995-12-04',12,5),(1278,'Lucian','Espinoza','M','72071','1993-09-24',32,6),(1279,'Cullen','Gill','M','83468','1993-02-19',95,3),(1280,'Raja','Ryan','M','87908','1991-01-16',116,11),(1281,'Jamal','Marks','M','60241','1996-05-15',58,6),(1282,'Lamar','Moran','M','15114','1991-09-15',1,7),(1283,'Norman','Owens','M','29017','1996-04-02',96,1),(1284,'Bernard','Kane','M','50679','1992-05-22',126,2),(1285,'Alfonso','Hansen','M','17492','1992-08-10',42,5),(1286,'Ciaran','Perez','M','26185','1993-12-14',116,11),(1287,'Hector','Clayton','M','98732','1997-02-04',47,8),(1288,'Abdul','York','M','89677','1991-07-23',77,6),(1289,'Kane','Houston','M','69600','1992-10-24',128,6),(1290,'Jelani','Horton','M','52138','1991-11-30',132,10),(1291,'Damon','Ochoa','M','52677','1997-08-19',50,3),(1292,'Acton','Wallace','M','37217','1995-09-18',33,9),(1293,'Hakeem','Humphrey','M','81693','1996-07-14',44,3),(1294,'Elijah','Norman','M','46522','1992-09-30',31,9),(1295,'Ronan','Crane','M','72648','1994-07-13',101,4),(1296,'Zahir','Pacheco','M','98870','1995-10-12',136,2),(1297,'Linus','Dunn','M','55219','1995-09-17',27,7),(1298,'Ryder','Rogers','M','79428','1991-07-08',105,8),(1299,'Murphy','Serrano','M','43628','1992-12-17',33,3),(1300,'Armando','Sullivan','M','15062','1996-07-03',21,3),(1301,'Quentin','Lamb','M','54339','1996-04-28',97,9),(1302,'Driscoll','Holland','M','22840','1997-02-09',40,1),(1303,'Andrew','Craft','M','84959','1996-08-22',83,11),(1304,'Plato','Burnett','M','94638','1995-01-16',95,6),(1305,'Cairo','Hicks','M','39628','1992-02-19',138,6),(1306,'Yardley','Boone','M','24647','1994-03-15',63,10),(1307,'Driscoll','Wyatt','M','32299','1992-08-29',136,7),(1308,'Henry','Blackwell','M','64841','1994-11-29',82,8),(1309,'Noble','Odom','M','41479','1996-02-22',94,8),(1310,'Boris','Rosa','M','65764','1991-07-21',38,5),(1311,'Travis','Ross','M','90877','1993-10-03',60,6),(1312,'Wallace','Baird','M','52058','1995-08-22',134,9),(1313,'Denton','Schroeder','M','95507','1991-01-03',124,1),(1314,'Brian','Nolan','M','63392','1993-04-21',89,3),(1315,'Gareth','Nixon','M','92573','1992-08-10',7,6),(1316,'Benedict','Taylor','M','22893','1993-01-24',38,2),(1317,'Fulton','Gibbs','M','21586','1991-01-26',86,6),(1318,'Benjamin','Myers','M','62941','1992-03-22',79,10),(1319,'Paki','Hickman','M','94142','1993-04-26',110,11),(1320,'Steven','Mcdowell','M','83421','1991-08-02',6,2),(1321,'Kamal','Benson','M','94346','1997-01-17',3,6),(1322,'Dolan','May','M','17220','1995-08-08',79,2),(1323,'Ciaran','Mack','M','38902','1994-03-13',3,3),(1324,'Geoffrey','Meyer','M','48352','1992-12-01',140,7),(1325,'Hayes','Henry','M','59931','1990-10-21',11,7),(1326,'Francis','Adams','M','10223','1996-05-29',134,4),(1327,'Kasimir','Hicks','M','29311','1994-10-31',136,10),(1328,'Ulric','Raymond','M','56798','1991-05-01',35,10),(1329,'Kamal','Durham','M','96983','1994-10-16',72,11),(1330,'Jared','Stuart','M','74022','1997-01-06',133,5),(1331,'Neil','William','M','75065','1992-11-16',121,9),(1332,'Edan','Howe','M','19628','1991-06-29',13,11),(1333,'Geoffrey','Elliott','M','11083','1996-05-30',51,2),(1334,'Elton','Mccarthy','M','95291','1996-05-11',94,10),(1335,'Eagan','Downs','M','13982','1996-10-18',76,10),(1336,'Wing','Elliott','M','88364','1994-11-30',14,11),(1337,'Malik','Hamilton','M','23312','1991-02-08',33,6),(1338,'Lucius','Giles','M','77441','1992-04-19',93,5),(1339,'Julian','Barrett','M','32938','1992-10-22',92,10),(1340,'Christopher','Welch','M','98334','1995-01-24',79,4),(1341,'Merritt','Browning','M','34944','1994-07-24',6,1),(1342,'Oliver','Gaines','M','85613','1996-08-25',57,6),(1343,'Nathaniel','Burch','M','83105','1995-10-26',22,3),(1344,'Seth','Cobb','M','93076','1991-08-06',6,6),(1345,'Ethan','Mayo','M','50404','1991-08-09',127,11),(1346,'Garrison','Mack','M','35409','1994-11-18',110,5),(1347,'Ferdinand','Strong','M','13875','1995-04-09',19,4),(1348,'Alexander','Rutledge','M','24675','1992-03-05',91,10),(1349,'Matthew','Osborne','M','31155','1992-07-15',7,5),(1350,'Bevis','Sims','M','48484','1992-11-18',28,10),(1351,'Macon','Murray','M','81880','1995-01-09',35,2),(1352,'Lev','Le','M','27637','1992-11-27',39,2),(1353,'Robert','Santos','M','80290','1997-10-07',80,5),(1354,'Dylan','Mcbride','M','42972','1992-04-15',133,9),(1355,'Flynn','Powers','M','16045','1995-11-15',8,3),(1356,'Cole','Wolfe','M','40693','1994-10-17',25,6),(1357,'Elmo','Eaton','M','58375','1993-11-14',95,2),(1358,'Arden','Whitaker','M','17218','1995-01-02',78,6),(1359,'Samuel','Banks','M','89303','1991-04-27',12,7),(1360,'Erasmus','Leblanc','M','74371','1997-04-04',18,9),(1361,'Alden','Fisher','M','52624','1993-07-06',57,2),(1362,'Chaney','Lang','M','69996','1996-07-14',19,3),(1363,'Ezra','Rodriguez','M','41159','1997-05-28',19,7),(1364,'Philip','Lewis','M','50007','1995-10-29',62,1),(1365,'Adrian','Merritt','M','95139','1993-11-01',37,6),(1366,'Fulton','Hodges','M','24456','1992-08-01',125,2),(1367,'Jason','Cash','M','31294','1995-02-16',37,5),(1368,'Arthur','Taylor','M','95106','1991-08-19',63,9),(1369,'Melvin','Cote','M','36739','1994-05-18',40,5),(1370,'Brian','Byers','M','50399','1994-10-17',113,4),(1371,'Hoyt','Velasquez','M','41688','1997-03-12',101,1),(1372,'Barry','Spears','M','42195','1994-03-22',64,7),(1373,'Ferdinand','Webb','M','94218','1995-12-06',123,5),(1374,'Wing','Fleming','M','69999','1996-01-11',39,6),(1375,'Dalton','Mills','M','13684','1997-04-08',9,5),(1376,'Edan','Montoya','M','55651','1994-03-02',65,4),(1377,'Chaim','Henry','M','25238','1996-10-23',2,7),(1378,'Abdul','Valenzuela','M','68654','1991-10-25',13,10),(1379,'Martin','Maxwell','M','23698','1993-02-21',104,9),(1380,'Isaac','Schneider','M','21648','1995-11-07',127,9),(1381,'Xenos','Kirby','M','58126','1992-06-28',17,3),(1382,'Hilel','Andrews','M','33196','1992-10-16',55,2),(1383,'Jonah','Hooper','M','93144','1991-03-07',4,1),(1384,'Jerome','Kirby','M','93348','1995-01-26',25,2),(1385,'Ashton','Duke','M','76044','1992-07-16',92,8),(1386,'Clark','Preston','M','24125','1992-08-18',28,6),(1387,'Herrod','Francis','M','72010','1995-07-29',108,2),(1388,'Kieran','Browning','M','47756','1994-06-09',4,9),(1389,'Elliott','Sloan','M','44527','1991-09-19',43,11),(1390,'Lionel','Langley','M','41171','1995-01-04',89,2),(1391,'Hayden','Ryan','M','57915','1994-02-17',11,3),(1392,'Andrew','Keller','M','16697','1996-02-06',55,2),(1393,'Clinton','Cain','M','90918','1992-08-25',46,1),(1394,'Connor','Whitfield','M','66126','1997-02-06',2,10),(1395,'Paki','Pena','M','25953','1997-10-13',88,4),(1396,'Vladimir','Parsons','M','51426','1996-01-09',110,11),(1397,'Ray','Ellis','M','92828','1997-07-05',134,1),(1398,'Hiram','Crane','M','16210','1991-12-24',62,1),(1399,'Price','Hunter','M','35951','1994-07-24',27,5),(1400,'Callum','Hunter','M','65221','1992-07-21',105,3),(1401,'Xenos','England','M','16151','1996-10-17',11,6),(1402,'Emery','Stafford','M','40293','1995-11-30',23,3),(1403,'Basil','Weiss','M','70177','1994-09-13',77,1),(1404,'Gregory','Vincent','M','81449','1997-10-08',46,10),(1405,'Samuel','Rutledge','M','20041','1992-02-03',105,1),(1406,'Wade','Foster','M','37725','1991-06-21',117,5),(1407,'Gray','Russell','M','44709','1991-07-12',106,9),(1408,'Timon','Whitney','M','94998','1994-08-04',99,5),(1409,'Luke','Cooke','M','88501','1991-02-05',105,3),(1410,'Aristotle','Hunter','M','20738','1991-02-22',57,1),(1411,'Dorian','Burt','M','99978','1996-03-13',32,5),(1412,'Christian','Richard','M','98741','1992-09-30',14,1),(1413,'Wade','Tanner','M','37661','1997-01-02',76,11),(1414,'David','Lara','M','50517','1996-01-27',52,8),(1415,'Wesley','Padilla','M','88267','1993-12-30',76,3),(1416,'Oleg','Workman','M','39364','1996-05-30',109,11),(1417,'Jarrod','Leach','M','96522','1995-12-14',110,11),(1418,'Macaulay','Lynch','M','51085','1994-08-26',96,3),(1419,'Austin','Greer','M','60525','1995-11-28',75,10),(1420,'Myles','Duffy','M','34144','1995-04-23',121,11),(1421,'Nathan','Oliver','M','27226','1993-05-30',4,1),(1422,'Hammett','Nguyen','M','26704','1996-05-25',84,8),(1423,'Calvin','Atkins','M','64916','1990-11-01',17,10),(1424,'Berk','Larson','M','98781','1990-12-14',77,4),(1425,'Xanthus','Pruitt','M','26554','1994-05-02',96,9),(1426,'Dillon','Potter','M','28373','1996-12-06',85,3),(1427,'Jerome','Macias','M','29255','1992-01-30',32,6),(1428,'Joseph','Hardin','M','40893','1991-06-17',66,1),(1429,'Kevin','Carr','M','42890','1994-12-28',44,11),(1430,'Hoyt','Short','M','98623','1996-06-15',104,2),(1431,'Dale','Clements','M','41454','1994-07-04',44,10),(1432,'Tate','Case','M','43689','1991-02-02',41,11),(1433,'Kadeem','Lloyd','M','79300','1995-12-13',38,3),(1434,'Seth','Barrera','M','68544','1991-12-24',104,7),(1435,'Callum','Booker','M','91785','1995-03-10',106,6),(1436,'Price','Weiss','M','61496','1996-01-06',96,4),(1437,'Oren','Simon','M','57790','1994-12-10',12,3),(1438,'Quinlan','Larson','M','40603','1995-11-09',31,11),(1439,'Nathan','Harrison','M','69778','1997-04-26',104,1),(1440,'Jack','Frank','M','56704','1993-12-13',96,3),(1441,'Russell','Palmer','M','89557','1997-02-08',86,8),(1442,'Finn','Walsh','M','20790','1991-10-26',4,2),(1443,'Howard','Lindsay','M','85608','1996-01-10',136,5),(1444,'Flynn','Shaw','M','85078','1991-09-22',48,4),(1445,'Chancellor','Wiley','M','90924','1997-08-27',61,1),(1446,'Linus','Richards','M','11559','1992-01-14',109,10),(1447,'Armando','Rogers','M','76006','1994-08-05',120,5),(1448,'Kato','Vincent','M','69439','1992-11-07',20,7),(1449,'Davis','Cain','M','79523','1994-10-30',48,1),(1450,'Victor','Aguilar','M','70529','1991-04-28',108,11),(1451,'Zachary','Turner','M','16040','1991-12-11',59,8),(1452,'Thaddeus','Dickson','M','93139','1997-03-27',48,3),(1453,'Forrest','Warner','M','68940','1994-05-28',135,10),(1454,'Bernard','Ewing','M','43592','1994-11-17',14,4),(1455,'Giacomo','Rosario','M','69149','1996-08-07',81,8),(1456,'David','Potts','M','48760','1993-07-27',125,11),(1457,'Jelani','Vaughan','M','46897','1994-08-08',47,8),(1458,'Dieter','Hahn','M','89035','1995-07-09',60,6),(1459,'Rahim','Carlson','M','19609','1996-03-12',31,6),(1460,'Joseph','Rodgers','M','19621','1995-01-02',109,2),(1461,'Cody','Mccoy','M','62994','1997-07-29',2,7),(1462,'Griffin','Mitchell','M','46057','1992-07-17',53,9),(1463,'Howard','Nieves','M','70728','1997-07-27',137,2),(1464,'Dolan','Lindsey','M','81305','1996-05-19',47,7),(1465,'Aquila','Hays','M','72873','1995-11-28',129,7),(1466,'Alec','Mccray','M','48501','1997-09-10',64,7),(1467,'Dexter','Ingram','M','96742','1990-11-27',130,7),(1468,'Quamar','Strickland','M','50953','1992-12-25',141,9),(1469,'Rahim','Hart','M','47140','1996-11-21',85,8),(1470,'Leonard','Fulton','M','51702','1991-08-13',40,8),(1471,'Hayes','Murray','M','44611','1997-01-26',107,7),(1472,'Kane','Trujillo','M','75196','1997-04-17',57,3),(1473,'Cole','Gillespie','M','10076','1994-02-20',54,5),(1474,'Seth','Randall','M','70843','1997-06-11',117,11),(1475,'Arthur','Conley','M','33794','1991-07-31',7,5),(1476,'Michael','Owen','M','98119','1991-05-11',125,6),(1477,'Jakeem','Guy','M','39389','1991-07-26',118,4),(1478,'Fuller','Caldwell','M','44268','1995-08-31',89,7),(1479,'Herrod','Knowles','M','85222','1991-09-15',33,4),(1480,'Mohammad','Christian','M','76890','1996-05-29',57,8),(1481,'Kirk','Burris','M','42664','1995-03-09',63,2),(1482,'Wayne','Pitts','M','45006','1993-02-21',61,5),(1483,'Dante','Webster','M','46830','1993-08-27',70,2),(1484,'Odysseus','Ortiz','M','59306','1991-02-07',11,10),(1485,'Dane','Fowler','M','50516','1996-01-04',47,7),(1486,'Xenos','Hill','M','81747','1996-10-04',103,4),(1487,'Baxter','Woodard','M','45790','1994-05-17',65,6),(1488,'Gabriel','Fleming','M','67041','1997-01-08',69,3),(1489,'Micah','Suarez','M','98115','1995-11-16',127,9),(1490,'Wylie','Good','M','26821','1995-02-05',126,4),(1491,'Rafael','Schmidt','M','21059','1993-05-09',12,4),(1492,'Michael','Ware','M','94010','1996-02-19',109,5),(1493,'Camden','Frazier','M','85156','1993-12-17',139,4),(1494,'Quamar','Sargent','M','35911','1994-11-16',29,1),(1495,'Alden','Harmon','M','57424','1991-12-29',117,4),(1496,'Alan','Chambers','M','61475','1994-04-20',56,3),(1497,'Lucas','Mullen','M','93243','1996-06-13',44,7),(1498,'Tad','Bass','M','10107','1995-03-10',139,6),(1499,'Donovan','Rivera','M','46573','1995-01-30',15,7),(1500,'Kibo','Page','M','76921','1992-07-04',80,2),(1501,'Dexter','Mejia','M','96289','1992-03-17',29,11),(1502,'Keith','Figueroa','M','90916','1992-10-25',102,8),(1503,'Jameson','Mcgowan','M','66109','1991-01-28',37,10),(1504,'Driscoll','Marquez','M','32352','1997-05-15',118,6),(1505,'Phillip','Richard','M','89992','1996-06-13',139,2),(1506,'Guy','Nelson','M','19182','1992-06-22',111,4),(1507,'Kasimir','Huff','M','35358','1992-11-14',83,1),(1508,'Chase','Koch','M','84749','1997-05-14',62,9),(1509,'Gareth','Kelly','M','26594','1997-03-03',61,4),(1510,'Griffith','Morse','M','13423','1997-03-07',34,1),(1511,'Alvin','Daugherty','M','47491','1994-02-06',50,9),(1512,'Lewis','Johnson','M','64866','1991-02-27',121,3),(1513,'Tyrone','Bowman','M','53396','1996-11-05',130,9),(1514,'Malcolm','Morrison','M','14068','1996-09-10',50,6),(1515,'Odysseus','Marks','M','73005','1993-09-19',93,4),(1516,'Alan','Vincent','M','80618','1992-07-05',8,7),(1517,'Oleg','Ramsey','M','94264','1996-07-31',135,11),(1518,'Ivan','Knight','M','65197','1994-06-27',4,4),(1519,'Lamar','Kirby','M','63248','1992-01-05',117,4),(1520,'Brent','Branch','M','98804','1991-03-26',95,9),(1521,'Macaulay','Cameron','M','46368','1991-12-25',102,7),(1522,'Brenden','Lott','M','20606','1991-09-12',76,6),(1523,'Hashim','Clayton','M','49275','1996-02-01',111,8),(1524,'Chancellor','Evans','M','22971','1993-02-25',125,11),(1525,'Nolan','Ortiz','M','27598','1994-05-14',98,11),(1526,'Jack','Wade','M','46848','1992-10-11',70,1),(1527,'Hasad','Calderon','M','83282','1993-10-31',53,8),(1528,'Timothy','Rojas','M','53891','1992-08-15',4,9),(1529,'Axel','Grimes','M','19151','1995-02-16',133,3),(1530,'Brenden','Villarreal','M','22348','1996-02-11',106,3),(1531,'Fitzgerald','Barrera','M','89165','1991-07-04',140,1),(1532,'Brendan','Lott','M','17172','1993-04-23',6,3),(1533,'Phillip','Kirby','M','95043','1991-06-19',140,1),(1534,'Andrew','Benson','M','31202','1992-08-21',62,3),(1535,'Stone','Morin','M','56844','1997-05-03',47,9),(1536,'Yuli','Sawyer','M','16035','1992-01-06',1,10),(1537,'Tyrone','Bates','M','85167','1994-06-16',104,8),(1538,'Stuart','Cook','M','66069','1995-01-12',23,9),(1539,'Hasad','Anderson','M','40199','1993-03-03',15,9),(1540,'Upton','Heath','M','90892','1994-10-12',115,6),(1541,'Leo','Britt','M','52578','1993-12-30',120,8),(1542,'Jelani','Mays','M','44900','1992-09-28',52,10),(1543,'Declan','Lambert','M','53117','1996-06-11',4,7),(1544,'Jared','Holt','M','55231','1993-03-04',141,8),(1545,'William','Drake','M','71744','1997-08-23',66,1),(1546,'Drew','Holman','M','92657','1994-12-16',113,9),(1547,'Ryan','Wall','M','69957','1995-05-17',29,8),(1548,'Tad','Booth','M','84597','1996-04-14',134,11),(1549,'Francis','Saunders','M','64621','1993-12-22',74,9),(1550,'Tad','Harris','M','11034','1990-10-27',35,1),(1551,'Seth','Wolfe','M','56181','1990-11-16',88,3),(1552,'Levi','Small','M','65494','1991-12-06',138,8),(1553,'Gannon','Miles','M','58509','1992-09-20',83,9),(1554,'Kibo','Case','M','65193','1995-05-20',57,3),(1555,'Leonard','Bush','M','76583','1992-05-03',78,9),(1556,'Gil','Holman','M','64760','1992-04-30',129,9),(1557,'Hakeem','Duran','M','54816','1995-06-08',71,4),(1558,'Elvis','Christian','M','57874','1995-03-29',27,5),(1559,'Holmes','Schneider','M','52696','1996-12-09',49,2),(1560,'John','Cohen','M','11352','1997-07-08',12,10),(1561,'Brandon','Chavez','M','47455','1996-08-01',110,5),(1562,'Anthony','Cochran','M','37038','1994-12-16',71,8),(1563,'Hyatt','Hewitt','M','46590','1992-02-16',65,10),(1564,'Kaseem','Hoffman','M','93048','1996-01-04',115,6),(1565,'Randall','Little','M','13078','1992-04-30',28,7),(1566,'Quamar','Cox','M','37049','1996-01-11',11,2),(1567,'Dennis','Emerson','M','63609','1996-10-10',103,9),(1568,'Myles','Patrick','M','22624','1993-07-23',34,5),(1569,'Forrest','Spears','M','24595','1992-04-11',92,5),(1570,'Talon','Sanford','M','89755','1993-05-26',30,3),(1571,'Jakeem','Bryant','M','43459','1996-05-28',7,5),(1572,'Nasim','Oneil','M','38704','1995-10-09',53,6),(1573,'Ira','Campbell','M','46624','1995-09-10',41,1),(1574,'Yardley','Spears','M','31165','1994-02-05',138,7),(1575,'Dennis','Johns','M','47763','1994-07-07',4,8),(1576,'Driscoll','Ewing','M','95136','1995-08-28',55,3),(1577,'Hamilton','Knapp','M','60732','1991-11-28',64,7),(1578,'Luke','Massey','M','43167','1991-05-19',13,11),(1579,'Lester','Wheeler','M','11646','1992-03-18',75,5),(1580,'Boris','Obrien','M','99191','1996-05-18',38,11),(1581,'Silas','Henson','M','50724','1991-02-15',92,8),(1582,'Lucius','Morgan','M','56097','1996-01-11',56,4),(1583,'Gray','Key','M','87522','1994-01-10',35,3),(1584,'Magee','Wilson','M','37275','1994-02-21',24,7),(1585,'Tiger','Newton','M','29079','1991-09-05',98,6),(1586,'Oliver','Dalton','M','84610','1997-05-26',136,10),(1587,'Drew','Mcfarland','M','63633','1995-04-18',18,2),(1588,'Hop','Chavez','M','81118','1995-11-03',133,4),(1589,'Phelan','Hull','M','28832','1991-11-14',32,4),(1590,'Caesar','Terry','M','95879','1991-11-08',62,1),(1591,'Flynn','Rose','M','99175','1991-07-30',15,3),(1592,'Damian','Hayes','M','72311','1992-01-08',30,6),(1593,'Salvador','Mason','M','23125','1991-10-13',91,1),(1594,'Carl','Foley','M','95551','1991-01-20',101,2),(1595,'Vincent','Kramer','M','56785','1991-01-18',74,10),(1596,'Laith','Baldwin','M','91605','1991-07-04',53,10),(1597,'Lev','Bolton','M','18256','1994-05-17',7,2),(1598,'Chancellor','Tran','M','12207','1996-05-16',29,5),(1599,'George','Hampton','M','89218','1990-12-14',34,1),(1600,'Jordan','Gillespie','M','51068','1997-07-23',119,8),(1601,'Isaac','Casey','M','63597','1995-04-27',28,10),(1602,'Seth','Adams','M','91570','1991-12-26',49,6),(1603,'Burke','Whitehead','M','64991','1996-08-21',84,4),(1604,'Luke','Moss','M','54095','1997-01-19',138,7),(1605,'Barry','Kirby','M','77807','1991-06-04',74,1),(1606,'Garth','Cohen','M','86674','1992-03-23',133,9),(1607,'Chester','Key','M','21628','1993-11-30',74,2),(1608,'Reece','Duke','M','75543','1996-09-30',101,7),(1609,'Dean','Rodriguez','M','24532','1993-01-25',76,6),(1610,'Lucas','Burke','M','16691','1996-11-16',1,9),(1611,'Lester','Vargas','M','93397','1993-06-15',77,9),(1612,'Zahir','Wilkinson','M','89165','1991-08-06',125,4),(1613,'Hayes','Mcconnell','M','42245','1996-04-22',62,4),(1614,'Lamar','Newman','M','75924','1994-10-02',17,5),(1615,'Thomas','Landry','M','61280','1995-04-27',77,5),(1616,'Aladdin','Padilla','M','70534','1994-12-17',123,1),(1617,'Paki','Fletcher','M','91853','1995-01-25',20,10),(1618,'Quamar','Bartlett','M','65244','1995-07-23',79,3),(1619,'Preston','Washington','M','20021','1994-12-18',35,8),(1620,'Kevin','Nash','M','81186','1996-09-28',55,3),(1621,'Noble','Serrano','M','41975','1996-11-15',17,11),(1622,'Hamish','Abbott','M','21433','1993-10-17',18,1),(1623,'Channing','Beach','M','31995','1993-11-19',11,2),(1624,'Denton','Bullock','M','82709','1993-06-12',82,9),(1625,'August','Stein','M','70084','1997-09-26',72,2),(1626,'Fletcher','Mcfarland','M','87121','1991-03-10',19,4),(1627,'Hall','Norton','M','19126','1991-07-28',126,11),(1628,'Martin','Green','M','43131','1994-12-10',117,8),(1629,'Caldwell','Fry','M','40585','1997-06-14',28,5),(1630,'Vance','Gillespie','M','44118','1993-09-22',43,4),(1631,'Emmanuel','Goodwin','M','84236','1990-11-11',75,10),(1632,'Tiger','Hill','M','62684','1991-03-31',40,3),(1633,'Kennedy','Monroe','M','63500','1992-10-25',73,6),(1634,'Uriel','Lang','M','96490','1992-03-14',141,6),(1635,'Colt','Griffith','M','47087','1992-07-10',69,4),(1636,'Lewis','England','M','74773','1993-02-23',111,4),(1637,'Ezekiel','Hodge','M','61595','1993-06-06',110,4),(1638,'Drake','Franco','M','83084','1991-05-05',18,4),(1639,'Harper','Contreras','M','27427','1997-06-25',120,11),(1640,'Kasimir','Chavez','M','39586','1995-05-07',114,2),(1641,'Alfonso','Morris','M','32781','1997-09-03',119,1),(1642,'Geoffrey','England','M','86516','1991-07-19',6,6),(1643,'Bert','Harper','M','18084','1995-07-10',41,5),(1644,'Sebastian','Stafford','M','20744','1997-06-11',141,6),(1645,'Kaseem','Puckett','M','65158','1992-08-29',85,1),(1646,'Aidan','Fischer','M','15924','1996-09-17',130,7),(1647,'Plato','Ratliff','M','57222','1991-08-04',97,2),(1648,'Darius','Harrington','M','30554','1996-01-23',74,9),(1649,'Jermaine','Petty','M','52282','1993-03-18',107,4),(1650,'Armand','Lowe','M','23830','1992-12-25',95,1),(1651,'Zachery','Reed','M','46597','1992-02-29',114,11),(1652,'Kenyon','Mcdonald','M','15383','1991-06-18',65,3),(1653,'Benjamin','Francis','M','13568','1993-08-02',29,6),(1654,'Erich','Hogan','M','93674','1994-03-01',77,4),(1655,'Price','Acevedo','M','19040','1992-10-22',14,4),(1656,'Armando','Mcdonald','M','92769','1991-12-16',89,8),(1657,'Xanthus','Bray','M','23028','1996-04-20',113,5),(1658,'Rooney','Morin','M','60115','1997-03-15',76,3),(1659,'Octavius','Dudley','M','45489','1990-11-21',29,2),(1660,'Fulton','Mccall','M','28135','1994-12-14',35,10),(1661,'Peter','Reyes','M','36450','1994-04-08',9,3),(1662,'Jason','Oneal','M','29228','1994-06-03',85,10),(1663,'Plato','Church','M','85954','1992-02-26',85,11),(1664,'Jakeem','Cannon','M','36600','1997-05-29',68,5),(1665,'Gannon','Barker','M','42733','1992-12-28',50,6),(1666,'Christian','Forbes','M','32462','1992-11-10',64,9),(1667,'Brennan','Sanford','M','72611','1991-08-24',11,5),(1668,'Hiram','Weber','M','39560','1994-03-24',27,8),(1669,'Nolan','Stevens','M','63709','1996-09-25',47,7),(1670,'Edan','Gray','M','99609','1992-09-08',68,7),(1671,'Tanek','Velez','M','34274','1996-11-02',36,6),(1672,'Christian','Frye','M','74209','1993-12-15',33,5),(1673,'Ciaran','Freeman','M','43922','1993-11-23',138,10),(1674,'Buckminster','England','M','47708','1991-04-03',67,2),(1675,'Nathan','Mayer','M','70009','1992-02-03',101,10),(1676,'Richard','Gutierrez','M','52371','1997-08-11',119,11),(1677,'Forrest','Holden','M','94117','1995-12-30',31,10),(1678,'Thor','Hamilton','M','13693','1991-04-30',55,10),(1679,'Amery','Rice','M','65386','1993-12-29',25,9),(1680,'Fulton','Munoz','M','13405','1995-10-16',4,3),(1681,'Abraham','Garrison','M','65033','1994-06-12',52,8),(1682,'Marsden','Pierce','M','75218','1992-06-27',80,4),(1683,'Cullen','Perkins','M','75146','1991-05-29',111,10),(1684,'Jason','Abbott','M','41389','1992-09-02',121,5),(1685,'Brent','Pena','M','41405','1994-06-18',9,3),(1686,'Clayton','Lara','M','69151','1994-11-01',74,10),(1687,'Felix','Preston','M','93373','1993-05-01',133,7),(1688,'Brendan','Hogan','M','90595','1991-09-15',103,8),(1689,'Hoyt','Stark','M','77253','1991-09-15',69,10),(1690,'Simon','Santana','M','45761','1991-11-28',140,11),(1691,'Stephen','Watts','M','24260','1993-08-04',113,9),(1692,'Fulton','Compton','M','46313','1996-09-23',141,8),(1693,'Lionel','Richards','M','23282','1991-05-26',31,8),(1694,'Cairo','Mcfarland','M','94782','1991-06-20',94,9),(1695,'Justin','Velasquez','M','80288','1995-09-11',3,4),(1696,'Abbot','Andrews','M','49981','1997-09-12',44,6),(1697,'Fletcher','Peterson','M','89318','1991-11-15',45,8),(1698,'Jackson','Golden','M','35506','1995-02-13',36,11),(1699,'Scott','Howard','M','83957','1992-10-25',17,9),(1700,'Yardley','Barrera','M','13941','1993-03-30',119,4),(1701,'Elijah','Burgess','M','87148','1994-05-13',137,2),(1702,'Zachery','Levy','M','14662','1991-04-26',137,1),(1703,'Hilel','Cross','M','81926','1997-03-20',62,10),(1704,'Jack','Buckley','M','92632','1991-06-10',83,2),(1705,'Hashim','Bowers','M','17926','1992-10-02',101,8),(1706,'Simon','Nixon','M','77074','1994-08-17',125,1),(1707,'Emerson','Wiggins','M','82381','1993-01-14',71,8),(1708,'Philip','Noel','M','36241','1991-09-27',115,8),(1709,'Steel','Adkins','M','42096','1995-09-03',45,1),(1710,'Lucas','Moon','M','13894','1996-04-21',141,5),(1711,'Arthur','Byrd','M','31295','1997-01-10',13,7),(1712,'Timothy','Walsh','M','51083','1995-05-12',107,7),(1713,'Hector','Acosta','M','74779','1994-07-13',81,11),(1714,'Yoshio','Gibson','M','21091','1995-01-17',117,9),(1715,'Mohammad','Booth','M','56020','1991-12-20',31,5),(1716,'Guy','Castaneda','M','42407','1996-04-11',26,5),(1717,'Tate','Cobb','M','27152','1993-05-14',90,1),(1718,'Roth','Roach','M','51633','1996-04-27',77,4),(1719,'Darius','Ryan','M','74797','1993-09-18',82,1),(1720,'Kevin','Blair','M','18239','1992-10-15',134,8),(1721,'Linus','Pickett','M','17491','1994-06-18',32,10),(1722,'Carlos','Cervantes','M','80569','1994-11-10',49,5),(1723,'Jelani','Crane','M','28984','1997-04-14',8,8),(1724,'Ferdinand','Valenzuela','M','49382','1995-06-09',14,2),(1725,'Russell','Bray','M','10655','1996-11-29',138,5),(1726,'David','Meyer','M','73609','1996-04-30',94,5),(1727,'Thomas','Stevenson','M','73443','1995-06-04',45,6),(1728,'Lyle','Macias','M','20955','1991-05-21',31,3),(1729,'Alan','Cain','M','98731','1996-08-12',45,11),(1730,'Craig','Marsh','M','52055','1992-08-17',9,7),(1731,'Baxter','Johnson','M','63971','1997-05-12',38,8),(1732,'Caesar','Estrada','M','66835','1992-12-25',3,10),(1733,'Rafael','Owens','M','65518','1991-06-14',110,4),(1734,'Camden','Stanton','M','19648','1996-06-11',15,1),(1735,'Boris','Castillo','M','60259','1997-04-09',131,3),(1736,'Myles','Saunders','M','84447','1994-11-15',119,7),(1737,'Lev','Chambers','M','19188','1991-01-18',109,3),(1738,'Adrian','Sanchez','M','67835','1990-11-26',69,3),(1739,'Beau','Gomez','M','62894','1991-11-20',108,2),(1740,'Chaney','Hardin','M','53185','1993-06-21',22,7),(1741,'Caleb','Hood','M','91708','1993-07-17',39,5),(1742,'Brent','Stark','M','69653','1996-06-09',76,9),(1743,'Clarke','Rosario','M','61564','1995-12-12',115,10),(1744,'Allistair','Fitzpatrick','M','59780','1993-11-09',122,3),(1745,'Damian','Middleton','M','42239','1992-01-03',119,1),(1746,'Zachery','Wall','M','55638','1996-01-17',44,10),(1747,'Fletcher','Joyce','M','86720','1997-08-22',78,1),(1748,'Cody','Holcomb','M','54588','1992-04-26',84,7),(1749,'Arthur','Sanford','M','22229','1991-11-22',96,5),(1750,'Beau','Reilly','M','19713','1993-12-06',6,11),(1751,'Honorato','Robinson','M','99294','1991-11-13',2,3),(1752,'Dominic','French','M','22222','1993-07-04',86,4),(1753,'Slade','Daugherty','M','30384','1991-06-04',126,1),(1754,'Rogan','Valentine','M','16039','1993-11-08',129,5),(1755,'Chaim','Webster','M','83096','1992-10-12',97,1),(1756,'Hamilton','Stein','M','57680','1991-02-28',27,3),(1757,'Mufutau','Mccall','M','31144','1995-09-26',14,9),(1758,'Craig','Farrell','M','37386','1991-06-07',90,2),(1759,'Galvin','Navarro','M','32623','1992-07-08',90,7),(1760,'Dorian','Roman','M','32448','1995-08-05',115,9),(1761,'Nissim','Campbell','M','58823','1996-02-17',58,10),(1762,'Gareth','Fitzpatrick','M','84937','1995-05-20',42,4),(1763,'Kareem','Kline','M','34925','1993-04-25',93,3),(1764,'Garrison','Blackwell','M','39492','1991-10-28',51,10),(1765,'Keane','Jones','M','83004','1996-06-02',125,7),(1766,'Ryder','Mooney','M','37561','1996-04-06',67,1),(1767,'Macaulay','Becker','M','46090','1996-02-03',60,11),(1768,'Basil','Acosta','M','55616','1994-08-28',141,11),(1769,'Randall','Hancock','M','72219','1995-09-02',61,7),(1770,'Brady','Vega','M','23700','1992-01-15',141,8),(1771,'Kermit','Flowers','M','79994','1992-02-04',52,7),(1772,'Kennedy','Callahan','M','27139','1995-02-16',63,1),(1773,'Jesse','Bennett','M','13315','1996-02-07',63,5),(1774,'Ferdinand','Blankenship','M','34380','1997-05-05',7,1),(1775,'Ira','Swanson','M','22762','1995-02-04',21,8),(1776,'John','Morrow','M','60873','1994-02-13',5,6),(1777,'Colton','Williamson','M','38197','1990-10-22',27,2),(1778,'Quentin','Barrera','M','51914','1995-01-05',133,8),(1779,'Gil','Lawrence','M','65383','1993-08-25',133,4),(1780,'Elijah','Garrett','M','54005','1992-02-14',120,11),(1781,'Scott','Benson','M','71456','1992-09-26',31,6),(1782,'Drew','Mcguire','M','29938','1997-02-05',8,2),(1783,'Marshall','Wall','M','39331','1996-06-04',56,6),(1784,'Arsenio','Moore','M','50088','1994-12-31',96,11),(1785,'Nash','Strickland','M','85863','1996-09-28',26,10),(1786,'Kermit','Steele','M','90560','1994-06-24',108,9),(1787,'Nicholas','Delacruz','M','91174','1994-09-24',81,8),(1788,'Scott','Stark','M','24991','1990-11-11',56,1),(1789,'Lamar','Morrison','M','46207','1997-01-07',132,8),(1790,'Harlan','Sanchez','M','18611','1991-06-06',42,2),(1791,'James','Cote','M','48172','1992-09-30',46,8),(1792,'Cain','Sampson','M','45589','1994-07-21',91,1),(1793,'Sean','Huffman','M','21319','1993-11-26',103,7),(1794,'Arthur','Fitzpatrick','M','91151','1992-08-10',132,6),(1795,'Oren','Durham','M','88491','1993-05-27',114,7),(1796,'Colt','Hardin','M','68065','1992-08-29',88,8),(1797,'Davis','Hogan','M','83720','1995-04-17',44,3),(1798,'Kieran','Gibbs','M','45217','1994-08-13',94,3),(1799,'Nehru','Lee','M','36482','1994-12-14',18,9),(1800,'Ferdinand','Sampson','M','94093','1994-05-07',118,5),(1801,'Samson','Parks','M','75383','1997-06-01',78,8),(1802,'Colt','Taylor','M','14107','1997-03-01',55,10),(1803,'Xanthus','Rush','M','80286','1996-09-25',41,5),(1804,'Neil','Maynard','M','40753','1992-05-16',55,6),(1805,'Salvador','Little','M','71437','1990-12-03',9,2),(1806,'Norman','Arnold','M','91149','1994-02-17',120,2),(1807,'Brent','Webb','M','94098','1994-01-27',135,8),(1808,'Garth','Holcomb','M','10311','1992-06-01',122,5),(1809,'Davis','Chambers','M','36500','1996-05-12',49,8),(1810,'Thane','Hull','M','80108','1995-10-31',2,3),(1811,'Fletcher','Clarke','M','55313','1994-01-26',127,8),(1812,'Oren','Clayton','M','24775','1991-08-20',82,5),(1813,'Colorado','Reid','M','73909','1995-03-02',113,10),(1814,'Maxwell','Guerrero','M','81471','1994-12-26',88,2),(1815,'Hoyt','Osborn','M','55749','1994-01-31',11,5),(1816,'Tyrone','Zimmerman','M','76426','1997-06-25',136,4),(1817,'Blake','Chen','M','68762','1996-12-27',33,11),(1818,'Gray','Wheeler','M','45804','1994-12-16',107,5),(1819,'Jameson','Bolton','M','35742','1995-04-22',16,7),(1820,'Abdul','Howe','M','18325','1995-08-04',127,9),(1821,'Solomon','Kent','M','27934','1992-01-26',36,4),(1822,'Elliott','Macdonald','M','60642','1994-11-17',38,8),(1823,'Kennedy','Green','M','79497','1992-10-25',48,8),(1824,'Otto','Jacobs','M','65583','1996-11-26',108,5),(1825,'Bernard','Richard','M','36462','1991-10-19',76,1),(1826,'Eric','Franks','M','81663','1996-06-27',58,2),(1827,'Keegan','Clark','M','83516','1993-01-15',104,2),(1828,'Carson','Carver','M','19075','1993-03-12',70,7),(1829,'Hayden','Mcbride','M','62722','1995-10-11',116,6),(1830,'Aquila','Randall','M','92399','1997-10-12',99,4),(1831,'Abel','Bates','M','80858','1991-06-20',46,10),(1832,'Evan','Ferguson','M','20688','1993-03-28',81,7),(1833,'Elvis','Lancaster','M','62575','1991-04-22',25,8),(1834,'Rooney','Stephens','M','65056','1992-01-28',66,9),(1835,'Oleg','Summers','M','70455','1991-08-29',105,1),(1836,'Abel','Dejesus','M','51641','1991-06-09',63,3),(1837,'Wade','Pierce','M','75980','1993-10-18',123,9),(1838,'Odysseus','Goodwin','M','55438','1994-09-17',70,9),(1839,'Micah','Calderon','M','62052','1995-05-14',12,5),(1840,'Melvin','Schwartz','M','15052','1994-05-13',85,11),(1841,'Oleg','Glenn','M','23381','1995-09-25',8,8),(1842,'Cullen','Snider','M','62923','1991-06-09',4,3),(1843,'Stewart','Wilcox','M','48552','1991-02-23',46,1),(1844,'Jackson','Keller','M','24804','1991-09-16',129,4),(1845,'Oren','Ingram','M','98825','1997-07-03',74,8),(1846,'Jordan','Donovan','M','14825','1996-03-02',97,6),(1847,'Laith','Ochoa','M','14507','1997-04-28',116,10),(1848,'Nathan','Maldonado','M','65219','1997-04-12',116,8),(1849,'Wyatt','Park','M','17388','1994-04-26',74,5),(1850,'Axel','Barry','M','35687','1991-06-05',26,5),(1851,'Xander','Blair','M','42552','1991-06-23',103,10),(1852,'Hayden','Mckay','M','99341','1997-02-21',58,11),(1853,'Tanek','Carrillo','M','75298','1991-12-19',52,1),(1854,'Damian','Allen','M','62728','1995-03-04',96,6),(1855,'Owen','Dorsey','M','71086','1996-04-01',55,5),(1856,'Demetrius','Beck','M','93533','1991-01-26',51,3),(1857,'Macaulay','Wolf','M','90989','1996-08-08',6,9),(1858,'Akeem','Contreras','M','29841','1993-06-12',88,6),(1859,'Kuame','Ashley','M','33707','1997-01-03',34,5),(1860,'Laith','Navarro','M','54955','1995-05-18',37,6),(1861,'Theodore','Kent','M','54543','1995-02-16',120,7),(1862,'Ryder','Benton','M','18224','1992-04-13',79,2),(1863,'Kamal','Hansen','M','82600','1991-08-16',41,10),(1864,'Ferdinand','Barrera','M','59852','1993-09-06',66,4),(1865,'Sean','Contreras','M','74949','1994-10-24',97,5),(1866,'Hiram','Mclean','M','43969','1996-06-07',127,10),(1867,'Tyler','Boyd','M','37161','1995-05-11',40,6),(1868,'Wallace','Chang','M','75421','1994-01-12',72,4),(1869,'Zeus','Jones','M','24503','1990-11-08',29,9),(1870,'Jermaine','Mcclure','M','44688','1992-06-03',139,2),(1871,'Lyle','Chen','M','92688','1995-12-14',123,5),(1872,'Richard','Day','M','79206','1997-02-06',45,9),(1873,'Stephen','Blanchard','M','25366','1993-02-09',28,9),(1874,'Baker','Calhoun','M','99498','1996-03-25',119,2),(1875,'Gareth','Carr','M','90821','1995-05-27',60,6),(1876,'Stuart','Noble','M','34945','1992-03-07',8,8),(1877,'Keith','Zimmerman','M','28853','1996-09-20',22,11),(1878,'Phelan','Slater','M','82339','1991-09-14',53,5),(1879,'Raphael','Everett','M','77234','1994-08-05',15,1),(1880,'Keith','Rocha','M','90466','1994-10-28',98,10),(1881,'Devin','Noel','M','94640','1996-09-23',59,3),(1882,'Hammett','Whitney','M','24597','1991-07-26',64,8),(1883,'Driscoll','Poole','M','78201','1991-08-19',78,9),(1884,'Stephen','Kim','M','95845','1991-04-23',10,2),(1885,'Carl','Myers','M','86799','1995-01-20',34,6),(1886,'Grady','Norris','M','29839','1995-09-08',27,11),(1887,'Silas','Taylor','M','32151','1991-10-16',108,9),(1888,'Phillip','Hammond','M','58577','1995-04-07',77,9),(1889,'Galvin','Thompson','M','69523','1991-05-28',35,8),(1890,'Caldwell','Weiss','M','17044','1994-06-23',91,10),(1891,'Lucas','Bartlett','M','91249','1993-09-17',84,3),(1892,'Coby','Terry','M','13713','1993-02-11',126,9),(1893,'Hilel','Hooper','M','41200','1991-10-12',71,1),(1894,'Keefe','Manning','M','98782','1995-03-28',48,5),(1895,'Drake','Andrews','M','82686','1993-07-11',54,3),(1896,'Reed','Dotson','M','49199','1995-10-14',13,6),(1897,'Armand','Blair','M','65473','1995-08-05',36,4),(1898,'Neville','Gilliam','M','22281','1992-03-21',119,11),(1899,'Solomon','Mckenzie','M','24953','1992-10-03',63,8),(1900,'Stone','Durham','M','89904','1992-12-28',106,1),(1901,'Kennan','Cummings','M','57053','1993-12-17',70,2),(1902,'Daniel','Roberson','M','94972','1993-07-20',53,10),(1903,'Jordan','Wiggins','M','41672','1993-11-02',16,11),(1904,'Mannix','Walker','M','81343','1995-04-05',8,2),(1905,'Mason','Parsons','M','32822','1995-01-08',20,10),(1906,'Marvin','Weeks','M','69470','1991-12-20',120,7),(1907,'Xanthus','Beard','M','58165','1995-03-07',83,8),(1908,'Keith','Emerson','M','64094','1996-05-16',110,7),(1909,'Adam','Delgado','M','34129','1994-09-18',29,1),(1910,'Chadwick','Long','M','75302','1993-03-28',85,10),(1911,'Kuame','Swanson','M','34976','1996-02-15',45,5),(1912,'Robert','Perez','M','67688','1991-04-11',98,2),(1913,'Rashad','David','M','78099','1994-06-13',83,4),(1914,'Macaulay','Cooke','M','91743','1992-01-14',71,6),(1915,'Victor','Pennington','M','77692','1990-11-23',109,10),(1916,'Aladdin','Reese','M','97920','1993-04-21',58,5),(1917,'Hyatt','Wilkerson','M','24398','1994-03-03',120,9),(1918,'Amal','Pierce','M','30782','1992-12-29',18,6),(1919,'Tobias','Wheeler','M','18312','1995-07-06',27,9),(1920,'Cain','Logan','M','94073','1992-06-04',24,3),(1921,'Jack','Mccray','M','30057','1994-12-10',136,6),(1922,'Wade','Lynn','M','29834','1997-02-13',72,5),(1923,'Kermit','Boyd','M','98225','1992-04-05',72,2),(1924,'Keaton','Rodriquez','M','77288','1996-01-08',13,2),(1925,'Brenden','Pennington','M','93605','1994-06-06',118,10),(1926,'Orlando','Lang','M','43058','1997-03-09',114,4),(1927,'Orlando','Lynch','M','23486','1991-09-04',107,11),(1928,'Aaron','Charles','M','84438','1996-06-22',8,3),(1929,'Preston','Berg','M','31746','1996-08-11',86,9),(1930,'Hamilton','Burton','M','21563','1994-02-24',27,4),(1931,'Avram','Barnes','M','85133','1995-08-29',1,6),(1932,'Asher','Mcguire','M','16376','1993-11-03',45,6),(1933,'Colorado','Fuentes','M','37482','1995-02-15',116,8),(1934,'Beck','Murray','M','56840','1996-12-31',106,2),(1935,'Keegan','Carlson','M','29717','1995-01-19',86,11),(1936,'Alfonso','Carter','M','90292','1997-01-30',30,7),(1937,'Lester','Holland','M','22693','1990-11-06',47,3),(1938,'Evan','Massey','M','51199','1990-12-31',17,3),(1939,'Lee','Martin','M','94606','1990-12-04',80,7),(1940,'Linus','Hanson','M','79064','1992-12-30',37,1),(1941,'Cody','Brewer','M','35963','1994-04-28',75,3),(1942,'Bernard','Hebert','M','15489','1991-03-02',61,8),(1943,'Levi','Walters','M','55241','1993-12-27',134,11),(1944,'Seth','Meyers','M','99804','1996-12-02',135,5),(1945,'Brandon','Harrison','M','78696','1994-05-22',58,4),(1946,'Rigel','Collier','M','50231','1996-03-11',69,3),(1947,'Clinton','Stevens','M','70826','1993-01-27',84,2),(1948,'Jin','Robertson','M','98757','1994-04-24',121,10),(1949,'Gregory','Hutchinson','M','94569','1994-09-19',48,8),(1950,'Wesley','Murray','M','23132','1994-08-25',134,9),(1951,'Colton','Mullins','M','20443','1992-07-02',3,9),(1952,'Chaim','Douglas','M','89241','1993-07-01',40,7),(1953,'Octavius','Harmon','M','86961','1995-12-13',131,5),(1954,'Armand','Sanford','M','36352','1995-12-01',137,2),(1955,'Lee','Boyer','M','92476','1991-08-06',125,7),(1956,'Kasimir','Hendricks','M','52856','1995-08-24',36,6),(1957,'Cody','Dixon','M','55975','1994-11-18',128,5),(1958,'Victor','Guerrero','M','35013','1990-11-01',1,3),(1959,'Orlando','Soto','M','25605','1995-02-11',134,9),(1960,'David','Beasley','M','47034','1995-09-04',107,1),(1961,'Kane','Pacheco','M','85243','1991-10-14',60,10),(1962,'Logan','Collier','M','65652','1991-05-03',21,9),(1963,'Kyle','Hewitt','M','30072','1990-12-27',66,4),(1964,'Ross','Flores','M','52784','1995-07-29',114,3),(1965,'Trevor','Graham','M','64927','1993-08-23',78,10),(1966,'Quentin','Mayer','M','72993','1991-05-07',138,10),(1967,'Lee','Dickerson','M','91736','1994-12-10',64,9),(1968,'Alvin','Mcbride','M','86908','1995-09-28',124,7),(1969,'Louis','Hines','M','76293','1992-07-05',75,9),(1970,'Zeph','Key','M','14936','1996-02-16',130,5),(1971,'Wallace','Leblanc','M','73451','1995-09-15',26,3),(1972,'Peter','Herrera','M','15642','1995-07-30',122,7),(1973,'Donovan','Brooks','M','97474','1991-06-27',126,11),(1974,'Matthew','Garrett','M','40623','1993-11-05',21,8),(1975,'Jameson','Dickson','M','65327','1995-10-09',136,1),(1976,'Brenden','Hinton','M','46927','1995-01-22',16,10),(1977,'Brett','Hood','M','10383','1994-07-04',45,11),(1978,'Clark','Rodgers','M','10872','1994-08-14',58,9),(1979,'Nehru','Gamble','M','31640','1996-06-17',102,4),(1980,'Alexander','Cervantes','M','66138','1996-12-21',106,3),(1981,'Nash','Flores','M','90666','1993-06-15',48,10),(1982,'Yuli','Patton','M','83688','1994-08-14',64,2),(1983,'Gary','Avery','M','47949','1997-03-24',36,7),(1984,'Reece','Carney','M','42829','1992-08-10',15,5),(1985,'Gabriel','Vincent','M','83179','1997-03-12',16,1),(1986,'Bradley','Carney','M','75349','1993-02-19',17,4),(1987,'Kermit','Manning','M','65106','1991-10-26',90,8),(1988,'Joshua','Powell','M','96397','1994-02-04',77,10),(1989,'Daquan','Joyce','M','42222','1996-01-13',30,5),(1990,'Colton','Sosa','M','57554','1991-06-24',127,7),(1991,'Hasad','Simon','M','53423','1993-03-28',74,11),(1992,'Guy','Barr','M','45233','1993-10-21',87,3),(1993,'Cairo','Romero','M','75804','1996-12-15',25,7),(1994,'Paul','Mullen','M','65446','1997-06-14',119,3),(1995,'Kasper','Walsh','M','33170','1995-02-14',135,3),(1996,'Fitzgerald','Wynn','M','18757','1993-03-25',114,10),(1997,'Ferris','Le','M','13329','1993-07-13',99,10),(1998,'Malcolm','Pratt','M','74816','1996-03-20',116,3),(1999,'Drake','Benton','M','53676','1996-04-07',114,3),(2000,'Philip','Parks','M','94344','1995-03-20',5,2),(2001,'Curran','Kane','M','82857','1992-10-01',90,7),(2002,'Elton','Hunt','M','51730','1991-09-09',84,10),(2003,'Brody','Quinn','M','96415','1991-05-11',42,5),(2004,'Hasad','Doyle','M','62526','1994-12-10',116,10),(2005,'Lucas','Alvarado','M','62511','1996-12-07',9,3),(2006,'Tad','Conway','M','76101','1991-03-01',79,7),(2007,'Allen','Flynn','M','64271','1997-08-05',32,8),(2008,'Raphael','Alford','M','29447','1995-03-10',116,6),(2009,'Neville','Merritt','M','23794','1996-02-03',8,5),(2010,'Philip','Harrington','M','50152','1996-07-12',26,10),(2011,'Isaiah','Oliver','M','78677','1994-06-20',6,9),(2012,'Ulric','Harris','M','33514','1991-08-06',125,2),(2013,'Ferdinand','Rivera','M','28859','1996-11-21',106,1),(2014,'Hyatt','Keith','M','54758','1996-02-10',69,8),(2015,'Caleb','Marsh','M','10195','1996-10-29',95,11),(2016,'Hamilton','Knapp','M','84445','1991-02-03',29,7),(2017,'Emery','Douglas','M','56329','1992-01-13',116,8),(2018,'Wade','Cooke','M','42195','1993-07-14',47,10),(2019,'Hector','Little','M','44561','1994-12-02',137,5),(2020,'Nigel','Ford','M','23133','1994-07-11',77,5),(2021,'Lucian','Klein','M','67208','1994-09-24',22,9),(2022,'Nolan','Graham','M','12335','1994-02-23',86,8),(2023,'Francis','Montgomery','M','11056','1993-03-19',18,1),(2024,'Melvin','Robinson','M','86940','1994-08-26',30,1),(2025,'Merritt','Bartlett','M','48875','1994-12-23',21,6),(2026,'Victor','Silva','M','75773','1992-08-19',26,7),(2027,'Cade','Webster','M','58738','1997-04-03',116,8),(2028,'Rahim','Pace','M','65737','1994-08-08',135,4),(2029,'Tucker','Houston','M','17179','1995-06-20',121,9),(2030,'Vernon','Baldwin','M','36691','1990-11-10',104,11),(2031,'Coby','Meyer','M','56895','1991-10-05',66,3),(2032,'Wang','Brady','M','58448','1994-12-26',54,9),(2033,'Dennis','Strickland','M','13615','1993-10-26',132,3),(2034,'Connor','Dickerson','M','25086','1996-10-30',64,2),(2035,'Addison','Fry','M','65557','1993-12-24',10,7),(2036,'Devin','Santiago','M','79932','1993-07-25',29,11),(2037,'Wang','Chan','M','48517','1996-01-19',134,9),(2038,'Allen','Macdonald','M','65609','1994-06-07',59,1),(2039,'Jameson','Brady','M','82215','1992-11-08',61,1),(2040,'Edward','Moses','M','28256','1997-05-21',63,5),(2041,'Jasper','Graham','M','43510','1995-11-02',52,1),(2042,'Josiah','Mcguire','M','95870','1995-03-13',21,6),(2043,'Guy','Conner','M','74734','1993-10-11',110,10),(2044,'Stewart','Leon','M','28434','1993-08-03',71,11),(2045,'Sawyer','Santiago','M','58690','1990-11-14',49,10),(2046,'Byron','Gross','M','17186','1993-06-19',108,9),(2047,'Valentine','Johnston','M','55463','1994-02-20',111,11),(2048,'Armando','Holland','M','40752','1995-09-23',122,5),(2049,'Cody','Harris','M','11164','1993-02-03',30,11),(2050,'Deacon','Roberson','M','11278','1991-09-15',54,6),(2051,'Joseph','Donaldson','M','34888','1993-04-06',35,8),(2052,'Hyatt','Schultz','M','62932','1992-12-15',86,4),(2053,'Edan','Phillips','M','44234','1997-02-19',82,1),(2054,'Dante','Bishop','M','64358','1990-12-18',109,9),(2055,'Oren','Flowers','M','70801','1995-06-07',60,7),(2056,'Berk','Gillespie','M','77899','1997-07-15',5,10),(2057,'Lance','Avery','M','37184','1995-08-18',38,11),(2058,'Julian','Mills','M','99940','1993-01-25',54,3),(2059,'Sawyer','Taylor','M','92550','1993-03-23',2,8),(2060,'Callum','Bray','M','68084','1997-02-15',140,8),(2061,'Hashim','Velez','M','11286','1993-04-18',11,4),(2062,'Isaac','England','M','50903','1996-05-18',129,4),(2063,'Cadman','Carroll','M','16852','1997-05-29',44,9),(2064,'Kermit','Cervantes','M','62236','1993-05-09',20,8),(2065,'Jack','Wilkins','M','95851','1996-09-19',2,7),(2066,'Timon','Prince','M','12838','1994-02-17',10,9),(2067,'Gil','Hurley','M','69802','1995-05-17',40,6),(2068,'Quinn','Estrada','M','39668','1991-05-10',140,7),(2069,'Garrison','Spence','M','54603','1994-11-04',34,4),(2070,'Ryan','Justice','M','79398','1997-03-14',101,3),(2071,'Lewis','Rosario','M','94927','1996-09-16',93,5),(2072,'Brent','Logan','M','24935','1993-07-09',63,5),(2073,'Justin','Ferrell','M','25928','1994-11-19',102,4),(2074,'Dennis','Camacho','M','50138','1991-09-25',138,6),(2075,'Walter','Bray','M','65951','1993-08-09',5,7),(2076,'Seth','Hoffman','M','65054','1995-06-28',118,8),(2077,'Jelani','Kent','M','82446','1992-11-26',9,2),(2078,'Kaseem','Larson','M','48689','1997-10-19',54,8),(2079,'Tyrone','Daniel','M','91634','1993-01-26',76,5),(2080,'Abraham','Stevens','M','77582','1994-04-17',52,1),(2081,'Rafael','Kelley','M','49497','1994-09-15',77,10),(2082,'Arden','Yang','M','65136','1995-11-20',16,6),(2083,'Wang','Rogers','M','70368','1993-04-22',104,4),(2084,'Lester','Roy','M','90757','1991-06-30',83,11),(2085,'Thaddeus','Kerr','M','64915','1994-03-13',12,4),(2086,'Tate','Schmidt','M','11958','1997-09-01',40,2),(2087,'Vance','Rush','M','44335','1994-12-25',122,7),(2088,'Prescott','Owens','M','84265','1990-11-20',118,6),(2089,'Zachary','Bryant','M','68830','1996-10-26',87,1),(2090,'Paul','Browning','M','57070','1996-10-22',89,5),(2091,'Elliott','Bray','M','51182','1993-05-01',57,7),(2092,'Isaac','Nunez','M','44619','1995-10-11',82,9),(2093,'Wallace','Olsen','M','74329','1991-05-02',63,5),(2094,'Porter','Ware','M','25900','1994-04-06',141,6),(2095,'Alan','Dillon','M','53831','1996-09-12',11,8),(2096,'Nash','Landry','M','35382','1996-03-22',51,7),(2097,'Gareth','Forbes','M','91210','1992-03-26',66,10),(2098,'Xanthus','Langley','M','62199','1994-08-15',5,10),(2099,'Cadman','Wall','M','93371','1991-01-19',111,11),(2100,'Felix','Ray','M','22279','1995-03-03',78,6),(2101,'Wallace','Patterson','M','31326','1997-01-04',28,2),(2102,'Zahir','Walters','M','35048','1993-01-10',50,5),(2103,'Richard','Herring','M','12968','1993-03-18',71,1),(2104,'Vance','Wiggins','M','40479','1992-12-21',65,8),(2105,'Dane','Stuart','M','98878','1992-08-19',129,11),(2106,'Keegan','Hill','M','96023','1992-07-25',57,3),(2107,'Jonah','Fox','M','15122','1993-11-16',76,8),(2108,'Neville','Drake','M','93112','1993-12-13',123,6),(2109,'Colin','Morris','M','68870','1992-01-14',114,9),(2110,'Thor','Mccray','M','48777','1996-04-20',5,1),(2111,'Jack','Whitaker','M','86478','1992-03-02',18,11),(2112,'Nicholas','Harrington','M','81652','1997-05-27',65,10),(2113,'Barrett','Bryan','M','53878','1995-05-19',7,9),(2114,'Erich','Waters','M','41759','1996-02-12',118,7),(2115,'Stewart','Porter','M','96488','1994-04-17',1,8),(2116,'Kirk','Herman','M','41519','1995-07-08',1,10),(2117,'Lee','Roberson','M','68252','1994-03-06',97,8),(2118,'Vaughan','Cooper','M','26270','1991-07-06',81,6),(2119,'Cedric','Boyd','M','57619','1994-08-27',12,2),(2120,'Zane','George','M','53482','1996-02-16',3,1),(2121,'Burke','Middleton','M','79320','1994-05-12',44,5),(2122,'Porter','Mcneil','M','63070','1990-11-03',24,9),(2123,'Barry','Hayes','M','86874','1992-09-08',66,1),(2124,'Gabriel','Decker','M','70830','1993-12-19',16,4),(2125,'Chandler','Odom','M','28723','1994-09-17',120,2),(2126,'Wyatt','Dorsey','M','69071','1996-12-31',48,1),(2127,'Galvin','Knapp','M','21095','1993-01-22',96,11),(2128,'Avram','Hogan','M','25353','1997-05-05',120,7),(2129,'Laith','Cash','M','51621','1997-01-02',50,3),(2130,'Malcolm','Sanford','M','93546','1996-07-30',125,9),(2131,'Aristotle','Figueroa','M','78271','1995-12-27',126,5),(2132,'Deacon','Yang','M','10633','1996-04-13',117,7),(2133,'Hasad','Obrien','M','94072','1993-08-25',7,8),(2134,'Byron','Dillon','M','99015','1993-02-25',24,8),(2135,'Forrest','Palmer','M','17762','1995-02-19',15,1),(2136,'Justin','Newman','M','76689','1990-12-05',103,9),(2137,'Carl','Pugh','M','28223','1997-07-26',86,6),(2138,'Rigel','Schultz','M','44670','1994-01-30',35,11),(2139,'Caesar','Lowery','M','56154','1993-03-02',77,8),(2140,'Wade','Simon','M','99073','1991-03-18',63,1),(2141,'Adam','Fry','M','15402','1990-11-22',14,7),(2142,'August','Brennan','M','13226','1994-08-18',95,1),(2143,'Ezekiel','Massey','M','20939','1993-01-28',55,8),(2144,'Malcolm','Hines','M','90969','1994-06-26',54,10),(2145,'Hasad','Higgins','M','38455','1992-05-10',18,5),(2146,'Thomas','Hines','M','42618','1996-06-13',107,3),(2147,'Benjamin','Harrison','M','62040','1994-09-25',84,5),(2148,'Leroy','Michael','M','12207','1996-08-16',123,8),(2149,'Justin','Gregory','M','12343','1996-06-25',58,6),(2150,'Caesar','Hatfield','M','24937','1994-03-28',86,8),(2151,'Caesar','Robbins','M','76310','1997-08-13',28,9),(2152,'Jerome','Ramsey','M','46092','1996-09-20',100,6),(2153,'Simon','Blanchard','M','51251','1994-05-06',12,2),(2154,'Basil','Burke','M','43737','1996-04-13',75,4),(2155,'Caleb','Wilkins','M','75171','1996-10-12',139,6),(2156,'Cyrus','Gonzales','M','74578','1993-01-19',132,1),(2157,'Murphy','Finley','M','79186','1992-09-22',13,5),(2158,'Uriel','Hensley','M','31286','1995-06-20',53,7),(2159,'Denton','Mcintyre','M','53986','1997-06-21',82,11),(2160,'Elijah','Fitzgerald','M','72954','1993-10-17',83,5),(2161,'Palmer','Oliver','M','31785','1993-03-05',112,10),(2162,'Tanner','Mccarthy','M','13873','1996-10-16',17,10),(2163,'Cooper','Britt','M','56017','1996-08-11',22,1),(2164,'Jonas','Zimmerman','M','55206','1994-02-12',125,3),(2165,'Rafael','Hutchinson','M','74689','1993-04-28',91,6),(2166,'Ignatius','Heath','M','88575','1990-11-23',75,1),(2167,'Mufutau','Hatfield','M','50788','1991-09-19',32,5),(2168,'Gage','Shields','M','30670','1993-01-10',120,10),(2169,'Carlos','Clarke','M','71294','1991-04-18',35,6),(2170,'William','Gordon','M','90900','1992-05-21',42,6),(2171,'Calvin','Tucker','M','73139','1993-03-12',72,5),(2172,'Slade','Silva','M','93329','1995-03-12',43,6),(2173,'Elijah','Sharpe','M','45526','1993-06-02',57,11),(2174,'Wylie','Hopper','M','54590','1997-01-27',23,4),(2175,'Clayton','Tyler','M','87062','1997-02-20',78,7),(2176,'Isaac','Jordan','M','51824','1992-07-09',93,4),(2177,'Hall','Lynch','M','28626','1992-02-07',47,11),(2178,'Mufutau','Leach','M','21933','1993-08-22',53,7),(2179,'Hilel','Patton','M','23464','1991-04-21',32,7),(2180,'Felix','Colon','M','71436','1996-09-08',22,4),(2181,'Gannon','Holloway','M','62792','1995-07-04',53,6),(2182,'Kadeem','Sargent','M','16653','1992-05-20',61,9),(2183,'Vernon','Rogers','M','22463','1995-03-06',82,6),(2184,'Ferdinand','Tran','M','64379','1994-06-22',119,5),(2185,'Dane','Cook','M','97771','1995-06-21',110,10),(2186,'Hilel','Hale','M','36348','1996-04-04',125,10),(2187,'Tanek','Cochran','M','64034','1994-02-15',43,9),(2188,'Channing','Townsend','M','55205','1997-09-30',101,3),(2189,'Giacomo','Fuentes','M','61780','1997-08-22',42,6),(2190,'Kane','Barber','M','37147','1994-07-23',13,6),(2191,'Joshua','Osborne','M','64253','1995-08-16',27,3),(2192,'Hu','Vazquez','M','19627','1993-12-05',88,1),(2193,'Branden','Wall','M','94858','1992-11-08',50,2),(2194,'Elton','Owen','M','63512','1997-06-13',87,11),(2195,'Dieter','Stark','M','30875','1993-03-13',28,11),(2196,'Fletcher','Diaz','M','73360','1997-07-03',112,3),(2197,'Jarrod','Buchanan','M','26110','1993-11-14',25,7),(2198,'Keefe','Gamble','M','62012','1994-03-30',23,1),(2199,'Bevis','Petersen','M','88933','1993-06-13',47,4),(2200,'Ronan','Kline','M','13716','1995-01-13',34,4),(2201,'Cullen','Gates','M','88398','1995-07-20',107,1),(2202,'Ahmed','Romero','M','44630','1996-07-13',33,4),(2203,'Fitzgerald','Brewer','M','33192','1996-04-28',112,10),(2204,'Elijah','Olsen','M','34994','1993-09-12',43,4),(2205,'Chandler','Vaughan','M','23489','1994-02-21',130,3),(2206,'Cyrus','Gonzales','M','26053','1993-03-04',87,6),(2207,'Rudyard','Mcfadden','M','86159','1997-02-21',99,7),(2208,'Grady','Watts','M','19702','1991-07-07',22,4),(2209,'Zane','Knox','M','24692','1996-01-24',20,1),(2210,'George','Barrett','M','96658','1993-10-09',90,11),(2211,'Flynn','Hobbs','M','56019','1992-04-11',71,9),(2212,'Emery','Robinson','M','96624','1992-07-25',58,7),(2213,'Jared','Tanner','M','49912','1994-10-21',68,9),(2214,'William','Dillon','M','50309','1991-12-30',73,1),(2215,'Gray','Jacobson','M','47621','1997-09-06',6,11),(2216,'Wyatt','Kim','M','16130','1994-08-30',123,6),(2217,'Aaron','Church','M','40568','1994-01-13',45,8),(2218,'Emery','Terry','M','86280','1996-05-13',101,3),(2219,'Elijah','Hurley','M','27405','1996-12-03',72,11),(2220,'Russell','Wyatt','M','92849','1996-06-13',20,8),(2221,'Hedley','Bullock','M','90693','1992-11-19',10,6),(2222,'Wesley','Jarvis','M','87997','1991-12-06',121,3),(2223,'Ali','Rivera','M','16409','1995-10-02',38,6),(2224,'Gavin','Yang','M','93651','1991-10-01',20,10),(2225,'Amos','Kennedy','M','10441','1996-06-28',18,9),(2226,'Brenden','Fleming','M','57569','1991-09-18',83,9),(2227,'Tyrone','Heath','M','13071','1991-02-15',17,8),(2228,'Hammett','Woodward','M','42670','1995-06-16',37,1),(2229,'Baker','Faulkner','M','74663','1991-09-01',53,3),(2230,'Oleg','Luna','M','22766','1992-03-19',43,3),(2231,'Keith','Davidson','M','28044','1997-03-01',111,4),(2232,'Chaney','Gentry','M','71779','1995-10-12',120,2),(2233,'Samson','Horn','M','10360','1997-04-10',1,6),(2234,'Rahim','Kirkland','M','61305','1991-06-09',138,5),(2235,'Keefe','Langley','M','74229','1996-11-18',44,11),(2236,'Connor','Knight','M','97627','1992-04-20',73,3),(2237,'Louis','Hill','M','75003','1994-08-18',134,6),(2238,'John','Terrell','M','30383','1997-04-09',12,4),(2239,'Bevis','Mckay','M','28267','1997-04-28',129,5),(2240,'Nissim','Davenport','M','43679','1997-06-12',43,3),(2241,'Keefe','Benton','M','67168','1990-11-20',32,9),(2242,'Paul','Mcmahon','M','20539','1991-01-29',39,1),(2243,'Dennis','Justice','M','49271','1992-04-07',83,1),(2244,'Dean','Simmons','M','47175','1991-08-21',35,5),(2245,'Brody','Whitney','M','70567','1995-03-22',105,8),(2246,'Kaseem','Wheeler','M','63754','1990-12-01',92,11),(2247,'Kieran','Olsen','M','80325','1993-10-09',93,6),(2248,'Fuller','Moon','M','76209','1996-05-20',89,8),(2249,'Vladimir','Ingram','M','49993','1991-03-29',100,7),(2250,'Oscar','Gould','M','22559','1994-01-21',62,2),(2251,'Upton','Lowery','M','70137','1997-10-07',12,1),(2252,'Emerson','Walter','M','48710','1992-02-12',76,8),(2253,'Amal','Kelly','M','90633','1992-12-08',109,9),(2254,'Steven','Eaton','M','97893','1992-07-26',133,4),(2255,'Axel','Mcmahon','M','90451','1993-05-29',35,9),(2256,'Lee','Cantrell','M','84732','1991-09-07',107,10),(2257,'Michael','Barber','M','94280','1994-06-12',10,5),(2258,'Lucius','Mcgowan','M','85256','1992-10-11',12,2),(2259,'Kelly','Barron','M','94216','1996-07-16',56,9),(2260,'Rogan','Mcintyre','M','20188','1992-11-08',67,8),(2261,'Rashad','Farley','M','95902','1992-10-19',68,9),(2262,'Walter','Day','M','60131','1995-12-10',80,4),(2263,'Orlando','Mann','M','64446','1991-09-27',3,3),(2264,'Brenden','Holmes','M','30176','1995-07-03',131,9),(2265,'Sebastian','Durham','M','17257','1995-03-05',75,3),(2266,'Coby','Hicks','M','33043','1997-05-09',66,6),(2267,'Fritz','Ferguson','M','94997','1993-12-23',140,3),(2268,'Ronan','Burks','M','38123','1992-08-19',56,2),(2269,'Kasper','Buckner','M','42902','1992-02-25',117,2),(2270,'Solomon','Sanders','M','54815','1995-10-05',116,3),(2271,'Joseph','Holder','M','36967','1993-12-10',121,10),(2272,'Ignatius','Curtis','M','69419','1992-04-14',97,2),(2273,'Elmo','Cole','M','74332','1997-09-17',46,5),(2274,'Slade','Durham','M','80659','1996-12-18',120,10),(2275,'Hamilton','Mueller','M','25697','1991-12-16',87,8),(2276,'Fuller','Hartman','M','57361','1996-11-15',2,8),(2277,'Hakeem','Oconnor','M','14926','1996-05-05',28,1),(2278,'Nathaniel','Berry','M','33155','1991-08-31',9,10),(2279,'Graham','Clayton','M','41485','1991-08-28',18,6),(2280,'Carl','Barnett','M','76038','1994-07-05',119,9),(2281,'Cairo','Herman','M','61906','1993-12-30',52,3),(2282,'Nigel','Rogers','M','43363','1993-07-23',102,8),(2283,'Dante','Rosales','M','90573','1997-03-13',128,3),(2284,'Austin','Atkinson','M','73698','1993-03-28',109,4),(2285,'Barry','Yang','M','60580','1992-07-23',76,11),(2286,'Sawyer','Morrison','M','41846','1992-07-29',107,10),(2287,'Clarke','Holden','M','71233','1996-08-08',61,4),(2288,'Basil','Meadows','M','55948','1995-07-12',96,1),(2289,'Louis','Justice','M','75369','1993-02-27',125,2),(2290,'Octavius','Boyd','M','73780','1995-01-15',7,4),(2291,'Cade','Espinoza','M','36528','1993-04-01',81,4);
/*!40000 ALTER TABLE `osoba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `osoba_posebne_kategorije`
--

DROP TABLE IF EXISTS `osoba_posebne_kategorije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osoba_posebne_kategorije` (
  `osoba` int(11) NOT NULL,
  `posebne_kategorije` int(11) NOT NULL,
  `br_rjesenja` varchar(128) COLLATE utf8_slovenian_ci NOT NULL,
  `datum_rjesenja` date NOT NULL,
  `organ_izdavanja` varchar(256) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osoba_posebne_kategorije`
--

LOCK TABLES `osoba_posebne_kategorije` WRITE;
/*!40000 ALTER TABLE `osoba_posebne_kategorije` DISABLE KEYS */;
/*!40000 ALTER TABLE `osoba_posebne_kategorije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_studija`
--

DROP TABLE IF EXISTS `plan_studija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_studija` (
  `godina_vazenja` int(11) NOT NULL,
  `studij` int(11) NOT NULL,
  `semestar` int(11) NOT NULL,
  `predmet` int(11) NOT NULL,
  `obavezan` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_studija`
--

LOCK TABLES `plan_studija` WRITE;
/*!40000 ALTER TABLE `plan_studija` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_studija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `podoblast`
--

DROP TABLE IF EXISTS `podoblast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `podoblast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oblast` int(11) NOT NULL,
  `naziv` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `podoblast`
--

LOCK TABLES `podoblast` WRITE;
/*!40000 ALTER TABLE `podoblast` DISABLE KEYS */;
/*!40000 ALTER TABLE `podoblast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ponudakursa`
--

DROP TABLE IF EXISTS `ponudakursa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ponudakursa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `predmet` int(11) NOT NULL,
  `studij` int(11) NOT NULL,
  `semestar` int(11) NOT NULL,
  `obavezan` tinyint(1) NOT NULL DEFAULT '0',
  `akademska_godina` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `predmet` (`predmet`),
  KEY `studij` (`studij`),
  KEY `akademska_godina` (`akademska_godina`),
  CONSTRAINT `ponudakursa_ibfk_1` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`),
  CONSTRAINT `ponudakursa_ibfk_2` FOREIGN KEY (`studij`) REFERENCES `studij` (`id`),
  CONSTRAINT `ponudakursa_ibfk_3` FOREIGN KEY (`akademska_godina`) REFERENCES `akademska_godina` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ponudakursa`
--

LOCK TABLES `ponudakursa` WRITE;
/*!40000 ALTER TABLE `ponudakursa` DISABLE KEYS */;
/*!40000 ALTER TABLE `ponudakursa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poruka`
--

DROP TABLE IF EXISTS `poruka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poruka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tip` tinyint(4) NOT NULL,
  `opseg` tinyint(4) NOT NULL,
  `primalac` int(11) NOT NULL,
  `posiljalac` int(11) NOT NULL,
  `vrijeme` datetime NOT NULL,
  `ref` int(11) NOT NULL DEFAULT '0',
  `naslov` text COLLATE utf8_slovenian_ci NOT NULL,
  `tekst` text COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poruka`
--

LOCK TABLES `poruka` WRITE;
/*!40000 ALTER TABLE `poruka` DISABLE KEYS */;
/*!40000 ALTER TABLE `poruka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posebne_kategorije`
--

DROP TABLE IF EXISTS `posebne_kategorije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posebne_kategorije` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posebne_kategorije`
--

LOCK TABLES `posebne_kategorije` WRITE;
/*!40000 ALTER TABLE `posebne_kategorije` DISABLE KEYS */;
INSERT INTO `posebne_kategorije` VALUES (1,'Djeca šehida i poginulih boraca'),(2,'Djeca ratnih vojnih invalida'),(3,'Djeca demobilisanih boraca'),(4,'Djeca nosilaca ratnih priznanja'),(5,'Djeca bez oba roditelja');
/*!40000 ALTER TABLE `posebne_kategorije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predmet`
--

DROP TABLE IF EXISTS `predmet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predmet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sifra` varchar(30) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `naziv` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `kratki_naziv` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `ects` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predmet`
--

LOCK TABLES `predmet` WRITE;
/*!40000 ALTER TABLE `predmet` DISABLE KEYS */;
INSERT INTO `predmet` VALUES (1,'ligula','bibendum fermentum vel','massa',4),(2,'Nullam','lacinia et elementum','porttitor',4),(3,'Etiam','dolor sociosqu sociis','Cras',6),(4,'vitae','urna imperdiet odio','ac',4),(5,'enim','convallis ultrices ad','eu',5),(6,'rhoncus','metus inceptos sem','tortor',7),(7,'arcu','tempus dis parturient','ornare',3),(8,'fringilla','sed id Sed','commodo',4),(9,'magna','Donec lacus mi','senectus',5),(10,'k3C7EPS','Quisque cubilia odio','yWlC',5),(11,'0Pf L6s','mattis magnis molestie','ezmB',3),(12,'jz9qRS4','sagittis ac euismod','afAb',7),(13,'ynY215g','in natoque et','mfnB',3),(14,'1mgAp6Y','augue aliquam velit','FAUM',6),(15,'rCfYpDH','congue mus posuere','DHgD',7),(16,' 10LWNY','Cras tincidunt facilisi','e Aa',3),(17,'tGIMvjb','nunc blandit conubia','Dimr',7),(18,'1mMnqoN','nostra purus eget','aIng',5),(19,'TtRSF4D','commodo massa ultricies','zAlj',4),(20,'FaAtrXX','dolor Aliquam augue','bUvH',7),(21,'d9QvmBU','fringilla Nam accumsan','mpTp',6),(22,'QKLbTNo','malesuada tortor euismod','sqdx',7),(23,'E455tSI','morbi aliquet est','oU A',6),(24,'doM8XCZ','Suspendisse purus facilisi','XmZs',4),(25,'oSXbNMr','facilisi dictum Etiam','StCf',4),(26,'fd fREQ','penatibus nisi quis','ZKuS',6),(27,'Cz4q41P','neque Donec Fusce','LNVL',7),(28,'uvaXdJ3','egestas bibendum torquent','nwte',7),(29,' GYAB0Q','aptent sed suscipit','WMaT',5),(30,'ir5z4w5','magnis Donec eget','HjQn',4),(31,'YLWNoKM','aliquam augue augue','nSzX',7),(32,'Bt6KWvA','mus sed scelerisque','EGCo',6),(33,'zR18Mxd','iaculis est adipiscing','zW b',6),(34,'ZBGfWUw','Aliquam facilisi Praesent','ZzLz',6),(35,'NTcGfib','Aenean primis viverra','GacD',7),(36,'kRGt3O ','litora facilisis massa','XVYx',6),(37,'2CeKTpr','risus at mauris','amZd',6),(38,'GgEVJ8o','elementum blandit Ut','JlFb',3),(39,'C78dfPG','facilisis dui nec','WHlF',3),(40,' 23FkNI','nisi pulvinar a','wYLm',3),(41,'qNY64xf','ridiculus Pellentesque mus','KCjm',5),(42,'Lp9R Kn','Etiam est sollicitudin','ewrG',7),(43,'F7gfOyl','suscipit conubia ultrices','TNgS',4),(44,'qRxF8vO','elit per velit','ecHq',4),(45,'T eBruV','mollis velit tortor','FPfI',4),(46,'5mqQ3BH','nulla interdum aliquet','xqeq',5),(47,'pI9O9T9','Class ante primis','CIOk',3),(48,'igJimV5','lorem aliquet leo','pWsE',4),(49,'S05ip2U','vestibulum facilisis sodales','eItM',5),(50,'oQpzxrx','risus eros dignissim','QUWO',7),(51,'GxekwKc','nostra morbi felis','kWid',4),(52,'D0YTTMv','tempus at nunc','mjeA',5),(53,'GWhcQrj','diam massa auctor','SrCi',3),(54,'zldqEka','hendrerit lacus dictum','siyH',7),(55,'YlMditK','Vivamus tempor blandit','vTCz',3),(56,'96n0 5X','hendrerit pellentesque blandit','LfcP',7),(57,'T8fiUgy','primis adipiscing dolor','bsEf',3),(58,'p ABBRy','tempor placerat dis','makj',7),(59,'NK7MiBT','hymenaeos sagittis lacus','AGxr',5),(60,'94JZrOw','Vivamus dui odio','XJFa',5),(61,'raZ2X1K','varius facilisis ut','sUmQ',6),(62,'r8QHvUr','Class pede sagittis','DOxv',7),(63,'NCifj0Y','Lorem inceptos feugiat','PftJ',5),(64,'Zcv5WKc','purus montes sociosqu','elTj',6),(65,'1yLV2ge','enim ad dictum','gfRZ',4),(66,'JXkhrQr','senectus semper Vivamus','dq g',3),(67,'vgRexjs','non fringilla turpis','hAMo',6),(68,'wyG9BV8','magna inceptos commodo','uwYf',7),(69,'HAdlB0B','iaculis vulputate Morbi','LisC',7),(70,'Je dLRk','consectetuer litora nisl','nnTi',5),(71,'oze6QA1','dictum Nam cursus','bbKA',5),(72,'u2 KFxo','id ligula tortor','DrBZ',3),(73,'N63xXT2','ad vulputate vulputate','ODzj',7),(74,'R0i0fKm','libero ultrices sodales','GDkY',6),(75,'mgzf2ZH','quam dis condimentum','GwLi',6),(76,'srHfC3U','ornare risus purus','jRFG',4),(77,'tTpFiTp','semper Praesent augue','qpDh',5),(78,'OnSfArK','mi placerat turpis','yNRb',3),(79,'hV1R3YU','vel ac Nulla','HgGi',5),(80,'Z12b4D8','massa quis lectus','REQM',6),(81,'65rJy4M','Curae congue orci','RCzO',6),(82,'PGcbv1g','Pellentesque pulvinar justo','gjvU',4),(83,'AZNMmrN','scelerisque Praesent scelerisque','ZPUg',3),(84,'wqGAiQ0','tortor mi lacus','TXuu',6),(85,'IiEKA2n','ultricies dictum conubia','nSha',7),(86,'gE1sije','per consequat Maecenas','JPXY',6),(87,'YFrUIJ4','at parturient volutpat','hnKi',6),(88,'5FroaCI','Nullam netus ullamcorper','oRpI',3),(89,'mtT5B4R','nascetur aptent Phasellus','nMeR',3),(90,'n7MeTjq','libero lacinia litora','Avdx',5),(91,'nmmPr92','facilisi eu nibh','meTf',3),(92,'dDsBJu2','Curae habitant Nam','TRIJ',5),(93,'Sk3JEju','habitant condimentum augue','GbIA',5),(94,'u2qucvP','et Suspendisse in','Ocxy',4),(95,'5U5h78e','ante dignissim at','UTUu',3),(96,'ofSH8Ow','Nam aliquet Pellentesque','eAtX',5),(97,'NR7zReo','laoreet Sed dapibus','CSJL',6),(98,' 57DssD','dui faucibus consectetuer','SeNc',4),(99,'aHd22Ei','senectus Class Phasellus','Fgea',4),(100,'atFoUFz','rhoncus nisl vel','bMeu',3),(101,'roYiBXN','malesuada nunc at','fdRD',4),(102,'SPBmTkn','risus blandit conubia','zVDq',3),(103,'jntSaJk','eu Vestibulum sodales','PBuE',6),(104,'W6qxYNN','ultricies nostra Nunc','ulCC',7),(105,'Mc5NfTv','Nullam fames fames','SrbH',3),(106,' Hjf4ND','sociosqu metus libero','FfPx',7),(107,'L44dqV4','erat risus lectus','lgav',7),(108,'lWkVFKB','ullamcorper lacinia pharetra','RZjD',3),(109,'0sBIaLh','in cursus posuere','TYtx',6),(110,'rBTpKpA','cubilia quam Fusce','IgnP',4),(111,'WxrvzqI','natoque scelerisque torquent','vbwK',4),(112,'C1zEkgv','diam convallis Etiam','TVfZ',6),(113,'v lqnUG','bibendum mus Cum','ZKAT',3),(114,'AZfhUP0','Pellentesque sem Sed','XsVW',4),(115,'qsC8Cvm','parturient sit pellentesque','QKRJ',7),(116,'VD LkCj','Aliquam aliquam id','fLHS',7),(117,'H739Qe0','amet pellentesque magnis','mhtS',3),(118,'hJleElj','urna vestibulum per','QrKR',3),(119,'XbGdt6c','vel ut lobortis','qqID',7),(120,'hZhTGE1','adipiscing tristique elit','FGlT',5),(121,'fa52HhY','consequat In ultricies','nhBb',5),(122,' 2MhVyX','facilisis tincidunt nisl','GLJo',3),(123,'1FQZlxe','accumsan habitant elit','MqZU',4),(124,'4aQFGUY','ad penatibus Class','xwMc',7),(125,'Ruuysqw','pede Cras dui','gHzB',5),(126,'WS1ECYe','pulvinar Etiam volutpat','CTRd',6),(127,'eVG6IAT','tortor venenatis arcu','KlWa',4),(128,'Yevrhec','semper aliquet fames','nHQJ',4),(129,'ocpi8Y9','vitae congue posuere','ICHy',5),(130,'D2 mp0A','vestibulum accumsan montes','xuIH',5),(131,'7CgVIGQ','dapibus egestas ornare','UhFq',7),(132,'LuJduIk','quis tincidunt orci','PUmR',7),(133,'KdG76IJ','euismod ad nunc','ybGp',4),(134,'bptgDQD','ultricies dui Mauris','lFck',7),(135,'brI6lOj','pretium suscipit quam','AtmY',4),(136,'0d4Len6','neque sodales fringilla','trUZ',4),(137,'7PvNys9','condimentum congue mollis','jGAM',4),(138,'fZVvpJX','litora euismod tristique',' eDC',3),(139,'1 lIYka','sociosqu imperdiet sapien','ZwgJ',5),(140,'cn9KR2k','mauris condimentum hendrerit','HvWJ',3),(141,'eOSAaOE','commodo ipsum luctus','Kxaf',4),(142,'jy4jUJ7','quis risus taciti','xPTi',4),(143,'6qA jt5','ac Cras conubia','jOnZ',3),(144,'ktcGsVb','bibendum Aliquam eleifend','YRGU',4),(145,'WxgvOjR','natoque faucibus odio','OAvK',5),(146,'v8Ej0tG','interdum tellus lacus','BQdC',3),(147,'PMWuAmG','aliquam venenatis ac','vCwK',3),(148,'uT5XPYd','dis rhoncus scelerisque','ypYt',5),(149,'uqaqLZf','lorem Phasellus natoque','VoZH',3),(150,'8l8dkQ9','Nulla nulla pulvinar','Yczk',3),(151,' TAiAl8','leo et dictum','KnxX',7),(152,'45MCBGr','Vivamus lacus venenatis','dYuj',7),(153,'0DP4Iu0','pretium nonummy sollicitudin','lnAy',5),(154,'yoEtFYZ','quis inceptos viverra','vVgB',6),(155,'am2EPWx','sed penatibus orci','FXBF',7),(156,'EH5avpj','sagittis augue laoreet','DxTy',4),(157,'mojCvD4','aliquet ultricies risus','vuTM',5),(158,'sAR2Oh3','blandit Etiam facilisi','EmOc',3),(159,'qoksOJ ','hendrerit volutpat tellus','kWDE',3),(160,'JBO7H6S','nostra magna volutpat','OgRv',6),(161,'f3hWpaO','aliquet nunc odio','ryFd',4),(162,'SgwnX2G','sociosqu pede Mauris','JVQm',7),(163,'7uBiIHR','quis nunc lorem','zpvK',6),(164,'aTsZcgE','feugiat convallis aliquet','rhNP',4),(165,'1pVAK8c','nunc nostra pharetra','oUMg',4),(166,'OPmJtnd','Morbi facilisis tellus','dGKN',5),(167,'42GRrZ ','purus inceptos blandit','tnFr',7),(168,'rVQNHIv','accumsan posuere Nam','Zunu',5),(169,'qwzx40J','commodo Nunc dictum','YkUu',7),(170,'9Y5r EB','Nunc ipsum facilisis','EfdQ',4),(171,'Xn1uT4S','gravida cubilia Praesent','daJ ',4),(172,'99m30 8','Morbi commodo In','b nR',4),(173,'eKYh9nh','pulvinar hendrerit libero','ngoV',4),(174,'RjT0qiU','Donec consequat blandit','ihhJ',6),(175,'evrjG9k','ridiculus iaculis purus','ZDvC',6),(176,'L16yfHL','eu dui ut','wmFh',4),(177,'l7j3FeD','justo lectus turpis','UYHV',3),(178,'3w1gMWC','arcu mus tincidunt','Joun',3),(179,'fqjFv86','vestibulum torquent dis','KzFX',6),(180,'uADzbG4','lacinia Curabitur mauris','uYeI',3),(181,'3XEoyf9','varius aliquet et','Fbis',6),(182,'sF5wMxe','elit mus urna','xNJA',6),(183,'7e04oF4','Sed luctus aliquet','UVcz',7),(184,'vauZq9W','elit ipsum Phasellus','U hX',7),(185,'Sh6oTv3','amet montes In','MxfP',6),(186,'y4rHVxp','mi interdum venenatis','htpj',4),(187,'d7V21o4','vel commodo sapien','jcmd',6),(188,'m6CK3wo','sodales cursus bibendum','icqM',4),(189,' JOHtoX','magna bibendum Aliquam','WjLG',7),(190,'t5ICf8w','elementum In semper','cnjS',5),(191,'eikwuNx','vitae mus nisi','ZHWz',6),(192,'1 MdBU0','nec ipsum feugiat','XWTu',5),(193,'w02pnAX','pede mollis Curabitur','mYJI',7),(194,'vZLIeaH','tellus ante sodales','ixF ',6),(195,'HgJKx18','nonummy condimentum Vivamus','TZOV',4),(196,'IK7WTAa','luctus faucibus euismod','kyJz',3),(197,'JKGXYrw','turpis nascetur purus','zKNS',4),(198,'uUdECe5','Praesent posuere sociis','DHOQ',4),(199,'sfvko4F','morbi elementum penatibus','Jhya',4),(200,'9NUwZ9U','taciti primis Praesent','xZnm',3);
/*!40000 ALTER TABLE `predmet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predmet_projektni_parametri`
--

DROP TABLE IF EXISTS `predmet_projektni_parametri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predmet_projektni_parametri` (
  `predmet` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL DEFAULT '0',
  `min_timova` tinyint(3) NOT NULL,
  `max_timova` tinyint(3) NOT NULL,
  `min_clanova_tima` tinyint(3) NOT NULL,
  `max_clanova_tima` tinyint(3) NOT NULL,
  `zakljucani_projekti` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`predmet`,`akademska_godina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predmet_projektni_parametri`
--

LOCK TABLES `predmet_projektni_parametri` WRITE;
/*!40000 ALTER TABLE `predmet_projektni_parametri` DISABLE KEYS */;
/*!40000 ALTER TABLE `predmet_projektni_parametri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preduvjeti`
--

DROP TABLE IF EXISTS `preduvjeti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preduvjeti` (
  `predmet` int(11) NOT NULL,
  `preduvjet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preduvjeti`
--

LOCK TABLES `preduvjeti` WRITE;
/*!40000 ALTER TABLE `preduvjeti` DISABLE KEYS */;
/*!40000 ALTER TABLE `preduvjeti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preference`
--

DROP TABLE IF EXISTS `preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preference` (
  `korisnik` int(11) NOT NULL,
  `preferenca` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `vrijednost` varchar(100) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preference`
--

LOCK TABLES `preference` WRITE;
/*!40000 ALTER TABLE `preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prijemni_obrazac`
--

DROP TABLE IF EXISTS `prijemni_obrazac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prijemni_obrazac` (
  `prijemni_termin` int(11) NOT NULL,
  `osoba` int(11) NOT NULL,
  `sifra` varchar(6) COLLATE utf8_slovenian_ci NOT NULL,
  `jezik` enum('bs','en') COLLATE utf8_slovenian_ci NOT NULL DEFAULT 'bs'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prijemni_obrazac`
--

LOCK TABLES `prijemni_obrazac` WRITE;
/*!40000 ALTER TABLE `prijemni_obrazac` DISABLE KEYS */;
/*!40000 ALTER TABLE `prijemni_obrazac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prijemni_prijava`
--

DROP TABLE IF EXISTS `prijemni_prijava`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prijemni_prijava` (
  `prijemni_termin` int(11) NOT NULL,
  `osoba` int(11) NOT NULL,
  `broj_dosjea` int(11) NOT NULL,
  `nacin_studiranja` tinyint(1) NOT NULL DEFAULT '1',
  `studij_prvi` int(11) NOT NULL,
  `studij_drugi` int(11) NOT NULL,
  `studij_treci` int(11) NOT NULL,
  `studij_cetvrti` int(11) NOT NULL,
  `izasao` tinyint(1) NOT NULL,
  `rezultat` double NOT NULL,
  PRIMARY KEY (`prijemni_termin`,`osoba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prijemni_prijava`
--

LOCK TABLES `prijemni_prijava` WRITE;
/*!40000 ALTER TABLE `prijemni_prijava` DISABLE KEYS */;
/*!40000 ALTER TABLE `prijemni_prijava` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prijemni_termin`
--

DROP TABLE IF EXISTS `prijemni_termin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prijemni_termin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `akademska_godina` int(11) NOT NULL,
  `datum` date NOT NULL,
  `ciklus_studija` tinyint(2) NOT NULL,
  `predsjednik_komisije` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prijemni_termin`
--

LOCK TABLES `prijemni_termin` WRITE;
/*!40000 ALTER TABLE `prijemni_termin` DISABLE KEYS */;
/*!40000 ALTER TABLE `prijemni_termin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prijemni_vazni_datumi`
--

DROP TABLE IF EXISTS `prijemni_vazni_datumi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prijemni_vazni_datumi` (
  `prijemni_termin` int(11) NOT NULL,
  `id_datuma` int(11) NOT NULL,
  `datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prijemni_vazni_datumi`
--

LOCK TABLES `prijemni_vazni_datumi` WRITE;
/*!40000 ALTER TABLE `prijemni_vazni_datumi` DISABLE KEYS */;
/*!40000 ALTER TABLE `prijemni_vazni_datumi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prisustvo`
--

DROP TABLE IF EXISTS `prisustvo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prisustvo` (
  `student` int(11) NOT NULL DEFAULT '0',
  `cas` int(11) NOT NULL DEFAULT '0',
  `prisutan` tinyint(1) NOT NULL DEFAULT '0',
  `plus_minus` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`student`,`cas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prisustvo`
--

LOCK TABLES `prisustvo` WRITE;
/*!40000 ALTER TABLE `prisustvo` DISABLE KEYS */;
/*!40000 ALTER TABLE `prisustvo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilegije`
--

DROP TABLE IF EXISTS `privilegije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilegije` (
  `osoba` int(11) NOT NULL,
  `privilegija` varchar(30) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilegije`
--

LOCK TABLES `privilegije` WRITE;
/*!40000 ALTER TABLE `privilegije` DISABLE KEYS */;
/*!40000 ALTER TABLE `privilegije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priznavanje`
--

DROP TABLE IF EXISTS `priznavanje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priznavanje` (
  `student` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `ciklus` int(1) NOT NULL,
  `naziv_predmeta` varchar(250) COLLATE utf8_slovenian_ci NOT NULL,
  `sifra_predmeta` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `ects` float NOT NULL,
  `ocjena` int(11) NOT NULL,
  `odluka` int(11) NOT NULL,
  `strana_institucija` varchar(250) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priznavanje`
--

LOCK TABLES `priznavanje` WRITE;
/*!40000 ALTER TABLE `priznavanje` DISABLE KEYS */;
/*!40000 ALTER TABLE `priznavanje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programskijezik`
--

DROP TABLE IF EXISTS `programskijezik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programskijezik` (
  `id` int(10) NOT NULL DEFAULT '0',
  `naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `geshi` varchar(20) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `ekstenzija` varchar(10) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `ace` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `kompajler` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `opcije_kompajlera` text COLLATE utf8_slovenian_ci NOT NULL,
  `opcije_kompajlera_debug` text COLLATE utf8_slovenian_ci NOT NULL,
  `debugger` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `profiler` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `opcije_profilera` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programskijezik`
--

LOCK TABLES `programskijezik` WRITE;
/*!40000 ALTER TABLE `programskijezik` DISABLE KEYS */;
/*!40000 ALTER TABLE `programskijezik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekat`
--

DROP TABLE IF EXISTS `projekat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekat` (
  `id` int(11) NOT NULL,
  `naziv` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `predmet` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL DEFAULT '0',
  `opis` text COLLATE utf8_slovenian_ci NOT NULL,
  `biljeska` text COLLATE utf8_slovenian_ci,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `predmet` (`predmet`),
  KEY `akademska_godina` (`akademska_godina`),
  CONSTRAINT `projekat_ibfk_1` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`),
  CONSTRAINT `projekat_ibfk_2` FOREIGN KEY (`akademska_godina`) REFERENCES `akademska_godina` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekat`
--

LOCK TABLES `projekat` WRITE;
/*!40000 ALTER TABLE `projekat` DISABLE KEYS */;
/*!40000 ALTER TABLE `projekat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekat_file`
--

DROP TABLE IF EXISTS `projekat_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekat_file` (
  `id` int(11) NOT NULL,
  `filename` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `revizija` tinyint(4) NOT NULL,
  `osoba` int(11) NOT NULL,
  `projekat` int(11) NOT NULL,
  `file` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekat_file`
--

LOCK TABLES `projekat_file` WRITE;
/*!40000 ALTER TABLE `projekat_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `projekat_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekat_file_diff`
--

DROP TABLE IF EXISTS `projekat_file_diff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekat_file_diff` (
  `file` int(11) NOT NULL,
  `diff` text COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekat_file_diff`
--

LOCK TABLES `projekat_file_diff` WRITE;
/*!40000 ALTER TABLE `projekat_file_diff` DISABLE KEYS */;
/*!40000 ALTER TABLE `projekat_file_diff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekat_link`
--

DROP TABLE IF EXISTS `projekat_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekat_link` (
  `id` int(11) NOT NULL,
  `naziv` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `opis` text COLLATE utf8_slovenian_ci NOT NULL,
  `projekat` int(11) NOT NULL,
  `osoba` int(11) NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekat_link`
--

LOCK TABLES `projekat_link` WRITE;
/*!40000 ALTER TABLE `projekat_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `projekat_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekat_rss`
--

DROP TABLE IF EXISTS `projekat_rss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projekat_rss` (
  `id` int(11) NOT NULL,
  `naziv` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `opis` text COLLATE utf8_slovenian_ci NOT NULL,
  `projekat` int(11) NOT NULL,
  `osoba` int(11) NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekat_rss`
--

LOCK TABLES `projekat_rss` WRITE;
/*!40000 ALTER TABLE `projekat_rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `projekat_rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promjena_odsjeka`
--

DROP TABLE IF EXISTS `promjena_odsjeka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promjena_odsjeka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `osoba` int(11) NOT NULL,
  `iz_odsjeka` int(11) NOT NULL,
  `u_odsjek` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promjena_odsjeka`
--

LOCK TABLES `promjena_odsjeka` WRITE;
/*!40000 ALTER TABLE `promjena_odsjeka` DISABLE KEYS */;
/*!40000 ALTER TABLE `promjena_odsjeka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promjena_podataka`
--

DROP TABLE IF EXISTS `promjena_podataka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promjena_podataka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `osoba` int(11) NOT NULL,
  `ime` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `prezime` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `imeoca` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `prezimeoca` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `imemajke` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `prezimemajke` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `spol` enum('M','Z','') COLLATE utf8_slovenian_ci NOT NULL,
  `brindexa` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `datum_rodjenja` date NOT NULL,
  `mjesto_rodjenja` int(11) NOT NULL,
  `nacionalnost` int(11) NOT NULL,
  `drzavljanstvo` int(11) NOT NULL,
  `boracke_kategorije` tinyint(1) NOT NULL,
  `jmbg` varchar(14) COLLATE utf8_slovenian_ci NOT NULL,
  `adresa` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `adresa_mjesto` int(11) NOT NULL,
  `telefon` varchar(15) COLLATE utf8_slovenian_ci NOT NULL,
  `kanton` int(11) NOT NULL,
  `strucni_stepen` int(11) NOT NULL DEFAULT '5',
  `naucni_stepen` int(11) NOT NULL DEFAULT '6',
  `slika` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `vrijeme_zahtjeva` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promjena_podataka`
--

LOCK TABLES `promjena_podataka` WRITE;
/*!40000 ALTER TABLE `promjena_podataka` DISABLE KEYS */;
/*!40000 ALTER TABLE `promjena_podataka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prosliciklus_ocjene`
--

DROP TABLE IF EXISTS `prosliciklus_ocjene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prosliciklus_ocjene` (
  `osoba` int(11) NOT NULL,
  `redni_broj` int(11) NOT NULL,
  `ocjena` tinyint(5) NOT NULL,
  `ects` float NOT NULL,
  PRIMARY KEY (`osoba`,`redni_broj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prosliciklus_ocjene`
--

LOCK TABLES `prosliciklus_ocjene` WRITE;
/*!40000 ALTER TABLE `prosliciklus_ocjene` DISABLE KEYS */;
/*!40000 ALTER TABLE `prosliciklus_ocjene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prosliciklus_uspjeh`
--

DROP TABLE IF EXISTS `prosliciklus_uspjeh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prosliciklus_uspjeh` (
  `osoba` int(11) NOT NULL,
  `fakultet` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `broj_semestara` int(11) NOT NULL,
  `opci_uspjeh` double NOT NULL,
  `dodatni_bodovi` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prosliciklus_uspjeh`
--

LOCK TABLES `prosliciklus_uspjeh` WRITE;
/*!40000 ALTER TABLE `prosliciklus_uspjeh` DISABLE KEYS */;
/*!40000 ALTER TABLE `prosliciklus_uspjeh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raspored`
--

DROP TABLE IF EXISTS `raspored`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raspored` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studij` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `semestar` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raspored`
--

LOCK TABLES `raspored` WRITE;
/*!40000 ALTER TABLE `raspored` DISABLE KEYS */;
/*!40000 ALTER TABLE `raspored` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raspored_sala`
--

DROP TABLE IF EXISTS `raspored_sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raspored_sala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `kapacitet` int(5) DEFAULT NULL,
  `tip` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raspored_sala`
--

LOCK TABLES `raspored_sala` WRITE;
/*!40000 ALTER TABLE `raspored_sala` DISABLE KEYS */;
/*!40000 ALTER TABLE `raspored_sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raspored_stavka`
--

DROP TABLE IF EXISTS `raspored_stavka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raspored_stavka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `raspored` int(11) NOT NULL,
  `dan_u_sedmici` tinyint(1) NOT NULL,
  `predmet` int(11) NOT NULL,
  `vrijeme_pocetak` int(11) NOT NULL,
  `vrijeme_kraj` int(11) NOT NULL,
  `sala` int(11) NOT NULL,
  `tip` varchar(1) CHARACTER SET latin1 NOT NULL DEFAULT 'P',
  `labgrupa` int(11) NOT NULL,
  `dupla` int(11) NOT NULL DEFAULT '0',
  `isjeckana` tinyint(1) NOT NULL DEFAULT '0',
  `fini_pocetak` time NOT NULL,
  `fini_kraj` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raspored_stavka`
--

LOCK TABLES `raspored_stavka` WRITE;
/*!40000 ALTER TABLE `raspored_stavka` DISABLE KEYS */;
/*!40000 ALTER TABLE `raspored_stavka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rss`
--

DROP TABLE IF EXISTS `rss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rss` (
  `id` varchar(15) COLLATE utf8_slovenian_ci NOT NULL,
  `auth` int(11) NOT NULL,
  `access` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rss`
--

LOCK TABLES `rss` WRITE;
/*!40000 ALTER TABLE `rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savjet_dana`
--

DROP TABLE IF EXISTS `savjet_dana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savjet_dana` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tekst` text COLLATE utf8_slovenian_ci NOT NULL,
  `vrsta_korisnika` enum('nastavnik','student','studentska','siteadmin') COLLATE utf8_slovenian_ci NOT NULL DEFAULT 'nastavnik',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savjet_dana`
--

LOCK TABLES `savjet_dana` WRITE;
/*!40000 ALTER TABLE `savjet_dana` DISABLE KEYS */;
/*!40000 ALTER TABLE `savjet_dana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `septembar`
--

DROP TABLE IF EXISTS `septembar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `septembar` (
  `student` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `predmet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `septembar`
--

LOCK TABLES `septembar` WRITE;
/*!40000 ALTER TABLE `septembar` DISABLE KEYS */;
/*!40000 ALTER TABLE `septembar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srednja_ocjene`
--

DROP TABLE IF EXISTS `srednja_ocjene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srednja_ocjene` (
  `osoba` int(11) NOT NULL,
  `razred` tinyint(4) NOT NULL,
  `redni_broj` int(1) NOT NULL,
  `ocjena` tinyint(5) NOT NULL,
  `tipocjene` tinyint(5) NOT NULL,
  PRIMARY KEY (`osoba`,`razred`,`redni_broj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srednja_ocjene`
--

LOCK TABLES `srednja_ocjene` WRITE;
/*!40000 ALTER TABLE `srednja_ocjene` DISABLE KEYS */;
/*!40000 ALTER TABLE `srednja_ocjene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srednja_skola`
--

DROP TABLE IF EXISTS `srednja_skola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srednja_skola` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `opcina` int(11) NOT NULL,
  `domaca` tinyint(1) NOT NULL DEFAULT '1',
  `tipskole` enum('GIMNAZIJA','ELEKTROTEHNICKA','TEHNICKA','STRUCNA','MSS','ZANAT') COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srednja_skola`
--

LOCK TABLES `srednja_skola` WRITE;
/*!40000 ALTER TABLE `srednja_skola` DISABLE KEYS */;
/*!40000 ALTER TABLE `srednja_skola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stdin`
--

DROP TABLE IF EXISTS `stdin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stdin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zadaca` bigint(20) NOT NULL DEFAULT '0',
  `redni_broj` int(11) NOT NULL DEFAULT '0',
  `ulaz` text COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stdin`
--

LOCK TABLES `stdin` WRITE;
/*!40000 ALTER TABLE `stdin` DISABLE KEYS */;
/*!40000 ALTER TABLE `stdin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strucni_stepen`
--

DROP TABLE IF EXISTS `strucni_stepen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strucni_stepen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `titula` varchar(15) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strucni_stepen`
--

LOCK TABLES `strucni_stepen` WRITE;
/*!40000 ALTER TABLE `strucni_stepen` DISABLE KEYS */;
INSERT INTO `strucni_stepen` VALUES (1,'Magistar elektrotehnike - Diplomirani inženjer elektrotehnike','M.E.'),(2,'Bakalaureat elektrotehnike - Inženjer elektrotehnike','B.E.'),(3,'Diplomirani inženjer elektrotehnike','dipl.ing.el.'),(4,'Diplomirani matematičar','dipl.mat.'),(5,'Srednja stručna sprema',''),(6,'Diplomirani inženjer mašinstva','dipl.ing.'),(7,'Diplomirani inženjer građevinarstva','dipl.ing.'),(8,'Diplomirani ekonomista','dipl.ecc.'),(9,'Diplomirani fizičar','dipl.fiz.');
/*!40000 ALTER TABLE `strucni_stepen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_ispit_termin`
--

DROP TABLE IF EXISTS `student_ispit_termin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_ispit_termin` (
  `student` int(11) NOT NULL,
  `ispit_termin` int(11) NOT NULL,
  PRIMARY KEY (`student`,`ispit_termin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_ispit_termin`
--

LOCK TABLES `student_ispit_termin` WRITE;
/*!40000 ALTER TABLE `student_ispit_termin` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_ispit_termin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_labgrupa`
--

DROP TABLE IF EXISTS `student_labgrupa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_labgrupa` (
  `student` int(11) NOT NULL DEFAULT '0',
  `labgrupa` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`student`,`labgrupa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_labgrupa`
--

LOCK TABLES `student_labgrupa` WRITE;
/*!40000 ALTER TABLE `student_labgrupa` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_labgrupa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_predmet`
--

DROP TABLE IF EXISTS `student_predmet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_predmet` (
  `student` int(11) NOT NULL,
  `predmet` int(11) NOT NULL,
  PRIMARY KEY (`student`,`predmet`),
  KEY `student_predmet_ibfk_2` (`predmet`),
  CONSTRAINT `student_predmet_ibfk_1` FOREIGN KEY (`student`) REFERENCES `student_studij` (`student`),
  CONSTRAINT `student_predmet_ibfk_2` FOREIGN KEY (`predmet`) REFERENCES `predmet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_predmet`
--

LOCK TABLES `student_predmet` WRITE;
/*!40000 ALTER TABLE `student_predmet` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_predmet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_projekat`
--

DROP TABLE IF EXISTS `student_projekat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_projekat` (
  `student` int(11) NOT NULL,
  `projekat` int(11) NOT NULL,
  PRIMARY KEY (`student`,`projekat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_projekat`
--

LOCK TABLES `student_projekat` WRITE;
/*!40000 ALTER TABLE `student_projekat` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_projekat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_studij`
--

DROP TABLE IF EXISTS `student_studij`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_studij` (
  `student` int(11) NOT NULL,
  `semestar` int(3) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `nacin_studiranja` int(11) NOT NULL,
  `ponovac` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`student`,`semestar`,`akademska_godina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_studij`
--

LOCK TABLES `student_studij` WRITE;
/*!40000 ALTER TABLE `student_studij` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_studij` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentski_modul`
--

DROP TABLE IF EXISTS `studentski_modul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentski_modul` (
  `id` int(11) NOT NULL,
  `modul` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `gui_naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `novi_prozor` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentski_modul`
--

LOCK TABLES `studentski_modul` WRITE;
/*!40000 ALTER TABLE `studentski_modul` DISABLE KEYS */;
INSERT INTO `studentski_modul` VALUES (1,'student/moodle','Materijali (Moodle)',1),(2,'student/zadaca','Slanje zadaće',0),(3,'izvjestaj/predmet','Dnevnik',1),(4,'student/projekti','Projekti',0);
/*!40000 ALTER TABLE `studentski_modul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentski_modul_predmet`
--

DROP TABLE IF EXISTS `studentski_modul_predmet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentski_modul_predmet` (
  `predmet` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `studentski_modul` int(11) NOT NULL,
  `aktivan` tinyint(1) NOT NULL,
  PRIMARY KEY (`predmet`,`akademska_godina`,`studentski_modul`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentski_modul_predmet`
--

LOCK TABLES `studentski_modul_predmet` WRITE;
/*!40000 ALTER TABLE `studentski_modul_predmet` DISABLE KEYS */;
/*!40000 ALTER TABLE `studentski_modul_predmet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studij`
--

DROP TABLE IF EXISTS `studij`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studij` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `zavrsni_semestar` int(11) NOT NULL DEFAULT '0',
  `institucija` int(11) NOT NULL DEFAULT '0',
  `kratkinaziv` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `moguc_upis` tinyint(1) NOT NULL,
  `tipstudija` int(11) NOT NULL,
  `preduslov` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studij`
--

LOCK TABLES `studij` WRITE;
/*!40000 ALTER TABLE `studij` DISABLE KEYS */;
INSERT INTO `studij` VALUES (1,'Računarstvo i informatika (BSc)',6,2,'RI',1,1,1),(2,'Automatika i elektronika (BSc)',6,3,'AE',1,1,1),(3,'Elektroenergetika (BSc)',6,4,'EE',1,1,1),(4,'Telekomunikacije (BSc)',6,5,'TK',1,1,1);
/*!40000 ALTER TABLE `studij` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrha_potvrde`
--

DROP TABLE IF EXISTS `svrha_potvrde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrha_potvrde` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrha_potvrde`
--

LOCK TABLES `svrha_potvrde` WRITE;
/*!40000 ALTER TABLE `svrha_potvrde` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrha_potvrde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_potvrde`
--

DROP TABLE IF EXISTS `tip_potvrde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tip_potvrde` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) COLLATE utf8_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_potvrde`
--

LOCK TABLES `tip_potvrde` WRITE;
/*!40000 ALTER TABLE `tip_potvrde` DISABLE KEYS */;
/*!40000 ALTER TABLE `tip_potvrde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipkomponente`
--

DROP TABLE IF EXISTS `tipkomponente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipkomponente` (
  `id` int(11) NOT NULL,
  `naziv` varchar(20) COLLATE utf8_slovenian_ci NOT NULL,
  `opis_opcija` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipkomponente`
--

LOCK TABLES `tipkomponente` WRITE;
/*!40000 ALTER TABLE `tipkomponente` DISABLE KEYS */;
INSERT INTO `tipkomponente` VALUES (1,'Ispit',''),(2,'Integralni ispit','Ispiti koje zamjenjuje (razdvojeni sa +)'),(3,'Zadace',''),(4,'Prisustvo','Minimalan broj izostanaka (0=linearno)'),(5,'Fiksna','');
/*!40000 ALTER TABLE `tipkomponente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tippredmeta`
--

DROP TABLE IF EXISTS `tippredmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tippredmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(60) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2001 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tippredmeta`
--

LOCK TABLES `tippredmeta` WRITE;
/*!40000 ALTER TABLE `tippredmeta` DISABLE KEYS */;
INSERT INTO `tippredmeta` VALUES (1,'ETF Bologna standard'),(1000,'Završni rad'),(2000,'Kolokvij');
/*!40000 ALTER TABLE `tippredmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tippredmeta_komponenta`
--

DROP TABLE IF EXISTS `tippredmeta_komponenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tippredmeta_komponenta` (
  `tippredmeta` int(11) NOT NULL,
  `komponenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tippredmeta_komponenta`
--

LOCK TABLES `tippredmeta_komponenta` WRITE;
/*!40000 ALTER TABLE `tippredmeta_komponenta` DISABLE KEYS */;
INSERT INTO `tippredmeta_komponenta` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6);
/*!40000 ALTER TABLE `tippredmeta_komponenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipstudija`
--

DROP TABLE IF EXISTS `tipstudija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipstudija` (
  `id` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `ciklus` tinyint(2) NOT NULL,
  `trajanje` tinyint(3) NOT NULL,
  `moguc_upis` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipstudija`
--

LOCK TABLES `tipstudija` WRITE;
/*!40000 ALTER TABLE `tipstudija` DISABLE KEYS */;
INSERT INTO `tipstudija` VALUES (1,'Bakalaureat',1,6,1),(2,'Master',2,4,1),(3,'Doktorski studij',3,6,1);
/*!40000 ALTER TABLE `tipstudija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ugovoroucenju`
--

DROP TABLE IF EXISTS `ugovoroucenju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ugovoroucenju` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `studij` int(11) NOT NULL,
  `semestar` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ugovoroucenju`
--

LOCK TABLES `ugovoroucenju` WRITE;
/*!40000 ALTER TABLE `ugovoroucenju` DISABLE KEYS */;
/*!40000 ALTER TABLE `ugovoroucenju` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ugovoroucenju_izborni`
--

DROP TABLE IF EXISTS `ugovoroucenju_izborni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ugovoroucenju_izborni` (
  `ugovoroucenju` int(11) NOT NULL,
  `predmet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ugovoroucenju_izborni`
--

LOCK TABLES `ugovoroucenju_izborni` WRITE;
/*!40000 ALTER TABLE `ugovoroucenju_izborni` DISABLE KEYS */;
/*!40000 ALTER TABLE `ugovoroucenju_izborni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ugovoroucenju_kapacitet`
--

DROP TABLE IF EXISTS `ugovoroucenju_kapacitet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ugovoroucenju_kapacitet` (
  `predmet` int(11) NOT NULL,
  `akademska_godina` int(11) NOT NULL,
  `kapacitet` int(11) NOT NULL DEFAULT '0',
  `kapacitet_ekstra` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ugovoroucenju_kapacitet`
--

LOCK TABLES `ugovoroucenju_kapacitet` WRITE;
/*!40000 ALTER TABLE `ugovoroucenju_kapacitet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ugovoroucenju_kapacitet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upis_kriterij`
--

DROP TABLE IF EXISTS `upis_kriterij`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upis_kriterij` (
  `prijemni_termin` int(11) NOT NULL AUTO_INCREMENT,
  `donja_granica` float NOT NULL,
  `gornja_granica` float NOT NULL,
  `kandidati_strani` int(5) NOT NULL,
  `kandidati_sami_placaju` int(5) NOT NULL,
  `kandidati_kanton_placa` int(5) NOT NULL,
  `kandidati_vanredni` int(5) NOT NULL,
  `prijemni_max` int(5) NOT NULL,
  `studij` int(11) NOT NULL,
  PRIMARY KEY (`prijemni_termin`,`studij`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci COMMENT='Tabela za pohranu kriterija za upis';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upis_kriterij`
--

LOCK TABLES `upis_kriterij` WRITE;
/*!40000 ALTER TABLE `upis_kriterij` DISABLE KEYS */;
/*!40000 ALTER TABLE `upis_kriterij` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uspjeh_u_srednjoj`
--

DROP TABLE IF EXISTS `uspjeh_u_srednjoj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uspjeh_u_srednjoj` (
  `osoba` int(11) NOT NULL,
  `srednja_skola` int(11) NOT NULL,
  `godina` int(11) NOT NULL,
  `opci_uspjeh` double NOT NULL,
  `kljucni_predmeti` double NOT NULL,
  `dodatni_bodovi` double NOT NULL,
  `ucenik_generacije` tinyint(1) NOT NULL,
  PRIMARY KEY (`osoba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uspjeh_u_srednjoj`
--

LOCK TABLES `uspjeh_u_srednjoj` WRITE;
/*!40000 ALTER TABLE `uspjeh_u_srednjoj` DISABLE KEYS */;
/*!40000 ALTER TABLE `uspjeh_u_srednjoj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zadaca`
--

DROP TABLE IF EXISTS `zadaca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zadaca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `predmet` int(11) NOT NULL DEFAULT '0',
  `akademska_godina` int(11) NOT NULL DEFAULT '0',
  `zadataka` tinyint(4) NOT NULL DEFAULT '0',
  `bodova` float NOT NULL DEFAULT '0',
  `rok` datetime DEFAULT NULL,
  `aktivna` tinyint(1) NOT NULL DEFAULT '0',
  `programskijezik` int(10) NOT NULL DEFAULT '0',
  `automatsko_testiranje` tinyint(1) NOT NULL DEFAULT '0',
  `attachment` tinyint(1) NOT NULL DEFAULT '0',
  `dozvoljene_ekstenzije` varchar(255) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `postavka_zadace` varchar(255) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `komponenta` int(11) NOT NULL,
  `vrijemeobjave` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `readonly` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zadaca`
--

LOCK TABLES `zadaca` WRITE;
/*!40000 ALTER TABLE `zadaca` DISABLE KEYS */;
/*!40000 ALTER TABLE `zadaca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zadatak`
--

DROP TABLE IF EXISTS `zadatak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zadatak` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `zadaca` int(11) NOT NULL DEFAULT '0',
  `redni_broj` int(11) NOT NULL DEFAULT '0',
  `student` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `bodova` float NOT NULL DEFAULT '0',
  `izvjestaj_skripte` text COLLATE utf8_slovenian_ci NOT NULL,
  `vrijeme` datetime DEFAULT NULL,
  `komentar` text COLLATE utf8_slovenian_ci NOT NULL,
  `filename` varchar(200) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uobicajen` (`zadaca`,`redni_broj`,`student`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zadatak`
--

LOCK TABLES `zadatak` WRITE;
/*!40000 ALTER TABLE `zadatak` DISABLE KEYS */;
/*!40000 ALTER TABLE `zadatak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zadatakdiff`
--

DROP TABLE IF EXISTS `zadatakdiff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zadatakdiff` (
  `zadatak` bigint(11) NOT NULL DEFAULT '0',
  `diff` text COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`zadatak`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zadatakdiff`
--

LOCK TABLES `zadatakdiff` WRITE;
/*!40000 ALTER TABLE `zadatakdiff` DISABLE KEYS */;
/*!40000 ALTER TABLE `zadatakdiff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zahtjev_za_potvrdu`
--

DROP TABLE IF EXISTS `zahtjev_za_potvrdu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zahtjev_za_potvrdu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` int(11) DEFAULT NULL,
  `tip_potvrde` int(11) DEFAULT NULL,
  `svrha_potvrde` int(11) DEFAULT NULL,
  `datum_zahtjeva` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zahtjev_za_potvrdu`
--

LOCK TABLES `zahtjev_za_potvrdu` WRITE;
/*!40000 ALTER TABLE `zahtjev_za_potvrdu` DISABLE KEYS */;
/*!40000 ALTER TABLE `zahtjev_za_potvrdu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zavrsni`
--

DROP TABLE IF EXISTS `zavrsni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zavrsni` (
  `id` int(11) NOT NULL,
  `naslov` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `podnaslov` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `predmet` int(11) NOT NULL,
  `rad_na_predmetu` int(11) NOT NULL,
  `akademska_godina` varchar(10) COLLATE utf8_slovenian_ci NOT NULL DEFAULT '0',
  `kratki_pregled` text COLLATE utf8_slovenian_ci NOT NULL,
  `literatura` text COLLATE utf8_slovenian_ci NOT NULL,
  `sazetak` text COLLATE utf8_slovenian_ci NOT NULL,
  `summary` text COLLATE utf8_slovenian_ci NOT NULL,
  `mentor` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `kandidat_potvrdjen` tinyint(4) NOT NULL,
  `biljeska` text COLLATE utf8_slovenian_ci NOT NULL,
  `predsjednik_komisije` int(11) NOT NULL,
  `clan_komisije` int(11) NOT NULL,
  `termin_odbrane` datetime NOT NULL,
  `broj_diplome` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `tema_odobrena` tinyint(4) NOT NULL DEFAULT '0',
  `sala` varchar(20) COLLATE utf8_slovenian_ci NOT NULL,
  `odluka` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zavrsni`
--

LOCK TABLES `zavrsni` WRITE;
/*!40000 ALTER TABLE `zavrsni` DISABLE KEYS */;
/*!40000 ALTER TABLE `zavrsni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zavrsni_bb_post`
--

DROP TABLE IF EXISTS `zavrsni_bb_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zavrsni_bb_post` (
  `id` int(11) NOT NULL,
  `naslov` varchar(300) COLLATE utf8_slovenian_ci NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `osoba` int(11) NOT NULL,
  `tema` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zavrsni_bb_post`
--

LOCK TABLES `zavrsni_bb_post` WRITE;
/*!40000 ALTER TABLE `zavrsni_bb_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `zavrsni_bb_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zavrsni_bb_post_text`
--

DROP TABLE IF EXISTS `zavrsni_bb_post_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zavrsni_bb_post_text` (
  `post` int(11) NOT NULL,
  `tekst` text COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zavrsni_bb_post_text`
--

LOCK TABLES `zavrsni_bb_post_text` WRITE;
/*!40000 ALTER TABLE `zavrsni_bb_post_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `zavrsni_bb_post_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zavrsni_bb_tema`
--

DROP TABLE IF EXISTS `zavrsni_bb_tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zavrsni_bb_tema` (
  `id` int(11) NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prvi_post` int(11) NOT NULL DEFAULT '0',
  `zadnji_post` int(11) NOT NULL DEFAULT '0',
  `pregleda` int(11) unsigned NOT NULL DEFAULT '0',
  `osoba` int(11) NOT NULL,
  `zavrsni` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zavrsni_bb_tema`
--

LOCK TABLES `zavrsni_bb_tema` WRITE;
/*!40000 ALTER TABLE `zavrsni_bb_tema` DISABLE KEYS */;
/*!40000 ALTER TABLE `zavrsni_bb_tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zavrsni_file`
--

DROP TABLE IF EXISTS `zavrsni_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zavrsni_file` (
  `id` int(11) NOT NULL,
  `filename` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `vrijeme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `revizija` tinyint(4) NOT NULL,
  `osoba` int(11) NOT NULL,
  `zavrsni` int(11) NOT NULL,
  `file` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zavrsni_file`
--

LOCK TABLES `zavrsni_file` WRITE;
/*!40000 ALTER TABLE `zavrsni_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `zavrsni_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zavrsni_file_diff`
--

DROP TABLE IF EXISTS `zavrsni_file_diff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zavrsni_file_diff` (
  `file` int(11) NOT NULL,
  `diff` text COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zavrsni_file_diff`
--

LOCK TABLES `zavrsni_file_diff` WRITE;
/*!40000 ALTER TABLE `zavrsni_file_diff` DISABLE KEYS */;
/*!40000 ALTER TABLE `zavrsni_file_diff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zavrsni_rad_predmet`
--

DROP TABLE IF EXISTS `zavrsni_rad_predmet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zavrsni_rad_predmet` (
  `id` int(11) NOT NULL,
  `naziv` varchar(11) COLLATE utf8_slovenian_ci NOT NULL DEFAULT 'Završni rad',
  `predmet` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `akademska_godina` varchar(9) COLLATE utf8_slovenian_ci NOT NULL,
  `student` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `nastavnik` varchar(100) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zavrsni_rad_predmet`
--

LOCK TABLES `zavrsni_rad_predmet` WRITE;
/*!40000 ALTER TABLE `zavrsni_rad_predmet` DISABLE KEYS */;
/*!40000 ALTER TABLE `zavrsni_rad_predmet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zvanje`
--

DROP TABLE IF EXISTS `zvanje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zvanje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `titula` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zvanje`
--

LOCK TABLES `zvanje` WRITE;
/*!40000 ALTER TABLE `zvanje` DISABLE KEYS */;
/*!40000 ALTER TABLE `zvanje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'zamger'
--

--
-- Dumping routines for database 'zamger'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-27 20:42:37