-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: littlelemondb
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `BookingID` int NOT NULL AUTO_INCREMENT,
  `BookingDate` date DEFAULT NULL,
  `TableNumber` int DEFAULT NULL,
  `CustomerID` varchar(20) DEFAULT NULL,
  `StaffID` int DEFAULT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `StaffID` (`StaffID`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2025-05-01',1,'CUST001',1),(2,'2025-05-02',2,'CUST002',2),(3,'2025-05-03',3,'CUST003',3),(4,'2025-05-04',4,'CUST004',4),(5,'2025-06-10',5,'CUST005',5),(6,'2025-05-06',1,'CUST006',6),(7,'2025-05-07',2,'CUST007',7),(8,'2025-05-08',3,'CUST008',8),(9,'2025-05-09',4,'CUST009',9),(10,'2025-05-10',5,'CUST010',10),(12,'2025-01-01',2,'Cust003',1),(20,'2025-06-05',4,'CUST002',1);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` varchar(20) NOT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `PostalCode` varchar(20) DEFAULT NULL,
  `CountryCode` char(2) DEFAULT NULL,
  `ContactNumber` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('CUST001','Alice Smith','Sydney','Australia','2000','AU','0400000001'),('CUST002','Bob Johnson','Melbourne','Australia','3000','AU','0400000002'),('CUST003','Carlos Diaz','Brisbane','Australia','4000','AU','0400000003'),('CUST004','Diana Prince','Perth','Australia','6000','AU','0400000004'),('CUST005','Evan Wu','Adelaide','Australia','5000','AU','0400000005'),('CUST006','Fiona Chan','Hobart','Australia','7000','AU','0400000006'),('CUST007','George Hall','Canberra','Australia','2600','AU','0400000007'),('CUST008','Helen Brown','Darwin','Australia','0800','AU','0400000008'),('CUST009','Ian Black','Newcastle','Australia','2300','AU','0400000009'),('CUST010','Jane Doe','Geelong','Australia','3220','AU','0400000010');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitems`
--

DROP TABLE IF EXISTS `menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuitems` (
  `MenuItemsID` int NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(100) DEFAULT NULL,
  `StarterName` varchar(100) DEFAULT NULL,
  `DesertName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MenuItemsID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitems`
--

LOCK TABLES `menuitems` WRITE;
/*!40000 ALTER TABLE `menuitems` DISABLE KEYS */;
INSERT INTO `menuitems` VALUES (1,'Main','Bruschetta','Tiramisu'),(2,'Main','Spring Rolls','Mango Pudding'),(3,'Main','Samosa','Gulab Jamun'),(4,'Main','Nachos','Churros'),(5,'Main','Dolmades','Baklava'),(6,'Main','Escargot','Crème Brûlée'),(7,'Main','Satay','Sticky Rice'),(8,'Main','Miso Soup','Mochi'),(9,'Main','Wings','Cheesecake'),(10,'Main','Hummus','Knafeh'),(11,'Main','Antipasto','Panna Cotta'),(12,'Main','Foie Gras','Soufflé'),(13,'Main','Sashimi','Green Tea Ice Cream');
/*!40000 ALTER TABLE `menuitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `MenuID` int NOT NULL AUTO_INCREMENT,
  `MenuItemsID` int DEFAULT NULL,
  `MenuName` varchar(100) DEFAULT NULL,
  `Cuisine` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MenuID`),
  KEY `MenuItemsID` (`MenuItemsID`),
  CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`MenuItemsID`) REFERENCES `menuitems` (`MenuItemsID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,1,'Italian Delight','Italian'),(2,2,'Chinese Feast','Chinese'),(3,3,'Indian Spice','Indian'),(4,4,'Mexican Fiesta','Mexican'),(5,5,'Greek Night','Greek'),(6,6,'French Dining','French'),(7,7,'Thai Taste','Thai'),(8,8,'Japanese Combo','Japanese'),(9,9,'American Grill','American'),(10,10,'Lebanese Mix','Lebanese'),(11,11,'Italian Premium','Italian'),(12,12,'French Premium','French'),(13,13,'Japanese Premium','Japanese');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdeliverystatus`
--

DROP TABLE IF EXISTS `orderdeliverystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdeliverystatus` (
  `DeliveryStatusID` int NOT NULL AUTO_INCREMENT,
  `OrderID` varchar(20) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  PRIMARY KEY (`DeliveryStatusID`),
  KEY `orderdeliverystatus_ibfk_1` (`OrderID`),
  CONSTRAINT `orderdeliverystatus_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdeliverystatus`
--

LOCK TABLES `orderdeliverystatus` WRITE;
/*!40000 ALTER TABLE `orderdeliverystatus` DISABLE KEYS */;
INSERT INTO `orderdeliverystatus` VALUES (1,'ORD001','Delivered','2025-05-02'),(2,'ORD002','Delivered','2025-05-04'),(3,'ORD003','Pending',NULL),(4,'ORD004','Delivered','2025-05-08'),(6,'ORD006','Delivered','2025-05-12'),(7,'ORD007','Delivered','2025-05-14'),(8,'ORD008','Delivered','2025-05-16'),(9,'ORD009','Pending',NULL),(10,'ORD010','Delivered','2025-05-20');
/*!40000 ALTER TABLE `orderdeliverystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` varchar(20) NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `CustomerID` varchar(20) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `Sales` decimal(10,2) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Discount` decimal(5,2) DEFAULT NULL,
  `DeliveryCost` decimal(10,2) DEFAULT NULL,
  `MenuID` int DEFAULT NULL,
  `TotalCost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `orders_ibfk_menu` (`MenuID`),
  CONSTRAINT `orders_ibfk_menu` FOREIGN KEY (`MenuID`) REFERENCES `menus` (`MenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('ORD001','2025-05-01','2025-05-02','CUST001',100.00,150.00,2,0.00,5.00,1,105.00),('ORD002','2025-05-03','2025-05-04','CUST002',80.00,120.00,1,5.00,5.00,2,80.00),('ORD003','2025-05-05','2025-05-06','CUST003',60.00,90.00,3,10.00,0.00,3,50.00),('ORD004','2025-05-07','2025-05-08','CUST004',75.00,100.00,1,0.00,5.00,4,80.00),('ORD006','2025-05-11','2025-05-12','CUST006',95.00,140.00,2,0.00,0.00,6,95.00),('ORD007','2025-05-13','2025-05-14','CUST007',85.00,130.00,2,5.00,0.00,7,80.00),('ORD008','2025-05-15','2025-05-16','CUST008',50.00,70.00,1,0.00,5.00,8,55.00),('ORD009','2025-05-17','2025-05-18','CUST009',120.00,180.00,3,10.00,5.00,9,115.00),('ORD010','2025-05-19','2025-05-20','CUST010',65.00,95.00,2,0.00,0.00,10,65.00),('ORD011','2025-05-21','2025-05-22','CUST001',160.00,200.00,3,0.00,5.00,11,165.00),('ORD012','2025-05-22','2025-05-23','CUST002',175.00,220.00,4,0.00,5.00,12,180.00),('ORD013','2025-05-23','2025-05-24','CUST003',180.00,230.00,5,0.00,5.00,13,185.00),('ORD014','2025-05-25','2025-05-26','CUST001',140.00,190.00,3,0.00,5.00,1,145.00),('ORD015','2025-05-26','2025-05-27','CUST002',130.00,180.00,4,0.00,5.00,2,135.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ordersview`
--

DROP TABLE IF EXISTS `ordersview`;
/*!50001 DROP VIEW IF EXISTS `ordersview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ordersview` AS SELECT 
 1 AS `OrderID`,
 1 AS `Quantity`,
 1 AS `Cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `StaffID` int NOT NULL AUTO_INCREMENT,
  `StaffName` varchar(100) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'John','Waiter',45644.64),(2,'Nancy','Chef',32788.31),(3,'Walter','Manager',76122.78),(4,'Kylie','Host',38500.00),(5,'David','Cleaner',29500.50),(6,'Sophia','Waiter',41234.23),(7,'Michael','Chef',47890.00),(8,'Emma','Manager',80123.45),(9,'Liam','Barista',36500.00),(10,'Olivia','Waiter',40200.00);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw2ordersplaced`
--

DROP TABLE IF EXISTS `vw2ordersplaced`;
/*!50001 DROP VIEW IF EXISTS `vw2ordersplaced`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw2ordersplaced` AS SELECT 
 1 AS `MenuName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vwordersover_150`
--

DROP TABLE IF EXISTS `vwordersover_150`;
/*!50001 DROP VIEW IF EXISTS `vwordersover_150`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwordersover_150` AS SELECT 
 1 AS `CustomerID`,
 1 AS `CustomerName`,
 1 AS `OrderID`,
 1 AS `Cost`,
 1 AS `CourseName`,
 1 AS `StarterName`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ordersview`
--

/*!50001 DROP VIEW IF EXISTS `ordersview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ordersview` AS select `orders`.`OrderID` AS `OrderID`,`orders`.`Quantity` AS `Quantity`,`orders`.`Cost` AS `Cost` from `orders` where (`orders`.`Quantity` > 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw2ordersplaced`
--

/*!50001 DROP VIEW IF EXISTS `vw2ordersplaced`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw2ordersplaced` AS select `menus`.`MenuName` AS `MenuName` from `menus` where `menus`.`MenuID` in (select `orders`.`MenuID` from `orders` where (`orders`.`Quantity` > 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwordersover_150`
--

/*!50001 DROP VIEW IF EXISTS `vwordersover_150`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwordersover_150` AS select `c`.`CustomerID` AS `CustomerID`,`c`.`CustomerName` AS `CustomerName`,`o`.`OrderID` AS `OrderID`,`o`.`Cost` AS `Cost`,`mi`.`CourseName` AS `CourseName`,`mi`.`StarterName` AS `StarterName` from (((`customers` `c` join `orders` `o` on((`c`.`CustomerID` = `o`.`CustomerID`))) join `menus` `m` on((`o`.`MenuID` = `m`.`MenuID`))) join `menuitems` `mi` on((`m`.`MenuItemsID` = `mi`.`MenuItemsID`))) where (`o`.`Cost` > 150) order by `o`.`Cost` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-30 17:43:21
