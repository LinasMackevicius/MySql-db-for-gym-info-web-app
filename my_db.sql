-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `administracija`
--

DROP TABLE IF EXISTS `administracija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administracija` (
  `administracijos_id` int NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(45) DEFAULT NULL,
  `sporto_klubas_sporto_klubo_id` int NOT NULL,
  PRIMARY KEY (`administracijos_id`),
  KEY `fk_administracija_sporto_klubas1_idx` (`sporto_klubas_sporto_klubo_id`),
  CONSTRAINT `fk_administracija_sporto_klubas1` FOREIGN KEY (`sporto_klubas_sporto_klubo_id`) REFERENCES `sporto_klubas` (`sporto_klubo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administracija`
--

LOCK TABLES `administracija` WRITE;
/*!40000 ALTER TABLE `administracija` DISABLE KEYS */;
/*!40000 ALTER TABLE `administracija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asmen_treniruotes_laikas`
--

DROP TABLE IF EXISTS `asmen_treniruotes_laikas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asmen_treniruotes_laikas` (
  `kliento_asmenine_tren_laiko_id` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `pradzios_laikas` varchar(45) DEFAULT NULL,
  `pabaigos_laikas` varchar(45) DEFAULT NULL,
  `kliento_asmenine_tren_id` int NOT NULL,
  PRIMARY KEY (`kliento_asmenine_tren_laiko_id`),
  KEY `fk_asmen_treniruotes_laikas_kliento_asmenine_treniruote1_idx` (`kliento_asmenine_tren_id`),
  CONSTRAINT `fk_asmen_treniruotes_laikas_kliento_asmenine_treniruote1` FOREIGN KEY (`kliento_asmenine_tren_id`) REFERENCES `kliento_asmenine_treniruote` (`kliento_asmenine_tren_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asmen_treniruotes_laikas`
--

LOCK TABLES `asmen_treniruotes_laikas` WRITE;
/*!40000 ALTER TABLE `asmen_treniruotes_laikas` DISABLE KEYS */;
/*!40000 ALTER TABLE `asmen_treniruotes_laikas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asmenine_treniruote`
--

DROP TABLE IF EXISTS `asmenine_treniruote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asmenine_treniruote` (
  `asmen_treniruotes_id` int NOT NULL AUTO_INCREMENT,
  `tipas` varchar(45) DEFAULT NULL,
  `sporto_klubo_id` int NOT NULL,
  PRIMARY KEY (`asmen_treniruotes_id`),
  KEY `fk_asmenine_treniruote_sporto_klubas1_idx` (`sporto_klubo_id`),
  CONSTRAINT `fk_asmenine_treniruote_sporto_klubas1` FOREIGN KEY (`sporto_klubo_id`) REFERENCES `sporto_klubas` (`sporto_klubo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asmenine_treniruote`
--

LOCK TABLES `asmenine_treniruote` WRITE;
/*!40000 ALTER TABLE `asmenine_treniruote` DISABLE KEYS */;
/*!40000 ALTER TABLE `asmenine_treniruote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asmeniniai_duomenys`
--

DROP TABLE IF EXISTS `asmeniniai_duomenys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asmeniniai_duomenys` (
  `asmeniniai_duomenys_id` int NOT NULL AUTO_INCREMENT,
  `tel.nr` varchar(45) DEFAULT NULL,
  `el.pastas` varchar(45) DEFAULT NULL,
  `lytis` varchar(45) DEFAULT NULL,
  `gimimo_data` varchar(45) DEFAULT NULL,
  `banko_saskaitos_nr` varchar(45) DEFAULT NULL,
  `kliento_id` int NOT NULL,
  PRIMARY KEY (`asmeniniai_duomenys_id`,`kliento_id`),
  KEY `fk_asmeniniai_duomenys_klientas1_idx` (`kliento_id`),
  CONSTRAINT `fk_asmeniniai_duomenys_klientas1` FOREIGN KEY (`kliento_id`) REFERENCES `klientas` (`kliento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asmeniniai_duomenys`
--

LOCK TABLES `asmeniniai_duomenys` WRITE;
/*!40000 ALTER TABLE `asmeniniai_duomenys` DISABLE KEYS */;
/*!40000 ALTER TABLE `asmeniniai_duomenys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asmeninis_treneris`
--

DROP TABLE IF EXISTS `asmeninis_treneris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asmeninis_treneris` (
  `trenerio_id` int NOT NULL AUTO_INCREMENT,
  `vardas` varchar(45) DEFAULT NULL,
  `pavarde` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`trenerio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asmeninis_treneris`
--

LOCK TABLES `asmeninis_treneris` WRITE;
/*!40000 ALTER TABLE `asmeninis_treneris` DISABLE KEYS */;
/*!40000 ALTER TABLE `asmeninis_treneris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `darbo_laikas`
--

DROP TABLE IF EXISTS `darbo_laikas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `darbo_laikas` (
  `darbo_laiko_id` int NOT NULL AUTO_INCREMENT,
  `sav_diena` varchar(45) DEFAULT NULL,
  `darbo_pradzios_laikas` double DEFAULT NULL,
  `darbo_pabaigos_laikas` double DEFAULT NULL,
  `administracijos_id` int NOT NULL,
  PRIMARY KEY (`darbo_laiko_id`),
  KEY `fk_darbo_laikas_administracija1_idx` (`administracijos_id`),
  CONSTRAINT `fk_darbo_laikas_administracija1` FOREIGN KEY (`administracijos_id`) REFERENCES `administracija` (`administracijos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `darbo_laikas`
--

LOCK TABLES `darbo_laikas` WRITE;
/*!40000 ALTER TABLE `darbo_laikas` DISABLE KEYS */;
/*!40000 ALTER TABLE `darbo_laikas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `darbuotojas`
--

DROP TABLE IF EXISTS `darbuotojas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `darbuotojas` (
  `darbuotojo_id` int NOT NULL AUTO_INCREMENT,
  `vardas` varchar(45) DEFAULT NULL,
  `pavarde` varchar(45) DEFAULT NULL,
  `sporto_klubo_id` int NOT NULL,
  `vartotojo_id` int NOT NULL,
  PRIMARY KEY (`darbuotojo_id`),
  KEY `fk_darbuotojas_sporto_klubas1_idx` (`sporto_klubo_id`),
  KEY `fk_darbuotojas_vartotojas1_idx` (`vartotojo_id`),
  CONSTRAINT `fk_darbuotojas_sporto_klubas1` FOREIGN KEY (`sporto_klubo_id`) REFERENCES `sporto_klubas` (`sporto_klubo_id`),
  CONSTRAINT `fk_darbuotojas_vartotojas1` FOREIGN KEY (`vartotojo_id`) REFERENCES `vartotojas` (`vartotojo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `darbuotojas`
--

LOCK TABLES `darbuotojas` WRITE;
/*!40000 ALTER TABLE `darbuotojas` DISABLE KEYS */;
/*!40000 ALTER TABLE `darbuotojas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `darbuotojo_pareiga`
--

DROP TABLE IF EXISTS `darbuotojo_pareiga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `darbuotojo_pareiga` (
  `darbuotojo_pareigos_id` int NOT NULL,
  `pareigos_id` int NOT NULL,
  `darbuotojo_id` int NOT NULL,
  PRIMARY KEY (`darbuotojo_pareigos_id`),
  KEY `fk_darbuotojo_pareiga_pareiga1_idx` (`pareigos_id`),
  KEY `fk_darbuotojo_pareiga_darbuotojas1_idx` (`darbuotojo_id`),
  CONSTRAINT `fk_darbuotojo_pareiga_darbuotojas1` FOREIGN KEY (`darbuotojo_id`) REFERENCES `darbuotojas` (`darbuotojo_id`),
  CONSTRAINT `fk_darbuotojo_pareiga_pareiga1` FOREIGN KEY (`pareigos_id`) REFERENCES `pareiga` (`pareigos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `darbuotojo_pareiga`
--

LOCK TABLES `darbuotojo_pareiga` WRITE;
/*!40000 ALTER TABLE `darbuotojo_pareiga` DISABLE KEYS */;
/*!40000 ALTER TABLE `darbuotojo_pareiga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dietologas`
--

DROP TABLE IF EXISTS `dietologas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dietologas` (
  `dietologo_id` int NOT NULL AUTO_INCREMENT,
  `vardas` varchar(45) DEFAULT NULL,
  `pavarde` varchar(45) DEFAULT NULL,
  `sporto_klubo_id` int NOT NULL,
  PRIMARY KEY (`dietologo_id`),
  KEY `fk_dietologas_sporto_klubas1_idx` (`sporto_klubo_id`),
  CONSTRAINT `fk_dietologas_sporto_klubas1` FOREIGN KEY (`sporto_klubo_id`) REFERENCES `sporto_klubas` (`sporto_klubo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dietologas`
--

LOCK TABLES `dietologas` WRITE;
/*!40000 ALTER TABLE `dietologas` DISABLE KEYS */;
/*!40000 ALTER TABLE `dietologas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_pastas`
--

DROP TABLE IF EXISTS `el_pastas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `el_pastas` (
  `el_pasto_id` int NOT NULL AUTO_INCREMENT,
  `adresas` varchar(45) DEFAULT NULL,
  `administracijos_id` int NOT NULL,
  PRIMARY KEY (`el_pasto_id`),
  KEY `fk_el_pastas_administracija1_idx` (`administracijos_id`),
  CONSTRAINT `fk_el_pastas_administracija1` FOREIGN KEY (`administracijos_id`) REFERENCES `administracija` (`administracijos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_pastas`
--

LOCK TABLES `el_pastas` WRITE;
/*!40000 ALTER TABLE `el_pastas` DISABLE KEYS */;
/*!40000 ALTER TABLE `el_pastas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fiziniai_duomenys`
--

DROP TABLE IF EXISTS `fiziniai_duomenys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fiziniai_duomenys` (
  `fiziniai_duomenys_id` int NOT NULL AUTO_INCREMENT,
  `ugis_cm` int DEFAULT NULL,
  `svoris_kg` int DEFAULT NULL,
  `traumos` varchar(45) DEFAULT NULL,
  `kliento_id` int NOT NULL,
  PRIMARY KEY (`fiziniai_duomenys_id`),
  KEY `fk_fiziniai_duomenys_klientas1_idx` (`kliento_id`),
  CONSTRAINT `fk_fiziniai_duomenys_klientas1` FOREIGN KEY (`kliento_id`) REFERENCES `klientas` (`kliento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fiziniai_duomenys`
--

LOCK TABLES `fiziniai_duomenys` WRITE;
/*!40000 ALTER TABLE `fiziniai_duomenys` DISABLE KEYS */;
/*!40000 ALTER TABLE `fiziniai_duomenys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupine_treniruote`
--

DROP TABLE IF EXISTS `grupine_treniruote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupine_treniruote` (
  `grup_treniruotes_id` int NOT NULL AUTO_INCREMENT,
  `treniruotes_pavadinimas` varchar(45) DEFAULT NULL,
  `max_dalyviu_skaicius` varchar(45) DEFAULT NULL,
  `sporto_klubo_id` int NOT NULL,
  PRIMARY KEY (`grup_treniruotes_id`),
  KEY `fk_grupine_treniruote_sporto_klubas1_idx` (`sporto_klubo_id`),
  CONSTRAINT `fk_grupine_treniruote_sporto_klubas1` FOREIGN KEY (`sporto_klubo_id`) REFERENCES `sporto_klubas` (`sporto_klubo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupine_treniruote`
--

LOCK TABLES `grupine_treniruote` WRITE;
/*!40000 ALTER TABLE `grupine_treniruote` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupine_treniruote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupines_treniruotes_laikas`
--

DROP TABLE IF EXISTS `grupines_treniruotes_laikas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupines_treniruotes_laikas` (
  `grup_tren_laiko_id` int NOT NULL AUTO_INCREMENT,
  `kliento_grup_treniruotes_id` int NOT NULL,
  `data` date DEFAULT NULL,
  `pradzios_laikas` double DEFAULT NULL,
  `pabaigos_laikas` double DEFAULT NULL,
  PRIMARY KEY (`grup_tren_laiko_id`),
  KEY `fk_grupines_treniruotes_laikas_kliento_grupine_treniruote1_idx` (`kliento_grup_treniruotes_id`),
  CONSTRAINT `fk_grupines_treniruotes_laikas_kliento_grupine_treniruote1` FOREIGN KEY (`kliento_grup_treniruotes_id`) REFERENCES `kliento_grupine_treniruote` (`kliento_grup_treniruotes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupines_treniruotes_laikas`
--

LOCK TABLES `grupines_treniruotes_laikas` WRITE;
/*!40000 ALTER TABLE `grupines_treniruotes_laikas` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupines_treniruotes_laikas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupiniu_treniruočių_treneris`
--

DROP TABLE IF EXISTS `grupiniu_treniruočių_treneris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupiniu_treniruočių_treneris` (
  `grup_trenerio_id` int NOT NULL AUTO_INCREMENT,
  `vardas` varchar(45) DEFAULT NULL,
  `pavarde` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`grup_trenerio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupiniu_treniruočių_treneris`
--

LOCK TABLES `grupiniu_treniruočių_treneris` WRITE;
/*!40000 ALTER TABLE `grupiniu_treniruočių_treneris` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupiniu_treniruočių_treneris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingridientas`
--

DROP TABLE IF EXISTS `ingridientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingridientas` (
  `ingridiento_id` int NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ingridiento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingridientas`
--

LOCK TABLES `ingridientas` WRITE;
/*!40000 ALTER TABLE `ingridientas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingridientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventorius`
--

DROP TABLE IF EXISTS `inventorius`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventorius` (
  `inventoriaus_id` int NOT NULL AUTO_INCREMENT,
  `kodas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`inventoriaus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventorius`
--

LOCK TABLES `inventorius` WRITE;
/*!40000 ALTER TABLE `inventorius` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventorius` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klientas`
--

DROP TABLE IF EXISTS `klientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klientas` (
  `kliento_id` int NOT NULL AUTO_INCREMENT,
  `vardas` varchar(45) DEFAULT NULL,
  `pavarde` varchar(45) DEFAULT NULL,
  `asmens_kodas` char(11) DEFAULT NULL,
  `vartotojo_id` int NOT NULL,
  PRIMARY KEY (`kliento_id`),
  KEY `fk_klientas_vartotojas1_idx` (`vartotojo_id`),
  CONSTRAINT `fk_klientas_vartotojas1` FOREIGN KEY (`vartotojo_id`) REFERENCES `vartotojas` (`vartotojo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klientas`
--

LOCK TABLES `klientas` WRITE;
/*!40000 ALTER TABLE `klientas` DISABLE KEYS */;
/*!40000 ALTER TABLE `klientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kliento_abonementas`
--

DROP TABLE IF EXISTS `kliento_abonementas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kliento_abonementas` (
  `kliento_abonemento_id` int NOT NULL AUTO_INCREMENT,
  `galiojimo_pradzia` date DEFAULT NULL,
  `galiojimo_pabaiga` date DEFAULT NULL,
  `kliento_id` int NOT NULL,
  `narystes_id` int NOT NULL,
  PRIMARY KEY (`kliento_abonemento_id`,`kliento_id`),
  KEY `fk_kliento_abonementas_klientas1_idx` (`kliento_id`),
  KEY `fk_kliento_abonementas_naryste1_idx` (`narystes_id`),
  CONSTRAINT `fk_kliento_abonementas_klientas1` FOREIGN KEY (`kliento_id`) REFERENCES `klientas` (`kliento_id`),
  CONSTRAINT `fk_kliento_abonementas_naryste1` FOREIGN KEY (`narystes_id`) REFERENCES `naryste` (`narystes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kliento_abonementas`
--

LOCK TABLES `kliento_abonementas` WRITE;
/*!40000 ALTER TABLE `kliento_abonementas` DISABLE KEYS */;
/*!40000 ALTER TABLE `kliento_abonementas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kliento_asmen_treneris`
--

DROP TABLE IF EXISTS `kliento_asmen_treneris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kliento_asmen_treneris` (
  `kliento_asmen_trenerio_id` int NOT NULL AUTO_INCREMENT,
  `kliento_asmenine_tren_id` int NOT NULL,
  `trenerio_id` int NOT NULL,
  PRIMARY KEY (`kliento_asmen_trenerio_id`,`kliento_asmenine_tren_id`,`trenerio_id`),
  KEY `fk_kliento_asmen_treneris_kliento_asmenine_treniruote1_idx` (`kliento_asmenine_tren_id`),
  KEY `fk_kliento_asmen_treneris_asmeninis_treneris1_idx` (`trenerio_id`),
  CONSTRAINT `fk_kliento_asmen_treneris_asmeninis_treneris1` FOREIGN KEY (`trenerio_id`) REFERENCES `asmeninis_treneris` (`trenerio_id`),
  CONSTRAINT `fk_kliento_asmen_treneris_kliento_asmenine_treniruote1` FOREIGN KEY (`kliento_asmenine_tren_id`) REFERENCES `kliento_asmenine_treniruote` (`kliento_asmenine_tren_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kliento_asmen_treneris`
--

LOCK TABLES `kliento_asmen_treneris` WRITE;
/*!40000 ALTER TABLE `kliento_asmen_treneris` DISABLE KEYS */;
/*!40000 ALTER TABLE `kliento_asmen_treneris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kliento_asmenine_treniruote`
--

DROP TABLE IF EXISTS `kliento_asmenine_treniruote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kliento_asmenine_treniruote` (
  `kliento_asmenine_tren_id` int NOT NULL AUTO_INCREMENT,
  `asmen_treniruotes_id` int NOT NULL,
  `kliento_id` int NOT NULL,
  PRIMARY KEY (`kliento_asmenine_tren_id`,`asmen_treniruotes_id`),
  KEY `fk_kliento_asmenine_treniruote_asmenine_treniruote1_idx` (`asmen_treniruotes_id`),
  KEY `fk_kliento_asmenine_treniruote_klientas1_idx` (`kliento_id`),
  CONSTRAINT `fk_kliento_asmenine_treniruote_asmenine_treniruote1` FOREIGN KEY (`asmen_treniruotes_id`) REFERENCES `asmenine_treniruote` (`asmen_treniruotes_id`),
  CONSTRAINT `fk_kliento_asmenine_treniruote_klientas1` FOREIGN KEY (`kliento_id`) REFERENCES `klientas` (`kliento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kliento_asmenine_treniruote`
--

LOCK TABLES `kliento_asmenine_treniruote` WRITE;
/*!40000 ALTER TABLE `kliento_asmenine_treniruote` DISABLE KEYS */;
/*!40000 ALTER TABLE `kliento_asmenine_treniruote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kliento_grupine_treniruote`
--

DROP TABLE IF EXISTS `kliento_grupine_treniruote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kliento_grupine_treniruote` (
  `kliento_grup_treniruotes_id` int NOT NULL AUTO_INCREMENT,
  `grup_treniruotes_id` int NOT NULL,
  `kliento_id` int NOT NULL,
  PRIMARY KEY (`kliento_grup_treniruotes_id`,`grup_treniruotes_id`),
  KEY `fk_kliento_grupine_treniruote_grupine_treniruote1_idx` (`grup_treniruotes_id`),
  KEY `fk_kliento_grupine_treniruote_klientas1_idx` (`kliento_id`),
  CONSTRAINT `fk_kliento_grupine_treniruote_grupine_treniruote1` FOREIGN KEY (`grup_treniruotes_id`) REFERENCES `grupine_treniruote` (`grup_treniruotes_id`),
  CONSTRAINT `fk_kliento_grupine_treniruote_klientas1` FOREIGN KEY (`kliento_id`) REFERENCES `klientas` (`kliento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kliento_grupine_treniruote`
--

LOCK TABLES `kliento_grupine_treniruote` WRITE;
/*!40000 ALTER TABLE `kliento_grupine_treniruote` DISABLE KEYS */;
/*!40000 ALTER TABLE `kliento_grupine_treniruote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kliento_grupines_treneris`
--

DROP TABLE IF EXISTS `kliento_grupines_treneris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kliento_grupines_treneris` (
  `kliento_grup_trenerio_id` int NOT NULL AUTO_INCREMENT,
  `grup_trenerio_id` int NOT NULL,
  `kliento_grup_treniruotes_id` int NOT NULL,
  PRIMARY KEY (`kliento_grup_trenerio_id`,`grup_trenerio_id`,`kliento_grup_treniruotes_id`),
  KEY `fk_kliento_grupines_treneris_grupiniu_treniruočių_treneri_idx` (`grup_trenerio_id`),
  KEY `fk_kliento_grupines_treneris_kliento_grupine_treniruote1_idx` (`kliento_grup_treniruotes_id`),
  CONSTRAINT `fk_kliento_grupines_treneris_grupiniu_treniruočių_treneris1` FOREIGN KEY (`grup_trenerio_id`) REFERENCES `grupiniu_treniruočių_treneris` (`grup_trenerio_id`),
  CONSTRAINT `fk_kliento_grupines_treneris_kliento_grupine_treniruote1` FOREIGN KEY (`kliento_grup_treniruotes_id`) REFERENCES `kliento_grupine_treniruote` (`kliento_grup_treniruotes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kliento_grupines_treneris`
--

LOCK TABLES `kliento_grupines_treneris` WRITE;
/*!40000 ALTER TABLE `kliento_grupines_treneris` DISABLE KEYS */;
/*!40000 ALTER TABLE `kliento_grupines_treneris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kliento_mitybos_planas`
--

DROP TABLE IF EXISTS `kliento_mitybos_planas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kliento_mitybos_planas` (
  `kliento_mitybos_plano_id` int NOT NULL AUTO_INCREMENT,
  `plano_tipas` varchar(45) DEFAULT NULL,
  `kliento_id` int NOT NULL,
  `plano_id` int NOT NULL,
  PRIMARY KEY (`kliento_mitybos_plano_id`),
  KEY `fk_kliento_mitybos_planas_klientas1_idx` (`kliento_id`),
  KEY `fk_kliento_mitybos_planas_mitybos_planas1_idx` (`plano_id`),
  CONSTRAINT `fk_kliento_mitybos_planas_klientas1` FOREIGN KEY (`kliento_id`) REFERENCES `klientas` (`kliento_id`),
  CONSTRAINT `fk_kliento_mitybos_planas_mitybos_planas1` FOREIGN KEY (`plano_id`) REFERENCES `mitybos_planas` (`mitybos_plano_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kliento_mitybos_planas`
--

LOCK TABLES `kliento_mitybos_planas` WRITE;
/*!40000 ALTER TABLE `kliento_mitybos_planas` DISABLE KEYS */;
/*!40000 ALTER TABLE `kliento_mitybos_planas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mitybos_planas`
--

DROP TABLE IF EXISTS `mitybos_planas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mitybos_planas` (
  `mitybos_plano_id` int NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(45) DEFAULT NULL,
  `pradzios_data` date DEFAULT NULL,
  `pabaigos_data` date DEFAULT NULL,
  `kaina` double DEFAULT NULL,
  `dietologo_id` int NOT NULL,
  PRIMARY KEY (`mitybos_plano_id`),
  KEY `fk_mitybos_planas_dietologas1_idx` (`dietologo_id`),
  CONSTRAINT `fk_mitybos_planas_dietologas1` FOREIGN KEY (`dietologo_id`) REFERENCES `dietologas` (`dietologo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mitybos_planas`
--

LOCK TABLES `mitybos_planas` WRITE;
/*!40000 ALTER TABLE `mitybos_planas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mitybos_planas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `naryste`
--

DROP TABLE IF EXISTS `naryste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `naryste` (
  `narystes_id` int NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(45) DEFAULT NULL,
  `trukme_men` varchar(45) DEFAULT NULL,
  `menesine_kaina` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`narystes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `naryste`
--

LOCK TABLES `naryste` WRITE;
/*!40000 ALTER TABLE `naryste` DISABLE KEYS */;
/*!40000 ALTER TABLE `naryste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `narystes_paslauga`
--

DROP TABLE IF EXISTS `narystes_paslauga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `narystes_paslauga` (
  `narystes_paslaugos_id` int NOT NULL AUTO_INCREMENT,
  `paslaugos_pavadinimas` varchar(45) DEFAULT NULL,
  `paslaugos_id` int NOT NULL,
  `narystes_id` int NOT NULL,
  PRIMARY KEY (`narystes_paslaugos_id`),
  KEY `fk_narystes_paslauga_paslauga1_idx` (`paslaugos_id`),
  KEY `fk_narystes_paslauga_naryste1_idx` (`narystes_id`),
  CONSTRAINT `fk_narystes_paslauga_naryste1` FOREIGN KEY (`narystes_id`) REFERENCES `naryste` (`narystes_id`),
  CONSTRAINT `fk_narystes_paslauga_paslauga1` FOREIGN KEY (`paslaugos_id`) REFERENCES `paslauga` (`paslaugos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `narystes_paslauga`
--

LOCK TABLES `narystes_paslauga` WRITE;
/*!40000 ALTER TABLE `narystes_paslauga` DISABLE KEYS */;
/*!40000 ALTER TABLE `narystes_paslauga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pareiga`
--

DROP TABLE IF EXISTS `pareiga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pareiga` (
  `pareigos_id` int NOT NULL,
  `pavadinimas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pareigos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pareiga`
--

LOCK TABLES `pareiga` WRITE;
/*!40000 ALTER TABLE `pareiga` DISABLE KEYS */;
/*!40000 ALTER TABLE `pareiga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paslauga`
--

DROP TABLE IF EXISTS `paslauga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paslauga` (
  `paslaugos_id` int NOT NULL AUTO_INCREMENT,
  `paslaugos_pavadinimas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`paslaugos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paslauga`
--

LOCK TABLES `paslauga` WRITE;
/*!40000 ALTER TABLE `paslauga` DISABLE KEYS */;
/*!40000 ALTER TABLE `paslauga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patiekalas`
--

DROP TABLE IF EXISTS `patiekalas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patiekalas` (
  `patiekalo_id` int NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`patiekalo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patiekalas`
--

LOCK TABLES `patiekalas` WRITE;
/*!40000 ALTER TABLE `patiekalas` DISABLE KEYS */;
/*!40000 ALTER TABLE `patiekalas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patiekalo_ingridientas`
--

DROP TABLE IF EXISTS `patiekalo_ingridientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patiekalo_ingridientas` (
  `patiekalo_ingridiento_id` int NOT NULL AUTO_INCREMENT,
  `kiekis_g` varchar(45) DEFAULT NULL,
  `patiekalo_id` int NOT NULL,
  `ingridiento_id` int NOT NULL,
  PRIMARY KEY (`patiekalo_ingridiento_id`),
  KEY `fk_patiekalo_ingridientas_patiekalas1_idx` (`patiekalo_id`),
  KEY `fk_patiekalo_ingridientas_ingridientas1_idx` (`ingridiento_id`),
  CONSTRAINT `fk_patiekalo_ingridientas_ingridientas1` FOREIGN KEY (`ingridiento_id`) REFERENCES `ingridientas` (`ingridiento_id`),
  CONSTRAINT `fk_patiekalo_ingridientas_patiekalas1` FOREIGN KEY (`patiekalo_id`) REFERENCES `patiekalas` (`patiekalo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patiekalo_ingridientas`
--

LOCK TABLES `patiekalo_ingridientas` WRITE;
/*!40000 ALTER TABLE `patiekalo_ingridientas` DISABLE KEYS */;
/*!40000 ALTER TABLE `patiekalo_ingridientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plano_patiekalas`
--

DROP TABLE IF EXISTS `plano_patiekalas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plano_patiekalas` (
  `plano_patiekalo_id` int NOT NULL AUTO_INCREMENT,
  `dienos_laikas` varchar(45) DEFAULT NULL,
  `mitybos_plano_id` int NOT NULL,
  `patiekalo_id` int NOT NULL,
  PRIMARY KEY (`plano_patiekalo_id`),
  KEY `fk_plano_patiekalas_mitybos_planas1_idx` (`mitybos_plano_id`),
  KEY `fk_plano_patiekalas_patiekalas1_idx` (`patiekalo_id`),
  CONSTRAINT `fk_plano_patiekalas_mitybos_planas1` FOREIGN KEY (`mitybos_plano_id`) REFERENCES `mitybos_planas` (`mitybos_plano_id`),
  CONSTRAINT `fk_plano_patiekalas_patiekalas1` FOREIGN KEY (`patiekalo_id`) REFERENCES `patiekalas` (`patiekalo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plano_patiekalas`
--

LOCK TABLES `plano_patiekalas` WRITE;
/*!40000 ALTER TABLE `plano_patiekalas` DISABLE KEYS */;
/*!40000 ALTER TABLE `plano_patiekalas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sporto_irankis`
--

DROP TABLE IF EXISTS `sporto_irankis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sporto_irankis` (
  `irankio_id` int NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(45) DEFAULT NULL,
  `kiekis` varchar(45) DEFAULT NULL,
  `viso_inventoriaus_id` int NOT NULL,
  PRIMARY KEY (`irankio_id`,`viso_inventoriaus_id`),
  KEY `fk_irankis_visas_inventorius1_idx` (`viso_inventoriaus_id`),
  CONSTRAINT `fk_irankis_visas_inventorius1` FOREIGN KEY (`viso_inventoriaus_id`) REFERENCES `visas_inventorius` (`viso_inventoriaus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sporto_irankis`
--

LOCK TABLES `sporto_irankis` WRITE;
/*!40000 ALTER TABLE `sporto_irankis` DISABLE KEYS */;
INSERT INTO `sporto_irankis` VALUES (1,'Laisva štanga su stovu','3',1),(2,'bėgtakis','10',1),(3,'skersinis','8',1),(4,'štangos spaudimo suolas','5',1);
/*!40000 ALTER TABLE `sporto_irankis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sporto_klubas`
--

DROP TABLE IF EXISTS `sporto_klubas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sporto_klubas` (
  `sporto_klubo_id` int NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sporto_klubo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sporto_klubas`
--

LOCK TABLES `sporto_klubas` WRITE;
/*!40000 ALTER TABLE `sporto_klubas` DISABLE KEYS */;
INSERT INTO `sporto_klubas` VALUES (1,'GymPlius'),(2,'Lemon gym'),(3,'Impuls'),(4,'Sportgates'),(5,'Get Fit');
/*!40000 ALTER TABLE `sporto_klubas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sporto_klubo_inventorius`
--

DROP TABLE IF EXISTS `sporto_klubo_inventorius`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sporto_klubo_inventorius` (
  `sporto_klubo_inventoriaus_id` int NOT NULL AUTO_INCREMENT,
  `sporto_klubo_id` int NOT NULL,
  `viso_inventoriaus_id` int NOT NULL,
  PRIMARY KEY (`sporto_klubo_inventoriaus_id`,`sporto_klubo_id`),
  KEY `fk_sporto_klubo_inventorius_sporto_klubas1_idx` (`sporto_klubo_id`),
  KEY `fk_sporto_klubo_inventorius_visas_inventorius1_idx` (`viso_inventoriaus_id`),
  CONSTRAINT `fk_sporto_klubo_inventorius_sporto_klubas1` FOREIGN KEY (`sporto_klubo_id`) REFERENCES `sporto_klubas` (`sporto_klubo_id`),
  CONSTRAINT `fk_sporto_klubo_inventorius_visas_inventorius1` FOREIGN KEY (`viso_inventoriaus_id`) REFERENCES `visas_inventorius` (`viso_inventoriaus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sporto_klubo_inventorius`
--

LOCK TABLES `sporto_klubo_inventorius` WRITE;
/*!40000 ALTER TABLE `sporto_klubo_inventorius` DISABLE KEYS */;
INSERT INTO `sporto_klubo_inventorius` VALUES (1,1,1);
/*!40000 ALTER TABLE `sporto_klubo_inventorius` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonas`
--

DROP TABLE IF EXISTS `telefonas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonas` (
  `numerio_id` int NOT NULL AUTO_INCREMENT,
  `numeris` varchar(45) DEFAULT NULL,
  `administracijos_id` int NOT NULL,
  PRIMARY KEY (`numerio_id`),
  KEY `fk_telefonas_administracija1_idx` (`administracijos_id`),
  CONSTRAINT `fk_telefonas_administracija1` FOREIGN KEY (`administracijos_id`) REFERENCES `administracija` (`administracijos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonas`
--

LOCK TABLES `telefonas` WRITE;
/*!40000 ALTER TABLE `telefonas` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefonas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treniruotes_inventorius`
--

DROP TABLE IF EXISTS `treniruotes_inventorius`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treniruotes_inventorius` (
  `treniruotes_inventorius_id` int NOT NULL AUTO_INCREMENT,
  `inventoriaus_id` int NOT NULL,
  `grup_treniruotes_id` int NOT NULL,
  PRIMARY KEY (`treniruotes_inventorius_id`,`inventoriaus_id`,`grup_treniruotes_id`),
  KEY `fk_treniruotes_inventorius_inventorius1_idx` (`inventoriaus_id`),
  KEY `fk_treniruotes_inventorius_grupine_treniruote1_idx` (`grup_treniruotes_id`),
  CONSTRAINT `fk_treniruotes_inventorius_grupine_treniruote1` FOREIGN KEY (`grup_treniruotes_id`) REFERENCES `grupine_treniruote` (`grup_treniruotes_id`),
  CONSTRAINT `fk_treniruotes_inventorius_inventorius1` FOREIGN KEY (`inventoriaus_id`) REFERENCES `inventorius` (`inventoriaus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treniruotes_inventorius`
--

LOCK TABLES `treniruotes_inventorius` WRITE;
/*!40000 ALTER TABLE `treniruotes_inventorius` DISABLE KEYS */;
/*!40000 ALTER TABLE `treniruotes_inventorius` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vartotojas`
--

DROP TABLE IF EXISTS `vartotojas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vartotojas` (
  `vartotojo_id` int NOT NULL AUTO_INCREMENT,
  `vartotojo_vardas` varchar(45) DEFAULT NULL,
  `slaptazodis` varchar(45) DEFAULT NULL,
  `tipas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vartotojo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vartotojas`
--

LOCK TABLES `vartotojas` WRITE;
/*!40000 ALTER TABLE `vartotojas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vartotojas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visas_inventorius`
--

DROP TABLE IF EXISTS `visas_inventorius`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visas_inventorius` (
  `viso_inventoriaus_id` int NOT NULL AUTO_INCREMENT,
  `kodas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`viso_inventoriaus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visas_inventorius`
--

LOCK TABLES `visas_inventorius` WRITE;
/*!40000 ALTER TABLE `visas_inventorius` DISABLE KEYS */;
INSERT INTO `visas_inventorius` VALUES (1,'BASIC_PG5');
/*!40000 ALTER TABLE `visas_inventorius` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 15:30:49
