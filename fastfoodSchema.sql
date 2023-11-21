-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: fastfood
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Username` char(50) NOT NULL,
  `Pwd` char(10) NOT NULL,
  `hint` char(20) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('harsh','harsh','name');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `itemname` varchar(30) NOT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES ('Samosa',20),('Pav Bhaji',50),('Vada Pav',30),('Chole Bhature',70),('Dahi Puri',40),('Paneer Tikka',90),('Masala Dosa',60),('Aloo Tikki',25),('Pani Puri',15),('Bhel Puri',25),('Chicken Biryani',120),('Samosa Chaat',35),('Golgappa',15),('Chapati Roll',45),('Idli Sambhar',50),('Bread Pakora',30),('Chicken Momos',80),('Dhokla',40),('Chicken Kathi Roll',100),('Aloo Chaat',35),('Mutton Keema Pav',130),('Kachori',25),('Raj Kachori',30),('Butter Chicken',150),('Vegetable Spring Roll',70),('Biryani',100),('Pav Sandwich',45),('Pakora',30),('Fish Tikka',110),('Chilli Paneer',80);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Mobileno` bigint NOT NULL,
  `Fname` char(10) NOT NULL,
  `L_Name` char(10) NOT NULL,
  `creditpt` int NOT NULL,
  PRIMARY KEY (`Mobileno`,`Fname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (8901234567,'Vikas','Patel',210),(9012345678,'Anil','Singh',150),(9102457836,'Aishwarya','Das',192),(9102573486,'Priya','Patel',249),(9107582346,'Ajay','Verma',155),(9107856342,'Kartik','Sharma',121),(9108576342,'Sneha','Singh',155),(9123456780,'Ravi','Sharma',100),(9123647805,'Kirti','Patel',124),(9125347806,'Ananya','Rajput',124),(9127645308,'Rohan','Sharma',269),(9132457806,'Swati','Mishra',229),(9132486570,'Kritika','Reddy',227),(9132568740,'Tanvi','Malhotra',189),(9134068752,'Rohit','Verma',205),(9138405276,'Siddharth','Iyer',195),(9138705246,'Varun','Thakur',130),(9140752368,'Ravi','Tiwari',219),(9140825736,'Abhishek','Reddy',268),(9143260758,'Preeti','Sharma',195),(9143658702,'Sameer','Agarwal',262),(9146072538,'Rajat','Kapoor',267),(9148506723,'Aryan','Singh',175),(9150234786,'Aisha','Reddy',132),(9153804627,'Akshay','Saxena',154),(9154637028,'Ishita','Kapoor',189),(9156072483,'Mira','Khatri',171),(9157023468,'Shreya','Khanna',177),(9158024376,'Aditya','Mehra',158),(9162035748,'Naina','Gupta',129),(9163475082,'Vikram','Singhania',118),(9164750823,'Surya','Menon',229),(9165402783,'Arjun','Sharma',212),(9168035247,'Karan','Malhotra',282),(9168423057,'Jaya','Verma',198),(9170362458,'Trisha','Rastogi',253),(9170485623,'Divya','Kapoor',166),(9172604853,'Riya','Jain',216),(9173465028,'Maya','Chauhan',163),(9178604352,'Pooja','Mehta',173),(9180432576,'Anjali','Singh',143),(9183205746,'Shubham','Kumar',146),(9185073246,'Prateek','Choudhary',116),(9186702543,'Kavya','Kumar',243),(9187506234,'Akash','Joshi',207),(9187634502,'Neha','Patel',194),(9193452078,'Rahul','Deshmukh',208),(9194805723,'Arnav','Bhat',136),(9876543210,'Priya','Kumar',200),(9987654321,'Sneha','Gupta',180);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `credit_pt` int NOT NULL,
  `Discount` int NOT NULL,
  KEY `Index 1` (`credit_pt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (7,10),(8,11),(10,12),(12,13),(14,14);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fastfood`
--

DROP TABLE IF EXISTS `fastfood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fastfood` (
  `ID` int NOT NULL,
  `Itemname` char(30) NOT NULL,
  `Price` int NOT NULL,
  `Category` char(30) NOT NULL,
  PRIMARY KEY (`ID`,`Itemname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fastfood`
--

LOCK TABLES `fastfood` WRITE;
/*!40000 ALTER TABLE `fastfood` DISABLE KEYS */;
INSERT INTO `fastfood` VALUES (1,'Samosa',20,'Snacks'),(2,'Pav Bhaji',50,'Fast Food'),(3,'Vada Pav',30,'Fast Food'),(4,'Chole Bhature',60,'Fast Food'),(5,'Dahi Puri',40,'Snacks'),(6,'Paneer Tikka',80,'Appetizer'),(7,'Masala Dosa',45,'Fast Food'),(8,'Aloo Tikki',25,'Snacks'),(9,'Pani Puri',35,'Snacks'),(10,'Bhel Puri',30,'Snacks'),(11,'Chicken Biryani',120,'Main Course'),(12,'Samosa Chaat',35,'Snacks'),(13,'Golgappa',30,'Snacks'),(14,'Chapati Roll',40,'Fast Food'),(15,'Idli Sambhar',50,'Fast Food'),(16,'Bread Pakora',35,'Snacks'),(17,'Chicken Momos',70,'Appetizer'),(18,'Dhokla',40,'Snacks'),(19,'Chicken Kathi Roll',80,'Fast Food'),(20,'Aloo Chaat',30,'Snacks'),(21,'Mutton Keema Pav',90,'Fast Food'),(22,'Kachori',25,'Snacks'),(23,'Raj Kachori',50,'Snacks'),(24,'Butter Chicken',100,'Main Course'),(25,'Vegetable Spring Roll',45,'Appetizer'),(26,'Biryani',60,'Main Course'),(27,'Pav Sandwich',40,'Fast Food'),(28,'Pakora',30,'Snacks'),(29,'Fish Tikka',90,'Appetizer'),(30,'Chilli Paneer',70,'Appetizer');
/*!40000 ALTER TABLE `fastfood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedupdate`
--

DROP TABLE IF EXISTS `feedupdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedupdate` (
  `feedID` varchar(10) NOT NULL,
  `Identity` bigint DEFAULT NULL,
  `feed` char(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  KEY `FK_feed&update_customer` (`Identity`),
  CONSTRAINT `FK_feed&update_customer` FOREIGN KEY (`Identity`) REFERENCES `customer` (`Mobileno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedupdate`
--

LOCK TABLES `feedupdate` WRITE;
/*!40000 ALTER TABLE `feedupdate` DISABLE KEYS */;
INSERT INTO `feedupdate` VALUES ('1',9102573486,'Nice food','2018-03-29');
/*!40000 ALTER TABLE `feedupdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsales`
--

DROP TABLE IF EXISTS `monsales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monsales` (
  `Billno` int NOT NULL,
  `Mobileno` bigint NOT NULL,
  `Fname` char(10) NOT NULL,
  `Billamt` int DEFAULT NULL,
  PRIMARY KEY (`Billno`),
  KEY `FK_monsales_customer` (`Mobileno`,`Fname`),
  CONSTRAINT `FK_monsales_customer` FOREIGN KEY (`Mobileno`, `Fname`) REFERENCES `customer` (`Mobileno`, `Fname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsales`
--

LOCK TABLES `monsales` WRITE;
/*!40000 ALTER TABLE `monsales` DISABLE KEYS */;
INSERT INTO `monsales` VALUES (2,9102573486,'Priya',1069),(3,9143658702,'Sameer',980),(9,9012345678,'Anil',1077),(10,9187506234,'Akash',974),(13,9187634502,'Neha',1040),(17,9138705246,'Varun',1009),(23,9107856342,'Kartik',1036),(25,9194805723,'Arnav',1080),(28,9165402783,'Arjun',1186),(29,9148506723,'Aryan',1199),(31,9108576342,'Sneha',1167),(32,9180432576,'Anjali',928),(34,9102457836,'Aishwarya',1039),(39,9183205746,'Shubham',1146),(42,9132457806,'Swati',1160),(45,9185073246,'Prateek',972),(47,9154637028,'Ishita',1030),(48,9170485623,'Divya',918),(49,9132486570,'Kritika',992),(50,9987654321,'Sneha',905);
/*!40000 ALTER TABLE `monsales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Staff_ID` int NOT NULL,
  `Name` char(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Mia','mia01@gmail.com'),(2,'Sonya','sonya02@gmail.com'),(3,'vivek','vivek06@gmail.com'),(4,'Rohan','rohan04@gmail.com');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `ID` int NOT NULL,
  `Itemname` char(30) NOT NULL,
  `qty` int DEFAULT NULL,
  KEY `FK_stock_fastfood` (`ID`,`Itemname`),
  CONSTRAINT `FK_stock_fastfood` FOREIGN KEY (`ID`, `Itemname`) REFERENCES `fastfood` (`ID`, `Itemname`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,'Samosa',100),(2,'Pav Bhaji',50),(3,'Vada Pav',75),(4,'Chole Bhature',30),(5,'Dahi Puri',60),(6,'Paneer Tikka',25),(7,'Masala Dosa',40),(8,'Aloo Tikki',80),(9,'Pani Puri',120),(10,'Bhel Puri',90),(11,'Chicken Biryani',20),(12,'Samosa Chaat',65),(13,'Golgappa',110),(14,'Chapati Roll',55),(15,'Idli Sambhar',70),(16,'Bread Pakora',85),(17,'Chicken Momos',30),(18,'Dhokla',95),(19,'Chicken Kathi Roll',40),(20,'Aloo Chaat',60),(21,'Mutton Keema Pav',25),(22,'Kachori',45),(23,'Raj Kachori',50),(24,'Butter Chicken',15),(25,'Vegetable Spring Roll',35),(26,'Biryani',20),(27,'Pav Sandwich',75),(28,'Pakora',90),(29,'Fish Tikka',40),(30,'Chilli Paneer',50);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21 18:03:26
