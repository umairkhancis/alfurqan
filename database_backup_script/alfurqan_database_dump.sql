-- MySQL dump 10.11
--
-- Host: localhost    Database: alfurqan
-- ------------------------------------------------------
-- Server version	5.0.90-community-nt

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
-- Table structure for table `additional_exam_groups`
--

DROP TABLE IF EXISTS `additional_exam_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_exam_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `exam_type` varchar(255) collate utf8_unicode_ci default NULL,
  `is_published` tinyint(1) default '0',
  `result_published` tinyint(1) default '0',
  `students_list` varchar(255) collate utf8_unicode_ci default NULL,
  `exam_date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_exam_groups`
--

LOCK TABLES `additional_exam_groups` WRITE;
/*!40000 ALTER TABLE `additional_exam_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exam_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_exam_scores`
--

DROP TABLE IF EXISTS `additional_exam_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_exam_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `additional_exam_id` int(11) default NULL,
  `marks` decimal(7,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `remarks` varchar(255) collate utf8_unicode_ci default NULL,
  `is_failed` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_exam_scores`
--

LOCK TABLES `additional_exam_scores` WRITE;
/*!40000 ALTER TABLE `additional_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_exams`
--

DROP TABLE IF EXISTS `additional_exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_exams` (
  `id` int(11) NOT NULL auto_increment,
  `additional_exam_group_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `maximum_marks` int(11) default NULL,
  `minimum_marks` int(11) default NULL,
  `grading_level_id` int(11) default NULL,
  `weightage` int(11) default '0',
  `event_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_exams`
--

LOCK TABLES `additional_exams` WRITE;
/*!40000 ALTER TABLE `additional_exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_fields`
--

DROP TABLE IF EXISTS `additional_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_fields`
--

LOCK TABLES `additional_fields` WRITE;
/*!40000 ALTER TABLE `additional_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply_leaves`
--

DROP TABLE IF EXISTS `apply_leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply_leaves` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `employee_leave_types_id` int(11) default NULL,
  `is_half_day` tinyint(1) default NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `reason` varchar(255) collate utf8_unicode_ci default NULL,
  `approved` tinyint(1) default '0',
  `viewed_by_manager` tinyint(1) default '0',
  `manager_remark` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_leaves`
--

LOCK TABLES `apply_leaves` WRITE;
/*!40000 ALTER TABLE `apply_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employee_additional_details`
--

DROP TABLE IF EXISTS `archived_employee_additional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_employee_additional_details` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `additional_field_id` int(11) default NULL,
  `additional_info` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_employee_additional_details`
--

LOCK TABLES `archived_employee_additional_details` WRITE;
/*!40000 ALTER TABLE `archived_employee_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employee_bank_details`
--

DROP TABLE IF EXISTS `archived_employee_bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_employee_bank_details` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `bank_field_id` int(11) default NULL,
  `bank_info` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_employee_bank_details`
--

LOCK TABLES `archived_employee_bank_details` WRITE;
/*!40000 ALTER TABLE `archived_employee_bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employee_salary_structures`
--

DROP TABLE IF EXISTS `archived_employee_salary_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_employee_salary_structures` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `payroll_category_id` int(11) default NULL,
  `amount` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_employee_salary_structures`
--

LOCK TABLES `archived_employee_salary_structures` WRITE;
/*!40000 ALTER TABLE `archived_employee_salary_structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_salary_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employees`
--

DROP TABLE IF EXISTS `archived_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_employees` (
  `id` int(11) NOT NULL auto_increment,
  `employee_category_id` int(11) default NULL,
  `employee_number` varchar(255) collate utf8_unicode_ci default NULL,
  `joining_date` date default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `middle_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `gender` tinyint(1) default NULL,
  `job_title` varchar(255) collate utf8_unicode_ci default NULL,
  `employee_position_id` int(11) default NULL,
  `employee_department_id` int(11) default NULL,
  `reporting_manager_id` int(11) default NULL,
  `employee_grade_id` int(11) default NULL,
  `qualification` varchar(255) collate utf8_unicode_ci default NULL,
  `experience_detail` text collate utf8_unicode_ci,
  `experience_year` int(11) default NULL,
  `experience_month` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `status_description` varchar(255) collate utf8_unicode_ci default NULL,
  `date_of_birth` date default NULL,
  `marital_status` varchar(255) collate utf8_unicode_ci default NULL,
  `children_count` int(11) default NULL,
  `father_name` varchar(255) collate utf8_unicode_ci default NULL,
  `mother_name` varchar(255) collate utf8_unicode_ci default NULL,
  `husband_name` varchar(255) collate utf8_unicode_ci default NULL,
  `blood_group` varchar(255) collate utf8_unicode_ci default NULL,
  `nationality_id` int(11) default NULL,
  `home_address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `home_address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `home_city` varchar(255) collate utf8_unicode_ci default NULL,
  `home_state` varchar(255) collate utf8_unicode_ci default NULL,
  `home_country_id` int(11) default NULL,
  `home_pin_code` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `office_city` varchar(255) collate utf8_unicode_ci default NULL,
  `office_state` varchar(255) collate utf8_unicode_ci default NULL,
  `office_country_id` int(11) default NULL,
  `office_pin_code` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone2` varchar(255) collate utf8_unicode_ci default NULL,
  `mobile_phone` varchar(255) collate utf8_unicode_ci default NULL,
  `home_phone` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `fax` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_file_name` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_data` mediumblob,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `photo_file_size` int(11) default NULL,
  `former_id` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_employees`
--

LOCK TABLES `archived_employees` WRITE;
/*!40000 ALTER TABLE `archived_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_exam_scores`
--

DROP TABLE IF EXISTS `archived_exam_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_exam_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `exam_id` int(11) default NULL,
  `marks` decimal(7,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `remarks` varchar(255) collate utf8_unicode_ci default NULL,
  `is_failed` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_archived_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_exam_scores`
--

LOCK TABLES `archived_exam_scores` WRITE;
/*!40000 ALTER TABLE `archived_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_guardians`
--

DROP TABLE IF EXISTS `archived_guardians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_guardians` (
  `id` int(11) NOT NULL auto_increment,
  `ward_id` int(11) default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `relation` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone2` varchar(255) collate utf8_unicode_ci default NULL,
  `mobile_phone` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `city` varchar(255) collate utf8_unicode_ci default NULL,
  `state` varchar(255) collate utf8_unicode_ci default NULL,
  `country_id` int(11) default NULL,
  `dob` date default NULL,
  `occupation` varchar(255) collate utf8_unicode_ci default NULL,
  `income` varchar(255) collate utf8_unicode_ci default NULL,
  `education` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_guardians`
--

LOCK TABLES `archived_guardians` WRITE;
/*!40000 ALTER TABLE `archived_guardians` DISABLE KEYS */;
INSERT INTO `archived_guardians` VALUES (1,1,'Muhammad ','Raees Ahmed','islam','-','-','-','0334-3035642','-','soldier bazar no.2 roshan shah colony HD-3','karachi','sindh',133,'1960-01-10','servent-toyota','-','matriculation','2015-01-30 06:39:22','2015-01-30 06:39:22'),(2,3,'ghulam ','rasool','father','','','','','dlkajlkj','lkajj','lkajlkj','kajlkj',133,'1995-01-18','','','metric','2015-01-26 06:17:20','2015-01-26 06:17:29'),(3,5,'muhammad ','ismail','islam','','','','0302-2835941','baldiya town','house no.300 block B ittihaad town','karachi','sindh',133,'1973-04-15','cosmetic shop','','8 classes pass','2015-01-30 07:50:23','2015-01-30 07:50:32'),(4,6,'muhammad','aslam parvaiz','islam','','-','-','0310-2581112','nazimabad','147/11,12','karachi','sindh',133,'1967-10-20','crockery bakers','-','6 classes','2015-01-30 06:54:51','2015-01-30 06:55:01'),(5,7,'muhammad','siddique ashrafi','islam','','','','0322-2173913','pan mandi','flat no-302 Al-makran centre pan mandi karachi','karachi','sindh',133,'1955-06-18','business','.','b,com','2015-01-30 07:43:27','2015-01-30 07:43:38'),(6,8,'Syed','Azam Nizami','Father','','021-34134222','','','plot No. 80(A) flat No.6 near K.M.C park P.I.B colony karachi','','karachi','sindh',133,'1952-08-03','Army Retired','','matric','2012-08-10 05:00:14','2012-08-10 08:21:29'),(7,9,'Muhammad','Yosuf','Brother','noreplyp00277@fedena.com','','','0334-3267505','R-426 block L north nazimabad karachi','  ','(permanent add) D.G khan','Punjab',133,'1985-05-03','Builder','','Matric','2012-08-10 05:15:13','2012-08-10 08:22:08'),(8,10,'Muhammad','Azeem','Father','','','','0345-9324240','House No. 452 street No.5 sector 32/A Zia colony karachi No.1','','karachi','sindh',133,'1961-01-01','machine operator in english Manufacture','','Matric','2012-08-10 05:39:03','2012-08-10 08:22:41'),(9,11,'Saif','Ullah','father','','','','0345-3024847','flat No. A-13 plot no. Sb-11, sector 11 .H life Home hats, north karachi','','lahore','punjab',133,NULL,'master in ladies boutique','','matric','2012-08-10 06:15:06','2012-08-10 08:23:10'),(10,12,'Muhammad ','Khizir Hayat','Father','','','','0302-2336964','plot No.16 city railway camp area power house.','','bhawalnagar','punjab',133,'1966-08-01','sevent','','Nill','2012-08-10 06:21:16','2012-08-10 08:23:55'),(11,13,'Muhammad','Yosuf','Father','','','','0304-2363845  0343-0235952','House No.992 ilyas dawood goth sector 51/C deh rehri korangi. (permanent add)','','multan ','punjab',133,NULL,'Driver','','Nil','2012-08-10 06:26:34','2012-08-10 08:24:28'),(12,14,'Abdul Rasheed ','Khan','Father','','','','0314-2330387','House No. 317 farooq colony behind umer farooq masjid orangi town karachi','','karachi','sindh',133,'1953-06-03','own business','','matric','2012-08-10 06:30:02','2012-08-10 08:24:59'),(13,15,'Mukhtar','Ahmed','Father','','','','0313-2567357','3-F . 7/1 almadeen appartment Flat No.14 nazimabad karachi ','','karachi','sindh',133,NULL,'job less','','nil','2012-08-10 06:36:03','2012-08-10 08:25:26'),(14,16,'Maryam','','Mother','','','','0321-8945583','2/1250 reta plot shah faisal colony No.2 karachi','','karachi','sindh',133,'1974-08-04','House wife','','Nil','2012-08-10 06:46:02','2012-08-10 08:26:02'),(15,17,'Qari ','Ayub naeemi','Father','','','','0300-2436974','Busniss society house No.c-5 near gulshan-e-memar karachi','','muzaffar garh','punjab',133,'1969-12-24','school teacher','','F.A (Dars-e-Nizami)','2012-08-10 07:37:33','2012-08-10 08:26:27'),(16,18,'Ayaz ','Warsi','Father','','','','0334-3913631','G-59/7 liaqatabad square malir karachi','','karachi','sindh',133,'1961-11-05','skill worker','','matric','2012-08-10 07:43:34','2012-08-10 08:26:59'),(17,19,'Sharif','Ahmed Khan','Father','','','','0312-2377900','House NO. 553 sector 32/D nasir colony korangi No.1 karachi','','karachi','sindh',133,'1956-08-05','Buisness','','Nil','2012-08-10 07:48:56','2012-08-10 08:28:17'),(18,20,'Abdul','Razzaq','Father','noreplyp00288@fedena.com','','','0334-3315134','House No. 50 Al-mustafa Hospital street Near Faizan-e-Attar masjid block 13D/2 railway society gulshan-e-iqbal karachi','','karachi','sindh',133,'1963-03-06','Buisness','','M.A pass (Islamic history)','2012-08-10 07:55:11','2012-08-10 08:29:06'),(19,21,'Syed','Babo Mian','Father','','','','','plot No. A/208 , road No.6 commercial area landhi karachi','','karachi','sindh',133,NULL,'Shop keeper (general store)','','Nill','2012-08-10 08:34:28','2012-08-10 08:34:39'),(20,22,'Aftab','Ahmed','Brother','','','','-','North nazimabad Block-9','','Abbotabad','khaibar pakhukhaw',133,NULL,'own business','','matric','2012-08-10 08:38:29','2012-08-10 08:38:37'),(21,23,'Muhammad','Tahir','Father','','','','0304-3063532','Pib colony karachi','','karachi','sindh',133,NULL,'Buisness','','matric','2012-08-10 08:42:05','2012-08-10 08:42:16'),(22,24,'Muhammad','Rafiq','Father','','','','0324-2616736','old haji camp main timber market panjetan building flat No.13 karachi','','karachi','sindh',133,'1960-02-10','own business','','Inter','2012-08-10 08:46:01','2012-08-10 08:46:14'),(23,25,'Haji','Shamshad','Father','','','','0306-2672694','','','karachi','sindh',133,NULL,'Tailor Master','','matric','2012-08-10 09:35:45','2012-08-10 09:35:57'),(24,26,'Muhammad','shahid','Father','','','','0321-2981744','','','','',133,NULL,'own business','','matric','2012-08-10 09:40:13','2012-08-10 09:40:19'),(25,27,'Mujassim','','Brother','','','','','House No.l15/17 godhra colony new karachi sector 11-G','','karachi','sindh',133,NULL,'medical store','','B.com','2012-08-10 09:46:29','2012-08-10 09:46:39'),(26,28,'Ghulam','Rasool qadri','father','','','','0301-2698771','govt quator house No.F-281 patel paara jahangeer road karachi','','karachi','sindh',133,'1959-01-04','Cloths shop','','matric','2012-08-10 09:50:53','2012-08-10 09:51:09'),(27,29,'Muhammdad','Iqbal','father','','','','0312-2353485','garden west belle view tower, nishtar raod karachi','','karachi','sindh',133,NULL,'Buisness man','','matric','2012-08-10 09:55:56','2012-08-10 09:56:04'),(28,30,'Muhammad','Iqbal','Father','','','','0308-2334942','garden west belle view tower, nishtar raod karachi','','karachi','sindh',133,NULL,'Buisness man','','matric','2012-08-10 09:59:51','2012-08-10 10:00:14'),(29,31,'Sajjad','Hussain','Father','','','','','Defence view phase 1 street No.3 .B-73 karachi','','karachi','sindh',133,NULL,'Salf business','','Graduate','2012-08-13 05:02:01','2012-08-13 05:02:12'),(30,32,'Qari','Ghulam Ali Chishti','Father','','','','0345-9874889','jama masjid qasabaan soldier bazar no.01 karachi','          (permanent Add)   jamia islamia mehria paharpur dera ismail khan ','karachi','sindh',133,'1952-08-03','Imam-o-Khateeb','','.','2012-08-13 05:18:56','2012-08-13 05:35:41'),(31,33,'Bashir','Ahmed','Father','','','','0346-2775011','House No. L-413 sector 5-A/3 Near High star school North karachi','karachi','karachi','sindh',133,NULL,'Danting and painting','','...','2012-08-13 05:33:18','2012-08-13 05:33:23'),(32,34,'Saeed','Ahmed','Father','','','','0321-6343026','E7/47 Asif colony karachi','','karachi','sindh',133,NULL,'Machanic','','matric','2012-08-13 05:38:33','2012-08-13 05:38:43'),(33,35,'Muhammad','Aslam','Father','','','','0333-2206703','Doli khata iqbal market near gulzar e habib masjid House No.46 karchi','','karachi','sindh',133,'1964-03-23','own business','','matric','2012-08-13 05:45:05','2012-08-13 05:45:11'),(34,36,'muhammad','Basharat','father','noreplyp00354@fedena.com','','','0321-2366692    and    0331-3720592','street 3 ground floor rajput tarrace punjab colony karachi','      (permanent add) Street No.2 house No.37 punjab colony karachi','karachi','sindh',133,'1958-10-03','Private service','','b.com','2012-08-13 05:50:04','2012-08-13 05:51:15'),(35,37,'Muhammad','Basharat','Father','','','','0321-2366692    and    0331-3720592','street 3 ground floor rajput tarrace punjab colony karachi','      (permanent add) Street No.2 house No.37 punjab colony karachi','karachi','sindh',133,'1958-10-03','Private service','','B.com','2012-08-13 05:55:04','2012-08-13 05:55:11'),(36,38,'Muhammad','jawed','Father','','','','0322-2432206','A-12 ayesha garden soldier bazar no.3 britto road karachi','','karachi','sindh',133,'1961-07-30','banker','','B.com','2012-08-13 06:00:32','2012-08-13 06:00:39'),(37,39,'Muhammad','Arshad  Baig','Father','','','','0312-2993185','House No. 29 street No.11 Area 37/A landhi 3 1/2   karachi','','karachi','sindh',133,'1968-01-01','employee in K.Electric','','F.sc (Inter)','2012-08-13 06:07:36','2012-08-13 06:07:46'),(38,40,'Muhammad','Gulfam','Father','','','','0300-9201709','6/141  liaqatabad karachi','','karachi','sindh',133,'1960-08-01','gold smith','','middle','2012-08-13 06:12:49','2012-08-13 06:13:06'),(39,41,'Muhammad','Sohail','Father','','','','0333-2091792','Flate No1 caso fawad  mension chandni chowk karachi','','karachi','sindh',133,NULL,'Buisness man','','B.com','2012-08-13 06:19:51','2012-08-13 06:19:58'),(40,42,'Ghulam','Rasool','Islam','','','','0300-8945789','House No. F-281 patail paara block 141 karachi','','karachi','sindh',133,'1959-01-04','shopkeeper','','matric','2012-08-13 06:24:54','2012-08-13 06:25:14'),(41,43,'Ghulam','Rasool qadri','Father','','','','0300-8945789','House No. F-281 patail paara block 141 karachi','','karachi','sindh',133,'1959-01-01','shopkeeper','','matric','2012-08-13 06:39:25','2012-08-13 06:39:35'),(42,44,'Rahim-Uddin','','Father','','','','0321-2704092','Doli khata iqbal market near gulzar e habib masjid House No.46 karchi','','karachi','sindh',133,'1961-02-01','Private service','','matric','2012-08-13 06:49:46','2012-08-13 06:49:59'),(43,45,'Nasir','jamal','Father','','','','0314-2969797','B-23 row-T block-1 ghulshan-e-kaneez fatima karachi','','karchi','sindh',133,'1957-09-10','Retired','','b.com','2012-08-13 06:54:37','2012-08-13 06:54:47'),(44,46,'Muhammad','Ashraf','Father','','','','0333-2055391','Ana castle flat No.606 garden west karachi','','karachi','sindh',133,'1971-01-01','catering','','matric','2012-08-13 06:58:35','2012-08-13 06:58:41'),(45,47,'Hafiz','Abdul Nabi soomro','Father','','','','','9/1 3rd street zam zama deffence phase 5 karachi','          (permanent Add)  soomro colony khanpur meher dist ghotki','karachi','sindh',133,'1972-02-01','government Servent','','inter','2012-08-13 07:06:06','2012-08-13 07:06:32');
/*!40000 ALTER TABLE `archived_guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_students`
--

DROP TABLE IF EXISTS `archived_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_students` (
  `id` int(11) NOT NULL auto_increment,
  `admission_no` varchar(255) collate utf8_unicode_ci default NULL,
  `class_roll_no` varchar(255) collate utf8_unicode_ci default NULL,
  `admission_date` date default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `middle_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `date_of_birth` date default NULL,
  `gender` varchar(255) collate utf8_unicode_ci default NULL,
  `blood_group` varchar(255) collate utf8_unicode_ci default NULL,
  `birth_place` varchar(255) collate utf8_unicode_ci default NULL,
  `nationality_id` int(11) default NULL,
  `language` varchar(255) collate utf8_unicode_ci default NULL,
  `religion` varchar(255) collate utf8_unicode_ci default NULL,
  `student_category_id` int(11) default NULL,
  `address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `city` varchar(255) collate utf8_unicode_ci default NULL,
  `state` varchar(255) collate utf8_unicode_ci default NULL,
  `pin_code` varchar(255) collate utf8_unicode_ci default NULL,
  `country_id` int(11) default NULL,
  `phone1` varchar(255) collate utf8_unicode_ci default NULL,
  `phone2` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_file_name` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_data` mediumblob,
  `status_description` varchar(255) collate utf8_unicode_ci default NULL,
  `is_active` tinyint(1) default '1',
  `is_deleted` tinyint(1) default '0',
  `immediate_contact_id` int(11) default NULL,
  `is_sms_enabled` tinyint(1) default '1',
  `former_id` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `photo_file_size` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_students`
--

LOCK TABLES `archived_students` WRITE;
/*!40000 ALTER TABLE `archived_students` DISABLE KEYS */;
INSERT INTO `archived_students` VALUES (1,'000001',NULL,'2015-01-30','Muhammad','Aqib','Raees',1,'2010-01-30','m','','karachi',133,'urdu','islam',4,'-','soldier bazar no.2 roshan shah colony HD-3','karachi','sindh','70115',133,'0334-3035642','0310-0012661','zahidmadni786@gmail.com','zahi aqib.png','image/png',NULL,'',0,0,NULL,1,'2','2015-03-27 09:39:36','2015-03-27 09:39:36',18579),(2,'000007',NULL,'2015-02-07','Umair','Ahmed','Khan',1,'2010-02-07','m','B+','Karachi',133,'','',NULL,'','','Karachi','','',133,'','','',NULL,NULL,NULL,'',0,0,NULL,1,'8','2015-03-27 09:40:28','2015-03-27 09:40:28',NULL),(3,'000000',NULL,'2015-01-26','muhammad farhan','farhan','sheikh',1,'2010-01-26','m','A+','karachi',133,'urdu','',1,'dlkajlkj','lkajj','lkajlkj','kajlkj','0000000',133,'3232','225343','',NULL,NULL,NULL,'',0,0,1,1,'1','2015-03-27 09:40:52','2015-03-27 09:40:52',NULL),(4,'000004',NULL,'2015-01-30','ibrahim','khalil','-',1,'1997-11-29','m','','kara',76,'','',NULL,'','','','','',76,'','','',NULL,NULL,NULL,'',0,0,NULL,1,'5','2015-03-27 09:41:52','2015-03-27 09:41:52',NULL),(5,'000005',NULL,'2015-01-30','ibrahim','khalil','-',1,'1997-11-29','m','','karachi',133,'panjabi','islam',3,'baldiya town','house no.300 block B ittihaad town','karachi','sindh','70166',133,'','0313-2645550','zahidmadni786@gmail.com','ibrahim.png','image/png',NULL,'',0,0,5,1,'6','2015-03-27 09:42:08','2015-03-27 09:42:08',19522),(6,'000002',NULL,'2015-01-30','Muhammad','nabeel','',1,'1995-03-17','m','','karachi',133,'urdu','islam',2,'nazimabad','147/11,12','karachi','sindh','70146',133,'','0347-3559501','zahidmadni786@gmail.com','nabeel aslam.png','image/png',NULL,'',0,0,3,1,'3','2015-03-27 09:42:26','2015-03-27 09:42:26',18846),(7,'000003',NULL,'2015-01-30','Muhammad','Muddassir','ashrafi',1,'1998-01-13','m','','karachi',133,'memony','islam',1,'pan mandi','flat no-302 Al-makran centre pan mandi karachi','karachi','sindh','70109',133,'-','0311-2944392','zahidmadni786@gmail.com','muddassir.png','image/png',NULL,'',0,0,4,1,'4','2015-03-27 09:42:56','2015-03-27 09:42:56',21171),(8,'00301',NULL,'2012-08-10','Syed','Affan','Nizami',3,'1992-06-21','m','','karachi',133,'Urdu','islam',3,'plot No. 80(A) flat No.6 near K.M.C park P.I.B colony karachi','','karachi','sindh','20203',133,'','0311-2311191','syed.Affan5811877@gmail.com','20203 syed affan nizami 001.PNG','image/png',NULL,'',0,0,130,1,'132','2012-08-14 05:30:15','2012-08-14 05:30:15',24460),(9,'00302',NULL,'2012-08-10','Muhammad','Ayub','',3,'1992-04-14','m','','karachi',133,'surayki','Islam',1,'R-426 block L north nazimabad karachi','  ','(permanent add) D.G khan','Punjab','20213',133,'','0334-3125319','malikayub319@gmail.com','20213 ayyub 001.PNG','image/png',NULL,'',0,0,131,1,'133','2012-08-14 05:30:16','2012-08-14 05:30:16',30203),(10,'00305',NULL,'2012-08-10','Muhammad','Rizwan','',3,'1991-05-25','m','','karachi',133,'punjabi','Islam',1,'House No. 452 street No.5 sector 32/A Zia colony karachi No.1','','karachi','sindh','20225',133,'','0346-2017501','Malikrizwan353@yahoo.com','20225 rizwan3 001.PNG','image/png',NULL,'',0,0,132,1,'135','2012-08-14 05:30:16','2012-08-14 05:30:16',24568),(11,'00307',NULL,'2012-08-10','Muhammad','Umair','Saif',3,'1989-06-24','m','','lahore',133,'panjabi','Islam',4,'flat No. A-13 plot no. Sb-11, sector 11 .H life Home hats, north karachi','','lahore','punjab','20236',133,'','0345-3024847','Muhammadumair089@gmail.com','20236 umair saif.PNG','image/png',NULL,'',0,0,133,1,'136','2012-08-14 05:30:17','2012-08-14 05:30:17',20802),(12,'00309',NULL,'2012-08-10','Ali','Raza','',3,'1997-12-15','m','','punjab',133,'punjabi','Islam',1,'plot No.16 city railway camp area power house.','','bhawalnagar','punjab','20242',133,'','0334-0036424   and    0301-2458925','','20242 ali raza 001.PNG','image/png',NULL,'',0,0,134,1,'137','2012-08-14 05:30:17','2012-08-14 05:30:17',24706),(13,'00310',NULL,'2012-08-10','Muhammad','Nadeem','Yousuf',3,'1996-12-25','m','','Multan',133,'punjabi','Islam',1,'House No.992 ilyas dawood goth sector 51/C deh rehri korangi. (permanent add)','','multan ','punjab','20246',133,'','0304-3866530','','20246 NADEEM YOUSUF 001.PNG','image/png',NULL,'',0,0,135,1,'138','2012-08-14 05:30:18','2012-08-14 05:30:18',25730),(14,'00312',NULL,'2012-08-10','Daniyal','Khan','',3,'1992-05-20','m','','karachi',133,'urdu','islam',4,'House No. 317 farooq colony behind umer farooq masjid orangi town karachi','','karachi','sindh','20249',133,'','0305-9239834','','20249 DANIYAL 001.PNG','image/png',NULL,'',0,0,136,1,'139','2012-08-14 05:30:18','2012-08-14 05:30:18',23330),(15,'00313',NULL,'2012-08-10','Muhammad','Aslam','Mukhtar',3,'1972-01-01','m','','karachi',133,'urdu','islam',4,'3-F . 7/1 almadeen appartment Flat No.14 nazimabad karachi ','','karachi','sindh','20252',133,'','0344-2082500','','20252 ASLAM MUKHTAR 001.PNG','image/png',NULL,'',0,0,137,1,'140','2012-08-14 05:30:19','2012-08-14 05:30:18',26092),(16,'00317',NULL,'2012-08-10','Muhammad','Adnan','Riaz',3,'1990-12-15','m','B+','bahawalpur (punjab)',133,'surayki','islam',1,'2/1250 reta plot shah faisal colony No.2 karachi','','bhawalpur','punjab','20269',133,'','0333-3116930','Muhammadadnan238@yahoo.com','20269 ADNAN RIAZ 001.PNG','image/png',NULL,'',0,0,138,1,'141','2012-08-14 05:30:19','2012-08-14 05:30:19',26202),(17,'00318',NULL,'2012-08-10','Muhammad','Ahmed','Raza',3,'1997-08-03','m','','khan garh',133,'Sareeki','islam',1,'Busniss society house No.c-5 near gulshan-e-memar karachi','','muzaffar garh','punjab','20270',133,'','0301-3352137','malikahmedraza7253@gmail.com','20270 AHMED RAZA 001.PNG','image/png',NULL,'',0,0,139,1,'142','2012-08-14 05:30:20','2012-08-14 05:30:19',27284),(18,'00320',NULL,'2012-08-10','Rehan','Khan','',3,'1991-10-24','m','','karachi',133,'urdu','Islam',1,'G-59/7 liaqatabad square malir karachi','','karachi','sindh','20275',133,'','0334-0010161','Rkhan8455@gmail.com','20275 rehan khan 001.PNG','image/png',NULL,'',0,0,140,1,'143','2012-08-14 05:30:20','2012-08-14 05:30:20',27614),(19,'00321',NULL,'2012-08-10','Shabbir','Ahmed','Khan',3,'1991-01-25','m','','lahore',133,'urdu','islam',2,'House NO. 553 sector 32/D nasir colony korangi No.1 karachi','','karachi','sindh','20280',133,'','0342-2589979','shabbirkhan922@ymail.com','20280 shabbir ahmed 001.PNG','image/png',NULL,'',0,0,141,1,'144','2012-08-14 05:30:21','2012-08-14 05:30:20',23553),(20,'00323',NULL,'2012-08-10','Master ','Muhammad','Arsalan',3,'1998-02-22','m','O+','karachi',133,'memoni','Islam',1,'House No. 50 Al-mustafa Hospital street Near Faizan-e-Attar masjid block 13D/2 railway society gulshan-e-iqbal karachi','','karachi','sindh','20283',133,'','0336-2197649   0311-2216734','Arsalanattari1@aol.com','20283 master arsalan 001.PNG','image/png',NULL,'',0,0,142,1,'145','2012-08-14 05:30:21','2012-08-14 05:30:21',29191),(21,'00322',NULL,'2012-08-10','Syed','Muhammad Owais','Qadri',3,'1992-09-15','m','','karachi',133,'urdu','islam',2,'plot No. A/208 , road No.6 commercial area landhi karachi','','karachi','sindh','20281',133,'','0342-2115896','','20281 syed owais baboo miyan.PNG','image/png',NULL,'',0,0,144,1,'147','2012-08-14 05:30:22','2012-08-14 05:30:21',22507),(22,'00319',NULL,'2012-08-10','Abrar ','Hussain','',3,'1992-08-02','m','','Abbotabad',133,'Hinko','islam',1,'North nazimabad Block-9','','Abbotabad','khaibar pakhukhaw','20272',133,'','0343-5094665','hafizabrarhussain786@yahoo.com','20272 abrar hussain.PNG','image/png',NULL,'',0,0,145,1,'148','2012-08-14 05:30:22','2012-08-14 05:30:22',25625),(23,'00314',NULL,'2012-08-10','Muhammad','Farhan','Tahir',3,'1995-02-27','m','B+','karachi',133,'urdu','Islam',1,'Pib colony karachi','','karachi','sindh','20254',133,'','0300-2657068','farhan.tahir908@facebook.com','20254 farhan.PNG','image/png',NULL,'',0,0,146,1,'149','2012-08-14 05:30:23','2012-08-14 05:30:22',26570),(24,'00315',NULL,'2012-08-10','Muhammad','Salman','Rafiq',3,'1993-02-26','m','','karachi',133,'gujrati','islam',1,'old haji camp main timber market panjetan building flat No.13 karachi','','karachi','sindh','20255',133,'','0323-2829419','muhammadsalman8611@gmail.com','20255 salman.PNG','image/png',NULL,'',0,0,147,1,'150','2012-08-14 05:30:23','2012-08-14 05:30:23',23887),(25,'00316',NULL,'2012-08-10','Ghulam ','mujtaba','',3,'1996-09-12','m','','karachi',133,'urdu','islam',4,'','','karachi','sindh','20264',133,'','0304-3938438','ghulammujtaba@gmail.com','20264 ata-ul-mujtaba.PNG','image/png',NULL,'',0,0,148,1,'151','2012-08-14 05:30:24','2012-08-14 05:30:23',25784),(26,'00311',NULL,'2012-08-10','Muhammad','Huzaifa','',3,'1996-01-18','m','','karachi',133,'urdu','islam',1,'Haji bagth ali plaza flat no.7 block B karachi','','karachi','sindh','20248',133,'','0321-2157842','huzaifa.sherazi33@gmail.com','20248 huzaifa.PNG','image/png',NULL,'',0,0,149,1,'152','2012-08-14 05:30:24','2012-08-14 05:30:24',26589),(27,'00308',NULL,'2012-08-10','Muhammad ','Sufyan','',3,'1992-01-21','m','','karachi',133,'gujrati','islam',2,'House No.l15/17 godhra colony new karachi sector 11-G','','karachi','sindh','20240',133,'','0345-2828430','','20240 SUFYAN.PNG','image/png',NULL,'',0,0,150,1,'153','2012-08-14 05:30:25','2012-08-14 05:30:24',27839),(28,'00306',NULL,'2012-08-10','Muhammad','Muzzammil','Qadri',3,'1993-06-03','m','','karachi',133,'punjabi','islam',4,'govt quator house No.F-281 patel paara jahangeer road karachi','','karachi','sindh','20227',133,'','0310-2652650','ghulamrasool988@gmail.com','20227 muzzammil qadri.PNG','image/png',NULL,'',0,0,151,1,'154','2012-08-14 05:30:25','2012-08-14 05:30:25',23961),(29,'00303',NULL,'2012-08-10','Muhammad ','Owais ','Raza',3,'1994-08-16','m','O+','karachi',133,'Memoni','Islam',1,'garden west belle view tower, nishtar raod karachi','','karachi','sindh','20215',133,'','0312-2003527','Memon.mk89@gmail.com','20215 owais.PNG','image/png',NULL,'',0,0,152,1,'155','2012-08-14 05:30:26','2012-08-14 05:30:25',27575),(30,'00304',NULL,'2012-08-10','Ahmed','Raza','',3,'1994-11-26','m','','karachi',133,'memoni','islam',1,'garden west belle view tower, nishtar raod karachi','','karachi','sindh','20216',133,'','0312-8902593','100004880333320@facebook.com','20216 ahmed raza.PNG','image/png',NULL,'',0,0,153,1,'156','2012-08-14 05:30:26','2012-08-14 05:30:26',28474),(31,'00351',NULL,'2012-08-13','Rabia ','Batool','',3,'2003-02-27','f','','karachi',133,'punjabi','Islam',1,'Defence view phase 1 street No.3 .B-73 karachi','','karachi','sindh','20301',133,'','0321-2684154','','20301 rabia batool.PNG','image/png',NULL,'',0,0,154,1,'157','2012-08-14 05:30:27','2012-08-14 05:30:26',27484),(32,'00363',NULL,'2012-08-13','Umm-eHabiba','','',3,'1995-07-24','f','','karachi',133,'Sareeki','islam',2,'jama masjid qasabaan soldier bazar no.01 karachi','          (permanent Add)   jamia islamia mehria paharpur dera ismail khan ','karachi','sindh','20232',133,'','0344-1295943','','20323 umm-e-habiba.PNG','image/png',NULL,'',0,0,155,1,'158','2012-08-14 05:30:27','2012-08-14 05:30:27',27754),(33,'00356',NULL,'2012-08-13','Rimsha','Bashir','',3,'1994-08-10','f','','karachi',133,'urdu','islam',4,'House No. L-413 sector 5-A/3 Near High star school North karachi','karachi','karachi','sindh','20307',133,'','0335-0243324','Dr_pharm91@yahoo.com',NULL,NULL,NULL,'',0,0,156,1,'159','2012-08-14 05:30:27','2012-08-14 05:30:27',NULL),(34,'00352',NULL,'2012-08-13','Fareeha','Saeed','',3,'1995-01-10','f','','karachi',133,'punjabi','islam',1,'E7/47 Asif colony karachi','','karachi','sindh','20302',133,'','0313-6862120','','20302 fareeha 001.PNG','image/png',NULL,'',0,0,157,1,'160','2012-08-14 05:30:28','2012-08-14 05:30:28',20149),(35,'00353',NULL,'2012-08-13','Amina','Aslam','',3,'1995-07-14','f','','karachi',133,'urdu','islam',1,'Doli khata iqbal market near gulzar e habib masjid House No.46 karchi','','karachi','sindh','20304',133,'','0310-2241274','','20304 amina aslam 001.PNG','image/png',NULL,'',0,0,158,1,'161','2012-08-14 05:30:28','2012-08-14 05:30:28',27588),(36,'00354',NULL,'2012-08-13','Shumaila','Basharat','',3,'1992-09-12','f','B+','karachi',133,'punjabi','islam',1,'street 3 ground floor rajput tarrace punjab colony karachi','      (permanent add) Street No.2 house No.37 punjab colony karachi','karachi','sindh','20305',133,'','0300-2670923','shumailasultani@gmail.com','20305 shumaila basharat 001.PNG','image/png',NULL,'',0,0,159,1,'162','2012-08-14 05:30:29','2012-08-14 05:30:29',32164),(37,'00355',NULL,'2012-08-13','Erum','Basharat','',3,'1995-05-08','f','B+','karachi',133,'punjabi','Islam',1,'street 3 ground floor rajput tarrace punjab colony karachi','      (permanent add) Street No.2 house No.37 punjab colony karachi','karachi','sindh','20306',133,'','0300-2670923','Erumsultani786@gmail.com','20306 erum basharat 001.PNG','image/png',NULL,'',0,0,160,1,'163','2012-08-14 05:30:29','2012-08-14 05:30:29',29203),(38,'00357',NULL,'2012-08-13','Ayesha','Jawed','',3,'1996-11-24','f','B+','karachi',133,'urdu','Islam',1,'A-12 ayesha garden soldier bazar no.3 britto road karachi','','karachi','sindh','20310',133,'','0313-8173583','Ayeshajawed12@gmail.com','20310 ayesha jawaid 001.PNG','image/png',NULL,'',0,0,161,1,'164','2012-08-14 05:30:30','2012-08-14 05:30:30',17665),(39,'00358',NULL,'2012-08-13','Kanza ','Kanwal','',3,'1992-05-28','f','A+','karachi',133,'urdu','Islam',1,'House No. 29 street No.11 Area 37/A landhi 3 1/2   karachi','','karachi','sindh','20311',133,'','0332-4513351','kanza404@gmail.com','20311 kanza kanwal 001.PNG','image/png',NULL,'',0,0,162,1,'165','2012-08-14 05:30:30','2012-08-14 05:30:30',29076),(40,'00359',NULL,'2012-08-13','Uzma','Gulfam','',3,'1991-10-17','f','','karachi',133,'urdu','islam',1,'6/141  liaqatabad karachi','','karachi','sindh','20312',133,'','0321-2271144','','20312 uzma gulfam 001.PNG','image/png',NULL,'',0,0,163,1,'166','2012-08-14 05:30:31','2012-08-14 05:30:30',22092),(41,'00360',NULL,'2012-08-13','Sakina','Sohail','',3,'1995-11-18','f','B+','karachi',133,'urdu','Islam',1,'Flate No1 caso fawad  mension chandni chowk karachi','','karachi','sindh','20318',133,'','0321-2039756','Mohammadalirazasohail@gmail.com','20318 sakina sohail 001.PNG','image/png',NULL,'',0,0,164,1,'167','2012-08-14 05:30:31','2012-08-14 05:30:31',20104),(42,'00361',NULL,'2012-08-13','Mehrunnisa','','',3,'1992-02-07','f','','karachi',133,'punjabi','islam',4,'House No. F-281 patail paara block 141 karachi','','karachi','sindh','20220',133,'','0301-8945789','ghulamrasool@gmail.com','20320 mehrunnisa.PNG','image/png',NULL,'',0,0,165,1,'168','2012-08-14 05:30:32','2012-08-14 05:30:31',23191),(43,'00362',NULL,'2012-08-13','Misbah ','','',3,'1995-03-20','f','','karachi',133,'punjabi','Islam',4,'House No. F-281 patail paara block 141 karachi','','karachi','sindh','20221',133,'','0301-2698771','ghulamrasool988@gmail.com','20321 misbah ghulam rasool 001.PNG','image/png',NULL,'',0,0,166,1,'169','2012-08-14 05:30:32','2012-08-14 05:30:32',30128),(44,'00364',NULL,'2012-08-13','Sakina','Rahim-uddin','',3,'1992-09-29','f','','karachi',133,'urdu','islam',1,'Doli khata iqbal market near gulzar e habib masjid House No.46 karchi','','karachi','sindh','20325',133,'','0321-2704092','','20325 sakina rahim 001.PNG','image/png',NULL,'',0,0,167,1,'170','2012-08-14 05:30:33','2012-08-14 05:30:32',18829),(45,'00365',NULL,'2012-08-13','ayesha','Nasir','',3,'1995-10-20','f','B+','karachi',133,'urdu','islam',1,'B-23 row-T block-1 ghulshan-e-kaneez fatima karachi','','karchi','sindh','20334',133,'','0333-2145017','ayeshanasirygyane@gmail.com','20334 ayesha nasir 001.PNG','image/png',NULL,'',0,0,168,1,'171','2012-08-14 05:30:33','2012-08-14 05:30:33',19615),(46,'00366',NULL,'2012-08-13','Mehwish','Ashraf','',3,'1993-08-04','f','','karachi',133,'gujrati','islam',1,'Ana castle flat No.606 garden west karachi','','karachi','sindh','20336',133,'','0311-2586220','','20336 mehwish ashraf 001.PNG','image/png',NULL,'',0,0,169,1,'172','2012-08-14 05:30:34','2012-08-14 05:30:33',28045),(47,'00367',NULL,'2012-08-13','Rubina','Abdul','Nabi',3,'1998-06-01','f','','ghotki',133,'sindh','islam',1,'9/1 3rd street zam zama deffence phase 5 karachi','          (permanent Add)  soomro colony khanpur meher dist ghotki','karachi','sindh','20339',133,'','0302-3369240','','20339 rubaina abdul  nabi 001.PNG','image/png',NULL,'',0,0,170,1,'173','2012-08-14 05:30:34','2012-08-14 05:30:34',23650);
/*!40000 ALTER TABLE `archived_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_scores`
--

DROP TABLE IF EXISTS `assessment_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessment_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `grade_points` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `exam_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `descriptive_indicator_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `score_index` (`student_id`,`batch_id`,`descriptive_indicator_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_scores`
--

LOCK TABLES `assessment_scores` WRITE;
/*!40000 ALTER TABLE `assessment_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessment_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `amount` int(11) default NULL,
  `is_inactive` tinyint(1) default '0',
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendances` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `period_table_entry_id` int(11) default NULL,
  `forenoon` tinyint(1) default '0',
  `afternoon` tinyint(1) default '0',
  `reason` varchar(255) collate utf8_unicode_ci default NULL,
  `month_date` date default NULL,
  `batch_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_attendances_on_month_date_and_batch_id` (`month_date`,`batch_id`),
  KEY `index_attendances_on_student_id_and_batch_id` (`student_id`,`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` VALUES (1,1,NULL,1,1,'fever','2015-01-27',1);
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_fields`
--

DROP TABLE IF EXISTS `bank_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_fields`
--

LOCK TABLES `bank_fields` WRITE;
/*!40000 ALTER TABLE `bank_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_events`
--

DROP TABLE IF EXISTS `batch_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_events` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_batch_events_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_events`
--

LOCK TABLES `batch_events` WRITE;
/*!40000 ALTER TABLE `batch_events` DISABLE KEYS */;
INSERT INTO `batch_events` VALUES (1,1,1,'2015-02-07 07:09:30','2015-02-07 07:09:30'),(2,2,1,'2015-02-07 07:21:12','2015-02-07 07:21:12'),(3,3,1,'2015-02-07 07:25:41','2015-02-07 07:25:41'),(4,4,1,'2015-02-07 07:26:38','2015-02-07 07:26:38');
/*!40000 ALTER TABLE `batch_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_groups`
--

DROP TABLE IF EXISTS `batch_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_groups` (
  `id` int(11) NOT NULL auto_increment,
  `course_id` int(11) default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_groups`
--

LOCK TABLES `batch_groups` WRITE;
/*!40000 ALTER TABLE `batch_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_students`
--

DROP TABLE IF EXISTS `batch_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_students` (
  `student_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  KEY `index_batch_students_on_batch_id_and_student_id` (`batch_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_students`
--

LOCK TABLES `batch_students` WRITE;
/*!40000 ALTER TABLE `batch_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batches` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `course_id` int(11) default NULL,
  `start_date` datetime default NULL,
  `end_date` datetime default NULL,
  `is_active` tinyint(1) default '1',
  `is_deleted` tinyint(1) default '0',
  `employee_id` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_batches_on_is_deleted_and_is_active_and_course_id_and_name` (`is_deleted`,`is_active`,`course_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batches`
--

LOCK TABLES `batches` WRITE;
/*!40000 ALTER TABLE `batches` DISABLE KEYS */;
INSERT INTO `batches` VALUES (1,'First Year M',1,'2015-01-26 00:00:00','2016-01-26 00:00:00',1,0,NULL),(2,'Second Year M',1,'2015-02-07 00:00:00','2016-02-07 00:00:00',1,0,NULL),(3,'Third Year M',1,'2015-02-07 00:00:00','2016-02-07 00:00:00',0,0,NULL),(4,'4th year',2,'2012-08-14 00:00:00','2013-08-14 00:00:00',1,0,NULL);
/*!40000 ALTER TABLE `batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_exam_categories`
--

DROP TABLE IF EXISTS `cce_exam_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cce_exam_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cce_exam_categories`
--

LOCK TABLES `cce_exam_categories` WRITE;
/*!40000 ALTER TABLE `cce_exam_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_exam_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_grade_sets`
--

DROP TABLE IF EXISTS `cce_grade_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cce_grade_sets` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cce_grade_sets`
--

LOCK TABLES `cce_grade_sets` WRITE;
/*!40000 ALTER TABLE `cce_grade_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_grade_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_grades`
--

DROP TABLE IF EXISTS `cce_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cce_grades` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `grade_point` float default NULL,
  `cce_grade_set_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_cce_grades_on_cce_grade_set_id` (`cce_grade_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cce_grades`
--

LOCK TABLES `cce_grades` WRITE;
/*!40000 ALTER TABLE `cce_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_reports`
--

DROP TABLE IF EXISTS `cce_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cce_reports` (
  `id` int(11) NOT NULL auto_increment,
  `observable_id` int(11) default NULL,
  `observable_type` varchar(255) collate utf8_unicode_ci default NULL,
  `student_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `grade_string` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `exam_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `cce_report_join_index` (`observable_id`,`student_id`,`batch_id`,`exam_id`,`observable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cce_reports`
--

LOCK TABLES `cce_reports` WRITE;
/*!40000 ALTER TABLE `cce_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_weightages`
--

DROP TABLE IF EXISTS `cce_weightages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cce_weightages` (
  `id` int(11) NOT NULL auto_increment,
  `weightage` int(11) default NULL,
  `criteria_type` varchar(255) collate utf8_unicode_ci default NULL,
  `cce_exam_category_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cce_weightages`
--

LOCK TABLES `cce_weightages` WRITE;
/*!40000 ALTER TABLE `cce_weightages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_weightages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_weightages_courses`
--

DROP TABLE IF EXISTS `cce_weightages_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cce_weightages_courses` (
  `cce_weightage_id` int(11) default NULL,
  `course_id` int(11) default NULL,
  KEY `index_cce_weightages_courses_on_cce_weightage_id` (`cce_weightage_id`),
  KEY `index_cce_weightages_courses_on_course_id` (`course_id`),
  KEY `index_for_join_table_cce_weightage_courses` (`course_id`,`cce_weightage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cce_weightages_courses`
--

LOCK TABLES `cce_weightages_courses` WRITE;
/*!40000 ALTER TABLE `cce_weightages_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_weightages_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_designations`
--

DROP TABLE IF EXISTS `class_designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_designations` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `cgpa` decimal(15,2) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `marks` decimal(15,2) default NULL,
  `course_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_designations`
--

LOCK TABLES `class_designations` WRITE;
/*!40000 ALTER TABLE `class_designations` DISABLE KEYS */;
INSERT INTO `class_designations` VALUES (1,'DN 4th year',NULL,'2012-08-14 05:28:42','2012-08-14 05:28:42','90.00',1);
/*!40000 ALTER TABLE `class_designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_timings`
--

DROP TABLE IF EXISTS `class_timings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_timings` (
  `id` int(11) NOT NULL auto_increment,
  `batch_id` int(11) default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `start_time` time default NULL,
  `end_time` time default NULL,
  `is_break` tinyint(1) default NULL,
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `index_class_timings_on_batch_id_and_start_time_and_end_time` (`batch_id`,`start_time`,`end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_timings`
--

LOCK TABLES `class_timings` WRITE;
/*!40000 ALTER TABLE `class_timings` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_timings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations` (
  `id` int(11) NOT NULL auto_increment,
  `config_key` varchar(255) collate utf8_unicode_ci default NULL,
  `config_value` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_configurations_on_config_key` (`config_key`(10)),
  KEY `index_configurations_on_config_value` (`config_value`(10))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,'InstitutionName',' Al Furqan Scholars Academy'),(2,'InstitutionAddress',''),(3,'InstitutionPhoneNo',''),(4,'StudentAttendanceType','Daily'),(5,'CurrencyType','PKR'),(6,'Locale','en'),(7,'AdmissionNumberAutoIncrement','1'),(8,'EmployeeNumberAutoIncrement','1'),(9,'TotalSmsCount','0'),(10,'NetworkState','Offline'),(11,'FinancialYearStartDate','2015-01-11'),(12,'FinancialYearEndDate','2016-01-11'),(13,'AutomaticLeaveReset','0'),(14,'LeaveResetPeriod','4'),(15,'LastAutoLeaveReset',NULL),(16,'GPA','0'),(17,'CWA','0'),(18,'CCE','1'),(19,'DefaultCountry','133'),(20,'AvailableModules','HR'),(21,'AvailableModules','Finance'),(22,'TimeZone','8'),(23,'EnableNewsCommentModeration','1');
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),(4,'Andorra'),(5,'Angola'),(6,'Antigua & Deps'),(7,'Argentina'),(8,'Armenia'),(9,'Australia'),(10,'Austria'),(11,'Azerbaijan'),(12,'Bahamas'),(13,'Bahrain'),(14,'Bangladesh'),(15,'Barbados'),(16,'Belarus'),(17,'Belgium'),(18,'Belize'),(19,'Benin'),(20,'Bhutan'),(21,'Bolivia'),(22,'Bosnia Herzegovina'),(23,'Botswana'),(24,'Brazil'),(25,'Brunei'),(26,'Bulgaria'),(27,'Burkina'),(28,'Burundi'),(29,'Cambodia'),(30,'Cameroon'),(31,'Canada'),(32,'Cape Verde'),(33,'Central African Rep'),(34,'Chad'),(35,'Chile'),(36,'China'),(37,'Colombia'),(38,'Comoros'),(39,'Congo'),(40,'Congo {Democratic Rep}'),(41,'Costa Rica'),(42,'Croatia'),(43,'Cuba'),(44,'Cyprus'),(45,'Czech Republic'),(46,'Denmark'),(47,'Djibouti'),(48,'Dominica'),(49,'Dominican Republic'),(50,'East Timor'),(51,'Ecuador'),(52,'Egypt'),(53,'El Salvador'),(54,'Equatorial Guinea'),(55,'Eritrea'),(56,'Estonia'),(57,'Ethiopia'),(58,'Fiji'),(59,'Finland'),(60,'France'),(61,'Gabon'),(62,'Gambia'),(63,'Georgia'),(64,'Germany'),(65,'Ghana'),(66,'Greece'),(67,'Grenada'),(68,'Guatemala'),(69,'Guinea'),(70,'Guinea-Bissau'),(71,'Guyana'),(72,'Haiti'),(73,'Honduras'),(74,'Hungary'),(75,'Iceland'),(76,'India'),(77,'Indonesia'),(78,'Iran'),(79,'Iraq'),(80,'Ireland {Republic}'),(81,'Israel'),(82,'Italy'),(83,'Ivory Coast'),(84,'Jamaica'),(85,'Japan'),(86,'Jordan'),(87,'Kazakhstan'),(88,'Kenya'),(89,'Kiribati'),(90,'Korea North'),(91,'Korea South'),(92,'Kosovo'),(93,'Kuwait'),(94,'Kyrgyzstan'),(95,'Laos'),(96,'Latvia'),(97,'Lebanon'),(98,'Lesotho'),(99,'Liberia'),(100,'Libya'),(101,'Liechtenstein'),(102,'Lithuania'),(103,'Luxembourg'),(104,'Macedonia'),(105,'Madagascar'),(106,'Malawi'),(107,'Malaysia'),(108,'Maldives'),(109,'Mali'),(110,'Malta'),(111,'Montenegro'),(112,'Marshall Islands'),(113,'Mauritania'),(114,'Mauritius'),(115,'Mexico'),(116,'Micronesia'),(117,'Moldova'),(118,'Monaco'),(119,'Mongolia'),(120,'Morocco'),(121,'Mozambique'),(122,'Myanmar, {Burma}'),(123,'Namibia'),(124,'Nauru'),(125,'Nepal'),(126,'Netherlands'),(127,'New Zealand'),(128,'Nicaragua'),(129,'Niger'),(130,'Nigeria'),(131,'Norway'),(132,'Oman'),(133,'Pakistan'),(134,'Palau'),(135,'Panama'),(136,'Papua New Guinea'),(137,'Paraguay'),(138,'Peru'),(139,'Philippines'),(140,'Poland'),(141,'Portugal'),(142,'Qatar'),(143,'Romania'),(144,'Russian Federation'),(145,'Rwanda'),(146,'St Kitts & Nevis'),(147,'St Lucia'),(148,'Saint Vincent & the Grenadines'),(149,'Samoa'),(150,'San Marino'),(151,'Sao Tome & Principe'),(152,'Saudi Arabia'),(153,'Senegal'),(154,'Serbia'),(155,'Seychelles'),(156,'Sierra Leone'),(157,'Singapore'),(158,'Slovakia'),(159,'Slovenia'),(160,'Solomon Islands'),(161,'Somalia'),(162,'South Africa'),(163,'Spain'),(164,'Sri Lanka'),(165,'Sudan'),(166,'Suriname'),(167,'Swaziland'),(168,'Sweden'),(169,'Switzerland'),(170,'Syria'),(171,'Taiwan'),(172,'Tajikistan'),(173,'Tanzania'),(174,'Thailand'),(175,'Togo'),(176,'Tonga'),(177,'Trinidad & Tobago'),(178,'Tunisia'),(179,'Turkey'),(180,'Turkmenistan'),(181,'Tuvalu'),(182,'Uganda'),(183,'Ukraine'),(184,'United Arab Emirates'),(185,'United Kingdom'),(186,'United States'),(187,'Uruguay'),(188,'Uzbekistan'),(189,'Vanuatu'),(190,'Vatican City'),(191,'Venezuea'),(192,'Vietnam'),(193,'Yemen'),(194,'Zambia'),(195,'Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL auto_increment,
  `course_name` varchar(255) collate utf8_unicode_ci default NULL,
  `code` varchar(255) collate utf8_unicode_ci default NULL,
  `section_name` varchar(255) collate utf8_unicode_ci default NULL,
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `grading_type` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_courses_on_grading_type` (`grading_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Dars-e-Nizami','DN','',0,'2015-01-26 06:13:10','2015-02-07 06:32:40','0'),(2,'4th Year (morning)','0000','',0,'2012-08-14 06:00:23','2012-08-14 06:00:23','0');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_observation_groups`
--

DROP TABLE IF EXISTS `courses_observation_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_observation_groups` (
  `course_id` int(11) default NULL,
  `observation_group_id` int(11) default NULL,
  KEY `index_courses_observation_groups_on_observation_group_id` (`observation_group_id`),
  KEY `index_courses_observation_groups_on_course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_observation_groups`
--

LOCK TABLES `courses_observation_groups` WRITE;
/*!40000 ALTER TABLE `courses_observation_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_observation_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL auto_increment,
  `priority` int(11) default '0',
  `attempts` int(11) default '0',
  `handler` text collate utf8_unicode_ci,
  `last_error` text collate utf8_unicode_ci,
  `run_at` datetime default NULL,
  `locked_at` datetime default NULL,
  `failed_at` datetime default NULL,
  `locked_by` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_delayed_jobs_on_locked_by` (`locked_by`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
INSERT INTO `delayed_jobs` VALUES (1,0,0,'--- !ruby/object:DelayedReminderJob \nbody: |-\n  <p><b>Fee submission date for <i>Fees</i> has been published </b>\n                \n   \n    Start Date : 2015-02-01 \n   End Date :2015-02-01 \n    Due Date :2015-02-01 \n   \n   \n    check your  Fee structure\nmessage: \nrecipient_ids: \n- 3\n- 5\n- 6\n- 8\n- 10\n- 11\n- 13\n- 14\nsender_id: 1\nsubject: Fees submission date\n',NULL,'2015-02-07 07:09:30',NULL,NULL,NULL,'2015-02-07 07:09:30','2015-02-07 07:09:30'),(2,0,0,'--- !ruby/object:DelayedReminderJob \nbody: |-\n  <p><b>Fee submission date for <i>Fees</i> has been published </b>\n                \n   \n    Start Date : 2015-02-07 \n   End Date :2015-02-07 \n    Due Date :2015-02-07 \n   \n   \n    check your  Fee structure\nmessage: \nrecipient_ids: \n- 3\n- 5\n- 6\n- 8\n- 10\n- 11\n- 13\n- 14\nsender_id: 1\nsubject: Fees submission date\n',NULL,'2015-02-07 07:21:12',NULL,NULL,NULL,'2015-02-07 07:21:12','2015-02-07 07:21:12'),(3,0,0,'--- !ruby/object:DelayedReminderJob \nbody: |-\n  <p><b>Fee submission date for <i>Fees</i> has been published </b>\n                \n   \n    Start Date : 2015-02-01 \n   End Date :2015-02-01 \n    Due Date :2015-02-10 \n   \n   \n    check your  Fee structure\nmessage: \nrecipient_ids: \n- 3\n- 5\n- 6\n- 8\n- 10\n- 11\n- 13\n- 14\nsender_id: 1\nsubject: Fees submission date\n',NULL,'2015-02-07 07:25:41',NULL,NULL,NULL,'2015-02-07 07:25:41','2015-02-07 07:25:41'),(4,0,0,'--- !ruby/object:DelayedReminderJob \nbody: |-\n  <p><b>Fee submission date for <i>Fees</i> has been published </b>\n                \n   \n    Start Date : 2015-03-01 \n   End Date :2015-03-01 \n    Due Date :2015-03-10 \n   \n   \n    check your  Fee structure\nmessage: \nrecipient_ids: \n- 3\n- 5\n- 6\n- 8\n- 10\n- 11\n- 13\n- 14\nsender_id: 1\nsubject: Fees submission date\n',NULL,'2015-02-07 07:26:38',NULL,NULL,NULL,'2015-02-07 07:26:38','2015-02-07 07:26:38');
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descriptive_indicators`
--

DROP TABLE IF EXISTS `descriptive_indicators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descriptive_indicators` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` varchar(255) collate utf8_unicode_ci default NULL,
  `describable_id` int(11) default NULL,
  `describable_type` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `sort_order` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `describable_index` (`describable_id`,`describable_type`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptive_indicators`
--

LOCK TABLES `descriptive_indicators` WRITE;
/*!40000 ALTER TABLE `descriptive_indicators` DISABLE KEYS */;
/*!40000 ALTER TABLE `descriptive_indicators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elective_groups`
--

DROP TABLE IF EXISTS `elective_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elective_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elective_groups`
--

LOCK TABLES `elective_groups` WRITE;
/*!40000 ALTER TABLE `elective_groups` DISABLE KEYS */;
INSERT INTO `elective_groups` VALUES (1,'4th Year',3,0,'2012-08-14 05:17:30','2012-08-14 05:17:30');
/*!40000 ALTER TABLE `elective_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electives`
--

DROP TABLE IF EXISTS `electives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `electives` (
  `id` int(11) NOT NULL auto_increment,
  `elective_group_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electives`
--

LOCK TABLES `electives` WRITE;
/*!40000 ALTER TABLE `electives` DISABLE KEYS */;
/*!40000 ALTER TABLE `electives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_additional_details`
--

DROP TABLE IF EXISTS `employee_additional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_additional_details` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `additional_field_id` int(11) default NULL,
  `additional_info` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_additional_details`
--

LOCK TABLES `employee_additional_details` WRITE;
/*!40000 ALTER TABLE `employee_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_attendances`
--

DROP TABLE IF EXISTS `employee_attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_attendances` (
  `id` int(11) NOT NULL auto_increment,
  `attendance_date` date default NULL,
  `employee_id` int(11) default NULL,
  `employee_leave_type_id` int(11) default NULL,
  `reason` varchar(255) collate utf8_unicode_ci default NULL,
  `is_half_day` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attendances`
--

LOCK TABLES `employee_attendances` WRITE;
/*!40000 ALTER TABLE `employee_attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_bank_details`
--

DROP TABLE IF EXISTS `employee_bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_bank_details` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `bank_field_id` int(11) default NULL,
  `bank_info` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_bank_details`
--

LOCK TABLES `employee_bank_details` WRITE;
/*!40000 ALTER TABLE `employee_bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_categories`
--

DROP TABLE IF EXISTS `employee_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `prefix` varchar(255) collate utf8_unicode_ci default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_categories`
--

LOCK TABLES `employee_categories` WRITE;
/*!40000 ALTER TABLE `employee_categories` DISABLE KEYS */;
INSERT INTO `employee_categories` VALUES (1,'System Admin','Admin',1);
/*!40000 ALTER TABLE `employee_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_department_events`
--

DROP TABLE IF EXISTS `employee_department_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_department_events` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) default NULL,
  `employee_department_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_department_events`
--

LOCK TABLES `employee_department_events` WRITE;
/*!40000 ALTER TABLE `employee_department_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_department_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_departments`
--

DROP TABLE IF EXISTS `employee_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_departments` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(255) collate utf8_unicode_ci default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_departments`
--

LOCK TABLES `employee_departments` WRITE;
/*!40000 ALTER TABLE `employee_departments` DISABLE KEYS */;
INSERT INTO `employee_departments` VALUES (1,'Admin','System Admin',1);
/*!40000 ALTER TABLE `employee_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_grades`
--

DROP TABLE IF EXISTS `employee_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_grades` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `priority` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `max_hours_day` int(11) default NULL,
  `max_hours_week` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_grades`
--

LOCK TABLES `employee_grades` WRITE;
/*!40000 ALTER TABLE `employee_grades` DISABLE KEYS */;
INSERT INTO `employee_grades` VALUES (1,'System Admin',0,1,NULL,NULL);
/*!40000 ALTER TABLE `employee_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leave_types`
--

DROP TABLE IF EXISTS `employee_leave_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_leave_types` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `code` varchar(255) collate utf8_unicode_ci default NULL,
  `status` tinyint(1) default NULL,
  `max_leave_count` varchar(255) collate utf8_unicode_ci default NULL,
  `carry_forward` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_leave_types`
--

LOCK TABLES `employee_leave_types` WRITE;
/*!40000 ALTER TABLE `employee_leave_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_leave_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leaves`
--

DROP TABLE IF EXISTS `employee_leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_leaves` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `employee_leave_type_id` int(11) default NULL,
  `leave_count` decimal(5,1) default '0.0',
  `leave_taken` decimal(5,1) default '0.0',
  `reset_date` date default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_leaves`
--

LOCK TABLES `employee_leaves` WRITE;
/*!40000 ALTER TABLE `employee_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_positions`
--

DROP TABLE IF EXISTS `employee_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_positions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `employee_category_id` int(11) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_positions`
--

LOCK TABLES `employee_positions` WRITE;
/*!40000 ALTER TABLE `employee_positions` DISABLE KEYS */;
INSERT INTO `employee_positions` VALUES (1,'System Admin',1,1);
/*!40000 ALTER TABLE `employee_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_salary_structures`
--

DROP TABLE IF EXISTS `employee_salary_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_salary_structures` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `payroll_category_id` int(11) default NULL,
  `amount` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_salary_structures`
--

LOCK TABLES `employee_salary_structures` WRITE;
/*!40000 ALTER TABLE `employee_salary_structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_salary_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL auto_increment,
  `employee_category_id` int(11) default NULL,
  `employee_number` varchar(255) collate utf8_unicode_ci default NULL,
  `joining_date` date default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `middle_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `gender` tinyint(1) default NULL,
  `job_title` varchar(255) collate utf8_unicode_ci default NULL,
  `employee_position_id` int(11) default NULL,
  `employee_department_id` int(11) default NULL,
  `reporting_manager_id` int(11) default NULL,
  `employee_grade_id` int(11) default NULL,
  `qualification` varchar(255) collate utf8_unicode_ci default NULL,
  `experience_detail` text collate utf8_unicode_ci,
  `experience_year` int(11) default NULL,
  `experience_month` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `status_description` varchar(255) collate utf8_unicode_ci default NULL,
  `date_of_birth` date default NULL,
  `marital_status` varchar(255) collate utf8_unicode_ci default NULL,
  `children_count` int(11) default NULL,
  `father_name` varchar(255) collate utf8_unicode_ci default NULL,
  `mother_name` varchar(255) collate utf8_unicode_ci default NULL,
  `husband_name` varchar(255) collate utf8_unicode_ci default NULL,
  `blood_group` varchar(255) collate utf8_unicode_ci default NULL,
  `nationality_id` int(11) default NULL,
  `home_address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `home_address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `home_city` varchar(255) collate utf8_unicode_ci default NULL,
  `home_state` varchar(255) collate utf8_unicode_ci default NULL,
  `home_country_id` int(11) default NULL,
  `home_pin_code` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `office_city` varchar(255) collate utf8_unicode_ci default NULL,
  `office_state` varchar(255) collate utf8_unicode_ci default NULL,
  `office_country_id` int(11) default NULL,
  `office_pin_code` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone2` varchar(255) collate utf8_unicode_ci default NULL,
  `mobile_phone` varchar(255) collate utf8_unicode_ci default NULL,
  `home_phone` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `fax` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_file_name` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_data` mediumblob,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `photo_file_size` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_employees_on_employee_number` (`employee_number`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,1,'admin','2015-01-11','Admin',NULL,'User',NULL,NULL,1,1,NULL,1,NULL,NULL,NULL,NULL,1,NULL,'2014-01-11',NULL,NULL,NULL,NULL,NULL,NULL,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'noreply@fedena.com',NULL,NULL,NULL,NULL,'2015-01-10 22:10:01','2015-01-10 22:10:01',NULL,1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_subjects`
--

DROP TABLE IF EXISTS `employees_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees_subjects` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_employees_subjects_on_subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_subjects`
--

LOCK TABLES `employees_subjects` WRITE;
/*!40000 ALTER TABLE `employees_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  `start_date` datetime default NULL,
  `end_date` datetime default NULL,
  `is_common` tinyint(1) default '0',
  `is_holiday` tinyint(1) default '0',
  `is_exam` tinyint(1) default '0',
  `is_due` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `origin_id` int(11) default NULL,
  `origin_type` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_events_on_is_common_and_is_holiday_and_is_exam` (`is_common`,`is_holiday`,`is_exam`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Fees Due','Fees','2015-02-01 00:00:00','2015-02-01 00:00:00',0,0,0,1,'2015-02-07 07:09:30','2015-02-07 07:09:30',1,'FinanceFeeCollection'),(2,'Fees Due','Fees','2015-02-07 00:00:00','2015-02-07 00:00:00',0,0,0,1,'2015-02-07 07:21:12','2015-02-07 07:21:12',2,'FinanceFeeCollection'),(3,'Fees Due','February Fees','2015-02-10 00:00:00','2015-02-10 00:00:00',0,0,0,1,'2015-02-07 07:25:41','2015-02-07 07:25:41',3,'FinanceFeeCollection'),(4,'Fees Due','March Fees','2015-03-10 00:00:00','2015-03-10 00:00:00',0,0,0,1,'2015-02-07 07:26:38','2015-02-07 07:26:38',4,'FinanceFeeCollection');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_groups`
--

DROP TABLE IF EXISTS `exam_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `exam_type` varchar(255) collate utf8_unicode_ci default NULL,
  `is_published` tinyint(1) default '0',
  `result_published` tinyint(1) default '0',
  `exam_date` date default NULL,
  `is_final_exam` tinyint(1) NOT NULL default '0',
  `cce_exam_category_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_groups`
--

LOCK TABLES `exam_groups` WRITE;
/*!40000 ALTER TABLE `exam_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_scores`
--

DROP TABLE IF EXISTS `exam_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `exam_id` int(11) default NULL,
  `marks` decimal(7,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `remarks` varchar(255) collate utf8_unicode_ci default NULL,
  `is_failed` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_scores`
--

LOCK TABLES `exam_scores` WRITE;
/*!40000 ALTER TABLE `exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL auto_increment,
  `exam_group_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `maximum_marks` decimal(10,2) default NULL,
  `minimum_marks` decimal(10,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `weightage` int(11) default '0',
  `event_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_exams_on_exam_group_id_and_subject_id` (`exam_group_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_criterias`
--

DROP TABLE IF EXISTS `fa_criterias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_criterias` (
  `id` int(11) NOT NULL auto_increment,
  `fa_name` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` varchar(255) collate utf8_unicode_ci default NULL,
  `fa_group_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `sort_order` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `index_fa_criterias_on_fa_group_id` (`fa_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_criterias`
--

LOCK TABLES `fa_criterias` WRITE;
/*!40000 ALTER TABLE `fa_criterias` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_criterias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_groups`
--

DROP TABLE IF EXISTS `fa_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` text collate utf8_unicode_ci,
  `cce_exam_category_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `cce_grade_set_id` int(11) default NULL,
  `max_marks` float default '100',
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_groups`
--

LOCK TABLES `fa_groups` WRITE;
/*!40000 ALTER TABLE `fa_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_groups_subjects`
--

DROP TABLE IF EXISTS `fa_groups_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_groups_subjects` (
  `subject_id` int(11) default NULL,
  `fa_group_id` int(11) default NULL,
  KEY `index_fa_groups_subjects_on_subject_id` (`subject_id`),
  KEY `index_fa_groups_subjects_on_fa_group_id` (`fa_group_id`),
  KEY `score_index` (`fa_group_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_groups_subjects`
--

LOCK TABLES `fa_groups_subjects` WRITE;
/*!40000 ALTER TABLE `fa_groups_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_groups_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_collection_discounts`
--

DROP TABLE IF EXISTS `fee_collection_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_collection_discounts` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(255) collate utf8_unicode_ci default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `receiver_id` int(11) default NULL,
  `finance_fee_collection_id` int(11) default NULL,
  `discount` decimal(15,2) default NULL,
  `is_amount` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_collection_discounts`
--

LOCK TABLES `fee_collection_discounts` WRITE;
/*!40000 ALTER TABLE `fee_collection_discounts` DISABLE KEYS */;
INSERT INTO `fee_collection_discounts` VALUES (1,'StudentFeeCollectionDiscount','Student Discount',8,1,'100.00',0,'2015-02-07 07:09:30','2015-02-07 07:09:30'),(2,'StudentFeeCollectionDiscount','Student Discount',8,2,'100.00',0,'2015-02-07 07:21:11','2015-02-07 07:21:11'),(3,'StudentFeeCollectionDiscount','Student Discount',8,3,'100.00',0,'2015-02-07 07:25:41','2015-02-07 07:25:41'),(4,'StudentFeeCollectionDiscount','Student Discount',8,4,'100.00',0,'2015-02-07 07:26:37','2015-02-07 07:26:37');
/*!40000 ALTER TABLE `fee_collection_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_collection_particulars`
--

DROP TABLE IF EXISTS `fee_collection_particulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_collection_particulars` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `amount` decimal(12,2) default NULL,
  `finance_fee_collection_id` int(11) default NULL,
  `student_category_id` int(11) default NULL,
  `admission_no` varchar(255) collate utf8_unicode_ci default NULL,
  `student_id` int(11) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_collection_particulars`
--

LOCK TABLES `fee_collection_particulars` WRITE;
/*!40000 ALTER TABLE `fee_collection_particulars` DISABLE KEYS */;
INSERT INTO `fee_collection_particulars` VALUES (1,'Fees','','1000.00',1,NULL,NULL,NULL,0,'2015-02-07 07:01:18','2015-02-07 07:01:18'),(2,'Admission Fees','','600.00',1,NULL,NULL,NULL,0,'2015-02-07 07:02:41','2015-02-07 07:02:41'),(3,'Re-Admission Fees','','100.00',1,NULL,NULL,NULL,0,'2015-02-07 07:04:18','2015-02-07 07:04:18'),(4,'Fees','','1000.00',2,NULL,NULL,NULL,0,'2015-02-07 07:01:18','2015-02-07 07:01:18'),(5,'Fees','','1000.00',3,NULL,NULL,NULL,0,'2015-02-07 07:01:18','2015-02-07 07:01:18'),(6,'Fees','','1000.00',4,NULL,NULL,NULL,0,'2015-02-07 07:01:18','2015-02-07 07:01:18');
/*!40000 ALTER TABLE `fee_collection_particulars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_discounts`
--

DROP TABLE IF EXISTS `fee_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_discounts` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(255) collate utf8_unicode_ci default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `receiver_id` int(11) default NULL,
  `finance_fee_category_id` int(11) default NULL,
  `discount` decimal(15,2) default NULL,
  `is_amount` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_discounts`
--

LOCK TABLES `fee_discounts` WRITE;
/*!40000 ALTER TABLE `fee_discounts` DISABLE KEYS */;
INSERT INTO `fee_discounts` VALUES (1,'StudentFeeDiscount','Student Discount',8,1,'100.00',0);
/*!40000 ALTER TABLE `fee_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_donations`
--

DROP TABLE IF EXISTS `finance_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_donations` (
  `id` int(11) NOT NULL auto_increment,
  `donor` varchar(255) collate utf8_unicode_ci default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  `amount` decimal(15,2) default NULL,
  `transaction_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `transaction_date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_donations`
--

LOCK TABLES `finance_donations` WRITE;
/*!40000 ALTER TABLE `finance_donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_categories`
--

DROP TABLE IF EXISTS `finance_fee_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fee_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `batch_id` int(11) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  `is_master` tinyint(1) NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fee_categories`
--

LOCK TABLES `finance_fee_categories` WRITE;
/*!40000 ALTER TABLE `finance_fee_categories` DISABLE KEYS */;
INSERT INTO `finance_fee_categories` VALUES (1,'Fees','Total Fees',1,0,1,'2015-02-07 07:00:39','2015-02-07 07:00:39'),(2,'Fees','Total Fees',2,0,1,'2015-02-07 07:00:39','2015-02-07 07:00:39'),(3,'Fees','Total Fees',3,0,1,'2015-02-07 07:00:39','2015-02-07 07:00:39'),(4,'Admission Fees','One time admission fees',1,0,1,'2015-02-07 07:14:31','2015-02-07 07:14:31'),(5,'Admission Fees','One time admission fees',2,0,1,'2015-02-07 07:14:31','2015-02-07 07:14:31'),(6,'Admission Fees','One time admission fees',3,0,1,'2015-02-07 07:14:31','2015-02-07 07:14:31'),(7,'Re-Admission Fees','Admission Fess after admission cancel',1,0,1,'2015-02-07 07:17:01','2015-02-07 07:17:01'),(8,'Re-Admission Fees','Admission Fess after admission cancel',2,0,1,'2015-02-07 07:17:01','2015-02-07 07:17:01'),(9,'Re-Admission Fees','Admission Fess after admission cancel',3,0,1,'2015-02-07 07:17:01','2015-02-07 07:17:01');
/*!40000 ALTER TABLE `finance_fee_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_collections`
--

DROP TABLE IF EXISTS `finance_fee_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fee_collections` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `due_date` date default NULL,
  `fee_category_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `index_finance_fee_collections_on_fee_category_id` (`fee_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fee_collections`
--

LOCK TABLES `finance_fee_collections` WRITE;
/*!40000 ALTER TABLE `finance_fee_collections` DISABLE KEYS */;
INSERT INTO `finance_fee_collections` VALUES (1,'Fees','2015-02-01','2015-02-01','2015-02-01',1,1,1),(2,'Fees','2015-02-07','2015-02-07','2015-02-07',1,1,0),(3,'February Fees','2015-02-01','2015-02-01','2015-02-10',1,1,0),(4,'March Fees','2015-03-01','2015-03-01','2015-03-10',1,1,0);
/*!40000 ALTER TABLE `finance_fee_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_particulars`
--

DROP TABLE IF EXISTS `finance_fee_particulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fee_particulars` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `amount` decimal(15,2) default NULL,
  `finance_fee_category_id` int(11) default NULL,
  `student_category_id` int(11) default NULL,
  `admission_no` varchar(255) collate utf8_unicode_ci default NULL,
  `student_id` int(11) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fee_particulars`
--

LOCK TABLES `finance_fee_particulars` WRITE;
/*!40000 ALTER TABLE `finance_fee_particulars` DISABLE KEYS */;
INSERT INTO `finance_fee_particulars` VALUES (1,'Fees','','1000.00',1,NULL,NULL,NULL,0,'2015-02-07 07:01:18','2015-02-07 07:01:18'),(2,'Admission Fees','','600.00',1,NULL,NULL,NULL,1,'2015-02-07 07:02:41','2015-02-07 07:12:15'),(3,'Re-Admission Fees','','100.00',1,NULL,NULL,NULL,1,'2015-02-07 07:04:18','2015-02-07 07:12:17'),(4,'Admission Fees','','600.00',4,NULL,NULL,NULL,0,'2015-02-07 07:18:09','2015-02-07 07:18:09'),(5,'Admission Fees','','600.00',5,NULL,NULL,NULL,0,'2015-02-07 07:18:09','2015-02-07 07:18:09'),(6,'Admission Fees','','600.00',6,NULL,NULL,NULL,0,'2015-02-07 07:18:09','2015-02-07 07:18:09'),(7,'Re-Admission Fees','','100.00',7,NULL,NULL,NULL,0,'2015-02-07 07:18:38','2015-02-07 07:18:38'),(8,'Re-Admission Fees','','100.00',8,NULL,NULL,NULL,0,'2015-02-07 07:18:38','2015-02-07 07:18:38'),(9,'Re-Admission Fees','','100.00',9,NULL,NULL,NULL,0,'2015-02-07 07:18:38','2015-02-07 07:18:38');
/*!40000 ALTER TABLE `finance_fee_particulars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_structure_elements`
--

DROP TABLE IF EXISTS `finance_fee_structure_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fee_structure_elements` (
  `id` int(11) NOT NULL auto_increment,
  `amount` decimal(15,2) default NULL,
  `label` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `student_category_id` int(11) default NULL,
  `student_id` int(11) default NULL,
  `parent_id` int(11) default NULL,
  `fee_collection_id` int(11) default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fee_structure_elements`
--

LOCK TABLES `finance_fee_structure_elements` WRITE;
/*!40000 ALTER TABLE `finance_fee_structure_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fee_structure_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fees`
--

DROP TABLE IF EXISTS `finance_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fees` (
  `id` int(11) NOT NULL auto_increment,
  `fee_collection_id` int(11) default NULL,
  `transaction_id` varchar(255) collate utf8_unicode_ci default NULL,
  `student_id` int(11) default NULL,
  `is_paid` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `index_finance_fees_on_fee_collection_id_and_student_id` (`fee_collection_id`,`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fees`
--

LOCK TABLES `finance_fees` WRITE;
/*!40000 ALTER TABLE `finance_fees` DISABLE KEYS */;
INSERT INTO `finance_fees` VALUES (1,1,NULL,1,0),(2,1,NULL,2,0),(3,1,NULL,3,0),(4,1,NULL,4,0),(5,1,NULL,5,0),(6,1,NULL,6,0),(7,1,NULL,7,0),(8,1,NULL,8,0),(9,2,NULL,1,0),(10,2,NULL,2,0),(11,2,NULL,3,0),(12,2,NULL,4,0),(13,2,NULL,5,0),(14,2,NULL,6,0),(15,2,NULL,7,0),(16,2,NULL,8,0),(17,3,NULL,1,0),(18,3,NULL,2,0),(19,3,NULL,3,0),(20,3,NULL,4,0),(21,3,NULL,5,0),(22,3,NULL,6,0),(23,3,NULL,7,0),(24,3,NULL,8,0),(25,4,'1',1,1),(26,4,NULL,2,0),(27,4,NULL,3,0),(28,4,NULL,4,0),(29,4,NULL,5,0),(30,4,NULL,6,0),(31,4,NULL,7,0),(32,4,NULL,8,0);
/*!40000 ALTER TABLE `finance_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transaction_categories`
--

DROP TABLE IF EXISTS `finance_transaction_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_transaction_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  `is_income` tinyint(1) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_transaction_categories`
--

LOCK TABLES `finance_transaction_categories` WRITE;
/*!40000 ALTER TABLE `finance_transaction_categories` DISABLE KEYS */;
INSERT INTO `finance_transaction_categories` VALUES (1,'Salary',' ',0,0),(2,'Donation',' ',1,0),(3,'Fee',' ',1,0),(4,'Utility Bills','',0,0);
/*!40000 ALTER TABLE `finance_transaction_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transaction_triggers`
--

DROP TABLE IF EXISTS `finance_transaction_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_transaction_triggers` (
  `id` int(11) NOT NULL auto_increment,
  `finance_category_id` int(11) default NULL,
  `percentage` decimal(8,2) default NULL,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_transaction_triggers`
--

LOCK TABLES `finance_transaction_triggers` WRITE;
/*!40000 ALTER TABLE `finance_transaction_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_transaction_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transactions`
--

DROP TABLE IF EXISTS `finance_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_transactions` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  `amount` decimal(15,2) default NULL,
  `fine_included` tinyint(1) default '0',
  `category_id` int(11) default NULL,
  `student_id` int(11) default NULL,
  `finance_fees_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `transaction_date` date default NULL,
  `fine_amount` decimal(10,2) default '0.00',
  `master_transaction_id` int(11) default '0',
  `finance_id` int(11) default NULL,
  `finance_type` varchar(255) collate utf8_unicode_ci default NULL,
  `payee_id` int(11) default NULL,
  `payee_type` varchar(255) collate utf8_unicode_ci default NULL,
  `receipt_no` varchar(255) collate utf8_unicode_ci default NULL,
  `voucher_no` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_transactions`
--

LOCK TABLES `finance_transactions` WRITE;
/*!40000 ALTER TABLE `finance_transactions` DISABLE KEYS */;
INSERT INTO `finance_transactions` VALUES (1,'Receipt No. F25',NULL,'1000.00',0,3,NULL,NULL,'2015-02-07 07:27:38','2015-02-07 07:27:38','2015-02-07','0.00',0,25,'FinanceFee',1,'Student','1',NULL);
/*!40000 ALTER TABLE `finance_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grading_levels`
--

DROP TABLE IF EXISTS `grading_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grading_levels` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `min_score` int(11) default NULL,
  `order` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `credit_points` decimal(15,2) default NULL,
  `description` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_grading_levels_on_batch_id_and_is_deleted` (`batch_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grading_levels`
--

LOCK TABLES `grading_levels` WRITE;
/*!40000 ALTER TABLE `grading_levels` DISABLE KEYS */;
INSERT INTO `grading_levels` VALUES (1,'A',NULL,90,NULL,0,'2015-01-10 22:10:00','2015-01-10 22:10:00',NULL,NULL),(2,'B',NULL,80,NULL,0,'2015-01-10 22:10:00','2015-01-10 22:10:00',NULL,NULL),(3,'C',NULL,70,NULL,0,'2015-01-10 22:10:00','2015-01-10 22:10:00',NULL,NULL),(4,'D',NULL,60,NULL,0,'2015-01-10 22:10:00','2015-01-10 22:10:00',NULL,NULL),(5,'E',NULL,50,NULL,0,'2015-01-10 22:10:00','2015-01-10 22:10:00',NULL,NULL),(6,'F',NULL,0,NULL,0,'2015-01-10 22:10:00','2015-01-10 22:10:00',NULL,NULL);
/*!40000 ALTER TABLE `grading_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouped_batches`
--

DROP TABLE IF EXISTS `grouped_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grouped_batches` (
  `id` int(11) NOT NULL auto_increment,
  `batch_group_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_grouped_batches_on_batch_group_id` (`batch_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouped_batches`
--

LOCK TABLES `grouped_batches` WRITE;
/*!40000 ALTER TABLE `grouped_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouped_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouped_exam_reports`
--

DROP TABLE IF EXISTS `grouped_exam_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grouped_exam_reports` (
  `id` int(11) NOT NULL auto_increment,
  `batch_id` int(11) default NULL,
  `student_id` int(11) default NULL,
  `exam_group_id` int(11) default NULL,
  `marks` decimal(15,2) default NULL,
  `score_type` varchar(255) collate utf8_unicode_ci default NULL,
  `subject_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `by_batch_student_and_score_type` (`batch_id`,`student_id`,`score_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouped_exam_reports`
--

LOCK TABLES `grouped_exam_reports` WRITE;
/*!40000 ALTER TABLE `grouped_exam_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouped_exam_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouped_exams`
--

DROP TABLE IF EXISTS `grouped_exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grouped_exams` (
  `id` int(11) NOT NULL auto_increment,
  `exam_group_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `weightage` decimal(15,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_grouped_exams_on_batch_id` (`batch_id`),
  KEY `index_grouped_exams_on_batch_id_and_exam_group_id` (`batch_id`,`exam_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouped_exams`
--

LOCK TABLES `grouped_exams` WRITE;
/*!40000 ALTER TABLE `grouped_exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouped_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardians`
--

DROP TABLE IF EXISTS `guardians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardians` (
  `id` int(11) NOT NULL auto_increment,
  `ward_id` int(11) default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `relation` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_phone2` varchar(255) collate utf8_unicode_ci default NULL,
  `mobile_phone` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `office_address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `city` varchar(255) collate utf8_unicode_ci default NULL,
  `state` varchar(255) collate utf8_unicode_ci default NULL,
  `country_id` int(11) default NULL,
  `dob` date default NULL,
  `occupation` varchar(255) collate utf8_unicode_ci default NULL,
  `income` varchar(255) collate utf8_unicode_ci default NULL,
  `education` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardians`
--

LOCK TABLES `guardians` WRITE;
/*!40000 ALTER TABLE `guardians` DISABLE KEYS */;
INSERT INTO `guardians` VALUES (9,7,'Abdul','Hafeez','Father','-','-','-','0333-3606371','Garden west','Garden west,shalimar garden fuwara chowk karchi','karachi','sindh',133,'1970-07-05','Construction','-','Inter Scince','2015-03-27 09:15:59','2015-03-27 09:19:45',19),(10,8,'Muhammad ','Arif','islam','Nil','Nil','Nil','0333-3158445','Nil','A-4 Firdous Apartment first Round about Nazimabad karachi','karachi','sindh',133,'1963-10-12','Nil','Nil','B.com','2015-03-28 07:19:47','2015-03-28 07:19:47',NULL),(11,9,'Aziz-Ur-Rahman','','Father','-','','','0308-2392995','6/5 A. 1-J Muslim leage quaterz nazimabad No.1','48/1 400 Quaterz Gulbahar No.2','karachi','Sindh',133,'1959-06-26','Office Worker','-','Inter','2015-03-28 07:27:59','2015-03-28 07:27:59',NULL),(12,10,'syed shah','Hassan Imam ghazi','Mamoon','-','-','-','0300-2379570','Anar kali complex bab-e-arif A-120 North Karachi  Nagagan chowrangi Up Phase 2 ','-','karachi','sindh',133,'1993-03-04','Bussines','-','-','2015-03-28 07:56:39','2015-03-28 07:57:45',NULL),(13,11,'Arshad','Baig','Father','-','','','0312-2993185','Street No.11 Area 37/A Landhi 3.1/2','-','karachi','sindh',133,'1968-01-01','Employe In K.Electric','-','Inter','2015-03-28 08:05:03','2015-03-28 08:05:03',NULL),(14,12,'A.ghaffar','','Grand father','noreplyp00006@fedena.com','','','0300-2620616','126/16 Sector S-E','New Karachi','karachi','Sindh',133,'1955-10-05','Headmaster for school','--','B.com','2015-03-31 04:51:34','2015-03-31 04:52:45',26),(15,13,'Mufti Muhammad ','Sharif Saeedi','Brother','','','','0301-3514050','Flat No.403 Rabbi Appartment Gulshan-e-iqbal Karachi','(permanent add) jamia noor-ul-quran Near shah pump Hyderabad road Mirpur khas','Mirpur khas','sindh',133,'1977-04-15','Imam o khateeb and arabic teacher','-','M.A islamiat','2015-03-31 05:06:34','2015-03-31 05:06:37',28),(16,14,'Abu bakar Jamali','','Father','-','','','0322-2380626','Plot No.52 jama masjid siddiqia sodier bazar karachi','(permanent add) ferozabad colony kot addu ghazi ghat distric muzaffarabad','kot addu,muzzafarabad','punjab',133,'1968-06-12','Imam e majid','-','M.A islamiat','2015-04-01 05:34:52','2015-04-01 05:34:52',NULL),(17,15,'Muhammad ','Amin','Father','','','','0313-2966495','Garden west','Flate 509 own peradize garden ','karachi','sindh',133,'1973-07-19','Accountent','-','inter','2015-04-01 05:42:31','2015-04-01 05:42:34',31),(18,16,'Muhammad ','Akram','Father','-','','','0315-8937572   and    0300-2189059','Garden west','Flate No.409 B block. own peradize fawara chock garden west','karachi','sindh',133,'1969-10-12','Own Bussines','-','B.com','2015-04-01 05:48:07','2015-04-01 05:48:07',NULL),(19,17,'Muhammad ','Afaq','Father','','','','0300-2245514','Defence view phase 2','House No. 94 block F Defence view','karachi','Sindh',133,'1955-06-16','EX: officer Grade 18 D.T.O Pakistan Railway','-','B.A','2015-04-01 05:54:20','2015-04-01 05:54:22',34),(20,18,'Aleem-ud-Din ','Taimuri','Father','','','','0334-3106082','Liaqtabad No.4','(Permanent Add) Model colony Malir 88/A','karachi','Sindh',133,'1971-10-12','sales man','-','Inter','2015-04-01 06:09:10','2015-04-01 06:09:12',36),(21,19,'syed','shakeel qadri','father','','','','0324-2001583','323 bahadurabad karachi','','karachi','sindh',133,NULL,'Construction','-','B.com','2015-04-14 11:41:45','2015-04-14 11:41:48',38),(22,21,'Syed ghazi','Fayyaz uddin','father','','','','0321-9501854','M-243 molaram compond malir city karachi','','sindh','sindh',133,'1967-01-13','business man','-','matric','2015-04-14 11:49:49','2015-04-14 11:49:52',41),(23,22,'Afsar','Hussain','father','','','','0310-2576298','P.25 block N north nazimabad karachi','','karachi','sindh',133,'1955-10-12','Own business','','-','2015-04-14 12:05:11','2015-04-14 12:05:14',43),(24,23,'Shabbir ','Ahmed','father','-','','','0332-8288556','ghazi nagar usmanabad H.no 270 streat 12 . sadar town','karachi','karachi','sindh',133,'1969-01-17','sales man','-','b.com','2015-04-14 12:10:54','2015-04-14 12:10:54',NULL),(25,23,'Shabbir ','Ahmed','father','-','','','0332-8288556','ghazi nagar usmanabad H.no 270 streat 12 . sadar town','karachi','karachi','sindh',133,'1969-01-17','sales man','-','b.com','2015-04-14 12:11:31','2015-04-14 12:11:31',NULL),(26,23,'Shabbir ','Ahmed','father','-','','','0332-8288556','ghazi nagar usmanabad H.no 270 streat 12 . sadar town','karachi','karachi','sindh',133,'1969-01-17','sales man','-','b.com','2015-04-14 12:11:52','2015-04-14 12:11:52',NULL),(27,24,'Qari Mukhtar ','Ahmed Hasni','father','','','','0300-2312922','Flat 302 pir haven PIB colony karachi','','karachi','sindh',133,'1955-02-18','travel agente','-','matric','2015-04-14 12:17:59','2015-04-14 12:18:02',46),(28,25,'Nadeem ','Farooqi','father','','','','0301-2879245','House no.68 sector 11-E  orangi town','','karachi','sindh',133,'1968-01-01','business man','','matric','2015-04-14 12:22:24','2015-04-14 12:22:26',48),(29,26,'Muhammad','Naeem sheikh','father','','','','0304-2347010','Fiza Recidancy flate no.103 gardan west karachi','-','karachi','sindh',133,'1966-01-01','cattering','-','matric','2015-04-14 12:28:03','2015-04-14 12:28:05',50),(30,27,'Muhammad ','Mehboob','father','-','','','0322-2588573','House no.123 sector 12 L. orangi town karachi','','karachi','sindh',133,NULL,'business man','-','','2015-04-14 12:34:37','2015-04-14 12:34:37',NULL),(31,27,'Muhammad','Mehboob','fater','','','','0322-2588573','','','','',133,'1995-09-25','business man','-','Middle','2015-04-14 12:36:13','2015-04-14 12:36:24',52),(32,28,'Muhammad','ismail','Mamooon','','','','','House no.300 block B ittehad town baldia town karachi','','karachi','sindh',133,'1973-04-03','-','*-*','Middle','2015-04-14 12:41:35','2015-04-14 12:41:46',54),(33,29,'Muhammad ','Yaseen','father','-','','','0333-2184135','Flat 301 Al ramzan amna corner garden fuwara chowk karachi','','Karachi','sindh',133,NULL,'government service','-','Middle','2015-04-17 04:28:34','2015-04-17 04:30:32',56),(34,30,'Hafiz Khizir Hayat','Siyalvi','Father','','','','0345-6269505','nafeesabad 3 hatti karachi no.5','','karachi','sindh',133,'1963-10-15','teacher','-','middle','2015-04-17 04:43:59','2015-04-17 04:44:03',58),(35,31,'Abdul ','Hameed','Father','','','','0346-2524167','House No.L / 129 block A','KDA ground TP2 mehmoodabad bara gate','Karachi','sindh',133,'1995-04-02','Milk shop','-','middle','2015-04-17 04:49:10','2015-04-17 04:49:14',60),(36,32,'Lal ','Muhammad','Father','-','','','','Mouch vllage Hub river road karachi','','karachi','sindh',133,'1975-05-12','Imam-e-Masjid','-','Matric','2015-04-17 04:54:19','2015-04-17 04:55:38',62),(37,33,'Abdul','Qadir','Father','','','','','House No. E-269 mohalla sultanabad Near phool clowk','','Karachi','sindh',133,'1973-01-25','Private service','-','Matric','2015-04-17 05:02:48','2015-04-17 05:02:51',64),(38,34,'Muhammad ','Zubair Ahmed','Father','','','','0322-2503430','K-49 khalidabad Firdous colony karachi','','Karachi','sindh',133,'1968-04-01','Driver','-','Nill','2015-04-17 05:06:38','2015-04-17 05:06:41',66),(39,35,'Syed','Shakeel Hussain','Father','','','','0344-8202502','B.area Liaqtabad karachi 71/ 17','','karachi','sindh',133,NULL,'','','','2015-04-17 05:10:54','2015-04-17 05:11:17',68),(40,36,'Fahim','Essa','Father','-','','','0323-2014118','plot No.232/ K pedro d\'souza raod garden east karachi','','karachi','sindh',133,'1967-05-02','Molty foam business','-','inter','2015-04-17 05:29:02','2015-04-17 05:29:02',NULL),(41,37,'Muhammad ','Haroon','Father','','','','','Islam pura state garden east karachi','','karachi','sindh',133,'1970-02-26','job','','B.com','2015-04-17 05:42:35','2015-04-17 05:42:38',71),(42,38,'Muhammad ','Sadiq','Father','','','','0321-2109646','MC.348 green town karachi','','karachi','sindh',133,NULL,'Tajir','-','middle','2015-04-17 05:50:32','2015-04-17 05:50:37',73),(43,39,'Abul khair','','Father','','','','0324-2344290','Uc-5 kemari town karachi','','karachi','sindh',133,'1971-05-03','public Servent','-','Nill','2015-04-17 05:56:49','2015-04-17 05:56:59',75),(44,40,'Muhammad ','Nawaz Hashmi','Father','','','','0301-2524019','Saddiq wahab road usmanabad karachi','','bhawalpur','punjab',133,NULL,'Nizamat: madrasa faizan e ghos e azam','','Matric','2015-04-17 06:01:50','2015-04-17 06:01:58',77),(45,41,'Syed','Anees Ahmed','Father','','0213-6992126','','','R 785. B2 North karachi','','karachi','sindh',133,NULL,'','','','2015-04-17 06:05:04','2015-04-17 06:05:07',79),(46,43,'Anwar','Zaib sajid','Father','','','','0301-2237698','House No. B.454 madina basti site karachi','','karachi','sindh',133,NULL,'imam-e-masjid','-','inter','2015-04-17 06:09:47','2015-04-17 06:09:51',82),(47,44,'Ealhi ','bux','father','','','','0300-2467425','Azeem pura shah faisal colony N.4 jamiya madina masjid muzaffar garh','','muzaffar garh','punjab ',133,NULL,'Farmer','-','','2015-04-17 06:45:18','2015-04-17 06:45:23',84),(48,47,'Abid ','Hussain','Father','','','','','House No.1303 green town karachi','(permanent Add) Basti gul muhammad Araen ghous abad liaqat pur rahim yar khan','rahim yar khan','punjab',133,'1976-06-11','Farmer','','matric','2015-04-17 06:53:20','2015-04-17 06:53:26',88),(49,48,'Husan','Bux','Father','-','','','0346-7204866','Jamia masjid noor millat town malir halt','distarcit multan shujabad khaki punjani jamal wala','multan','punjab',133,'1957-04-11','farmer','-*-','Nil','2015-04-17 07:16:02','2015-04-17 07:16:02',NULL),(50,49,'Muhammad','Hussain Rizwi','Father','','','','','Near bunyadi masjid flate A m.a jinah road','','karachi','sindh',133,NULL,'teacher','-*','-','2015-04-17 07:23:36','2015-04-17 07:23:39',91),(51,50,'Muhammad','Naeem malik','Father','','','','0346-2825548','plote No. KESC No.229 streat No.3 ghousabad joona dhobi ghaat,','','karachi','sindh',133,'1961-01-01','government Servent','--','Matric','2015-04-17 07:29:24','2015-04-17 07:29:27',93),(52,51,'Fareed Qadri','','Father','','','','0313-2711662','qaidabad 22 No.karachi','','karachi','sindh',133,NULL,'G.S.K','','Matric','2015-04-20 04:20:33','2015-04-20 04:20:38',95),(53,52,'shah hamdani','s','father','','','','','','','','',133,NULL,'','','','2015-04-20 04:21:44','2015-04-20 04:21:47',97),(54,53,'Abdul','Ghaffar','Father','','','','0322-2206487','R.204 saba terrace garden west karachi','','karachi','sindh',133,'1955-06-02','Accountant','','Graduate','2014-08-10 04:27:05','2014-08-10 04:27:07',99),(55,54,'Moin','Khan','Brother','','','','0345-3062389','Area 4-c house No.7/8 landhi No.6 karachi','','karachi','sindh',133,'1983-11-16','own business','-','F.sc','2014-08-10 04:31:13','2014-08-10 04:31:17',101),(56,55,'Muhammad ','Zeeshan','Brother','','','','0323-2713245','House no. 202 T area Korangi No.2 karachi','','karachi','sindh',133,'1980-11-06','Office Job','-','Graduate','2014-08-10 04:39:27','2014-08-10 04:39:30',103),(57,56,'Abdul','Rehman','father','','','','','Flat No.303 Al-ramzan classic building fuwara chowk garden west karchi','','karachi','sindh',133,'1969-05-17','Buisness','-','inter scince','2014-08-10 04:43:20','2014-08-10 04:43:24',105),(58,57,'Muhammad','Ayyub','mamooon','','','','0321-8220316','Garden jailani plaza flate No.606 floor 6 block B','','karachi','sindh',133,'1976-03-03','Fiber works','-','middle','2014-08-10 04:47:24','2014-08-10 04:47:29',107),(59,58,'Muhammad','Zubair','Brother','noreplyp00106@fedena.com','','','0323-2733347','nishter road Near Risala thana police station bhimpura Nadia terrace','','karachi','sindh',133,'1991-12-22','Private service','','matric','2014-08-10 04:51:46','2014-08-10 04:53:14',109),(60,59,'Muhammad','Iqbal','Father','','','','0322-2769679','Opp risala thana bhimpura nadia terrace','','karachi','sindh',133,'1954-01-03','.','','inter','2014-08-10 05:03:47','2014-08-10 05:03:49',111),(61,60,'Muhammad','Mansoor Musani','Father','','','','0323-2192705','Raja Mension Yaqoob khan road 5th floor karachi','','karachi','sindh',133,'1966-01-01','Private service','-','.','2014-08-10 05:09:32','2014-08-10 05:09:37',113),(62,61,'Noor-ul-Amin','Qadri','Father','','','','0345-2412417','sumayya residency D.M.M. co-operative society blockNo.3 plot No.232 flat No602 baadurabad karachi','','karachi','sindh',133,'1964-01-01','Buisness man','-','.','2014-08-10 05:14:50','2014-08-10 05:14:55',115),(63,62,'Abdul','Rehman','father','','','','','A-501 faizan Heights Near garden Medical center garden west karachi','','karachi','sindh',133,'1965-06-22','Buisness man','','middle','2014-08-10 05:20:45','2014-08-10 05:20:48',117),(64,63,'Muhammad','Asif','Brother','','','','0321-2010082','A-305 Noran plaza near police building shoe market karachi','','karachi','sindh',133,'1972-04-24','plastic works','-','B.com + Dars-e-Nizami','2014-08-10 05:25:53','2014-08-10 05:29:42',119),(65,64,'Muhammad','Haroon','father','','','','0323-2168215','Kashan m.hussain mension streat No.5 Nayabad lyari karachi','','karachi','sindh',133,'1956-08-01','own business','-','.','2014-08-10 05:41:07','2014-08-10 05:41:10',121),(66,65,'Muhammad','Yaseen','Father','-','','','0345-8079206','House No. 902 streat 12/A mehmoodabad No.4 karachi','','karachi','sindh',133,'1966-06-19','Store keeper','-','M.A Islamiyat','2014-08-10 06:15:25','2014-08-10 06:21:13',123),(67,66,'Muhammad','Hashim','Father','','','','0320-8312326','Arba Arcade flat No.D-1 raghoo streat ram swami karachi','','karachi','sindh',133,'1955-02-21','employed','','matric','2014-08-10 06:30:31','2014-08-10 06:30:38',125),(68,67,'Tabassum ','khan','Mother','','','','03214513733','B-221, 1BD1, gulshan e iqbal karachi','','karachi','sindh',133,'1973-03-31','House wife','-','Matric','2014-08-10 06:41:30','2014-08-10 06:41:34',127),(69,68,'Muhammad','Mustafa','Father','','','','0345-2276114','43/1 doli khata bori comp iqbal market soldier bazar No.1 karachi','','karachi','sindh',133,'1960-09-04','Auto driver','-','inter','2014-08-10 06:48:33','2014-08-10 06:48:35',129),(70,69,'Muhammad','Mustafa','Father','-','','','0345-2276114','43/1 doli khata bori comp iqbal market soldier bazar No.1 karachi','','karachi','sindh',133,'1960-09-14','Auto driver','-','inter','2014-08-10 06:52:08','2014-08-10 06:52:08',NULL),(71,70,'Noor','Muhammad','Father','','','','','Noor mension 4th floor soldier bazar No.2 karachi','','karachi','sindh',133,'1960-08-13','Imam e masjid','-','-','2014-08-10 06:55:45','2014-08-10 06:55:48',132),(72,71,'Muhammad','Ismail','Father','-','','','0313-1241491','House no.253 baba wilayat ali shah colony sector 11 karachi','','karachi','sindh',133,'1962-11-20','Spray Painter','-','.','2014-08-10 06:59:25','2014-08-10 06:59:25',NULL),(74,73,'Tabassum ','Khan','Mother','','','','0321-4513733','B-221, 1BD1, gulshan e iqbal karachi','','karachi','sindh',133,'1970-03-31','House wife','','Matric','2014-08-10 07:08:50','2014-08-10 07:09:02',137),(75,74,'Muhammad','Shoaib Hashim','Father','','','','0343-2160415','House No.40 wazeerabad malir karachi','','karachi','',133,NULL,'','','','2014-08-10 07:33:54','2014-08-10 07:34:00',139),(76,75,'Muhammad','Arsalan','Brother','','','','0312-2704247','C-137 aleemabad malir karachi','','karachi','sindh',133,NULL,'employed','-','B.com','2014-08-10 07:38:07','2014-08-10 07:38:12',141),(77,76,'Aurangzaib','','Father','','','','0321-2894581','G-155 M.T khan Road sultanabad karachi','','karachi','sindh',133,'1970-02-12','worker','','Matric','2014-08-10 07:41:23','2014-08-10 07:41:29',143),(78,77,'Muhammad','Saleeem','Father','','','','0322-8237496','Hasrat Mohani Raod pakistan chowk 1st floor supermarket karachi','','karachi','sindh',133,NULL,'Buisness','','inter','2014-08-10 07:44:28','2014-08-10 07:44:34',145),(79,78,'Muhammad','Arif','brother','','021-32232770','','','House No. 302 pearl Garden, garden west karachi','','karachi','sindh',133,'1968-11-09','Buisness','-','matric','2014-08-10 07:48:59','2014-08-10 07:49:07',147),(81,80,'Muhammad','Aslam','Father','-','','','0344-2615812','jamia masjid allah wali near polic station soldier bazar No.1 karachi','','karachi','sindh',133,'1965-01-01','Imam e masjid','-','Alim-e-deen','2014-08-10 07:58:26','2014-08-10 07:58:26',NULL),(82,81,'Muhammad ','Tariq','Husband','','','','','House No.401 teena larze near sialani welfare masjid bahadurabad krachi','','karachi','sindh',133,'1971-01-01','Buisness','','F.A','2014-08-10 08:21:11','2014-08-10 08:21:17',152),(83,82,'Nazar','Hussain','Father','','','','','flate No.32 block F police head Quarters garden raod karachi','','karachi','sindh',133,'1956-09-03','police servent , moazzin','-','matric','2014-08-10 08:25:44','2014-08-10 08:25:51',154),(84,84,'Muhammad ','Rizwan','Father','','','','0300-8266450','G/K 2/18 3rd floor khadija arcade kharadar','','karachi','sindh',133,NULL,'Labbaik Hajj Group','-','inter','2014-08-10 08:32:50','2014-08-10 08:39:13',158),(85,86,'Aleem-Uddin ','Taimuri','Father','','','','0334-3106082','liaqatabad karachi No.4','(permanent add) model colony malir 88/A karachi','karachi','sindh',133,'1971-10-12','sale man','-','inter','2013-08-01 08:45:07','2013-08-01 08:47:15',162),(86,87,'Muhammad','Ibrahim','Father','','','','0321-2436484','474/1 plot No.83 amil colony No.2 jamshed Road','','karachi','sindh',133,NULL,'Buisness','','Matric','2013-08-01 08:52:52','2013-08-01 08:52:56',164),(87,88,'Muhammad','Siddique Ashrafi','father','','','','0322-2173913','flate No.302 Al makran centre pan mandi karachi','','karachi','sindh',133,'1953-06-18','business','','B.com','2013-08-10 08:58:59','2013-08-10 08:58:59',NULL),(88,89,'Muhammad','shoiaib','Father','-','','','0322-2004572','Dt90 F.b area karachi NO.2','','karachi','sindh',133,'1985-02-21','office works','-','masters','2013-08-10 04:30:25','2013-08-10 04:30:25',NULL),(89,90,'Muhammad','Raees Ahmed','father','','','','0334-3035642','soldier bazar No.2 roshan shah colony House No.D-3 karachi','','karachi','sindh',133,'1960-01-10','sevent','-','matric','2013-08-10 04:33:37','2013-08-10 04:33:43',168),(90,91,'Faheem Bano','','Mother','','021-36672944','','','B-191 mustafabad north nazimabad karachi','','karachi','sindh',133,'1961-01-01','-','','middle','2013-08-10 04:40:41','2013-08-10 04:40:47',170),(91,92,'Mushtaq','Ahmed','Father','','','','0313-2061571','Z.A4 Zahidabad sharifabad karachi','','karachi','sindh',133,'1960-08-08','corn soap','-','Nill','2013-08-10 04:48:57','2013-08-10 04:49:04',172),(92,93,'Qari','Raffique Ahmed','Father','','','','0306-2174645','sector 23 maleer zone karachi','','karachi','sindh',133,'1966-01-02','Dars-e-quran','-','Hafiz-e-quran','2013-08-10 05:31:21','2013-08-10 05:31:26',174),(93,94,'Muhammad','Hanif Suhurwardi','Father','','','','0321-9208862','Jamshed Road 3 Number haidarbad colony karachi','','karachi','sindh',133,NULL,'Spear Parts','','Matric','2013-08-10 05:35:29','2013-08-10 05:35:39',176),(94,95,'Muhammad','Salih','Father','','','','0343-2425765','House NO.437 sector 9 block A new saeedabad baldia town karachi No.51','','karachi','sindh',133,'1953-04-10','Polic (Retired)','-','middle','2013-08-10 05:39:13','2013-08-10 05:39:20',178),(95,96,'Nabeel Ahmed','Siddiqui','Brother','','','','0345-3108878','Street No.23 House No.43/7 Model colony karachi','','karachi','sindh',133,'1989-12-25','IT Administrator','-','Msc','2013-08-10 05:44:37','2013-08-10 05:45:09',180),(96,97,'Muhammad','Rashid','Brother','','','0322-2423586','0323-3289198-','301 hemani centre bottle gali light house karchi','','karachi','sindh',133,'1988-10-21','private job','-','B.com','2013-08-10 05:49:36','2013-08-10 05:49:42',182),(97,98,'Muhammad ','ilyas','Father','','','','0321-6142210','Jamia masjid Abu bakar block13 gulistan e johar karachi','','Sialkot','punjab',133,'1979-03-22','Bank Manager','-','B.A','2013-08-10 05:53:14','2013-08-10 05:53:21',184),(98,99,'Nisar','Ahmed','Father','','','','0344-2204780','House No.8/1 F.c Area liaqtabad karachi','','karachi','sindh',133,'1964-05-04','PWD','','Matric','2013-08-10 06:12:42','2013-08-10 06:12:49',186),(99,100,'Muhammad','Haroon','Father','','','','0346-9771237','sector 4H House No.3686 New saeedabad baldiya town karachi.','','karachi','sindh',133,NULL,'Army','-','Matric','2013-08-10 06:21:06','2013-08-10 06:21:12',188),(100,101,'Muhammad','Aslam Parvaiz','Father','','','','0310-2581112','147/11-12 bara board nazimabad','','karachi','sindh',133,'1967-10-02','crocary','-','middle','2013-08-10 06:27:59','2013-08-10 06:28:04',190),(101,102,'Bilal ','Maqsood','Brother','','','','0301-2665167','Flat No.7  4th floor Al-Madina manzil ranchor line','','karachi','sindh',133,'1990-12-08','Electrition','-','Matric','2013-08-10 06:48:45','2013-08-10 06:48:55',192),(102,103,'Muhammad','Akram','Uppal','','','','0300-2398230','House No. R-143 sector A-1 jacab line karachi','','karachi','sindh',133,'1953-07-04','Retired from Bata company','-','Matric','2013-08-10 06:55:11','2013-08-10 06:55:16',194),(103,104,'syed','Naveed Shah','Father','','','','0313-1346447','sector 8/A baldia town karachi','','','sindh',133,NULL,'government Servent','-','B.A','2013-08-10 06:59:33','2013-08-10 07:00:30',196),(104,105,'Khuda','Bux','Father','','','','0302-5476135','House No. 300 block B. ittehad town, baldia town karachi','','karachi','sindh',133,'1967-01-01','farmer','-','matric','2013-08-10 07:09:31','2013-08-10 07:09:31',NULL),(105,106,'Muhammad','Ismail','father','','','','0302-2835941','House No. 300 block B. ittehad town, baldia town karachi','','karachi','sindh',133,'1973-04-15','Pesonal shop','','middle','2013-08-10 07:16:35','2013-08-10 07:16:49',199),(106,107,'Muhammad','Anwar','Father','','021-35897490','','0323-2574877','','','','',133,'1956-11-30','Internal aduditor in standard chartered bank','-','B.com','2013-08-10 07:23:52','2013-08-10 07:23:57',201),(108,110,'Muhammad','Saleem','Father','','','','0300-2912994','3F 7/1 nazimabad No.3 karachi Flat No.17','','karachi','sindh',133,'1972-01-01','engineer','','matric','2013-08-10 07:46:02','2013-08-10 07:46:07',206),(109,111,'Muhammad','Alauddin Khan','Father','','','','0324-2912978','sector 5E surjani Town karachi','','karachi','sindh',133,NULL,'plumber','','','2013-08-10 08:38:36','2013-08-10 08:38:52',208),(110,112,'Muhammad','Iqbal','Father','','','','0344-1737821','House No. 61 streat 1 zia colony k0rang No.1 karachi','(permanent Add) shah sadiq nehang shorkot disc jhang','jhang','punjab',133,NULL,'Driver','','','2013-08-10 06:23:53','2013-08-10 06:24:03',210),(111,113,'Inayatullah','','Father','','','','','plot No.1052 House No.3 P.I.B colony karachi','','Karachi','sindh',133,'1963-03-15','Teacher','','-','2013-08-10 06:26:44','2013-08-10 06:26:49',212),(112,114,'Ghulam','Murtaza','Brother','','','','030-9398722','','','','',133,NULL,'sale man','','','2013-08-10 07:42:49','2013-08-10 07:42:57',214),(113,115,'Abdul','Samad','Father','noreplyp00230@fedena.com','','','','lakhani terrace punjab town soldier bazar No.1 karachi','','karachi','sindh',133,NULL,'Buisness man','','F.A','2013-08-10 08:50:08','2013-08-10 08:50:45',216),(114,116,'Muhammad','Ibrahim','Father','','','','0321-2274742','Garden west jilani masjid Asad Appartment 2nd floor','','karachi','sindh',133,'1965-08-14','sale man','','Matric','2013-08-10 08:56:14','2013-08-10 08:56:24',218),(115,117,'Muhammad','Junaid','Father','','','','0324-2563327','B-19 4th floor shalimar garden west G.H kassam Road karachi','','karachi','sindh',133,'1966-09-14','sale man','','inter','2013-08-10 09:00:20','2013-08-10 09:00:32',220),(116,118,'Muhammad ','Junaid','Father','','','','0324-2563327','B-19 4th floor shalimar garden west G.H kassam Road karachi','','karachi','sindh',133,'1966-09-14','sale man','','inter','2013-08-10 09:09:47','2013-08-10 09:09:59',222),(117,120,'Muhammad ','Akram','Father','','','','0333-2114352','House No.130 street No.36/B mehmoodabad No.6 karachi','','karachi','sindh',133,'1965-05-23','Resturant','','Graduate','2013-08-10 03:29:50','2013-08-10 03:29:56',225),(118,121,'Abdul ','Ghani','Father','','','','0324-2071946','Tayyabi Heights flat No.410 Near naseem cloth market lasbela karachi','','karachi','sindh',133,'1966-08-01','sale man','','Matrci','2013-08-10 03:33:21','2013-08-10 03:33:27',227),(119,122,'Haji','Muhammd Amin','Father','','','','0321-2805517','flat No.B-504 Fizza appartment garden medical','','karachi','sindh',133,'1954-11-30','Folding work','','Matric','2013-08-10 03:37:33','2013-08-10 03:37:38',229),(120,123,'Syed','Moiz Ali','Father','','','','0302-2182600','775/9 F,B area karachi','','karachi','sindh',133,'1965-09-06','Private service','','inter commerce','2013-08-10 03:41:09','2013-08-10 03:41:14',231),(121,124,'Aleem-Uddin ','Taimuri','Husband','','','','','liaqatabad  No.4 karachi','(permanent add) model colony malir 88/A karachi','karachi','sindh',133,'1971-10-12','sale man','','Inter','2013-08-10 03:45:36','2013-08-10 03:45:42',233),(122,125,'Farhan','Munawwar','Brother','','','','0315-3140780','2/G -3/6 Nazimabad karachi','','karachi','sindh',133,'1986-09-06','Account Officer','','B.com','2013-08-10 03:52:03','2013-08-10 03:52:13',235),(123,126,'Shafiq','Uddin','Father','','','','0322-2266647','plot No.50/4/8 banglow A-3','','karachi','sindh',133,'1960-08-01','Buisness','','Matric','2013-08-10 04:01:30','2013-08-10 04:01:35',237),(124,127,'Muhammad ','Kamal (late)','Father','noreplyp00271@fedena.com','','','0321-2069803  and  0321-2132303','Garden west saify plaza C/8 Nishter Road karachi','','karachi','sindh',133,NULL,'','','','2013-08-10 04:13:53','2013-08-10 04:15:53',239),(125,129,'Muhammad ','Iqbal','Father','','','','0346-2818293','2/8 Talib colony liqatabad No.1 karachi','','karachi','sindh',133,'1958-12-25','Buisness','','.','2013-08-10 04:22:13','2013-08-10 04:22:19',242),(126,130,'Syed ','Attique Hassan Nizami','Father','','','','0312-2889532','Orangi Town Ittifaque colony House No.901 Sector 12/L karachi','','karachi','sindh',133,'1956-08-01','','','Tailor master','2013-08-10 04:28:05','2013-08-10 04:28:24',244),(127,131,'Muhammad','Munaf','Father','','','','0333-3233163   and   0345-2052559','Plot No. 1441 Block 3 siddiqabad F.B area karachi','','karachi','sindh',133,'1964-04-20','Service','','B.com','2013-08-10 04:32:24','2013-08-10 04:32:37',246),(128,108,'Hafiz','Mukhtiyar','Father','','','','0301-2477097','House No. 7/10 phase 2 qayyumabad karachi','','karachi','sindh',133,NULL,'Tailor master','','','2013-08-10 05:03:26','2013-08-10 05:03:26',NULL),(129,108,'Hafiz','Mukhtiyar','Father','','','','0301-2477097','House No. 7/10 phase 2 qayyumabad karachi','','karachi','sindh',133,NULL,'Tailor master','','','2013-08-10 05:05:55','2013-08-10 05:06:00',247),(143,146,'Muhammad','hanif','Father','','','','0312-2170806','l-279 sector 5B-1 North karachi','','karachi','sindh',133,'1958-08-01','sevent','','Nill','2012-08-10 07:59:45','2012-08-10 08:29:47',290),(144,147,'Ahmedullah','Khan','Father','','','','','','','Karachi','',133,NULL,'','','','2015-07-25 07:34:00','2015-07-25 07:34:04',292);
/*!40000 ALTER TABLE `guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individual_payslip_categories`
--

DROP TABLE IF EXISTS `individual_payslip_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individual_payslip_categories` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `salary_date` date default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `amount` varchar(255) collate utf8_unicode_ci default NULL,
  `is_deduction` tinyint(1) default NULL,
  `include_every_month` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individual_payslip_categories`
--

LOCK TABLES `individual_payslip_categories` WRITE;
/*!40000 ALTER TABLE `individual_payslip_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `individual_payslip_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liabilities`
--

DROP TABLE IF EXISTS `liabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liabilities` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `amount` int(11) default NULL,
  `is_solved` tinyint(1) default '0',
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liabilities`
--

LOCK TABLES `liabilities` WRITE;
/*!40000 ALTER TABLE `liabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `liabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_payslips`
--

DROP TABLE IF EXISTS `monthly_payslips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_payslips` (
  `id` int(11) NOT NULL auto_increment,
  `salary_date` date default NULL,
  `employee_id` int(11) default NULL,
  `payroll_category_id` int(11) default NULL,
  `amount` varchar(255) collate utf8_unicode_ci default NULL,
  `is_approved` tinyint(1) NOT NULL default '0',
  `approver_id` int(11) default NULL,
  `is_rejected` tinyint(1) NOT NULL default '0',
  `rejector_id` int(11) default NULL,
  `reason` varchar(255) collate utf8_unicode_ci default NULL,
  `remark` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_payslips`
--

LOCK TABLES `monthly_payslips` WRITE;
/*!40000 ALTER TABLE `monthly_payslips` DISABLE KEYS */;
/*!40000 ALTER TABLE `monthly_payslips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `content` text collate utf8_unicode_ci,
  `author_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_comments`
--

DROP TABLE IF EXISTS `news_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_comments` (
  `id` int(11) NOT NULL auto_increment,
  `content` text collate utf8_unicode_ci,
  `news_id` int(11) default NULL,
  `author_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `is_approved` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_comments`
--

LOCK TABLES `news_comments` WRITE;
/*!40000 ALTER TABLE `news_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observation_groups`
--

DROP TABLE IF EXISTS `observation_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `observation_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `header_name` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` varchar(255) collate utf8_unicode_ci default NULL,
  `cce_grade_set_id` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `observation_kind` varchar(255) collate utf8_unicode_ci default NULL,
  `max_marks` float default NULL,
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observation_groups`
--

LOCK TABLES `observation_groups` WRITE;
/*!40000 ALTER TABLE `observation_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `observation_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observations`
--

DROP TABLE IF EXISTS `observations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `observations` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `desc` varchar(255) collate utf8_unicode_ci default NULL,
  `is_active` tinyint(1) default NULL,
  `observation_group_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `sort_order` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_observations_on_observation_group_id` (`observation_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observations`
--

LOCK TABLES `observations` WRITE;
/*!40000 ALTER TABLE `observations` DISABLE KEYS */;
/*!40000 ALTER TABLE `observations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_categories`
--

DROP TABLE IF EXISTS `payroll_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `percentage` float default NULL,
  `payroll_category_id` int(11) default NULL,
  `is_deduction` tinyint(1) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_categories`
--

LOCK TABLES `payroll_categories` WRITE;
/*!40000 ALTER TABLE `payroll_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period_entries`
--

DROP TABLE IF EXISTS `period_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `period_entries` (
  `id` int(11) NOT NULL auto_increment,
  `month_date` date default NULL,
  `batch_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `class_timing_id` int(11) default NULL,
  `employee_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_period_entries_on_month_date_and_batch_id` (`month_date`,`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period_entries`
--

LOCK TABLES `period_entries` WRITE;
/*!40000 ALTER TABLE `period_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `period_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `previous_exam_scores`
--

DROP TABLE IF EXISTS `previous_exam_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previous_exam_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `exam_id` int(11) default NULL,
  `marks` decimal(7,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `remarks` varchar(255) collate utf8_unicode_ci default NULL,
  `is_failed` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_previous_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previous_exam_scores`
--

LOCK TABLES `previous_exam_scores` WRITE;
/*!40000 ALTER TABLE `previous_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `previous_exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privileges` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `description` text collate utf8_unicode_ci,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
INSERT INTO `privileges` VALUES (1,'ExaminationControl','2015-01-10 22:08:59','2015-01-10 22:08:59','examination_control_privilege'),(2,'EnterResults','2015-01-10 22:08:59','2015-01-10 22:08:59','enter_results_privilege'),(3,'ViewResults','2015-01-10 22:08:59','2015-01-10 22:08:59','view_results_privilege'),(4,'Admission','2015-01-10 22:09:00','2015-01-10 22:09:00','admission_privilege'),(5,'StudentsControl','2015-01-10 22:09:00','2015-01-10 22:09:00','students_control_privilege'),(6,'ManageNews','2015-01-10 22:09:00','2015-01-10 22:09:00','manage_news_privilege'),(7,'ManageTimetable','2015-01-10 22:09:00','2015-01-10 22:09:00','manage_timetable_privilege'),(8,'StudentAttendanceView','2015-01-10 22:09:00','2015-01-10 22:09:00','student_attendance_view_privilege'),(9,'HrBasics','2015-01-10 22:09:00','2015-01-10 22:09:00','hr_basics_privilege'),(10,'AddNewBatch','2015-01-10 22:09:00','2015-01-10 22:09:00','add_new_batch_privilege'),(11,'SubjectMaster','2015-01-10 22:09:00','2015-01-10 22:09:00','subject_master_privilege'),(12,'EventManagement','2015-01-10 22:09:00','2015-01-10 22:09:00','event_management_privilege'),(13,'GeneralSettings','2015-01-10 22:09:00','2015-01-10 22:09:00','general_settings_privilege'),(14,'FinanceControl','2015-01-10 22:09:00','2015-01-10 22:09:00','finance_control_privilege'),(15,'TimetableView','2015-01-10 22:09:00','2015-01-10 22:09:00','timetable_view_privilege'),(16,'StudentAttendanceRegister','2015-01-10 22:09:00','2015-01-10 22:09:00','student_attendance_register_privilege'),(17,'EmployeeAttendance','2015-01-10 22:09:00','2015-01-10 22:09:00','employee_attendance_privilege'),(18,'PayslipPowers','2015-01-10 22:09:00','2015-01-10 22:09:00','payslip_powers_privilege'),(19,'EmployeeSearch','2015-01-10 22:09:00','2015-01-10 22:09:00','employee_search_privilege'),(20,'SMSManagement','2015-01-10 22:09:00','2015-01-10 22:09:00','sms_management_privilege'),(21,'StudentView','2015-01-10 22:09:19','2015-01-10 22:10:01','student_view_privilege');
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges_users`
--

DROP TABLE IF EXISTS `privileges_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privileges_users` (
  `user_id` int(11) default NULL,
  `privilege_id` int(11) default NULL,
  KEY `index_privileges_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges_users`
--

LOCK TABLES `privileges_users` WRITE;
/*!40000 ALTER TABLE `privileges_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `privileges_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_levels`
--

DROP TABLE IF EXISTS `ranking_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranking_levels` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `gpa` decimal(15,2) default NULL,
  `marks` decimal(15,2) default NULL,
  `subject_count` int(11) default NULL,
  `priority` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `full_course` tinyint(1) default '0',
  `course_id` int(11) default NULL,
  `subject_limit_type` varchar(255) collate utf8_unicode_ci default NULL,
  `marks_limit_type` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_levels`
--

LOCK TABLES `ranking_levels` WRITE;
/*!40000 ALTER TABLE `ranking_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranking_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` int(11) NOT NULL auto_increment,
  `sender` int(11) default NULL,
  `recipient` int(11) default NULL,
  `subject` varchar(255) collate utf8_unicode_ci default NULL,
  `body` text collate utf8_unicode_ci,
  `is_read` tinyint(1) default '0',
  `is_deleted_by_sender` tinyint(1) default '0',
  `is_deleted_by_recipient` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_reminders_on_recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) collate utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20090622100004'),('20090622102004'),('20090622104053'),('20090622104054'),('20090622114927'),('20090622115927'),('20090703074822'),('20090706170408'),('20090715234257'),('20090715234258'),('20090717124241'),('20090717126241'),('20090718050113'),('20090718050453'),('20090718050921'),('20090718052749'),('20090731092833'),('20090818045411'),('20090818050018'),('20090904071048'),('20090904071548'),('20090904071642'),('20090904071905'),('20090904071906'),('20090904071907'),('20090904071908'),('20090904071909'),('20090910062751'),('20090914095002'),('20090914114212'),('20090916052300'),('20090917052349'),('20090917065256'),('20090924081520'),('20090926071527'),('20091009093746'),('20091026065251'),('20091202050910'),('20091202053600'),('20091202104818'),('20091207084711'),('20091207085849'),('20091207090412'),('20091217191652'),('20091217201118'),('20091224063502'),('20100403073735'),('20100403092229'),('20100403093355'),('20100412105036'),('20100412105116'),('20100422110336'),('20100426094532'),('20100429093616'),('20100505075459'),('20100515063157'),('20100515063814'),('20100520073311'),('20100524093457'),('20100525055716'),('20100602115152'),('20100604103435'),('20100604103916'),('20100604104308'),('20100604104759'),('20100609073016'),('20100609074544'),('20100730092747'),('20100731053458'),('20100731054033'),('20100731055437'),('20101209063633'),('20110221051223'),('20110510121550'),('20110511053223'),('20110516110336'),('20110706114907'),('20110711100500'),('20110721122326'),('20110728115723'),('20110729055539'),('20110730100503'),('20110805072425'),('20110810052138'),('20110912062640'),('20110928054502'),('20111015111840'),('20111020074717'),('20111105052819'),('20120321065124'),('20120326114112'),('20120404051019'),('20120404051814'),('20120404052524'),('20120410081920'),('20120413090231'),('20120420085643'),('20120421061939'),('20120421062319'),('20120421062549'),('20120421062750'),('20120421062917'),('20120421063035'),('20120423061415'),('20120423100037'),('20120424092335'),('20120425052412'),('20120427102307'),('20120503062405'),('20120503112304'),('20120504123001'),('20120507064439'),('20120508085619'),('20120510070334'),('20120514050238'),('20120514050318'),('20120514050339'),('20120514050353'),('20120514050415'),('20120514050433'),('20120514050455'),('20120514050500'),('20120514050522'),('20120514050548'),('20120514050603'),('20120514063103'),('20120514063142'),('20120516052659'),('20120517112833'),('20120517122038'),('20120518091221'),('20120521120315'),('20120522065318'),('20120522065410'),('20120525100324'),('20120528060855'),('20120530120325'),('20120602095356'),('20120606050404'),('20120606050437'),('20120608090107'),('20120608090126'),('20120613063621'),('20120613070054'),('20120614092829'),('20120615084815'),('20120615085346'),('20120615103301'),('20120618053150'),('20120618102301'),('20120625072331'),('20120625073818'),('20120626082424'),('20120702062719'),('20120704103545'),('20120706090514'),('20120706103712'),('20120710054428'),('20120816045034');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_details`
--

DROP TABLE IF EXISTS `school_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_details` (
  `id` int(11) NOT NULL auto_increment,
  `school_id` int(11) default NULL,
  `logo_file_name` varchar(255) collate utf8_unicode_ci default NULL,
  `logo_content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `logo_file_size` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_details`
--

LOCK TABLES `school_details` WRITE;
/*!40000 ALTER TABLE `school_details` DISABLE KEYS */;
INSERT INTO `school_details` VALUES (1,NULL,NULL,NULL,NULL,'2015-02-07 06:28:44','2015-02-07 06:28:44');
/*!40000 ALTER TABLE `school_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_logs`
--

DROP TABLE IF EXISTS `sms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_logs` (
  `id` int(11) NOT NULL auto_increment,
  `mobile` varchar(255) collate utf8_unicode_ci default NULL,
  `gateway_response` varchar(255) collate utf8_unicode_ci default NULL,
  `sms_message_id` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_logs`
--

LOCK TABLES `sms_logs` WRITE;
/*!40000 ALTER TABLE `sms_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_messages`
--

DROP TABLE IF EXISTS `sms_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_messages` (
  `id` int(11) NOT NULL auto_increment,
  `body` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_messages`
--

LOCK TABLES `sms_messages` WRITE;
/*!40000 ALTER TABLE `sms_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL auto_increment,
  `settings_key` varchar(255) collate utf8_unicode_ci default NULL,
  `is_enabled` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_settings`
--

LOCK TABLES `sms_settings` WRITE;
/*!40000 ALTER TABLE `sms_settings` DISABLE KEYS */;
INSERT INTO `sms_settings` VALUES (1,'ApplicationEnabled',0),(2,'ParentSmsEnabled',0),(3,'EmployeeSmsEnabled',0),(4,'StudentSmsEnabled',0),(5,'ResultPublishEnabled',0),(6,'StudentAdmissionEnabled',0),(7,'ExamScheduleResultEnabled',0),(8,'AttendanceEnabled',0),(9,'NewsEventsEnabled',0);
/*!40000 ALTER TABLE `sms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_additional_details`
--

DROP TABLE IF EXISTS `student_additional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_additional_details` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `additional_field_id` int(11) default NULL,
  `additional_info` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_additional_details`
--

LOCK TABLES `student_additional_details` WRITE;
/*!40000 ALTER TABLE `student_additional_details` DISABLE KEYS */;
INSERT INTO `student_additional_details` VALUES (1,8,1,'42201-0800177-3'),(2,10,1,'42201-0800177-3'),(3,7,1,'42301-9790573-1'),(4,7,1,''),(5,10,1,''),(6,10,1,''),(7,8,1,''),(8,9,1,'42101-1598643-1'),(9,10,1,'42101-1946875-93'),(10,10,1,'42101-1946875-93'),(11,10,1,'42101-1946875-93'),(12,12,1,'42101-1393111-7'),(13,12,1,'42101-1393111-7'),(14,13,1,'44103-8906971-3'),(15,14,1,'42201-3352204-5'),(16,15,1,'42000-0609497-7'),(17,16,1,'42401-6640858-3'),(18,17,1,'-'),(19,18,1,'42101-04503125'),(20,19,1,'42201-79994141'),(21,19,1,'42201-79994141'),(22,19,1,'42201-79994141'),(23,19,1,''),(24,20,1,'42201-5441867-7'),(25,20,1,'42201-5441867-7'),(26,21,1,'42501-1719123-9'),(27,22,1,'42101-3830030-7'),(28,23,1,'42301-0923756-7'),(29,23,1,''),(30,23,1,''),(31,23,1,''),(32,24,1,'4220-01334991-0'),(33,25,1,'42401-80869469'),(34,26,1,'42201-0450312-5'),(35,27,1,'31101-8222012-7'),(36,28,1,'42401-2021418-7'),(37,29,1,'42301-3723387-1'),(38,29,1,'42301-3723387-1'),(39,30,1,'38202-1268548-1'),(40,30,1,'38202-1268548-1'),(41,31,1,'42201-4607208-9'),(42,32,1,'42401-6767716-1'),(43,33,1,'42401-9276349-1'),(44,34,1,'42101-1773897-7'),(45,34,1,'42101-1773897-7'),(46,35,1,''),(47,36,1,'42301-1277525-7'),(48,36,1,'42301-1277525-7'),(49,37,1,'42301-1449376-9'),(50,38,1,'42201-0798479-5'),(51,39,1,'42401-4080072-7'),(52,40,1,''),(53,40,1,''),(54,40,1,''),(55,41,1,'42101-2560102-5'),(56,41,1,''),(57,43,1,'42401-0541703-5'),(58,44,1,'32302-8359651-7'),(59,47,1,'31302-9441273-1'),(60,47,1,'31302-9441273-1'),(61,48,1,'36304-8679210-9'),(62,49,1,'42301-92790505'),(63,50,1,'37406-1598843-1'),(64,51,1,'42201-1783060-1'),(65,52,1,''),(66,53,1,'42301-6698113-5'),(67,54,1,'42201-3094448-9'),(68,54,1,'42201-3094448-9'),(69,55,1,'42201-0581372-3'),(70,56,1,'42301-8713730-3'),(71,57,1,'42301-6104598-9'),(72,58,1,'42301-0909160'),(73,59,1,'42301-9647875-9'),(74,60,1,'42301-0990979-1'),(75,61,1,'42201-4202853-1'),(76,62,1,'42301-5769714-9'),(77,63,1,'42301-0776224-9'),(78,64,1,'42301-0970105-5'),(79,65,1,''),(80,66,1,'42301-2057108-7'),(81,67,1,'42301-0695810-2'),(82,68,1,'42201-1895142-3'),(83,69,1,'42201-1895142-3'),(84,70,1,'42201-4840984-3'),(85,71,1,'42401-0126323-3'),(86,71,1,''),(87,72,1,'42401-0126323-3'),(88,73,1,'42301-0695810-2'),(89,74,1,'42501-8531887-1'),(90,75,1,'42201-3872659-9'),(91,76,1,'42401-3103278-7'),(92,77,1,'42301-1532308-7'),(93,78,1,'42301-1056081-7'),(94,79,1,'42301-1056081-7'),(95,80,1,'38101-0681056-9'),(96,81,1,'42301-8522694-3'),(97,82,1,'42301-111108-5'),(98,84,1,'42301-0651290-5'),(99,86,1,'42101-04503125'),(100,87,1,'42000-0558863-93'),(101,87,1,'42000-0558863-9'),(102,89,1,'42101-9153045-5'),(103,90,1,'51660-187910'),(104,91,1,'42101-1783945-4'),(105,92,1,'42101-3370920-3'),(106,93,1,'42501-1500683-3'),(107,94,1,'42301-1077284-3'),(108,95,1,'42401-1850934-7'),(109,96,1,'42501-40260939'),(110,97,1,'42301-1718991-5'),(111,98,1,'34603-3098154-9'),(112,99,1,'42101-20759687'),(113,100,1,'13101-0281506-9'),(114,101,1,'42101-1804707-9'),(115,102,1,'42301-2868550-7'),(116,103,1,'42201-0775740-7'),(117,104,1,'42401-799225-7'),(118,106,1,'42401-2021418-7'),(119,107,1,'42301-2819489-5'),(120,109,1,'36202-1771474-3'),(121,110,1,'42101-5930826-5'),(122,111,1,'42401-1823012-3'),(123,112,1,''),(124,113,1,'42201-2995263-1'),(125,114,1,'42201-6938629-7'),(126,115,1,''),(127,116,1,'42101-1586302-1'),(128,117,1,'42301-1956635-1'),(129,118,1,'42301-1956635-1'),(130,120,1,'42301-1114298-3'),(131,121,1,'42301-9296842-5'),(132,122,1,'42501-1485890-1'),(133,123,1,'42101-7343726-5'),(134,124,1,'42101-04503125'),(135,125,1,'42101-04312960-7'),(136,126,1,'42301-0823739-7'),(137,127,1,'42301-6378413-7'),(138,129,1,'42401-1568400-5'),(139,130,1,'42401-4935761'),(140,131,1,'42101-1620133-3'),(141,131,1,'42101-1620133-3'),(142,132,1,'42201-0689382-1'),(143,133,1,'42101-0906219-7'),(144,135,1,'42201-0620206-5'),(145,136,1,'37406-0376968-9'),(146,137,1,'31102-0627938-7'),(147,138,1,'42201-13457923'),(148,139,1,'42401-1622890-7'),(149,140,1,'42101-4070174-5'),(150,141,1,'31202-7181627-1'),(151,142,1,'42101-7098255-3'),(152,143,1,'42201-1443139-9'),(153,144,1,'42201-6617839-3'),(154,145,1,'42301-0970163-5'),(155,146,1,'42101-7712610-7'),(156,147,1,'42501-5420150-7'),(157,148,1,'13101-1099018-9'),(158,149,1,'42301-5019403-7'),(159,150,1,'42301-7935527-7'),(160,151,1,'45301-1135653-7'),(161,152,1,'42301-0880965-5'),(162,153,1,'42101-3454598-7'),(163,154,1,'42201-6950569-7'),(164,155,1,'42000-3674884-9'),(165,156,1,'42000-1661180-7'),(166,157,1,'37201-6532851-5'),(167,157,1,'37201-6532851-5'),(168,158,1,'42000-0430344-1'),(169,159,1,'42101-9744485-1'),(170,160,1,'42401-0787757-5'),(171,161,1,'42201-6987757-3'),(172,162,1,'42301-9257991-5'),(173,163,1,'42301-9257991-5'),(174,164,1,'42301-0943513-3'),(175,165,1,'42201-6442999-8'),(176,166,1,'0300-9201709'),(177,167,1,'42201-0963096-9'),(178,168,1,'42301-3946282-5'),(179,169,1,'42301-3946282-5'),(180,170,1,'42201-6897843-7'),(181,171,1,'42201-7988082-5'),(182,172,1,'42301-1762801-7'),(183,173,1,'45103-7697203-9'),(184,147,1,'');
/*!40000 ALTER TABLE `student_additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_additional_fields`
--

DROP TABLE IF EXISTS `student_additional_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_additional_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_additional_fields`
--

LOCK TABLES `student_additional_fields` WRITE;
/*!40000 ALTER TABLE `student_additional_fields` DISABLE KEYS */;
INSERT INTO `student_additional_fields` VALUES (1,'CNIC',1);
/*!40000 ALTER TABLE `student_additional_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_categories`
--

DROP TABLE IF EXISTS `student_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_categories`
--

LOCK TABLES `student_categories` WRITE;
/*!40000 ALTER TABLE `student_categories` DISABLE KEYS */;
INSERT INTO `student_categories` VALUES (1,'A (full fee)',0),(2,'B (concession)',0),(3,'C (exempted)',0),(4,'D (exempted+scholarship)',0);
/*!40000 ALTER TABLE `student_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_previous_datas`
--

DROP TABLE IF EXISTS `student_previous_datas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_previous_datas` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `institution` varchar(255) collate utf8_unicode_ci default NULL,
  `year` varchar(255) collate utf8_unicode_ci default NULL,
  `course` varchar(255) collate utf8_unicode_ci default NULL,
  `total_mark` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_previous_datas`
--

LOCK TABLES `student_previous_datas` WRITE;
/*!40000 ALTER TABLE `student_previous_datas` DISABLE KEYS */;
INSERT INTO `student_previous_datas` VALUES (1,1,'alfruqan','200000','darse nizami','');
/*!40000 ALTER TABLE `student_previous_datas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_previous_subject_marks`
--

DROP TABLE IF EXISTS `student_previous_subject_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_previous_subject_marks` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `subject` varchar(255) collate utf8_unicode_ci default NULL,
  `mark` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_previous_subject_marks`
--

LOCK TABLES `student_previous_subject_marks` WRITE;
/*!40000 ALTER TABLE `student_previous_subject_marks` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_previous_subject_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL auto_increment,
  `admission_no` varchar(255) collate utf8_unicode_ci default NULL,
  `class_roll_no` varchar(255) collate utf8_unicode_ci default NULL,
  `admission_date` date default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `middle_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `date_of_birth` date default NULL,
  `gender` varchar(255) collate utf8_unicode_ci default NULL,
  `blood_group` varchar(255) collate utf8_unicode_ci default NULL,
  `birth_place` varchar(255) collate utf8_unicode_ci default NULL,
  `nationality_id` int(11) default NULL,
  `language` varchar(255) collate utf8_unicode_ci default NULL,
  `religion` varchar(255) collate utf8_unicode_ci default NULL,
  `student_category_id` int(11) default NULL,
  `address_line1` varchar(255) collate utf8_unicode_ci default NULL,
  `address_line2` varchar(255) collate utf8_unicode_ci default NULL,
  `city` varchar(255) collate utf8_unicode_ci default NULL,
  `state` varchar(255) collate utf8_unicode_ci default NULL,
  `pin_code` varchar(255) collate utf8_unicode_ci default NULL,
  `country_id` int(11) default NULL,
  `phone1` varchar(255) collate utf8_unicode_ci default NULL,
  `phone2` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `immediate_contact_id` int(11) default NULL,
  `is_sms_enabled` tinyint(1) default '1',
  `photo_file_name` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `photo_data` mediumblob,
  `status_description` varchar(255) collate utf8_unicode_ci default NULL,
  `is_active` tinyint(1) default '1',
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `has_paid_fees` tinyint(1) default '0',
  `photo_file_size` int(11) default NULL,
  `user_id` int(11) default NULL,
  `photo2_file_name` varchar(255) collate utf8_unicode_ci default NULL,
  `photo2_content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `photo2_data` mediumblob,
  `photo2_file_size` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_students_on_admission_no` (`admission_no`(10)),
  KEY `index_students_on_first_name_and_middle_name_and_last_name` (`first_name`(10),`middle_name`(10),`last_name`(10)),
  KEY `index_students_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (7,'00001',NULL,'2015-01-30','Muhammad ','Ahmed ','Raza',1,'1998-05-18','m','','karachi',133,'sindhi','islam',1,'Garden west','Garden west,shalimar garden fuwara chowk karchi','karachi','sindh','70301',133,'','0333-3606371','',NULL,1,'70301 AHMED RAZA 001.PNG','image/png',NULL,NULL,1,0,'2015-01-30 07:53:31','2015-03-27 09:17:42',0,28163,13,NULL,NULL,NULL,NULL),(8,'00002',NULL,'2014-08-10','Muhammad ','Ibrahim ','Ashrafi',1,'1996-04-29','m','','karachi',133,'urdu','Islam',1,'A-4 Firdous Apartment first Round about Nazimabad karachi','','karachi','sindh','70302',133,'-','0333-3158445','abdulmusta.ibrahim@gmail.com',10,1,'70302 ibrahim ashrafi.PNG','image/png',NULL,NULL,1,0,'2015-03-28 07:16:01','2015-03-28 07:20:42',0,26400,21,NULL,NULL,NULL,NULL),(9,'00003',NULL,'2014-08-10','Muddassir','Rahman','',1,'1996-08-03','m','','karachi',133,'Urdu','Islam',3,'6/5 A. 1-J Muslim leage quaterz nazimabad No.1','(Address) 48/1 400 Quaterz Gulbahar No.2','karachi','Sindh','70304',133,'Nil','0341-0809923','talat42110@hotmail.com',11,1,'70304 MUDDASSIR 001.PNG','image/png',NULL,NULL,1,0,'2015-03-28 07:25:28','2015-03-28 07:37:30',0,23786,22,NULL,NULL,NULL,NULL),(10,'00004',NULL,'2014-08-10','Syed','Hamid Hassan','Rizwi',1,'1975-04-07','m','B+','karachi',133,'Urdu','Islam',1,'Anar kali complex bab-e-arif A-120 North Karachi  Nagan chowrangi Up Phase 2 ','','karachi','sindh','70305',133,'-','0300-2379570','hamidpyia@hotmail.com',12,1,'70305 SYED HAMID RAZA 001.PNG','image/png',NULL,NULL,1,0,'2015-03-28 07:53:57','2015-04-04 10:28:41',0,24599,23,NULL,NULL,NULL,NULL),(11,'00005',NULL,'2015-03-28','Muhammad ','Hamza','Baig',1,'1997-11-03','m','','karachi',133,'Urdu','Islam',1,'Street No.11 Area 37/A Landhi 3.1/2','','karachi','sindh','70306',133,'','0342-2462211','smartboy404_@hotmail.com',13,1,'70306 HAMZA BAIG 001.PNG','image/png',NULL,NULL,1,0,'2015-03-28 08:03:29','2015-03-28 08:07:57',0,24790,24,NULL,NULL,NULL,NULL),(12,'00006',NULL,'2014-08-10','Muhammad','Shoaib','',1,'1997-08-03','m','','karachi',133,'Khatri /  Marvari','islam',1,'126/16 Sector S-E','New Karachi','karachi','Sindh','70307',133,'','0311-8402980','mshoaibkhatri@homtmail.com',14,1,'70307 SHOAIB IQBAL 001.PNG','image/png',NULL,NULL,1,0,'2015-03-31 04:50:09','2015-03-31 04:53:12',0,25205,25,NULL,NULL,NULL,NULL),(13,'00007',NULL,'2014-08-10','Muhammad ','Saleem','Ashiq ',1,'2010-03-31','m','','Multan',133,'Saraeeki','Islam',1,'Flat No.403 Rabbi Appartment Gulshan-e-iqbal Karachi','(permanent add) jamia noor-ul-quran Near shah pump Hyderabad road Mirpur khas','Mirpur khas','sindh','70308',133,'','0306-9199561','',15,1,'70308 SALEEM ASHIQUE 001.PNG','image/png',NULL,NULL,1,0,'2015-03-31 04:59:19','2015-03-31 05:25:08',0,24924,27,NULL,NULL,NULL,NULL),(14,'00008',NULL,'2015-04-01','Muhammad ','Usam','Jamali',1,'2010-04-01','m','','Muzaffar Garh',133,'Sareeki','Islam',2,'Plot No.52 jama masjid siddiqia sodier bazar karachi','(permanent add) ferozabad colony kot addu ghazi ghat distric muzaffarabad','kot addu,muzzafarabad','punjab','70309',133,'','0322-2380626','',16,1,'70309 USAMA JAMALI 001.PNG','image/png',NULL,NULL,1,0,'2015-04-01 05:32:37','2013-08-10 04:54:15',0,24050,29,NULL,NULL,NULL,NULL),(15,'00009',NULL,'2014-08-10','Muhammad ','Anas ','Amin',1,'1998-09-10','m','','karachi',133,'Memoni','Islam',1,'Garden west','Flate 509 own peradize garden ','karachi','sindh','70',133,'','0331-3806983','anasgadit456@hotmail.com',17,1,'70314 ANAS AMIN 001.PNG','image/png',NULL,NULL,1,0,'2015-04-01 05:39:38','2015-04-01 05:43:39',0,26071,30,NULL,NULL,NULL,NULL),(16,'00010',NULL,'2015-08-10','Muhammad ','Uzair ','Ahmed',1,'1996-09-16','m','','',133,'Memoni','Islam',1,'Garden west','Flate No.409 B block. own peradize fawara chock garden west','karachi','sindh','70315',133,'','0336-3183064','Uzairahmed92@hotmail.com',18,1,'70315 UZAIR AHMED 001.PNG','image/png',NULL,NULL,1,0,'2015-04-01 05:46:18','2015-04-01 05:49:00',0,26795,32,NULL,NULL,NULL,NULL),(17,'00011',NULL,'2015-04-01','Rafay','Mustafa','',1,'2010-01-03','m','B+','karachi',133,'Urdu','Islam',1,'Defence view phase 2','House No. 94 block F Defence view','karachi','Sindh','70316',133,'','0346-0341202','mafaq48@hotmail.com',19,1,'70316  RAAFAY MUSTAFA 001.PNG','image/png',NULL,NULL,1,0,'2015-04-01 05:52:36','2015-04-01 05:54:22',0,22476,33,NULL,NULL,NULL,NULL),(18,'00012',NULL,'2014-08-10','Muhammad ','Mohtasham-ud-Din','Taimuri',1,'2002-05-10','m','','karachi',133,'Urdu','Islam',2,'Liaqtabad No.4','(Permanent Add) Model colony Malir 88/A','karachi','Sindh','70318',133,'','0334-3106082','',20,1,'70318 mohtasham uddin.PNG','image/png',NULL,NULL,1,0,'2015-04-01 06:07:44','2015-04-01 06:09:12',0,28199,35,NULL,NULL,NULL,NULL),(19,'00013',NULL,'2014-08-10','Syed ','Abdul ','Hadi',1,'1996-01-08','m','','karachi',133,'urdu','islam',1,'323 bahadurabad karachi','','karachi','sindh','70321',133,'','0336-3309685','',21,1,'70321 SYED A.HADI 001.PNG','image/png',NULL,NULL,1,0,'2015-04-14 11:40:38','2015-04-14 11:41:48',0,25424,37,NULL,NULL,NULL,NULL),(20,'00014',NULL,'2014-08-10','Muhammad','Saad','suleman',1,'1997-01-04','m','','karachi',133,'Memoni','islam',1,'D-56/i  Block 4- F.b area karachi','-','karachi','sindh','70322',133,'','0333-3070994','saadsuleman@hotmail.com',NULL,1,'70322 SAAD SULEMAN 001.PNG','image/png',NULL,NULL,1,0,'2015-04-14 11:44:56','2015-04-14 11:44:56',0,26798,39,NULL,NULL,NULL,NULL),(21,'00015',NULL,'2014-08-10','Syed ','Muhammad','Qaseem-uddin',1,'1997-06-21','m','','karachi',133,'urdu','islam',NULL,'M-243 molaram compond malir city karachi','','sindh','sindh','70327',133,'','0313-2159886','syedqaseem2012@gmail.com',22,1,'70327 qaseem uddin 001.PNG','image/png',NULL,NULL,1,0,'2015-04-14 11:48:31','2015-04-14 11:49:52',0,23930,40,NULL,NULL,NULL,NULL),(22,'00016',NULL,'2014-08-10','Muhammad','Naveed','Afsar Hussain',1,'1982-10-05','m','','karachi',133,'urdu','islam',3,'P.25 block N north nazimabad karachi','','karachi','sindh','70329',133,'','0313-2781274','',23,1,'70329 naveed afsar 001.PNG','image/png',NULL,NULL,1,0,'2015-04-14 12:03:27','2015-04-14 12:05:14',0,24583,42,NULL,NULL,NULL,NULL),(23,'00017',NULL,'2014-08-10','Muhammad','Asad','Attari',1,'1995-12-22','m','','karachi',133,'urdu','islam',1,'ghazi nagar usmanabad H.no 270 streat 12 . sadar town','karachi','karachi','sindh','70332',133,'','0344-2620675','attari11914@gmail.com',26,1,'70332 asad abbasi 001.PNG','image/png',NULL,NULL,1,0,'2015-04-14 12:08:29','2015-04-14 12:13:10',0,26263,44,NULL,NULL,NULL,NULL),(24,'00018',NULL,'2014-08-10','Muhammad','Danish','Hasni',1,'1995-07-07','m','','karachi',133,'punjabi','islam',1,'Flat 302 pir haven PIB colony karachi','','karachi','sindh','70333',133,'','0300-2312622','',27,1,'70333 danish hasni 001.PNG','image/png',NULL,NULL,1,0,'2015-04-14 12:15:52','2015-04-14 12:18:02',0,25366,45,NULL,NULL,NULL,NULL),(25,'00019',NULL,'2014-08-10','Noman','Farooqi','',1,'1996-09-23','m','','karachi',133,'urdu','Islam',1,'House no.68 sector 11-E  orangi town','','karachi','sindh','70341',133,'','0344-0081239','',28,1,'70341 noman farooqi 001.PNG','image/png',NULL,NULL,1,0,'2015-04-14 12:21:31','2015-04-14 12:22:26',0,20089,47,NULL,NULL,NULL,NULL),(26,'00020',NULL,'2014-08-10','Abdul Rehman','Shaikh','',1,'1997-07-23','m','A+','karachi',133,'urdu','islam',NULL,'Fiza Recidancy flate no.103 gardan west karachi','-','karachi','sindh','70342',133,'','0341-2291621','Sheikh_a.rehman@gmail.com',29,1,'70342 A.rehman 001.PNG','image/png',NULL,NULL,1,0,'2015-04-14 12:25:53','2015-04-14 12:28:30',0,25479,49,NULL,NULL,NULL,NULL),(27,'00021',NULL,'2014-08-10','Muhammad','Afzal ','Madani',1,'1995-09-25','m','','punjab',133,'urdu','islam',1,'House no.123 sector 12 L. orangi town karachi','','karachi','sindh','70343',133,'','0316-2254104','',31,1,'70343 afzal madni 001.PNG','image/png',NULL,NULL,1,0,'2015-04-14 12:29:27','2015-04-14 12:36:24',0,22865,51,NULL,NULL,NULL,NULL),(28,'00022',NULL,'2014-08-10','Tariq ','Mehmood','',1,'1994-08-22','m','','attak',133,'panjabi','islam',1,'House no.300 block B ittehad town baldia town karachi','','karachi','sindh','70344',133,'','0302-2835941','',32,1,'70344 tariq mehmood 001.PNG','image/png',NULL,NULL,1,0,'2015-04-14 12:40:08','2015-04-14 12:41:46',0,26184,53,NULL,NULL,NULL,NULL),(29,'00023',NULL,'2014-08-10','Muhammad ','Qarib ','Yaseen',1,'1995-06-27','m','','karachi',133,'urdu','islam',1,'Flat 301 Al ramzan amna corner garden fuwara chowk karachi','','Karachi','sindh','70345',133,'','0333-2157310','Qaribshah301@hotmail.com',33,1,'70345 qarib yaseen 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 04:27:38','2015-04-17 04:28:40',0,25214,55,NULL,NULL,NULL,NULL),(30,'00024',NULL,'2014-08-10','Muhammad','Ramzan','Sialvi',1,'1992-01-05','m','','punjab',133,'panjabi','islam',2,'nafeesabad 3 hatti karachi no.5','','karachi','sindh','70347',133,'','0313-2279096','',34,1,'70347 ramzan sialvi 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 04:42:17','2015-04-17 04:44:03',0,22930,57,NULL,NULL,NULL,NULL),(31,'00025',NULL,'2014-08-08','Muhammad ','Dawood','Raza',1,'1998-03-01','m','','karachi',133,'urdu','islam',1,'House No.L / 129 block A','KDA ground TP2 mehmoodabad bara gate','Karachi','sindh','70348',133,'','0303-9396605','',35,1,'70348 dawood raza 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 04:48:02','2015-04-17 04:49:14',0,24991,59,NULL,NULL,NULL,NULL),(32,'00026',NULL,'2014-08-10','Sher ','Muhmmad','',1,'1998-12-20','m','','karachi',133,'Balochi','islam',1,'Mouch vllage Hub river road karachi','','karachi','sindh','70349',133,'','0302-9483019','',36,1,'70349 sher muhammad 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 04:53:51','2015-04-17 04:54:25',0,24908,61,NULL,NULL,NULL,NULL),(33,'00027',NULL,'2014-08-10','Muhammad','Fardan','',1,'2002-04-29','m','O+','karachi',133,'Urdu','islam',1,'House No. E-269 mohalla sultanabad Near phool clowk','','Karachi','sindh','70350',133,'','0324-2554216','',37,1,'70350 fardan 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 04:59:41','2015-04-17 05:02:51',0,26903,63,NULL,NULL,NULL,NULL),(34,'00028',NULL,'2014-08-10','Muhammad','Sheheryar','Zubair',1,'1997-10-09','m','','karachi',133,'Memoni','Islam',3,'K-49 khalidabad Firdous colony karachi','','Karachi','sindh','70352',133,'','0315-2962441','',38,1,'70352 sheheryar 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 05:05:28','2015-04-17 05:06:41',0,27535,65,NULL,NULL,NULL,NULL),(35,'00029',NULL,'2014-08-10','Syed ','Faizan ','Hussain',1,'1990-09-14','m','','Karachi',133,'urdu','islam',2,'B.area Liaqtabad karachi 71/ 17','','karachi','sindh','70353',133,'','0342-2621670','',39,1,'70353 faizan shakeel 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 05:09:18','2015-04-17 05:11:17',0,30262,67,NULL,NULL,NULL,NULL),(36,'00030',NULL,'2014-08-10','Furqan','Fahim','Essa',1,'1995-02-25','m','','karachi',133,'urdu','islam',1,'plot No.232/ K pedro d\'souza raod garden east karachi','','karachi','sindh','70354',133,'','0323-2819269','',40,1,'70354 furqan fahim 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 05:26:55','2015-04-17 05:29:05',0,23157,69,NULL,NULL,NULL,NULL),(37,'00031',NULL,'2015-04-17','Muhammad ','Mehdi','Haroon',1,'2010-04-17','m','','karachi',133,'memoni','islam',1,'Islam pura state garden east karachi','','karachi','sindh','70355',133,'','0324-2303540','',41,1,'70355 mehdi haroon 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 05:41:08','2015-04-17 05:43:01',0,27376,70,NULL,NULL,NULL,NULL),(38,'00032',NULL,'2010-08-10','Kashif ','Jawed','',1,'1981-04-05','m','O+','karachi',133,'urdu','islam',1,'MC.348 green town karachi','','karachi','sindh','70357',133,'','03002109646','',42,1,'70357 kashif jawai 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 05:48:38','2015-04-17 05:50:37',0,29755,72,NULL,NULL,NULL,NULL),(39,'00033',NULL,'2014-08-10','Fareed ','Alam','',1,'1998-07-03','m','','karachi',133,'Bangali','islam',1,'Uc-5 kemari town karachi','','karachi','sindh','70359',133,'','0323-2765304','',43,1,'70359 fareed alam 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 05:55:17','2015-04-17 05:56:59',0,24736,74,NULL,NULL,NULL,NULL),(40,'00034',NULL,'2014-08-10','Muhammad','Usman','',1,'1996-03-21','m','','bhawalpur',133,'punjabi','islam',1,'Saddiq wahab road usmanabad karachi','','bhawalpur','punjab','70360',133,'','0304-1201412','',44,1,'70360 USMAN ATTARI 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 06:00:31','2015-04-17 06:01:58',0,26645,76,NULL,NULL,NULL,NULL),(41,'00035',NULL,'2014-08-10','Syed','Najam','',1,'1994-12-02','m','','karachi',133,'Urdu','Islam',1,'R 785. B2 North karachi','','karachi','sindh','70362',133,'','0321-9292126','',45,1,'70362 SYED NAJAM 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 06:03:57','2015-04-17 06:05:07',0,27186,78,NULL,NULL,NULL,NULL),(43,'00037',NULL,'2015-08-10','Waqas','Ahmed','',1,'1995-03-10','m','','Karachi',133,'Hindko','islam',1,'House No. B.454 madina basti site karachi','','karachi','sindh','70365',133,'','0340-8046897','mwaqas666@hotmail.com',46,1,'70365 WAQAS ANWAR 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 06:08:52','2015-04-17 06:09:51',0,27335,81,NULL,NULL,NULL,NULL),(44,'00038',NULL,'2014-08-10','Muhammad','Hidayat ullah','',1,'2010-04-17','m','','muzaffar garh',133,'surayki','islam',1,'Azeem pura shah faisal colony N.4 jamiya madina masjid muzaffar garh','','muzaffar garh','punjab ','70368',133,'','0300-5629074','',47,1,'70368 HIDAYATULLAH 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 06:42:54','2015-04-17 06:45:23',0,26010,83,NULL,NULL,NULL,NULL),(47,'00041',NULL,'2014-08-10','Muhammad ','Bilal','Abid',1,'1994-01-01','m','','Rahim yar Khan',133,'surayki','Islam',1,'House No.1303 green town karachi','(permanent Add) Basti gul muhammad Araen ghous abad liaqat pur rahim yar khan','rahim yar khan','punjab','70369',133,'','0308-7190671','',48,1,'70369 bilal abid 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 06:52:31','2015-04-17 06:53:26',0,30345,87,NULL,NULL,NULL,NULL),(48,'00036',NULL,'2014-08-10','Shafqat ','Hussain','',1,'1992-05-25','m','','multan',133,'surayki','islam',1,'Jamia masjid noor millat town malir halt','distarcit multan shujabad khaki punjani jamal wala','multan','punjab','70370',133,'','0312-0012762','',49,1,'70370 shafqat hussain 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 07:15:06','2015-04-17 07:16:05',0,27040,89,NULL,NULL,NULL,NULL),(49,'00040',NULL,'2014-08-10','Ahmed','Hussain','Rizwi',1,'1997-01-12','m','','karachi',133,'urdu','islam',1,'Near bunyadi masjid flate A m.a jinah road','','karachi','sindh','70375',133,'','0313-3391199','ahussain.rizwi@gmail.com',50,1,'70375 ahmed hussain 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 07:22:57','2015-04-17 07:23:39',0,25382,90,NULL,NULL,NULL,NULL),(50,'00042',NULL,'2014-08-10','Muhammad ','Ata-ul-Mustafa','',1,'1995-04-24','m','','Rawalpindi',133,'punjabi','islam',1,'plote No. KESC No.229 streat No.3 ghousabad joona dhobi ghaat,','','karachi','sindh','70376',133,'','0341-2969361','',51,1,'70376 ata-ul-mustafa 001.PNG','image/png',NULL,NULL,1,0,'2015-04-17 07:26:31','2015-04-17 07:29:27',0,21847,92,NULL,NULL,NULL,NULL),(51,'00043',NULL,'2014-08-10','Hafiz','Ahmed Raza','Noorani',1,'1993-05-21','m','','karachi',133,'Hazara','islam',1,'qaidabad 22 No.karachi','','karachi','sindh','703377',133,'','0333-2711662','',52,1,'70377 HAMID NOORANI.PNG','image/png',NULL,NULL,1,0,'2015-04-20 04:19:37','2015-04-20 04:20:38',0,25589,94,NULL,NULL,NULL,NULL),(52,'00044',NULL,'2014-08-10','syed Tahir shah hamdani','','',1,'2010-04-20','m','','',133,'','',NULL,'','','','','',133,'','','',53,1,NULL,NULL,NULL,NULL,1,0,'2015-04-20 04:21:23','2015-04-20 04:21:47',0,NULL,96,NULL,NULL,NULL,NULL),(53,'00101',NULL,'2014-08-10','Mashal','Abdul','Ghaffar',1,'1990-06-02','f','','karachi',133,'memoni','islam',1,'R.204 saba terrace garden west karachi','','karachi','sindh','70401',133,'','0323-2424230','',54,1,'70401 mashal a.ghaffar 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 04:25:09','2014-08-10 04:32:45',0,21738,98,NULL,NULL,NULL,NULL),(54,'00102',NULL,'2014-08-10','Sidra','Sohrab','khan',1,'1993-10-31','f','A+','karachi',133,'urdu','islam',1,'Area 4-c house No.7/8 landhi No.6 karachi','','karachi','sindh','70402',133,'','0336-8351576','sidra.sohrab59@yahoo.com',55,1,'70402 sidra sohrab 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 04:29:43','2014-08-10 04:31:54',0,20980,100,NULL,NULL,NULL,NULL),(55,'00103',NULL,'2014-08-10','Hina ','Arif','',1,'1986-09-29','f','','karachi',133,'urdu','islam',1,'House no. 202 T area Korangi No.2 karachi','','karachi','sindh','70403',133,'','0332-2448224','M.hina20@gmail.com',56,1,'70403 hina arif 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 04:37:55','2014-08-10 04:39:30',0,19868,102,NULL,NULL,NULL,NULL),(56,'00104',NULL,'2014-08-10','Rabia','Abdul','Rehman',1,'1995-02-13','f','','karachi',133,'memoni','islam',1,'Flat No.303 Al-ramzan classic building fuwara chowk garden west karchi','','karachi','sindh','70404',133,'','0321-2433736','',57,1,'70404 rabia a.rehman 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 04:42:20','2014-08-10 04:43:24',0,25086,104,NULL,NULL,NULL,NULL),(57,'00105',NULL,'2014-08-10','Misbah ','Iqbal','',1,'1997-03-11','f','','karachi',133,'memoni','islam',1,'Garden jailani plaza flate No.606 floor 6 block B','','karachi','sindh','70405',133,'','0322-2029754','Talha2013@outlook.com',58,1,'70405 misbah iqbal 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 04:46:06','2014-08-10 04:47:29',0,23981,106,NULL,NULL,NULL,NULL),(58,'00106',NULL,'2014-08-10','Javeria','Muhammad','Arif',1,'1992-09-26','f','','karachi',133,'memoni','islam',1,'nishter road Near Risala thana police station bhimpura Nadia terrace','','karachi','sindh','70406',133,'','0321-2138988','',59,1,'70406 jaweria arif 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 04:50:19','2014-08-10 04:51:50',0,28694,108,NULL,NULL,NULL,NULL),(59,'00107',NULL,'2014-08-10','Tasmina','Muhammad','Iqbal',1,'1993-07-11','f','','karachi',133,'Memoni','islam',1,'Opp risala thana bhimpura nadia terrace','','karachi','sindh','70407',133,'','0322-2177945','',60,1,'70407 tasmina iqbal 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 05:01:15','2014-08-10 05:03:49',0,27136,110,NULL,NULL,NULL,NULL),(60,'00108',NULL,'2014-08-10','Zainab ','Mussani','',1,'1998-02-17','f','O+','karachi',133,'urdu','islam',3,'Raja Mension Yaqoob khan road 5th floor karachi','','karachi','sindh','70408',133,'','0334-3088435','',61,1,'70408 zainab mussani 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 05:08:17','2014-08-10 05:09:37',0,28672,112,NULL,NULL,NULL,NULL),(61,'00109',NULL,'2014-08-10','Amina','Fatima','Qadri',1,'1992-01-14','f','','karachi',133,'gujrati','islam',1,'sumayya residency D.M.M. co-operative society blockNo.3 plot No.232 flat No602 baadurabad karachi','','karachi','sindh','70409',133,'','0312-2412417','bint3.Qadri@gmail.com',62,1,'70409 amina fatima 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 05:13:34','2014-08-10 05:14:55',0,19249,114,NULL,NULL,NULL,NULL),(62,'00110',NULL,'2014-08-10','Sabeen','Abdul','Rehman',1,'1997-06-24','f','','karachi',133,'Gujrati','islam',1,'A-501 faizan Heights Near garden Medical center garden west karachi','','karachi','sindh','70410',133,'','0324-2428779','',63,1,'70410 sabeen a.rehman 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 05:18:51','2014-08-10 05:20:48',0,20218,116,NULL,NULL,NULL,NULL),(63,'00111',NULL,'2014-08-10','Yasmeen','Abdul Ghaffar','',1,'1984-02-11','f','O+','sukkar',133,'memoni','islam',1,'A-305 Noran plaza near police building shoe market karachi','','karachi','sindh','70412',133,'','','',64,1,'70412 yasmeen a.ghaffar 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 05:23:40','2014-08-10 05:29:42',0,33293,118,NULL,NULL,NULL,NULL),(64,'00112',NULL,'2014-08-10','Hameeda','Haroon','',1,'1996-10-09','f','','karachi',133,'Memoni','islam',1,'Kashan m.hussain mension streat No.5 Nayabad lyari karachi','','karachi','sindh','70413',133,'','0323-2168215','shahzadsorathia@hotmail.com',65,1,'70413 hameeda haroon.PNG','image/png',NULL,NULL,1,0,'2014-08-10 05:38:40','2014-08-10 05:41:10',0,28489,120,NULL,NULL,NULL,NULL),(65,'00113',NULL,'2014-08-10','Radia','Muhammad','Yaseen',1,'1998-10-24','f','','karachi',133,'punjabi','islam',1,'House No. 902 streat 12/A mehmoodabad No.4 karachi','','karachi','sindh','70414',133,'','','m.mubashir202@hotmail.com',66,1,'70414 radia yaseen 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 05:44:56','2014-08-10 06:15:30',0,27362,122,NULL,NULL,NULL,NULL),(66,'00114',NULL,'2014-08-10','Mehwish ','Hashim','',1,'1990-09-20','f','','karachi',133,'Memoni','islam',1,'Arba Arcade flat No.D-1 raghoo streat ram swami karachi','','karachi','sindh','70416',133,'','','',67,1,'70416 mehwish 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 06:27:58','2014-08-10 06:30:38',0,26585,124,NULL,NULL,NULL,NULL),(67,'00115',NULL,'2014-08-10','Shereen khan','D/o ','Asif Khan',1,'1998-08-28','f','A+','karachi',133,'Urdu','islam',1,'B-221, 1BD1, gulshan e iqbal karachi','','karachi','sindh','70417',133,'','0331-8939052','',68,1,'70417 shireen khan 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 06:37:21','2014-08-10 06:42:42',0,21395,126,NULL,NULL,NULL,NULL),(68,'00116',NULL,'2014-08-10','Abida','Muhammad','Mustafa',1,'1992-05-30','f','','karachi',133,'punjabi','islam',1,'43/1 doli khata bori comp iqbal market soldier bazar No.1 karachi','','karachi','sindh','70418',133,'','0312-2918741','salma_113@ymail.com',69,1,'70418 abida mustafa 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 06:47:26','2014-08-10 06:48:35',0,20011,128,NULL,NULL,NULL,NULL),(69,'00117',NULL,'2014-08-10','Samira ','Muhammad','Mustafa',1,'1994-06-11','f','','karachi',133,'punjabi','islam',1,'43/1 doli khata bori comp iqbal market soldier bazar No.1 karachi','','karachi','sindh','70419',133,'','','salma_113@ymail.com',70,1,'70419 samira mustafa 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 06:51:10','2014-08-10 06:52:10',0,21082,130,NULL,NULL,NULL,NULL),(70,'00118',NULL,'2014-08-10','Umm-Ul-Qura','','',1,'1996-03-13','f','','karachi',133,'urdu','islam',1,'Noor mension 4th floor soldier bazar No.2 karachi','','karachi','sindh','70420',133,'','0347-2060364','',71,1,'70420 umm-ul-qura 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 06:54:39','2014-08-10 06:55:48',0,27473,131,NULL,NULL,NULL,NULL),(71,'00119',NULL,'2014-08-10','Ambreen','Siddique','',1,'1994-11-10','f','','karachi',133,'Urdu','Islam',1,'House no.253 baba wilayat ali shah colony sector 11 karachi','','karachi','sindh','70421',133,'','0305-5344399','Ambreensiddique75@gmail.com',72,1,'70421 ambreen siddique 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 06:57:59','2014-08-10 07:00:12',0,30390,133,NULL,NULL,NULL,NULL),(73,'00121',NULL,'2014-08-10','Rabia Khan','D/o ','Asif Khan',1,'1996-08-17','f','A+','karachi',133,'punjabi','islam',1,'B-221, 1BD1, gulshan e iqbal karachi','','karachi','sindh','70422',133,'','0331-8939052','rabia.khan757@yahoo.com',74,1,'70422 rabia khan 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 07:07:30','2014-08-10 07:09:02',0,24382,136,NULL,NULL,NULL,NULL),(74,'00122',NULL,'2014-08-10','Noureen ','Hashim','',1,'1982-04-15','f','','karachi',133,'urdu','islam',1,'House No.40 wazeerabad malir karachi','','karachi','sindh','70424',133,'','0342-2905493','',75,1,'70424 noreen hashim 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 07:15:01','2014-08-10 07:35:09',0,23435,138,NULL,NULL,NULL,NULL),(75,'00123',NULL,'2014-08-10','Aisha','Riaz','',1,'1988-03-10','f','','lahore',133,'urdu','islam',1,'C-137 aleemabad malir karachi','','karachi','sindh','70425',133,'','0334-3756656','',76,1,'70425 aisha riaz 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 07:36:53','2014-08-10 07:38:12',0,17464,140,NULL,NULL,NULL,NULL),(76,'00124',NULL,'2014-08-10','Hina','Aurangzaib ','Khan',1,'1996-03-03','f','B+','karachi',133,'Hazara','islam',1,'G-155 M.T khan Road sultanabad karachi','','karachi','sindh','70426',133,'','0321-2894582','',77,1,'70426 hina aurangzaib 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 07:40:17','2014-08-10 07:41:29',0,27452,142,NULL,NULL,NULL,NULL),(77,'00125',NULL,'2014-08-10','Ayesha ','Saleem','',1,'1997-07-01','f','','karachi',133,'memoni','islam',1,'Hasrat Mohani Raod pakistan chowk 1st floor supermarket karachi','','karachi','sindh','70428q',133,'','0323-2371608','',78,1,'70428 ayesha saleem.PNG','image/png',NULL,NULL,1,0,'2014-08-10 07:43:33','2014-08-10 07:44:34',0,27626,144,NULL,NULL,NULL,NULL),(78,'00126',NULL,'2014-08-10','Nasreen Bano','D/o ','Muhammad Tayiab',1,'2009-08-10','f','O+','karachi',133,'Gujrat + Memoni','islam',1,'House No. 302 pearl Garden, garden west karachi','','karachi','sindh','70429',133,'','0324-2827611','ntayiab@hotmail.com',79,1,'70429 nasreen bano 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 07:47:31','2014-08-10 07:50:43',0,30406,146,NULL,NULL,NULL,NULL),(80,'00128',NULL,'2014-08-10','Irum','Muhammad','Aslam',1,'1999-07-14','f','','karachi',133,'urdu','islam',1,'jamia masjid allah wali near polic station soldier bazar No.1 karachi','','karachi','sindh','70430',133,'','','sunniaalima@gmail.com',81,1,'70430 erum aslam 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 07:57:26','2014-08-10 07:58:31',0,26079,150,NULL,NULL,NULL,NULL),(81,'00129',NULL,'2014-08-10','Sakina','Tariq','',1,'1976-05-11','f','O+','karachi',133,'memoni','islam',1,'House No.401 teena larze near sialani welfare masjid bahadurabad krachi','','karachi','sindh','70432',133,'','0313-9227263','',82,1,'70432 sakina tariq 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 08:20:19','2014-08-10 08:21:17',0,16273,151,NULL,NULL,NULL,NULL),(82,'00130',NULL,'2014-08-10','Sidra ','Marium','',1,'1990-11-04','f','O-','karachi',133,'punjabi','',NULL,'flate No.32 block F police head Quarters garden raod karachi','','karachi','sindh','70433',133,'','0307-6214311','sidra.marium@ymail.com',83,1,'70433 sidra mariyam 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 08:24:17','2014-08-10 08:25:51',0,25081,153,NULL,NULL,NULL,NULL),(84,'00131',NULL,'2014-08-10','Rabia','Bakali','',1,'1994-01-08','f','O+','karachi',133,'memoni','islam',1,'G/K 2/18 3rd floor khadija arcade kharadar','','karachi','sindh','70434',133,'','0320-9203516','rabia.cute94@yahoo.com',84,1,'70434 rabia bakali 001.PNG','image/png',NULL,NULL,1,0,'2014-08-10 08:31:46','2014-08-10 08:39:13',0,26097,156,NULL,NULL,NULL,NULL),(86,'00201',NULL,'2013-08-10','Muhammad','Sameer ','Uddin',2,'2009-08-10','m','','karachi',133,'Urdu','islam',2,'liaqatabad karachi No.4','(permanent add) model colony malir 88/A karachi','karachi','sindh','70102',133,'','','',85,1,'70102 sameer uddin 001.PNG','image/png',NULL,NULL,1,0,'2013-08-01 08:44:02','2013-08-10 04:55:27',0,26066,160,NULL,NULL,NULL,NULL),(87,'00202',NULL,'2013-08-01','Abdul','Rehman','',2,'1996-10-01','m','','karachi',133,'memoni','islam',1,'474/1 plot No.83 amil colony No.2 jamshed Road','','karachi','sindh','70108',133,'','0332-2298765','Abdulrehmansays@gmail.com',86,1,'70108 A.rehman.PNG','image/png',NULL,NULL,1,0,'2013-08-01 08:51:50','2013-08-10 04:45:18',0,27127,163,NULL,NULL,NULL,NULL),(88,'00203',NULL,'2013-08-10','Muhammad ','Muddassir','Ashrafi',2,'1998-01-13','m','','karachi',133,'memoni','islam',1,'flate No.302 Al makran centre pan mandi karachi','','karachi','sindh','70109',133,'','0311-2944392','',NULL,1,'70109 muddassir 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 08:55:53','2013-08-10 04:56:06',0,26030,165,NULL,NULL,NULL,NULL),(89,'00204',NULL,'2013-08-10','Hafiz','Muhammad','kashif Ilyas',2,'2008-08-10','m','','karachi',133,'urdu','islam',2,'Dt90 F.b area karachi NO.2','','karachi','sindh','70111',133,'','0315-2590680','',88,1,'70111 kashif ilyas.PNG','image/png',NULL,NULL,1,0,'2013-08-10 04:29:20','2013-08-10 04:49:49',0,28842,166,NULL,NULL,NULL,NULL),(90,'00205',NULL,'2013-08-10','Muhammad ','Aqib','Raees',2,'1996-05-31','m','','karachi',133,'urdu','islam',4,'soldier bazar No.2 roshan shah colony House No.D-3 karachi','','karachi','sindh','70115',133,'','0310-0012661','',89,1,'70115 aqib raees 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 04:32:41','2013-08-10 04:47:21',0,23948,167,NULL,NULL,NULL,NULL),(91,'00206',NULL,'2013-08-10','Muhammad ','Kashif','Jamal Khan',2,'1984-10-11','m','','karachi',133,'urdu','islam',1,'B-191 mustafabad north nazimabad karachi','','karachi','sindh','70116',133,'','0333-3012689','kashifjamal12@gmail.com',90,1,'70116 kashif jamal 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 04:35:48','2013-08-10 04:54:40',0,28049,169,NULL,NULL,NULL,NULL),(92,'00207',NULL,'2013-08-10','Muhammad','Furqan','Mushtaq',2,'1997-08-08','m','','karachi',133,'urdu','islam (deo-bandi aqaid)',2,'Z.A4 Zahidabad sharifabad karachi','','karachi','sindh','70117',133,'','0308-9013633','',91,1,'70117 furqan mushtaq 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 04:43:30','2013-08-10 04:57:27',0,23840,171,NULL,NULL,NULL,NULL),(93,'00208',NULL,'2013-08-10','Muhammad ','Tahir','Raffique',2,'1994-08-22','m','','karachi',133,'surayki','islam',2,'sector 23 maleer zone karachi','','karachi','sindh','70121',133,'','0305-2573592','tahirraza011@hotmail.com',92,1,'70121 tahir raza.PNG','image/png',NULL,NULL,1,0,'2013-08-10 05:29:38','2013-08-10 04:57:03',0,20945,173,NULL,NULL,NULL,NULL),(94,'00209',NULL,'2013-08-10','Hafiz','Abdul Rehman','Sohurwardi',2,'1995-09-22','m','','karachi',133,'memoni','islam',1,'Jamshed Road 3 Number haidarbad colony karachi','','karachi','sindh','70123',133,'','0324-9208862','',93,1,'70123 hafiz a.rehman 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 05:34:33','2013-08-10 04:50:40',0,29628,175,NULL,NULL,NULL,NULL),(95,'00210',NULL,'2013-08-10','Arshad ','Ali','Hussaini',2,'1994-08-15','m','','karachi',133,'sindhi','islam',4,'House NO.437 sector 9 block A new saeedabad baldia town karachi No.51','','karachi','sindh','70124',133,'','0314-5955304','arshadalihussaini20@gmail.com',94,1,'70124 arshad salih 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 05:37:59','2013-08-10 04:51:15',0,25959,177,NULL,NULL,NULL,NULL),(96,'00211',NULL,'2013-08-10','Muhammad ','Ali','Mukhtiar',2,'1993-06-11','m','','karachi',133,'urdu','islam',2,'Street No.23 House No.43/7 Model colony karachi','','karachi','sindh','70126',133,'','0347-2789109','Muhammadaliowaisi1@gmail.com',95,1,'70126 ali mukhtar 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 05:42:28','2013-08-10 04:58:26',0,26084,179,NULL,NULL,NULL,NULL),(97,'00212',NULL,'2013-08-10','Tanzeel ','Ahmed','Qadri',2,'1998-03-05','m','','karachi',133,'Memoni','',1,'301 hemani centre bottle gali light house karchi','','karachi','sindh','70128',133,'','0334-3487405','Tanzeelahmad786@hotmail.com',96,1,'70138 tanzeel ahmed 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 05:47:58','2013-08-10 04:56:32',0,27710,181,NULL,NULL,NULL,NULL),(98,'00213',NULL,'2013-08-10','Hafiz','Ali','Raza',2,'1997-02-21','m','','sialkot ',133,'punjabi','islam',1,'Jamia masjid Abu bakar block13 gulistan e johar karachi','','Sialkot','punjab','70136',133,'','0331-6143310','Ali.raz6143310@gmail.com',97,1,'70136 hafiz ali raza.PNG','image/png',NULL,NULL,1,0,'2013-08-10 05:52:11','2013-08-10 04:51:40',0,22937,183,NULL,NULL,NULL,NULL),(99,'00214',NULL,'2013-08-10','Naved','Nisar','Ahmed',2,'1996-01-25','m','','',133,'urdu','Islam',2,'House No.8/1 F.c Area liaqtabad karachi','','karachi','sindh','70137',133,'','0314-8068869','',98,1,'70137 naveed nisar 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 05:57:53','2013-08-10 05:09:38',0,24918,185,NULL,NULL,NULL,NULL),(100,'00215',NULL,'2013-08-10','Hafiz','Adil','Mehmood',2,'1995-03-04','m','','Abatabad',133,'Hazara','Islam',2,'sector 4H House No.3686 New saeedabad baldiya town karachi.','','karachi','sindh','70138',133,'','0347-7189905','',99,1,'70138 adil mehmood 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 06:20:25','2013-08-10 04:52:47',0,25796,187,NULL,NULL,NULL,NULL),(101,'00216',NULL,'2013-08-10','Muhammad ','Nabeel ','Aslam',2,'1995-03-17','m','','karachi',133,'Urdu','islam',2,'147/11-12 bara board nazimabad','','karachi','sindh','70146',133,'','0347-3559501','',100,1,'70146 nabeel aslam 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 06:24:30','2013-08-10 04:59:16',0,26584,189,NULL,NULL,NULL,NULL),(102,'00217',NULL,'2013-08-10','Muhammad ','Ahmed ','Raza',2,'1994-07-27','m','','karachi',133,'Urdu','Islam',3,'Flat No.7  4th floor Al-Madina manzil ranchor line','','karachi','sindh','70148',133,'','0303-2880292','Ahmedbarelvi26@gmail.com',101,1,'70148 ahmed raza 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 06:47:33','2013-08-10 04:59:48',0,27091,191,NULL,NULL,NULL,NULL),(103,'00218',NULL,'2013-08-10','Muhtashum','Akram','Uppal',1,'1991-09-23','m','A-','karachi',133,'punjabi','Islam',2,'House No. R-143 sector A-1 jacab line karachi','','karachi','sindh','70151',133,'','0344-0083885','',102,1,'70151 mohtasham 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 06:52:36','2013-08-10 06:55:16',0,27736,193,NULL,NULL,NULL,NULL),(104,'00219',NULL,'2013-08-10','syed','Noman ','Shah',2,'1998-01-25','m','O+','karachi',133,'punjabi','islam',2,'sector 8/A baldia town karachi','','','sindh','7015',133,'','0344-2348717','nomanshah@gmail.com',103,1,'70192 syed noman shah 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 06:57:19','2013-08-10 05:10:51',0,22965,195,NULL,NULL,NULL,NULL),(105,'00220',NULL,'2013-08-10','Muhammad ','Usman','',2,'1994-08-20','m','','Attock',133,'punjabi','islam',3,'House No. 300 block B. ittehad town, baldia town karachi','','karachi','sindh','70165',133,'','0307-2809547   and   0307-2692250','',NULL,1,'70165 usman 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 07:02:40','2013-08-10 05:09:14',0,26048,197,NULL,NULL,NULL,NULL),(106,'00221',NULL,'2013-08-10','Ibrahim','Khalil','',2,'1997-11-29','m','','karachi',133,'punjabi','islam',3,'House No. 300 block B. ittehad town, baldia town karachi','','karachi','sindh','70166',133,'','0313-2645550','',105,1,'70166 ibrahim khalil 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 07:14:45','2013-08-10 04:52:11',0,26015,198,NULL,NULL,NULL,NULL),(107,'00222',NULL,'2013-08-10','Muhammad ','Mubashir','Mustafa',2,'1994-10-17','m','B+','karachi',133,'urdu','islam',1,'b-95  2nd street defence view Phase No.1 karachi','','karachi','sindh','70168',133,'021-35897490','0313--4773662    and   0300-4773662','muhammadmubashirmustafa@gmail.com',106,1,'70168 mubashir mustafa 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 07:21:58','2013-08-10 04:45:58',0,25592,200,NULL,NULL,NULL,NULL),(108,'00223',NULL,'2013-08-10','Muhammad ','Faisal','',2,'1997-03-12','m','A+','karachi',133,'punjabi','islam',2,'House No. 7/10 phase 2 qayyumabad karachi','','karachi','sindh','70173',133,'','0308-2901122','R.faizane@yahoo.com',129,1,'70173 faisal mukhtar 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 07:32:15','2013-08-10 05:06:34',0,23995,202,NULL,NULL,NULL,NULL),(110,'00225',NULL,'2013-08-10','Muhammad ','Bilal','Saleem',2,'1998-08-14','m','','karachi',133,'urdu','islam',2,'3F 7/1 nazimabad No.3 karachi Flat No.17','','karachi','sindh','70175',133,'','0312-8768925','bilalsheikh98@hotmail.com',108,1,'70175 bilal saleem 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 07:37:11','2013-08-10 07:46:07',0,26134,205,NULL,NULL,NULL,NULL),(111,'00226',NULL,'2014-01-10','Muhammad ','Jawwad','Khan',2,'1998-01-01','m','','karachi',133,'Urdu','Islam',1,'sector 5E surjani Town karachi','','karachi','sindh','70190',133,'','0342-2182083','',109,1,'70190 jawwad khan 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 07:58:14','2013-08-10 08:38:52',0,22722,207,NULL,NULL,NULL,NULL),(112,'00227',NULL,'2013-08-15','Muhammad ','Mohsin ','Iqbal',2,'1991-05-01','m','','Jhang',133,'punjabi','islam',1,'House No. 61 streat 1 zia colony k0rang No.1 karachi','(permanent Add) shah sadiq nehang shorkot disc jhang','jhang','punjab','70194',133,'','0301-4504947','',110,1,'70194 mohsin iqbal 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 06:23:13','2013-08-10 06:24:03',0,26249,209,NULL,NULL,NULL,NULL),(113,'00228',NULL,'2013-08-10','Muhammad','Owais','',2,'1993-03-09','m','','karachi',133,'punjabi','islam',1,'plot No.1052 House No.3 P.I.B colony karachi','','Karachi','sindh','70193',133,'','0345-2091083','',111,1,'70193 owais inayatullah 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 06:25:54','2013-08-10 06:26:49',0,25265,211,NULL,NULL,NULL,NULL),(114,'00229',NULL,'2013-08-10','Hafiz','Sarfaraz ','Ahmed Qasmi',2,'1996-07-26','m','O+','karachi',133,'sindhi','islam',1,'ghulistan e johar block 9 near Bakhtawar opp dubai house karachi','','karachi','sindh','20268',133,'','0303-9398722','qasmisarfaraz@gmail.com',112,1,'20268 sarfaraz qasmi.PNG','image/png',NULL,NULL,1,0,'2013-08-10 06:28:16','2013-08-10 07:47:52',0,24710,213,NULL,NULL,NULL,NULL),(115,'00230',NULL,'2013-08-10','Bilal','Raza','',2,'1995-01-12','m','','karachi',133,'Memoni','Islam',1,'lakhani terrace punjab town soldier bazar No.1 karachi','','karachi','sindh','20261',133,'','0310-2326198','w.w.w.@95gmail.com',113,1,'20261 bilal raza 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 07:50:14','2013-08-10 08:50:17',0,28441,215,NULL,NULL,NULL,NULL),(116,'00260',NULL,'2013-08-10','Uffaque','Muhammad ','Ibrahim',2,'1997-02-22','f','','karachi',133,'urdu','islam',1,'Garden west jilani masjid Asad Appartment 2nd floor','','karachi','sindh','70201',133,'','0321-2069961','',114,1,'70201 uffaque ibrahim 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 08:55:29','2013-08-10 08:56:24',0,27377,217,NULL,NULL,NULL,NULL),(117,'00261',NULL,'2013-08-10','Zahida','Muhammad','Junaid',2,'1993-12-11','f','','Karachi',133,'Memoni','islam',3,'B-19 4th floor shalimar garden west G.H kassam Road karachi','','karachi','sindh','70204',133,'','0324-2148366','qadribachi@gmail.com',115,1,'70204 ZAHIDA MEHMOOD 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 08:59:35','2013-08-10 09:00:32',0,20660,219,NULL,NULL,NULL,NULL),(118,'00262',NULL,'2013-08-10','Amna','Muhammad','Junaid',2,'2008-08-10','f','','karachi',133,'Memoni','Islam',3,'B-19 4th floor shalimar garden west G.H kassam Road karachi','','karachi','sindh','70205',133,'','0324-2148366','Twinkle_twinkle_star@hotmail.com',116,1,'70205 AMNA JUNAID 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 09:03:20','2013-08-10 09:09:59',0,24178,221,NULL,NULL,NULL,NULL),(119,'00263',NULL,'2013-08-10','Marhaba','Abdul','Kareem',2,'1997-10-21','f','B+','karachi',133,'urdu','Islam',3,'Al-Burhan Arcade Block-B Flate No.502 garden west karachi','','karachi','sindh','70206',133,'','0320-8348861','',NULL,1,'70206 MARHBA A.KARIM 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 09:12:45','2013-08-10 09:12:45',0,23482,223,NULL,NULL,NULL,NULL),(120,'00264',NULL,'2013-08-11','Nazish ','Akram','',2,'1991-06-03','f','O+','karachi',133,'Hindko','Islam',1,'House No.130 street No.36/B mehmoodabad No.6 karachi','','karachi','sindh','70207',133,'','0313-2406964','Nazish_akram2001@yahoo.com',117,1,'70207 NAZISH AKRAM 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 03:26:19','2013-08-10 03:29:56',0,27719,224,NULL,NULL,NULL,NULL),(121,'00265',NULL,'2013-08-10','Ruqqaiya','Abdul Ghani','',2,'1997-07-08','f','','karachi',133,'Memoni','Islam',1,'Tayyabi Heights flat No.410 Near naseem cloth market lasbela karachi','','karachi','sindh','70208',133,'','0310-2652984','shuma.3244@gmail.com',118,1,'70208 RUQAIYA A.GHANI.PNG','image/png',NULL,NULL,1,0,'2013-08-10 03:32:39','2013-08-10 03:33:27',0,23260,226,NULL,NULL,NULL,NULL),(122,'00266',NULL,'2013-08-10','Hajra ','Muhammad','Amin',2,'1995-05-12','f','','karachi',133,'Memoni','Islam',4,'flat No.B-504 Fizza appartment garden medical','','karachi','sindh','70209',133,'','0324-2277731','',119,1,'70209 hajra amin 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 03:36:19','2013-08-10 03:37:38',0,33946,228,NULL,NULL,NULL,NULL),(123,'00267',NULL,'2013-08-10','Syeda','Mehak','Fatima',2,'1991-06-06','f','AB+','Karachi',133,'Urdu','Islam',1,'775/9 F,B area karachi','','karachi','sindh','70210',133,'','0302-2182600','',120,1,'70210 syeda mehak fatima 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 03:40:03','2013-08-10 03:41:14',0,23935,230,NULL,NULL,NULL,NULL),(124,'00268',NULL,'2013-08-10','Nazia','Aleem-Uddin','',2,'1976-05-08','m','B+','karachi',133,'Urdu','Islam',2,'liaqatabad  No.4 karachi','(permanent add) model colony malir 88/A karachi','karachi','sindh','70211',133,'','0334-3106082','',121,1,'70211 nazia aleem 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 03:44:27','2013-08-10 03:45:42',0,27775,232,NULL,NULL,NULL,NULL),(125,'00269',NULL,'2013-08-10','Fazila ','Munawwar','',2,'1996-08-08','f','','karachi',133,'Urdu','islam',1,'2/G -3/6 Nazimabad karachi','','karachi','sindh','70215',133,'','0315-2613057','',122,1,'70215 fazila munawwar 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 03:50:41','2013-08-10 03:52:13',0,17961,234,NULL,NULL,NULL,NULL),(126,'00270',NULL,'2013-08-10','Shaista','Shafiq','',2,'1990-04-06','f','','karachi',133,'Urdu','islam',1,'plot No.50/4/8 banglow A-3','','karachi','sindh','70226',133,'','0320-8247963','shaistaattariya@gmail.com',123,1,'70223 shaista shafiq 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 03:59:36','2013-08-10 04:01:35',0,26972,236,NULL,NULL,NULL,NULL),(127,'00271',NULL,'2013-08-10','Nazia','Attaria','',2,'1986-09-02','f','','karachi',133,'urdu','islam',1,'Garden west saify plaza C/8 Nishter Road karachi','','karachi','sindh','70225',133,'','0313-1278731','',124,1,'70225 nazia.PNG','image/png',NULL,NULL,1,0,'2013-08-10 04:12:07','2013-08-10 04:57:58',0,17610,238,NULL,NULL,NULL,NULL),(129,'00273',NULL,'2013-08-10','Muniza','Iqbal','',2,'1998-02-06','f','','karachi',133,'urdu','Islam',1,'2/8 Talib colony liqatabad No.1 karachi','','karachi','sindh','70227',133,'','0341-2438340','',125,1,'70227 muniza iqbal 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 04:20:12','2013-08-10 04:22:19',0,23046,241,NULL,NULL,NULL,NULL),(130,'00274',NULL,'2013-08-10','Syeda','Saira','Nizami',2,'1994-07-07','f','A+','karachi',133,'urdu','islam',3,'Orangi Town Ittifaque colony House No.901 Sector 12/L karachi','','karachi','sindh','70229',133,'','0311-2701258','',126,1,'70229 syeda saira nizami 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 04:26:05','2013-08-10 04:28:24',0,18256,243,NULL,NULL,NULL,NULL),(131,'00275',NULL,'2013-08-10','Kaneez','Fatima','Munaf',2,'1996-01-26','f','','karachi',133,'Memoni','Islam',1,'Plot No. 1441 Block 3 siddiqabad F.B area karachi','','karachi','sindh','70230',133,'','0321-2118503  and  0345-2052559','Munaf.hashim@gmail.com',127,1,'70230 kaneez fatima 001.PNG','image/png',NULL,NULL,1,0,'2013-08-10 04:30:52','2013-08-10 04:44:30',0,28561,245,NULL,NULL,NULL,NULL),(146,'00324',NULL,'2012-08-10','Muhammad ','Shahbaz','Naqshbandi',1,'1993-11-26','m','','karachi',133,'Urdu','islam',1,'l-279 sector 5B-1 North karachi','','karachi','sindh','20284',133,'','','shahbaznaqshbandi5@gmail.com',143,1,'20284 shehbaz naqshbandi 001.PNG','image/png',NULL,NULL,1,0,'2012-08-10 07:58:46','2012-08-10 08:29:47',0,26407,275,NULL,NULL,NULL,NULL),(147,'00325',NULL,'2015-07-25','Umair','Ahmed','Khan',4,'2010-07-25','m','B+','',133,'','',1,'','','Karachi','','',133,'','','',144,1,'umair_port.jpg','image/jpeg',NULL,NULL,1,0,'2015-07-25 07:33:23','2015-07-25 08:23:20',0,12163,291,'umair_port.jpg','image/jpeg',NULL,12163);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_subjects`
--

DROP TABLE IF EXISTS `students_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students_subjects` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_students_subjects_on_student_id_and_subject_id` (`student_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_subjects`
--

LOCK TABLES `students_subjects` WRITE;
/*!40000 ALTER TABLE `students_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `students_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_leaves`
--

DROP TABLE IF EXISTS `subject_leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_leaves` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `month_date` date default NULL,
  `subject_id` int(11) default NULL,
  `employee_id` int(11) default NULL,
  `class_timing_id` int(11) default NULL,
  `reason` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `batch_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_subject_leaves_on_month_date_and_subject_id_and_batch_id` (`month_date`,`subject_id`,`batch_id`),
  KEY `index_subject_leaves_on_student_id_and_batch_id` (`student_id`,`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_leaves`
--

LOCK TABLES `subject_leaves` WRITE;
/*!40000 ALTER TABLE `subject_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `code` varchar(255) collate utf8_unicode_ci default NULL,
  `batch_id` int(11) default NULL,
  `no_exams` tinyint(1) default '0',
  `max_weekly_classes` int(11) default NULL,
  `elective_group_id` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `credit_hours` decimal(15,2) default NULL,
  `prefer_consecutive` tinyint(1) default '0',
  `amount` decimal(15,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_subjects_on_batch_id_and_elective_group_id_and_is_deleted` (`batch_id`,`elective_group_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Sarf','DN-101',1,1,5,NULL,0,'2015-02-07 06:51:05','2015-02-07 06:51:05',NULL,0,NULL);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zones`
--

DROP TABLE IF EXISTS `time_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zones` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `code` varchar(255) collate utf8_unicode_ci default NULL,
  `difference_type` varchar(255) collate utf8_unicode_ci default NULL,
  `time_difference` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zones`
--

LOCK TABLES `time_zones` WRITE;
/*!40000 ALTER TABLE `time_zones` DISABLE KEYS */;
INSERT INTO `time_zones` VALUES (1,'Greenwich Mean Time','GMT','+',0,'2015-01-10 22:09:20','2015-01-10 22:09:20'),(2,'European Central Time','ECT','+',3600,'2015-01-10 22:09:20','2015-01-10 22:09:20'),(3,'Eastern European Time','EET','+',7200,'2015-01-10 22:09:20','2015-01-10 22:09:20'),(4,'Arabic Standard Time','ART','+',7200,'2015-01-10 22:09:20','2015-01-10 22:09:20'),(5,'Eastern African Time','EAT','+',10800,'2015-01-10 22:09:20','2015-01-10 22:09:20'),(6,'Middle East Time','MET','+',12600,'2015-01-10 22:09:20','2015-01-10 22:09:20'),(7,'Near East Time','NET','+',14400,'2015-01-10 22:09:20','2015-01-10 22:09:20'),(8,'Pakistan Lahore Time','PLT','+',18000,'2015-01-10 22:09:20','2015-01-10 22:09:20'),(9,'Indian Standard Time','IST','+',19800,'2015-01-10 22:09:20','2015-01-10 22:09:20'),(10,'Bangladesh Standard Time','BST','+',21600,'2015-01-10 22:09:20','2015-01-10 22:09:20'),(11,'Vietnam Standard Time','VST','+',25200,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(12,'China Taiwan Time','CTT','+',28800,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(13,'Japan Standard Time','JST','+',32400,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(14,'Australia Central Time','ACT','+',34200,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(15,'Australia Eastern Time','AET','+',36000,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(16,'Solomon Standard Time','SST','+',39600,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(17,'New Zealand Standard Time','NST','+',43200,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(18,'Midway Islands Time','MIT','-',39600,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(19,'Hawaii Standard Time','HST','-',36000,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(20,'Alaska Standard Time','AST','-',32400,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(21,'Pacific Standard Time','PST','-',28800,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(22,'Phoenix Standard Time','PNT','-',25200,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(23,'Mountain Standard Time','MST','-',25200,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(24,'Central Standard Time','CST','-',21600,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(25,'Eastern Standard Time','EST','-',18000,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(26,'Indiana Eastern Standard Time','IET','-',18000,'2015-01-10 22:09:21','2015-01-10 22:09:21'),(27,'Puerto Rico and US Virgin Islands Time','PRT','-',14400,'2015-01-10 22:09:22','2015-01-10 22:09:22'),(28,'Canada Newfoundland Time','CNT','-',12600,'2015-01-10 22:09:22','2015-01-10 22:09:22'),(29,'Argentina Standard Time','AGT','-',10800,'2015-01-10 22:09:22','2015-01-10 22:09:22'),(30,'Brazil Eastern Time','BET','-',10800,'2015-01-10 22:09:22','2015-01-10 22:09:22'),(31,'Central African Time','CAT','-',3600,'2015-01-10 22:09:22','2015-01-10 22:09:22');
/*!40000 ALTER TABLE `time_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable_entries`
--

DROP TABLE IF EXISTS `timetable_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetable_entries` (
  `id` int(11) NOT NULL auto_increment,
  `batch_id` int(11) default NULL,
  `weekday_id` int(11) default NULL,
  `class_timing_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `employee_id` int(11) default NULL,
  `timetable_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_timetable_entries_on_timetable_id` (`timetable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable_entries`
--

LOCK TABLES `timetable_entries` WRITE;
/*!40000 ALTER TABLE `timetable_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetables`
--

DROP TABLE IF EXISTS `timetables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetables` (
  `id` int(11) NOT NULL auto_increment,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `is_active` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `by_start_and_end` (`start_date`,`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetables`
--

LOCK TABLES `timetables` WRITE;
/*!40000 ALTER TABLE `timetables` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_events`
--

DROP TABLE IF EXISTS `user_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_events` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_events`
--

LOCK TABLES `user_events` WRITE;
/*!40000 ALTER TABLE `user_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) collate utf8_unicode_ci default NULL,
  `first_name` varchar(255) collate utf8_unicode_ci default NULL,
  `last_name` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `admin` tinyint(1) default NULL,
  `student` tinyint(1) default NULL,
  `employee` tinyint(1) default NULL,
  `hashed_password` varchar(255) collate utf8_unicode_ci default NULL,
  `salt` varchar(255) collate utf8_unicode_ci default NULL,
  `reset_password_code` varchar(255) collate utf8_unicode_ci default NULL,
  `reset_password_code_until` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `parent` tinyint(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_users_on_username` (`username`(10))
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Admin','User','noreply@fedena.com',1,0,0,'2133a1663d19b6d5824cdadd096e00ccb8805b11','nD8wXQYM',NULL,NULL,'2015-01-10 22:10:01','2015-07-25 07:29:54',NULL),(2,'farhan','farhan','sheikh','farhanmadni92@gmail.com',1,0,0,'51206b45240f1236e1240d17827854f8c2aa8b14','EwBNRylW',NULL,NULL,'2015-01-23 07:38:58','2015-07-25 07:23:23',NULL),(13,'00001','Muhammad ','Raza','',0,1,0,'f101156de8361dd6df7c670cad112bf7e3a09ac2','VUeTnwwE',NULL,NULL,'2015-01-30 07:53:31','2015-03-27 09:13:36',NULL),(18,'zahid','Muhammad ','zahid ameer','zahidameer@gmail.com',1,0,0,'853ec4c654a62ab21a77fe4bf3a571224c355343','FzBan53Y',NULL,NULL,'2015-03-10 06:35:10','2015-03-10 06:35:10',NULL),(21,'00002','Muhammad ','Ashrafi','abdulmusta.ibrahim@gmail.com',0,1,0,'864502aefc6be48f64f4af1524770e20096eb045','Dlbybey7',NULL,NULL,'2015-03-28 07:16:01','2015-03-28 07:16:01',NULL),(22,'00003','Muddassir','','talat42110@hotmail.com',0,1,0,'df472ef0b0237402a4c262e858736b643a93a65a','mi7enNOP',NULL,NULL,'2015-03-28 07:25:28','2015-03-28 07:25:28',NULL),(23,'00004','Syed','Rizwi','hamidpyia@hotmail.com',0,1,0,'58d58c701044ed09b5fd051b73f987bcccd55ea9','fMaegPqv',NULL,NULL,'2015-03-28 07:53:57','2015-03-28 07:53:57',NULL),(24,'00005','Muhammad ','Baig','smartboy404_@hotmail.com',0,1,0,'19a26a2b348de0419efbf84b8d86fde9813aba2b','w6vaAs1i',NULL,NULL,'2015-03-28 08:03:29','2015-03-28 08:07:57',NULL),(25,'00006','Muhammad','','mshoaibkhatri@homtmail.com',0,1,0,'97e75bc6c3386b3c8e47f53b0838c8ec5899ee1b','cbrp1ukG',NULL,NULL,'2015-03-31 04:50:09','2015-03-31 04:50:09',NULL),(26,'p00006','A.ghaffar','','noreplyp00006@fedena.com',0,0,0,'c971d1bc1e869e45f886d6850c98b2d905ec2d02','VdlYwKFb',NULL,NULL,'2015-03-31 04:51:39','2015-03-31 04:52:45',1),(27,'00007','Muhammad ','Ashiq ','',0,1,0,'17a7f5e9c338fd0f608a65be8a78c689640c78bb','YCA039Rp',NULL,NULL,'2015-03-31 04:59:19','2015-03-31 05:25:08',NULL),(28,'p00007','Mufti Muhammad ','Sharif Saeedi','',0,0,0,'0436f122ecfb546b9d46a8e850787531aa212f81','RF2knL1A',NULL,NULL,'2015-03-31 05:06:37','2015-03-31 05:06:37',1),(29,'00008','Muhammad ','Jamali','',0,1,0,'41877fc2894d618c0f5b1839fb48fbd07bd698a5','vPrikzL4',NULL,NULL,'2015-04-01 05:32:37','2013-08-10 04:54:15',NULL),(30,'00009','Muhammad ','Amin','anasgadit456@hotmail.com',0,1,0,'2b77715ccce11fd6888a8ad5c762fe7421f8299c','DOVV9BeL',NULL,NULL,'2015-04-01 05:39:38','2015-04-01 05:43:39',NULL),(31,'p00009','Muhammad ','Amin','',0,0,0,'a251f43e76c9386345e4286e03e5e3834e5d985f','2rimFas0',NULL,NULL,'2015-04-01 05:42:34','2015-04-01 05:42:34',1),(32,'00010','Muhammad ','Ahmed','Uzairahmed92@hotmail.com',0,1,0,'46949ea60021b1954b7ec7c1ba5f420d37fde2b5','CQdQu0aS',NULL,NULL,'2015-04-01 05:46:18','2015-04-01 05:49:00',NULL),(33,'00011','Rafay','','mafaq48@hotmail.com',0,1,0,'4fc110aa315883e4c8c7628a295fc990950e1ecf','2RVdy4JS',NULL,NULL,'2015-04-01 05:52:36','2015-04-01 05:52:36',NULL),(34,'p00011','Muhammad ','Afaq','',0,0,0,'acf7bf9c582f864dcbc3a6f56e2a31c6a38bbf44','N6JtDjA4',NULL,NULL,'2015-04-01 05:54:22','2015-04-01 05:54:22',1),(35,'00012','Muhammad ','Taimuri','',0,1,0,'849e601f7444e81ffe39b12223ed1f76ee37e761','DjWgPQAb',NULL,NULL,'2015-04-01 06:07:44','2015-04-01 06:07:44',NULL),(36,'p00012','Aleem-ud-Din ','Taimuri','',0,0,0,'ef3a10e1f4a8e275465e3949cbfb2270152e3709','x6GUNww7',NULL,NULL,'2015-04-01 06:09:12','2015-04-01 06:09:12',1),(37,'00013','Syed ','Hadi','',0,1,0,'0110a0a1f836a17a206ceb52c4a917c7098ef1c1','YxgRMmw0',NULL,NULL,'2015-04-14 11:40:38','2015-04-14 11:40:38',NULL),(38,'p00013','syed','shakeel qadri','',0,0,0,'403566559f6c2885bca33c928b1bbaec1cbd053f','leDb2QKV',NULL,NULL,'2015-04-14 11:41:48','2015-04-14 11:41:48',1),(39,'00014','Muhammad','suleman','saadsuleman@hotmail.com',0,1,0,'b74e06994c938e50211ad6a7ddd8dd51362b4840','l556mnLl',NULL,NULL,'2015-04-14 11:44:56','2015-04-14 11:44:56',NULL),(40,'00015','Syed ','Qaseem-uddin','syedqaseem2012@gmail.com',0,1,0,'1fc8c422cee5f174d81beb3a5c9d4b27c55237fd','KEP4pq7n',NULL,NULL,'2015-04-14 11:48:31','2015-04-14 11:48:31',NULL),(41,'p00015','Syed ghazi','Fayyaz uddin','',0,0,0,'7cc8e6ad76b2b9862e2a0ef583daec8d52465220','MS915c9H',NULL,NULL,'2015-04-14 11:49:52','2015-04-14 11:49:52',1),(42,'00016','Muhammad','Afsar Hussain','',0,1,0,'351e51dc41b08d78deeaf721077b559a45a7fbb4','DHQ2dGUw',NULL,NULL,'2015-04-14 12:03:27','2015-04-14 12:03:27',NULL),(43,'p00016','Afsar','Hussain','',0,0,0,'818488bdadd4546ec93f9b44c68ef7bb84138650','v6k6PHm5',NULL,NULL,'2015-04-14 12:05:14','2015-04-14 12:05:14',1),(44,'00017','Muhammad','Attari','attari11914@gmail.com',0,1,0,'df786022e3e45e45f5b950be15ba12babfd42e8b','xr2Ljkph',NULL,NULL,'2015-04-14 12:08:29','2015-04-14 12:13:10',NULL),(45,'00018','Muhammad','Hasni','',0,1,0,'df2a2b8cee24c10dbbe80fccc142cf710dc9b6c8','smTEBdpg',NULL,NULL,'2015-04-14 12:15:52','2015-04-14 12:15:52',NULL),(46,'p00018','Qari Mukhtar ','Ahmed Hasni','',0,0,0,'af10b4448188c29f48709d4fd746d5e4fb1291d3','hB4te6i3',NULL,NULL,'2015-04-14 12:18:02','2015-04-14 12:18:02',1),(47,'00019','Noman','','',0,1,0,'67ebc09eb51acb51dcaa8c7f6a5c6f56d3029f99','pao0b2au',NULL,NULL,'2015-04-14 12:21:31','2015-04-14 12:21:31',NULL),(48,'p00019','Nadeem ','Farooqi','',0,0,0,'7ba44a34de073a3089ea7cc67412e36e24761732','d4ob4hOt',NULL,NULL,'2015-04-14 12:22:26','2015-04-14 12:22:26',1),(49,'00020','Abdul Rehman','','Sheikh_a.rehman@gmail.com',0,1,0,'1a4c1ec59d42652a0de1b3349dbb87d7d625037b','Oj3EM1fG',NULL,NULL,'2015-04-14 12:25:53','2015-04-14 12:25:53',NULL),(50,'p00020','Muhammad','Naeem sheikh','',0,0,0,'20792541bdf3105fcbae58f3f281041b6b3390e9','R52TV2Yg',NULL,NULL,'2015-04-14 12:28:05','2015-04-14 12:28:05',1),(51,'00021','Muhammad','Madani','',0,1,0,'c775fe9c93b3df600c1f71d6e0773a434861e5c2','b4lWXzoa',NULL,NULL,'2015-04-14 12:29:27','2015-04-14 12:32:18',NULL),(52,'p00021','Muhammad','Mehboob','',0,0,0,'b686be937832574edd8d412621ed3b23209731f2','J3MOpL1y',NULL,NULL,'2015-04-14 12:36:24','2015-04-14 12:36:24',1),(53,'00022','Tariq ','','',0,1,0,'f4413bf37dec4b82725d32cedb619fd00d36f746','aEGUVoer',NULL,NULL,'2015-04-14 12:40:08','2015-04-14 12:40:08',NULL),(54,'p00022','Muhammad','ismail','',0,0,0,'95196e50c1ec95e70c7f2c98e33f6cd1214942da','EHC38tEr',NULL,NULL,'2015-04-14 12:41:46','2015-04-14 12:41:46',1),(55,'00023','Muhammad ','Yaseen','Qaribshah301@hotmail.com',0,1,0,'fdb6ac020b1ec1385334a62dacfd5a494a239872','dFH5mPsH',NULL,NULL,'2015-04-17 04:27:38','2015-04-17 04:27:38',NULL),(56,'p00023','Muhammad ','Yaseen','',0,0,0,'47bb2f882eaea31dd70b7f22fd4686a5ead5894e','cpw0CSYL',NULL,NULL,'2015-04-17 04:28:39','2015-04-17 04:28:39',1),(57,'00024','Muhammad','Sialvi','',0,1,0,'486ba3a1b878511a37304861060806cbdf7eb8de','NzdzdqCm',NULL,NULL,'2015-04-17 04:42:17','2015-04-17 04:42:17',NULL),(58,'p00024','Hafiz Khizir Hayat','Siyalvi','',0,0,0,'e05e0e9a8b28a9d4dc2020ee2070396fe9cf0a19','Kv1lXntX',NULL,NULL,'2015-04-17 04:44:03','2015-04-17 04:44:03',1),(59,'00025','Muhammad ','Raza','',0,1,0,'83d560ef6936585bb433e3fe15ecdab96b436fea','4M1zG5hd',NULL,NULL,'2015-04-17 04:48:02','2015-04-17 04:48:02',NULL),(60,'p00025','Abdul ','Hameed','',0,0,0,'cace958fa291bd211852146f7dd60c88da88836a','WgRGpYie',NULL,NULL,'2015-04-17 04:49:14','2015-04-17 04:49:14',1),(61,'00026','Sher ','','',0,1,0,'d1cb226aa21d25f2025e41a0a6158535adbaebbb','y2H2aT55',NULL,NULL,'2015-04-17 04:53:51','2015-04-17 04:53:51',NULL),(62,'p00026','Lal ','Muhammad','',0,0,0,'66ce9c2f5970334890100898eeeca933e7b0180e','oThXWrMN',NULL,NULL,'2015-04-17 04:54:25','2015-04-17 04:54:25',1),(63,'00027','Muhammad','','',0,1,0,'a1580c0a56bdd8c47152e5a0deabd4957f7d8726','vckFLEcr',NULL,NULL,'2015-04-17 04:59:41','2015-04-17 04:59:41',NULL),(64,'p00027','Abdul','Qadir','',0,0,0,'b173beffefca7f6da016d7ab993e9baf7cec7199','fRd6zjTY',NULL,NULL,'2015-04-17 05:02:51','2015-04-17 05:02:51',1),(65,'00028','Muhammad','Zubair','',0,1,0,'fcb63a2a6561345ecf3b358be8cee0113be2c0b4','ubhuTOOz',NULL,NULL,'2015-04-17 05:05:28','2015-04-17 05:05:28',NULL),(66,'p00028','Muhammad ','Zubair Ahmed','',0,0,0,'9187703a3eff5006e3cfea0de9ae3129853bed32','JfOIJm8g',NULL,NULL,'2015-04-17 05:06:41','2015-04-17 05:06:41',1),(67,'00029','Syed ','Hussain','',0,1,0,'64e1132187e912496604b2f8ed011ef276a0ac82','DiArcsuk',NULL,NULL,'2015-04-17 05:09:18','2015-04-17 05:09:18',NULL),(68,'p00029','Syed','Shakeel Hussain','',0,0,0,'5de34de5a9bd7dfad6c63a140cacbb3d1400af8c','EL8bTUvm',NULL,NULL,'2015-04-17 05:11:17','2015-04-17 05:11:17',1),(69,'00030','Furqan','Essa','',0,1,0,'cd0aae12401e1245160da3cf7d3e467ea7299597','j0JO68K3',NULL,NULL,'2015-04-17 05:26:55','2015-04-17 05:26:55',NULL),(70,'00031','Muhammad ','Haroon','',0,1,0,'87ccec030dd30557bd7fe2dadb825428dbdfec7a','njoVrwbS',NULL,NULL,'2015-04-17 05:41:08','2015-04-17 05:41:08',NULL),(71,'p00031','Muhammad ','Haroon','',0,0,0,'6d089b498728db9983af2aabc58931018a38638e','eX4YuG13',NULL,NULL,'2015-04-17 05:42:38','2015-04-17 05:42:38',1),(72,'00032','Kashif ','','',0,1,0,'96a0709c9193166eb1b7cf1dfc91abe5d5574a80','s1PBfqa8',NULL,NULL,'2015-04-17 05:48:38','2015-04-17 05:48:38',NULL),(73,'p00032','Muhammad ','Sadiq','',0,0,0,'9262bd8d7f0cb4c20ad4a4abb8f0b08ebbf4bf2e','7BlztLR2',NULL,NULL,'2015-04-17 05:50:37','2015-04-17 05:50:37',1),(74,'00033','Fareed ','','',0,1,0,'4757a844a6642de0a273dca0981b0310c9f88f9f','Pqee4JFK',NULL,NULL,'2015-04-17 05:55:17','2015-04-17 05:55:17',NULL),(75,'p00033','Abul khair','','',0,0,0,'f13ec63f972fcfcb5ebbd697b41b0ba2e1f92ea4','m0McMeXs',NULL,NULL,'2015-04-17 05:56:59','2015-04-17 05:56:59',1),(76,'00034','Muhammad','','',0,1,0,'bab6da37645623a27ef14691e150fb67ccc59bff','hvGCvkpE',NULL,NULL,'2015-04-17 06:00:31','2015-04-17 06:00:31',NULL),(77,'p00034','Muhammad ','Nawaz Hashmi','',0,0,0,'1c28fe63166160db66b6c6111214eacaf411bf1f','Bf57DWES',NULL,NULL,'2015-04-17 06:01:58','2015-04-17 06:01:58',1),(78,'00035','Syed','','',0,1,0,'19827c7f6a1b52efc280521a5703defca2e00b51','EzzgXBOY',NULL,NULL,'2015-04-17 06:03:57','2015-04-17 06:03:57',NULL),(79,'p00035','Syed','Anees Ahmed','',0,0,0,'a6d226137b0df008b484e3cafff7787f62e014d2','JCrBgtJB',NULL,NULL,'2015-04-17 06:05:07','2015-04-17 06:05:07',1),(81,'00037','Waqas','','mwaqas666@hotmail.com',0,1,0,'a589e874757203643b11bc5a1e555935c5dd5106','myEptkSq',NULL,NULL,'2015-04-17 06:08:52','2015-04-17 06:08:52',NULL),(82,'p00037','Anwar','Zaib sajid','',0,0,0,'1856aa2c055cb8bb3893903a7d64359a750c99a6','F1O61A0I',NULL,NULL,'2015-04-17 06:09:51','2015-04-17 06:09:51',1),(83,'00038','Muhammad','','',0,1,0,'37d7a5de36ad4e4e2bb0ed1251bf75c96408ac7b','54vwGORl',NULL,NULL,'2015-04-17 06:42:54','2015-04-17 06:42:54',NULL),(84,'p00038','Ealhi ','bux','',0,0,0,'cd85a0759a446a3e39fa0a272c4be2999d422bf5','1r5Ed5wL',NULL,NULL,'2015-04-17 06:45:23','2015-04-17 06:45:23',1),(87,'00041','Muhammad ','Abid','',0,1,0,'0438ff3ab55727d16604ea3ba6d7e45fbc3be7b6','NA2gF8U2',NULL,NULL,'2015-04-17 06:52:31','2015-04-17 06:52:31',NULL),(88,'p00041','Abid ','Hussain','',0,0,0,'911b7b8a3d28f85f18d027e181f819d9c3b7a6c3','geWgzJlt',NULL,NULL,'2015-04-17 06:53:26','2015-04-17 06:53:26',1),(89,'00036','Shafqat ','','',0,1,0,'9b3526a044a50676a418dbf1d03199105d3c9a1d','mlHTjdjg',NULL,NULL,'2015-04-17 07:15:06','2015-04-17 07:15:06',NULL),(90,'00040','Ahmed','Rizwi','ahussain.rizwi@gmail.com',0,1,0,'6b2a1f7a9a18b8bfd7cc6082a838b3f02d8cbf01','D4oobPTP',NULL,NULL,'2015-04-17 07:22:57','2015-04-17 07:22:57',NULL),(91,'p00040','Muhammad','Hussain Rizwi','',0,0,0,'0ec7f9a15ecb1c77ae9da8b148ebbcac7335fe09','1yhrF2PN',NULL,NULL,'2015-04-17 07:23:39','2015-04-17 07:23:39',1),(92,'00042','Muhammad ','','',0,1,0,'fd33a557c1140c9d46c668e06aa4c0d873280ac1','s97nNRCL',NULL,NULL,'2015-04-17 07:26:31','2015-04-17 07:26:31',NULL),(93,'p00042','Muhammad','Naeem malik','',0,0,0,'fcd411f7331512becac71560fe0120c520902fc3','itpUwVkp',NULL,NULL,'2015-04-17 07:29:27','2015-04-17 07:29:27',1),(94,'00043','Hafiz','Noorani','',0,1,0,'bfe8f1784fd8ffeed763a62af79b45807fa4ce3b','psWV5Ufj',NULL,NULL,'2015-04-20 04:19:37','2015-04-20 04:19:37',NULL),(95,'p00043','Fareed Qadri','','',0,0,0,'9e0ebc5f2802e940e9d5cb3c18c437ec328d4ce4','H8HiJBfJ',NULL,NULL,'2015-04-20 04:20:38','2015-04-20 04:20:38',1),(96,'00044','syed Tahir shah hamdani','','',0,1,0,'f98395bdf3e78c618ff4ac90f8411be52bd0f704','bjJzwMC6',NULL,NULL,'2015-04-20 04:21:23','2015-04-20 04:21:23',NULL),(97,'p00044','shah hamdani','s','',0,0,0,'0e2b688dc81dfbcbcb53c46b89b179944431f068','QmpqTJj5',NULL,NULL,'2015-04-20 04:21:47','2015-04-20 04:21:47',1),(98,'00101','Mashal','Ghaffar','',0,1,0,'19378439bcaccba430b63d6790a5bf7f95b39c3c','RwnFk9Js',NULL,NULL,'2014-08-10 04:25:09','2014-08-10 04:25:09',NULL),(99,'p00101','Abdul','Ghaffar','',0,0,0,'177c0ded005e88ba9e86d6f810206b33fcbf421e','xRHYv9C0',NULL,NULL,'2014-08-10 04:27:07','2014-08-10 04:27:07',1),(100,'00102','Sidra','khan','sidra.sohrab59@yahoo.com',0,1,0,'c71fd771fa246ee54e7921c84c92b45fa149b559','y4IbSKCR',NULL,NULL,'2014-08-10 04:29:43','2014-08-10 04:29:43',NULL),(101,'p00102','Moin','Khan','',0,0,0,'7cfd04750e3b32f563467c9cf7ea8a2043538f6a','GozLCRUm',NULL,NULL,'2014-08-10 04:31:17','2014-08-10 04:31:17',1),(102,'00103','Hina ','','M.hina20@gmail.com',0,1,0,'d19c239dc176c7c3fe041de3e2967f95d8512fb5','S10y9IYA',NULL,NULL,'2014-08-10 04:37:55','2014-08-10 04:37:55',NULL),(103,'p00103','Muhammad ','Zeeshan','',0,0,0,'806b5d339d0c47b0db133aec9a0e5f13533973a7','TlG2qE92',NULL,NULL,'2014-08-10 04:39:30','2014-08-10 04:39:30',1),(104,'00104','Rabia','Rehman','',0,1,0,'d48bea53625c828b61b3673924a836e7902d02ed','FhrqMICy',NULL,NULL,'2014-08-10 04:42:20','2014-08-10 04:42:20',NULL),(105,'p00104','Abdul','Rehman','',0,0,0,'00d3b908eed1cab52f3574834d036ebce66c7238','QVGEa0vc',NULL,NULL,'2014-08-10 04:43:24','2014-08-10 04:43:24',1),(106,'00105','Misbah ','','Talha2013@outlook.com',0,1,0,'c034bb776810d4b154aec3cd83d8921a4ed36f3f','OdPhgEhO',NULL,NULL,'2014-08-10 04:46:06','2014-08-10 04:46:06',NULL),(107,'p00105','Muhammad','Ayyub','',0,0,0,'e0009541fbc04fafecc9e7ab6a53d824612c1efa','onvWnPsp',NULL,NULL,'2014-08-10 04:47:29','2014-08-10 04:47:29',1),(108,'00106','Javeria','Arif','',0,1,0,'95cc882400a01d4f7f1ff664f71ab0658bc5cee4','bMRI2vbR',NULL,NULL,'2014-08-10 04:50:19','2014-08-10 04:50:19',NULL),(109,'p00106','Muhammad','Zubair','noreplyp00106@fedena.com',0,0,0,'a72a2b8189912e0df8dd0d7b14d5456395713159','dId9rtC4',NULL,NULL,'2014-08-10 04:51:50','2014-08-10 04:52:21',1),(110,'00107','Tasmina','Iqbal','',0,1,0,'166379fa6975d29b195161a559c93daad0f56155','TMfx1PES',NULL,NULL,'2014-08-10 05:01:15','2014-08-10 05:01:15',NULL),(111,'p00107','Muhammad','Iqbal','',0,0,0,'4af03347a1201b67ac8ff3df808310453da08659','0cq6oO8O',NULL,NULL,'2014-08-10 05:03:49','2014-08-10 05:03:49',1),(112,'00108','Zainab ','','',0,1,0,'c8ca00d6e322cca04cef1e719271eef962c6efe4','Wr6GflCl',NULL,NULL,'2014-08-10 05:08:17','2014-08-10 05:08:17',NULL),(113,'p00108','Muhammad','Mansoor Musani','',0,0,0,'fcb312b02e80e0194680483bde5f0fa1c582c5b8','7JSJiFh4',NULL,NULL,'2014-08-10 05:09:37','2014-08-10 05:09:37',1),(114,'00109','Amina','Qadri','bint3.Qadri@gmail.com',0,1,0,'1fe790d9eb8f970bfcba19b5f149cba9e320d832','bm82h6xu',NULL,NULL,'2014-08-10 05:13:34','2014-08-10 05:13:34',NULL),(115,'p00109','Noor-ul-Amin','Qadri','',0,0,0,'ad0d6fd855e9986fdabd28412f1a22ba4de1457c','ujfV5xXh',NULL,NULL,'2014-08-10 05:14:55','2014-08-10 05:14:55',1),(116,'00110','Sabeen','Rehman','',0,1,0,'208f6759b7419b015ca896527940efa2dc855606','3kLAXNW7',NULL,NULL,'2014-08-10 05:18:51','2014-08-10 05:18:51',NULL),(117,'p00110','Abdul','Rehman','',0,0,0,'38648f4ec1ec5c2efcc8c68c8fc9a0bb0b3fd822','bMX4MRqU',NULL,NULL,'2014-08-10 05:20:48','2014-08-10 05:20:48',1),(118,'00111','Yasmeen','','',0,1,0,'461e90e45571b22e557548106b9a50fbf010226b','8bos73SJ',NULL,NULL,'2014-08-10 05:23:40','2014-08-10 05:23:40',NULL),(119,'p00111','Muhammad','Asif','',0,0,0,'e930f6e47f3582431a99b5550a7b5c1346796d1b','RDwA2H9S',NULL,NULL,'2014-08-10 05:29:42','2014-08-10 05:29:42',1),(120,'00112','Hameeda','','shahzadsorathia@hotmail.com',0,1,0,'28179a7d5c447179ee683000ff5163a5e11472cf','m39tJcM6',NULL,NULL,'2014-08-10 05:38:40','2014-08-10 05:38:40',NULL),(121,'p00112','Muhammad','Haroon','',0,0,0,'e327a806d93047eac1f309c443cb92226f6f5085','BCoNDler',NULL,NULL,'2014-08-10 05:41:10','2014-08-10 05:41:10',1),(122,'00113','Radia','Yaseen','m.mubashir202@hotmail.com',0,1,0,'059971b3f31f0820677dd7a74f953620e44b1ff4','6LlOLfom',NULL,NULL,'2014-08-10 05:44:56','2014-08-10 05:44:56',NULL),(123,'p00113','Muhammad','Yaseen','',0,0,0,'f2fbbf75a75019034d4c2fb95306e0c441baaef9','JEumfwWJ',NULL,NULL,'2014-08-10 06:15:30','2014-08-10 06:15:30',1),(124,'00114','Mehwish ','','',0,1,0,'2893729b29365419e3649b1ff1acaefd34866f16','tEJxVxcM',NULL,NULL,'2014-08-10 06:27:58','2014-08-10 06:27:58',NULL),(125,'p00114','Muhammad','Hashim','',0,0,0,'85ffdb775a23312b14f9fe0a5b5969f1f2789161','hJ2LQgsO',NULL,NULL,'2014-08-10 06:30:38','2014-08-10 06:30:38',1),(126,'00115','Shereen khan','Asif Khan','',0,1,0,'7cf3d5688b136fa8911c535669cbb242de63040e','MYKQN62O',NULL,NULL,'2014-08-10 06:37:21','2014-08-10 06:42:42',NULL),(127,'p00115','Tabassum ','khan','',0,0,0,'195303ee5423e31f999bdf4a331faf1f35e8a84e','XFYnIsQF',NULL,NULL,'2014-08-10 06:41:34','2014-08-10 06:41:34',1),(128,'00116','Abida','Mustafa','salma_113@ymail.com',0,1,0,'4f66d5e78ab0fc5333e182636d95c77b0466f803','4sddHUdq',NULL,NULL,'2014-08-10 06:47:26','2014-08-10 06:47:26',NULL),(129,'p00116','Muhammad','Mustafa','',0,0,0,'e98cebc3c95bfc02bada17c0ad45d7b5271cb4d8','QJ631ypp',NULL,NULL,'2014-08-10 06:48:35','2014-08-10 06:48:35',1),(130,'00117','Samira ','Mustafa','salma_113@ymail.com',0,1,0,'315b5da3db9c8fe5012b5cf2f9f79b48167e0cea','32u8LrNB',NULL,NULL,'2014-08-10 06:51:10','2014-08-10 06:51:10',NULL),(131,'00118','Umm-Ul-Qura','','',0,1,0,'a62700dbb6597568e72e2dd223dff2d76970c014','Jp2fb247',NULL,NULL,'2014-08-10 06:54:39','2014-08-10 06:54:39',NULL),(132,'p00118','Noor','Muhammad','',0,0,0,'ea3758138c4723ae69686890a4d141502b8c31b9','1W09hjNt',NULL,NULL,'2014-08-10 06:55:48','2014-08-10 06:55:48',1),(133,'00119','Ambreen','','Ambreensiddique75@gmail.com',0,1,0,'a9ebc947e48ff7b419c8ac76ff17656cf796bf59','T6pSEFjt',NULL,NULL,'2014-08-10 06:57:59','2014-08-10 07:00:12',NULL),(136,'00121','Rabia Khan','Asif Khan','rabia.khan757@yahoo.com',0,1,0,'58818b978ef11b4ca1cd532a7b888d62d97b2572','4vSCaBN5',NULL,NULL,'2014-08-10 07:07:30','2014-08-10 07:07:30',NULL),(137,'p00121','Tabassum ','Khan','',0,0,0,'62da85918e41eedecb5ae9b6880fe5878b77d575','ONcLEok8',NULL,NULL,'2014-08-10 07:09:02','2014-08-10 07:09:02',1),(138,'00122','Noureen ','','',0,1,0,'41a237893a45e1a15d8c38f80da3d1f43a82f7d2','JBaTvwQp',NULL,NULL,'2014-08-10 07:15:01','2014-08-10 07:15:01',NULL),(139,'p00122','Muhammad','Shoaib Hashim','',0,0,0,'eb9c8a69a7d6622449da93dfb3d498e478e61268','KzOVHBfo',NULL,NULL,'2014-08-10 07:34:00','2014-08-10 07:34:00',1),(140,'00123','Aisha','','',0,1,0,'8ee2c63e1e29c3be2de01d38b8277e393ba8deb4','a56Mnc8p',NULL,NULL,'2014-08-10 07:36:53','2014-08-10 07:36:53',NULL),(141,'p00123','Muhammad','Arsalan','',0,0,0,'3e5c6e8801c27ddf77c3f1b07baf25e6340b29a4','NOzLtN5r',NULL,NULL,'2014-08-10 07:38:12','2014-08-10 07:38:12',1),(142,'00124','Hina','Khan','',0,1,0,'d6a51baf20e4c3e906fd2e0c74d229ad73ba430c','iOEUVJO9',NULL,NULL,'2014-08-10 07:40:17','2014-08-10 07:40:17',NULL),(143,'p00124','Aurangzaib','','',0,0,0,'51adab861191d1ce06939d90586e34d621c562ce','lIsTItJ2',NULL,NULL,'2014-08-10 07:41:29','2014-08-10 07:41:29',1),(144,'00125','Ayesha ','','',0,1,0,'8a94b65d3de4d9ed892c206f11d536ca49c39e78','UVXeE197',NULL,NULL,'2014-08-10 07:43:33','2014-08-10 07:43:33',NULL),(145,'p00125','Muhammad','Saleeem','',0,0,0,'514512545303964bab01b9152355266429263d07','Ee4VExf9',NULL,NULL,'2014-08-10 07:44:34','2014-08-10 07:44:34',1),(146,'00126','Nasreen Bano','Muhammad Tayiab','ntayiab@hotmail.com',0,1,0,'6b6336637443e46ade44d8823337393934c95fc1','0L76ztHw',NULL,NULL,'2014-08-10 07:47:31','2014-08-10 07:50:43',NULL),(147,'p00126','Muhammad','Arif','',0,0,0,'7dedf90579d34f326e52765443c288f801a30fff','i2NsrWkR',NULL,NULL,'2014-08-10 07:49:07','2014-08-10 07:49:07',1),(150,'00128','Irum','Aslam','sunniaalima@gmail.com',0,1,0,'0f63d74662b7331452d5f37b4dd7aef56a15f3e1','MezmurnE',NULL,NULL,'2014-08-10 07:57:26','2014-08-10 07:57:26',NULL),(151,'00129','Sakina','','',0,1,0,'d5e94d3e265b220075ce81d71f31b1b97f1226f7','6uPF6zv1',NULL,NULL,'2014-08-10 08:20:19','2014-08-10 08:20:19',NULL),(152,'p00129','Muhammad ','Tariq','',0,0,0,'236bf31535c990430138f8d207636d9b493a32fc','77elIA3Y',NULL,NULL,'2014-08-10 08:21:17','2014-08-10 08:21:17',1),(153,'00130','Sidra ','','sidra.marium@ymail.com',0,1,0,'1a753ac589ad5d192b78ece5c6f7e90b320448a4','z4vEOlDs',NULL,NULL,'2014-08-10 08:24:17','2014-08-10 08:24:17',NULL),(154,'p00130','Nazar','Hussain','',0,0,0,'60105e402c02a420fa94fe19a85d9c5d97bde5b5','PUzPgb24',NULL,NULL,'2014-08-10 08:25:51','2014-08-10 08:25:51',1),(156,'00131','Rabia','','rabia.cute94@yahoo.com',0,1,0,'849a12f2fe4c227d101f9b6df24d2fc569b2d51a','MLXxJB2X',NULL,NULL,'2014-08-10 08:31:46','2014-08-10 08:39:13',NULL),(158,'p00131','Muhammad ','Rizwan','',0,0,0,'e01dce997491a3e050cc9e61de2207ef01769a68','DRaj6XSY',NULL,NULL,'2014-08-10 08:39:13','2014-08-10 08:39:13',1),(160,'00201','Muhammad','Uddin','',0,1,0,'fb543a68edad0006ff11c59d418fb69dcda9f3a6','eVgXKtg6',NULL,NULL,'2013-08-01 08:44:02','2013-08-01 08:47:15',NULL),(162,'p00201','Aleem-Uddin ','Taimuri','',0,0,0,'8e3bd019f755f9d753551add260ed55d2ba15584','EMEehPws',NULL,NULL,'2013-08-01 08:47:15','2013-08-01 08:47:15',1),(163,'00202','Abdul','','Abdulrehmansays@gmail.com',0,1,0,'d01ef957807f1616494e9e37ab289cc232f197d2','4cyf0XUO',NULL,NULL,'2013-08-01 08:51:49','2013-08-01 08:51:49',NULL),(164,'p00202','Muhammad','Ibrahim','',0,0,0,'2c2abe1fc3eabecb582e705b1767e8eb4a767eba','MFrP04ET',NULL,NULL,'2013-08-01 08:52:56','2013-08-01 08:52:56',1),(165,'00203','Muhammad ','Ashrafi','',0,1,0,'99748c72b38ba9734685caac098893be301349ce','GrCI4zTp',NULL,NULL,'2013-08-10 08:55:53','2013-08-10 08:55:53',NULL),(166,'00204','Hafiz','kashif Ilyas','',0,1,0,'cabaa0c0786b0232fe33e0205ee061465a694e64','mtPd5l6c',NULL,NULL,'2013-08-10 04:29:20','2013-08-10 04:29:20',NULL),(167,'00205','Muhammad ','Raees','',0,1,0,'cab2d827c07ba88bc86194ccd36a1b9d68c93786','l6EqPa6N',NULL,NULL,'2013-08-10 04:32:41','2013-08-10 04:32:41',NULL),(168,'p00205','Muhammad','Raees Ahmed','',0,0,0,'5f0cadfd2a5f0c5bdc68652a709e356bfaac7eef','eQIDDbXF',NULL,NULL,'2013-08-10 04:33:43','2013-08-10 04:33:43',1),(169,'00206','Muhammad ','Jamal Khan','kashifjamal12@gmail.com',0,1,0,'31bcd41eeaf48a8a61e46d6b5936a1e7a9389f88','qpoJf6yM',NULL,NULL,'2013-08-10 04:35:48','2013-08-10 04:35:48',NULL),(170,'p00206','Faheem Bano','','',0,0,0,'bdfaabdfbc05aa3b0b22ef08a0664dec677cef79','akU6rH2z',NULL,NULL,'2013-08-10 04:40:47','2013-08-10 04:40:47',1),(171,'00207','Muhammad','Mushtaq','',0,1,0,'53083a46709104d8ad90dbb6823b38cbd1a079d3','EbiWCOm8',NULL,NULL,'2013-08-10 04:43:30','2013-08-10 04:43:30',NULL),(172,'p00207','Mushtaq','Ahmed','',0,0,0,'3f26a92f2935605cc08af50b7bc03b373c6b4865','qEkfQAIa',NULL,NULL,'2013-08-10 04:49:04','2013-08-10 04:49:04',1),(173,'00208','Muhammad ','Raffique','tahirraza011@hotmail.com',0,1,0,'c157a1b52e276790c7e649a41c29ca77ff293ba4','FPVlrhe1',NULL,NULL,'2013-08-10 05:29:38','2013-08-10 05:29:38',NULL),(174,'p00208','Qari','Raffique Ahmed','',0,0,0,'6d7a70414c41e80e78429f945fb7b7d3bfcf2dc3','dJnj1gwy',NULL,NULL,'2013-08-10 05:31:26','2013-08-10 05:31:26',1),(175,'00209','Hafiz','Sohurwardi','',0,1,0,'37c2565f8924bc77b0fc96bf678c6bd2a953d051','8xPUUBuh',NULL,NULL,'2013-08-10 05:34:33','2013-08-10 05:34:33',NULL),(176,'p00209','Muhammad','Hanif Suhurwardi','',0,0,0,'554492ac95027a35a9be58a01b466361fb58a837','f1lLzTGW',NULL,NULL,'2013-08-10 05:35:39','2013-08-10 05:35:39',1),(177,'00210','Arshad ','Hussaini','arshadalihussaini20@gmail.com',0,1,0,'ef9c66fe4ff4fb0b766d4c15550007261c68d476','9u8cYoab',NULL,NULL,'2013-08-10 05:37:59','2013-08-10 05:37:59',NULL),(178,'p00210','Muhammad','Salih','',0,0,0,'3585c013aeb813d452b8d0050c9eaf5aa94283b6','Mrgl2F9l',NULL,NULL,'2013-08-10 05:39:20','2013-08-10 05:39:20',1),(179,'00211','Muhammad ','Mukhtiar','Muhammadaliowaisi1@gmail.com',0,1,0,'eec35982e18d1e60d8133cf60796f5ceb2923b01','wgMMBYsf',NULL,NULL,'2013-08-10 05:42:28','2013-08-10 05:42:28',NULL),(180,'p00211','Nabeel Ahmed','Siddiqui','',0,0,0,'9193840fc4930de4fb5ce36c45b549a575127d8a','0QoVBIad',NULL,NULL,'2013-08-10 05:45:09','2013-08-10 05:45:09',1),(181,'00212','Tanzeel ','Qadri','Tanzeelahmad786@hotmail.com',0,1,0,'868bcc8f5e2a0ca74aef0c7a08ec575146bbed3c','5VaN2Vof',NULL,NULL,'2013-08-10 05:47:58','2013-08-10 05:47:58',NULL),(182,'p00212','Muhammad','Rashid','',0,0,0,'3f90ec7d4ae03d8613bc707dd02310d07b9738ac','mKbWrMFB',NULL,NULL,'2013-08-10 05:49:42','2013-08-10 05:49:42',1),(183,'00213','Hafiz','Raza','Ali.raz6143310@gmail.com',0,1,0,'5db17cf54e068cd074a4588981c16b504fbc288a','JqJwYL8z',NULL,NULL,'2013-08-10 05:52:11','2013-08-10 05:52:11',NULL),(184,'p00213','Muhammad ','ilyas','',0,0,0,'a4f3f54c8a863f80a685191633ffa34d63a9df6d','8TJn2JJG',NULL,NULL,'2013-08-10 05:53:21','2013-08-10 05:53:21',1),(185,'00214','Naved','Ahmed','',0,1,0,'86a0e3c79a013826ac320bc22b648b27118c9cec','K6HUMVkp',NULL,NULL,'2013-08-10 05:57:53','2013-08-10 05:57:53',NULL),(186,'p00214','Nisar','Ahmed','',0,0,0,'6560199d42cd207b48543158baf700105d90461e','JPuXjw3q',NULL,NULL,'2013-08-10 06:12:49','2013-08-10 06:12:49',1),(187,'00215','Hafiz','Mehmood','',0,1,0,'ee22171b7d99bfc2bf973039d826e5247812d5ed','F3soYtYS',NULL,NULL,'2013-08-10 06:20:25','2013-08-10 06:20:25',NULL),(188,'p00215','Muhammad','Haroon','',0,0,0,'58abc331f4afb3b651bc34a2e144690be03b5fa3','hoJ4PGYQ',NULL,NULL,'2013-08-10 06:21:12','2013-08-10 06:21:12',1),(189,'00216','Muhammad ','Aslam','',0,1,0,'e39510aeb354882414421311901060419900a7f5','NYSFYV6o',NULL,NULL,'2013-08-10 06:24:30','2013-08-10 06:24:30',NULL),(190,'p00216','Muhammad','Aslam Parvaiz','',0,0,0,'7ff6c2c52d3b89b7dff6ea24253db59c73ddd970','dEDH1tbH',NULL,NULL,'2013-08-10 06:28:04','2013-08-10 06:28:04',1),(191,'00217','Muhammad ','Raza','Ahmedbarelvi26@gmail.com',0,1,0,'29c36b61cefb0c184a7af7d8a53374ace5348151','xaXkF9xJ',NULL,NULL,'2013-08-10 06:47:33','2013-08-10 06:47:33',NULL),(192,'p00217','Bilal ','Maqsood','',0,0,0,'e19ddfc8c3ddfba5157139f4dffd5ea8254e9b7a','mcBDsD8a',NULL,NULL,'2013-08-10 06:48:55','2013-08-10 06:48:55',1),(193,'00218','Muhtashum','Uppal','',0,1,0,'4d684aefac0b354c4e4fb43903e5c1c469abdb91','jA98LSKf',NULL,NULL,'2013-08-10 06:52:36','2013-08-10 06:52:36',NULL),(194,'p00218','Muhammad','Akram','',0,0,0,'d73d15b449f53ac5484b602107c36c8aab21efbd','5SlAd54b',NULL,NULL,'2013-08-10 06:55:16','2013-08-10 06:55:16',1),(195,'00219','syed','Shah','nomanshah@gmail.com',0,1,0,'40eac729fb854873c93ed9ceae398014acfd75ff','oInDhJOT',NULL,NULL,'2013-08-10 06:57:19','2013-08-10 06:57:19',NULL),(196,'p00219','syed','Naveed Shah','',0,0,0,'1eb056755a4a04592a82844c32f0427882b93085','GXeD7JQK',NULL,NULL,'2013-08-10 07:00:30','2013-08-10 07:00:30',1),(197,'00220','Muhammad ','','',0,1,0,'e88b10e20bd46a53e29aa467edaba2c67fe264c3','UmwwwGbM',NULL,NULL,'2013-08-10 07:02:40','2013-08-10 07:02:40',NULL),(198,'00221','Ibrahim','','',0,1,0,'5e81eb90c62a97be5a1fcb23b2b6feca2a8c1e10','TEItg1Wo',NULL,NULL,'2013-08-10 07:14:45','2013-08-10 07:14:45',NULL),(199,'p00221','Muhammad','Ismail','',0,0,0,'850c38045716d204027b78c6a04ab5219e39474d','1chEPnkh',NULL,NULL,'2013-08-10 07:16:49','2013-08-10 07:16:49',1),(200,'00222','Muhammad ','Mustafa','muhammadmubashirmustafa@gmail.com',0,1,0,'ebf3787fb748bfeba172774269d7121b14352099','sWuvzdNf',NULL,NULL,'2013-08-10 07:21:58','2013-08-10 07:27:02',NULL),(201,'p00222','Muhammad','Anwar','',0,0,0,'251f0223064b8d5fe6b303c39a5bef43b6c2203c','diqB63M7',NULL,NULL,'2013-08-10 07:23:57','2013-08-10 07:23:57',1),(202,'00223','Muhammad ','','R.faizane@yahoo.com',0,1,0,'172985026efa591e5e63251a37fe4a96bb683e48','hbO9Gdbc',NULL,NULL,'2013-08-10 07:32:15','2013-08-10 07:32:15',NULL),(205,'00225','Muhammad ','Saleem','bilalsheikh98@hotmail.com',0,1,0,'f52edc451bcb3b43abc9c3be37004fe72f77858a','cs1ncxzb',NULL,NULL,'2013-08-10 07:37:11','2013-08-10 07:37:11',NULL),(206,'p00225','Muhammad','Saleem','',0,0,0,'c21fad79a98681b75d94da145db0d8591ace3ff6','1nrg3WQJ',NULL,NULL,'2013-08-10 07:46:07','2013-08-10 07:46:07',1),(207,'00226','Muhammad ','Khan','',0,1,0,'55530d19b3e913010372321a46c7b77f4525862b','rnroobtK',NULL,NULL,'2013-08-10 07:58:14','2013-08-10 07:58:14',NULL),(208,'p00226','Muhammad','Alauddin Khan','',0,0,0,'29d6136569738212a4207c07a54ed0c4fc961609','QW1I1bqe',NULL,NULL,'2013-08-10 08:38:52','2013-08-10 08:38:52',1),(209,'00227','Muhammad ','Iqbal','',0,1,0,'11ed3287020b70b5abd22b58349e2909fc2295df','gSifPLqE',NULL,NULL,'2013-08-10 06:23:13','2013-08-10 06:23:13',NULL),(210,'p00227','Muhammad','Iqbal','',0,0,0,'2c3b70c9b89a7f2c1fe6fb476df4ca91ef5c867b','QbgJ79Nm',NULL,NULL,'2013-08-10 06:24:03','2013-08-10 06:24:03',1),(211,'00228','Muhammad','','',0,1,0,'4cd85159f786dd471cb044982966b42ca50992d3','Fmxvcj2L',NULL,NULL,'2013-08-10 06:25:54','2013-08-10 06:25:54',NULL),(212,'p00228','Inayatullah','','',0,0,0,'4e873c46aa811d4b9e1fab2288135aa8d2a74485','4lQYaVwK',NULL,NULL,'2013-08-10 06:26:49','2013-08-10 06:26:49',1),(213,'00229','Hafiz','Ahmed Qasmi','qasmisarfaraz@gmail.com',0,1,0,'b1111fbf4778e3a2c7ca1a467a0134e6bbb63a82','kO3SfRIE',NULL,NULL,'2013-08-10 06:28:16','2013-08-10 07:47:52',NULL),(214,'p00229','Ghulam','Murtaza','',0,0,0,'89c7477b799f1b2b33e38deb467cd4ec942e8a2a','sY91AnmA',NULL,NULL,'2013-08-10 07:42:57','2013-08-10 07:42:57',1),(215,'00230','Bilal','','w.w.w.@95gmail.com',0,1,0,'2984fd3c0515823b99744363b82b6d838a122551','2EEMJevj',NULL,NULL,'2013-08-10 07:50:14','2013-08-10 07:50:14',NULL),(216,'p00230','Abdul','Samad','noreplyp00230@fedena.com',0,0,0,'418019c5432c7be63f19c2235d709e704e50692e','P3sLfrpn',NULL,NULL,'2013-08-10 08:50:17','2013-08-10 08:50:45',1),(217,'00260','Uffaque','Ibrahim','',0,1,0,'1e69ac290212c200cda0ffe22484c90e0961dd94','0RYUyP0U',NULL,NULL,'2013-08-10 08:55:29','2013-08-10 08:55:29',NULL),(218,'p00260','Muhammad','Ibrahim','',0,0,0,'83e688e2dd1da6b32aabdcaa9dc04271bca0ee03','epbse017',NULL,NULL,'2013-08-10 08:56:24','2013-08-10 08:56:24',1),(219,'00261','Zahida','Junaid','qadribachi@gmail.com',0,1,0,'4b163dd31ea759d278d85191d2af0ba8807cb27f','laYdaUhe',NULL,NULL,'2013-08-10 08:59:35','2013-08-10 08:59:35',NULL),(220,'p00261','Muhammad','Junaid','',0,0,0,'add6faac7da9154ea5aa0197132101a32b887f99','FzTP4cmK',NULL,NULL,'2013-08-10 09:00:32','2013-08-10 09:00:32',1),(221,'00262','Amna','Junaid','Twinkle_twinkle_star@hotmail.com',0,1,0,'628807dfa2cc98e3a969a30dd8027131b7097071','zD4Bhc2o',NULL,NULL,'2013-08-10 09:03:20','2013-08-10 09:03:20',NULL),(222,'p00262','Muhammad ','Junaid','',0,0,0,'21bfa5df663bb4a061d861146b175921343effa6','fjuLTeQV',NULL,NULL,'2013-08-10 09:09:59','2013-08-10 09:09:59',1),(223,'00263','Marhaba','Kareem','',0,1,0,'3d1339444210ff9c10f69ad7b8a29a20ea26753f','jtXoB876',NULL,NULL,'2013-08-10 09:12:45','2013-08-10 09:12:45',NULL),(224,'00264','Nazish ','','Nazish_akram2001@yahoo.com',0,1,0,'8944295fa71042043d34d5ef2eee2b328062d90d','RqyaG7tz',NULL,NULL,'2013-08-10 03:26:19','2013-08-10 03:26:19',NULL),(225,'p00264','Muhammad ','Akram','',0,0,0,'635e70ebf02d29bd74cd9cd6d8c13150c41ced6b','9BXFUiND',NULL,NULL,'2013-08-10 03:29:56','2013-08-10 03:29:56',1),(226,'00265','Ruqqaiya','','shuma.3244@gmail.com',0,1,0,'1d1ffc12ab0b23d8f2772692605859a31b6a57e2','kqFEtPJq',NULL,NULL,'2013-08-10 03:32:39','2013-08-10 03:32:39',NULL),(227,'p00265','Abdul ','Ghani','',0,0,0,'c8b3f594958074a5167df4e07799694ac63c625a','FoJHwk61',NULL,NULL,'2013-08-10 03:33:27','2013-08-10 03:33:27',1),(228,'00266','Hajra ','Amin','',0,1,0,'e7695834c362905688cc195ff80e8c8211b6c142','B9VeIt6z',NULL,NULL,'2013-08-10 03:36:19','2013-08-10 03:36:19',NULL),(229,'p00266','Haji','Muhammd Amin','',0,0,0,'5a42c435f5709b07e49da9da6433d2f170efca94','yYb309Ud',NULL,NULL,'2013-08-10 03:37:38','2013-08-10 03:37:38',1),(230,'00267','Syeda','Fatima','',0,1,0,'dbec09d8236845adedf4e218dbb5e175ee848e63','rTYJJOUG',NULL,NULL,'2013-08-10 03:40:03','2013-08-10 03:40:03',NULL),(231,'p00267','Syed','Moiz Ali','',0,0,0,'c5a2ba542279ddb66ad236e33695e15481111d12','JBt0Gkge',NULL,NULL,'2013-08-10 03:41:14','2013-08-10 03:41:14',1),(232,'00268','Nazia','','',0,1,0,'db41dd5f7b974f8d7ac269a16188dd846bdd4700','TnS43X77',NULL,NULL,'2013-08-10 03:44:27','2013-08-10 03:44:27',NULL),(233,'p00268','Aleem-Uddin ','Taimuri','',0,0,0,'45f8d87d36293abb6428cc11fb88de649afc613f','Sn8C3FIG',NULL,NULL,'2013-08-10 03:45:42','2013-08-10 03:45:42',1),(234,'00269','Fazila ','','',0,1,0,'48bcffa4a5c3c081beb183b209cf8f5df90382c1','lVyjfxz8',NULL,NULL,'2013-08-10 03:50:41','2013-08-10 03:50:41',NULL),(235,'p00269','Farhan','Munawwar','',0,0,0,'6b67f5814a6775b26af4ea88f035da5186af2f93','N0OpWFpr',NULL,NULL,'2013-08-10 03:52:13','2013-08-10 03:52:13',1),(236,'00270','Shaista','','shaistaattariya@gmail.com',0,1,0,'52e4bc5d8e796f44348cae33ebe291a101990f74','oNci9iLw',NULL,NULL,'2013-08-10 03:59:36','2013-08-10 03:59:36',NULL),(237,'p00270','Shafiq','Uddin','',0,0,0,'711de94ceaae2eab5ba6ecdbba77c5db91d5ca6c','DAQWwuDi',NULL,NULL,'2013-08-10 04:01:35','2013-08-10 04:01:35',1),(238,'00271','Nazia','','',0,1,0,'0734b0b04ef45cea808ad8fecd1c7bba5c771dfc','tGSnz14V',NULL,NULL,'2013-08-10 04:12:07','2013-08-10 04:12:07',NULL),(239,'p00271','Muhammad ','Kamal (late)','noreplyp00271@fedena.com',0,0,0,'4ddc8bff5ab91aba97783a87b02e3e86adea3f3d','K2xt1goR',NULL,NULL,'2013-08-10 04:14:04','2013-08-10 04:15:53',1),(241,'00273','Muniza','','',0,1,0,'682ce8d7a913255e2b83162cdf8f057272ccc04f','j5J7VKOH',NULL,NULL,'2013-08-10 04:20:12','2013-08-10 04:20:12',NULL),(242,'p00273','Muhammad ','Iqbal','',0,0,0,'aaea939a76150c474936051427af6b1ddd2f7a81','wirGvcf9',NULL,NULL,'2013-08-10 04:22:19','2013-08-10 04:22:19',1),(243,'00274','Syeda','Nizami','',0,1,0,'7cf137f1069f523f758b2a4b692211c01a85b4cd','wNXkyY3t',NULL,NULL,'2013-08-10 04:26:05','2013-08-10 04:26:05',NULL),(244,'p00274','Syed ','Attique Hassan Nizami','',0,0,0,'a8428ea0d80bcf354750b8a7c0056f357d79e3b1','MhAeoFHI',NULL,NULL,'2013-08-10 04:28:24','2013-08-10 04:28:24',1),(245,'00275','Kaneez','Munaf','Munaf.hashim@gmail.com',0,1,0,'17f48b2c3d7d29592eafc60cb2721a0b7a771170','MMEaknbP',NULL,NULL,'2013-08-10 04:30:52','2013-08-10 04:30:52',NULL),(246,'p00275','Muhammad','Munaf','',0,0,0,'6dbb0389296543b6cae6513efb822b6e7e0a85f6','tjy2in5d',NULL,NULL,'2013-08-10 04:32:37','2013-08-10 04:32:37',1),(247,'p00223','Hafiz','Mukhtiyar','',0,0,0,'54ca00e6639335e1c0496bad49b03e538cc6aef2','ovj5xlO5',NULL,NULL,'2013-08-10 05:06:00','2013-08-10 05:06:00',1),(275,'00324','Muhammad ','Naqshbandi','shahbaznaqshbandi5@gmail.com',0,1,0,'3183e4661c9e751dcfaeb21995f369676474ffad','E4L4Oiwn',NULL,NULL,'2012-08-10 07:58:46','2012-08-10 08:29:47',NULL),(290,'p00324','Muhammad','hanif','',0,0,0,'e043f454a77d1003014d080e0df4f8f21ff85ba1','MW9hoTYh',NULL,NULL,'2012-08-10 08:29:47','2012-08-10 08:29:47',1),(291,'00325','Umair','Khan','',0,1,0,'c0ce7ca6c5f64256fee2f9e14aa11d9334500633','MfUA27Os',NULL,NULL,'2015-07-25 07:33:23','2015-07-25 07:33:23',NULL),(292,'p00325','Ahmedullah','Khan','',0,0,0,'16592e62fcb478d3e8fd5d3cceced6b3f5e69583','qWzElJyH',NULL,NULL,'2015-07-25 07:34:04','2015-07-25 07:34:04',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekdays`
--

DROP TABLE IF EXISTS `weekdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekdays` (
  `id` int(11) NOT NULL auto_increment,
  `batch_id` int(11) default NULL,
  `weekday` varchar(255) collate utf8_unicode_ci default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `sort_order` int(11) default NULL,
  `day_of_week` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `index_weekdays_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekdays`
--

LOCK TABLES `weekdays` WRITE;
/*!40000 ALTER TABLE `weekdays` DISABLE KEYS */;
INSERT INTO `weekdays` VALUES (1,NULL,'1',NULL,NULL,1,0),(2,NULL,'2',NULL,NULL,2,0),(3,NULL,'3',NULL,NULL,3,0),(4,NULL,'4',NULL,NULL,4,0),(5,NULL,'5',NULL,NULL,5,0);
/*!40000 ALTER TABLE `weekdays` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-25 14:40:01
