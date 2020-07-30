-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: skilled
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.3

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interest_user`
--

DROP TABLE IF EXISTS `interest_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interest_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `interest_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest_user`
--

LOCK TABLES `interest_user` WRITE;
/*!40000 ALTER TABLE `interest_user` DISABLE KEYS */;
INSERT INTO `interest_user` VALUES (14,8,14,NULL,NULL),(13,8,13,NULL,NULL),(12,8,6,NULL,NULL),(11,8,4,NULL,NULL),(10,8,3,NULL,NULL),(9,8,1,NULL,NULL),(15,15,1,NULL,NULL),(16,15,2,NULL,NULL),(17,15,4,NULL,NULL),(18,15,3,NULL,NULL),(19,15,5,NULL,NULL),(20,15,6,NULL,NULL),(21,15,7,NULL,NULL),(22,15,8,NULL,NULL),(23,15,9,NULL,NULL),(24,15,10,NULL,NULL),(25,15,11,NULL,NULL),(26,15,12,NULL,NULL),(27,15,13,NULL,NULL),(28,15,14,NULL,NULL),(29,15,15,NULL,NULL),(30,16,1,NULL,NULL),(31,16,2,NULL,NULL),(32,16,3,NULL,NULL),(33,16,4,NULL,NULL),(34,16,5,NULL,NULL),(35,16,6,NULL,NULL),(36,16,7,NULL,NULL),(37,16,8,NULL,NULL),(38,16,9,NULL,NULL),(39,16,10,NULL,NULL),(40,16,11,NULL,NULL),(41,16,12,NULL,NULL),(42,16,13,NULL,NULL),(43,16,14,NULL,NULL),(44,16,15,NULL,NULL);
/*!40000 ALTER TABLE `interest_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` VALUES (1,'Working with my hands','working-with-my-hands',NULL,NULL),(2,'Building and fixing things','building-and-fixing-things',NULL,NULL),(3,'Working with computers','working-with-computers',NULL,NULL),(4,'Speaking or performing in front of others','speaking-or-performing-in-front-of-others',NULL,NULL),(5,'Working with machines and tools','working-with-machines-and-tools',NULL,NULL),(6,'Singing, acting, dancing, or playing music','singing-acting-dancing-or-playing-music',NULL,NULL),(7,'Studying math or science','studying-math-or-science',NULL,NULL),(8,'Being creative (writing, art, etc.)','being-creative-writing-art-etc',NULL,NULL),(9,'Helping people solve problems','helping-people-solve-problems',NULL,NULL),(10,'Teaching people how to do things','teaching-people-how-to-do-things',NULL,NULL),(11,'Selling things or ideas','selling-things-or-ideas',NULL,NULL),(12,'Working with numbers','working-with-numbers',NULL,NULL),(13,'Being organized','being-organized',NULL,NULL),(14,'Following a set plan','following-a-set-plan',NULL,NULL),(15,'Taking industrial technology classes','taking-industrial-technology-classes',NULL,NULL);
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lectures`
--

DROP TABLE IF EXISTS `lectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lectures` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lectures`
--

LOCK TABLES `lectures` WRITE;
/*!40000 ALTER TABLE `lectures` DISABLE KEYS */;
INSERT INTO `lectures` VALUES (1,'Plumber Training','Training on basic and advanced plumbing','https://www.youtube.com/watch?v=GfNUaVFmxaY&list=PLWZBpW21XHyFBD4FCeNNGiVM391MVIglf',4,14,NULL,NULL);
/*!40000 ALTER TABLE `lectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2020_01_22_183146_alter_users_table',1),(10,'2020_01_23_112619_create_questions_table',1),(11,'2020_01_25_181047_create_roles_table',2),(12,'2020_01_25_181507_change_role_column_name',3),(13,'2020_01_26_075044_create_interests_table',4),(14,'2020_01_26_080113_make_interest_user_table',4),(15,'2020_01_26_083306_drop_interests_from_users_table',5),(16,'2020_01_27_063334_create_tests_table',6),(17,'2020_01_27_063854_create_subjects_table',6),(18,'2020_01_27_190716_delete_level_from_questions',7),(19,'2020_01_28_083640_update_questions_table',8),(20,'2020_01_30_082724_create_professions_table',9),(21,'2020_01_30_090421_add_level_to_users',9),(22,'2020_01_31_092854_create_vacancies_table',10),(23,'2020_01_31_093418_add_fields_to_user',10),(24,'2020_01_31_093643_create_lectures_table',10);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('014c7989d55817723cfd95fcd2c457ba4afc37a561652d1ab76c0e15949628efbfb8a9021f9db7e9',14,9,'password','[]',0,'2020-07-30 06:40:23','2020-07-30 06:40:23','2021-07-30 12:10:23'),('018221dd28540d053011e472b0465deecac861181ee81c270badca2eccd7f18f464317e40ae16bf2',15,5,'password','[]',0,'2020-01-30 04:38:35','2020-01-30 04:38:35','2021-01-30 10:08:35'),('05d6e61ef3c8d07010dbd8d8f1ef235d76b6bd3b589b2e2d1f5410dfd64f511386c273174c8b3e6a',13,3,'password','[]',0,'2020-01-26 08:30:11','2020-01-26 08:30:11','2021-01-26 14:00:11'),('0fecbb1ee40d336dbd33e62b352acf922126de39d6247723b5799a17b8a70be8abde6574ec36c223',2,5,'password','[]',0,'2020-01-28 13:12:43','2020-01-28 13:12:43','2021-01-28 18:42:43'),('122a8cea51b3d36d3ebe923896ccbd0ee56a2294b43dd2d8f2a334459261c4c9a4b7269425f3bfb1',13,3,'password','[]',0,'2020-01-26 08:16:14','2020-01-26 08:16:14','2021-01-26 13:46:14'),('1373c74b4e558d0ed3b20255d6631dd5ae847e81ca68843fb8da2212ec3353bb14d2c27931db283a',2,9,'password','[]',0,'2020-07-30 06:26:40','2020-07-30 06:26:40','2021-07-30 11:56:40'),('16c1e5a746b7acc35b9b77483cd7af6659f908af7706df1c21a712800648bf682b275734b4caffb0',13,3,'password','[]',0,'2020-01-26 04:47:58','2020-01-26 04:47:58','2021-01-26 10:17:58'),('1a87ab5912eeec19f6334138a6d20957f2853f741382f5d8210620544ad0800df2b4d442f727b992',13,3,'password','[]',0,'2020-01-26 08:43:30','2020-01-26 08:43:30','2021-01-26 14:13:30'),('1bbfe5858c4f06efd7d6783a78e9938141ccda3f966cfff7101c5f59f8bf4a0617c7422b31a3e319',13,3,'password','[]',0,'2020-01-26 08:25:40','2020-01-26 08:25:40','2021-01-26 13:55:40'),('1c1e711640b2a62405c737e2dca522ee1dfeee80788a872570b45a64efd64015ab92904dc49bf9e8',1,3,'password','[]',0,'2020-01-25 01:47:52','2020-01-25 01:47:52','2021-01-25 07:17:52'),('1d9c07e557439c6f04d04062c7a3be35e424f95d05ad6a53f3c9687e239d287f1d6dce88e2c82542',18,5,'password','[]',0,'2020-01-31 03:15:49','2020-01-31 03:15:49','2021-01-31 08:45:49'),('1f091f03332375231bdf98b9df3d84e85c589bd45428b87884bf35a4b4b01405bc0bc94b73874d50',13,3,'password','[]',0,'2020-01-26 08:27:11','2020-01-26 08:27:11','2021-01-26 13:57:11'),('2142706fb93329111399c5fbdf7af00a7e0385a8ae29117ccf7fbf09b982c612bc07f5aa618c6d5d',13,3,'password','[]',0,'2020-01-26 08:18:26','2020-01-26 08:18:26','2021-01-26 13:48:26'),('219645541254ef5ec7807c6af128972157b04337836d40279bdb7fea16235128f86146d3d2833ac5',1,3,'password','[]',0,'2020-01-23 10:06:24','2020-01-23 10:06:24','2021-01-23 15:36:24'),('21ce56c432f6c88ba12e7f1819b946b70c2f41ba9ac608516abb02756e88601d33f06d94c13b09fa',14,3,'password','[]',0,'2020-01-27 01:33:42','2020-01-27 01:33:42','2021-01-27 07:03:42'),('2345806d215fa6f00cef956fa45b51c92aa2c768442932c5436ac8149106201973e9d304abe83825',1,3,'password','[]',0,'2020-01-24 10:37:46','2020-01-24 10:37:46','2021-01-24 16:07:46'),('23500367f64ebb1c2ebae2dd18012837fed9b7402ed290f6cb8a32f6bb8193405e3b674c396080e6',13,3,'password','[]',0,'2020-01-26 08:20:35','2020-01-26 08:20:35','2021-01-26 13:50:35'),('245dd194e258c7e5931e64eebf2f58c7e90c32ababe90b72bdc44ac8f47594f4ea63f1fcd90ce6d3',13,3,'password','[]',0,'2020-01-26 08:19:21','2020-01-26 08:19:21','2021-01-26 13:49:21'),('249aff8d0e841b6adb480aaa8f1ad86787dc47bc4698c2c6c9910eb3a1e7b5c56901038bb66105ed',13,7,'password','[]',0,'2020-01-31 21:13:28','2020-01-31 21:13:28','2021-02-01 02:43:28'),('2a4e822540ec64ca458690af97edabe8dba240b3bdb344f30535bd81887fee77d07ca173cc3dc48d',2,3,'password','[]',0,'2020-01-23 09:39:45','2020-01-23 09:39:45','2021-01-23 15:09:45'),('2a76b2cab0587edc550ca7b65f6303b91d486c462d7175a66d494125aa6d4b1573a78d37e466a845',2,9,'password','[]',0,'2020-07-30 06:40:56','2020-07-30 06:40:56','2021-07-30 12:10:56'),('2a7874f2670155d7867c1df09d63f775c00f6e2ef9988879eeb00810e567964db151f2b7cba1af48',1,3,'password','[]',0,'2020-01-23 09:38:37','2020-01-23 09:38:37','2021-01-23 15:08:37'),('2b8e57f3d9a7e9baa29b8c70434d2f1c62edd04584f874eff4a6e6da18e63ec9cfac4f5d2e854243',16,5,'password','[]',0,'2020-01-30 04:42:02','2020-01-30 04:42:02','2021-01-30 10:12:02'),('2cb1215da0d5eb5f5bdd9a9e42636ab28b14aaf0e534eeb9f5e7f2d769d1c4f24a5eaa5b59a60b88',13,3,'password','[]',0,'2020-01-26 04:54:34','2020-01-26 04:54:34','2021-01-26 10:24:34'),('2e6002c845d4289cc6b8916b220ce4d71a825a3760b05235dffdd5054d21be52cf86fadc3e080d8a',1,3,'password','[]',0,'2020-01-25 08:19:35','2020-01-25 08:19:35','2021-01-25 13:49:35'),('301d68f5545277cf02277b0c1b01384727a600c6631ebdadfff6631310929a291ae1df26621a251a',2,3,'password','[]',0,'2020-01-28 00:32:38','2020-01-28 00:32:38','2021-01-28 06:02:38'),('33daf1ede90657fd5134ab10607c45145aa8e36fed574b1fd9adc5f8a7a9ddcc979713763068a1bf',1,9,'password','[]',0,'2020-07-30 03:21:59','2020-07-30 03:21:59','2021-07-30 08:51:59'),('341b80ad7b3b130a2a5c2e252267c6216744897061c748363c0ab3a98cafffcd0d55279b55e720a9',7,3,'password','[]',0,'2020-01-26 03:37:47','2020-01-26 03:37:47','2021-01-26 09:07:47'),('34a6487b03e9c760b6dc07eac66cbcfcd88169399c7e86707a77b1ec433224280efa542b1f5ca8c8',8,3,'password','[]',0,'2020-01-26 03:42:54','2020-01-26 03:42:54','2021-01-26 09:12:54'),('34b550de5a736e2718ba33a12de8844e6ea87ba29284acd8174a155b6941415a4782d7d9176a0130',14,9,'password','[]',0,'2020-07-30 03:22:15','2020-07-30 03:22:15','2021-07-30 08:52:15'),('34ba0c73289f84717f2cd8170c6ed3acede8250390c1a9202b317c89c96e64d95afcf44f30cb7073',1,3,'password','[]',0,'2020-01-25 01:46:47','2020-01-25 01:46:47','2021-01-25 07:16:47'),('362869da19e19cd2554d8a4993bc1042b1aac93703fc22cd2d3772f9db96ce6b0986211eb47e10d4',14,9,'password','[]',0,'2020-07-30 06:53:43','2020-07-30 06:53:43','2021-07-30 12:23:43'),('365d4a200a237d01c93b4b7684839c41b6f9555686e8a8ea40aabc7fddb56b47cf89374c7e377570',13,3,'password','[]',0,'2020-01-26 03:50:31','2020-01-26 03:50:31','2021-01-26 09:20:31'),('40a0e851c3166f153203af1aac5ef171443c2f547b303f924378179e57d847313996553e17cd8621',13,3,'password','[]',0,'2020-01-26 08:42:40','2020-01-26 08:42:40','2021-01-26 14:12:40'),('417bfd1551eb252b61cc8dc7284d33542cb852fa4a542437841932c57c2c4c4dbe23ca4c101689ff',13,3,'password','[]',0,'2020-01-26 08:22:18','2020-01-26 08:22:18','2021-01-26 13:52:18'),('427c1515570560c80dbcef3e9f55aa1363f8964bcfe77e17cd35e6586ead4981f2085cb20ef7c2b5',18,5,'password','[]',0,'2020-01-31 03:15:48','2020-01-31 03:15:48','2021-01-31 08:45:48'),('42d5419ed33d14f0f43a27313f2488fbfabda48cfeae2846d86269d9037e8db8c1f08ca10671e85e',11,3,'password','[]',0,'2020-01-26 03:47:05','2020-01-26 03:47:05','2021-01-26 09:17:05'),('44a0fe3735871e78c4769d1baf0bd615ee0fbff5b7fcf3fcd0fd146d0a61f48a2ccf251a62b8d81d',2,3,'password','[]',0,'2020-01-23 09:38:24','2020-01-23 09:38:24','2021-01-23 15:08:24'),('47350b17bcb22fd61e601e4bd569fd0a8aa598da4abf2bd0f0cf9d44140a245dc4b8ae301b81e047',13,3,'password','[]',0,'2020-01-26 08:45:43','2020-01-26 08:45:43','2021-01-26 14:15:43'),('4b1ddced45baae373bc460ff70061066cb398d15f20929ea89ffc6ec66a024df5b040db786f76ff8',2,3,'password','[]',0,'2020-01-27 09:49:30','2020-01-27 09:49:30','2021-01-27 15:19:30'),('4e6da8a5d8bd1ec92340cf221023c415cf457ad0a0126001f84fc14ed1563de7433f73253774abbe',13,3,'password','[]',0,'2020-01-26 08:29:45','2020-01-26 08:29:45','2021-01-26 13:59:45'),('4f75f59e0786fa9e186b4d511f5f23a7461313eccc3fea343b9773c5c1f7727095ae5e180d3a7788',8,7,'password','[]',0,'2020-01-31 21:04:26','2020-01-31 21:04:26','2021-02-01 02:34:26'),('53a8e5380988934653760ebdcd9be5b2c7c297b3bed79bc92ad87c21d17e469a1cc75a6891db4c01',13,3,'password','[]',0,'2020-01-26 04:55:59','2020-01-26 04:55:59','2021-01-26 10:25:59'),('53bbefc3b546c5b195c5241ee8d0b8efba9125d40b1a38d556e854954a10bdb5b4e33870084f48d0',2,5,'password','[]',0,'2020-01-31 13:35:59','2020-01-31 13:35:59','2021-01-31 19:05:59'),('53e80b1b4de6214c550bfee56992505a7fa8c2e15ba578a928d527c7a3ec645ff741793b87b4450d',1,3,'password','[]',0,'2020-01-23 09:40:08','2020-01-23 09:40:08','2021-01-23 15:10:08'),('5491692f6bac38b4ea791b1cfbb322d8742f30131a3452161278be1649dd70aaf601a78a8d54bb87',1,3,'password','[]',0,'2020-01-25 01:44:49','2020-01-25 01:44:49','2021-01-25 07:14:49'),('5adb9472c19c64643e247db388c5dddb4ab34002a7b3b4ddb92b7d2e603b9d30f275e65a8681ffe6',13,5,'password','[]',0,'2020-01-31 13:03:13','2020-01-31 13:03:13','2021-01-31 18:33:13'),('5b37f30fc1b26f824c502c0959e31a2b5d6ff4448b753bb985db445ff610bc793f55a86ca3fda7f1',2,3,'password','[]',0,'2020-01-27 05:05:17','2020-01-27 05:05:17','2021-01-27 10:35:17'),('5c61ae6bb9258c5214b0e4f9072e54fc39533d2132392054c92ce9b8265f9cff16d47dcf7e7a8ca2',13,3,'password','[]',0,'2020-01-27 01:00:18','2020-01-27 01:00:18','2021-01-27 06:30:18'),('6181717d50c97b34d6d78b16001aaeb9ed585fb49ded0f7de833e4fdc90ad495901f131e565a8687',2,5,'password','[]',0,'2020-01-29 13:56:00','2020-01-29 13:56:00','2021-01-29 19:26:00'),('640aedf836eff7ebc08fef8e8b672447872919379708c06ee41eb0a3b6de4ee5235c73c4753d5c8e',13,3,'password','[]',0,'2020-01-26 03:50:32','2020-01-26 03:50:32','2021-01-26 09:20:32'),('6784da6f1ffb5a8b73f9b9d1fd774c4d454d8e86c3f07bafaa11ac87dfac50d904c9675f8493ac46',13,3,'password','[]',0,'2020-01-26 04:51:34','2020-01-26 04:51:34','2021-01-26 10:21:34'),('72a29f094ea94117ca8e9f57046958c9b30b5d9f30b3b65102a0f43af38c96370a07411060fcefe3',13,3,'password','[]',0,'2020-01-26 08:37:16','2020-01-26 08:37:16','2021-01-26 14:07:16'),('72d673e7f25442f52d8b0fba4018f9a62c1b9bd76320e98d03e916f23f17987e04b349a8ff646aac',2,3,'password','[]',0,'2020-01-27 02:03:18','2020-01-27 02:03:18','2021-01-27 07:33:18'),('75b43ce64f3ed69a2d7af78cd78297c5635b6257018a55caacd4953b29e7b855ce782f766140eb55',1,3,'password','[]',0,'2020-01-23 09:32:05','2020-01-23 09:32:05','2021-01-23 15:02:05'),('7be6b2db756ed56ff35937708ed0ec20dc50e1a4249f2b287087eca9c0c3072f7d041e1c648eb6e0',12,3,'password','[]',0,'2020-01-26 03:49:26','2020-01-26 03:49:26','2021-01-26 09:19:26'),('7f816dcb3961646736449d8f3ce2d3c00a353f7c9ead4cbc0857a8fa178a61b65f7842209c8af1f4',12,3,'password','[]',0,'2020-01-26 03:49:27','2020-01-26 03:49:27','2021-01-26 09:19:27'),('813b0618e199dde096e8377b7574ef7802284fdcaef29ad4509c3d22a2cdd048df9ebfe5331430f0',8,3,'password','[]',0,'2020-01-27 01:02:01','2020-01-27 01:02:01','2021-01-27 06:32:01'),('8709bc2d3146f41bcc68a1b09c80875b2ecf2eff51d67f7a439177733082a57f5b5c9f184121c0f9',2,5,'password','[]',0,'2020-01-28 10:14:40','2020-01-28 10:14:40','2021-01-28 15:44:40'),('8a517629a2bdfd803cd211017207a3a653f595dc4eda130c1410429e9520ba98900fe830adf14610',13,3,'password','[]',0,'2020-01-26 08:13:23','2020-01-26 08:13:23','2021-01-26 13:43:23'),('8ad0ac406fbbf0980eea1a98b45c93c05ee313700ae3a44ab5de2f1ed7882d4bec6102421ee8ea9d',11,3,'password','[]',0,'2020-01-26 03:47:05','2020-01-26 03:47:05','2021-01-26 09:17:05'),('8dbc943fcaca3140d14fc74982db67124539ce37e08114e0f1fda39bbe2404b38d5ba988ce77ec92',1,9,'password','[]',0,'2020-07-30 06:24:56','2020-07-30 06:24:56','2021-07-30 11:54:56'),('8eca47abdc82bee550dd6431df4ed726bd32922eeae54c6900bf4c9ac095fe9b40ed116ecf5bebf6',13,3,'password','[]',0,'2020-01-26 08:49:28','2020-01-26 08:49:28','2021-01-26 14:19:28'),('9370dcc434f5ba185773a3ab5fc3d6f8181b3c796d853b98089c75c5945ab6d48dee173403e617a1',1,5,'password','[]',0,'2020-01-29 07:41:15','2020-01-29 07:41:15','2021-01-29 13:11:15'),('94243f8aa3335fa8e354bdcf2be1be8bea9e6747cf59e6306ed408866917a7ac26982f262512fa6f',1,3,'password','[]',0,'2020-01-25 01:49:30','2020-01-25 01:49:30','2021-01-25 07:19:30'),('95bfc15e237095af1a85f150753f373826605e9a78f1f96e45ae34861727c68b65fb4ae6ba822e8a',13,3,'password','[]',0,'2020-01-26 04:46:55','2020-01-26 04:46:55','2021-01-26 10:16:55'),('96dc6d62ce7ef4d8f148285c02bb205c82374d2cc80b8ce6dbd8ad80b4ce2d571ff4afbecfb3e059',13,3,'password','[]',0,'2020-01-26 08:23:47','2020-01-26 08:23:47','2021-01-26 13:53:47'),('9a94a2b2db063b08dc166af1250a0af82ecdf336b3be270c404bc3a9a719cfc4ab92aa340c6856ad',1,3,'password','[]',0,'2020-01-28 04:18:31','2020-01-28 04:18:31','2021-01-28 09:48:31'),('9b5620a2c7f11ea5a14dc707d649ee29e46358533670c45241072d9ff3c9d2880443a2a045e73626',13,5,'password','[]',0,'2020-01-31 04:39:51','2020-01-31 04:39:51','2021-01-31 10:09:51'),('9d94aa1c7a77d14896497589ab152a00a5e495cc963fa966b618b1477919f74c596829cff463f146',1,9,'password','[]',0,'2020-07-29 12:19:46','2020-07-29 12:19:46','2021-07-29 17:49:46'),('a2754c567852ad32dd53f9560aee71c56f78960ab91fd6ae39aa55d98764454db3c3ff0a7c4aea58',1,3,'password','[]',0,'2020-01-25 01:44:46','2020-01-25 01:44:46','2021-01-25 07:14:46'),('a2fa473b7bfea1cfaa2cf0a6ab2544bc8b8e3bdc8646f51e6aa981d164be3b7d9c8ac797c92750cd',8,5,'password','[]',0,'2020-01-31 13:40:16','2020-01-31 13:40:16','2021-01-31 19:10:16'),('a3b343e33fa7e9c7077e5e8e65df6c7e8efeff2913e36eeaebbacbcdfd2f9d215b38ba1fa466fd10',10,3,'password','[]',0,'2020-01-26 03:45:49','2020-01-26 03:45:49','2021-01-26 09:15:49'),('a4495f6e822bb8cc8a85542a1a713ff0076a4af1ee4b786ceccbed6bbd9d2a258c91ee61cd3f90f4',1,3,'password','[]',0,'2020-01-24 10:39:39','2020-01-24 10:39:39','2021-01-24 16:09:39'),('a5b2c99c1b3cceebe346657f1f48a77a071bba22ce1b5fbc2a3d09108b92247d7d54a07e182b039c',14,9,'password','[]',0,'2020-07-30 04:16:21','2020-07-30 04:16:21','2021-07-30 09:46:21'),('a886cd866ca679d7db6598f57474382612bde48c8d5018958c731dc37261283bb0c01928e1268c62',14,9,'password','[]',0,'2020-07-30 03:53:39','2020-07-30 03:53:39','2021-07-30 09:23:39'),('ad6b32a920a12fc9dc3dd92a3b8c484b827a4991078fcb989df66269a5092e08bbc71bd7c4666179',1,9,'password','[]',0,'2020-07-29 13:16:53','2020-07-29 13:16:53','2021-07-29 18:46:53'),('affe69da3d439ecdab42f37b662d878bd9114dfea3200d7188f7c12f42204ddc8ae86eea712491c7',16,5,'password','[]',0,'2020-01-30 04:42:01','2020-01-30 04:42:01','2021-01-30 10:12:01'),('b1086ad3d187431ba9903e18f13b5a11152133197f9936f7b509d5cf21eff6ae98a23278c132aaa1',13,3,'password','[]',0,'2020-01-26 08:29:00','2020-01-26 08:29:00','2021-01-26 13:59:00'),('b61e93321c50d2ca02a83e9dc689ad2a99f90ed532a5bf35e3c95ccdbb49db6596f346ab6aafffdd',9,3,'password','[]',0,'2020-01-26 03:44:38','2020-01-26 03:44:38','2021-01-26 09:14:38'),('b8259c2dbbde9c539f3b9b4114a8d6b0355454f0c621ff7ebe331203254213a26de2c2caa6e2f002',14,3,'password','[]',0,'2020-01-27 01:32:46','2020-01-27 01:32:46','2021-01-27 07:02:46'),('ba2ce8625e8046d6ec4f1d72ba81ce0c2415034f493e9466137efa8759fb8860c68bc7abbb87bc74',1,3,'password','[]',0,'2020-01-25 01:42:51','2020-01-25 01:42:51','2021-01-25 07:12:51'),('bd5504fc409dd460c80fd435b10ec6fea99d28b3e293c6610bcff08704cab00df9615e71133f1006',8,3,'password','[]',0,'2020-01-28 00:19:59','2020-01-28 00:19:59','2021-01-28 05:49:59'),('c1ec25f480c77dd638f279fd54d8d491d1376d1248062210fe145793600505e426f429a654ad8c5c',14,9,'password','[]',0,'2020-07-30 02:51:23','2020-07-30 02:51:23','2021-07-30 08:21:23'),('c5a0b32b2e04ec5442f85010285ff1ab631034b55dd025c312d21ab22cf052a945fb3ee3704b8233',14,3,'password','[]',0,'2020-01-27 01:32:45','2020-01-27 01:32:45','2021-01-27 07:02:45'),('c5b4defae1b5a4d8bd883b5f34d2996f5b6e174404a10fa636f0cf9259cc537fed35d641fb51f925',1,3,'password','[]',0,'2020-01-24 10:16:27','2020-01-24 10:16:27','2021-01-24 15:46:27'),('c6cbd4650ea308a15224cd5eb2bedab38187eb13013359daf0df585b5be3261b285b8815211a4003',1,9,'password','[]',0,'2020-07-30 04:15:44','2020-07-30 04:15:44','2021-07-30 09:45:44'),('c6deb09eb2e0a0275d009663d190c670f20516195c66148d67a17cf179f45ce13ff45caf856bc14a',13,5,'password','[]',0,'2020-01-31 00:42:26','2020-01-31 00:42:26','2021-01-31 06:12:26'),('cb82a7ba76ea6b42de441cb968d0f1d1b9f13c9e94055a49019a5894a4c3a0c87c32709fb9f5b0c3',2,5,'password','[]',0,'2020-01-28 13:21:16','2020-01-28 13:21:16','2021-01-28 18:51:16'),('cc2b4f37b248f40fbc07906f446128512fc088d674132176a55662c6ce562b23311b883c455609b7',13,5,'password','[]',0,'2020-01-31 11:35:57','2020-01-31 11:35:57','2021-01-31 17:05:57'),('cfde2abf7f03221089d2b4a8edd2aba2dbbbe5c4a4f9e5bc74690b3dc61cfc66b101fe7dafe0eb12',1,9,'password','[]',0,'2020-07-30 02:47:36','2020-07-30 02:47:36','2021-07-30 08:17:36'),('d1dc2ff4e322836ceb6a830ca4fc90a3fa1e3b28ee2897618a39d59c10d49741f8cce99d4d0c854e',2,5,'password','[]',0,'2020-01-30 04:44:19','2020-01-30 04:44:19','2021-01-30 10:14:19'),('d6d21defec540bbf9988f44d88597a5dcf13808ac71f667fb1b6f16e7b926941e8d7011935ad5ef7',1,3,'password','[]',0,'2020-01-24 10:29:23','2020-01-24 10:29:23','2021-01-24 15:59:23'),('da7eb795aa1b8a48f5192ffca1846156ead757a33d64e3d35a32114eb10c83ffa1891741b1944ece',1,3,'password','[]',0,'2020-01-24 10:32:30','2020-01-24 10:32:30','2021-01-24 16:02:30'),('dab7a2642411f55c1684d9f66664ec9101c8083e9495a8ca8220caa314e42c571cef31fa13bbac2e',2,9,'password','[]',0,'2020-07-30 06:15:37','2020-07-30 06:15:37','2021-07-30 11:45:37'),('dba04e8e75bc32973e9170174d29a21a1cf298846fa6c8259fea02144d6f3bf88ff7d544f3f59afa',13,5,'password','[]',0,'2020-01-31 00:49:29','2020-01-31 00:49:29','2021-01-31 06:19:29'),('df8e7c460925203a568d5ddbbde550a88846680686706954e8ae1abde60f446bc88530e652c3023a',2,3,'password','[]',0,'2020-01-28 01:20:49','2020-01-28 01:20:49','2021-01-28 06:50:49'),('e0e95fe4b09c30c78f5b12071d1ec4ac78987b6e2c7a339f50ee912850d771912963dea20010562c',13,3,'password','[]',0,'2020-01-26 08:40:33','2020-01-26 08:40:33','2021-01-26 14:10:33'),('e59e295d5e443714e83e14ece5e1b8c6e093c6988a0d4e14549016a12de8cfea7f4ab2eba30fc426',13,3,'password','[]',0,'2020-01-26 13:20:44','2020-01-26 13:20:44','2021-01-26 18:50:44'),('ed77d2a3d094f70c9587f2968c61fffbf367ef14dac0a0c34f19d728e3125d0d8749132041a7459a',13,3,'password','[]',0,'2020-01-26 13:03:29','2020-01-26 13:03:29','2021-01-26 18:33:29'),('ef697bdc10abb145f96cbd3abf1a548b648b3099874982333eb6148c66f3e804bf76cbf783069e24',15,5,'password','[]',0,'2020-01-30 04:38:36','2020-01-30 04:38:36','2021-01-30 10:08:36'),('f0323dd2d79919df23e95b6778a521ad668da860990e033ac2f0091c9dec27e7d2076e7e29e52394',13,3,'password','[]',0,'2020-01-26 08:16:56','2020-01-26 08:16:56','2021-01-26 13:46:56'),('f2468864457a9ce8949e9a29c1b54d41592678ece1ef13cd3f34fa19f8281f280d39a2270d854bbc',1,3,'password','[]',0,'2020-01-24 09:16:03','2020-01-24 09:16:03','2021-01-24 14:46:03'),('f93e5d9de4506a94a5ba7b250977ee7503963899e6adc34b5c183acb1fcabc1156e2a8b30055dd35',13,3,'password','[]',0,'2020-01-26 08:37:37','2020-01-26 08:37:37','2021-01-26 14:07:37'),('faf2212f9b70e34bf8bb3a573457d49a9aac3500cbef70eeffa73e6b15617fe303da3575914f2ba3',1,5,'password','[]',0,'2020-01-31 00:21:49','2020-01-31 00:21:49','2021-01-31 05:51:49'),('fb63c338ed33e83c3e599b7b07d10f4e8bc66cff9070858c166f0723eefdb280d7405cf72a79f53f',2,9,'password','[]',0,'2020-07-30 07:31:03','2020-07-30 07:31:03','2021-07-30 13:01:03'),('fc2767c86aa9c8c18ed4ea268c52621b0cf55d50b5d5c87bb49853f0c3431e96056b2bf0d4d29755',13,3,'password','[]',0,'2020-01-26 08:28:30','2020-01-26 08:28:30','2021-01-26 13:58:30'),('fc8a0fcc53e34d0ed0d6164958bc3b475b357bf4b1dd124e7f8d01c85b88947efe4a96f1d6949619',13,3,'password','[]',0,'2020-01-26 07:45:23','2020-01-26 07:45:23','2021-01-26 13:15:23'),('fdfa6d8de8099de043e33e38d8b6ae9863f061bd00ea28eada99598e94bc0686d1cac0c7acc0d7d4',2,7,'password','[]',0,'2020-01-31 21:11:36','2020-01-31 21:11:36','2021-02-01 02:41:36'),('fe9bbda0998f52abc9c29e81a8896234011bf34287e5b1180aa2834581d8e86a79cd129a24d4c033',13,3,'password','[]',0,'2020-01-26 08:41:39','2020-01-26 08:41:39','2021-01-26 14:11:39');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','4g3MfVa7PbCTXPDpfmeCqpDMRVB8xahxCeCvXaNv','http://localhost',1,0,0,'2020-01-23 09:30:46','2020-01-23 09:30:46'),(2,NULL,'Laravel Password Grant Client','ENGD3dFIRPiuDTLMBN3fydDRnuLQuoZ0g6zjimdi','http://localhost',0,1,0,'2020-01-23 09:30:46','2020-01-23 09:30:46'),(3,NULL,'Laravel Personal Access Client','hgrw63akWsw7Pa176hnIbFMIuyFmoU1BYYF9w2x5','http://localhost',1,0,0,'2020-01-23 09:30:48','2020-01-23 09:30:48'),(4,NULL,'Laravel Password Grant Client','lZVO9bUook6NpS5FYN8LVUVu2kCFX5jTFpuXnOif','http://localhost',0,1,0,'2020-01-23 09:30:49','2020-01-23 09:30:49'),(5,NULL,'Laravel Personal Access Client','DiJ5z3fquaFXx9SxY55eQblHZeZJFN1l3BaFfr7P','http://localhost',1,0,0,'2020-01-28 10:11:29','2020-01-28 10:11:29'),(6,NULL,'Laravel Password Grant Client','CZaGJrgN3GjcoWdSFqlU0vN8zVatP6fADdFqioz0','http://localhost',0,1,0,'2020-01-28 10:11:29','2020-01-28 10:11:29'),(7,NULL,'Laravel Personal Access Client','bJEEQVFdtH7KwWShc2oolYs1T8lamNEGFLZhsMgm','http://localhost',1,0,0,'2020-01-31 20:52:52','2020-01-31 20:52:52'),(8,NULL,'Laravel Password Grant Client','DDbzr3QY8TGWwVmxwM5nH9eg01jHWGaeo3Hb7viO','http://localhost',0,1,0,'2020-01-31 20:52:52','2020-01-31 20:52:52'),(9,NULL,'Laravel Personal Access Client','FaKpSuiMH5qT1zDSQFUGLttEwGoD62f8MVi3D0QD','http://localhost',1,0,0,'2020-07-29 12:19:15','2020-07-29 12:19:15'),(10,NULL,'Laravel Password Grant Client','mfNBt60976qQeA0VsWgE1MCHFLXfXycoDF30rxaX','http://localhost',0,1,0,'2020-07-29 12:19:16','2020-07-29 12:19:16');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-01-23 09:30:46','2020-01-23 09:30:46'),(2,3,'2020-01-23 09:30:49','2020-01-23 09:30:49'),(3,5,'2020-01-28 10:11:29','2020-01-28 10:11:29'),(4,7,'2020-01-31 20:52:52','2020-01-31 20:52:52'),(5,9,'2020-07-29 12:19:16','2020-07-29 12:19:16');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professions`
--

DROP TABLE IF EXISTS `professions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professions`
--

LOCK TABLES `professions` WRITE;
/*!40000 ALTER TABLE `professions` DISABLE KEYS */;
INSERT INTO `professions` VALUES (1,'Gardening','gardening','2020-01-30 03:39:59','2020-01-30 03:39:59'),(2,'Makeup','makeup','2020-01-30 03:40:18','2020-01-30 03:40:18'),(3,'Tailoring','tailoring','2020-01-30 03:40:48','2020-01-30 03:40:48'),(4,'Plumbing','plumbing','2020-01-30 03:41:08','2020-01-30 03:41:08'),(5,'Electrician','electrician','2020-01-30 03:41:31','2020-01-30 03:41:31');
/*!40000 ALTER TABLE `professions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option1` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option2` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option3` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option4` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `test_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Look at this series: 12, 11, 13, 12, 14, 13, … What number should come next?','10','16','13','15','4','2020-01-28 03:28:53','2020-01-28 03:28:53',1),(2,'P, Q, R, S, T, U, V and W are sitting round the circle and are facing the center: P is second to the right of T who is the neighbor of R and V. S is not the neighbor of P. V is the neighbor of U. Q is not between S and W. W is not between U and S. Which one is immediate right to the V if the position of S and U are interchanged?','I','U','T','None Of These','3','2020-01-28 03:28:53','2020-01-28 03:28:53',1),(3,'3.	Below given a series of some five numbers :  446 362 576 495 241 Answer the following questions based on these numbers:   If the middle digit in all the numbers are removed, then which of the following number will be minimum?','446','241','362','495','2','2020-01-28 03:28:53','2020-01-28 03:28:53',1),(4,'4.	In each of the following questions find out the alternative which will replace the question mark.  Meager: Adequate :: Condign : ?','Ache','Prolific','Far','Immoral','4','2020-01-28 03:28:53','2020-01-28 03:28:53',1),(5,'5.	 Pointing to a man, a woman said, \"His mother is the only daughter of my mother.\" How is the woman related to the man ?','Mother','Grandfather','sister','None Of these','1','2020-01-28 03:28:54','2020-01-28 03:28:54',1),(6,'6.	Five persons F,M,K,J,E are sitting in a straight row, not necessarily in the same order. M do not sit in the middle and is the immediate left of J. F and J occupy the extreme positions. K sits between F and E.    If the position of K and J are interchanged, which of the following option denotes the first two people?','EJ','FJ','FK','ME','2','2020-01-28 03:28:54','2020-01-28 03:28:54',1),(7,'7.If P denotes +, Q denotes *, R denotes / and S denotes -, then 18 Q 12 P 4 R 5 S 6 = ?','63','210.8','33','None Of These','2','2020-01-28 03:28:54','2020-01-28 03:28:54',1),(8,'8.D lives between B and F. E and A live on successive floors. B lives in the top most floor. There is exactly one person between C and E. There are exactly two people between F and G.  Who lives in the seventh floor?','D','A','B','F','3','2020-01-28 03:28:54','2020-01-28 03:28:54',1),(9,'9.Five girls are sitting on a bench to be photographed. Seema is to the left of Rani and to the right of Bindu. Mary is to the right of Rani. Reeta is between Rani and Mary.   Who are at the corners in the photograph?','Rani and Bindu','Seema and Mary','None of these','Bindu and Mary','4','2020-01-28 03:28:54','2020-01-28 03:28:54',1),(10,'A factory worker has five children. No one else in the factory has five children','All workers in the factory have five children each.','Everybody in the factory has children.','Some of the factory workers have more than five children.','Only one worker in the factory has exactly five children.','4','2020-01-28 03:28:54','2020-01-28 03:28:54',1),(11,'Find the next number in the the below series 11, 39, 69, 101, _____','134','133','135','None Of These','3','2020-01-28 03:57:43','2020-01-28 03:57:43',2),(12,'2.	A train covers a distance of 12 km in 10 minutes .If it takes 6 seconds to pass a telegraph post,then the length of the train is:','140m','120m','100m','200m','2','2020-01-28 03:57:43','2020-01-28 03:57:43',2),(13,'3.	What would be the amount to be paid on the principal of 5000 Rs. at the end of 2 years at compound interest at the rate of 9 % per annum?','5980.5','5990.5','5950.5','5940.5','4','2020-01-28 03:57:43','2020-01-28 03:57:43',2),(14,'4.	A toy is in the form of a cylinder, find the lateral surface area if the radius and height of toy is given to be 7 and 10 cm respectively.','440','420','460','480','1','2020-01-28 03:57:43','2020-01-28 03:57:43',2),(15,'5.	Can you find the answer for the below equation 97 / 382 - 375 * 378 + 371','-141374.75','-141372.75','-141378.75','-141381.75','3','2020-01-28 03:57:43','2020-01-28 03:57:43',2),(16,'6.	A man is 24 years older than his son. In two years, his age will be twice the age of his son. The present age of his son is:','14years','22 years','20 years','None of these','2','2020-01-28 03:57:44','2020-01-28 03:57:44',2),(17,'7.	 In the below given sequence, what should be the Missing number?  133, 108, 83, X , 33, 8','58','60','56','57','1','2020-01-28 03:57:44','2020-01-28 03:57:44',2),(18,'8.	An accurate clock shows 9 \'o\' clock in the morning. Through how many degrees will the hour hand rotate when the clock shows 3 \'o\' clock in the afternoon?','120 Degree','180 Degree','150 Degree','None of these','2','2020-01-28 03:57:44','2020-01-28 03:57:44',2),(19,'9.	What annual payment will discharge a debt of Rs.1025 due in 2 years at the rate of 5% compound interest?','Rs.560','Rs.551.25','Rs.560.75','Rs.550','2','2020-01-28 03:57:45','2020-01-28 03:57:45',2),(20,'10.	The difference b/w two parallel sides of a trapezium is 8 cm and the perpendicular distance b/w them is 38 cm. Find the lengths of the parallel sides, if the area of the trapezium is 950 cm 2 .','32 and 28','29 and 21','32 and 18','None of These','2','2020-01-28 03:57:45','2020-01-28 03:57:45',2),(21,'She lived ____ the expectations.','as per','up to','on','v','2','2020-01-28 04:32:06','2020-01-28 04:32:06',3),(22,'A mother who always (1) connives on the (2) mistakes of her kids (3) is their worst enemy. (4) No Error (5).','1','2','3','4','2','2020-01-28 04:32:06','2020-01-28 04:32:06',3),(23,'A month after colleges opened......  A. 35% seats reserved under OBC B. in private colleges C. for the next academic year D. remain vacant','CBDA','CADB','ADBC','BADC','2','2020-01-28 04:32:06','2020-01-28 04:32:06',3),(24,'To cry wolf','to speak loudly','to eat like a wolf','to get afraid','to give a false alarm','4','2020-01-28 04:32:06','2020-01-28 04:32:06',3),(25,'In each of the sentences given below a word is printed in bold. Below it four choices are given. Pick up the one which is most nearly the same in meaning as the word printer in bold and can replaces it without altering the meaning of the sentence. He was wanted at the outset of his career.','end','beginning','entrance','middle','2','2020-01-28 04:32:06','2020-01-28 04:32:06',3),(26,'He was very tired as he is working since 6 O\' clock in the morning.','he was working','he had been working','he has been working','he will be working','3','2020-01-28 04:32:06','2020-01-28 04:32:06',3),(27,'Her selection in the crew surprised Peter.','Her selection in the crew was a big surprise.','Peter was surprised at her selection in the crew.','Her selection was a surprise.','Peter was surprised at her selection of the crew.','2','2020-01-28 04:32:06','2020-01-28 04:32:06',3),(28,'....... Indus River is the longest river in India.','The','An','A','None Of These','1','2020-01-28 04:32:06','2020-01-28 04:32:06',3),(29,'Liquid: Liter','Hot: Cold','Movie: Entertainment','Winter: Cold','Weight: Kilogram','4','2020-01-28 04:32:06','2020-01-28 04:32:06',3),(30,'On looking at the cloudless sky, Peter said, \"It won\'t rain today.\"','at','cloudless','sky','today','2','2020-01-28 04:32:06','2020-01-28 04:32:06',3),(31,'What does following declaration means ?Int (*a)[10];','a is the array of pointers to 10 integers','a is the array of 10 integer','a is the pointer to an array of 10 integers','a is an pointer to array','3','2020-01-31 04:21:32','2020-01-31 04:21:32',4),(32,'Which is the valid keyword in java ?','String','Interface','Float','Unsigned','2','2020-01-31 04:21:32','2020-01-31 04:21:32',4),(33,'The DBMS acts as an interface between what two components of an enterprise-class database system?','Database application and the database','Data and the database','The user and the database application','Database application and SQL','1','2020-01-31 04:21:34','2020-01-31 04:21:34',4),(34,'SQL stands for ____ .','Structured Query Language','Sequential Query Language','Structured Question Language','Sequential Question Language','1','2020-01-31 04:21:34','2020-01-31 04:21:34',4),(35,'Thrashing is','is a natural consequence of virtual memory systems','can always be avoided by swapping','always occurs on large computers','can be caused by poor paging algorithms','4','2020-01-31 04:21:34','2020-01-31 04:21:34',4),(36,'How many digits of the DNIC (Data Network Identification Code) identify the country?','first three','first four','first five','first six','1','2020-01-31 04:21:34','2020-01-31 04:21:34',4),(37,'What command is used to remove files?','dm','rm','delete','erase','2','2020-01-31 04:21:34','2020-01-31 04:21:34',4),(38,'A self-relocating program is one which','cannot be made to execute in any area of storage other than the one designated for it at the time of its coding or translation','consists of a program and relevant information for its relocation','can itself perform the relocation of its address-sensitive portions','All of the above','3','2020-01-31 04:21:34','2020-01-31 04:21:34',4),(39,'A hard disk is divided into tracks which are further subdivided into:','clusters','sectors','vectors','heads','2','2020-01-31 04:21:34','2020-01-31 04:21:34',4),(40,'When the compiler cannot differentiate between two overloaded constructors, they are called','overloaded','destructed','ambiguous','dubious','3','2020-01-31 04:21:34','2020-01-31 04:21:34',4),(41,'Look at this series: 12, 11, 13, 12, 14, 13, … What number should come next?','10','16','13','15','4','2020-01-31 04:37:06','2020-01-31 04:37:06',5),(42,'P, Q, R, S, T, U, V and W are sitting round the circle and are facing the center: P is second to the right of T who is the neighbor of R and V. S is not the neighbor of P. V is the neighbor of U. Q is not between S and W. W is not between U and S.  Which one is immediate right to the V if the position of S and U are interchanged?','I','U','T','None Of These','3','2020-01-31 04:37:06','2020-01-31 04:37:06',5),(43,'3. Below given a series of some five numbers :  446 362 576 495 241 Answer the following questions based on these numbers:   If the middle digit in all the numbers are removed, then which of the following number will be minimum? ','446','362','241','495','3','2020-01-31 04:37:06','2020-01-31 04:37:06',5),(44,'4. In each of the following questions find out the alternative which will replace the question mark.  Meager: Adequate :: Condign : ?','Ache','Prolific','Far','Immoral','4','2020-01-31 04:37:07','2020-01-31 04:37:07',5),(45,'Pointing to a man, a woman said, \"His mother is the only daughter of my mother.\" How is the woman related to the man ?','Mother','Sister','grand Father','None Of these','1','2020-01-31 04:37:07','2020-01-31 04:37:07',5),(46,'Five persons F,M,K,J,E are sitting in a straight row, not necessarily in the same order. M do not sit in the middle and is the immediate left of J. F and J occupy the extreme positions. K sits between F and E.    If the position of K and J are interchanged, which of the following option denotes the first two people? ','EJ','FJ','FK','ME','2','2020-01-31 04:37:07','2020-01-31 04:37:07',5),(47,'If P denotes +, Q denotes *, R denotes / and S denotes -, then 18 Q 12 P 4 R 5 S 6 = ?','63','33','210.8','None of these','3','2020-01-31 04:37:07','2020-01-31 04:37:07',5),(48,'8. D lives between B and F. E and A live on successive floors. B lives in the topmost floor. There is exactly one person between C and E. There are exactly two people between F and G.  Who lives in the seventh floor?','D','A','B','F','3','2020-01-31 04:37:07','2020-01-31 04:37:07',5),(49,'9. Five girls are sitting on a bench to be photographed. Seema is to the left of Rani and to the right of Bindu. Mary is to the right of Rani. Reeta is between Rani and Mary.   Who are at the corners in the photograph? ',' Rani and Bindu','Seema and Mary','Bindu and Mary','None of these','3','2020-01-31 04:37:07','2020-01-31 04:37:07',5),(50,'A factory worker has five children. No one else in the factory has five children.','All workers in the factory have five children each.','Everybody in the factory has children.','Some of the factory workers have more than five children.','Only one worker in the factory has exactly five children.','4','2020-01-31 04:37:07','2020-01-31 04:37:07',5),(51,'Look at this series: 12, 11, 13, 12, 14, 13, … What number should come next?','10','16','13','15','4','2020-01-31 04:37:21','2020-01-31 04:37:21',6),(52,'P, Q, R, S, T, U, V and W are sitting round the circle and are facing the center: P is second to the right of T who is the neighbor of R and V. S is not the neighbor of P. V is the neighbor of U. Q is not between S and W. W is not between U and S.  Which one is immediate right to the V if the position of S and U are interchanged?','I','U','T','None Of These','3','2020-01-31 04:37:21','2020-01-31 04:37:21',6),(53,'3. Below given a series of some five numbers :  446 362 576 495 241 Answer the following questions based on these numbers:   If the middle digit in all the numbers are removed, then which of the following number will be minimum? ','446','362','241','495','3','2020-01-31 04:37:21','2020-01-31 04:37:21',6),(54,'4. In each of the following questions find out the alternative which will replace the question mark.  Meager: Adequate :: Condign : ?','Ache','Prolific','Far','Immoral','4','2020-01-31 04:37:21','2020-01-31 04:37:21',6),(55,'Pointing to a man, a woman said, \"His mother is the only daughter of my mother.\" How is the woman related to the man ?','Mother','Sister','grand Father','None Of these','1','2020-01-31 04:37:21','2020-01-31 04:37:21',6),(56,'Five persons F,M,K,J,E are sitting in a straight row, not necessarily in the same order. M do not sit in the middle and is the immediate left of J. F and J occupy the extreme positions. K sits between F and E.    If the position of K and J are interchanged, which of the following option denotes the first two people? ','EJ','FJ','FK','ME','2','2020-01-31 04:37:21','2020-01-31 04:37:21',6),(57,'If P denotes +, Q denotes *, R denotes / and S denotes -, then 18 Q 12 P 4 R 5 S 6 = ?','63','33','210.8','None of these','3','2020-01-31 04:37:21','2020-01-31 04:37:21',6),(58,'8. D lives between B and F. E and A live on successive floors. B lives in the topmost floor. There is exactly one person between C and E. There are exactly two people between F and G.  Who lives in the seventh floor?','D','A','B','F','3','2020-01-31 04:37:21','2020-01-31 04:37:21',6),(59,'9. Five girls are sitting on a bench to be photographed. Seema is to the left of Rani and to the right of Bindu. Mary is to the right of Rani. Reeta is between Rani and Mary.   Who are at the corners in the photograph? ',' Rani and Bindu','Seema and Mary','Bindu and Mary','None of these','3','2020-01-31 04:37:21','2020-01-31 04:37:21',6),(60,'A factory worker has five children. No one else in the factory has five children.','All workers in the factory have five children each.','Everybody in the factory has children.','Some of the factory workers have more than five children.','Only one worker in the factory has exactly five children.','4','2020-01-31 04:37:21','2020-01-31 04:37:21',6),(61,'Find the next number in the the below series 11, 39, 69, 101, _____','134','133','135','None Of These','3','2020-01-31 04:54:06','2020-01-31 04:54:06',7),(62,'A train covers a distance of 12 km in 10 minutes .If it takes 6 seconds to pass a telegraph post,then the length of the train is:','140','120','200','100','2','2020-01-31 04:54:06','2020-01-31 04:54:06',7),(63,'What would be the amount to be paid on the principal of 5000 Rs. at the end of 2 years at compound interest at the rate of 9 % per annum?',' 5980.5','5990.5','5950.5','5940.5','4','2020-01-31 04:54:06','2020-01-31 04:54:06',7),(64,'A toy is in the form of a cylinder, find the lateral surface area if the radius and height of toy is given to be 7 and 10 cm respectively.','420','440','480','460','2','2020-01-31 04:54:06','2020-01-31 04:54:06',7),(65,'4. Can you find the answer for the below equation 97 / 382 - 375 * 378 + 371','-141374.75','-141372.75','-141378.75','-141381.75','3','2020-01-31 04:54:06','2020-01-31 04:54:06',7),(66,'A man is 24 years older than his son. In two years, his age will be twice the age of his son. The present age of his son is: ','14','20','22','None Of These','3','2020-01-31 04:54:06','2020-01-31 04:54:06',7),(67,'In the below given sequence, what should be the Missing number?                   133, 108, 83, X , 33, 8 ','58','60','56','57','1','2020-01-31 04:54:06','2020-01-31 04:54:06',7),(68,'An accurate clock shows 9 \'o\' clock in the morning. Through how many degrees will the hour hand rotate when the clock shows 3 \'o\' clock in the afternoon?','120 Degree','180 Degree','150 Degree','None of these','2','2020-01-31 04:54:06','2020-01-31 04:54:06',7),(69,'What annual payment will discharge a debt of Rs.1025 due in 2 years at the rate of 5% compound interest?','Rs.560','Rs.551.25','Rs.560.75','Rs.550','2','2020-01-31 04:54:06','2020-01-31 04:54:06',7),(70,'The difference b/w two parallel sides of a trapezium is 8 cm and the perpendicular distance b/w them is 38 cm. Find the lengths of the parallel sides, if the area of the trapezium is 950 cm 2 .','32 and 28 ','29 and 21','32 and 18','None Of These','2','2020-01-31 04:54:07','2020-01-31 04:54:07',7),(71,'Find the correctly spelt words.','Efficient','Beterment','Employd','Treatmeant','1','2020-01-31 05:38:48','2020-01-31 05:38:48',8),(72,'In the questions below the sentences have been given in Active/Passive voice. From the given alternatives, choose the one which best expresses the given sentence in Passive/Active voice. 	 After driving professor Kumar to the museum she dropped him at his hotel.','After being driven to the museum, Professor Kumar was dropped at his hotel.','Professor Kumar was being driven dropped at his hotel.','After she had driven Professor Kumar to the museum she had dropped him at his hotel.','After she was driven Professor Kumar to the museum she had dropped him at his hotel.','1','2020-01-31 05:38:48','2020-01-31 05:38:48',8),(73,'Read each sentence to find out whether there is any grammatical error in it. The error, if any will be in one part of the sentence. The letter of that part is the answer. If there is no error, the answer is \'D\'. (Ignore the errors of punctuation, if any).','We discussed about the problem so thoroughly','on the eve of the examination','that I found it very easy to work it out.','No error.','1','2020-01-31 05:38:48','2020-01-31 05:38:48',8),(74,'which can be substituted for the given word/sentence.	 Extreme old age when a man behaves like a fool','Imbecility','Senility','Dotage','Superannuation','3','2020-01-31 05:38:48','2020-01-31 05:38:48',8),(75,'In the following the questions choose the word which best expresses the meaning of the given word.	 CORPULENT','Lean','Gaunt','Emaciated','Obese','4','2020-01-31 05:38:48','2020-01-31 05:38:48',8),(76,'In questions given below out of four alternatives, choose the one which can be substituted for the given word/sentence. Extreme old age when a man behaves like a fool','Imbecility','Senility','Dotage','Superannuation','4','2020-01-31 05:38:48','2020-01-31 05:38:48',8),(77,'Event (A):   Mr. X was killed in the floods. Event (B):   It was raining heavily.','If \'A\' is the effect and \'B\' is its immediate and principle cause.','If \'B\' is the effect and \'A\' is its immediate and principle cause.','If \'A\' is the effect but \'B\' is not its immediate and principle cause.','None of these.','4','2020-01-31 05:38:48','2020-01-31 05:38:48',8),(78,'Arrange the given words in alphabetical order and tick the one that comes in the middle?','Plane','Player','Plenty','Place','1','2020-01-31 05:38:49','2020-01-31 05:38:49',8),(79,'Statement: Mr. X is one of the probable candidates shortlisted for the post of Director of KLM Institute. Conclusions: I. Mr. X will be selected as Director of KLM Institute. II. Mr. X will not be selected as Director of KLM Institute.','If only conclusion I follows','If neither I nor II follows','If either I or II follows','If only conclusion II follows','3','2020-01-31 05:38:49','2020-01-31 05:38:49',8),(80,'Find the correctly spelt words.','Benefitted','Benifited','Benefited','Benefeted','3','2020-01-31 05:38:49','2020-01-31 05:38:49',8);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Student','student','2020-01-25 12:51:07','2020-01-25 12:51:07'),(2,'College','college','2020-01-25 12:51:19','2020-07-29 12:09:28'),(3,'Teacher','teacher','2020-01-25 12:51:30','2020-07-29 12:10:11');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Aptitude','aptitude',NULL,NULL),(2,'Verbal Ability','verbal-ability',NULL,NULL),(3,'Reasoning','reasoning',NULL,NULL),(4,'Technical Aptitude','technical-aptitude',NULL,NULL),(5,'Logical Reasoning','logical-reasoning','2020-01-28 02:47:26','2020-01-28 02:47:26');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `people_attempted` int NOT NULL,
  `level` int NOT NULL DEFAULT '1',
  `subject_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,2,'logical Test',0,1,5,'2020-01-28 03:28:53','2020-01-28 03:28:53'),(2,2,'Banibandana',3,1,1,'2020-01-28 03:57:42','2020-01-31 21:15:02'),(3,2,'Hello Smart',0,1,2,'2020-01-28 04:32:06','2020-01-28 04:32:06'),(4,18,'Pratice Test',0,1,4,'2020-01-31 04:21:32','2020-01-31 04:21:32'),(5,18,'Pratice Test',0,1,5,'2020-01-31 04:37:06','2020-01-31 04:37:06'),(6,18,'Pratice Test',0,1,5,'2020-01-31 04:37:21','2020-01-31 04:37:21'),(7,18,'Pratice Test',0,1,1,'2020-01-31 04:54:06','2020-01-31 04:54:06'),(8,18,'Pratice Test',0,1,2,'2020-01-31 05:38:48','2020-01-31 05:38:48');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_lic_no` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ugc_no` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int NOT NULL,
  `level` int DEFAULT '0',
  `profession_id` int DEFAULT NULL,
  `technologies_used` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Supriyo Das','supriyo15998@gmail.com',NULL,'7890122334','GNIT','HTML, CSS',NULL,NULL,NULL,'basuduakdada','$2y$10$23BJ.YNWvBsP7w/g4/ajWOZtPO4yvLIF6lD2NxgdnrdlKQdIKULeu',NULL,'2020-01-23 09:32:05','2020-07-29 13:20:41',1,1,NULL,''),(2,'Teacher 1','teacher@gnit.ac.in',NULL,'7417417414',NULL,NULL,'ufua21312',NULL,NULL,'ahbda','$2y$10$JuDKut3nWN8LkCSt8mwmQegHY7PlnMipQjrvI0PEASe0jQO6fp90S',NULL,'2020-01-23 09:38:23','2020-07-30 04:35:44',3,0,NULL,''),(8,'Sandipan Sau','sandipan08@gmail.com',NULL,'8617556459',NULL,'Hau hau',NULL,NULL,'B.Tech in Computer Science','Khorgopur, Bagnan','$2y$10$sD9mIgUUo/ZOUgfAqT2RKuiH91JWzKdwemPFdsEBYRmN6xwygYDMy',NULL,'2020-01-26 03:42:54','2020-01-26 03:42:54',4,0,4,''),(13,'Faraz Ali','farazappy@gmail.com',NULL,'7044728852','Gurunanak Institute Of Technology','Coding',NULL,NULL,NULL,'25\nLower Range','$2y$10$kziY53.PcaCRfDuUWOdeeO998/D0Cnm8AVQOPrBSfUqJKVMzoQf0q',NULL,'2020-01-26 03:50:31','2020-01-31 12:38:39',1,3,NULL,''),(14,'Guru Nanak Institute of Technology','admin@gnit.ac.in',NULL,'8520852025',NULL,NULL,NULL,'C6166',NULL,'157/F, Nilgunj Road, Sodepur, Kolkata-700114','$2y$10$A9mpKwPL3xEhmC1IRaPeOey/losEOEMwx7WQbh6leqnZ/ZI1XTYT2',NULL,'2020-01-27 01:32:45','2020-07-30 02:51:10',2,0,NULL,''),(16,'Srijit Pal','srijitman@gmail.com',NULL,'1234567890',NULL,'Coding, Media, Cultural, Technical',NULL,NULL,'B.Tech in Computer Science','Kharda','$2y$10$IrGE5gL1H5DDu0wobYRCFuRtFZLkaihe3pn8j577s3l6F/rbatqz.',NULL,'2020-01-30 04:42:00','2020-01-30 04:42:01',4,0,5,''),(18,'Teacher 2','teacher2@gnit.ac.in',NULL,'7478470737',NULL,NULL,'01122',NULL,NULL,'vill-Khalore,P.O+P.S-Bagnan','$2y$10$7K54gZMfrCN37C6FSTkqguGRTkTLWMtQE5FEy30yxLS0PQWa80WHG',NULL,'2020-01-31 03:15:48','2020-07-30 04:35:54',3,0,NULL,'');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacancies`
--

DROP TABLE IF EXISTS `vacancies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacancies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(161) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `package` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacancies`
--

LOCK TABLES `vacancies` WRITE;
/*!40000 ALTER TABLE `vacancies` DISABLE KEYS */;
INSERT INTO `vacancies` VALUES (1,'Angular Developer required','Must be fluent in JavaScript, Angular.',2,350000,NULL,NULL);
/*!40000 ALTER TABLE `vacancies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-30 19:23:29
