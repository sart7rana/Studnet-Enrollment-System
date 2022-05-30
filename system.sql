-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: CW2
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course` (
  `CourseID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES (1,'Netorking'),(2,'Computing'),(3,'Multimedia'),(4,'BBA'),(5,'CSIT'),(6,'Civil Engineering'),(7,'Mechanical Engineering');
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Enrollment`
--

DROP TABLE IF EXISTS `Enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Enrollment` (
  `EnrollmentID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` int(11) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `Dateofenrollment` date NOT NULL,
  PRIMARY KEY (`EnrollmentID`),
  KEY `StudentID` (`StudentID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `Enrollment_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `Student` (`StudentID`),
  CONSTRAINT `Enrollment_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `Course` (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Enrollment`
--

LOCK TABLES `Enrollment` WRITE;
/*!40000 ALTER TABLE `Enrollment` DISABLE KEYS */;
INSERT INTO `Enrollment` VALUES (1,1,1,'2021-03-12'),(2,2,1,'2021-03-11'),(3,3,2,'2021-03-14'),(4,4,3,'2021-03-17'),(5,5,4,'2021-03-17'),(6,6,5,'2021-03-18'),(7,7,6,'2021-03-19');
/*!40000 ALTER TABLE `Enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lecturer`
--

DROP TABLE IF EXISTS `Lecturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lecturer` (
  `LecturerID` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectCode` int(11) DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT 'Kathmandu',
  PRIMARY KEY (`LecturerID`),
  KEY `SubjectCode` (`SubjectCode`),
  CONSTRAINT `Lecturer_ibfk_1` FOREIGN KEY (`SubjectCode`) REFERENCES `Subject` (`SubjectCode`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lecturer`
--

LOCK TABLES `Lecturer` WRITE;
/*!40000 ALTER TABLE `Lecturer` DISABLE KEYS */;
INSERT INTO `Lecturer` VALUES (1,1,'Bibek','Shah','bibekshah1@gmail.com','Kalanki'),(2,2,'Suraj','Thaoa','surajthapa22@gmail.com','Chettrapati'),(3,3,'Krishna','Basnet','krishnabasne1@gmail.com','balaju'),(4,4,'Sunita','Shah','sunitashah@gmail.com','balaju'),(5,5,'Ramesh','Bhandari','rameshbhan1ari@gmail.com','lamatar'),(6,6,'Niroj','Manandhar','nirojman23@gmail.com','dhapakhel'),(7,7,'Madan','Chand','madanchand@gmail.com','Baneshowr');
/*!40000 ALTER TABLE `Lecturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Student` (
  `StudentID` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT 'Kathmandu',
  `DOB` date NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (1,'Bisham','Kunwor','Maitidevi','2002-08-17','bishamkunwor@gmail.com'),(2,'Aadarsha','Shakya','Dalkhu','2002-04-23','aadarshashakya23@gmail.com'),(3,'Man','Thapa','Balaju','2000-10-12','atitthapa@gmail.com'),(4,'Osbin','Gurung','Budhanilkantha','2002-12-02','osbingrg141@gmail.com'),(5,'Prabesh','Tamang','Boudha','2000-09-11','prabeshtamang@gmail.com'),(6,'Sarthak','Rana','Thamel','2001-01-18','sarthakbrana@gmail.com'),(7,'Vibhrat','Basnet','Sanepa','2001-09-12','vibhuvib07@gmail.com'),(8,'Avash','Maharjhan','Kusunti','2001-12-27','avashmaharjhan@gmail.com');
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subject`
--

DROP TABLE IF EXISTS `Subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subject` (
  `SubjectCode` int(11) NOT NULL AUTO_INCREMENT,
  `CourseID` int(11) DEFAULT NULL,
  `SubjectName` varchar(255) NOT NULL,
  PRIMARY KEY (`SubjectCode`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `Subject_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `Course` (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subject`
--

LOCK TABLES `Subject` WRITE;
/*!40000 ALTER TABLE `Subject` DISABLE KEYS */;
INSERT INTO `Subject` VALUES (1,1,'InformationSystem'),(2,2,'Programming'),(3,3,'Animation'),(4,4,'Economics'),(5,5,'Mathematics'),(6,6,'Physics'),(7,7,'Hydraulics');
/*!40000 ALTER TABLE `Subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-24  9:45:46