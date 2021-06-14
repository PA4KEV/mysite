-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can view permission',1,'view_permission'),(5,'Can add group',2,'add_group'),(6,'Can change group',2,'change_group'),(7,'Can delete group',2,'delete_group'),(8,'Can view group',2,'view_group'),(9,'Can add user',3,'add_user'),(10,'Can change user',3,'change_user'),(11,'Can delete user',3,'delete_user'),(12,'Can view user',3,'view_user'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add log entry',6,'add_logentry'),(22,'Can change log entry',6,'change_logentry'),(23,'Can delete log entry',6,'delete_logentry'),(24,'Can view log entry',6,'view_logentry'),(25,'Can add question',7,'add_question'),(26,'Can change question',7,'change_question'),(27,'Can delete question',7,'delete_question'),(28,'Can view question',7,'view_question'),(29,'Can add choice',8,'add_choice'),(30,'Can change choice',8,'change_choice'),(31,'Can delete choice',8,'delete_choice'),(32,'Can view choice',8,'view_choice'),(33,'Can add tech category',9,'add_techcategory'),(34,'Can change tech category',9,'change_techcategory'),(35,'Can delete tech category',9,'delete_techcategory'),(36,'Can view tech category',9,'view_techcategory'),(37,'Can add technology',10,'add_technology'),(38,'Can change technology',10,'change_technology'),(39,'Can delete technology',10,'delete_technology'),(40,'Can view technology',10,'view_technology'),(41,'Can add project',11,'add_project'),(42,'Can change project',11,'change_project'),(43,'Can delete project',11,'delete_project'),(44,'Can view project',11,'view_project'),(45,'Can add tool',10,'add_tool'),(46,'Can change tool',10,'change_tool'),(47,'Can delete tool',10,'delete_tool'),(48,'Can view tool',10,'view_tool'),(49,'Can add tool category',9,'add_toolcategory'),(50,'Can change tool category',9,'change_toolcategory'),(51,'Can delete tool category',9,'delete_toolcategory'),(52,'Can view tool category',9,'view_toolcategory'),(53,'Can add quotee',12,'add_quotee'),(54,'Can change quotee',12,'change_quotee'),(55,'Can delete quotee',12,'delete_quotee'),(56,'Can view quotee',12,'view_quotee'),(57,'Can add quote',13,'add_quote'),(58,'Can change quote',13,'change_quote'),(59,'Can delete quote',13,'delete_quote'),(60,'Can view quote',13,'view_quote'),(61,'Can add project card',14,'add_projectcard'),(62,'Can change project card',14,'change_projectcard'),(63,'Can delete project card',14,'delete_projectcard'),(64,'Can view project card',14,'view_projectcard'),(65,'Can add entry',15,'add_entry'),(66,'Can change entry',15,'change_entry'),(67,'Can delete entry',15,'delete_entry'),(68,'Can view entry',15,'view_entry'),(69,'Can add tag',16,'add_tag'),(70,'Can change tag',16,'change_tag'),(71,'Can delete tag',16,'delete_tag'),(72,'Can view tag',16,'view_tag'),(73,'Can add blog image card',17,'add_blogimagecard'),(74,'Can change blog image card',17,'change_blogimagecard'),(75,'Can delete blog image card',17,'delete_blogimagecard'),(76,'Can view blog image card',17,'view_blogimagecard');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$oJKT80LVeJJf$sbbvFKAwU4S88qdXT1jAdnefBp0/F5xAQPWapRIfshM=','2021-02-17 19:56:57.471303',1,'kevin','','','kevin.vd.vleuten@gmail.com',1,1,'2021-01-17 16:01:24.095122');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogimagecard`
--

DROP TABLE IF EXISTS `blog_blogimagecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogimagecard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `entry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogimagecard_entry_id_0103c47d_fk_blog_entry_id` (`entry_id`),
  CONSTRAINT `blog_blogimagecard_entry_id_0103c47d_fk_blog_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `blog_entry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogimagecard`
--

LOCK TABLES `blog_blogimagecard` WRITE;
/*!40000 ALTER TABLE `blog_blogimagecard` DISABLE KEYS */;
INSERT INTO `blog_blogimagecard` VALUES (1,'Colour Maximite kit','Ready to solder the components.','blogs/2018-08-05 18:15:05+00:00/cards/IMG_6975.png',18),(2,'Colour Maximite','All components added.','blogs/2018-08-05 18:15:05+00:00/cards/IMG_6978.png',18),(3,'Colour Maximite','Powered on system on CRT monitor.','blogs/2018-08-05 18:15:05+00:00/cards/IMG_6982.png',18),(4,'New components','All new components.','blogs/2018-08-05 18:15:05+00:00/cards/20170802_230030.png',14),(5,'Case interiour','Inside of the casing.','blogs/2018-08-05 18:15:05+00:00/cards/20170803_234456.png',14);
/*!40000 ALTER TABLE `blog_blogimagecard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_entry`
--

DROP TABLE IF EXISTS `blog_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_entry`
--

LOCK TABLES `blog_entry` WRITE;
/*!40000 ALTER TABLE `blog_entry` DISABLE KEYS */;
INSERT INTO `blog_entry` VALUES (11,'Handy Python code','2016-06-09 17:35:42.000000','The more I learn about Python, the more I start to like it. So many list and string operations can be easily executed that sound logical to me. Like Go, it is influenced by C, a language I am accustomed to. Python has polymorphism, garbage collection and its design philosophy is to encourage readability. It is encouraged to omit accolades for function bodies, but not required.\r\nI have worked with Python before, but never truly committed myself to the language like Java, PHP, C, C# and C++. I am currently reading the O’Reilly book Learning Python 5th Edition, which really delves deep into Python’s functionalities. Though I have much more to learn about it, I look forward to work with Python.\r\nHere are some of those handy operations:\r\n\r\nFormatting:\r\n<code class=\"python\">\r\nmessage = \"\"\"\r\nWe are the %(name)s,\r\nWe are the %(num)s\r\n\"\"\"\r\nvalues = {\'name\': \'Nazgul\', \'num\': 9}\r\nprint(message % values)\r\n\r\n>>> We are the Nazgul,\r\n>>> We are the 9\r\n\r\n\'%x, %o, %s\' % (255,255,bin(255))\r\n>>> \'ff, 377, 0b11111111\'\r\n\r\ndata = dict(platform=sys.platform, kind=\'laptop\')\r\n\'My {kind:<8} runs {platform:>8}\'.format(**data)\r\n>>> \'My laptop runs win32\'\r\n\'My %(kind)-8s runs %(platform)8s\' % data\r\n>>> \'My laptop runs win32\'\r\n\r\n\r\n\'{0:,d}\'.format(999999999999)\r\n>>> \'999,999,999,999\'\r\n</code>\r\n\r\nFractions:\r\n<code class=\"python\">\r\nfrom fractions import Fraction\r\nF1 = Fraction.from_float(1.75)\r\n>>> Fraction (7, 4)\r\n\r\nF1 + Fraction(4, 5)\r\n>>> Fraction(51, 20)\r\n</code>\r\n\r\nSet operations: \r\n<code class=\"python\">\r\nstooges = {\'moe\', \'larry\', \'shemp\', \'joe\'}\r\nhowards = { \'moe\', \'shemp\', \'curly\'}\r\n\r\n# is moe a stooge?\r\n\'moe\' in stooges\r\n>>> True\r\n\r\n# Who are both stooge and howard?\r\nstooges & howards\r\n>>> {\'shemp\', \'moe\'}\r\n\r\n# all\r\nstooges | howards\r\n>>> {\'joe\', \'larry\', \'moe\', \'curly\', \'shemp\'}\r\n\r\n# stooges that are not howards\r\nstooges - howards\r\n>>> {\'joe\', \'larry\'}\r\n\r\n# Who is one, but not both?\r\nstooges ^ howards\r\n>>> {\'joe\', \'larry\', \'curly\'}\r\n\r\n# Are moe and joe stooges? (subset of)\r\n{\'moe\', \'joe\'} < stooges\r\n>>> True\r\n</code>\r\n\r\nLists:\r\n<code class=\"python\">\r\n# matrix definition\r\nmatrix = [\r\n[1, 2, 3],\r\n[4, 5, 6],\r\n[7, 8, 9]]\r\n\r\n# use a function across all list items\r\nlist(map(abs, [-1, -2, 0, 1, 2]))\r\n>>> [1, 2, 0 ,1 ,2]\r\n\r\n\r\nL = [1, 2, 3]\r\n\r\n# Replacement\r\nL[1:2] = [4, 5]\r\n>>> [1, 4, 5, 3]\r\n\r\n# Insert\r\nL[1:1] = [6, 7]\r\n>>> [1, 6, 7, 4, 5, 3]\r\n\r\n# Delete\r\nL[1:2] = []\r\n>>> [1, 7, 4, 5, 3]\r\n\r\n# Insert at beginning\r\nL[:0] = [0, 2]\r\n>>> [0, 2, 1, 7, 4, 5, 3]\r\n\r\n# Insert at end\r\nL[len(L):] = [8, 9]\r\n>>> [0, 2, 1, 7, 4, 5, 3, 8, 9]\r\n\r\n# Delete all except first\r\nL[1:] = []\r\n>>> [0]\r\n</code>'),(12,'DOS scripts','2016-05-14 17:43:24.000000','When writing .bat scripts for DOS and you want to run a command and do the following:\r\n<code class=\"bat\">\r\n@ECHO OFF\r\necho starting\r\nfoobar.exe x1dr74.cl2.908 /A /B /C /REBOOT\r\necho ending\r\n</code>\r\n\r\nIt would not work, so I changed it to this:\r\n<code class=\"bat\">\r\n@ECHO OFF\r\necho starting\r\nfoobar X1DR74~1.908 /A /B /C /REBOOT\r\necho ending\r\n</code>\r\n\r\nSo, when writing another DOS script in the future, always type the exact command over and not assume how things should be written. In BIOS change boot to USB disk and then run the .bat script from the prompt.\r\nAlso having fun with learning the Go language by Google. It reminds me a lot of C with its structs and pointers, but features garbage collection. So memory leaks become less of an issue with Go. It also supports concurrency.\r\nAnother handy little feature is initializing variables inside if-statements. You can also use these variables inside the following else if and else statements.\r\n<code class=\"bat\">\r\nif err := process(); err != nil {\r\nreturn err\r\n}\r\n</code>'),(13,'Customer from an API','2018-09-06 18:09:35.000000','Recently I have been working with an externally developed interface to a website. This website’s API would display customer data to be applied to the piece of hardware that they bought. The concept sounds simple enough, by letting the customer fill in their desired configuration, the supplier can deliver a product completely configured to that customer’s doorstep.\r\n\r\nBut there were several issues; \r\n\r\n<strong>1 – The API provided “JSON” data.</strong>\r\nNormally this is not an issue, right? Well, not in this case. All the provided data comes in a long list, with its keys separated by slashes.\r\n<code class=\"json\">\r\n{\r\n  \"controller1/management/ip\": \"192.168.1.123\",\r\n  \"controller1/management/subnet\": \"255.255.255.0\",\r\n  \"controller1/management/default_gateway\": \"192.168.1.1\",\r\n  \"controller1/management/connection_type\": \"AUTO\",\r\n  \"controller1/management/dns[0]/ip\": \"192.168.1.200\",\r\n  \"controller1/management/dns[1]/ip\": \"192.168.1.201\",\r\n  \"controller1/management/dns[2]/ip\": \"192.168.1.202\",\r\n  \"controller2/management/ip\": \"192.168.1.124\",\r\n  \"controller2/management/subnet\": \"255.255.255.0\",\r\n  \"controller2/management/default_gateway\": \"192.168.1.1\",\r\n  \"controller2/management/connection_type\": \"AUTO\",\r\n  \"controller2/management/dns[0]/ip\": \"192.168.1.204\",\r\n  \"controller2/management/dns[1]/ip\": \"192.168.1.205\",\r\n  \"controller2/management/dns[2]/ip\": \"192.168.1.206\",\r\n}\r\n</code>\r\n\r\nThis is technically still JSON, but its data could also have been nested:\r\n<code class=\"json\">\r\n{\r\n    \"controller\": [\r\n        {\r\n            \"management\": {\r\n                \"ip\": \"192.168.1.123\",\r\n                \"subnet\": \"255.255.255.0\",\r\n                \"default_gateway\": \"192.168.1.1\",\r\n                \"connection_type\": \"AUTO\",\r\n                \"dns\": [\r\n                    \"192.168.1.200\",\r\n                    \"192.168.1.201\",\r\n                    \"192.168.1.202\"\r\n                ]\r\n            }\r\n        },\r\n        {\r\n            \"management\": {\r\n                \"ip\": \"192.168.1.124\",\r\n                \"subnet\": \"255.255.255.0\",\r\n                \"default_gateway\": \"192.168.1.1\",\r\n                \"connection_type\": \"AUTO\",\r\n                \"dns\": [\r\n                    \"192.168.1.203\",\r\n                    \"192.168.1.204\",\r\n                    \"192.168.1.205\"\r\n                ]\r\n            }\r\n        }\r\n    ]\r\n}\r\n</code>\r\n\r\nSo, a converter had been written to parse the listed data into a proper JSON object.\r\n\r\n<strong>2 – None of the data was encrypted.</strong>\r\nAll the data sent over this API did occur over HTTPS, but the data itself was plain text. This meant that usernames and passwords were all transferred in plain text over the API. Even the password input fields on the front end are simple plain text, visible to all...\r\n\r\n<strong>3 – The data is not verified on the website.</strong>\r\nAll incoming data, is not being verified. If a certain IP address was invalid to be used on the product, it would cause an error in the automation software. The website did verify that the input is in an IPv4 format, but it did not care which IP address it was.\r\nPasswords exist as a single text input field, because the website did not have the ability to check if the values in two input field match. The input field does not even hide the input behind dots.'),(14,'New computer','2018-08-05 18:15:05.000000','I built my computer today;\r\n<table border=\"0\">\r\n<tr><td>Casing:</td><td><strong>Fracture Design Define R5</strong></td></tr>\r\n<tr><td>Motherboard:</td><td><strong>Asus Prime X370-Pro</strong></td></tr>\r\n<tr><td>Processor:</td><td><strong>AMD Ryzen 5 1600X</strong></td></tr>\r\n<tr><td>Water Cooler:</td><td><strong>NZXT Kraken X52</strong></td></tr>\r\n<tr><td>Graphics Card:</td><td><strong>ASUS ROG STRIX RX560 4G</strong></td></tr>\r\n<tr><td>Memory:</td><td><strong>2x Corsair Vengeance 8 gb</strong></td></tr>\r\n<tr><td>Primary Drive:</td><td><strong>Kingston 2.5” 512 gb SSDnow KC400</strong></td></tr>\r\n<tr><td>Secondary Drives: </td><td><strong>2x Seagate Barracuda 3.5” 4 tb ST4000DM005</strong></td></tr>\r\n<tr><td>Power Supply:</td><td><strong>Seasonic Prime 750W Platinum</strong></td></tr>\r\n</table>\r\n<br>\r\nAnd some simple USB powered speakers from Creative, model A50. \r\n<br><br>\r\nSo far it has been a real breeze to build, the only setback I had with the new hardware was that the board would not POST BOOT for some reason. I pulled the second memory module from the socket and tried again and that worked. Installed Ubuntu 17.04 as my current OS, making it also my first Linux system to use as my main machine. After installing Ubuntu and shutting down I placed the memory module back and the system booted fine since then.'),(15,'Recovering a git stash','2017-06-28 18:19:48.000000','Today I made a mistake in which I wanted to move code from one branch to another. I usually switch between many branches, so I first switched to my branch and did my usual git stash pop. Then I created a new branch off this branch and deleted the code that I thought did not belong on this branch. I committed that code and switched back to my original branch. This only resulted in the code being deleted, also no longer present on that branch since I stashed it.\r\n\r\nLuckily, if you still had the terminal open, you can see a hash near the stash that you popped. It would say something like: \r\n<code class=\"cli\">Dropped stash@{0} (9e3eb06). </code>\r\n\r\nYou can then do: \r\n<code class=\"cli\">git stash apply 9e3eb06</code> \r\n\r\nand still apply the code that was inside that stash to get it back.\r\n\r\nTo remove last commit(s) but keep changes\r\n\r\nSimply use: <code>git reset HEAD~1 --soft</code> to undo the un-pushed commits on your branch.'),(16,'Mandatory keyword parameters','2017-04-19 18:29:06.000000','A Python 3 feature is that you can enforce specific keywords. By adding a ‘*’ to indicate which keywords must be specifically specified.\r\n\r\n<code class=\"python\">\r\n>>> def print_fraction(message, *, numerator, denominator):\r\n...     print(\'{}, {}|{}\'.format(message, numerator, denominator))\r\n...\r\n>>> print_fraction(\'hello\', 3, 5)\r\nTraceback (most recent call last):\r\n  File \"<stdin>\", line 1, in <module>\r\nTypeError: print_fraction() takes 1 positional argument but 3 were given\r\n>>> print_fraction(\'hello\', numerator=3, denominator=5)\r\nhello, 3|5\r\n>>> print_fraction(\'hello\', denominator=5, numerator=3)\r\nhello, 3|5\r\n>>>\r\n</code>'),(17,'Rebasing with git and vim','2017-03-09 18:41:52.000000','As a student I always commited everything. A commit before switching branches, a commit at the end of my work day, and a commit when I wanted to merge. It inevitably results into a lot of “trash” commits, with pointless commit messages: “WIP”, “test”, “commit before merge”, “added X, still need to add Y tomorrow”.\r\n\r\nThen when I pushed my code up for a merge request on the git server, I would give my colleague the burden to solve any merge conflicts. Not only that, but I also sometimes accidently sent things that do not belong there like test code or commented out code. I usually discover this after pushing.\r\nSo, to solve this, I remove the merge request from the server and start doing a git rebase locally.\r\nThere are 2 steps to take, first I need to squash all my trash commits into 1 clean commit and then rebase into the branch where my original merge request was for.\r\n\r\nFirst use:\r\n<code class=\"cli\">$ git rebase –i HEAD~6</code>\r\nwith this I will rebase my last 6 git commits.\r\nOr, use: \r\n<code class=\"cli\">$ git rebase --interactive f1ab87078ea8b0ae81516b35ac92c33eba9fa0b9^</code>\r\nThe <strong>‘^’</strong> caret symbol at the end means to include the commit with that hash in the rebase.\r\nThen I get my commits listed inside vim. They are listed as following:\r\n<code class=\"cli\">pick id message</code>\r\nexample: \r\n<code class=\"cli\">pick 7d8a12b</code>\r\nadding new functionality.\r\nI used vim to replace the 2nd to 6th keyword “pick” into “squash” and leave the first keyword as “pick”. After <strong>:wq</strong>, I get to a second screen to create a new message. I removed all the lines and typed the message intended for my clean commit. After that all my pointless git commits are now gone and I have one clean commit left.\r\nThe second step is to get my code merged properly.\r\nFirst, pull the code from the branch I want to merge into.\r\nCheck the git ID that my HEAD currently points to, so I can always use something like:\r\n<code class=\"cli\">$ git reset --hard 7d8a </code>\r\nto get my original history back should I mess something up. \r\nI do this with: \r\n<code class=\"cli\">$ git log –max-count=5</code>\r\nto get the 5 last git commits.\r\nuse:\r\n<code class=\"cli\">$ git rebase develop</code>\r\nand then fix the merge conflicts coming up.\r\nThen I have to add the file again using: \r\n<code class=\"cli\">$ git add file_name</code> \r\nand use:\r\n<code class=\"cli\">$ git rebase --continue</code>\r\nuntil no more merge conflicts rise up. \r\nAfter all that is done, I make a final check. If something went wrong, I can still use $ git reset --hard <id> and start over with rebasing. If all went well, I can push back to the server and no longer have to feel stupid for polluting the server with trash commits and bother my colleagues with merge conflicts!\r\nIf you have git commits that are not next to each other, you can simply rearrange them. Let’s say you want <strong>df040fa4</strong> and <strong>3b14c395</strong> together in 1 commit.\r\n<code class=\"cli\">\r\npick df040fa4\r\npick 51a356a5\r\npick ec1a366f\r\npick 3b14c395\r\npick ad7650a7 \r\n</code>\r\nto\r\n<code class=\"cli\">\r\npick df040fa4\r\nsquash 3b14c395\r\npick 51a356a5\r\npick ec1a366f\r\npick ad7650a7 \r\n</code>'),(18,'Colour Maximite','2021-02-17 22:20:39.000000','The original <a href=\"https://geoffg.net/\" target=\"_blank\">Colour Maximite</a> is a PIC32 based computer that runs BASIC, created by Geoff Graham in 2012.\r\n\r\nIt runs MMBasic, its own version of the <a href=\"https://en.wikipedia.org/wiki/BASIC\" target=\"_blank\">Beginners\' All-purpose Symbolic Instruction Code</a>, a language I have not used since I was a child on the Commodore Amiga. The Colour Maximite provides a modern method to create new BASIC programs and control external hardware (lights, sensors) through its GPIO pins, as well as interpret instructions from <a href=\"https://en.wikipedia.org/wiki/MOD_(file_format)\" target=\"_blank\">MOD files</a> to synthesise music. Files can be saved and loaded on an SD card.\r\n\r\n<a href=\"https://geoffg.net/\" target=\"_blank\">https://geoffg.net/</a>');
/*!40000 ALTER TABLE `blog_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_entry_tags`
--

DROP TABLE IF EXISTS `blog_entry_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_entry_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_entry_tags_entry_id_tag_id_bea7dc18_uniq` (`entry_id`,`tag_id`),
  KEY `blog_entry_tags_tag_id_b0072fbd_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_entry_tags_entry_id_268214b7_fk_blog_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `blog_entry` (`id`),
  CONSTRAINT `blog_entry_tags_tag_id_b0072fbd_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_entry_tags`
--

LOCK TABLES `blog_entry_tags` WRITE;
/*!40000 ALTER TABLE `blog_entry_tags` DISABLE KEYS */;
INSERT INTO `blog_entry_tags` VALUES (21,11,1),(22,12,6),(23,13,7),(24,14,8),(25,15,9),(26,16,1),(27,17,9),(31,18,10);
/*!40000 ALTER TABLE `blog_entry_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (10,'BASIC'),(7,'Development experience'),(6,'DOS'),(9,'Git'),(8,'Personal life'),(1,'Python'),(5,'Spirituality');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-01-17 16:02:29.408403','1','My First Project',1,'[{\"added\": {}}]',11,1),(2,'2021-01-17 16:02:47.724760','1','programming language',1,'[{\"added\": {}}]',9,1),(3,'2021-01-17 16:02:57.623420','1','Python',1,'[{\"added\": {}}]',10,1),(4,'2021-01-17 16:03:06.096098','1','My First Project',2,'[{\"changed\": {\"fields\": [\"Technologies\"]}}]',11,1),(5,'2021-01-18 18:51:36.190438','1','My First Project',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(6,'2021-01-18 18:51:48.672844','1','My First Project',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(7,'2021-01-18 19:16:17.668381','1','My First Project',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(8,'2021-01-18 20:53:13.297156','1','Python',3,'',10,1),(9,'2021-01-18 20:53:35.061508','2','Git',1,'[{\"added\": {}}]',10,1),(10,'2021-01-18 20:53:55.059969','1','My First Project',2,'[{\"changed\": {\"fields\": [\"Subtitle\", \"Tools\"]}}]',11,1),(11,'2021-01-18 22:17:29.238007','3','Nginx',1,'[{\"added\": {}}]',10,1),(12,'2021-01-18 22:17:32.327344','1','My First Project',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(13,'2021-01-18 22:25:19.339535','1','My First Project',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(14,'2021-01-19 18:01:19.712774','4','PyCharm',1,'[{\"added\": {}}]',10,1),(15,'2021-01-19 18:01:29.925365','1','My First Project',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(16,'2021-01-19 19:50:38.632557','2','integrated development environment',1,'[{\"added\": {}}]',9,1),(17,'2021-01-19 19:50:51.866188','3','version control',1,'[{\"added\": {}}]',9,1),(18,'2021-01-19 19:50:57.373927','2','Git',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',10,1),(19,'2021-01-19 19:51:04.944854','4','PyCharm',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',10,1),(20,'2021-01-19 19:51:30.165738','4','web server engine',1,'[{\"added\": {}}]',9,1),(21,'2021-01-19 19:51:36.584474','3','Nginx',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',10,1),(22,'2021-01-19 19:51:46.083591','5','Python',1,'[{\"added\": {}}]',10,1),(23,'2021-01-19 19:51:56.129742','1','My First Project',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(24,'2021-01-19 21:25:32.792179','1','Quotee object (1)',1,'[{\"added\": {}}]',12,1),(25,'2021-01-19 21:26:38.823827','1','ill get you from A to B. Imagination will take you everywhere....',1,'[{\"added\": {}}]',13,1),(26,'2021-01-20 15:10:54.371475','2','Soichiro Honda',1,'[{\"added\": {}}]',12,1),(27,'2021-01-20 15:10:58.461183','2','Behind the succ...',1,'[{\"added\": {}}]',13,1),(28,'2021-01-20 15:12:35.359823','3','Takeo Fujisawa',1,'[{\"added\": {}}]',12,1),(29,'2021-01-20 15:12:38.639998','3','Tell customers ...',1,'[{\"added\": {}}]',13,1),(30,'2021-01-20 15:13:03.303807','4','The world will ...',1,'[{\"added\": {}}]',13,1),(31,'2021-01-20 15:13:25.855151','5','If you want you...',1,'[{\"added\": {}}]',13,1),(32,'2021-01-20 15:14:19.330877','4','Che Guevara',1,'[{\"added\": {}}]',12,1),(33,'2021-01-20 15:14:43.077721','6','If you tremble ...',1,'[{\"added\": {}}]',13,1),(34,'2021-01-20 15:15:08.645308','5','André Kuipers',1,'[{\"added\": {}}]',12,1),(35,'2021-01-20 15:15:11.534223','7','Als je een goei...',1,'[{\"added\": {}}]',13,1),(36,'2021-01-20 15:15:50.366870','8','De ruimtevaart ...',1,'[{\"added\": {}}]',13,1),(37,'2021-01-20 15:16:31.536333','9','Er zijn twee be...',1,'[{\"added\": {}}]',13,1),(38,'2021-01-20 15:16:57.527642','10','Live your life ...',1,'[{\"added\": {}}]',13,1),(39,'2021-01-20 15:27:05.001158','6','Benjamin Franklin',1,'[{\"added\": {}}]',12,1),(40,'2021-01-20 15:27:07.337081','11','By failing to p...',1,'[{\"added\": {}}]',13,1),(41,'2021-01-20 15:27:54.900191','7','Confucius',1,'[{\"added\": {}}]',12,1),(42,'2021-01-20 15:28:08.584353','12','What I hear, I ...',1,'[{\"added\": {}}]',13,1),(43,'2021-01-20 15:39:03.333498','8','John Cleese',1,'[{\"added\": {}}]',12,1),(44,'2021-01-20 15:42:08.382176','13','Nothing will st...',1,'[{\"added\": {}}]',13,1),(45,'2021-01-20 15:43:06.636323','14','Choose a job yo...',1,'[{\"added\": {}}]',13,1),(46,'2021-01-20 15:43:33.810967','15','Compound Intere...',1,'[{\"added\": {}}]',13,1),(47,'2021-01-20 20:58:24.892861','3','Nginx',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(48,'2021-01-20 21:13:54.536843','5','Python',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(49,'2021-01-20 21:13:59.807522','4','PyCharm',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(50,'2021-01-20 21:14:06.535637','2','Git',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(51,'2021-01-21 19:12:00.443245','1','My First Project',2,'[{\"changed\": {\"fields\": [\"Short name\"]}}]',11,1),(52,'2021-01-21 22:33:19.485721','5','Python',2,'[{\"changed\": {\"fields\": [\"Link\"]}}]',10,1),(53,'2021-01-21 22:36:53.556061','3','Nginx',2,'[{\"changed\": {\"fields\": [\"Link\"]}}]',10,1),(54,'2021-01-22 19:07:30.213180','1','aoeuao',1,'[{\"added\": {}}]',14,1),(55,'2021-01-22 19:07:59.079691','2','uduidui',1,'[{\"added\": {}}]',14,1),(56,'2021-01-22 19:18:25.217592','1','aoeuao',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',14,1),(57,'2021-01-22 19:18:31.828673','2','uduidui',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',14,1),(58,'2021-01-22 19:19:42.445606','2','uduidui',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',14,1),(59,'2021-01-22 19:19:47.222135','1','aoeuao',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',14,1),(60,'2021-01-22 20:10:42.234762','3','Beautiful Title',1,'[{\"added\": {}}]',14,1),(61,'2021-01-22 20:12:23.464476','1','firstproject',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(62,'2021-01-22 20:13:46.767524','1','firstproject',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(63,'2021-01-23 09:13:31.356147','5','Python',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(64,'2021-01-23 09:15:12.220721','5','Python',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(65,'2021-01-23 09:20:20.380807','5','Python',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(66,'2021-01-23 09:20:26.011666','5','Python',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(67,'2021-01-23 09:35:01.755926','4','PyCharm',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(68,'2021-01-23 09:35:07.641091','3','Nginx',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(69,'2021-01-23 09:35:12.310216','2','Git',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(70,'2021-01-23 09:54:47.566318','4','PyCharm',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(71,'2021-01-23 09:54:54.764481','2','Git',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(72,'2021-01-23 09:55:40.531626','2','Git',2,'[{\"changed\": {\"fields\": [\"Link\"]}}]',10,1),(73,'2021-01-23 09:55:54.309090','4','PyCharm',2,'[{\"changed\": {\"fields\": [\"Link\"]}}]',10,1),(74,'2021-01-23 12:23:09.465296','1','Tag object (1)',1,'[{\"added\": {}}]',16,1),(75,'2021-01-23 12:23:23.210389','1','Wonderful day',1,'[{\"added\": {}}]',15,1),(76,'2021-01-23 12:26:14.484701','2','Adeptus',1,'[{\"added\": {}}]',16,1),(77,'2021-01-23 12:28:31.613101','2','Another day',1,'[{\"added\": {}}]',15,1),(78,'2021-01-23 13:54:48.606575','4','Another day',1,'[{\"added\": {}}]',14,1),(79,'2021-01-23 14:11:18.327759','6','C#',1,'[{\"added\": {}}]',10,1),(80,'2021-01-25 19:11:46.162837','3','Beautiful Title',2,'[{\"changed\": {\"fields\": [\"Feature Project Card\"]}}]',14,1),(81,'2021-01-25 19:35:25.205503','3','Tetsto',1,'[{\"added\": {}}]',15,1),(82,'2021-01-25 20:57:57.251042','9','Sadhguru',1,'[{\"added\": {}}]',12,1),(83,'2021-01-25 20:58:04.698542','16','Once you have n...',1,'[{\"added\": {}}]',13,1),(84,'2021-01-25 20:59:15.885191','10','Paul Sellers',1,'[{\"added\": {}}]',12,1),(85,'2021-01-25 20:59:17.225095','17','No one ever men...',1,'[{\"added\": {}}]',13,1),(86,'2021-01-25 21:00:17.944628','18','If human beings...',1,'[{\"added\": {}}]',13,1),(87,'2021-01-25 21:00:42.082664','19','It is not what ...',1,'[{\"added\": {}}]',13,1),(88,'2021-01-25 21:01:10.147677','20','This is such a ...',1,'[{\"added\": {}}]',13,1),(89,'2021-01-25 21:01:40.540930','21','Nature has give...',1,'[{\"added\": {}}]',13,1),(90,'2021-01-25 21:02:34.845335','22','An instruction ...',1,'[{\"added\": {}}]',13,1),(91,'2021-01-25 21:03:02.486419','23','Once your mind ...',1,'[{\"added\": {}}]',13,1),(92,'2021-01-25 21:03:18.359243','24','Confidence can ...',1,'[{\"added\": {}}]',13,1),(93,'2021-01-25 21:04:27.031979','11','Fidel Castro',1,'[{\"added\": {}}]',12,1),(94,'2021-01-25 21:04:28.152522','25','I find capitali...',1,'[{\"added\": {}}]',13,1),(95,'2021-01-25 21:05:35.130778','12','Toon Hermans',1,'[{\"added\": {}}]',12,1),(96,'2021-01-25 21:05:40.476827','26','Een kenmerk van...',1,'[{\"added\": {}}]',13,1),(97,'2021-01-26 18:22:57.577251','3','Tetsto',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',15,1),(98,'2021-01-26 18:57:16.005625','3','Work experience',1,'[{\"added\": {}}]',16,1),(99,'2021-01-26 18:57:20.833970','4','Test',1,'[{\"added\": {}}]',16,1),(100,'2021-01-26 18:57:41.283989','5','Spirituality',1,'[{\"added\": {}}]',16,1),(101,'2021-01-26 18:58:55.838219','4','Test me too',1,'[{\"added\": {}}]',15,1),(102,'2021-01-26 18:59:08.469283','5','aoeaoeaoeaoe',1,'[{\"added\": {}}]',15,1),(103,'2021-01-26 18:59:20.553037','6','Test test test',1,'[{\"added\": {}}]',15,1),(104,'2021-01-26 18:59:36.941898','7','Wonders are happening!',1,'[{\"added\": {}}]',15,1),(105,'2021-01-26 19:00:53.838444','8','Yoga to live',1,'[{\"added\": {}}]',15,1),(106,'2021-01-26 19:01:07.689967','9','What is Life?',1,'[{\"added\": {}}]',15,1),(107,'2021-01-26 21:07:46.857667','10','Hello Worrs',1,'[{\"added\": {}}]',15,1),(108,'2021-01-31 20:17:10.836060','2','teslamaze',1,'[{\"added\": {}}]',11,1),(109,'2021-01-31 20:19:09.926285','3','internetradio',1,'[{\"added\": {}}]',11,1),(111,'2021-01-31 20:21:41.803004','4','wifiprototype',1,'[{\"added\": {}}]',11,1),(112,'2021-01-31 20:23:07.605170','5','embeddedradio',1,'[{\"added\": {}}]',11,1),(113,'2021-01-31 20:25:16.924079','6','winCookbook',1,'[{\"added\": {}}]',11,1),(114,'2021-01-31 20:25:24.232727','5','embeddedRadio',2,'[{\"changed\": {\"fields\": [\"Short name\"]}}]',11,1),(115,'2021-01-31 20:25:29.943077','4','wifiPrototype',2,'[{\"changed\": {\"fields\": [\"Short name\"]}}]',11,1),(116,'2021-01-31 20:25:42.553799','3','rpiInternetRadio',2,'[{\"changed\": {\"fields\": [\"Short name\"]}}]',11,1),(117,'2021-01-31 20:26:54.279001','7','myKanji',1,'[{\"added\": {}}]',11,1),(118,'2021-01-31 20:28:31.469753','8','iosAirports',1,'[{\"added\": {}}]',11,1),(119,'2021-01-31 20:29:59.493772','9','simfestTycoon',1,'[{\"added\": {}}]',11,1),(120,'2021-01-31 20:31:33.503288','10','swivforpi',1,'[{\"added\": {}}]',11,1),(121,'2021-01-31 20:34:10.222881','11','metroidSideScroller',1,'[{\"added\": {}}]',11,1),(122,'2021-01-31 21:34:38.926818','12','boebot',1,'[{\"added\": {}}]',11,1),(123,'2021-01-31 21:45:24.903993','13','Satoru Iwata',1,'[{\"added\": {}}]',12,1),(124,'2021-01-31 21:45:26.313806','27','In our business...',1,'[{\"added\": {}}]',13,1),(125,'2021-01-31 21:46:14.565189','28','Two things are ...',1,'[{\"added\": {}}]',13,1),(126,'2021-01-31 21:47:12.112665','14','Shigeru Miyamoto',1,'[{\"added\": {}}]',12,1),(127,'2021-01-31 21:47:19.219795','29','It isn\'t about ...',1,'[{\"added\": {}}]',13,1),(128,'2021-01-31 21:48:03.946698','30','Ability will ne...',1,'[{\"added\": {}}]',13,1),(129,'2021-01-31 21:48:53.237768','31','On my business ...',1,'[{\"added\": {}}]',13,1),(130,'2021-01-31 21:49:51.377778','15','Alexander Graham Bell',1,'[{\"added\": {}}]',12,1),(131,'2021-01-31 21:49:58.289850','32','Concentrate all...',1,'[{\"added\": {}}]',13,1),(132,'2021-01-31 21:50:56.097067','16','Nikola Tesla',1,'[{\"added\": {}}]',12,1),(133,'2021-01-31 21:51:03.982762','33','Our virtues and...',1,'[{\"added\": {}}]',13,1),(134,'2021-01-31 21:51:55.382331','17','Richard Stallman',1,'[{\"added\": {}}]',12,1),(135,'2021-01-31 21:51:58.695648','34','The idea of cop...',1,'[{\"added\": {}}]',13,1),(136,'2021-01-31 21:55:39.726686','18','Eric Barone',1,'[{\"added\": {}}]',12,1),(137,'2021-01-31 21:55:44.847454','35','You should be f...',1,'[{\"added\": {}}]',13,1),(138,'2021-01-31 21:56:37.553304','36','The present is ...',1,'[{\"added\": {}}]',13,1),(139,'2021-02-01 17:43:36.970503','5','Disassemble',1,'[{\"added\": {}}]',14,1),(140,'2021-02-01 17:43:43.125751','5','Disassemble',2,'[{\"changed\": {\"fields\": [\"Feature Project Card\"]}}]',14,1),(141,'2021-02-01 17:43:51.974910','5','Disassemble',2,'[{\"changed\": {\"fields\": [\"Feature Project Card\"]}}]',14,1),(142,'2021-02-01 17:47:37.641569','6','Old jukebox',1,'[{\"added\": {}}]',14,1),(143,'2021-02-01 17:55:07.388522','7','LEDs',1,'[{\"added\": {}}]',14,1),(144,'2021-02-01 17:56:45.031589','8','RPi jukebox',1,'[{\"added\": {}}]',14,1),(145,'2021-02-01 17:59:35.019808','8','Lights',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(146,'2021-02-01 18:02:43.505470','9','Logo',1,'[{\"added\": {}}]',14,1),(147,'2021-02-01 18:03:49.512920','10','GUI',1,'[{\"added\": {}}]',14,1),(148,'2021-02-01 18:04:19.738995','11','Laptop',1,'[{\"added\": {}}]',14,1),(149,'2021-02-01 18:05:03.670813','12','Phone & tablet',1,'[{\"added\": {}}]',14,1),(150,'2021-02-01 18:06:18.268466','4','Another day',3,'',14,1),(151,'2021-02-01 18:06:22.421336','2','uduidui',3,'',14,1),(152,'2021-02-01 18:06:26.760771','3','Beautiful Title',3,'',14,1),(153,'2021-02-01 18:06:30.200679','1','aoeuao',3,'',14,1),(154,'2021-02-01 18:32:50.255984','13','Spiraalrail',1,'[{\"added\": {}}]',14,1),(155,'2021-02-01 18:33:20.979773','14','Banen',1,'[{\"added\": {}}]',14,1),(156,'2021-02-01 18:35:12.186558','15','Gameplay',1,'[{\"added\": {}}]',14,1),(157,'2021-02-01 18:35:27.688103','15','Gameplay',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',14,1),(158,'2021-02-01 18:36:15.217549','16','Toren',1,'[{\"added\": {}}]',14,1),(159,'2021-02-01 18:37:14.540814','17','Screenshot',1,'[{\"added\": {}}]',14,1),(160,'2021-02-01 18:38:08.637632','18','Logo',1,'[{\"added\": {}}]',14,1),(161,'2021-02-01 18:40:36.962027','19','Voortgang',1,'[{\"added\": {}}]',14,1),(162,'2021-02-01 18:41:17.803254','20','Render',1,'[{\"added\": {}}]',14,1),(163,'2021-02-01 18:42:01.763140','21','TeslaMaze',1,'[{\"added\": {}}]',14,1),(164,'2021-02-01 18:42:10.327118','21','TeslaMaze',2,'[]',14,1),(165,'2021-02-01 18:44:46.042288','8','Lights',2,'[{\"changed\": {\"fields\": [\"Feature Project Card\"]}}]',14,1),(166,'2021-02-01 18:44:52.807795','8','Lights',2,'[{\"changed\": {\"fields\": [\"Feature Project Card\"]}}]',14,1),(167,'2021-02-01 18:45:07.832411','21','TeslaMaze',2,'[]',14,1),(168,'2021-02-01 18:47:35.139707','21','TeslaMaze',2,'[{\"changed\": {\"fields\": [\"Project\"]}}]',14,1),(169,'2021-02-01 18:47:47.277516','21','TeslaMaze',2,'[{\"changed\": {\"fields\": [\"Project\"]}}]',14,1),(170,'2021-02-01 18:47:57.449176','21','TeslaMaze',2,'[{\"changed\": {\"fields\": [\"Project\"]}}]',14,1),(171,'2021-02-01 18:54:07.458324','13','Spiraalrail',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(172,'2021-02-01 18:55:14.488140','22','StreamIt radio',1,'[{\"added\": {}}]',14,1),(173,'2021-02-01 19:08:54.789114','23','Wi-Fi board',1,'[{\"added\": {}}]',14,1),(174,'2021-02-01 19:09:57.315780','24','Meetopstelling',1,'[{\"added\": {}}]',14,1),(175,'2021-02-01 19:10:46.948884','25','Oscilloscoop',1,'[{\"added\": {}}]',14,1),(176,'2021-02-01 19:11:38.570803','26','Inprogrammeren',1,'[{\"added\": {}}]',14,1),(177,'2021-02-01 19:14:32.355297','27','Titlescherm',1,'[{\"added\": {}}]',14,1),(178,'2021-02-01 19:15:07.088312','28','Gameplay',1,'[{\"added\": {}}]',14,1),(179,'2021-02-01 19:15:11.170248','27','Titlescherm',2,'[{\"changed\": {\"fields\": [\"Feature Project Card\"]}}]',14,1),(180,'2021-02-01 19:17:41.768493','29','Breadboard',1,'[{\"added\": {}}]',14,1),(181,'2021-02-01 19:18:30.764062','30','Breadboard',1,'[{\"added\": {}}]',14,1),(182,'2021-02-01 19:21:48.805728','31','Oscilloscoop',1,'[{\"added\": {}}]',14,1),(183,'2021-02-01 19:23:15.149574','1','firstproject',3,'',11,1),(184,'2021-02-01 19:24:37.457531','32','Klassendiagram',1,'[{\"added\": {}}]',14,1),(185,'2021-02-01 19:26:00.099205','33','BoeBot',1,'[{\"added\": {}}]',14,1),(186,'2021-02-01 19:26:42.480109','34','BoeBot',1,'[{\"added\": {}}]',14,1),(187,'2021-02-01 19:27:20.168728','35','GUI',1,'[{\"added\": {}}]',14,1),(188,'2021-02-01 19:29:25.579412','36','Javelin CPU',1,'[{\"added\": {}}]',14,1),(189,'2021-02-01 19:37:47.597864','4','wifiPrototype',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(190,'2021-02-01 19:41:38.405013','37','Gameplay',1,'[{\"added\": {}}]',14,1),(191,'2021-02-01 19:42:10.828448','38','Gameplay',1,'[{\"added\": {}}]',14,1),(192,'2021-02-01 19:42:54.567800','39','Gameplay',1,'[{\"added\": {}}]',14,1),(193,'2021-02-01 19:43:28.805398','40','Gameplay',1,'[{\"added\": {}}]',14,1),(194,'2021-02-01 19:43:49.799294','41','Gameplay',1,'[{\"added\": {}}]',14,1),(195,'2021-02-01 19:44:48.097273','22','StreamIT radio',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(196,'2021-02-01 19:45:15.514665','42','Logo',1,'[{\"added\": {}}]',14,1),(197,'2021-02-01 19:46:26.903927','43','Scherm',1,'[{\"added\": {}}]',14,1),(198,'2021-02-01 19:46:47.588493','44','Scherm',1,'[{\"added\": {}}]',14,1),(199,'2021-02-01 19:47:12.155332','45','Scherm',1,'[{\"added\": {}}]',14,1),(200,'2021-02-01 19:48:01.814052','46','Binnenkant',1,'[{\"added\": {}}]',14,1),(201,'2021-02-01 19:49:21.061012','47','Landenselectie',1,'[{\"added\": {}}]',14,1),(202,'2021-02-01 19:50:15.438815','48','Scherm',1,'[{\"added\": {}}]',14,1),(203,'2021-02-01 19:51:09.353545','49','Scherm',1,'[{\"added\": {}}]',14,1),(204,'2021-02-01 19:51:28.347831','50','Scherm',1,'[{\"added\": {}}]',14,1),(205,'2021-02-01 19:52:01.594694','51','Scherm',1,'[{\"added\": {}}]',14,1),(206,'2021-02-01 19:52:32.723599','52','Scherm',1,'[{\"added\": {}}]',14,1),(207,'2021-02-01 19:52:56.158384','53','Scherm',1,'[{\"added\": {}}]',14,1),(208,'2021-02-01 19:53:14.398327','54','Scherm',1,'[{\"added\": {}}]',14,1),(209,'2021-02-01 19:53:38.975359','55','Scherm',1,'[{\"added\": {}}]',14,1),(210,'2021-02-01 19:55:04.178083','55','Screen',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',14,1),(211,'2021-02-01 19:55:22.685257','54','Screen',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',14,1),(212,'2021-02-01 19:55:35.245056','53','Screen',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(213,'2021-02-01 19:55:40.181087','52','Screen',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',14,1),(214,'2021-02-01 19:55:44.094281','51','Screen',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',14,1),(215,'2021-02-01 19:55:48.420288','50','Screen',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',14,1),(216,'2021-02-01 19:55:53.186885','49','Screen',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',14,1),(217,'2021-02-01 19:55:56.812775','48','Screen',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',14,1),(218,'2021-02-01 19:56:18.517621','47','Country selection',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(219,'2021-02-01 19:56:41.055398','46','Insides',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(220,'2021-02-01 19:56:52.601163','45','Screen',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(221,'2021-02-01 19:57:00.665596','44','Screen',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(222,'2021-02-01 19:57:09.391433','43','Screen',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(223,'2021-02-01 19:57:21.281475','41','Gameplay',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(224,'2021-02-01 19:57:25.464365','40','Gameplay',2,'[]',14,1),(225,'2021-02-01 19:57:28.081657','39','Gameplay',2,'[]',14,1),(226,'2021-02-01 19:57:32.159198','36','Javelin CPU',2,'[]',14,1),(227,'2021-02-01 19:57:35.417830','34','BoeBot',2,'[]',14,1),(228,'2021-02-01 19:57:52.717961','32','Class diagram',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(229,'2021-02-01 19:58:14.018012','30','Breadboard',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(230,'2021-02-01 19:58:39.227762','29','Breadboard',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(231,'2021-02-01 19:58:46.551964','30','Breadboard',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(232,'2021-02-01 19:59:51.197320','13','Spiral rail',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(233,'2021-02-01 20:00:22.751788','14','Rails',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(234,'2021-02-01 20:00:35.918037','15','Gameplay',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(235,'2021-02-01 20:00:48.786331','16','Tower',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(236,'2021-02-01 20:00:59.126728','17','Screenshot',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(237,'2021-02-01 20:01:20.587300','18','Logo',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(238,'2021-02-01 20:01:40.210556','19','Progress',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(239,'2021-02-01 20:01:58.576543','20','Render',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(240,'2021-02-01 20:02:18.546504','21','TeslaMaze',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(241,'2021-02-01 20:02:27.835994','22','StreamIT radio',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(242,'2021-02-01 20:02:43.996882','23','Wi-Fi board',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(243,'2021-02-01 20:03:01.970306','24','Measuring',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(244,'2021-02-01 20:03:23.965610','25','Oscilloscoop',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(245,'2021-02-01 20:03:49.045501','26','Firmware',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(246,'2021-02-01 20:04:08.665964','27','Title screen',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]',14,1),(247,'2021-02-01 20:04:32.123841','28','Gameplay',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(248,'2021-02-01 20:05:06.779969','31','Oscilloscoop',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(249,'2021-02-01 20:05:24.652645','35','GUI',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(250,'2021-02-01 20:06:15.045750','37','Gameplay',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(251,'2021-02-01 20:06:22.004120','38','Gameplay',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(252,'2021-02-01 20:06:25.650100','39','Gameplay',2,'[]',14,1),(253,'2021-02-01 20:06:43.565689','42','Logo',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',14,1),(254,'2021-02-01 20:17:38.048361','10','swivforpi',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(255,'2021-02-01 20:17:50.359966','6','winCookbook',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(256,'2021-02-03 17:24:17.660503','5','Framework',1,'[{\"added\": {}}]',9,1),(257,'2021-02-03 17:25:21.568162','7','Flask',1,'[{\"added\": {}}]',10,1),(258,'2021-02-03 17:28:41.029664','6','Operating system',1,'[{\"added\": {}}]',9,1),(259,'2021-02-03 17:29:11.227436','8','Ubuntu',1,'[{\"added\": {}}]',10,1),(260,'2021-02-03 17:29:36.907775','9','Android',1,'[{\"added\": {}}]',10,1),(261,'2021-02-03 17:31:50.317578','10','Xcode',1,'[{\"added\": {}}]',10,1),(262,'2021-02-03 17:34:56.043958','7','Hardware',1,'[{\"added\": {}}]',9,1),(263,'2021-02-03 17:35:07.882832','11','Arduino',1,'[{\"added\": {}}]',10,1),(264,'2021-02-03 17:35:30.632940','12','Raspberry Pi',1,'[{\"added\": {}}]',10,1),(265,'2021-02-03 17:35:39.527474','8','iosAirports',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(266,'2021-02-03 17:35:48.916189','7','myKanji',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(267,'2021-02-03 17:35:57.707368','10','swivforpi',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(268,'2021-02-03 17:36:15.387857','2','teslamaze',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(269,'2021-02-03 17:36:20.314234','7','myKanji',2,'[]',11,1),(270,'2021-02-03 17:36:25.750353','10','swivforpi',2,'[]',11,1),(271,'2021-02-03 17:37:31.473135','3','rpiInternetRadio',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(272,'2021-02-03 17:41:13.317753','13','Java',1,'[{\"added\": {}}]',10,1),(273,'2021-02-03 17:41:26.271629','12','boebot',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(274,'2021-02-03 17:41:31.606123','11','metroidSideScroller',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(275,'2021-02-03 17:41:38.032336','10','swivforpi',2,'[]',11,1),(276,'2021-02-03 17:41:43.552840','3','rpiInternetRadio',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(277,'2021-02-03 17:41:53.498680','10','swivforpi',2,'[]',11,1),(278,'2021-02-03 17:42:00.027623','9','simfestTycoon',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(279,'2021-02-03 17:42:07.857126','7','myKanji',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(280,'2021-02-03 17:45:28.644515','14','C',1,'[{\"added\": {}}]',10,1),(281,'2021-02-03 17:45:38.106465','5','embeddedRadio',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(282,'2021-02-03 17:45:43.729960','4','wifiPrototype',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(283,'2021-02-03 17:45:54.754845','6','winCookbook',2,'[]',11,1),(284,'2021-02-03 17:50:55.597277','15','Windows 10',1,'[{\"added\": {}}]',10,1),(285,'2021-02-03 17:51:39.190687','16','Apple iOS',1,'[{\"added\": {}}]',10,1),(286,'2021-02-03 17:51:50.073246','8','iosAirports',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(287,'2021-02-03 17:51:57.390094','6','winCookbook',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(288,'2021-02-03 17:52:00.720879','5','embeddedRadio',2,'[]',11,1),(289,'2021-02-03 17:55:37.965030','17','Swift',1,'[{\"added\": {}}]',10,1),(290,'2021-02-03 17:56:14.433011','8','iosAirports',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(291,'2021-02-03 17:58:05.099281','14','C',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',10,1),(292,'2021-02-03 17:58:44.310253','3','rpiInternetRadio',2,'[{\"changed\": {\"fields\": [\"Tools\"]}}]',11,1),(293,'2021-02-03 20:28:04.640689','7','myKanji',2,'[]',11,1),(294,'2021-02-05 22:18:24.360551','19','Eleanor Roosevelt',1,'[{\"added\": {}}]',12,1),(295,'2021-02-05 22:18:27.696950','37','Yesterday is hi...',1,'[{\"added\": {}}]',13,1),(296,'2021-02-05 22:20:11.420251','20','Laozi',1,'[{\"added\": {}}]',12,1),(297,'2021-02-05 22:20:18.853379','38','A good traveler...',1,'[{\"added\": {}}]',13,1),(298,'2021-02-05 22:21:57.760804','21','Jean-Jacques Rousseau',1,'[{\"added\": {}}]',12,1),(299,'2021-02-05 22:22:00.185094','39','People who know...',1,'[{\"added\": {}}]',13,1),(300,'2021-02-05 22:23:10.244086','22','Swahili proverb',1,'[{\"added\": {}}]',12,1),(301,'2021-02-05 22:23:15.180706','40','Umoja ni nguvu ...',1,'[{\"added\": {}}]',13,1),(302,'2021-02-05 22:24:28.376846','41','Why do some peo...',1,'[{\"added\": {}}]',13,1),(303,'2021-02-05 22:25:34.579588','23','Kwame Nkrumah',1,'[{\"added\": {}}]',12,1),(304,'2021-02-05 22:25:39.380716','42','Freedom is not ...',1,'[{\"added\": {}}]',13,1),(305,'2021-02-05 22:26:57.118360','24','Muammar al-Gaddafi',1,'[{\"added\": {}}]',12,1),(306,'2021-02-05 22:27:23.402216','43','They will creat...',1,'[{\"added\": {}}]',13,1),(307,'2021-02-05 22:28:16.929360','44','I began revolut...',1,'[{\"added\": {}}]',13,1),(308,'2021-02-05 22:30:14.779464','25','Mehmet Murat Ildan',1,'[{\"added\": {}}]',12,1),(309,'2021-02-05 22:30:25.208223','45','The self-confid...',1,'[{\"added\": {}}]',13,1),(310,'2021-02-05 22:31:33.952826','26','John Donne',1,'[{\"added\": {}}]',12,1),(311,'2021-02-05 22:31:37.967564','46','No man is an Is...',1,'[{\"added\": {}}]',13,1),(312,'2021-02-05 22:39:57.336753','56','LCD flowchart',1,'[{\"added\": {}}]',14,1),(313,'2021-02-05 22:41:42.825924','5','embeddedRadio',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',11,1),(314,'2021-02-10 17:26:03.958026','4','Test',3,'',16,1),(315,'2021-02-10 17:26:03.965496','3','Work experience',3,'',16,1),(316,'2021-02-10 17:26:03.969755','2','Adeptus',3,'',16,1),(317,'2021-02-10 17:26:14.505341','10','Hello Worrs',3,'',15,1),(318,'2021-02-10 17:26:14.513261','9','What is Life?',3,'',15,1),(319,'2021-02-10 17:26:14.519467','8','Yoga to live',3,'',15,1),(320,'2021-02-10 17:26:14.525542','7','Wonders are happening!',3,'',15,1),(321,'2021-02-10 17:26:14.532030','6','Test test test',3,'',15,1),(322,'2021-02-10 17:26:14.538139','5','aoeaoeaoeaoe',3,'',15,1),(323,'2021-02-10 17:26:14.544083','4','Test me too',3,'',15,1),(324,'2021-02-10 17:26:14.550286','3','Tetsto',3,'',15,1),(325,'2021-02-10 17:26:14.556492','2','Another day',3,'',15,1),(326,'2021-02-10 17:26:14.562758','1','Wonderful day',3,'',15,1),(327,'2021-02-10 17:37:09.619120','11','Handy Python code',1,'[{\"added\": {}}]',15,1),(328,'2021-02-10 17:37:53.342389','11','Handy Python code',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(329,'2021-02-10 17:43:55.920125','6','DOS',1,'[{\"added\": {}}]',16,1),(330,'2021-02-10 17:44:02.142261','12','DOS scripts',1,'[{\"added\": {}}]',15,1),(331,'2021-02-10 18:09:19.882947','7','Development experience',1,'[{\"added\": {}}]',16,1),(332,'2021-02-10 18:10:51.858311','13','Cutting corners',1,'[{\"added\": {}}]',15,1),(333,'2021-02-10 18:11:30.428889','13','Cutting corners',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(334,'2021-02-10 18:17:00.924546','8','Personal life',1,'[{\"added\": {}}]',16,1),(335,'2021-02-10 18:17:02.538627','14','New computer',1,'[{\"added\": {}}]',15,1),(336,'2021-02-10 18:18:32.116789','13','Cutting corners',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(337,'2021-02-10 18:19:20.571952','9','Git',1,'[{\"added\": {}}]',16,1),(338,'2021-02-10 18:27:42.728620','15','Recovering a git stash',1,'[{\"added\": {}}]',15,1),(339,'2021-02-10 18:30:10.686965','16','Mandatory keyword parameters',1,'[{\"added\": {}}]',15,1),(340,'2021-02-10 18:31:19.678074','16','Mandatory keyword parameters',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(341,'2021-02-10 18:31:52.352007','15','Recovering a git stash',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(342,'2021-02-10 18:31:59.687890','14','New computer',2,'[]',15,1),(343,'2021-02-10 18:32:24.975385','13','Cutting corners',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(344,'2021-02-10 18:32:50.297840','12','DOS scripts',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(345,'2021-02-10 18:33:38.788049','11','Handy Python code',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(346,'2021-02-10 18:46:33.996335','17','Rebasing with git and vim',1,'[{\"added\": {}}]',15,1),(347,'2021-02-10 22:06:34.321967','12','DOS scripts',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',15,1),(348,'2021-02-10 22:06:44.484822','13','Cutting corners',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',15,1),(349,'2021-02-10 22:07:05.910917','12','DOS scripts',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',15,1),(350,'2021-02-10 22:07:21.132168','13','Cutting corners',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',15,1),(351,'2021-02-13 10:48:29.569335','27','Octavio Paz',1,'[{\"added\": {}}]',12,1),(352,'2021-02-13 10:48:32.238144','47','What sets world...',1,'[{\"added\": {}}]',13,1),(353,'2021-02-13 10:48:38.868846','47','What sets world...',2,'[{\"changed\": {\"fields\": [\"Phrase\"]}}]',13,1),(354,'2021-02-17 19:57:41.792489','10','BASIC',1,'[{\"added\": {}}]',16,1),(355,'2021-02-17 22:10:25.804890','1','Colour Maximite kit',1,'[{\"added\": {}}]',17,1),(356,'2021-02-17 22:10:58.448201','2','Colour Maximite',1,'[{\"added\": {}}]',17,1),(357,'2021-02-17 22:12:15.178642','3','Colour Maximite',1,'[{\"added\": {}}]',17,1),(358,'2021-02-17 22:40:49.197391','18','Colour Maximite',1,'[{\"added\": {}}]',15,1),(359,'2021-02-17 22:40:57.123299','3','Colour Maximite',2,'[{\"changed\": {\"fields\": [\"Entry\"]}}]',17,1),(360,'2021-02-17 22:41:00.995694','2','Colour Maximite',2,'[{\"changed\": {\"fields\": [\"Entry\"]}}]',17,1),(361,'2021-02-17 22:41:04.059303','1','Colour Maximite kit',2,'[{\"changed\": {\"fields\": [\"Entry\"]}}]',17,1),(362,'2021-02-17 22:41:51.726479','3','Colour Maximite',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',17,1),(363,'2021-02-17 22:41:55.891776','2','Colour Maximite',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',17,1),(364,'2021-02-17 22:41:59.877303','1','Colour Maximite kit',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',17,1),(365,'2021-02-17 22:51:56.021661','4','New components',1,'[{\"added\": {}}]',17,1),(366,'2021-02-17 22:52:25.612748','5','Case interiour',1,'[{\"added\": {}}]',17,1),(367,'2021-02-17 22:54:53.056056','14','New computer',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(368,'2021-02-17 22:55:05.589877','14','New computer',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(369,'2021-02-17 22:55:20.271934','14','New computer',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(370,'2021-02-17 22:55:35.066621','14','New computer',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(371,'2021-02-17 22:56:04.451479','14','New computer',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(372,'2021-02-17 22:56:33.270022','14','New computer',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(373,'2021-02-17 22:56:41.845984','14','New computer',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(374,'2021-02-18 16:39:47.241797','28','Christopher Lee',1,'[{\"added\": {}}]',12,1),(375,'2021-02-18 16:44:16.508406','48','Every actor has...',1,'[{\"added\": {}}]',13,1),(376,'2021-02-18 16:45:04.061785','49','We don’t always...',1,'[{\"added\": {}}]',13,1),(377,'2021-02-18 16:46:04.847626','50','I haven\'t spent...',1,'[{\"added\": {}}]',13,1),(378,'2021-02-18 16:50:16.183976','18','Colour Maximite',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(379,'2021-02-18 20:40:54.530265','18','Colour Maximite',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',15,1),(380,'2021-02-18 20:49:28.923881','18','Colour Maximite',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',15,1),(381,'2021-02-19 19:18:53.094273','18','Colour Maximite',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',15,1),(382,'2021-02-19 19:19:58.725367','13','Customer from an API',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',15,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'admin','logentry'),(2,'auth','group'),(1,'auth','permission'),(3,'auth','user'),(17,'blog','blogimagecard'),(15,'blog','entry'),(16,'blog','tag'),(4,'contenttypes','contenttype'),(11,'programming','project'),(14,'programming','projectcard'),(10,'programming','tool'),(9,'programming','toolcategory'),(13,'quotes','quote'),(12,'quotes','quotee'),(5,'sessions','session'),(8,'testapp','choice'),(7,'testapp','question');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-01-17 15:56:04.409724'),(2,'auth','0001_initial','2021-01-17 15:56:04.632239'),(3,'admin','0001_initial','2021-01-17 15:56:05.475060'),(4,'admin','0002_logentry_remove_auto_add','2021-01-17 15:56:05.689303'),(5,'admin','0003_logentry_add_action_flag_choices','2021-01-17 15:56:05.702659'),(6,'contenttypes','0002_remove_content_type_name','2021-01-17 15:56:05.861235'),(7,'auth','0002_alter_permission_name_max_length','2021-01-17 15:56:05.967803'),(8,'auth','0003_alter_user_email_max_length','2021-01-17 15:56:05.990349'),(9,'auth','0004_alter_user_username_opts','2021-01-17 15:56:06.007454'),(10,'auth','0005_alter_user_last_login_null','2021-01-17 15:56:06.079370'),(11,'auth','0006_require_contenttypes_0002','2021-01-17 15:56:06.085307'),(12,'auth','0007_alter_validators_add_error_messages','2021-01-17 15:56:06.098312'),(13,'auth','0008_alter_user_username_max_length','2021-01-17 15:56:06.208646'),(14,'auth','0009_alter_user_last_name_max_length','2021-01-17 15:56:06.326193'),(15,'auth','0010_alter_group_name_max_length','2021-01-17 15:56:06.342292'),(16,'auth','0011_update_proxy_permissions','2021-01-17 15:56:06.351535'),(17,'auth','0012_alter_user_first_name_max_length','2021-01-17 15:56:06.467454'),(18,'programming','0001_initial','2021-01-17 15:56:06.596666'),(19,'sessions','0001_initial','2021-01-17 15:56:06.952022'),(20,'testapp','0001_initial','2021-01-17 15:56:07.055383'),(21,'testapp','0002_auto_20210110_1823','2021-01-17 15:56:07.172694'),(22,'programming','0002_auto_20210118_1614','2021-01-18 16:14:36.356144'),(23,'programming','0003_auto_20210118_2052','2021-01-18 20:52:58.787954'),(24,'quotes','0001_initial','2021-01-19 21:24:35.874970'),(25,'programming','0004_auto_20210121_1910','2021-01-21 19:11:02.784176'),(26,'programming','0005_projectcard','2021-01-21 19:38:32.046245'),(27,'programming','0006_tool_link','2021-01-21 22:30:08.938877'),(28,'programming','0007_auto_20210123_1219','2021-01-23 12:19:18.430999'),(29,'blog','0001_initial','2021-01-23 12:21:53.853883'),(30,'programming','0008_projectcard_feature_card','2021-01-25 19:09:42.403657'),(31,'blog','0002_blogimagecard','2021-02-17 20:08:17.910903');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('69lqmu78zx71rw7ecjmoh36k6m9itb0u','.eJxVjEEOwiAQAP_C2ZCFsi149O4bCLusUjU0Ke3J-HdD0oNeZybzVjHtW4l7kzXOWZ2VUadfRomfUrvIj1Tvi-albutMuif6sE1flyyvy9H-DUpqpW854MQ3BwHcwDiGbMSIZMsIjiYyJAQZvUU_hGAQLHhP6JIAE4-iPl_TejeX:1lCSwT:VMch4XJmbP8tolT9reIUZJUGHwslf-7okWPYnUVbIlM','2021-03-03 19:56:57.479121'),('9hy8iv8abby71osokoctjj8lqba6k3ki','.eJxVjEEOwiAQAP_C2ZCFsi149O4bCLusUjU0Ke3J-HdD0oNeZybzVjHtW4l7kzXOWZ2VUadfRomfUrvIj1Tvi-albutMuif6sE1flyyvy9H-DUpqpW854MQ3BwHcwDiGbMSIZMsIjiYyJAQZvUU_hGAQLHhP6JIAE4-iPl_TejeX:1l6J6H:vh_qBj0S8tQ_rRT6HWv36uFLE6G8XBv0sJtvKUrPEsY','2021-02-14 20:13:37.269966'),('palmgyet079uvurxd0467boo8w89jird','.eJxVjEEOwiAQAP_C2ZCFsi149O4bCLusUjU0Ke3J-HdD0oNeZybzVjHtW4l7kzXOWZ2VUadfRomfUrvIj1Tvi-albutMuif6sE1flyyvy9H-DUpqpW854MQ3BwHcwDiGbMSIZMsIjiYyJAQZvUU_hGAQLHhP6JIAE4-iPl_TejeX:1l1AUu:KEldHjq2O2Cif1UwtHOR9RSM6ncP60NIRlU5f8TVDAE','2021-01-31 16:01:48.476708');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programming_project`
--

DROP TABLE IF EXISTS `programming_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programming_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `subtitle` varchar(200) DEFAULT NULL,
  `short_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `short_name` (`short_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programming_project`
--

LOCK TABLES `programming_project` WRITE;
/*!40000 ALTER TABLE `programming_project` DISABLE KEYS */;
INSERT INTO `programming_project` VALUES (2,'TeslaMaze','2013-07-10 20:14:39.000000','A team project where the player must align pipes correctly using a Wii remote. The ingame goals would then have effect on a custom built wooden tower. The game was programmed in Java.\r\n\r\nThis project was made by four people working on both software and hardware. The game uses the Nintendo Wii remote to get input from the player. The player must align pipes from the fictionized tesla coil to several points to conduct electricity to a specific machine. These machines are three doors and an elevator. These machines correspond to actual doors and an elevator on a wooden tower built by the team. The tower base is made of wood and has a metal screw elevator. A metal bal has to be elevated up and then roll down three rails. One of the rails is powered and the other is grounded. The metal ball conducts electricity to blue LED\'s on the rails when it passes by. Once the ball has reached the bottom of the tower within the timelimit, a switch turns on the plasma light on the top of the tower and the game is won. I created the logo in Adobe Photoshop.','Gaming and Woodworking','teslamaze'),(3,'Internet Radio','2016-03-23 20:18:26.000000','A Raspberry Pi streaming internet radio. Made this project to practice with Python and Flask.\r\n\r\nThis little hobby project was made so I could make a radio with all my favorite internet streams and access them from the comfort of my smartphone.','Raspberry Pi Jukebox','rpiInternetRadio'),(4,'Wi-Fi prototype board','2015-01-16 20:21:19.000000','This project was part of my internship at Dazzletek in Breda. My assignment was to create a prototype that would allow a device to communicate over Wi-Fi.\r\nI worked with oscilloscopes and electronics to adjust the hardware on the prototype. I developed a software program using C in the OpenAT framework.\r\nAt the end of my internship the prototype was realized into a product.\r\n\r\nThe purpose of this assignment was to provide a device which communicates over GPRS, with the ability to communicate that data over Wi-Fi. The WF121 by BlueGiga, which used a PIC32 microcontroller, had to be programmed to accept and transfer data to a specific SSID. Also the AirPrime SL6087 by Sierra Wireless had to be programmed to relay the data to the Wi-Fi module.\r\nI used Wireshark, commandline debug and an oscilloscope to monitor the datatranfers.\r\nI also built a little RJ45 connector that could be plugged on the prototype board so it could be easily programmed.\r\n\r\nVersion control was done in Subversion.','Internship','wifiPrototype'),(5,'Embedded Internet Radio','2014-03-07 20:22:37.000000','This project gave me the opportunity to work with the SIR120 internet radio made by the company StreamIT. The radio involved connecting to exiting internet streams and interfacing with the LCD and buttons on the device. The code was written in C.\r\n\r\nThe radio had an existing operating system called Nut/OS, an open source OS. Nut/OS provided the TCP/IP stack we required to connect the device to the internet. The radio was able to play a select number of internet streams. The user could read the stream channel on the LCD and use the buttons to navigate between them.\r\n\r\nThis project often had code overhauls because our code struction kept evolving into a more OOP apporach using structs rather than large produral chunks of code.','Streaming box','embeddedRadio'),(6,'Windows 10 Cookbook','2016-01-29 20:23:50.000000','Communicates JSON objects from a server to a client built in C# and XAML.\r\n\r\nThis was a school project I made as part of my minor Mobile Application development. The target device for this application was a handheld device, but can also be used on a desktop. I used Adobe Illustrator to create the logo.\r\n\r\nThe client can sort recipies and add new ones to the server.','UWP application','winCookbook'),(7,'MyKanji','2016-03-02 20:26:18.000000','This Android application allows users to make their own list of words. In the settings menu the user can choose how to test these words.\r\n\r\nThe My Kanji application was built for me to help me remember Japanese Kanji. By letting the user control what they want to learn themselves, only those words they wish to learn will be used.\r\nThe user can export and import Kanji databases using SQLite.\r\nThis app will be expanded to filter difficulties later.','Android Application','myKanji'),(8,'IoS Airports','2015-11-27 20:27:56.000000','A mobile iPhone application using SQLite database to display airports around the world.\r\n\r\nWith this project I got to experience working with XCode and Swift to develop IoS mobile applications.','iPhone app','iosAirports'),(9,'SimFestTycoon','2013-04-11 20:29:30.000000','A team project in which a festival can be simulated to view how crowds of people behave. The user can build festivals, roads, snackbars and assign time periods when a band plays at a stage. The project was programmed in Java.\r\n\r\nA school project made by four people. The software allows users to build their own festival grounds. Snackbarstands, toilets, roads and stages can be placed to view how people form crowds and bottlenecks in certain areas. The user can also assign a band that plays for a certain time at a stage using a sceduler. The band has a timeperiod and popularity, which affects the amount of people visiting that stage. The goal of this software is create an overview of potential bottlenecks and overcrowded areas.','Festival simulator','simfestTycoon'),(10,'SWIVforPi','2014-04-04 20:30:44.000000','A simple vertical space shooter created for the Raspberry Pi. The game is played with regular keyboard and a custom joystick setup. The game was programmed in Python.\r\n\r\nThis project was mainly to create small game and interface it with a custom hardware setup. The setup uses an analog joystick to control the player\'s helicopter. An ADC (Analog Digital Converter) samples the analog data into digital data so that the Raspberry Pi (type B) can parse the data.','Vertical scroller','swivforpi'),(11,'Horizonal shooter','2013-07-30 20:32:15.000000','A simple Java 2D game using Nintendo\'s Metroid franchise sprites.\r\n\r\nThis little game I made to practice programming with 2D graphics. It slowly gained more and more features like extra weapons and different levels, because I really enjoyed working on this project. Sadly I have not invested more time to develop it beyond just a prototype.','Metroid game','metroidSideScroller'),(12,'Board of Education Robot','2012-12-10 21:33:32.000000','The Board of education Robot is a development platform made by Parallax. This project was mainly to learn about basic electronics and programming for embedded devices.\r\n\r\nThe BoeBot was created by Parallax and uses the Javelin stamp processor. This processor accepts the high-level programming language Java to control different pieces of hardware on the robot. The robot started as a simple prototypeboard with two servo motors. Sensors and actuators were later placed on the breadboard to allow sensory input and output. We created a GUI named \"Robot at Work\" which allowed the robot to follow a path using QPI linefollowers. The robot could also be controlled with an IR remote control.','BoeBot','boebot');
/*!40000 ALTER TABLE `programming_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programming_project_tools`
--

DROP TABLE IF EXISTS `programming_project_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programming_project_tools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `programming_project_tools_project_id_tool_id_b45c1687_uniq` (`project_id`,`tool_id`),
  KEY `programming_project__tool_id_9d399ae7_fk_programmi` (`tool_id`),
  CONSTRAINT `programming_project__project_id_cf0667c4_fk_programmi` FOREIGN KEY (`project_id`) REFERENCES `programming_project` (`id`),
  CONSTRAINT `programming_project__tool_id_9d399ae7_fk_programmi` FOREIGN KEY (`tool_id`) REFERENCES `programming_tool` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programming_project_tools`
--

LOCK TABLES `programming_project_tools` WRITE;
/*!40000 ALTER TABLE `programming_project_tools` DISABLE KEYS */;
INSERT INTO `programming_project_tools` VALUES (7,2,2),(17,2,11),(8,3,2),(30,3,5),(22,3,7),(18,3,11),(19,3,12),(26,4,14),(25,5,14),(13,6,6),(28,6,15),(15,7,9),(24,7,13),(14,8,10),(27,8,16),(29,8,17),(9,9,2),(23,9,13),(10,10,2),(12,10,5),(16,10,12),(11,11,2),(21,11,13),(20,12,13);
/*!40000 ALTER TABLE `programming_project_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programming_projectcard`
--

DROP TABLE IF EXISTS `programming_projectcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programming_projectcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `feature_card` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `programming_projectc_project_id_9bcebf8b_fk_programmi` (`project_id`),
  CONSTRAINT `programming_projectc_project_id_9bcebf8b_fk_programmi` FOREIGN KEY (`project_id`) REFERENCES `programming_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programming_projectcard`
--

LOCK TABLES `programming_projectcard` WRITE;
/*!40000 ALTER TABLE `programming_projectcard` DISABLE KEYS */;
INSERT INTO `programming_projectcard` VALUES (5,'Disassemble','Taking apart the jukebox','projects/rpiInternetRadio/cards/20160328_154749.png',3,0),(6,'Old jukebox','Inner cassette mechanism and FM radio','projects/rpiInternetRadio/cards/raspiRadio1.jpg',3,0),(7,'LEDs','Adding LEDs to the front','projects/rpiInternetRadio/cards/20160404_233101.png',3,0),(8,'Lights','Fully lighted powered with an Arduino','projects/rpiInternetRadio/cards/jukebox3.jpg',3,1),(9,'Logo','Vector logo','projects/winCookbook/cards/win10_cook0.jpg',6,0),(10,'GUI','User interface','projects/winCookbook/cards/win10_cook1.jpg',6,0),(11,'Laptop','Laptop view','projects/winCookbook/cards/win10_cook3.jpg',6,0),(12,'Phone & tablet','View on a phone and a tablet','projects/winCookbook/cards/win10_cook2.jpg',6,1),(13,'Spiral rail','Machine used to lift the ball to the top of the tower','projects/teslamaze/cards/954355_570168999670026_218284235_n.jpg',2,0),(14,'Rails','Rails circling around the tower','projects/teslamaze/cards/911726_570146049672321_556648908_n.jpg',2,0),(15,'Gameplay','Playing the game','projects/teslamaze/cards/1004419_587082957978630_1796714039_n.jpg',2,0),(16,'Tower','Base of the tower','projects/teslamaze/cards/DSC00158.jpg',2,0),(17,'Screenshot','Screenshot of the game','projects/teslamaze/cards/ingameTesla.jpg',2,0),(18,'Logo','Logo of the project','projects/teslamaze/cards/logo_big_flash.jpg',2,0),(19,'Progress','Progress of the project','projects/teslamaze/cards/project_tesla.jpg',2,0),(20,'Render','A 3D render of the project','projects/teslamaze/cards/teslacoil_active.jpg',2,0),(21,'TeslaMaze','Final version of the TeslaMaze','projects/teslamaze/cards/TeslaMaze.jpg',2,1),(22,'StreamIT radio','Radio of StreamIT','projects/embeddedRadio/cards/20151007_140438.jpg',5,1),(23,'Wi-Fi board','First production of the project','projects/wifiPrototype/cards/dazzle2.png',4,1),(24,'Measuring','Probes measuring the prototype','projects/wifiPrototype/cards/dazzle0.png',4,0),(25,'Oscilloscoop','Showing the SPI protocol','projects/wifiPrototype/cards/dazzle1.png',4,0),(26,'Firmware','Flashing the firmware','projects/wifiPrototype/cards/dazzle3.jpg',4,0),(27,'Title screen','Title screen of the game','projects/swivforpi/cards/swiv2.jpg',10,1),(28,'Gameplay','Gameplay of the game','projects/swivforpi/cards/swiv1.jpg',10,0),(29,'Breadboard','Top view of breadboard with joystick','projects/swivforpi/cards/20140404_120114.jpg',10,0),(30,'Breadboard','Side view of breadboard with joystick','projects/swivforpi/cards/20140404_120102.jpg',10,0),(31,'Oscilloscoop','Analog sensor data measured with an oscilloscoop','projects/swivforpi/cards/20140321_165933.jpg',10,0),(32,'Class diagram','Class diagram of the project','projects/boebot/cards/boebot_classdiagram.jpg',12,0),(33,'BoeBot','Robot','projects/boebot/cards/robot2.jpg',12,0),(34,'BoeBot','Robot','projects/boebot/cards/robot3.jpg',12,1),(35,'GUI','Interface to plan a route for the robot','projects/boebot/cards/boebot_gui.jpg',12,0),(36,'Javelin CPU','Controlchip that can be programmed with Java','projects/boebot/cards/1427217_orig.jpg',12,0),(37,'Gameplay','Gameplay of a level','projects/metroidSideScroller/cards/MetroidScreen1.jpg',11,0),(38,'Gameplay','Gameplay of a level','projects/metroidSideScroller/cards/MetroidScreen2.jpg',11,0),(39,'Gameplay','Player interface','projects/metroidSideScroller/cards/MetroidScreen3.jpg',11,0),(40,'Gameplay','Level selection','projects/metroidSideScroller/cards/MetroidScreen4.jpg',11,0),(41,'Gameplay','Gameplay of a level','projects/metroidSideScroller/cards/MetroidScreen5.jpg',11,1),(42,'Logo','Logo of the application','projects/myKanji/cards/mykanji00.jpg',7,0),(43,'Screen','Input screen','projects/myKanji/cards/mykanji01.jpg',7,1),(44,'Screen','Menu screen','projects/myKanji/cards/mykanji02.jpg',7,0),(45,'Screen','Database with userdata','projects/myKanji/cards/mykanji03.jpg',7,0),(46,'Insides','Inside of the radio','projects/embeddedRadio/cards/20151007_135733.jpg',5,0),(47,'Country selection','Screen where countries can be selected','projects/iosAirports/cards/ios0.jpg',8,0),(48,'Screen','Vliegroute scherm','projects/iosAirports/cards/ios1.jpg',8,1),(49,'Screen','Simulator interface','projects/simfestTycoon/cards/sft2.jpg',9,0),(50,'Screen','Simulator interface','projects/simfestTycoon/cards/sft4.jpg',9,0),(51,'Screen','Simulator interface','projects/simfestTycoon/cards/sft5.jpg',9,0),(52,'Screen','Simulator interface','projects/simfestTycoon/cards/sft7.jpg',9,1),(53,'Screen','Simulator interface with planning','projects/simfestTycoon/cards/sft8.jpg',9,0),(54,'Screen','Simulator interface','projects/simfestTycoon/cards/sft9.jpg',9,0),(55,'Screen','Simulator interface','projects/simfestTycoon/cards/sft10.jpg',9,0),(56,'LCD flowchart','Menu structure for the radio interface.','projects/embeddedRadio/cards/soundhound_flowchart.jpg',5,0);
/*!40000 ALTER TABLE `programming_projectcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programming_tool`
--

DROP TABLE IF EXISTS `programming_tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programming_tool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `programming_tool_category_id_3e333bc3_fk_programmi` (`category_id`),
  CONSTRAINT `programming_tool_category_id_3e333bc3_fk_programmi` FOREIGN KEY (`category_id`) REFERENCES `programming_toolcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programming_tool`
--

LOCK TABLES `programming_tool` WRITE;
/*!40000 ALTER TABLE `programming_tool` DISABLE KEYS */;
INSERT INTO `programming_tool` VALUES (2,'Git','icons/tools/git.png',3,'https://git-scm.com/'),(3,'Nginx','icons/tools/nginx.png',4,'https://www.nginx.com/'),(4,'PyCharm','icons/tools/pycharm.png',2,'https://www.jetbrains.com/pycharm/'),(5,'Python','icons/tools/python.png',1,'https://www.python.org/'),(6,'C#','icons/tools/c-sharp.png',1,'https://docs.microsoft.com/en-us/dotnet/csharp/'),(7,'Flask','icons/tools/flask.png',5,'https://palletsprojects.com/p/flask/'),(8,'Ubuntu','icons/tools/ubuntu.png',6,'https://ubuntu.com/'),(9,'Android','icons/tools/android.png',6,'https://www.android.com/'),(10,'Xcode','icons/tools/xcode.png',2,'https://en.wikipedia.org/wiki/Xcode'),(11,'Arduino','icons/tools/arduino.png',7,'https://www.arduino.cc/'),(12,'Raspberry Pi','icons/tools/raspberry-pi.png',7,'https://www.raspberrypi.org/'),(13,'Java','icons/tools/java.png',1,'https://en.wikipedia.org/wiki/Java_(programming_language)'),(14,'C','icons/tools/c.png',1,'https://en.wikipedia.org/wiki/C_(programming_language)'),(15,'Windows 10','icons/tools/windows10.png',6,'https://www.microsoft.com/en-us/windows'),(16,'Apple iOS','icons/tools/apple.png',6,'https://www.apple.com/'),(17,'Swift','icons/tools/swift.png',1,'https://en.wikipedia.org/wiki/Swift_(programming_language)');
/*!40000 ALTER TABLE `programming_tool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programming_toolcategory`
--

DROP TABLE IF EXISTS `programming_toolcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programming_toolcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programming_toolcategory`
--

LOCK TABLES `programming_toolcategory` WRITE;
/*!40000 ALTER TABLE `programming_toolcategory` DISABLE KEYS */;
INSERT INTO `programming_toolcategory` VALUES (1,'programming language'),(2,'integrated development environment'),(3,'version control'),(4,'web server engine'),(5,'Framework'),(6,'Operating system'),(7,'Hardware');
/*!40000 ALTER TABLE `programming_toolcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes_quote`
--

DROP TABLE IF EXISTS `quotes_quote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes_quote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext NOT NULL,
  `quotee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quotes_quote_quotee_id_2a095eca_fk_quotes_quotee_id` (`quotee_id`),
  CONSTRAINT `quotes_quote_quotee_id_2a095eca_fk_quotes_quotee_id` FOREIGN KEY (`quotee_id`) REFERENCES `quotes_quotee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes_quote`
--

LOCK TABLES `quotes_quote` WRITE;
/*!40000 ALTER TABLE `quotes_quote` DISABLE KEYS */;
INSERT INTO `quotes_quote` VALUES (1,'Logic will get you from A to B. Imagination will take you everywhere.',1),(2,'Behind the success of a new and big project there is an accumulation of 99 percent failures.',2),(3,'Tell customers the truth.',3),(4,'The world will not be destroyed by those who do evil, but by those who watch them without doing anything.',1),(5,'If you want your children to be intelligent, read them fairy tales. If you want them to be more intelligent, read them more fairy tales.',1),(6,'If you tremble with indignition at every injustice, you are a comrade of mine.',4),(7,'Als je een goeie boer bent, put je je land niet uit, want volgend jaar wil je ook oogsten.',5),(8,'De ruimtevaart is een prachtig platform om de waarde van techniek en wetenschap en de schoonheid en de kwetsbaarheid van onze planeet te laten zien.',5),(9,'Er zijn twee belangrijke redenen om de ruimte te blijven verkennen: de eerste is kennis en de tweede is de veiligheid van onze planeet.',5),(10,'Live your life not celebrating victories, but overcoming defeats.',4),(11,'By failing to prepare, you are preparing to fail.',6),(12,'What I hear, I forget; What I see, I remember; What I do, I understand.',7),(13,'Nothing will stop you from being creative so effectively as the fear of making a mistake.',8),(14,'Choose a job you love and you will never have to work a day in your life.',7),(15,'Compound Interest is the Eigth Wonder of the World.',1),(16,'Once you have no problem making mistakes, admitting them, and correcting them, hardly any mistakes will happen.',9),(17,'No one ever mentions that, yet if you are to become truly skillful, it will not be through the use of machines but the use of your body, your mind and your soul sensing information through your hands.',10),(18,'If human beings become conscious, the need for domination and conflict will dissolve.',9),(19,'It is not what you make, but how you make it that is going to be important to you and the finish of your project.',10),(20,'This is such a brief Life, doing what you truly care for is the only way to make your life worthwhile.',9),(21,'Nature has given you a sense of individuality. But life does not happen as an individual. Life is happening as one whole.',9),(22,'An instruction from most of the men I worked with and trained under, right from the day one was, “Lad, whatever happens, never sell your tools. As long as you’ve got them you can always make a living.” Just a thought worth sharing. I have never had a one day in over 50 years when I didn’t have work, thankfully.',10),(23,'Once your mind becomes absolutely still, your intelligence transcends human intelligence.',9),(24,'Confidence can do things for you but confidence without clarity is a big disaster.',9),(25,'I find capitalism repugnant. It is filthy, it is gross, it is alienating... because it causes war, hypocrisy and competition.',11),(26,'Een kenmerk van een gelukkig hart is een vrolijk gezicht.',12),(27,'In our business, too often people with a fresh idea don\'t have a chance. I believe if Tetris were presented today, here is what the producer would be told: Go back give me more levels give me better graphics give me cinematics and you\'re probably going to need a movie license to sell that idea to the public.',13),(28,'Two things are infinite: the universe and human stupidity; and I\'m not sure about the universe.',1),(29,'It isn\'t about \"games\", for me, personally, and it never really was. It was about creating something- anything- far bigger than yourself.',14),(30,'Ability will never catch up with the demand for it.',7),(31,'On my business card, I am a corporate president. In my mind, I am a game developer. But in my heart, I am a gamer.',13),(32,'Concentrate all your thoughts upon the work at hand. The sun\'s rays do not burn until brought to a focus.',15),(33,'Our virtues and our failings are inseparable, like force and matter. When they separate, man is no more.',16),(34,'The idea of copyright did not exist in ancient times, when authors frequently copied other authors at length in works of non-fiction. This practice was useful, and is the only way many authors\' works have survived even in part.',17),(35,'You should be free to work yourself to the bone, but not to force someone else to do that for you.',18),(36,'The present is theirs; the future, for which I really worked, is mine.',16),(37,'Yesterday is history. Tomorrow is a mystery. And today? Today is a gift. That\'s why we call it the present.',19),(38,'A good traveler has no fixed plans and is not intend on arriving.',20),(39,'People who know little are usually great talkers, while men who know much say little.',21),(40,'Umoja ni nguvu utengano ni udhaifu. Unity is strength, division is weakness.',22),(41,'Why do some people have to go barefoot so that others can drive luxury cars? Why are some people able to live only 35 years in order that others can live 70 years? Why do some people have to be miserably poor in order that others can be extravagantly rich? I speak for all the children in the world who don\'t even have a piece of bread.',11),(42,'Freedom is not something that one people can bestow on another as a gift. They claim it as their own and none can keep it from them.',23),(43,'They will create the viruses themselves and sell you the antidotes. Thereafter, they will pretend to take time to find the solution when they already have it.',24),(44,'I began revolution with 82 men. If I had to do it again, I do it with 10 or 15 and absolute faith. It does not matter how small you are if you have faith and plan of action.',11),(45,'The self-confidence of the ignorant is one of the biggest disasters of the humanity.',25),(46,'No man is an Island, entire of itself. Every man is a piece of the Continent, a part of the main.',26),(47,'What sets worlds in motion is the interplay of differences, their attractions and repulsions; life is plurality, death is uniformity.',27),(48,'Every actor has to make terrible films from time to time, but the trick is never to be terrible in them.',28),(49,'We don’t always get the kind of work we want, but we always have a choice of whether to do it with good grace or not.',28),(50,'I haven\'t spent my entire career playing the guy in the bad hat, although I have to say that the bad guy is frequently much more interesting than the good guy.',28);
/*!40000 ALTER TABLE `quotes_quote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes_quotee`
--

DROP TABLE IF EXISTS `quotes_quotee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes_quotee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes_quotee`
--

LOCK TABLES `quotes_quotee` WRITE;
/*!40000 ALTER TABLE `quotes_quotee` DISABLE KEYS */;
INSERT INTO `quotes_quotee` VALUES (1,'Albert Einstein','https://en.wikipedia.org/wiki/Albert_Einstein'),(2,'Soichiro Honda','https://en.wikipedia.org/wiki/Soichiro_Honda'),(3,'Takeo Fujisawa','https://en.wikipedia.org/wiki/Takeo_Fujisawa'),(4,'Che Guevara','https://en.wikipedia.org/wiki/Che_Guevara'),(5,'André Kuipers','https://en.wikipedia.org/wiki/Andr%C3%A9_Kuipers'),(6,'Benjamin Franklin','https://en.wikipedia.org/wiki/Benjamin_Franklin'),(7,'Confucius','https://en.wikipedia.org/wiki/Confucius'),(8,'John Cleese','https://en.wikipedia.org/wiki/John_Cleese'),(9,'Sadhguru','https://en.wikipedia.org/wiki/Jaggi_Vasudev'),(10,'Paul Sellers','https://en.wikipedia.org/wiki/Paul_Sellers'),(11,'Fidel Castro','https://en.wikipedia.org/wiki/Fidel_Castro'),(12,'Toon Hermans','https://en.wikipedia.org/wiki/Toon_Hermans'),(13,'Satoru Iwata','https://en.wikipedia.org/wiki/Satoru_Iwata'),(14,'Shigeru Miyamoto','https://en.wikipedia.org/wiki/Shigeru_Miyamoto'),(15,'Alexander Graham Bell','https://en.wikipedia.org/wiki/Alexander_Graham_Bell'),(16,'Nikola Tesla','https://en.wikipedia.org/wiki/Nikola_Tesla'),(17,'Richard Stallman','https://en.wikipedia.org/wiki/Richard_Stallman'),(18,'Eric Barone','https://en.wikipedia.org/wiki/Eric_Barone_(developer)'),(19,'Eleanor Roosevelt','https://en.wikipedia.org/wiki/Eleanor_Roosevelt'),(20,'Laozi','https://en.wikipedia.org/wiki/Laozi'),(21,'Jean-Jacques Rousseau','https://en.wikipedia.org/wiki/Jean-Jacques_Rousseau'),(22,'Swahili proverb','https://en.wikipedia.org/wiki/Swahili_culture'),(23,'Kwame Nkrumah','https://en.wikipedia.org/wiki/Kwame_Nkrumah'),(24,'Muammar al-Gaddafi','https://en.wikipedia.org/wiki/Muammar_Gaddafi'),(25,'Mehmet Murat Ildan',NULL),(26,'John Donne','https://en.wikipedia.org/wiki/John_Donne'),(27,'Octavio Paz','https://en.wikipedia.org/wiki/Octavio_Paz'),(28,'Christopher Lee','https://en.wikipedia.org/wiki/Christopher_Lee');
/*!40000 ALTER TABLE `quotes_quotee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_choice`
--

DROP TABLE IF EXISTS `testapp_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testapp_choice_question_id_49b58598_fk_testapp_question_id` (`question_id`),
  CONSTRAINT `testapp_choice_question_id_49b58598_fk_testapp_question_id` FOREIGN KEY (`question_id`) REFERENCES `testapp_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_choice`
--

LOCK TABLES `testapp_choice` WRITE;
/*!40000 ALTER TABLE `testapp_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `testapp_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_question`
--

DROP TABLE IF EXISTS `testapp_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testapp_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(200) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_question`
--

LOCK TABLES `testapp_question` WRITE;
/*!40000 ALTER TABLE `testapp_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `testapp_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-22 10:07:19
