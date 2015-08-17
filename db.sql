-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: revive_dev
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `rv_account_preference_assoc`
--

DROP TABLE IF EXISTS `rv_account_preference_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_account_preference_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `preference_id` mediumint(9) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`account_id`,`preference_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_account_preference_assoc`
--

LOCK TABLES `rv_account_preference_assoc` WRITE;
/*!40000 ALTER TABLE `rv_account_preference_assoc` DISABLE KEYS */;
INSERT INTO `rv_account_preference_assoc` VALUES (1,1,''),(1,2,''),(1,3,'1'),(1,4,'1'),(1,5,'1'),(1,6,'100'),(1,7,'1'),(1,8,''),(1,9,''),(1,10,'1'),(1,11,'100'),(1,12,'1'),(1,13,'1'),(1,14,'100'),(1,15,'1'),(1,16,'Asia/Krasnoyarsk'),(1,17,'4'),(1,18,'1'),(1,19,''),(1,20,'1'),(1,21,'1'),(1,22,''),(1,23,''),(1,24,'1'),(1,25,''),(1,26,'1'),(1,27,''),(1,28,''),(1,29,'1'),(1,30,'1'),(1,31,'2'),(1,32,'1'),(1,33,''),(1,34,'4'),(1,35,''),(1,36,''),(1,37,'0'),(1,38,''),(1,39,''),(1,40,'0'),(1,41,''),(1,42,''),(1,43,'0'),(1,44,''),(1,45,''),(1,46,'0'),(1,47,''),(1,48,''),(1,49,'0'),(1,50,''),(1,51,''),(1,52,'0'),(1,53,''),(1,54,''),(1,55,'0'),(1,56,''),(1,57,''),(1,58,'0'),(1,59,''),(1,60,''),(1,61,'0'),(1,62,'1'),(1,63,''),(1,64,'5'),(1,65,''),(1,66,''),(1,67,'0'),(1,68,''),(1,69,''),(1,70,'0'),(1,71,''),(1,72,''),(1,73,'0'),(1,74,''),(1,75,''),(1,76,'0'),(1,77,'1'),(1,78,''),(1,79,'1'),(1,80,'1'),(1,81,''),(1,82,'2'),(1,83,'1'),(1,84,''),(1,85,'3'),(1,86,''),(1,87,''),(1,88,'0'),(1,89,''),(1,90,''),(1,91,'0'),(1,92,''),(1,93,''),(1,94,'0'),(1,95,''),(1,96,''),(1,97,'0');
/*!40000 ALTER TABLE `rv_account_preference_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_account_user_assoc`
--

DROP TABLE IF EXISTS `rv_account_user_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_account_user_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `linked` datetime NOT NULL,
  PRIMARY KEY (`account_id`,`user_id`),
  KEY `rv_account_user_assoc_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_account_user_assoc`
--

LOCK TABLES `rv_account_user_assoc` WRITE;
/*!40000 ALTER TABLE `rv_account_user_assoc` DISABLE KEYS */;
INSERT INTO `rv_account_user_assoc` VALUES (1,1,'2015-07-25 15:14:57'),(2,1,'2015-07-25 15:14:57');
/*!40000 ALTER TABLE `rv_account_user_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_account_user_permission_assoc`
--

DROP TABLE IF EXISTS `rv_account_user_permission_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_account_user_permission_assoc` (
  `account_id` mediumint(9) NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `permission_id` mediumint(9) NOT NULL,
  `is_allowed` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`account_id`,`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_account_user_permission_assoc`
--

LOCK TABLES `rv_account_user_permission_assoc` WRITE;
/*!40000 ALTER TABLE `rv_account_user_permission_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_account_user_permission_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_accounts`
--

DROP TABLE IF EXISTS `rv_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_accounts` (
  `account_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `account_type` varchar(16) NOT NULL DEFAULT '',
  `account_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `rv_accounts_account_type` (`account_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_accounts`
--

LOCK TABLES `rv_accounts` WRITE;
/*!40000 ALTER TABLE `rv_accounts` DISABLE KEYS */;
INSERT INTO `rv_accounts` VALUES (1,'ADMIN','Administrator account'),(2,'MANAGER','Default manager'),(3,'ADVERTISER','Demo'),(4,'TRAFFICKER','azharamir'),(5,'ADVERTISER','ABC');
/*!40000 ALTER TABLE `rv_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_acls`
--

DROP TABLE IF EXISTS `rv_acls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_acls` (
  `bannerid` mediumint(9) NOT NULL DEFAULT '0',
  `logical` varchar(3) NOT NULL DEFAULT 'and',
  `type` varchar(255) NOT NULL DEFAULT '',
  `comparison` char(2) NOT NULL DEFAULT '==',
  `data` text NOT NULL,
  `executionorder` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `rv_acls_bannerid_executionorder` (`bannerid`,`executionorder`),
  KEY `rv_acls_bannerid` (`bannerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_acls`
--

LOCK TABLES `rv_acls` WRITE;
/*!40000 ALTER TABLE `rv_acls` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_acls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_acls_channel`
--

DROP TABLE IF EXISTS `rv_acls_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_acls_channel` (
  `channelid` mediumint(9) NOT NULL DEFAULT '0',
  `logical` varchar(3) NOT NULL DEFAULT 'and',
  `type` varchar(255) NOT NULL DEFAULT '',
  `comparison` char(2) NOT NULL DEFAULT '==',
  `data` text NOT NULL,
  `executionorder` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `rv_acls_channel_channelid_executionorder` (`channelid`,`executionorder`),
  KEY `rv_acls_channel_channelid` (`channelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_acls_channel`
--

LOCK TABLES `rv_acls_channel` WRITE;
/*!40000 ALTER TABLE `rv_acls_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_acls_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_ad_category_assoc`
--

DROP TABLE IF EXISTS `rv_ad_category_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_ad_category_assoc` (
  `ad_category_assoc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ad_category_assoc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_ad_category_assoc`
--

LOCK TABLES `rv_ad_category_assoc` WRITE;
/*!40000 ALTER TABLE `rv_ad_category_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_ad_category_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_ad_zone_assoc`
--

DROP TABLE IF EXISTS `rv_ad_zone_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_ad_zone_assoc` (
  `ad_zone_assoc_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `zone_id` mediumint(9) DEFAULT NULL,
  `ad_id` mediumint(9) DEFAULT NULL,
  `priority` double DEFAULT '0',
  `link_type` smallint(6) NOT NULL DEFAULT '1',
  `priority_factor` double DEFAULT '0',
  `to_be_delivered` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_zone_assoc_id`),
  KEY `rv_ad_zone_assoc_zone_id` (`zone_id`),
  KEY `rv_ad_zone_assoc_ad_id` (`ad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_ad_zone_assoc`
--

LOCK TABLES `rv_ad_zone_assoc` WRITE;
/*!40000 ALTER TABLE `rv_ad_zone_assoc` DISABLE KEYS */;
INSERT INTO `rv_ad_zone_assoc` VALUES (1,0,1,0,0,1,1),(2,0,2,0,0,1,1),(3,0,3,0,0,1,1),(4,1,3,0,1,1,1);
/*!40000 ALTER TABLE `rv_ad_zone_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_affiliates`
--

DROP TABLE IF EXISTS `rv_affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_affiliates` (
  `affiliateid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `agencyid` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `mnemonic` varchar(5) NOT NULL DEFAULT '',
  `comments` text,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `website` varchar(255) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `oac_country_code` char(2) NOT NULL DEFAULT '',
  `oac_language_id` int(11) DEFAULT NULL,
  `oac_category_id` int(11) DEFAULT NULL,
  `account_id` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`affiliateid`),
  UNIQUE KEY `rv_affiliates_account_id` (`account_id`),
  KEY `rv_affiliates_agencyid` (`agencyid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_affiliates`
--

LOCK TABLES `rv_affiliates` WRITE;
/*!40000 ALTER TABLE `rv_affiliates` DISABLE KEYS */;
INSERT INTO `rv_affiliates` VALUES (1,1,'azharamir','','','0929292','azhar@detik.com','http://azharamir.com','2015-07-25 08:23:16','',NULL,NULL,4);
/*!40000 ALTER TABLE `rv_affiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_affiliates_extra`
--

DROP TABLE IF EXISTS `rv_affiliates_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_affiliates_extra` (
  `affiliateid` mediumint(9) NOT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `postcode` varchar(64) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `fax` varchar(64) DEFAULT NULL,
  `account_contact` varchar(255) DEFAULT NULL,
  `payee_name` varchar(255) DEFAULT NULL,
  `tax_id` varchar(64) DEFAULT NULL,
  `mode_of_payment` varchar(64) DEFAULT NULL,
  `currency` varchar(64) DEFAULT NULL,
  `unique_users` int(11) DEFAULT NULL,
  `unique_views` int(11) DEFAULT NULL,
  `page_rank` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `help_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`affiliateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_affiliates_extra`
--

LOCK TABLES `rv_affiliates_extra` WRITE;
/*!40000 ALTER TABLE `rv_affiliates_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_affiliates_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_agency`
--

DROP TABLE IF EXISTS `rv_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_agency` (
  `agencyid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `logout_url` varchar(255) DEFAULT NULL,
  `active` smallint(1) DEFAULT '0',
  `updated` datetime NOT NULL,
  `account_id` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`agencyid`),
  UNIQUE KEY `rv_agency_account_id` (`account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_agency`
--

LOCK TABLES `rv_agency` WRITE;
/*!40000 ALTER TABLE `rv_agency` DISABLE KEYS */;
INSERT INTO `rv_agency` VALUES (1,'Default manager',NULL,'azhar.amirr@gmail.com',NULL,1,'2015-07-25 08:14:57',2);
/*!40000 ALTER TABLE `rv_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_application_variable`
--

DROP TABLE IF EXISTS `rv_application_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_application_variable` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_application_variable`
--

LOCK TABLES `rv_application_variable` WRITE;
/*!40000 ALTER TABLE `rv_application_variable` DISABLE KEYS */;
INSERT INTO `rv_application_variable` VALUES ('tables_core','620'),('oa_version','3.2.1'),('admin_account_id','1'),('oxHtml_version','1.2.5'),('oxText_version','1.2.5'),('Client_version','1.3.2'),('Geo_version','1.3.3'),('Site_version','1.3.3'),('Time_version','1.3.3'),('ox3rdPartyServers_version','1.2.1'),('oxReportsStandard_version','1.5.5'),('oxReportsAdmin_version','1.5.4'),('oxCacheFile_version','1.1.3'),('oxMemcached_version','1.1.3'),('oxMaxMindGeoIP_version','1.3.3'),('oxInvocationTags_version','1.4.4'),('tables_oxDeliveryDataPrepare','002'),('oxDeliveryDataPrepare_version','1.1.2'),('oxLogClick_version','1.1.2'),('oxLogConversion_version','1.1.2'),('oxLogImpression_version','1.1.2'),('oxLogRequest_version','1.1.2'),('tables_vastbannertypehtml','013'),('vastInlineBannerTypeHtml_version','1.11.1'),('vastOverlayBannerTypeHtml_version','1.11.1'),('oxLogVast_version','1.11.1'),('vastServeVideoPlayer_version','1.11.1'),('videoReport_version','1.11.1'),('maintenance_timestamp','1439379463'),('platform_hash','0f314a489c61c3850a9115d8dca5bb44c37d8fd8'),('sync_last_run','2015-08-12 18:37:51'),('sync_cache','b:0;'),('sync_timestamp','1439379471');
/*!40000 ALTER TABLE `rv_application_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_audit`
--

DROP TABLE IF EXISTS `rv_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_audit` (
  `auditid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `actionid` mediumint(9) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT '',
  `contextid` mediumint(9) DEFAULT NULL,
  `parentid` mediumint(9) DEFAULT NULL,
  `details` text NOT NULL,
  `userid` mediumint(9) NOT NULL DEFAULT '0',
  `username` varchar(64) DEFAULT NULL,
  `usertype` tinyint(4) NOT NULL DEFAULT '0',
  `updated` datetime DEFAULT NULL,
  `account_id` mediumint(9) NOT NULL,
  `advertiser_account_id` mediumint(9) DEFAULT NULL,
  `website_account_id` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`auditid`),
  KEY `rv_audit_parentid_contextid` (`parentid`,`contextid`),
  KEY `rv_audit_updated` (`updated`),
  KEY `rv_audit_usertype` (`usertype`),
  KEY `rv_audit_username` (`username`),
  KEY `rv_audit_context_actionid` (`context`,`actionid`),
  KEY `rv_audit_account_id` (`account_id`),
  KEY `rv_audit_advertiser_account_id` (`advertiser_account_id`),
  KEY `rv_audit_website_account_id` (`website_account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_audit`
--

LOCK TABLES `rv_audit` WRITE;
/*!40000 ALTER TABLE `rv_audit` DISABLE KEYS */;
INSERT INTO `rv_audit` VALUES (1,1,'accounts',1,NULL,'a:4:{s:10:\"account_id\";i:1;s:12:\"account_type\";s:5:\"ADMIN\";s:12:\"account_name\";s:21:\"Administrator account\";s:8:\"key_desc\";s:21:\"Administrator account\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(2,1,'accounts',2,NULL,'a:4:{s:10:\"account_id\";i:2;s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:8:\"key_desc\";s:15:\"Default manager\";}',0,'Installer',0,'2015-07-25 08:14:57',2,NULL,NULL),(3,1,'agency',1,NULL,'a:9:{s:8:\"agencyid\";i:1;s:4:\"name\";s:15:\"Default manager\";s:7:\"contact\";s:4:\"null\";s:5:\"email\";s:21:\"azhar.amirr@gmail.com\";s:10:\"logout_url\";s:4:\"null\";s:6:\"active\";i:1;s:7:\"updated\";s:19:\"2015-07-25 08:14:57\";s:10:\"account_id\";i:2;s:8:\"key_desc\";s:15:\"Default manager\";}',0,'Installer',0,'2015-07-25 08:14:57',2,NULL,NULL),(4,1,'users',1,NULL,'a:14:{s:7:\"user_id\";i:1;s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:21:\"azhar.amirr@gmail.com\";s:8:\"username\";s:5:\"admin\";s:8:\"password\";s:6:\"******\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";i:2;s:8:\"comments\";s:4:\"null\";s:6:\"active\";s:4:\"null\";s:11:\"sso_user_id\";i:0;s:12:\"date_created\";s:19:\"2015-07-25 15:14:57\";s:15:\"date_last_login\";s:4:\"null\";s:13:\"email_updated\";s:19:\"2015-07-25 15:14:57\";s:8:\"key_desc\";s:5:\"admin\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(5,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:7:\"user_id\";i:1;s:6:\"linked\";s:19:\"2015-07-25 15:14:57\";s:8:\"key_desc\";s:21:\"Account #1 -> User #1\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(6,1,'account_user_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:2;s:7:\"user_id\";i:1;s:6:\"linked\";s:19:\"2015-07-25 15:14:57\";s:8:\"key_desc\";s:21:\"Account #2 -> User #1\";}',0,'Installer',0,'2015-07-25 08:14:57',2,NULL,NULL),(7,1,'preferences',1,NULL,'a:4:{s:13:\"preference_id\";i:1;s:15:\"preference_name\";s:24:\"default_banner_image_url\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:24:\"default_banner_image_url\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(8,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:1;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #1\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(9,1,'preferences',2,NULL,'a:4:{s:13:\"preference_id\";i:2;s:15:\"preference_name\";s:30:\"default_banner_destination_url\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:30:\"default_banner_destination_url\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(10,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:2;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:27:\"Account #1 -> Preference #2\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(11,1,'preferences',3,NULL,'a:4:{s:13:\"preference_id\";i:3;s:15:\"preference_name\";s:21:\"default_banner_weight\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"default_banner_weight\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(12,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:3;s:5:\"value\";i:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #3\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(13,1,'preferences',4,NULL,'a:4:{s:13:\"preference_id\";i:4;s:15:\"preference_name\";s:23:\"default_campaign_weight\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:23:\"default_campaign_weight\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(14,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:4;s:5:\"value\";i:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #4\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(15,1,'preferences',5,NULL,'a:4:{s:13:\"preference_id\";i:5;s:15:\"preference_name\";s:16:\"warn_email_admin\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:16:\"warn_email_admin\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(16,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:5;s:5:\"value\";b:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #5\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(17,1,'preferences',6,NULL,'a:4:{s:13:\"preference_id\";i:6;s:15:\"preference_name\";s:33:\"warn_email_admin_impression_limit\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:33:\"warn_email_admin_impression_limit\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(18,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:6;s:5:\"value\";i:100;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #6\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(19,1,'preferences',7,NULL,'a:4:{s:13:\"preference_id\";i:7;s:15:\"preference_name\";s:26:\"warn_email_admin_day_limit\";s:12:\"account_type\";s:5:\"ADMIN\";s:8:\"key_desc\";s:26:\"warn_email_admin_day_limit\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(20,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:7;s:5:\"value\";i:1;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #7\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(21,1,'preferences',8,NULL,'a:4:{s:13:\"preference_id\";i:8;s:15:\"preference_name\";s:21:\"campaign_ecpm_enabled\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"campaign_ecpm_enabled\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(22,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:8;s:5:\"value\";b:0;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #8\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(23,1,'preferences',9,NULL,'a:4:{s:13:\"preference_id\";i:9;s:15:\"preference_name\";s:21:\"contract_ecpm_enabled\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"contract_ecpm_enabled\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(24,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:9;s:5:\"value\";b:0;s:8:\"key_desc\";s:27:\"Account #1 -> Preference #9\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(25,1,'preferences',10,NULL,'a:4:{s:13:\"preference_id\";i:10;s:15:\"preference_name\";s:18:\"warn_email_manager\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"warn_email_manager\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(26,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:10;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #10\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(27,1,'preferences',11,NULL,'a:4:{s:13:\"preference_id\";i:11;s:15:\"preference_name\";s:35:\"warn_email_manager_impression_limit\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:35:\"warn_email_manager_impression_limit\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(28,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:11;s:5:\"value\";i:100;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #11\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(29,1,'preferences',12,NULL,'a:4:{s:13:\"preference_id\";i:12;s:15:\"preference_name\";s:28:\"warn_email_manager_day_limit\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:28:\"warn_email_manager_day_limit\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(30,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:12;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #12\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(31,1,'preferences',13,NULL,'a:4:{s:13:\"preference_id\";i:13;s:15:\"preference_name\";s:21:\"warn_email_advertiser\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"warn_email_advertiser\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(32,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:13;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #13\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(33,1,'preferences',14,NULL,'a:4:{s:13:\"preference_id\";i:14;s:15:\"preference_name\";s:38:\"warn_email_advertiser_impression_limit\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:38:\"warn_email_advertiser_impression_limit\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(34,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:14;s:5:\"value\";i:100;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #14\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(35,1,'preferences',15,NULL,'a:4:{s:13:\"preference_id\";i:15;s:15:\"preference_name\";s:31:\"warn_email_advertiser_day_limit\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:31:\"warn_email_advertiser_day_limit\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(36,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:15;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #15\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(37,1,'preferences',16,NULL,'a:4:{s:13:\"preference_id\";i:16;s:15:\"preference_name\";s:8:\"timezone\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:8:\"timezone\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(38,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:16;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #16\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(39,1,'preferences',17,NULL,'a:4:{s:13:\"preference_id\";i:17;s:15:\"preference_name\";s:22:\"tracker_default_status\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"tracker_default_status\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(40,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:17;s:5:\"value\";i:4;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #17\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(41,1,'preferences',18,NULL,'a:4:{s:13:\"preference_id\";i:18;s:15:\"preference_name\";s:20:\"tracker_default_type\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:20:\"tracker_default_type\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(42,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:18;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #18\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(43,1,'preferences',19,NULL,'a:4:{s:13:\"preference_id\";i:19;s:15:\"preference_name\";s:22:\"tracker_link_campaigns\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"tracker_link_campaigns\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(44,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:19;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #19\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(45,1,'preferences',20,NULL,'a:4:{s:13:\"preference_id\";i:20;s:15:\"preference_name\";s:21:\"ui_show_campaign_info\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:21:\"ui_show_campaign_info\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(46,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:20;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #20\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(47,1,'preferences',21,NULL,'a:4:{s:13:\"preference_id\";i:21;s:15:\"preference_name\";s:19:\"ui_show_banner_info\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:19:\"ui_show_banner_info\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(48,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:21;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #21\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(49,1,'preferences',22,NULL,'a:4:{s:13:\"preference_id\";i:22;s:15:\"preference_name\";s:24:\"ui_show_campaign_preview\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:24:\"ui_show_campaign_preview\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(50,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:22;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #22\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(51,1,'preferences',23,NULL,'a:4:{s:13:\"preference_id\";i:23;s:15:\"preference_name\";s:19:\"ui_show_banner_html\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:19:\"ui_show_banner_html\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(52,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:23;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #23\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(53,1,'preferences',24,NULL,'a:4:{s:13:\"preference_id\";i:24;s:15:\"preference_name\";s:22:\"ui_show_banner_preview\";s:12:\"account_type\";s:10:\"ADVERTISER\";s:8:\"key_desc\";s:22:\"ui_show_banner_preview\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(54,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:24;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #24\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(55,1,'preferences',25,NULL,'a:4:{s:13:\"preference_id\";i:25;s:15:\"preference_name\";s:16:\"ui_hide_inactive\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:16:\"ui_hide_inactive\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(56,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:25;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #25\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(57,1,'preferences',26,NULL,'a:4:{s:13:\"preference_id\";i:26;s:15:\"preference_name\";s:24:\"ui_show_matching_banners\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:24:\"ui_show_matching_banners\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(58,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:26;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #26\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(59,1,'preferences',27,NULL,'a:4:{s:13:\"preference_id\";i:27;s:15:\"preference_name\";s:32:\"ui_show_matching_banners_parents\";s:12:\"account_type\";s:10:\"TRAFFICKER\";s:8:\"key_desc\";s:32:\"ui_show_matching_banners_parents\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(60,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:27;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #27\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(61,1,'preferences',28,NULL,'a:4:{s:13:\"preference_id\";i:28;s:15:\"preference_name\";s:17:\"ui_show_entity_id\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:17:\"ui_show_entity_id\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(62,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:28;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #28\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(63,1,'preferences',29,NULL,'a:4:{s:13:\"preference_id\";i:29;s:15:\"preference_name\";s:14:\"ui_novice_user\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:14:\"ui_novice_user\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(64,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:29;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #29\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(65,1,'preferences',30,NULL,'a:4:{s:13:\"preference_id\";i:30;s:15:\"preference_name\";s:17:\"ui_week_start_day\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:17:\"ui_week_start_day\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(66,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:30;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #30\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(67,1,'preferences',31,NULL,'a:4:{s:13:\"preference_id\";i:31;s:15:\"preference_name\";s:22:\"ui_percentage_decimals\";s:12:\"account_type\";s:0:\"\";s:8:\"key_desc\";s:22:\"ui_percentage_decimals\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(68,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:31;s:5:\"value\";i:2;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #31\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(69,1,'preferences',32,NULL,'a:4:{s:13:\"preference_id\";i:32;s:15:\"preference_name\";s:17:\"ui_column_revenue\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_revenue\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(70,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:32;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #32\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(71,1,'preferences',33,NULL,'a:4:{s:13:\"preference_id\";i:33;s:15:\"preference_name\";s:23:\"ui_column_revenue_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_revenue_label\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(72,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:33;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #33\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(73,1,'preferences',34,NULL,'a:4:{s:13:\"preference_id\";i:34;s:15:\"preference_name\";s:22:\"ui_column_revenue_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_revenue_rank\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(74,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:34;s:5:\"value\";i:4;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #34\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(75,1,'preferences',35,NULL,'a:4:{s:13:\"preference_id\";i:35;s:15:\"preference_name\";s:12:\"ui_column_bv\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:12:\"ui_column_bv\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(76,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:35;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #35\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(77,1,'preferences',36,NULL,'a:4:{s:13:\"preference_id\";i:36;s:15:\"preference_name\";s:18:\"ui_column_bv_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_bv_label\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(78,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:36;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #36\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(79,1,'preferences',37,NULL,'a:4:{s:13:\"preference_id\";i:37;s:15:\"preference_name\";s:17:\"ui_column_bv_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_bv_rank\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(80,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:37;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #37\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(81,1,'preferences',38,NULL,'a:4:{s:13:\"preference_id\";i:38;s:15:\"preference_name\";s:19:\"ui_column_num_items\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_num_items\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(82,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:38;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #38\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(83,1,'preferences',39,NULL,'a:4:{s:13:\"preference_id\";i:39;s:15:\"preference_name\";s:25:\"ui_column_num_items_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:25:\"ui_column_num_items_label\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(84,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:39;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #39\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(85,1,'preferences',40,NULL,'a:4:{s:13:\"preference_id\";i:40;s:15:\"preference_name\";s:24:\"ui_column_num_items_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_num_items_rank\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(86,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:40;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #40\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(87,1,'preferences',41,NULL,'a:4:{s:13:\"preference_id\";i:41;s:15:\"preference_name\";s:16:\"ui_column_revcpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_revcpc\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(88,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:41;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #41\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(89,1,'preferences',42,NULL,'a:4:{s:13:\"preference_id\";i:42;s:15:\"preference_name\";s:22:\"ui_column_revcpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_revcpc_label\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(90,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:42;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #42\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(91,1,'preferences',43,NULL,'a:4:{s:13:\"preference_id\";i:43;s:15:\"preference_name\";s:21:\"ui_column_revcpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_revcpc_rank\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(92,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:43;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #43\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(93,1,'preferences',44,NULL,'a:4:{s:13:\"preference_id\";i:44;s:15:\"preference_name\";s:14:\"ui_column_erpm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erpm\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(94,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:44;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #44\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(95,1,'preferences',45,NULL,'a:4:{s:13:\"preference_id\";i:45;s:15:\"preference_name\";s:20:\"ui_column_erpm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erpm_label\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(96,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:45;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #45\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(97,1,'preferences',46,NULL,'a:4:{s:13:\"preference_id\";i:46;s:15:\"preference_name\";s:19:\"ui_column_erpm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erpm_rank\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(98,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:46;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #46\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(99,1,'preferences',47,NULL,'a:4:{s:13:\"preference_id\";i:47;s:15:\"preference_name\";s:14:\"ui_column_erpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erpc\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(100,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:47;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #47\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(101,1,'preferences',48,NULL,'a:4:{s:13:\"preference_id\";i:48;s:15:\"preference_name\";s:20:\"ui_column_erpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erpc_label\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(102,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:48;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #48\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(103,1,'preferences',49,NULL,'a:4:{s:13:\"preference_id\";i:49;s:15:\"preference_name\";s:19:\"ui_column_erpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erpc_rank\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(104,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:49;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #49\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(105,1,'preferences',50,NULL,'a:4:{s:13:\"preference_id\";i:50;s:15:\"preference_name\";s:14:\"ui_column_erps\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_erps\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(106,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:50;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #50\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(107,1,'preferences',51,NULL,'a:4:{s:13:\"preference_id\";i:51;s:15:\"preference_name\";s:20:\"ui_column_erps_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_erps_label\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(108,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:51;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #51\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(109,1,'preferences',52,NULL,'a:4:{s:13:\"preference_id\";i:52;s:15:\"preference_name\";s:19:\"ui_column_erps_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_erps_rank\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(110,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:52;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #52\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(111,1,'preferences',53,NULL,'a:4:{s:13:\"preference_id\";i:53;s:15:\"preference_name\";s:14:\"ui_column_eipm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eipm\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(112,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:53;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #53\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(113,1,'preferences',54,NULL,'a:4:{s:13:\"preference_id\";i:54;s:15:\"preference_name\";s:20:\"ui_column_eipm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eipm_label\";}',0,'Installer',0,'2015-07-25 08:14:57',1,NULL,NULL),(114,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:54;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #54\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(115,1,'preferences',55,NULL,'a:4:{s:13:\"preference_id\";i:55;s:15:\"preference_name\";s:19:\"ui_column_eipm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eipm_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(116,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:55;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #55\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(117,1,'preferences',56,NULL,'a:4:{s:13:\"preference_id\";i:56;s:15:\"preference_name\";s:14:\"ui_column_eipc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eipc\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(118,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:56;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #56\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(119,1,'preferences',57,NULL,'a:4:{s:13:\"preference_id\";i:57;s:15:\"preference_name\";s:20:\"ui_column_eipc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eipc_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(120,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:57;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #57\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(121,1,'preferences',58,NULL,'a:4:{s:13:\"preference_id\";i:58;s:15:\"preference_name\";s:19:\"ui_column_eipc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eipc_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(122,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:58;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #58\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(123,1,'preferences',59,NULL,'a:4:{s:13:\"preference_id\";i:59;s:15:\"preference_name\";s:14:\"ui_column_eips\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_eips\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(124,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:59;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #59\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(125,1,'preferences',60,NULL,'a:4:{s:13:\"preference_id\";i:60;s:15:\"preference_name\";s:20:\"ui_column_eips_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_eips_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(126,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:60;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #60\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(127,1,'preferences',61,NULL,'a:4:{s:13:\"preference_id\";i:61;s:15:\"preference_name\";s:19:\"ui_column_eips_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_eips_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(128,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:61;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #61\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(129,1,'preferences',62,NULL,'a:4:{s:13:\"preference_id\";i:62;s:15:\"preference_name\";s:14:\"ui_column_ecpm\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecpm\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(130,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:62;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #62\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(131,1,'preferences',63,NULL,'a:4:{s:13:\"preference_id\";i:63;s:15:\"preference_name\";s:20:\"ui_column_ecpm_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecpm_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(132,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:63;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #63\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(133,1,'preferences',64,NULL,'a:4:{s:13:\"preference_id\";i:64;s:15:\"preference_name\";s:19:\"ui_column_ecpm_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecpm_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(134,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:64;s:5:\"value\";i:5;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #64\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(135,1,'preferences',65,NULL,'a:4:{s:13:\"preference_id\";i:65;s:15:\"preference_name\";s:14:\"ui_column_ecpc\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecpc\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(136,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:65;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #65\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(137,1,'preferences',66,NULL,'a:4:{s:13:\"preference_id\";i:66;s:15:\"preference_name\";s:20:\"ui_column_ecpc_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecpc_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(138,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:66;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #66\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(139,1,'preferences',67,NULL,'a:4:{s:13:\"preference_id\";i:67;s:15:\"preference_name\";s:19:\"ui_column_ecpc_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecpc_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(140,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:67;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #67\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(141,1,'preferences',68,NULL,'a:4:{s:13:\"preference_id\";i:68;s:15:\"preference_name\";s:14:\"ui_column_ecps\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:14:\"ui_column_ecps\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(142,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:68;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #68\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(143,1,'preferences',69,NULL,'a:4:{s:13:\"preference_id\";i:69;s:15:\"preference_name\";s:20:\"ui_column_ecps_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:20:\"ui_column_ecps_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(144,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:69;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #69\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(145,1,'preferences',70,NULL,'a:4:{s:13:\"preference_id\";i:70;s:15:\"preference_name\";s:19:\"ui_column_ecps_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ecps_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(146,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:70;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #70\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(147,1,'preferences',71,NULL,'a:4:{s:13:\"preference_id\";i:71;s:15:\"preference_name\";s:12:\"ui_column_id\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:12:\"ui_column_id\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(148,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:71;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #71\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(149,1,'preferences',72,NULL,'a:4:{s:13:\"preference_id\";i:72;s:15:\"preference_name\";s:18:\"ui_column_id_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_id_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(150,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:72;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #72\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(151,1,'preferences',73,NULL,'a:4:{s:13:\"preference_id\";i:73;s:15:\"preference_name\";s:17:\"ui_column_id_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:17:\"ui_column_id_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(152,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:73;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #73\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(153,1,'preferences',74,NULL,'a:4:{s:13:\"preference_id\";i:74;s:15:\"preference_name\";s:18:\"ui_column_requests\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_requests\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(154,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:74;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #74\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(155,1,'preferences',75,NULL,'a:4:{s:13:\"preference_id\";i:75;s:15:\"preference_name\";s:24:\"ui_column_requests_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_requests_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(156,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:75;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #75\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(157,1,'preferences',76,NULL,'a:4:{s:13:\"preference_id\";i:76;s:15:\"preference_name\";s:23:\"ui_column_requests_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_requests_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(158,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:76;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #76\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(159,1,'preferences',77,NULL,'a:4:{s:13:\"preference_id\";i:77;s:15:\"preference_name\";s:21:\"ui_column_impressions\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_impressions\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(160,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:77;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #77\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(161,1,'preferences',78,NULL,'a:4:{s:13:\"preference_id\";i:78;s:15:\"preference_name\";s:27:\"ui_column_impressions_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:27:\"ui_column_impressions_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(162,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:78;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #78\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(163,1,'preferences',79,NULL,'a:4:{s:13:\"preference_id\";i:79;s:15:\"preference_name\";s:26:\"ui_column_impressions_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:26:\"ui_column_impressions_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(164,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:79;s:5:\"value\";i:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #79\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(165,1,'preferences',80,NULL,'a:4:{s:13:\"preference_id\";i:80;s:15:\"preference_name\";s:16:\"ui_column_clicks\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:16:\"ui_column_clicks\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(166,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:80;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #80\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(167,1,'preferences',81,NULL,'a:4:{s:13:\"preference_id\";i:81;s:15:\"preference_name\";s:22:\"ui_column_clicks_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:22:\"ui_column_clicks_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(168,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:81;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #81\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(169,1,'preferences',82,NULL,'a:4:{s:13:\"preference_id\";i:82;s:15:\"preference_name\";s:21:\"ui_column_clicks_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_clicks_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(170,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:82;s:5:\"value\";i:2;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #82\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(171,1,'preferences',83,NULL,'a:4:{s:13:\"preference_id\";i:83;s:15:\"preference_name\";s:13:\"ui_column_ctr\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:13:\"ui_column_ctr\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(172,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:83;s:5:\"value\";b:1;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #83\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(173,1,'preferences',84,NULL,'a:4:{s:13:\"preference_id\";i:84;s:15:\"preference_name\";s:19:\"ui_column_ctr_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_ctr_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(174,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:84;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #84\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(175,1,'preferences',85,NULL,'a:4:{s:13:\"preference_id\";i:85;s:15:\"preference_name\";s:18:\"ui_column_ctr_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_ctr_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(176,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:85;s:5:\"value\";i:3;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #85\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(177,1,'preferences',86,NULL,'a:4:{s:13:\"preference_id\";i:86;s:15:\"preference_name\";s:21:\"ui_column_conversions\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:21:\"ui_column_conversions\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(178,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:86;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #86\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(179,1,'preferences',87,NULL,'a:4:{s:13:\"preference_id\";i:87;s:15:\"preference_name\";s:27:\"ui_column_conversions_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:27:\"ui_column_conversions_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(180,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:87;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #87\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(181,1,'preferences',88,NULL,'a:4:{s:13:\"preference_id\";i:88;s:15:\"preference_name\";s:26:\"ui_column_conversions_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:26:\"ui_column_conversions_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(182,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:88;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #88\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(183,1,'preferences',89,NULL,'a:4:{s:13:\"preference_id\";i:89;s:15:\"preference_name\";s:29:\"ui_column_conversions_pending\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:29:\"ui_column_conversions_pending\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(184,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:89;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #89\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(185,1,'preferences',90,NULL,'a:4:{s:13:\"preference_id\";i:90;s:15:\"preference_name\";s:35:\"ui_column_conversions_pending_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:35:\"ui_column_conversions_pending_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(186,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:90;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #90\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(187,1,'preferences',91,NULL,'a:4:{s:13:\"preference_id\";i:91;s:15:\"preference_name\";s:34:\"ui_column_conversions_pending_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:34:\"ui_column_conversions_pending_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(188,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:91;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #91\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(189,1,'preferences',92,NULL,'a:4:{s:13:\"preference_id\";i:92;s:15:\"preference_name\";s:18:\"ui_column_sr_views\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:18:\"ui_column_sr_views\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(190,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:92;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #92\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(191,1,'preferences',93,NULL,'a:4:{s:13:\"preference_id\";i:93;s:15:\"preference_name\";s:24:\"ui_column_sr_views_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_sr_views_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(192,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:93;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #93\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(193,1,'preferences',94,NULL,'a:4:{s:13:\"preference_id\";i:94;s:15:\"preference_name\";s:23:\"ui_column_sr_views_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:23:\"ui_column_sr_views_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(194,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:94;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #94\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(195,1,'preferences',95,NULL,'a:4:{s:13:\"preference_id\";i:95;s:15:\"preference_name\";s:19:\"ui_column_sr_clicks\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:19:\"ui_column_sr_clicks\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(196,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:95;s:5:\"value\";b:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #95\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(197,1,'preferences',96,NULL,'a:4:{s:13:\"preference_id\";i:96;s:15:\"preference_name\";s:25:\"ui_column_sr_clicks_label\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:25:\"ui_column_sr_clicks_label\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(198,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:96;s:5:\"value\";s:0:\"\";s:8:\"key_desc\";s:28:\"Account #1 -> Preference #96\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(199,1,'preferences',97,NULL,'a:4:{s:13:\"preference_id\";i:97;s:15:\"preference_name\";s:24:\"ui_column_sr_clicks_rank\";s:12:\"account_type\";s:7:\"MANAGER\";s:8:\"key_desc\";s:24:\"ui_column_sr_clicks_rank\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(200,1,'account_preference_assoc',0,NULL,'a:4:{s:10:\"account_id\";i:1;s:13:\"preference_id\";i:97;s:5:\"value\";i:0;s:8:\"key_desc\";s:28:\"Account #1 -> Preference #97\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(201,2,'account_preference_assoc',0,NULL,'a:2:{s:5:\"value\";a:2:{s:3:\"was\";s:0:\"\";s:2:\"is\";s:16:\"Asia/Krasnoyarsk\";}s:8:\"key_desc\";s:28:\"Account #1 -> Preference #16\";}',0,'Installer',0,'2015-07-25 08:14:58',1,NULL,NULL),(202,1,'accounts',3,NULL,'a:4:{s:10:\"account_id\";i:3;s:12:\"account_type\";s:10:\"ADVERTISER\";s:12:\"account_name\";s:4:\"Demo\";s:8:\"key_desc\";s:4:\"Demo\";}',1,'admin',0,'2015-07-25 08:18:36',1,3,NULL),(203,1,'clients',1,NULL,'a:15:{s:8:\"clientid\";i:1;s:8:\"agencyid\";i:1;s:10:\"clientname\";s:4:\"Demo\";s:7:\"contact\";s:10:\"0852888888\";s:5:\"email\";s:20:\"cak.azharr@gmail.com\";s:6:\"report\";s:1:\"t\";s:14:\"reportinterval\";i:7;s:14:\"reportlastdate\";s:10:\"2015-07-25\";s:16:\"reportdeactivate\";s:1:\"t\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2015-07-25 08:18:36\";s:10:\"account_id\";i:3;s:21:\"advertiser_limitation\";s:4:\"true\";s:4:\"type\";i:0;s:8:\"key_desc\";s:4:\"Demo\";}',1,'admin',0,'2015-07-25 08:18:36',2,3,NULL),(204,1,'campaigns',1,NULL,'a:33:{s:10:\"campaignid\";i:1;s:12:\"campaignname\";s:23:\"Demo - Default Campaign\";s:8:\"clientid\";i:1;s:5:\"views\";i:-1;s:6:\"clicks\";i:-1;s:11:\"conversions\";i:-1;s:8:\"priority\";i:0;s:6:\"weight\";i:1;s:17:\"target_impression\";i:0;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:1:\"f\";s:9:\"companion\";i:0;s:8:\"comments\";s:0:\"\";s:7:\"revenue\";i:1000;s:12:\"revenue_type\";i:1;s:7:\"updated\";s:19:\"2015-07-25 08:20:26\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:6:\"status\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:4:\"ecpm\";i:0;s:15:\"min_impressions\";i:100;s:12:\"ecpm_enabled\";i:0;s:13:\"activate_time\";s:19:\"2015-07-24 17:00:00\";s:11:\"expire_time\";s:4:\"NULL\";s:4:\"type\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:23:\"Demo - Default Campaign\";}',1,'admin',0,'2015-07-25 08:20:26',2,3,NULL),(205,1,'banners',1,NULL,'a:41:{s:8:\"bannerid\";i:1;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:3:\"png\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"26c95ed7040a0e6b729fe35801f28c20.png\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:820;s:6:\"height\";i:536;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:16:\"http://azharamir\";s:3:\"url\";s:20:\"http://azharamir.com\";s:3:\"alt\";s:11:\"demo banner\";s:10:\"statustext\";s:11:\"demo banner\";s:10:\"bannertext\";s:11:\"demo banner\";s:11:\"description\";s:11:\"Demo Banner\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2015-07-25 08:21:34\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:11:\"demo banner\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:6:\"status\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:15:\"iframe_friendly\";s:5:\"false\";s:8:\"key_desc\";s:11:\"Demo Banner\";}',1,'admin',0,'2015-07-25 08:21:34',2,3,NULL),(206,1,'ad_zone_assoc',1,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:1;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:1;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #1 -> Zone #0\";}',1,'admin',0,'2015-07-25 08:21:34',2,3,NULL),(207,1,'accounts',4,NULL,'a:4:{s:10:\"account_id\";i:4;s:12:\"account_type\";s:10:\"TRAFFICKER\";s:12:\"account_name\";s:9:\"azharamir\";s:8:\"key_desc\";s:9:\"azharamir\";}',1,'admin',0,'2015-07-25 08:23:16',1,NULL,4),(208,1,'affiliates',1,NULL,'a:14:{s:11:\"affiliateid\";i:1;s:8:\"agencyid\";i:1;s:4:\"name\";s:9:\"azharamir\";s:8:\"mnemonic\";s:4:\"null\";s:8:\"comments\";s:0:\"\";s:7:\"contact\";s:7:\"0929292\";s:5:\"email\";s:15:\"azhar@detik.com\";s:7:\"website\";s:20:\"http://azharamir.com\";s:7:\"updated\";s:19:\"2015-07-25 08:23:16\";s:16:\"oac_country_code\";s:4:\"null\";s:15:\"oac_language_id\";i:0;s:15:\"oac_category_id\";i:0;s:10:\"account_id\";i:4;s:8:\"key_desc\";s:9:\"azharamir\";}',1,'admin',0,'2015-07-25 08:23:16',2,NULL,4),(209,1,'zones',1,NULL,'a:33:{s:6:\"zoneid\";i:1;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:9:\"azharamir\";s:11:\"description\";s:11:\"Demo Banner\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:4:\"null\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2015-07-25 08:24:20\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";s:4:\"null\";s:4:\"rate\";i:0;s:7:\"pricing\";s:4:\"null\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";s:4:\"null\";s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:9:\"azharamir\";}',1,'admin',0,'2015-07-25 08:24:20',2,NULL,4),(210,1,'zones',2,NULL,'a:33:{s:6:\"zoneid\";i:2;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:17:\"Copy of azharamir\";s:11:\"description\";s:11:\"Demo Banner\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:1:\"f\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2015-07-25 08:26:05\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";s:0:\"\";s:4:\"rate\";i:0;s:7:\"pricing\";s:3:\"CPM\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";s:4:\"null\";s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:17:\"Copy of azharamir\";}',1,'admin',0,'2015-07-25 08:26:05',2,NULL,4),(211,3,'zones',2,NULL,'a:33:{s:6:\"zoneid\";i:2;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:17:\"Copy of azharamir\";s:11:\"description\";s:11:\"Demo Banner\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:1:\"f\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2015-07-25 08:26:05\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";s:0:\"\";s:4:\"rate\";i:0;s:7:\"pricing\";s:3:\"CPM\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";s:4:\"null\";s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:17:\"Copy of azharamir\";}',1,'admin',0,'2015-07-25 08:26:16',2,NULL,4),(212,1,'zones',3,NULL,'a:33:{s:6:\"zoneid\";i:3;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:19:\"azharamir - Default\";s:11:\"description\";s:0:\"\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:468;s:6:\"height\";i:60;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:4:\"null\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2015-07-25 08:31:27\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";s:4:\"null\";s:4:\"rate\";i:0;s:7:\"pricing\";s:4:\"null\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";s:4:\"null\";s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:19:\"azharamir - Default\";}',1,'admin',0,'2015-07-25 08:31:27',2,NULL,4),(213,1,'banners',2,NULL,'a:41:{s:8:\"bannerid\";i:2;s:10:\"campaignid\";i:1;s:11:\"contenttype\";s:3:\"png\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"a6b8034abe648bd0fca9aff6f1c3b291.png\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:354;s:6:\"height\";i:193;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:20:\"http://azharamir.com\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:11:\"Demo Banner\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2015-07-25 08:32:34\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:6:\"status\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:15:\"iframe_friendly\";s:5:\"false\";s:8:\"key_desc\";s:11:\"Demo Banner\";}',1,'admin',0,'2015-07-25 08:32:34',2,3,NULL),(214,1,'ad_zone_assoc',2,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:2;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:2;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #2 -> Zone #0\";}',1,'admin',0,'2015-07-25 08:32:34',2,3,NULL),(215,2,'zones',3,NULL,'a:3:{s:8:\"delivery\";a:2:{s:3:\"was\";i:0;s:2:\"is\";i:1;}s:8:\"key_desc\";s:19:\"azharamir - Default\";s:11:\"affiliateid\";s:1:\"1\";}',1,'admin',0,'2015-07-25 08:34:14',2,NULL,4),(216,2,'clients',1,NULL,'a:3:{s:6:\"report\";a:2:{s:3:\"was\";s:1:\"t\";s:2:\"is\";s:1:\"f\";}s:21:\"advertiser_limitation\";a:2:{s:3:\"was\";s:4:\"true\";s:2:\"is\";s:5:\"false\";}s:8:\"key_desc\";s:4:\"Demo\";}',1,'admin',0,'2015-07-25 08:40:04',2,3,NULL),(217,2,'zones',1,NULL,'a:2:{s:8:\"key_desc\";s:9:\"azharamir\";s:11:\"affiliateid\";s:1:\"1\";}',1,'admin',0,'2015-07-25 08:45:46',2,NULL,4),(218,1,'accounts',5,NULL,'a:4:{s:10:\"account_id\";i:5;s:12:\"account_type\";s:10:\"ADVERTISER\";s:12:\"account_name\";s:3:\"ABC\";s:8:\"key_desc\";s:3:\"ABC\";}',1,'admin',0,'2015-07-25 08:46:46',1,5,NULL),(219,1,'clients',2,NULL,'a:15:{s:8:\"clientid\";i:2;s:8:\"agencyid\";i:1;s:10:\"clientname\";s:3:\"ABC\";s:7:\"contact\";s:7:\"0929292\";s:5:\"email\";s:20:\"cak.azharr@gmail.com\";s:6:\"report\";s:1:\"f\";s:14:\"reportinterval\";i:7;s:14:\"reportlastdate\";s:10:\"2015-07-25\";s:16:\"reportdeactivate\";s:1:\"t\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2015-07-25 08:46:46\";s:10:\"account_id\";i:5;s:21:\"advertiser_limitation\";s:5:\"false\";s:4:\"type\";i:0;s:8:\"key_desc\";s:3:\"ABC\";}',1,'admin',0,'2015-07-25 08:46:46',2,5,NULL),(220,1,'campaigns',2,NULL,'a:33:{s:10:\"campaignid\";i:2;s:12:\"campaignname\";s:22:\"ABC - Default Campaign\";s:8:\"clientid\";i:2;s:5:\"views\";i:-1;s:6:\"clicks\";i:-1;s:11:\"conversions\";i:-1;s:8:\"priority\";i:-1;s:6:\"weight\";i:1;s:17:\"target_impression\";i:0;s:12:\"target_click\";i:0;s:17:\"target_conversion\";i:0;s:9:\"anonymous\";s:1:\"f\";s:9:\"companion\";i:0;s:8:\"comments\";s:0:\"\";s:7:\"revenue\";i:10;s:12:\"revenue_type\";i:1;s:7:\"updated\";s:19:\"2015-07-25 08:47:06\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:6:\"status\";i:0;s:12:\"hosted_views\";i:0;s:13:\"hosted_clicks\";i:0;s:10:\"viewwindow\";i:0;s:11:\"clickwindow\";i:0;s:4:\"ecpm\";i:0;s:15:\"min_impressions\";i:100;s:12:\"ecpm_enabled\";i:0;s:13:\"activate_time\";s:19:\"2015-07-24 17:00:00\";s:11:\"expire_time\";s:4:\"NULL\";s:4:\"type\";i:0;s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:22:\"ABC - Default Campaign\";}',1,'admin',0,'2015-07-25 08:47:07',2,5,NULL),(221,1,'banners',3,NULL,'a:41:{s:8:\"bannerid\";i:3;s:10:\"campaignid\";i:2;s:11:\"contenttype\";s:3:\"png\";s:13:\"pluginversion\";i:0;s:11:\"storagetype\";s:3:\"web\";s:8:\"filename\";s:36:\"19429c1a5f63cefb4920bb33819a70f5.png\";s:8:\"imageurl\";s:0:\"\";s:12:\"htmltemplate\";s:0:\"\";s:9:\"htmlcache\";s:0:\"\";s:5:\"width\";i:1022;s:6:\"height\";i:440;s:6:\"weight\";i:1;s:3:\"seq\";i:0;s:6:\"target\";s:0:\"\";s:3:\"url\";s:20:\"http://azharamir.com\";s:3:\"alt\";s:0:\"\";s:10:\"statustext\";s:0:\"\";s:10:\"bannertext\";s:0:\"\";s:11:\"description\";s:11:\"Demo Banner\";s:8:\"adserver\";s:0:\"\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:18:\"compiledlimitation\";s:4:\"null\";s:11:\"acl_plugins\";s:4:\"null\";s:6:\"append\";s:4:\"null\";s:10:\"bannertype\";i:0;s:12:\"alt_filename\";s:0:\"\";s:12:\"alt_imageurl\";s:0:\"\";s:15:\"alt_contenttype\";s:0:\"\";s:8:\"comments\";s:0:\"\";s:7:\"updated\";s:19:\"2015-07-25 08:47:27\";s:12:\"acls_updated\";s:4:\"null\";s:7:\"keyword\";s:0:\"\";s:11:\"transparent\";s:4:\"null\";s:10:\"parameters\";s:2:\"N;\";s:6:\"status\";i:0;s:14:\"ext_bannertype\";s:4:\"null\";s:7:\"prepend\";s:4:\"null\";s:15:\"iframe_friendly\";s:5:\"false\";s:8:\"key_desc\";s:11:\"Demo Banner\";}',1,'admin',0,'2015-07-25 08:47:27',2,5,NULL),(222,1,'ad_zone_assoc',3,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:3;s:7:\"zone_id\";i:0;s:5:\"ad_id\";i:3;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #3 -> Zone #0\";}',1,'admin',0,'2015-07-25 08:47:27',2,5,NULL),(223,1,'zones',4,NULL,'a:33:{s:6:\"zoneid\";i:4;s:11:\"affiliateid\";i:1;s:8:\"zonename\";s:19:\"azharamir - Default\";s:11:\"description\";s:0:\"\";s:8:\"delivery\";i:0;s:8:\"zonetype\";i:3;s:8:\"category\";s:0:\"\";s:5:\"width\";i:728;s:6:\"height\";i:90;s:12:\"ad_selection\";s:0:\"\";s:5:\"chain\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"appendtype\";i:0;s:11:\"forceappend\";s:4:\"null\";s:23:\"inventory_forecast_type\";i:0;s:8:\"comments\";s:0:\"\";s:4:\"cost\";i:0;s:9:\"cost_type\";i:0;s:16:\"cost_variable_id\";s:4:\"null\";s:15:\"technology_cost\";i:0;s:20:\"technology_cost_type\";i:0;s:7:\"updated\";s:19:\"2015-07-25 08:48:27\";s:5:\"block\";i:0;s:7:\"capping\";i:0;s:15:\"session_capping\";i:0;s:4:\"what\";s:4:\"null\";s:4:\"rate\";i:0;s:7:\"pricing\";s:4:\"null\";s:15:\"oac_category_id\";i:0;s:15:\"ext_adselection\";s:4:\"null\";s:21:\"show_capped_no_cookie\";i:0;s:8:\"key_desc\";s:19:\"azharamir - Default\";}',1,'admin',0,'2015-07-25 08:48:27',2,NULL,4),(224,2,'zones',1,NULL,'a:4:{s:5:\"width\";a:2:{s:3:\"was\";i:468;s:2:\"is\";i:1022;}s:6:\"height\";a:2:{s:3:\"was\";i:60;s:2:\"is\";i:440;}s:8:\"key_desc\";s:9:\"azharamir\";s:11:\"affiliateid\";s:1:\"1\";}',1,'admin',0,'2015-07-25 08:49:30',2,NULL,4),(225,1,'ad_zone_assoc',4,NULL,'a:8:{s:16:\"ad_zone_assoc_id\";i:4;s:7:\"zone_id\";i:1;s:5:\"ad_id\";i:3;s:8:\"priority\";i:0;s:9:\"link_type\";i:0;s:15:\"priority_factor\";i:1;s:15:\"to_be_delivered\";s:4:\"null\";s:8:\"key_desc\";s:16:\"Ad #3 -> Zone #1\";}',1,'admin',0,'2015-07-25 08:53:33',2,5,4),(226,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";N;s:2:\"is\";s:19:\"2015-08-05 07:22:30\";}s:8:\"key_desc\";N;}',0,NULL,0,'2015-08-05 07:22:31',1,NULL,NULL),(227,2,'users',1,NULL,'a:2:{s:15:\"date_last_login\";a:2:{s:3:\"was\";s:19:\"2015-08-05 07:22:30\";s:2:\"is\";s:19:\"2015-08-12 11:37:42\";}s:8:\"key_desc\";N;}',0,NULL,0,'2015-08-12 11:37:42',1,NULL,NULL);
/*!40000 ALTER TABLE `rv_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_banner_vast_element`
--

DROP TABLE IF EXISTS `rv_banner_vast_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_banner_vast_element` (
  `banner_vast_element_id` mediumint(9) NOT NULL,
  `banner_id` mediumint(9) NOT NULL,
  `vast_element_type` varchar(16) NOT NULL DEFAULT '',
  `vast_video_id` varchar(100) DEFAULT NULL,
  `vast_video_duration` mediumint(9) DEFAULT NULL,
  `vast_video_delivery` varchar(20) DEFAULT NULL,
  `vast_video_type` varchar(20) DEFAULT NULL,
  `vast_video_bitrate` varchar(20) DEFAULT NULL,
  `vast_video_height` mediumint(9) DEFAULT NULL,
  `vast_video_width` mediumint(9) DEFAULT NULL,
  `vast_video_outgoing_filename` text,
  `vast_companion_banner_id` mediumint(9) DEFAULT NULL,
  `vast_overlay_height` mediumint(9) DEFAULT NULL,
  `vast_overlay_width` mediumint(9) DEFAULT NULL,
  `vast_video_clickthrough_url` text,
  `vast_overlay_action` varchar(20) DEFAULT NULL,
  `vast_overlay_format` varchar(20) DEFAULT NULL,
  `vast_overlay_text_title` text,
  `vast_overlay_text_description` text,
  `vast_overlay_text_call` text,
  `vast_creative_type` varchar(20) DEFAULT NULL,
  `vast_thirdparty_impression` text,
  KEY `rv_banner_vast_element_banner_vast_banner_vast_element_id` (`banner_vast_element_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_banner_vast_element`
--

LOCK TABLES `rv_banner_vast_element` WRITE;
/*!40000 ALTER TABLE `rv_banner_vast_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_banner_vast_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_banners`
--

DROP TABLE IF EXISTS `rv_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_banners` (
  `bannerid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `campaignid` mediumint(9) NOT NULL DEFAULT '0',
  `contenttype` enum('gif','jpeg','png','html','swf','dcr','rpm','mov','txt') NOT NULL DEFAULT 'gif',
  `pluginversion` mediumint(9) NOT NULL DEFAULT '0',
  `storagetype` enum('sql','web','url','html','network','txt') NOT NULL DEFAULT 'sql',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `imageurl` varchar(255) NOT NULL DEFAULT '',
  `htmltemplate` text NOT NULL,
  `htmlcache` text NOT NULL,
  `width` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(6) NOT NULL DEFAULT '0',
  `weight` tinyint(4) NOT NULL DEFAULT '1',
  `seq` tinyint(4) NOT NULL DEFAULT '0',
  `target` varchar(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `statustext` varchar(255) NOT NULL DEFAULT '',
  `bannertext` text NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `adserver` varchar(255) NOT NULL DEFAULT '',
  `block` int(11) NOT NULL DEFAULT '0',
  `capping` int(11) NOT NULL DEFAULT '0',
  `session_capping` int(11) NOT NULL DEFAULT '0',
  `compiledlimitation` text NOT NULL,
  `acl_plugins` text,
  `append` text NOT NULL,
  `bannertype` tinyint(4) NOT NULL DEFAULT '0',
  `alt_filename` varchar(255) NOT NULL DEFAULT '',
  `alt_imageurl` varchar(255) NOT NULL DEFAULT '',
  `alt_contenttype` enum('gif','jpeg','png') NOT NULL DEFAULT 'gif',
  `comments` text,
  `updated` datetime NOT NULL,
  `acls_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `transparent` tinyint(1) NOT NULL DEFAULT '0',
  `parameters` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `ext_bannertype` varchar(255) DEFAULT NULL,
  `prepend` text NOT NULL,
  `iframe_friendly` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bannerid`),
  KEY `rv_banners_campaignid` (`campaignid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_banners`
--

LOCK TABLES `rv_banners` WRITE;
/*!40000 ALTER TABLE `rv_banners` DISABLE KEYS */;
INSERT INTO `rv_banners` VALUES (1,1,'png',0,'web','26c95ed7040a0e6b729fe35801f28c20.png','','','',820,536,1,0,'http://azharamir','http://azharamir.com','demo banner','demo banner','demo banner','Demo Banner','',0,0,0,'',NULL,'',0,'','','','','2015-07-25 08:21:34','0000-00-00 00:00:00','demo banner',0,'N;',0,NULL,'',0),(2,1,'png',0,'web','a6b8034abe648bd0fca9aff6f1c3b291.png','','','',354,193,1,0,'','http://azharamir.com','','','','Demo Banner','',0,0,0,'',NULL,'',0,'','','','','2015-07-25 08:32:34','0000-00-00 00:00:00','',0,'N;',0,NULL,'',0),(3,2,'png',0,'web','19429c1a5f63cefb4920bb33819a70f5.png','','','',1022,440,1,0,'','http://azharamir.com','','','','Demo Banner','',0,0,0,'',NULL,'',0,'','','','','2015-07-25 08:47:27','0000-00-00 00:00:00','',0,'N;',0,NULL,'',0);
/*!40000 ALTER TABLE `rv_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_campaigns`
--

DROP TABLE IF EXISTS `rv_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_campaigns` (
  `campaignid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `campaignname` varchar(255) NOT NULL DEFAULT '',
  `clientid` mediumint(9) NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT '-1',
  `clicks` int(11) DEFAULT '-1',
  `conversions` int(11) DEFAULT '-1',
  `priority` int(11) NOT NULL DEFAULT '0',
  `weight` tinyint(4) NOT NULL DEFAULT '1',
  `target_impression` int(11) NOT NULL DEFAULT '0',
  `target_click` int(11) NOT NULL DEFAULT '0',
  `target_conversion` int(11) NOT NULL DEFAULT '0',
  `anonymous` enum('t','f') NOT NULL DEFAULT 'f',
  `companion` smallint(1) DEFAULT '0',
  `comments` text,
  `revenue` decimal(10,4) DEFAULT NULL,
  `revenue_type` smallint(6) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `block` int(11) NOT NULL DEFAULT '0',
  `capping` int(11) NOT NULL DEFAULT '0',
  `session_capping` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `hosted_views` int(11) NOT NULL DEFAULT '0',
  `hosted_clicks` int(11) NOT NULL DEFAULT '0',
  `viewwindow` mediumint(9) NOT NULL DEFAULT '0',
  `clickwindow` mediumint(9) NOT NULL DEFAULT '0',
  `ecpm` decimal(10,4) DEFAULT NULL,
  `min_impressions` int(11) NOT NULL DEFAULT '0',
  `ecpm_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `activate_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `show_capped_no_cookie` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`campaignid`),
  KEY `rv_campaigns_clientid` (`clientid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_campaigns`
--

LOCK TABLES `rv_campaigns` WRITE;
/*!40000 ALTER TABLE `rv_campaigns` DISABLE KEYS */;
INSERT INTO `rv_campaigns` VALUES (1,'Demo - Default Campaign',1,-1,-1,-1,0,1,0,0,0,'f',0,'',1000.0000,1,'2015-07-25 08:20:26',0,0,0,0,0,0,0,0,NULL,100,0,'2015-07-24 17:00:00',NULL,0,0),(2,'ABC - Default Campaign',2,-1,-1,-1,-1,1,0,0,0,'f',0,'',10.0000,1,'2015-07-25 08:47:06',0,0,0,0,0,0,0,0,NULL,100,0,'2015-07-24 17:00:00',NULL,0,0);
/*!40000 ALTER TABLE `rv_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_campaigns_trackers`
--

DROP TABLE IF EXISTS `rv_campaigns_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_campaigns_trackers` (
  `campaign_trackerid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `campaignid` mediumint(9) NOT NULL DEFAULT '0',
  `trackerid` mediumint(9) NOT NULL DEFAULT '0',
  `status` smallint(1) unsigned NOT NULL DEFAULT '4',
  PRIMARY KEY (`campaign_trackerid`),
  KEY `rv_campaigns_trackers_campaignid` (`campaignid`),
  KEY `rv_campaigns_trackers_trackerid` (`trackerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_campaigns_trackers`
--

LOCK TABLES `rv_campaigns_trackers` WRITE;
/*!40000 ALTER TABLE `rv_campaigns_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_campaigns_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_category`
--

DROP TABLE IF EXISTS `rv_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_category`
--

LOCK TABLES `rv_category` WRITE;
/*!40000 ALTER TABLE `rv_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_channel`
--

DROP TABLE IF EXISTS `rv_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_channel` (
  `channelid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `agencyid` mediumint(9) NOT NULL DEFAULT '0',
  `affiliateid` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `compiledlimitation` text NOT NULL,
  `acl_plugins` text,
  `active` smallint(1) DEFAULT NULL,
  `comments` text,
  `updated` datetime NOT NULL,
  `acls_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`channelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_channel`
--

LOCK TABLES `rv_channel` WRITE;
/*!40000 ALTER TABLE `rv_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_clients`
--

DROP TABLE IF EXISTS `rv_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_clients` (
  `clientid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `agencyid` mediumint(9) NOT NULL DEFAULT '0',
  `clientname` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `report` enum('t','f') NOT NULL DEFAULT 't',
  `reportinterval` mediumint(9) NOT NULL DEFAULT '7',
  `reportlastdate` date NOT NULL DEFAULT '0000-00-00',
  `reportdeactivate` enum('t','f') NOT NULL DEFAULT 't',
  `comments` text,
  `updated` datetime NOT NULL,
  `account_id` mediumint(9) DEFAULT NULL,
  `advertiser_limitation` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`clientid`),
  UNIQUE KEY `rv_clients_account_id` (`account_id`),
  KEY `rv_clients_agencyid_type` (`agencyid`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_clients`
--

LOCK TABLES `rv_clients` WRITE;
/*!40000 ALTER TABLE `rv_clients` DISABLE KEYS */;
INSERT INTO `rv_clients` VALUES (1,1,'Demo','0852888888','cak.azharr@gmail.com','f',7,'2015-07-25','t','','2015-07-25 08:40:04',3,0,0),(2,1,'ABC','0929292','cak.azharr@gmail.com','f',7,'2015-07-25','t','','2015-07-25 08:46:46',5,0,0);
/*!40000 ALTER TABLE `rv_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_bkt_a`
--

DROP TABLE IF EXISTS `rv_data_bkt_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_bkt_a` (
  `server_conv_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_ip` varchar(16) NOT NULL DEFAULT '',
  `tracker_id` mediumint(9) NOT NULL,
  `date_time` datetime NOT NULL,
  `action_date_time` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '',
  `action` int(10) DEFAULT NULL,
  `window` int(10) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  PRIMARY KEY (`server_conv_id`,`server_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_bkt_a`
--

LOCK TABLES `rv_data_bkt_a` WRITE;
/*!40000 ALTER TABLE `rv_data_bkt_a` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_bkt_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_bkt_a_var`
--

DROP TABLE IF EXISTS `rv_data_bkt_a_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_bkt_a_var` (
  `server_conv_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_ip` varchar(16) NOT NULL DEFAULT '',
  `tracker_variable_id` mediumint(9) NOT NULL,
  `value` text,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`server_conv_id`,`server_ip`,`tracker_variable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_bkt_a_var`
--

LOCK TABLES `rv_data_bkt_a_var` WRITE;
/*!40000 ALTER TABLE `rv_data_bkt_a_var` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_bkt_a_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_bkt_c`
--

DROP TABLE IF EXISTS `rv_data_bkt_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_bkt_c` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`interval_start`,`creative_id`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_bkt_c`
--

LOCK TABLES `rv_data_bkt_c` WRITE;
/*!40000 ALTER TABLE `rv_data_bkt_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_bkt_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_bkt_m`
--

DROP TABLE IF EXISTS `rv_data_bkt_m`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_bkt_m` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`interval_start`,`creative_id`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_bkt_m`
--

LOCK TABLES `rv_data_bkt_m` WRITE;
/*!40000 ALTER TABLE `rv_data_bkt_m` DISABLE KEYS */;
INSERT INTO `rv_data_bkt_m` VALUES ('2015-07-25 08:00:00',0,1,3),('2015-07-25 08:00:00',3,1,1);
/*!40000 ALTER TABLE `rv_data_bkt_m` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_bkt_r`
--

DROP TABLE IF EXISTS `rv_data_bkt_r`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_bkt_r` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(9) NOT NULL,
  `zone_id` mediumint(9) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`interval_start`,`creative_id`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_bkt_r`
--

LOCK TABLES `rv_data_bkt_r` WRITE;
/*!40000 ALTER TABLE `rv_data_bkt_r` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_bkt_r` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_bkt_vast_e`
--

DROP TABLE IF EXISTS `rv_data_bkt_vast_e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_bkt_vast_e` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(20) NOT NULL,
  `zone_id` mediumint(20) NOT NULL,
  `vast_event_id` mediumint(20) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`interval_start`,`creative_id`,`zone_id`,`vast_event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_bkt_vast_e`
--

LOCK TABLES `rv_data_bkt_vast_e` WRITE;
/*!40000 ALTER TABLE `rv_data_bkt_vast_e` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_bkt_vast_e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_intermediate_ad`
--

DROP TABLE IF EXISTS `rv_data_intermediate_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_intermediate_ad` (
  `data_intermediate_ad_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `operation_interval` int(10) unsigned NOT NULL,
  `operation_interval_id` int(10) unsigned NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `requests` int(10) unsigned NOT NULL DEFAULT '0',
  `impressions` int(10) unsigned NOT NULL DEFAULT '0',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `conversions` int(10) unsigned NOT NULL DEFAULT '0',
  `total_basket_value` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `total_num_items` int(11) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  PRIMARY KEY (`data_intermediate_ad_id`),
  KEY `rv_data_intermediate_ad_ad_id_date_time` (`ad_id`,`date_time`),
  KEY `rv_data_intermediate_ad_zone_id_date_time` (`zone_id`,`date_time`),
  KEY `rv_data_intermediate_ad_date_time` (`date_time`),
  KEY `rv_data_intermediate_ad_interval_start` (`interval_start`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_intermediate_ad`
--

LOCK TABLES `rv_data_intermediate_ad` WRITE;
/*!40000 ALTER TABLE `rv_data_intermediate_ad` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_intermediate_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_intermediate_ad_connection`
--

DROP TABLE IF EXISTS `rv_data_intermediate_ad_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_intermediate_ad_connection` (
  `data_intermediate_ad_connection_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_raw_ip` varchar(16) NOT NULL DEFAULT '',
  `server_raw_tracker_impression_id` bigint(20) NOT NULL,
  `viewer_id` varchar(32) DEFAULT NULL,
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `tracker_date_time` datetime NOT NULL,
  `connection_date_time` datetime DEFAULT NULL,
  `tracker_id` int(10) unsigned NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `tracker_channel` varchar(255) DEFAULT NULL,
  `connection_channel` varchar(255) DEFAULT NULL,
  `tracker_channel_ids` varchar(64) DEFAULT NULL,
  `connection_channel_ids` varchar(64) DEFAULT NULL,
  `tracker_language` varchar(13) DEFAULT NULL,
  `connection_language` varchar(13) DEFAULT NULL,
  `tracker_ip_address` varchar(16) DEFAULT NULL,
  `connection_ip_address` varchar(16) DEFAULT NULL,
  `tracker_host_name` varchar(255) DEFAULT NULL,
  `connection_host_name` varchar(255) DEFAULT NULL,
  `tracker_country` char(2) DEFAULT NULL,
  `connection_country` char(2) DEFAULT NULL,
  `tracker_https` int(10) unsigned DEFAULT NULL,
  `connection_https` int(10) unsigned DEFAULT NULL,
  `tracker_domain` varchar(255) DEFAULT NULL,
  `connection_domain` varchar(255) DEFAULT NULL,
  `tracker_page` varchar(255) DEFAULT NULL,
  `connection_page` varchar(255) DEFAULT NULL,
  `tracker_query` varchar(255) DEFAULT NULL,
  `connection_query` varchar(255) DEFAULT NULL,
  `tracker_referer` varchar(255) DEFAULT NULL,
  `connection_referer` varchar(255) DEFAULT NULL,
  `tracker_search_term` varchar(255) DEFAULT NULL,
  `connection_search_term` varchar(255) DEFAULT NULL,
  `tracker_user_agent` varchar(255) DEFAULT NULL,
  `connection_user_agent` varchar(255) DEFAULT NULL,
  `tracker_os` varchar(32) DEFAULT NULL,
  `connection_os` varchar(32) DEFAULT NULL,
  `tracker_browser` varchar(32) DEFAULT NULL,
  `connection_browser` varchar(32) DEFAULT NULL,
  `connection_action` int(10) unsigned DEFAULT NULL,
  `connection_window` int(10) unsigned DEFAULT NULL,
  `connection_status` int(10) unsigned NOT NULL DEFAULT '4',
  `inside_window` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`data_intermediate_ad_connection_id`),
  KEY `rv_data_intermediate_ad_connection_tracker_date_time` (`tracker_date_time`),
  KEY `rv_data_intermediate_ad_connection_tracker_id` (`tracker_id`),
  KEY `rv_data_intermediate_ad_connection_ad_id` (`ad_id`),
  KEY `rv_data_intermediate_ad_connection_zone_id` (`zone_id`),
  KEY `rv_data_intermediate_ad_connection_viewer_id` (`viewer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_intermediate_ad_connection`
--

LOCK TABLES `rv_data_intermediate_ad_connection` WRITE;
/*!40000 ALTER TABLE `rv_data_intermediate_ad_connection` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_intermediate_ad_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_intermediate_ad_variable_value`
--

DROP TABLE IF EXISTS `rv_data_intermediate_ad_variable_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_intermediate_ad_variable_value` (
  `data_intermediate_ad_variable_value_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_intermediate_ad_connection_id` bigint(20) NOT NULL,
  `tracker_variable_id` int(11) NOT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`data_intermediate_ad_variable_value_id`),
  KEY `rv_data_intermediate_ad_variable_value_data_intermediate_ad_con` (`data_intermediate_ad_connection_id`),
  KEY `rv_data_intermediate_ad_variable_value_tracker_variable_id` (`tracker_variable_id`),
  KEY `rv_data_intermediate_ad_variable_value_tracker_value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_intermediate_ad_variable_value`
--

LOCK TABLES `rv_data_intermediate_ad_variable_value` WRITE;
/*!40000 ALTER TABLE `rv_data_intermediate_ad_variable_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_intermediate_ad_variable_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_raw_ad_click`
--

DROP TABLE IF EXISTS `rv_data_raw_ad_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_raw_ad_click` (
  `viewer_id` varchar(32) DEFAULT NULL,
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `channel_ids` varchar(64) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `https` tinyint(1) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `browser` varchar(32) DEFAULT NULL,
  `max_https` tinyint(1) DEFAULT NULL,
  `geo_region` varchar(50) DEFAULT NULL,
  `geo_city` varchar(50) DEFAULT NULL,
  `geo_postal_code` varchar(10) DEFAULT NULL,
  `geo_latitude` decimal(8,4) DEFAULT NULL,
  `geo_longitude` decimal(8,4) DEFAULT NULL,
  `geo_dma_code` varchar(50) DEFAULT NULL,
  `geo_area_code` varchar(50) DEFAULT NULL,
  `geo_organisation` varchar(50) DEFAULT NULL,
  `geo_netspeed` varchar(20) DEFAULT NULL,
  `geo_continent` varchar(13) DEFAULT NULL,
  KEY `rv_data_raw_ad_click_viewer_id` (`viewer_id`),
  KEY `rv_data_raw_ad_click_date_time` (`date_time`),
  KEY `rv_data_raw_ad_click_ad_id` (`ad_id`),
  KEY `rv_data_raw_ad_click_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_raw_ad_click`
--

LOCK TABLES `rv_data_raw_ad_click` WRITE;
/*!40000 ALTER TABLE `rv_data_raw_ad_click` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_raw_ad_click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_raw_ad_impression`
--

DROP TABLE IF EXISTS `rv_data_raw_ad_impression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_raw_ad_impression` (
  `viewer_id` varchar(32) DEFAULT NULL,
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `channel_ids` varchar(64) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `https` tinyint(1) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `browser` varchar(32) DEFAULT NULL,
  `max_https` tinyint(1) DEFAULT NULL,
  `geo_region` varchar(50) DEFAULT NULL,
  `geo_city` varchar(50) DEFAULT NULL,
  `geo_postal_code` varchar(10) DEFAULT NULL,
  `geo_latitude` decimal(8,4) DEFAULT NULL,
  `geo_longitude` decimal(8,4) DEFAULT NULL,
  `geo_dma_code` varchar(50) DEFAULT NULL,
  `geo_area_code` varchar(50) DEFAULT NULL,
  `geo_organisation` varchar(50) DEFAULT NULL,
  `geo_netspeed` varchar(20) DEFAULT NULL,
  `geo_continent` varchar(13) DEFAULT NULL,
  KEY `rv_data_raw_ad_impression_viewer_id` (`viewer_id`),
  KEY `rv_data_raw_ad_impression_date_time` (`date_time`),
  KEY `rv_data_raw_ad_impression_ad_id` (`ad_id`),
  KEY `rv_data_raw_ad_impression_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_raw_ad_impression`
--

LOCK TABLES `rv_data_raw_ad_impression` WRITE;
/*!40000 ALTER TABLE `rv_data_raw_ad_impression` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_raw_ad_impression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_raw_ad_request`
--

DROP TABLE IF EXISTS `rv_data_raw_ad_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_raw_ad_request` (
  `viewer_id` varchar(32) DEFAULT NULL,
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `channel_ids` varchar(64) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `https` tinyint(1) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `browser` varchar(32) DEFAULT NULL,
  `max_https` tinyint(1) DEFAULT NULL,
  KEY `rv_data_raw_ad_request_viewer_id` (`viewer_id`),
  KEY `rv_data_raw_ad_request_date_time` (`date_time`),
  KEY `rv_data_raw_ad_request_ad_id` (`ad_id`),
  KEY `rv_data_raw_ad_request_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_raw_ad_request`
--

LOCK TABLES `rv_data_raw_ad_request` WRITE;
/*!40000 ALTER TABLE `rv_data_raw_ad_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_raw_ad_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_raw_tracker_impression`
--

DROP TABLE IF EXISTS `rv_data_raw_tracker_impression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_raw_tracker_impression` (
  `server_raw_tracker_impression_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_raw_ip` varchar(16) NOT NULL DEFAULT '',
  `viewer_id` varchar(32) NOT NULL DEFAULT '',
  `viewer_session_id` varchar(32) DEFAULT NULL,
  `date_time` datetime NOT NULL,
  `tracker_id` int(10) unsigned NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `channel_ids` varchar(64) DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `https` int(10) unsigned DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `search_term` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `browser` varchar(32) DEFAULT NULL,
  `max_https` int(10) unsigned DEFAULT NULL,
  `geo_region` varchar(50) DEFAULT NULL,
  `geo_city` varchar(50) DEFAULT NULL,
  `geo_postal_code` varchar(10) DEFAULT NULL,
  `geo_latitude` decimal(8,4) DEFAULT NULL,
  `geo_longitude` decimal(8,4) DEFAULT NULL,
  `geo_dma_code` varchar(50) DEFAULT NULL,
  `geo_area_code` varchar(50) DEFAULT NULL,
  `geo_organisation` varchar(50) DEFAULT NULL,
  `geo_netspeed` varchar(20) DEFAULT NULL,
  `geo_continent` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`server_raw_tracker_impression_id`,`server_raw_ip`),
  KEY `rv_data_raw_tracker_impression_viewer_id` (`viewer_id`),
  KEY `rv_data_raw_tracker_impression_date_time` (`date_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_raw_tracker_impression`
--

LOCK TABLES `rv_data_raw_tracker_impression` WRITE;
/*!40000 ALTER TABLE `rv_data_raw_tracker_impression` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_raw_tracker_impression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_raw_tracker_variable_value`
--

DROP TABLE IF EXISTS `rv_data_raw_tracker_variable_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_raw_tracker_variable_value` (
  `server_raw_tracker_impression_id` bigint(20) NOT NULL,
  `server_raw_ip` varchar(16) NOT NULL DEFAULT '',
  `tracker_variable_id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`server_raw_tracker_impression_id`,`server_raw_ip`,`tracker_variable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_raw_tracker_variable_value`
--

LOCK TABLES `rv_data_raw_tracker_variable_value` WRITE;
/*!40000 ALTER TABLE `rv_data_raw_tracker_variable_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_raw_tracker_variable_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_summary_ad_hourly`
--

DROP TABLE IF EXISTS `rv_data_summary_ad_hourly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_summary_ad_hourly` (
  `data_summary_ad_hourly_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `creative_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `requests` int(10) unsigned NOT NULL DEFAULT '0',
  `impressions` int(10) unsigned NOT NULL DEFAULT '0',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `conversions` int(10) unsigned NOT NULL DEFAULT '0',
  `total_basket_value` decimal(10,4) DEFAULT NULL,
  `total_num_items` int(11) DEFAULT NULL,
  `total_revenue` decimal(10,4) DEFAULT NULL,
  `total_cost` decimal(10,4) DEFAULT NULL,
  `total_techcost` decimal(10,4) DEFAULT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`data_summary_ad_hourly_id`),
  KEY `rv_data_summary_ad_hourly_date_time` (`date_time`),
  KEY `rv_data_summary_ad_hourly_ad_id_date_time` (`ad_id`,`date_time`),
  KEY `rv_data_summary_ad_hourly_zone_id_date_time` (`zone_id`,`date_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_summary_ad_hourly`
--

LOCK TABLES `rv_data_summary_ad_hourly` WRITE;
/*!40000 ALTER TABLE `rv_data_summary_ad_hourly` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_summary_ad_hourly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_summary_ad_zone_assoc`
--

DROP TABLE IF EXISTS `rv_data_summary_ad_zone_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_summary_ad_zone_assoc` (
  `data_summary_ad_zone_assoc_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operation_interval` int(10) unsigned NOT NULL,
  `operation_interval_id` int(10) unsigned NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `ad_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `required_impressions` int(10) unsigned NOT NULL,
  `requested_impressions` int(10) unsigned NOT NULL,
  `priority` double NOT NULL,
  `priority_factor` double DEFAULT NULL,
  `priority_factor_limited` smallint(6) NOT NULL DEFAULT '0',
  `past_zone_traffic_fraction` double DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `expired` datetime DEFAULT NULL,
  `expired_by` int(10) unsigned DEFAULT NULL,
  `to_be_delivered` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`data_summary_ad_zone_assoc_id`),
  KEY `rv_data_summary_ad_zone_assoc_interval_start` (`interval_start`),
  KEY `rv_data_summary_ad_zone_assoc_interval_end` (`interval_end`),
  KEY `rv_data_summary_ad_zone_assoc_ad_id` (`ad_id`),
  KEY `rv_data_summary_ad_zone_assoc_zone_id` (`zone_id`),
  KEY `rv_data_summary_ad_zone_assoc_expired` (`expired`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_summary_ad_zone_assoc`
--

LOCK TABLES `rv_data_summary_ad_zone_assoc` WRITE;
/*!40000 ALTER TABLE `rv_data_summary_ad_zone_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_summary_ad_zone_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_summary_channel_daily`
--

DROP TABLE IF EXISTS `rv_data_summary_channel_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_summary_channel_daily` (
  `data_summary_channel_daily_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `channel_id` int(10) unsigned NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `forecast_impressions` int(10) unsigned NOT NULL DEFAULT '0',
  `actual_impressions` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`data_summary_channel_daily_id`),
  KEY `rv_data_summary_channel_daily_day` (`day`),
  KEY `rv_data_summary_channel_daily_channel_id` (`channel_id`),
  KEY `rv_data_summary_channel_daily_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_summary_channel_daily`
--

LOCK TABLES `rv_data_summary_channel_daily` WRITE;
/*!40000 ALTER TABLE `rv_data_summary_channel_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_summary_channel_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_data_summary_zone_impression_history`
--

DROP TABLE IF EXISTS `rv_data_summary_zone_impression_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_data_summary_zone_impression_history` (
  `data_summary_zone_impression_history_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operation_interval` int(10) unsigned NOT NULL,
  `operation_interval_id` int(10) unsigned NOT NULL,
  `interval_start` datetime NOT NULL,
  `interval_end` datetime NOT NULL,
  `zone_id` int(10) unsigned NOT NULL,
  `forecast_impressions` int(10) unsigned DEFAULT NULL,
  `actual_impressions` int(10) unsigned DEFAULT NULL,
  `est` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`data_summary_zone_impression_history_id`),
  KEY `rv_data_summary_zone_impression_history_operation_interval_id` (`operation_interval_id`),
  KEY `rv_data_summary_zone_impression_history_zone_id` (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_data_summary_zone_impression_history`
--

LOCK TABLES `rv_data_summary_zone_impression_history` WRITE;
/*!40000 ALTER TABLE `rv_data_summary_zone_impression_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_data_summary_zone_impression_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_database_action`
--

DROP TABLE IF EXISTS `rv_database_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_database_action` (
  `database_action_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upgrade_action_id` int(10) unsigned DEFAULT '0',
  `schema_name` varchar(64) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `timing` int(2) NOT NULL,
  `action` int(2) NOT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `tablename` varchar(64) DEFAULT NULL,
  `tablename_backup` varchar(64) DEFAULT NULL,
  `table_backup_schema` text,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`database_action_id`),
  KEY `rv_database_action_upgrade_action_id` (`upgrade_action_id`,`database_action_id`),
  KEY `rv_database_action_schema_version_timing_action` (`schema_name`,`version`,`timing`,`action`),
  KEY `rv_database_action_updated` (`updated`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_database_action`
--

LOCK TABLES `rv_database_action` WRITE;
/*!40000 ALTER TABLE `rv_database_action` DISABLE KEYS */;
INSERT INTO `rv_database_action` VALUES (1,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_c',NULL,NULL,'2015-07-25 08:15:19'),(2,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_m',NULL,NULL,'2015-07-25 08:15:19'),(3,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_r',NULL,NULL,'2015-07-25 08:15:19'),(4,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_a',NULL,NULL,'2015-07-25 08:15:19'),(5,24,'oxDeliveryDataPrepare',2,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_a_var',NULL,NULL,'2015-07-25 08:15:19'),(6,30,'vastbannertypehtml',13,0,59,'CREATE SUCCEEDED',NULL,'banner_vast_element',NULL,NULL,'2015-07-25 08:15:22'),(7,30,'vastbannertypehtml',13,0,59,'CREATE SUCCEEDED',NULL,'data_bkt_vast_e',NULL,NULL,'2015-07-25 08:15:22'),(8,30,'vastbannertypehtml',13,0,59,'CREATE SUCCEEDED',NULL,'stats_vast',NULL,NULL,'2015-07-25 08:15:23');
/*!40000 ALTER TABLE `rv_database_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_images`
--

DROP TABLE IF EXISTS `rv_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_images` (
  `filename` varchar(128) NOT NULL DEFAULT '',
  `contents` longblob NOT NULL,
  `t_stamp` datetime DEFAULT NULL,
  PRIMARY KEY (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_images`
--

LOCK TABLES `rv_images` WRITE;
/*!40000 ALTER TABLE `rv_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_log_maintenance_forecasting`
--

DROP TABLE IF EXISTS `rv_log_maintenance_forecasting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_log_maintenance_forecasting` (
  `log_maintenance_forecasting_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `operation_interval` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `updated_to` datetime DEFAULT NULL,
  PRIMARY KEY (`log_maintenance_forecasting_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_log_maintenance_forecasting`
--

LOCK TABLES `rv_log_maintenance_forecasting` WRITE;
/*!40000 ALTER TABLE `rv_log_maintenance_forecasting` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_log_maintenance_forecasting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_log_maintenance_priority`
--

DROP TABLE IF EXISTS `rv_log_maintenance_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_log_maintenance_priority` (
  `log_maintenance_priority_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `operation_interval` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `run_type` tinyint(3) unsigned NOT NULL,
  `updated_to` datetime DEFAULT NULL,
  PRIMARY KEY (`log_maintenance_priority_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_log_maintenance_priority`
--

LOCK TABLES `rv_log_maintenance_priority` WRITE;
/*!40000 ALTER TABLE `rv_log_maintenance_priority` DISABLE KEYS */;
INSERT INTO `rv_log_maintenance_priority` VALUES (1,'2015-07-25 08:29:08','2015-07-25 08:29:08',60,0,1,NULL),(2,'2015-07-25 08:29:08','2015-07-25 08:29:08',60,0,2,NULL),(3,'2015-07-25 08:29:08','2015-07-25 08:29:08',60,0,2,NULL);
/*!40000 ALTER TABLE `rv_log_maintenance_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_log_maintenance_statistics`
--

DROP TABLE IF EXISTS `rv_log_maintenance_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_log_maintenance_statistics` (
  `log_maintenance_statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `start_run` datetime NOT NULL,
  `end_run` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `adserver_run_type` int(2) DEFAULT NULL,
  `search_run_type` int(2) DEFAULT NULL,
  `tracker_run_type` int(2) DEFAULT NULL,
  `updated_to` datetime DEFAULT NULL,
  PRIMARY KEY (`log_maintenance_statistics_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_log_maintenance_statistics`
--

LOCK TABLES `rv_log_maintenance_statistics` WRITE;
/*!40000 ALTER TABLE `rv_log_maintenance_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_log_maintenance_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_password_recovery`
--

DROP TABLE IF EXISTS `rv_password_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_password_recovery` (
  `user_type` varchar(64) NOT NULL DEFAULT '',
  `user_id` int(10) NOT NULL,
  `recovery_id` varchar(64) NOT NULL DEFAULT '',
  `updated` datetime NOT NULL,
  PRIMARY KEY (`user_type`,`user_id`),
  UNIQUE KEY `rv_password_recovery_recovery_id` (`recovery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_password_recovery`
--

LOCK TABLES `rv_password_recovery` WRITE;
/*!40000 ALTER TABLE `rv_password_recovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_password_recovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_placement_zone_assoc`
--

DROP TABLE IF EXISTS `rv_placement_zone_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_placement_zone_assoc` (
  `placement_zone_assoc_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `zone_id` mediumint(9) DEFAULT NULL,
  `placement_id` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`placement_zone_assoc_id`),
  KEY `rv_placement_zone_assoc_zone_id` (`zone_id`),
  KEY `rv_placement_zone_assoc_placement_id` (`placement_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_placement_zone_assoc`
--

LOCK TABLES `rv_placement_zone_assoc` WRITE;
/*!40000 ALTER TABLE `rv_placement_zone_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_placement_zone_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_preferences`
--

DROP TABLE IF EXISTS `rv_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_preferences` (
  `preference_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `preference_name` varchar(64) NOT NULL DEFAULT '',
  `account_type` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`preference_id`),
  UNIQUE KEY `rv_preferences_preference_name` (`preference_name`),
  KEY `rv_preferences_account_type` (`account_type`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_preferences`
--

LOCK TABLES `rv_preferences` WRITE;
/*!40000 ALTER TABLE `rv_preferences` DISABLE KEYS */;
INSERT INTO `rv_preferences` VALUES (1,'default_banner_image_url','TRAFFICKER'),(2,'default_banner_destination_url','TRAFFICKER'),(3,'default_banner_weight','ADVERTISER'),(4,'default_campaign_weight','ADVERTISER'),(5,'warn_email_admin','ADMIN'),(6,'warn_email_admin_impression_limit','ADMIN'),(7,'warn_email_admin_day_limit','ADMIN'),(8,'campaign_ecpm_enabled','MANAGER'),(9,'contract_ecpm_enabled','MANAGER'),(10,'warn_email_manager','MANAGER'),(11,'warn_email_manager_impression_limit','MANAGER'),(12,'warn_email_manager_day_limit','MANAGER'),(13,'warn_email_advertiser','ADVERTISER'),(14,'warn_email_advertiser_impression_limit','ADVERTISER'),(15,'warn_email_advertiser_day_limit','ADVERTISER'),(16,'timezone','MANAGER'),(17,'tracker_default_status','ADVERTISER'),(18,'tracker_default_type','ADVERTISER'),(19,'tracker_link_campaigns','ADVERTISER'),(20,'ui_show_campaign_info','ADVERTISER'),(21,'ui_show_banner_info','ADVERTISER'),(22,'ui_show_campaign_preview','ADVERTISER'),(23,'ui_show_banner_html','ADVERTISER'),(24,'ui_show_banner_preview','ADVERTISER'),(25,'ui_hide_inactive',''),(26,'ui_show_matching_banners','TRAFFICKER'),(27,'ui_show_matching_banners_parents','TRAFFICKER'),(28,'ui_show_entity_id',''),(29,'ui_novice_user',''),(30,'ui_week_start_day',''),(31,'ui_percentage_decimals',''),(32,'ui_column_revenue','MANAGER'),(33,'ui_column_revenue_label','MANAGER'),(34,'ui_column_revenue_rank','MANAGER'),(35,'ui_column_bv','MANAGER'),(36,'ui_column_bv_label','MANAGER'),(37,'ui_column_bv_rank','MANAGER'),(38,'ui_column_num_items','MANAGER'),(39,'ui_column_num_items_label','MANAGER'),(40,'ui_column_num_items_rank','MANAGER'),(41,'ui_column_revcpc','MANAGER'),(42,'ui_column_revcpc_label','MANAGER'),(43,'ui_column_revcpc_rank','MANAGER'),(44,'ui_column_erpm','MANAGER'),(45,'ui_column_erpm_label','MANAGER'),(46,'ui_column_erpm_rank','MANAGER'),(47,'ui_column_erpc','MANAGER'),(48,'ui_column_erpc_label','MANAGER'),(49,'ui_column_erpc_rank','MANAGER'),(50,'ui_column_erps','MANAGER'),(51,'ui_column_erps_label','MANAGER'),(52,'ui_column_erps_rank','MANAGER'),(53,'ui_column_eipm','MANAGER'),(54,'ui_column_eipm_label','MANAGER'),(55,'ui_column_eipm_rank','MANAGER'),(56,'ui_column_eipc','MANAGER'),(57,'ui_column_eipc_label','MANAGER'),(58,'ui_column_eipc_rank','MANAGER'),(59,'ui_column_eips','MANAGER'),(60,'ui_column_eips_label','MANAGER'),(61,'ui_column_eips_rank','MANAGER'),(62,'ui_column_ecpm','MANAGER'),(63,'ui_column_ecpm_label','MANAGER'),(64,'ui_column_ecpm_rank','MANAGER'),(65,'ui_column_ecpc','MANAGER'),(66,'ui_column_ecpc_label','MANAGER'),(67,'ui_column_ecpc_rank','MANAGER'),(68,'ui_column_ecps','MANAGER'),(69,'ui_column_ecps_label','MANAGER'),(70,'ui_column_ecps_rank','MANAGER'),(71,'ui_column_id','MANAGER'),(72,'ui_column_id_label','MANAGER'),(73,'ui_column_id_rank','MANAGER'),(74,'ui_column_requests','MANAGER'),(75,'ui_column_requests_label','MANAGER'),(76,'ui_column_requests_rank','MANAGER'),(77,'ui_column_impressions','MANAGER'),(78,'ui_column_impressions_label','MANAGER'),(79,'ui_column_impressions_rank','MANAGER'),(80,'ui_column_clicks','MANAGER'),(81,'ui_column_clicks_label','MANAGER'),(82,'ui_column_clicks_rank','MANAGER'),(83,'ui_column_ctr','MANAGER'),(84,'ui_column_ctr_label','MANAGER'),(85,'ui_column_ctr_rank','MANAGER'),(86,'ui_column_conversions','MANAGER'),(87,'ui_column_conversions_label','MANAGER'),(88,'ui_column_conversions_rank','MANAGER'),(89,'ui_column_conversions_pending','MANAGER'),(90,'ui_column_conversions_pending_label','MANAGER'),(91,'ui_column_conversions_pending_rank','MANAGER'),(92,'ui_column_sr_views','MANAGER'),(93,'ui_column_sr_views_label','MANAGER'),(94,'ui_column_sr_views_rank','MANAGER'),(95,'ui_column_sr_clicks','MANAGER'),(96,'ui_column_sr_clicks_label','MANAGER'),(97,'ui_column_sr_clicks_rank','MANAGER');
/*!40000 ALTER TABLE `rv_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_session`
--

DROP TABLE IF EXISTS `rv_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_session` (
  `sessionid` varchar(32) NOT NULL DEFAULT '',
  `sessiondata` text NOT NULL,
  `lastused` datetime DEFAULT NULL,
  PRIMARY KEY (`sessionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_session`
--

LOCK TABLES `rv_session` WRITE;
/*!40000 ALTER TABLE `rv_session` DISABLE KEYS */;
INSERT INTO `rv_session` VALUES ('3818936e1ad3176fda7d7e992a399a01','a:7:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:21:\"azhar.amirr@gmail.com\";s:8:\"username\";s:5:\"admin\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2015-07-25 15:14:57\";s:15:\"date_last_login\";s:19:\"2015-08-05 07:22:30\";s:13:\"email_updated\";s:19:\"2015-07-25 15:14:57\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:5:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:9:\"messageId\";i:1438759358;s:12:\"messageQueue\";a:0:{}s:17:\"notificationQueue\";a:0:{}s:5:\"token\";s:32:\"17fffd213063d34f233bc59e0bb6fc92\";s:15:\"maint_update_js\";b:1;s:5:\"prefs\";a:1:{s:18:\"inventory_entities\";a:1:{i:1;a:2:{s:8:\"clientid\";s:1:\"1\";s:10:\"campaignid\";a:1:{i:1;s:1:\"1\";}}}}}','2015-08-05 09:02:30'),('b8fdba8ffe2d86b59521b48cf32a6d3a','a:7:{s:4:\"user\";O:18:\"OA_Permission_User\":2:{s:5:\"aUser\";a:13:{s:7:\"user_id\";s:1:\"1\";s:12:\"contact_name\";s:13:\"Administrator\";s:13:\"email_address\";s:21:\"azhar.amirr@gmail.com\";s:8:\"username\";s:5:\"admin\";s:8:\"language\";s:2:\"en\";s:18:\"default_account_id\";s:1:\"2\";s:8:\"comments\";s:0:\"\";s:6:\"active\";s:1:\"1\";s:11:\"sso_user_id\";s:0:\"\";s:12:\"date_created\";s:19:\"2015-07-25 15:14:57\";s:15:\"date_last_login\";s:19:\"2015-08-12 11:37:42\";s:13:\"email_updated\";s:19:\"2015-07-25 15:14:57\";s:8:\"is_admin\";b:1;}s:8:\"aAccount\";a:5:{s:10:\"account_id\";s:1:\"2\";s:12:\"account_type\";s:7:\"MANAGER\";s:12:\"account_name\";s:15:\"Default manager\";s:9:\"entity_id\";s:1:\"1\";s:9:\"agency_id\";s:1:\"1\";}}s:9:\"messageId\";i:1439379468;s:12:\"messageQueue\";a:0:{}s:17:\"notificationQueue\";a:0:{}s:15:\"maint_update_js\";b:1;s:5:\"prefs\";a:3:{s:18:\"inventory_entities\";a:1:{i:1;a:2:{s:8:\"clientid\";s:1:\"2\";s:10:\"campaignid\";a:1:{i:2;s:1:\"2\";}}}s:20:\"advertiser-index.php\";a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}s:24:\"advertiser-campaigns.php\";a:1:{i:2;a:3:{s:12:\"hideinactive\";b:0;s:9:\"listorder\";s:0:\"\";s:14:\"orderdirection\";s:0:\"\";}}}s:5:\"token\";s:32:\"09b22cec75bd0ccca86f12d6dc536bf6\";}','2015-08-12 11:40:54');
/*!40000 ALTER TABLE `rv_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_stats_vast`
--

DROP TABLE IF EXISTS `rv_stats_vast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_stats_vast` (
  `interval_start` datetime NOT NULL,
  `creative_id` mediumint(20) NOT NULL,
  `zone_id` mediumint(20) NOT NULL,
  `vast_event_id` mediumint(20) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  KEY `rv_stats_vast_creativekey` (`interval_start`,`creative_id`),
  KEY `rv_stats_vast_zonekey` (`interval_start`,`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_stats_vast`
--

LOCK TABLES `rv_stats_vast` WRITE;
/*!40000 ALTER TABLE `rv_stats_vast` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_stats_vast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_targetstats`
--

DROP TABLE IF EXISTS `rv_targetstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_targetstats` (
  `day` date NOT NULL DEFAULT '0000-00-00',
  `campaignid` mediumint(9) NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `modified` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_targetstats`
--

LOCK TABLES `rv_targetstats` WRITE;
/*!40000 ALTER TABLE `rv_targetstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_targetstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_tracker_append`
--

DROP TABLE IF EXISTS `rv_tracker_append`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_tracker_append` (
  `tracker_append_id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` mediumint(9) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `tagcode` text NOT NULL,
  `paused` enum('t','f') NOT NULL DEFAULT 'f',
  `autotrack` enum('t','f') NOT NULL DEFAULT 'f',
  PRIMARY KEY (`tracker_append_id`),
  KEY `rv_tracker_append_tracker_id` (`tracker_id`,`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_tracker_append`
--

LOCK TABLES `rv_tracker_append` WRITE;
/*!40000 ALTER TABLE `rv_tracker_append` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_tracker_append` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_trackers`
--

DROP TABLE IF EXISTS `rv_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_trackers` (
  `trackerid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `trackername` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `clientid` mediumint(9) NOT NULL DEFAULT '0',
  `viewwindow` mediumint(9) NOT NULL DEFAULT '0',
  `clickwindow` mediumint(9) NOT NULL DEFAULT '0',
  `blockwindow` mediumint(9) NOT NULL DEFAULT '0',
  `status` smallint(1) unsigned NOT NULL DEFAULT '4',
  `type` smallint(1) unsigned NOT NULL DEFAULT '1',
  `linkcampaigns` enum('t','f') NOT NULL DEFAULT 'f',
  `variablemethod` enum('default','js','dom','custom') NOT NULL DEFAULT 'default',
  `appendcode` text NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`trackerid`),
  KEY `rv_trackers_clientid` (`clientid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_trackers`
--

LOCK TABLES `rv_trackers` WRITE;
/*!40000 ALTER TABLE `rv_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_upgrade_action`
--

DROP TABLE IF EXISTS `rv_upgrade_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_upgrade_action` (
  `upgrade_action_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upgrade_name` varchar(128) DEFAULT NULL,
  `version_to` varchar(64) NOT NULL DEFAULT '',
  `version_from` varchar(64) DEFAULT NULL,
  `action` int(2) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `logfile` varchar(128) DEFAULT NULL,
  `confbackup` varchar(128) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`upgrade_action_id`),
  KEY `rv_upgrade_action_updated` (`updated`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_upgrade_action`
--

LOCK TABLES `rv_upgrade_action` WRITE;
/*!40000 ALTER TABLE `rv_upgrade_action` DISABLE KEYS */;
INSERT INTO `rv_upgrade_action` VALUES (1,'install_3.2.1','3.2.1','0',1,'UPGRADE_COMPLETE','install.log',NULL,'2015-07-25 15:14:32'),(2,'install_openXBannerTypes','1.2.5','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:14:58'),(3,'install_oxHtml','1.2.5','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:14:58'),(4,'install_oxText','1.2.5','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:14:58'),(5,'install_openXDeliveryLimitations','1.3.3','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:01'),(6,'install_Client','1.3.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:01'),(7,'install_Geo','1.3.3','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:01'),(8,'install_Site','1.3.3','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:01'),(9,'install_Time','1.3.3','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:01'),(10,'install_openX3rdPartyServers','1.2.1','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:04'),(11,'install_ox3rdPartyServers','1.2.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:04'),(12,'install_openXReports','1.5.5','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:07'),(13,'install_oxReportsStandard','1.5.5','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:07'),(14,'install_oxReportsAdmin','1.5.4','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:07'),(15,'install_openXDeliveryCacheStore','1.1.3','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:09'),(16,'install_oxCacheFile','1.1.3','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:09'),(17,'install_oxMemcached','1.1.3','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:09'),(18,'install_openXMaxMindGeoIP','1.3.3','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:13'),(19,'install_oxMaxMindGeoIP','1.3.3','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:13'),(20,'install_openXInvocationTags','1.4.4','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:16'),(21,'install_oxInvocationTags','1.4.4','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:16'),(22,'install_openXDeliveryLog','1.1.2','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:19'),(23,'install_oxDeliveryDataPrepare','1.1.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:19'),(24,'install_oxLogClick','1.1.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:19'),(25,'install_oxLogConversion','1.1.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:19'),(26,'install_oxLogImpression','1.1.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:19'),(27,'install_oxLogRequest','1.1.2','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:19'),(28,'install_openXVideoAds','1.11.1','0',4,'PACKAGE INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:23'),(29,'install_vastInlineBannerTypeHtml','1.11.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:23'),(30,'install_vastOverlayBannerTypeHtml','1.11.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:23'),(31,'install_oxLogVast','1.11.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:23'),(32,'install_vastServeVideoPlayer','1.11.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:23'),(33,'install_videoReport','1.11.1','0',4,'PLUGIN INSTALL COMPLETE','plugins.log',NULL,'2015-07-25 08:15:23');
/*!40000 ALTER TABLE `rv_upgrade_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_userlog`
--

DROP TABLE IF EXISTS `rv_userlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_userlog` (
  `userlogid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `usertype` tinyint(4) NOT NULL DEFAULT '0',
  `userid` mediumint(9) NOT NULL DEFAULT '0',
  `action` mediumint(9) NOT NULL DEFAULT '0',
  `object` mediumint(9) DEFAULT NULL,
  `details` mediumtext,
  PRIMARY KEY (`userlogid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_userlog`
--

LOCK TABLES `rv_userlog` WRITE;
/*!40000 ALTER TABLE `rv_userlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_userlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_users`
--

DROP TABLE IF EXISTS `rv_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_users` (
  `user_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(64) NOT NULL DEFAULT '',
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `language` varchar(5) DEFAULT NULL,
  `default_account_id` mediumint(9) DEFAULT NULL,
  `comments` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `sso_user_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_last_login` datetime DEFAULT NULL,
  `email_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `rv_users_username` (`username`),
  UNIQUE KEY `rv_users_sso_user_id` (`sso_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_users`
--

LOCK TABLES `rv_users` WRITE;
/*!40000 ALTER TABLE `rv_users` DISABLE KEYS */;
INSERT INTO `rv_users` VALUES (1,'Administrator','azhar.amirr@gmail.com','admin','21232f297a57a5a743894a0e4a801fc3','en',2,NULL,1,NULL,'2015-07-25 15:14:57','2015-08-12 11:37:42','2015-07-25 15:14:57');
/*!40000 ALTER TABLE `rv_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_variable_publisher`
--

DROP TABLE IF EXISTS `rv_variable_publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_variable_publisher` (
  `variable_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY (`variable_id`,`publisher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_variable_publisher`
--

LOCK TABLES `rv_variable_publisher` WRITE;
/*!40000 ALTER TABLE `rv_variable_publisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_variable_publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_variables`
--

DROP TABLE IF EXISTS `rv_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_variables` (
  `variableid` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `trackerid` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) DEFAULT NULL,
  `datatype` enum('numeric','string','date') NOT NULL DEFAULT 'numeric',
  `purpose` enum('basket_value','num_items','post_code') DEFAULT NULL,
  `reject_if_empty` smallint(1) unsigned NOT NULL DEFAULT '0',
  `is_unique` int(11) NOT NULL DEFAULT '0',
  `unique_window` int(11) NOT NULL DEFAULT '0',
  `variablecode` varchar(255) NOT NULL DEFAULT '',
  `hidden` enum('t','f') NOT NULL DEFAULT 'f',
  `updated` datetime NOT NULL,
  PRIMARY KEY (`variableid`),
  KEY `rv_variables_is_unique` (`is_unique`),
  KEY `rv_variables_trackerid` (`trackerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_variables`
--

LOCK TABLES `rv_variables` WRITE;
/*!40000 ALTER TABLE `rv_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `rv_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rv_zones`
--

DROP TABLE IF EXISTS `rv_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rv_zones` (
  `zoneid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `affiliateid` mediumint(9) DEFAULT NULL,
  `zonename` varchar(245) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `delivery` smallint(6) NOT NULL DEFAULT '0',
  `zonetype` smallint(6) NOT NULL DEFAULT '0',
  `category` text NOT NULL,
  `width` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(6) NOT NULL DEFAULT '0',
  `ad_selection` text NOT NULL,
  `chain` text NOT NULL,
  `prepend` text NOT NULL,
  `append` text NOT NULL,
  `appendtype` tinyint(4) NOT NULL DEFAULT '0',
  `forceappend` enum('t','f') DEFAULT 'f',
  `inventory_forecast_type` smallint(6) NOT NULL DEFAULT '0',
  `comments` text,
  `cost` decimal(10,4) DEFAULT NULL,
  `cost_type` smallint(6) DEFAULT NULL,
  `cost_variable_id` varchar(255) DEFAULT NULL,
  `technology_cost` decimal(10,4) DEFAULT NULL,
  `technology_cost_type` smallint(6) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `block` int(11) NOT NULL DEFAULT '0',
  `capping` int(11) NOT NULL DEFAULT '0',
  `session_capping` int(11) NOT NULL DEFAULT '0',
  `what` text NOT NULL,
  `rate` decimal(19,2) DEFAULT NULL,
  `pricing` varchar(50) NOT NULL DEFAULT 'CPM',
  `oac_category_id` int(11) DEFAULT NULL,
  `ext_adselection` varchar(255) DEFAULT NULL,
  `show_capped_no_cookie` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`zoneid`),
  KEY `rv_zones_zonenameid` (`zonename`,`zoneid`),
  KEY `rv_zones_affiliateid` (`affiliateid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rv_zones`
--

LOCK TABLES `rv_zones` WRITE;
/*!40000 ALTER TABLE `rv_zones` DISABLE KEYS */;
INSERT INTO `rv_zones` VALUES (1,1,'azharamir','Demo Banner',0,3,'',1022,440,'','','','',0,'f',0,'',NULL,NULL,NULL,NULL,NULL,'2015-07-25 08:49:30',0,0,0,'',NULL,'CPM',NULL,NULL,0),(3,1,'azharamir - Default','',1,3,'',468,60,'','','','',0,'f',0,'',NULL,NULL,NULL,NULL,NULL,'2015-07-25 08:34:14',0,0,0,'',NULL,'CPM',NULL,NULL,0),(4,1,'azharamir - Default','',0,3,'',728,90,'','','','',0,'f',0,'',NULL,NULL,NULL,NULL,NULL,'2015-07-25 08:48:27',0,0,0,'',NULL,'CPM',NULL,NULL,0);
/*!40000 ALTER TABLE `rv_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-16  3:11:13
