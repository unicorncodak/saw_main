-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: sawdb
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Current Database: `sawdb`
--


--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
INSERT INTO `oc_address` VALUES (1,2,'Emeka','Kanikwu','','Wuse','','Abuja','90001',156,2389,''),(2,1,'Emeka','Kanikwu','','Wuse','','Abuja','90001',156,2389,''),(3,3,'Nnamdi','Ogundu','','10 danube street, maitama','','FCT','900001',156,2389,''),(4,5,'Anthony','Okechukwu','','No 1 Erie Crescent','Maitama','Abuja','N/A',156,2389,''),(5,6,'Nnamdi','Ogundu','','10 danube street, maitama','','FCT','900001',156,2397,''),(6,7,'Anthony','Okechukwu','Hazye first customer ltd','No 10 Danube Close','Off IBB Boulevard, Maitama','Abuja','',156,2389,'');
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'Default','etnYJzW8M5GpIN6MkzjSOOjYND52gB6RGOIashi8ey8qUfzh9PLjuu0t0BjQsADE5w6dA9paXxRzE2de0QPTgIITTpxoBSgniKf7tfmm57Q0YBYrvxLpZPEJ2qIvAEhri3TU4uxEsPcbsqgrOzsJgk1VhQiVDkmUY4NZeAot0REAdtbDfUkzA6PsqXmG5wcTOVLBqLDw93GSZRUWtaTlerriLsxYldNZ7JXXhaFewoz4Hpk3of3lhCU7N28sRpyR',1,'2018-04-25 17:10:57','2018-04-25 17:10:57');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_ip`
--

LOCK TABLES `oc_api_ip` WRITE;
/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
INSERT INTO `oc_api_ip` VALUES (1,1,'::1'),(2,1,'fe80::1'),(3,1,'160.152.46.89'),(4,1,'41.217.32.222'),(5,1,'169.159.94.134'),(6,1,'154.118.89.56'),(7,1,'154.120.120.9'),(8,1,'154.118.123.216'),(9,1,'154.118.94.252'),(10,1,'154.118.99.105'),(11,1,'105.112.112.231'),(12,1,'169.159.112.104'),(13,1,'154.118.97.137'),(14,1,'154.118.86.82'),(15,1,'169.159.102.235'),(16,1,'105.112.17.201'),(17,1,'154.118.88.54'),(18,1,'154.66.50.185'),(19,1,'197.242.124.207'),(20,1,'41.217.24.215'),(21,1,'154.118.103.4'),(22,1,'41.217.36.154'),(23,1,'154.118.90.128'),(24,1,'154.120.124.44'),(25,1,'154.118.95.174'),(26,1,'160.152.35.236'),(27,1,'154.118.92.205');
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api_session`
--

LOCK TABLES `oc_api_session` WRITE;
/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
INSERT INTO `oc_api_session` VALUES (127,1,'227235d901118bb4ddb7eed029','41.217.36.154','2018-07-13 07:34:52','2018-07-13 07:34:52'),(126,1,'30601d0a3dcbe7a5d52ebf7636','41.217.36.154','2018-07-13 07:34:16','2018-07-13 07:34:16'),(111,1,'481f817b1997b665ecc3e28272','41.217.24.215','2018-07-09 07:26:29','2018-07-09 07:26:58'),(110,1,'fde2616cb70775cb0b8bdd9750','41.217.24.215','2018-07-09 07:26:22','2018-07-09 07:26:22'),(125,1,'edce48f53324d254e81d5c1e05','154.118.103.4','2018-07-12 07:22:22','2018-07-12 07:22:22'),(123,1,'4f1a730d8485153d18a4893ce9','41.217.24.215','2018-07-09 07:29:52','2018-07-09 07:29:56'),(124,1,'c07b276c3cf3aa720e0deb5f39','41.217.24.215','2018-07-09 07:29:56','2018-07-09 07:29:56'),(122,1,'04e813c6b547909407f4aa9371','41.217.24.215','2018-07-09 07:29:41','2018-07-09 07:29:51'),(120,1,'826d31ea066b98cf43deaffe15','41.217.24.215','2018-07-09 07:29:25','2018-07-09 07:29:25'),(121,1,'f8d42d8458c0042d324b5b4b6a','41.217.24.215','2018-07-09 07:29:31','2018-07-09 07:29:40'),(119,1,'d5878112a181d1adddcf105549','41.217.24.215','2018-07-09 07:28:59','2018-07-09 07:29:25'),(117,1,'181b533cb7c28ef709643361b9','41.217.24.215','2018-07-09 07:28:19','2018-07-09 07:28:19'),(118,1,'f33aaa73e07b2628f286cf0a54','41.217.24.215','2018-07-09 07:28:24','2018-07-09 07:28:24'),(116,1,'fcd47d1ba24269e1ae2cb5efd0','41.217.24.215','2018-07-09 07:28:06','2018-07-09 07:28:11'),(115,1,'661124ebb7d402a8ed853c7b4a','41.217.24.215','2018-07-09 07:27:57','2018-07-09 07:27:57'),(114,1,'84b342118f1d2fd4ecb3ead3c7','41.217.24.215','2018-07-09 07:27:26','2018-07-09 07:27:38'),(113,1,'da50f9c47d23c5856772caff0d','41.217.24.215','2018-07-09 07:27:21','2018-07-09 07:27:21'),(112,1,'4c6ec7981a183c34eb4756be0a','41.217.24.215','2018-07-09 07:27:09','2018-07-09 07:27:09'),(128,1,'a468a010b47b981429e7c1044a','41.217.36.154','2018-07-13 07:37:02','2018-07-13 07:37:02'),(129,1,'a686ff847a02a949cc3f5362f1','41.217.36.154','2018-07-13 07:37:14','2018-07-13 07:37:14'),(130,1,'518cea27eab554c49498b171fe','41.217.36.154','2018-07-13 07:38:23','2018-07-13 07:38:23'),(131,1,'8a8e09abe6f7fe0e22db5320ce','41.217.36.154','2018-07-13 09:32:47','2018-07-13 09:32:47'),(132,1,'88f9cd5cd468ed1c0e73967f66','154.118.90.128','2018-07-16 13:54:24','2018-07-16 13:54:24'),(133,1,'3382dbae60eaf9e41462bfc567','154.120.124.44','2018-07-18 07:05:51','2018-07-18 07:05:51'),(134,1,'15bb5422b693bd5920696818b5','154.118.95.174','2018-07-20 10:06:33','2018-07-20 10:06:33'),(135,1,'e0710f7419b64e46ffb3b7410a','160.152.35.236','2018-07-25 09:07:00','2018-07-25 09:07:00'),(136,1,'28fb586e4c9d5e65504579510c','154.118.92.205','2018-08-09 12:53:44','2018-08-09 12:53:44'),(137,1,'f4d0ef579e54198310a35d726b','154.118.92.205','2018-08-09 12:53:52','2018-08-09 12:53:52'),(138,1,'4217f7816f457ca535f9c6638b','154.118.92.205','2018-08-09 12:55:01','2018-08-09 12:55:01'),(139,1,'9ddc20d6239b002bfb78da863c','154.118.92.205','2018-08-09 12:55:09','2018-08-09 12:55:09');
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article`
--

DROP TABLE IF EXISTS `oc_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article`
--

LOCK TABLES `oc_article` WRITE;
/*!40000 ALTER TABLE `oc_article` DISABLE KEYS */;
INSERT INTO `oc_article` VALUES (1,1,1,'2017-08-09 14:10:54','2017-08-26 08:44:54','catalog/blog/blog1.jpg','Plazathemes'),(2,1,1,'2017-08-09 14:11:00','2017-08-26 08:45:26','catalog/blog/blog2.jpg','Plazathemes'),(3,1,1,'2017-08-09 14:11:05','2017-08-26 08:45:32','catalog/blog/blog3.jpg','Plazathemes'),(4,1,1,'2017-08-09 14:11:05','2017-08-26 08:45:20','catalog/blog/blog1.jpg','Plazathemes');
/*!40000 ALTER TABLE `oc_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_description`
--

DROP TABLE IF EXISTS `oc_article_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_description` (
  `article_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `intro_text` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`article_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_description`
--

LOCK TABLES `oc_article_description` WRITE;
/*!40000 ALTER TABLE `oc_article_description` DISABLE KEYS */;
INSERT INTO `oc_article_description` VALUES (1,1,'Aypi non habent claritatem  insitam.','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;','Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam.Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam.','Momisa Blog','',''),(1,2,'Aypi non habent claritatem  insitam.','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;','Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam.Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam.','Momisa Blog','',''),(2,1,'Bypi non habent claritatem  insitam.','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;','Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam.Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. &lt;br&gt;','Momisa Blog','',''),(2,2,'Bypi non habent claritatem  insitam.','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;','Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam.Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. &lt;br&gt;','Momisa Blog','',''),(3,1,'Cypi non habent claritatem  insitam.','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;','Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam.Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. &lt;br&gt;','Momisa Blog','',''),(3,2,'Cypi non habent claritatem  insitam.','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;','Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam.Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. &lt;br&gt;','Momisa Blog','',''),(4,1,'Dypi non habent claritatem  insitam.','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;','Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam.Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. &lt;br&gt;','Momisa Blog','',''),(4,2,'Dypi non habent claritatem  insitam.','&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam. Aypi non habent claritatem&amp;nbsp; insitam.&lt;br&gt;&lt;/p&gt;','Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam.Aypi non habent claritatem  insitam. Aypi non habent claritatem  insitam. &lt;br&gt;','Momisa Blog','','');
/*!40000 ALTER TABLE `oc_article_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_list`
--

DROP TABLE IF EXISTS `oc_article_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_list` (
  `article_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_list_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_list`
--

LOCK TABLES `oc_article_list` WRITE;
/*!40000 ALTER TABLE `oc_article_list` DISABLE KEYS */;
INSERT INTO `oc_article_list` VALUES (1,'Blog',1);
/*!40000 ALTER TABLE `oc_article_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_to_list`
--

DROP TABLE IF EXISTS `oc_article_to_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_to_list` (
  `article_list_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_to_list`
--

LOCK TABLES `oc_article_to_list` WRITE;
/*!40000 ALTER TABLE `oc_article_to_list` DISABLE KEYS */;
INSERT INTO `oc_article_to_list` VALUES (1,1),(1,2),(1,3),(1,4);
/*!40000 ALTER TABLE `oc_article_to_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_article_to_store`
--

DROP TABLE IF EXISTS `oc_article_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_to_store` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_article_to_store`
--

LOCK TABLES `oc_article_to_store` WRITE;
/*!40000 ALTER TABLE `oc_article_to_store` DISABLE KEYS */;
INSERT INTO `oc_article_to_store` VALUES (1,0),(1,1),(1,2),(1,3),(1,4),(1,5),(4,0),(4,1),(4,2),(4,3),(4,4),(4,5),(2,0),(2,1),(2,2),(2,3),(2,4),(2,5),(3,0),(3,1),(3,2),(3,3),(3,4),(3,5);
/*!40000 ALTER TABLE `oc_article_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'test 1'),(5,1,'test 2'),(6,1,'test 3'),(7,1,'test 4'),(8,1,'test 5'),(9,1,'test 6'),(10,1,'test 7'),(11,1,'test 8'),(3,1,'Clockspeed');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (3,1,'Memory'),(4,1,'Technical'),(5,1,'Motherboard'),(6,1,'Processor');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'HP Products',1),(7,'Home Page Slideshow',1),(8,'Manufacturers',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (100,7,1,'Orange Shirt','http://localhost/saw_main/index.php?route=product/product&amp;product_id=52','catalog/banner3.jpg',0),(87,6,1,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(94,8,1,'NFL','','catalog/demo/manufacturer/nfl.png',0),(95,8,1,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(96,8,1,'Sony','','catalog/demo/manufacturer/sony.png',0),(91,8,1,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(92,8,1,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(93,8,1,'Canon','','catalog/demo/manufacturer/canon.png',0),(88,8,1,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(89,8,1,'Dell','','catalog/demo/manufacturer/dell.png',0),(90,8,1,'Disney','','catalog/demo/manufacturer/disney.png',0),(99,7,1,'White Shirt','http://localhost/saw_main/index.php?route=product/product&amp;product_id=52','catalog/banner1.jpg',0),(97,8,1,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(98,8,1,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cart`
--

LOCK TABLES `oc_cart` WRITE;
/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
INSERT INTO `oc_cart` VALUES (6,0,2,'946da3affd7a0974a050da2538',82,0,'[]',1,'2018-05-24 13:51:03'),(34,0,6,'772dcabe262ebfaa0844f1201f',101,0,'[]',1,'2018-07-03 11:40:32'),(49,0,4,'3abaef606d8fdca8b5dbf0703c',118,0,'{\"tshirtecommerce\":{\"options\":{\"colors\":[\"FFFFFF\"],\"color_hex\":\"FFFFFF\",\"refer\":\"product\",\"design_product_id\":\"c4ca4238a0b923820dcc509a6f75849b:15307121761126372760:82:FFFFFF\"},\"parent_id\":\"118\",\"price_of_print\":755}}',1,'2018-07-05 13:14:14');
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `homethumb_image` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (69,'',0,1,1,2,1,'2018-08-16 16:23:30','2018-08-17 15:12:17',NULL,NULL,0),(66,'catalog/Hazye products/caps/cap-black.png',0,1,1,4,1,'2018-06-25 07:51:43','2018-08-16 16:26:45',NULL,NULL,0),(33,'catalog/demo_tshirtecommerce_f015247590655ae1fa192ba36.png',0,1,1,3,1,'2009-02-03 14:17:55','2018-08-16 16:27:08','catalog/demo_tshirtecommerce_f015248425775ae34051ca1d9.png','catalog/demo_tshirtecommerce_f015248425775ae34051ca1d9.png',1),(59,'catalog/demo_tshirtecommerce_f015247590605ae1fa14a5b07.png',0,1,1,1,1,'2018-04-26 17:48:08','2018-08-16 16:58:36','','',1);
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (69,1,'Customized T-Shirt','&lt;p&gt;Designed T-Shirt&lt;br&gt;&lt;/p&gt;','Designed T-Shirt','',''),(59,1,'Plain T-shirts','&lt;p&gt;Collection of t-shirts&lt;/p&gt;','T-shirts design','T-shirts, shirts, t shirts, t shirt, plain, plain t shirts','T-shirts, shirts, t shirts, t shirt, plain, plain t shirts'),(66,1,'Caps','&lt;p&gt;Collection of caps&lt;br&gt;&lt;/p&gt;','caps','design, custom, caps','design, custom, caps'),(33,1,'Mugs &amp; Jugs','&lt;p&gt;Collection of mugs&lt;/p&gt;','Mugs','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (66,66,0),(69,69,0),(33,33,0),(59,59,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (59,0,0),(33,0,0),(66,1,0),(69,1,0),(33,1,0),(69,0,0),(66,0,0),(59,1,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (33,0),(59,0),(66,0),(69,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cmsblock`
--

DROP TABLE IF EXISTS `oc_cmsblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cmsblock` (
  `cmsblock_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `sort_order` tinyint(1) DEFAULT NULL,
  `identify` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `banner_store` varchar(255) DEFAULT '0',
  PRIMARY KEY (`cmsblock_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cmsblock`
--

LOCK TABLES `oc_cmsblock` WRITE;
/*!40000 ALTER TABLE `oc_cmsblock` DISABLE KEYS */;
INSERT INTO `oc_cmsblock` VALUES (19,1,0,'','',1,'1,2,3,4,5,0'),(20,1,0,'','',1,'0'),(21,1,0,'','',1,'0'),(22,1,0,'','',1,'0'),(23,1,0,'','',1,'1,0'),(24,1,0,'','',1,'4,0'),(26,1,0,'','',1,'1,0'),(27,1,0,'','',1,'1,0'),(28,1,0,'','',1,'0'),(29,1,0,'','',1,'0'),(30,1,0,'','',1,'0'),(31,1,0,'','',1,'3,4,5,0'),(32,1,0,'','',1,'0'),(33,1,0,'','',1,'4,5,0'),(34,1,0,'','',1,'5,0'),(35,1,0,'','',1,'0');
/*!40000 ALTER TABLE `oc_cmsblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cmsblock_description`
--

DROP TABLE IF EXISTS `oc_cmsblock_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cmsblock_description` (
  `cmsblock_des_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `cmsblock_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`cmsblock_des_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cmsblock_description`
--

LOCK TABLES `oc_cmsblock_description` WRITE;
/*!40000 ALTER TABLE `oc_cmsblock_description` DISABLE KEYS */;
INSERT INTO `oc_cmsblock_description` VALUES (141,1,27,'Banner 4 ',NULL,'										  										  																				&lt;div class=&quot;banner-4&quot;&gt;&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;a href=&quot;#&quot;&gt;\r\n				&lt;img src=&quot;image/catalog/cmsblock/banner4-1.jpg&quot; alt=&quot;banner 4&quot;&gt;\r\n			&lt;/a&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h3&gt;New Arrivals&lt;/h3&gt;\r\n			&lt;h2&gt;White Sneakers&lt;/h2&gt;\r\n			&lt;h2&gt;for Men’s&lt;/h2&gt;\r\n			&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;a href=&quot;#&quot;&gt;\r\n				&lt;img src=&quot;image/catalog/cmsblock/banner4-2.jpg&quot; alt=&quot;banner 4&quot;&gt;\r\n			&lt;/a&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h3&gt;Products amazing!&lt;/h3&gt;\r\n			&lt;h2&gt;Short  T-Shirts&lt;/h2&gt;\r\n			&lt;h2&gt;for Women’s&lt;/h2&gt;\r\n			&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;	&lt;/div&gt;																		 									 									'),(147,1,26,'Banner 3  ',NULL,'&lt;div class=&quot;banner-3&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-sm-5 col1&quot;&gt;		\r\n			&lt;div class=&quot;items item1&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner3-1.jpg&quot; alt=&quot;banner 3&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Clothings&lt;/a&gt;\r\n				&lt;/div&gt;		\r\n			&lt;/div&gt;		\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-sm-2 col2&quot;&gt;\r\n			&lt;div class=&quot;items item2&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner3-2.jpg&quot; alt=&quot;banner 3&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Handbag&lt;/a&gt;\r\n				&lt;/div&gt;			\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;items item3&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner3-3.jpg&quot; alt=&quot;banner 3&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Sunglasses&lt;/a&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-sm-5 col3&quot;&gt;					\r\n			&lt;div class=&quot;row&quot;&gt;					\r\n				&lt;div class=&quot;items item4 col-sm-6&quot;&gt;\r\n					&lt;div class=&quot;col-img&quot;&gt;\r\n						&lt;a href=&quot;#&quot;&gt;\r\n							&lt;img src=&quot;image/catalog/cmsblock/banner3-4.jpg&quot; alt=&quot;banner 3&quot;&gt;\r\n						&lt;/a&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=&quot;text-content&quot;&gt;				\r\n						&lt;a href=&quot;#&quot;&gt;Scarf Scarves&lt;/a&gt;\r\n					&lt;/div&gt;		\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;items item5 col-sm-6&quot;&gt;\r\n					&lt;div class=&quot;col-img&quot;&gt;\r\n						&lt;a href=&quot;#&quot;&gt;\r\n							&lt;img src=&quot;image/catalog/cmsblock/banner3-5.jpg&quot; alt=&quot;banner 3&quot;&gt;\r\n						&lt;/a&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=&quot;text-content&quot;&gt;				\r\n						&lt;a href=&quot;#&quot;&gt;Sneakers&lt;/a&gt;\r\n					&lt;/div&gt;			\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;items item6 col-sm-12&quot;&gt;\r\n					&lt;div class=&quot;col-img&quot;&gt;\r\n						&lt;a href=&quot;#&quot;&gt;\r\n							&lt;img src=&quot;image/catalog/cmsblock/banner3-6.jpg&quot; alt=&quot;banner 3&quot;&gt;\r\n						&lt;/a&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=&quot;text-content&quot;&gt;				\r\n						&lt;a href=&quot;#&quot;&gt;Accessories&lt;/a&gt;\r\n					&lt;/div&gt;			\r\n				&lt;/div&gt;	\r\n			&lt;/div&gt;				\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;			\r\n&lt;/div&gt;																																			 									 									 									'),(228,1,30,'Logo &amp; Social Footer                   ',NULL,'										  										  										  										  										  										  										  										  										  										  										  										  &lt;div class=&quot;logo_social_f&quot;&gt;\r\n	&lt;div class=&quot;logo_f&quot;&gt;\r\n		&lt;img src=&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHgAAAAtCAYAAABlJ6+WAAAACXBIWXMAABYlAAAWJQFJUiTwAAAKT2lDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjanVNnVFPpFj333vRCS4iAlEtvUhUIIFJCi4AUkSYqIQkQSoghodkVUcERRUUEG8igiAOOjoCMFVEsDIoK2AfkIaKOg6OIisr74Xuja9a89+bN/rXXPues852zzwfACAyWSDNRNYAMqUIeEeCDx8TG4eQuQIEKJHAAEAizZCFz/SMBAPh+PDwrIsAHvgABeNMLCADATZvAMByH/w/qQplcAYCEAcB0kThLCIAUAEB6jkKmAEBGAYCdmCZTAKAEAGDLY2LjAFAtAGAnf+bTAICd+Jl7AQBblCEVAaCRACATZYhEAGg7AKzPVopFAFgwABRmS8Q5ANgtADBJV2ZIALC3AMDOEAuyAAgMADBRiIUpAAR7AGDIIyN4AISZABRG8lc88SuuEOcqAAB4mbI8uSQ5RYFbCC1xB1dXLh4ozkkXKxQ2YQJhmkAuwnmZGTKBNA/g88wAAKCRFRHgg/P9eM4Ors7ONo62Dl8t6r8G/yJiYuP+5c+rcEAAAOF0ftH+LC+zGoA7BoBt/qIl7gRoXgugdfeLZrIPQLUAoOnaV/Nw+H48PEWhkLnZ2eXk5NhKxEJbYcpXff5nwl/AV/1s+X48/Pf14L7iJIEyXYFHBPjgwsz0TKUcz5IJhGLc5o9H/LcL//wd0yLESWK5WCoU41EScY5EmozzMqUiiUKSKcUl0v9k4t8s+wM+3zUAsGo+AXuRLahdYwP2SycQWHTA4vcAAPK7b8HUKAgDgGiD4c93/+8//UegJQCAZkmScQAAXkQkLlTKsz/HCAAARKCBKrBBG/TBGCzABhzBBdzBC/xgNoRCJMTCQhBCCmSAHHJgKayCQiiGzbAdKmAv1EAdNMBRaIaTcA4uwlW4Dj1wD/phCJ7BKLyBCQRByAgTYSHaiAFiilgjjggXmYX4IcFIBBKLJCDJiBRRIkuRNUgxUopUIFVIHfI9cgI5h1xGupE7yAAygvyGvEcxlIGyUT3UDLVDuag3GoRGogvQZHQxmo8WoJvQcrQaPYw2oefQq2gP2o8+Q8cwwOgYBzPEbDAuxsNCsTgsCZNjy7EirAyrxhqwVqwDu4n1Y8+xdwQSgUXACTYEd0IgYR5BSFhMWE7YSKggHCQ0EdoJNwkDhFHCJyKTqEu0JroR+cQYYjIxh1hILCPWEo8TLxB7iEPENyQSiUMyJ7mQAkmxpFTSEtJG0m5SI+ksqZs0SBojk8naZGuyBzmULCAryIXkneTD5DPkG+Qh8lsKnWJAcaT4U+IoUspqShnlEOU05QZlmDJBVaOaUt2ooVQRNY9aQq2htlKvUYeoEzR1mjnNgxZJS6WtopXTGmgXaPdpr+h0uhHdlR5Ol9BX0svpR+iX6AP0dwwNhhWDx4hnKBmbGAcYZxl3GK+YTKYZ04sZx1QwNzHrmOeZD5lvVVgqtip8FZHKCpVKlSaVGyovVKmqpqreqgtV81XLVI+pXlN9rkZVM1PjqQnUlqtVqp1Q61MbU2epO6iHqmeob1Q/pH5Z/YkGWcNMw09DpFGgsV/jvMYgC2MZs3gsIWsNq4Z1gTXEJrHN2Xx2KruY/R27iz2qqaE5QzNKM1ezUvOUZj8H45hx+Jx0TgnnKKeX836K3hTvKeIpG6Y0TLkxZVxrqpaXllirSKtRq0frvTau7aedpr1Fu1n7gQ5Bx0onXCdHZ4/OBZ3nU9lT3acKpxZNPTr1ri6qa6UbobtEd79up+6Ynr5egJ5Mb6feeb3n+hx9L/1U/W36p/VHDFgGswwkBtsMzhg8xTVxbzwdL8fb8VFDXcNAQ6VhlWGX4YSRudE8o9VGjUYPjGnGXOMk423GbcajJgYmISZLTepN7ppSTbmmKaY7TDtMx83MzaLN1pk1mz0x1zLnm+eb15vft2BaeFostqi2uGVJsuRaplnutrxuhVo5WaVYVVpds0atna0l1rutu6cRp7lOk06rntZnw7Dxtsm2qbcZsOXYBtuutm22fWFnYhdnt8Wuw+6TvZN9un2N/T0HDYfZDqsdWh1+c7RyFDpWOt6azpzuP33F9JbpL2dYzxDP2DPjthPLKcRpnVOb00dnF2e5c4PziIuJS4LLLpc+Lpsbxt3IveRKdPVxXeF60vWdm7Obwu2o26/uNu5p7ofcn8w0nymeWTNz0MPIQ+BR5dE/C5+VMGvfrH5PQ0+BZ7XnIy9jL5FXrdewt6V3qvdh7xc+9j5yn+M+4zw33jLeWV/MN8C3yLfLT8Nvnl+F30N/I/9k/3r/0QCngCUBZwOJgUGBWwL7+Hp8Ib+OPzrbZfay2e1BjKC5QRVBj4KtguXBrSFoyOyQrSH355jOkc5pDoVQfujW0Adh5mGLw34MJ4WHhVeGP45wiFga0TGXNXfR3ENz30T6RJZE3ptnMU85ry1KNSo+qi5qPNo3ujS6P8YuZlnM1VidWElsSxw5LiquNm5svt/87fOH4p3iC+N7F5gvyF1weaHOwvSFpxapLhIsOpZATIhOOJTwQRAqqBaMJfITdyWOCnnCHcJnIi/RNtGI2ENcKh5O8kgqTXqS7JG8NXkkxTOlLOW5hCepkLxMDUzdmzqeFpp2IG0yPTq9MYOSkZBxQqohTZO2Z+pn5mZ2y6xlhbL+xW6Lty8elQfJa7OQrAVZLQq2QqboVFoo1yoHsmdlV2a/zYnKOZarnivN7cyzytuQN5zvn//tEsIS4ZK2pYZLVy0dWOa9rGo5sjxxedsK4xUFK4ZWBqw8uIq2Km3VT6vtV5eufr0mek1rgV7ByoLBtQFr6wtVCuWFfevc1+1dT1gvWd+1YfqGnRs+FYmKrhTbF5cVf9go3HjlG4dvyr+Z3JS0qavEuWTPZtJm6ebeLZ5bDpaql+aXDm4N2dq0Dd9WtO319kXbL5fNKNu7g7ZDuaO/PLi8ZafJzs07P1SkVPRU+lQ27tLdtWHX+G7R7ht7vPY07NXbW7z3/T7JvttVAVVN1WbVZftJ+7P3P66Jqun4lvttXa1ObXHtxwPSA/0HIw6217nU1R3SPVRSj9Yr60cOxx++/p3vdy0NNg1VjZzG4iNwRHnk6fcJ3/ceDTradox7rOEH0x92HWcdL2pCmvKaRptTmvtbYlu6T8w+0dbq3nr8R9sfD5w0PFl5SvNUyWna6YLTk2fyz4ydlZ19fi753GDborZ752PO32oPb++6EHTh0kX/i+c7vDvOXPK4dPKy2+UTV7hXmq86X23qdOo8/pPTT8e7nLuarrlca7nuer21e2b36RueN87d9L158Rb/1tWeOT3dvfN6b/fF9/XfFt1+cif9zsu72Xcn7q28T7xf9EDtQdlD3YfVP1v+3Njv3H9qwHeg89HcR/cGhYPP/pH1jw9DBY+Zj8uGDYbrnjg+OTniP3L96fynQ89kzyaeF/6i/suuFxYvfvjV69fO0ZjRoZfyl5O/bXyl/erA6xmv28bCxh6+yXgzMV70VvvtwXfcdx3vo98PT+R8IH8o/2j5sfVT0Kf7kxmTk/8EA5jz/GMzLdsAAAAgY0hSTQAAeiUAAICDAAD5/wAAgOkAAHUwAADqYAAAOpgAABdvkl/FRgAAKD9JREFUeNrsfHl4VdW99rvWHs+YczKHEAIhEAQFGRVBFBwR0YpDtVpr7eBE0TrU3mpbrda2FoeK89CWKlbEWaYKGGSeAiEBQgYCGUlycuZhz3t9f5B9jFPvfe59vq/97sN6nv0k2SfZw3rXb3jf32+FMMZwcvzvHfTkFJwE+OQ4CfDJ8e86+Lq6OixZsmROIBAYEgwGe1wul9ba2jq9vr5+6H333XfPnDlzjJ6env/0QoQQ6LqOTCYDTdOQk5MDxhgymQx0XYdpmlAUBZRSlJaWQlVVZDIZqKqKRCKB3NxclJSUoL+/H+l0GplMBvF4HJRSnH766chkMujp6UEsFkMqlUJXVxemTp2K8ePHo7GxEbFYDIlEAj09PZg1axbKysrQ0NCAcDiMWCyGaDSKUCiEb33rWygoKMD+/fsRi8VQUFCASZMm4dChQ1i7di3KysoQDAYRDAaRl5eHMWPGYP/+/aitrUVZWRl8Ph+CwSAqKiqwc+dONDY2YsiQIfB6vQgEAigrK0Mmk0F9fT18Ph/cbjc8Hg98Ph/8fj86Ojqgqiq8Xi8kSYLX6wWlFF1dXeB5HpIkQRAEiKIIt9sNy7KQTCbhdrvhcrnAcdx/isWIESM+BzidTj/+1ltv3ZdKpVBWVobCwkLE43G0tLTgggsumHbJJZfMAqD/Z8kYIeSkufw7uuj8/Py6559/vveKK65AR0cHampq0NnZCQAIhUJnaJqWzxiDbdtfe1iWdXIW/50BliTpjcsvv7x0xYoV33vpxRcjgiDCNE+AxvO8Zds2GGP/9Dhpvf/GAJumiVAoZKmq8rfzzz/vRTlQAtM0AACaTpjAk2/0zYwxcBx3EuB/5yTLia3JlIJIWkn+eBYPvp9HxjIxaTRDb/yfx92T4P6bA+x8YzMKRbXlKcMMXHuxhT29wLoowGzyT62XUnrSTf//wIMJYTA0gPNxwGiGW/8M7NwvoijXOpk5/28A2LYBWQROO83Arb8DalpLMLrCC9syv/JHNgMo/dx6T47/DwCmhKC0wMJvX+Xw0trRAIbChgUwe7BfBqE8KCeD/l8wXiemfzm2f/m88xmlNBsmnIMQAp7nIQgCeJ4Hx3HZg1IKURSzYoJzOD8713MO5zpOIjn4PoOTy296vn/2Tv/PY7AgWOhP2lizbyQAEUAMDINUEwZQngOzLfjFLjBxOFJpExz9amweoFgAkJ0s27azLymKIizLyk66A5Yzyc5EODTMAeqEp7FhmiZ0Xc9ycOecYRjQdR26rsMwDGiaBlVVoSgKMpkMMpkMUqkU3G43UqnUF7531LNMJgOXywVN06Bp2leuaVkWbPvEorcs6yvneJ4HpRQOvXRA5jgu+36DF+fgd3YW0eDF9T9dFFmACQNMULjdQYShnUDUtgGSxRei24+eAxtA+HrIVTfDlVMMM9UHmwGMsRLG2GxCyOmWZZX19vZ6DcMQDMOgpmkS27aJYRjEtm2hsbFRNAyD6rpOdF0XdF0nqVSK6+rq4hVFobqu85qmcZqmUdu26bp166iu61w6nSaqqlJd14miKNi2bRv27t3LxeNxomka1TSNqqqKrq4uUEq5ZDLJKYpCNU2DrutQVRVHjx4ltm0jmUzCMAxIkgS/3w/LsqBpGuvo6IAsy5AkiblcLubz+Sxd1y1d13H8+HFIkmTLsmz7fD47k8nYuq7j2LFjEEXRlmWZNTc32wCsTCZjp1IpJoqiLUmSKUmSJcuyraqqAcBKpVK2IAiWKIqM4zhLVVWd53lTURTGcRzjeZ6JomhRSnWO41IAWhljNQA2AogNNijHy2ia9s0AgxAQpoMQC4AbgAeMcgCzYdtAIMCh6aiG/ds6cel5ClKNy8AF5kEYXgUW6wexbYvn+YjH42mQJCmUyWQ8oihKHMcJtm0DhIIRgUgCdQMG4anI4mDgbcvtZhZNpjNQNYMRQhilVOA4TiKEwLZtqKoKmzGb5ziZ4zjhhEXwUJQMFEVhgiB4CCF04G+JqqpM13XG87xEKRUGrIhQSpFKpWzDMASe5yVCCBhjxDTNjCzLltvtppZlsQHPQWzbVk3TNFwuF5EkiViWhQFVzzRNU/H5fESWZYdREEVRVNM0dZ7nqSRJWQ9jmqbCGLMAEEmSCMdxsCzLsG1bY4wRSikkSbJt2844aFBKmWVZOsdxmtvtTnIcF6KUJgHYgwF0uVwwTROxWAyyLH/F4vnPV4IFAh4QCgEqAbYJCgGMMUgiQAhF9WYVfIrCl5cL2hvHxhWvouyMKzBu1jQkY7E+ythax9W6XC5QSsDzAhQ1ByAaJCEGU2fIKBSpdBLFYJCC+bC9HlSMJNBNhkhUh8BTSKIIa8DNef0exBMA4wCJF2DaACwGU2OwLBuiKEEMEBAtDi2jIi8/P1v84Hk+S+k0TUMmk8m6RpfLlXWRmUwGjDF4PB4kk0lompaVYwfHT1mW4fF4kEqlYBhGNjwQQrKu2u12w+/3g1KKdDqNWCz2hfhNKc2GlMFhyjCM7L14nodpmlnX7zzHYMuVZRm6rmPlypUQRRGXXnopdF3/eoApoeAow/G+OGAXAvDDtikosREIEGzfZeNIKzB9GIXNCERvHuJEQcXqVcgfMQShISUQk0lQ04JNTsQnQjgYBo/8onUIHaiHkbKwrz8fO3ZbONhRjcWaC5nTx+Jl32SMzJuIKaMjGFomQjE4mKYJMAYbDHt31GNkeRS5fACWxIFnKqiHh9uvgzEDxJYQrxeheochpygf69atQywWw+jRoyHLMjRNQyqVQl5eXtYdC4KAhoYGZDIZ9Pf3o6SkBKIooq2tDVVVVSgqKkI6nYZt29m46PP5EA6HsW3bNhBCEIvFkJOTg56eHhw4cADz589HJpNBbW0tvF4vqqqqUFlZCZ7noarqFxI1y7JgmuYXkkNnoTiLxfEYzgIYTE3dbje6u7vR0NCA48ePo7y8/GsrTVmAdYuDaoj46dyNiPb3Y+M+L2ANgSj70HI0hs+2GSjI9yHPz+B1UQoi2IWlheBUDaTlCAoIEA4GwTgKUdUGHkQGtTXkeNeBeUO0t71wnl+NnHNwX994TQvnNAxz24drdh874C9d31ci/M1jKcYp+Sp02w3mcoFyHChhaDvcjXHlR1HIypGiItx2DMQngwQSANQTK3xjEKRqOHy5+aitrXXiJVwuF3RdR39/PxhjKC4uzlprb28vIpEI1q9fj/POOw/5+flYv349CgsLUV5ejkwm84VEcd++fdi9ezeam5txySWXwOfzzejq6jqzt7e3MpVKuWpra0Mej6ctFArVHDt2bPvevXtRVFSE66+/PlsWdCzyvzMcTyRJEjiOQzgchqqqyMnJAcdxX0tZ+cE8OJEhmHEKxWXTLbQfi2OrleSjGYnbW2cimSIQZfE7Kz9L3Tzcs2YM5OLIe/v8ry8qH/9H+HwoaG6Bz+dDaEgJVI8HAmMwLcCd4wYiwsWJIx0vNezfN2zr5ha07gEunikgVWRglIwzt9Z2XrvtyIhfnjmx6grZG9vHdSYBWYYky4glk8LWPZueKuBip0rjj7GMlmZBWafesMy4Cg+xfCZED4NQ3Kcdbih7eNbY0fuj0eh/dHZ2zkylUpsopT2MsVPD4fCY0tLS34qiuGEgMx62e/fuX9fU1Jzi9/u7o9Ho0WQy6e/v7z8lGo3+hyRJWymlWetLJpNoaGhwJvnyNWvW/FoQhIkNDQ0IhUIghOCdd96By+XChAkT4HK59guC8KBhGCsjkQgURckmdI77HVzjVRQFuq5nY6osy0ilUlBVNbswvF4vCCE4duwYSkpKIMsyBEH4p1oEPyjHgiAyHD1KcCAJBCuA8uFeLZqinfubrHGHm6Kv1jfsOrO3OYLNnzajjewunR/xPH767J4LcdakC5BfALm/H0WhMI75fLBME26vC53dHd9f++zSP3c3xFCnAq6R83DPExdoQ4eVhOoOHhha7noelw7fh9Vr/15++HF7F587tzi/cGQ4kkpDKC5C5HDTb5a/t/SO0H4bu04hoITBKwMSgOkVLpx9qQu2V8elt6cw+eJ55RdejR/GYrEHVq9ejYaGhnMmTZqEQCCAw4cPw+/3T5w9e3aeaZp2Op3+wcaNG2/etm0bcnJy0NLSAlEU0dTUhGnTpr1/2WWXFRNCbNu2swlMcXExampqnq2trb2jrq4OAHD66afjxhtvRCAQiHV2dgZ2796NTz75BJZlTfB4PB9fccUV9xUXFy+Ox+OIx+PQNA2BQACSJKG5uRmJRAKWZWH48OGQZRnNzc1gjME0zWyDgWVZEEUR0WgUdXV1iMViKCsr+y8V//nBRNe0GHxuEaeeS7B0NUOGy/tTjtFU9dqrmw/EOmoAsRvuUg9auzR8Hyb+zGeA9f84PzxxyqPp3z70IDl69ARvNQ24PRJE0Q8l5Zq4z56DuN/C5Xfd9s7c+XOe5Qz1M1W3MG76NZO3bJq1sqvjO8WX8X/B6fUmv/eFyNKRLz1/qR2NQLNtBDS1ciRs7OwGvn3fEjs4pLIuYwXMlr2fDR1Rcn9xKGJjxnwNzbGReOr12ftjseiuu++++7fz5s279vnnnx9ZXV2NKVOmwLIsh8ty6XTalmX52WeffTbv6NGjc996662KDRs2oLy8HD6fD5RSl6ZpAiFEsywLgUAAOTk5eOGFF95ZuXLllalUCgBwzz33YNGiRS/m5+c/a9t2qyAIwxRFuX7x4sW//O1vf4tkMokVK1b88YILLmg8//zzP25tbYVhGOjv70dpaSlaWlpQX18P0zQxY8YMKIqCjo4OlJeXo729HYQQTJs2DYlEAqIooqamBg0NDRg1alTWJQ/mzf8UYMYAkQfGjeDxyhoeP37OwC/uCJ/15iPX3xzr6McFl1yAn9z6/eacoWXtH/59xHk3PP08YGvoB7Bmz54HJjH7XZffu48ZJjjTRFtLCD7PIVSNKl7041t+t/iUqfGC4009Pa8u2U7zucbx37txVx1yr6o57/KLLtn44ey9Z6TexlAAmxoPz3OJ3DV5RYVv85oOeD2ZoQAKxp6BBd/98c0cFZbKMiDO2P7T95fgyR/+jCCSAv740PUYM7bq56GuHj0vL+/BK6+88sH8/PwNV1999ZxIJALbtqFpGuN5XrBt2yCEhIYMGbJw4sSJqKysfPfo0aMLCCHweDzgOC7NTgy0t7ejqKgIb7755m1vvPHGlZIkQdd13HPPPVi8ePGNAF6PRqPQNA0ul6sxEAj86qGHHupoaWl5efny5VAUBU888cSbI0eO9CUSCaTT6aybdrvdCAQCsG0767Z9Ph88Hg/8fn/WQh2hSBAEeL3eLHh+vx9+v78oGo2ONgyjlVLa9Y0AU0IQ9AEPf0rx0WqG+QAKleMzTz9vLGYF/bjtvrt+lx8o+AWlAvJ+UfWHV6o3/Yzt2YURAIR4FGo4fKqfsX2UIwhHFeza3IqpZ+3A2DIrt6AisgDJI1dcOb9r1o6mIQAtRHtdc/wHNzX82TV2wt26b2L1k3h79l0AUsk0ku3tU4uHD39bS6dBCwuW3Pa31ycWDCk9oqYzS332MYC14I+LX/zRQ49LOAUqvj18JOZ+76aXM4n0UdM0YZomIpEIiouLV1VWVs5pb28/waVtW+Q4TnCy2FQq5ShGm/Ly8haEw2EMcGMbADNNEzzPo7GxES+99NJTkiQhGo1i5syZeOSRRx5PJpOvf/zxxzh48CC6u7sRCAQwY8YMXHXVVa/cfffd973//vujTNNEbW2tt7q6+o7vf//7zzU1NWUp1OBuGIcafVm6ddS8wRk0YwwFBQVYs2bNVc8888wKy7Jwyimn4MILL7yY47h/fC3APA/EdKB9s4E7wSACsNx+9tCSP90hpGLV6UTmcFd3P0SBx7Cgd83Ooqqf/Qn9mIYQppgaJhkaobyAjKIjFs8gd1g57PC2+fBvecs42uYePr4X3WoRJpwuw+Jd+NVf7Jzd/9j6018/cde8itzTUmEC/JIRVCU5XC9wCgGDpmmQeX7P7MsvGw8CdLS2Ie4F/vH81tveeLzxlJ9ARBLA2DtuRenQsp/Fu7qyk2CaJpLJpHfUqFEoKSlBU1MTTNO0dF23Hb4pCMIJBqHruV6vF7ZtwzAMmKYpMMY4Sqlx9tlnY8WKFU/39PRIBQUFiEajuPzyyxWXy3X/M888g40bN8I0TRw5cgSFhYU4dOgQWltbsWDBgmkTJ048tnPnzhwAOHr06J9KSkr+LghCxOHAOTk58Hq9MAwDoiiCMQaXywW32w1Jkr5SzGGMwe12Izc3F5s3bx65atWqFZMmTdpUXFzsGjp06ETLsjKiKH69BZsDlYe5HoaSJEMfAK/sMhnYC/FoMkugCaUwTSUnl/gBjMQu5KKLK8CDxJQltx89x9qRw2xsO3Zk0if/WP7RWdMimDkng5h0Dt5/6+49p46rWEYJU7fvbpt3uHbl7Np0+eiKvAPY/xTwUQ3ByoMckgrsYvtzPhhOJ8EpOnwpFZFOXXAtWfn4YyCohY7uMeMw8/rvPG7GYvHB2jQhBIZh0L6+vmyHIgCRUioLgpB0BIqBQ3O73fB6vTBNExzHyZRSied51bZt165duxZpmgYnHp911lnVmzdv9qxYseKBMWPGePr7+7NJkq7rWLZsGTZv3pxMpVJZAltfX8+1tbXNFQRhmWVZoJTmrVu37hJFUfjc3FzEYrHVeXl5vbt37z6HEDI3k8mEeJ5/YnC9PTc3F52dnTM3b958465du64LhUL44Q9/eOiiiy56PT8/f5vTkTpkyJCvoUkDqbSf6hgKGxwA3jZIUtVKbF0//nmBn4BQDgQagDgAP4poEBZhlIFA4HhYqTRqX/39WztaOzFzhoiG1Lmo3rD4g1Ejyq443tMPyzIx88yqF6efNS0YUYLFB1beUuNxwfXgd22M22rDYASGcWLlMp6HGE/B1dYJ34iRMF9/+pdjo81egYqI2DrOWnS7Oiy/8Ff9mSRsSQSXymSFFsaYbdt2NnmxLIvneV5wYpojJhBC1N7eXrjdbvh8PoiiyDRNYwOeoKyzs5No2glun5OTg9LSUve6deuat2zZUrJ7925QSjFjxgxs2bIlmxA5WfZgd6tp2hBRFMFxHFRVvTyVSr22adMmpNNp3HvvvVfv27ePf/vtt/8+atQoJJNJ+P3+YdOnT7/TKYo0Njbe+corrzzt9/vhdrsxbtw4fPjhh7e+8847P160aNGZkydP3t3f3/9NWTRgACizCaYC2AogBvJ5sWEgdaeUADZJC7wIwAXADcoBlmWnlGQKo6dOQvUn6x9sbm0Y5QPB1mMV+MldF5unjim7pvVoLxTFgGXxMIwkBEGJyi4+qqnUOtQGKBmgu89CAQgIBQyXDF9fGKU79oAFAyBrN7qr/vzGL6rgxjY7Azp5KqZdc81DajqlBbbXQAj6ERpaAk47IVG6XC53X18fOjo6EAgE4Ha7ma7rzJEUHWVJlmVaX1+P48ePo6CgAJMnT866TAAJn88HAJAkyeHEz86ZM6d4yZIl9yWTSY/H44HL5cIll1ySrZJ9Ka4aw4cPb5IkaQXHcdB1HRzHLX/uuecK77rrrt+99tpr2LFjxxM9PT3DnnzySRw7dizzm9/8xr1r165FV1999SvBYPBAS0vLgj/84Q9PK4qCRx99tOe00057NycnJ7xu3bpb77zzzsIPPvig+txzz53m8XgOfRVgQsAAqDZIEQPyAcwCsAaAwZAtGp6Q1CgoR8AJnwPMOA8IZaADtcPDBw/eagAQaAFgj8KYqtKdbjcMxmQwJkAUEhC8+RCoBckte2Sfi4u2AYEUYNiAbTCOEIBjBKqaQkeeCHnMKDTWPPmbkBHmxsKFZgBj71oYK87Lf5zU1qFg2fuwb1iA0OgKEONEcqTruhiNRjFq1Cjk5eXBNE3KGKNO/BVFEYIgwDAMMnLkSCSTSYRCIXR1dcler9cdDocTtm33TJgwoQ1AudOo/8knn6h33333c7fddttzjDHZqVY5ZU1RFL+QMCUSCUNV1WxFShRFBAKBtNfr/SPP878byIiHLV68+K2KioqH33zzzTcZYxMHMv/8AZ7+UFNTE8aNG5c57bTTqlwuV0LXdYwdO3Z5ZWVlfV1dnefIkSMLKysrb/8CwJSnMEwfqC0jRyTuXwluTAHFebDhsW2eALwcCEBLpyGJIiSXDJ5mRHDcAMASdNYLmRLJlGSYpgWPSJReAH32qQDGY2+j+N76z1QoqRDOnnkIHk899n06FRFpHHJKw+nygv7VcRlXRnqAjCJDdrsFIZgHK9yPQIkK/tRKCFpbjla49p5DP/Ji8fspDKmajT/O+9bPNSXNhqRVgLFSGvB36ZYNcYDz6rqenjBhAoqLi1FXVwfLskggENBt20ZTUxOSySTGjx8PURSJKIoYN24cOjo6kJOTw2cyGcHZmXHuued+4na7f9Te3o4xY8Zg1apVz02YMGGV3+9HTk6OOhDfs7HS2a3R1dUFn8+HiooK8Dyf1bErKysRCASgqurwYDAIAAgEAmpFRcV1ANDZ2Vmo67qjdAnJZBJnnHHGiokTJ57W0tJC9+zZc7bL5Vqlqir27NlzdlNTE7nuuutQUlKywzCML7roxPEQfMJGeArnQdTyq8unC/e8v48nv2vR8QupoH2+LIf279gOQZDQp6rw+P04ber4+oIcdwwYFpCwAT91EUMprWqgfT2gpoWS4WOPjKmSKq8bsRPdRgOOHzjnwszskienTP0EgUAGgILw9nVoOXoA3VNuQHIPKb9mONDeTeERme4LkD/Ft21HSV8IcmUBJKUEma2vPFam9sDwuLB3lBdz7v5lX4HP/xLjgVWdPQ9ue3/Zw9ePH/brsmk/ezSROlEk8Pl8CsdxaG9vRzweh2ma6/v7+0N79+6FaZqor69HLBbDzJkzN7vdbhYOh4nb7YYoisw0TdupG48cOXLx7bff/qPFixfDtm10d3eXP//886vnzZt3ic/nA2MMubm5CAaD6OnpwebNm+H3+6HreiAYDApjxowJ8TyfbSZIJBKIRCIoKCgQBvFayaFlpmnmAUAymQQhRFRVFZIkPfL0008nnnnmmcdfeOGFlSUlJYei0Shdv379mGAwqF533XU/9ng8r8fjX2yDpUaSIeA/CL/0DvLTK9qvK0+y38904SdnSBiac3xjX9N6teHdt+HSbWi93fj0rXfw8T8aOppDExog2ngWB3Bjygi51lVvK/zLOwjtrcHos2e/ceqUmSinaSy+shfP/mDlRZdd8OTLQ0p0ARgBIBeFI4ZBikcDjW//beUb78en7GqVUZwnY7Qnyq356NkrP3trNXIicWTyKpFetcn/8QPv364FvHBxCi6+aF7z/JlVZV2f/gpc+zqEM72lTygJ+vPqzY8ELHs0P6Dd5ufnH7NtGw0NDSgsLERNTc2Yxx57bHY4HEZJSQmKi4sXLFu2bOMHH3zwcHFxse2IGKZpEkKI4GTx6XS66a677npm8uTJaGpqgqIoiEQic9va2rbbtj3Z6RqxLMvpGvEnk8lFBw4cOLZixYrOcDh8gyzLcLvdMAxjoa7rNwyIG4cTiUQDAIwePXqH49bLy8u3DnSMZAKBQKsoitizZ8/kN9544+ZoNCqWlZXh1FNPHTt16tQxs2bNQnd3t/zEE098LxwOB75Ck9IGg9oeuh25bdMLew9c2pDqp+GUgnPHAt7Eiu+sfrFp+OFd5q5T5qYfgGXld+7bdMff9486e+exguk36ctxNYC2uo4hFT9/4FO48lY3MeOD02bOfGPujQ/+x59/WTc29JcQvnW+Cr+19Uf+8drFwmnq+wDtOFCbqNi5dce3G/vrcg0ANQ0yKDJY+nGGa4+/tGRb6eiF4C9+KnHLjW8nt616aWVvFKFmL26aJGCcq50XDt/+SKi9ufho3x5MjGpll+UDXT0hhBKJMZTjmnRdR25u7toLL7wQ1dXVYIwhEAgMq62t/VSW5QORSIRftmzZGCejduTH/Px8iKII0zQ5R2RIJpPIz8+/89VXX51w8803n7Nv3z54PB7s3r37zEgksqe8vHyL1+vdq2ma6na7R+3du3f29u3bA3l5ebjqqqsgy3LQ7XZj//79Ly9duvRHQ4cORUlJSe+LL764Y/ny5c0ATnnzzTd3jh49GqZp4q9//etOAOdt3Lixbs+ePQ0FBQVYvXr1lq1bt8q33npr5rvf/e7NADbwPC8vWrToB3fcccdDH3744XlTpkz5cM6cOeeUlZV9nr2/8NoHa3a+8K2LrzkbONwB9Cp+gPMgY5gQSRL79ur4tMfGz267Fcm+fqx49x30YwyCXA7us3fCED0gWhpTAOQB2DBuIi7cvG5GlRw8tHL16vpPlz04tMTYj1M9wJkTgM5SDvf+nqG2wYYPwIz581CaX4R3Xn8ddn4hOF8h5oaP49pID3rGnYqKdf/Axmu/h9c2rUfecIJ7rpUR6VWRygCGLSOZJjAMDdXbLZSffQVeeOPV2Xo6vdEwDMiyDI7jFrz11lvvvvzyy2htbYWqnigvnnXWWaioqMBdd921LBAIGLfffvtNOTk5qK2txfTp0/HCCy+U9fT0dDpZMcdxyM3NRXd39/Knn376mpUrVyIWi8HlciEYDKKoqCjLo2tra5GXl4f7778/Onfu3J9blvWy2+3G2rVrUw8//LDH5/Phpz/9KZYsWYJDhw5hxIgROHz4ML797W+rpmmS5cuXS6NHj0YsFsPNN98cGj9+/GePPvroVZMnT8Zjjz12iyRJLxuGkW1Q6Ozs/Nt11133XcYYnn766R+de+65r2YB3rt//082b9pxG1PjOa5AIJVXUNzr8uSEDc2Q1FR/UbS/Nz9t2fyokZXxRDzhrq+rL5F5y6gqLQy7CobFU6AsHYv5tL6+HKZmuMIhperk8y+4Ni/Hv5Fxsr+1o/fx3Zs+vj5x7DOvYLXh3Q0a2sMyLp4zFmdffNGxCy66+DUlkaBbtu66qLCgKDRuXOWR/p7eor1NTaMLCgu6T6sc9XZDS8uV3W1t4yyT41xeHralw9YZCADTtkE4Ar9HTldUVO0aUjpkoW3busPbOY6DLMsTm5qa7t+0adOc/v7+gNfrTUyZMqVm4sSJf83Nzf17U1PTt5577rn3jx8/jo8++ggLFy5Un3rqqSGdnZ3RAZ6cVcgGKNO3d+3atai6uvqsxsZGZDIZUErh8/lQXl6O6dOnH5w2bdo7wWDwmUQiEdE0zWnGq2pqanqEEGIUFRXtjsVikzweT9Lj8WSi0Wh+KpUqMgyD9/v9fXl5ecctyxI1TZu+dOnSqcuXL8f999/ff+edd5ZHo9FMY2MjZFnG6NGj4Xa7T73iiiv2fPTRR9Jrr72m3XTTTXIW4M6OdkhuP3SL8pQwk8ACbAuUo7AYhSjykATKZdIZizEGt9dbyFNm6pYd0W2AoxSgFCpjHs00qZ/jkiydRiQWgygKyM3NhU29uT2RxPmdnX1VXtHmh5cF+0W3ez8HsokwBsu2gQGZjhCCpJIBE0S4BQFaPA7rBEiQRAnptAmb2bBsE6IogoANdEIwcLAQi8ag6ToURQFjDD6fz+HEkGVZZozlAEhqmpbRNA2UUiSTyfv/8Ic//H7p0qWwbRuLFy/uXLhwYVlXV1dWKnQUJdu2IcvyQEsSHa0oyiRFUYoZY0wQhF63213H8/whpz1oMC/mOA4ejweMMaiq+pUuS6dFyAkbPM8jLy8Pjz32mPrAAw9IjzzyyMrbb799/scff4wdO3aA4zjMnz8fEyZMwJlnnnmkra2t4t13321fsGBBeRbgI0eOZMtOzssMbhVxBG/DMLIP5ChATgXE0VJ5nodlWWhubkYoFMLpp59+Qk+WZQSDQUiSlO2VcjaEd3R0QJIklJaWoru7G5lMBkVFRXC73ejq6oKqqigtLYXL5UI6nQbP89l7OW0woijCUaxSqVRWxw2FQtk2HeddnIl0rNvj8SASiTw6Z86cBzo6OkApxZtvvrn10ksvnTl44/tgod/56rS2OiA5bTiDW2adeRwMoHO9wWKL8/tf7gELBoNob2//87x5877f3d2tL1iwYOHEiRNfGViYEEUR1dXVj27evPmB6dOnY8WKFXeXlpY+9QWhY/BNneY0RVHg9Xqhqiri8TgIISgsLER/fz9CoRA4jsPIkSMRCoVw7NgxFBUVYdSoUWhsbMShQ4eQn58Pr9eLI0eOoK6uDlOmTMGMGTNQU1OD/fv347zzzkNpaSm2bNmCwsJCTJ48GRs3bkRXVxfmzp0LwzCwYcMG5ObmorCwEKZp4tNPP0VpaSnKy8tRXFyMgwcPgud5VFVVQdd1NDQ0IBgMYujQoVnBwelbNk0z295CKYWqqnC5XPD5fKitrT3S3d0NABg2bBjGjRu3x1k8/2yYpvmFitCXqz7/410JlCKRSKCysnLR66+/fs4tt9xS8d577728b9++a4cMGVLNGBMIIZds3bp1yqxZs7BkyZJ1Ho/nqa8oWYMbvxhjHCEkaNt2maIogqIoTFEUQggh0WiUi0ajXDweZ4QQ0tnZyYfDYdrf3w9FUWgmkxHa2tqEcDjMJRIJ2LbNt7W1iYcOHaKhUAiHDx8WDh48KLa2tpLDhw8jJydHOHjwoOT1etn27duVI0eO2IZhQFVVS5Zl7ciRI3Y0GgXHcRbHcWpnZyfTNM1WVdUKh8NGX1+fKYoic7vdYIyZmqZZqqqSWCzGeJ43VVW1KaVQFIUxxgiAqCRJzcFgEDU1NaiursbChQuxb98+wwHq/PPPx/Dhw/8WjUa/ANi/aoOdbdsIh8OpyZMnj1+1atWT77333g8+/fTTOZFIZI7L5cLEiRNxyy23hM8555wlPp/v4Wg0ikAg8LnnaW1t/bIonmMYxvXJZHJuMpkcalmWe0CYF0zT9JmmSW3bdlmWJei6zpmmSRhj0HUdmqbBNM2sS0+n046YD0VRkEgkspMWj8eRSCSyk8ZxHILBIFwu14lW3YH+JWfhiaIIj8eT9TI8zztZstMGawuCYFFKFY7jDJ7ndY7jUhzHMUKIJYpivLi4+PeiKH4Yj8fR3d2NjRs3wufznbJ+/fot1dXVufn5+VizZs3GysrK2U5t+Ot2bXyTtX7Tuf+ui3Zcv/PZgOZdqGnaZF3Xhw30Wje73e6duq6r6XQahBBUVFR8M8ADg7Nt2wIgUErFgYcilFLBNE0mCILAcRxnGIZNKSWCIIiMMWZZFuN5XuY4jmMnSjmE53mZUkoGrsFxHCexE09MKaWuQfe0LMtSKaVk4FoqpZQNiA2mbdv6wGcwTVO3bdvkeZ5YlmUbhqFzHEc5jiOGYeiMMXtgAnWO4whjjHk8HqWlpWXmqlWrrhs3blx1Xl5eZO3atReuXr363ubmZgoAr7zyCm644YbSvr6+bqeF9cvW9K8A2DnvMIPBW3mckufgZPAL/4TlG9ozrQGXZAAwvq6jwLnhQG0zW2368v/zcFyf83uDOxl4nv9CQ/dALfYLPcJO4uYkdc5njst07vN1+4EcocLZdKbr+i/q6+svPnTo0G2pVAobNmwAAIwaNQr33nuvec0111wSiUS+FtzB1/xXjkElzv9S3P9aC3ZAclaEAwjHcTAMI7vByjTNLFAOwE6n/uCU33kwZ1UOvt5ggB1K4UiEjjsefC3nMyeLdQr3X34m5z6DdwIKghDs6+v7+d69e+e2t7eXUUrN4cOHH58yZcqWoUOHPplMJlsc6vRNfcmDs+N/hQV/U1Y/eMflYAsmJ/f3/u8e/2cA/kUUS1AOmI8AAAAASUVORK5CYII=&quot; alt=&quot;logo footer&quot;&gt;\r\n		&lt;p class=&quot;short_des&quot;&gt;Personalized gifts just separates you from the crowd, lets work together and create magic.&lt;br&gt;&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;social_f&quot;&gt;			\r\n		&lt;ul class=&quot;list-unstyled&quot;&gt;\r\n			&lt;li&gt;&lt;a href=&quot;https://www.facebook.com/hazye.custom/?modal=admin_todo_tour&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-facebook&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href=&quot;https://twitter.com/HazyeNg&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-twitter&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href=&quot;https://www.instagram.com/hazye.ng&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-instagram&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt; 									 									 									 									 									 									 									 									 									 									 									 									'),(166,1,24,'Static About  ',NULL,'										  										  																																								&lt;div class=&quot;static-about&quot;&gt;&lt;h3&gt;Who Are We&lt;/h3&gt;\r\n&lt;h1&gt;Welcome To Mimosa&lt;/h1&gt;\r\n&lt;img src=&quot;image/catalog/cmsblock/bg-title-aboutus.png&quot; alt=&quot;bg title&quot;&gt;\r\n&lt;p&gt;Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum \r\ndolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.&lt;/p&gt;\r\n&lt;h4&gt;John Doe - &lt;span&gt;CEO Mimosa&lt;span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;									&lt;/div&gt;																											 									 									'),(150,1,19,'Static Policy  ',NULL,'										  										  																				&lt;div class=&quot;static-policy&quot;&gt;\r\n	&lt;div class=&quot;col col-xs-4&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;img src=&quot;image/catalog/cmsblock/policy-icon1.png&quot; alt=&quot;policy icon 1&quot;&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h2&gt;Free Shipping Worldwide&lt;/h2&gt;\r\n			&lt;p&gt;Mirum est notare quam littera gothica, quam nunc putamus parum claram&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col col-xs-4&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;img src=&quot;image/catalog/cmsblock/policy-icon2.png&quot; alt=&quot;policy icon 2&quot;&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h2&gt;Money Back Guarantee&lt;/h2&gt;\r\n			&lt;p&gt;Mirum est notare quam littera gothica, quam nunc putamus parum claram&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col col-xs-4&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;img src=&quot;image/catalog/cmsblock/policy-icon3.png&quot; alt=&quot;policy icon 3&quot;&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h2&gt;online support 24/7&lt;/h2&gt;\r\n			&lt;p&gt;Mirum est notare quam littera gothica, quam nunc putamus parum claram&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;																		 									 									'),(163,1,31,'Static Opentime ',NULL,'										  &lt;div class=&quot;static-opentime&quot;&gt;&lt;h5 class=&quot;title-footer&quot;&gt;Opening Time&lt;/h5&gt;\r\n	&lt;ul class=&quot;list-unstyled&quot;&gt;\r\n		&lt;li&gt;Mon - Fri: 8AM - 10PM&lt;/li&gt;\r\n		&lt;li&gt;Sat: 9AM-8PM&lt;/li&gt;\r\n		&lt;li&gt;Sun: Closed&lt;/li&gt;		\r\n	&lt;/ul&gt;\r\n&lt;h4&gt;We Work All The Holidays&lt;/h4&gt;\r\n&lt;/div&gt; 									'),(165,1,20,'Banner 1   ',NULL,'										  										  										  																				&lt;div class=&quot;banner-1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-sm-3&quot;&gt;		\r\n			&lt;div class=&quot;items item1&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner1-1.jpg&quot; alt=&quot;banner 1&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Sunglasses&lt;/a&gt;\r\n				&lt;/div&gt;		\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;items item2&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner1-2.jpg&quot; alt=&quot;banner 1&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Accessories&lt;/a&gt;\r\n				&lt;/div&gt;			\r\n			&lt;/div&gt;		\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-sm-6&quot;&gt;\r\n			&lt;div class=&quot;items item3&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner1-3.jpg&quot; alt=&quot;banner 1&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Clothings&lt;/a&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-sm-3&quot;&gt;		\r\n			&lt;div class=&quot;items item4&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner1-4.jpg&quot; alt=&quot;banner 1&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Handbag&lt;/a&gt;\r\n				&lt;/div&gt;		\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;items item5&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner1-5.jpg&quot; alt=&quot;banner 1&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Sneakers&lt;/a&gt;\r\n				&lt;/div&gt;			\r\n			&lt;/div&gt;		\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;			\r\n&lt;/div&gt;																																			 									 									 									'),(170,1,21,'Banner 2   ',NULL,'										  										  										  																				&lt;div class=&quot;banner-2&quot;&gt;&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;a href=&quot;#&quot;&gt;\r\n				&lt;img src=&quot;image/catalog/cmsblock/banner2-1.jpg&quot; alt=&quot;banner 2&quot;&gt;\r\n			&lt;/a&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h3&gt;New Arrivals&lt;/h3&gt;\r\n			&lt;h2&gt;White Sneakers&lt;/h2&gt;\r\n			&lt;h2&gt;for Men’s&lt;/h2&gt;\r\n			&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;a href=&quot;#&quot;&gt;\r\n				&lt;img src=&quot;image/catalog/cmsblock/banner2-2.jpg&quot; alt=&quot;banner 2&quot;&gt;\r\n			&lt;/a&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h3&gt;Products amazing!&lt;/h3&gt;\r\n			&lt;h2&gt;Short  T-Shirts&lt;/h2&gt;\r\n			&lt;h2&gt;for Women’s&lt;/h2&gt;\r\n			&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;	&lt;/div&gt;																		 									 									 									'),(171,1,33,'Banner 7 ',NULL,'										  										  										  										  &lt;div class=&quot;banner-7&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;a href=&quot;#&quot;&gt;\r\n				&lt;img src=&quot;image/catalog/cmsblock/banner7-1.jpg&quot; alt=&quot;banner 7&quot;&gt;\r\n			&lt;/a&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h3&gt;New Arrivals&lt;/h3&gt;\r\n			&lt;h2&gt;White Sneakers&lt;/h2&gt;\r\n			&lt;h2&gt;for Men’s&lt;/h2&gt;\r\n			&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;a href=&quot;#&quot;&gt;\r\n				&lt;img src=&quot;image/catalog/cmsblock/banner7-2.jpg&quot; alt=&quot;banner 7&quot;&gt;\r\n			&lt;/a&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h3&gt;Products amazing!&lt;/h3&gt;\r\n			&lt;h2&gt;Short  T-Shirts&lt;/h2&gt;\r\n			&lt;h2&gt;for Women’s&lt;/h2&gt;\r\n			&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;																 									 									 									 									 									 									 									 									 									'),(175,1,34,'Banner 8 ',NULL,'										  &lt;div class=&quot;banner-8&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-sm-6&quot;&gt;\r\n			&lt;div class=&quot;col-img&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;\r\n					&lt;img src=&quot;image/catalog/cmsblock/banner8-1.jpg&quot; alt=&quot;banner 8&quot;&gt;\r\n				&lt;/a&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;text-content&quot;&gt;\r\n				&lt;h3&gt;Special&lt;/h3&gt;\r\n				&lt;h3&gt;Save Up To 40% Off&lt;/h3&gt;\r\n				&lt;a href=&quot;#&quot;&gt;View collection&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-sm-6&quot;&gt;\r\n			&lt;div class=&quot;col-img&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;\r\n					&lt;img src=&quot;image/catalog/cmsblock/banner8-2.jpg&quot; alt=&quot;banner 8&quot;&gt;\r\n				&lt;/a&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;text-content&quot;&gt;\r\n				&lt;h3&gt;Accessories&lt;/h3&gt;\r\n				&lt;h3&gt;Handbag Collection&lt;/h3&gt;\r\n				&lt;a href=&quot;#&quot;&gt;View collection&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;																		 									 									 									 									 									'),(141,2,27,'Banner 4 ',NULL,'										  										  																				&lt;div class=&quot;banner-4&quot;&gt;&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;a href=&quot;#&quot;&gt;\r\n				&lt;img src=&quot;image/catalog/cmsblock/banner4-1.jpg&quot; alt=&quot;banner 4&quot;&gt;\r\n			&lt;/a&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h3&gt;New Arrivals&lt;/h3&gt;\r\n			&lt;h2&gt;White Sneakers&lt;/h2&gt;\r\n			&lt;h2&gt;for Men’s&lt;/h2&gt;\r\n			&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;a href=&quot;#&quot;&gt;\r\n				&lt;img src=&quot;image/catalog/cmsblock/banner4-2.jpg&quot; alt=&quot;banner 4&quot;&gt;\r\n			&lt;/a&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h3&gt;Products amazing!&lt;/h3&gt;\r\n			&lt;h2&gt;Short  T-Shirts&lt;/h2&gt;\r\n			&lt;h2&gt;for Women’s&lt;/h2&gt;\r\n			&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;	&lt;/div&gt;																		 									 									'),(147,2,26,'Banner 3  ',NULL,'&lt;div class=&quot;banner-3&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-sm-5 col1&quot;&gt;		\r\n			&lt;div class=&quot;items item1&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner3-1.jpg&quot; alt=&quot;banner 3&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Clothings&lt;/a&gt;\r\n				&lt;/div&gt;		\r\n			&lt;/div&gt;		\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-sm-2 col2&quot;&gt;\r\n			&lt;div class=&quot;items item2&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner3-2.jpg&quot; alt=&quot;banner 3&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Handbag&lt;/a&gt;\r\n				&lt;/div&gt;			\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;items item3&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner3-3.jpg&quot; alt=&quot;banner 3&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Sunglasses&lt;/a&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-sm-5 col3&quot;&gt;					\r\n			&lt;div class=&quot;row&quot;&gt;					\r\n				&lt;div class=&quot;items item4 col-sm-6&quot;&gt;\r\n					&lt;div class=&quot;col-img&quot;&gt;\r\n						&lt;a href=&quot;#&quot;&gt;\r\n							&lt;img src=&quot;image/catalog/cmsblock/banner3-4.jpg&quot; alt=&quot;banner 3&quot;&gt;\r\n						&lt;/a&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=&quot;text-content&quot;&gt;				\r\n						&lt;a href=&quot;#&quot;&gt;Scarf Scarves&lt;/a&gt;\r\n					&lt;/div&gt;		\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;items item5 col-sm-6&quot;&gt;\r\n					&lt;div class=&quot;col-img&quot;&gt;\r\n						&lt;a href=&quot;#&quot;&gt;\r\n							&lt;img src=&quot;image/catalog/cmsblock/banner3-5.jpg&quot; alt=&quot;banner 3&quot;&gt;\r\n						&lt;/a&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=&quot;text-content&quot;&gt;				\r\n						&lt;a href=&quot;#&quot;&gt;Sneakers&lt;/a&gt;\r\n					&lt;/div&gt;			\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;items item6 col-sm-12&quot;&gt;\r\n					&lt;div class=&quot;col-img&quot;&gt;\r\n						&lt;a href=&quot;#&quot;&gt;\r\n							&lt;img src=&quot;image/catalog/cmsblock/banner3-6.jpg&quot; alt=&quot;banner 3&quot;&gt;\r\n						&lt;/a&gt;\r\n					&lt;/div&gt;\r\n					&lt;div class=&quot;text-content&quot;&gt;				\r\n						&lt;a href=&quot;#&quot;&gt;Accessories&lt;/a&gt;\r\n					&lt;/div&gt;			\r\n				&lt;/div&gt;	\r\n			&lt;/div&gt;				\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;			\r\n&lt;/div&gt;																																			 									 									 									'),(202,1,22,'Logo Footer   ',NULL,'										  										  										  																				&lt;div class=&quot;logo-footer&quot;&gt;&lt;img src=&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHgAAAAtCAYAAABlJ6+WAAAACXBIWXMAABYlAAAWJQFJUiTwAAAKT2lDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjanVNnVFPpFj333vRCS4iAlEtvUhUIIFJCi4AUkSYqIQkQSoghodkVUcERRUUEG8igiAOOjoCMFVEsDIoK2AfkIaKOg6OIisr74Xuja9a89+bN/rXXPues852zzwfACAyWSDNRNYAMqUIeEeCDx8TG4eQuQIEKJHAAEAizZCFz/SMBAPh+PDwrIsAHvgABeNMLCADATZvAMByH/w/qQplcAYCEAcB0kThLCIAUAEB6jkKmAEBGAYCdmCZTAKAEAGDLY2LjAFAtAGAnf+bTAICd+Jl7AQBblCEVAaCRACATZYhEAGg7AKzPVopFAFgwABRmS8Q5ANgtADBJV2ZIALC3AMDOEAuyAAgMADBRiIUpAAR7AGDIIyN4AISZABRG8lc88SuuEOcqAAB4mbI8uSQ5RYFbCC1xB1dXLh4ozkkXKxQ2YQJhmkAuwnmZGTKBNA/g88wAAKCRFRHgg/P9eM4Ors7ONo62Dl8t6r8G/yJiYuP+5c+rcEAAAOF0ftH+LC+zGoA7BoBt/qIl7gRoXgugdfeLZrIPQLUAoOnaV/Nw+H48PEWhkLnZ2eXk5NhKxEJbYcpXff5nwl/AV/1s+X48/Pf14L7iJIEyXYFHBPjgwsz0TKUcz5IJhGLc5o9H/LcL//wd0yLESWK5WCoU41EScY5EmozzMqUiiUKSKcUl0v9k4t8s+wM+3zUAsGo+AXuRLahdYwP2SycQWHTA4vcAAPK7b8HUKAgDgGiD4c93/+8//UegJQCAZkmScQAAXkQkLlTKsz/HCAAARKCBKrBBG/TBGCzABhzBBdzBC/xgNoRCJMTCQhBCCmSAHHJgKayCQiiGzbAdKmAv1EAdNMBRaIaTcA4uwlW4Dj1wD/phCJ7BKLyBCQRByAgTYSHaiAFiilgjjggXmYX4IcFIBBKLJCDJiBRRIkuRNUgxUopUIFVIHfI9cgI5h1xGupE7yAAygvyGvEcxlIGyUT3UDLVDuag3GoRGogvQZHQxmo8WoJvQcrQaPYw2oefQq2gP2o8+Q8cwwOgYBzPEbDAuxsNCsTgsCZNjy7EirAyrxhqwVqwDu4n1Y8+xdwQSgUXACTYEd0IgYR5BSFhMWE7YSKggHCQ0EdoJNwkDhFHCJyKTqEu0JroR+cQYYjIxh1hILCPWEo8TLxB7iEPENyQSiUMyJ7mQAkmxpFTSEtJG0m5SI+ksqZs0SBojk8naZGuyBzmULCAryIXkneTD5DPkG+Qh8lsKnWJAcaT4U+IoUspqShnlEOU05QZlmDJBVaOaUt2ooVQRNY9aQq2htlKvUYeoEzR1mjnNgxZJS6WtopXTGmgXaPdpr+h0uhHdlR5Ol9BX0svpR+iX6AP0dwwNhhWDx4hnKBmbGAcYZxl3GK+YTKYZ04sZx1QwNzHrmOeZD5lvVVgqtip8FZHKCpVKlSaVGyovVKmqpqreqgtV81XLVI+pXlN9rkZVM1PjqQnUlqtVqp1Q61MbU2epO6iHqmeob1Q/pH5Z/YkGWcNMw09DpFGgsV/jvMYgC2MZs3gsIWsNq4Z1gTXEJrHN2Xx2KruY/R27iz2qqaE5QzNKM1ezUvOUZj8H45hx+Jx0TgnnKKeX836K3hTvKeIpG6Y0TLkxZVxrqpaXllirSKtRq0frvTau7aedpr1Fu1n7gQ5Bx0onXCdHZ4/OBZ3nU9lT3acKpxZNPTr1ri6qa6UbobtEd79up+6Ynr5egJ5Mb6feeb3n+hx9L/1U/W36p/VHDFgGswwkBtsMzhg8xTVxbzwdL8fb8VFDXcNAQ6VhlWGX4YSRudE8o9VGjUYPjGnGXOMk423GbcajJgYmISZLTepN7ppSTbmmKaY7TDtMx83MzaLN1pk1mz0x1zLnm+eb15vft2BaeFostqi2uGVJsuRaplnutrxuhVo5WaVYVVpds0atna0l1rutu6cRp7lOk06rntZnw7Dxtsm2qbcZsOXYBtuutm22fWFnYhdnt8Wuw+6TvZN9un2N/T0HDYfZDqsdWh1+c7RyFDpWOt6azpzuP33F9JbpL2dYzxDP2DPjthPLKcRpnVOb00dnF2e5c4PziIuJS4LLLpc+Lpsbxt3IveRKdPVxXeF60vWdm7Obwu2o26/uNu5p7ofcn8w0nymeWTNz0MPIQ+BR5dE/C5+VMGvfrH5PQ0+BZ7XnIy9jL5FXrdewt6V3qvdh7xc+9j5yn+M+4zw33jLeWV/MN8C3yLfLT8Nvnl+F30N/I/9k/3r/0QCngCUBZwOJgUGBWwL7+Hp8Ib+OPzrbZfay2e1BjKC5QRVBj4KtguXBrSFoyOyQrSH355jOkc5pDoVQfujW0Adh5mGLw34MJ4WHhVeGP45wiFga0TGXNXfR3ENz30T6RJZE3ptnMU85ry1KNSo+qi5qPNo3ujS6P8YuZlnM1VidWElsSxw5LiquNm5svt/87fOH4p3iC+N7F5gvyF1weaHOwvSFpxapLhIsOpZATIhOOJTwQRAqqBaMJfITdyWOCnnCHcJnIi/RNtGI2ENcKh5O8kgqTXqS7JG8NXkkxTOlLOW5hCepkLxMDUzdmzqeFpp2IG0yPTq9MYOSkZBxQqohTZO2Z+pn5mZ2y6xlhbL+xW6Lty8elQfJa7OQrAVZLQq2QqboVFoo1yoHsmdlV2a/zYnKOZarnivN7cyzytuQN5zvn//tEsIS4ZK2pYZLVy0dWOa9rGo5sjxxedsK4xUFK4ZWBqw8uIq2Km3VT6vtV5eufr0mek1rgV7ByoLBtQFr6wtVCuWFfevc1+1dT1gvWd+1YfqGnRs+FYmKrhTbF5cVf9go3HjlG4dvyr+Z3JS0qavEuWTPZtJm6ebeLZ5bDpaql+aXDm4N2dq0Dd9WtO319kXbL5fNKNu7g7ZDuaO/PLi8ZafJzs07P1SkVPRU+lQ27tLdtWHX+G7R7ht7vPY07NXbW7z3/T7JvttVAVVN1WbVZftJ+7P3P66Jqun4lvttXa1ObXHtxwPSA/0HIw6217nU1R3SPVRSj9Yr60cOxx++/p3vdy0NNg1VjZzG4iNwRHnk6fcJ3/ceDTradox7rOEH0x92HWcdL2pCmvKaRptTmvtbYlu6T8w+0dbq3nr8R9sfD5w0PFl5SvNUyWna6YLTk2fyz4ydlZ19fi753GDborZ752PO32oPb++6EHTh0kX/i+c7vDvOXPK4dPKy2+UTV7hXmq86X23qdOo8/pPTT8e7nLuarrlca7nuer21e2b36RueN87d9L158Rb/1tWeOT3dvfN6b/fF9/XfFt1+cif9zsu72Xcn7q28T7xf9EDtQdlD3YfVP1v+3Njv3H9qwHeg89HcR/cGhYPP/pH1jw9DBY+Zj8uGDYbrnjg+OTniP3L96fynQ89kzyaeF/6i/suuFxYvfvjV69fO0ZjRoZfyl5O/bXyl/erA6xmv28bCxh6+yXgzMV70VvvtwXfcdx3vo98PT+R8IH8o/2j5sfVT0Kf7kxmTk/8EA5jz/GMzLdsAAAAgY0hSTQAAeiUAAICDAAD5/wAAgOkAAHUwAADqYAAAOpgAABdvkl/FRgAAKD9JREFUeNrsfHl4VdW99rvWHs+YczKHEAIhEAQFGRVBFBwR0YpDtVpr7eBE0TrU3mpbrda2FoeK89CWKlbEWaYKGGSeAiEBQgYCGUlycuZhz3t9f5B9jFPvfe59vq/97sN6nv0k2SfZw3rXb3jf32+FMMZwcvzvHfTkFJwE+OQ4CfDJ8e86+Lq6OixZsmROIBAYEgwGe1wul9ba2jq9vr5+6H333XfPnDlzjJ6env/0QoQQ6LqOTCYDTdOQk5MDxhgymQx0XYdpmlAUBZRSlJaWQlVVZDIZqKqKRCKB3NxclJSUoL+/H+l0GplMBvF4HJRSnH766chkMujp6UEsFkMqlUJXVxemTp2K8ePHo7GxEbFYDIlEAj09PZg1axbKysrQ0NCAcDiMWCyGaDSKUCiEb33rWygoKMD+/fsRi8VQUFCASZMm4dChQ1i7di3KysoQDAYRDAaRl5eHMWPGYP/+/aitrUVZWRl8Ph+CwSAqKiqwc+dONDY2YsiQIfB6vQgEAigrK0Mmk0F9fT18Ph/cbjc8Hg98Ph/8fj86Ojqgqiq8Xi8kSYLX6wWlFF1dXeB5HpIkQRAEiKIIt9sNy7KQTCbhdrvhcrnAcdx/isWIESM+BzidTj/+1ltv3ZdKpVBWVobCwkLE43G0tLTgggsumHbJJZfMAqD/Z8kYIeSkufw7uuj8/Py6559/vveKK65AR0cHampq0NnZCQAIhUJnaJqWzxiDbdtfe1iWdXIW/50BliTpjcsvv7x0xYoV33vpxRcjgiDCNE+AxvO8Zds2GGP/9Dhpvf/GAJumiVAoZKmq8rfzzz/vRTlQAtM0AACaTpjAk2/0zYwxcBx3EuB/5yTLia3JlIJIWkn+eBYPvp9HxjIxaTRDb/yfx92T4P6bA+x8YzMKRbXlKcMMXHuxhT29wLoowGzyT62XUnrSTf//wIMJYTA0gPNxwGiGW/8M7NwvoijXOpk5/28A2LYBWQROO83Arb8DalpLMLrCC9syv/JHNgMo/dx6T47/DwCmhKC0wMJvX+Xw0trRAIbChgUwe7BfBqE8KCeD/l8wXiemfzm2f/m88xmlNBsmnIMQAp7nIQgCeJ4Hx3HZg1IKURSzYoJzOD8713MO5zpOIjn4PoOTy296vn/2Tv/PY7AgWOhP2lizbyQAEUAMDINUEwZQngOzLfjFLjBxOFJpExz9amweoFgAkJ0s27azLymKIizLyk66A5Yzyc5EODTMAeqEp7FhmiZ0Xc9ycOecYRjQdR26rsMwDGiaBlVVoSgKMpkMMpkMUqkU3G43UqnUF7531LNMJgOXywVN06Bp2leuaVkWbPvEorcs6yvneJ4HpRQOvXRA5jgu+36DF+fgd3YW0eDF9T9dFFmACQNMULjdQYShnUDUtgGSxRei24+eAxtA+HrIVTfDlVMMM9UHmwGMsRLG2GxCyOmWZZX19vZ6DcMQDMOgpmkS27aJYRjEtm2hsbFRNAyD6rpOdF0XdF0nqVSK6+rq4hVFobqu85qmcZqmUdu26bp166iu61w6nSaqqlJd14miKNi2bRv27t3LxeNxomka1TSNqqqKrq4uUEq5ZDLJKYpCNU2DrutQVRVHjx4ltm0jmUzCMAxIkgS/3w/LsqBpGuvo6IAsy5AkiblcLubz+Sxd1y1d13H8+HFIkmTLsmz7fD47k8nYuq7j2LFjEEXRlmWZNTc32wCsTCZjp1IpJoqiLUmSKUmSJcuyraqqAcBKpVK2IAiWKIqM4zhLVVWd53lTURTGcRzjeZ6JomhRSnWO41IAWhljNQA2AogNNijHy2ia9s0AgxAQpoMQC4AbgAeMcgCzYdtAIMCh6aiG/ds6cel5ClKNy8AF5kEYXgUW6wexbYvn+YjH42mQJCmUyWQ8oihKHMcJtm0DhIIRgUgCdQMG4anI4mDgbcvtZhZNpjNQNYMRQhilVOA4TiKEwLZtqKoKmzGb5ziZ4zjhhEXwUJQMFEVhgiB4CCF04G+JqqpM13XG87xEKRUGrIhQSpFKpWzDMASe5yVCCBhjxDTNjCzLltvtppZlsQHPQWzbVk3TNFwuF5EkiViWhQFVzzRNU/H5fESWZYdREEVRVNM0dZ7nqSRJWQ9jmqbCGLMAEEmSCMdxsCzLsG1bY4wRSikkSbJt2844aFBKmWVZOsdxmtvtTnIcF6KUJgHYgwF0uVwwTROxWAyyLH/F4vnPV4IFAh4QCgEqAbYJCgGMMUgiQAhF9WYVfIrCl5cL2hvHxhWvouyMKzBu1jQkY7E+ythax9W6XC5QSsDzAhQ1ByAaJCEGU2fIKBSpdBLFYJCC+bC9HlSMJNBNhkhUh8BTSKIIa8DNef0exBMA4wCJF2DaACwGU2OwLBuiKEEMEBAtDi2jIi8/P1v84Hk+S+k0TUMmk8m6RpfLlXWRmUwGjDF4PB4kk0lompaVYwfHT1mW4fF4kEqlYBhGNjwQQrKu2u12w+/3g1KKdDqNWCz2hfhNKc2GlMFhyjCM7L14nodpmlnX7zzHYMuVZRm6rmPlypUQRRGXXnopdF3/eoApoeAow/G+OGAXAvDDtikosREIEGzfZeNIKzB9GIXNCERvHuJEQcXqVcgfMQShISUQk0lQ04JNTsQnQjgYBo/8onUIHaiHkbKwrz8fO3ZbONhRjcWaC5nTx+Jl32SMzJuIKaMjGFomQjE4mKYJMAYbDHt31GNkeRS5fACWxIFnKqiHh9uvgzEDxJYQrxeheochpygf69atQywWw+jRoyHLMjRNQyqVQl5eXtYdC4KAhoYGZDIZ9Pf3o6SkBKIooq2tDVVVVSgqKkI6nYZt29m46PP5EA6HsW3bNhBCEIvFkJOTg56eHhw4cADz589HJpNBbW0tvF4vqqqqUFlZCZ7noarqFxI1y7JgmuYXkkNnoTiLxfEYzgIYTE3dbje6u7vR0NCA48ePo7y8/GsrTVmAdYuDaoj46dyNiPb3Y+M+L2ANgSj70HI0hs+2GSjI9yHPz+B1UQoi2IWlheBUDaTlCAoIEA4GwTgKUdUGHkQGtTXkeNeBeUO0t71wnl+NnHNwX994TQvnNAxz24drdh874C9d31ci/M1jKcYp+Sp02w3mcoFyHChhaDvcjXHlR1HIypGiItx2DMQngwQSANQTK3xjEKRqOHy5+aitrXXiJVwuF3RdR39/PxhjKC4uzlprb28vIpEI1q9fj/POOw/5+flYv349CgsLUV5ejkwm84VEcd++fdi9ezeam5txySWXwOfzzejq6jqzt7e3MpVKuWpra0Mej6ctFArVHDt2bPvevXtRVFSE66+/PlsWdCzyvzMcTyRJEjiOQzgchqqqyMnJAcdxX0tZ+cE8OJEhmHEKxWXTLbQfi2OrleSjGYnbW2cimSIQZfE7Kz9L3Tzcs2YM5OLIe/v8ry8qH/9H+HwoaG6Bz+dDaEgJVI8HAmMwLcCd4wYiwsWJIx0vNezfN2zr5ha07gEunikgVWRglIwzt9Z2XrvtyIhfnjmx6grZG9vHdSYBWYYky4glk8LWPZueKuBip0rjj7GMlmZBWafesMy4Cg+xfCZED4NQ3Kcdbih7eNbY0fuj0eh/dHZ2zkylUpsopT2MsVPD4fCY0tLS34qiuGEgMx62e/fuX9fU1Jzi9/u7o9Ho0WQy6e/v7z8lGo3+hyRJWymlWetLJpNoaGhwJvnyNWvW/FoQhIkNDQ0IhUIghOCdd96By+XChAkT4HK59guC8KBhGCsjkQgURckmdI77HVzjVRQFuq5nY6osy0ilUlBVNbswvF4vCCE4duwYSkpKIMsyBEH4p1oEPyjHgiAyHD1KcCAJBCuA8uFeLZqinfubrHGHm6Kv1jfsOrO3OYLNnzajjewunR/xPH767J4LcdakC5BfALm/H0WhMI75fLBME26vC53dHd9f++zSP3c3xFCnAq6R83DPExdoQ4eVhOoOHhha7noelw7fh9Vr/15++HF7F587tzi/cGQ4kkpDKC5C5HDTb5a/t/SO0H4bu04hoITBKwMSgOkVLpx9qQu2V8elt6cw+eJ55RdejR/GYrEHVq9ejYaGhnMmTZqEQCCAw4cPw+/3T5w9e3aeaZp2Op3+wcaNG2/etm0bcnJy0NLSAlEU0dTUhGnTpr1/2WWXFRNCbNu2swlMcXExampqnq2trb2jrq4OAHD66afjxhtvRCAQiHV2dgZ2796NTz75BJZlTfB4PB9fccUV9xUXFy+Ox+OIx+PQNA2BQACSJKG5uRmJRAKWZWH48OGQZRnNzc1gjME0zWyDgWVZEEUR0WgUdXV1iMViKCsr+y8V//nBRNe0GHxuEaeeS7B0NUOGy/tTjtFU9dqrmw/EOmoAsRvuUg9auzR8Hyb+zGeA9f84PzxxyqPp3z70IDl69ARvNQ24PRJE0Q8l5Zq4z56DuN/C5Xfd9s7c+XOe5Qz1M1W3MG76NZO3bJq1sqvjO8WX8X/B6fUmv/eFyNKRLz1/qR2NQLNtBDS1ciRs7OwGvn3fEjs4pLIuYwXMlr2fDR1Rcn9xKGJjxnwNzbGReOr12ftjseiuu++++7fz5s279vnnnx9ZXV2NKVOmwLIsh8ty6XTalmX52WeffTbv6NGjc996662KDRs2oLy8HD6fD5RSl6ZpAiFEsywLgUAAOTk5eOGFF95ZuXLllalUCgBwzz33YNGiRS/m5+c/a9t2qyAIwxRFuX7x4sW//O1vf4tkMokVK1b88YILLmg8//zzP25tbYVhGOjv70dpaSlaWlpQX18P0zQxY8YMKIqCjo4OlJeXo729HYQQTJs2DYlEAqIooqamBg0NDRg1alTWJQ/mzf8UYMYAkQfGjeDxyhoeP37OwC/uCJ/15iPX3xzr6McFl1yAn9z6/eacoWXtH/59xHk3PP08YGvoB7Bmz54HJjH7XZffu48ZJjjTRFtLCD7PIVSNKl7041t+t/iUqfGC4009Pa8u2U7zucbx37txVx1yr6o57/KLLtn44ey9Z6TexlAAmxoPz3OJ3DV5RYVv85oOeD2ZoQAKxp6BBd/98c0cFZbKMiDO2P7T95fgyR/+jCCSAv740PUYM7bq56GuHj0vL+/BK6+88sH8/PwNV1999ZxIJALbtqFpGuN5XrBt2yCEhIYMGbJw4sSJqKysfPfo0aMLCCHweDzgOC7NTgy0t7ejqKgIb7755m1vvPHGlZIkQdd13HPPPVi8ePGNAF6PRqPQNA0ul6sxEAj86qGHHupoaWl5efny5VAUBU888cSbI0eO9CUSCaTT6aybdrvdCAQCsG0767Z9Ph88Hg/8fn/WQh2hSBAEeL3eLHh+vx9+v78oGo2ONgyjlVLa9Y0AU0IQ9AEPf0rx0WqG+QAKleMzTz9vLGYF/bjtvrt+lx8o+AWlAvJ+UfWHV6o3/Yzt2YURAIR4FGo4fKqfsX2UIwhHFeza3IqpZ+3A2DIrt6AisgDJI1dcOb9r1o6mIQAtRHtdc/wHNzX82TV2wt26b2L1k3h79l0AUsk0ku3tU4uHD39bS6dBCwuW3Pa31ycWDCk9oqYzS332MYC14I+LX/zRQ49LOAUqvj18JOZ+76aXM4n0UdM0YZomIpEIiouLV1VWVs5pb28/waVtW+Q4TnCy2FQq5ShGm/Ly8haEw2EMcGMbADNNEzzPo7GxES+99NJTkiQhGo1i5syZeOSRRx5PJpOvf/zxxzh48CC6u7sRCAQwY8YMXHXVVa/cfffd973//vujTNNEbW2tt7q6+o7vf//7zzU1NWUp1OBuGIcafVm6ddS8wRk0YwwFBQVYs2bNVc8888wKy7Jwyimn4MILL7yY47h/fC3APA/EdKB9s4E7wSACsNx+9tCSP90hpGLV6UTmcFd3P0SBx7Cgd83Ooqqf/Qn9mIYQppgaJhkaobyAjKIjFs8gd1g57PC2+fBvecs42uYePr4X3WoRJpwuw+Jd+NVf7Jzd/9j6018/cde8itzTUmEC/JIRVCU5XC9wCgGDpmmQeX7P7MsvGw8CdLS2Ie4F/vH81tveeLzxlJ9ARBLA2DtuRenQsp/Fu7qyk2CaJpLJpHfUqFEoKSlBU1MTTNO0dF23Hb4pCMIJBqHruV6vF7ZtwzAMmKYpMMY4Sqlx9tlnY8WKFU/39PRIBQUFiEajuPzyyxWXy3X/M888g40bN8I0TRw5cgSFhYU4dOgQWltbsWDBgmkTJ048tnPnzhwAOHr06J9KSkr+LghCxOHAOTk58Hq9MAwDoiiCMQaXywW32w1Jkr5SzGGMwe12Izc3F5s3bx65atWqFZMmTdpUXFzsGjp06ETLsjKiKH69BZsDlYe5HoaSJEMfAK/sMhnYC/FoMkugCaUwTSUnl/gBjMQu5KKLK8CDxJQltx89x9qRw2xsO3Zk0if/WP7RWdMimDkng5h0Dt5/6+49p46rWEYJU7fvbpt3uHbl7Np0+eiKvAPY/xTwUQ3ByoMckgrsYvtzPhhOJ8EpOnwpFZFOXXAtWfn4YyCohY7uMeMw8/rvPG7GYvHB2jQhBIZh0L6+vmyHIgCRUioLgpB0BIqBQ3O73fB6vTBNExzHyZRSied51bZt165duxZpmgYnHp911lnVmzdv9qxYseKBMWPGePr7+7NJkq7rWLZsGTZv3pxMpVJZAltfX8+1tbXNFQRhmWVZoJTmrVu37hJFUfjc3FzEYrHVeXl5vbt37z6HEDI3k8mEeJ5/YnC9PTc3F52dnTM3b958465du64LhUL44Q9/eOiiiy56PT8/f5vTkTpkyJCvoUkDqbSf6hgKGxwA3jZIUtVKbF0//nmBn4BQDgQagDgAP4poEBZhlIFA4HhYqTRqX/39WztaOzFzhoiG1Lmo3rD4g1Ejyq443tMPyzIx88yqF6efNS0YUYLFB1beUuNxwfXgd22M22rDYASGcWLlMp6HGE/B1dYJ34iRMF9/+pdjo81egYqI2DrOWnS7Oiy/8Ff9mSRsSQSXymSFFsaYbdt2NnmxLIvneV5wYpojJhBC1N7eXrjdbvh8PoiiyDRNYwOeoKyzs5No2glun5OTg9LSUve6deuat2zZUrJ7925QSjFjxgxs2bIlmxA5WfZgd6tp2hBRFMFxHFRVvTyVSr22adMmpNNp3HvvvVfv27ePf/vtt/8+atQoJJNJ+P3+YdOnT7/TKYo0Njbe+corrzzt9/vhdrsxbtw4fPjhh7e+8847P160aNGZkydP3t3f3/9NWTRgACizCaYC2AogBvJ5sWEgdaeUADZJC7wIwAXADcoBlmWnlGQKo6dOQvUn6x9sbm0Y5QPB1mMV+MldF5unjim7pvVoLxTFgGXxMIwkBEGJyi4+qqnUOtQGKBmgu89CAQgIBQyXDF9fGKU79oAFAyBrN7qr/vzGL6rgxjY7Azp5KqZdc81DajqlBbbXQAj6ERpaAk47IVG6XC53X18fOjo6EAgE4Ha7ma7rzJEUHWVJlmVaX1+P48ePo6CgAJMnT866TAAJn88HAJAkyeHEz86ZM6d4yZIl9yWTSY/H44HL5cIll1ySrZJ9Ka4aw4cPb5IkaQXHcdB1HRzHLX/uuecK77rrrt+99tpr2LFjxxM9PT3DnnzySRw7dizzm9/8xr1r165FV1999SvBYPBAS0vLgj/84Q9PK4qCRx99tOe00057NycnJ7xu3bpb77zzzsIPPvig+txzz53m8XgOfRVgQsAAqDZIEQPyAcwCsAaAwZAtGp6Q1CgoR8AJnwPMOA8IZaADtcPDBw/eagAQaAFgj8KYqtKdbjcMxmQwJkAUEhC8+RCoBckte2Sfi4u2AYEUYNiAbTCOEIBjBKqaQkeeCHnMKDTWPPmbkBHmxsKFZgBj71oYK87Lf5zU1qFg2fuwb1iA0OgKEONEcqTruhiNRjFq1Cjk5eXBNE3KGKNO/BVFEYIgwDAMMnLkSCSTSYRCIXR1dcler9cdDocTtm33TJgwoQ1AudOo/8knn6h33333c7fddttzjDHZqVY5ZU1RFL+QMCUSCUNV1WxFShRFBAKBtNfr/SPP878byIiHLV68+K2KioqH33zzzTcZYxMHMv/8AZ7+UFNTE8aNG5c57bTTqlwuV0LXdYwdO3Z5ZWVlfV1dnefIkSMLKysrb/8CwJSnMEwfqC0jRyTuXwluTAHFebDhsW2eALwcCEBLpyGJIiSXDJ5mRHDcAMASdNYLmRLJlGSYpgWPSJReAH32qQDGY2+j+N76z1QoqRDOnnkIHk899n06FRFpHHJKw+nygv7VcRlXRnqAjCJDdrsFIZgHK9yPQIkK/tRKCFpbjla49p5DP/Ji8fspDKmajT/O+9bPNSXNhqRVgLFSGvB36ZYNcYDz6rqenjBhAoqLi1FXVwfLskggENBt20ZTUxOSySTGjx8PURSJKIoYN24cOjo6kJOTw2cyGcHZmXHuued+4na7f9Te3o4xY8Zg1apVz02YMGGV3+9HTk6OOhDfs7HS2a3R1dUFn8+HiooK8Dyf1bErKysRCASgqurwYDAIAAgEAmpFRcV1ANDZ2Vmo67qjdAnJZBJnnHHGiokTJ57W0tJC9+zZc7bL5Vqlqir27NlzdlNTE7nuuutQUlKywzCML7roxPEQfMJGeArnQdTyq8unC/e8v48nv2vR8QupoH2+LIf279gOQZDQp6rw+P04ber4+oIcdwwYFpCwAT91EUMprWqgfT2gpoWS4WOPjKmSKq8bsRPdRgOOHzjnwszskienTP0EgUAGgILw9nVoOXoA3VNuQHIPKb9mONDeTeERme4LkD/Ft21HSV8IcmUBJKUEma2vPFam9sDwuLB3lBdz7v5lX4HP/xLjgVWdPQ9ue3/Zw9ePH/brsmk/ezSROlEk8Pl8CsdxaG9vRzweh2ma6/v7+0N79+6FaZqor69HLBbDzJkzN7vdbhYOh4nb7YYoisw0TdupG48cOXLx7bff/qPFixfDtm10d3eXP//886vnzZt3ic/nA2MMubm5CAaD6OnpwebNm+H3+6HreiAYDApjxowJ8TyfbSZIJBKIRCIoKCgQBvFayaFlpmnmAUAymQQhRFRVFZIkPfL0008nnnnmmcdfeOGFlSUlJYei0Shdv379mGAwqF533XU/9ng8r8fjX2yDpUaSIeA/CL/0DvLTK9qvK0+y38904SdnSBiac3xjX9N6teHdt+HSbWi93fj0rXfw8T8aOppDExog2ngWB3Bjygi51lVvK/zLOwjtrcHos2e/ceqUmSinaSy+shfP/mDlRZdd8OTLQ0p0ARgBIBeFI4ZBikcDjW//beUb78en7GqVUZwnY7Qnyq356NkrP3trNXIicWTyKpFetcn/8QPv364FvHBxCi6+aF7z/JlVZV2f/gpc+zqEM72lTygJ+vPqzY8ELHs0P6Dd5ufnH7NtGw0NDSgsLERNTc2Yxx57bHY4HEZJSQmKi4sXLFu2bOMHH3zwcHFxse2IGKZpEkKI4GTx6XS66a677npm8uTJaGpqgqIoiEQic9va2rbbtj3Z6RqxLMvpGvEnk8lFBw4cOLZixYrOcDh8gyzLcLvdMAxjoa7rNwyIG4cTiUQDAIwePXqH49bLy8u3DnSMZAKBQKsoitizZ8/kN9544+ZoNCqWlZXh1FNPHTt16tQxs2bNQnd3t/zEE098LxwOB75Ck9IGg9oeuh25bdMLew9c2pDqp+GUgnPHAt7Eiu+sfrFp+OFd5q5T5qYfgGXld+7bdMff9486e+exguk36ctxNYC2uo4hFT9/4FO48lY3MeOD02bOfGPujQ/+x59/WTc29JcQvnW+Cr+19Uf+8drFwmnq+wDtOFCbqNi5dce3G/vrcg0ANQ0yKDJY+nGGa4+/tGRb6eiF4C9+KnHLjW8nt616aWVvFKFmL26aJGCcq50XDt/+SKi9ufho3x5MjGpll+UDXT0hhBKJMZTjmnRdR25u7toLL7wQ1dXVYIwhEAgMq62t/VSW5QORSIRftmzZGCejduTH/Px8iKII0zQ5R2RIJpPIz8+/89VXX51w8803n7Nv3z54PB7s3r37zEgksqe8vHyL1+vdq2ma6na7R+3du3f29u3bA3l5ebjqqqsgy3LQ7XZj//79Ly9duvRHQ4cORUlJSe+LL764Y/ny5c0ATnnzzTd3jh49GqZp4q9//etOAOdt3Lixbs+ePQ0FBQVYvXr1lq1bt8q33npr5rvf/e7NADbwPC8vWrToB3fcccdDH3744XlTpkz5cM6cOeeUlZV9nr2/8NoHa3a+8K2LrzkbONwB9Cp+gPMgY5gQSRL79ur4tMfGz267Fcm+fqx49x30YwyCXA7us3fCED0gWhpTAOQB2DBuIi7cvG5GlRw8tHL16vpPlz04tMTYj1M9wJkTgM5SDvf+nqG2wYYPwIz581CaX4R3Xn8ddn4hOF8h5oaP49pID3rGnYqKdf/Axmu/h9c2rUfecIJ7rpUR6VWRygCGLSOZJjAMDdXbLZSffQVeeOPV2Xo6vdEwDMiyDI7jFrz11lvvvvzyy2htbYWqnigvnnXWWaioqMBdd921LBAIGLfffvtNOTk5qK2txfTp0/HCCy+U9fT0dDpZMcdxyM3NRXd39/Knn376mpUrVyIWi8HlciEYDKKoqCjLo2tra5GXl4f7778/Onfu3J9blvWy2+3G2rVrUw8//LDH5/Phpz/9KZYsWYJDhw5hxIgROHz4ML797W+rpmmS5cuXS6NHj0YsFsPNN98cGj9+/GePPvroVZMnT8Zjjz12iyRJLxuGkW1Q6Ozs/Nt11133XcYYnn766R+de+65r2YB3rt//082b9pxG1PjOa5AIJVXUNzr8uSEDc2Q1FR/UbS/Nz9t2fyokZXxRDzhrq+rL5F5y6gqLQy7CobFU6AsHYv5tL6+HKZmuMIhperk8y+4Ni/Hv5Fxsr+1o/fx3Zs+vj5x7DOvYLXh3Q0a2sMyLp4zFmdffNGxCy66+DUlkaBbtu66qLCgKDRuXOWR/p7eor1NTaMLCgu6T6sc9XZDS8uV3W1t4yyT41xeHralw9YZCADTtkE4Ar9HTldUVO0aUjpkoW3busPbOY6DLMsTm5qa7t+0adOc/v7+gNfrTUyZMqVm4sSJf83Nzf17U1PTt5577rn3jx8/jo8++ggLFy5Un3rqqSGdnZ3RAZ6cVcgGKNO3d+3atai6uvqsxsZGZDIZUErh8/lQXl6O6dOnH5w2bdo7wWDwmUQiEdE0zWnGq2pqanqEEGIUFRXtjsVikzweT9Lj8WSi0Wh+KpUqMgyD9/v9fXl5ecctyxI1TZu+dOnSqcuXL8f999/ff+edd5ZHo9FMY2MjZFnG6NGj4Xa7T73iiiv2fPTRR9Jrr72m3XTTTXIW4M6OdkhuP3SL8pQwk8ACbAuUo7AYhSjykATKZdIZizEGt9dbyFNm6pYd0W2AoxSgFCpjHs00qZ/jkiydRiQWgygKyM3NhU29uT2RxPmdnX1VXtHmh5cF+0W3ez8HsokwBsu2gQGZjhCCpJIBE0S4BQFaPA7rBEiQRAnptAmb2bBsE6IogoANdEIwcLAQi8ag6ToURQFjDD6fz+HEkGVZZozlAEhqmpbRNA2UUiSTyfv/8Ic//H7p0qWwbRuLFy/uXLhwYVlXV1dWKnQUJdu2IcvyQEsSHa0oyiRFUYoZY0wQhF63213H8/whpz1oMC/mOA4ejweMMaiq+pUuS6dFyAkbPM8jLy8Pjz32mPrAAw9IjzzyyMrbb799/scff4wdO3aA4zjMnz8fEyZMwJlnnnmkra2t4t13321fsGBBeRbgI0eOZMtOzssMbhVxBG/DMLIP5ChATgXE0VJ5nodlWWhubkYoFMLpp59+Qk+WZQSDQUiSlO2VcjaEd3R0QJIklJaWoru7G5lMBkVFRXC73ejq6oKqqigtLYXL5UI6nQbP89l7OW0woijCUaxSqVRWxw2FQtk2HeddnIl0rNvj8SASiTw6Z86cBzo6OkApxZtvvrn10ksvnTl44/tgod/56rS2OiA5bTiDW2adeRwMoHO9wWKL8/tf7gELBoNob2//87x5877f3d2tL1iwYOHEiRNfGViYEEUR1dXVj27evPmB6dOnY8WKFXeXlpY+9QWhY/BNneY0RVHg9Xqhqiri8TgIISgsLER/fz9CoRA4jsPIkSMRCoVw7NgxFBUVYdSoUWhsbMShQ4eQn58Pr9eLI0eOoK6uDlOmTMGMGTNQU1OD/fv347zzzkNpaSm2bNmCwsJCTJ48GRs3bkRXVxfmzp0LwzCwYcMG5ObmorCwEKZp4tNPP0VpaSnKy8tRXFyMgwcPgud5VFVVQdd1NDQ0IBgMYujQoVnBwelbNk0z295CKYWqqnC5XPD5fKitrT3S3d0NABg2bBjGjRu3x1k8/2yYpvmFitCXqz7/410JlCKRSKCysnLR66+/fs4tt9xS8d577728b9++a4cMGVLNGBMIIZds3bp1yqxZs7BkyZJ1Ho/nqa8oWYMbvxhjHCEkaNt2maIogqIoTFEUQggh0WiUi0ajXDweZ4QQ0tnZyYfDYdrf3w9FUWgmkxHa2tqEcDjMJRIJ2LbNt7W1iYcOHaKhUAiHDx8WDh48KLa2tpLDhw8jJydHOHjwoOT1etn27duVI0eO2IZhQFVVS5Zl7ciRI3Y0GgXHcRbHcWpnZyfTNM1WVdUKh8NGX1+fKYoic7vdYIyZmqZZqqqSWCzGeJ43VVW1KaVQFIUxxgiAqCRJzcFgEDU1NaiursbChQuxb98+wwHq/PPPx/Dhw/8WjUa/ANi/aoOdbdsIh8OpyZMnj1+1atWT77333g8+/fTTOZFIZI7L5cLEiRNxyy23hM8555wlPp/v4Wg0ikAg8LnnaW1t/bIonmMYxvXJZHJuMpkcalmWe0CYF0zT9JmmSW3bdlmWJei6zpmmSRhj0HUdmqbBNM2sS0+n046YD0VRkEgkspMWj8eRSCSyk8ZxHILBIFwu14lW3YH+JWfhiaIIj8eT9TI8zztZstMGawuCYFFKFY7jDJ7ndY7jUhzHMUKIJYpivLi4+PeiKH4Yj8fR3d2NjRs3wufznbJ+/fot1dXVufn5+VizZs3GysrK2U5t+Ot2bXyTtX7Tuf+ui3Zcv/PZgOZdqGnaZF3Xhw30Wje73e6duq6r6XQahBBUVFR8M8ADg7Nt2wIgUErFgYcilFLBNE0mCILAcRxnGIZNKSWCIIiMMWZZFuN5XuY4jmMnSjmE53mZUkoGrsFxHCexE09MKaWuQfe0LMtSKaVk4FoqpZQNiA2mbdv6wGcwTVO3bdvkeZ5YlmUbhqFzHEc5jiOGYeiMMXtgAnWO4whjjHk8HqWlpWXmqlWrrhs3blx1Xl5eZO3atReuXr363ubmZgoAr7zyCm644YbSvr6+bqeF9cvW9K8A2DnvMIPBW3mckufgZPAL/4TlG9ozrQGXZAAwvq6jwLnhQG0zW2368v/zcFyf83uDOxl4nv9CQ/dALfYLPcJO4uYkdc5njst07vN1+4EcocLZdKbr+i/q6+svPnTo0G2pVAobNmwAAIwaNQr33nuvec0111wSiUS+FtzB1/xXjkElzv9S3P9aC3ZAclaEAwjHcTAMI7vByjTNLFAOwE6n/uCU33kwZ1UOvt5ggB1K4UiEjjsefC3nMyeLdQr3X34m5z6DdwIKghDs6+v7+d69e+e2t7eXUUrN4cOHH58yZcqWoUOHPplMJlsc6vRNfcmDs+N/hQV/U1Y/eMflYAsmJ/f3/u8e/2cA/kUUS1AOmI8AAAAASUVORK5CYII=&quot; alt=&quot;logo footer&quot;&gt;&lt;/div&gt;																						 									 									 									'),(226,1,23,'Social Footer   ',NULL,'										  										  										  																				&lt;div class=&quot;social-footer&quot;&gt;\r\n	&lt;ul class=&quot;list-unstyled&quot;&gt;\r\n		&lt;li&gt;&lt;a href=&quot;https://www.facebook.com/PlazaThemes1/&quot;&gt;&lt;i class=&quot;fa fa-facebook&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;https://twitter.com/plazathemes&quot;&gt;&lt;i class=&quot;fa fa-twitter&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-rss&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;https://plus.google.com/+PlazaThemesMagento&quot;&gt;&lt;i class=&quot;fa fa-google-plus&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n		&lt;li&gt;&lt;a href=&quot;https://www.linkedin.com/company/plazathemes&quot;&gt;&lt;i class=&quot;fa fa-linkedin&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n&lt;/div&gt;																		 									 									 									'),(166,2,24,'Static About  ',NULL,'										  										  																																								&lt;div class=&quot;static-about&quot;&gt;&lt;h3&gt;Who Are We&lt;/h3&gt;\r\n&lt;h1&gt;Welcome To Mimosa&lt;/h1&gt;\r\n&lt;img src=&quot;image/catalog/cmsblock/bg-title-aboutus.png&quot; alt=&quot;bg title&quot;&gt;\r\n&lt;p&gt;Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum \r\ndolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.&lt;/p&gt;\r\n&lt;h4&gt;John Doe - &lt;span&gt;CEO Mimosa&lt;span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h4&gt;									&lt;/div&gt;																											 									 									'),(150,2,19,'Static Policy  ',NULL,'										  										  																				&lt;div class=&quot;static-policy&quot;&gt;\r\n	&lt;div class=&quot;col col-xs-4&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;img src=&quot;image/catalog/cmsblock/policy-icon1.png&quot; alt=&quot;policy icon 1&quot;&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h2&gt;Free Shipping Worldwide&lt;/h2&gt;\r\n			&lt;p&gt;Mirum est notare quam littera gothica, quam nunc putamus parum claram&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col col-xs-4&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;img src=&quot;image/catalog/cmsblock/policy-icon2.png&quot; alt=&quot;policy icon 2&quot;&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h2&gt;Money Back Guarantee&lt;/h2&gt;\r\n			&lt;p&gt;Mirum est notare quam littera gothica, quam nunc putamus parum claram&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col col-xs-4&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;img src=&quot;image/catalog/cmsblock/policy-icon3.png&quot; alt=&quot;policy icon 3&quot;&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h2&gt;online support 24/7&lt;/h2&gt;\r\n			&lt;p&gt;Mirum est notare quam littera gothica, quam nunc putamus parum claram&lt;/p&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;																		 									 									'),(208,1,28,'Banner 5          ',NULL,'&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),(163,2,31,'Static Opentime ',NULL,'										  &lt;div class=&quot;static-opentime&quot;&gt;&lt;h5 class=&quot;title-footer&quot;&gt;Opening Time&lt;/h5&gt;\r\n	&lt;ul class=&quot;list-unstyled&quot;&gt;\r\n		&lt;li&gt;Mon - Fri: 8AM - 10PM&lt;/li&gt;\r\n		&lt;li&gt;Sat: 9AM-8PM&lt;/li&gt;\r\n		&lt;li&gt;Sun: Closed&lt;/li&gt;		\r\n	&lt;/ul&gt;\r\n&lt;h4&gt;We Work All The Holidays&lt;/h4&gt;\r\n&lt;/div&gt; 									'),(222,1,32,'Static Link Footer   ',NULL,'										  										  										  &lt;div class=&quot;static-link-f&quot;&gt;\r\n	&lt;ul class=&quot;list-unstyled&quot;&gt;\r\n		&lt;li&gt;\r\n			&lt;a href=&quot;privacy&quot;&gt;Policy&lt;/a&gt;\r\n		&lt;/li&gt;\r\n		&lt;li&gt;\r\n			&lt;a href=&quot;terms&quot;&gt;Term &amp;amp; Conditions&lt;/a&gt;\r\n		&lt;/li&gt;\r\n		\r\n		&lt;li&gt;\r\n			&lt;a href=&quot;index.php?route=information/contact&quot;&gt;Help&lt;/a&gt;\r\n		&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n&lt;/div&gt; 									 									 									'),(165,2,20,'Banner 1   ',NULL,'										  										  										  																				&lt;div class=&quot;banner-1&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-sm-3&quot;&gt;		\r\n			&lt;div class=&quot;items item1&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner1-1.jpg&quot; alt=&quot;banner 1&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Sunglasses&lt;/a&gt;\r\n				&lt;/div&gt;		\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;items item2&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner1-2.jpg&quot; alt=&quot;banner 1&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Accessories&lt;/a&gt;\r\n				&lt;/div&gt;			\r\n			&lt;/div&gt;		\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-sm-6&quot;&gt;\r\n			&lt;div class=&quot;items item3&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner1-3.jpg&quot; alt=&quot;banner 1&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Clothings&lt;/a&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-sm-3&quot;&gt;		\r\n			&lt;div class=&quot;items item4&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner1-4.jpg&quot; alt=&quot;banner 1&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Handbag&lt;/a&gt;\r\n				&lt;/div&gt;		\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;items item5&quot;&gt;\r\n				&lt;div class=&quot;col-img&quot;&gt;\r\n					&lt;a href=&quot;#&quot;&gt;\r\n						&lt;img src=&quot;image/catalog/cmsblock/banner1-5.jpg&quot; alt=&quot;banner 1&quot;&gt;\r\n					&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div class=&quot;text-content&quot;&gt;				\r\n					&lt;a href=&quot;#&quot;&gt;Sneakers&lt;/a&gt;\r\n				&lt;/div&gt;			\r\n			&lt;/div&gt;		\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;			\r\n&lt;/div&gt;																																			 									 									 									'),(170,2,21,'Banner 2   ',NULL,'										  										  										  																				&lt;div class=&quot;banner-2&quot;&gt;&lt;div class=&quot;row&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;a href=&quot;#&quot;&gt;\r\n				&lt;img src=&quot;image/catalog/cmsblock/banner2-1.jpg&quot; alt=&quot;banner 2&quot;&gt;\r\n			&lt;/a&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h3&gt;New Arrivals&lt;/h3&gt;\r\n			&lt;h2&gt;White Sneakers&lt;/h2&gt;\r\n			&lt;h2&gt;for Men’s&lt;/h2&gt;\r\n			&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;a href=&quot;#&quot;&gt;\r\n				&lt;img src=&quot;image/catalog/cmsblock/banner2-2.jpg&quot; alt=&quot;banner 2&quot;&gt;\r\n			&lt;/a&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h3&gt;Products amazing!&lt;/h3&gt;\r\n			&lt;h2&gt;Short  T-Shirts&lt;/h2&gt;\r\n			&lt;h2&gt;for Women’s&lt;/h2&gt;\r\n			&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;	&lt;/div&gt;																		 									 									 									'),(171,2,33,'Banner 7 ',NULL,'										  										  										  										  &lt;div class=&quot;banner-7&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;a href=&quot;#&quot;&gt;\r\n				&lt;img src=&quot;image/catalog/cmsblock/banner7-1.jpg&quot; alt=&quot;banner 7&quot;&gt;\r\n			&lt;/a&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h3&gt;New Arrivals&lt;/h3&gt;\r\n			&lt;h2&gt;White Sneakers&lt;/h2&gt;\r\n			&lt;h2&gt;for Men’s&lt;/h2&gt;\r\n			&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;div class=&quot;col-img&quot;&gt;\r\n			&lt;a href=&quot;#&quot;&gt;\r\n				&lt;img src=&quot;image/catalog/cmsblock/banner7-2.jpg&quot; alt=&quot;banner 7&quot;&gt;\r\n			&lt;/a&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;text-content&quot;&gt;\r\n			&lt;h3&gt;Products amazing!&lt;/h3&gt;\r\n			&lt;h2&gt;Short  T-Shirts&lt;/h2&gt;\r\n			&lt;h2&gt;for Women’s&lt;/h2&gt;\r\n			&lt;a href=&quot;#&quot;&gt;Shop now&lt;/a&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;																 									 									 									 									 									 									 									 									 									'),(175,2,34,'Banner 8 ',NULL,'										  &lt;div class=&quot;banner-8&quot;&gt;\r\n	&lt;div class=&quot;row&quot;&gt;\r\n		&lt;div class=&quot;col-sm-6&quot;&gt;\r\n			&lt;div class=&quot;col-img&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;\r\n					&lt;img src=&quot;image/catalog/cmsblock/banner8-1.jpg&quot; alt=&quot;banner 8&quot;&gt;\r\n				&lt;/a&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;text-content&quot;&gt;\r\n				&lt;h3&gt;Special&lt;/h3&gt;\r\n				&lt;h3&gt;Save Up To 40% Off&lt;/h3&gt;\r\n				&lt;a href=&quot;#&quot;&gt;View collection&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n		&lt;div class=&quot;col-sm-6&quot;&gt;\r\n			&lt;div class=&quot;col-img&quot;&gt;\r\n				&lt;a href=&quot;#&quot;&gt;\r\n					&lt;img src=&quot;image/catalog/cmsblock/banner8-2.jpg&quot; alt=&quot;banner 8&quot;&gt;\r\n				&lt;/a&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;text-content&quot;&gt;\r\n				&lt;h3&gt;Accessories&lt;/h3&gt;\r\n				&lt;h3&gt;Handbag Collection&lt;/h3&gt;\r\n				&lt;a href=&quot;#&quot;&gt;View collection&lt;/a&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;																		 									 									 									 									 									'),(205,1,35,'Logo &amp; Social Footer 2   ',NULL,'										  										  										  										  										  										  &lt;div class=&quot;logo_social_f&quot;&gt;\r\n	&lt;div class=&quot;logo_f&quot;&gt;\r\n		&lt;img src=&quot;data:image/png;base64,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&quot; alt=&quot;logo footer&quot;&gt;\r\n		&lt;p class=&quot;short_des&quot;&gt;Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n	&lt;div class=&quot;social_f&quot;&gt;	\r\n&lt;h5&gt;Follow Us On Social:&lt;/h5&gt;			\r\n		&lt;ul class=&quot;list-unstyled&quot;&gt;\r\n			&lt;li&gt;&lt;a href=&quot;https://www.facebook.com/PlazaThemes1/&quot;&gt;&lt;i class=&quot;fa fa-facebook&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href=&quot;https://twitter.com/plazathemes&quot;&gt;&lt;i class=&quot;fa fa-twitter&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-rss&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href=&quot;https://plus.google.com/+PlazaThemesMagento&quot;&gt;&lt;i class=&quot;fa fa-google-plus&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n			&lt;li&gt;&lt;a href=&quot;https://www.linkedin.com/company/plazathemes&quot;&gt;&lt;i class=&quot;fa fa-linkedin&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;\r\n		&lt;/ul&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt; 									 									 									 									 									 									'),(225,1,29,'Banner 6                         ',NULL,'										  										  										  										  										  										  										  										  &lt;div class=&quot;banner-6&quot;&gt;\r\n&lt;a href=&quot;t-shirts&quot;&gt;\r\n    &lt;div class=&quot;col-sm-4 col1&quot;&gt;\r\n        &lt;div class=&quot;col-img&quot;&gt;\r\n           \r\n            &lt;img src=&quot;image/catalog/cmsblock/banner6-1.jpg&quot; alt=&quot;banner 6&quot;&gt;\r\n           \r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;text-content&quot;&gt;\r\n            &lt;h3&gt;Check Out Our&amp;nbsp;&lt;/h3&gt;\r\n            &lt;h3&gt;T-shirts Collections&lt;/h3&gt;\r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n &lt;/a&gt;\r\n    &lt;a href=&quot;mug&quot;&gt;\r\n    &lt;div class=&quot;col-sm-4 col2&quot;&gt;\r\n        &lt;div class=&quot;col-img&quot;&gt;\r\n       \r\n            &lt;img src=&quot;image/catalog/cmsblock/banner6-2.jpg&quot; alt=&quot;banner 6&quot;&gt;\r\n           \r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;text-content&quot;&gt;\r\n            &lt;h3 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; color: rgb(0, 0, 0);&quot;&gt;Check Out Our&amp;nbsp;&lt;/h3&gt;&lt;h3 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; color: rgb(0, 0, 0);&quot;&gt;Mugs Collections&lt;/h3&gt;\r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n  &lt;/a&gt;\r\n&lt;a href=&quot;caps&quot;&gt;\r\n    &lt;div class=&quot;col-sm-4 col3&quot;&gt;\r\n        &lt;div class=&quot;col-img&quot;&gt;\r\n           \r\n            &lt;img src=&quot;image/catalog/cmsblock/banner6-3.jpg&quot; alt=&quot;banner 6&quot;&gt;\r\n          \r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;text-content&quot;&gt;\r\n            &lt;h3&gt;Check Out Our&lt;/h3&gt;\r\n            &lt;h3&gt;Caps Collections&lt;/h3&gt;\r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n  &lt;/a&gt; 	\r\n&lt;/div&gt;\r\n								 									 									 									 									 									 									 									');
/*!40000 ALTER TABLE `oc_cmsblock_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cmsblock_to_store`
--

DROP TABLE IF EXISTS `oc_cmsblock_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cmsblock_to_store` (
  `cmsblock_id` int(11) DEFAULT NULL,
  `store_id` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cmsblock_to_store`
--

LOCK TABLES `oc_cmsblock_to_store` WRITE;
/*!40000 ALTER TABLE `oc_cmsblock_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_cmsblock_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'South Korea','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Pound Sterling','GBP','£','','2',0.61250001,1,'2014-09-25 14:40:00'),(2,'US Dollar','USD','$','','2',1.00000000,1,'2018-04-27 09:00:52'),(3,'Euro','EUR','','€','2',0.78460002,1,'2014-09-25 14:40:00'),(4,'Naira','NGN','₦','','2',1.00000000,1,'2018-09-02 21:00:58');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
INSERT INTO `oc_customer` VALUES (1,1,0,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','b794d737bb4fc4660a7d06291b28e9afcf15f1a5','6zEQtFHJA',NULL,NULL,0,2,'','41.217.13.160',1,0,'','','2018-05-22 12:10:58'),(2,1,0,1,'Bobby','Kanikwu','customizebobby@gmail.com','07062391349','','6c85f9bb5de47e3d531c90d82d3da3fb3a27a9c6','sEnl4DPog',NULL,NULL,0,1,'','::1',1,0,'','','2018-05-22 12:31:51'),(3,1,0,1,'Nnamdi','Ogundu','godswillogundu@yahoo.com','07038561877','','8885fc447c8cb1a126cffdf1fc6206c1283f3d68','2zHTfYIzu',NULL,NULL,0,3,'','154.118.93.111',1,0,'','','2018-06-12 13:08:34'),(4,1,0,1,'Paschal','Soribe','Paskilomail@gmail.com','7031163634','','52abfb94bdfe567a303e034f3d4228c39ca47003','dZCL4LTT1',NULL,NULL,0,0,'','154.118.89.186',1,0,'','','2018-06-28 10:56:42'),(5,1,0,1,'Anthony','Okechukwu','kokoshags@yahoo.co.uk','02089541259','','f0635acd9d2d6cab16465e3b17b1c01c00d87ea3','PlZEfoZ9u',NULL,NULL,1,4,'','154.66.50.185',1,0,'','','2018-06-29 08:41:35'),(6,1,0,1,'Nnamdi','Ogundu','godswillogndu@yahoo.com','07038561877','','c4ee72c73082c2e211409c38170821c4e76358a5','QgKcCHzg5',NULL,NULL,0,5,'','41.217.16.251',1,0,'','','2018-07-03 11:40:31'),(7,1,0,1,'Anthony','Okechukwu','kokoshaggy@gmail.com','08064022883','','48479bc4c4d361ea1c61828ffc080fc2790d3bba','QwZJHVZbN',NULL,NULL,0,6,'','41.217.24.215',1,0,'','','2018-07-04 03:28:01'),(8,1,0,1,'Stephanie','Okosa','chiiniee22@gmail.com','08135192005','','aa2124d05d113e38bbf00c37592787a4b1b86f59','fhxw3b0xE',NULL,NULL,1,0,'','154.118.94.96',1,0,'','','2018-08-06 14:48:24');
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_affiliate`
--

DROP TABLE IF EXISTS `oc_customer_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_affiliate`
--

LOCK TABLES `oc_customer_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_customer_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_approval`
--

DROP TABLE IF EXISTS `oc_customer_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_approval`
--

LOCK TABLES `oc_customer_approval` WRITE;
/*!40000 ALTER TABLE `oc_customer_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
INSERT INTO `oc_customer_ip` VALUES (1,1,'::1','2018-05-22 12:10:59'),(2,2,'::1','2018-05-22 12:32:03'),(3,1,'154.118.102.128','2018-06-08 17:09:31'),(4,1,'154.118.121.33','2018-06-08 19:02:19'),(5,1,'154.118.78.161','2018-06-09 09:43:52'),(6,1,'154.118.120.177','2018-06-10 22:39:24'),(7,1,'169.159.115.171','2018-06-11 09:17:52'),(8,1,'160.152.46.89','2018-06-11 14:35:40'),(9,1,'169.159.94.134','2018-06-12 12:39:21'),(10,3,'169.159.94.134','2018-06-12 13:08:39'),(11,1,'41.217.6.232','2018-06-12 17:05:06'),(12,1,'154.118.89.56','2018-06-12 18:28:42'),(13,1,'41.217.5.185','2018-06-13 07:32:13'),(14,3,'41.217.5.185','2018-06-13 07:32:43'),(15,1,'154.120.120.9','2018-06-13 15:33:04'),(16,1,'154.120.125.198','2018-06-13 20:42:50'),(17,1,'154.118.123.216','2018-06-14 08:48:19'),(18,1,'197.210.53.32','2018-06-14 14:38:55'),(19,1,'197.210.53.166','2018-06-14 14:39:02'),(20,1,'154.120.124.57','2018-06-14 14:45:23'),(21,1,'154.118.94.252','2018-06-15 10:51:43'),(22,1,'154.120.120.112','2018-06-16 19:33:52'),(23,1,'160.152.2.4','2018-06-18 09:39:12'),(24,1,'154.118.77.91','2018-06-18 10:19:52'),(25,1,'160.152.46.193','2018-06-18 10:47:47'),(26,1,'169.159.112.104','2018-06-19 08:38:02'),(27,1,'41.217.18.80','2018-06-19 09:08:31'),(28,1,'41.217.5.70','2018-06-19 09:31:22'),(29,1,'41.217.20.94','2018-06-19 11:36:39'),(30,1,'154.118.86.14','2018-06-19 12:53:58'),(31,1,'154.118.120.13','2018-06-19 16:51:02'),(32,1,'41.217.34.248','2018-06-20 12:27:55'),(33,1,'154.118.97.137','2018-06-20 14:41:28'),(34,1,'154.118.86.82','2018-06-20 22:01:09'),(35,1,'154.118.87.155','2018-06-21 09:05:01'),(36,1,'154.118.95.177','2018-06-21 10:08:22'),(37,1,'154.118.78.117','2018-06-21 12:56:21'),(38,1,'154.118.104.93','2018-06-21 14:39:05'),(39,3,'154.66.59.4','2018-06-22 08:53:43'),(40,3,'41.217.22.200','2018-06-22 09:07:41'),(41,1,'41.217.6.6','2018-06-22 09:26:04'),(42,1,'41.217.22.200','2018-06-22 10:31:24'),(43,1,'154.118.121.18','2018-06-22 11:13:13'),(44,1,'41.217.5.7','2018-06-23 09:13:41'),(45,3,'197.210.52.57','2018-06-23 16:28:10'),(46,3,'197.210.52.216','2018-06-23 16:28:31'),(47,3,'197.210.52.88','2018-06-23 16:50:30'),(48,3,'197.210.52.136','2018-06-23 16:50:30'),(49,3,'154.118.122.84','2018-06-25 07:40:04'),(50,3,'169.159.114.203','2018-06-25 07:48:41'),(51,1,'41.217.25.72','2018-06-25 13:02:47'),(52,3,'41.217.25.72','2018-06-25 13:32:51'),(53,3,'154.118.97.219','2018-06-25 13:42:56'),(54,1,'154.118.97.219','2018-06-25 13:43:02'),(55,1,'154.118.122.84','2018-06-25 15:26:05'),(56,3,'160.152.13.193','2018-06-26 07:42:47'),(57,3,'154.118.103.181','2018-06-26 10:32:03'),(58,1,'154.118.103.181','2018-06-26 10:42:43'),(59,3,'41.217.5.10','2018-06-26 15:29:18'),(60,3,'197.210.172.44','2018-06-26 15:35:45'),(61,3,'197.210.54.192','2018-06-26 16:03:45'),(62,3,'197.210.55.236','2018-06-26 16:03:50'),(63,3,'197.210.54.201','2018-06-26 16:04:45'),(64,3,'197.210.55.172','2018-06-26 16:05:56'),(65,3,'197.210.54.231','2018-06-26 16:06:18'),(66,3,'197.210.55.164','2018-06-26 16:06:20'),(67,3,'197.210.55.95','2018-06-26 16:07:41'),(68,3,'197.210.54.98','2018-06-26 16:08:21'),(69,3,'197.210.54.186','2018-06-26 16:08:50'),(70,3,'197.210.52.64','2018-06-26 16:38:11'),(71,3,'197.210.52.52','2018-06-26 16:57:08'),(72,3,'197.210.52.221','2018-06-26 16:59:39'),(73,1,'41.217.35.191','2018-06-26 18:03:55'),(74,1,'154.118.99.179','2018-06-26 21:30:15'),(75,3,'197.210.8.99','2018-06-26 22:09:02'),(76,1,'169.159.87.105','2018-06-27 08:28:13'),(77,3,'169.159.87.105','2018-06-27 08:28:56'),(78,1,'154.118.88.235','2018-06-27 08:42:52'),(79,1,'154.118.86.48','2018-06-27 15:23:55'),(80,3,'41.217.22.217','2018-06-27 15:36:59'),(81,3,'169.159.102.235','2018-06-27 17:54:50'),(82,3,'197.210.53.38','2018-06-27 19:13:06'),(83,3,'197.210.53.166','2018-06-27 19:13:38'),(84,3,'197.210.53.184','2018-06-27 19:13:55'),(85,1,'169.159.102.235','2018-06-28 08:09:46'),(86,1,'105.112.17.201','2018-06-28 08:43:23'),(87,3,'41.217.22.26','2018-06-28 08:48:26'),(88,1,'41.217.22.26','2018-06-28 09:53:10'),(89,4,'41.217.22.26','2018-06-28 10:56:44'),(90,1,'154.118.88.54','2018-06-28 12:51:06'),(91,3,'41.217.14.92','2018-06-28 12:52:01'),(92,4,'41.217.14.92','2018-06-28 12:57:11'),(93,3,'105.112.17.201','2018-06-28 15:04:41'),(94,1,'41.217.14.92','2018-06-28 15:09:31'),(95,1,'91.207.175.232','2018-06-28 15:46:17'),(96,1,'154.118.89.28','2018-06-28 23:56:10'),(97,1,'154.120.74.170','2018-06-29 07:53:20'),(98,4,'154.66.50.185','2018-06-29 08:09:43'),(99,3,'154.66.50.185','2018-06-29 08:10:59'),(100,5,'154.66.50.185','2018-06-29 08:41:36'),(101,1,'154.66.50.185','2018-06-29 09:12:29'),(102,3,'41.217.20.174','2018-06-29 09:26:52'),(103,1,'41.217.20.174','2018-06-29 13:55:48'),(104,4,'41.217.20.174','2018-06-29 14:43:53'),(105,1,'105.112.121.46','2018-06-29 15:35:14'),(106,1,'154.118.77.3','2018-06-29 18:21:40'),(107,4,'154.118.98.29','2018-06-29 20:15:16'),(108,4,'41.217.35.203','2018-06-30 07:29:19'),(109,3,'160.119.126.30','2018-06-30 15:19:27'),(110,1,'154.120.120.159','2018-07-02 07:32:23'),(111,4,'41.217.18.96','2018-07-02 07:56:05'),(112,3,'160.152.17.2','2018-07-02 09:01:15'),(113,1,'41.217.18.96','2018-07-02 10:23:07'),(114,1,'154.118.103.122','2018-07-02 14:17:02'),(115,1,'105.112.112.116','2018-07-03 07:48:50'),(116,1,'160.152.59.236','2018-07-03 08:04:45'),(117,1,'41.217.16.251','2018-07-03 09:17:17'),(118,4,'41.217.16.251','2018-07-03 10:25:01'),(119,6,'41.217.16.251','2018-07-03 11:40:32'),(120,7,'160.152.59.236','2018-07-04 03:28:02'),(121,4,'197.242.124.207','2018-07-04 10:45:24'),(122,1,'154.118.90.75','2018-07-04 12:08:52'),(123,1,'105.112.112.135','2018-07-04 12:12:40'),(124,7,'169.159.64.213','2018-07-05 07:54:10'),(125,4,'41.217.25.155','2018-07-05 08:49:24'),(126,1,'41.217.25.155','2018-07-05 09:42:51'),(127,1,'41.217.23.161','2018-07-06 23:25:28'),(128,4,'154.118.89.148','2018-07-07 09:22:41'),(129,7,'41.217.24.215','2018-07-09 07:26:41'),(130,1,'154.66.22.217','2018-07-10 08:00:27'),(131,4,'154.66.22.217','2018-07-10 08:28:01'),(132,4,'197.242.124.82','2018-07-10 13:44:44'),(133,4,'154.118.89.186','2018-07-12 14:23:35'),(134,1,'197.210.44.243','2018-07-22 13:27:15'),(135,1,'197.210.54.231','2018-07-24 08:32:26'),(136,1,'197.210.54.2','2018-07-24 08:36:03'),(137,1,'197.210.54.91','2018-07-24 08:36:27'),(138,1,'160.152.35.236','2018-07-25 08:17:16'),(139,1,'41.217.6.28','2018-08-03 12:13:51'),(140,8,'154.118.94.96','2018-08-06 14:48:28'),(141,3,'41.217.10.105','2018-08-14 12:40:55'),(142,1,'41.217.10.105','2018-08-14 14:59:55'),(143,1,'154.118.98.246','2018-08-14 16:24:38'),(144,1,'41.217.35.171','2018-08-14 22:10:56'),(145,1,'154.118.89.121','2018-08-15 07:13:21'),(146,1,'41.217.13.160','2018-08-16 13:44:27'),(147,3,'154.118.93.111','2018-08-17 09:42:35');
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
INSERT INTO `oc_customer_login` VALUES (1,'admin','::1',1,'2018-05-15 20:37:56','2018-05-15 20:37:56'),(3,'','::1',4,'2018-05-30 10:40:36','2018-06-05 07:45:28'),(7,'07038561877','41.217.5.185',1,'2018-06-13 08:41:38','2018-06-13 08:41:38');
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_search`
--

LOCK TABLES `oc_customer_search` WRITE;
/*!40000 ALTER TABLE `oc_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_wishlist`
--

LOCK TABLES `oc_customer_wishlist` WRITE;
/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
INSERT INTO `oc_customer_wishlist` VALUES (1,82,'2018-05-30 12:49:04'),(1,87,'2018-05-22 12:14:06'),(2,89,'2018-05-24 11:49:59'),(2,82,'2018-05-24 11:50:23'),(1,84,'2018-05-25 14:32:58'),(1,88,'2018-06-11 14:37:01');
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` VALUES (1,'activity_customer_add','catalog/model/account/customer/addCustomer/after','event/activity/addCustomer',1,0),(2,'activity_customer_edit','catalog/model/account/customer/editCustomer/after','event/activity/editCustomer',1,0),(3,'activity_customer_password','catalog/model/account/customer/editPassword/after','event/activity/editPassword',1,0),(4,'activity_customer_forgotten','catalog/model/account/customer/editCode/after','event/activity/forgotten',1,0),(5,'activity_transaction','catalog/model/account/customer/addTransaction/after','event/activity/addTransaction',1,0),(6,'activity_customer_login','catalog/model/account/customer/deleteLoginAttempts/after','event/activity/login',1,0),(7,'activity_address_add','catalog/model/account/address/addAddress/after','event/activity/addAddress',1,0),(8,'activity_address_edit','catalog/model/account/address/editAddress/after','event/activity/editAddress',1,0),(9,'activity_address_delete','catalog/model/account/address/deleteAddress/after','event/activity/deleteAddress',1,0),(10,'activity_affiliate_add','catalog/model/account/customer/addAffiliate/after','event/activity/addAffiliate',1,0),(11,'activity_affiliate_edit','catalog/model/account/customer/editAffiliate/after','event/activity/editAffiliate',1,0),(12,'activity_order_add','catalog/model/checkout/order/addOrderHistory/before','event/activity/addOrderHistory',1,0),(13,'activity_return_add','catalog/model/account/return/addReturn/after','event/activity/addReturn',1,0),(14,'mail_transaction','catalog/model/account/customer/addTransaction/after','mail/transaction',1,0),(15,'mail_forgotten','catalog/model/account/customer/editCode/after','mail/forgotten',1,0),(16,'mail_customer_add','catalog/model/account/customer/addCustomer/after','mail/register',1,0),(17,'mail_customer_alert','catalog/model/account/customer/addCustomer/after','mail/register/alert',1,0),(18,'mail_affiliate_add','catalog/model/account/customer/addAffiliate/after','mail/affiliate',1,0),(19,'mail_affiliate_alert','catalog/model/account/customer/addAffiliate/after','mail/affiliate/alert',1,0),(20,'mail_voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',1,0),(21,'mail_order_add','catalog/model/checkout/order/addOrderHistory/before','mail/order',1,0),(22,'mail_order_alert','catalog/model/checkout/order/addOrderHistory/before','mail/order/alert',1,0),(23,'statistics_review_add','catalog/model/catalog/review/addReview/after','event/statistics/addReview',1,0),(24,'statistics_return_add','catalog/model/account/return/addReturn/after','event/statistics/addReturn',1,0),(25,'statistics_order_history','catalog/model/checkout/order/addOrderHistory/after','event/statistics/addOrderHistory',1,0),(26,'admin_mail_affiliate_approve','admin/model/customer/customer_approval/approveAffiliate/after','mail/affiliate/approve',1,0),(27,'admin_mail_affiliate_deny','admin/model/customer/customer_approval/denyAffiliate/after','mail/affiliate/deny',1,0),(28,'admin_mail_customer_approve','admin/model/customer/customer_approval/approveCustomer/after','mail/customer/approve',1,0),(29,'admin_mail_customer_deny','admin/model/customer/customer_approval/denyCustomer/after','mail/customer/deny',1,0),(30,'admin_mail_reward','admin/model/customer/customer/addReward/after','mail/reward',1,0),(31,'admin_mail_transaction','admin/model/customer/customer/addTransaction/after','mail/transaction',1,0),(32,'admin_mail_return','admin/model/sale/return/addReturn/after','mail/return',1,0),(33,'admin_mail_forgotten','admin/model/user/user/editCode/after','mail/forgotten',1,0),(34,'voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',1,0);
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (67,'payment','cod'),(2,'total','shipping'),(3,'total','sub_total'),(4,'total','tax'),(5,'total','total'),(8,'total','credit'),(9,'shipping','flat'),(10,'total','handling'),(11,'total','low_order_fee'),(57,'module','category'),(15,'total','reward'),(17,'payment','free_checkout'),(20,'theme','default'),(21,'dashboard','activity'),(22,'dashboard','sale'),(23,'dashboard','recent'),(24,'dashboard','order'),(25,'dashboard','online'),(26,'dashboard','map'),(27,'dashboard','customer'),(28,'dashboard','chart'),(29,'report','sale_coupon'),(31,'report','customer_search'),(32,'report','customer_transaction'),(33,'report','product_purchased'),(34,'report','product_viewed'),(35,'report','sale_return'),(36,'report','sale_order'),(37,'report','sale_shipping'),(38,'report','sale_tax'),(39,'report','customer_activity'),(40,'report','customer_order'),(41,'report','customer_reward'),(42,'module','oc_page_builder'),(43,'module','ocajaxlogin'),(44,'module','ocblog'),(45,'module','occmsblock'),(46,'module','oclayerednavigation'),(48,'module','ocslideshow'),(49,'module','octestimonial'),(50,'module','octhemeoption'),(51,'module','ocproduct'),(52,'module','octabproducts'),(53,'module','ochozmegamenu'),(59,'module','tshirtecommerce'),(65,'module','vqmod_manager'),(61,'module','sainent_extensions'),(62,'payment','paystack'),(63,'total','voucher'),(69,'shipping','zones'),(70,'analytics','google'),(75,'module','firstmodule');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension_install`
--

LOCK TABLES `oc_extension_install` WRITE;
/*!40000 ALTER TABLE `oc_extension_install` DISABLE KEYS */;
INSERT INTO `oc_extension_install` VALUES (1,0,'octhemeoption.ocmod.zip','2017-08-09 09:37:18'),(2,0,'customizetemplate.ocmod.zip','2017-08-10 09:08:15'),(3,0,'customizetemplate.ocmod.zip','2017-08-10 17:17:46'),(4,0,'customizetemplate.ocmod.zip','2017-08-10 17:19:27'),(5,0,'oclayerednavigation.ocmod.zip','2017-08-11 15:37:04'),(6,0,'occustomizetemplate.ocmod.zip','2017-08-11 16:07:58'),(7,0,'oclayerednavigation.ocmod.zip','2017-08-11 16:08:14'),(8,0,'oclayerednavigation.ocmod.zip','2017-08-14 15:15:18'),(9,0,'oclayerednavigation.ocmod.zip','2017-08-14 15:17:42'),(10,0,'oclayerednavigation.ocmod.zip','2017-08-14 15:21:10'),(11,0,'oclayerednavigation.ocmod.zip','2017-08-14 15:34:32'),(12,0,'oclayerednavigation.ocmod.zip','2017-08-14 16:04:49'),(13,0,'oclayerednavigation.ocmod.zip','2017-08-14 16:06:23'),(14,0,'occustomizetemplate.ocmod.zip','2017-08-14 16:46:14'),(15,0,'oclayerednavigation.ocmod.zip','2017-08-15 14:53:09'),(16,0,'occustomizetemplate.ocmod.zip','2017-08-16 14:30:50'),(17,0,'occustomizetemplate.ocmod.zip','2017-09-07 15:37:46'),(18,0,'occustomizetemplate.ocmod.zip','2017-09-07 15:46:50'),(19,0,'occustomizetemplate.ocmod.zip','2017-09-07 15:50:03'),(20,0,'occustomizetemplate.ocmod.zip','2017-09-07 15:51:30'),(21,0,'occustomizetemplate.ocmod.zip','2017-09-07 15:57:11'),(22,0,'occustomizetemplate.ocmod.zip','2017-09-07 15:59:22'),(23,0,'occustomizetemplate.ocmod.zip','2017-09-07 16:02:29'),(24,0,'occustomizetemplate.ocmod.zip','2017-09-07 16:06:30'),(25,0,'occustomizetemplate.ocmod.zip','2017-09-07 16:07:58'),(26,0,'occustomizetemplate.ocmod.zip','2017-09-07 16:21:43'),(27,0,'occustomizetemplate.ocmod.zip','2017-09-07 16:39:33'),(28,0,'occustomizetemplate.ocmod.zip','2017-09-07 17:13:18'),(29,0,'occustomizetemplate.ocmod.zip','2017-09-07 17:24:51'),(30,0,'occustomizetemplate.ocmod.zip','2017-09-07 17:28:07'),(31,0,'occustomizetemplate.ocmod.zip','2017-09-07 18:37:42'),(32,0,'occustomizetemplate.ocmod.zip','2017-09-08 08:58:02'),(33,0,'occustomizetemplate.ocmod.zip','2017-09-08 09:02:50'),(34,0,'occustomizetemplate.ocmod.zip','2017-09-08 09:12:39'),(35,0,'occustomizetemplate.ocmod.zip','2017-09-08 09:14:19'),(36,0,'occustomizetemplate.ocmod.zip','2017-09-08 09:50:42'),(37,0,'removecompareinproduct.ocmod.zip','2018-05-15 22:21:11'),(38,0,'removecompare.ocmod.zip','2018-05-15 22:58:18'),(39,0,'adddesign.ocmod.zip','2018-05-16 08:28:15'),(40,0,'adddesign.ocmod.zip','2018-05-16 08:30:43'),(41,0,'seo-url.ocmod.zip','2018-05-20 10:18:56');
/*!40000 ALTER TABLE `oc_extension_install` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension_path`
--

LOCK TABLES `oc_extension_path` WRITE;
/*!40000 ALTER TABLE `oc_extension_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_extension_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_first_module`
--

DROP TABLE IF EXISTS `oc_first_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_first_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spouse_dob` varchar(150) NOT NULL,
  `email` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_first_module`
--

LOCK TABLES `oc_first_module` WRITE;
/*!40000 ALTER TABLE `oc_first_module` DISABLE KEYS */;
INSERT INTO `oc_first_module` VALUES (1,'09/01/2018','godswillogundu@yahoo.com','Nnamdi','2018-08-31 10:02:27'),(3,'08/17/2018','p.soribe@yahoo.com','Paschal Soribe','2018-08-31 13:04:52'),(4,'09/01/2018','a.a.okechukwu@gmail.com','Anthony Okechukwu','2018-08-31 13:14:36');
/*!40000 ALTER TABLE `oc_first_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `shipping_price` float DEFAULT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2009-01-06 23:26:25','2010-02-26 22:33:24',0),(4,'UK Shipping','UK Shipping Zones','2009-06-23 01:14:53','2010-12-15 15:18:13',0),(6,'Abuja Federal Capital Territory ','Federal Capital Territory ','2018-07-11 08:52:44','0000-00-00 00:00:00',800),(7,'Abia','Abia','2018-07-11 08:54:20','0000-00-00 00:00:00',1500),(8,'Adamawa','Adamawa','2018-07-11 08:57:08','0000-00-00 00:00:00',1500),(9,'Akwa Ibom','Akwa Ibom','2018-07-11 09:00:14','0000-00-00 00:00:00',1500),(10,'Anambra','Anambra','2018-07-11 09:01:06','0000-00-00 00:00:00',1500),(11,'Bauchi','Bauchi','2018-07-11 09:01:55','0000-00-00 00:00:00',1500),(12,'Bayelsa','Bayelsa','2018-07-11 09:03:21','0000-00-00 00:00:00',1500),(13,'Benue','Benue','2018-07-11 09:04:48','0000-00-00 00:00:00',1500),(14,'Borno','Borno','2018-07-11 09:05:26','0000-00-00 00:00:00',1500),(15,'Cross River','Cross River','2018-07-11 09:06:41','0000-00-00 00:00:00',1500),(16,'Delta','Delta','2018-07-11 09:13:18','0000-00-00 00:00:00',1500),(17,'Ebonyi','Ebonyi','2018-07-11 09:15:21','0000-00-00 00:00:00',1500),(18,'Edo','Edo','2018-07-11 09:15:55','0000-00-00 00:00:00',1500),(19,'Ekiti','Ekiti','2018-07-11 09:17:23','0000-00-00 00:00:00',1500),(20,'Enugu','Enugu','2018-07-11 09:18:41','0000-00-00 00:00:00',1500),(21,'Gombe','Gombe','2018-07-11 09:20:01','0000-00-00 00:00:00',1500),(22,'Imo','Imo','2018-07-11 09:20:51','0000-00-00 00:00:00',1500),(23,'Jigawa','Jigawa','2018-07-11 09:21:31','0000-00-00 00:00:00',1500),(24,'Kaduna','Kaduna','2018-07-11 09:22:11','0000-00-00 00:00:00',1500),(25,'Kano','Kano','2018-07-11 09:24:42','0000-00-00 00:00:00',1500),(26,'Kastina','Kastina','2018-07-11 09:25:38','0000-00-00 00:00:00',1500),(27,'Kebbi','Kebbi','2018-07-11 09:26:26','0000-00-00 00:00:00',1500),(28,'Kogi','Kogi','2018-07-11 09:27:03','0000-00-00 00:00:00',1500),(29,'Kwara','Kwara','2018-07-11 09:27:56','0000-00-00 00:00:00',1500),(30,'Lagos','Lagos','2018-07-11 09:28:32','0000-00-00 00:00:00',1500),(31,'Nasarawa','Nasarawa','2018-07-11 09:29:18','0000-00-00 00:00:00',1500),(32,'Niger','Niger','2018-07-11 09:29:53','0000-00-00 00:00:00',1500),(33,'Ogun','Ogun','2018-07-11 09:30:29','0000-00-00 00:00:00',1500),(34,'Ondo','Ondo','2018-07-11 09:31:20','0000-00-00 00:00:00',1500),(35,'Osun','Osun','2018-07-11 09:31:59','0000-00-00 00:00:00',1500),(36,'Oyo','Oyo','2018-07-11 09:32:34','0000-00-00 00:00:00',1500),(37,'Plateau','Plateau','2018-07-11 09:33:20','0000-00-00 00:00:00',1500),(38,'Rivers','Rivers','2018-07-11 09:34:11','0000-00-00 00:00:00',1500),(39,'Sokoto','Sokoto','2018-07-11 09:34:50','0000-00-00 00:00:00',1500),(40,'Taraba','Taraba','2018-07-11 09:35:42','0000-00-00 00:00:00',1500),(41,'Yobe','Yobe','2018-07-11 09:36:22','0000-00-00 00:00:00',1500),(42,'Zamfara','Zamfara','2018-07-11 09:36:58','0000-00-00 00:00:00',1500);
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (5,1,'Terms &amp; Conditions','&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot; style=&quot;font-size: 18px;&quot;&gt;Hazye.ng is fully owned by Epsolun Global\r\nServices. Epsolun Global Services is committed to providing excellent customer\r\nservice and quality products. We offer a 7 day return policy for certain items\r\nin case you need to make a return. To return any items bought on hazye.ng,\r\nensure the item is in line with the conditions in our return policy. In the\r\nevent you experience any problems with a product or design or delivery, please\r\ncontact us immediately. In the event that an ordered item is not available or\r\nwe are unable to fulfill your order we will notify you within 2 business days to\r\narrange an agreeable alternative item, a backorder or a full refund.&lt;/span&gt;&lt;b&gt;&lt;span lang=&quot;EN-GB&quot; style=&quot;font-size:18.0pt;line-height:107%;mso-fareast-font-family:\r\n&amp;quot;Times New Roman&amp;quot;;mso-bidi-font-family:&amp;quot;Times New Roman&amp;quot;;mso-fareast-language:\r\nEN-GB&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;h2&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Refund Policy:&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;We do not usually give refunds if you\r\nsimply change your mind or make a wrong decision. In addition, we cannot accept\r\nrefunds for products that have been personalised unless the final output does\r\nnot match the design you created. Therefore, please ensure you review your\r\ndesign before completing the order. &lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;We may also grant refunds in cases where products\r\nhave been damaged in transit and the customer can show that the product was\r\ndamaged before they received it. In such cases, please contact us and we will\r\narrange to have the products returned to us to be repaired or replaced. Please\r\nnote that It is your responsibility to inspect the products upon delivery.&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;In addition, please note that we cannot\r\nmake cash refunds. All refunds will be in the form of vouchers which can be\r\nused on hazye.ng or one of our partners. Please allow between 10 – 14 working\r\ndays for the refund to be processed. &lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Use Conditions:&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Epsolun Global Services grants you a personal,\r\nnon-exclusive, non-transferable, limited privilege to access and use our\r\nstores, websites and/or tools on the condition that you use the website fairly\r\nand you follow all rules, guidelines and conditions as may from time to time be\r\nstated in our terms or on our websites. It is your responsibility to acquaint\r\nyourself with these rules and guidelines and the terms under which you may use\r\nour stores, websites and/or tools.&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Use of Epsolun Global Services stores,\r\nwebsites and tools is available only to individuals who can form legally\r\nbinding contracts under Nigerian governing laws. If you are under the age of 18\r\nyears, you shall not register under hazye.ng directly and you must use your\r\nlegal guardian or parent in order to use our stores, websites and/or tools. &lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;We retain every right to all data, designs,\r\nreviews, and content created by you using the store, websites or tools. We also\r\nreserve the right to cancel or terminate your account and/or revoke any orders\r\nif we determine that you have violated any of our terms and conditions. &lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;You indemnify Epsolun Global Services of\r\nany copyright infringements due to your use of our stores, websites or\r\ntools.&amp;nbsp; &lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Payment: &lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Epsolun Global Services can only accept an\r\norder once payment has been received by us in full. We cannot accept liability\r\nfor lack of authorisation on a transaction or any payment issues arising out of\r\nthe transaction. &lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;While we will cooperate with the customer\r\nand relevant authorities, we cannot accept any liability for any transactions\r\nthat turn out to be fraudulent. &lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;h2&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Warranties:&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/h2&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;We take care to ensure that the products\r\nlisted on the stores of high quality. Nonetheless, Epsolun Global Services does\r\nnot make any representations nor give warranties or guarantees of the products\r\non our stores unless expressly stated in writing,&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;br&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;\r\nNotwithstanding any other provisions of this agreement, Epsolun Global Services\r\nliability to you and or any third party for any loss or damages of any nature\r\nwhatsoever, including without limitation any damage or loss specifically proven\r\nby a competent court to be caused by Epsolun Global Services shall in any event\r\nand under all circumstances be limited to the cost of the goods transacted.&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n','Terms &amp; Conditions','',''),(3,1,'Privacy Policy','&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;﻿&lt;/span&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;In order to conduct business with you and\r\ndeliver our products and services to you we collect contact information\r\nincluding your name, addresses, phone numbers, email address and other personal\r\ninformation. Epsolun Global Services is dedicated to protecting your privacy.\r\n&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Any information, we collect about you, is kept securely.&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Organisations or Individuals we may\r\ndisclose your information to include those:&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;text-indent: -0.25in;&quot;&gt;&lt;span lang=&quot;EN-GB&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-size: 18px;&quot;&gt;&lt;font face=&quot;Symbol&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 18px; line-height: normal;&quot;&gt; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span lang=&quot;EN-GB&quot; style=&quot;font-size: 18px;&quot;&gt;Involved in providing, managing\r\nor administering your product or service such as third party suppliers, other\r\naffiliate &lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span lang=&quot;EN-GB&quot; style=&quot;font-size: 18px;&quot;&gt;organisations, loyalty and affinity program partners, printers,\r\nposting services and call centres that are providing a &lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span lang=&quot;EN-GB&quot; style=&quot;font-size: 18px;&quot;&gt;service on behalf of Top\r\nIdea.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-indent: -0.25in;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;That are affiliate\r\norganisations with Epsolun Global Services who wish to tell you about their\r\nproducts or services that &lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;might better serve your needs or promotions or other\r\nopportunities, except where you tell us not to.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-indent: -0.25in;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 18px; line-height: normal; font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span lang=&quot;EN-GB&quot; style=&quot;text-indent: -0.25in; font-size: 18px;&quot;&gt;Involved in maintaining,\r\nreviewing and developing our business systems, procedures and infrastructure\r\nincluding testing&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span lang=&quot;EN-GB&quot; style=&quot;text-indent: -0.25in; font-size: 18px;&quot;&gt;or upgrading our ecommerce systems.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-indent: -0.25in;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Involved in a corporate\r\nre-organisation involving a transfer of all or part of the assets or business\r\nof the organisation.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-indent: -0.25in;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp; &amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Involved in the payments system\r\nincluding financial institutions, merchants and payment organisations.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-indent: -0.25in;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Involved in product planning\r\nand development.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-indent: -0.25in;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Which are your representatives\r\nincluding your legal advisers.&lt;/span&gt;&lt;/li&gt;&lt;li style=&quot;text-indent: -0.25in;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Required or authorised by law,\r\nfor example, to government or regulatory bodies for purposes related to public\r\nhealth or &lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;safety, the prevention or detection of unlawful activities or to\r\nprotect public revenue.&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;We do not collect or retain sensitive\r\ninformation about you such as your bank or card details. These information are\r\nsent and managed directly through our payment partners such as the banks.&amp;nbsp;&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n','Privacy Policy','',''),(4,1,'About Us','&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:14.0pt&quot;&gt;Hazye is an online\r\ngift personalization provider; we are committed to helping our customer express\r\nwhat brings them together. Hazye is not just about ordering customized or\r\npersonalized products; we truly believe that personalized gifts can ignite a\r\nsense of belonging and connection. &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:14.0pt&quot;&gt;We believe that\r\ncustomized t-shirts and other gifts for loved ones and occasions do more than\r\njust make them look good - they help them also feel good and inspired to do\r\ngood as well.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:14.0pt&quot;&gt;&lt;o:p&gt;&amp;nbsp;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;b style=&quot;mso-bidi-font-weight:normal&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:18.0pt&quot;&gt;How do you give the perfect gift?&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:14.0pt&quot;&gt;When giving a\r\ngift, there is nothing like a gift that helps you express your deepest feelings\r\nwithout even saying a word, over the years, we have thought of helping people\r\ncreate lasting memories with perfect personalized gifts, for all the life\r\nspecial occasions, whether for marriage proposals, pre-wedding gifts and wears,\r\nbirthdays, anniversaries, baby showers, or to a loved one, a Personalized gift\r\nalways brings out the brightest smiles.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;tab-stops:120.0pt&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:\r\n14.0pt&quot;&gt;&lt;span style=&quot;mso-tab-count:1&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;b style=&quot;mso-bidi-font-weight:normal&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:18.0pt&quot;&gt;What Makes Hazye Special?&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:14.0pt&quot;&gt;Gifts Personalization:\r\nWhenever you require a gift that stands out among other gifts, Hazye.ng is\r\nwhere you go, that is why we offer lots of one-of-a-kind gifts designed\r\nexclusively for you, and also give you an avenue to design yours how you want\r\nit even without any design skills. We provide the tools you need to help you make\r\na one-of-a-kind design, you can add your photo, date, name, monogram, event\r\nname, business name, special messages and many more options for a gift that can\r\nbe enjoyed in a lifetime. At the end, it might seem like you went through a lot\r\nof trouble, but only you need to know how easy it is because Hazye takes care\r\nof every details for you.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:14.0pt&quot;&gt;&lt;o:p&gt;&amp;nbsp;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;b style=&quot;mso-bidi-font-weight:normal&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:18.0pt&quot;&gt;Guarantees&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:14.0pt&quot;&gt;Our fast and\r\nefficient delivery system, outstanding customer service and quality gift and\r\npackaging services help to simplify your shopping experience.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 14pt;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;!--[if gte mso 9]&gt;&lt;xml&gt;\r\n &lt;w:WordDocument&gt;\r\n  &lt;w:View&gt;Normal&lt;/w:View&gt;\r\n  &lt;w:Zoom&gt;0&lt;/w:Zoom&gt;\r\n  &lt;w:TrackMoves&gt;&lt;/w:TrackMoves&gt;\r\n  &lt;w:TrackFormatting&gt;&lt;/w:TrackFormatting&gt;\r\n  &lt;w:PunctuationKerning&gt;&lt;/w:PunctuationKerning&gt;\r\n  &lt;w:ValidateAgainstSchemas&gt;&lt;/w:ValidateAgainstSchemas&gt;\r\n  &lt;w:SaveIfXMLInvalid&gt;false&lt;/w:SaveIfXMLInvalid&gt;\r\n  &lt;w:IgnoreMixedContent&gt;false&lt;/w:IgnoreMixedContent&gt;\r\n  &lt;w:AlwaysShowPlaceholderText&gt;false&lt;/w:AlwaysShowPlaceholderText&gt;\r\n  &lt;w:DoNotPromoteQF&gt;&lt;/w:DoNotPromoteQF&gt;\r\n  &lt;w:LidThemeOther&gt;EN-US&lt;/w:LidThemeOther&gt;\r\n  &lt;w:LidThemeAsian&gt;X-NONE&lt;/w:LidThemeAsian&gt;\r\n  &lt;w:LidThemeComplexScript&gt;X-NONE&lt;/w:LidThemeComplexScript&gt;\r\n  &lt;w:Compatibility&gt;\r\n   &lt;w:BreakWrappedTables&gt;&lt;/w:BreakWrappedTables&gt;\r\n   &lt;w:SnapToGridInCell&gt;&lt;/w:SnapToGridInCell&gt;\r\n   &lt;w:WrapTextWithPunct&gt;&lt;/w:WrapTextWithPunct&gt;\r\n   &lt;w:UseAsianBreakRules&gt;&lt;/w:UseAsianBreakRules&gt;\r\n   &lt;w:DontGrowAutofit&gt;&lt;/w:DontGrowAutofit&gt;\r\n   &lt;w:SplitPgBreakAndParaMark&gt;&lt;/w:SplitPgBreakAndParaMark&gt;\r\n   &lt;w:EnableOpenTypeKerning&gt;&lt;/w:EnableOpenTypeKerning&gt;\r\n   &lt;w:DontFlipMirrorIndents&gt;&lt;/w:DontFlipMirrorIndents&gt;\r\n   &lt;w:OverrideTableStyleHps&gt;&lt;/w:OverrideTableStyleHps&gt;\r\n  &lt;/w:Compatibility&gt;\r\n  &lt;m:mathPr&gt;\r\n   &lt;m:mathFont m:val=&quot;Cambria Math&quot;&gt;&lt;/m:mathFont&gt;\r\n   &lt;m:brkBin m:val=&quot;before&quot;&gt;&lt;/m:brkBin&gt;\r\n   &lt;m:brkBinSub m:val=&quot;&amp;#45;-&quot;&gt;&lt;/m:brkBinSub&gt;\r\n   &lt;m:smallFrac m:val=&quot;off&quot;&gt;&lt;/m:smallFrac&gt;\r\n   &lt;m:dispDef&gt;&lt;/m:dispDef&gt;\r\n   &lt;m:lMargin m:val=&quot;0&quot;&gt;&lt;/m:lMargin&gt;\r\n   &lt;m:rMargin m:val=&quot;0&quot;&gt;&lt;/m:rMargin&gt;\r\n   &lt;m:defJc m:val=&quot;centerGroup&quot;&gt;&lt;/m:defJc&gt;\r\n   &lt;m:wrapIndent m:val=&quot;1440&quot;&gt;&lt;/m:wrapIndent&gt;\r\n   &lt;m:intLim m:val=&quot;subSup&quot;&gt;&lt;/m:intLim&gt;\r\n   &lt;m:naryLim m:val=&quot;undOvr&quot;&gt;&lt;/m:naryLim&gt;\r\n  &lt;/m:mathPr&gt;&lt;/w:WordDocument&gt;\r\n&lt;/xml&gt;&lt;![endif]--&gt;&lt;!--[if gte mso 9]&gt;&lt;xml&gt;\r\n &lt;w:LatentStyles DefLockedState=&quot;false&quot; DefUnhideWhenUsed=&quot;false&quot;\r\n  DefSemiHidden=&quot;false&quot; DefQFormat=&quot;false&quot; DefPriority=&quot;99&quot;\r\n  LatentStyleCount=&quot;382&quot;&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;0&quot; QFormat=&quot;true&quot; Name=&quot;Normal&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; QFormat=&quot;true&quot; Name=&quot;heading 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 7&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 8&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 9&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;index 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;index 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;index 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;index 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;index 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;index 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;index 7&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;index 8&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;index 9&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 7&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 8&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 9&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Normal Indent&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;footnote text&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;annotation text&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;header&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;footer&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;index heading&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;35&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;caption&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;table of figures&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;envelope address&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;envelope return&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;footnote reference&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;annotation reference&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;line number&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;page number&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;endnote reference&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;endnote text&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;table of authorities&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;macro&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;toa heading&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Bullet&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Number&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Bullet 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Bullet 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Bullet 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Bullet 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Number 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Number 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Number 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Number 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;10&quot; QFormat=&quot;true&quot; Name=&quot;Title&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Closing&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Signature&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;1&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;Default Paragraph Font&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Body Text&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Body Text Indent&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Continue&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Continue 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Continue 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Continue 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;List Continue 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Message Header&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;11&quot; QFormat=&quot;true&quot; Name=&quot;Subtitle&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Salutation&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Date&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Body Text First Indent&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Body Text First Indent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Note Heading&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Body Text 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Body Text 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Body Text Indent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Body Text Indent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Block Text&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Hyperlink&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;FollowedHyperlink&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;22&quot; QFormat=&quot;true&quot; Name=&quot;Strong&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;20&quot; QFormat=&quot;true&quot; Name=&quot;Emphasis&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Document Map&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Plain Text&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;E-mail Signature&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;HTML Top of Form&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;HTML Bottom of Form&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Normal (Web)&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;HTML Acronym&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;HTML Address&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;HTML Cite&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;HTML Code&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;HTML Definition&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;HTML Keyboard&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;HTML Preformatted&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;HTML Sample&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;HTML Typewriter&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;HTML Variable&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Normal Table&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;annotation subject&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;No List&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Outline List 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Outline List 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Outline List 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Simple 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Simple 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Simple 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Classic 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Classic 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Classic 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Classic 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Colorful 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Colorful 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Colorful 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Columns 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Columns 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Columns 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Columns 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Columns 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Grid 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Grid 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Grid 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Grid 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Grid 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Grid 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Grid 7&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Grid 8&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table List 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table List 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table List 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table List 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table List 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table List 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table List 7&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table List 8&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table 3D effects 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table 3D effects 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table 3D effects 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Contemporary&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Elegant&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Professional&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Subtle 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Subtle 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Web 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Web 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Web 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Balloon Text&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; Name=&quot;Table Grid&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Table Theme&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Note Level 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Note Level 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Note Level 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Note Level 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Note Level 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Note Level 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Note Level 7&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Note Level 8&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Note Level 9&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; Name=&quot;Placeholder Text&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;1&quot; QFormat=&quot;true&quot; Name=&quot;No Spacing&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; Name=&quot;Revision&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;34&quot; QFormat=&quot;true&quot;\r\n   Name=&quot;List Paragraph&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;29&quot; QFormat=&quot;true&quot; Name=&quot;Quote&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;30&quot; QFormat=&quot;true&quot;\r\n   Name=&quot;Intense Quote&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;19&quot; QFormat=&quot;true&quot;\r\n   Name=&quot;Subtle Emphasis&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;21&quot; QFormat=&quot;true&quot;\r\n   Name=&quot;Intense Emphasis&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;31&quot; QFormat=&quot;true&quot;\r\n   Name=&quot;Subtle Reference&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;32&quot; QFormat=&quot;true&quot;\r\n   Name=&quot;Intense Reference&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;33&quot; QFormat=&quot;true&quot; Name=&quot;Book Title&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;37&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;Bibliography&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\r\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;TOC Heading&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;41&quot; Name=&quot;Plain Table 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;42&quot; Name=&quot;Plain Table 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;43&quot; Name=&quot;Plain Table 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;44&quot; Name=&quot;Plain Table 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;45&quot; Name=&quot;Plain Table 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;40&quot; Name=&quot;Grid Table Light&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot; Name=&quot;Grid Table 1 Light&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot; Name=&quot;Grid Table 6 Colorful&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot; Name=&quot;Grid Table 7 Colorful&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\r\n   Name=&quot;Grid Table 1 Light Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\r\n   Name=&quot;Grid Table 6 Colorful Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\r\n   Name=&quot;Grid Table 7 Colorful Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\r\n   Name=&quot;Grid Table 1 Light Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\r\n   Name=&quot;Grid Table 6 Colorful Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\r\n   Name=&quot;Grid Table 7 Colorful Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\r\n   Name=&quot;Grid Table 1 Light Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\r\n   Name=&quot;Grid Table 6 Colorful Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\r\n   Name=&quot;Grid Table 7 Colorful Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\r\n   Name=&quot;Grid Table 1 Light Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\r\n   Name=&quot;Grid Table 6 Colorful Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\r\n   Name=&quot;Grid Table 7 Colorful Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\r\n   Name=&quot;Grid Table 1 Light Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\r\n   Name=&quot;Grid Table 6 Colorful Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\r\n   Name=&quot;Grid Table 7 Colorful Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\r\n   Name=&quot;Grid Table 1 Light Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\r\n   Name=&quot;Grid Table 6 Colorful Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\r\n   Name=&quot;Grid Table 7 Colorful Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot; Name=&quot;List Table 1 Light&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot; Name=&quot;List Table 6 Colorful&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot; Name=&quot;List Table 7 Colorful&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\r\n   Name=&quot;List Table 1 Light Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4 Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\r\n   Name=&quot;List Table 6 Colorful Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\r\n   Name=&quot;List Table 7 Colorful Accent 1&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\r\n   Name=&quot;List Table 1 Light Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4 Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\r\n   Name=&quot;List Table 6 Colorful Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\r\n   Name=&quot;List Table 7 Colorful Accent 2&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\r\n   Name=&quot;List Table 1 Light Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4 Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\r\n   Name=&quot;List Table 6 Colorful Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\r\n   Name=&quot;List Table 7 Colorful Accent 3&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\r\n   Name=&quot;List Table 1 Light Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4 Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\r\n   Name=&quot;List Table 6 Colorful Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\r\n   Name=&quot;List Table 7 Colorful Accent 4&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\r\n   Name=&quot;List Table 1 Light Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4 Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\r\n   Name=&quot;List Table 6 Colorful Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\r\n   Name=&quot;List Table 7 Colorful Accent 5&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\r\n   Name=&quot;List Table 1 Light Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4 Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\r\n   Name=&quot;List Table 6 Colorful Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\r\n   Name=&quot;List Table 7 Colorful Accent 6&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Mention&quot;&gt;&lt;/w:LsdException&gt;\r\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\r\n   Name=&quot;Smart Hyperlink&quot;&gt;&lt;/w:LsdException&gt;\r\n &lt;/w:LatentStyles&gt;\r\n&lt;/xml&gt;&lt;![endif]--&gt;\r\n&lt;style&gt;\r\n&lt;!--\r\n /* Font Definitions */\r\n@font-face\r\n	{font-family:&quot;Cambria Math&quot;;\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:roman;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-536870145 1107305727 0 0 415 0;}\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:swiss;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-536870145 1073786111 1 0 415 0;}\r\n /* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:&quot;&quot;;\r\n	margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	text-align:justify;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:&quot;Calibri&quot;,sans-serif;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-ansi-language:EN-US;\r\n	mso-fareast-language:EN-US;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	font-size:11.0pt;\r\n	mso-ansi-font-size:11.0pt;\r\n	mso-bidi-font-size:11.0pt;\r\n	font-family:&quot;Calibri&quot;,sans-serif;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n	mso-bidi-theme-font:minor-bidi;\r\n	mso-ansi-language:EN-US;\r\n	mso-fareast-language:EN-US;}\r\n.MsoPapDefault\r\n	{mso-style-type:export-only;\r\n	text-align:justify;}\r\n@page WordSection1\r\n	{size:612.0pt 792.0pt;\r\n	margin:72.0pt 72.0pt 72.0pt 72.0pt;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.WordSection1\r\n	{page:WordSection1;}\r\n--&gt;\r\n&lt;/style&gt;\r\n&lt;!--[if gte mso 10]&gt;\r\n&lt;style&gt;\r\n /* Style Definitions */\r\ntable.MsoNormalTable\r\n	{mso-style-name:&quot;Table Normal&quot;;\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:&quot;&quot;;\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	text-align:justify;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:&quot;Calibri&quot;,sans-serif;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-ansi-language:EN-US;\r\n	mso-fareast-language:EN-US;}\r\n&lt;/style&gt;\r\n&lt;![endif]--&gt;\r\n\r\n\r\n\r\n&lt;!--StartFragment--&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;!--EndFragment--&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:14.0pt&quot;&gt;Bringing your idea\r\nto life is fun and easy with hazye.ng.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n','About Us','',''),(6,1,'Delivery Information','&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Epsolun\r\nGlobal Services aims to ensure you receive your orders quickly and efficiently.&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 36px;&quot;&gt;Estimated Delivery Time&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Most\r\norders are dispatched within 3 working days, however some customised products\r\nmay take longer to be processed.&amp;nbsp;Delivery period may be between 3 and 7 working\r\ndays depending on your location in Nigeria.&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Please\r\nnote that Public Holidays and weekends are not included in our calculations.&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;All\r\nitems in a single order must be delivered to one final delivery address. If you\r\nwant different items delivered to different locations, we advise you to create\r\nmultiple orders.&amp;nbsp;&lt;/span&gt; &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 36px;&quot;&gt;Delivery Costs&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Delivery\r\nwill be charged for all orders unless otherwise specified.&amp;nbsp; Delivery costs\r\nare calculated based on the quantity of items in the order, and the final destination\r\nin Nigeria. Usually, the amount you pay to us is the final cost to be paid\r\nuntil you receive the goods. &lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Occasionally,\r\nwe have been informed of dispatch riders asking for a tip for their services.\r\nAny additional tip to the dispatch rider is completely at the discretion of the\r\ncustomer.&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 36px;&quot;&gt;International Delivery.&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-size: 36px;&quot;&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span lang=&quot;EN-GB&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Epsolun\r\nGlobal Services currently only delivers our products within Nigeria.&amp;nbsp;&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;\r\n','Delivery Information','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
INSERT INTO `oc_information_to_layout` VALUES (5,0,0),(3,0,0),(6,0,0),(4,0,0);
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'English','en-gb','en-US,en_US.UTF-8,en_US,en-gb,english','gb.png','english',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (8,'Layout Momisa 04: Category'),(14,'Layout Momisa 04: Default'),(17,'Layout Momisa 04: Home'),(20,'Layout Momisa 04: Product');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=443 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (439,17,'firstmodule','content_bottom',0),(438,17,'oc_page_builder.58','content_top',0),(434,8,'occmsblock.60','block3',1),(433,8,'occmsblock.61','block3',0),(432,8,'ocajaxlogin','content_top',0),(426,14,'occmsblock.60','block3',1),(425,14,'occmsblock.61','block3',0),(424,14,'ocajaxlogin','content_top',0),(420,20,'occmsblock.60','block3',1),(419,20,'occmsblock.61','block3',0),(418,20,'ocajaxlogin','content_top',0),(417,20,'ochozmegamenu.43','block1',0),(431,8,'ochozmegamenu.43','block1',0),(423,14,'ochozmegamenu.43','block1',0),(430,8,'oclayerednavigation','column_left',1),(429,8,'category','column_left',0),(437,17,'ochozmegamenu.43','block1',0),(421,20,'occmsblock.62','block4',0),(427,14,'occmsblock.62','block4',0),(441,17,'occmsblock.60','block3',1),(435,8,'occmsblock.62','block4',0),(440,17,'occmsblock.61','block3',0),(442,17,'occmsblock.62','block4',0);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=238 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (229,20,0,'product/product'),(230,14,0,''),(237,17,1,'common/home'),(231,8,0,'product/category'),(232,20,1,'product/product'),(233,14,1,''),(236,17,0,'common/home'),(235,8,1,'product/category');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Centimeter','cm'),(2,1,'Millimeter','mm'),(3,1,'Inch','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'HTC','catalog/demo/htc_logo.jpg',0),(6,'Palm','catalog/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0),(8,'Apple','catalog/demo/apple_logo.jpg',0),(9,'Canon','catalog/demo/canon_logo.jpg',0),(10,'Sony','catalog/demo/sony_logo.jpg',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` VALUES (1,1,'OC Theme Option','oc_theme_option','Plaza Theme','3.x','','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <code>oc_theme_option</code>\r\n    <name>OC Theme Option</name>\r\n    <version>3.x</version>\r\n    <author>Plaza Theme</author>\r\n\r\n    <!-- Menu Left in Admin -->\r\n    <file path=\"admin/controller/common/column_left.php\">\r\n        <operation>\r\n            <search ><![CDATA[$sale = array();]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            // OC Menu Items\r\n            $this->load->language(\'ocadminmenu/ocadminmenu\');\r\n\r\n            $ocadmin_menu = array();\r\n\r\n            if($this->user->hasPermission(\'access\', \'extension/module/octhemeoption\')) {\r\n                $ocadmin_menu[] = array(\r\n                    \'name\'     => $this->language->get(\'text_theme_config\'),\r\n                    \'href\'     => $this->url->link(\'extension/module/octhemeoption\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n                    \'children\' => array()\r\n                );\r\n            }\r\n\r\n            if($this->user->hasPermission(\'access\', \'catalog/occategorythumbnail\')) {\r\n                $ocadmin_menu[] = array(\r\n                    \'name\'     => $this->language->get(\'text_category_thumbnail\'),\r\n                    \'href\'     => $this->url->link(\'catalog/occategorythumbnail\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n                    \'children\' => array()\r\n                );\r\n            }\r\n\r\n            // Blog\r\n            $blog = array();\r\n\r\n            if ($this->user->hasPermission(\'access\', \'blog/article\')) {\r\n                $blog[] = array(\r\n                    \'name\'     => $this->language->get(\'text_article\'),\r\n                    \'href\'     => $this->url->link(\'blog/article\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n                    \'children\' => array()\r\n                );\r\n            }\r\n\r\n            if ($this->user->hasPermission(\'access\', \'blog/articlelist\')) {\r\n                $blog[] = array(\r\n                    \'name\'     => $this->language->get(\'text_article_list\'),\r\n                    \'href\'     => $this->url->link(\'blog/articlelist\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n                    \'children\' => array()\r\n                );\r\n            }\r\n\r\n            if ($this->user->hasPermission(\'access\', \'blog/config\')) {\r\n                $blog[] = array(\r\n                    \'name\'     => $this->language->get(\'text_blog_config\'),\r\n                    \'href\'     => $this->url->link(\'blog/config\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n                    \'children\' => array()\r\n                );\r\n            }\r\n\r\n            if($blog) {\r\n                $ocadmin_menu[] = array(\r\n                    \'name\'      => $this->language->get(\'text_blog\'),\r\n                    \'href\'      => \'\',\r\n                    \'children\'  => $blog\r\n                );\r\n            }\r\n\r\n            if($this->user->hasPermission(\'access\', \'extension/module/occmsblock\')) {\r\n                $ocadmin_menu[] = array(\r\n                    \'name\'     => $this->language->get(\'text_cms_block\'),\r\n                    \'href\'     => $this->url->link(\'extension/module/occmsblock/cmslist\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n                    \'children\' => array()\r\n                );\r\n            }\r\n\r\n            if($this->user->hasPermission(\'access\', \'extension/module/ocslideshow\')) {\r\n                $ocadmin_menu[] = array(\r\n                    \'name\'     => $this->language->get(\'text_slideshow\'),\r\n                    \'href\'     => $this->url->link(\'extension/module/ocslideshow/form\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n                    \'children\' => array()\r\n                );\r\n            }\r\n\r\n            if($this->user->hasPermission(\'access\', \'catalog/octestimonial\')) {\r\n                $ocadmin_menu[] = array(\r\n                    \'name\'     => $this->language->get(\'text_testimonial\'),\r\n                    \'href\'     => $this->url->link(\'catalog/octestimonial\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n                    \'children\' => array()\r\n                );\r\n            }\r\n            \r\n            $data[\'menus\'][] = array(\r\n                \'id\'       => \'menu-panel\',\r\n                \'icon\'     => \'fa-empire\',\r\n                \'name\'     => $this->language->get(\'text_theme_menu\'),\r\n                \'href\'     => \'\',\r\n                \'children\' => $ocadmin_menu\r\n            );\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- PRODUCT ROTATOR IMAGE -->\r\n    <file path=\"admin/controller/catalog/product.php\">\r\n        <operation>\r\n            <search ><![CDATA[public function index() {]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n        /* Product Rotator */\r\n        $this->load->model(\'catalog/ocproductrotator\');\r\n        \r\n        $this->model_catalog_ocproductrotator->installProductRotator();\r\n        /* End Product Rotator */\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[$this->load->language(\'catalog/product\');]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                /* Product Rotator */\r\n                $this->load->language(\'extension/module/ocproductrotator\');\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[\'sort_order\' => $product_image[\'sort_order\']]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                /* Product Rotator */\r\n                \'is_rotator\' => $product_image[\'is_rotator\'],\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"admin/model/catalog/product.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_image SET product_id = \'\" . (int)$product_id . \"\', image = \'\" . $this->db->escape($product_image[\'image\']) . \"\', sort_order = \'\" . (int)$product_image[\'sort_order\'] . \"\'\");]]></search>\r\n            <add position=\"replace\">\r\n                <![CDATA[\r\n                    /* Product Rotator */\r\n                    $this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_image SET product_id = \'\" . (int)$product_id . \"\', image = \'\" . $this->db->escape($product_image[\'image\']) . \"\', sort_order = \'\" . (int)$product_image[\'sort_order\'] . \"\', is_rotator = \'\" . (int)$product_image[\'is_rotator\'] . \"\'\");\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"admin/view/template/catalog/product_form.twig\">\r\n        <operation>\r\n            <search><![CDATA[<td class=\"text-right\">{{ entry_sort_order }}</td>]]></search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n                    <!-- Product Rotator -->\r\n                    <td class=\"text-center\">{{ entry_is_rotator }}</td>\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[<td class=\"text-left\"><button type=\"button\" onclick=\"$(\'#image-row{{ image_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n                    <!-- Product Rotator -->\r\n                    <td class=\"text-center\">\r\n                      <select name=\"product_image[{{ image_row }}][is_rotator]\" class=\"form-control rotator-select\">\r\n                        {% if product_image.is_rotator and (product_image.is_rotator == 1) %}\r\n                        <option value=\"1\" selected=\"selected\">Yes</option>\r\n                        <option value=\"0\">No</option>\r\n                        {% else %}\r\n                        <option value=\"1\">Yes</option>\r\n                        <option value=\"0\" selected=\"selected\">No</option>\r\n                        {% endif %}\r\n                      </select>\r\n                    </td>\r\n                    <!-- End -->\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[function addImage() {]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n                    //Product Rotator\r\n                    $(\'#tab-image tfoot td:first\').attr(\'colspan\', 3);\r\n                    $(\'.rotator-select\').change(function() {\r\n                      var value = $(this).val();\r\n                      if(value == 1) {\r\n                        $(\'.rotator-select\').val(0);\r\n                        $(this).val(1);\r\n                      }\r\n                    });\r\n                    //End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$(\'#images tbody\').append(html);]]></search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n                    //Product Rotator\r\n                    $(\'.rotator-select\').change(function() {\r\n                      var value = $(this).val();\r\n                      if(value == 1) {\r\n                        $(\'.rotator-select\').val(0);\r\n                        $(this).val(1);\r\n                      }\r\n                    });\r\n                    //End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[html += \'  <td class=\"text-left\"><button type=\"button\" onclick=\"$(\\\'#image-row\' + image_row  + \'\\\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\';]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n                    //Product Rotator\r\n                    html += \' <td class=\"text-center\">\';\r\n                    html += \'   <select name=\"product_image[\' + image_row + \'][is_rotator]\" class=\"form-control rotator-select\">\';\r\n                    html += \'     <option value=\"1\">{{ text_yes }}</option>\';\r\n                    html += \'     <option value=\"0\" selected=\"selected\">{{ text_no }}</option>\';\r\n                    html += \'   </select>\';\r\n                    html += \' </td>\';\r\n                    //End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n    \r\n    <!-- THEME OPTION -->\r\n    <file path=\"catalog/controller/common/header.php\">\r\n        <operation>\r\n            <search><![CDATA[return $this->load->view(\'common/header\', $data);]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n        $data[\'store_id\'] = $this->config->get(\'config_store_id\');\r\n        $data[\'theme_option_status\'] = $this->config->get(\'module_octhemeoption_status\');\r\n        $data[\'a_tag\'] = $this->config->get(\'module_octhemeoption_a_tag\');\r\n        $data[\'header_tag\'] = $this->config->get(\'module_octhemeoption_header_tag\');\r\n        $data[\'body_css\'] = $this->config->get(\'module_octhemeoption_body\');\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- Layouts Position -->\r\n    <file path=\"admin/controller/design/layout.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->response->setOutput($this->load->view(\'design/layout_form\', $data));]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                $this->response->setOutput($this->load->view(\'design/layout_plaza_form\', $data));\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n</modification>\r\n',1,'2017-08-09 09:37:22'),(36,36,'OC Customize Template','oc_customize_template','Plaza Theme','3.x','http://www.plazathemes.com/','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>OC Customize Template</name>\r\n	<version>3.x</version>\r\n	<link>http://www.plazathemes.com/</link>\r\n	<author>Plaza Theme</author>\r\n	<code>oc_customize_template</code>\r\n	\r\n	<file path=\"admin/model/localisation/language.php\">\r\n		<operation>\r\n			<search><![CDATA[return $language_id;]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"cmsblock_description WHERE language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n				foreach ($query->rows as $cmsblock_description) {\r\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"cmsblock_description SET cmsblock_des_id = \'\" . (int)$cmsblock_description[\'cmsblock_des_id\'] . \"\', language_id = \'\" . (int)$language_id . \"\', cmsblock_id = \'\" . (int)$cmsblock_description[\'cmsblock_id\'] . \"\', title = \'\" . $this->db->escape($cmsblock_description[\'title\']) . \"\', description = \'\" . $this->db->escape($cmsblock_description[\'description\']) . \"\'\");\r\n				}\r\n				$this->cache->delete(\'cmsblock_description\');\r\n\r\n				$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"article_description WHERE language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n				foreach ($query->rows as $article_description) {\r\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"article_description SET article_id = \'\" . (int)$article_description[\'article_id\'] . \"\', language_id = \'\" . (int)$language_id . \"\', name = \'\" . $this->db->escape($article_description[\'name\']) . \"\', description = \'\" . $this->db->escape($article_description[\'description\']) . \"\', intro_text = \'\" . $this->db->escape($article_description[\'intro_text\']) . \"\', meta_title = \'\" . $this->db->escape($article_description[\'meta_title\']) . \"\', meta_description = \'\" . $this->db->escape($article_description[\'meta_description\']) . \"\', meta_keyword = \'\" . $this->db->escape($article_description[\'meta_keyword\']) . \"\'\");\r\n				}\r\n				$this->cache->delete(\'article_description\');\r\n				\r\n				$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"ocslideshow_image_description WHERE language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n				foreach ($query->rows as $ocslideshow_image_description) {\r\n					$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"ocslideshow_image_description SET ocslideshow_image_id = \'\" . (int)$ocslideshow_image_description[\'ocslideshow_image_id\'] . \"\', language_id = \'\" . (int)$language_id . \"\', ocslideshow_id = \'\" . (int)$ocslideshow_image_description[\'ocslideshow_id\'] . \"\', description = \'\" . $this->db->escape($ocslideshow_image_description[\'description\']) . \"\', title = \'\" . $this->db->escape($ocslideshow_image_description[\'title\']) . \"\', sub_title = \'\" . $this->db->escape($ocslideshow_image_description[\'sub_title\']) . \"\'\");\r\n				}\r\n				$this->cache->delete(\'ocslideshow_image_description\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/account/{account,address,affiliate,download,edit,forgotten,login,logout,newsletter,order,password,recurring,register,reset,return,reward,success,tracking,transaction,voucher,wishlist}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/affiliate/{login,register,success,}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/checkout/{cart,checkout,failure,success}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/{compare,manufacturer,search,special}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/{common,error}/{maintenance,not_found}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/information/{sitemap,contact}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/extension/{credit_card,payment}/{sagepay_direct,sagepay_server,squareup,amazon_login_pay,klarna_checkout,wechat_pay}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/common/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'text_items\'] = sprintf($this->language->get(\'text_items\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total, $this->session->data[\'currency\']));]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				$data[\'text_items\'] = sprintf($this->language->get(\'text_items\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), null);\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$c_words = 30;\r\n				$product[\'name\'] = strlen($product[\'name\']) > $c_words ? substr($product[\'name\'],0,$c_words).\"...\" : $product[\'name\'];\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[return $this->load->view(\'common/header\', $data);]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$data[\'block1\'] = $this->load->controller(\'common/block1\');\r\n				\r\n				if($this->config->get(\'module_ocajaxlogin_status\')){\r\n					$data[\'use_ajax_login\'] = true;\r\n				}else{\r\n					$data[\'use_ajax_login\'] = false;\r\n				}\r\n				\r\n				// For page specific css\r\n				if (isset($this->request->get[\'route\'])) {\r\n					if (isset($this->request->get[\'product_id\'])) {\r\n						$class = \'-\' . $this->request->get[\'product_id\'];\r\n					} elseif (isset($this->request->get[\'path\'])) {\r\n						$class = \'-\' . $this->request->get[\'path\'];\r\n					} elseif (isset($this->request->get[\'manufacturer_id\'])) {\r\n						$class = \'-\' . $this->request->get[\'manufacturer_id\'];\r\n					} elseif (isset($this->request->get[\'information_id\'])) {\r\n						$class = \'-\' . $this->request->get[\'information_id\'];\r\n					} else {\r\n						$class = \'\';\r\n					}\r\n\r\n					$data[\'class\'] = str_replace(\'/\', \'-\', $this->request->get[\'route\']) . $class;\r\n				} else {\r\n					$data[\'class\'] = \'common-home\';\r\n				}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', true);]]></search>\r\n			<add position=\"after\"><![CDATA[						\r\n				$data[\'block2\'] = $this->load->controller(\'common/block2\');			\r\n				$data[\'block3\'] = $this->load->controller(\'common/block3\');				\r\n				$data[\'block4\'] = $this->load->controller(\'common/block4\');								\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/category.php\">\r\n		<operation>\r\n			<search><![CDATA[foreach ($results as $result) {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				/* Get new product */\r\n				$this->load->model(\'catalog/product\');\r\n		\r\n				$data[\'new_products\'] = array();\r\n		\r\n				$filter_data = array(\r\n					\'sort\'  => \'p.date_added\',\r\n					\'order\' => \'DESC\',\r\n					\'start\' => 0,\r\n					\'limit\' => 10\r\n				);\r\n		\r\n				$new_results = $this->model_catalog_product->getProducts($filter_data);\r\n				/* End */\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$is_new = false;\r\n				if ($new_results) { \r\n					foreach($new_results as $new_r) {\r\n						if($result[\'product_id\'] == $new_r[\'product_id\']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n				if (($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) {\r\n					$price_num = $this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\'));\r\n				} else {\r\n					$price_num = false;\r\n				}\r\n\r\n				if ((float)$result[\'special\']) {\r\n					$special_num = $this->tax->calculate($result[\'special\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\'));\r\n				} else {\r\n					$special_num = false;\r\n				}\r\n				/// Product Rotator /\r\n				$store_id = $this->config->get(\'config_store_id\');\r\n\r\n				$product_rotator_status = (int) $this->config->get(\'module_octhemeoption_rotator\')[$store_id];\r\n				if($product_rotator_status == 1) {\r\n				 $this->load->model(\'catalog/ocproductrotator\');\r\n				 $this->load->model(\'tool/image\');\r\n			 \r\n				 $product_id = $result[\'product_id\'];\r\n				 $product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);\r\n			 \r\n				 if($product_rotator_image) {\r\n				  $rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\')); \r\n				 } else {\r\n				  $rotator_image = false;\r\n				 } \r\n				} else {\r\n				 $rotator_image = false;    \r\n				}\r\n				/// End Product Rotator /\r\n								\r\n				$c_words = 50;\r\n				$result[\'name\'] = strlen($result[\'name\']) > $c_words ? substr($result[\'name\'],0,$c_words).\"...\" : $result[\'name\'];\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\'product_id\'  => $result[\'product_id\'],]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				\'is_new\'      => $is_new,\r\n				\'rotator_image\' => $rotator_image,\r\n				\'price_num\'       => $price_num,\r\n				\'special_num\'     => $special_num,\r\n				\'manufacturer\' => $result[\'manufacturer\'],\r\n				\'manufacturers\' => $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/product.php\">\r\n		<operation>\r\n			<search><![CDATA[$results = $this->model_catalog_product->getProductRelated($this->request->get[\'product_id\']);]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				/* Get new product */\r\n				$this->load->model(\'catalog/product\');\r\n		\r\n				$data[\'new_products\'] = array();\r\n		\r\n				$filter_data = array(\r\n					\'sort\'  => \'p.date_added\',\r\n					\'order\' => \'DESC\',\r\n					\'start\' => 0,\r\n					\'limit\' => 10\r\n				);\r\n		\r\n				$new_results = $this->model_catalog_product->getProducts($filter_data);\r\n				/* End */\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$is_new = false;\r\n				if ($new_results) { \r\n					foreach($new_results as $new_r) {\r\n						if($result[\'product_id\'] == $new_r[\'product_id\']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n				if (($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) {\r\n					$price_num = $this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\'));\r\n				} else {\r\n					$price_num = false;\r\n				}\r\n\r\n				if ((float)$result[\'special\']) {\r\n					$special_num = $this->tax->calculate($result[\'special\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\'));\r\n				} else {\r\n					$special_num = false;\r\n				}\r\n				/// Product Rotator /\r\n				$store_id = $this->config->get(\'config_store_id\');\r\n\r\n				$product_rotator_status = (int) $this->config->get(\'module_octhemeoption_rotator\')[$store_id];\r\n				if($product_rotator_status == 1) {\r\n				 $this->load->model(\'catalog/ocproductrotator\');\r\n				 $this->load->model(\'tool/image\');\r\n			 \r\n				 $product_id = $result[\'product_id\'];\r\n				 $product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);\r\n			 \r\n				 if($product_rotator_image) {\r\n				  $rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\')); \r\n				 } else {\r\n				  $rotator_image = false;\r\n				 }\r\n				} else {\r\n				 $rotator_image = false;    \r\n				}\r\n				/// End Product Rotator /	\r\n				\r\n				$data[\'use_quickview\'] = (int) $this->config->get(\'module_octhemeoption_quickview\')[$store_id];\r\n				\r\n				$c_words = 50;\r\n				$result[\'name\'] = strlen($result[\'name\']) > $c_words ? substr($result[\'name\'],0,$c_words).\"...\" : $result[\'name\'];\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\'rating\'      => $rating,]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				\'is_new\'      => $is_new,\r\n				\'rotator_image\' => $rotator_image,\r\n				\'price_num\'       => $price_num,\r\n				\'special_num\'     => $special_num,\r\n				\'manufacturer\' => $result[\'manufacturer\'],\r\n				\'manufacturers\' => $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[\'description\'] = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'short_description\'] = utf8_substr(strip_tags(html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\')), 0, $this->config->get($this->config->get(\'config_theme\') . \'_product_description_length\')) . \'..\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/special.php\">		\r\n		<operation>\r\n			<search><![CDATA[$results = $this->model_catalog_product->getProductSpecials($filter_data);]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				/* Get new product */\r\n				$this->load->model(\'catalog/product\');\r\n		\r\n				$data[\'new_products\'] = array();\r\n		\r\n				$filter_data = array(\r\n					\'sort\'  => \'p.date_added\',\r\n					\'order\' => \'DESC\',\r\n					\'start\' => 0,\r\n					\'limit\' => 10\r\n				);\r\n		\r\n				$new_results = $this->model_catalog_product->getProducts($filter_data);\r\n				/* End */\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$is_new = false;\r\n				if ($new_results) { \r\n					foreach($new_results as $new_r) {\r\n						if($result[\'product_id\'] == $new_r[\'product_id\']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n				if (($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) {\r\n					$price_num = $this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\'));\r\n				} else {\r\n					$price_num = false;\r\n				}\r\n\r\n				if ((float)$result[\'special\']) {\r\n					$special_num = $this->tax->calculate($result[\'special\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\'));\r\n				} else {\r\n					$special_num = false;\r\n				}\r\n				/// Product Rotator /\r\n				$store_id = $this->config->get(\'config_store_id\');\r\n				$product_rotator_status = (int) $this->config->get(\'module_octhemeoption_rotator\')[$store_id];\r\n				\r\n				if($product_rotator_status == 1) {\r\n				 $this->load->model(\'catalog/ocproductrotator\');\r\n				 $this->load->model(\'tool/image\');\r\n			 \r\n				 $product_id = $result[\'product_id\'];\r\n				 $product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);\r\n			 \r\n					 if($product_rotator_image) {\r\n							$rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\')); \r\n					} else {\r\n						$rotator_image = false;\r\n					}\r\n				} else {\r\n				 $rotator_image = false;    \r\n				}\r\n				/// End Product Rotator /\r\n				\r\n				$c_words = 50;\r\n				$result[\'name\'] = strlen($result[\'name\']) > $c_words ? substr($result[\'name\'],0,$c_words).\"...\" : $result[\'name\'];\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[\'rating\'      => $result[\'rating\'],]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				\'is_new\'      => $is_new,\r\n				\'rotator_image\' => $rotator_image,\r\n				\'price_num\'       => $price_num,\r\n				\'special_num\'     => $special_num,\r\n				\'manufacturer\' => $result[\'manufacturer\'],\r\n				\'manufacturers\' => $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/product/search.php\">\r\n		<operation>\r\n			<search><![CDATA[$results = $this->model_catalog_product->getProducts($filter_data);]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				/* Get new product */\r\n				$this->load->model(\'catalog/product\');\r\n		\r\n				$data[\'new_products\'] = array();\r\n		\r\n				$filter_data = array(\r\n					\'sort\'  => \'p.date_added\',\r\n					\'order\' => \'DESC\',\r\n					\'start\' => 0,\r\n					\'limit\' => 10\r\n				);\r\n		\r\n				$new_results = $this->model_catalog_product->getProducts($filter_data);\r\n				/* End */\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$is_new = false;\r\n				if ($new_results) { \r\n					foreach($new_results as $new_r) {\r\n						if($result[\'product_id\'] == $new_r[\'product_id\']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n				if (($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) {\r\n					$price_num = $this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\'));\r\n				} else {\r\n					$price_num = false;\r\n				}\r\n\r\n				if ((float)$result[\'special\']) {\r\n					$special_num = $this->tax->calculate($result[\'special\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\'));\r\n				} else {\r\n					$special_num = false;\r\n				}\r\n				/// Product Rotator /\r\n				$store_id = $this->config->get(\'config_store_id\');\r\n				$product_rotator_status = (int) $this->config->get(\'module_octhemeoption_rotator\')[$store_id];\r\n				if($product_rotator_status == 1) {\r\n				 $this->load->model(\'catalog/ocproductrotator\');\r\n				 $this->load->model(\'tool/image\');\r\n			 \r\n				 $product_id = $result[\'product_id\'];\r\n				 $product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);\r\n			 \r\n				 if($product_rotator_image) {\r\n							$rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\')); \r\n					} else {\r\n						$rotator_image = false;\r\n					} \r\n				} else {\r\n				 $rotator_image = false;    \r\n				}\r\n				/// End Product Rotator /\r\n				\r\n				$c_words = 50;\r\n				$result[\'name\'] = strlen($result[\'name\']) > $c_words ? substr($result[\'name\'],0,$c_words).\"...\" : $result[\'name\'];\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[\'rating\'      => $result[\'rating\'],]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				\'is_new\'      => $is_new,\r\n				\'rotator_image\' => $rotator_image,\r\n				\'price_num\'       => $price_num,\r\n				\'special_num\'     => $special_num,\r\n				\'manufacturer\' => $result[\'manufacturer\'],\r\n				\'manufacturers\' => $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/product/manufacturer.php\">\r\n		<operation>\r\n			<search><![CDATA[$results = $this->model_catalog_product->getProducts($filter_data);]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				/* Get new product */\r\n				$this->load->model(\'catalog/product\');\r\n		\r\n				$data[\'new_products\'] = array();\r\n		\r\n				$filter_data = array(\r\n					\'sort\'  => \'p.date_added\',\r\n					\'order\' => \'DESC\',\r\n					\'start\' => 0,\r\n					\'limit\' => 10\r\n				);\r\n		\r\n				$new_results = $this->model_catalog_product->getProducts($filter_data);\r\n				/* End */\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$is_new = false;\r\n				if ($new_results) { \r\n					foreach($new_results as $new_r) {\r\n						if($result[\'product_id\'] == $new_r[\'product_id\']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n				if (($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) {\r\n					$price_num = $this->tax->calculate($result[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\'));\r\n				} else {\r\n					$price_num = false;\r\n				}\r\n\r\n				if ((float)$result[\'special\']) {\r\n					$special_num = $this->tax->calculate($result[\'special\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\'));\r\n				} else {\r\n					$special_num = false;\r\n				}\r\n				/// Product Rotator /\r\n				$store_id = $this->config->get(\'config_store_id\');\r\n				$product_rotator_status = (int) $this->config->get(\'module_octhemeoption_rotator\')[$store_id];\r\n				if($product_rotator_status == 1) {\r\n				 $this->load->model(\'catalog/ocproductrotator\');\r\n				 $this->load->model(\'tool/image\');\r\n			 \r\n				 $product_id = $result[\'product_id\'];\r\n				 $product_rotator_image = $this->model_catalog_ocproductrotator->getProductRotatorImage($product_id);\r\n			 \r\n				 if($product_rotator_image) {\r\n							$rotator_image = $this->model_tool_image->resize($product_rotator_image, $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\')); \r\n					} else {\r\n						$rotator_image = false;\r\n					}\r\n				} else {\r\n				 $rotator_image = false;    \r\n				}\r\n				/// End Product Rotator /\r\n				\r\n				$c_words = 50;\r\n				$result[\'name\'] = strlen($result[\'name\']) > $c_words ? substr($result[\'name\'],0,$c_words).\"...\" : $result[\'name\'];\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[\'rating\'      => $result[\'rating\'],]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				\'is_new\'      => $is_new,\r\n				\'rotator_image\' => $rotator_image,\r\n				\'price_num\'       => $price_num,\r\n				\'special_num\'     => $special_num,\r\n				\'manufacturer\' => $result[\'manufacturer\'],\r\n				\'manufacturers\' => $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>',1,'2017-09-08 09:50:47'),(15,15,'OC Layered Navigation Ajax','layered_navigation','Plaza Theme','3.x','http://www.plazathemes.com/','<modification>\r\n    <name>OC Layered Navigation Ajax</name>\r\n	<version>3.x</version>\r\n	<link>http://www.plazathemes.com/</link>\r\n	<author>Plaza Theme</author>\r\n	<code>layered_navigation</code>\r\n\r\n	<file path=\"catalog/controller/product/category.php\">\r\n        <operation>\r\n            <search><![CDATA[$category_info = $this->model_catalog_category->getCategory($category_id);]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n        /* Edit for Layered Navigation */\r\n        if (!empty($_SERVER[\'HTTPS\']) && $_SERVER[\'HTTPS\'] != \'off\') {\r\n            // SSL connection\r\n            $base_url = str_replace(\'http\', \'https\', $this->config->get(\'config_url\'));\r\n        } else {\r\n            $base_url = $this->config->get(\'config_url\');\r\n        }\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[\'href\' => $this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'_\' . $result[\'category_id\'] . $url)]]></search>\r\n            <add position=\"replace\"><![CDATA[\'href\'  => $base_url . \'index.php?route=product/category&path=\' . $result[\'category_id\'] . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'&sort=p.sort_order&order=ASC\' . $url)]]></search>\r\n            <add position=\"replace\"><![CDATA[$base_url . \'index.php?route=product/category&path=\' . $category_id . \'&sort=p.sort_order&order=ASC\' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'&sort=pd.name&order=ASC\' . $url)]]></search>\r\n            <add position=\"replace\"><![CDATA[$base_url . \'index.php?route=product/category&path=\' . $category_id . \'&sort=pd.name&order=ASC\' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'&sort=pd.name&order=DESC\' . $url)]]></search>\r\n            <add position=\"replace\"><![CDATA[$base_url . \'index.php?route=product/category&path=\' . $category_id . \'&sort=pd.name&order=DESC\' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'&sort=p.price&order=ASC\' . $url)]]></search>\r\n            <add position=\"replace\"><![CDATA[$base_url . \'index.php?route=product/category&path=\' . $category_id . \'&sort=p.price&order=ASC\' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'&sort=p.price&order=DESC\' . $url)]]></search>\r\n            <add position=\"replace\"><![CDATA[$base_url . \'index.php?route=product/category&path=\' . $category_id . \'&sort=p.price&order=DESC\' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'&sort=rating&order=DESC\' . $url)]]></search>\r\n            <add position=\"replace\"><![CDATA[$base_url . \'index.php?route=product/category&path=\' . $category_id . \'&sort=rating&order=DESC\' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'&sort=rating&order=ASC\' . $url)]]></search>\r\n            <add position=\"replace\"><![CDATA[$base_url . \'index.php?route=product/category&path=\' . $category_id . \'&sort=rating&order=ASC\' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'&sort=p.model&order=ASC\' . $url)]]></search>\r\n            <add position=\"replace\"><![CDATA[$base_url . \'index.php?route=product/category&path=\' . $category_id . \'&sort=p.model&order=ASC\' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'&sort=p.model&order=DESC\' . $url)]]></search>\r\n            <add position=\"replace\"><![CDATA[$base_url . \'index.php?route=product/category&path=\' . $category_id . \'&sort=p.model&order=DESC\' . $url]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . $url . \'&limit=\' . $value)]]></search>\r\n            <add position=\"replace\"><![CDATA[$base_url . \'index.php?route=product/category&path=\' . $category_id . $url . \'&limit=\' . $value]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$pagination->url = $this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . $url . \'&page={page}\');]]></search>\r\n            <add position=\"replace\"><![CDATA[$pagination->url = $base_url . \'index.php?route=extension/module/oclayerednavigation/category&path=\' . $category_id . $url . \'&page={page}\';]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$data[\'limit\'] = $limit;]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            /* Edit for Layered Navigation Ajax Module */\r\n            $module_status = $this->config->get(\'module_oclayerednavigation_status\');\r\n            if($module_status) {\r\n                // $this->document->addScript(\'catalog/view/javascript/jquery/jquery-ui.min.js\');\r\n                $this->document->addStyle(\'catalog/view/javascript/jquery/css/jquery-ui.min.css\');\r\n \r\n                if (file_exists(DIR_TEMPLATE . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css\')) {\r\n                    $this->document->addStyle(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css\');\r\n                } else {\r\n                    $this->document->addStyle(\'catalog/view/theme/default/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css\');\r\n                }\r\n \r\n                $this->document->addScript(\'catalog/view/javascript/opentheme/oclayerednavigation/oclayerednavigation.js\');\r\n            }\r\n\r\n\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$this->response->setOutput($this->load->view(\'product/category\', $data));]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            /* Edit for Layered Navigation Ajax Module */\r\n            if($module_status) {\r\n                $data[\'module_oclayerednavigation_loader_img\'] = $base_url . \'image/\' . $this->config->get(\'module_oclayerednavigation_loader_img\');\r\n \r\n                $this->response->setOutput($this->load->view(\'extension/module/oclayerednavigation/occategory\', $data));\r\n            } else {\r\n \r\n                $this->response->setOutput($this->load->view(\'product/category\', $data));\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n	</file>\r\n\r\n    <file path=\"catalog/model/catalog/product.php\">\r\n        <operation>\r\n            <search><![CDATA[if (!empty($data[\'filter_manufacturer_id\'])) {]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n        /* Price range */\r\n        if  (!empty($data[\'filter_price\'])) {\r\n            $min_price = $data[\'filter_price\'][\'min_price\'];\r\n            $max_price = $data[\'filter_price\'][\'max_price\'];\r\n            $sql_sl_special = \"(SELECT price FROM \" . DB_PREFIX . \"product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND ((ps.date_start = \'0000-00-00\' OR ps.date_start < NOW()) AND (ps.date_end = \'0000-00-00\' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1)\";\r\n            $sql_sl_discount = \"(SELECT price FROM \" . DB_PREFIX . \"product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND pd2.quantity = \'1\' AND ((pd2.date_start = \'0000-00-00\' OR pd2.date_start < NOW()) AND (pd2.date_end = \'0000-00-00\' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1)\";\r\n            $sql .= \" AND (CASE WHEN \" . $sql_sl_special . \" IS NOT NULL THEN \" . $sql_sl_special . \" WHEN \" . $sql_sl_discount . \" IS NOT NULL THEN \". $sql_sl_discount . \" ELSE p.price END) >=\'\". $min_price .\"\'\" ;\r\n            $sql .= \" AND (CASE WHEN \" . $sql_sl_special . \" IS NOT NULL THEN \" . $sql_sl_special . \" WHEN \" . $sql_sl_discount . \" IS NOT NULL THEN \". $sql_sl_discount . \" ELSE p.price END) <=\'\". $max_price .\"\'\";\r\n        }\r\n        /* End */\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n</modification>',1,'2017-08-15 14:53:18'),(41,41,'SEO for default URLs - manual database entry','QWSEOURL','Quality Works','1.1.0','https://www.qualityworks.eu','﻿<modification>\r\n	<name>SEO for default URLs - manual database entry</name>\r\n    <code>QWSEOURL</code>\r\n    <version>1.1.0</version>\r\n    <author>Quality Works</author>\r\n    <link>https://www.qualityworks.eu</link>\r\n	<file path=\"catalog/controller/startup/seo_url.php\">\r\n		<operation>\r\n			<search index=\"1\"><![CDATA[unset($data[$key]);]]></search>\r\n			<add position=\"replace\"><![CDATA[	unset($data[$key]);\r\n				} elseif ($data[\'route\'] != \'information/information/agree\' && $data[\'route\'] != \'common/home\') { // new code start\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE (`query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\' OR `query` = \'\" . filter_var($value, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) . \"\') AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n				\r\n					if ($query->num_rows) {\r\n						$url .= \'/\' . $query->row[\'keyword\'];\r\n						\r\n						unset($data[$key]);\r\n					} \r\n				} elseif ($data[\'route\'] == \'common/home\') {\r\n					$url = \'/\';\r\n					\r\n					unset($data[$key]);]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2018-05-20 10:19:03');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (47,'Tabs Categories 2','octabproducts','{\"name\":\"Tabs Categories 2\",\"status\":\"1\",\"title_lang\":{\"en-gb\":{\"title\":\"Most viewed products\"}},\"module_description\":{\"1\":{\"description\":\"&lt;!--[if gte mso 9]&gt;&lt;xml&gt;\\r\\n &lt;o:OfficeDocumentSettings&gt;\\r\\n  &lt;o:AllowPNG\\/&gt;\\r\\n &lt;\\/o:OfficeDocumentSettings&gt;\\r\\n&lt;\\/xml&gt;&lt;![endif]--&gt;\\r\\n\\r\\n&lt;!--[if gte mso 9]&gt;&lt;xml&gt;\\r\\n &lt;w:WordDocument&gt;\\r\\n  &lt;w:View&gt;Normal&lt;\\/w:View&gt;\\r\\n  &lt;w:Zoom&gt;0&lt;\\/w:Zoom&gt;\\r\\n  &lt;w:TrackMoves\\/&gt;\\r\\n  &lt;w:TrackFormatting\\/&gt;\\r\\n  &lt;w:PunctuationKerning\\/&gt;\\r\\n  &lt;w:ValidateAgainstSchemas\\/&gt;\\r\\n  &lt;w:SaveIfXMLInvalid&gt;false&lt;\\/w:SaveIfXMLInvalid&gt;\\r\\n  &lt;w:IgnoreMixedContent&gt;false&lt;\\/w:IgnoreMixedContent&gt;\\r\\n  &lt;w:AlwaysShowPlaceholderText&gt;false&lt;\\/w:AlwaysShowPlaceholderText&gt;\\r\\n  &lt;w:DoNotPromoteQF\\/&gt;\\r\\n  &lt;w:LidThemeOther&gt;EN-US&lt;\\/w:LidThemeOther&gt;\\r\\n  &lt;w:LidThemeAsian&gt;X-NONE&lt;\\/w:LidThemeAsian&gt;\\r\\n  &lt;w:LidThemeComplexScript&gt;X-NONE&lt;\\/w:LidThemeComplexScript&gt;\\r\\n  &lt;w:Compatibility&gt;\\r\\n   &lt;w:BreakWrappedTables\\/&gt;\\r\\n   &lt;w:SnapToGridInCell\\/&gt;\\r\\n   &lt;w:WrapTextWithPunct\\/&gt;\\r\\n   &lt;w:UseAsianBreakRules\\/&gt;\\r\\n   &lt;w:DontGrowAutofit\\/&gt;\\r\\n   &lt;w:SplitPgBreakAndParaMark\\/&gt;\\r\\n   &lt;w:EnableOpenTypeKerning\\/&gt;\\r\\n   &lt;w:DontFlipMirrorIndents\\/&gt;\\r\\n   &lt;w:OverrideTableStyleHps\\/&gt;\\r\\n  &lt;\\/w:Compatibility&gt;\\r\\n  &lt;m:mathPr&gt;\\r\\n   &lt;m:mathFont m:val=&quot;Cambria Math&quot;\\/&gt;\\r\\n   &lt;m:brkBin m:val=&quot;before&quot;\\/&gt;\\r\\n   &lt;m:brkBinSub m:val=&quot;&amp;#45;-&quot;\\/&gt;\\r\\n   &lt;m:smallFrac m:val=&quot;off&quot;\\/&gt;\\r\\n   &lt;m:dispDef\\/&gt;\\r\\n   &lt;m:lMargin m:val=&quot;0&quot;\\/&gt;\\r\\n   &lt;m:rMargin m:val=&quot;0&quot;\\/&gt;\\r\\n   &lt;m:defJc m:val=&quot;centerGroup&quot;\\/&gt;\\r\\n   &lt;m:wrapIndent m:val=&quot;1440&quot;\\/&gt;\\r\\n   &lt;m:intLim m:val=&quot;subSup&quot;\\/&gt;\\r\\n   &lt;m:naryLim m:val=&quot;undOvr&quot;\\/&gt;\\r\\n  &lt;\\/m:mathPr&gt;&lt;\\/w:WordDocument&gt;\\r\\n&lt;\\/xml&gt;&lt;![endif]--&gt;&lt;!--[if gte mso 9]&gt;&lt;xml&gt;\\r\\n &lt;w:LatentStyles DefLockedState=&quot;false&quot; DefUnhideWhenUsed=&quot;false&quot;\\r\\n  DefSemiHidden=&quot;false&quot; DefQFormat=&quot;false&quot; DefPriority=&quot;99&quot;\\r\\n  LatentStyleCount=&quot;382&quot;&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;0&quot; QFormat=&quot;true&quot; Name=&quot;Normal&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; QFormat=&quot;true&quot; Name=&quot;heading 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 7&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 8&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;9&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;heading 9&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;index 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;index 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;index 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;index 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;index 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;index 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;index 7&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;index 8&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;index 9&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 7&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 8&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;toc 9&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Normal Indent&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;footnote text&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;annotation text&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;header&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;footer&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;index heading&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;35&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;caption&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;table of figures&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;envelope address&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;envelope return&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;footnote reference&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;annotation reference&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;line number&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;page number&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;endnote reference&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;endnote text&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;table of authorities&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;macro&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;toa heading&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Bullet&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Number&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Bullet 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Bullet 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Bullet 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Bullet 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Number 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Number 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Number 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Number 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;10&quot; QFormat=&quot;true&quot; Name=&quot;Title&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Closing&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Signature&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;1&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;Default Paragraph Font&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Body Text&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Body Text Indent&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Continue&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Continue 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Continue 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Continue 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;List Continue 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Message Header&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;11&quot; QFormat=&quot;true&quot; Name=&quot;Subtitle&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Salutation&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Date&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Body Text First Indent&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Body Text First Indent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Note Heading&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Body Text 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Body Text 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Body Text Indent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Body Text Indent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Block Text&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Hyperlink&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;FollowedHyperlink&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;22&quot; QFormat=&quot;true&quot; Name=&quot;Strong&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;20&quot; QFormat=&quot;true&quot; Name=&quot;Emphasis&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Document Map&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Plain Text&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;E-mail Signature&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;HTML Top of Form&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;HTML Bottom of Form&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Normal (Web)&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;HTML Acronym&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;HTML Address&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;HTML Cite&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;HTML Code&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;HTML Definition&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;HTML Keyboard&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;HTML Preformatted&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;HTML Sample&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;HTML Typewriter&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;HTML Variable&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Normal Table&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;annotation subject&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;No List&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Outline List 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Outline List 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Outline List 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Simple 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Simple 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Simple 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Classic 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Classic 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Classic 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Classic 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Colorful 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Colorful 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Colorful 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Columns 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Columns 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Columns 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Columns 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Columns 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Grid 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Grid 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Grid 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Grid 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Grid 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Grid 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Grid 7&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Grid 8&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table List 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table List 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table List 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table List 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table List 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table List 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table List 7&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table List 8&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table 3D effects 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table 3D effects 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table 3D effects 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Contemporary&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Elegant&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Professional&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Subtle 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Subtle 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Web 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Web 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Web 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Balloon Text&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; Name=&quot;Table Grid&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Table Theme&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Note Level 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Note Level 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Note Level 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Note Level 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Note Level 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Note Level 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Note Level 7&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Note Level 8&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Note Level 9&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; Name=&quot;Placeholder Text&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;1&quot; QFormat=&quot;true&quot; Name=&quot;No Spacing&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; Name=&quot;Revision&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;34&quot; QFormat=&quot;true&quot;\\r\\n   Name=&quot;List Paragraph&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;29&quot; QFormat=&quot;true&quot; Name=&quot;Quote&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;30&quot; QFormat=&quot;true&quot;\\r\\n   Name=&quot;Intense Quote&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;60&quot; Name=&quot;Light Shading Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;61&quot; Name=&quot;Light List Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;62&quot; Name=&quot;Light Grid Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;63&quot; Name=&quot;Medium Shading 1 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;64&quot; Name=&quot;Medium Shading 2 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;65&quot; Name=&quot;Medium List 1 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;66&quot; Name=&quot;Medium List 2 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;67&quot; Name=&quot;Medium Grid 1 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;68&quot; Name=&quot;Medium Grid 2 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;69&quot; Name=&quot;Medium Grid 3 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;70&quot; Name=&quot;Dark List Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;71&quot; Name=&quot;Colorful Shading Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;72&quot; Name=&quot;Colorful List Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;73&quot; Name=&quot;Colorful Grid Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;19&quot; QFormat=&quot;true&quot;\\r\\n   Name=&quot;Subtle Emphasis&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;21&quot; QFormat=&quot;true&quot;\\r\\n   Name=&quot;Intense Emphasis&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;31&quot; QFormat=&quot;true&quot;\\r\\n   Name=&quot;Subtle Reference&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;32&quot; QFormat=&quot;true&quot;\\r\\n   Name=&quot;Intense Reference&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;33&quot; QFormat=&quot;true&quot; Name=&quot;Book Title&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;37&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; Name=&quot;Bibliography&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;39&quot; SemiHidden=&quot;true&quot;\\r\\n   UnhideWhenUsed=&quot;true&quot; QFormat=&quot;true&quot; Name=&quot;TOC Heading&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;41&quot; Name=&quot;Plain Table 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;42&quot; Name=&quot;Plain Table 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;43&quot; Name=&quot;Plain Table 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;44&quot; Name=&quot;Plain Table 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;45&quot; Name=&quot;Plain Table 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;40&quot; Name=&quot;Grid Table Light&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot; Name=&quot;Grid Table 1 Light&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot; Name=&quot;Grid Table 6 Colorful&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot; Name=&quot;Grid Table 7 Colorful&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\\r\\n   Name=&quot;Grid Table 1 Light Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\\r\\n   Name=&quot;Grid Table 6 Colorful Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\\r\\n   Name=&quot;Grid Table 7 Colorful Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\\r\\n   Name=&quot;Grid Table 1 Light Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\\r\\n   Name=&quot;Grid Table 6 Colorful Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\\r\\n   Name=&quot;Grid Table 7 Colorful Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\\r\\n   Name=&quot;Grid Table 1 Light Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\\r\\n   Name=&quot;Grid Table 6 Colorful Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\\r\\n   Name=&quot;Grid Table 7 Colorful Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\\r\\n   Name=&quot;Grid Table 1 Light Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\\r\\n   Name=&quot;Grid Table 6 Colorful Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\\r\\n   Name=&quot;Grid Table 7 Colorful Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\\r\\n   Name=&quot;Grid Table 1 Light Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\\r\\n   Name=&quot;Grid Table 6 Colorful Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\\r\\n   Name=&quot;Grid Table 7 Colorful Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\\r\\n   Name=&quot;Grid Table 1 Light Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;Grid Table 2 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;Grid Table 3 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;Grid Table 4 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;Grid Table 5 Dark Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\\r\\n   Name=&quot;Grid Table 6 Colorful Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\\r\\n   Name=&quot;Grid Table 7 Colorful Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot; Name=&quot;List Table 1 Light&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot; Name=&quot;List Table 6 Colorful&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot; Name=&quot;List Table 7 Colorful&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\\r\\n   Name=&quot;List Table 1 Light Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4 Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\\r\\n   Name=&quot;List Table 6 Colorful Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\\r\\n   Name=&quot;List Table 7 Colorful Accent 1&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\\r\\n   Name=&quot;List Table 1 Light Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4 Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\\r\\n   Name=&quot;List Table 6 Colorful Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\\r\\n   Name=&quot;List Table 7 Colorful Accent 2&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\\r\\n   Name=&quot;List Table 1 Light Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4 Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\\r\\n   Name=&quot;List Table 6 Colorful Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\\r\\n   Name=&quot;List Table 7 Colorful Accent 3&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\\r\\n   Name=&quot;List Table 1 Light Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4 Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\\r\\n   Name=&quot;List Table 6 Colorful Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\\r\\n   Name=&quot;List Table 7 Colorful Accent 4&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\\r\\n   Name=&quot;List Table 1 Light Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4 Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\\r\\n   Name=&quot;List Table 6 Colorful Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\\r\\n   Name=&quot;List Table 7 Colorful Accent 5&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;46&quot;\\r\\n   Name=&quot;List Table 1 Light Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;47&quot; Name=&quot;List Table 2 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;48&quot; Name=&quot;List Table 3 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;49&quot; Name=&quot;List Table 4 Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;50&quot; Name=&quot;List Table 5 Dark Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;51&quot;\\r\\n   Name=&quot;List Table 6 Colorful Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; Priority=&quot;52&quot;\\r\\n   Name=&quot;List Table 7 Colorful Accent 6&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Mention&quot;\\/&gt;\\r\\n  &lt;w:LsdException Locked=&quot;false&quot; SemiHidden=&quot;true&quot; UnhideWhenUsed=&quot;true&quot;\\r\\n   Name=&quot;Smart Hyperlink&quot;\\/&gt;\\r\\n &lt;\\/w:LatentStyles&gt;\\r\\n&lt;\\/xml&gt;&lt;![endif]--&gt;\\r\\n&lt;style&gt;\\r\\n&lt;!--\\r\\n \\/* Font Definitions *\\/\\r\\n@font-face\\r\\n\\t{font-family:&quot;Cambria Math&quot;;\\r\\n\\tpanose-1:2 4 5 3 5 4 6 3 2 4;\\r\\n\\tmso-font-charset:0;\\r\\n\\tmso-generic-font-family:roman;\\r\\n\\tmso-font-pitch:variable;\\r\\n\\tmso-font-signature:-536870145 1107305727 0 0 415 0;}\\r\\n@font-face\\r\\n\\t{font-family:Calibri;\\r\\n\\tpanose-1:2 15 5 2 2 2 4 3 2 4;\\r\\n\\tmso-font-charset:0;\\r\\n\\tmso-generic-font-family:swiss;\\r\\n\\tmso-font-pitch:variable;\\r\\n\\tmso-font-signature:-536870145 1073786111 1 0 415 0;}\\r\\n \\/* Style Definitions *\\/\\r\\np.MsoNormal, li.MsoNormal, div.MsoNormal\\r\\n\\t{mso-style-unhide:no;\\r\\n\\tmso-style-qformat:yes;\\r\\n\\tmso-style-parent:&quot;&quot;;\\r\\n\\tmargin:0cm;\\r\\n\\tmargin-bottom:.0001pt;\\r\\n\\tmso-pagination:widow-orphan;\\r\\n\\tfont-size:12.0pt;\\r\\n\\tfont-family:&quot;Calibri&quot;,sans-serif;\\r\\n\\tmso-ascii-font-family:Calibri;\\r\\n\\tmso-ascii-theme-font:minor-latin;\\r\\n\\tmso-fareast-font-family:Calibri;\\r\\n\\tmso-fareast-theme-font:minor-latin;\\r\\n\\tmso-hansi-font-family:Calibri;\\r\\n\\tmso-hansi-theme-font:minor-latin;\\r\\n\\tmso-bidi-font-family:&quot;Times New Roman&quot;;\\r\\n\\tmso-bidi-theme-font:minor-bidi;\\r\\n\\tmso-ansi-language:EN-US;\\r\\n\\tmso-fareast-language:EN-US;}\\r\\n.MsoChpDefault\\r\\n\\t{mso-style-type:export-only;\\r\\n\\tmso-default-props:yes;\\r\\n\\tfont-family:&quot;Calibri&quot;,sans-serif;\\r\\n\\tmso-ascii-font-family:Calibri;\\r\\n\\tmso-ascii-theme-font:minor-latin;\\r\\n\\tmso-fareast-font-family:Calibri;\\r\\n\\tmso-fareast-theme-font:minor-latin;\\r\\n\\tmso-hansi-font-family:Calibri;\\r\\n\\tmso-hansi-theme-font:minor-latin;\\r\\n\\tmso-bidi-font-family:&quot;Times New Roman&quot;;\\r\\n\\tmso-bidi-theme-font:minor-bidi;\\r\\n\\tmso-ansi-language:EN-US;\\r\\n\\tmso-fareast-language:EN-US;}\\r\\n@page WordSection1\\r\\n\\t{size:612.0pt 792.0pt;\\r\\n\\tmargin:72.0pt 72.0pt 72.0pt 72.0pt;\\r\\n\\tmso-header-margin:36.0pt;\\r\\n\\tmso-footer-margin:36.0pt;\\r\\n\\tmso-paper-source:0;}\\r\\ndiv.WordSection1\\r\\n\\t{page:WordSection1;}\\r\\n--&gt;\\r\\n&lt;\\/style&gt;\\r\\n&lt;!--[if gte mso 10]&gt;\\r\\n&lt;style&gt;\\r\\n \\/* Style Definitions *\\/\\r\\ntable.MsoNormalTable\\r\\n\\t{mso-style-name:&quot;Table Normal&quot;;\\r\\n\\tmso-tstyle-rowband-size:0;\\r\\n\\tmso-tstyle-colband-size:0;\\r\\n\\tmso-style-noshow:yes;\\r\\n\\tmso-style-priority:99;\\r\\n\\tmso-style-parent:&quot;&quot;;\\r\\n\\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\\r\\n\\tmso-para-margin:0cm;\\r\\n\\tmso-para-margin-bottom:.0001pt;\\r\\n\\tmso-pagination:widow-orphan;\\r\\n\\tfont-size:12.0pt;\\r\\n\\tfont-family:&quot;Calibri&quot;,sans-serif;\\r\\n\\tmso-ascii-font-family:Calibri;\\r\\n\\tmso-ascii-theme-font:minor-latin;\\r\\n\\tmso-hansi-font-family:Calibri;\\r\\n\\tmso-hansi-theme-font:minor-latin;\\r\\n\\tmso-ansi-language:EN-US;\\r\\n\\tmso-fareast-language:EN-US;}\\r\\n&lt;\\/style&gt;\\r\\n&lt;![endif]--&gt;\\r\\n\\r\\n\\r\\n\\r\\n&lt;!--StartFragment--&gt;\\r\\n\\r\\n&lt;p class=&quot;MsoNormal&quot; style=&quot;line-height:200%&quot;&gt;&lt;span lang=&quot;EN-US&quot;&gt;Check out our\\r\\nlatest products, make a choice and get started.&lt;\\/span&gt;&lt;o:p&gt;&lt;\\/o:p&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;!--EndFragment--&gt;\"}},\"type\":\"0\",\"slider\":\"1\",\"items\":\"4\",\"row\":\"1\",\"loop\":\"0\",\"margin\":\"30\",\"auto\":\"0\",\"time\":\"3000\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"desktop\":\"3\",\"tablet\":\"2\",\"mobile\":\"2\",\"smobile\":\"1\",\"nrow\":\"1\",\"description\":\"1\",\"countdown\":\"0\",\"rotator\":\"1\",\"newlabel\":\"1\",\"salelabel\":\"1\",\"limit\":\"10\",\"width\":\"500\",\"height\":\"666\",\"octab\":[{\"tab_name\":{\"en-gb\":{\"title\":\"Plain T-shirts\"}},\"option\":\"1\",\"productall\":\"\",\"cate_name\":\"T-shirts\",\"cate_id\":\"59\",\"productfrom\":\"2\",\"productcate\":\"\",\"input_specific_product\":\"3\",\"autoproduct\":\"3\"},{\"tab_name\":{\"en-gb\":{\"title\":\"Customized T-Shirt\"}},\"option\":\"1\",\"productall\":\"\",\"cate_name\":\"Designed T-Shirt\",\"cate_id\":\"69\",\"productfrom\":\"2\",\"productcate\":\"\",\"input_specific_product\":\"3\",\"autoproduct\":\"0\"},{\"tab_name\":{\"en-gb\":{\"title\":\"Mugs\"}},\"option\":\"1\",\"productall\":\"\",\"cate_name\":\"Mugs &amp; Jugs\",\"cate_id\":\"33\",\"productfrom\":\"2\",\"productcate\":\"\",\"input_specific_product\":\"3\",\"autoproduct\":\"0\"},{\"tab_name\":{\"en-gb\":{\"title\":\"Caps\"}},\"option\":\"1\",\"productall\":\"\",\"cate_name\":\"Caps\",\"cate_id\":\"66\",\"productfrom\":\"2\",\"productcate\":\"\",\"input_specific_product\":\"3\",\"autoproduct\":\"0\"}]}'),(32,'Layout Homepage 01','oc_page_builder','{\"name\":\"Layout Homepage 01\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ocajaxlogin\",\"name\":\"OC Ajax Login\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocajaxlogin&amp;user_token=pV5WsoAx9b4nS2pf5IH5tYgum8ZxSYyM\"},{\"code\":\"ocslideshow.41\",\"name\":\"OC Slide show &gt; Home slideshow 1\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=3zo8fANjFYiAxVLlJLqU26BvYVk95hvc&amp;module_id=41\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"occmsblock.37\",\"name\":\"OC CMS Block &gt; Static About\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=pV5WsoAx9b4nS2pf5IH5tYgum8ZxSYyM&amp;module_id=37\"},{\"code\":\"occmsblock.33\",\"name\":\"OC CMS Block &gt; Banner 1\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=pV5WsoAx9b4nS2pf5IH5tYgum8ZxSYyM&amp;module_id=33\"},{\"code\":\"octabproducts.45\",\"name\":\"OC Tab Products &gt; Tabs Categories\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=pV5WsoAx9b4nS2pf5IH5tYgum8ZxSYyM&amp;module_id=45\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"octestimonial.46\",\"name\":\"OC Testimonials &gt; Testimonials\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/octestimonial&amp;user_token=pV5WsoAx9b4nS2pf5IH5tYgum8ZxSYyM&amp;module_id=46\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ocproduct.44\",\"name\":\"OC Products &gt; New product\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=pV5WsoAx9b4nS2pf5IH5tYgum8ZxSYyM&amp;module_id=44\"},{\"code\":\"occmsblock.34\",\"name\":\"OC CMS Block &gt; Banner 2\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=pV5WsoAx9b4nS2pf5IH5tYgum8ZxSYyM&amp;module_id=34\"},{\"code\":\"occmsblock.38\",\"name\":\"OC CMS Block &gt; Static Policy\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=pV5WsoAx9b4nS2pf5IH5tYgum8ZxSYyM&amp;module_id=38\"},{\"code\":\"ocblog.42\",\"name\":\"OC Blog &gt; Blog\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocblog&amp;user_token=pV5WsoAx9b4nS2pf5IH5tYgum8ZxSYyM&amp;module_id=42\"}]},\"format\":\"12\"}]}]}]}]}'),(33,'Banner 1','occmsblock','{\"name\":\"Banner 1\",\"cmsblock_id\":\"20\",\"status\":\"1\"}'),(34,'Banner 2','occmsblock','{\"name\":\"Banner 2\",\"cmsblock_id\":\"21\",\"status\":\"1\"}'),(35,'Logo Footer','occmsblock','{\"name\":\"Logo Footer\",\"cmsblock_id\":\"22\",\"status\":\"1\"}'),(36,'Social Footer','occmsblock','{\"name\":\"Social Footer\",\"cmsblock_id\":\"23\",\"status\":\"1\"}'),(37,'Static About','occmsblock','{\"name\":\"Static About\",\"cmsblock_id\":\"24\",\"status\":\"1\"}'),(38,'Static Policy','occmsblock','{\"name\":\"Static Policy\",\"cmsblock_id\":\"19\",\"status\":\"1\"}'),(41,'Home slideshow 1','ocslideshow','{\"name\":\"Home slideshow 1\",\"status\":\"1\",\"banner\":\"18\",\"width\":\"1820\",\"height\":\"785\"}'),(42,'From Our Blog','ocblog','{\"name\":\"From Our Blog\",\"status\":\"0\",\"list\":\"1\",\"width\":\"370\",\"height\":\"235\",\"auto\":\"0\",\"items\":\"3\",\"speed\":\"1000\",\"rows\":\"1\",\"navigation\":\"1\",\"pagination\":\"0\"}'),(43,'Horizontal Mega Menu','ochozmegamenu','{\"name\":\"Horizontal Mega Menu\",\"status\":\"1\",\"hhome\":\"1\",\"sticky\":\"1\",\"hdepth\":\"                    4                      \",\"hlevel\":\"                    3                      \",\"hactive\":\"CAT59,CAT69,CAT33,CAT66\",\"mobile\":\"1\"}'),(44,'New product','ocproduct','{\"name\":\"New product\",\"status\":\"1\",\"option\":\"2\",\"product\":\"\",\"cate_name\":\"\",\"cate_id\":\"\",\"productfrom\":\"0\",\"productcate\":\"\",\"input_specific_product\":\"0\",\"autoproduct\":\"0\",\"title_lang\":{\"en-gb\":{\"title\":\"Latest Arrivals\"}},\"module_description\":{\"1\":{\"description\":\"\"}},\"type\":\"0\",\"slider\":\"1\",\"items\":\"4\",\"auto\":\"1\",\"time\":\"3000\",\"speed\":\"1000\",\"row\":\"1\",\"loop\":\"1\",\"margin\":\"30\",\"navigation\":\"1\",\"pagination\":\"0\",\"desktop\":\"3\",\"tablet\":\"2\",\"mobile\":\"2\",\"smobile\":\"1\",\"nrow\":\"1\",\"description\":\"1\",\"countdown\":\"0\",\"rotator\":\"1\",\"newlabel\":\"1\",\"salelabel\":\"1\",\"limit\":\"6\",\"width\":\"500\",\"height\":\"666\"}'),(45,'Tabs Categories','octabproducts','{\"name\":\"Tabs Categories\",\"status\":\"1\",\"title_lang\":{\"en-gb\":{\"title\":\"Featured Products\"},\"fr\":{\"title\":\"Featured Products\"}},\"module_description\":{\"1\":{\"description\":\"Mirum est notare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas. \"},\"2\":{\"description\":\"Mirum est notare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas. \"}},\"type\":\"0\",\"slider\":\"1\",\"items\":\"4\",\"row\":\"1\",\"loop\":\"0\",\"margin\":\"30\",\"auto\":\"0\",\"time\":\"3000\",\"speed\":\"1000\",\"navigation\":\"1\",\"pagination\":\"0\",\"desktop\":\"3\",\"tablet\":\"2\",\"mobile\":\"2\",\"smobile\":\"1\",\"nrow\":\"1\",\"description\":\"0\",\"countdown\":\"0\",\"rotator\":\"1\",\"newlabel\":\"1\",\"salelabel\":\"1\",\"limit\":\"6\",\"width\":\"500\",\"height\":\"666\",\"octab\":[{\"tab_name\":{\"en-gb\":{\"title\":\"Clothing\"},\"fr\":{\"title\":\"Clothing\"}},\"option\":\"1\",\"productall\":\"\",\"cate_name\":\"Cameras\",\"cate_id\":\"33\",\"productfrom\":\"0\",\"productcate\":[\"28\",\"29\",\"30\",\"31\",\"33\"],\"input_specific_product\":\"0\",\"autoproduct\":\"0\"},{\"tab_name\":{\"en-gb\":{\"title\":\"Handbags\"},\"fr\":{\"title\":\"Handbags\"}},\"option\":\"1\",\"productall\":\"\",\"cate_name\":\"Components\",\"cate_id\":\"25\",\"productfrom\":\"0\",\"productcate\":[\"32\",\"34\",\"35\",\"36\",\"40\"],\"input_specific_product\":\"0\",\"autoproduct\":\"0\"},{\"tab_name\":{\"en-gb\":{\"title\":\"Shoes\"},\"fr\":{\"title\":\"Shoes\"}},\"option\":\"1\",\"productall\":\"\",\"cate_name\":\"Desktops\",\"cate_id\":\"20\",\"productfrom\":\"0\",\"productcate\":[\"41\",\"42\",\"44\",\"45\",\"47\"],\"input_specific_product\":\"0\",\"autoproduct\":\"0\"},{\"tab_name\":{\"en-gb\":{\"title\":\"Accessories\"},\"fr\":{\"title\":\"Accessories\"}},\"option\":\"1\",\"productall\":\"\",\"cate_name\":\"Components\\u00a0\\u00a0&gt;\\u00a0\\u00a0Monitors\",\"cate_id\":\"28\",\"productfrom\":\"0\",\"productcate\":[\"46\",\"48\",\"49\",\"31\",\"32\"],\"input_specific_product\":\"0\",\"autoproduct\":\"0\"}]}'),(46,'Testimonials','octestimonial','{\"name\":\"Testimonials\",\"status\":\"1\",\"width\":\"68\",\"height\":\"68\",\"auto\":\"0\",\"items\":\"1\",\"limit\":\"5\",\"speed\":\"1000\",\"rows\":\"2\",\"navigation\":\"1\",\"pagination\":\"0\"}'),(48,'Layout Homepage 02','oc_page_builder','{\"name\":\"Layout Homepage 02\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ocajaxlogin\",\"name\":\"OC Ajax Login\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocajaxlogin&amp;user_token=JTpdZxghacDqM3vT9ZusZ55msurHFXmp\"},{\"code\":\"newslettersubscribe.39\",\"name\":\"OC Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=JTpdZxghacDqM3vT9ZusZ55msurHFXmp&amp;module_id=39\"},{\"code\":\"ocslideshow.49\",\"name\":\"OC Slide show &gt; Home slideshow 2\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=JTpdZxghacDqM3vT9ZusZ55msurHFXmp&amp;module_id=49\"},{\"code\":\"occmsblock.50\",\"name\":\"OC CMS Block &gt; Banner 3\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=JTpdZxghacDqM3vT9ZusZ55msurHFXmp&amp;module_id=50\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"octabproducts.47\",\"name\":\"OC Tab Products &gt; Tabs Categories 2\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=JTpdZxghacDqM3vT9ZusZ55msurHFXmp&amp;module_id=47\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"octestimonial.46\",\"name\":\"OC Testimonials &gt; Testimonials\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/octestimonial&amp;user_token=JTpdZxghacDqM3vT9ZusZ55msurHFXmp&amp;module_id=46\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ocproduct.44\",\"name\":\"OC Products &gt; New product\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=JTpdZxghacDqM3vT9ZusZ55msurHFXmp&amp;module_id=44\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"occmsblock.51\",\"name\":\"OC CMS Block &gt; Banner 4\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=JTpdZxghacDqM3vT9ZusZ55msurHFXmp&amp;module_id=51\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"occmsblock.38\",\"name\":\"OC CMS Block &gt; Static Policy\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=JTpdZxghacDqM3vT9ZusZ55msurHFXmp&amp;module_id=38\"},{\"code\":\"ocblog.42\",\"name\":\"OC Blog &gt; From Our Blog\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocblog&amp;user_token=JTpdZxghacDqM3vT9ZusZ55msurHFXmp&amp;module_id=42\"}]},\"format\":\"12\"}]}]}]}]}'),(49,'Home slideshow 2','ocslideshow','{\"name\":\"Home slideshow 2\",\"status\":\"1\",\"banner\":\"19\",\"width\":\"1920\",\"height\":\"960\"}'),(50,'Banner 3','occmsblock','{\"name\":\"Banner 3\",\"cmsblock_id\":\"26\",\"status\":\"1\"}'),(51,'Banner 4','occmsblock','{\"name\":\"Banner 4\",\"cmsblock_id\":\"27\",\"status\":\"1\"}'),(52,'Banner 5','occmsblock','{\"name\":\"Banner 5\",\"cmsblock_id\":\"28\",\"status\":\"1\"}'),(53,'Layout Homepage 03','oc_page_builder','{\"name\":\"Layout Homepage 03\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ocajaxlogin\",\"name\":\"OC Ajax Login\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocajaxlogin&amp;user_token=d01XJrsDs0kRU4rN0MQ3LdjJUxHkQcS4\"},{\"code\":\"newslettersubscribe.39\",\"name\":\"OC Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=d01XJrsDs0kRU4rN0MQ3LdjJUxHkQcS4&amp;module_id=39\"},{\"code\":\"ocslideshow.55\",\"name\":\"OC Slide show &gt; Home slideshow 3\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=d01XJrsDs0kRU4rN0MQ3LdjJUxHkQcS4&amp;module_id=55\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"occmsblock.38\",\"name\":\"OC CMS Block &gt; Static Policy\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=d01XJrsDs0kRU4rN0MQ3LdjJUxHkQcS4&amp;module_id=38\"},{\"code\":\"octabproducts.47\",\"name\":\"OC Tab Products &gt; Tabs Categories 2\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=d01XJrsDs0kRU4rN0MQ3LdjJUxHkQcS4&amp;module_id=47\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"occmsblock.52\",\"name\":\"OC CMS Block &gt; Banner 5\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=d01XJrsDs0kRU4rN0MQ3LdjJUxHkQcS4&amp;module_id=52\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ocproduct.54\",\"name\":\"OC Products &gt; New product 2\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=d01XJrsDs0kRU4rN0MQ3LdjJUxHkQcS4&amp;module_id=54\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"octestimonial.46\",\"name\":\"OC Testimonials &gt; Testimonials\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/octestimonial&amp;user_token=d01XJrsDs0kRU4rN0MQ3LdjJUxHkQcS4&amp;module_id=46\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ocblog.42\",\"name\":\"OC Blog &gt; From Our Blog\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocblog&amp;user_token=d01XJrsDs0kRU4rN0MQ3LdjJUxHkQcS4&amp;module_id=42\"}]},\"format\":\"12\"}]}]}]}]}'),(54,'New product 2','ocproduct','{\"name\":\"New product 2\",\"status\":\"1\",\"option\":\"2\",\"product\":\"\",\"cate_name\":\"Desktops\",\"cate_id\":\"20\",\"productfrom\":\"0\",\"productcate\":\"\",\"input_specific_product\":\"0\",\"autoproduct\":\"0\",\"title_lang\":{\"en-gb\":{\"title\":\"New arrival\"},\"fr\":{\"title\":\"New arrival\"}},\"module_description\":{\"1\":{\"description\":\"Mirum est notare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas. \"},\"2\":{\"description\":\"Mirum est notare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas. \"}},\"type\":\"0\",\"slider\":\"1\",\"items\":\"4\",\"auto\":\"0\",\"time\":\"3000\",\"speed\":\"1000\",\"row\":\"2\",\"loop\":\"0\",\"margin\":\"30\",\"navigation\":\"1\",\"pagination\":\"0\",\"desktop\":\"3\",\"tablet\":\"2\",\"mobile\":\"2\",\"smobile\":\"1\",\"nrow\":\"1\",\"description\":\"0\",\"countdown\":\"0\",\"rotator\":\"1\",\"newlabel\":\"1\",\"salelabel\":\"1\",\"limit\":\"12\",\"width\":\"500\",\"height\":\"666\"}'),(55,'Home slideshow 3','ocslideshow','{\"name\":\"Home slideshow 3\",\"status\":\"1\",\"banner\":\"20\",\"width\":\"1920\",\"height\":\"960\"}'),(56,'Home slideshow 4','ocslideshow','{\"name\":\"Home slideshow 4\",\"status\":\"1\",\"banner\":\"21\",\"width\":\"1920\",\"height\":\"960\"}'),(57,'Banner 6','occmsblock','{\"name\":\"Banner 6\",\"cmsblock_id\":\"29\",\"status\":\"1\"}'),(58,'Layout Homepage 04','oc_page_builder','{\"name\":\"Layout Homepage 04\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"newslettersubscribe.39\",\"name\":\"OC Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=B8NA7TZvGegvK5ov6i4gI7nxLfxuUO0Z&amp;module_id=39\"},{\"code\":\"ocajaxlogin\",\"name\":\"OC Ajax Login\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocajaxlogin&amp;user_token=B8NA7TZvGegvK5ov6i4gI7nxLfxuUO0Z\"},{\"code\":\"ocslideshow.56\",\"name\":\"OC Slide show &gt; Home slideshow 4\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=B8NA7TZvGegvK5ov6i4gI7nxLfxuUO0Z&amp;module_id=56\"},{\"code\":\"occmsblock.57\",\"name\":\"OC CMS Block &gt; Banner 6\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=B8NA7TZvGegvK5ov6i4gI7nxLfxuUO0Z&amp;module_id=57\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ocproduct.44\",\"name\":\"OC Products &gt; New product\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=B8NA7TZvGegvK5ov6i4gI7nxLfxuUO0Z&amp;module_id=44\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"occmsblock.52\",\"name\":\"OC CMS Block &gt; Banner 5\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=B8NA7TZvGegvK5ov6i4gI7nxLfxuUO0Z&amp;module_id=52\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"octabproducts.47\",\"name\":\"OC Tab Products &gt; Tabs Categories 2\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=B8NA7TZvGegvK5ov6i4gI7nxLfxuUO0Z&amp;module_id=47\"},{\"code\":\"ocblog.42\",\"name\":\"OC Blog &gt; From Our Blog\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocblog&amp;user_token=B8NA7TZvGegvK5ov6i4gI7nxLfxuUO0Z&amp;module_id=42\"},{\"code\":\"newslettersubscribe.40\",\"name\":\"OC Newsletter &gt; Newsletter\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=B8NA7TZvGegvK5ov6i4gI7nxLfxuUO0Z&amp;module_id=40\"}]},\"format\":\"12\"}]}]}]}]}'),(60,'Static Opentime','occmsblock','{\"name\":\"Static Opentime\",\"cmsblock_id\":\"31\",\"status\":\"1\"}'),(61,'Logo &amp; Social Footer','occmsblock','{\"name\":\"Logo &amp; Social Footer\",\"cmsblock_id\":\"30\",\"status\":\"1\"}'),(62,'Static Link Footer','occmsblock','{\"name\":\"Static Link Footer\",\"cmsblock_id\":\"32\",\"status\":\"1\"}'),(63,'Home slideshow 5','ocslideshow','{\"name\":\"Home slideshow 5\",\"status\":\"1\",\"banner\":\"22\",\"width\":\"1170\",\"height\":\"566\"}'),(64,'Home slideshow 6','ocslideshow','{\"name\":\"Home slideshow 6\",\"status\":\"1\",\"banner\":\"23\",\"width\":\"1920\",\"height\":\"753\"}'),(65,'Layout Homepage 05','oc_page_builder','{\"name\":\"Layout Homepage 05\",\"status\":\"1\",\"widget\":[{\"class\":\"b-padding\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"newslettersubscribe.39\",\"name\":\"OC Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=FECBuiyCjkoXU123uG7HtGroKJKMpVWz&amp;module_id=39\"},{\"code\":\"ocajaxlogin\",\"name\":\"OC Ajax Login\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocajaxlogin&amp;user_token=FECBuiyCjkoXU123uG7HtGroKJKMpVWz\"},{\"code\":\"ocslideshow.63\",\"name\":\"OC Slide show &gt; Home slideshow 5\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=FECBuiyCjkoXU123uG7HtGroKJKMpVWz&amp;module_id=63\"},{\"code\":\"occmsblock.57\",\"name\":\"OC CMS Block &gt; Banner 6\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=FECBuiyCjkoXU123uG7HtGroKJKMpVWz&amp;module_id=57\"},{\"code\":\"occmsblock.37\",\"name\":\"OC CMS Block &gt; Static About\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=FECBuiyCjkoXU123uG7HtGroKJKMpVWz&amp;module_id=37\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"occmsblock.38\",\"name\":\"OC CMS Block &gt; Static Policy\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=FECBuiyCjkoXU123uG7HtGroKJKMpVWz&amp;module_id=38\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"b-padding\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"octabproducts.45\",\"name\":\"OC Tab Products &gt; Tabs Categories\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=FECBuiyCjkoXU123uG7HtGroKJKMpVWz&amp;module_id=45\"},{\"code\":\"occmsblock.66\",\"name\":\"OC CMS Block &gt; Banner 7\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=13fXpuhtuaNDwD1dBFRzINH8WzRYDXpr&amp;module_id=66\"},{\"code\":\"ocproduct.44\",\"name\":\"OC Products &gt; New product\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=FECBuiyCjkoXU123uG7HtGroKJKMpVWz&amp;module_id=44\"},{\"code\":\"ocblog.42\",\"name\":\"OC Blog &gt; From Our Blog\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocblog&amp;user_token=FECBuiyCjkoXU123uG7HtGroKJKMpVWz&amp;module_id=42\"},{\"code\":\"newslettersubscribe.40\",\"name\":\"OC Newsletter &gt; Newsletter\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=FECBuiyCjkoXU123uG7HtGroKJKMpVWz&amp;module_id=40\"}]},\"format\":\"12\"}]}]}]}]}'),(66,'Banner 7','occmsblock','{\"name\":\"Banner 7\",\"cmsblock_id\":\"33\",\"status\":\"1\"}'),(67,'Banner 8','occmsblock','{\"name\":\"Banner 8\",\"cmsblock_id\":\"34\",\"status\":\"1\"}'),(68,'New product 3','ocproduct','{\"name\":\"New product 3\",\"status\":\"1\",\"option\":\"2\",\"product\":\"\",\"cate_name\":\"Desktops\",\"cate_id\":\"20\",\"productfrom\":\"0\",\"productcate\":\"\",\"input_specific_product\":\"0\",\"autoproduct\":\"0\",\"title_lang\":{\"en-gb\":{\"title\":\"Latest Arrivals\"},\"fr\":{\"title\":\"Latest Arrivals\"}},\"module_description\":{\"1\":{\"description\":\"\"},\"2\":{\"description\":\"\"}},\"type\":\"1\",\"slider\":\"1\",\"items\":\"1\",\"auto\":\"0\",\"time\":\"3000\",\"speed\":\"1000\",\"row\":\"3\",\"loop\":\"0\",\"margin\":\"0\",\"navigation\":\"0\",\"pagination\":\"0\",\"desktop\":\"1\",\"tablet\":\"2\",\"mobile\":\"1\",\"smobile\":\"1\",\"nrow\":\"1\",\"description\":\"0\",\"countdown\":\"0\",\"rotator\":\"1\",\"newlabel\":\"0\",\"salelabel\":\"0\",\"limit\":\"6\",\"width\":\"150\",\"height\":\"200\"}'),(69,'Speical Products','ocproduct','{\"name\":\"Speical Products\",\"status\":\"1\",\"option\":\"2\",\"product\":\"\",\"cate_name\":\"Desktops\",\"cate_id\":\"20\",\"productfrom\":\"0\",\"productcate\":\"\",\"input_specific_product\":\"0\",\"autoproduct\":\"1\",\"title_lang\":{\"en-gb\":{\"title\":\"On Sale\"},\"fr\":{\"title\":\"On Sale\"}},\"module_description\":{\"1\":{\"description\":\"\"},\"2\":{\"description\":\"\"}},\"type\":\"1\",\"slider\":\"1\",\"items\":\"1\",\"auto\":\"0\",\"time\":\"3000\",\"speed\":\"1000\",\"row\":\"3\",\"loop\":\"0\",\"margin\":\"0\",\"navigation\":\"0\",\"pagination\":\"0\",\"desktop\":\"1\",\"tablet\":\"2\",\"mobile\":\"1\",\"smobile\":\"1\",\"nrow\":\"1\",\"description\":\"0\",\"countdown\":\"0\",\"rotator\":\"1\",\"newlabel\":\"0\",\"salelabel\":\"0\",\"limit\":\"6\",\"width\":\"150\",\"height\":\"200\"}'),(70,'Most viewed products','ocproduct','{\"name\":\"Most viewed products\",\"status\":\"1\",\"option\":\"2\",\"product\":\"\",\"cate_name\":\"Women\",\"cate_id\":\"20\",\"productfrom\":\"0\",\"productcate\":\"\",\"input_specific_product\":\"0\",\"autoproduct\":\"3\",\"title_lang\":{\"en-gb\":{\"title\":\"Top Viewed Products\"},\"fr\":{\"title\":\"Top Viewed Products\"}},\"module_description\":{\"1\":{\"description\":\"\"},\"2\":{\"description\":\"\"}},\"type\":\"1\",\"slider\":\"1\",\"items\":\"1\",\"auto\":\"0\",\"time\":\"3000\",\"speed\":\"1000\",\"row\":\"3\",\"loop\":\"0\",\"margin\":\"0\",\"navigation\":\"0\",\"pagination\":\"0\",\"desktop\":\"1\",\"tablet\":\"2\",\"mobile\":\"1\",\"smobile\":\"1\",\"nrow\":\"1\",\"description\":\"0\",\"countdown\":\"0\",\"rotator\":\"1\",\"newlabel\":\"0\",\"salelabel\":\"0\",\"limit\":\"6\",\"width\":\"150\",\"height\":\"200\"}'),(71,'Layout Homepage 06','oc_page_builder','{\"name\":\"Layout Homepage 06\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"newslettersubscribe.39\",\"name\":\"OC Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=GfIQutAWutvIPkHKWVnDpqY0KXEcJROP&amp;module_id=39\"},{\"code\":\"ocajaxlogin\",\"name\":\"OC Ajax Login\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocajaxlogin&amp;user_token=GfIQutAWutvIPkHKWVnDpqY0KXEcJROP\"},{\"code\":\"ocslideshow.64\",\"name\":\"OC Slide show &gt; Home slideshow 6\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocslideshow&amp;user_token=GfIQutAWutvIPkHKWVnDpqY0KXEcJROP&amp;module_id=64\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"occmsblock.67\",\"name\":\"OC CMS Block &gt; Banner 8\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=GfIQutAWutvIPkHKWVnDpqY0KXEcJROP&amp;module_id=67\"},{\"code\":\"occmsblock.38\",\"name\":\"OC CMS Block &gt; Static Policy\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=GfIQutAWutvIPkHKWVnDpqY0KXEcJROP&amp;module_id=38\"},{\"code\":\"octabproducts.45\",\"name\":\"OC Tab Products &gt; Tabs Categories\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/octabproducts&amp;user_token=GfIQutAWutvIPkHKWVnDpqY0KXEcJROP&amp;module_id=45\"},{\"code\":\"occmsblock.66\",\"name\":\"OC CMS Block &gt; Banner 7\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/occmsblock&amp;user_token=GfIQutAWutvIPkHKWVnDpqY0KXEcJROP&amp;module_id=66\"}]},\"format\":\"12\"}]},{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ocproduct.69\",\"name\":\"OC Products &gt; Speical Products\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=GfIQutAWutvIPkHKWVnDpqY0KXEcJROP&amp;module_id=69\"}]},\"format\":\"4\"},{\"info\":{\"module\":[{\"code\":\"ocproduct.68\",\"name\":\"OC Products &gt; New product 3\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=GfIQutAWutvIPkHKWVnDpqY0KXEcJROP&amp;module_id=68\"}]},\"format\":\"4\"},{\"info\":{\"module\":[{\"code\":\"ocproduct.70\",\"name\":\"OC Products &gt; Most viewed products\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocproduct&amp;user_token=GfIQutAWutvIPkHKWVnDpqY0KXEcJROP&amp;module_id=70\"}]},\"format\":\"4\"}]},{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ocblog.42\",\"name\":\"OC Blog &gt; From Our Blog\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/ocblog&amp;user_token=GfIQutAWutvIPkHKWVnDpqY0KXEcJROP&amp;module_id=42\"},{\"code\":\"newslettersubscribe.40\",\"name\":\"OC Newsletter &gt; Newsletter\",\"url\":\"http:\\/\\/tt_mimosa.com\\/admin\\/index.php?route=extension\\/module\\/newslettersubscribe&amp;user_token=GfIQutAWutvIPkHKWVnDpqY0KXEcJROP&amp;module_id=40\"}]},\"format\":\"12\"}]}]}]}]}'),(72,'Logo &amp; Social Footer 2','occmsblock','{\"name\":\"Logo &amp; Social Footer 2\",\"cmsblock_id\":\"35\",\"status\":\"1\"}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ocslideshow`
--

DROP TABLE IF EXISTS `oc_ocslideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ocslideshow` (
  `ocslideshow_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `auto` tinyint(1) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `hover` tinyint(1) DEFAULT NULL,
  `nextback` tinyint(1) DEFAULT NULL,
  `contrl` tinyint(1) DEFAULT NULL,
  `effect` varchar(64) NOT NULL,
  PRIMARY KEY (`ocslideshow_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ocslideshow`
--

LOCK TABLES `oc_ocslideshow` WRITE;
/*!40000 ALTER TABLE `oc_ocslideshow` DISABLE KEYS */;
INSERT INTO `oc_ocslideshow` VALUES (18,'Home slideshow 1',1,1,5000,1,1,1,'  random  '),(19,'Home slideshow 2',1,1,5000,1,1,1,'  random  '),(20,'Home slideshow 3',1,1,5000,1,1,1,'  random  '),(21,'Home slideshow 4',1,1,5000,1,1,1,'  random  '),(22,'Home slideshow 5',1,1,5000,1,1,1,'  random  '),(23,'Home slideshow 6',1,1,5000,1,1,1,'  random  ');
/*!40000 ALTER TABLE `oc_ocslideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ocslideshow_image`
--

DROP TABLE IF EXISTS `oc_ocslideshow_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ocslideshow_image` (
  `ocslideshow_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `ocslideshow_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `banner_store` varchar(110) DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `small_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ocslideshow_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=532 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ocslideshow_image`
--

LOCK TABLES `oc_ocslideshow_image` WRITE;
/*!40000 ALTER TABLE `oc_ocslideshow_image` DISABLE KEYS */;
INSERT INTO `oc_ocslideshow_image` VALUES (302,18,'          http://plazathemes.com             ',1,'0,0,0','catalog/banner slides/design1.png','no_image.png'),(300,18,'        http://plazathemes.com             ',2,'0,0,0','catalog/banner slides/design1.png','no_image.png'),(301,18,'          http://plazathemes.com             ',3,'0,0,0','catalog/slideshow/slidershow1-3.jpg','no_image.png'),(299,19,'        http://plazathemes.com              ',3,'0,0,0','catalog/slideshow/slidershow2-2.jpg','no_image.png'),(298,19,'        http://plazathemes.com              ',1,'0,0,0','catalog/slideshow/slidershow2-1.jpg','no_image.png'),(297,19,'      http://plazathemes.com              ',2,'0,0,0','catalog/banner slides/design2.png','no_image.png'),(282,20,'      http://plazathemes.com              ',2,'2,0,2,0,2,0','catalog/slideshow/slidershow3-3.jpg','no_image.png'),(283,20,'        http://plazathemes.com              ',3,'2,0,2,0,2,0','catalog/slideshow/slidershow3-2.jpg','no_image.png'),(281,20,'    http://plazathemes.com              ',1,'2,0,2,0,2,0','catalog/slideshow/slidershow3-1.jpg','no_image.png'),(402,22,'            http://plazathemes.com                ',3,'0,0,0','catalog/slideshow/slidershow5-1.jpg','no_image.png'),(401,22,'            http://plazathemes.com                ',1,'0,0,0','catalog/slideshow/slidershow5-2.jpg','no_image.png'),(400,22,'          http://plazathemes.com                ',2,'0,0,0','catalog/slideshow/slidershow5-3.jpg','no_image.png'),(293,23,'              http://plazathemes.com                 ',3,'5,0,5,0,5,0','catalog/slideshow/slidershow6-2.jpg','no_image.png'),(292,23,'            http://plazathemes.com                 ',2,'5,0,5,0,5,0','catalog/slideshow/slidershow6-3.jpg','no_image.png'),(291,23,'              http://plazathemes.com                 ',1,'5,0,5,0,5,0','catalog/slideshow/slidershow6-1.jpg','no_image.png'),(531,21,'',2,'0,0,0','catalog/banner slides/slider-1-03-(caps)-(1).jpg','no_image.png'),(529,21,'',1,'0,0,0','catalog/banner slides/slider-1-02.-my-edit.jpg','no_image.png'),(530,21,'',1,'0,0,0','catalog/banner slides/slider-1-01.png','no_image.png');
/*!40000 ALTER TABLE `oc_ocslideshow_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_ocslideshow_image_description`
--

DROP TABLE IF EXISTS `oc_ocslideshow_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_ocslideshow_image_description` (
  `ocslideshow_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `ocslideshow_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`ocslideshow_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_ocslideshow_image_description`
--

LOCK TABLES `oc_ocslideshow_image_description` WRITE;
/*!40000 ALTER TABLE `oc_ocslideshow_image_description` DISABLE KEYS */;
INSERT INTO `oc_ocslideshow_image_description` VALUES (302,1,18,'                                ','                                ','         &lt;h5&gt;clothing&lt;/h5&gt;\r\n&lt;h5&gt;new collection&lt;/h5&gt;\r\n&lt;h2&gt;New arrivals!&lt;/h2&gt;\r\n&lt;h1&gt;amazing mimosa&lt;/h1&gt;\r\n&lt;p&gt;We crack for this purely rock style with stitched quills in relief and metallic\r\nhardware.&lt;/p&gt;         '),(282,2,20,'                            ','                            ','  &lt;h3&gt;Stylish&lt;/h3&gt;\r\n&lt;h3&gt;Male Clothes&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa in our new season campaign.&lt;/p&gt;          '),(283,1,20,'                            ','                            ','  &lt;h3&gt;Men’s&lt;/h3&gt;\r\n&lt;h3&gt;Sunglasses&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa in our new season campaign.&lt;/p&gt;          '),(529,1,21,'                                                                ','                                                                ','                                                                         &lt;h3 style=&quot;text-align: center; margin-top:70px&quot;&gt;&lt;font color=&quot;#ff8994&quot;&gt;&lt;b&gt;Design Your&lt;/b&gt;&lt;/font&gt;&lt;/h3&gt;\r\n&lt;h3 style=&quot;text-align: center; margin-top:15px&quot;&gt;&lt;font color=&quot;#ff8994&quot;&gt;&lt;b&gt;Personalised Mugs and Jugs&lt;/b&gt;&lt;/font&gt;&lt;/h3&gt;\r\n&lt;p style=&quot;text-align: center; margin-top:15px; width: 100% !important&quot;&gt;&lt;font color=&quot;#ff8994&quot;&gt;&lt;b&gt;Your ideas. Your design. Your product&lt;/b&gt;&lt;/font&gt;&lt;/p&gt; \r\n&lt;a href=&quot;mug&quot; style=&quot;border:2px solid #000; background-color: #f44336; margin-left:45%; margin-top:15px&quot; class=&quot;btn&quot;&gt;&lt;b&gt;Shop Now&lt;/b&gt;&lt;/a&gt;                             '),(293,1,23,'                                  ','                                  ','   &lt;h5&gt;Just Only One Day!&lt;/h5&gt;\r\n&lt;h4&gt;Backpacks&lt;/h4&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa\r\nin our new season campaign.&lt;/p&gt;             '),(292,2,23,'                                  ','                                  ','   &lt;h3&gt;Stylish &lt;/h3&gt;\r\n&lt;h3&gt;Female Clothes&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa\r\nin our new season campaign.&lt;/p&gt;             '),(299,1,19,'                            ','                            ','      &lt;h3&gt;Bag&lt;/h3&gt;\r\n&lt;h3&gt;Lookbook&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa\r\nin our new season campaign.&lt;/p&gt;          '),(300,1,18,'                          ','                          ','         &lt;h5&gt;handbag&lt;/h5&gt;\r\n&lt;h5&gt;new collection&lt;/h5&gt;\r\n&lt;h2&gt;amazing product! &lt;/h2&gt;\r\n&lt;h1&gt;backpack&lt;/h1&gt;\r\n&lt;p&gt;Inspired by the Kastrup backpack, but reimagined for the modern woman, the Piper \r\nmarries the functionality our backpacks are known for with more feminine proportions and details. &lt;/p&gt;         '),(301,1,18,'                          ','                          ','         &lt;h5&gt;handbag&lt;/h5&gt;\r\n&lt;h5&gt;new collection&lt;/h5&gt;\r\n&lt;h2&gt;Clean &amp;amp; Elegant! &lt;/h2&gt;\r\n&lt;h1&gt;Black Handbag&lt;/h1&gt;\r\n&lt;p&gt;BlackBird collection of minimal, sleek and functional Carryalls were designed with creatives in mind.&lt;/p&gt;         '),(298,1,19,'                                  ','                                  ','      &lt;h3&gt;Accessories&lt;/h3&gt;\r\n&lt;h3&gt;Explore Trending&lt;/h3&gt;\r\n&lt;p&gt;Typi non habent claritatem insitam est usus legentis in iis qui facit \r\neorum claritatem.&lt;/p&gt;          '),(297,1,19,'                            ','                            ','      &lt;h3&gt;Clothing&lt;/h3&gt;\r\n&lt;h3&gt;Exclusive Collection&lt;/h3&gt;\r\n&lt;p&gt;Typi non habent claritatem insitam est usus legentis in iis qui facit \r\neorum claritatem.&lt;/p&gt;          '),(281,2,20,'                                  ','                                  ','  &lt;h3&gt;Stylish&lt;/h3&gt;\r\n&lt;h3&gt;Female Clothes&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa in our new season campaign.&lt;/p&gt;          '),(282,1,20,'                            ','                            ','  &lt;h3&gt;Stylish&lt;/h3&gt;\r\n&lt;h3&gt;Male Clothes&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa in our new season campaign.&lt;/p&gt;          '),(281,1,20,'                                  ','                                  ','  &lt;h3&gt;Stylish&lt;/h3&gt;\r\n&lt;h3&gt;Female Clothes&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa in our new season campaign.&lt;/p&gt;          '),(402,1,22,'                                ','                                ','        &lt;h3&gt;Stylish&lt;/h3&gt;\r\n&lt;h3&gt;Female Clothes&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa\r\nin our new season campaign.&lt;/p&gt;            '),(401,1,22,'                                      ','                                      ','   &lt;h3&gt;Stylish&lt;/h3&gt;\r\n&lt;h3&gt;Sunglasses&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa\r\nin our new season campaign.&lt;/p&gt;            '),(400,1,22,'                                ','                                ','   &lt;h3&gt;Stylish &lt;/h3&gt;\r\n&lt;h3&gt;Handbag&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa\r\nin our new season campaign.&lt;/p&gt;            '),(292,1,23,'                                  ','                                  ','   &lt;h3&gt;Stylish &lt;/h3&gt;\r\n&lt;h3&gt;Female Clothes&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa\r\nin our new season campaign.&lt;/p&gt;             '),(291,1,23,'                                        ','                                        ','   &lt;h3&gt;Amazing&lt;/h3&gt;\r\n&lt;h3&gt;Black Handbag&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa\r\nin our new season campaign.&lt;/p&gt;             '),(291,2,23,'                                        ','                                        ','   &lt;h3&gt;Amazing&lt;/h3&gt;\r\n&lt;h3&gt;Black Handbag&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa\r\nin our new season campaign.&lt;/p&gt;             '),(531,1,21,'                                                                ','                                                                ','                                                                         &lt;h3 style=&quot;text-align: center; margin-top:70px&quot;&gt;&lt;font color=&quot;#ff8994&quot;&gt;&lt;b&gt;Design Your&lt;/b&gt;&lt;/font&gt;&lt;/h3&gt;\r\n&lt;h3 style=&quot;text-align: center; margin-top:15px&quot;&gt;&lt;font color=&quot;#ff8994&quot;&gt;&lt;b&gt;Personalised Caps&lt;/b&gt;&lt;/font&gt;&lt;/h3&gt;\r\n&lt;p style=&quot;text-align: center; margin-top:15px; width: 100% !important&quot;&gt;&lt;font color=&quot;#ff8994&quot;&gt;&lt;b&gt;Your ideas. Your design. Your product&lt;/b&gt;&lt;/font&gt;&lt;/p&gt; \r\n&lt;a href=&quot;caps&quot; style=&quot;border:2px solid #000; margin-left:45%; margin-top:15px&quot; class=&quot;btn&quot;&gt;&lt;b&gt;Shop Now&lt;/b&gt;&lt;/a&gt;                             '),(530,1,21,'                                                                ','                                                                ','                                                                         &lt;h3 style=&quot;text-align: center; margin-top:70px&quot;&gt;&lt;font color=&quot;#ff8994&quot;&gt;&lt;b&gt;Design Your&lt;/b&gt;&lt;/font&gt;&lt;/h3&gt;\r\n&lt;h3 style=&quot;text-align: center; margin-top:15px&quot;&gt;&lt;font color=&quot;#ff8994&quot;&gt;&lt;b&gt;Personalised T-shirts&lt;/b&gt;&lt;/font&gt;&lt;/h3&gt;\r\n&lt;p style=&quot;text-align: center; margin-top:15px; width: 100% !important&quot;&gt;&lt;font color=&quot;#ff8994&quot;&gt;&lt;b&gt;Your ideas. Your design. Your product&lt;/b&gt;&lt;/font&gt;&lt;/p&gt; \r\n&lt;a href=&quot;t-shirts&quot; style=&quot;border:2px solid #fff; margin-left:45%; margin-top:15px&quot; class=&quot;btn&quot;&gt;&lt;b&gt;Shop Now&lt;/b&gt;&lt;/a&gt;                             '),(283,2,20,'                            ','                            ','  &lt;h3&gt;Men’s&lt;/h3&gt;\r\n&lt;h3&gt;Sunglasses&lt;/h3&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa in our new season campaign.&lt;/p&gt;          '),(293,2,23,'                                  ','                                  ','   &lt;h5&gt;Just Only One Day!&lt;/h5&gt;\r\n&lt;h4&gt;Backpacks&lt;/h4&gt;\r\n&lt;p&gt;Discover the collection as styled by fashion icon Caroline Issa\r\nin our new season campaign.&lt;/p&gt;             ');
/*!40000 ALTER TABLE `oc_ocslideshow_image_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',4),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,1,'Radio'),(2,1,'Checkbox'),(4,1,'Text'),(6,1,'Textarea'),(8,1,'Date'),(7,1,'File'),(5,1,'Select'),(9,1,'Time'),(10,1,'Date &amp; Time'),(12,1,'Delivery Date'),(11,1,'Size');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,1,1,'Large'),(32,1,1,'Small'),(45,1,2,'Checkbox 4'),(44,1,2,'Checkbox 3'),(31,1,1,'Medium'),(42,1,5,'Yellow'),(41,1,5,'Green'),(39,1,5,'Red'),(40,1,5,'Blue'),(23,1,2,'Checkbox 1'),(24,1,2,'Checkbox 2'),(48,1,11,'Large'),(47,1,11,'Medium'),(46,1,11,'Small');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
INSERT INTO `oc_order` VALUES (1,0,'INV-2018-00',0,'Your Store','http://localhost/saw_main/',0,1,'john','smith','a.a.okechukwu@gmail.com','23456787654','','[]','john','smith','','westrdftghj','','Abuja','1234','Nigeria',156,'Bauchi',2393,'','[]','Cash On Delivery','cod','john','smith','','westrdftghj','','Abuja','1234','Nigeria',156,'Bauchi',2393,'','[]','Flat Shipping Rate','flat.flat','nope',32.0000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'fe80::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:59.0) Gecko/20100101 Firefox/59.0','en-US,en;q=0.5','2018-04-27 13:25:52','2018-04-27 13:26:09'),(2,0,'INV-2018-00',0,'Your Store','http://localhost/saw_main/',0,1,'Fname','Lname','Email@yahii.com','065768978','','[]','Fname','Lname','','2 danube','','city','5678','United Kingdom',222,'Berkshire',3519,'','[]','Cash On Delivery','cod','Fname','Lname','','2 danube','','city','5678','United Kingdom',222,'Berkshire',3519,'','[]','Flat Shipping Rate','flat.flat','yea i live it',22.0000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'::1','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36','en-US,en;q=0.9','2018-05-11 16:44:08','2018-05-11 16:44:51'),(3,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',2,1,'Bobby','Kanikwu','customizebobby@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',5.0000,2,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-05-22 12:55:19','2018-05-22 12:56:38'),(4,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',2,1,'Bobby','Kanikwu','customizebobby@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',14.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-05-24 13:11:14','2018-05-24 13:11:14'),(5,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',2,1,'Bobby','Kanikwu','customizebobby@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',14.0000,2,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-05-24 13:13:38','2018-05-24 13:14:37'),(6,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',2,1,'Bobby','Kanikwu','customizebobby@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',12.0000,2,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-05-24 13:21:41','2018-05-24 13:22:20'),(7,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',2,1,'Bobby','Kanikwu','customizebobby@gmail.com','07062391349','','[]','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',11.0000,3,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-05-24 13:24:13','2018-05-24 13:35:12'),(8,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2523.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-05-25 13:19:51','2018-05-25 14:26:53'),(9,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2523.0000,2,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Mobile Safari/537.36','en-US,en;q=0.9','2018-05-25 14:27:06','2018-05-25 16:54:27'),(10,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','[]','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2500.0000,3,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-05-28 10:12:08','2018-05-28 10:17:07'),(11,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2500.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-05-30 11:56:50','2018-05-30 11:56:50'),(12,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2500.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-05-30 12:01:23','2018-05-30 12:01:23'),(13,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2500.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-05-30 12:02:11','2018-05-30 12:02:11'),(14,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',71014.4000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-05-30 12:24:06','2018-05-30 12:24:32'),(15,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',19412.9000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-05-30 12:25:37','2018-05-30 12:36:26'),(16,0,'INV-2018-00',0,'Hazye','http://localhost/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1564.0000,3,0,0.0000,0,'',1,4,'NGN',1.00000000,'::1','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-US,en;q=0.9','2018-06-05 14:27:34','2018-06-05 15:11:20'),(17,0,'INV-2018-00',0,'Hazye','http://35.224.245.110/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2527.0000,2,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.121.33','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36','en-US,en;q=0.9','2018-06-08 19:11:58','2018-06-08 19:13:12'),(18,0,'INV-2018-00',0,'Hazye','http://35.224.245.110/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1530.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.78.161','','Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1','en-us','2018-06-09 09:50:47','2018-06-09 09:51:11'),(19,0,'INV-2018-00',0,'Hazye','http://35.224.245.110/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','ok',1514.0000,2,0,0.0000,0,'',1,4,'NGN',1.00000000,'160.152.46.89','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-GB,en-US;q=0.9,en;q=0.8','2018-06-11 14:59:04','2018-06-11 14:59:47'),(20,0,'INV-2018-00',0,'Hazye','http://35.224.245.110/saw_main/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1518.0000,2,0,0.0000,0,'',1,4,'NGN',1.00000000,'160.152.46.89','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36','en-GB,en-US;q=0.9,en;q=0.8','2018-06-11 15:11:29','2018-06-11 15:12:18'),(21,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2500.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'169.159.94.134','','Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1','en-us','2018-06-12 13:14:33','2018-06-12 13:14:46'),(22,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2512.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'169.159.94.134','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36','en-US,en;q=0.9','2018-06-12 16:27:42','2018-06-12 16:27:42'),(23,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',3,1,'Nnamdi','Ogundu','godswillogundu@yahoo.com','07038561877','','','Nnamdi','Ogundu','','10 danube street, maitama','','FCT','900001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Nnamdi','Ogundu','','10 danube street, maitama','','FCT','900001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','ok',3500.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.5.185','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36','en-US,en;q=0.9','2018-06-13 08:43:51','2018-06-13 08:43:51'),(24,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2524.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.120.120.9','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-13 15:34:17','2018-06-13 15:34:17'),(25,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2512.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.120.120.9','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-13 15:39:37','2018-06-13 15:39:37'),(26,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1512.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.120.120.9','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-13 15:44:20','2018-06-13 15:44:20'),(27,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1512.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.120.120.9','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-13 16:16:17','2018-06-13 16:16:17'),(28,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1512.0000,2,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.120.120.9','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-13 16:33:52','2018-06-13 16:34:21'),(29,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1513.5000,2,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.123.216','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-14 08:48:51','2018-06-14 08:49:31'),(30,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2513.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.123.216','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-14 09:43:37','2018-06-14 09:43:37'),(31,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2513.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.123.216','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-14 09:44:03','2018-06-14 09:44:27'),(32,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1507.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.123.216','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-14 09:56:15','2018-06-14 09:56:21'),(33,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1515.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.123.216','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-14 10:12:41','2018-06-14 10:12:47'),(34,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1515.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.123.216','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-14 10:27:10','2018-06-14 10:27:17'),(35,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2513.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.123.216','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-14 10:40:44','2018-06-14 10:40:48'),(36,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2526.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'197.210.53.32','','Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1','en-us','2018-06-14 14:39:13','2018-06-14 14:39:18'),(37,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2526.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.120.124.57','','Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1','en-us','2018-06-14 14:45:43','2018-06-14 14:45:47'),(38,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2526.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.120.124.57','','Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1','en-us','2018-06-14 14:47:16','2018-06-14 14:47:16'),(39,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2526.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.120.124.57','','Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1','en-us','2018-06-14 14:47:22','2018-06-14 14:47:28'),(40,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2513.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'160.152.2.4','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-18 10:07:26','2018-06-18 10:07:31'),(41,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2513.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'160.152.2.4','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-18 10:10:30','2018-06-18 10:10:35'),(42,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2513.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'160.152.2.4','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-18 10:17:51','2018-06-18 10:18:01'),(43,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1512.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'160.152.2.4','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-18 10:22:53','2018-06-18 10:22:58'),(44,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2513.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'160.152.2.4','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-18 10:25:04','2018-06-18 10:25:15'),(45,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2513.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'160.152.2.4','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-18 10:28:00','2018-06-18 10:28:03'),(46,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2513.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'169.159.112.104','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 08:40:04','2018-06-19 08:40:08'),(47,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1513.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.5.70','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 09:31:49','2018-06-19 09:31:53'),(48,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1507.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.5.70','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 09:36:33','2018-06-19 09:38:31'),(49,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1507.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.5.70','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 09:40:01','2018-06-19 09:40:01'),(50,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1507.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.5.70','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 09:40:08','2018-06-19 09:40:13'),(51,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1508.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.5.70','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 10:32:40','2018-06-19 10:32:40'),(52,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1508.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.5.70','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 10:32:48','2018-06-19 10:32:48'),(53,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1508.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.5.70','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 10:35:21','2018-06-19 10:35:21'),(54,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1508.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.5.70','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 10:39:46','2018-06-19 10:39:54'),(55,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1507.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.5.70','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 10:54:28','2018-06-19 10:54:42'),(56,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1509.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.86.14','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 13:16:47','2018-06-19 13:16:52'),(57,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1508.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.86.14','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 13:20:09','2018-06-19 13:20:14'),(58,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','[]','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1503.0000,3,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.86.14','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 13:22:25','2018-06-20 22:37:24'),(59,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','[]','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2500.0000,3,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.120.13','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-19 16:52:54','2018-06-20 17:44:10'),(60,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2513.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.86.82','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-20 22:38:49','2018-06-20 22:38:53'),(61,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',3,1,'Nnamdi','Ogundu','godswillogundu@yahoo.com','07038561877','','','Nnamdi','Ogundu','','10 danube street, maitama','','FCT','900001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Nnamdi','Ogundu','','10 danube street, maitama','','FCT','900001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',4503.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.66.59.4','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-22 08:54:40','2018-06-22 08:54:49'),(62,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2513.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.6.6','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-22 09:26:23','2018-06-22 09:26:29'),(63,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',3,1,'Nnamdi','Ogundu','godswillogundu@yahoo.com','07038561877','','','Nnamdi','Ogundu','','10 danube street, maitama','','FCT','900001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Nnamdi','Ogundu','','10 danube street, maitama','','FCT','900001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',3526.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.22.200','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-22 09:55:18','2018-06-22 09:56:11'),(64,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2501.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.25.72','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 13:03:09','2018-06-25 13:03:22'),(65,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1509.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.25.72','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 13:11:50','2018-06-25 13:11:54'),(66,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2502.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.25.72','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 13:15:36','2018-06-25 13:15:40'),(67,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2514.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.97.219','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 14:10:29','2018-06-25 14:10:43'),(68,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2501.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.97.219','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 14:45:34','2018-06-25 14:45:40'),(69,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2514.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.97.219','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 14:50:52','2018-06-25 14:50:57'),(70,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1514.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.97.219','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 14:59:12','2018-06-25 14:59:16'),(71,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2516.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.97.219','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 15:35:26','2018-06-25 15:35:50'),(72,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1507.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.97.219','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 15:47:24','2018-06-25 15:47:29'),(73,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2502.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.97.219','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 15:54:59','2018-06-25 15:55:08'),(74,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2516.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.97.219','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 16:11:37','2018-06-25 16:11:45'),(75,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1514.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.122.84','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 16:35:05','2018-06-25 16:35:34'),(76,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',3,1,'Nnamdi','Ogundu','godswillogundu@yahoo.com','07038561877','','','Nnamdi','Ogundu','','10 danube street, maitama','','FCT','900001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Nnamdi','Ogundu','','10 danube street, maitama','','FCT','900001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2514.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.97.219','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36','en-US,en;q=0.9','2018-06-25 16:41:01','2018-06-25 16:41:15'),(77,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2501.5000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.86.48','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0','en-US,en;q=0.5','2018-06-27 17:36:43','2018-06-27 17:36:43'),(78,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2501.5000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.86.48','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0','en-US,en;q=0.5','2018-06-27 17:36:55','2018-06-27 17:37:03'),(79,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2502.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'169.159.102.235','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','en-US,en;q=0.9','2018-06-28 08:13:55','2018-06-28 08:13:55'),(80,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2502.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'169.159.102.235','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','en-US,en;q=0.9','2018-06-28 08:14:00','2018-06-28 08:14:04'),(81,0,'INV-2018-00',0,'Hazye','http://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2505.0000,1,0,0.0000,0,'',1,4,'NGN',1.00000000,'169.159.102.235','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','en-US,en;q=0.9','2018-06-28 08:35:00','2018-06-28 08:35:05'),(82,0,'INV-2018-00',0,'Hazye','https://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Cash On Delivery','cod','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',3507.0000,3,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.88.54','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','en-US,en;q=0.9','2018-06-28 12:52:54','2018-06-28 12:55:19'),(83,0,'INV-2018-00',0,'Hazye','https://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',2101.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.88.54','','Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) CriOS/67.0.3396.87 Mobile/15F79 Safari/604.1','en-us','2018-06-28 12:59:59','2018-06-28 12:59:59'),(84,0,'INV-2018-00',0,'Hazye','https://hazye.ng/',5,1,'Anthony','Okechukwu','kokoshags@yahoo.co.uk','02089541259','','','Anthony','Okechukwu','','No 1 Erie Crescent','Maitama','Abuja','N/A','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Anthony','Okechukwu','','No 1 Erie Crescent','Maitama','Abuja','N/A','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1503.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.66.50.185','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','en-US,en;q=0.9','2018-06-29 08:42:36','2018-06-29 08:42:36'),(85,0,'INV-2018-00',0,'Hazye','https://hazye.ng/',5,1,'Anthony','Okechukwu','kokoshags@yahoo.co.uk','02089541259','','','Anthony','Okechukwu','','No 1 Erie Crescent','Maitama','Abuja','N/A','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Anthony','Okechukwu','','No 1 Erie Crescent','Maitama','Abuja','N/A','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',4.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.66.50.185','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','en-US,en;q=0.9','2018-06-29 08:55:25','2018-06-29 08:55:25'),(86,0,'INV-2018-00',0,'Hazye','https://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',5.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.89.28','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','en-US,en;q=0.9','2018-06-29 08:57:28','2018-06-29 08:57:28'),(87,0,'INV-2018-00',0,'Hazye','https://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',5.0000,7,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.118.89.28','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','en-US,en;q=0.9','2018-06-29 08:58:48','2018-06-29 09:01:20'),(88,0,'INV-2018-00',0,'Hazye','https://hazye.ng/',5,1,'Anthony','Okechukwu','kokoshags@yahoo.co.uk','02089541259','','','Anthony','Okechukwu','','No 1 Erie Crescent','Maitama','Abuja','N/A','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Anthony','Okechukwu','','No 1 Erie Crescent','Maitama','Abuja','N/A','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',4.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.66.50.185','','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','en-US,en;q=0.9','2018-06-29 09:05:22','2018-06-29 09:06:47'),(91,0,'INV-2018-00',0,'Hazye','https://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',3500.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'154.120.120.159','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','en-US,en;q=0.9','2018-07-02 07:35:02','2018-07-02 07:35:02'),(92,0,'INV-2018-00',0,'Hazye','https://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',5500.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.16.251','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','en-US,en;q=0.9','2018-07-03 09:35:48','2018-07-03 09:35:48'),(93,0,'INV-2018-00',0,'Hazye','https://hazye.ng/',1,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','','','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Emeka','Kanikwu','','Wuse','','Abuja','90001','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',1503.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.16.251','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36','en-US,en;q=0.9','2018-07-03 09:36:55','2018-07-03 09:38:10'),(94,0,'INV-2018-00',0,'Hazye','https://hazye.ng/',0,1,'kingsonly','achumie','kingsonly13c@gmail.com','08083430800','','[]','kingsonly','achumie','','ncce quaters mabushi abuja','','abuja','9000001','United Kingdom',222,'Bridgend',3521,'','[]','Paystack','paystack','kingsonly','achumie','','ncce quaters mabushi abuja','','abuja','9000001','United Kingdom',222,'Bridgend',3521,'','[]','Flat Shipping Rate','flat.flat','',4302.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'41.217.16.251','','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:61.0) Gecko/20100101 Firefox/61.0','en-US,en;q=0.5','2018-07-03 09:37:12','2018-07-03 10:11:34'),(96,0,'INV-2018-00',0,'Hazye','https://hazye.ng/',7,1,'Anthony','Okechukwu','kokoshaggy@gmail.com','08064022883','','','Anthony','Okechukwu','Hazye first customer ltd','No 10 Danube Close','Off IBB Boulevard, Maitama','Abuja','','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Paystack','paystack','Anthony','Okechukwu','Hazye first customer ltd','No 10 Danube Close','Off IBB Boulevard, Maitama','Abuja','','Nigeria',156,'Abuja Federal Capital Territory',2389,'','[]','Flat Shipping Rate','flat.flat','',4759.0000,0,0,0.0000,0,'',1,4,'NGN',1.00000000,'160.152.59.236','','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0','en-US,en;q=0.5','2018-07-04 03:28:42','2018-07-04 03:28:42');
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
INSERT INTO `oc_order_history` VALUES (1,1,1,0,'','2018-04-27 13:26:09'),(2,2,1,0,'','2018-05-11 16:44:30'),(3,2,1,0,'','2018-05-11 16:44:51'),(4,3,2,0,'','2018-05-22 12:56:38'),(5,5,2,0,'','2018-05-24 13:14:37'),(6,6,2,0,'','2018-05-24 13:22:20'),(7,7,2,0,'','2018-05-24 13:25:14'),(8,7,0,0,'','2018-05-24 13:35:02'),(9,7,3,0,'','2018-05-24 13:35:03'),(10,7,0,0,'','2018-05-24 13:35:12'),(11,7,3,0,'','2018-05-24 13:35:12'),(12,8,0,0,'','2018-05-25 14:26:53'),(13,9,2,0,'','2018-05-25 16:54:27'),(14,10,2,0,'','2018-05-28 10:14:11'),(15,10,0,0,'','2018-05-28 10:17:07'),(16,10,3,0,'','2018-05-28 10:17:07'),(17,14,0,0,'','2018-05-30 12:24:32'),(18,15,0,0,'','2018-05-30 12:36:27'),(19,16,2,0,'','2018-06-05 14:28:20'),(20,16,3,1,'','2018-06-05 15:11:20'),(21,17,2,0,'','2018-06-08 19:13:12'),(22,18,0,0,'','2018-06-09 09:51:11'),(23,19,2,0,'','2018-06-11 14:59:47'),(24,20,2,0,'','2018-06-11 15:12:18'),(25,21,0,0,'','2018-06-12 13:14:46'),(26,28,2,0,'','2018-06-13 16:34:21'),(27,29,2,0,'','2018-06-14 08:49:31'),(28,31,1,0,'','2018-06-14 09:44:27'),(29,32,1,0,'','2018-06-14 09:56:21'),(30,33,1,0,'','2018-06-14 10:12:47'),(31,34,1,0,'','2018-06-14 10:27:17'),(32,35,1,0,'','2018-06-14 10:40:48'),(33,36,1,0,'','2018-06-14 14:39:18'),(34,37,1,0,'','2018-06-14 14:45:47'),(35,39,1,0,'','2018-06-14 14:47:28'),(36,40,1,0,'','2018-06-18 10:07:31'),(37,41,1,0,'','2018-06-18 10:10:35'),(38,42,1,0,'','2018-06-18 10:18:01'),(39,43,1,0,'','2018-06-18 10:22:58'),(40,44,1,0,'','2018-06-18 10:25:15'),(41,45,1,0,'','2018-06-18 10:28:03'),(42,46,1,0,'','2018-06-19 08:40:08'),(43,47,1,0,'','2018-06-19 09:31:53'),(44,48,1,0,'','2018-06-19 09:36:37'),(45,48,1,0,'','2018-06-19 09:38:31'),(46,50,1,0,'','2018-06-19 09:40:13'),(47,54,1,0,'','2018-06-19 10:39:54'),(48,55,1,0,'','2018-06-19 10:54:42'),(49,56,1,0,'','2018-06-19 13:16:52'),(50,57,1,0,'','2018-06-19 13:20:14'),(51,58,1,0,'','2018-06-19 13:22:29'),(52,59,1,0,'','2018-06-19 16:52:59'),(53,59,0,0,'','2018-06-20 17:44:08'),(54,59,3,0,'','2018-06-20 17:44:10'),(55,58,3,0,'','2018-06-20 22:36:31'),(56,58,0,0,'','2018-06-20 22:37:22'),(57,58,3,0,'','2018-06-20 22:37:24'),(58,60,1,0,'','2018-06-20 22:38:53'),(59,61,1,0,'','2018-06-22 08:54:49'),(60,62,1,0,'','2018-06-22 09:26:29'),(61,63,1,0,'','2018-06-22 09:56:11'),(62,64,1,0,'','2018-06-25 13:03:22'),(63,65,1,0,'','2018-06-25 13:11:54'),(64,66,1,0,'','2018-06-25 13:15:40'),(65,67,1,0,'','2018-06-25 14:10:43'),(66,68,1,0,'','2018-06-25 14:45:40'),(67,69,1,0,'','2018-06-25 14:50:57'),(68,70,1,0,'','2018-06-25 14:59:16'),(69,71,1,0,'','2018-06-25 15:35:50'),(70,72,1,0,'','2018-06-25 15:47:29'),(71,73,1,0,'','2018-06-25 15:55:08'),(72,74,1,0,'','2018-06-25 16:11:45'),(73,75,1,0,'','2018-06-25 16:35:34'),(74,76,1,0,'','2018-06-25 16:41:15'),(75,78,1,0,'','2018-06-27 17:37:03'),(76,80,1,0,'','2018-06-28 08:14:04'),(77,81,1,0,'','2018-06-28 08:35:05'),(78,82,1,0,'','2018-06-28 12:52:58'),(79,82,3,1,'','2018-06-28 12:55:19'),(80,87,7,0,'','2018-06-29 09:01:20'),(81,88,0,0,'','2018-06-29 09:06:47'),(84,93,0,0,'','2018-07-03 09:38:10'),(85,94,0,0,'','2018-07-03 10:11:34');
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
INSERT INTO `oc_order_product` VALUES (1,1,52,'T-Shirt','TSHIRTDEMO0',1,27.0000,27.0000,0.0000,0),(2,2,86,'Mug','TSHIRTDEMO3',1,7.0000,7.0000,0.0000,0),(3,2,86,'Mug','TSHIRTDEMO3',1,7.0000,7.0000,0.0000,0),(4,3,82,'test1','test101',1,0.0000,0.0000,0.0000,0),(5,4,84,'Phone case','TSHIRTDEMO1',1,9.0000,9.0000,0.0000,0),(6,5,84,'Phone case','TSHIRTDEMO1',1,9.0000,9.0000,0.0000,0),(7,6,86,'Mug','TSHIRTDEMO3',1,7.0000,7.0000,0.0000,0),(10,7,86,'Mug','TSHIRTDEMO3',1,6.0000,6.0000,0.0000,0),(11,8,82,'Plain T-shirt ','test101',1,1015.0000,1015.0000,0.0000,0),(12,8,84,'Phone case','TSHIRTDEMO1',1,8.0000,8.0000,0.0000,0),(13,9,82,'Plain T-shirt ','test101',1,1015.0000,1015.0000,0.0000,0),(14,9,84,'Phone case','TSHIRTDEMO1',1,8.0000,8.0000,0.0000,0),(16,10,82,'Plain T-shirt ','test101',1,1000.0000,1000.0000,0.0000,0),(17,11,82,'Plain T-shirt ','test101',1,1000.0000,1000.0000,0.0000,0),(18,12,82,'Plain T-shirt ','test101',1,1000.0000,1000.0000,0.0000,0),(19,13,82,'Plain T-shirt ','test101',1,1000.0000,1000.0000,0.0000,0),(20,14,82,'Plain T-shirt ','test101',35,1474.3286,51601.5000,0.0000,0),(21,14,82,'Plain T-shirt ','test101',13,1377.9154,17912.9000,0.0000,0),(22,15,82,'Plain T-shirt ','test101',13,1377.9154,17912.9000,0.0000,0),(23,16,83,'T-Shirt','TSHIRTDEMO0',2,32.0000,64.0000,0.0000,0),(24,17,82,'Plain T-shirt ','test101',1,1015.0000,1015.0000,0.0000,0),(25,17,83,'T-Shirt','TSHIRTDEMO0',1,12.0000,12.0000,0.0000,0),(26,18,88,'canvas','TSHIRTDEMO5',2,15.0000,30.0000,0.0000,0),(27,19,85,'Bag','TSHIRTDEMO2',1,7.0000,7.0000,0.0000,0),(28,19,86,'Mug','TSHIRTDEMO3',1,7.0000,7.0000,0.0000,0),(29,20,85,'Bag','TSHIRTDEMO2',1,9.0000,9.0000,0.0000,0),(30,20,85,'Bag','TSHIRTDEMO2',1,9.0000,9.0000,0.0000,0),(31,21,82,'Plain T-shirt ','test101',1,1000.0000,1000.0000,0.0000,0),(32,22,82,'Plain T-shirt ','test101',1,1000.0000,1000.0000,0.0000,0),(33,22,83,'T-Shirt','TSHIRTDEMO0',1,12.0000,12.0000,0.0000,0),(34,23,82,'Plain T-shirt ','test101',2,1000.0000,2000.0000,0.0000,0),(35,24,82,'Plain T-shirt ','test101',1,1000.0000,1000.0000,0.0000,0),(36,24,83,'T-Shirt','TSHIRTDEMO0',1,12.0000,12.0000,0.0000,0),(37,24,83,'T-Shirt','TSHIRTDEMO0',1,12.0000,12.0000,0.0000,0),(38,25,82,'Plain T-shirt ','test101',1,1000.0000,1000.0000,0.0000,0),(39,25,83,'T-Shirt','TSHIRTDEMO0',1,12.0000,12.0000,0.0000,0),(40,26,83,'T-Shirt','TSHIRTDEMO0',1,12.0000,12.0000,0.0000,0),(41,27,83,'T-Shirt','TSHIRTDEMO0',1,12.0000,12.0000,0.0000,0),(42,28,83,'T-Shirt','TSHIRTDEMO0',1,12.0000,12.0000,0.0000,0),(43,29,83,'T-Shirt','TSHIRTDEMO0',1,13.5000,13.5000,0.0000,0),(44,30,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(45,31,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(46,32,86,'Mug','TSHIRTDEMO3',1,7.0000,7.0000,0.0000,0),(47,33,83,'T-Shirt','TSHIRTDEMO0',1,15.0000,15.0000,0.0000,0),(48,34,83,'T-Shirt','TSHIRTDEMO0',1,15.0000,15.0000,0.0000,0),(49,35,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(50,36,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(51,36,88,'canvas','TSHIRTDEMO5',1,13.0000,13.0000,0.0000,0),(52,37,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(53,37,88,'canvas','TSHIRTDEMO5',1,13.0000,13.0000,0.0000,0),(54,38,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(55,38,88,'canvas','TSHIRTDEMO5',1,13.0000,13.0000,0.0000,0),(56,39,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(57,39,88,'canvas','TSHIRTDEMO5',1,13.0000,13.0000,0.0000,0),(58,40,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(59,41,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(60,42,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(61,43,83,'T-Shirt','TSHIRTDEMO0',1,12.0000,12.0000,0.0000,0),(62,44,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(63,45,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(64,46,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(65,47,83,'T-Shirt','TSHIRTDEMO0',1,13.0000,13.0000,0.0000,0),(66,48,86,'Mug','TSHIRTDEMO3',1,7.0000,7.0000,0.0000,0),(67,49,86,'Mug','TSHIRTDEMO3',1,7.0000,7.0000,0.0000,0),(68,50,86,'Mug','TSHIRTDEMO3',1,7.0000,7.0000,0.0000,0),(69,51,85,'Bag','TSHIRTDEMO2',1,8.0000,8.0000,0.0000,0),(70,52,85,'Bag','TSHIRTDEMO2',1,8.0000,8.0000,0.0000,0),(71,53,85,'Bag','TSHIRTDEMO2',1,8.0000,8.0000,0.0000,0),(72,54,85,'Bag','TSHIRTDEMO2',1,8.0000,8.0000,0.0000,0),(73,55,86,'Mug','TSHIRTDEMO3',1,7.0000,7.0000,0.0000,0),(74,56,84,'Phone case','TSHIRTDEMO1',1,9.0000,9.0000,0.0000,0),(75,57,85,'Bag','TSHIRTDEMO2',1,8.0000,8.0000,0.0000,0),(79,58,87,'Cards','TSHIRTDEMO4',1,3.0000,3.0000,0.0000,0),(78,59,82,'Plain T-shirt ','test101',1,1000.0000,1000.0000,0.0000,0),(80,60,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(81,61,82,'Plain T-shirt ','test101',3,1000.0000,3000.0000,0.0000,0),(82,61,87,'Cards','TSHIRTDEMO4',1,3.0000,3.0000,0.0000,0),(83,62,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(84,63,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(85,63,82,'Plain T-shirt ','test101',1,1013.0000,1013.0000,0.0000,0),(86,64,93,'Custom Caps','CAPS',1,1001.0000,1001.0000,0.0000,0),(87,65,86,'Mug','MUGS',1,9.0000,9.0000,0.0000,0),(88,66,85,'Bag','CANVASBAG',1,1002.0000,1002.0000,0.0000,0),(89,67,82,'Plain T-shirt ','test101',1,1014.0000,1014.0000,0.0000,0),(90,68,92,'Notepad','NOTEPADS',1,1001.0000,1001.0000,0.0000,0),(91,69,82,'Plain T-shirt ','test101',1,1014.0000,1014.0000,0.0000,0),(92,70,83,'T-Shirt','TSHIRTDEMO0',1,14.0000,14.0000,0.0000,0),(93,71,82,'Plain T-shirt ','test101',1,1016.0000,1016.0000,0.0000,0),(94,72,86,'Mug','MUGS',1,7.0000,7.0000,0.0000,0),(95,73,85,'Bag','CANVASBAG',1,1002.0000,1002.0000,0.0000,0),(96,74,82,'Plain T-shirt ','test101',1,1016.0000,1016.0000,0.0000,0),(97,75,83,'T-Shirt','TSHIRTDEMO0',1,14.0000,14.0000,0.0000,0),(98,76,82,'Plain T-shirt ','test101',1,1014.0000,1014.0000,0.0000,0),(99,77,93,'Custom Caps','CAPS',1,1001.5000,1001.5000,0.0000,0),(100,78,93,'Custom Caps','CAPS',1,1001.5000,1001.5000,0.0000,0),(101,79,97,'T-shirts','TShirt',1,1002.0000,1002.0000,0.0000,0),(102,80,97,'T-shirts','TShirt',1,1002.0000,1002.0000,0.0000,0),(103,81,97,'T-shirts','TShirt',1,1005.0000,1005.0000,0.0000,0),(104,82,97,'T-shirts','TShirt',1,1005.0000,1005.0000,0.0000,0),(105,82,97,'T-shirts','TShirt',1,1002.0000,1002.0000,0.0000,0),(106,83,109,'Key Chain','Key Chain',1,601.0000,601.0000,0.0000,0),(107,84,87,'Cards','TSHIRTDEMO4',1,3.0000,3.0000,0.0000,0),(108,85,87,'Cards','TSHIRTDEMO4',1,3.0000,3.0000,0.0000,0),(109,86,87,'Cards','TSHIRTDEMO4',1,4.0000,4.0000,0.0000,0),(110,87,87,'Cards','TSHIRTDEMO4',1,4.0000,4.0000,0.0000,0),(111,88,87,'Cards','TSHIRTDEMO4',1,3.0000,3.0000,0.0000,0),(114,91,101,'Collar T-shirt','Collar-Tshirt',1,2000.0000,2000.0000,0.0000,0),(115,92,101,'Collar T-shirt','Collar-Tshirt',2,2000.0000,4000.0000,0.0000,0),(116,93,87,'Cards','TSHIRTDEMO4',1,3.0000,3.0000,0.0000,0),(117,94,97,'T-shirts','TShirt',1,2500.0000,2500.0000,0.0000,0),(120,96,97,'T-shirts','TShirt',1,3259.0000,3259.0000,0.0000,0);
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_shipment`
--

DROP TABLE IF EXISTS `oc_order_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_shipment`
--

LOCK TABLES `oc_order_shipment` WRITE;
/*!40000 ALTER TABLE `oc_order_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (2,1,'Processing'),(3,1,'Shipped'),(7,1,'Canceled'),(5,1,'Complete'),(8,1,'Denied'),(9,1,'Canceled Reversal'),(10,1,'Failed'),(11,1,'Refunded'),(12,1,'Reversed'),(13,1,'Chargeback'),(1,1,'Pending'),(16,1,'Voided'),(15,1,'Processed'),(14,1,'Expired');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
INSERT INTO `oc_order_total` VALUES (1,1,'sub_total','Sub-Total',27.0000,1),(2,1,'shipping','Flat Shipping Rate',5.0000,3),(3,1,'total','Total',32.0000,9),(4,2,'sub_total','Sub-Total',14.0000,1),(5,2,'shipping','Flat Shipping Rate',5.0000,3),(6,2,'tax','Eco Tax (-2.00)',2.0000,5),(7,2,'tax','VAT (20%)',1.0000,5),(8,2,'total','Total',22.0000,9),(9,3,'sub_total','Sub-Total',0.0000,1),(10,3,'shipping','Flat Shipping Rate',5.0000,3),(11,3,'total','Total',5.0000,9),(12,4,'sub_total','Sub-Total',9.0000,1),(13,4,'shipping','Flat Shipping Rate',5.0000,3),(14,4,'total','Total',14.0000,9),(15,5,'sub_total','Sub-Total',9.0000,1),(16,5,'shipping','Flat Shipping Rate',5.0000,3),(17,5,'total','Total',14.0000,9),(18,6,'sub_total','Sub-Total',7.0000,1),(19,6,'shipping','Flat Shipping Rate',5.0000,3),(20,6,'total','Total',12.0000,9),(29,7,'total','Total',11.0000,9),(28,7,'shipping','Flat Shipping Rate',5.0000,3),(27,7,'sub_total','Sub-Total',6.0000,1),(30,8,'sub_total','Sub-Total',1023.0000,1),(31,8,'shipping','Flat Shipping Rate',1500.0000,3),(32,8,'total','Total',2523.0000,9),(33,9,'sub_total','Sub-Total',1023.0000,1),(34,9,'shipping','Flat Shipping Rate',1500.0000,3),(35,9,'total','Total',2523.0000,9),(40,10,'shipping','Flat Shipping Rate',1500.0000,3),(39,10,'sub_total','Sub-Total',1000.0000,1),(41,10,'total','Total',2500.0000,9),(42,11,'sub_total','Sub-Total',1000.0000,1),(43,11,'shipping','Flat Shipping Rate',1500.0000,3),(44,11,'total','Total',2500.0000,9),(45,12,'sub_total','Sub-Total',1000.0000,1),(46,12,'shipping','Flat Shipping Rate',1500.0000,3),(47,12,'total','Total',2500.0000,9),(48,13,'sub_total','Sub-Total',1000.0000,1),(49,13,'shipping','Flat Shipping Rate',1500.0000,3),(50,13,'total','Total',2500.0000,9),(51,14,'sub_total','Sub-Total',69514.4000,1),(52,14,'shipping','Flat Shipping Rate',1500.0000,3),(53,14,'total','Total',71014.4000,9),(54,15,'sub_total','Sub-Total',17912.9000,1),(55,15,'shipping','Flat Shipping Rate',1500.0000,3),(56,15,'total','Total',19412.9000,9),(57,16,'sub_total','Sub-Total',64.0000,1),(58,16,'shipping','Flat Shipping Rate',1500.0000,3),(59,16,'total','Total',1564.0000,9),(60,17,'sub_total','Sub-Total',1027.0000,1),(61,17,'shipping','Flat Shipping Rate',1500.0000,3),(62,17,'total','Total',2527.0000,9),(63,18,'sub_total','Sub-Total',30.0000,1),(64,18,'shipping','Flat Shipping Rate',1500.0000,3),(65,18,'total','Total',1530.0000,9),(66,19,'sub_total','Sub-Total',14.0000,1),(67,19,'shipping','Flat Shipping Rate',1500.0000,3),(68,19,'total','Total',1514.0000,9),(69,20,'sub_total','Sub-Total',18.0000,1),(70,20,'shipping','Flat Shipping Rate',1500.0000,3),(71,20,'total','Total',1518.0000,9),(72,21,'sub_total','Sub-Total',1000.0000,1),(73,21,'shipping','Flat Shipping Rate',1500.0000,3),(74,21,'total','Total',2500.0000,9),(75,22,'sub_total','Sub-Total',1012.0000,1),(76,22,'shipping','Flat Shipping Rate',1500.0000,3),(77,22,'total','Total',2512.0000,9),(78,23,'sub_total','Sub-Total',2000.0000,1),(79,23,'shipping','Flat Shipping Rate',1500.0000,3),(80,23,'total','Total',3500.0000,9),(81,24,'sub_total','Sub-Total',1024.0000,1),(82,24,'shipping','Flat Shipping Rate',1500.0000,3),(83,24,'total','Total',2524.0000,9),(84,25,'sub_total','Sub-Total',1012.0000,1),(85,25,'shipping','Flat Shipping Rate',1500.0000,3),(86,25,'total','Total',2512.0000,9),(87,26,'sub_total','Sub-Total',12.0000,1),(88,26,'shipping','Flat Shipping Rate',1500.0000,3),(89,26,'total','Total',1512.0000,9),(90,27,'sub_total','Sub-Total',12.0000,1),(91,27,'shipping','Flat Shipping Rate',1500.0000,3),(92,27,'total','Total',1512.0000,9),(93,28,'sub_total','Sub-Total',12.0000,1),(94,28,'shipping','Flat Shipping Rate',1500.0000,3),(95,28,'total','Total',1512.0000,9),(96,29,'sub_total','Sub-Total',13.5000,1),(97,29,'shipping','Flat Shipping Rate',1500.0000,3),(98,29,'total','Total',1513.5000,9),(99,30,'sub_total','Sub-Total',1013.0000,1),(100,30,'shipping','Flat Shipping Rate',1500.0000,3),(101,30,'total','Total',2513.0000,9),(102,31,'sub_total','Sub-Total',1013.0000,1),(103,31,'shipping','Flat Shipping Rate',1500.0000,3),(104,31,'total','Total',2513.0000,9),(105,32,'sub_total','Sub-Total',7.0000,1),(106,32,'shipping','Flat Shipping Rate',1500.0000,3),(107,32,'total','Total',1507.0000,9),(108,33,'sub_total','Sub-Total',15.0000,1),(109,33,'shipping','Flat Shipping Rate',1500.0000,3),(110,33,'total','Total',1515.0000,9),(111,34,'sub_total','Sub-Total',15.0000,1),(112,34,'shipping','Flat Shipping Rate',1500.0000,3),(113,34,'total','Total',1515.0000,9),(114,35,'sub_total','Sub-Total',1013.0000,1),(115,35,'shipping','Flat Shipping Rate',1500.0000,3),(116,35,'total','Total',2513.0000,9),(117,36,'sub_total','Sub-Total',1026.0000,1),(118,36,'shipping','Flat Shipping Rate',1500.0000,3),(119,36,'total','Total',2526.0000,9),(120,37,'sub_total','Sub-Total',1026.0000,1),(121,37,'shipping','Flat Shipping Rate',1500.0000,3),(122,37,'total','Total',2526.0000,9),(123,38,'sub_total','Sub-Total',1026.0000,1),(124,38,'shipping','Flat Shipping Rate',1500.0000,3),(125,38,'total','Total',2526.0000,9),(126,39,'sub_total','Sub-Total',1026.0000,1),(127,39,'shipping','Flat Shipping Rate',1500.0000,3),(128,39,'total','Total',2526.0000,9),(129,40,'sub_total','Sub-Total',1013.0000,1),(130,40,'shipping','Flat Shipping Rate',1500.0000,3),(131,40,'total','Total',2513.0000,9),(132,41,'sub_total','Sub-Total',1013.0000,1),(133,41,'shipping','Flat Shipping Rate',1500.0000,3),(134,41,'total','Total',2513.0000,9),(135,42,'sub_total','Sub-Total',1013.0000,1),(136,42,'shipping','Flat Shipping Rate',1500.0000,3),(137,42,'total','Total',2513.0000,9),(138,43,'sub_total','Sub-Total',12.0000,1),(139,43,'shipping','Flat Shipping Rate',1500.0000,3),(140,43,'total','Total',1512.0000,9),(141,44,'sub_total','Sub-Total',1013.0000,1),(142,44,'shipping','Flat Shipping Rate',1500.0000,3),(143,44,'total','Total',2513.0000,9),(144,45,'sub_total','Sub-Total',1013.0000,1),(145,45,'shipping','Flat Shipping Rate',1500.0000,3),(146,45,'total','Total',2513.0000,9),(147,46,'sub_total','Sub-Total',1013.0000,1),(148,46,'shipping','Flat Shipping Rate',1500.0000,3),(149,46,'total','Total',2513.0000,9),(150,47,'sub_total','Sub-Total',13.0000,1),(151,47,'shipping','Flat Shipping Rate',1500.0000,3),(152,47,'total','Total',1513.0000,9),(153,48,'sub_total','Sub-Total',7.0000,1),(154,48,'shipping','Flat Shipping Rate',1500.0000,3),(155,48,'total','Total',1507.0000,9),(156,49,'sub_total','Sub-Total',7.0000,1),(157,49,'shipping','Flat Shipping Rate',1500.0000,3),(158,49,'total','Total',1507.0000,9),(159,50,'sub_total','Sub-Total',7.0000,1),(160,50,'shipping','Flat Shipping Rate',1500.0000,3),(161,50,'total','Total',1507.0000,9),(162,51,'sub_total','Sub-Total',8.0000,1),(163,51,'shipping','Flat Shipping Rate',1500.0000,3),(164,51,'total','Total',1508.0000,9),(165,52,'sub_total','Sub-Total',8.0000,1),(166,52,'shipping','Flat Shipping Rate',1500.0000,3),(167,52,'total','Total',1508.0000,9),(168,53,'sub_total','Sub-Total',8.0000,1),(169,53,'shipping','Flat Shipping Rate',1500.0000,3),(170,53,'total','Total',1508.0000,9),(171,54,'sub_total','Sub-Total',8.0000,1),(172,54,'shipping','Flat Shipping Rate',1500.0000,3),(173,54,'total','Total',1508.0000,9),(174,55,'sub_total','Sub-Total',7.0000,1),(175,55,'shipping','Flat Shipping Rate',1500.0000,3),(176,55,'total','Total',1507.0000,9),(177,56,'sub_total','Sub-Total',9.0000,1),(178,56,'shipping','Flat Shipping Rate',1500.0000,3),(179,56,'total','Total',1509.0000,9),(180,57,'sub_total','Sub-Total',8.0000,1),(181,57,'shipping','Flat Shipping Rate',1500.0000,3),(182,57,'total','Total',1508.0000,9),(193,58,'shipping','Flat Shipping Rate',1500.0000,3),(192,58,'sub_total','Sub-Total',3.0000,1),(190,59,'shipping','Flat Shipping Rate',1500.0000,3),(189,59,'sub_total','Sub-Total',1000.0000,1),(191,59,'total','Total',2500.0000,9),(194,58,'total','Total',1503.0000,9),(195,60,'sub_total','Sub-Total',1013.0000,1),(196,60,'shipping','Flat Shipping Rate',1500.0000,3),(197,60,'total','Total',2513.0000,9),(198,61,'sub_total','Sub-Total',3003.0000,1),(199,61,'shipping','Flat Shipping Rate',1500.0000,3),(200,61,'total','Total',4503.0000,9),(201,62,'sub_total','Sub-Total',1013.0000,1),(202,62,'shipping','Flat Shipping Rate',1500.0000,3),(203,62,'total','Total',2513.0000,9),(204,63,'sub_total','Sub-Total',2026.0000,1),(205,63,'shipping','Flat Shipping Rate',1500.0000,3),(206,63,'total','Total',3526.0000,9),(207,64,'sub_total','Sub-Total',1001.0000,1),(208,64,'shipping','Flat Shipping Rate',1500.0000,3),(209,64,'total','Total',2501.0000,9),(210,65,'sub_total','Sub-Total',9.0000,1),(211,65,'shipping','Flat Shipping Rate',1500.0000,3),(212,65,'total','Total',1509.0000,9),(213,66,'sub_total','Sub-Total',1002.0000,1),(214,66,'shipping','Flat Shipping Rate',1500.0000,3),(215,66,'total','Total',2502.0000,9),(216,67,'sub_total','Sub-Total',1014.0000,1),(217,67,'shipping','Flat Shipping Rate',1500.0000,3),(218,67,'total','Total',2514.0000,9),(219,68,'sub_total','Sub-Total',1001.0000,1),(220,68,'shipping','Flat Shipping Rate',1500.0000,3),(221,68,'total','Total',2501.0000,9),(222,69,'sub_total','Sub-Total',1014.0000,1),(223,69,'shipping','Flat Shipping Rate',1500.0000,3),(224,69,'total','Total',2514.0000,9),(225,70,'sub_total','Sub-Total',14.0000,1),(226,70,'shipping','Flat Shipping Rate',1500.0000,3),(227,70,'total','Total',1514.0000,9),(228,71,'sub_total','Sub-Total',1016.0000,1),(229,71,'shipping','Flat Shipping Rate',1500.0000,3),(230,71,'total','Total',2516.0000,9),(231,72,'sub_total','Sub-Total',7.0000,1),(232,72,'shipping','Flat Shipping Rate',1500.0000,3),(233,72,'total','Total',1507.0000,9),(234,73,'sub_total','Sub-Total',1002.0000,1),(235,73,'shipping','Flat Shipping Rate',1500.0000,3),(236,73,'total','Total',2502.0000,9),(237,74,'sub_total','Sub-Total',1016.0000,1),(238,74,'shipping','Flat Shipping Rate',1500.0000,3),(239,74,'total','Total',2516.0000,9),(240,75,'sub_total','Sub-Total',14.0000,1),(241,75,'shipping','Flat Shipping Rate',1500.0000,3),(242,75,'total','Total',1514.0000,9),(243,76,'sub_total','Sub-Total',1014.0000,1),(244,76,'shipping','Flat Shipping Rate',1500.0000,3),(245,76,'total','Total',2514.0000,9),(246,77,'sub_total','Sub-Total',1001.5000,1),(247,77,'shipping','Flat Shipping Rate',1500.0000,3),(248,77,'total','Total',2501.5000,9),(249,78,'sub_total','Sub-Total',1001.5000,1),(250,78,'shipping','Flat Shipping Rate',1500.0000,3),(251,78,'total','Total',2501.5000,9),(252,79,'sub_total','Sub-Total',1002.0000,1),(253,79,'shipping','Flat Shipping Rate',1500.0000,3),(254,79,'total','Total',2502.0000,9),(255,80,'sub_total','Sub-Total',1002.0000,1),(256,80,'shipping','Flat Shipping Rate',1500.0000,3),(257,80,'total','Total',2502.0000,9),(258,81,'sub_total','Sub-Total',1005.0000,1),(259,81,'shipping','Flat Shipping Rate',1500.0000,3),(260,81,'total','Total',2505.0000,9),(261,82,'sub_total','Sub-Total',2007.0000,1),(262,82,'shipping','Flat Shipping Rate',1500.0000,3),(263,82,'total','Total',3507.0000,9),(264,83,'sub_total','Sub-Total',601.0000,1),(265,83,'shipping','Flat Shipping Rate',1500.0000,3),(266,83,'total','Total',2101.0000,9),(267,84,'sub_total','Sub-Total',3.0000,1),(268,84,'shipping','Flat Shipping Rate',1500.0000,3),(269,84,'total','Total',1503.0000,9),(270,85,'sub_total','Sub-Total',3.0000,1),(271,85,'shipping','Flat Shipping Rate',1.0000,3),(272,85,'total','Total',4.0000,9),(273,86,'sub_total','Sub-Total',4.0000,1),(274,86,'shipping','Flat Shipping Rate',1.0000,3),(275,86,'total','Total',5.0000,9),(276,87,'sub_total','Sub-Total',4.0000,1),(277,87,'shipping','Flat Shipping Rate',1.0000,3),(278,87,'total','Total',5.0000,9),(279,88,'sub_total','Sub-Total',3.0000,1),(280,88,'shipping','Flat Shipping Rate',1.0000,3),(281,88,'total','Total',4.0000,9),(288,91,'sub_total','Sub-Total',2000.0000,1),(289,91,'shipping','Flat Shipping Rate',1500.0000,3),(290,91,'total','Total',3500.0000,9),(291,92,'sub_total','Sub-Total',4000.0000,1),(292,92,'shipping','Flat Shipping Rate',1500.0000,3),(293,92,'total','Total',5500.0000,9),(294,93,'sub_total','Sub-Total',3.0000,1),(295,93,'shipping','Flat Shipping Rate',1500.0000,3),(296,93,'total','Total',1503.0000,9),(297,94,'sub_total','Sub-Total',2500.0000,1),(298,94,'shipping','Flat Shipping Rate',1500.0000,3),(299,94,'tax','Eco Tax (-2.00)',2.0000,5),(300,94,'tax','VAT (20%)',300.0000,5),(301,94,'total','Total',4302.0000,9),(305,96,'sub_total','Sub-Total',3259.0000,1),(306,96,'shipping','Flat Shipping Rate',1500.0000,3),(307,96,'total','Total',4759.0000,9);
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `design_product_id` varchar(255) NOT NULL DEFAULT '',
  `design_product_title_img` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (133,'Drink responsibly','','','','','','','',1000,6,'catalog/tshirt/drink.png',0,1,2000.0000,0,0,'2018-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,31,'2018-08-06 10:47:55','2018-08-16 16:45:08','82','Drink responsibly::https://hazye.ng///image/catalog/tshirt/drink.png'),(135,'designed female Tshirt','','','','','','','',1000,6,'catalog/tshirt/steph-image.PNG',0,1,2000.0000,0,0,'2018-08-07',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2018-08-07 14:27:32','2018-08-17 09:17:49','c4ca4238a0b923820dcc509a6f75849b:1534497375217620123:82:FF0000','V-neck Female Design::https://hazye.ng///image/catalog/tshirt/girl-red.png::0'),(129,'Designed Tshirt','','','','','','','',1,6,'catalog/tshirt/hazye1.PNG',0,1,2000.0000,0,0,'2018-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2018-08-03 17:48:07','2018-08-03 17:53:21','c4ca4238a0b923820dcc509a6f75849b:15322663041909701938:82:000000','::undefined::0'),(84,'TSHIRTDEMO1','phone01','','','','','','',9998,6,'catalog/demo_tshirtecommerce_thumb15247590605ae1fa14ac819.png',0,1,4500.0000,0,0,'2018-05-08',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,17,'2018-05-08 11:24:12','2018-07-03 11:44:56','74','Phone case::https://hazye.ng///image/catalog/demo_tshirtecommerce_thumb15247590605ae1fa14ac819.png'),(85,'CANVASBAG','bag01','','','','','','',9995,6,'catalog/Bag/bag-black-(1).png',0,1,1000.0000,0,0,'2018-05-08',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,45,'2018-05-08 11:24:14','2018-07-03 10:02:51','75','Bags::https://hazye.ng///image/catalog/Bag/bag-black-(1).png'),(113,'JUGS','','','','','','','',100,6,'catalog/mug/jug.png',0,1,2500.0000,0,0,'2018-07-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,174,'2018-07-04 11:24:36','2018-07-13 08:59:57','89','Jug::https://hazye.ng///image/catalog/mug/jug.png'),(92,'NOTEPADS','','','','','','','',9998,6,'catalog/books/book1.png',0,1,4500.0000,0,0,'2018-06-25',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,5,'2018-06-25 07:35:51','2018-07-03 10:01:29','80','Classic Diary::https://hazye.ng///image/catalog/books/book1.png'),(87,'TSHIRTDEMO4','card01','','','','','','',9997,6,'catalog/demo_tshirtecommerce_thumb15247590655ae1fa192dccf.png',0,1,3.0000,0,0,'2018-05-08',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,27,'2018-05-08 11:24:21','2018-07-03 10:02:18','77','Cards::https://hazye.ng///image/catalog/demo_tshirtecommerce_thumb15247590655ae1fa192dccf.png'),(93,'CAPS','','','','','','','',9997,6,'catalog/cap/cap-white.png',0,1,2000.0000,0,0,'2018-06-25',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,514,'2018-06-25 08:05:00','2018-07-27 07:56:33','79','Custom Caps::https://hazye.ng///image/catalog/cap/cap-white.png'),(95,'MUGS','','','','','','','',9999,6,'catalog/mug/mug white1.png',0,1,1500.0000,0,0,'2018-06-26',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,433,'2018-06-26 21:34:37','2018-07-04 13:44:42','81','Mug::https://hazye.ng///image/catalog/mug/mug white1.png'),(96,'NOTEPADS','','','','','','','',9999,6,'catalog/books/notebook1.png',0,1,4500.0000,0,0,'2018-06-26',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,5,'2018-06-26 21:47:14','2018-07-03 10:00:41','80','Diary::https://hazye.ng///image/catalog/books/notebook1.png'),(97,'TShirt','','','','','','','',9995,6,'catalog/shirts/round-shirt-red.png',0,1,2000.0000,0,0,'2018-06-27',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,753,'2018-06-27 18:54:11','2018-07-11 17:03:04','82','T-shirt::https://hazye.ng///image/catalog/shirts/round-shirt-red.png'),(121,'Tshirt Unisex','','','','','','','',900,6,'catalog/tshirt/courage.png',0,1,2000.0000,0,0,'2018-07-17',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,33,'2018-07-17 08:37:20','2018-08-16 16:52:33','92','T-Shirt Unisex::https://hazye.ng///image/catalog/tshirt/courage.png'),(101,'Collar-Tshirt','','','','','','','',1000,6,'catalog/tshirt/shirt-new-LG2.png',0,1,2000.0000,0,0,'2018-06-28',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,461,'2018-06-28 08:28:51','2018-08-09 15:34:10','83','Collar T-shirt::https://hazye.ng///image/catalog/tshirt/shirt-new-LG2.png'),(119,'MUGS','','','','','','','',999,6,'catalog/mug/mug-gold.png',0,1,1500.0000,0,0,'2018-07-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,263,'2018-07-09 08:33:03','2018-07-09 08:39:40','91','Classic Mug::https://hazye.ng///image/catalog/mug/mug-gold.png'),(112,'TSHIRT','','','','','','','',9999,6,'catalog/shirts/01-copy.png',0,1,2000.0000,0,0,'2018-07-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,277,'2018-07-04 10:50:16','2018-08-06 09:58:29','88','V-neck T-shirt::https://hazye.ng///image/catalog/shirts/01-copy.png'),(116,'JUGS','','','','','','','',100,6,'catalog/mug/mug-1.png',0,1,3000.0000,0,0,'2018-07-05',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,511,'2018-07-05 09:41:23','2018-07-05 09:41:23','90','Ceramic Jug::https://hazye.ng///image/catalog/mug/mug-1.png'),(105,'MUGS','','','','','','','',2000,6,'catalog/mug/mug.png',0,1,1850.0000,0,0,'2018-06-28',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,571,'2018-06-28 09:15:41','2018-07-04 08:49:12','84','Magic mug::https://hazye.ng///image/catalog/mug/mug.png'),(122,'TShirt','','','','','','','',1000,6,'catalog/tshirt/hazye1.PNG',0,1,2000.0000,0,0,'2018-07-25',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2018-07-25 08:27:10','2018-08-07 14:21:33','',''),(118,'epl1','','','','','','','',999,6,'catalog/shirts/epl king.png',0,1,2000.0000,0,0,'2018-07-05',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,294,'2018-07-05 12:21:38','2018-08-16 16:48:15','c4ca4238a0b923820dcc509a6f75849b:15307121761126372760:82:FFFFFF','V-neck T-shirt::https://hazye.ng///image/catalog/shirts/01-copy.png::0'),(109,'Key Chain','','','','','','','',100,6,'catalog/Accessories/keychain.png',0,1,1000.0000,0,0,'2018-06-28',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,6,'2018-06-28 09:38:50','2018-07-03 10:00:09','85','Key Chain::https://hazye.ng///image/catalog/Accessories/keychain.png'),(132,'V-neck Female Design','','','','','','','',1000,6,'catalog/tshirt/girl-red.png',0,1,2000.0000,0,0,'2018-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,16,'2018-08-06 10:08:50','2018-08-06 10:08:50','93','V-neck Female Design::https://hazye.ng///image/catalog/tshirt/girl-red.png'),(131,'V-neck Female Design','','','','','','','',999,6,'catalog/tshirt/query-tshirt.png',0,1,2000.0000,0,0,'2018-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,25,'2018-08-06 09:29:56','2018-08-16 16:54:41','c4ca4238a0b923820dcc509a6f75849b:15322663041909701938:82:000000','::undefined::0'),(134,'V-neck Female Design','','','','','','','',999,6,'catalog/tshirt/steph-image.PNG',0,1,2000.0000,0,0,'2018-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2018-08-07 13:51:30','2018-08-07 14:00:05','c4ca4238a0b923820dcc509a6f75849b:15336503571770215722:82:FF0000','::undefined::0'),(136,'Mug design','','','','','','','',1000,6,'catalog/mug/htmlmug.png',0,1,2000.0000,0,0,'2018-08-08',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,13,'2018-08-08 08:30:35','2018-08-10 07:32:20','91','Mug design::https://hazye.ng///image/catalog/mug/htmlmug.png'),(137,'WEDDING JUG','','','','','','','',1000,6,'catalog/mug/mug-canvas.png',0,1,3000.0000,0,0,'2018-08-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,14,'2018-08-09 11:53:22','2018-08-09 13:28:29','90','WEDDING JUG::https://hazye.ng///image/catalog/mug/mug-canvas.png'),(138,'V-neck Tshirt Time is money','','','','','','','',1000,6,'catalog/tshirt/time-money.png',0,1,2000.0000,0,0,'2018-08-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,22,'2018-08-09 12:48:19','2018-08-16 16:55:57','88','V-neck Tshirt Time is money::https://hazye.ng///image/catalog/tshirt/time-money.png'),(139,'custom cap benz logo','','','','','','','',1000,6,'catalog/cap/benz-cap.png',0,1,2000.0000,0,0,'2018-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2018-08-14 12:47:16','2018-08-14 12:51:28','94','custom cap benz logo::https://hazye.ng///image/catalog/cap/benz-cap.png'),(140,'Round Neck Tshirt-marco Polo','','','','','','','',1000,6,'catalog/tshirt/marco-polo.png',0,1,2000.0000,0,0,'2018-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2018-08-14 13:15:53','2018-08-16 16:51:57','95','Round Neck Tshirt-marco Polo::https://hazye.ng///image/catalog/tshirt/marco-polo.png'),(141,'Round Neck Tshirt-chelsea','','','','','','','',1000,6,'catalog/tshirt/YOUGOHAMA TSHIRT.png',0,1,2000.0000,0,0,'2018-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,16,'2018-08-14 13:22:06','2018-08-16 16:50:50','96','Round Neck Tshirt-chelsea::https://hazye.ng///image/catalog/tshirt/YOUGOHAMA TSHIRT.png'),(142,'round neck arsenal tshirt','','','','','','','',1000,6,'catalog/tshirt/Try Emulate Tshirt.png',0,1,2000.0000,0,0,'2018-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2018-08-14 14:03:15','2018-08-16 16:50:21','97','round neck arsenal tshirt::https://hazye.ng///image/catalog/tshirt/Try Emulate Tshirt.png'),(143,'9ja cap','','','','','','','',1000,6,'catalog/cap/9ja cap-black.png',0,1,2000.0000,0,0,'2018-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,12,'2018-08-14 15:36:15','2018-08-14 16:00:31','79','9ja cap::https://hazye.ng///image/catalog/cap/9ja cap-black.png'),(144,'chairman tshirt','','','','','','','',1000,6,'catalog/tshirt/Red shirt.(CHAIRMEN).png',0,1,2000.0000,0,0,'2018-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,18,'2018-08-14 15:57:52','2018-08-16 16:43:35','98','chairman tshirt::https://hazye.ng///image/catalog/tshirt/Red shirt.(CHAIRMEN).png'),(145,'TShirt','','','','','','','',1000,6,'catalog/shirts/african.png',0,1,2000.0000,0,0,'2018-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,29,'2018-08-14 16:07:45','2018-08-16 16:41:51','82','African Woman T-shirt Design::https://hazye.ng///image/catalog/shirts/african.png'),(146,'TShirt','','','','','','','',1000,6,'catalog/tshirt/Screenshot 2018-08-14 at 5.55.27 PM.png',0,1,2000.0000,0,0,'2018-08-14',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,22,'2018-08-14 16:49:53','2018-08-16 16:49:55','98','Roots T-shirt::https://hazye.ng///image/catalog/tshirt/Screenshot 2018-08-14 at 5.55.27 PM.png'),(147,'Apesh*t','','','','','','','',1000,6,'catalog/tshirt/apeshit.png',0,1,2000.0000,0,0,'2018-08-15',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,18,'2018-08-15 15:28:19','2018-08-16 16:42:36','c4ca4238a0b923820dcc509a6f75849b:1534261788633904810:82:000000','::undefined::0'),(148,'Albert Einstein T-Shirt Design','','','','','','','',1000,6,'catalog/tshirt/albert.png',0,1,2000.0000,0,0,'2018-08-17',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,16,'2018-08-17 09:45:08','2018-08-22 10:36:09','c4ca4238a0b923820dcc509a6f75849b:15344991071134267455:82:FFFFFF','::undefined::0'),(149,'Red bull t-shirt','','','','','','','',1000,6,'catalog/tshirt/collar-tshirt.png',0,1,2000.0000,0,0,'2018-08-21',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2018-08-21 16:04:46','2018-08-21 16:10:31','','');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (105,1,'Magic mug','&lt;p&gt;Classic magic mug&lt;br&gt;&lt;/p&gt;','mugs, cups, magic','magic mugs','magic mugs','design, customize, magic mugs'),(96,1,'Diary','&lt;p&gt;Custom diary for jotting and writing.&lt;/p&gt;','books, notebook, pads, notepads, diaries, diary','design notebooks ','customize design notepads','customize, design, personalise, notepads, notebooks'),(92,1,'Classic Diary','Custom diary','books, notebook, pads, notepads, diaries, diary','books, notebook, diary','Customize notebooks, diaries','custom, design, books, notebook, pads, notepads,diaries'),(84,1,'Phone case','&lt;p&gt;This form-fitting rubber cover is a great way to add a little personality to your phone. Sleek and lightweight, this protective cover is a great way to avoid scratches and scuffs, chips and cracks. All designs/images should be uploaded at 400 dpi.&lt;/p&gt;&lt;ul class=&quot;listMCE&quot;&gt;&lt;li&gt;Made of metal, plastic and rubber&lt;/li&gt;&lt;li&gt;Notched for cord connections and camera lens&lt;/li&gt;&lt;li&gt;Rubber button covers&lt;/li&gt;&lt;li&gt;PLEASE NOTE: We are not responsible for any damage that may occur to the phone. We recommend avoiding excessive bending to the phone case to prolong its life.&lt;/li&gt;&lt;/ul&gt;','Phone case','Phone case','Phone case','Phone case'),(112,1,'V-neck T-shirt','&lt;p&gt;V-neck T-shirt&lt;br&gt;&lt;/p&gt;','','t-shirts','t-shirts, design,  custom, ','t-shirts, design,  custom, '),(109,1,'Key Chain','&lt;p&gt;Key Chain&lt;br&gt;&lt;/p&gt;','key chains, chains, key holders, key','Key Chain','design Key Chains, custom keychains','design Key Chains, custom keychains'),(87,1,'Cards','&lt;p&gt;Cards&lt;/p&gt;','Business card','Business card','Business card','Business card'),(118,1,'EPL Shirt','&lt;p&gt;This product is for soccer fans&lt;br&gt;&lt;/p&gt;','','epl','',''),(101,1,'Collar T-shirt','&lt;p&gt;Collar T-shirt&lt;br&gt;&lt;/p&gt;','shirt, collar, ','Collar T-shirt','Design t-shirts','Design t-shirts'),(85,1,'Bags','&lt;p&gt;This canvas tote bag is ideal for light carrying of groceries, magazines and your personal goodies. Self-fabric handles in a variety of bright colors.&lt;/p&gt;','Bag','Bag','Bag','Bag'),(93,1,'Custom Caps','&lt;p&gt;Description&lt;/p&gt;','caps, hats','Custom cap','design, customize, custom caps, hats','design, customize, custom caps, hats'),(95,1,'Mug','&lt;p&gt;Custom mug for hot beverages&lt;/p&gt;','mugs, cups','mugs','design customize buy mugs','design, customize, mugs'),(97,1,'T-shirt','&lt;p&gt;Customize your t-shirt&lt;/p&gt;','shirts, tshirts, t-shirts','T-shirts','t-shirts','customize, design, t-shirts'),(113,1,'Jug','&lt;p&gt;Customize this classic jug&lt;/p&gt;','','jugs','customize design jugs','customize, design, jugs'),(116,1,'Ceramic Jug','&lt;p&gt;Customize this ceramic jug&lt;/p&gt;','jugs, ceramic','Customize ceramic jugs','Design, Customize ceramic jugs','design, customize, jugs'),(119,1,'Classic Mug','&lt;p&gt;Personalize this ceramic mugs to light up your daily beverages&lt;br&gt;&lt;/p&gt;','mugs','custom mug','personalise mugs','personalise mugs'),(121,1,'T-Shirt Unisex','&lt;p&gt;Tshirt for unisex&lt;/p&gt;','','tshirt unisex','',''),(122,1,'Programmers Shirt','&lt;p&gt;Programmers Shirt&lt;br&gt;&lt;/p&gt;','','Programmers Shirt','',''),(129,1,'Designed Tshirt','&lt;p&gt;Designed Tshirt&lt;br&gt;&lt;/p&gt;','','Designed Tshirt','',''),(132,1,'V-neck Female Design','&lt;p&gt;V-neck Female Design&lt;br&gt;&lt;/p&gt;','','V-neck Female Design','',''),(131,1,'V-neck Female Design','&lt;p&gt;V-neck Female Design&lt;br&gt;&lt;/p&gt;','','V-neck Female Design','',''),(133,1,'Drink responsibly','&lt;p&gt;Drink responsibly&lt;br&gt;&lt;/p&gt;','','Drink responsibly','',''),(134,1,'V-neck Female Design','&lt;p&gt;V-neck Female Design&lt;br&gt;&lt;/p&gt;','','V-neck Female Design','',''),(135,1,'designed female Tshirt','&lt;p&gt;designed female Tshirt&lt;br&gt;&lt;/p&gt;','','designed female Tshirt','',''),(136,1,'Mug design','&lt;p&gt;Mug design&lt;br&gt;&lt;/p&gt;','','Mug design','',''),(137,1,'WEDDING JUG','&lt;p&gt;WEDDING JUG&lt;br&gt;&lt;/p&gt;','','WEDDING JUG','',''),(138,1,'V-neck Tshirt Time is money','&lt;p&gt;V-neck Tshirt Time is money&lt;br&gt;&lt;/p&gt;','','V-neck Tshirt Time is money','',''),(139,1,'custom cap benz logo','&lt;p&gt;A cap customized with Mercedes-benz logo&lt;br&gt;&lt;/p&gt;','','custom cap benz logo','',''),(140,1,'Round Neck Tshirt-marco Polo','&lt;p&gt;Round Neck Tshirt with marco Polo&lt;br&gt;&lt;/p&gt;','','Round Neck Tshirt-marco Polo','',''),(141,1,'Round Neck Tshirt-chelsea','A well designed chelsea round neck t-shirt','','Round Neck Tshirt-chelsea','',''),(142,1,'round neck arsenal tshirt','&lt;p&gt;round neck arsenal tshirt&lt;br&gt;&lt;/p&gt;','','round neck arsenal tshirt','',''),(143,1,'9ja cap','&lt;p&gt;9ja cap&lt;br&gt;&lt;/p&gt;','','9ja cap','',''),(144,1,'chairman tshirt','&lt;p&gt;chairman tshirt&lt;br&gt;&lt;/p&gt;','','chairman tshirt','',''),(145,1,'African Woman T-shirt Design','&lt;p&gt;Awesome African woman T-shirt Design&lt;br&gt;&lt;/p&gt;','tshirt','tshirt design','tshirt design','tshirt design'),(146,1,'Roots T-shirt','&lt;p&gt;African roots t-shirt design&lt;br&gt;&lt;/p&gt;','tshirt, roots','tshirts design','tshirts design','tshirts design'),(147,1,'Apesh*t','&lt;p&gt;Apesh*t&lt;br&gt;&lt;/p&gt;','','Apesh*t','',''),(148,1,'Albert Einstein T-Shirt Design','&lt;p&gt;Albert Einstein T-Shirt Design&lt;br&gt;&lt;/p&gt;','','Albert Einstein T-Shirt Design','',''),(149,1,'Red bull t-shirt','&lt;p&gt;Red bull t-shirt&lt;br&gt;&lt;/p&gt;','','Red bull t-shirt','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=444 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `is_rotator` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3221 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (3220,101,'catalog/shirts/shirt-new_blue-copy.png',4,0),(3208,97,'catalog/shirts/round-shirt-SB.png',6,0),(3207,97,'catalog/shirts/round-shirt-yellow.png',5,0),(3205,97,'catalog/shirts/round-shirt.png',3,0),(3152,87,'catalog/demo_tshirtecommerce_f015257750615af17ad5315a0.png',0,0),(3149,96,'catalog/books/notebook-black1.png',0,0),(3148,96,'catalog/books/notebook-blue.png',0,0),(3212,93,'catalog/cap/cap-green.png',3,0),(3211,93,'catalog/cap/cap-red.png',2,0),(3210,93,'catalog/cap/cap-blue.png',1,0),(3209,93,'catalog/cap/cap-black.png',0,0),(3219,101,'catalog/shirts/shirt-new_red-copy.png',3,0),(3175,95,'catalog/mug/mug-new.png',0,0),(3174,95,'catalog/mug/mug-new-black.png',0,0),(3218,101,'catalog/shirts/shirt-new_black-copy.png',2,0),(3217,101,'catalog/tshirt/shirt-new-SB.png',1,0),(3216,101,'catalog/tshirt/shirt-new.png',0,0),(3151,92,'catalog/books/book-black1.png',1,0),(3150,92,'catalog/books/book-blue1.png',0,0),(3154,85,'catalog/Bag/bag-red-(1).png',1,0),(3215,112,'catalog/shirts/red-copy.png',0,0),(3213,112,'catalog/shirts/01_black-copy3.png',0,0),(3214,112,'catalog/shirts/01_white-copy1.png',0,0),(3153,85,'catalog/Bag/bag-blue-(1).png',0,0),(3206,97,'catalog/shirts/round-shirt-LG.png',4,0),(3204,97,'catalog/shirts/01_navy-copy.png',2,0),(3203,97,'catalog/shirts/01_white-copy.png',1,0),(3202,97,'catalog/shirts/01_black-copy.png',0,0),(3187,119,'catalog/mug/mug-gold-white.png',0,0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=547 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (93,66),(95,33),(97,59),(101,59),(105,33),(112,59),(113,33),(116,33),(118,69),(119,33),(121,69),(122,59),(129,59),(131,69),(132,59),(133,69),(134,59),(135,59),(136,33),(137,33),(138,69),(139,66),(140,69),(141,69),(142,69),(143,66),(144,69),(145,69),(146,69),(147,69),(148,69),(149,69);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (122,1,0),(85,0,0),(87,0,0),(113,0,0),(84,0,0),(129,1,0),(92,0,0),(93,0,0),(95,0,0),(96,0,0),(97,0,0),(122,0,0),(101,0,0),(118,0,0),(116,0,0),(112,0,0),(105,0,0),(121,0,0),(121,1,0),(119,0,0),(109,0,0),(129,0,0),(132,0,0),(132,1,0),(93,1,0),(118,1,0),(131,1,0),(131,0,0),(112,1,0),(133,1,0),(133,0,0),(134,0,0),(134,1,0),(135,1,0),(135,0,0),(136,0,0),(136,1,0),(137,1,0),(137,0,0),(138,0,0),(138,1,0),(101,1,0),(139,1,0),(139,0,0),(140,0,0),(140,1,0),(141,1,0),(141,0,0),(142,1,0),(142,0,0),(143,1,0),(143,0,0),(144,1,0),(144,0,0),(145,1,0),(145,0,0),(146,1,0),(146,0,0),(147,1,0),(147,0,0),(148,1,0),(148,0,0),(149,1,0),(149,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (84,0),(85,0),(87,0),(92,0),(93,0),(95,0),(96,0),(97,0),(101,0),(105,0),(109,0),(112,0),(113,0),(116,0),(118,0),(119,0),(121,0),(122,0),(129,0),(131,0),(132,0),(133,0),(134,0),(135,0),(136,0),(137,0),(138,0),(139,0),(140,0),(141,0),(142,0),(143,0),(144,0),(145,0),(146,0),(147,0),(148,0),(149,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring`
--

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring_description`
--

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
INSERT INTO `oc_return` VALUES (1,7,0,2,'Bobby','Kanikwu','customizebobby@gmail.com','07062391349','Mug','TSHIRTDEMO3',1,0,2,3,3,'Sorry for the mix up. A replacement has been sent to you','2018-05-24','2018-05-24 13:26:55','2018-05-24 13:32:29'),(5,6,0,2,'Bobby','Kanikwu','customizebobby@gmail.com','07062391349','Mug','TSHIRTDEMO3',1,0,4,0,2,'','2018-05-24','2018-05-24 23:31:20','2018-05-24 23:31:20'),(6,9,0,1,'Emeka','Kanikwu','kanikwuemeka@gmail.com','07062391349','Phone case','TSHIRTDEMO1',1,0,2,0,2,'','2018-05-25','2018-05-25 16:55:56','2018-05-25 16:55:56');
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,1,'Refunded'),(2,1,'Credit Issued'),(3,1,'Replacement Sent');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
INSERT INTO `oc_return_history` VALUES (1,1,3,1,'Replacement sent','2018-05-24 13:31:59');
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,1,'Dead On Arrival'),(2,1,'Received Wrong Item'),(3,1,'Order Error'),(4,1,'Faulty, please supply details'),(5,1,'Other, please supply details');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,1,'Pending'),(3,1,'Complete'),(2,1,'Awaiting Products');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_seo_url`
--

DROP TABLE IF EXISTS `oc_seo_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=918 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_seo_url`
--

LOCK TABLES `oc_seo_url` WRITE;
/*!40000 ALTER TABLE `oc_seo_url` DISABLE KEYS */;
INSERT INTO `oc_seo_url` VALUES (917,0,1,'category_id=69','Designed-Tshirt'),(730,0,1,'manufacturer_id=8','apple'),(897,0,1,'information_id=4','about_us'),(914,0,1,'category_id=33','mug'),(828,0,1,'manufacturer_id=9','canon'),(829,0,1,'manufacturer_id=5','htc'),(830,0,1,'manufacturer_id=7','hewlett-packard'),(831,0,1,'manufacturer_id=6','palm'),(832,0,1,'manufacturer_id=10','sony'),(899,0,1,'information_id=6','delivery'),(901,0,1,'information_id=3','privacy'),(902,0,1,'information_id=5','terms'),(865,0,1,'information&amp;information_id=4','about-us'),(915,0,1,'category_id=59','t-shirts'),(868,0,1,'contact=contact','contact-us'),(869,0,1,'sitemap=sitemap','site_map'),(870,0,1,'information/contact','contact'),(871,0,1,'information/sitemap','sitemap'),(913,0,1,'category_id=66','caps');
/*!40000 ALTER TABLE `oc_seo_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_session`
--

DROP TABLE IF EXISTS `oc_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_session`
--

LOCK TABLES `oc_session` WRITE;
/*!40000 ALTER TABLE `oc_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8289 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (7659,0,'payment_cod','payment_cod_sort_order','',0),(4,0,'voucher','total_voucher_sort_order','8',0),(5,0,'voucher','total_voucher_status','1',0),(8285,0,'tshirtecommerce','tshirtecommerce_code','f043da31-967d-47ed-b8bf-a1737c0cca36',0),(8284,0,'tshirtecommerce','tshirtecommerce_menu','1',0),(7812,0,'config','config_error_display','1',0),(95,0,'payment_free_checkout','payment_free_checkout_status','1',0),(96,0,'payment_free_checkout','free_checkout_order_status_id','1',0),(97,0,'payment_free_checkout','payment_free_checkout_sort_order','1',0),(7732,0,'config','config_theme','default',0),(7733,0,'config','config_layout_id','14',0),(7534,0,'payment_paystack','payment_paystack_error_status_id',' 7 ',0),(7884,0,'shipping_flat','shipping_flat_sort_order','1',0),(7883,0,'shipping_flat','shipping_flat_status','0',0),(7881,0,'shipping_flat','shipping_flat_tax_class_id','9',0),(108,0,'total_shipping','total_shipping_sort_order','3',0),(109,0,'total_sub_total','sub_total_sort_order','1',0),(110,0,'total_sub_total','total_sub_total_status','1',0),(111,0,'total_tax','total_tax_status','1',0),(112,0,'total_total','total_total_sort_order','9',0),(113,0,'total_total','total_total_status','1',0),(114,0,'total_tax','total_tax_sort_order','5',0),(115,0,'total_credit','total_credit_sort_order','7',0),(116,0,'total_credit','total_credit_status','1',0),(117,0,'total_reward','total_reward_sort_order','2',0),(118,0,'total_reward','total_reward_status','1',0),(119,0,'total_shipping','total_shipping_status','1',0),(120,0,'total_shipping','total_shipping_estimator','1',0),(123,0,'module_category','module_category_status','1',0),(124,0,'module_account','module_account_status','1',0),(125,0,'theme_default','theme_default_product_limit','9',0),(126,0,'theme_default','theme_default_product_description_length','300',0),(127,0,'theme_default','theme_default_image_thumb_width','700',0),(128,0,'theme_default','theme_default_image_thumb_height','933',0),(129,0,'theme_default','theme_default_image_popup_width','1000',0),(130,0,'theme_default','theme_default_image_popup_height','1333',0),(131,0,'theme_default','theme_default_image_category_width','80',0),(132,0,'theme_default','theme_default_image_category_height','80',0),(133,0,'theme_default','theme_default_image_product_width','500',0),(134,0,'theme_default','theme_default_image_product_height','666',0),(135,0,'theme_default','theme_default_image_additional_width','700',0),(136,0,'theme_default','theme_default_image_additional_height','933',0),(137,0,'theme_default','theme_default_image_related_width','500',0),(138,0,'theme_default','theme_default_image_related_height','666',0),(139,0,'theme_default','theme_default_image_compare_width','80',0),(140,0,'theme_default','theme_default_image_compare_height','107',0),(141,0,'theme_default','theme_default_image_wishlist_width','80',0),(142,0,'theme_default','theme_default_image_wishlist_height','107',0),(143,0,'theme_default','theme_default_image_cart_height','107',0),(144,0,'theme_default','theme_default_image_cart_width','80',0),(145,0,'theme_default','theme_default_image_location_height','50',0),(146,0,'theme_default','theme_default_image_location_width','268',0),(147,0,'theme_default','theme_default_directory','tt_mimosa4',0),(148,0,'theme_default','theme_default_status','1',0),(149,0,'dashboard_activity','dashboard_activity_status','1',0),(150,0,'dashboard_activity','dashboard_activity_sort_order','7',0),(151,0,'dashboard_sale','dashboard_sale_status','1',0),(152,0,'dashboard_sale','dashboard_sale_width','3',0),(153,0,'dashboard_chart','dashboard_chart_status','1',0),(154,0,'dashboard_chart','dashboard_chart_width','6',0),(155,0,'dashboard_customer','dashboard_customer_status','1',0),(156,0,'dashboard_customer','dashboard_customer_width','3',0),(157,0,'dashboard_map','dashboard_map_status','1',0),(158,0,'dashboard_map','dashboard_map_width','6',0),(159,0,'dashboard_online','dashboard_online_status','1',0),(160,0,'dashboard_online','dashboard_online_width','3',0),(161,0,'dashboard_order','dashboard_order_sort_order','1',0),(162,0,'dashboard_order','dashboard_order_status','1',0),(163,0,'dashboard_order','dashboard_order_width','3',0),(164,0,'dashboard_sale','dashboard_sale_sort_order','2',0),(165,0,'dashboard_customer','dashboard_customer_sort_order','3',0),(166,0,'dashboard_online','dashboard_online_sort_order','4',0),(167,0,'dashboard_map','dashboard_map_sort_order','5',0),(168,0,'dashboard_chart','dashboard_chart_sort_order','6',0),(169,0,'dashboard_recent','dashboard_recent_status','1',0),(170,0,'dashboard_recent','dashboard_recent_sort_order','8',0),(171,0,'dashboard_activity','dashboard_activity_width','4',0),(172,0,'dashboard_recent','dashboard_recent_width','8',0),(173,0,'report_customer_activity','report_customer_activity_status','1',0),(174,0,'report_customer_activity','report_customer_activity_sort_order','1',0),(175,0,'report_customer_order','report_customer_order_status','1',0),(176,0,'report_customer_order','report_customer_order_sort_order','2',0),(177,0,'report_customer_reward','report_customer_reward_status','1',0),(178,0,'report_customer_reward','report_customer_reward_sort_order','3',0),(179,0,'report_customer_search','report_customer_search_sort_order','3',0),(180,0,'report_customer_search','report_customer_search_status','1',0),(181,0,'report_customer_transaction','report_customer_transaction_status','1',0),(182,0,'report_customer_transaction','report_customer_transaction_status_sort_order','4',0),(183,0,'report_sale_tax','report_sale_tax_status','1',0),(184,0,'report_sale_tax','report_sale_tax_sort_order','5',0),(185,0,'report_sale_shipping','report_sale_shipping_status','1',0),(186,0,'report_sale_shipping','report_sale_shipping_sort_order','6',0),(187,0,'report_sale_return','report_sale_return_status','1',0),(188,0,'report_sale_return','report_sale_return_sort_order','7',0),(189,0,'report_sale_order','report_sale_order_status','1',0),(190,0,'report_sale_order','report_sale_order_sort_order','8',0),(191,0,'report_sale_coupon','report_sale_coupon_status','1',0),(192,0,'report_sale_coupon','report_sale_coupon_sort_order','9',0),(193,0,'report_product_viewed','report_product_viewed_status','1',0),(194,0,'report_product_viewed','report_product_viewed_sort_order','10',0),(195,0,'report_product_purchased','report_product_purchased_status','1',0),(196,0,'report_product_purchased','report_product_purchased_sort_order','11',0),(197,0,'report_marketing','report_marketing_status','1',0),(198,0,'report_marketing','report_marketing_sort_order','12',0),(4636,0,'developer','developer_sass','1',0),(1025,0,'module_octhemeoption','module_octhemeoption_status','1',0),(4635,0,'developer','developer_theme','1',0),(1026,0,'module_octhemeoption','module_octhemeoption_catalog','1',0),(1027,0,'module_octhemeoption','module_octhemeoption_rotator','1',0),(1028,0,'module_octhemeoption','module_octhemeoption_quickview','1',0),(1029,0,'module_ocajaxlogin','module_ocajaxlogin_loader_img','catalog/AjaxLoader.gif',0),(1030,0,'module_ocajaxlogin','module_ocajaxlogin_redirect_status','0',0),(1031,0,'module_ocajaxlogin','module_ocajaxlogin_status','1',0),(1032,0,'module_ocblog','module_ocblog_article_height','235',0),(1033,0,'module_ocblog','module_ocblog_article_limit','10',0),(1034,0,'module_ocblog','module_ocblog_article_width','370',0),(1035,0,'module_ocblog','module_ocblog_blog_height','235',0),(1036,0,'module_ocblog','module_ocblog_blog_width','370',0),(1037,0,'module_ocblog','module_ocblog_meta_description','Blog Description',0),(1038,0,'module_ocblog','module_ocblog_meta_keyword','Blog Keyword',0),(1039,0,'module_ocblog','module_ocblog_meta_title','Mimosa Blog',0),(1040,0,'module_oclayerednavigation','module_oclayerednavigation_loader_img','catalog/AjaxLoader.gif',0),(1041,0,'module_oclayerednavigation','module_oclayerednavigation_status','1',0),(1042,0,'module_octhemeoption','module_octhemeoption_a_tag','[{\"color\":\"292929\",\"hover_color\":\"EE3333\"},{\"color\":\"FFFFFF\",\"hover_color\":\"FFFFFF\"},{\"color\":\"FFFFFF\",\"hover_color\":\"FFFFFF\"},{\"color\":\"FFFFFF\",\"hover_color\":\"FFFFFF\"},{\"color\":\"FFFFFF\",\"hover_color\":\"FFFFFF\"},{\"color\":\"FFFFFF\",\"hover_color\":\"FFFFFF\"}]',1),(1043,0,'module_octhemeoption','module_octhemeoption_body','[{\"color\":\"707070\",\"font_family\":\"Poppins\",\"font_size\":\"12px\",\"font_weight\":\"400\",\"line_height\":\"20px\"},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_size\":\"\",\"font_weight\":\"\",\"line_height\":\"\"},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_size\":\"\",\"font_weight\":\"\",\"line_height\":\"\"},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_size\":\"\",\"font_weight\":\"\",\"line_height\":\"\"},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_size\":\"\",\"font_weight\":\"\",\"line_height\":\"\"},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_size\":\"\",\"font_weight\":\"\",\"line_height\":\"\"}]',1),(1044,0,'module_octhemeoption','module_octhemeoption_catalog','[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]',1),(1045,0,'module_octhemeoption','module_octhemeoption_header_tag','[{\"color\":\"292929\",\"font_family\":\"Poppins\",\"font_weight\":\"400\",\"h1\":{\"font_size\":\"33px\"},\"h2\":{\"font_size\":\"27px\"},\"h3\":{\"font_size\":\"21px\"},\"h4\":{\"font_size\":\"15px\"},\"h5\":{\"font_size\":\"12px\"},\"h6\":{\"font_size\":\"10.2px\"}},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_weight\":\"\",\"h1\":{\"font_size\":\"\"},\"h2\":{\"font_size\":\"\"},\"h3\":{\"font_size\":\"\"},\"h4\":{\"font_size\":\"\"},\"h5\":{\"font_size\":\"\"},\"h6\":{\"font_size\":\"\"}},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_weight\":\"\",\"h1\":{\"font_size\":\"\"},\"h2\":{\"font_size\":\"\"},\"h3\":{\"font_size\":\"\"},\"h4\":{\"font_size\":\"\"},\"h5\":{\"font_size\":\"\"},\"h6\":{\"font_size\":\"\"}},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_weight\":\"\",\"h1\":{\"font_size\":\"\"},\"h2\":{\"font_size\":\"\"},\"h3\":{\"font_size\":\"\"},\"h4\":{\"font_size\":\"\"},\"h5\":{\"font_size\":\"\"},\"h6\":{\"font_size\":\"\"}},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_weight\":\"\",\"h1\":{\"font_size\":\"\"},\"h2\":{\"font_size\":\"\"},\"h3\":{\"font_size\":\"\"},\"h4\":{\"font_size\":\"\"},\"h5\":{\"font_size\":\"\"},\"h6\":{\"font_size\":\"\"}},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_weight\":\"\",\"h1\":{\"font_size\":\"\"},\"h2\":{\"font_size\":\"\"},\"h3\":{\"font_size\":\"\"},\"h4\":{\"font_size\":\"\"},\"h5\":{\"font_size\":\"\"},\"h6\":{\"font_size\":\"\"}}]',1),(1046,0,'module_octhemeoption','module_octhemeoption_loader_img','catalog/AjaxLoader.gif',0),(1047,0,'module_octhemeoption','module_octhemeoption_quickview','[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]',1),(1048,0,'module_octhemeoption','module_octhemeoption_rotator','[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]',1),(1049,0,'module_octhemeoption','module_octhemeoption_status','[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"]',1),(1050,0,'module_ocajaxlogin','module_ocajaxlogin_loader_img','catalog/AjaxLoader.gif',0),(1051,0,'module_ocajaxlogin','module_ocajaxlogin_redirect_status','0',0),(1052,0,'module_ocajaxlogin','module_ocajaxlogin_status','1',0),(1053,0,'module_ocblog','module_ocblog_article_height','235',0),(1054,0,'module_ocblog','module_ocblog_article_limit','10',0),(1055,0,'module_ocblog','module_ocblog_article_width','370',0),(1056,0,'module_ocblog','module_ocblog_blog_height','235',0),(1057,0,'module_ocblog','module_ocblog_blog_width','370',0),(1058,0,'module_ocblog','module_ocblog_meta_description','Blog Description',0),(1059,0,'module_ocblog','module_ocblog_meta_keyword','Blog Keyword',0),(1060,0,'module_ocblog','module_ocblog_meta_title','Mimosa Blog',0),(1061,0,'module_oclayerednavigation','module_oclayerednavigation_loader_img','catalog/AjaxLoader.gif',0),(1062,0,'module_oclayerednavigation','module_oclayerednavigation_status','1',0),(1063,0,'module_octhemeoption','module_octhemeoption_a_tag','[{\"color\":\"292929\",\"hover_color\":\"EE3333\"},{\"color\":\"FFFFFF\",\"hover_color\":\"FFFFFF\"},{\"color\":\"FFFFFF\",\"hover_color\":\"FFFFFF\"},{\"color\":\"FFFFFF\",\"hover_color\":\"FFFFFF\"},{\"color\":\"FFFFFF\",\"hover_color\":\"FFFFFF\"},{\"color\":\"FFFFFF\",\"hover_color\":\"FFFFFF\"}]',1),(1064,0,'module_octhemeoption','module_octhemeoption_body','[{\"color\":\"707070\",\"font_family\":\"Poppins\",\"font_size\":\"12px\",\"font_weight\":\"400\",\"line_height\":\"20px\"},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_size\":\"\",\"font_weight\":\"\",\"line_height\":\"\"},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_size\":\"\",\"font_weight\":\"\",\"line_height\":\"\"},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_size\":\"\",\"font_weight\":\"\",\"line_height\":\"\"},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_size\":\"\",\"font_weight\":\"\",\"line_height\":\"\"},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_size\":\"\",\"font_weight\":\"\",\"line_height\":\"\"}]',1),(1065,0,'module_octhemeoption','module_octhemeoption_catalog','[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]',1),(1066,0,'module_octhemeoption','module_octhemeoption_header_tag','[{\"color\":\"292929\",\"font_family\":\"Poppins\",\"font_weight\":\"400\",\"h1\":{\"font_size\":\"33px\"},\"h2\":{\"font_size\":\"27px\"},\"h3\":{\"font_size\":\"21px\"},\"h4\":{\"font_size\":\"15px\"},\"h5\":{\"font_size\":\"12px\"},\"h6\":{\"font_size\":\"10.2px\"}},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_weight\":\"\",\"h1\":{\"font_size\":\"\"},\"h2\":{\"font_size\":\"\"},\"h3\":{\"font_size\":\"\"},\"h4\":{\"font_size\":\"\"},\"h5\":{\"font_size\":\"\"},\"h6\":{\"font_size\":\"\"}},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_weight\":\"\",\"h1\":{\"font_size\":\"\"},\"h2\":{\"font_size\":\"\"},\"h3\":{\"font_size\":\"\"},\"h4\":{\"font_size\":\"\"},\"h5\":{\"font_size\":\"\"},\"h6\":{\"font_size\":\"\"}},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_weight\":\"\",\"h1\":{\"font_size\":\"\"},\"h2\":{\"font_size\":\"\"},\"h3\":{\"font_size\":\"\"},\"h4\":{\"font_size\":\"\"},\"h5\":{\"font_size\":\"\"},\"h6\":{\"font_size\":\"\"}},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_weight\":\"\",\"h1\":{\"font_size\":\"\"},\"h2\":{\"font_size\":\"\"},\"h3\":{\"font_size\":\"\"},\"h4\":{\"font_size\":\"\"},\"h5\":{\"font_size\":\"\"},\"h6\":{\"font_size\":\"\"}},{\"color\":\"FFFFFF\",\"font_family\":\"\",\"font_weight\":\"\",\"h1\":{\"font_size\":\"\"},\"h2\":{\"font_size\":\"\"},\"h3\":{\"font_size\":\"\"},\"h4\":{\"font_size\":\"\"},\"h5\":{\"font_size\":\"\"},\"h6\":{\"font_size\":\"\"}}]',1),(1067,0,'module_octhemeoption','module_octhemeoption_loader_img','catalog/AjaxLoader.gif',0),(1068,0,'module_octhemeoption','module_octhemeoption_quickview','[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]',1),(1069,0,'module_octhemeoption','module_octhemeoption_rotator','[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]',1),(1070,0,'module_octhemeoption','module_octhemeoption_status','[\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"]',1),(7882,0,'shipping_flat','shipping_flat_geo_zone_id','0',0),(7804,0,'config','config_compression','4',0),(7805,0,'config','config_secure','0',0),(7806,0,'config','config_password','1',0),(7807,0,'config','config_shared','0',0),(7808,0,'config','config_encryption','lQqZjvzLc51CfGfyzFp1guymhB4exXHDg5yEGXCWHZJT7mJSGX3AVnNL0PlRMPkCaiJLbdXfCljfG5chp69sGuuMxmQ67XBXDhECd1nKu4byss0m8TMP4Lfik0Us5NLIQj89MRTUovYgfs09jlCOR3vIhKOkvDWqcZN7bZglb6zEfIzvKh5bKjFTSUGDXCt2zc6Kk0afm1uDCdn9XemIJ0tD4Mu1vKj03Pcm72z7Hur5pW6O6eXoq5ksMKDqTauu2XqVD9cdmn7afAGeWtrulDteMRyZMQt5508aanC2dhVarNSRYmhSa7chWQyMZyP90iB4AqWCSoXVi1RSKgas5ch1xiavdWoTmevlxPtEAfsOm8Cc1FgwQhCFlmwytZmFQrwSwqXy0HBVnIHTe8SGMpFrXOwUPT92Jmu45d2ACZYC57cWxjlxuwN9OJljzKpcpFfXdsEZ6veOjpRoq2UHwM1R1YgDOLxVZbFGlNkNyAWocydV7qrnbdrIXvhgpEaLtyqPYvlSCVcThRGSjIExgenRPnZBHnyWJHmozsqNmPloD7OWINXE4SZFyJkLMPsVdEymm9cAXHKLBZ1yxrrsZzEFK45S7yavOELt9p5vepg0dp7TOoJ9SaKmeWANRnmTE2hxjB164MNPvUJTMwJIhlMhHjJMCmZEgVZOzoI51vY3npZwFOgRRIWQ8wvecRgRTyKWPNswiKLcRAQRQDnIu12L45ZrJFnoLOTNpek7HQb0g3mDnraXjfj6tRYKGsUzE4Gt1Hi20Fqlk0HQ5bgvPZvyFUjx9MnJ1HFU5sr41ZgqgzKqyRQA9iQLzAxTeyhNBZ2BC3YEY1HrVyih3ViUhozlTyjB17URWATG17WQqRBaAM2S9Q7wsQzc5ifNbjKRTxSA6eZRJIhH67LWFpSkMcnJQ7suyohzgymP5i2O2BLN3cZpzWQKxC9vLOEChLcPuuf6hvfPMsS1il2HYubAIQxZeYNm2nQiExA3PuWrOnMWttgxzgxBGAUjV7hj26LA',0),(7533,0,'payment_paystack','payment_paystack_declined_status_id',' 7 ',0),(7532,0,'payment_paystack','payment_paystack_approved_status_id',' 7 ',0),(7528,0,'payment_paystack','payment_paystack_total','1',0),(7526,0,'payment_paystack','payment_paystack_live_public','pk_live_7e0b91f9447d94e76464ae99e9c339225ae220a9',0),(7531,0,'payment_paystack','payment_paystack_status','1',0),(7530,0,'payment_paystack','payment_paystack_geo_zone_id','0',0),(7529,0,'payment_paystack','payment_paystack_sort_order','          ',0),(7527,0,'payment_paystack','payment_paystack_debug','1',0),(7525,0,'payment_paystack','payment_paystack_live_secret','sk_live_d7dfd5002761826d073cc2ca2cdb54d3c5fc7877',0),(8280,0,'tshirtecommerce','tshirtecommerce_hide_addtocart','0',0),(8281,0,'tshirtecommerce','tshirtecommerce_allow_taxes','1',0),(8282,0,'tshirtecommerce','tshirtecommerce_customize_design_btn','       color: rgb(255, 255, 255); font-size: 13px; padding: 9px; border-radius: 4px; border-color: rgb(123, 205, 64); border-style: dotted; border-width: 0px; background-color: rgb(20, 86, 205);       ',0),(7880,0,'shipping_flat','shipping_flat_cost','1500.00',0),(7809,0,'config','config_file_max_size','300000',0),(7810,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(7811,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(7803,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(7802,0,'config','config_seo_url','1',0),(7801,0,'config','config_maintenance','0',0),(7800,0,'config','config_mail_alert_email','e.kanikwu@epsolun.com, Godswillogundu@yahoo.com',0),(7799,0,'config','config_mail_alert','[\"order\"]',1),(7798,0,'config','config_mail_smtp_timeout','5',0),(7797,0,'config','config_mail_smtp_port','2525',0),(7796,0,'config','config_mail_smtp_password','epsolun123',0),(7795,0,'config','config_mail_smtp_username','info@hazye.ng',0),(7794,0,'config','config_mail_smtp_hostname','tls://smtp.mailgun.org',0),(7793,0,'config','config_mail_parameter','',0),(7792,0,'config','config_mail_engine','smtp',0),(7791,0,'config','config_icon','catalog/loader1.png',0),(7790,0,'config','config_logo','catalog/hazye logo/logo-new3.png',0),(7789,0,'config','config_captcha_page','[\"review\",\"return\",\"contact\"]',1),(7788,0,'config','config_captcha','',0),(7787,0,'config','config_return_status_id','2',0),(7786,0,'config','config_return_id','0',0),(7785,0,'config','config_affiliate_id','4',0),(7784,0,'config','config_affiliate_commission','5',0),(7783,0,'config','config_affiliate_auto','0',0),(7782,0,'config','config_affiliate_approval','0',0),(7781,0,'config','config_affiliate_group_id','1',0),(7780,0,'config','config_stock_checkout','0',0),(8279,0,'tshirtecommerce','tshirtecommerce_seo_default_keyword','custom-your-design',0),(4637,0,'total_voucher','total_voucher_status','0',0),(4638,0,'total_voucher','total_voucher_sort_order','8',0),(7779,0,'config','config_stock_warning','0',0),(7778,0,'config','config_stock_display','0',0),(7777,0,'config','config_api_id','1',0),(7775,0,'config','config_complete_status','[\"5\",\"3\"]',1),(7776,0,'config','config_fraud_status_id','7',0),(7774,0,'config','config_processing_status','[\"5\",\"1\",\"2\",\"12\",\"3\"]',1),(7773,0,'config','config_order_status_id','2',0),(7772,0,'config','config_checkout_id','5',0),(7771,0,'config','config_checkout_guest','1',0),(7770,0,'config','config_cart_weight','1',0),(7768,0,'config','config_account_id','3',0),(7769,0,'config','config_invoice_prefix','INV-2018-00',0),(7767,0,'config','config_login_attempts','5',0),(7766,0,'config','config_customer_price','0',0),(7765,0,'config','config_customer_group_display','[\"1\"]',1),(7764,0,'config','config_customer_group_id','1',0),(7763,0,'config','config_customer_search','0',0),(7762,0,'config','config_customer_activity','0',0),(7761,0,'config','config_customer_online','0',0),(7760,0,'config','config_tax_customer','shipping',0),(7759,0,'config','config_tax_default','shipping',0),(7758,0,'config','config_tax','1',0),(8283,0,'tshirtecommerce','tshirtecommerce_logo_loading','https://hazye.ng//image/catalog/loader1.png',0),(7757,0,'config','config_voucher_max','1000',0),(7756,0,'config','config_voucher_min','1',0),(7755,0,'config','config_review_guest','1',0),(7754,0,'config','config_review_status','1',0),(7753,0,'config','config_limit_admin','20',0),(7752,0,'config','config_product_count','1',0),(7751,0,'config','config_weight_class_id','1',0),(7750,0,'config','config_length_class_id','1',0),(7749,0,'config','config_currency_auto','1',0),(7748,0,'config','config_currency','NGN',0),(7747,0,'config','config_admin_language','en-gb',0),(7746,0,'config','config_language','en-gb',0),(7745,0,'config','config_zone_id','',0),(7744,0,'config','config_country_id','156',0),(7743,0,'config','config_comment','',0),(7742,0,'config','config_open','',0),(7741,0,'config','config_image','',0),(7739,0,'config','config_telephone','+2348078071203',0),(7740,0,'config','config_fax','',0),(7738,0,'config','config_email','info@hazye.ng',0),(7737,0,'config','config_geocode','',0),(7736,0,'config','config_address','10 Danube Close, Off Danube Street, Maitama, Abuja.',0),(7735,0,'config','config_owner','Your Name',0),(7734,0,'config','config_name','Hazye',0),(7524,0,'payment_paystack','payment_paystack_live','1',0),(7523,0,'payment_paystack','payment_paystack_test_public','',0),(7522,0,'payment_paystack','payment_paystack_test_secret','',0),(8276,0,'tshirtecommerce','tshirtecommerce_seo_enable','1',0),(7731,0,'config','config_meta_keyword','',0),(7730,0,'config','config_meta_description','Hazye',0),(7729,0,'config','config_meta_title','Hazye',0),(8278,0,'tshirtecommerce','tshirtecommerce_product','97',0),(7658,0,'payment_cod','payment_cod_status','0',0),(7657,0,'payment_cod','payment_cod_geo_zone_id','0',0),(7656,0,'payment_cod','payment_cod_order_status_id','1',0),(8277,0,'tshirtecommerce','tshirtecommerce_downloadable','1',0),(7655,0,'payment_cod','payment_cod_total','',0),(7813,0,'config','config_error_log','1',0),(7814,0,'config','config_error_filename','error.log',0),(7885,0,'shipping_zones','shipping_zones_status','1',0),(7976,1,'config','config_url','https://www.designam.ng/',0),(7977,1,'config','config_ssl','',0),(7978,1,'config','config_meta_title','Designam',0),(7979,1,'config','config_meta_description','',0),(7980,1,'config','config_meta_keyword','',0),(7981,1,'config','config_theme','default',0),(7982,1,'config','config_layout_id','8',0),(7983,1,'config','config_name','Designam',0),(7984,1,'config','config_owner','Designam',0),(7985,1,'config','config_address','10 Danube Close, Off Danube Street, Maitama, Abuja',0),(7986,1,'config','config_geocode','Nigeria',0),(7987,1,'config','config_email','sawepsolun@gmail.com',0),(7988,1,'config','config_telephone','08078071203',0),(7989,1,'config','config_fax','',0),(7990,1,'config','config_image','',0),(7991,1,'config','config_open','',0),(7992,1,'config','config_comment','',0),(7993,1,'config','config_country_id','156',0),(7994,1,'config','config_zone_id','2389',0),(7995,1,'config','config_language','en-gb',0),(7996,1,'config','config_currency','NGN',0),(7997,1,'config','config_tax','0',0),(7998,1,'config','config_tax_default','',0),(7999,1,'config','config_tax_customer','',0),(8000,1,'config','config_customer_group_id','1',0),(8001,1,'config','config_customer_price','0',0),(8002,1,'config','config_account_id','0',0),(8003,1,'config','config_cart_weight','0',0),(8004,1,'config','config_checkout_guest','0',0),(8005,1,'config','config_checkout_id','0',0),(8006,1,'config','config_order_status_id','7',0),(8007,1,'config','config_stock_display','0',0),(8008,1,'config','config_stock_checkout','0',0),(8009,1,'config','config_logo','',0),(8010,1,'config','config_icon','',0),(8011,1,'config','config_secure','1',0),(8014,0,'analytics_google','analytics_google_code','&lt;!-- Global site tag (gtag.js) - Google Analytics --&gt;\r\n&lt;script async src=&quot;https://www.googletagmanager.com/gtag/js?id=UA-122664501-1&quot;&gt;&lt;/script&gt;\r\n&lt;script&gt;\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-122664501-1\');\r\n&lt;/script&gt;\r\n',0),(8015,0,'analytics_google','analytics_google_status','1',0),(8288,0,'module_firstmodule','module_firstmodule_status','1',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_shipping_courier`
--

DROP TABLE IF EXISTS `oc_shipping_courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_shipping_courier`
--

LOCK TABLES `oc_shipping_courier` WRITE;
/*!40000 ALTER TABLE `oc_shipping_courier` DISABLE KEYS */;
INSERT INTO `oc_shipping_courier` VALUES (1,'dhl','DHL'),(2,'fedex','Fedex'),(3,'ups','UPS'),(4,'royal-mail','Royal Mail'),(5,'usps','United States Postal Service'),(6,'auspost','Australia Post'),(7,'citylink','Citylink');
/*!40000 ALTER TABLE `oc_shipping_courier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_statistics`
--

DROP TABLE IF EXISTS `oc_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_statistics`
--

LOCK TABLES `oc_statistics` WRITE;
/*!40000 ALTER TABLE `oc_statistics` DISABLE KEYS */;
INSERT INTO `oc_statistics` VALUES (1,'order_sale',166.7000),(2,'order_processing',-12.0000),(3,'order_complete',0.0000),(4,'order_other',0.0000),(5,'returns',0.0000),(6,'product',0.0000),(7,'review',0.0000);
/*!40000 ALTER TABLE `oc_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,1,'In Stock'),(8,1,'Pre-Order'),(5,1,'Out Of Stock'),(6,1,'2-3 Days');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
INSERT INTO `oc_store` VALUES (1,'Designam','https://www.designam.ng/','');
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'VAT (20%)',20.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_testimonial`
--

DROP TABLE IF EXISTS `oc_testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_testimonial` (
  `testimonial_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`testimonial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_testimonial`
--

LOCK TABLES `oc_testimonial` WRITE;
/*!40000 ALTER TABLE `oc_testimonial` DISABLE KEYS */;
INSERT INTO `oc_testimonial` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8);
/*!40000 ALTER TABLE `oc_testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_testimonial_description`
--

DROP TABLE IF EXISTS `oc_testimonial_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_testimonial_description` (
  `testimonial_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`testimonial_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_testimonial_description`
--

LOCK TABLES `oc_testimonial_description` WRITE;
/*!40000 ALTER TABLE `oc_testimonial_description` DISABLE KEYS */;
INSERT INTO `oc_testimonial_description` VALUES (1,1,'catalog/testimonial/testimonial.jpg','Rebecka Filson','This is Photoshops version  of Lorem Ipsum. Proin gravida nibh vel velit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In molestie augue magna. Pellentesque felis lorem, pulvinar sed eros non, sagittis consequat urna. Proin id dui tempor, imperdiet nisi et, hendrerit quam. Quisque tempus lorem nisl, non adipiscing arcu tristique ac. Sed eget mollis tellus, a varius diam. In a consectetur tellus, quis molestie ligula. Vivamus sit amet sem faucibus, dignissim augue ac, interdum metus.'),(2,1,'catalog/testimonial/testimonial.jpg','Nathanael Jaworski','Mauris blandit, metus a venenatis lacinia, felis enim tincidunt est, condimentum vulputate orci augue eu metus. Fusce dictum, nisi et semper ultricies, felis tortor blandit odio, egestas consequat purus nisi eu est. Morbi porttitor porta nunc in elementum. Aliquam congue, nibh at dignissim scelerisque, tortor nisl placerat tortor, sit amet suscipit augue nisi quis elit. Nam dapibus, diam at blandit molestie, dolor dui vulputate ante, a tincidunt leo turpis quis enim. Etiam facilisis adipiscing lorem eget aliquam. Aliquam ac nisi vulputate, mattis nunc non, sollicitudin lorem. Nulla velit leo, dictum non massa vitae, commodo facilisis lacus. Vivamus ultricies urna a massa aliquet, et congue neque commodo.'),(3,1,'catalog/testimonial/testimonial.jpg','Magdalena Valencia','Sed vel urna at dui iaculis gravida. Maecenas pretium, velit vitae placerat faucibus, velit quam facilisis elit, sit amet lacinia est est id ligula. Duis feugiat quam non justo faucibus, in gravida diam tempor. Nam viverra enim non ipsum ornare, condimentum blandit diam mattis. Maecenas gravida molestie felis ac tincidunt. Vivamus auctor magna sit amet nisl luctus consequat. Donec viverra leo viverra, auctor justo eu, venenatis eros. Praesent metus lectus, tempor id leo vel, convallis lobortis tellus.'),(4,0,'catalog/testimonial/testimonial.jpg','Alva Ono',' Vivamus a lobortis ipsum, vel condimentum magna. Etiam id turpis tortor. Nunc scelerisque, nisi a blandit varius, nunc purus venenatis ligula, sed venenatis orci augue nec sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin mattis, enim blandit molestie molestie, nisl quam bibendum nisi, sed luctus felis justo ut nisl. In hac habitasse platea dictumst. Duis quis aliquam lectus, ac dapibus turpis. Nulla convallis vel felis eget porttitor. Morbi nisl metus, bibendum vitae luctus accumsan, consequat id quam. '),(5,1,'catalog/testimonial/testimonial.jpg','Dewey Tetzlaff','This is Photoshops version  of Lorem Ipsum. Proin gravida nibh vel velit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In molestie augue magna. Pellentesque felis lorem, pulvinar sed eros non, sagittis consequat urna. Proin id dui tempor, imperdiet nisi et, hendrerit quam. Quisque tempus lorem nisl, non adipiscing arcu tristique ac. Sed eget mollis tellus, a varius diam. In a consectetur tellus, quis molestie ligula. Vivamus sit amet sem faucibus, dignissim augue ac, interdum metus.'),(6,1,'catalog/testimonial/testimonial.jpg','Lavina Wilderman','Mauris blandit, metus a venenatis lacinia, felis enim tincidunt est, condimentum vulputate orci augue eu metus. Fusce dictum, nisi et semper ultricies, felis tortor blandit odio, egestas consequat purus nisi eu est. Morbi porttitor porta nunc in elementum. Aliquam congue, nibh at dignissim scelerisque, tortor nisl placerat tortor, sit amet suscipit augue nisi quis elit. Nam dapibus, diam at blandit molestie, dolor dui vulputate ante, a tincidunt leo turpis quis enim. Etiam facilisis adipiscing lorem eget aliquam. Aliquam ac nisi vulputate, mattis nunc non, sollicitudin lorem. Nulla velit leo, dictum non massa vitae, commodo facilisis lacus. Vivamus ultricies urna a massa aliquet, et congue neque commodo.'),(7,1,'catalog/testimonial/testimonial.jpg','Amber Laha','Sed vel urna at dui iaculis gravida. Maecenas pretium, velit vitae placerat faucibus, velit quam facilisis elit, sit amet lacinia est est id ligula. Duis feugiat quam non justo faucibus, in gravida diam tempor. Nam viverra enim non ipsum ornare, condimentum blandit diam mattis. Maecenas gravida molestie felis ac tincidunt. Vivamus auctor magna sit amet nisl luctus consequat. Donec viverra leo viverra, auctor justo eu, venenatis eros. Praesent metus lectus, tempor id leo vel, convallis lobortis tellus.'),(8,1,'catalog/testimonial/testimonial.jpg','Lindsy Neloms','Vivamus a lobortis ipsum, vel condimentum magna. Etiam id turpis tortor. Nunc scelerisque, nisi a blandit varius, nunc purus venenatis ligula, sed venenatis orci augue nec sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin mattis, enim blandit molestie molestie, nisl quam bibendum nisi, sed luctus felis justo ut nisl. In hac habitasse platea dictumst. Duis quis aliquam lectus, ac dapibus turpis. Nulla convallis vel felis eget porttitor. Morbi nisl metus, bibendum vitae luctus accumsan, consequat id quam.');
/*!40000 ALTER TABLE `oc_testimonial_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_theme`
--

DROP TABLE IF EXISTS `oc_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_theme`
--

LOCK TABLES `oc_theme` WRITE;
/*!40000 ALTER TABLE `oc_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_translation`
--

DROP TABLE IF EXISTS `oc_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_translation`
--

LOCK TABLES `oc_translation` WRITE;
/*!40000 ALTER TABLE `oc_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tshirtdesign_order`
--

DROP TABLE IF EXISTS `oc_tshirtdesign_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tshirtdesign_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_product_id` int(11) NOT NULL,
  `options` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tshirtdesign_order`
--

LOCK TABLES `oc_tshirtdesign_order` WRITE;
/*!40000 ALTER TABLE `oc_tshirtdesign_order` DISABLE KEYS */;
INSERT INTO `oc_tshirtdesign_order` VALUES (1,1,'{\"price_of_print\":15,\"options\":{\"rowid\":\"ac6f5df50fa11ea968f2d2b01846754c\",\"price\":\"15\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/04\\\\\\/\\\\\\/cart-front-1524831848.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/04\\\\\\/\\\\\\/cart-back-1524831848.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"0\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"52\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(2,2,'{\"price_of_print\":1,\"options\":{\"rowid\":\"c3eccd06bea6a34faf13d6f8db48ca90\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-front-1526052919.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"76\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"86\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(3,3,'{\"price_of_print\":1,\"options\":{\"rowid\":\"d651222cad022880b83009d4e118c067\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-front-1526053337.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"76\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"86\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(4,5,'{\"price_of_print\":1,\"options\":{\"rowid\":\"b37ea01fdfef9d5fe6586f309e195234\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-front-1527163729.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"74\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"84\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(5,6,'{\"price_of_print\":1,\"options\":{\"rowid\":\"b37ea01fdfef9d5fe6586f309e195234\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-front-1527163729.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"74\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"84\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(6,7,'{\"price_of_print\":1,\"options\":{\"rowid\":\"8758fa7dfeba74fbd13485c47a6da8a0\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-front-1527164473.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"76\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"86\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(7,11,'{\"price_of_print\":15,\"options\":{\"rowid\":\"1e4a301fae54188dee6278b11ab2cb05\",\"price\":\"15\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-front-1527250535.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-back-1527250535.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(8,12,'{\"price_of_print\":0,\"options\":{\"rowid\":\"4de8af146236888acaefdc01e56ced8b\",\"price\":\"0\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-front-1527197133.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"74\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"84\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(9,13,'{\"price_of_print\":15,\"options\":{\"rowid\":\"1e4a301fae54188dee6278b11ab2cb05\",\"price\":\"15\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-front-1527250535.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-back-1527250535.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(10,14,'{\"price_of_print\":0,\"options\":{\"rowid\":\"4de8af146236888acaefdc01e56ced8b\",\"price\":\"0\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-front-1527197133.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"74\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"84\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(11,17,'{\"price_of_print\":0,\"options\":{\"refer\":\"product\",\"design_product_id\":\"73\",\"colors\":[\"32CD32\"],\"type\":\"user\",\"attribute\":[[\"1\",\"0\",\"0\",\"3\",\"0\",\"0\",\"0\"]]}}'),(12,18,'{\"price_of_print\":0,\"options\":{\"refer\":\"product\",\"design_product_id\":\"73\",\"colors\":[\"32CD32\"],\"type\":\"user\",\"attribute\":[[\"1\",\"0\",\"0\",\"3\",\"0\",\"0\",\"0\"]]}}'),(13,19,'{\"price_of_print\":0,\"options\":{\"refer\":\"product\",\"design_product_id\":\"73\",\"colors\":[\"32CD32\"],\"type\":\"user\",\"attribute\":[[\"1\",\"0\",\"0\",\"3\",\"0\",\"0\",\"0\"]]}}'),(14,20,'{\"price_of_print\":474.328571428571422075037844479084014892578125,\"options\":{\"rowid\":\"ea52f455522332cf731903b8abe95e34\",\"price\":\"474.3285714285714\",\"quantity\":\"35\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-front-1527678560.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-back-1527678560.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"M\":\"1\",\"L\":\"2\",\"XL\":\"10\",\"2XL\":\"7\",\"3XL\":\"12\",\"4XL\":\"3\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Price with Element\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"0\",\"1\",\"2\",\"10\",\"7\",\"12\",\"3\"]],\"quantity\":\"35\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(15,21,'{\"price_of_print\":377.91538461538465298872324638068675994873046875,\"options\":{\"rowid\":\"98bd6f4aecf7d5bfebd75c39bbda86b2\",\"price\":\"377.91538461538465\",\"quantity\":\"13\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-front-1527679379.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-back-1527679379.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"L\":\"3\",\"XL\":\"4\",\"2XL\":\"3\",\"3XL\":\"2\",\"4XL\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Price with Element\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"0\",\"0\",\"3\",\"4\",\"3\",\"2\",\"1\"]],\"quantity\":\"13\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(16,22,'{\"price_of_print\":377.91538461538465298872324638068675994873046875,\"options\":{\"rowid\":\"98bd6f4aecf7d5bfebd75c39bbda86b2\",\"price\":\"377.91538461538465\",\"quantity\":\"13\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-front-1527679379.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/05\\\\\\/\\\\\\/cart-back-1527679379.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"L\":\"3\",\"XL\":\"4\",\"2XL\":\"3\",\"3XL\":\"2\",\"4XL\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Price with Element\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"0\",\"0\",\"3\",\"4\",\"3\",\"2\",\"1\"]],\"quantity\":\"13\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(17,23,'{\"price_of_print\":20,\"options\":{\"rowid\":\"adfeaeca649475baba1001bbc5907444\",\"price\":\"20\",\"quantity\":\"2\",\"color_hex\":\"A52A2A\",\"color_title\":\"Red\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528205224.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528205224.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"L\":\"2\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"\",\"\",\"2\",\"\",\"\",\"\",\"\"]],\"quantity\":\"2\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"A52A2A\"],\"type\":\"cart\"}}'),(18,24,'{\"price_of_print\":15,\"options\":{\"rowid\":\"18af30a1d96c2916d92e9d9ed3f6afaf\",\"price\":\"15\",\"quantity\":\"1\",\"color_hex\":\"32CD32\",\"color_title\":\"Lime Green\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528484685.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528484685.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"32CD32\"],\"type\":\"cart\"}}'),(19,26,'{\"price_of_print\":3,\"options\":{\"rowid\":\"99aa50e1a9924c781819e73a792a650a\",\"price\":\"3\",\"quantity\":\"2\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528537807.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"78\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"2\"},\"product_id\":\"88\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(20,27,'{\"price_of_print\":1,\"options\":{\"rowid\":\"d2c14cfa784b086d0f3f40c433777b9d\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528729076.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528729076.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"75\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"85\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(21,28,'{\"price_of_print\":1,\"options\":{\"rowid\":\"0c2a8da3563b03b544be54bd768f6532\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528710128.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"76\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"86\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(22,29,'{\"price_of_print\":3,\"options\":{\"rowid\":\"3c1468ddf41bb0e38fab4f3e2cceed48\",\"price\":\"3\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528729810.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528729810.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"75\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"85\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(23,30,'{\"price_of_print\":3,\"options\":{\"rowid\":\"90330d3fdf024cb14d64594220d1b08b\",\"price\":\"3\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528729858.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528729858.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"75\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"85\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(24,33,'{\"price_of_print\":0,\"options\":{\"rowid\":\"17fa456c67e9106e898564e311412539\",\"price\":\"0\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528820818.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528820818.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(25,36,'{\"price_of_print\":0,\"options\":{\"rowid\":\"17fa456c67e9106e898564e311412539\",\"price\":\"0\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528820818.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528820818.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(26,37,'{\"price_of_print\":0,\"options\":{\"refer\":\"product\",\"design_product_id\":\"73\",\"colors\":[\"000000\"],\"type\":\"user\",\"attribute\":[[\"1\",\"0\",\"0\",\"0\",\"0\",\"0\",\"0\"]]}}'),(27,39,'{\"price_of_print\":0,\"options\":{\"rowid\":\"17fa456c67e9106e898564e311412539\",\"price\":\"0\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528820818.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528820818.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(28,40,'{\"price_of_print\":0,\"options\":{\"rowid\":\"17fa456c67e9106e898564e311412539\",\"price\":\"0\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528820818.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528820818.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(29,41,'{\"price_of_print\":0,\"options\":{\"rowid\":\"17fa456c67e9106e898564e311412539\",\"price\":\"0\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528820818.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528820818.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(30,42,'{\"price_of_print\":0,\"options\":{\"rowid\":\"17fa456c67e9106e898564e311412539\",\"price\":\"0\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528820818.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528820818.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(31,43,'{\"price_of_print\":1.5,\"options\":{\"rowid\":\"5bd58dc5460e0131e014603753fa120c\",\"price\":\"1.5\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528966071.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528966071.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(32,44,'{\"price_of_print\":13,\"options\":{\"rowid\":\"1529849cdf7e84fcd59f34afdb404604\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528969362.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528969362.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(33,45,'{\"price_of_print\":13,\"options\":{\"rowid\":\"1529849cdf7e84fcd59f34afdb404604\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528969362.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528969362.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(34,46,'{\"price_of_print\":1,\"options\":{\"rowid\":\"82da71c30105eb9b50072fe104011439\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528970077.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"76\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"86\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(35,47,'{\"price_of_print\":3,\"options\":{\"rowid\":\"731ac119f3f1e32bdd6a74d3258c6719\",\"price\":\"3\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528970989.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528970989.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(36,48,'{\"price_of_print\":3,\"options\":{\"rowid\":\"731ac119f3f1e32bdd6a74d3258c6719\",\"price\":\"3\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528970989.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528970989.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(37,49,'{\"price_of_print\":13,\"options\":{\"rowid\":\"5b1086ef1e16dc535d4a6801fe9c8eb5\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528972790.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528972790.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(38,50,'{\"price_of_print\":13,\"options\":{\"rowid\":\"5b1086ef1e16dc535d4a6801fe9c8eb5\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528972790.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528972790.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(39,51,'{\"price_of_print\":1,\"options\":{\"rowid\":\"9c25922edb3a7fb24818311f2c596ed9\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528987111.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"78\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"88\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(40,52,'{\"price_of_print\":13,\"options\":{\"rowid\":\"5b1086ef1e16dc535d4a6801fe9c8eb5\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528972790.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528972790.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(41,53,'{\"price_of_print\":1,\"options\":{\"rowid\":\"9c25922edb3a7fb24818311f2c596ed9\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528987111.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"78\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"88\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(42,54,'{\"price_of_print\":13,\"options\":{\"rowid\":\"5b1086ef1e16dc535d4a6801fe9c8eb5\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528972790.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528972790.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(43,55,'{\"price_of_print\":1,\"options\":{\"rowid\":\"9c25922edb3a7fb24818311f2c596ed9\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528987111.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"78\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"88\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(44,56,'{\"price_of_print\":13,\"options\":{\"rowid\":\"5b1086ef1e16dc535d4a6801fe9c8eb5\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528972790.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1528972790.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(45,57,'{\"price_of_print\":1,\"options\":{\"rowid\":\"9c25922edb3a7fb24818311f2c596ed9\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1528987111.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"78\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"88\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(46,58,'{\"price_of_print\":13,\"options\":{\"rowid\":\"e789dec149bb36d2fa57998eb9fd4643\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529316412.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529316412.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(47,59,'{\"price_of_print\":13,\"options\":{\"rowid\":\"e789dec149bb36d2fa57998eb9fd4643\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529316412.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529316412.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(48,60,'{\"price_of_print\":13,\"options\":{\"rowid\":\"e789dec149bb36d2fa57998eb9fd4643\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529316412.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529316412.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(49,62,'{\"price_of_print\":13,\"options\":{\"rowid\":\"26ea6df172f692a534e932f7aceebe41\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529317488.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529317488.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(50,63,'{\"price_of_print\":13,\"options\":{\"rowid\":\"100b8bf5645196e8e5cc907b33b9d593\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529317664.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529317664.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(51,64,'{\"price_of_print\":13,\"options\":{\"rowid\":\"b4f0e30028b6f57364f2499f79ba222a\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529397585.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529397585.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(52,65,'{\"price_of_print\":1,\"options\":{\"rowid\":\"a9295934fe828ec0dff9cc38dea4acd9\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529400664.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529400664.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(53,66,'{\"price_of_print\":1,\"options\":{\"rowid\":\"b7e93096f0b98d123eed6b33c8e1bd67\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529400963.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"76\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"86\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(54,67,'{\"price_of_print\":1,\"options\":{\"rowid\":\"c04bd082b2ca2154020fd8071be37605\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529401167.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"76\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"86\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(55,68,'{\"price_of_print\":1,\"options\":{\"rowid\":\"c04bd082b2ca2154020fd8071be37605\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529401167.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"76\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"86\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(56,69,'{\"price_of_print\":2,\"options\":{\"rowid\":\"c09399fa1ae6eab9eff81d60e5bd88a7\",\"price\":\"2\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529404321.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529404321.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"75\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"85\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(57,70,'{\"price_of_print\":2,\"options\":{\"rowid\":\"c09399fa1ae6eab9eff81d60e5bd88a7\",\"price\":\"2\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529404321.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529404321.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"75\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"85\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(58,71,'{\"price_of_print\":2,\"options\":{\"rowid\":\"c09399fa1ae6eab9eff81d60e5bd88a7\",\"price\":\"2\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529404321.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529404321.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"75\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"85\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(59,72,'{\"price_of_print\":2,\"options\":{\"rowid\":\"c09399fa1ae6eab9eff81d60e5bd88a7\",\"price\":\"2\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529404321.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529404321.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"75\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"85\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(60,73,'{\"price_of_print\":1,\"options\":{\"rowid\":\"07b6399d8d538106d39e4de061befc5e\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529405631.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"76\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"86\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(61,74,'{\"price_of_print\":1,\"options\":{\"rowid\":\"e49532284a9430b8ce2119e31b4dfc22\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529414183.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"74\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"84\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(62,75,'{\"price_of_print\":2,\"options\":{\"rowid\":\"5deed84b852b033eeb75c6bf5c750035\",\"price\":\"2\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529414379.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529414379.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"75\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"85\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(63,76,'{\"price_of_print\":1,\"options\":{\"rowid\":\"1915fcace3ffae2e7706dc2c6376e24e\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529414523.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"77\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"87\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(64,77,'{\"price_of_print\":14,\"options\":{\"rowid\":\"0f2ee1306984753edf8085b6425c0d9a\",\"price\":\"14\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529427129.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529427129.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(65,80,'{\"price_of_print\":13,\"options\":{\"rowid\":\"e9650a3c3ad3e59c9f5d856c93fb12f6\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529534306.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529534306.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(66,83,'{\"price_of_print\":13,\"options\":{\"rowid\":\"3aef59db153b46ca44bb81399ad6c2ec\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529659552.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529659552.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(67,84,'{\"price_of_print\":13,\"options\":{\"rowid\":\"c1e94e4c2ca8ed3dca45b363cc454730\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529658680.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529658680.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(68,85,'{\"price_of_print\":13,\"options\":{\"rowid\":\"f168ff5deae610ada6d927ff4b67f3d4\",\"price\":\"13\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529659349.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529659349.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(69,86,'{\"price_of_print\":1,\"options\":{\"rowid\":\"ae3cc42d2242e77e2ca628b5c29f44b2\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529931715.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"81\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"93\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(70,87,'{\"price_of_print\":3,\"options\":{\"rowid\":\"e52a564995b13b24702a7ddcdb7cc1a1\",\"price\":\"3\",\"quantity\":\"1\",\"color_hex\":\"4B7E8D\",\"color_title\":\"Cadet Blue\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529932205.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"76\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"86\",\"refer\":\"designer\",\"colors\":[\"4B7E8D\"],\"type\":\"cart\"}}'),(71,88,'{\"price_of_print\":2,\"options\":{\"rowid\":\"ec5c6274ec69c8787980ae63de8638b2\",\"price\":\"2\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529932478.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529932478.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"75\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"85\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(72,89,'{\"price_of_print\":14,\"options\":{\"rowid\":\"ac04341b28974a587c2268e8f7f5475c\",\"price\":\"14\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529935646.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529935646.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(73,90,'{\"price_of_print\":1,\"options\":{\"rowid\":\"875a2701c29f9fca2d7e34c69da7eb12\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"EA9E77\",\"color_title\":\"FFFFFF\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529937853.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"80\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"92\",\"refer\":\"designer\",\"colors\":[\"EA9E77\"],\"type\":\"cart\"}}'),(74,91,'{\"price_of_print\":14,\"options\":{\"rowid\":\"2a881b7243806bae8f6ed098dba927ae\",\"price\":\"14\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529938143.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529938143.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(75,92,'{\"price_of_print\":2,\"options\":{\"rowid\":\"f48d4481fa346da598c956d3aec0f109\",\"price\":\"2\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529938602.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529938602.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(76,93,'{\"price_of_print\":16,\"options\":{\"rowid\":\"d403b494c5f7826244e8f17d730b6160\",\"price\":\"16\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529939088.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529939088.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(77,94,'{\"price_of_print\":1,\"options\":{\"rowid\":\"86889a4cc541abaf66bfcd8719b1ae0b\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"4B7E8D\",\"color_title\":\"Cadet Blue\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529941556.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"76\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"86\",\"refer\":\"designer\",\"colors\":[\"4B7E8D\"],\"type\":\"cart\"}}'),(78,95,'{\"price_of_print\":2,\"options\":{\"rowid\":\"4656484685f678827aa0b7de0a2a13d9\",\"price\":\"2\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529941785.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529941785.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"75\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"85\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(79,96,'{\"price_of_print\":16,\"options\":{\"rowid\":\"9f305738900e6e464b105f757565d102\",\"price\":\"16\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529942948.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529942948.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(80,97,'{\"price_of_print\":2,\"options\":{\"rowid\":\"4e04d32925bdba359de9d9ec4a63e1c4\",\"price\":\"2\",\"quantity\":\"1\",\"color_hex\":\"000080\",\"color_title\":\"navy\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529944433.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529944433.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"83\",\"refer\":\"designer\",\"colors\":[\"000080\"],\"type\":\"cart\"}}'),(81,98,'{\"price_of_print\":14,\"options\":{\"rowid\":\"83c5bcc31dd82dfa030bbe3e1f2ac7b6\",\"price\":\"14\",\"quantity\":\"1\",\"color_hex\":\"000000\",\"color_title\":\"black\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1529944798.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1529944798.png&quot;}\",\"options\":[{\"name\":\"Sizes\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"73\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"82\",\"refer\":\"designer\",\"colors\":[\"000000\"],\"type\":\"cart\"}}'),(82,99,'{\"price_of_print\":1.5,\"options\":{\"rowid\":\"760ab4adc5ed4302bc766ce173f69505\",\"price\":\"1.5\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1530120952.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"93\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(83,100,'{\"price_of_print\":1.5,\"options\":{\"rowid\":\"760ab4adc5ed4302bc766ce173f69505\",\"price\":\"1.5\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1530120952.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"79\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"93\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(84,101,'{\"price_of_print\":2,\"options\":{\"rowid\":\"a66f8230ed3a28b3535f3c4163962672\",\"price\":\"2\",\"quantity\":\"1\",\"color_hex\":\"FF0000\",\"color_title\":\"Red\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1530173577.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1530173577.png&quot;}\",\"options\":[{\"name\":\"size\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"82\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"97\",\"refer\":\"designer\",\"colors\":[\"FF0000\"],\"type\":\"cart\"}}'),(85,102,'{\"price_of_print\":2,\"options\":{\"rowid\":\"a66f8230ed3a28b3535f3c4163962672\",\"price\":\"2\",\"quantity\":\"1\",\"color_hex\":\"FF0000\",\"color_title\":\"Red\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1530173577.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1530173577.png&quot;}\",\"options\":[{\"name\":\"size\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"82\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"97\",\"refer\":\"designer\",\"colors\":[\"FF0000\"],\"type\":\"cart\"}}'),(86,103,'{\"price_of_print\":5,\"options\":{\"rowid\":\"9f61e034c4a38581a9834b27e0f7917a\",\"price\":\"5\",\"quantity\":\"1\",\"color_hex\":\"FF0000\",\"color_title\":\"Red\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1530174878.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1530174878.png&quot;}\",\"options\":[{\"name\":\"size\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"82\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"97\",\"refer\":\"designer\",\"colors\":[\"FF0000\"],\"type\":\"cart\"}}'),(87,104,'{\"price_of_print\":5,\"options\":{\"rowid\":\"9f61e034c4a38581a9834b27e0f7917a\",\"price\":\"5\",\"quantity\":\"1\",\"color_hex\":\"FF0000\",\"color_title\":\"Red\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1530174878.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1530174878.png&quot;}\",\"options\":[{\"name\":\"size\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"82\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"97\",\"refer\":\"designer\",\"colors\":[\"FF0000\"],\"type\":\"cart\"}}'),(88,105,'{\"price_of_print\":2,\"options\":{\"rowid\":\"6b439902241ab9249feaa0884ce11e29\",\"price\":\"2\",\"quantity\":\"1\",\"color_hex\":\"FF0000\",\"color_title\":\"Red\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1530190354.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-back-1530190354.png&quot;}\",\"options\":[{\"name\":\"size\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"82\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"97\",\"refer\":\"designer\",\"colors\":[\"FF0000\"],\"type\":\"cart\"}}'),(89,106,'{\"price_of_print\":1,\"options\":{\"rowid\":\"c037920d15fdd253b305c6f4d5a72912\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"A52A2A\",\"color_title\":\"Brown\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1530190726.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Screen Printing\"}],\"t_product_id\":\"85\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"109\",\"refer\":\"designer\",\"colors\":[\"A52A2A\"],\"type\":\"cart\"}}'),(90,109,'{\"price_of_print\":1,\"options\":{\"rowid\":\"d94f2cfba986cbb74b12c8c1aac1b121\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1530262617.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"77\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"87\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(91,110,'{\"price_of_print\":1,\"options\":{\"rowid\":\"d94f2cfba986cbb74b12c8c1aac1b121\",\"price\":\"1\",\"quantity\":\"1\",\"color_hex\":\"FFFFFF\",\"color_title\":\"White\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/06\\\\\\/\\\\\\/cart-front-1530262617.png&quot;}\",\"options\":[{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Sublimation Printing\"}],\"t_product_id\":\"77\",\"option_oc\":\"\",\"tattributes\":{\"quantity\":\"1\"},\"product_id\":\"87\",\"refer\":\"designer\",\"colors\":[\"FFFFFF\"],\"type\":\"cart\"}}'),(92,119,'{\"price_of_print\":756,\"options\":{\"rowid\":\"e225fec5e30506772e73d8509c33f8b6\",\"price\":\"756\",\"quantity\":\"1\",\"color_hex\":\"FF0000\",\"color_title\":\"Red\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/07\\\\\\/\\\\\\/cart-front-1530616581.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/07\\\\\\/\\\\\\/cart-back-1530616581.png&quot;}\",\"options\":[{\"name\":\"size\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Shirt Printing\"}],\"t_product_id\":\"82\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"97\",\"refer\":\"designer\",\"colors\":[\"FF0000\"],\"type\":\"cart\"}}'),(93,120,'{\"price_of_print\":759,\"options\":{\"rowid\":\"5376d7112a6af4bf17be4fed7b145306\",\"price\":\"759\",\"quantity\":\"1\",\"color_hex\":\"FF0000\",\"color_title\":\"Red\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/07\\\\\\/\\\\\\/cart-front-1530674403.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/07\\\\\\/\\\\\\/cart-back-1530674403.png&quot;}\",\"options\":[{\"name\":\"size\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Shirt Printing\"}],\"t_product_id\":\"82\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"97\",\"refer\":\"designer\",\"colors\":[\"FF0000\"],\"type\":\"cart\"}}'),(94,121,'{\"price_of_print\":759,\"options\":{\"rowid\":\"5376d7112a6af4bf17be4fed7b145306\",\"price\":\"759\",\"quantity\":\"1\",\"color_hex\":\"FF0000\",\"color_title\":\"Red\",\"images\":\"{&quot;front&quot;:&quot;uploaded\\\\\\/2018\\\\\\/07\\\\\\/\\\\\\/cart-front-1530674403.png&quot;,&quot;back&quot;:&quot;uploaded\\\\\\/2018\\\\\\/07\\\\\\/\\\\\\/cart-back-1530674403.png&quot;}\",\"options\":[{\"name\":\"size\",\"type\":\"textlist\",\"value\":{\"S\":\"1\"}},{\"name\":\"Printing Type\",\"type\":\"printing\",\"value\":\"Shirt Printing\"}],\"t_product_id\":\"82\",\"option_oc\":\"\",\"tattributes\":{\"attribute\":[[\"1\",\"\",\"\",\"\",\"\",\"\"]],\"quantity\":\"1\"},\"product_id\":\"97\",\"refer\":\"designer\",\"colors\":[\"FF0000\"],\"type\":\"cart\"}}');
/*!40000 ALTER TABLE `oc_tshirtdesign_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tshirtecommerce_seo_url`
--

DROP TABLE IF EXISTS `oc_tshirtecommerce_seo_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tshirtecommerce_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `is_cart` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tshirtecommerce_seo_url`
--

LOCK TABLES `oc_tshirtecommerce_seo_url` WRITE;
/*!40000 ALTER TABLE `oc_tshirtecommerce_seo_url` DISABLE KEYS */;
INSERT INTO `oc_tshirtecommerce_seo_url` VALUES (169,0,1,'tshirtecommerce/designer&parent_id=116&product_id=90','custom-your-design-ceramic-jug',0),(168,0,1,'tshirtecommerce/designer&parent_id=112&product_id=88','custom-your-design-v-neck-t-shirt',0),(165,0,1,'tshirtecommerce/designer&parent_id=121&product_id=92','custom-your-design-t-shirt-unisex',0),(167,0,1,'tshirtecommerce/designer&parent_id=119&product_id=91','custom-your-design-classic-mug',0),(166,0,1,'tshirtecommerce/designer&parent_id=101&product_id=83','custom-your-design-collar-t-shirt',0),(164,0,1,'tshirtecommerce/designer&parent_id=97&product_id=82','custom-your-design-t-shirt',0),(163,0,1,'tshirtecommerce/designer&parent_id=96&product_id=80','custom-your-design-diary',0),(161,0,1,'tshirtecommerce/designer&parent_id=93&product_id=79','custom-your-design-custom-caps',0),(162,0,1,'tshirtecommerce/designer&parent_id=95&product_id=81','custom-your-design-mug',0),(160,0,1,'tshirtecommerce/designer&parent_id=87&product_id=77','custom-your-design-cards',0),(159,0,1,'tshirtecommerce/designer&parent_id=92&product_id=80','custom-your-design-classic-diary',0),(158,0,1,'tshirtecommerce/designer&parent_id=113&product_id=89','custom-your-design-jug',0),(156,0,1,'tshirtecommerce/designer&parent_id=84&product_id=74','custom-your-design-phone-case',0),(157,0,1,'tshirtecommerce/designer&parent_id=85&product_id=75','custom-your-design-bags',0),(155,0,1,'tshirtecommerce/designer&parent_id=129&product_id=c4ca4238a0b923820dcc509a6f75849b:15322663041909701938:82:000000','custom-your-design-designed-tshirt',0),(154,0,1,'tshirtecommerce/designer&parent_id=133&product_id=82','custom-your-design-drink-responsibly',0),(170,0,1,'tshirtecommerce/designer&parent_id=105&product_id=84','custom-your-design-magic-mug',0),(171,0,1,'tshirtecommerce/designer&parent_id=118&product_id=c4ca4238a0b923820dcc509a6f75849b:15307121761126372760:82:FFFFFF','custom-your-design-epl-shirt',0),(172,0,1,'tshirtecommerce/designer&parent_id=109&product_id=85','custom-your-design-key-chain',0),(173,0,1,'tshirtecommerce/designer&parent_id=132&product_id=93','custom-your-design-v-neck-female-design',0),(174,0,1,'tshirtecommerce/designer&parent_id=131&product_id=c4ca4238a0b923820dcc509a6f75849b:15322663041909701938:82:000000','custom-your-design-v-neck-female-design',0),(175,0,1,'tshirtecommerce/designer&parent_id=134&product_id=c4ca4238a0b923820dcc509a6f75849b:15336503571770215722:82:FF0000','custom-your-design-v-neck-female-design',0),(176,0,1,'tshirtecommerce/designer&parent_id=136&product_id=91','custom-your-design-mug-design',0),(177,0,1,'tshirtecommerce/designer&parent_id=137&product_id=90','custom-your-design-wedding-jug',0),(178,0,1,'tshirtecommerce/designer&parent_id=138&product_id=88','custom-your-design-v-neck-tshirt-time-is-money',0),(179,0,1,'tshirtecommerce/designer&parent_id=139&product_id=94','custom-your-design-custom-cap-benz-logo',0),(180,0,1,'tshirtecommerce/designer&parent_id=140&product_id=95','custom-your-design-round-neck-tshirt-marco-polo',0),(181,0,1,'tshirtecommerce/designer&parent_id=141&product_id=96','custom-your-design-round-neck-tshirt-chelsea',0),(182,0,1,'tshirtecommerce/designer&parent_id=142&product_id=97','custom-your-design-round-neck-arsenal-tshirt',0),(183,0,1,'tshirtecommerce/designer&parent_id=143&product_id=79','custom-your-design-9ja-cap',0),(184,0,1,'tshirtecommerce/designer&parent_id=144&product_id=98','custom-your-design-chairman-tshirt',0),(185,0,1,'tshirtecommerce/designer&parent_id=145&product_id=82','custom-your-design-african-woman-t-shirt-design',0),(186,0,1,'tshirtecommerce/designer&parent_id=146&product_id=98','custom-your-design-roots-t-shirt',0),(187,0,1,'tshirtecommerce/designer&parent_id=147&product_id=c4ca4238a0b923820dcc509a6f75849b:1534261788633904810:82:000000','custom-your-design-apesht',0);
/*!40000 ALTER TABLE `oc_tshirtecommerce_seo_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_upload`
--

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','552c6ca59c87c3f7cdc8c861c4b0dbe457b39127','0j3vVdoqb','John','Doe','a.a.okechukwu@gmail.com','','','41.217.5.53',1,'2018-04-25 17:10:57'),(2,1,'patskilo','231276859306f205d80a5e524ea5ef5afced9ab8','hiSKCjtud','Paschal','Soribe','paskilomail@gmail.com','','','169.159.64.213',1,'2018-07-04 10:03:55');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','{\"access\":[\"blog\\/article\",\"blog\\/articlelist\",\"blog\\/config\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/occategorythumbnail\",\"catalog\\/octestimonial\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"catalog\\/tshirtecommerce\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/newslettersubscribe\",\"extension\\/module\\/oc_page_builder\",\"extension\\/module\\/ocajaxlogin\",\"extension\\/module\\/ocblog\",\"extension\\/module\\/occmsblock\",\"extension\\/module\\/ochozmegamenu\",\"extension\\/module\\/oclayerednavigation\",\"extension\\/module\\/ocproduct\",\"extension\\/module\\/ocslideshow\",\"extension\\/module\\/octabproducts\",\"extension\\/module\\/octestimonial\",\"extension\\/module\\/octhemeoption\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/module\\/tshirtecommerce\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"tshirtecommerce\\/ajax\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/tshirtecommerce\",\"extension\\/module\\/vqmod_manager\",\"extension\\/module\\/sainent_extensions\",\"extension\\/module\\/sainent_extensions\",\"extension\\/payment\\/paystack\",\"extension\\/total\\/voucher\",\"extension\\/module\\/mylivechat\",\"extension\\/module\\/vqmod_manager\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/cod\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/zones\",\"extension\\/analytics\\/google\",\"analytics\\/google\",\"extension\\/module\\/firstmodule\",\"extension\\/module\\/firstmodule\",\"extension\\/module\\/firstmodule\",\"extension\\/module\\/firstmodule\",\"extension\\/module\\/firstmodule\",\"extension\\/module\\/filter\",\"extension\\/module\\/firstmodule\"],\"modify\":[\"blog\\/article\",\"blog\\/articlelist\",\"blog\\/config\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/occategorythumbnail\",\"catalog\\/octestimonial\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"catalog\\/tshirtecommerce\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/newslettersubscribe\",\"extension\\/module\\/oc_page_builder\",\"extension\\/module\\/ocajaxlogin\",\"extension\\/module\\/ocblog\",\"extension\\/module\\/occmsblock\",\"extension\\/module\\/ochozmegamenu\",\"extension\\/module\\/oclayerednavigation\",\"extension\\/module\\/ocproduct\",\"extension\\/module\\/ocslideshow\",\"extension\\/module\\/octabproducts\",\"extension\\/module\\/octestimonial\",\"extension\\/module\\/octhemeoption\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/module\\/tshirtecommerce\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"tshirtecommerce\\/ajax\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/tshirtecommerce\",\"extension\\/module\\/vqmod_manager\",\"extension\\/module\\/sainent_extensions\",\"extension\\/module\\/sainent_extensions\",\"extension\\/payment\\/paystack\",\"extension\\/total\\/voucher\",\"extension\\/module\\/mylivechat\",\"extension\\/module\\/vqmod_manager\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/cod\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/zones\",\"extension\\/analytics\\/google\",\"analytics\\/google\",\"extension\\/module\\/firstmodule\",\"extension\\/module\\/firstmodule\",\"extension\\/module\\/firstmodule\",\"extension\\/module\\/firstmodule\",\"extension\\/module\\/firstmodule\",\"extension\\/module\\/filter\",\"extension\\/module\\/firstmodule\"]}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,1,'Christmas'),(7,1,'Birthday'),(8,1,'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Kilogram','kg'),(2,1,'Gram','g'),(5,1,'Pound ','lb'),(6,1,'Ounce','oz');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4239 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,1,'Badakhshan','BDS',1),(2,1,'Badghis','BDG',1),(3,1,'Baghlan','BGL',1),(4,1,'Balkh','BAL',1),(5,1,'Bamian','BAM',1),(6,1,'Farah','FRA',1),(7,1,'Faryab','FYB',1),(8,1,'Ghazni','GHA',1),(9,1,'Ghowr','GHO',1),(10,1,'Helmand','HEL',1),(11,1,'Herat','HER',1),(12,1,'Jowzjan','JOW',1),(13,1,'Kabul','KAB',1),(14,1,'Kandahar','KAN',1),(15,1,'Kapisa','KAP',1),(16,1,'Khost','KHO',1),(17,1,'Konar','KNR',1),(18,1,'Kondoz','KDZ',1),(19,1,'Laghman','LAG',1),(20,1,'Lowgar','LOW',1),(21,1,'Nangrahar','NAN',1),(22,1,'Nimruz','NIM',1),(23,1,'Nurestan','NUR',1),(24,1,'Oruzgan','ORU',1),(25,1,'Paktia','PIA',1),(26,1,'Paktika','PKA',1),(27,1,'Parwan','PAR',1),(28,1,'Samangan','SAM',1),(29,1,'Sar-e Pol','SAR',1),(30,1,'Takhar','TAK',1),(31,1,'Wardak','WAR',1),(32,1,'Zabol','ZAB',1),(33,2,'Berat','BR',1),(34,2,'Bulqize','BU',1),(35,2,'Delvine','DL',1),(36,2,'Devoll','DV',1),(37,2,'Diber','DI',1),(38,2,'Durres','DR',1),(39,2,'Elbasan','EL',1),(40,2,'Kolonje','ER',1),(41,2,'Fier','FR',1),(42,2,'Gjirokaster','GJ',1),(43,2,'Gramsh','GR',1),(44,2,'Has','HA',1),(45,2,'Kavaje','KA',1),(46,2,'Kurbin','KB',1),(47,2,'Kucove','KC',1),(48,2,'Korce','KO',1),(49,2,'Kruje','KR',1),(50,2,'Kukes','KU',1),(51,2,'Librazhd','LB',1),(52,2,'Lezhe','LE',1),(53,2,'Lushnje','LU',1),(54,2,'Malesi e Madhe','MM',1),(55,2,'Mallakaster','MK',1),(56,2,'Mat','MT',1),(57,2,'Mirdite','MR',1),(58,2,'Peqin','PQ',1),(59,2,'Permet','PR',1),(60,2,'Pogradec','PG',1),(61,2,'Puke','PU',1),(62,2,'Shkoder','SH',1),(63,2,'Skrapar','SK',1),(64,2,'Sarande','SR',1),(65,2,'Tepelene','TE',1),(66,2,'Tropoje','TP',1),(67,2,'Tirane','TR',1),(68,2,'Vlore','VL',1),(69,3,'Adrar','ADR',1),(70,3,'Ain Defla','ADE',1),(71,3,'Ain Temouchent','ATE',1),(72,3,'Alger','ALG',1),(73,3,'Annaba','ANN',1),(74,3,'Batna','BAT',1),(75,3,'Bechar','BEC',1),(76,3,'Bejaia','BEJ',1),(77,3,'Biskra','BIS',1),(78,3,'Blida','BLI',1),(79,3,'Bordj Bou Arreridj','BBA',1),(80,3,'Bouira','BOA',1),(81,3,'Boumerdes','BMD',1),(82,3,'Chlef','CHL',1),(83,3,'Constantine','CON',1),(84,3,'Djelfa','DJE',1),(85,3,'El Bayadh','EBA',1),(86,3,'El Oued','EOU',1),(87,3,'El Tarf','ETA',1),(88,3,'Ghardaia','GHA',1),(89,3,'Guelma','GUE',1),(90,3,'Illizi','ILL',1),(91,3,'Jijel','JIJ',1),(92,3,'Khenchela','KHE',1),(93,3,'Laghouat','LAG',1),(94,3,'Muaskar','MUA',1),(95,3,'Medea','MED',1),(96,3,'Mila','MIL',1),(97,3,'Mostaganem','MOS',1),(98,3,'M\'Sila','MSI',1),(99,3,'Naama','NAA',1),(100,3,'Oran','ORA',1),(101,3,'Ouargla','OUA',1),(102,3,'Oum el-Bouaghi','OEB',1),(103,3,'Relizane','REL',1),(104,3,'Saida','SAI',1),(105,3,'Setif','SET',1),(106,3,'Sidi Bel Abbes','SBA',1),(107,3,'Skikda','SKI',1),(108,3,'Souk Ahras','SAH',1),(109,3,'Tamanghasset','TAM',1),(110,3,'Tebessa','TEB',1),(111,3,'Tiaret','TIA',1),(112,3,'Tindouf','TIN',1),(113,3,'Tipaza','TIP',1),(114,3,'Tissemsilt','TIS',1),(115,3,'Tizi Ouzou','TOU',1),(116,3,'Tlemcen','TLE',1),(117,4,'Eastern','E',1),(118,4,'Manu\'a','M',1),(119,4,'Rose Island','R',1),(120,4,'Swains Island','S',1),(121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Niederösterreich','NOS',1),(202,14,'Oberösterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Higgins','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chilena','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovarsko-bilogorska','BB',1),(848,53,'Grad Zagreb','GZ',1),(849,53,'Dubrovačko-neretvanska','DN',1),(850,53,'Istarska','IS',1),(851,53,'Karlovačka','KA',1),(852,53,'Koprivničko-križevačka','KK',1),(853,53,'Krapinsko-zagorska','KZ',1),(854,53,'Ličko-senjska','LS',1),(855,53,'Međimurska','ME',1),(856,53,'Osječko-baranjska','OB',1),(857,53,'Požeško-slavonska','PS',1),(858,53,'Primorsko-goranska','PG',1),(859,53,'Šibensko-kninska','SK',1),(860,53,'Sisačko-moslavačka','SM',1),(861,53,'Brodsko-posavska','BP',1),(862,53,'Splitsko-dalmatinska','SD',1),(863,53,'Varaždinska','VA',1),(864,53,'Virovitičko-podravska','VP',1),(865,53,'Vukovarsko-srijemska','VS',1),(866,53,'Zadarska','ZA',1),(867,53,'Zagrebačka','ZG',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan lääni','AL',1),(1086,72,'Etelä-Suomen lääni','ES',1),(1087,72,'Itä-Suomen lääni','IS',1),(1088,72,'Länsi-Suomen lääni','LS',1),(1089,72,'Lapin lääni','LA',1),(1090,72,'Oulun lääni','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-Württemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Thüringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Puducherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'Kalimantan Utara','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','MY-01',1),(1972,129,'Kedah','MY-02',1),(1973,129,'Kelantan','MY-03',1),(1974,129,'Labuan','MY-15',1),(1975,129,'Melaka','MY-04',1),(1976,129,'Negeri Sembilan','MY-05',1),(1977,129,'Pahang','MY-06',1),(1978,129,'Perak','MY-08',1),(1979,129,'Perlis','MY-09',1),(1980,129,'Pulau Pinang','MY-07',1),(1981,129,'Sabah','MY-12',1),(1982,129,'Sarawak','MY-13',1),(1983,129,'Selangor','MY-10',1),(1984,129,'Terengganu','MY-11',1),(1985,129,'Kuala Lumpur','MY-14',1),(4035,129,'Putrajaya','MY-16',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord-Brabant','NB',1),(2336,150,'Noord-Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid-Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3032,197,'Saint Helena','S',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'Gävleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'Jämtland','Z',1),(3080,203,'Jönköping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'Örebro','T',1),(3085,203,'Östergötland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'Södermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'Värmland','S',1),(3091,203,'Västerbotten','AC',1),(3092,203,'Västernorrland','Y',1),(3093,203,'Västmanland','U',1),(3094,203,'Västra Götaland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graubünden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Zürich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakır','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkas\'ka Oblast\'','71',1),(3481,220,'Chernihivs\'ka Oblast\'','74',1),(3482,220,'Chernivets\'ka Oblast\'','77',1),(3483,220,'Crimea','43',1),(3484,220,'Dnipropetrovs\'ka Oblast\'','12',1),(3485,220,'Donets\'ka Oblast\'','14',1),(3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1),(3487,220,'Khersons\'ka Oblast\'','65',1),(3488,220,'Khmel\'nyts\'ka Oblast\'','68',1),(3489,220,'Kirovohrads\'ka Oblast\'','35',1),(3490,220,'Kyiv','30',1),(3491,220,'Kyivs\'ka Oblast\'','32',1),(3492,220,'Luhans\'ka Oblast\'','09',1),(3493,220,'L\'vivs\'ka Oblast\'','46',1),(3494,220,'Mykolayivs\'ka Oblast\'','48',1),(3495,220,'Odes\'ka Oblast\'','51',1),(3496,220,'Poltavs\'ka Oblast\'','53',1),(3497,220,'Rivnens\'ka Oblast\'','56',1),(3498,220,'Sevastopol\'','40',1),(3499,220,'Sums\'ka Oblast\'','59',1),(3500,220,'Ternopil\'s\'ka Oblast\'','61',1),(3501,220,'Vinnyts\'ka Oblast\'','05',1),(3502,220,'Volyns\'ka Oblast\'','07',1),(3503,220,'Zakarpats\'ka Oblast\'','21',1),(3504,220,'Zaporiz\'ka Oblast\'','23',1),(3505,220,'Zhytomyrs\'ka oblast\'','18',1),(3506,221,'Abu Dhabi','ADH',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubai','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1),(4036,117,'Ainaži, Salacgrīvas novads','0661405',1),(4037,117,'Aizkraukle, Aizkraukles novads','0320201',1),(4038,117,'Aizkraukles novads','0320200',1),(4039,117,'Aizpute, Aizputes novads','0640605',1),(4040,117,'Aizputes novads','0640600',1),(4041,117,'Aknīste, Aknīstes novads','0560805',1),(4042,117,'Aknīstes novads','0560800',1),(4043,117,'Aloja, Alojas novads','0661007',1),(4044,117,'Alojas novads','0661000',1),(4045,117,'Alsungas novads','0624200',1),(4046,117,'Alūksne, Alūksnes novads','0360201',1),(4047,117,'Alūksnes novads','0360200',1),(4048,117,'Amatas novads','0424701',1),(4049,117,'Ape, Apes novads','0360805',1),(4050,117,'Apes novads','0360800',1),(4051,117,'Auce, Auces novads','0460805',1),(4052,117,'Auces novads','0460800',1),(4053,117,'Ādažu novads','0804400',1),(4054,117,'Babītes novads','0804900',1),(4055,117,'Baldone, Baldones novads','0800605',1),(4056,117,'Baldones novads','0800600',1),(4057,117,'Baloži, Ķekavas novads','0800807',1),(4058,117,'Baltinavas novads','0384400',1),(4059,117,'Balvi, Balvu novads','0380201',1),(4060,117,'Balvu novads','0380200',1),(4061,117,'Bauska, Bauskas novads','0400201',1),(4062,117,'Bauskas novads','0400200',1),(4063,117,'Beverīnas novads','0964700',1),(4064,117,'Brocēni, Brocēnu novads','0840605',1),(4065,117,'Brocēnu novads','0840601',1),(4066,117,'Burtnieku novads','0967101',1),(4067,117,'Carnikavas novads','0805200',1),(4068,117,'Cesvaine, Cesvaines novads','0700807',1),(4069,117,'Cesvaines novads','0700800',1),(4070,117,'Cēsis, Cēsu novads','0420201',1),(4071,117,'Cēsu novads','0420200',1),(4072,117,'Ciblas novads','0684901',1),(4073,117,'Dagda, Dagdas novads','0601009',1),(4074,117,'Dagdas novads','0601000',1),(4075,117,'Daugavpils','0050000',1),(4076,117,'Daugavpils novads','0440200',1),(4077,117,'Dobele, Dobeles novads','0460201',1),(4078,117,'Dobeles novads','0460200',1),(4079,117,'Dundagas novads','0885100',1),(4080,117,'Durbe, Durbes novads','0640807',1),(4081,117,'Durbes novads','0640801',1),(4082,117,'Engures novads','0905100',1),(4083,117,'Ērgļu novads','0705500',1),(4084,117,'Garkalnes novads','0806000',1),(4085,117,'Grobiņa, Grobiņas novads','0641009',1),(4086,117,'Grobiņas novads','0641000',1),(4087,117,'Gulbene, Gulbenes novads','0500201',1),(4088,117,'Gulbenes novads','0500200',1),(4089,117,'Iecavas novads','0406400',1),(4090,117,'Ikšķile, Ikšķiles novads','0740605',1),(4091,117,'Ikšķiles novads','0740600',1),(4092,117,'Ilūkste, Ilūkstes novads','0440807',1),(4093,117,'Ilūkstes novads','0440801',1),(4094,117,'Inčukalna novads','0801800',1),(4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1),(4096,117,'Jaunjelgavas novads','0321000',1),(4097,117,'Jaunpiebalgas novads','0425700',1),(4098,117,'Jaunpils novads','0905700',1),(4099,117,'Jelgava','0090000',1),(4100,117,'Jelgavas novads','0540200',1),(4101,117,'Jēkabpils','0110000',1),(4102,117,'Jēkabpils novads','0560200',1),(4103,117,'Jūrmala','0130000',1),(4104,117,'Kalnciems, Jelgavas novads','0540211',1),(4105,117,'Kandava, Kandavas novads','0901211',1),(4106,117,'Kandavas novads','0901201',1),(4107,117,'Kārsava, Kārsavas novads','0681009',1),(4108,117,'Kārsavas novads','0681000',1),(4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1),(4110,117,'Kokneses novads','0326100',1),(4111,117,'Krāslava, Krāslavas novads','0600201',1),(4112,117,'Krāslavas novads','0600202',1),(4113,117,'Krimuldas novads','0806900',1),(4114,117,'Krustpils novads','0566900',1),(4115,117,'Kuldīga, Kuldīgas novads','0620201',1),(4116,117,'Kuldīgas novads','0620200',1),(4117,117,'Ķeguma novads','0741001',1),(4118,117,'Ķegums, Ķeguma novads','0741009',1),(4119,117,'Ķekavas novads','0800800',1),(4120,117,'Lielvārde, Lielvārdes novads','0741413',1),(4121,117,'Lielvārdes novads','0741401',1),(4122,117,'Liepāja','0170000',1),(4123,117,'Limbaži, Limbažu novads','0660201',1),(4124,117,'Limbažu novads','0660200',1),(4125,117,'Līgatne, Līgatnes novads','0421211',1),(4126,117,'Līgatnes novads','0421200',1),(4127,117,'Līvāni, Līvānu novads','0761211',1),(4128,117,'Līvānu novads','0761201',1),(4129,117,'Lubāna, Lubānas novads','0701413',1),(4130,117,'Lubānas novads','0701400',1),(4131,117,'Ludza, Ludzas novads','0680201',1),(4132,117,'Ludzas novads','0680200',1),(4133,117,'Madona, Madonas novads','0700201',1),(4134,117,'Madonas novads','0700200',1),(4135,117,'Mazsalaca, Mazsalacas novads','0961011',1),(4136,117,'Mazsalacas novads','0961000',1),(4137,117,'Mālpils novads','0807400',1),(4138,117,'Mārupes novads','0807600',1),(4139,117,'Mērsraga novads','0887600',1),(4140,117,'Naukšēnu novads','0967300',1),(4141,117,'Neretas novads','0327100',1),(4142,117,'Nīcas novads','0647900',1),(4143,117,'Ogre, Ogres novads','0740201',1),(4144,117,'Ogres novads','0740202',1),(4145,117,'Olaine, Olaines novads','0801009',1),(4146,117,'Olaines novads','0801000',1),(4147,117,'Ozolnieku novads','0546701',1),(4148,117,'Pārgaujas novads','0427500',1),(4149,117,'Pāvilosta, Pāvilostas novads','0641413',1),(4150,117,'Pāvilostas novads','0641401',1),(4151,117,'Piltene, Ventspils novads','0980213',1),(4152,117,'Pļaviņas, Pļaviņu novads','0321413',1),(4153,117,'Pļaviņu novads','0321400',1),(4154,117,'Preiļi, Preiļu novads','0760201',1),(4155,117,'Preiļu novads','0760202',1),(4156,117,'Priekule, Priekules novads','0641615',1),(4157,117,'Priekules novads','0641600',1),(4158,117,'Priekuļu novads','0427300',1),(4159,117,'Raunas novads','0427700',1),(4160,117,'Rēzekne','0210000',1),(4161,117,'Rēzeknes novads','0780200',1),(4162,117,'Riebiņu novads','0766300',1),(4163,117,'Rīga','0010000',1),(4164,117,'Rojas novads','0888300',1),(4165,117,'Ropažu novads','0808400',1),(4166,117,'Rucavas novads','0648500',1),(4167,117,'Rugāju novads','0387500',1),(4168,117,'Rundāles novads','0407700',1),(4169,117,'Rūjiena, Rūjienas novads','0961615',1),(4170,117,'Rūjienas novads','0961600',1),(4171,117,'Sabile, Talsu novads','0880213',1),(4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1),(4173,117,'Salacgrīvas novads','0661400',1),(4174,117,'Salas novads','0568700',1),(4175,117,'Salaspils novads','0801200',1),(4176,117,'Salaspils, Salaspils novads','0801211',1),(4177,117,'Saldus novads','0840200',1),(4178,117,'Saldus, Saldus novads','0840201',1),(4179,117,'Saulkrasti, Saulkrastu novads','0801413',1),(4180,117,'Saulkrastu novads','0801400',1),(4181,117,'Seda, Strenču novads','0941813',1),(4182,117,'Sējas novads','0809200',1),(4183,117,'Sigulda, Siguldas novads','0801615',1),(4184,117,'Siguldas novads','0801601',1),(4185,117,'Skrīveru novads','0328200',1),(4186,117,'Skrunda, Skrundas novads','0621209',1),(4187,117,'Skrundas novads','0621200',1),(4188,117,'Smiltene, Smiltenes novads','0941615',1),(4189,117,'Smiltenes novads','0941600',1),(4190,117,'Staicele, Alojas novads','0661017',1),(4191,117,'Stende, Talsu novads','0880215',1),(4192,117,'Stopiņu novads','0809600',1),(4193,117,'Strenči, Strenču novads','0941817',1),(4194,117,'Strenču novads','0941800',1),(4195,117,'Subate, Ilūkstes novads','0440815',1),(4196,117,'Talsi, Talsu novads','0880201',1),(4197,117,'Talsu novads','0880200',1),(4198,117,'Tērvetes novads','0468900',1),(4199,117,'Tukuma novads','0900200',1),(4200,117,'Tukums, Tukuma novads','0900201',1),(4201,117,'Vaiņodes novads','0649300',1),(4202,117,'Valdemārpils, Talsu novads','0880217',1),(4203,117,'Valka, Valkas novads','0940201',1),(4204,117,'Valkas novads','0940200',1),(4205,117,'Valmiera','0250000',1),(4206,117,'Vangaži, Inčukalna novads','0801817',1),(4207,117,'Varakļāni, Varakļānu novads','0701817',1),(4208,117,'Varakļānu novads','0701800',1),(4209,117,'Vārkavas novads','0769101',1),(4210,117,'Vecpiebalgas novads','0429300',1),(4211,117,'Vecumnieku novads','0409500',1),(4212,117,'Ventspils','0270000',1),(4213,117,'Ventspils novads','0980200',1),(4214,117,'Viesīte, Viesītes novads','0561815',1),(4215,117,'Viesītes novads','0561800',1),(4216,117,'Viļaka, Viļakas novads','0381615',1),(4217,117,'Viļakas novads','0381600',1),(4218,117,'Viļāni, Viļānu novads','0781817',1),(4219,117,'Viļānu novads','0781800',1),(4220,117,'Zilupe, Zilupes novads','0681817',1),(4221,117,'Zilupes novads','0681801',1),(4222,43,'Arica y Parinacota','AP',1),(4223,43,'Los Rios','LR',1),(4224,220,'Kharkivs\'ka Oblast\'','63',1),(4225,118,'Beirut','LB-BR',1),(4226,118,'Bekaa','LB-BE',1),(4227,118,'Mount Lebanon','LB-ML',1),(4228,118,'Nabatieh','LB-NB',1),(4229,118,'North','LB-NR',1),(4230,118,'South','LB-ST',1),(4231,99,'Telangana','TS',1),(4232,44,'Qinghai','QH',1),(4233,100,'Papua Barat','PB',1),(4234,100,'Sulawesi Barat','SR',1),(4235,100,'Kepulauan Riau','KR',1),(4236,105,'Barletta-Andria-Trani','BT',1),(4237,105,'Fermo','FM',1),(4238,105,'Monza Brianza','MB',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,156,2388,7,'2018-07-11 08:54:20','0000-00-00 00:00:00'),(112,156,2389,6,'2018-07-11 08:52:44','0000-00-00 00:00:00'),(114,156,2390,8,'2018-07-11 08:57:08','0000-00-00 00:00:00'),(115,156,2391,9,'2018-07-11 09:00:14','0000-00-00 00:00:00'),(116,156,2392,10,'2018-07-11 09:01:06','0000-00-00 00:00:00'),(117,156,2393,11,'2018-07-11 09:01:55','0000-00-00 00:00:00'),(118,156,2394,12,'2018-07-11 09:03:21','0000-00-00 00:00:00'),(119,156,2395,13,'2018-07-11 09:04:48','0000-00-00 00:00:00'),(120,156,2396,14,'2018-07-11 09:05:26','0000-00-00 00:00:00'),(121,156,2397,15,'2018-07-11 09:06:41','0000-00-00 00:00:00'),(122,156,2398,16,'2018-07-11 09:13:18','0000-00-00 00:00:00'),(123,156,2399,17,'2018-07-11 09:15:21','0000-00-00 00:00:00'),(124,156,2400,18,'2018-07-11 09:15:55','0000-00-00 00:00:00'),(125,156,2401,19,'2018-07-11 09:17:23','0000-00-00 00:00:00'),(126,156,2402,20,'2018-07-11 09:18:41','0000-00-00 00:00:00'),(127,156,2403,21,'2018-07-11 09:20:01','0000-00-00 00:00:00'),(128,156,2404,22,'2018-07-11 09:20:51','0000-00-00 00:00:00'),(129,156,2405,23,'2018-07-11 09:21:31','0000-00-00 00:00:00'),(130,156,2406,24,'2018-07-11 09:22:11','0000-00-00 00:00:00'),(131,156,2407,25,'2018-07-11 09:24:42','0000-00-00 00:00:00'),(132,156,2408,26,'2018-07-11 09:25:38','0000-00-00 00:00:00'),(133,156,2409,27,'2018-07-11 09:26:26','0000-00-00 00:00:00'),(134,156,2410,28,'2018-07-11 09:27:03','0000-00-00 00:00:00'),(135,156,2411,29,'2018-07-11 09:27:56','0000-00-00 00:00:00'),(136,156,2412,30,'2018-07-11 09:28:32','0000-00-00 00:00:00'),(137,156,2413,31,'2018-07-11 09:29:18','0000-00-00 00:00:00'),(138,156,2414,32,'2018-07-11 09:29:53','0000-00-00 00:00:00'),(139,156,2415,33,'2018-07-11 09:30:29','0000-00-00 00:00:00'),(140,156,2416,34,'2018-07-11 09:31:20','0000-00-00 00:00:00'),(141,156,2417,35,'2018-07-11 09:31:59','0000-00-00 00:00:00'),(142,156,2418,36,'2018-07-11 09:32:34','0000-00-00 00:00:00'),(143,156,2419,37,'2018-07-11 09:33:20','0000-00-00 00:00:00'),(144,156,2420,38,'2018-07-11 09:34:11','0000-00-00 00:00:00'),(145,156,2421,39,'2018-07-11 09:34:50','0000-00-00 00:00:00'),(146,156,2422,40,'2018-07-11 09:35:42','0000-00-00 00:00:00'),(147,156,2423,41,'2018-07-11 09:36:22','0000-00-00 00:00:00'),(148,156,2424,42,'2018-07-11 09:36:58','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_address`
--

DROP TABLE IF EXISTS `sort_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_address`
--

LOCK TABLES `sort_address` WRITE;
/*!40000 ALTER TABLE `sort_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_api`
--

DROP TABLE IF EXISTS `sort_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_api`
--

LOCK TABLES `sort_api` WRITE;
/*!40000 ALTER TABLE `sort_api` DISABLE KEYS */;
INSERT INTO `sort_api` VALUES (1,'Default','pm6TrWbGdyHVNB8qk9YzkKHXWEWdPazFJJrWaNGnxO7kAKvNPlXCN73kzfGJtaA1tGXx80eFSJj97Hs4tNUNp3jEhjBmvnFtznqBzeCsaeTTFpSAB1tw7vfN7O1ZKCunBUxyaTlivXS83FmzkkWClQIsGLDFWcncLVfwcM4gbENJt7qNlh8tY2mb634Jo5ezNLJF4LdrcvmQ925IuoOmVLT6NphNPn0hjZYIq6qh5wYbW2sfwQWXEW7l5ZAzWXQN',1,'2018-04-25 17:04:47','2018-04-25 17:04:47');
/*!40000 ALTER TABLE `sort_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_api_ip`
--

DROP TABLE IF EXISTS `sort_api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_api_ip`
--

LOCK TABLES `sort_api_ip` WRITE;
/*!40000 ALTER TABLE `sort_api_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_api_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_api_session`
--

DROP TABLE IF EXISTS `sort_api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_api_session`
--

LOCK TABLES `sort_api_session` WRITE;
/*!40000 ALTER TABLE `sort_api_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_api_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_attribute`
--

DROP TABLE IF EXISTS `sort_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_attribute`
--

LOCK TABLES `sort_attribute` WRITE;
/*!40000 ALTER TABLE `sort_attribute` DISABLE KEYS */;
INSERT INTO `sort_attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `sort_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_attribute_description`
--

DROP TABLE IF EXISTS `sort_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_attribute_description`
--

LOCK TABLES `sort_attribute_description` WRITE;
/*!40000 ALTER TABLE `sort_attribute_description` DISABLE KEYS */;
INSERT INTO `sort_attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'test 1'),(5,1,'test 2'),(6,1,'test 3'),(7,1,'test 4'),(8,1,'test 5'),(9,1,'test 6'),(10,1,'test 7'),(11,1,'test 8'),(3,1,'Clockspeed');
/*!40000 ALTER TABLE `sort_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_attribute_group`
--

DROP TABLE IF EXISTS `sort_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_attribute_group`
--

LOCK TABLES `sort_attribute_group` WRITE;
/*!40000 ALTER TABLE `sort_attribute_group` DISABLE KEYS */;
INSERT INTO `sort_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `sort_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_attribute_group_description`
--

DROP TABLE IF EXISTS `sort_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_attribute_group_description`
--

LOCK TABLES `sort_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `sort_attribute_group_description` DISABLE KEYS */;
INSERT INTO `sort_attribute_group_description` VALUES (3,1,'Memory'),(4,1,'Technical'),(5,1,'Motherboard'),(6,1,'Processor');
/*!40000 ALTER TABLE `sort_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_banner`
--

DROP TABLE IF EXISTS `sort_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_banner`
--

LOCK TABLES `sort_banner` WRITE;
/*!40000 ALTER TABLE `sort_banner` DISABLE KEYS */;
INSERT INTO `sort_banner` VALUES (6,'HP Products',1),(7,'Home Page Slideshow',1),(8,'Manufacturers',1);
/*!40000 ALTER TABLE `sort_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_banner_image`
--

DROP TABLE IF EXISTS `sort_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_banner_image`
--

LOCK TABLES `sort_banner_image` WRITE;
/*!40000 ALTER TABLE `sort_banner_image` DISABLE KEYS */;
INSERT INTO `sort_banner_image` VALUES (79,7,1,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(87,6,1,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(94,8,1,'NFL','','catalog/demo/manufacturer/nfl.png',0),(95,8,1,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(96,8,1,'Sony','','catalog/demo/manufacturer/sony.png',0),(91,8,1,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(92,8,1,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(93,8,1,'Canon','','catalog/demo/manufacturer/canon.png',0),(88,8,1,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(89,8,1,'Dell','','catalog/demo/manufacturer/dell.png',0),(90,8,1,'Disney','','catalog/demo/manufacturer/disney.png',0),(80,7,1,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),(97,8,1,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(98,8,1,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0);
/*!40000 ALTER TABLE `sort_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_cart`
--

DROP TABLE IF EXISTS `sort_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_cart`
--

LOCK TABLES `sort_cart` WRITE;
/*!40000 ALTER TABLE `sort_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_category`
--

DROP TABLE IF EXISTS `sort_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_category`
--

LOCK TABLES `sort_category` WRITE;
/*!40000 ALTER TABLE `sort_category` DISABLE KEYS */;
INSERT INTO `sort_category` VALUES (25,'',0,1,1,3,1,'2009-01-31 01:04:25','2011-05-30 12:14:55'),(27,'',20,0,0,2,1,'2009-01-31 01:55:34','2010-08-22 06:32:15'),(20,'catalog/demo/compaq_presario.jpg',0,1,1,1,1,'2009-01-05 21:49:43','2011-07-16 02:14:42'),(24,'',0,1,1,5,1,'2009-01-20 02:36:26','2011-05-30 12:15:18'),(18,'catalog/demo/hp_2.jpg',0,1,0,2,1,'2009-01-05 21:49:15','2011-05-30 12:13:55'),(17,'',0,1,1,4,1,'2009-01-03 21:08:57','2011-05-30 12:15:11'),(28,'',25,0,0,1,1,'2009-02-02 13:11:12','2010-08-22 06:32:46'),(26,'',20,0,0,1,1,'2009-01-31 01:55:14','2010-08-22 06:31:45'),(29,'',25,0,0,1,1,'2009-02-02 13:11:37','2010-08-22 06:32:39'),(30,'',25,0,0,1,1,'2009-02-02 13:11:59','2010-08-22 06:33:00'),(31,'',25,0,0,1,1,'2009-02-03 14:17:24','2010-08-22 06:33:06'),(32,'',25,0,0,1,1,'2009-02-03 14:17:34','2010-08-22 06:33:12'),(33,'',0,1,1,6,1,'2009-02-03 14:17:55','2011-05-30 12:15:25'),(34,'catalog/demo/ipod_touch_4.jpg',0,1,4,7,1,'2009-02-03 14:18:11','2011-05-30 12:15:31'),(35,'',28,0,0,0,1,'2010-09-17 10:06:48','2010-09-18 14:02:42'),(36,'',28,0,0,0,1,'2010-09-17 10:07:13','2010-09-18 14:02:55'),(37,'',34,0,0,0,1,'2010-09-18 14:03:39','2011-04-22 01:55:08'),(38,'',34,0,0,0,1,'2010-09-18 14:03:51','2010-09-18 14:03:51'),(39,'',34,0,0,0,1,'2010-09-18 14:04:17','2011-04-22 01:55:20'),(40,'',34,0,0,0,1,'2010-09-18 14:05:36','2010-09-18 14:05:36'),(41,'',34,0,0,0,1,'2010-09-18 14:05:49','2011-04-22 01:55:30'),(42,'',34,0,0,0,1,'2010-09-18 14:06:34','2010-11-07 20:31:04'),(43,'',34,0,0,0,1,'2010-09-18 14:06:49','2011-04-22 01:55:40'),(44,'',34,0,0,0,1,'2010-09-21 15:39:21','2010-11-07 20:30:55'),(45,'',18,0,0,0,1,'2010-09-24 18:29:16','2011-04-26 08:52:11'),(46,'',18,0,0,0,1,'2010-09-24 18:29:31','2011-04-26 08:52:23'),(47,'',34,0,0,0,1,'2010-11-07 11:13:16','2010-11-07 11:13:16'),(48,'',34,0,0,0,1,'2010-11-07 11:13:33','2010-11-07 11:13:33'),(49,'',34,0,0,0,1,'2010-11-07 11:14:04','2010-11-07 11:14:04'),(50,'',34,0,0,0,1,'2010-11-07 11:14:23','2011-04-22 01:16:01'),(51,'',34,0,0,0,1,'2010-11-07 11:14:38','2011-04-22 01:16:13'),(52,'',34,0,0,0,1,'2010-11-07 11:16:09','2011-04-22 01:54:57'),(53,'',34,0,0,0,1,'2010-11-07 11:28:53','2011-04-22 01:14:36'),(54,'',34,0,0,0,1,'2010-11-07 11:29:16','2011-04-22 01:16:50'),(55,'',34,0,0,0,1,'2010-11-08 10:31:32','2010-11-08 10:31:32'),(56,'',34,0,0,0,1,'2010-11-08 10:31:50','2011-04-22 01:16:37'),(57,'',0,1,1,3,1,'2011-04-26 08:53:16','2011-05-30 12:15:05'),(58,'',52,0,0,0,1,'2011-05-08 13:44:16','2011-05-08 13:44:16');
/*!40000 ALTER TABLE `sort_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_category_description`
--

DROP TABLE IF EXISTS `sort_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_category_description`
--

LOCK TABLES `sort_category_description` WRITE;
/*!40000 ALTER TABLE `sort_category_description` DISABLE KEYS */;
INSERT INTO `sort_category_description` VALUES (28,1,'Monitors','','Monitors','',''),(33,1,'Cameras','','Cameras','',''),(32,1,'Web Cameras','','Web Cameras','',''),(31,1,'Scanners','','Scanners','',''),(30,1,'Printers','','Printers','',''),(29,1,'Mice and Trackballs','','Mice and Trackballs','',''),(27,1,'Mac','','Mac','',''),(26,1,'PC','','PC','',''),(17,1,'Software','','Software','',''),(25,1,'Components','','Components','',''),(24,1,'Phones &amp; PDAs','','Phones &amp; PDAs','',''),(20,1,'Desktops','&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n','Desktops','Example of category description',''),(35,1,'test 1','','test 1','',''),(36,1,'test 2','','test 2','',''),(37,1,'test 5','','test 5','',''),(38,1,'test 4','','test 4','',''),(39,1,'test 6','','test 6','',''),(40,1,'test 7','','test 7','',''),(41,1,'test 8','','test 8','',''),(42,1,'test 9','','test 9','',''),(43,1,'test 11','','test 11','',''),(34,1,'MP3 Players','&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n','MP3 Players','',''),(18,1,'Laptops &amp; Notebooks','&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n','Laptops &amp; Notebooks','',''),(44,1,'test 12','','test 12','',''),(45,1,'Windows','','Windows','',''),(46,1,'Macs','','Macs','',''),(47,1,'test 15','','test 15','',''),(48,1,'test 16','','test 16','',''),(49,1,'test 17','','test 17','',''),(50,1,'test 18','','test 18','',''),(51,1,'test 19','','test 19','',''),(52,1,'test 20','','test 20','',''),(53,1,'test 21','','test 21','',''),(54,1,'test 22','','test 22','',''),(55,1,'test 23','','test 23','',''),(56,1,'test 24','','test 24','',''),(57,1,'Tablets','','Tablets','',''),(58,1,'test 25','','test 25','','');
/*!40000 ALTER TABLE `sort_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_category_filter`
--

DROP TABLE IF EXISTS `sort_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_category_filter`
--

LOCK TABLES `sort_category_filter` WRITE;
/*!40000 ALTER TABLE `sort_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_category_path`
--

DROP TABLE IF EXISTS `sort_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_category_path`
--

LOCK TABLES `sort_category_path` WRITE;
/*!40000 ALTER TABLE `sort_category_path` DISABLE KEYS */;
INSERT INTO `sort_category_path` VALUES (25,25,0),(28,25,0),(28,28,1),(35,25,0),(35,28,1),(35,35,2),(36,25,0),(36,28,1),(36,36,2),(29,25,0),(29,29,1),(30,25,0),(30,30,1),(31,25,0),(31,31,1),(32,25,0),(32,32,1),(20,20,0),(27,20,0),(27,27,1),(26,20,0),(26,26,1),(24,24,0),(18,18,0),(45,18,0),(45,45,1),(46,18,0),(46,46,1),(17,17,0),(33,33,0),(34,34,0),(37,34,0),(37,37,1),(38,34,0),(38,38,1),(39,34,0),(39,39,1),(40,34,0),(40,40,1),(41,34,0),(41,41,1),(42,34,0),(42,42,1),(43,34,0),(43,43,1),(44,34,0),(44,44,1),(47,34,0),(47,47,1),(48,34,0),(48,48,1),(49,34,0),(49,49,1),(50,34,0),(50,50,1),(51,34,0),(51,51,1),(52,34,0),(52,52,1),(58,34,0),(58,52,1),(58,58,2),(53,34,0),(53,53,1),(54,34,0),(54,54,1),(55,34,0),(55,55,1),(56,34,0),(56,56,1),(57,57,0);
/*!40000 ALTER TABLE `sort_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_category_to_layout`
--

DROP TABLE IF EXISTS `sort_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_category_to_layout`
--

LOCK TABLES `sort_category_to_layout` WRITE;
/*!40000 ALTER TABLE `sort_category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_category_to_store`
--

DROP TABLE IF EXISTS `sort_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_category_to_store`
--

LOCK TABLES `sort_category_to_store` WRITE;
/*!40000 ALTER TABLE `sort_category_to_store` DISABLE KEYS */;
INSERT INTO `sort_category_to_store` VALUES (17,0),(18,0),(20,0),(24,0),(25,0),(26,0),(27,0),(28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(37,0),(38,0),(39,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0),(50,0),(51,0),(52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0);
/*!40000 ALTER TABLE `sort_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_country`
--

DROP TABLE IF EXISTS `sort_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_country`
--

LOCK TABLES `sort_country` WRITE;
/*!40000 ALTER TABLE `sort_country` DISABLE KEYS */;
INSERT INTO `sort_country` VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'South Korea','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1);
/*!40000 ALTER TABLE `sort_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_coupon`
--

DROP TABLE IF EXISTS `sort_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_coupon`
--

LOCK TABLES `sort_coupon` WRITE;
/*!40000 ALTER TABLE `sort_coupon` DISABLE KEYS */;
INSERT INTO `sort_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `sort_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_coupon_category`
--

DROP TABLE IF EXISTS `sort_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_coupon_category`
--

LOCK TABLES `sort_coupon_category` WRITE;
/*!40000 ALTER TABLE `sort_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_coupon_history`
--

DROP TABLE IF EXISTS `sort_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_coupon_history`
--

LOCK TABLES `sort_coupon_history` WRITE;
/*!40000 ALTER TABLE `sort_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_coupon_product`
--

DROP TABLE IF EXISTS `sort_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_coupon_product`
--

LOCK TABLES `sort_coupon_product` WRITE;
/*!40000 ALTER TABLE `sort_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_currency`
--

DROP TABLE IF EXISTS `sort_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_currency`
--

LOCK TABLES `sort_currency` WRITE;
/*!40000 ALTER TABLE `sort_currency` DISABLE KEYS */;
INSERT INTO `sort_currency` VALUES (1,'Pound Sterling','GBP','£','','2',0.61250001,1,'2014-09-25 14:40:00'),(2,'US Dollar','USD','$','','2',1.00000000,1,'2014-09-25 14:40:00'),(3,'Euro','EUR','','€','2',0.78460002,1,'2014-09-25 14:40:00');
/*!40000 ALTER TABLE `sort_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_custom_field`
--

DROP TABLE IF EXISTS `sort_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_custom_field`
--

LOCK TABLES `sort_custom_field` WRITE;
/*!40000 ALTER TABLE `sort_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_custom_field_customer_group`
--

DROP TABLE IF EXISTS `sort_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_custom_field_customer_group`
--

LOCK TABLES `sort_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `sort_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_custom_field_description`
--

DROP TABLE IF EXISTS `sort_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_custom_field_description`
--

LOCK TABLES `sort_custom_field_description` WRITE;
/*!40000 ALTER TABLE `sort_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_custom_field_value`
--

DROP TABLE IF EXISTS `sort_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_custom_field_value`
--

LOCK TABLES `sort_custom_field_value` WRITE;
/*!40000 ALTER TABLE `sort_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_custom_field_value_description`
--

DROP TABLE IF EXISTS `sort_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_custom_field_value_description`
--

LOCK TABLES `sort_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `sort_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer`
--

DROP TABLE IF EXISTS `sort_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer`
--

LOCK TABLES `sort_customer` WRITE;
/*!40000 ALTER TABLE `sort_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_activity`
--

DROP TABLE IF EXISTS `sort_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_activity`
--

LOCK TABLES `sort_customer_activity` WRITE;
/*!40000 ALTER TABLE `sort_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_affiliate`
--

DROP TABLE IF EXISTS `sort_customer_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_affiliate`
--

LOCK TABLES `sort_customer_affiliate` WRITE;
/*!40000 ALTER TABLE `sort_customer_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_customer_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_approval`
--

DROP TABLE IF EXISTS `sort_customer_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_approval`
--

LOCK TABLES `sort_customer_approval` WRITE;
/*!40000 ALTER TABLE `sort_customer_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_customer_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_group`
--

DROP TABLE IF EXISTS `sort_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_group`
--

LOCK TABLES `sort_customer_group` WRITE;
/*!40000 ALTER TABLE `sort_customer_group` DISABLE KEYS */;
INSERT INTO `sort_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `sort_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_group_description`
--

DROP TABLE IF EXISTS `sort_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_group_description`
--

LOCK TABLES `sort_customer_group_description` WRITE;
/*!40000 ALTER TABLE `sort_customer_group_description` DISABLE KEYS */;
INSERT INTO `sort_customer_group_description` VALUES (1,1,'Default','test');
/*!40000 ALTER TABLE `sort_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_history`
--

DROP TABLE IF EXISTS `sort_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_history`
--

LOCK TABLES `sort_customer_history` WRITE;
/*!40000 ALTER TABLE `sort_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_ip`
--

DROP TABLE IF EXISTS `sort_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_ip`
--

LOCK TABLES `sort_customer_ip` WRITE;
/*!40000 ALTER TABLE `sort_customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_login`
--

DROP TABLE IF EXISTS `sort_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_login`
--

LOCK TABLES `sort_customer_login` WRITE;
/*!40000 ALTER TABLE `sort_customer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_online`
--

DROP TABLE IF EXISTS `sort_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_online`
--

LOCK TABLES `sort_customer_online` WRITE;
/*!40000 ALTER TABLE `sort_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_reward`
--

DROP TABLE IF EXISTS `sort_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_reward`
--

LOCK TABLES `sort_customer_reward` WRITE;
/*!40000 ALTER TABLE `sort_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_search`
--

DROP TABLE IF EXISTS `sort_customer_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_search`
--

LOCK TABLES `sort_customer_search` WRITE;
/*!40000 ALTER TABLE `sort_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_customer_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_transaction`
--

DROP TABLE IF EXISTS `sort_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_transaction`
--

LOCK TABLES `sort_customer_transaction` WRITE;
/*!40000 ALTER TABLE `sort_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_customer_wishlist`
--

DROP TABLE IF EXISTS `sort_customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_customer_wishlist`
--

LOCK TABLES `sort_customer_wishlist` WRITE;
/*!40000 ALTER TABLE `sort_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_download`
--

DROP TABLE IF EXISTS `sort_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_download`
--

LOCK TABLES `sort_download` WRITE;
/*!40000 ALTER TABLE `sort_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_download_description`
--

DROP TABLE IF EXISTS `sort_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_download_description`
--

LOCK TABLES `sort_download_description` WRITE;
/*!40000 ALTER TABLE `sort_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_event`
--

DROP TABLE IF EXISTS `sort_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_event`
--

LOCK TABLES `sort_event` WRITE;
/*!40000 ALTER TABLE `sort_event` DISABLE KEYS */;
INSERT INTO `sort_event` VALUES (1,'activity_customer_add','catalog/model/account/customer/addCustomer/after','event/activity/addCustomer',1,0),(2,'activity_customer_edit','catalog/model/account/customer/editCustomer/after','event/activity/editCustomer',1,0),(3,'activity_customer_password','catalog/model/account/customer/editPassword/after','event/activity/editPassword',1,0),(4,'activity_customer_forgotten','catalog/model/account/customer/editCode/after','event/activity/forgotten',1,0),(5,'activity_transaction','catalog/model/account/customer/addTransaction/after','event/activity/addTransaction',1,0),(6,'activity_customer_login','catalog/model/account/customer/deleteLoginAttempts/after','event/activity/login',1,0),(7,'activity_address_add','catalog/model/account/address/addAddress/after','event/activity/addAddress',1,0),(8,'activity_address_edit','catalog/model/account/address/editAddress/after','event/activity/editAddress',1,0),(9,'activity_address_delete','catalog/model/account/address/deleteAddress/after','event/activity/deleteAddress',1,0),(10,'activity_affiliate_add','catalog/model/account/customer/addAffiliate/after','event/activity/addAffiliate',1,0),(11,'activity_affiliate_edit','catalog/model/account/customer/editAffiliate/after','event/activity/editAffiliate',1,0),(12,'activity_order_add','catalog/model/checkout/order/addOrderHistory/before','event/activity/addOrderHistory',1,0),(13,'activity_return_add','catalog/model/account/return/addReturn/after','event/activity/addReturn',1,0),(14,'mail_transaction','catalog/model/account/customer/addTransaction/after','mail/transaction',1,0),(15,'mail_forgotten','catalog/model/account/customer/editCode/after','mail/forgotten',1,0),(16,'mail_customer_add','catalog/model/account/customer/addCustomer/after','mail/register',1,0),(17,'mail_customer_alert','catalog/model/account/customer/addCustomer/after','mail/register/alert',1,0),(18,'mail_affiliate_add','catalog/model/account/customer/addAffiliate/after','mail/affiliate',1,0),(19,'mail_affiliate_alert','catalog/model/account/customer/addAffiliate/after','mail/affiliate/alert',1,0),(20,'mail_voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',1,0),(21,'mail_order_add','catalog/model/checkout/order/addOrderHistory/before','mail/order',1,0),(22,'mail_order_alert','catalog/model/checkout/order/addOrderHistory/before','mail/order/alert',1,0),(23,'statistics_review_add','catalog/model/catalog/review/addReview/after','event/statistics/addReview',1,0),(24,'statistics_return_add','catalog/model/account/return/addReturn/after','event/statistics/addReturn',1,0),(25,'statistics_order_history','catalog/model/checkout/order/addOrderHistory/after','event/statistics/addOrderHistory',1,0),(26,'admin_mail_affiliate_approve','admin/model/customer/customer_approval/approveAffiliate/after','mail/affiliate/approve',1,0),(27,'admin_mail_affiliate_deny','admin/model/customer/customer_approval/denyAffiliate/after','mail/affiliate/deny',1,0),(28,'admin_mail_customer_approve','admin/model/customer/customer_approval/approveCustomer/after','mail/customer/approve',1,0),(29,'admin_mail_customer_deny','admin/model/customer/customer_approval/denyCustomer/after','mail/customer/deny',1,0),(30,'admin_mail_reward','admin/model/customer/customer/addReward/after','mail/reward',1,0),(31,'admin_mail_transaction','admin/model/customer/customer/addTransaction/after','mail/transaction',1,0),(32,'admin_mail_return','admin/model/sale/return/addReturn/after','mail/return',1,0),(33,'admin_mail_forgotten','admin/model/user/user/editCode/after','mail/forgotten',1,0);
/*!40000 ALTER TABLE `sort_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_extension`
--

DROP TABLE IF EXISTS `sort_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_extension`
--

LOCK TABLES `sort_extension` WRITE;
/*!40000 ALTER TABLE `sort_extension` DISABLE KEYS */;
INSERT INTO `sort_extension` VALUES (1,'payment','cod'),(2,'total','shipping'),(3,'total','sub_total'),(4,'total','tax'),(5,'total','total'),(6,'module','banner'),(7,'module','carousel'),(8,'total','credit'),(9,'shipping','flat'),(10,'total','handling'),(11,'total','low_order_fee'),(12,'total','coupon'),(13,'module','category'),(14,'module','account'),(15,'total','reward'),(16,'total','voucher'),(17,'payment','free_checkout'),(18,'module','featured'),(19,'module','slideshow'),(20,'theme','default'),(21,'dashboard','activity'),(22,'dashboard','sale'),(23,'dashboard','recent'),(24,'dashboard','order'),(25,'dashboard','online'),(26,'dashboard','map'),(27,'dashboard','customer'),(28,'dashboard','chart'),(29,'report','sale_coupon'),(31,'report','customer_search'),(32,'report','customer_transaction'),(33,'report','product_purchased'),(34,'report','product_viewed'),(35,'report','sale_return'),(36,'report','sale_order'),(37,'report','sale_shipping'),(38,'report','sale_tax'),(39,'report','customer_activity'),(40,'report','customer_order'),(41,'report','customer_reward');
/*!40000 ALTER TABLE `sort_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_extension_install`
--

DROP TABLE IF EXISTS `sort_extension_install`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_extension_install`
--

LOCK TABLES `sort_extension_install` WRITE;
/*!40000 ALTER TABLE `sort_extension_install` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_extension_install` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_extension_path`
--

DROP TABLE IF EXISTS `sort_extension_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_extension_path`
--

LOCK TABLES `sort_extension_path` WRITE;
/*!40000 ALTER TABLE `sort_extension_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_extension_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_filter`
--

DROP TABLE IF EXISTS `sort_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_filter`
--

LOCK TABLES `sort_filter` WRITE;
/*!40000 ALTER TABLE `sort_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_filter_description`
--

DROP TABLE IF EXISTS `sort_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_filter_description`
--

LOCK TABLES `sort_filter_description` WRITE;
/*!40000 ALTER TABLE `sort_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_filter_group`
--

DROP TABLE IF EXISTS `sort_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_filter_group`
--

LOCK TABLES `sort_filter_group` WRITE;
/*!40000 ALTER TABLE `sort_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_filter_group_description`
--

DROP TABLE IF EXISTS `sort_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_filter_group_description`
--

LOCK TABLES `sort_filter_group_description` WRITE;
/*!40000 ALTER TABLE `sort_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_geo_zone`
--

DROP TABLE IF EXISTS `sort_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_geo_zone`
--

LOCK TABLES `sort_geo_zone` WRITE;
/*!40000 ALTER TABLE `sort_geo_zone` DISABLE KEYS */;
INSERT INTO `sort_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2009-01-06 23:26:25','2010-02-26 22:33:24'),(4,'UK Shipping','UK Shipping Zones','2009-06-23 01:14:53','2010-12-15 15:18:13');
/*!40000 ALTER TABLE `sort_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_information`
--

DROP TABLE IF EXISTS `sort_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_information`
--

LOCK TABLES `sort_information` WRITE;
/*!40000 ALTER TABLE `sort_information` DISABLE KEYS */;
INSERT INTO `sort_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1);
/*!40000 ALTER TABLE `sort_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_information_description`
--

DROP TABLE IF EXISTS `sort_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_information_description`
--

LOCK TABLES `sort_information_description` WRITE;
/*!40000 ALTER TABLE `sort_information_description` DISABLE KEYS */;
INSERT INTO `sort_information_description` VALUES (4,1,'About Us','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n','About Us','',''),(5,1,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','',''),(3,1,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','',''),(6,1,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','','');
/*!40000 ALTER TABLE `sort_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_information_to_layout`
--

DROP TABLE IF EXISTS `sort_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_information_to_layout`
--

LOCK TABLES `sort_information_to_layout` WRITE;
/*!40000 ALTER TABLE `sort_information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_information_to_store`
--

DROP TABLE IF EXISTS `sort_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_information_to_store`
--

LOCK TABLES `sort_information_to_store` WRITE;
/*!40000 ALTER TABLE `sort_information_to_store` DISABLE KEYS */;
INSERT INTO `sort_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `sort_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_language`
--

DROP TABLE IF EXISTS `sort_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_language`
--

LOCK TABLES `sort_language` WRITE;
/*!40000 ALTER TABLE `sort_language` DISABLE KEYS */;
INSERT INTO `sort_language` VALUES (1,'English','en-gb','en-US,en_US.UTF-8,en_US,en-gb,english','gb.png','english',1,1);
/*!40000 ALTER TABLE `sort_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_layout`
--

DROP TABLE IF EXISTS `sort_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_layout`
--

LOCK TABLES `sort_layout` WRITE;
/*!40000 ALTER TABLE `sort_layout` DISABLE KEYS */;
INSERT INTO `sort_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search');
/*!40000 ALTER TABLE `sort_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_layout_module`
--

DROP TABLE IF EXISTS `sort_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_layout_module`
--

LOCK TABLES `sort_layout_module` WRITE;
/*!40000 ALTER TABLE `sort_layout_module` DISABLE KEYS */;
INSERT INTO `sort_layout_module` VALUES (2,4,'0','content_top',0),(3,4,'0','content_top',1),(20,5,'0','column_left',2),(69,10,'account','column_right',1),(68,6,'account','column_right',1),(67,1,'carousel.29','content_top',3),(66,1,'slideshow.27','content_top',1),(65,1,'featured.28','content_top',2),(72,3,'category','column_left',1),(73,3,'banner.30','column_left',2);
/*!40000 ALTER TABLE `sort_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_layout_route`
--

DROP TABLE IF EXISTS `sort_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_layout_route`
--

LOCK TABLES `sort_layout_route` WRITE;
/*!40000 ALTER TABLE `sort_layout_route` DISABLE KEYS */;
INSERT INTO `sort_layout_route` VALUES (38,6,0,'account/%'),(17,10,0,'affiliate/%'),(44,3,0,'product/category'),(42,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(23,7,0,'checkout/%'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(34,4,0,''),(45,5,0,'product/manufacturer'),(52,12,0,'product/compare'),(53,13,0,'product/search');
/*!40000 ALTER TABLE `sort_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_length_class`
--

DROP TABLE IF EXISTS `sort_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_length_class`
--

LOCK TABLES `sort_length_class` WRITE;
/*!40000 ALTER TABLE `sort_length_class` DISABLE KEYS */;
INSERT INTO `sort_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `sort_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_length_class_description`
--

DROP TABLE IF EXISTS `sort_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sort_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_length_class_description`
--

LOCK TABLES `sort_length_class_description` WRITE;
/*!40000 ALTER TABLE `sort_length_class_description` DISABLE KEYS */;
INSERT INTO `sort_length_class_description` VALUES (1,1,'Centimeter','cm'),(2,1,'Millimeter','mm'),(3,1,'Inch','in');
/*!40000 ALTER TABLE `sort_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-28 11:29:13
