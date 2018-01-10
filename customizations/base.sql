-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Mr WordPress','','https://wordpress.org/','','2017-12-27 14:13:03','2017-12-27 12:13:03','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'post-trashed','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=728 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (3,'siteurl','https://wordpress.local','yes');
INSERT INTO `wp_options` VALUES (4,'home','https://wordpress.local','yes');
INSERT INTO `wp_options` VALUES (5,'blogname','Demo','yes');
INSERT INTO `wp_options` VALUES (6,'blogdescription','Featuring vincit/wordpress-theme-base','yes');
INSERT INTO `wp_options` VALUES (7,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (8,'admin_email','vagrant@wordpress.vincit.io','yes');
INSERT INTO `wp_options` VALUES (9,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (10,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (11,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (12,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (13,'comments_notify','','yes');
INSERT INTO `wp_options` VALUES (14,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (15,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (18,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (19,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (20,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (21,'default_comment_status','closed','yes');
INSERT INTO `wp_options` VALUES (22,'default_ping_status','closed','yes');
INSERT INTO `wp_options` VALUES (23,'default_pingback_flag','','yes');
INSERT INTO `wp_options` VALUES (24,'posts_per_page','3','yes');
INSERT INTO `wp_options` VALUES (25,'date_format','d.m.Y','yes');
INSERT INTO `wp_options` VALUES (26,'time_format','H:i:s','yes');
INSERT INTO `wp_options` VALUES (27,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (28,'comment_moderation','1','yes');
INSERT INTO `wp_options` VALUES (29,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (30,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (32,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (33,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (34,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (35,'active_plugins','a:12:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:31:\"global-meta-box-order/index.php\";i:3;s:21:\"imsanity/imsanity.php\";i:4;s:33:\"relevanssi-premium/relevanssi.php\";i:5;s:33:\"rich-text-tags/rich-text-tags.php\";i:6;s:13:\"soil/soil.php\";i:7;s:27:\"svg-support/svg-support.php\";i:8;s:33:\"user-switching/user-switching.php\";i:9;s:31:\"what-the-file/what-the-file.php\";i:10;s:31:\"wp-libre-form/wp-libre-form.php\";i:11;s:57:\"wp_query-route-to-rest-api/wp_query-route-to-rest-api.php\";}','yes');
INSERT INTO `wp_options` VALUES (36,'category_base','','yes');
INSERT INTO `wp_options` VALUES (37,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (38,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (39,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (40,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (41,'recently_edited','a:2:{i:0;s:69:\"/var/www/html/htdocs/wp-content/themes/wordpress-theme-base/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (42,'template','wordpress-theme-base','yes');
INSERT INTO `wp_options` VALUES (43,'stylesheet','wordpress-theme-base','yes');
INSERT INTO `wp_options` VALUES (44,'comment_whitelist','','yes');
INSERT INTO `wp_options` VALUES (45,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (46,'comment_registration','','yes');
INSERT INTO `wp_options` VALUES (47,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (48,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (49,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (50,'db_version','38590','yes');
INSERT INTO `wp_options` VALUES (51,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (52,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (53,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (54,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (55,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (56,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (57,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (58,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (59,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_size_w','450','yes');
INSERT INTO `wp_options` VALUES (61,'thumbnail_size_h','450','yes');
INSERT INTO `wp_options` VALUES (62,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (63,'medium_size_w','1600','yes');
INSERT INTO `wp_options` VALUES (64,'medium_size_h','900','yes');
INSERT INTO `wp_options` VALUES (65,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (66,'large_size_w','2560','yes');
INSERT INTO `wp_options` VALUES (67,'large_size_h','1440','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (69,'image_default_size','full','yes');
INSERT INTO `wp_options` VALUES (70,'image_default_align','none','yes');
INSERT INTO `wp_options` VALUES (71,'close_comments_for_old_posts','','yes');
INSERT INTO `wp_options` VALUES (72,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (73,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (74,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (75,'page_comments','','yes');
INSERT INTO `wp_options` VALUES (76,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (77,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (78,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (79,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (82,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (83,'uninstall_plugins','a:2:{s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";s:27:\"svg-support/svg-support.php\";s:22:\"bodhi_svgs_deactivated\";}','no');
INSERT INTO `wp_options` VALUES (84,'timezone_string','Europe/Helsinki','yes');
INSERT INTO `wp_options` VALUES (85,'page_for_posts','10','yes');
INSERT INTO `wp_options` VALUES (86,'page_on_front','8','yes');
INSERT INTO `wp_options` VALUES (87,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (88,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (89,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (90,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (91,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (92,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (93,'initial_db_version','38590','yes');
INSERT INTO `wp_options` VALUES (94,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (95,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (102,'bedrock_autoloader','a:2:{s:7:\"plugins\";a:4:{s:39:\"dynamic-mo-loader/dynamic-mo-loader.php\";a:11:{s:4:\"Name\";s:17:\"Dynamic MO Loader\";s:9:\"PluginURI\";s:0:\"\";s:7:\"Version\";s:5:\"1.1.1\";s:11:\"Description\";s:52:\"Better text domain loading with object cache support\";s:6:\"Author\";s:8:\"Aucor Oy\";s:9:\"AuthorURI\";s:0:\"\";s:10:\"TextDomain\";s:0:\"\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:5:\"Title\";s:17:\"Dynamic MO Loader\";s:10:\"AuthorName\";s:8:\"Aucor Oy\";}s:31:\"seravo-plugin/seravo-plugin.php\";a:11:{s:4:\"Name\";s:13:\"Seravo Plugin\";s:9:\"PluginURI\";s:39:\"https://github.com/Seravo/seravo-plugin\";s:7:\"Version\";s:5:\"1.7.0\";s:11:\"Description\";s:70:\"Enhances WordPress with Seravo.com specific features and integrations.\";s:6:\"Author\";s:9:\"Seravo Oy\";s:9:\"AuthorURI\";s:19:\"https://seravo.com/\";s:10:\"TextDomain\";s:3:\"wpp\";s:10:\"DomainPath\";s:11:\"/languages/\";s:7:\"Network\";b:0;s:5:\"Title\";s:13:\"Seravo Plugin\";s:10:\"AuthorName\";s:9:\"Seravo Oy\";}s:26:\"wp-core-blocker/plugin.php\";a:11:{s:4:\"Name\";s:15:\"WP Core Blocker\";s:9:\"PluginURI\";s:44:\"https://github.com/devgeniem/wp-core-blocker\";s:7:\"Version\";s:5:\"0.2.3\";s:11:\"Description\";s:99:\"Disables WP from contacting wp.org servers and disables users from installing anything in wp-admin.\";s:6:\"Author\";s:23:\"Onni Hakala / Geniem Oy\";s:9:\"AuthorURI\";s:27:\"http://github.com/onnimonni\";s:10:\"TextDomain\";s:0:\"\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:5:\"Title\";s:15:\"WP Core Blocker\";s:10:\"AuthorName\";s:23:\"Onni Hakala / Geniem Oy\";}s:39:\"wp-sanitize-accented-uploads/plugin.php\";a:11:{s:4:\"Name\";s:28:\"WP Sanitize Accented Uploads\";s:9:\"PluginURI\";s:57:\"https://github.com/devgeniem/wp-sanitize-accented-uploads\";s:7:\"Version\";s:3:\"1.2\";s:11:\"Description\";s:105:\"Replaces accents from future uploads and has wp-cli command which you can use to sanitize current content\";s:6:\"Author\";s:23:\"Onni Hakala / Geniem Oy\";s:9:\"AuthorURI\";s:28:\"https://github.com/onnimonni\";s:10:\"TextDomain\";s:0:\"\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:5:\"Title\";s:28:\"WP Sanitize Accented Uploads\";s:10:\"AuthorName\";s:23:\"Onni Hakala / Geniem Oy\";}}s:5:\"count\";i:4;}','no');
INSERT INTO `wp_options` VALUES (103,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'nonce_key','PSUt&YA77 |n&?LpymqlV!d#x|z6bMttu0uz3*xKc@COq@S-WB@%o%,i4VMzVoW+','no');
INSERT INTO `wp_options` VALUES (110,'nonce_salt','hSSYmU#U%4tTIcoQ*G/29ic$Iut~Q113)Lgx}4QXyskuy>G3e`gZX$(>+O?z$q8c','no');
INSERT INTO `wp_options` VALUES (111,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'polylang','a:12:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"2.2.7\";}','yes');
INSERT INTO `wp_options` VALUES (115,'polylang_wpml_strings','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (116,'relevanssi_title_boost','5','yes');
INSERT INTO `wp_options` VALUES (117,'relevanssi_link_boost','0.75','yes');
INSERT INTO `wp_options` VALUES (118,'relevanssi_comment_boost','0.75','yes');
INSERT INTO `wp_options` VALUES (119,'relevanssi_admin_search','on','yes');
INSERT INTO `wp_options` VALUES (120,'relevanssi_highlight','class','yes');
INSERT INTO `wp_options` VALUES (121,'relevanssi_txt_col','#ff0000','yes');
INSERT INTO `wp_options` VALUES (122,'relevanssi_bg_col','#ffaf75','yes');
INSERT INTO `wp_options` VALUES (123,'relevanssi_css','text-decoration: underline; text-color: #ff0000','yes');
INSERT INTO `wp_options` VALUES (124,'relevanssi_class','relevanssi-query-term','yes');
INSERT INTO `wp_options` VALUES (125,'relevanssi_excerpts','on','yes');
INSERT INTO `wp_options` VALUES (126,'relevanssi_excerpt_length','30','yes');
INSERT INTO `wp_options` VALUES (127,'relevanssi_excerpt_type','words','yes');
INSERT INTO `wp_options` VALUES (128,'relevanssi_excerpt_allowable_tags','<p><a><strong><em>','yes');
INSERT INTO `wp_options` VALUES (129,'relevanssi_log_queries','off','yes');
INSERT INTO `wp_options` VALUES (130,'relevanssi_log_queries_with_ip','off','yes');
INSERT INTO `wp_options` VALUES (131,'relevanssi_cat','0','yes');
INSERT INTO `wp_options` VALUES (132,'relevanssi_excat','0','yes');
INSERT INTO `wp_options` VALUES (133,'relevanssi_extag','0','yes');
INSERT INTO `wp_options` VALUES (134,'relevanssi_index_fields','visible','yes');
INSERT INTO `wp_options` VALUES (135,'relevanssi_exclude_posts','','yes');
INSERT INTO `wp_options` VALUES (136,'relevanssi_hilite_title','off','yes');
INSERT INTO `wp_options` VALUES (137,'relevanssi_highlight_docs','off','yes');
INSERT INTO `wp_options` VALUES (138,'relevanssi_highlight_docs_external','off','yes');
INSERT INTO `wp_options` VALUES (139,'relevanssi_highlight_comments','off','yes');
INSERT INTO `wp_options` VALUES (140,'relevanssi_index_comments','none','yes');
INSERT INTO `wp_options` VALUES (141,'relevanssi_show_matches','on','yes');
INSERT INTO `wp_options` VALUES (142,'relevanssi_show_matches_text','<!--\nSearch hits:\n  %body% in body,\n  %title% in title,\n  %categories% in categories,\n  %tags% in tags,\n  %taxonomies% in other taxonomies,\n  %comments% in comments.\nScore: %score%\n-->\n','yes');
INSERT INTO `wp_options` VALUES (143,'relevanssi_fuzzy','sometimes','yes');
INSERT INTO `wp_options` VALUES (144,'relevanssi_indexed','','yes');
INSERT INTO `wp_options` VALUES (145,'relevanssi_expand_shortcodes','on','yes');
INSERT INTO `wp_options` VALUES (146,'relevanssi_index_author','off','yes');
INSERT INTO `wp_options` VALUES (147,'relevanssi_implicit_operator','AND','yes');
INSERT INTO `wp_options` VALUES (148,'relevanssi_omit_from_logs','','yes');
INSERT INTO `wp_options` VALUES (149,'relevanssi_synonyms','','yes');
INSERT INTO `wp_options` VALUES (150,'relevanssi_index_excerpt','off','yes');
INSERT INTO `wp_options` VALUES (151,'relevanssi_index_limit','500','yes');
INSERT INTO `wp_options` VALUES (152,'relevanssi_disable_or_fallback','off','yes');
INSERT INTO `wp_options` VALUES (153,'relevanssi_respect_exclude','on','yes');
INSERT INTO `wp_options` VALUES (154,'relevanssi_min_word_length','3','yes');
INSERT INTO `wp_options` VALUES (155,'relevanssi_throttle','on','yes');
INSERT INTO `wp_options` VALUES (156,'relevanssi_throttle_limit','500','yes');
INSERT INTO `wp_options` VALUES (157,'relevanssi_db_version','17','yes');
INSERT INTO `wp_options` VALUES (158,'relevanssi_wpml_only_current','on','yes');
INSERT INTO `wp_options` VALUES (159,'relevanssi_post_type_weights','','yes');
INSERT INTO `wp_options` VALUES (160,'relevanssi_index_users','off','yes');
INSERT INTO `wp_options` VALUES (161,'relevanssi_index_subscribers','off','yes');
INSERT INTO `wp_options` VALUES (162,'relevanssi_index_taxonomies','off','yes');
INSERT INTO `wp_options` VALUES (163,'relevanssi_internal_links','noindex','yes');
INSERT INTO `wp_options` VALUES (164,'relevanssi_word_boundaries','on','yes');
INSERT INTO `wp_options` VALUES (165,'relevanssi_default_orderby','relevance','yes');
INSERT INTO `wp_options` VALUES (166,'relevanssi_thousand_separator','','yes');
INSERT INTO `wp_options` VALUES (167,'relevanssi_disable_shortcodes','','yes');
INSERT INTO `wp_options` VALUES (168,'relevanssi_api_key','','yes');
INSERT INTO `wp_options` VALUES (169,'relevanssi_index_post_types','a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}','yes');
INSERT INTO `wp_options` VALUES (170,'relenvassi_recency_bonus','a:2:{s:5:\"bonus\";s:0:\"\";s:4:\"days\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (171,'relevanssi_mysql_columns','','yes');
INSERT INTO `wp_options` VALUES (172,'relevanssi_hide_post_controls','off','yes');
INSERT INTO `wp_options` VALUES (173,'relevanssi_index_taxonomies_list','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (174,'relevanssi_index_terms','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (175,'relevanssi_index_synonyms','off','yes');
INSERT INTO `wp_options` VALUES (176,'the_seo_framework_tested_upgrade_version','2941','yes');
INSERT INTO `wp_options` VALUES (177,'whatthefile-install-date','2017-12-27','no');
INSERT INTO `wp_options` VALUES (178,'rewrite_rules','a:123:{s:13:\"sitemap\\.xml$\";s:39:\"index.php?the_seo_framework_sitemap=xml\";s:13:\"sitemap\\.xsl$\";s:39:\"index.php?the_seo_framework_sitemap=xsl\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:49:\"language/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?lang=$matches[1]&feed=$matches[2]\";s:44:\"language/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?lang=$matches[1]&feed=$matches[2]\";s:25:\"language/([^/]+)/embed/?$\";s:37:\"index.php?lang=$matches[1]&embed=true\";s:37:\"language/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?lang=$matches[1]&paged=$matches[2]\";s:19:\"language/([^/]+)/?$\";s:26:\"index.php?lang=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"libre-forms/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:69:\"libre-forms/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"libre-forms/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"libre-forms/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"libre-forms/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"libre-forms/([^/]+)/embed/?$\";s:57:\"index.php?post_type=wplf-form&name=$matches[1]&embed=true\";s:40:\"libre-forms/([^/]+)/page/?([0-9]{1,})/?$\";s:64:\"index.php?post_type=wplf-form&name=$matches[1]&paged=$matches[2]\";s:47:\"libre-forms/([^/]+)/comment-page-([0-9]{1,})/?$\";s:64:\"index.php?post_type=wplf-form&name=$matches[1]&cpage=$matches[2]\";s:36:\"libre-forms/([^/]+)(?:/([0-9]+))?/?$\";s:63:\"index.php?post_type=wplf-form&name=$matches[1]&page=$matches[2]\";s:28:\"libre-forms/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:58:\"libre-forms/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"libre-forms/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"libre-forms/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"libre-forms/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"wplf-submission/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:73:\"wplf-submission/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"wplf-submission/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"wplf-submission/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"wplf-submission/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"wplf-submission/([^/]+)/embed/?$\";s:63:\"index.php?post_type=wplf-submission&name=$matches[1]&embed=true\";s:44:\"wplf-submission/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?post_type=wplf-submission&name=$matches[1]&paged=$matches[2]\";s:51:\"wplf-submission/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?post_type=wplf-submission&name=$matches[1]&cpage=$matches[2]\";s:40:\"wplf-submission/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?post_type=wplf-submission&name=$matches[1]&page=$matches[2]\";s:32:\"wplf-submission/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:62:\"wplf-submission/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"wplf-submission/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"wplf-submission/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"wplf-submission/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"media_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?media_category=$matches[1]&feed=$matches[2]\";s:50:\"media_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?media_category=$matches[1]&feed=$matches[2]\";s:31:\"media_category/([^/]+)/embed/?$\";s:47:\"index.php?media_category=$matches[1]&embed=true\";s:43:\"media_category/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?media_category=$matches[1]&paged=$matches[2]\";s:25:\"media_category/([^/]+)/?$\";s:36:\"index.php?media_category=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (179,'widget_polylang','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (180,'relevanssi_doc_count','20','yes');
INSERT INTO `wp_options` VALUES (181,'wpuxss_eml_version','2.4.5','yes');
INSERT INTO `wp_options` VALUES (182,'wpuxss_eml_mimes_backup','a:90:{s:12:\"jpg|jpeg|jpe\";a:5:{s:4:\"mime\";s:10:\"image/jpeg\";s:8:\"singular\";s:10:\"image/jpeg\";s:6:\"plural\";s:10:\"image/jpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"gif\";a:5:{s:4:\"mime\";s:9:\"image/gif\";s:8:\"singular\";s:9:\"image/gif\";s:6:\"plural\";s:9:\"image/gif\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"png\";a:5:{s:4:\"mime\";s:9:\"image/png\";s:8:\"singular\";s:9:\"image/png\";s:6:\"plural\";s:9:\"image/png\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"bmp\";a:5:{s:4:\"mime\";s:9:\"image/bmp\";s:8:\"singular\";s:9:\"image/bmp\";s:6:\"plural\";s:9:\"image/bmp\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"tiff|tif\";a:5:{s:4:\"mime\";s:10:\"image/tiff\";s:8:\"singular\";s:10:\"image/tiff\";s:6:\"plural\";s:10:\"image/tiff\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ico\";a:5:{s:4:\"mime\";s:12:\"image/x-icon\";s:8:\"singular\";s:12:\"image/x-icon\";s:6:\"plural\";s:12:\"image/x-icon\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"asf|asx\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-asf\";s:8:\"singular\";s:14:\"video/x-ms-asf\";s:6:\"plural\";s:14:\"video/x-ms-asf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wmv\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-wmv\";s:8:\"singular\";s:14:\"video/x-ms-wmv\";s:6:\"plural\";s:14:\"video/x-ms-wmv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wmx\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-wmx\";s:8:\"singular\";s:14:\"video/x-ms-wmx\";s:6:\"plural\";s:14:\"video/x-ms-wmx\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"wm\";a:5:{s:4:\"mime\";s:13:\"video/x-ms-wm\";s:8:\"singular\";s:13:\"video/x-ms-wm\";s:6:\"plural\";s:13:\"video/x-ms-wm\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"avi\";a:5:{s:4:\"mime\";s:9:\"video/avi\";s:8:\"singular\";s:9:\"video/avi\";s:6:\"plural\";s:9:\"video/avi\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"divx\";a:5:{s:4:\"mime\";s:10:\"video/divx\";s:8:\"singular\";s:10:\"video/divx\";s:6:\"plural\";s:10:\"video/divx\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"flv\";a:5:{s:4:\"mime\";s:11:\"video/x-flv\";s:8:\"singular\";s:11:\"video/x-flv\";s:6:\"plural\";s:11:\"video/x-flv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"mov|qt\";a:5:{s:4:\"mime\";s:15:\"video/quicktime\";s:8:\"singular\";s:15:\"video/quicktime\";s:6:\"plural\";s:15:\"video/quicktime\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:12:\"mpeg|mpg|mpe\";a:5:{s:4:\"mime\";s:10:\"video/mpeg\";s:8:\"singular\";s:10:\"video/mpeg\";s:6:\"plural\";s:10:\"video/mpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"mp4|m4v\";a:5:{s:4:\"mime\";s:9:\"video/mp4\";s:8:\"singular\";s:9:\"video/mp4\";s:6:\"plural\";s:9:\"video/mp4\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ogv\";a:5:{s:4:\"mime\";s:9:\"video/ogg\";s:8:\"singular\";s:9:\"video/ogg\";s:6:\"plural\";s:9:\"video/ogg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"webm\";a:5:{s:4:\"mime\";s:10:\"video/webm\";s:8:\"singular\";s:10:\"video/webm\";s:6:\"plural\";s:10:\"video/webm\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mkv\";a:5:{s:4:\"mime\";s:16:\"video/x-matroska\";s:8:\"singular\";s:16:\"video/x-matroska\";s:6:\"plural\";s:16:\"video/x-matroska\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"3gp|3gpp\";a:5:{s:4:\"mime\";s:10:\"video/3gpp\";s:8:\"singular\";s:10:\"video/3gpp\";s:6:\"plural\";s:10:\"video/3gpp\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"3g2|3gp2\";a:5:{s:4:\"mime\";s:11:\"video/3gpp2\";s:8:\"singular\";s:11:\"video/3gpp2\";s:6:\"plural\";s:11:\"video/3gpp2\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:18:\"txt|asc|c|cc|h|srt\";a:5:{s:4:\"mime\";s:10:\"text/plain\";s:8:\"singular\";s:10:\"text/plain\";s:6:\"plural\";s:10:\"text/plain\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"csv\";a:5:{s:4:\"mime\";s:8:\"text/csv\";s:8:\"singular\";s:8:\"text/csv\";s:6:\"plural\";s:8:\"text/csv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"tsv\";a:5:{s:4:\"mime\";s:25:\"text/tab-separated-values\";s:8:\"singular\";s:25:\"text/tab-separated-values\";s:6:\"plural\";s:25:\"text/tab-separated-values\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ics\";a:5:{s:4:\"mime\";s:13:\"text/calendar\";s:8:\"singular\";s:13:\"text/calendar\";s:6:\"plural\";s:13:\"text/calendar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rtx\";a:5:{s:4:\"mime\";s:13:\"text/richtext\";s:8:\"singular\";s:13:\"text/richtext\";s:6:\"plural\";s:13:\"text/richtext\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"css\";a:5:{s:4:\"mime\";s:8:\"text/css\";s:8:\"singular\";s:8:\"text/css\";s:6:\"plural\";s:8:\"text/css\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"htm|html\";a:5:{s:4:\"mime\";s:9:\"text/html\";s:8:\"singular\";s:9:\"text/html\";s:6:\"plural\";s:9:\"text/html\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:3:\"vtt\";a:5:{s:4:\"mime\";s:8:\"text/vtt\";s:8:\"singular\";s:8:\"text/vtt\";s:6:\"plural\";s:8:\"text/vtt\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dfxp\";a:5:{s:4:\"mime\";s:20:\"application/ttaf+xml\";s:8:\"singular\";s:20:\"application/ttaf+xml\";s:6:\"plural\";s:20:\"application/ttaf+xml\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:11:\"mp3|m4a|m4b\";a:5:{s:4:\"mime\";s:10:\"audio/mpeg\";s:8:\"singular\";s:10:\"audio/mpeg\";s:6:\"plural\";s:10:\"audio/mpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"ra|ram\";a:5:{s:4:\"mime\";s:17:\"audio/x-realaudio\";s:8:\"singular\";s:17:\"audio/x-realaudio\";s:6:\"plural\";s:17:\"audio/x-realaudio\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wav\";a:5:{s:4:\"mime\";s:9:\"audio/wav\";s:8:\"singular\";s:9:\"audio/wav\";s:6:\"plural\";s:9:\"audio/wav\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"ogg|oga\";a:5:{s:4:\"mime\";s:9:\"audio/ogg\";s:8:\"singular\";s:9:\"audio/ogg\";s:6:\"plural\";s:9:\"audio/ogg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"mid|midi\";a:5:{s:4:\"mime\";s:10:\"audio/midi\";s:8:\"singular\";s:10:\"audio/midi\";s:6:\"plural\";s:10:\"audio/midi\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wma\";a:5:{s:4:\"mime\";s:14:\"audio/x-ms-wma\";s:8:\"singular\";s:14:\"audio/x-ms-wma\";s:6:\"plural\";s:14:\"audio/x-ms-wma\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wax\";a:5:{s:4:\"mime\";s:14:\"audio/x-ms-wax\";s:8:\"singular\";s:14:\"audio/x-ms-wax\";s:6:\"plural\";s:14:\"audio/x-ms-wax\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mka\";a:5:{s:4:\"mime\";s:16:\"audio/x-matroska\";s:8:\"singular\";s:16:\"audio/x-matroska\";s:6:\"plural\";s:16:\"audio/x-matroska\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rtf\";a:5:{s:4:\"mime\";s:15:\"application/rtf\";s:8:\"singular\";s:15:\"application/rtf\";s:6:\"plural\";s:15:\"application/rtf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"js\";a:5:{s:4:\"mime\";s:22:\"application/javascript\";s:8:\"singular\";s:22:\"application/javascript\";s:6:\"plural\";s:22:\"application/javascript\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:3:\"pdf\";a:5:{s:4:\"mime\";s:15:\"application/pdf\";s:8:\"singular\";s:15:\"application/pdf\";s:6:\"plural\";s:15:\"application/pdf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"swf\";a:5:{s:4:\"mime\";s:29:\"application/x-shockwave-flash\";s:8:\"singular\";s:29:\"application/x-shockwave-flash\";s:6:\"plural\";s:29:\"application/x-shockwave-flash\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:5:\"class\";a:5:{s:4:\"mime\";s:16:\"application/java\";s:8:\"singular\";s:16:\"application/java\";s:6:\"plural\";s:16:\"application/java\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"tar\";a:5:{s:4:\"mime\";s:17:\"application/x-tar\";s:8:\"singular\";s:17:\"application/x-tar\";s:6:\"plural\";s:17:\"application/x-tar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"zip\";a:5:{s:4:\"mime\";s:15:\"application/zip\";s:8:\"singular\";s:15:\"application/zip\";s:6:\"plural\";s:15:\"application/zip\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"gz|gzip\";a:5:{s:4:\"mime\";s:18:\"application/x-gzip\";s:8:\"singular\";s:18:\"application/x-gzip\";s:6:\"plural\";s:18:\"application/x-gzip\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rar\";a:5:{s:4:\"mime\";s:15:\"application/rar\";s:8:\"singular\";s:15:\"application/rar\";s:6:\"plural\";s:15:\"application/rar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"7z\";a:5:{s:4:\"mime\";s:27:\"application/x-7z-compressed\";s:8:\"singular\";s:27:\"application/x-7z-compressed\";s:6:\"plural\";s:27:\"application/x-7z-compressed\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"exe\";a:5:{s:4:\"mime\";s:24:\"application/x-msdownload\";s:8:\"singular\";s:24:\"application/x-msdownload\";s:6:\"plural\";s:24:\"application/x-msdownload\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:3:\"psd\";a:5:{s:4:\"mime\";s:24:\"application/octet-stream\";s:8:\"singular\";s:24:\"application/octet-stream\";s:6:\"plural\";s:24:\"application/octet-stream\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"xcf\";a:5:{s:4:\"mime\";s:24:\"application/octet-stream\";s:8:\"singular\";s:24:\"application/octet-stream\";s:6:\"plural\";s:24:\"application/octet-stream\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"doc\";a:5:{s:4:\"mime\";s:18:\"application/msword\";s:8:\"singular\";s:18:\"application/msword\";s:6:\"plural\";s:18:\"application/msword\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:11:\"pot|pps|ppt\";a:5:{s:4:\"mime\";s:29:\"application/vnd.ms-powerpoint\";s:8:\"singular\";s:29:\"application/vnd.ms-powerpoint\";s:6:\"plural\";s:29:\"application/vnd.ms-powerpoint\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wri\";a:5:{s:4:\"mime\";s:24:\"application/vnd.ms-write\";s:8:\"singular\";s:24:\"application/vnd.ms-write\";s:6:\"plural\";s:24:\"application/vnd.ms-write\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:15:\"xla|xls|xlt|xlw\";a:5:{s:4:\"mime\";s:24:\"application/vnd.ms-excel\";s:8:\"singular\";s:24:\"application/vnd.ms-excel\";s:6:\"plural\";s:24:\"application/vnd.ms-excel\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mdb\";a:5:{s:4:\"mime\";s:25:\"application/vnd.ms-access\";s:8:\"singular\";s:25:\"application/vnd.ms-access\";s:6:\"plural\";s:25:\"application/vnd.ms-access\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mpp\";a:5:{s:4:\"mime\";s:26:\"application/vnd.ms-project\";s:8:\"singular\";s:26:\"application/vnd.ms-project\";s:6:\"plural\";s:26:\"application/vnd.ms-project\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"docx\";a:5:{s:4:\"mime\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:8:\"singular\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:6:\"plural\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"docm\";a:5:{s:4:\"mime\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:8:\"singular\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:6:\"plural\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dotx\";a:5:{s:4:\"mime\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:8:\"singular\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:6:\"plural\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dotm\";a:5:{s:4:\"mime\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:8:\"singular\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:6:\"plural\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsx\";a:5:{s:4:\"mime\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:8:\"singular\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:6:\"plural\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsm\";a:5:{s:4:\"mime\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:8:\"singular\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:6:\"plural\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsb\";a:5:{s:4:\"mime\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:8:\"singular\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:6:\"plural\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xltx\";a:5:{s:4:\"mime\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:8:\"singular\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:6:\"plural\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xltm\";a:5:{s:4:\"mime\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:8:\"singular\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:6:\"plural\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlam\";a:5:{s:4:\"mime\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:8:\"singular\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:6:\"plural\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"pptx\";a:5:{s:4:\"mime\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:8:\"singular\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:6:\"plural\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"pptm\";a:5:{s:4:\"mime\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:8:\"singular\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:6:\"plural\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppsx\";a:5:{s:4:\"mime\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:8:\"singular\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:6:\"plural\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppsm\";a:5:{s:4:\"mime\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:8:\"singular\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:6:\"plural\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"potx\";a:5:{s:4:\"mime\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:8:\"singular\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:6:\"plural\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"potm\";a:5:{s:4:\"mime\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:8:\"singular\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:6:\"plural\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppam\";a:5:{s:4:\"mime\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:8:\"singular\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:6:\"plural\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"sldx\";a:5:{s:4:\"mime\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:8:\"singular\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:6:\"plural\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"sldm\";a:5:{s:4:\"mime\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:8:\"singular\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:6:\"plural\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:28:\"onetoc|onetoc2|onetmp|onepkg\";a:5:{s:4:\"mime\";s:19:\"application/onenote\";s:8:\"singular\";s:19:\"application/onenote\";s:6:\"plural\";s:19:\"application/onenote\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"oxps\";a:5:{s:4:\"mime\";s:16:\"application/oxps\";s:8:\"singular\";s:16:\"application/oxps\";s:6:\"plural\";s:16:\"application/oxps\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"xps\";a:5:{s:4:\"mime\";s:30:\"application/vnd.ms-xpsdocument\";s:8:\"singular\";s:30:\"application/vnd.ms-xpsdocument\";s:6:\"plural\";s:30:\"application/vnd.ms-xpsdocument\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odt\";a:5:{s:4:\"mime\";s:39:\"application/vnd.oasis.opendocument.text\";s:8:\"singular\";s:39:\"application/vnd.oasis.opendocument.text\";s:6:\"plural\";s:39:\"application/vnd.oasis.opendocument.text\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odp\";a:5:{s:4:\"mime\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:8:\"singular\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:6:\"plural\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ods\";a:5:{s:4:\"mime\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:8:\"singular\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:6:\"plural\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odg\";a:5:{s:4:\"mime\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:8:\"singular\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:6:\"plural\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odc\";a:5:{s:4:\"mime\";s:40:\"application/vnd.oasis.opendocument.chart\";s:8:\"singular\";s:40:\"application/vnd.oasis.opendocument.chart\";s:6:\"plural\";s:40:\"application/vnd.oasis.opendocument.chart\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odb\";a:5:{s:4:\"mime\";s:43:\"application/vnd.oasis.opendocument.database\";s:8:\"singular\";s:43:\"application/vnd.oasis.opendocument.database\";s:6:\"plural\";s:43:\"application/vnd.oasis.opendocument.database\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odf\";a:5:{s:4:\"mime\";s:42:\"application/vnd.oasis.opendocument.formula\";s:8:\"singular\";s:42:\"application/vnd.oasis.opendocument.formula\";s:6:\"plural\";s:42:\"application/vnd.oasis.opendocument.formula\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"wp|wpd\";a:5:{s:4:\"mime\";s:23:\"application/wordperfect\";s:8:\"singular\";s:23:\"application/wordperfect\";s:6:\"plural\";s:23:\"application/wordperfect\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"key\";a:5:{s:4:\"mime\";s:29:\"application/vnd.apple.keynote\";s:8:\"singular\";s:29:\"application/vnd.apple.keynote\";s:6:\"plural\";s:29:\"application/vnd.apple.keynote\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"numbers\";a:5:{s:4:\"mime\";s:29:\"application/vnd.apple.numbers\";s:8:\"singular\";s:29:\"application/vnd.apple.numbers\";s:6:\"plural\";s:29:\"application/vnd.apple.numbers\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:5:\"pages\";a:5:{s:4:\"mime\";s:27:\"application/vnd.apple.pages\";s:8:\"singular\";s:27:\"application/vnd.apple.pages\";s:6:\"plural\";s:27:\"application/vnd.apple.pages\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}}','yes');
INSERT INTO `wp_options` VALUES (183,'wpuxss_eml_taxonomies','a:7:{s:14:\"media_category\";a:13:{s:8:\"assigned\";i:1;s:9:\"eml_media\";i:1;s:6:\"public\";i:1;s:6:\"labels\";a:12:{s:4:\"name\";s:16:\"Media Categories\";s:13:\"singular_name\";s:14:\"Media Category\";s:9:\"menu_name\";s:16:\"Media Categories\";s:9:\"all_items\";s:20:\"All Media Categories\";s:9:\"edit_item\";s:19:\"Edit Media Category\";s:9:\"view_item\";s:19:\"View Media Category\";s:11:\"update_item\";s:21:\"Update Media Category\";s:12:\"add_new_item\";s:22:\"Add New Media Category\";s:13:\"new_item_name\";s:23:\"New Media Category Name\";s:11:\"parent_item\";s:21:\"Parent Media Category\";s:17:\"parent_item_colon\";s:22:\"Parent Media Category:\";s:12:\"search_items\";s:23:\"Search Media Categories\";}s:12:\"hierarchical\";i:1;s:17:\"show_admin_column\";i:1;s:12:\"admin_filter\";i:1;s:21:\"media_uploader_filter\";i:1;s:25:\"media_popup_taxonomy_edit\";i:1;s:17:\"show_in_nav_menus\";i:1;s:4:\"sort\";i:0;s:12:\"show_in_rest\";i:0;s:7:\"rewrite\";a:2:{s:4:\"slug\";s:14:\"media_category\";s:10:\"with_front\";i:1;}}s:8:\"category\";a:6:{s:9:\"eml_media\";i:0;s:12:\"admin_filter\";i:0;s:21:\"media_uploader_filter\";i:0;s:25:\"media_popup_taxonomy_edit\";i:0;s:20:\"taxonomy_auto_assign\";i:0;s:8:\"assigned\";i:0;}s:8:\"post_tag\";a:6:{s:9:\"eml_media\";i:0;s:12:\"admin_filter\";i:0;s:21:\"media_uploader_filter\";i:0;s:25:\"media_popup_taxonomy_edit\";i:0;s:20:\"taxonomy_auto_assign\";i:0;s:8:\"assigned\";i:0;}s:8:\"language\";a:6:{s:9:\"eml_media\";i:0;s:12:\"admin_filter\";i:0;s:21:\"media_uploader_filter\";i:0;s:25:\"media_popup_taxonomy_edit\";i:0;s:20:\"taxonomy_auto_assign\";i:0;s:8:\"assigned\";i:1;}s:17:\"post_translations\";a:6:{s:9:\"eml_media\";i:0;s:12:\"admin_filter\";i:0;s:21:\"media_uploader_filter\";i:0;s:25:\"media_popup_taxonomy_edit\";i:0;s:20:\"taxonomy_auto_assign\";i:0;s:8:\"assigned\";i:1;}s:13:\"term_language\";a:6:{s:9:\"eml_media\";i:0;s:12:\"admin_filter\";i:0;s:21:\"media_uploader_filter\";i:0;s:25:\"media_popup_taxonomy_edit\";i:0;s:20:\"taxonomy_auto_assign\";i:0;s:8:\"assigned\";i:0;}s:17:\"term_translations\";a:6:{s:9:\"eml_media\";i:0;s:12:\"admin_filter\";i:0;s:21:\"media_uploader_filter\";i:0;s:25:\"media_popup_taxonomy_edit\";i:0;s:20:\"taxonomy_auto_assign\";i:0;s:8:\"assigned\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (184,'wpuxss_eml_lib_options','a:3:{s:24:\"enhance_media_shortcodes\";i:0;s:13:\"media_orderby\";s:4:\"date\";s:11:\"media_order\";s:4:\"DESC\";}','yes');
INSERT INTO `wp_options` VALUES (185,'wpuxss_eml_tax_options','a:4:{s:12:\"tax_archives\";i:1;s:24:\"edit_all_as_hierarchical\";i:0;s:13:\"force_filters\";i:0;s:10:\"show_count\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (186,'wpuxss_eml_mimes','a:90:{s:12:\"jpg|jpeg|jpe\";a:5:{s:4:\"mime\";s:10:\"image/jpeg\";s:8:\"singular\";s:10:\"image/jpeg\";s:6:\"plural\";s:10:\"image/jpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"gif\";a:5:{s:4:\"mime\";s:9:\"image/gif\";s:8:\"singular\";s:9:\"image/gif\";s:6:\"plural\";s:9:\"image/gif\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"png\";a:5:{s:4:\"mime\";s:9:\"image/png\";s:8:\"singular\";s:9:\"image/png\";s:6:\"plural\";s:9:\"image/png\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"bmp\";a:5:{s:4:\"mime\";s:9:\"image/bmp\";s:8:\"singular\";s:9:\"image/bmp\";s:6:\"plural\";s:9:\"image/bmp\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"tiff|tif\";a:5:{s:4:\"mime\";s:10:\"image/tiff\";s:8:\"singular\";s:10:\"image/tiff\";s:6:\"plural\";s:10:\"image/tiff\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ico\";a:5:{s:4:\"mime\";s:12:\"image/x-icon\";s:8:\"singular\";s:12:\"image/x-icon\";s:6:\"plural\";s:12:\"image/x-icon\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"asf|asx\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-asf\";s:8:\"singular\";s:14:\"video/x-ms-asf\";s:6:\"plural\";s:14:\"video/x-ms-asf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wmv\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-wmv\";s:8:\"singular\";s:14:\"video/x-ms-wmv\";s:6:\"plural\";s:14:\"video/x-ms-wmv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wmx\";a:5:{s:4:\"mime\";s:14:\"video/x-ms-wmx\";s:8:\"singular\";s:14:\"video/x-ms-wmx\";s:6:\"plural\";s:14:\"video/x-ms-wmx\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"wm\";a:5:{s:4:\"mime\";s:13:\"video/x-ms-wm\";s:8:\"singular\";s:13:\"video/x-ms-wm\";s:6:\"plural\";s:13:\"video/x-ms-wm\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"avi\";a:5:{s:4:\"mime\";s:9:\"video/avi\";s:8:\"singular\";s:9:\"video/avi\";s:6:\"plural\";s:9:\"video/avi\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"divx\";a:5:{s:4:\"mime\";s:10:\"video/divx\";s:8:\"singular\";s:10:\"video/divx\";s:6:\"plural\";s:10:\"video/divx\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"flv\";a:5:{s:4:\"mime\";s:11:\"video/x-flv\";s:8:\"singular\";s:11:\"video/x-flv\";s:6:\"plural\";s:11:\"video/x-flv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"mov|qt\";a:5:{s:4:\"mime\";s:15:\"video/quicktime\";s:8:\"singular\";s:15:\"video/quicktime\";s:6:\"plural\";s:15:\"video/quicktime\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:12:\"mpeg|mpg|mpe\";a:5:{s:4:\"mime\";s:10:\"video/mpeg\";s:8:\"singular\";s:10:\"video/mpeg\";s:6:\"plural\";s:10:\"video/mpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"mp4|m4v\";a:5:{s:4:\"mime\";s:9:\"video/mp4\";s:8:\"singular\";s:9:\"video/mp4\";s:6:\"plural\";s:9:\"video/mp4\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ogv\";a:5:{s:4:\"mime\";s:9:\"video/ogg\";s:8:\"singular\";s:9:\"video/ogg\";s:6:\"plural\";s:9:\"video/ogg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"webm\";a:5:{s:4:\"mime\";s:10:\"video/webm\";s:8:\"singular\";s:10:\"video/webm\";s:6:\"plural\";s:10:\"video/webm\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mkv\";a:5:{s:4:\"mime\";s:16:\"video/x-matroska\";s:8:\"singular\";s:16:\"video/x-matroska\";s:6:\"plural\";s:16:\"video/x-matroska\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"3gp|3gpp\";a:5:{s:4:\"mime\";s:10:\"video/3gpp\";s:8:\"singular\";s:10:\"video/3gpp\";s:6:\"plural\";s:10:\"video/3gpp\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"3g2|3gp2\";a:5:{s:4:\"mime\";s:11:\"video/3gpp2\";s:8:\"singular\";s:11:\"video/3gpp2\";s:6:\"plural\";s:11:\"video/3gpp2\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:18:\"txt|asc|c|cc|h|srt\";a:5:{s:4:\"mime\";s:10:\"text/plain\";s:8:\"singular\";s:10:\"text/plain\";s:6:\"plural\";s:10:\"text/plain\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"csv\";a:5:{s:4:\"mime\";s:8:\"text/csv\";s:8:\"singular\";s:8:\"text/csv\";s:6:\"plural\";s:8:\"text/csv\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"tsv\";a:5:{s:4:\"mime\";s:25:\"text/tab-separated-values\";s:8:\"singular\";s:25:\"text/tab-separated-values\";s:6:\"plural\";s:25:\"text/tab-separated-values\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ics\";a:5:{s:4:\"mime\";s:13:\"text/calendar\";s:8:\"singular\";s:13:\"text/calendar\";s:6:\"plural\";s:13:\"text/calendar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rtx\";a:5:{s:4:\"mime\";s:13:\"text/richtext\";s:8:\"singular\";s:13:\"text/richtext\";s:6:\"plural\";s:13:\"text/richtext\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"css\";a:5:{s:4:\"mime\";s:8:\"text/css\";s:8:\"singular\";s:8:\"text/css\";s:6:\"plural\";s:8:\"text/css\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"htm|html\";a:5:{s:4:\"mime\";s:9:\"text/html\";s:8:\"singular\";s:9:\"text/html\";s:6:\"plural\";s:9:\"text/html\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:3:\"vtt\";a:5:{s:4:\"mime\";s:8:\"text/vtt\";s:8:\"singular\";s:8:\"text/vtt\";s:6:\"plural\";s:8:\"text/vtt\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dfxp\";a:5:{s:4:\"mime\";s:20:\"application/ttaf+xml\";s:8:\"singular\";s:20:\"application/ttaf+xml\";s:6:\"plural\";s:20:\"application/ttaf+xml\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:11:\"mp3|m4a|m4b\";a:5:{s:4:\"mime\";s:10:\"audio/mpeg\";s:8:\"singular\";s:10:\"audio/mpeg\";s:6:\"plural\";s:10:\"audio/mpeg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"ra|ram\";a:5:{s:4:\"mime\";s:17:\"audio/x-realaudio\";s:8:\"singular\";s:17:\"audio/x-realaudio\";s:6:\"plural\";s:17:\"audio/x-realaudio\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wav\";a:5:{s:4:\"mime\";s:9:\"audio/wav\";s:8:\"singular\";s:9:\"audio/wav\";s:6:\"plural\";s:9:\"audio/wav\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"ogg|oga\";a:5:{s:4:\"mime\";s:9:\"audio/ogg\";s:8:\"singular\";s:9:\"audio/ogg\";s:6:\"plural\";s:9:\"audio/ogg\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:8:\"mid|midi\";a:5:{s:4:\"mime\";s:10:\"audio/midi\";s:8:\"singular\";s:10:\"audio/midi\";s:6:\"plural\";s:10:\"audio/midi\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wma\";a:5:{s:4:\"mime\";s:14:\"audio/x-ms-wma\";s:8:\"singular\";s:14:\"audio/x-ms-wma\";s:6:\"plural\";s:14:\"audio/x-ms-wma\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wax\";a:5:{s:4:\"mime\";s:14:\"audio/x-ms-wax\";s:8:\"singular\";s:14:\"audio/x-ms-wax\";s:6:\"plural\";s:14:\"audio/x-ms-wax\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mka\";a:5:{s:4:\"mime\";s:16:\"audio/x-matroska\";s:8:\"singular\";s:16:\"audio/x-matroska\";s:6:\"plural\";s:16:\"audio/x-matroska\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rtf\";a:5:{s:4:\"mime\";s:15:\"application/rtf\";s:8:\"singular\";s:15:\"application/rtf\";s:6:\"plural\";s:15:\"application/rtf\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"js\";a:5:{s:4:\"mime\";s:22:\"application/javascript\";s:8:\"singular\";s:22:\"application/javascript\";s:6:\"plural\";s:22:\"application/javascript\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:3:\"pdf\";a:5:{s:4:\"mime\";s:15:\"application/pdf\";s:8:\"singular\";s:3:\"PDF\";s:6:\"plural\";s:4:\"PDFs\";s:6:\"filter\";i:1;s:6:\"upload\";i:1;}s:3:\"swf\";a:5:{s:4:\"mime\";s:29:\"application/x-shockwave-flash\";s:8:\"singular\";s:29:\"application/x-shockwave-flash\";s:6:\"plural\";s:29:\"application/x-shockwave-flash\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:5:\"class\";a:5:{s:4:\"mime\";s:16:\"application/java\";s:8:\"singular\";s:16:\"application/java\";s:6:\"plural\";s:16:\"application/java\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"tar\";a:5:{s:4:\"mime\";s:17:\"application/x-tar\";s:8:\"singular\";s:17:\"application/x-tar\";s:6:\"plural\";s:17:\"application/x-tar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"zip\";a:5:{s:4:\"mime\";s:15:\"application/zip\";s:8:\"singular\";s:15:\"application/zip\";s:6:\"plural\";s:15:\"application/zip\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"gz|gzip\";a:5:{s:4:\"mime\";s:18:\"application/x-gzip\";s:8:\"singular\";s:18:\"application/x-gzip\";s:6:\"plural\";s:18:\"application/x-gzip\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"rar\";a:5:{s:4:\"mime\";s:15:\"application/rar\";s:8:\"singular\";s:15:\"application/rar\";s:6:\"plural\";s:15:\"application/rar\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:2:\"7z\";a:5:{s:4:\"mime\";s:27:\"application/x-7z-compressed\";s:8:\"singular\";s:27:\"application/x-7z-compressed\";s:6:\"plural\";s:27:\"application/x-7z-compressed\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"exe\";a:5:{s:4:\"mime\";s:24:\"application/x-msdownload\";s:8:\"singular\";s:24:\"application/x-msdownload\";s:6:\"plural\";s:24:\"application/x-msdownload\";s:6:\"filter\";i:0;s:6:\"upload\";i:0;}s:3:\"psd\";a:5:{s:4:\"mime\";s:24:\"application/octet-stream\";s:8:\"singular\";s:24:\"application/octet-stream\";s:6:\"plural\";s:24:\"application/octet-stream\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"xcf\";a:5:{s:4:\"mime\";s:24:\"application/octet-stream\";s:8:\"singular\";s:24:\"application/octet-stream\";s:6:\"plural\";s:24:\"application/octet-stream\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"doc\";a:5:{s:4:\"mime\";s:18:\"application/msword\";s:8:\"singular\";s:18:\"application/msword\";s:6:\"plural\";s:18:\"application/msword\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:11:\"pot|pps|ppt\";a:5:{s:4:\"mime\";s:29:\"application/vnd.ms-powerpoint\";s:8:\"singular\";s:29:\"application/vnd.ms-powerpoint\";s:6:\"plural\";s:29:\"application/vnd.ms-powerpoint\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"wri\";a:5:{s:4:\"mime\";s:24:\"application/vnd.ms-write\";s:8:\"singular\";s:24:\"application/vnd.ms-write\";s:6:\"plural\";s:24:\"application/vnd.ms-write\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:15:\"xla|xls|xlt|xlw\";a:5:{s:4:\"mime\";s:24:\"application/vnd.ms-excel\";s:8:\"singular\";s:24:\"application/vnd.ms-excel\";s:6:\"plural\";s:24:\"application/vnd.ms-excel\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mdb\";a:5:{s:4:\"mime\";s:25:\"application/vnd.ms-access\";s:8:\"singular\";s:25:\"application/vnd.ms-access\";s:6:\"plural\";s:25:\"application/vnd.ms-access\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"mpp\";a:5:{s:4:\"mime\";s:26:\"application/vnd.ms-project\";s:8:\"singular\";s:26:\"application/vnd.ms-project\";s:6:\"plural\";s:26:\"application/vnd.ms-project\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"docx\";a:5:{s:4:\"mime\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:8:\"singular\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:6:\"plural\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.document\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"docm\";a:5:{s:4:\"mime\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:8:\"singular\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:6:\"plural\";s:48:\"application/vnd.ms-word.document.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dotx\";a:5:{s:4:\"mime\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:8:\"singular\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:6:\"plural\";s:71:\"application/vnd.openxmlformats-officedocument.wordprocessingml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"dotm\";a:5:{s:4:\"mime\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:8:\"singular\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:6:\"plural\";s:48:\"application/vnd.ms-word.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsx\";a:5:{s:4:\"mime\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:8:\"singular\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:6:\"plural\";s:65:\"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsm\";a:5:{s:4:\"mime\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:8:\"singular\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:6:\"plural\";s:46:\"application/vnd.ms-excel.sheet.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlsb\";a:5:{s:4:\"mime\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:8:\"singular\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:6:\"plural\";s:53:\"application/vnd.ms-excel.sheet.binary.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xltx\";a:5:{s:4:\"mime\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:8:\"singular\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:6:\"plural\";s:68:\"application/vnd.openxmlformats-officedocument.spreadsheetml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xltm\";a:5:{s:4:\"mime\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:8:\"singular\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:6:\"plural\";s:49:\"application/vnd.ms-excel.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"xlam\";a:5:{s:4:\"mime\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:8:\"singular\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:6:\"plural\";s:46:\"application/vnd.ms-excel.addin.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"pptx\";a:5:{s:4:\"mime\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:8:\"singular\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:6:\"plural\";s:73:\"application/vnd.openxmlformats-officedocument.presentationml.presentation\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"pptm\";a:5:{s:4:\"mime\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:8:\"singular\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:6:\"plural\";s:58:\"application/vnd.ms-powerpoint.presentation.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppsx\";a:5:{s:4:\"mime\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:8:\"singular\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:6:\"plural\";s:70:\"application/vnd.openxmlformats-officedocument.presentationml.slideshow\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppsm\";a:5:{s:4:\"mime\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:8:\"singular\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:6:\"plural\";s:55:\"application/vnd.ms-powerpoint.slideshow.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"potx\";a:5:{s:4:\"mime\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:8:\"singular\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:6:\"plural\";s:69:\"application/vnd.openxmlformats-officedocument.presentationml.template\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"potm\";a:5:{s:4:\"mime\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:8:\"singular\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:6:\"plural\";s:54:\"application/vnd.ms-powerpoint.template.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"ppam\";a:5:{s:4:\"mime\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:8:\"singular\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:6:\"plural\";s:51:\"application/vnd.ms-powerpoint.addin.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"sldx\";a:5:{s:4:\"mime\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:8:\"singular\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:6:\"plural\";s:66:\"application/vnd.openxmlformats-officedocument.presentationml.slide\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"sldm\";a:5:{s:4:\"mime\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:8:\"singular\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:6:\"plural\";s:51:\"application/vnd.ms-powerpoint.slide.macroEnabled.12\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:28:\"onetoc|onetoc2|onetmp|onepkg\";a:5:{s:4:\"mime\";s:19:\"application/onenote\";s:8:\"singular\";s:19:\"application/onenote\";s:6:\"plural\";s:19:\"application/onenote\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:4:\"oxps\";a:5:{s:4:\"mime\";s:16:\"application/oxps\";s:8:\"singular\";s:16:\"application/oxps\";s:6:\"plural\";s:16:\"application/oxps\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"xps\";a:5:{s:4:\"mime\";s:30:\"application/vnd.ms-xpsdocument\";s:8:\"singular\";s:30:\"application/vnd.ms-xpsdocument\";s:6:\"plural\";s:30:\"application/vnd.ms-xpsdocument\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odt\";a:5:{s:4:\"mime\";s:39:\"application/vnd.oasis.opendocument.text\";s:8:\"singular\";s:39:\"application/vnd.oasis.opendocument.text\";s:6:\"plural\";s:39:\"application/vnd.oasis.opendocument.text\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odp\";a:5:{s:4:\"mime\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:8:\"singular\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:6:\"plural\";s:47:\"application/vnd.oasis.opendocument.presentation\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"ods\";a:5:{s:4:\"mime\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:8:\"singular\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:6:\"plural\";s:46:\"application/vnd.oasis.opendocument.spreadsheet\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odg\";a:5:{s:4:\"mime\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:8:\"singular\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:6:\"plural\";s:43:\"application/vnd.oasis.opendocument.graphics\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odc\";a:5:{s:4:\"mime\";s:40:\"application/vnd.oasis.opendocument.chart\";s:8:\"singular\";s:40:\"application/vnd.oasis.opendocument.chart\";s:6:\"plural\";s:40:\"application/vnd.oasis.opendocument.chart\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odb\";a:5:{s:4:\"mime\";s:43:\"application/vnd.oasis.opendocument.database\";s:8:\"singular\";s:43:\"application/vnd.oasis.opendocument.database\";s:6:\"plural\";s:43:\"application/vnd.oasis.opendocument.database\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"odf\";a:5:{s:4:\"mime\";s:42:\"application/vnd.oasis.opendocument.formula\";s:8:\"singular\";s:42:\"application/vnd.oasis.opendocument.formula\";s:6:\"plural\";s:42:\"application/vnd.oasis.opendocument.formula\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:6:\"wp|wpd\";a:5:{s:4:\"mime\";s:23:\"application/wordperfect\";s:8:\"singular\";s:23:\"application/wordperfect\";s:6:\"plural\";s:23:\"application/wordperfect\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:3:\"key\";a:5:{s:4:\"mime\";s:29:\"application/vnd.apple.keynote\";s:8:\"singular\";s:29:\"application/vnd.apple.keynote\";s:6:\"plural\";s:29:\"application/vnd.apple.keynote\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:7:\"numbers\";a:5:{s:4:\"mime\";s:29:\"application/vnd.apple.numbers\";s:8:\"singular\";s:29:\"application/vnd.apple.numbers\";s:6:\"plural\";s:29:\"application/vnd.apple.numbers\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}s:5:\"pages\";a:5:{s:4:\"mime\";s:27:\"application/vnd.apple.pages\";s:8:\"singular\";s:27:\"application/vnd.apple.pages\";s:6:\"plural\";s:27:\"application/vnd.apple.pages\";s:6:\"filter\";i:0;s:6:\"upload\";i:1;}}','yes');
INSERT INTO `wp_options` VALUES (188,'theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514377820;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (190,'secure_auth_key','~!/Cs?D#A|rnxY^wQtPF?0O<j+QR-4n_~*5P0p,^%hgLb/1xno`&pQa8q.*/T+b*','no');
INSERT INTO `wp_options` VALUES (191,'secure_auth_salt','7#>L{>LPr&Yf@00~KM`3Gk@BLfET@vK!/6BjoP#Tet@g_,uAok:Kfl[#rs`/p4s$','no');
INSERT INTO `wp_options` VALUES (192,'logged_in_key','@L1cE]G=/:4R:(VY-:qd`){`59U(@bzX]a)aFNEWK/n`+pRIRo[ut?-J|LvUCT1{','no');
INSERT INTO `wp_options` VALUES (193,'logged_in_salt','-z[IK1_F?H=d|MoDtZrj2eJ<I^E&cqCW0q)HLW{;C@>773hPXG[X2F|2@{AVh^3v','no');
INSERT INTO `wp_options` VALUES (194,'cron','a:3:{i:1515587163;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515594546;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (195,'acf_version','5.6.7','yes');
INSERT INTO `wp_options` VALUES (196,'autodescription-site-settings','a:108:{s:18:\"alter_search_query\";i:1;s:19:\"alter_archive_query\";i:1;s:24:\"alter_archive_query_type\";s:8:\"in_query\";s:23:\"alter_search_query_type\";s:8:\"in_query\";s:22:\"cache_meta_description\";i:0;s:17:\"cache_meta_schema\";i:0;s:13:\"cache_sitemap\";i:1;s:12:\"cache_object\";i:1;s:22:\"display_seo_bar_tables\";i:1;s:23:\"display_seo_bar_metabox\";i:0;s:16:\"canonical_scheme\";s:9:\"automatic\";s:15:\"title_seperator\";s:4:\"pipe\";s:14:\"title_location\";s:5:\"right\";s:19:\"title_rem_additions\";i:0;s:18:\"title_rem_prefixes\";i:0;s:21:\"description_separator\";s:4:\"pipe\";s:21:\"description_additions\";i:1;s:20:\"description_blogname\";i:1;s:5:\"noodp\";i:1;s:6:\"noydir\";i:1;s:16:\"category_noindex\";i:0;s:11:\"tag_noindex\";i:0;s:14:\"author_noindex\";i:0;s:12:\"date_noindex\";i:1;s:14:\"search_noindex\";i:1;s:18:\"attachment_noindex\";i:1;s:12:\"site_noindex\";i:0;s:17:\"category_nofollow\";i:0;s:12:\"tag_nofollow\";i:0;s:15:\"author_nofollow\";i:0;s:13:\"date_nofollow\";i:0;s:15:\"search_nofollow\";i:0;s:19:\"attachment_nofollow\";i:0;s:13:\"site_nofollow\";i:0;s:18:\"category_noarchive\";i:0;s:13:\"tag_noarchive\";i:0;s:16:\"author_noarchive\";i:0;s:14:\"date_noarchive\";i:0;s:16:\"search_noarchive\";i:0;s:20:\"attachment_noarchive\";i:0;s:14:\"site_noarchive\";i:0;s:13:\"paged_noindex\";i:1;s:18:\"home_paged_noindex\";i:0;s:16:\"homepage_noindex\";i:0;s:17:\"homepage_nofollow\";i:0;s:18:\"homepage_noarchive\";i:0;s:14:\"homepage_title\";s:0:\"\";s:16:\"homepage_tagline\";i:1;s:20:\"homepage_description\";s:0:\"\";s:22:\"homepage_title_tagline\";s:0:\"\";s:19:\"home_title_location\";s:4:\"left\";s:25:\"homepage_social_image_url\";s:0:\"\";s:24:\"homepage_social_image_id\";i:0;s:13:\"shortlink_tag\";i:0;s:15:\"prev_next_posts\";i:0;s:18:\"prev_next_archives\";i:1;s:19:\"prev_next_frontpage\";i:1;s:18:\"facebook_publisher\";s:0:\"\";s:15:\"facebook_author\";s:0:\"\";s:14:\"facebook_appid\";s:0:\"\";s:17:\"post_publish_time\";i:1;s:16:\"post_modify_time\";i:1;s:17:\"page_publish_time\";i:0;s:16:\"page_modify_time\";i:0;s:17:\"home_publish_time\";i:0;s:16:\"home_modify_time\";i:0;s:12:\"twitter_card\";s:19:\"summary_large_image\";s:12:\"twitter_site\";s:0:\"\";s:15:\"twitter_creator\";s:0:\"\";s:7:\"og_tags\";i:1;s:13:\"facebook_tags\";i:1;s:12:\"twitter_tags\";i:1;s:19:\"social_image_fb_url\";s:0:\"\";s:18:\"social_image_fb_id\";i:0;s:19:\"google_verification\";s:0:\"\";s:17:\"bing_verification\";s:0:\"\";s:19:\"yandex_verification\";s:0:\"\";s:17:\"pint_verification\";s:0:\"\";s:16:\"knowledge_output\";i:1;s:14:\"knowledge_type\";s:12:\"organization\";s:14:\"knowledge_logo\";i:1;s:14:\"knowledge_name\";s:0:\"\";s:18:\"knowledge_facebook\";s:0:\"\";s:17:\"knowledge_twitter\";s:0:\"\";s:15:\"knowledge_gplus\";s:0:\"\";s:19:\"knowledge_instagram\";s:0:\"\";s:17:\"knowledge_youtube\";s:0:\"\";s:18:\"knowledge_linkedin\";s:0:\"\";s:19:\"knowledge_pinterest\";s:0:\"\";s:20:\"knowledge_soundcloud\";s:0:\"\";s:16:\"knowledge_tumblr\";s:0:\"\";s:15:\"sitemaps_output\";i:1;s:17:\"sitemaps_modified\";i:1;s:18:\"sitemap_timestamps\";s:1:\"1\";s:15:\"sitemaps_robots\";i:1;s:11:\"ping_google\";i:1;s:9:\"ping_bing\";i:1;s:11:\"ping_yandex\";i:1;s:14:\"sitemap_styles\";i:1;s:12:\"sitemap_logo\";i:1;s:18:\"sitemap_color_main\";s:3:\"333\";s:20:\"sitemap_color_accent\";s:6:\"00cd98\";s:16:\"excerpt_the_feed\";i:1;s:15:\"source_the_feed\";i:1;s:17:\"ld_json_searchbox\";i:1;s:16:\"ld_json_sitename\";i:1;s:19:\"ld_json_breadcrumbs\";i:1;s:12:\"updated_2941\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (197,'duplicate_post_copytitle','1','yes');
INSERT INTO `wp_options` VALUES (198,'duplicate_post_copydate','0','yes');
INSERT INTO `wp_options` VALUES (199,'duplicate_post_copystatus','0','yes');
INSERT INTO `wp_options` VALUES (200,'duplicate_post_copyslug','1','yes');
INSERT INTO `wp_options` VALUES (201,'duplicate_post_copyexcerpt','1','yes');
INSERT INTO `wp_options` VALUES (202,'duplicate_post_copycontent','1','yes');
INSERT INTO `wp_options` VALUES (203,'duplicate_post_copythumbnail','1','yes');
INSERT INTO `wp_options` VALUES (204,'duplicate_post_copytemplate','1','yes');
INSERT INTO `wp_options` VALUES (205,'duplicate_post_copyformat','1','yes');
INSERT INTO `wp_options` VALUES (206,'duplicate_post_copyauthor','0','yes');
INSERT INTO `wp_options` VALUES (207,'duplicate_post_copypassword','0','yes');
INSERT INTO `wp_options` VALUES (208,'duplicate_post_copyattachments','0','yes');
INSERT INTO `wp_options` VALUES (209,'duplicate_post_copychildren','0','yes');
INSERT INTO `wp_options` VALUES (210,'duplicate_post_copycomments','0','yes');
INSERT INTO `wp_options` VALUES (211,'duplicate_post_copymenuorder','1','yes');
INSERT INTO `wp_options` VALUES (212,'duplicate_post_taxonomies_blacklist','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (213,'duplicate_post_blacklist','','yes');
INSERT INTO `wp_options` VALUES (214,'duplicate_post_types_enabled','a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}','yes');
INSERT INTO `wp_options` VALUES (215,'duplicate_post_show_row','1','yes');
INSERT INTO `wp_options` VALUES (216,'duplicate_post_show_adminbar','1','yes');
INSERT INTO `wp_options` VALUES (217,'duplicate_post_show_submitbox','1','yes');
INSERT INTO `wp_options` VALUES (218,'duplicate_post_show_bulkactions','1','yes');
INSERT INTO `wp_options` VALUES (219,'duplicate_post_version','3.2.1','yes');
INSERT INTO `wp_options` VALUES (220,'duplicate_post_show_notice','1','no');
INSERT INTO `wp_options` VALUES (221,'expirationdateDefaultDateFormat','l F jS, Y','yes');
INSERT INTO `wp_options` VALUES (222,'expirationdateDefaultTimeFormat','g:ia','yes');
INSERT INTO `wp_options` VALUES (223,'expirationdateFooterContents','Post expires at EXPIRATIONTIME on EXPIRATIONDATE','yes');
INSERT INTO `wp_options` VALUES (224,'expirationdateFooterStyle','font-style: italic;','yes');
INSERT INTO `wp_options` VALUES (225,'expirationdateDisplayFooter','0','yes');
INSERT INTO `wp_options` VALUES (226,'expirationdateDebug','0','yes');
INSERT INTO `wp_options` VALUES (227,'expirationdateDefaultDate','null','yes');
INSERT INTO `wp_options` VALUES (228,'postexpiratorVersion','2.3.1.1','yes');
INSERT INTO `wp_options` VALUES (229,'seravo-image-max-resolution-width','4000','yes');
INSERT INTO `wp_options` VALUES (230,'seravo-image-max-resolution-height','4000','yes');
INSERT INTO `wp_options` VALUES (231,'seravo-enable-optimize-images','','yes');
INSERT INTO `wp_options` VALUES (232,'the_seo_framework_upgraded_db_version','2941','yes');
INSERT INTO `wp_options` VALUES (235,'mw_adminimize','a:3:{s:31:\"mw_adminimize_dashboard_widgets\";a:7:{s:17:\"dashboard_primary\";a:4:{s:2:\"id\";s:17:\"dashboard_primary\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:3:\"low\";}s:24:\"dashboard_incoming_links\";a:4:{s:2:\"id\";s:24:\"dashboard_incoming_links\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:3:\"low\";}s:17:\"dashboard_plugins\";a:4:{s:2:\"id\";s:17:\"dashboard_plugins\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:3:\"low\";}s:19:\"dashboard_secondary\";a:4:{s:2:\"id\";s:19:\"dashboard_secondary\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:3:\"low\";}s:19:\"dashboard_right_now\";a:4:{s:2:\"id\";s:19:\"dashboard_right_now\";s:5:\"title\";s:11:\"At a Glance\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";}s:18:\"dashboard_activity\";a:4:{s:2:\"id\";s:18:\"dashboard_activity\";s:5:\"title\";s:8:\"Activity\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";}s:21:\"dashboard_quick_press\";a:4:{s:2:\"id\";s:21:\"dashboard_quick_press\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";}}s:29:\"mw_adminimize_admin_bar_nodes\";a:29:{s:12:\"user-actions\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"user-actions\";s:5:\"title\";b:0;s:6:\"parent\";s:10:\"my-account\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:0:{}}s:9:\"user-info\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"user-info\";s:5:\"title\";s:358:\"<img alt=\'\' src=\'https://secure.gravatar.com/avatar/c5df105afafac1987e366c2fcc868d2a?s=64&#038;d=mm&#038;r=g\' srcset=\'https://secure.gravatar.com/avatar/c5df105afafac1987e366c2fcc868d2a?s=128&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-64 photo\' height=\'64\' width=\'64\'><span class=\'display-name\'>Administrator</span><span class=\'username\'>vincit.admin</span>\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:44:\"https://wordpress.local/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:8:\"tabindex\";i:-1;}}s:12:\"edit-profile\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"edit-profile\";s:5:\"title\";s:15:\"Edit My Profile\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:44:\"https://wordpress.local/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:6:\"logout\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"logout\";s:5:\"title\";s:7:\"Log Out\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:74:\"https://wordpress.local/wp-login.php?action=logout&amp;_wpnonce=8a8805c777\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"menu-toggle\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"menu-toggle\";s:5:\"title\";s:73:\"<span class=\"ab-icon\"></span><span class=\"screen-reader-text\">Menu</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:1:\"#\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"my-account\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"my-account\";s:5:\"title\";s:322:\"Howdy, <span class=\"display-name\">Administrator</span><img alt=\'\' src=\'https://secure.gravatar.com/avatar/c5df105afafac1987e366c2fcc868d2a?s=26&#038;d=mm&#038;r=g\' srcset=\'https://secure.gravatar.com/avatar/c5df105afafac1987e366c2fcc868d2a?s=52&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-26 photo\' height=\'26\' width=\'26\'>\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";s:44:\"https://wordpress.local/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"with-avatar\";}}s:7:\"wp-logo\";O:8:\"stdClass\":6:{s:2:\"id\";s:7:\"wp-logo\";s:5:\"title\";s:84:\"<span class=\"ab-icon\"></span><span class=\"screen-reader-text\">About WordPress</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:42:\"https://wordpress.local/wp-admin/about.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"about\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"about\";s:5:\"title\";s:15:\"About WordPress\";s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";s:42:\"https://wordpress.local/wp-admin/about.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"wporg\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"wporg\";s:5:\"title\";s:13:\"WordPress.org\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:22:\"https://wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"documentation\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"documentation\";s:5:\"title\";s:13:\"Documentation\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:28:\"https://codex.wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"support-forums\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"support-forums\";s:5:\"title\";s:14:\"Support Forums\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:30:\"https://wordpress.org/support/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"feedback\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"feedback\";s:5:\"title\";s:8:\"Feedback\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:57:\"https://wordpress.org/support/forum/requests-and-feedback\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"switch-off\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"switch-off\";s:5:\"title\";s:10:\"Switch Off\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:87:\"https://wordpress.local/wp-login.php?action=switch_off&amp;nr=1&amp;_wpnonce=40af133573\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"site-name\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"site-name\";s:5:\"title\";s:4:\"Demo\";s:6:\"parent\";b:0;s:4:\"href\";s:24:\"https://wordpress.local/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"view-site\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"view-site\";s:5:\"title\";s:10:\"Visit Site\";s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";s:24:\"https://wordpress.local/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"comments\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"comments\";s:5:\"title\";s:184:\"<span class=\"ab-icon\"></span><span class=\"ab-label awaiting-mod pending-count count-0\" aria-hidden=\"true\">0</span><span class=\"screen-reader-text\">0 comments awaiting moderation</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:50:\"https://wordpress.local/wp-admin/edit-comments.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-content\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-content\";s:5:\"title\";s:62:\"<span class=\"ab-icon\"></span><span class=\"ab-label\">New</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:45:\"https://wordpress.local/wp-admin/post-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-post\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-post\";s:5:\"title\";s:4:\"Post\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:45:\"https://wordpress.local/wp-admin/post-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"new-media\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"new-media\";s:5:\"title\";s:5:\"Media\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:46:\"https://wordpress.local/wp-admin/media-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-page\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-page\";s:5:\"title\";s:4:\"Page\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:60:\"https://wordpress.local/wp-admin/post-new.php?post_type=page\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"new-wplf-form\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"new-wplf-form\";s:5:\"title\";s:4:\"Form\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:65:\"https://wordpress.local/wp-admin/post-new.php?post_type=wplf-form\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:19:\"new-wplf-submission\";O:8:\"stdClass\":6:{s:2:\"id\";s:19:\"new-wplf-submission\";s:5:\"title\";s:10:\"Submission\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:71:\"https://wordpress.local/wp-admin/post-new.php?post_type=wplf-submission\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-user\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-user\";s:5:\"title\";s:4:\"User\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:45:\"https://wordpress.local/wp-admin/user-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:4:\"view\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"view\";s:5:\"title\";s:9:\"View Page\";s:6:\"parent\";b:0;s:4:\"href\";s:24:\"https://wordpress.local/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"top-secondary\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"top-secondary\";s:5:\"title\";b:0;s:6:\"parent\";b:0;s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-top-secondary\";}}s:16:\"wp-logo-external\";O:8:\"stdClass\":6:{s:2:\"id\";s:16:\"wp-logo-external\";s:5:\"title\";b:0;s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-sub-secondary\";}}s:13:\"query-monitor\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"query-monitor\";s:5:\"title\";s:13:\"Query Monitor\";s:6:\"parent\";b:0;s:4:\"href\";s:3:\"#qm\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:25:\"query-monitor-placeholder\";O:8:\"stdClass\":6:{s:2:\"id\";s:25:\"query-monitor-placeholder\";s:5:\"title\";s:13:\"Query Monitor\";s:6:\"parent\";s:13:\"query-monitor\";s:4:\"href\";s:3:\"#qm\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:22:\"nginx-helper-purge-all\";O:8:\"stdClass\":6:{s:2:\"id\";s:22:\"nginx-helper-purge-all\";s:5:\"title\";s:294:\"<span class=\"ab-icon\"></span><span title=\"Seravo.com uses front proxies to deliver lightning fast responses to your visitors. Cached pages will be refreshed every 15 min. This button is used for clearing all cached pages from the frontend proxy immediately.\" class=\"ab-label\">Purge Cache</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:109:\"/wp-admin/post.php?post=8&amp;action=edit&amp;message=1&amp;seravo_purge_cache=1&amp;_seravo_nonce=f4a7c3e22d\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}}s:38:\"mw_adminimize_admin_bar_frontend_nodes\";a:37:{s:12:\"user-actions\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"user-actions\";s:5:\"title\";b:0;s:6:\"parent\";s:10:\"my-account\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:0:{}}s:9:\"user-info\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"user-info\";s:5:\"title\";s:358:\"<img alt=\'\' src=\'https://secure.gravatar.com/avatar/c5df105afafac1987e366c2fcc868d2a?s=64&#038;d=mm&#038;r=g\' srcset=\'https://secure.gravatar.com/avatar/c5df105afafac1987e366c2fcc868d2a?s=128&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-64 photo\' height=\'64\' width=\'64\'><span class=\'display-name\'>Administrator</span><span class=\'username\'>vincit.admin</span>\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:44:\"https://wordpress.local/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:8:\"tabindex\";i:-1;}}s:12:\"edit-profile\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"edit-profile\";s:5:\"title\";s:15:\"Edit My Profile\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:44:\"https://wordpress.local/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:6:\"logout\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"logout\";s:5:\"title\";s:7:\"Log Out\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:74:\"https://wordpress.local/wp-login.php?action=logout&amp;_wpnonce=8a8805c777\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:6:\"search\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"search\";s:5:\"title\";s:310:\"<form action=\"https://wordpress.local/\" method=\"get\" id=\"adminbarsearch\"><input class=\"adminbar-input\" name=\"s\" id=\"adminbar-search\" type=\"text\" value=\"\" maxlength=\"150\" /><label for=\"adminbar-search\" class=\"screen-reader-text\">Search</label><input type=\"submit\" class=\"adminbar-button\" value=\"Search\"/></form>\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";b:0;s:5:\"group\";b:0;s:4:\"meta\";a:2:{s:5:\"class\";s:16:\"admin-bar-search\";s:8:\"tabindex\";i:-1;}}s:10:\"my-account\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"my-account\";s:5:\"title\";s:322:\"Howdy, <span class=\"display-name\">Administrator</span><img alt=\'\' src=\'https://secure.gravatar.com/avatar/c5df105afafac1987e366c2fcc868d2a?s=26&#038;d=mm&#038;r=g\' srcset=\'https://secure.gravatar.com/avatar/c5df105afafac1987e366c2fcc868d2a?s=52&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-26 photo\' height=\'26\' width=\'26\'>\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";s:44:\"https://wordpress.local/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"with-avatar\";}}s:7:\"wp-logo\";O:8:\"stdClass\":6:{s:2:\"id\";s:7:\"wp-logo\";s:5:\"title\";s:84:\"<span class=\"ab-icon\"></span><span class=\"screen-reader-text\">About WordPress</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:42:\"https://wordpress.local/wp-admin/about.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"about\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"about\";s:5:\"title\";s:15:\"About WordPress\";s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";s:42:\"https://wordpress.local/wp-admin/about.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"wporg\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"wporg\";s:5:\"title\";s:13:\"WordPress.org\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:22:\"https://wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"documentation\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"documentation\";s:5:\"title\";s:13:\"Documentation\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:28:\"https://codex.wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"support-forums\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"support-forums\";s:5:\"title\";s:14:\"Support Forums\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:30:\"https://wordpress.org/support/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"feedback\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"feedback\";s:5:\"title\";s:8:\"Feedback\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:57:\"https://wordpress.org/support/forum/requests-and-feedback\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"switch-off\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"switch-off\";s:5:\"title\";s:10:\"Switch Off\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:136:\"https://wordpress.local/wp-login.php?action=switch_off&amp;nr=1&amp;_wpnonce=40af133573&redirect_to=https%3A%2F%2Fwordpress.vincit.io%2F\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"site-name\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"site-name\";s:5:\"title\";s:4:\"Demo\";s:6:\"parent\";b:0;s:4:\"href\";s:33:\"https://wordpress.local/wp-admin/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"dashboard\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"dashboard\";s:5:\"title\";s:9:\"Dashboard\";s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";s:33:\"https://wordpress.local/wp-admin/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"appearance\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"appearance\";s:5:\"title\";b:0;s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:0:{}}s:6:\"themes\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"themes\";s:5:\"title\";s:6:\"Themes\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:43:\"https://wordpress.local/wp-admin/themes.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"menus\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"menus\";s:5:\"title\";s:5:\"Menus\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:46:\"https://wordpress.local/wp-admin/nav-menus.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"customize\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"customize\";s:5:\"title\";s:9:\"Customize\";s:6:\"parent\";b:0;s:4:\"href\";s:87:\"https://wordpress.local/wp-admin/customize.php?url=https%3A%2F%2Fwordpress.vincit.io%2F\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:20:\"hide-if-no-customize\";}}s:8:\"comments\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"comments\";s:5:\"title\";s:184:\"<span class=\"ab-icon\"></span><span class=\"ab-label awaiting-mod pending-count count-0\" aria-hidden=\"true\">0</span><span class=\"screen-reader-text\">0 comments awaiting moderation</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:50:\"https://wordpress.local/wp-admin/edit-comments.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-content\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-content\";s:5:\"title\";s:62:\"<span class=\"ab-icon\"></span><span class=\"ab-label\">New</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:45:\"https://wordpress.local/wp-admin/post-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-post\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-post\";s:5:\"title\";s:4:\"Post\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:45:\"https://wordpress.local/wp-admin/post-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"new-media\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"new-media\";s:5:\"title\";s:5:\"Media\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:46:\"https://wordpress.local/wp-admin/media-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-page\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-page\";s:5:\"title\";s:4:\"Page\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:60:\"https://wordpress.local/wp-admin/post-new.php?post_type=page\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"new-wplf-form\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"new-wplf-form\";s:5:\"title\";s:4:\"Form\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:65:\"https://wordpress.local/wp-admin/post-new.php?post_type=wplf-form\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:19:\"new-wplf-submission\";O:8:\"stdClass\":6:{s:2:\"id\";s:19:\"new-wplf-submission\";s:5:\"title\";s:10:\"Submission\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:71:\"https://wordpress.local/wp-admin/post-new.php?post_type=wplf-submission\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-user\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-user\";s:5:\"title\";s:4:\"User\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:45:\"https://wordpress.local/wp-admin/user-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:4:\"edit\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"edit\";s:5:\"title\";s:9:\"Edit Page\";s:6:\"parent\";b:0;s:4:\"href\";s:64:\"https://wordpress.local/wp-admin/post.php?post=8&amp;action=edit\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"top-secondary\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"top-secondary\";s:5:\"title\";b:0;s:6:\"parent\";b:0;s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-top-secondary\";}}s:16:\"wp-logo-external\";O:8:\"stdClass\":6:{s:2:\"id\";s:16:\"wp-logo-external\";s:5:\"title\";b:0;s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-sub-secondary\";}}s:13:\"query-monitor\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"query-monitor\";s:5:\"title\";s:13:\"Query Monitor\";s:6:\"parent\";b:0;s:4:\"href\";s:3:\"#qm\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:25:\"query-monitor-placeholder\";O:8:\"stdClass\":6:{s:2:\"id\";s:25:\"query-monitor-placeholder\";s:5:\"title\";s:13:\"Query Monitor\";s:6:\"parent\";s:13:\"query-monitor\";s:4:\"href\";s:3:\"#qm\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:22:\"nginx-helper-purge-all\";O:8:\"stdClass\":6:{s:2:\"id\";s:22:\"nginx-helper-purge-all\";s:5:\"title\";s:294:\"<span class=\"ab-icon\"></span><span title=\"Seravo.com uses front proxies to deliver lightning fast responses to your visitors. Cached pages will be refreshed every 15 min. This button is used for clearing all cached pages from the frontend proxy immediately.\" class=\"ab-label\">Purge Cache</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:51:\"/?seravo_purge_cache=1&amp;_seravo_nonce=f4a7c3e22d\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:7:\"wtf-bar\";O:8:\"stdClass\":6:{s:2:\"id\";s:7:\"wtf-bar\";s:5:\"title\";s:13:\"What The File\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";b:0;s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:21:\"wtf-bar-template-file\";O:8:\"stdClass\":6:{s:2:\"id\";s:21:\"wtf-bar-template-file\";s:5:\"title\";s:14:\"front-page.php\";s:6:\"parent\";s:7:\"wtf-bar\";s:4:\"href\";s:96:\"https://wordpress.local/wp-admin/theme-editor.php?file=front-page.php&theme=wordpress-theme-base\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:18:\"wtf-bar-powered-by\";O:8:\"stdClass\":6:{s:2:\"id\";s:18:\"wtf-bar-powered-by\";s:5:\"title\";s:17:\"Powered by Never5\";s:6:\"parent\";s:7:\"wtf-bar\";s:4:\"href\";s:85:\"http://www.never5.com?utm_source=plugin&utm_medium=wtf-bar&utm_campaign=what-the-file\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"new_draft\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"new_draft\";s:5:\"title\";s:19:\"Copy to a new draft\";s:6:\"parent\";b:0;s:4:\"href\";s:122:\"https://wordpress.local/wp-admin/admin.php?action=duplicate_post_save_as_new_post_draft&amp;post=8&amp;_wpnonce=76e85fb286\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (237,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (238,'template_root','/themes','yes');
INSERT INTO `wp_options` VALUES (239,'stylesheet_root','/themes','yes');
INSERT INTO `wp_options` VALUES (240,'current_theme','WordPress theme base','yes');
INSERT INTO `wp_options` VALUES (241,'theme_mods_wordpress-theme-base','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:58;}','yes');
INSERT INTO `wp_options` VALUES (242,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (243,'relevanssi_excerpt_type words','','yes');
INSERT INTO `wp_options` VALUES (244,'vincit_relevanssi_configured','1515585259','yes');
INSERT INTO `wp_options` VALUES (247,'recently_activated','a:1:{s:39:\"wp-all-import-pro/wp-all-import-pro.php\";i:1515585258;}','yes');
INSERT INTO `wp_options` VALUES (253,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1514383559;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (258,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1514385119;s:7:\"checked\";a:2:{s:15:\"twentyseventeen\";s:3:\"1.4\";s:20:\"wordpress-theme-base\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (279,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (284,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (287,'new_admin_email','vagrant@wordpress.vincit.io','yes');
INSERT INTO `wp_options` VALUES (321,'imsanity_max_height','3840','yes');
INSERT INTO `wp_options` VALUES (322,'imsanity_max_width','4096','yes');
INSERT INTO `wp_options` VALUES (323,'imsanity_max_height_library','3840','yes');
INSERT INTO `wp_options` VALUES (324,'imsanity_max_width_library','4096','yes');
INSERT INTO `wp_options` VALUES (325,'imsanity_max_height_other','3840','yes');
INSERT INTO `wp_options` VALUES (326,'imsanity_max_width_other','4096','yes');
INSERT INTO `wp_options` VALUES (327,'imsanity_bmp_to_jpg','1','yes');
INSERT INTO `wp_options` VALUES (328,'imsanity_png_to_jpg','0','yes');
INSERT INTO `wp_options` VALUES (329,'imsanity_quality','82','yes');
INSERT INTO `wp_options` VALUES (330,'wplf-translation-strings','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (382,'bodhi_svgs_plugin_version','2.3.11','yes');
INSERT INTO `wp_options` VALUES (383,'bodhi_svgs_admin_notice_dismissed','1','yes');
INSERT INTO `wp_options` VALUES (384,'bodhi_svgs_settings','a:3:{s:13:\"advanced_mode\";s:2:\"on\";s:14:\"js_foot_choice\";s:2:\"on\";s:10:\"css_target\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (415,'options_fi_copyright_text','© Vincit Group','no');
INSERT INTO `wp_options` VALUES (416,'_options_fi_copyright_text','field_59d247261dfcf','no');
INSERT INTO `wp_options` VALUES (417,'options_fi','','no');
INSERT INTO `wp_options` VALUES (418,'_options_fi','field_59d24792f1887','no');
INSERT INTO `wp_options` VALUES (433,'PMXI_Plugin_Options','a:30:{s:12:\"info_api_url\";s:26:\"http://www.wpallimport.com\";s:18:\"history_file_count\";i:10000;s:16:\"history_file_age\";i:365;s:15:\"highlight_limit\";i:10000;s:19:\"upload_max_filesize\";i:2048;s:13:\"post_max_size\";i:2048;s:14:\"max_input_time\";i:-1;s:18:\"max_execution_time\";i:-1;s:7:\"dismiss\";i:0;s:16:\"dismiss_speed_up\";i:0;s:13:\"html_entities\";i:0;s:11:\"utf8_decode\";i:0;s:12:\"cron_job_key\";s:10:\"4bdr4fxZcn\";s:10:\"chunk_size\";i:32;s:9:\"pingbacks\";i:1;s:33:\"legacy_special_character_handling\";i:1;s:14:\"case_sensitive\";i:1;s:12:\"session_mode\";s:7:\"default\";s:17:\"enable_ftp_import\";i:0;s:16:\"large_feed_limit\";i:1000;s:26:\"cron_processing_time_limit\";i:120;s:6:\"secure\";i:1;s:11:\"log_storage\";i:5;s:10:\"cron_sleep\";s:0:\"\";s:4:\"port\";s:0:\"\";s:16:\"google_client_id\";s:0:\"\";s:16:\"google_signature\";s:0:\"\";s:8:\"licenses\";a:0:{}s:8:\"statuses\";a:0:{}s:19:\"force_stream_reader\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (434,'pmxi_is_migrated','4.5.0','yes');
INSERT INTO `wp_options` VALUES (435,'wp_all_import_db_version','4.5.0','yes');
INSERT INTO `wp_options` VALUES (443,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (466,'_wpallimport_session_new_','a:27:{s:8:\"filepath\";s:101:\"/var/www/html/htdocs/wp-content/uploads/wpallimport/uploads/fc76ec8b27c3991ea5b9fe770650add6/feed.xml\";s:16:\"parent_import_id\";i:0;s:5:\"xpath\";s:5:\"/item\";s:9:\"feed_type\";b:0;s:11:\"wizard_type\";s:3:\"new\";s:11:\"custom_type\";s:4:\"post\";s:13:\"taxonomy_type\";s:0:\"\";s:6:\"source\";s:176:\"a:5:{s:4:\"name\";s:4:\"feed\";s:4:\"type\";s:3:\"url\";s:4:\"path\";s:30:\"http://wordpress.org/news/feed\";s:12:\"root_element\";s:4:\"item\";s:12:\"first_import\";s:19:\"2018-01-03 15:01:12\";}\";s:8:\"encoding\";s:5:\"UTF-8\";s:6:\"is_csv\";b:0;s:8:\"csv_path\";s:0:\"\";s:12:\"chunk_number\";i:1;s:3:\"log\";s:0:\"\";s:10:\"processing\";i:0;s:18:\"queue_chunk_number\";i:0;s:5:\"count\";i:10;s:8:\"warnings\";i:0;s:6:\"errors\";i:0;s:10:\"start_time\";i:0;s:11:\"local_paths\";s:120:\"a:1:{i:0;s:101:\"/var/www/html/htdocs/wp-content/uploads/wpallimport/uploads/fc76ec8b27c3991ea5b9fe770650add6/feed.xml\";}\";s:9:\"csv_paths\";s:17:\"a:1:{i:0;s:0:\"\";}\";s:6:\"action\";s:6:\"import\";s:14:\"elements_cloud\";s:393:\"a:19:{s:8:\"category\";i:19;s:5:\"title\";i:11;s:4:\"link\";i:11;s:11:\"description\";i:11;s:7:\"post-id\";i:10;s:4:\"item\";i:10;s:15:\"content_encoded\";i:10;s:4:\"guid\";i:10;s:10:\"dc_creator\";i:10;s:7:\"pubDate\";i:10;s:3:\"rss\";i:1;s:4:\"site\";i:1;s:9:\"generator\";i:1;s:7:\"channel\";i:1;s:15:\"sy_updatePeriod\";i:1;s:8:\"language\";i:1;s:13:\"lastBuildDate\";i:1;s:9:\"atom_link\";i:1;s:18:\"sy_updateFrequency\";i:1;}\";s:7:\"pointer\";i:1;s:8:\"deligate\";b:0;s:10:\"first_step\";s:834:\"a:18:{s:4:\"type\";s:3:\"url\";s:11:\"wizard_type\";s:3:\"new\";s:11:\"custom_type\";s:4:\"post\";s:15:\"show_hidden_cpt\";i:0;s:9:\"feed_type\";b:0;s:3:\"url\";s:30:\"http://wordpress.org/news/feed\";s:3:\"ftp\";a:1:{s:3:\"url\";s:6:\"ftp://\";}s:4:\"file\";s:0:\"\";s:8:\"reimport\";s:0:\"\";s:18:\"is_update_previous\";i:0;s:15:\"update_previous\";N;s:5:\"xpath\";s:1:\"/\";s:8:\"filepath\";s:0:\"\";s:12:\"root_element\";s:0:\"\";s:10:\"downloaded\";s:343:\"{\"filePath\":\"/var/www/html/htdocs/wp-content/uploads/wpallimport/uploads/fc76ec8b27c3991ea5b9fe770650add6/feed.xml\",\"bundle\":[],\"source\":{\"name\":\"feed\",\"type\":\"url\",\"path\":\"http://wordpress.org/news/feed\"},\"root_element\":\"\",\"feed_type\":false,\"is_csv\":false,\"csv_path\":\"\",\"template\":\"\",\"templates\":false,\"post_type\":false,\"taxonomy_type\":false}\";s:13:\"auto_generate\";s:1:\"0\";s:8:\"template\";s:0:\"\";s:13:\"taxonomy_type\";s:0:\"\";}\";s:15:\"update_previous\";s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (467,'_wpallimport_session_expires_new_','1515164472','no');
INSERT INTO `wp_options` VALUES (643,'_site_transient_timeout_browser_dac0d1ac6af44d0487d67adb2b48e1d5','1516107353','no');
INSERT INTO `wp_options` VALUES (644,'_site_transient_browser_dac0d1ac6af44d0487d67adb2b48e1d5','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"60.0.3112.90\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (645,'options_fi_social_media_channels_0_media','Facebook','no');
INSERT INTO `wp_options` VALUES (646,'_options_fi_social_media_channels_0_media','field_5a548553a4cd5','no');
INSERT INTO `wp_options` VALUES (647,'options_fi_social_media_channels_0_link','https://facebook.com/VincitOy','no');
INSERT INTO `wp_options` VALUES (648,'_options_fi_social_media_channels_0_link','field_5a5485b9a4cd6','no');
INSERT INTO `wp_options` VALUES (649,'options_fi_social_media_channels_0_share_button','1','no');
INSERT INTO `wp_options` VALUES (650,'_options_fi_social_media_channels_0_share_button','field_5a5494f6a4cd7','no');
INSERT INTO `wp_options` VALUES (651,'options_fi_social_media_channels_0_share_link','https://www.facebook.com/sharer/sharer.php?u=%url%','no');
INSERT INTO `wp_options` VALUES (652,'_options_fi_social_media_channels_0_share_link','field_5a54951ba4cd8','no');
INSERT INTO `wp_options` VALUES (653,'options_fi_social_media_channels_1_media','Twitter','no');
INSERT INTO `wp_options` VALUES (654,'_options_fi_social_media_channels_1_media','field_5a548553a4cd5','no');
INSERT INTO `wp_options` VALUES (655,'options_fi_social_media_channels_1_link','https://twitter.com/VincitOy','no');
INSERT INTO `wp_options` VALUES (656,'_options_fi_social_media_channels_1_link','field_5a5485b9a4cd6','no');
INSERT INTO `wp_options` VALUES (657,'options_fi_social_media_channels_1_share_button','1','no');
INSERT INTO `wp_options` VALUES (658,'_options_fi_social_media_channels_1_share_button','field_5a5494f6a4cd7','no');
INSERT INTO `wp_options` VALUES (659,'options_fi_social_media_channels_1_share_link','https://twitter.com/home?status=%url%','no');
INSERT INTO `wp_options` VALUES (660,'_options_fi_social_media_channels_1_share_link','field_5a54951ba4cd8','no');
INSERT INTO `wp_options` VALUES (661,'options_fi_social_media_channels','2','no');
INSERT INTO `wp_options` VALUES (662,'_options_fi_social_media_channels','field_5a54852fa4cd4','no');
INSERT INTO `wp_options` VALUES (726,'_site_transient_timeout_theme_roots','1515584727','no');
INSERT INTO `wp_options` VALUES (727,'_site_transient_theme_roots','a:2:{s:15:\"twentyseventeen\";s:7:\"/themes\";s:20:\"wordpress-theme-base\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pmxi_files`
--

DROP TABLE IF EXISTS `wp_pmxi_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_pmxi_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `import_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8mb4_unicode_520_ci,
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pmxi_files`
--

LOCK TABLES `wp_pmxi_files` WRITE;
/*!40000 ALTER TABLE `wp_pmxi_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pmxi_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pmxi_history`
--

DROP TABLE IF EXISTS `wp_pmxi_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_pmxi_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `import_id` bigint(20) unsigned NOT NULL,
  `type` enum('manual','processing','trigger','continue','') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `time_run` text COLLATE utf8mb4_unicode_520_ci,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `summary` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pmxi_history`
--

LOCK TABLES `wp_pmxi_history` WRITE;
/*!40000 ALTER TABLE `wp_pmxi_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pmxi_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pmxi_imports`
--

DROP TABLE IF EXISTS `wp_pmxi_imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_pmxi_imports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_import_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `friendly_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `feed_type` enum('xml','csv','zip','gz','') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8mb4_unicode_520_ci,
  `xpath` text COLLATE utf8mb4_unicode_520_ci,
  `options` longtext COLLATE utf8mb4_unicode_520_ci,
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `root_element` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `processing` tinyint(1) NOT NULL DEFAULT '0',
  `executing` tinyint(1) NOT NULL DEFAULT '0',
  `triggered` tinyint(1) NOT NULL DEFAULT '0',
  `queue_chunk_number` bigint(20) NOT NULL DEFAULT '0',
  `first_import` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count` bigint(20) NOT NULL DEFAULT '0',
  `imported` bigint(20) NOT NULL DEFAULT '0',
  `created` bigint(20) NOT NULL DEFAULT '0',
  `updated` bigint(20) NOT NULL DEFAULT '0',
  `skipped` bigint(20) NOT NULL DEFAULT '0',
  `deleted` bigint(20) NOT NULL DEFAULT '0',
  `canceled` tinyint(1) NOT NULL DEFAULT '0',
  `canceled_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed` tinyint(1) NOT NULL DEFAULT '0',
  `failed_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `settings_update_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_activity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iteration` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pmxi_imports`
--

LOCK TABLES `wp_pmxi_imports` WRITE;
/*!40000 ALTER TABLE `wp_pmxi_imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pmxi_imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pmxi_posts`
--

DROP TABLE IF EXISTS `wp_pmxi_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_pmxi_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `import_id` bigint(20) unsigned NOT NULL,
  `unique_key` text COLLATE utf8mb4_unicode_520_ci,
  `product_key` text COLLATE utf8mb4_unicode_520_ci,
  `iteration` bigint(20) NOT NULL DEFAULT '0',
  `specified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pmxi_posts`
--

LOCK TABLES `wp_pmxi_posts` WRITE;
/*!40000 ALTER TABLE `wp_pmxi_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pmxi_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pmxi_templates`
--

DROP TABLE IF EXISTS `wp_pmxi_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_pmxi_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `options` longtext COLLATE utf8mb4_unicode_520_ci,
  `scheduled` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `content` longtext COLLATE utf8mb4_unicode_520_ci,
  `is_keep_linebreaks` tinyint(1) NOT NULL DEFAULT '0',
  `is_leave_html` tinyint(1) NOT NULL DEFAULT '0',
  `fix_characters` tinyint(1) NOT NULL DEFAULT '0',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pmxi_templates`
--

LOCK TABLES `wp_pmxi_templates` WRITE;
/*!40000 ALTER TABLE `wp_pmxi_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pmxi_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=783 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (3,1,'_wp_trash_meta_time','1514377217');
INSERT INTO `wp_postmeta` VALUES (4,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (5,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (6,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (7,2,'_wp_trash_meta_time','1514377217');
INSERT INTO `wp_postmeta` VALUES (8,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (14,6,'_expiration-date-status','saved');
INSERT INTO `wp_postmeta` VALUES (19,8,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (22,8,'_expiration-date-status','saved');
INSERT INTO `wp_postmeta` VALUES (26,10,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (29,10,'_expiration-date-status','saved');
INSERT INTO `wp_postmeta` VALUES (35,12,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (36,12,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (37,12,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (38,12,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (39,12,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (40,12,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (41,12,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (42,12,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (44,13,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (45,13,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (46,13,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (47,13,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (48,13,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (49,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (50,13,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (51,13,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (55,14,'_wp_page_template','pagebuilder.php');
INSERT INTO `wp_postmeta` VALUES (58,14,'pagebuilder_0_Hero_background_image','20');
INSERT INTO `wp_postmeta` VALUES (59,14,'_pagebuilder_0_Hero_background_image','field_5a391208c7dcd');
INSERT INTO `wp_postmeta` VALUES (60,14,'pagebuilder_0_Hero_background_position','center bottom');
INSERT INTO `wp_postmeta` VALUES (61,14,'_pagebuilder_0_Hero_background_position','field_5a391212c7dce_field_5a0adddf7969f');
INSERT INTO `wp_postmeta` VALUES (62,14,'pagebuilder_0_Hero_background','');
INSERT INTO `wp_postmeta` VALUES (63,14,'_pagebuilder_0_Hero_background','field_5a390d5db5415_field_5a3911fcc7dcc');
INSERT INTO `wp_postmeta` VALUES (64,14,'pagebuilder_0_Hero_wysiwyg_editor','<h1>Pagebuilder</h1>');
INSERT INTO `wp_postmeta` VALUES (65,14,'_pagebuilder_0_Hero_wysiwyg_editor','field_5a390e3407898');
INSERT INTO `wp_postmeta` VALUES (66,14,'pagebuilder_0_Hero_wysiwyg','');
INSERT INTO `wp_postmeta` VALUES (67,14,'_pagebuilder_0_Hero_wysiwyg','field_5a390e43b5416_field_5a390e0707897');
INSERT INTO `wp_postmeta` VALUES (68,14,'pagebuilder_0_Hero_button_text','With a button');
INSERT INTO `wp_postmeta` VALUES (69,14,'_pagebuilder_0_Hero_button_text','field_5a3a193b12b36');
INSERT INTO `wp_postmeta` VALUES (70,14,'pagebuilder_0_Hero_button_link','#youclicked');
INSERT INTO `wp_postmeta` VALUES (71,14,'_pagebuilder_0_Hero_button_link','field_5a3a192512b35');
INSERT INTO `wp_postmeta` VALUES (72,14,'pagebuilder_0_Hero_button_color_value','orange');
INSERT INTO `wp_postmeta` VALUES (73,14,'_pagebuilder_0_Hero_button_color_value','field_5a3920c6450d7');
INSERT INTO `wp_postmeta` VALUES (74,14,'pagebuilder_0_Hero_button_color','');
INSERT INTO `wp_postmeta` VALUES (75,14,'_pagebuilder_0_Hero_button_color','field_5a3a18f312b34_field_5a39209c450d6');
INSERT INTO `wp_postmeta` VALUES (76,14,'pagebuilder_0_Hero_button','');
INSERT INTO `wp_postmeta` VALUES (77,14,'_pagebuilder_0_Hero_button','field_5a3a1978c398f_field_5a3a18ca12b32');
INSERT INTO `wp_postmeta` VALUES (78,14,'pagebuilder_0_Hero','');
INSERT INTO `wp_postmeta` VALUES (79,14,'_pagebuilder_0_Hero','field_5a390e766e134_field_5a39107d3a0d8');
INSERT INTO `wp_postmeta` VALUES (80,14,'pagebuilder_1_AlternatingBlock_background_image','');
INSERT INTO `wp_postmeta` VALUES (81,14,'_pagebuilder_1_AlternatingBlock_background_image','field_5a391208c7dcd');
INSERT INTO `wp_postmeta` VALUES (82,14,'pagebuilder_1_AlternatingBlock_background_position','center top');
INSERT INTO `wp_postmeta` VALUES (83,14,'_pagebuilder_1_AlternatingBlock_background_position','field_5a391212c7dce_field_5a0adddf7969f');
INSERT INTO `wp_postmeta` VALUES (84,14,'pagebuilder_1_AlternatingBlock_background','');
INSERT INTO `wp_postmeta` VALUES (85,14,'_pagebuilder_1_AlternatingBlock_background','field_5a39187e9a2dd_field_5a3911fcc7dcc');
INSERT INTO `wp_postmeta` VALUES (86,14,'pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor','<h2>How are you?</h2>\r\nLorem ipsum dolor sit amet');
INSERT INTO `wp_postmeta` VALUES (87,14,'_pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor','field_5a390e3407898');
INSERT INTO `wp_postmeta` VALUES (88,14,'pagebuilder_1_AlternatingBlock_content_main_wysiwyg','');
INSERT INTO `wp_postmeta` VALUES (89,14,'_pagebuilder_1_AlternatingBlock_content_main_wysiwyg','field_5a4b523b40d98_field_5a390e0707897');
INSERT INTO `wp_postmeta` VALUES (90,14,'pagebuilder_1_AlternatingBlock_content_secondary_type','image');
INSERT INTO `wp_postmeta` VALUES (91,14,'_pagebuilder_1_AlternatingBlock_content_secondary_type','field_5a391b559a2e3');
INSERT INTO `wp_postmeta` VALUES (92,14,'pagebuilder_1_AlternatingBlock_content_secondary_image','24');
INSERT INTO `wp_postmeta` VALUES (93,14,'_pagebuilder_1_AlternatingBlock_content_secondary_image','field_5a391c429a2e6');
INSERT INTO `wp_postmeta` VALUES (94,14,'pagebuilder_1_AlternatingBlock_content_secondary','');
INSERT INTO `wp_postmeta` VALUES (95,14,'_pagebuilder_1_AlternatingBlock_content_secondary','field_5a391b329a2e2');
INSERT INTO `wp_postmeta` VALUES (96,14,'pagebuilder_1_AlternatingBlock_content','');
INSERT INTO `wp_postmeta` VALUES (97,14,'_pagebuilder_1_AlternatingBlock_content','field_5a391ab09a2e0');
INSERT INTO `wp_postmeta` VALUES (98,14,'pagebuilder_1_AlternatingBlock_options_inverse_order','0');
INSERT INTO `wp_postmeta` VALUES (99,14,'_pagebuilder_1_AlternatingBlock_options_inverse_order','field_5a3919e99a2df');
INSERT INTO `wp_postmeta` VALUES (100,14,'pagebuilder_1_AlternatingBlock_options_color_value','gray');
INSERT INTO `wp_postmeta` VALUES (101,14,'_pagebuilder_1_AlternatingBlock_options_color_value','field_5a3920c6450d7');
INSERT INTO `wp_postmeta` VALUES (102,14,'pagebuilder_1_AlternatingBlock_options_color','');
INSERT INTO `wp_postmeta` VALUES (103,14,'_pagebuilder_1_AlternatingBlock_options_color','field_5a392114292ed_field_5a39209c450d6');
INSERT INTO `wp_postmeta` VALUES (104,14,'pagebuilder_1_AlternatingBlock_options','');
INSERT INTO `wp_postmeta` VALUES (105,14,'_pagebuilder_1_AlternatingBlock_options','field_5a3919d09a2de');
INSERT INTO `wp_postmeta` VALUES (106,14,'pagebuilder_1_AlternatingBlock','');
INSERT INTO `wp_postmeta` VALUES (107,14,'_pagebuilder_1_AlternatingBlock','field_5a391836e5608_field_5a3917dece03a');
INSERT INTO `wp_postmeta` VALUES (108,14,'pagebuilder','a:3:{i:0;s:4:\"Hero\";i:1;s:16:\"AlternatingBlock\";i:2;s:16:\"AlternatingBlock\";}');
INSERT INTO `wp_postmeta` VALUES (109,14,'_pagebuilder','field_59b7c1088e871');
INSERT INTO `wp_postmeta` VALUES (110,15,'pagebuilder_0_Hero_background_image','');
INSERT INTO `wp_postmeta` VALUES (111,15,'_pagebuilder_0_Hero_background_image','field_5a391208c7dcd');
INSERT INTO `wp_postmeta` VALUES (112,15,'pagebuilder_0_Hero_background_position','center top');
INSERT INTO `wp_postmeta` VALUES (113,15,'_pagebuilder_0_Hero_background_position','field_5a391212c7dce_field_5a0adddf7969f');
INSERT INTO `wp_postmeta` VALUES (114,15,'pagebuilder_0_Hero_background','');
INSERT INTO `wp_postmeta` VALUES (115,15,'_pagebuilder_0_Hero_background','field_5a390d5db5415_field_5a3911fcc7dcc');
INSERT INTO `wp_postmeta` VALUES (116,15,'pagebuilder_0_Hero_wysiwyg_editor','<h1>Pagebuilder</h1>');
INSERT INTO `wp_postmeta` VALUES (117,15,'_pagebuilder_0_Hero_wysiwyg_editor','field_5a390e3407898');
INSERT INTO `wp_postmeta` VALUES (118,15,'pagebuilder_0_Hero_wysiwyg','');
INSERT INTO `wp_postmeta` VALUES (119,15,'_pagebuilder_0_Hero_wysiwyg','field_5a390e43b5416_field_5a390e0707897');
INSERT INTO `wp_postmeta` VALUES (120,15,'pagebuilder_0_Hero_button_text','With a button');
INSERT INTO `wp_postmeta` VALUES (121,15,'_pagebuilder_0_Hero_button_text','field_5a3a193b12b36');
INSERT INTO `wp_postmeta` VALUES (122,15,'pagebuilder_0_Hero_button_link','#youclicked');
INSERT INTO `wp_postmeta` VALUES (123,15,'_pagebuilder_0_Hero_button_link','field_5a3a192512b35');
INSERT INTO `wp_postmeta` VALUES (124,15,'pagebuilder_0_Hero_button_color_value','orange');
INSERT INTO `wp_postmeta` VALUES (125,15,'_pagebuilder_0_Hero_button_color_value','field_5a3920c6450d7');
INSERT INTO `wp_postmeta` VALUES (126,15,'pagebuilder_0_Hero_button_color','');
INSERT INTO `wp_postmeta` VALUES (127,15,'_pagebuilder_0_Hero_button_color','field_5a3a18f312b34_field_5a39209c450d6');
INSERT INTO `wp_postmeta` VALUES (128,15,'pagebuilder_0_Hero_button','');
INSERT INTO `wp_postmeta` VALUES (129,15,'_pagebuilder_0_Hero_button','field_5a3a1978c398f_field_5a3a18ca12b32');
INSERT INTO `wp_postmeta` VALUES (130,15,'pagebuilder_0_Hero','');
INSERT INTO `wp_postmeta` VALUES (131,15,'_pagebuilder_0_Hero','field_5a390e766e134_field_5a39107d3a0d8');
INSERT INTO `wp_postmeta` VALUES (132,15,'pagebuilder_1_AlternatingBlock_background_image','');
INSERT INTO `wp_postmeta` VALUES (133,15,'_pagebuilder_1_AlternatingBlock_background_image','field_5a391208c7dcd');
INSERT INTO `wp_postmeta` VALUES (134,15,'pagebuilder_1_AlternatingBlock_background_position','center top');
INSERT INTO `wp_postmeta` VALUES (135,15,'_pagebuilder_1_AlternatingBlock_background_position','field_5a391212c7dce_field_5a0adddf7969f');
INSERT INTO `wp_postmeta` VALUES (136,15,'pagebuilder_1_AlternatingBlock_background','');
INSERT INTO `wp_postmeta` VALUES (137,15,'_pagebuilder_1_AlternatingBlock_background','field_5a39187e9a2dd_field_5a3911fcc7dcc');
INSERT INTO `wp_postmeta` VALUES (138,15,'pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor','<h2>How are you?</h2>\r\nLorem ipsum dolor sit amet');
INSERT INTO `wp_postmeta` VALUES (139,15,'_pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor','field_5a390e3407898');
INSERT INTO `wp_postmeta` VALUES (140,15,'pagebuilder_1_AlternatingBlock_content_main_wysiwyg','');
INSERT INTO `wp_postmeta` VALUES (141,15,'_pagebuilder_1_AlternatingBlock_content_main_wysiwyg','field_5a391af19a2e1_field_5a390e0707897');
INSERT INTO `wp_postmeta` VALUES (142,15,'pagebuilder_1_AlternatingBlock_content_secondary_type','image');
INSERT INTO `wp_postmeta` VALUES (143,15,'_pagebuilder_1_AlternatingBlock_content_secondary_type','field_5a391b559a2e3');
INSERT INTO `wp_postmeta` VALUES (144,15,'pagebuilder_1_AlternatingBlock_content_secondary_image','');
INSERT INTO `wp_postmeta` VALUES (145,15,'_pagebuilder_1_AlternatingBlock_content_secondary_image','field_5a391c429a2e6');
INSERT INTO `wp_postmeta` VALUES (146,15,'pagebuilder_1_AlternatingBlock_content_secondary','');
INSERT INTO `wp_postmeta` VALUES (147,15,'_pagebuilder_1_AlternatingBlock_content_secondary','field_5a391b329a2e2');
INSERT INTO `wp_postmeta` VALUES (148,15,'pagebuilder_1_AlternatingBlock_content','');
INSERT INTO `wp_postmeta` VALUES (149,15,'_pagebuilder_1_AlternatingBlock_content','field_5a391ab09a2e0');
INSERT INTO `wp_postmeta` VALUES (150,15,'pagebuilder_1_AlternatingBlock_options_inverse_order','0');
INSERT INTO `wp_postmeta` VALUES (151,15,'_pagebuilder_1_AlternatingBlock_options_inverse_order','field_5a3919e99a2df');
INSERT INTO `wp_postmeta` VALUES (152,15,'pagebuilder_1_AlternatingBlock_options_color_value','gray');
INSERT INTO `wp_postmeta` VALUES (153,15,'_pagebuilder_1_AlternatingBlock_options_color_value','field_5a3920c6450d7');
INSERT INTO `wp_postmeta` VALUES (154,15,'pagebuilder_1_AlternatingBlock_options_color','');
INSERT INTO `wp_postmeta` VALUES (155,15,'_pagebuilder_1_AlternatingBlock_options_color','field_5a392114292ed_field_5a39209c450d6');
INSERT INTO `wp_postmeta` VALUES (156,15,'pagebuilder_1_AlternatingBlock_options','');
INSERT INTO `wp_postmeta` VALUES (157,15,'_pagebuilder_1_AlternatingBlock_options','field_5a3919d09a2de');
INSERT INTO `wp_postmeta` VALUES (158,15,'pagebuilder_1_AlternatingBlock','');
INSERT INTO `wp_postmeta` VALUES (159,15,'_pagebuilder_1_AlternatingBlock','field_5a391836e5608_field_5a3917dece03a');
INSERT INTO `wp_postmeta` VALUES (160,15,'pagebuilder','a:2:{i:0;s:4:\"Hero\";i:1;s:16:\"AlternatingBlock\";}');
INSERT INTO `wp_postmeta` VALUES (161,15,'_pagebuilder','field_59b7c1088e871');
INSERT INTO `wp_postmeta` VALUES (162,14,'_expiration-date-status','saved');
INSERT INTO `wp_postmeta` VALUES (165,16,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (166,16,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (167,16,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (168,16,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (169,16,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (170,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (171,16,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (172,16,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (176,19,'_wp_attached_file','2017/12/unsplash-gu901rpv-xu-anna-jakobs.jpg');
INSERT INTO `wp_postmeta` VALUES (177,19,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:44:\"2017/12/unsplash-gu901rpv-xu-anna-jakobs.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"unsplash-gu901rpv-xu-anna-jakobs-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"unsplash-gu901rpv-xu-anna-jakobs-1350x900.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"unsplash-gu901rpv-xu-anna-jakobs-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (178,20,'_wp_attached_file','2017/12/unsplash-zwl3zln4qtw-natalie-toombs.jpg');
INSERT INTO `wp_postmeta` VALUES (179,20,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:47:\"2017/12/unsplash-zwl3zln4qtw-natalie-toombs.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"unsplash-zwl3zln4qtw-natalie-toombs-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"unsplash-zwl3zln4qtw-natalie-toombs-1350x900.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"unsplash-zwl3zln4qtw-natalie-toombs-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (180,21,'_wp_attached_file','2017/12/unsplash-newuqn0yul4-justin-kauffman.jpg');
INSERT INTO `wp_postmeta` VALUES (181,21,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:48:\"2017/12/unsplash-newuqn0yul4-justin-kauffman.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"unsplash-newuqn0yul4-justin-kauffman-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"unsplash-newuqn0yul4-justin-kauffman-1350x900.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"unsplash-newuqn0yul4-justin-kauffman-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (182,22,'_wp_attached_file','2017/12/unsplash-iijgelwb6d4-thomas-millot.jpg');
INSERT INTO `wp_postmeta` VALUES (183,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:46:\"2017/12/unsplash-iijgelwb6d4-thomas-millot.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"unsplash-iijgelwb6d4-thomas-millot-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"unsplash-iijgelwb6d4-thomas-millot-1350x900.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"unsplash-iijgelwb6d4-thomas-millot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (184,23,'_wp_attached_file','2017/12/unsplash-mvxqpa0v8_o-florian-rieder.jpg');
INSERT INTO `wp_postmeta` VALUES (185,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:4:\"file\";s:47:\"2017/12/unsplash-mvxqpa0v8_o-florian-rieder.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"unsplash-mvxqpa0v8_o-florian-rieder-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"unsplash-mvxqpa0v8_o-florian-rieder-1600x900.jpg\";s:5:\"width\";i:1600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"unsplash-mvxqpa0v8_o-florian-rieder-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (186,24,'_wp_attached_file','2017/12/unsplash-syoo4tzsjzk-maja-null.jpg');
INSERT INTO `wp_postmeta` VALUES (187,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1362;s:4:\"file\";s:42:\"2017/12/unsplash-syoo4tzsjzk-maja-null.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"unsplash-syoo4tzsjzk-maja-null-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"unsplash-syoo4tzsjzk-maja-null-1353x900.jpg\";s:5:\"width\";i:1353;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"unsplash-syoo4tzsjzk-maja-null-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (188,25,'_wp_attached_file','2017/12/unsplash-ocd0woir6ww-yatharth-vibhakar.jpg');
INSERT INTO `wp_postmeta` VALUES (189,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:50:\"2017/12/unsplash-ocd0woir6ww-yatharth-vibhakar.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"unsplash-ocd0woir6ww-yatharth-vibhakar-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"unsplash-ocd0woir6ww-yatharth-vibhakar-1350x900.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"unsplash-ocd0woir6ww-yatharth-vibhakar-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (190,26,'_wp_attached_file','2017/12/unsplash-n5dqognr6mo-osman-rana.jpg');
INSERT INTO `wp_postmeta` VALUES (191,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:43:\"2017/12/unsplash-n5dqognr6mo-osman-rana.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"unsplash-n5dqognr6mo-osman-rana-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"unsplash-n5dqognr6mo-osman-rana-1350x900.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"unsplash-n5dqognr6mo-osman-rana-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (196,27,'pagebuilder_0_Hero_background_image','20');
INSERT INTO `wp_postmeta` VALUES (197,27,'_pagebuilder_0_Hero_background_image','field_5a391208c7dcd');
INSERT INTO `wp_postmeta` VALUES (198,27,'pagebuilder_0_Hero_background_position','center top');
INSERT INTO `wp_postmeta` VALUES (199,27,'_pagebuilder_0_Hero_background_position','field_5a391212c7dce_field_5a0adddf7969f');
INSERT INTO `wp_postmeta` VALUES (200,27,'pagebuilder_0_Hero_background','');
INSERT INTO `wp_postmeta` VALUES (201,27,'_pagebuilder_0_Hero_background','field_5a390d5db5415_field_5a3911fcc7dcc');
INSERT INTO `wp_postmeta` VALUES (202,27,'pagebuilder_0_Hero_wysiwyg_editor','<h1>Pagebuilder</h1>');
INSERT INTO `wp_postmeta` VALUES (203,27,'_pagebuilder_0_Hero_wysiwyg_editor','field_5a390e3407898');
INSERT INTO `wp_postmeta` VALUES (204,27,'pagebuilder_0_Hero_wysiwyg','');
INSERT INTO `wp_postmeta` VALUES (205,27,'_pagebuilder_0_Hero_wysiwyg','field_5a390e43b5416_field_5a390e0707897');
INSERT INTO `wp_postmeta` VALUES (206,27,'pagebuilder_0_Hero_button_text','With a button');
INSERT INTO `wp_postmeta` VALUES (207,27,'_pagebuilder_0_Hero_button_text','field_5a3a193b12b36');
INSERT INTO `wp_postmeta` VALUES (208,27,'pagebuilder_0_Hero_button_link','#youclicked');
INSERT INTO `wp_postmeta` VALUES (209,27,'_pagebuilder_0_Hero_button_link','field_5a3a192512b35');
INSERT INTO `wp_postmeta` VALUES (210,27,'pagebuilder_0_Hero_button_color_value','orange');
INSERT INTO `wp_postmeta` VALUES (211,27,'_pagebuilder_0_Hero_button_color_value','field_5a3920c6450d7');
INSERT INTO `wp_postmeta` VALUES (212,27,'pagebuilder_0_Hero_button_color','');
INSERT INTO `wp_postmeta` VALUES (213,27,'_pagebuilder_0_Hero_button_color','field_5a3a18f312b34_field_5a39209c450d6');
INSERT INTO `wp_postmeta` VALUES (214,27,'pagebuilder_0_Hero_button','');
INSERT INTO `wp_postmeta` VALUES (215,27,'_pagebuilder_0_Hero_button','field_5a3a1978c398f_field_5a3a18ca12b32');
INSERT INTO `wp_postmeta` VALUES (216,27,'pagebuilder_0_Hero','');
INSERT INTO `wp_postmeta` VALUES (217,27,'_pagebuilder_0_Hero','field_5a390e766e134_field_5a39107d3a0d8');
INSERT INTO `wp_postmeta` VALUES (218,27,'pagebuilder_1_AlternatingBlock_background_image','');
INSERT INTO `wp_postmeta` VALUES (219,27,'_pagebuilder_1_AlternatingBlock_background_image','field_5a391208c7dcd');
INSERT INTO `wp_postmeta` VALUES (220,27,'pagebuilder_1_AlternatingBlock_background_position','center top');
INSERT INTO `wp_postmeta` VALUES (221,27,'_pagebuilder_1_AlternatingBlock_background_position','field_5a391212c7dce_field_5a0adddf7969f');
INSERT INTO `wp_postmeta` VALUES (222,27,'pagebuilder_1_AlternatingBlock_background','');
INSERT INTO `wp_postmeta` VALUES (223,27,'_pagebuilder_1_AlternatingBlock_background','field_5a39187e9a2dd_field_5a3911fcc7dcc');
INSERT INTO `wp_postmeta` VALUES (224,27,'pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor','<h2>How are you?</h2>\r\nLorem ipsum dolor sit amet');
INSERT INTO `wp_postmeta` VALUES (225,27,'_pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor','field_5a390e3407898');
INSERT INTO `wp_postmeta` VALUES (226,27,'pagebuilder_1_AlternatingBlock_content_main_wysiwyg','');
INSERT INTO `wp_postmeta` VALUES (227,27,'_pagebuilder_1_AlternatingBlock_content_main_wysiwyg','field_5a391af19a2e1_field_5a390e0707897');
INSERT INTO `wp_postmeta` VALUES (228,27,'pagebuilder_1_AlternatingBlock_content_secondary_type','image');
INSERT INTO `wp_postmeta` VALUES (229,27,'_pagebuilder_1_AlternatingBlock_content_secondary_type','field_5a391b559a2e3');
INSERT INTO `wp_postmeta` VALUES (230,27,'pagebuilder_1_AlternatingBlock_content_secondary_image','18');
INSERT INTO `wp_postmeta` VALUES (231,27,'_pagebuilder_1_AlternatingBlock_content_secondary_image','field_5a391c429a2e6');
INSERT INTO `wp_postmeta` VALUES (232,27,'pagebuilder_1_AlternatingBlock_content_secondary','');
INSERT INTO `wp_postmeta` VALUES (233,27,'_pagebuilder_1_AlternatingBlock_content_secondary','field_5a391b329a2e2');
INSERT INTO `wp_postmeta` VALUES (234,27,'pagebuilder_1_AlternatingBlock_content','');
INSERT INTO `wp_postmeta` VALUES (235,27,'_pagebuilder_1_AlternatingBlock_content','field_5a391ab09a2e0');
INSERT INTO `wp_postmeta` VALUES (236,27,'pagebuilder_1_AlternatingBlock_options_inverse_order','0');
INSERT INTO `wp_postmeta` VALUES (237,27,'_pagebuilder_1_AlternatingBlock_options_inverse_order','field_5a3919e99a2df');
INSERT INTO `wp_postmeta` VALUES (238,27,'pagebuilder_1_AlternatingBlock_options_color_value','gray');
INSERT INTO `wp_postmeta` VALUES (239,27,'_pagebuilder_1_AlternatingBlock_options_color_value','field_5a3920c6450d7');
INSERT INTO `wp_postmeta` VALUES (240,27,'pagebuilder_1_AlternatingBlock_options_color','');
INSERT INTO `wp_postmeta` VALUES (241,27,'_pagebuilder_1_AlternatingBlock_options_color','field_5a392114292ed_field_5a39209c450d6');
INSERT INTO `wp_postmeta` VALUES (242,27,'pagebuilder_1_AlternatingBlock_options','');
INSERT INTO `wp_postmeta` VALUES (243,27,'_pagebuilder_1_AlternatingBlock_options','field_5a3919d09a2de');
INSERT INTO `wp_postmeta` VALUES (244,27,'pagebuilder_1_AlternatingBlock','');
INSERT INTO `wp_postmeta` VALUES (245,27,'_pagebuilder_1_AlternatingBlock','field_5a391836e5608_field_5a3917dece03a');
INSERT INTO `wp_postmeta` VALUES (246,27,'pagebuilder','a:2:{i:0;s:4:\"Hero\";i:1;s:16:\"AlternatingBlock\";}');
INSERT INTO `wp_postmeta` VALUES (247,27,'_pagebuilder','field_59b7c1088e871');
INSERT INTO `wp_postmeta` VALUES (252,28,'pagebuilder_0_Hero_background_image','20');
INSERT INTO `wp_postmeta` VALUES (253,28,'_pagebuilder_0_Hero_background_image','field_5a391208c7dcd');
INSERT INTO `wp_postmeta` VALUES (254,28,'pagebuilder_0_Hero_background_position','center bottom');
INSERT INTO `wp_postmeta` VALUES (255,28,'_pagebuilder_0_Hero_background_position','field_5a391212c7dce_field_5a0adddf7969f');
INSERT INTO `wp_postmeta` VALUES (256,28,'pagebuilder_0_Hero_background','');
INSERT INTO `wp_postmeta` VALUES (257,28,'_pagebuilder_0_Hero_background','field_5a390d5db5415_field_5a3911fcc7dcc');
INSERT INTO `wp_postmeta` VALUES (258,28,'pagebuilder_0_Hero_wysiwyg_editor','<h1>Pagebuilder</h1>');
INSERT INTO `wp_postmeta` VALUES (259,28,'_pagebuilder_0_Hero_wysiwyg_editor','field_5a390e3407898');
INSERT INTO `wp_postmeta` VALUES (260,28,'pagebuilder_0_Hero_wysiwyg','');
INSERT INTO `wp_postmeta` VALUES (261,28,'_pagebuilder_0_Hero_wysiwyg','field_5a390e43b5416_field_5a390e0707897');
INSERT INTO `wp_postmeta` VALUES (262,28,'pagebuilder_0_Hero_button_text','With a button');
INSERT INTO `wp_postmeta` VALUES (263,28,'_pagebuilder_0_Hero_button_text','field_5a3a193b12b36');
INSERT INTO `wp_postmeta` VALUES (264,28,'pagebuilder_0_Hero_button_link','#youclicked');
INSERT INTO `wp_postmeta` VALUES (265,28,'_pagebuilder_0_Hero_button_link','field_5a3a192512b35');
INSERT INTO `wp_postmeta` VALUES (266,28,'pagebuilder_0_Hero_button_color_value','orange');
INSERT INTO `wp_postmeta` VALUES (267,28,'_pagebuilder_0_Hero_button_color_value','field_5a3920c6450d7');
INSERT INTO `wp_postmeta` VALUES (268,28,'pagebuilder_0_Hero_button_color','');
INSERT INTO `wp_postmeta` VALUES (269,28,'_pagebuilder_0_Hero_button_color','field_5a3a18f312b34_field_5a39209c450d6');
INSERT INTO `wp_postmeta` VALUES (270,28,'pagebuilder_0_Hero_button','');
INSERT INTO `wp_postmeta` VALUES (271,28,'_pagebuilder_0_Hero_button','field_5a3a1978c398f_field_5a3a18ca12b32');
INSERT INTO `wp_postmeta` VALUES (272,28,'pagebuilder_0_Hero','');
INSERT INTO `wp_postmeta` VALUES (273,28,'_pagebuilder_0_Hero','field_5a390e766e134_field_5a39107d3a0d8');
INSERT INTO `wp_postmeta` VALUES (274,28,'pagebuilder_1_AlternatingBlock_background_image','');
INSERT INTO `wp_postmeta` VALUES (275,28,'_pagebuilder_1_AlternatingBlock_background_image','field_5a391208c7dcd');
INSERT INTO `wp_postmeta` VALUES (276,28,'pagebuilder_1_AlternatingBlock_background_position','center top');
INSERT INTO `wp_postmeta` VALUES (277,28,'_pagebuilder_1_AlternatingBlock_background_position','field_5a391212c7dce_field_5a0adddf7969f');
INSERT INTO `wp_postmeta` VALUES (278,28,'pagebuilder_1_AlternatingBlock_background','');
INSERT INTO `wp_postmeta` VALUES (279,28,'_pagebuilder_1_AlternatingBlock_background','field_5a39187e9a2dd_field_5a3911fcc7dcc');
INSERT INTO `wp_postmeta` VALUES (280,28,'pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor','<h2>How are you?</h2>\r\nLorem ipsum dolor sit amet');
INSERT INTO `wp_postmeta` VALUES (281,28,'_pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor','field_5a390e3407898');
INSERT INTO `wp_postmeta` VALUES (282,28,'pagebuilder_1_AlternatingBlock_content_main_wysiwyg','');
INSERT INTO `wp_postmeta` VALUES (283,28,'_pagebuilder_1_AlternatingBlock_content_main_wysiwyg','field_5a391af19a2e1_field_5a390e0707897');
INSERT INTO `wp_postmeta` VALUES (284,28,'pagebuilder_1_AlternatingBlock_content_secondary_type','image');
INSERT INTO `wp_postmeta` VALUES (285,28,'_pagebuilder_1_AlternatingBlock_content_secondary_type','field_5a391b559a2e3');
INSERT INTO `wp_postmeta` VALUES (286,28,'pagebuilder_1_AlternatingBlock_content_secondary_image','18');
INSERT INTO `wp_postmeta` VALUES (287,28,'_pagebuilder_1_AlternatingBlock_content_secondary_image','field_5a391c429a2e6');
INSERT INTO `wp_postmeta` VALUES (288,28,'pagebuilder_1_AlternatingBlock_content_secondary','');
INSERT INTO `wp_postmeta` VALUES (289,28,'_pagebuilder_1_AlternatingBlock_content_secondary','field_5a391b329a2e2');
INSERT INTO `wp_postmeta` VALUES (290,28,'pagebuilder_1_AlternatingBlock_content','');
INSERT INTO `wp_postmeta` VALUES (291,28,'_pagebuilder_1_AlternatingBlock_content','field_5a391ab09a2e0');
INSERT INTO `wp_postmeta` VALUES (292,28,'pagebuilder_1_AlternatingBlock_options_inverse_order','0');
INSERT INTO `wp_postmeta` VALUES (293,28,'_pagebuilder_1_AlternatingBlock_options_inverse_order','field_5a3919e99a2df');
INSERT INTO `wp_postmeta` VALUES (294,28,'pagebuilder_1_AlternatingBlock_options_color_value','gray');
INSERT INTO `wp_postmeta` VALUES (295,28,'_pagebuilder_1_AlternatingBlock_options_color_value','field_5a3920c6450d7');
INSERT INTO `wp_postmeta` VALUES (296,28,'pagebuilder_1_AlternatingBlock_options_color','');
INSERT INTO `wp_postmeta` VALUES (297,28,'_pagebuilder_1_AlternatingBlock_options_color','field_5a392114292ed_field_5a39209c450d6');
INSERT INTO `wp_postmeta` VALUES (298,28,'pagebuilder_1_AlternatingBlock_options','');
INSERT INTO `wp_postmeta` VALUES (299,28,'_pagebuilder_1_AlternatingBlock_options','field_5a3919d09a2de');
INSERT INTO `wp_postmeta` VALUES (300,28,'pagebuilder_1_AlternatingBlock','');
INSERT INTO `wp_postmeta` VALUES (301,28,'_pagebuilder_1_AlternatingBlock','field_5a391836e5608_field_5a3917dece03a');
INSERT INTO `wp_postmeta` VALUES (302,28,'pagebuilder','a:2:{i:0;s:4:\"Hero\";i:1;s:16:\"AlternatingBlock\";}');
INSERT INTO `wp_postmeta` VALUES (303,28,'_pagebuilder','field_59b7c1088e871');
INSERT INTO `wp_postmeta` VALUES (306,29,'_wp_attached_file','2017/12/unsplash-wxuinxygaak-justin-kauffman.jpg');
INSERT INTO `wp_postmeta` VALUES (307,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2565;s:6:\"height\";i:3840;s:4:\"file\";s:48:\"2017/12/unsplash-wxuinxygaak-justin-kauffman.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"unsplash-wxuinxygaak-justin-kauffman-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"unsplash-wxuinxygaak-justin-kauffman-601x900.jpg\";s:5:\"width\";i:601;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"unsplash-wxuinxygaak-justin-kauffman-768x1150.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"unsplash-wxuinxygaak-justin-kauffman-962x1440.jpg\";s:5:\"width\";i:962;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (308,31,'_wp_attached_file','2017/12/unsplash-ogcjikrnrc8-ian-keefe.jpg');
INSERT INTO `wp_postmeta` VALUES (309,31,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:3840;s:4:\"file\";s:42:\"2017/12/unsplash-ogcjikrnrc8-ian-keefe.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"unsplash-ogcjikrnrc8-ian-keefe-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"unsplash-ogcjikrnrc8-ian-keefe-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"unsplash-ogcjikrnrc8-ian-keefe-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"unsplash-ogcjikrnrc8-ian-keefe-960x1440.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (311,32,'_wp_attached_file','2017/12/unsplash-4dxp2svr4c0-david-moum.jpg');
INSERT INTO `wp_postmeta` VALUES (312,32,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:3840;s:4:\"file\";s:43:\"2017/12/unsplash-4dxp2svr4c0-david-moum.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"unsplash-4dxp2svr4c0-david-moum-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"unsplash-4dxp2svr4c0-david-moum-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"unsplash-4dxp2svr4c0-david-moum-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"unsplash-4dxp2svr4c0-david-moum-960x1440.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (313,33,'_wp_attached_file','2017/12/unsplash-m8ynbhrlww0-simone-hutsch.jpg');
INSERT INTO `wp_postmeta` VALUES (314,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2750;s:6:\"height\";i:3840;s:4:\"file\";s:46:\"2017/12/unsplash-m8ynbhrlww0-simone-hutsch.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"unsplash-m8ynbhrlww0-simone-hutsch-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"unsplash-m8ynbhrlww0-simone-hutsch-645x900.jpg\";s:5:\"width\";i:645;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"unsplash-m8ynbhrlww0-simone-hutsch-768x1072.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1072;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"unsplash-m8ynbhrlww0-simone-hutsch-1031x1440.jpg\";s:5:\"width\";i:1031;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (315,34,'_wp_attached_file','2017/12/unsplash-mazd8-kyb8e-jordan-bannerman.jpg');
INSERT INTO `wp_postmeta` VALUES (316,34,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:3071;s:6:\"height\";i:3840;s:4:\"file\";s:49:\"2017/12/unsplash-mazd8-kyb8e-jordan-bannerman.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"unsplash-mazd8-kyb8e-jordan-bannerman-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"unsplash-mazd8-kyb8e-jordan-bannerman-720x900.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"unsplash-mazd8-kyb8e-jordan-bannerman-768x960.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"unsplash-mazd8-kyb8e-jordan-bannerman-1152x1440.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (318,35,'_wp_attached_file','2017/12/unsplash-n4ucmu5szua-joshua-rawson-harris.jpg');
INSERT INTO `wp_postmeta` VALUES (319,35,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:3840;s:4:\"file\";s:53:\"2017/12/unsplash-n4ucmu5szua-joshua-rawson-harris.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"unsplash-n4ucmu5szua-joshua-rawson-harris-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"unsplash-n4ucmu5szua-joshua-rawson-harris-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:54:\"unsplash-n4ucmu5szua-joshua-rawson-harris-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:54:\"unsplash-n4ucmu5szua-joshua-rawson-harris-960x1440.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (322,30,'_wplf_thank_you','Success!');
INSERT INTO `wp_postmeta` VALUES (323,30,'_wplf_fields','fname,lname,subject,message,check[],check[],check[],radio[],radio[],radio[]');
INSERT INTO `wp_postmeta` VALUES (324,30,'_wplf_required','');
INSERT INTO `wp_postmeta` VALUES (325,30,'_wplf_email_copy_enabled','1');
INSERT INTO `wp_postmeta` VALUES (326,30,'_wplf_title_format','%name% <%email%>');
INSERT INTO `wp_postmeta` VALUES (327,30,'_expiration-date-status','saved');
INSERT INTO `wp_postmeta` VALUES (330,37,'_wp_attached_file','2017/12/unsplash-n_ryf2kckte-filip-mroz.jpg');
INSERT INTO `wp_postmeta` VALUES (331,37,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2743;s:6:\"height\";i:3840;s:4:\"file\";s:43:\"2017/12/unsplash-n_ryf2kckte-filip-mroz.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"unsplash-n_ryf2kckte-filip-mroz-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"unsplash-n_ryf2kckte-filip-mroz-643x900.jpg\";s:5:\"width\";i:643;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"unsplash-n_ryf2kckte-filip-mroz-768x1075.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1075;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"unsplash-n_ryf2kckte-filip-mroz-1029x1440.jpg\";s:5:\"width\";i:1029;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (332,38,'_wp_attached_file','2017/12/unsplash-9ns86kxbtaa-scott-jackson.jpg');
INSERT INTO `wp_postmeta` VALUES (333,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:3218;s:6:\"height\";i:3840;s:4:\"file\";s:46:\"2017/12/unsplash-9ns86kxbtaa-scott-jackson.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"unsplash-9ns86kxbtaa-scott-jackson-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"unsplash-9ns86kxbtaa-scott-jackson-754x900.jpg\";s:5:\"width\";i:754;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"unsplash-9ns86kxbtaa-scott-jackson-768x916.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:916;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"unsplash-9ns86kxbtaa-scott-jackson-1207x1440.jpg\";s:5:\"width\";i:1207;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (334,39,'_wp_attached_file','2017/12/unsplash-evoo_13chok-benjaminrobyn-jespersen.jpg');
INSERT INTO `wp_postmeta` VALUES (335,39,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:3840;s:4:\"file\";s:56:\"2017/12/unsplash-evoo_13chok-benjaminrobyn-jespersen.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"unsplash-evoo_13chok-benjaminrobyn-jespersen-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"unsplash-evoo_13chok-benjaminrobyn-jespersen-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"unsplash-evoo_13chok-benjaminrobyn-jespersen-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:57:\"unsplash-evoo_13chok-benjaminrobyn-jespersen-960x1440.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (336,40,'_wp_attached_file','2017/12/unsplash-ircoumjf6qw-ec-null.jpg');
INSERT INTO `wp_postmeta` VALUES (337,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2304;s:4:\"file\";s:40:\"2017/12/unsplash-ircoumjf6qw-ec-null.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"unsplash-ircoumjf6qw-ec-null-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"unsplash-ircoumjf6qw-ec-null-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"unsplash-ircoumjf6qw-ec-null-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"unsplash-ircoumjf6qw-ec-null-960x1440.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (338,41,'_wp_attached_file','2017/12/unsplash-ihvwww-sdtw-benjaminrobyn-jespersen.jpg');
INSERT INTO `wp_postmeta` VALUES (339,41,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2575;s:6:\"height\";i:3840;s:4:\"file\";s:56:\"2017/12/unsplash-ihvwww-sdtw-benjaminrobyn-jespersen.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"unsplash-ihvwww-sdtw-benjaminrobyn-jespersen-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"unsplash-ihvwww-sdtw-benjaminrobyn-jespersen-604x900.jpg\";s:5:\"width\";i:604;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"unsplash-ihvwww-sdtw-benjaminrobyn-jespersen-768x1145.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:57:\"unsplash-ihvwww-sdtw-benjaminrobyn-jespersen-966x1440.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (340,42,'_wp_attached_file','2017/12/unsplash-jd34amvhesc-guille-pozzi.jpg');
INSERT INTO `wp_postmeta` VALUES (341,42,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:2250;s:4:\"file\";s:45:\"2017/12/unsplash-jd34amvhesc-guille-pozzi.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"unsplash-jd34amvhesc-guille-pozzi-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"unsplash-jd34amvhesc-guille-pozzi-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"unsplash-jd34amvhesc-guille-pozzi-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"unsplash-jd34amvhesc-guille-pozzi-960x1440.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (344,14,'pagebuilder_2_AlternatingBlock_background_image','19');
INSERT INTO `wp_postmeta` VALUES (345,14,'_pagebuilder_2_AlternatingBlock_background_image','field_5a391208c7dcd');
INSERT INTO `wp_postmeta` VALUES (346,14,'pagebuilder_2_AlternatingBlock_background_position','center bottom');
INSERT INTO `wp_postmeta` VALUES (347,14,'_pagebuilder_2_AlternatingBlock_background_position','field_5a391212c7dce_field_5a0adddf7969f');
INSERT INTO `wp_postmeta` VALUES (348,14,'pagebuilder_2_AlternatingBlock_background','');
INSERT INTO `wp_postmeta` VALUES (349,14,'_pagebuilder_2_AlternatingBlock_background','field_5a39187e9a2dd_field_5a3911fcc7dcc');
INSERT INTO `wp_postmeta` VALUES (350,14,'pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor','<h2>A form. With custom checkboxes.</h2>\r\nThey should even be pretty accessible. Notice a flaw? Point it out using the form.');
INSERT INTO `wp_postmeta` VALUES (351,14,'_pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor','field_5a390e3407898');
INSERT INTO `wp_postmeta` VALUES (352,14,'pagebuilder_2_AlternatingBlock_content_main_wysiwyg','');
INSERT INTO `wp_postmeta` VALUES (353,14,'_pagebuilder_2_AlternatingBlock_content_main_wysiwyg','field_5a4b523b40d98_field_5a390e0707897');
INSERT INTO `wp_postmeta` VALUES (354,14,'pagebuilder_2_AlternatingBlock_content_secondary_type','shortcode');
INSERT INTO `wp_postmeta` VALUES (355,14,'_pagebuilder_2_AlternatingBlock_content_secondary_type','field_5a391b559a2e3');
INSERT INTO `wp_postmeta` VALUES (356,14,'pagebuilder_2_AlternatingBlock_content_secondary_shortcode','[libre-form id=\"30\"]');
INSERT INTO `wp_postmeta` VALUES (357,14,'_pagebuilder_2_AlternatingBlock_content_secondary_shortcode','field_5a391b719a2e4');
INSERT INTO `wp_postmeta` VALUES (358,14,'pagebuilder_2_AlternatingBlock_content_secondary','');
INSERT INTO `wp_postmeta` VALUES (359,14,'_pagebuilder_2_AlternatingBlock_content_secondary','field_5a391b329a2e2');
INSERT INTO `wp_postmeta` VALUES (360,14,'pagebuilder_2_AlternatingBlock_content','');
INSERT INTO `wp_postmeta` VALUES (361,14,'_pagebuilder_2_AlternatingBlock_content','field_5a391ab09a2e0');
INSERT INTO `wp_postmeta` VALUES (362,14,'pagebuilder_2_AlternatingBlock_options_inverse_order','1');
INSERT INTO `wp_postmeta` VALUES (363,14,'_pagebuilder_2_AlternatingBlock_options_inverse_order','field_5a3919e99a2df');
INSERT INTO `wp_postmeta` VALUES (364,14,'pagebuilder_2_AlternatingBlock_options_color_value','black');
INSERT INTO `wp_postmeta` VALUES (365,14,'_pagebuilder_2_AlternatingBlock_options_color_value','field_5a3920c6450d7');
INSERT INTO `wp_postmeta` VALUES (366,14,'pagebuilder_2_AlternatingBlock_options_color','');
INSERT INTO `wp_postmeta` VALUES (367,14,'_pagebuilder_2_AlternatingBlock_options_color','field_5a392114292ed_field_5a39209c450d6');
INSERT INTO `wp_postmeta` VALUES (368,14,'pagebuilder_2_AlternatingBlock_options','');
INSERT INTO `wp_postmeta` VALUES (369,14,'_pagebuilder_2_AlternatingBlock_options','field_5a3919d09a2de');
INSERT INTO `wp_postmeta` VALUES (370,14,'pagebuilder_2_AlternatingBlock','');
INSERT INTO `wp_postmeta` VALUES (371,14,'_pagebuilder_2_AlternatingBlock','field_5a391836e5608_field_5a3917dece03a');
INSERT INTO `wp_postmeta` VALUES (372,43,'pagebuilder_0_Hero_background_image','20');
INSERT INTO `wp_postmeta` VALUES (373,43,'_pagebuilder_0_Hero_background_image','field_5a391208c7dcd');
INSERT INTO `wp_postmeta` VALUES (374,43,'pagebuilder_0_Hero_background_position','center bottom');
INSERT INTO `wp_postmeta` VALUES (375,43,'_pagebuilder_0_Hero_background_position','field_5a391212c7dce_field_5a0adddf7969f');
INSERT INTO `wp_postmeta` VALUES (376,43,'pagebuilder_0_Hero_background','');
INSERT INTO `wp_postmeta` VALUES (377,43,'_pagebuilder_0_Hero_background','field_5a390d5db5415_field_5a3911fcc7dcc');
INSERT INTO `wp_postmeta` VALUES (378,43,'pagebuilder_0_Hero_wysiwyg_editor','<h1>Pagebuilder</h1>');
INSERT INTO `wp_postmeta` VALUES (379,43,'_pagebuilder_0_Hero_wysiwyg_editor','field_5a390e3407898');
INSERT INTO `wp_postmeta` VALUES (380,43,'pagebuilder_0_Hero_wysiwyg','');
INSERT INTO `wp_postmeta` VALUES (381,43,'_pagebuilder_0_Hero_wysiwyg','field_5a390e43b5416_field_5a390e0707897');
INSERT INTO `wp_postmeta` VALUES (382,43,'pagebuilder_0_Hero_button_text','With a button');
INSERT INTO `wp_postmeta` VALUES (383,43,'_pagebuilder_0_Hero_button_text','field_5a3a193b12b36');
INSERT INTO `wp_postmeta` VALUES (384,43,'pagebuilder_0_Hero_button_link','#youclicked');
INSERT INTO `wp_postmeta` VALUES (385,43,'_pagebuilder_0_Hero_button_link','field_5a3a192512b35');
INSERT INTO `wp_postmeta` VALUES (386,43,'pagebuilder_0_Hero_button_color_value','orange');
INSERT INTO `wp_postmeta` VALUES (387,43,'_pagebuilder_0_Hero_button_color_value','field_5a3920c6450d7');
INSERT INTO `wp_postmeta` VALUES (388,43,'pagebuilder_0_Hero_button_color','');
INSERT INTO `wp_postmeta` VALUES (389,43,'_pagebuilder_0_Hero_button_color','field_5a3a18f312b34_field_5a39209c450d6');
INSERT INTO `wp_postmeta` VALUES (390,43,'pagebuilder_0_Hero_button','');
INSERT INTO `wp_postmeta` VALUES (391,43,'_pagebuilder_0_Hero_button','field_5a3a1978c398f_field_5a3a18ca12b32');
INSERT INTO `wp_postmeta` VALUES (392,43,'pagebuilder_0_Hero','');
INSERT INTO `wp_postmeta` VALUES (393,43,'_pagebuilder_0_Hero','field_5a390e766e134_field_5a39107d3a0d8');
INSERT INTO `wp_postmeta` VALUES (394,43,'pagebuilder_1_AlternatingBlock_background_image','');
INSERT INTO `wp_postmeta` VALUES (395,43,'_pagebuilder_1_AlternatingBlock_background_image','field_5a391208c7dcd');
INSERT INTO `wp_postmeta` VALUES (396,43,'pagebuilder_1_AlternatingBlock_background_position','center top');
INSERT INTO `wp_postmeta` VALUES (397,43,'_pagebuilder_1_AlternatingBlock_background_position','field_5a391212c7dce_field_5a0adddf7969f');
INSERT INTO `wp_postmeta` VALUES (398,43,'pagebuilder_1_AlternatingBlock_background','');
INSERT INTO `wp_postmeta` VALUES (399,43,'_pagebuilder_1_AlternatingBlock_background','field_5a39187e9a2dd_field_5a3911fcc7dcc');
INSERT INTO `wp_postmeta` VALUES (400,43,'pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor','<h2>How are you?</h2>\r\nLorem ipsum dolor sit amet');
INSERT INTO `wp_postmeta` VALUES (401,43,'_pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor','field_5a390e3407898');
INSERT INTO `wp_postmeta` VALUES (402,43,'pagebuilder_1_AlternatingBlock_content_main_wysiwyg','');
INSERT INTO `wp_postmeta` VALUES (403,43,'_pagebuilder_1_AlternatingBlock_content_main_wysiwyg','field_5a4b523b40d98_field_5a390e0707897');
INSERT INTO `wp_postmeta` VALUES (404,43,'pagebuilder_1_AlternatingBlock_content_secondary_type','image');
INSERT INTO `wp_postmeta` VALUES (405,43,'_pagebuilder_1_AlternatingBlock_content_secondary_type','field_5a391b559a2e3');
INSERT INTO `wp_postmeta` VALUES (406,43,'pagebuilder_1_AlternatingBlock_content_secondary_image','24');
INSERT INTO `wp_postmeta` VALUES (407,43,'_pagebuilder_1_AlternatingBlock_content_secondary_image','field_5a391c429a2e6');
INSERT INTO `wp_postmeta` VALUES (408,43,'pagebuilder_1_AlternatingBlock_content_secondary','');
INSERT INTO `wp_postmeta` VALUES (409,43,'_pagebuilder_1_AlternatingBlock_content_secondary','field_5a391b329a2e2');
INSERT INTO `wp_postmeta` VALUES (410,43,'pagebuilder_1_AlternatingBlock_content','');
INSERT INTO `wp_postmeta` VALUES (411,43,'_pagebuilder_1_AlternatingBlock_content','field_5a391ab09a2e0');
INSERT INTO `wp_postmeta` VALUES (412,43,'pagebuilder_1_AlternatingBlock_options_inverse_order','0');
INSERT INTO `wp_postmeta` VALUES (413,43,'_pagebuilder_1_AlternatingBlock_options_inverse_order','field_5a3919e99a2df');
INSERT INTO `wp_postmeta` VALUES (414,43,'pagebuilder_1_AlternatingBlock_options_color_value','gray');
INSERT INTO `wp_postmeta` VALUES (415,43,'_pagebuilder_1_AlternatingBlock_options_color_value','field_5a3920c6450d7');
INSERT INTO `wp_postmeta` VALUES (416,43,'pagebuilder_1_AlternatingBlock_options_color','');
INSERT INTO `wp_postmeta` VALUES (417,43,'_pagebuilder_1_AlternatingBlock_options_color','field_5a392114292ed_field_5a39209c450d6');
INSERT INTO `wp_postmeta` VALUES (418,43,'pagebuilder_1_AlternatingBlock_options','');
INSERT INTO `wp_postmeta` VALUES (419,43,'_pagebuilder_1_AlternatingBlock_options','field_5a3919d09a2de');
INSERT INTO `wp_postmeta` VALUES (420,43,'pagebuilder_1_AlternatingBlock','');
INSERT INTO `wp_postmeta` VALUES (421,43,'_pagebuilder_1_AlternatingBlock','field_5a391836e5608_field_5a3917dece03a');
INSERT INTO `wp_postmeta` VALUES (422,43,'pagebuilder','a:3:{i:0;s:4:\"Hero\";i:1;s:16:\"AlternatingBlock\";i:2;s:16:\"AlternatingBlock\";}');
INSERT INTO `wp_postmeta` VALUES (423,43,'_pagebuilder','field_59b7c1088e871');
INSERT INTO `wp_postmeta` VALUES (424,43,'pagebuilder_2_AlternatingBlock_background_image','19');
INSERT INTO `wp_postmeta` VALUES (425,43,'_pagebuilder_2_AlternatingBlock_background_image','field_5a391208c7dcd');
INSERT INTO `wp_postmeta` VALUES (426,43,'pagebuilder_2_AlternatingBlock_background_position','center bottom');
INSERT INTO `wp_postmeta` VALUES (427,43,'_pagebuilder_2_AlternatingBlock_background_position','field_5a391212c7dce_field_5a0adddf7969f');
INSERT INTO `wp_postmeta` VALUES (428,43,'pagebuilder_2_AlternatingBlock_background','');
INSERT INTO `wp_postmeta` VALUES (429,43,'_pagebuilder_2_AlternatingBlock_background','field_5a39187e9a2dd_field_5a3911fcc7dcc');
INSERT INTO `wp_postmeta` VALUES (430,43,'pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor','<h2>A form. With custom checkboxes.</h2>\r\nThey should even be pretty accessible. Notice a flaw? Point it out using the form.');
INSERT INTO `wp_postmeta` VALUES (431,43,'_pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor','field_5a390e3407898');
INSERT INTO `wp_postmeta` VALUES (432,43,'pagebuilder_2_AlternatingBlock_content_main_wysiwyg','');
INSERT INTO `wp_postmeta` VALUES (433,43,'_pagebuilder_2_AlternatingBlock_content_main_wysiwyg','field_5a4b523b40d98_field_5a390e0707897');
INSERT INTO `wp_postmeta` VALUES (434,43,'pagebuilder_2_AlternatingBlock_content_secondary_type','shortcode');
INSERT INTO `wp_postmeta` VALUES (435,43,'_pagebuilder_2_AlternatingBlock_content_secondary_type','field_5a391b559a2e3');
INSERT INTO `wp_postmeta` VALUES (436,43,'pagebuilder_2_AlternatingBlock_content_secondary_shortcode','[libre-form id=\"30\"]');
INSERT INTO `wp_postmeta` VALUES (437,43,'_pagebuilder_2_AlternatingBlock_content_secondary_shortcode','field_5a391b719a2e4');
INSERT INTO `wp_postmeta` VALUES (438,43,'pagebuilder_2_AlternatingBlock_content_secondary','');
INSERT INTO `wp_postmeta` VALUES (439,43,'_pagebuilder_2_AlternatingBlock_content_secondary','field_5a391b329a2e2');
INSERT INTO `wp_postmeta` VALUES (440,43,'pagebuilder_2_AlternatingBlock_content','');
INSERT INTO `wp_postmeta` VALUES (441,43,'_pagebuilder_2_AlternatingBlock_content','field_5a391ab09a2e0');
INSERT INTO `wp_postmeta` VALUES (442,43,'pagebuilder_2_AlternatingBlock_options_inverse_order','1');
INSERT INTO `wp_postmeta` VALUES (443,43,'_pagebuilder_2_AlternatingBlock_options_inverse_order','field_5a3919e99a2df');
INSERT INTO `wp_postmeta` VALUES (444,43,'pagebuilder_2_AlternatingBlock_options_color_value','black');
INSERT INTO `wp_postmeta` VALUES (445,43,'_pagebuilder_2_AlternatingBlock_options_color_value','field_5a3920c6450d7');
INSERT INTO `wp_postmeta` VALUES (446,43,'pagebuilder_2_AlternatingBlock_options_color','');
INSERT INTO `wp_postmeta` VALUES (447,43,'_pagebuilder_2_AlternatingBlock_options_color','field_5a392114292ed_field_5a39209c450d6');
INSERT INTO `wp_postmeta` VALUES (448,43,'pagebuilder_2_AlternatingBlock_options','');
INSERT INTO `wp_postmeta` VALUES (449,43,'_pagebuilder_2_AlternatingBlock_options','field_5a3919d09a2de');
INSERT INTO `wp_postmeta` VALUES (450,43,'pagebuilder_2_AlternatingBlock','');
INSERT INTO `wp_postmeta` VALUES (451,43,'_pagebuilder_2_AlternatingBlock','field_5a391836e5608_field_5a3917dece03a');
INSERT INTO `wp_postmeta` VALUES (454,14,'pagebuilder_1_AlternatingBlock_content_main_vertical_alignment','center');
INSERT INTO `wp_postmeta` VALUES (455,14,'_pagebuilder_1_AlternatingBlock_content_main_vertical_alignment','field_5a4b525540d99_field_5a4b50e59d9c7');
INSERT INTO `wp_postmeta` VALUES (456,14,'pagebuilder_1_AlternatingBlock_content_main','');
INSERT INTO `wp_postmeta` VALUES (457,14,'_pagebuilder_1_AlternatingBlock_content_main','field_5a4b523240d97');
INSERT INTO `wp_postmeta` VALUES (458,14,'pagebuilder_1_AlternatingBlock_content_secondary_vertical_alignment','center');
INSERT INTO `wp_postmeta` VALUES (459,14,'_pagebuilder_1_AlternatingBlock_content_secondary_vertical_alignment','field_5a4b514c769d8_field_5a4b50e59d9c7');
INSERT INTO `wp_postmeta` VALUES (460,14,'pagebuilder_2_AlternatingBlock_content_main_vertical_alignment','center');
INSERT INTO `wp_postmeta` VALUES (461,14,'_pagebuilder_2_AlternatingBlock_content_main_vertical_alignment','field_5a4b525540d99_field_5a4b50e59d9c7');
INSERT INTO `wp_postmeta` VALUES (462,14,'pagebuilder_2_AlternatingBlock_content_main','');
INSERT INTO `wp_postmeta` VALUES (463,14,'_pagebuilder_2_AlternatingBlock_content_main','field_5a4b523240d97');
INSERT INTO `wp_postmeta` VALUES (464,14,'pagebuilder_2_AlternatingBlock_content_secondary_vertical_alignment','center');
INSERT INTO `wp_postmeta` VALUES (465,14,'_pagebuilder_2_AlternatingBlock_content_secondary_vertical_alignment','field_5a4b514c769d8_field_5a4b50e59d9c7');
INSERT INTO `wp_postmeta` VALUES (466,43,'pagebuilder_1_AlternatingBlock_content_main_vertical_alignment','center');
INSERT INTO `wp_postmeta` VALUES (467,43,'_pagebuilder_1_AlternatingBlock_content_main_vertical_alignment','field_5a4b525540d99_field_5a4b50e59d9c7');
INSERT INTO `wp_postmeta` VALUES (468,43,'pagebuilder_1_AlternatingBlock_content_main','');
INSERT INTO `wp_postmeta` VALUES (469,43,'_pagebuilder_1_AlternatingBlock_content_main','field_5a4b523240d97');
INSERT INTO `wp_postmeta` VALUES (470,43,'pagebuilder_1_AlternatingBlock_content_secondary_vertical_alignment','center');
INSERT INTO `wp_postmeta` VALUES (471,43,'_pagebuilder_1_AlternatingBlock_content_secondary_vertical_alignment','field_5a4b514c769d8_field_5a4b50e59d9c7');
INSERT INTO `wp_postmeta` VALUES (472,43,'pagebuilder_2_AlternatingBlock_content_main_vertical_alignment','center');
INSERT INTO `wp_postmeta` VALUES (473,43,'_pagebuilder_2_AlternatingBlock_content_main_vertical_alignment','field_5a4b525540d99_field_5a4b50e59d9c7');
INSERT INTO `wp_postmeta` VALUES (474,43,'pagebuilder_2_AlternatingBlock_content_main','');
INSERT INTO `wp_postmeta` VALUES (475,43,'_pagebuilder_2_AlternatingBlock_content_main','field_5a4b523240d97');
INSERT INTO `wp_postmeta` VALUES (476,43,'pagebuilder_2_AlternatingBlock_content_secondary_vertical_alignment','center');
INSERT INTO `wp_postmeta` VALUES (477,43,'_pagebuilder_2_AlternatingBlock_content_secondary_vertical_alignment','field_5a4b514c769d8_field_5a4b50e59d9c7');
INSERT INTO `wp_postmeta` VALUES (478,14,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (479,14,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (480,44,'fname','First');
INSERT INTO `wp_postmeta` VALUES (481,44,'lname','Last');
INSERT INTO `wp_postmeta` VALUES (482,44,'email','notrelevant@hello.com');
INSERT INTO `wp_postmeta` VALUES (483,44,'subject','1');
INSERT INTO `wp_postmeta` VALUES (484,44,'check','[&quot;1&quot;]');
INSERT INTO `wp_postmeta` VALUES (485,44,'radio','[&quot;2&quot;]');
INSERT INTO `wp_postmeta` VALUES (486,44,'referrer','https://wordpress.local/pagebuilder/');
INSERT INTO `wp_postmeta` VALUES (487,44,'_referrer_id','14');
INSERT INTO `wp_postmeta` VALUES (488,44,'_form_id','30');
INSERT INTO `wp_postmeta` VALUES (489,44,'lang','fi');
INSERT INTO `wp_postmeta` VALUES (490,44,'_wplf_email_copy_to','vagrant@wordpress.vincit.io');
INSERT INTO `wp_postmeta` VALUES (496,47,'fname','First');
INSERT INTO `wp_postmeta` VALUES (497,47,'lname','Last');
INSERT INTO `wp_postmeta` VALUES (498,47,'subject','1');
INSERT INTO `wp_postmeta` VALUES (499,47,'message','');
INSERT INTO `wp_postmeta` VALUES (500,47,'check','[&quot;1&quot;,&quot;2&quot;]');
INSERT INTO `wp_postmeta` VALUES (501,47,'radio','[&quot;2&quot;]');
INSERT INTO `wp_postmeta` VALUES (502,47,'referrer','https://wordpress.local/pagebuilder/');
INSERT INTO `wp_postmeta` VALUES (503,47,'_referrer_id','14');
INSERT INTO `wp_postmeta` VALUES (504,47,'_form_id','30');
INSERT INTO `wp_postmeta` VALUES (505,47,'lang','fi');
INSERT INTO `wp_postmeta` VALUES (506,47,'_wplf_email_copy_to','vagrant@wordpress.vincit.io');
INSERT INTO `wp_postmeta` VALUES (507,8,'_oembed_92c50f9b28c4eb2ef2c473395eb5776d','{{unknown}}');
INSERT INTO `wp_postmeta` VALUES (514,8,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (515,8,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (525,58,'_wp_attached_file','2018/01/wp-demo.png');
INSERT INTO `wp_postmeta` VALUES (526,58,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:467;s:6:\"height\";i:104;s:4:\"file\";s:19:\"2018/01/wp-demo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"wp-demo-450x104.png\";s:5:\"width\";i:450;s:6:\"height\";i:104;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (527,59,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (528,59,'_wp_trash_meta_time','1514897803');
INSERT INTO `wp_postmeta` VALUES (530,60,'fname','First');
INSERT INTO `wp_postmeta` VALUES (531,60,'lname','Last');
INSERT INTO `wp_postmeta` VALUES (532,60,'subject','1');
INSERT INTO `wp_postmeta` VALUES (533,60,'message','');
INSERT INTO `wp_postmeta` VALUES (534,60,'referrer','https://wordpress.local/pagebuilder/');
INSERT INTO `wp_postmeta` VALUES (535,60,'_referrer_id','14');
INSERT INTO `wp_postmeta` VALUES (536,60,'_form_id','30');
INSERT INTO `wp_postmeta` VALUES (537,60,'_wplf_email_copy_to','vagrant@wordpress.vincit.io');
INSERT INTO `wp_postmeta` VALUES (538,61,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (541,61,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (550,65,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (551,65,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (552,65,'_menu_item_object_id','61');
INSERT INTO `wp_postmeta` VALUES (553,65,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (554,65,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (555,65,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (556,65,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (557,65,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (559,66,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (562,66,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (565,66,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (566,66,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (567,68,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (570,68,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (573,68,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (574,68,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (575,70,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (578,70,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (585,70,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (586,70,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (587,73,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (590,73,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (593,73,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (594,73,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (595,75,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (596,75,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (597,75,'_menu_item_object_id','66');
INSERT INTO `wp_postmeta` VALUES (598,75,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (599,75,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (600,75,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (601,75,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (602,75,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (604,76,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (605,76,'_menu_item_menu_item_parent','75');
INSERT INTO `wp_postmeta` VALUES (606,76,'_menu_item_object_id','70');
INSERT INTO `wp_postmeta` VALUES (607,76,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (608,76,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (609,76,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (610,76,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (611,76,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (613,77,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (614,77,'_menu_item_menu_item_parent','75');
INSERT INTO `wp_postmeta` VALUES (615,77,'_menu_item_object_id','68');
INSERT INTO `wp_postmeta` VALUES (616,77,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (617,77,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (618,77,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (619,77,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (620,77,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (622,78,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (623,78,'_menu_item_menu_item_parent','77');
INSERT INTO `wp_postmeta` VALUES (624,78,'_menu_item_object_id','73');
INSERT INTO `wp_postmeta` VALUES (625,78,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (626,78,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (627,78,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (628,78,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (629,78,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (631,79,'fname','First');
INSERT INTO `wp_postmeta` VALUES (632,79,'lname','Last');
INSERT INTO `wp_postmeta` VALUES (633,79,'subject','1');
INSERT INTO `wp_postmeta` VALUES (634,79,'message','');
INSERT INTO `wp_postmeta` VALUES (635,79,'check','[&quot;2&quot;]');
INSERT INTO `wp_postmeta` VALUES (636,79,'radio','[&quot;2&quot;]');
INSERT INTO `wp_postmeta` VALUES (637,79,'referrer','https://wordpress.local/pagebuilder/');
INSERT INTO `wp_postmeta` VALUES (638,79,'_referrer_id','14');
INSERT INTO `wp_postmeta` VALUES (639,79,'_form_id','30');
INSERT INTO `wp_postmeta` VALUES (640,79,'_wplf_email_copy_to','vagrant@wordpress.vincit.io');
INSERT INTO `wp_postmeta` VALUES (641,6,'_thumbnail_id','21');
INSERT INTO `wp_postmeta` VALUES (647,6,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (651,6,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (652,6,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (653,83,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (656,83,'_thumbnail_id','31');
INSERT INTO `wp_postmeta` VALUES (662,85,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (670,83,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (671,83,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (672,87,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (678,87,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (679,87,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (681,89,'_wp_attached_file','2018/01/unsplash-ymoqsmiizcy-adrian-null.jpg');
INSERT INTO `wp_postmeta` VALUES (682,89,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:4096;s:6:\"height\";i:3277;s:4:\"file\";s:44:\"2018/01/unsplash-ymoqsmiizcy-adrian-null.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"unsplash-ymoqsmiizcy-adrian-null-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"unsplash-ymoqsmiizcy-adrian-null-1125x900.jpg\";s:5:\"width\";i:1125;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"unsplash-ymoqsmiizcy-adrian-null-768x614.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"unsplash-ymoqsmiizcy-adrian-null-1800x1440.jpg\";s:5:\"width\";i:1800;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (683,90,'_wp_attached_file','2018/01/unsplash-5mkdpug__0y-van-mendoza.jpg');
INSERT INTO `wp_postmeta` VALUES (684,90,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:4096;s:6:\"height\";i:2727;s:4:\"file\";s:44:\"2018/01/unsplash-5mkdpug__0y-van-mendoza.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"unsplash-5mkdpug__0y-van-mendoza-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"unsplash-5mkdpug__0y-van-mendoza-1352x900.jpg\";s:5:\"width\";i:1352;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"unsplash-5mkdpug__0y-van-mendoza-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"unsplash-5mkdpug__0y-van-mendoza-2163x1440.jpg\";s:5:\"width\";i:2163;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (685,91,'_wp_attached_file','2018/01/unsplash-flxcobg6n1e-rodan-can.jpg');
INSERT INTO `wp_postmeta` VALUES (686,91,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:4096;s:6:\"height\";i:2753;s:4:\"file\";s:42:\"2018/01/unsplash-flxcobg6n1e-rodan-can.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"unsplash-flxcobg6n1e-rodan-can-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"unsplash-flxcobg6n1e-rodan-can-1339x900.jpg\";s:5:\"width\";i:1339;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"unsplash-flxcobg6n1e-rodan-can-768x516.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:516;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"unsplash-flxcobg6n1e-rodan-can-2142x1440.jpg\";s:5:\"width\";i:2142;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (687,92,'_wp_attached_file','2018/01/unsplash-fxxxb3urdk4-florian-schneider.jpg');
INSERT INTO `wp_postmeta` VALUES (688,92,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:4096;s:6:\"height\";i:2731;s:4:\"file\";s:50:\"2018/01/unsplash-fxxxb3urdk4-florian-schneider.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"unsplash-fxxxb3urdk4-florian-schneider-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"unsplash-fxxxb3urdk4-florian-schneider-1350x900.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"unsplash-fxxxb3urdk4-florian-schneider-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:52:\"unsplash-fxxxb3urdk4-florian-schneider-2160x1440.jpg\";s:5:\"width\";i:2160;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (689,93,'_wp_attached_file','2018/01/unsplash-ezsd1s9-oso-krio-bam.jpg');
INSERT INTO `wp_postmeta` VALUES (690,93,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:3648;s:6:\"height\";i:2432;s:4:\"file\";s:41:\"2018/01/unsplash-ezsd1s9-oso-krio-bam.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"unsplash-ezsd1s9-oso-krio-bam-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"unsplash-ezsd1s9-oso-krio-bam-1350x900.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"unsplash-ezsd1s9-oso-krio-bam-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"unsplash-ezsd1s9-oso-krio-bam-2160x1440.jpg\";s:5:\"width\";i:2160;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (691,85,'_thumbnail_id','89');
INSERT INTO `wp_postmeta` VALUES (695,85,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (696,85,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (697,95,'_wp_attached_file','2018/01/unsplash-gu901rpv-xu-anna-jakobs.jpg');
INSERT INTO `wp_postmeta` VALUES (698,95,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:4096;s:6:\"height\";i:2731;s:4:\"file\";s:44:\"2018/01/unsplash-gu901rpv-xu-anna-jakobs.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"unsplash-gu901rpv-xu-anna-jakobs-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"unsplash-gu901rpv-xu-anna-jakobs-1350x900.jpg\";s:5:\"width\";i:1350;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"unsplash-gu901rpv-xu-anna-jakobs-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"unsplash-gu901rpv-xu-anna-jakobs-2160x1440.jpg\";s:5:\"width\";i:2160;s:6:\"height\";i:1440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (699,96,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (702,96,'_thumbnail_id','20');
INSERT INTO `wp_postmeta` VALUES (709,96,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (710,96,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (715,61,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (716,61,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (717,99,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (723,99,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (724,99,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (725,101,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (730,101,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (731,101,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (732,103,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (737,103,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (738,103,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (739,105,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (744,105,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (745,105,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (746,107,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (751,107,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (752,107,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (753,109,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (758,109,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (759,109,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (760,111,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (764,111,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (765,111,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (774,113,'inline_featured_image','0');
INSERT INTO `wp_postmeta` VALUES (776,30,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (777,30,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (778,30,'_wplf_email_copy_to','christian.nikkanen+demospam@vincit.fi');
INSERT INTO `wp_postmeta` VALUES (779,10,'_thumbnail_id','31');
INSERT INTO `wp_postmeta` VALUES (780,10,'_relevanssi_pin','');
INSERT INTO `wp_postmeta` VALUES (781,10,'_relevanssi_unpin','');
INSERT INTO `wp_postmeta` VALUES (782,10,'inline_featured_image','0');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2017-12-27 14:13:03','2017-12-27 12:13:03','<p>Hienoa, että valitsit palvelumme WP-palvelu.fi:n!</p>\n<p>Voit aloittaa <a href=\"/wp-login.php\">kirjautumalla sisälle</a>.</p>\n<p>Saat apua kysymyksiin lukemalla: <a href=\"https://wp-palvelu.fi/ohjeet/\">wp-palvelu.fi/ohjeet/</a></p>\n<p><img class=\"wp-image-6 alignnone\" src=\"https://wp-palvelu.fi/wp-palvelu-logo-blue.png\" alt=\"wp-palvelu-logo\" width=\"237\" height=\"50\" /></p>','Hello world!','','trash','open','open','','hello-world__trashed','','','2017-12-27 14:20:17','2017-12-27 12:20:17','',0,'https://wordpress.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2017-12-27 14:13:03','2017-12-27 12:13:03','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"https://wordpress.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','trash','closed','open','','sample-page__trashed','','','2017-12-27 14:20:17','2017-12-27 12:20:17','',0,'https://wordpress.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,2,'2017-12-27 16:29:27','2017-12-27 14:29:27','Beef ribs filet mignon culpa non biltong chicken kevin. Venison fatback strip steak incididunt, officia velit pastrami jowl brisket rump cillum proident consectetur. Swine ad sed, prosciutto culpa enim porchetta beef ribs shank cupidatat boudin tri-tip. Capicola veniam sunt adipisicing. Prosciutto chuck enim, beef ribs anim fatback aliquip drumstick mollit sirloin fugiat brisket. Est meatball incididunt bacon occaecat tempor adipisicing enim tongue. Dolore nulla consequat exercitation venison swine.\r\n\r\nCulpa turducken mollit, sint et adipisicing in est sirloin labore laborum salami deserunt. Velit meatloaf dolor in kevin cillum jowl pastrami buffalo ground round filet mignon exercitation incididunt tenderloin. Turducken leberkas proident doner. Consequat veniam bresaola short ribs corned beef ut velit short loin do commodo porchetta t-bone duis. Salami shankle sint elit boudin. Quis et voluptate, ullamco cillum shoulder mollit ut. Cupidatat dolor pariatur, mollit eiusmod meatloaf officia short ribs excepteur ribeye.\r\n\r\n[caption id=\"attachment_26\" align=\"alignnone\" width=\"2048\"]<img class=\"size-full wp-image-26\" src=\"https://wordpress.local/wp-content/uploads/2017/12/unsplash-n5dqognr6mo-osman-rana.jpg\" alt=\"\" width=\"2048\" height=\"1365\" /> A caption. Not very meaty.[/caption]\r\n\r\nCow ham hock swine sirloin landjaeger short loin filet mignon ex est enim dolore aliquip sunt bresaola. Minim quis corned beef cillum hamburger pork belly nisi porchetta pig bresaola prosciutto shank laborum. Dolore consequat tempor leberkas venison reprehenderit t-bone pork chop minim culpa, nostrud enim. Ut jowl pancetta nostrud laboris ullamco.','Filet mignon culpa non biltong','','publish','closed','closed','','hello-world','','','2018-01-03 16:22:08','2018-01-03 14:22:08','',0,'https://wordpress.local/?p=6',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,2,'2017-12-27 16:31:03','2017-12-27 14:31:03','This is a WordPress demo project.\r\n\r\nProject structure: <a href=\"https://github.com/Seravo/wordpress\" target=\"_blank\" rel=\"noopener\">Seravo/wordpress</a> &amp; <a href=\"https://github.com/Vincit/wordpress\" target=\"_blank\" rel=\"noopener\">Vincit/wordpress</a>\r\nTheme: <a href=\"https://github.com/Vincit/wordpress-theme-base\" target=\"_blank\" rel=\"noopener\">Vincit/wordpress-theme-base</a>\r\n\r\nYou can find the project repository on GitHub: <a href=\"https://github.com/Vincit/wordpress-demo\">https://github.com/Vincit/wordpress-demo</a>','Home','','publish','closed','closed','','home','','','2018-01-02 12:58:33','2018-01-02 10:58:33','',0,'https://wordpress.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,2,'2017-12-27 16:31:13','2017-12-27 14:31:13','','Blog','','publish','closed','closed','','blog','','','2018-01-09 17:41:43','2018-01-09 15:41:43','',0,'https://wordpress.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,2,'2017-12-27 16:31:49','2017-12-27 14:31:49',' ','','','publish','closed','closed','','12','','','2018-01-03 10:39:55','2018-01-03 08:39:55','',0,'https://wordpress.local/?p=12',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (13,2,'2017-12-27 16:31:49','2017-12-27 14:31:49',' ','','','publish','closed','closed','','13','','','2018-01-03 10:39:55','2018-01-03 08:39:55','',0,'https://wordpress.local/?p=13',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (14,2,'2017-12-27 16:34:08','2017-12-27 14:34:08','','Pagebuilder','','publish','closed','closed','','pagebuilder','','','2018-01-02 12:40:19','2018-01-02 10:40:19','',0,'https://wordpress.local/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,2,'2017-12-27 16:34:16','2017-12-27 14:34:16',' ','','','publish','closed','closed','','16','','','2018-01-03 10:39:55','2018-01-03 08:39:55','',0,'https://wordpress.local/?p=16',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (19,2,'2017-12-28 11:54:15','2017-12-28 09:54:15','','unsplash-GU901RPv-xU-Anna-Jakobs','','inherit','closed','closed','','unsplash-gu901rpv-xu-anna-jakobs','','','2017-12-28 11:54:15','2017-12-28 09:54:15','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-gu901rpv-xu-anna-jakobs.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (20,2,'2017-12-28 11:54:32','2017-12-28 09:54:32','','unsplash-Zwl3zlN4qtw-Natalie-Toombs','','inherit','closed','closed','','unsplash-zwl3zln4qtw-natalie-toombs','','','2017-12-28 11:54:32','2017-12-28 09:54:32','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-zwl3zln4qtw-natalie-toombs.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (21,2,'2017-12-28 11:54:59','2017-12-28 09:54:59','','unsplash-NEwuQN0yUL4-Justin-Kauffman','','inherit','closed','closed','','unsplash-newuqn0yul4-justin-kauffman','','','2017-12-28 11:54:59','2017-12-28 09:54:59','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-newuqn0yul4-justin-kauffman.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (22,2,'2017-12-28 11:55:06','2017-12-28 09:55:06','','unsplash-iiJGeLWb6d4-Thomas-Millot','','inherit','closed','closed','','unsplash-iijgelwb6d4-thomas-millot','','','2017-12-28 11:55:06','2017-12-28 09:55:06','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-iijgelwb6d4-thomas-millot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (23,2,'2017-12-28 11:55:15','2017-12-28 09:55:15','','unsplash-MVxqPA0V8_o-Florian-Rieder','','inherit','closed','closed','','unsplash-mvxqpa0v8_o-florian-rieder','','','2017-12-28 11:55:15','2017-12-28 09:55:15','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-mvxqpa0v8_o-florian-rieder.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (24,2,'2017-12-28 11:55:19','2017-12-28 09:55:19','','unsplash-SYOo4TzSJZk-maja-null','','inherit','closed','closed','','unsplash-syoo4tzsjzk-maja-null','','','2017-12-28 11:55:19','2017-12-28 09:55:19','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-syoo4tzsjzk-maja-null.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (25,2,'2017-12-28 11:55:27','2017-12-28 09:55:27','','unsplash-oCd0woIR6Ww-yatharth-vibhakar','','inherit','closed','closed','','unsplash-ocd0woir6ww-yatharth-vibhakar','','','2017-12-28 11:55:27','2017-12-28 09:55:27','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-ocd0woir6ww-yatharth-vibhakar.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (26,2,'2017-12-28 11:55:46','2017-12-28 09:55:46','','unsplash-N5dqOGNr6Mo-Osman-Rana','A caption. Not very meaty.','inherit','closed','closed','','unsplash-n5dqognr6mo-osman-rana','','','2018-01-03 16:22:04','2018-01-03 14:22:04','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-n5dqognr6mo-osman-rana.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (29,2,'2017-12-29 16:11:23','2017-12-29 14:11:23','','unsplash-WxUInXYgAAk-Justin-Kauffman','','inherit','closed','closed','','unsplash-wxuinxygaak-justin-kauffman','','','2017-12-29 16:11:23','2017-12-29 14:11:23','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-wxuinxygaak-justin-kauffman.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (30,2,'2017-12-29 16:13:33','2017-12-29 14:13:33','    <div class=\"fc-row left\">\r\n      <label for=\"input-fname\" class=\"fc-1-2\">\r\n        <strong>First name</strong>\r\n        <input type=\"text\" name=\"fname\" id=\"input-fname\" value=\"First\">\r\n      </label>\r\n\r\n      <label for=\"input-lname\" class=\"fc-1-2\">\r\n        <strong>Last name</strong>\r\n        <input type=\"text\" name=\"lname\" id=\"input-lname\" value=\"Last\">\r\n      </label>\r\n    </div>\r\n\r\n    <div class=\"fc-row left\">\r\n      <label for=\"input-subject\">\r\n        <strong>Subject</strong>\r\n        <select name=\"subject\" id=\"input-subject\">\r\n          <option value=\"1\">Option</option>\r\n          <option value=\"2\">Option 2</option>\r\n        </select>\r\n      </label>\r\n    </div>\r\n\r\n    <div class=\"fc-row left\">\r\n      <label for=\"textarea-message\" class=\"fc-1-1\">\r\n        <strong>Message</strong>\r\n        <textarea name=\"message\" id=\"textarea-message\"></textarea>\r\n      </label>\r\n    </div>\r\n\r\n\r\n    <div class=\"fc-row checkbox-row\">\r\n      <label for=\"check-1\">\r\n        <input type=\"checkbox\" name=\"check[]\" value=\"1\" id=\"check-1\">\r\n        First\r\n      </label>\r\n\r\n      <label for=\"check-2\">\r\n        <input type=\"checkbox\" name=\"check[]\" value=\"2\" id=\"check-2\">\r\n        Second\r\n      </label>\r\n\r\n      <label for=\"check-3\">\r\n        <input type=\"checkbox\" name=\"check[]\" value=\"3\" id=\"check-3\">\r\n        Third\r\n      </label>\r\n    </div>\r\n\r\n    <div class=\"fc-row radio-row\">\r\n      <label for=\"radio-1\" class=\"\">\r\n        <input type=\"radio\" name=\"radio[]\" value=\"1\" id=\"radio-1\">\r\n        First\r\n      </label>\r\n\r\n      <label for=\"radio-2\" class=\"\">\r\n        <input type=\"radio\" name=\"radio[]\" value=\"2\" id=\"radio-2\">\r\n        Second\r\n      </label>\r\n\r\n      <label for=\"radio-3\" class=\"\">\r\n        <input type=\"radio\" name=\"radio[]\" value=\"3\" id=\"radio-3\">\r\n        Third\r\n      </label>\r\n    </div>\r\n\r\n    <div class=\"fc-row\">\r\n      <input type=\"submit\" value=\"Send\" class=\"button\">\r\n    </div>\r\n','Sample form','','publish','closed','closed','','sample-form','','','2018-01-09 17:35:59','2018-01-09 15:35:59','',0,'https://wordpress.local/?post_type=wplf-form&#038;p=30',0,'wplf-form','',0);
INSERT INTO `wp_posts` VALUES (31,2,'2017-12-29 16:11:49','2017-12-29 14:11:49','','unsplash-OgcJIKRnRC8-Ian-Keefe','','inherit','closed','closed','','unsplash-ogcjikrnrc8-ian-keefe','','','2017-12-29 16:11:49','2017-12-29 14:11:49','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-ogcjikrnrc8-ian-keefe.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (32,2,'2017-12-29 16:12:07','2017-12-29 14:12:07','','unsplash-4dxP2SVR4C0-David-Moum','','inherit','closed','closed','','unsplash-4dxp2svr4c0-david-moum','','','2017-12-29 16:12:07','2017-12-29 14:12:07','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-4dxp2svr4c0-david-moum.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (33,2,'2017-12-29 16:12:24','2017-12-29 14:12:24','','unsplash-M8YNBhRlWw0-Simone-Hutsch','','inherit','closed','closed','','unsplash-m8ynbhrlww0-simone-hutsch','','','2017-12-29 16:12:24','2017-12-29 14:12:24','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-m8ynbhrlww0-simone-hutsch.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (34,2,'2017-12-29 16:12:43','2017-12-29 14:12:43','','unsplash-MaZD8-KYB8E-Jordan-Bannerman','','inherit','closed','closed','','unsplash-mazd8-kyb8e-jordan-bannerman','','','2017-12-29 16:12:43','2017-12-29 14:12:43','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-mazd8-kyb8e-jordan-bannerman.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (35,2,'2017-12-29 16:13:13','2017-12-29 14:13:13','','unsplash-N4UCMu5SZuA-Joshua-Rawson-Harris','','inherit','closed','closed','','unsplash-n4ucmu5szua-joshua-rawson-harris','','','2017-12-29 16:13:13','2017-12-29 14:13:13','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-n4ucmu5szua-joshua-rawson-harris.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (37,2,'2017-12-29 16:13:44','2017-12-29 14:13:44','','unsplash-N_rYF2KcKtE-Filip-Mroz','','inherit','closed','closed','','unsplash-n_ryf2kckte-filip-mroz','','','2017-12-29 16:13:44','2017-12-29 14:13:44','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-n_ryf2kckte-filip-mroz.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (38,2,'2017-12-29 16:14:30','2017-12-29 14:14:30','','unsplash-9NS86KxBTAA-Scott-Jackson','','inherit','closed','closed','','unsplash-9ns86kxbtaa-scott-jackson','','','2017-12-29 16:14:30','2017-12-29 14:14:30','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-9ns86kxbtaa-scott-jackson.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (39,2,'2017-12-29 16:14:57','2017-12-29 14:14:57','','unsplash-evOO_13chOk-Benjaminrobyn-Jespersen','','inherit','closed','closed','','unsplash-evoo_13chok-benjaminrobyn-jespersen','','','2017-12-29 16:14:57','2017-12-29 14:14:57','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-evoo_13chok-benjaminrobyn-jespersen.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (40,2,'2017-12-29 16:15:02','2017-12-29 14:15:02','','unsplash-ircOuMJF6Qw-EC-null','','inherit','closed','closed','','unsplash-ircoumjf6qw-ec-null','','','2017-12-29 16:15:02','2017-12-29 14:15:02','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-ircoumjf6qw-ec-null.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (41,2,'2017-12-29 16:15:28','2017-12-29 14:15:28','','unsplash-ihvWWW-Sdtw-Benjaminrobyn-Jespersen','','inherit','closed','closed','','unsplash-ihvwww-sdtw-benjaminrobyn-jespersen','','','2017-12-29 16:15:28','2017-12-29 14:15:28','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-ihvwww-sdtw-benjaminrobyn-jespersen.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (42,2,'2017-12-29 16:15:32','2017-12-29 14:15:32','','unsplash-jD34AmVhESc-guille-pozzi','','inherit','closed','closed','','unsplash-jd34amvhesc-guille-pozzi','','','2017-12-29 16:15:32','2017-12-29 14:15:32','',14,'https://wordpress.local/wp-content/uploads/2017/12/unsplash-jd34amvhesc-guille-pozzi.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (44,2,'2018-01-02 12:41:27','2018-01-02 10:41:27','','<notrelevant@hello.com>','','publish','closed','closed','','44','','','2018-01-02 12:41:27','2018-01-02 10:41:27','',0,'https://wordpress.local/wplf-submission/44/',0,'wplf-submission','',0);
INSERT INTO `wp_posts` VALUES (47,0,'2018-01-02 12:49:38','2018-01-02 10:49:38','','','','publish','closed','closed','','47','','','2018-01-02 12:49:38','2018-01-02 10:49:38','',0,'https://wordpress.local/wplf-submission/47/',0,'wplf-submission','',0);
INSERT INTO `wp_posts` VALUES (58,2,'2018-01-02 14:56:33','2018-01-02 12:56:33','','wp-demo','','inherit','closed','closed','','wp-demo','','','2018-01-02 14:56:33','2018-01-02 12:56:33','',0,'https://wordpress.local/wp-content/uploads/2018/01/wp-demo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (59,2,'2018-01-02 14:56:43','2018-01-02 12:56:43','{\n    \"wordpress-theme-base::custom_logo\": {\n        \"value\": 58,\n        \"type\": \"theme_mod\",\n        \"user_id\": 2,\n        \"date_modified_gmt\": \"2018-01-02 12:56:43\"\n    }\n}','','','trash','closed','closed','','0760f5e8-5b5a-41b8-b0a7-ca1b174ef030','','','2018-01-02 14:56:43','2018-01-02 12:56:43','',0,'https://wordpress.local/0760f5e8-5b5a-41b8-b0a7-ca1b174ef030/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (60,0,'2018-01-02 16:30:37','2018-01-02 14:30:37','','','','publish','closed','closed','','60','','','2018-01-02 16:30:37','2018-01-02 14:30:37','',0,'https://wordpress.local/wplf-submission/60/',0,'wplf-submission','',0);
INSERT INTO `wp_posts` VALUES (61,2,'2018-01-03 10:34:10','2018-01-03 08:34:10','<h2>Headings</h2>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sollicitudin nisi nec nisl tincidunt porta. Ut commodo justo sit amet ex pulvinar pulvinar. Nullam et porttitor velit. Maecenas consectetur magna nibh, ac dictum libero condimentum quis. Aenean convallis ultricies scelerisque. Ut eget arcu eu urna mattis viverra sit amet et velit.\r\n<h1>Header one</h1>\r\n<h2>Header two</h2>\r\n<h3>Header three</h3>\r\n<h4>Header four</h4>\r\n<h5>Header five</h5>\r\n<h6>Header six</h6>\r\n<h2>Blockquotes</h2>\r\nSingle line blockquote:\r\n<blockquote>Stay hungry. Stay foolish.</blockquote>\r\nMulti line blockquote with a cite reference:\r\n<blockquote>People think focus means saying yes to the thing you’ve got to focus on. But that’s not what it means at all. It means saying no to the hundred other good ideas that there are. You have to pick carefully. I’m actually as proud of the things we haven’t done as the things I have done. Innovation is saying no to 1,000 things.<cite>Steve Jobs – Apple Worldwide Developers’ Conference, 1997</cite></blockquote>\r\n<h2>Tables</h2>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<th>Employee</th>\r\n<th class=\"views\">Salary</th>\r\n<th></th>\r\n</tr>\r\n<tr class=\"odd\">\r\n<td><a href=\"http://example.com/\">Jane</a></td>\r\n<td>$1</td>\r\n<td>Because that’s all Steve Job’ needed for a salary.</td>\r\n</tr>\r\n<tr class=\"even\">\r\n<td><a href=\"http://example.com/\">John</a></td>\r\n<td>$100K</td>\r\n<td>For all the blogging he does.</td>\r\n</tr>\r\n<tr class=\"odd\">\r\n<td><a href=\"http://example.com/\">Jane</a></td>\r\n<td>$100M</td>\r\n<td>Pictures are worth a thousand words, right? So Tom x 1,000.</td>\r\n</tr>\r\n<tr class=\"even\">\r\n<td><a href=\"http://example.com/\">Jane</a></td>\r\n<td>$100B</td>\r\n<td>With hair like that?! Enough said…</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>Definition Lists</h2>\r\n<dl>\r\n 	<dt>Definition List Title</dt>\r\n 	<dd>Definition list division.</dd>\r\n 	<dt>Startup</dt>\r\n 	<dd>A startup company or startup is a company or temporary organization designed to search for a repeatable and scalable business model.</dd>\r\n 	<dt>#dowork</dt>\r\n 	<dd>Coined by Rob Dyrdek and his personal body guard Christopher “Big Black” Boykins, “Do Work” works as a self motivator, to motivating your friends.</dd>\r\n 	<dt>Do It Live</dt>\r\n 	<dd>I’ll let Bill O’Reilly will <a title=\"We\'ll Do It Live\" href=\"https://www.youtube.com/watch?v=O_HyZ5aW76c\">explain</a> this one.</dd>\r\n</dl>\r\n<h2>Unordered Lists (Nested)</h2>\r\n<ul>\r\n 	<li>List item one\r\n<ul>\r\n 	<li>List item one\r\n<ul>\r\n 	<li>List item one</li>\r\n 	<li>List item two</li>\r\n 	<li>List item three</li>\r\n 	<li>List item four</li>\r\n</ul>\r\n</li>\r\n 	<li>List item two</li>\r\n 	<li>List item three</li>\r\n 	<li>List item four</li>\r\n</ul>\r\n</li>\r\n 	<li>List item two</li>\r\n 	<li>List item three</li>\r\n 	<li>List item four</li>\r\n</ul>\r\n<h2>Ordered List (Nested)</h2>\r\n<ol>\r\n 	<li>List item one\r\n<ol>\r\n 	<li>List item one\r\n<ol>\r\n 	<li>List item one</li>\r\n 	<li>List item two</li>\r\n 	<li>List item three</li>\r\n 	<li>List item four</li>\r\n</ol>\r\n</li>\r\n 	<li>List item two</li>\r\n 	<li>List item three</li>\r\n 	<li>List item four</li>\r\n</ol>\r\n</li>\r\n 	<li>List item two</li>\r\n 	<li>List item three</li>\r\n 	<li>List item four</li>\r\n</ol>\r\n<h2>HTML Tags</h2>\r\nThese supported tags come from the WordPress.com code <a title=\"Code\" href=\"http://en.support.wordpress.com/code/\">FAQ</a>.\r\n\r\n<strong>Address Tag</strong>\r\n\r\n<address>1 Infinite Loop\r\nCupertino, CA 95014\r\nUnited States</address><strong>Anchor Tag (aka. Link)</strong>\r\n\r\nThis is an example of a <a title=\"Apple\" href=\"http://apple.com/\">link</a>.\r\n\r\n<strong>Abbreviation Tag</strong>\r\n\r\nThe abbreviation <abbr title=\"Seriously\">srsly</abbr> stands for “seriously”.\r\n\r\n<strong>Acronym Tag</strong>\r\n\r\nThe acronym <acronym title=\"For The Win\">ftw</acronym> stands for “for the win”.\r\n\r\n<strong>Big Tag</strong>\r\n\r\nThese tests are a <big>big</big> deal, but this tag is no longer supported in HTML5.\r\n\r\n<strong>Cite Tag</strong>\r\n\r\n“Code is poetry.” —<cite>Automattic</cite>\r\n\r\n<strong>Code Tag</strong>\r\n\r\nYou will learn later on in these tests that <code>word-wrap: break-word;</code> will be your best friend.\r\n\r\n<strong>Delete Tag</strong>\r\n\r\nThis tag will let you <del>strikeout text</del>, but this tag is no longer supported in HTML5 (use the <code>&lt;strike&gt;</code> instead).\r\n\r\n<strong>Emphasize Tag</strong>\r\n\r\nThe emphasize tag should <em>italicize</em> text.\r\n\r\n<strong>Insert Tag</strong>\r\n\r\nThis tag should denote <ins>inserted</ins> text.\r\n\r\n<strong>Keyboard Tag</strong>\r\n\r\nThis scarcely known tag emulates <kbd>keyboard text</kbd>, which is usually styled like the <code>&lt;code&gt;</code> tag.\r\n\r\n<strong>Preformatted Tag</strong>\r\n\r\nThis tag styles large blocks of code.\r\n<pre>.post-title {\r\n  margin: 0 0 5px;\r\n  font-weight: bold;\r\n  font-size: 38px;\r\n  line-height: 1.2;\r\n}</pre>\r\n<strong>Quote Tag</strong>\r\n\r\n<q>Developers, developers, developers…</q> –Steve Ballmer\r\n\r\n<strong>Strong Tag</strong>\r\n\r\nThis tag shows <strong>bold text.</strong>\r\n\r\n<strong>Subscript Tag</strong>\r\n\r\nGetting our science styling on with H<sub>2</sub>O, which should push the “2” down.\r\n\r\n<strong>Superscript Tag</strong>\r\n\r\nStill sticking with science and Albert Einstein’s E = MC<sup>2</sup>, which should lift the 2 up.\r\n\r\n<strong>Teletype Tag</strong>\r\n\r\nThis rarely used tag emulates <tt>teletype text</tt>, which is usually styled like the <code>&lt;code&gt;</code> tag.\r\n\r\n<strong>Variable Tag</strong>\r\n\r\nThis allows you to denote <var>variables</var>.','Markup','','publish','closed','closed','','markup','','','2018-01-05 13:09:05','2018-01-05 11:09:05','',0,'https://wordpress.local/?page_id=61',0,'page','',0);
INSERT INTO `wp_posts` VALUES (65,2,'2018-01-03 10:36:55','2018-01-03 08:36:55',' ','','','publish','closed','closed','','65','','','2018-01-03 10:39:55','2018-01-03 08:39:55','',0,'https://wordpress.local/?p=65',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (66,2,'2018-01-03 10:37:49','2018-01-03 08:37:49','Doner frankfurter ground round, elit fugiat biltong sunt jerky meatball shankle pork. Deserunt turducken aliquip sunt venison hamburger. Lorem mollit ut consequat brisket chuck, strip steak flank nulla ham hock porchetta hamburger ball tip. Hamburger in minim fugiat alcatra pork lorem, ground round jowl ipsum chicken reprehenderit bacon in. Officia ipsum frankfurter rump elit nisi meatloaf ham. Culpa leberkas spare ribs ad, buffalo pork belly cupim jowl shank excepteur strip steak pancetta dolore jerky velit.\r\n\r\nSunt culpa consectetur spare ribs boudin ham tongue kielbasa bacon non cupidatat drumstick incididunt alcatra ad. Qui turkey officia doner shoulder ham hock dolore pork belly brisket enim hamburger reprehenderit jerky ex. Cillum kielbasa beef ribs, buffalo in corned beef proident fugiat ea. Occaecat venison t-bone sed ball tip, turducken fugiat short ribs bresaola jerky drumstick exercitation ham hock aliquip boudin. Velit tempor rump corned beef filet mignon consectetur pastrami fatback strip steak drumstick burgdoggen ut turducken doner. Proident pork chop filet mignon duis corned beef excepteur, cillum veniam meatloaf. Pork loin picanha salami, commodo pancetta ham capicola jerky.\r\n\r\nEx commodo deserunt ad chicken landjaeger laboris ball tip. Turducken aliqua venison magna, tempor dolore alcatra eiusmod. Venison non dolore beef ribs, flank hamburger sirloin dolor boudin prosciutto aliquip corned beef consectetur shank. Meatball velit in, cupim nisi pork quis. Strip steak ad t-bone, consequat ham hock porchetta chuck.','Hierarchical','','publish','closed','closed','','hierarchical','','','2018-01-03 10:37:49','2018-01-03 08:37:49','',0,'https://wordpress.local/?page_id=66',0,'page','',0);
INSERT INTO `wp_posts` VALUES (68,2,'2018-01-03 10:38:26','2018-01-03 08:38:26','Deserunt tenderloin culpa ad non proident chuck veniam. Swine biltong officia buffalo jowl, proident elit. Buffalo mollit sunt, turducken t-bone enim strip steak. Chicken t-bone magna, anim jerky eu reprehenderit laborum turducken drumstick pork loin eiusmod. Meatball salami culpa laborum eu, sunt ball tip. Cupidatat shank quis porchetta swine ball tip pariatur anim.\r\n\r\nSunt lorem dolor jowl, nulla ea non esse pork. Tail reprehenderit excepteur, veniam cillum nisi beef ribs buffalo id consequat ullamco ham hock. Veniam pork chop cupidatat hamburger qui occaecat officia duis corned beef dolore kevin exercitation pariatur tri-tip. Eiusmod burgdoggen aliquip spare ribs, sunt frankfurter exercitation aute chicken short ribs picanha incididunt hamburger laborum turducken. Pig filet mignon commodo porchetta, boudin et pork belly swine capicola. Cupidatat spare ribs andouille ex. Pig tempor dolore pastrami ex.\r\n\r\nAndouille non ut, shoulder flank bresaola short ribs strip steak pork belly pariatur ground round tail ball tip. Dolore magna irure consectetur, prosciutto quis pig ball tip nulla landjaeger occaecat. Laboris dolor ut spare ribs tempor burgdoggen kevin quis. Chuck ad salami, spare ribs buffalo pork loin shank short ribs ground round jerky laborum biltong ham hock kevin. Do fugiat spare ribs occaecat minim reprehenderit.','Hierarchical level 2A','','publish','closed','closed','','hierarchical-level-2a','','','2018-01-03 10:38:26','2018-01-03 08:38:26','',66,'https://wordpress.local/?page_id=68',0,'page','',0);
INSERT INTO `wp_posts` VALUES (70,2,'2018-01-03 10:38:43','2018-01-03 08:38:43','Rump aute jerky, excepteur cupidatat spare ribs culpa quis t-bone. Cillum dolore deserunt, biltong mollit laborum lorem ullamco tail chicken dolore. Enim picanha in adipisicing cupim. Swine kevin capicola, turkey porchetta flank boudin excepteur burgdoggen mollit. Proident ribeye turkey, tail buffalo ad pig in aliquip officia. Voluptate cupidatat jerky rump tenderloin. Picanha jerky shoulder andouille cillum chuck.\r\n\r\nQuis venison excepteur non esse tempor fatback shoulder. Nulla dolore jowl, consectetur labore brisket do. Veniam est qui, shoulder mollit dolor leberkas. Reprehenderit turducken sed, deserunt brisket aute proident. Ball tip sed jowl, spare ribs meatball cupim pork belly eiusmod in.','Hierarchical level 2B','','publish','closed','closed','','hierarchical-level-2b','','','2018-01-03 10:39:05','2018-01-03 08:39:05','',66,'https://wordpress.local/?page_id=70',0,'page','',0);
INSERT INTO `wp_posts` VALUES (73,2,'2018-01-03 10:39:28','2018-01-03 08:39:28','Aliquip filet mignon bresaola meatloaf bacon ullamco ribeye mollit ham salami. Picanha fugiat short ribs, short loin pork chop ut rump magna strip steak. Ad ex ullamco shank. Ut minim kevin in, cupidatat prosciutto tri-tip enim ball tip chuck.\r\n\r\nSirloin excepteur tempor rump pariatur tail chicken cupidatat. Tenderloin dolore leberkas esse pork loin et sed turkey ribeye ground round minim. Nisi cillum buffalo consectetur esse cupim shoulder irure magna cow. Porchetta nisi incididunt rump sed picanha biltong beef ribs fatback pastrami jowl bresaola laborum tri-tip cupidatat. Ea andouille salami, exercitation nostrud est ut.\r\n\r\nEst rump chicken, minim drumstick do biltong velit proident capicola picanha swine. Do ham hock id jowl irure. Dolore ad exercitation aliqua picanha. Shank culpa nulla spare ribs eiusmod hamburger. Kielbasa beef t-bone adipisicing landjaeger, reprehenderit cupim.','Hierarchical level 3','','publish','closed','closed','','hierarchical-level-3','','','2018-01-03 10:39:28','2018-01-03 08:39:28','',68,'https://wordpress.local/?page_id=73',0,'page','',0);
INSERT INTO `wp_posts` VALUES (75,2,'2018-01-03 10:39:55','2018-01-03 08:39:55',' ','','','publish','closed','closed','','75','','','2018-01-03 10:39:55','2018-01-03 08:39:55','',0,'https://wordpress.local/?p=75',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (76,2,'2018-01-03 10:39:55','2018-01-03 08:39:55',' ','','','publish','closed','closed','','76','','','2018-01-03 10:39:55','2018-01-03 08:39:55','',66,'https://wordpress.local/?p=76',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (77,2,'2018-01-03 10:39:55','2018-01-03 08:39:55',' ','','','publish','closed','closed','','77','','','2018-01-03 10:39:55','2018-01-03 08:39:55','',66,'https://wordpress.local/?p=77',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (78,2,'2018-01-03 10:39:55','2018-01-03 08:39:55',' ','','','publish','closed','closed','','78','','','2018-01-03 10:39:55','2018-01-03 08:39:55','',68,'https://wordpress.local/?p=78',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (79,0,'2018-01-03 12:20:55','2018-01-03 10:20:55','','','','publish','closed','closed','','79','','','2018-01-03 12:20:55','2018-01-03 10:20:55','',0,'https://wordpress.local/wplf-submission/79/',0,'wplf-submission','',0);
INSERT INTO `wp_posts` VALUES (83,2,'2018-01-03 16:23:13','2018-01-03 14:23:13','Shoulder aute ham kielbasa ipsum, tongue burgdoggen pariatur boudin shank eiusmod dolore et shankle. Tenderloin shank porchetta meatloaf consequat aliqua est non corned beef. Pig duis quis shankle in leberkas buffalo venison enim flank strip steak commodo. Shankle pastrami irure ad consectetur proident mollit velit cupidatat aute jerky ball tip nulla tail.\r\n\r\nUllamco ut tongue, kevin adipisicing frankfurter chuck short ribs pork loin velit beef ribs do eu ex burgdoggen. Drumstick adipisicing pork chop, est tri-tip duis esse andouille turducken buffalo pancetta venison. Ullamco tenderloin officia, tongue t-bone capicola pig drumstick flank eiusmod fatback pork belly ball tip hamburger chicken. Veniam pork loin pork chop, prosciutto consectetur ham hock fugiat spare ribs ham frankfurter laboris. Mollit incididunt ham commodo, aliquip pork loin labore id meatball tempor consequat chuck beef excepteur.\r\n\r\nFugiat fatback pariatur est tri-tip cupidatat cow short ribs cupim mollit culpa. Elit sed pancetta, tongue dolore incididunt laboris ut jerky ham in pig shoulder short ribs salami. Kevin duis doner ea, esse nisi ham hock proident capicola. Pancetta cupim do frankfurter buffalo, spare ribs voluptate qui. Ham hock tenderloin shank prosciutto proident ut, pig elit salami laborum doner jerky sirloin nulla.\r\n\r\nShort loin bresaola velit swine. Eiusmod in laboris ut enim magna, spare ribs aliquip flank est ea id tenderloin cupidatat. Porchetta kielbasa shank elit swine beef. Ground round burgdoggen exercitation strip steak, elit sausage buffalo corned beef. Ut sunt culpa alcatra, exercitation in velit mollit buffalo hamburger jerky. Ea aliquip fugiat exercitation, dolor doner ham hock officia hamburger laboris drumstick boudin aliqua.','Kielbasa ipsum','','publish','closed','closed','','shoulder-aute-ham-kielbasa-ipsum-tongue-burgdoggen-pariatur-boudin-shank-eiusmod-dolore-et-shankle-tenderloin-shank-porchetta-meatloaf-consequat-aliqua-est-non-corned-beef-pig-duis-quis-shankle-in','','','2018-01-03 16:23:42','2018-01-03 14:23:42','',0,'https://wordpress.local/?p=83',0,'post','',0);
INSERT INTO `wp_posts` VALUES (85,2,'2018-01-03 16:25:37','2018-01-03 14:25:37','Kielbasa duis alcatra burgdoggen, strip steak et tongue fatback anim pancetta eiusmod pig pastrami prosciutto. Exercitation commodo flank, spare ribs alcatra veniam enim leberkas sausage laborum ham dolor. Laborum ribeye shoulder dolore in, chicken pariatur ut frankfurter picanha meatloaf. Ground round pork loin cillum tail, cupim bresaola pork chop fatback. Quis prosciutto sunt, culpa chicken filet mignon ut dolor. Drumstick turducken duis eu frankfurter. Voluptate veniam adipisicing nostrud cow andouille.\r\n\r\n[caption id=\"attachment_39\" align=\"alignnone\" width=\"2560\"]<img class=\"wp-image-39 size-full\" src=\"https://wordpress.local/wp-content/uploads/2017/12/unsplash-evoo_13chok-benjaminrobyn-jespersen.jpg\" alt=\"\" width=\"2560\" height=\"3840\" /> Portrait image. These are usually a nightmare.[/caption]\r\n\r\nSalami reprehenderit landjaeger enim ribeye flank short loin sirloin. T-bone ut nulla, esse elit shankle shoulder meatloaf beef bresaola capicola burgdoggen mollit incididunt. Sunt sirloin minim, pork chop kielbasa tri-tip cupidatat ham hock meatball fatback filet mignon. Aliquip jerky meatloaf kevin veniam turkey eiusmod capicola deserunt. Voluptate sed magna shankle. Magna occaecat labore rump, voluptate anim turkey culpa reprehenderit leberkas in.\r\n\r\nJowl spare ribs chicken pork chop, landjaeger voluptate nisi aliquip t-bone ex cupim. Non duis magna cillum ea, pariatur est alcatra cupim. Anim shank elit nisi bresaola pork. Venison filet mignon irure, occaecat burgdoggen lorem doner shank.','Jowl spare ribs chicken','','publish','closed','closed','','jowl-spare-ribs-chicken','','','2018-01-03 16:25:37','2018-01-03 14:25:37','',0,'https://wordpress.local/?p=85',0,'post','',0);
INSERT INTO `wp_posts` VALUES (87,2,'2018-01-03 16:23:51','2018-01-03 14:23:51','Meatball alcatra labore short ribs tenderloin do velit ham hock tri-tip rump. Eiusmod deserunt short loin consequat, meatloaf capicola pariatur flank anim boudin buffalo velit burgdoggen. Tenderloin cupidatat picanha, anim drumstick quis chicken. Magna landjaeger picanha quis ham in kevin cupim turkey nostrud salami. Nostrud est landjaeger, lorem laborum ball tip veniam et dolore jerky dolore. Pork loin magna incididunt irure, cillum andouille biltong kevin pork hamburger.\r\n\r\nEa sausage consequat porchetta deserunt swine ball tip. Do occaecat pastrami eiusmod ut porchetta, quis strip steak est brisket pork belly consequat in. In fatback pork loin, eiusmod turducken mollit pastrami ipsum occaecat. Capicola sunt pork proident, tongue bresaola hamburger boudin swine incididunt esse pastrami.\r\n\r\nUt ground round spare ribs, adipisicing shank turkey drumstick consequat frankfurter tail incididunt dolore chicken nulla. Dolore ad beef elit aliqua sed tongue prosciutto cillum flank. Chuck sirloin anim beef fugiat culpa shoulder salami adipisicing ut shank incididunt ham hock brisket. Shankle tail strip steak, fugiat sed eiusmod qui culpa pork loin burgdoggen meatball.','Meatballs','','publish','closed','closed','','meatballs','','','2018-01-03 16:23:51','2018-01-03 14:23:51','',0,'https://wordpress.local/?p=87',0,'post','',0);
INSERT INTO `wp_posts` VALUES (89,2,'2018-01-03 16:24:41','2018-01-03 14:24:41','','unsplash-ymOqSmIizCY-adrian-null','','inherit','closed','closed','','unsplash-ymoqsmiizcy-adrian-null','','','2018-01-03 16:24:41','2018-01-03 14:24:41','',85,'https://wordpress.local/wp-content/uploads/2018/01/unsplash-ymoqsmiizcy-adrian-null.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (90,2,'2018-01-03 16:24:52','2018-01-03 14:24:52','','unsplash-5mkdPug__0Y-Van-Mendoza','','inherit','closed','closed','','unsplash-5mkdpug__0y-van-mendoza','','','2018-01-03 16:24:52','2018-01-03 14:24:52','',85,'https://wordpress.local/wp-content/uploads/2018/01/unsplash-5mkdpug__0y-van-mendoza.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (91,2,'2018-01-03 16:25:06','2018-01-03 14:25:06','','unsplash-FLxcobg6N1E-Rodan-Can','','inherit','closed','closed','','unsplash-flxcobg6n1e-rodan-can','','','2018-01-03 16:25:06','2018-01-03 14:25:06','',85,'https://wordpress.local/wp-content/uploads/2018/01/unsplash-flxcobg6n1e-rodan-can.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,2,'2018-01-03 16:25:21','2018-01-03 14:25:21','','unsplash-fxxxb3URdK4-Florian-Schneider','','inherit','closed','closed','','unsplash-fxxxb3urdk4-florian-schneider','','','2018-01-03 16:25:21','2018-01-03 14:25:21','',85,'https://wordpress.local/wp-content/uploads/2018/01/unsplash-fxxxb3urdk4-florian-schneider.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (93,2,'2018-01-03 16:25:27','2018-01-03 14:25:27','','unsplash-EzSD1s9-OSo-Krio-Bam','','inherit','closed','closed','','unsplash-ezsd1s9-oso-krio-bam','','','2018-01-03 16:25:27','2018-01-03 14:25:27','',85,'https://wordpress.local/wp-content/uploads/2018/01/unsplash-ezsd1s9-oso-krio-bam.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (95,2,'2018-01-03 16:25:38','2018-01-03 14:25:38','','unsplash-GU901RPv-xU-Anna-Jakobs','','inherit','closed','closed','','unsplash-gu901rpv-xu-anna-jakobs-2','','','2018-01-03 16:25:38','2018-01-03 14:25:38','',85,'https://wordpress.local/wp-content/uploads/2018/01/unsplash-gu901rpv-xu-anna-jakobs.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (96,2,'2018-01-03 16:26:49','2018-01-03 14:26:49','Ut ham hock bresaola ullamco. Ut picanha velit pork loin nulla occaecat tempor nisi ball tip porchetta excepteur. Dolore porchetta meatloaf reprehenderit. Landjaeger sint excepteur, ut short loin burgdoggen ullamco non aliqua cow. Excepteur laborum minim buffalo leberkas boudin irure jerky elit picanha fatback shankle veniam ball tip. Adipisicing ut culpa, fatback aute corned beef venison leberkas quis elit t-bone fugiat.\r\n\r\nEt leberkas cow kielbasa, exercitation ut ad tenderloin. Proident turkey ham do ground round occaecat fatback brisket. Shoulder tail venison kielbasa in pork loin. Commodo ad t-bone, turkey prosciutto in ut culpa. Enim doner culpa deserunt exercitation chuck ipsum meatball buffalo et sint ham hock filet mignon proident. Anim occaecat ham hock cow andouille pancetta pig tongue picanha spare ribs do burgdoggen commodo. Adipisicing et ullamco est, eu minim spare ribs veniam ribeye ut ea beef ribs frankfurter.\r\n\r\nBiltong fugiat consequat commodo tempor meatloaf bresaola porchetta voluptate chuck labore culpa. Ham dolor do chuck est turkey ut. Non commodo veniam in ex esse. Mollit reprehenderit nisi, t-bone do spare ribs consectetur labore duis bresaola venison proident. Alcatra do magna, officia consequat irure sirloin jowl ham hock. Aliqua landjaeger magna fatback. Shank ut salami occaecat fugiat ex officia ut tempor aliqua ham hock leberkas qui id bacon.\r\n<blockquote>Tail t-bone andouille incididunt magna tempor. Ribeye duis ball tip pork chop. Tenderloin cillum exercitation pork loin, flank est reprehenderit. Consectetur bresaola pork belly salami, laboris aliquip commodo fatback.</blockquote>\r\nHamburger qui consequat boudin, porchetta tongue officia. Strip steak hamburger commodo ball tip beef picanha. Reprehenderit culpa ut nisi pig ut alcatra. Pancetta tri-tip dolore short loin anim tempor commodo, incididunt boudin velit do in bacon flank.\r\n\r\n<img class=\"alignnone size-full wp-image-22\" src=\"https://wordpress.local/wp-content/uploads/2017/12/unsplash-iijgelwb6d4-thomas-millot.jpg\" alt=\"\" width=\"2048\" height=\"1365\" />','Ut ham hock bresaola','','publish','closed','closed','','ut-ham-hock-bresaola','','','2018-01-03 16:26:53','2018-01-03 14:26:53','',0,'https://wordpress.local/?p=96',0,'post','',0);
INSERT INTO `wp_posts` VALUES (99,2,'2017-01-05 15:05:48','2017-01-05 13:05:48','','dummy','','publish','closed','closed','','dummy','','','2018-01-05 15:07:24','2018-01-05 13:07:24','',0,'https://wordpress.local/?p=99',0,'post','',0);
INSERT INTO `wp_posts` VALUES (101,2,'0201-01-05 15:06:06','0201-01-05 13:26:17','','dummy','','publish','closed','closed','','dummy-7','','','2018-01-05 15:07:24','2018-01-05 13:07:24','',0,'https://wordpress.local/?p=101',0,'post','',0);
INSERT INTO `wp_posts` VALUES (103,2,'2017-01-05 15:06:16','2017-01-05 13:06:16','','dummy','','publish','closed','closed','','dummy-6','','','2018-01-05 15:07:24','2018-01-05 13:07:24','',0,'https://wordpress.local/?p=103',0,'post','',0);
INSERT INTO `wp_posts` VALUES (105,2,'2017-01-05 15:06:27','2017-01-05 13:06:27','','dummy','','publish','closed','closed','','dummy-5','','','2018-01-05 15:07:24','2018-01-05 13:07:24','',0,'https://wordpress.local/?p=105',0,'post','',0);
INSERT INTO `wp_posts` VALUES (107,2,'2017-01-05 15:06:34','2017-01-05 13:06:34','','dummy','','publish','closed','closed','','dummy-4','','','2018-01-05 15:07:24','2018-01-05 13:07:24','',0,'https://wordpress.local/?p=107',0,'post','',0);
INSERT INTO `wp_posts` VALUES (109,2,'2017-01-05 15:06:48','2017-01-05 13:06:48','','dummy','','publish','closed','closed','','dummy-3','','','2018-01-05 15:07:24','2018-01-05 13:07:24','',0,'https://wordpress.local/?p=109',0,'post','',0);
INSERT INTO `wp_posts` VALUES (111,2,'2017-01-05 15:06:57','2017-01-05 13:06:57','','dummy','','publish','closed','closed','','dummy-2','','','2018-01-05 15:07:24','2018-01-05 13:07:24','',0,'https://wordpress.local/?p=111',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_relevanssi`
--

DROP TABLE IF EXISTS `wp_relevanssi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_relevanssi` (
  `doc` bigint(20) NOT NULL DEFAULT '0',
  `term` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `term_reverse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `content` mediumint(9) NOT NULL DEFAULT '0',
  `title` mediumint(9) NOT NULL DEFAULT '0',
  `comment` mediumint(9) NOT NULL DEFAULT '0',
  `tag` mediumint(9) NOT NULL DEFAULT '0',
  `link` mediumint(9) NOT NULL DEFAULT '0',
  `author` mediumint(9) NOT NULL DEFAULT '0',
  `category` mediumint(9) NOT NULL DEFAULT '0',
  `excerpt` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy` mediumint(9) NOT NULL DEFAULT '0',
  `customfield` mediumint(9) NOT NULL DEFAULT '0',
  `mysqlcolumn` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `customfield_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mysqlcolumn_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(210) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `item` bigint(20) NOT NULL DEFAULT '0',
  UNIQUE KEY `doctermitem` (`doc`,`term`,`item`),
  KEY `terms` (`term`(20)),
  KEY `relevanssi_term_reverse_idx` (`term_reverse`(10)),
  KEY `docs` (`doc`),
  KEY `typeitem` (`type`(191),`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_relevanssi`
--

LOCK TABLES `wp_relevanssi` WRITE;
/*!40000 ALTER TABLE `wp_relevanssi` DISABLE KEYS */;
INSERT INTO `wp_relevanssi` VALUES (6,'adipisicing','gnicisipida',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'aliquip','piuqila',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'anim','mina',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'bacon','nocab',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'beef','feeb',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'belly','ylleb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'biltong','gnotlib',1,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'bone','enob',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'boudin','niduob',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'bresaola','aloaserb',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'brisket','teksirb',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'buffalo','olaffub',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'capicola','alocipac',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'caption','noitpac',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'chicken','nekcihc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'chop','pohc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'chuck','kcuhc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'cillum','mullic',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'commodo','odommoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'consectetur','rutetcesnoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'consequat','tauqesnoc',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'corned','denroc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'cow','woc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'culpa','apluc',4,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'cupidatat','tatadipuc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'deserunt','tnuresed',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'dolor','rolod',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'dolore','erolod',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'doner','renod',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'drumstick','kcitsmurd',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'duis','siud',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'eiusmod','domsuie',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'elit','tile',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'enim','mine',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'est','tse',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'excepteur','ruetpecxe',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'exercitation','noitaticrexe',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'fatback','kcabtaf',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'filet','telif',3,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'fugiat','taiguf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'ground','dnuorg',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'ham','mah',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'hamburger','regrubmah',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'hock','kcoh',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'incididunt','tnudidicni',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'jowl','lwoj',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'kevin','nivek',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'labore','erobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'laboris','sirobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'laborum','murobal',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'landjaeger','regeajdnal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'leberkas','sakrebel',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'loin','niol',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'meatball','llabtaem',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'meatloaf','faoltaem',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'meaty','ytaem',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'mignon','nongim',3,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'minim','minim',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'mollit','tillom',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'nisi','isin',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'non','non',1,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'nostrud','durtson',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'not','ton',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'nulla','allun',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'occaecat','taceacco',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'officia','aiciffo',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'pancetta','attecnap',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'pariatur','rutairap',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'pastrami','imartsap',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'pig','gip',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'porchetta','attehcrop',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'pork','krop',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'proident','tnediorp',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'prosciutto','ottuicsorp',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'quis','siuq',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'reprehenderit','tiredneherper',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'ribeye','eyebir',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'ribs','sbir',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'round','dnuor',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'rump','pmur',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'salami','imalas',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'sed','des',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'shank','knahs',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'shankle','elknahs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'short','trohs',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'shoulder','redluohs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'sint','tnis',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'sirloin','niolris',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'steak','kaets',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'strip','pirts',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'sunt','tnus',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'swine','eniws',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'tempor','ropmet',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'tenderloin','niolrednet',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'tip','pit',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'tongue','eugnot',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'tri','irt',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'turducken','nekcudrut',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'ullamco','ocmallu',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'velit','tilev',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'veniam','mainev',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'venison','nosinev',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'very','yrev',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (6,'voluptate','etatpulov',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'base','esab',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'can','nac',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'demo','omed',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'find','dnif',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'github','buhtig',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'home','emoh',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'https','sptth',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'project','tcejorp',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'repository','yrotisoper',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'seravo','ovares',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'structure','erutcurts',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'theme','emeht',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'this','siht',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'vincit','ticniv',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'wordpress','sserpdrow',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (8,'you','uoy',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (10,'blog','golb',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'accessible','elbissecca',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'alternatingblock','kcolbgnitanretla',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:11:\"pagebuilder\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'amet','tema',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'are','era',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'black','kcalb',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:50:\"pagebuilder_2_AlternatingBlock_options_color_value\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'bottom','mottob',0,0,0,0,0,0,0,0,0,2,0,'','a:2:{s:38:\"pagebuilder_0_Hero_background_position\";i:1;s:50:\"pagebuilder_2_AlternatingBlock_background_position\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'button','nottub',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:30:\"pagebuilder_0_Hero_button_text\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'center','retnec',0,0,0,0,0,0,0,0,0,7,0,'','a:7:{s:38:\"pagebuilder_0_Hero_background_position\";i:1;s:50:\"pagebuilder_1_AlternatingBlock_background_position\";i:1;s:50:\"pagebuilder_2_AlternatingBlock_background_position\";i:1;s:62:\"pagebuilder_1_AlternatingBlock_content_main_vertical_alignment\";i:1;s:67:\"pagebuilder_1_AlternatingBlock_content_secondary_vertical_alignment\";i:1;s:62:\"pagebuilder_2_AlternatingBlock_content_main_vertical_alignment\";i:1;s:67:\"pagebuilder_2_AlternatingBlock_content_secondary_vertical_alignment\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'checkboxes','sexobkcehc',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'custom','motsuc',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'dolor','rolod',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'even','neve',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'flaw','walf',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'form','mrof',0,0,0,0,0,0,0,0,0,3,0,'','a:2:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:2;s:58:\"pagebuilder_2_AlternatingBlock_content_secondary_shortcode\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'gray','yarg',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:50:\"pagebuilder_1_AlternatingBlock_options_color_value\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'hero','oreh',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:11:\"pagebuilder\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'how','woh',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'Image','egamI',0,0,0,0,0,0,0,0,0,1,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'ipsum','muspi',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'libre','erbil',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_secondary_shortcode\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'lorem','merol',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'notice','eciton',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'orange','egnaro',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:37:\"pagebuilder_0_Hero_button_color_value\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'out','tuo',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'pagebuilder','redliubegap',0,1,0,0,0,0,0,0,0,1,0,'','a:1:{s:33:\"pagebuilder_0_Hero_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'point','tniop',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'pretty','ytterp',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'Shortcode','edoctrohS',0,0,0,0,0,0,0,0,0,1,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'should','dluohs',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'sit','tis',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'they','yeht',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'top','pot',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:50:\"pagebuilder_1_AlternatingBlock_background_position\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'using','gnisu',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'with','htiw',0,0,0,0,0,0,0,0,0,2,0,'','a:2:{s:30:\"pagebuilder_0_Hero_button_text\";i:1;s:58:\"pagebuilder_2_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'you','uoy',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:58:\"pagebuilder_1_AlternatingBlock_content_main_wysiwyg_editor\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (14,'youclicked','dekcilcuoy',0,0,0,0,0,0,0,0,0,1,0,'','a:1:{s:30:\"pagebuilder_0_Hero_button_link\";i:1;}','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'000','000',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'100b','b001',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'100k','k001',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'100m','m001',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'1997','7991',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'38px','xp83',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'5px','xp5',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'95014','41059',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'abbreviation','noitaiverbba',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'acronym','mynorca',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'actually','yllautca',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'address','sserdda',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'adipiscing','gnicsipida',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'aenean','naenea',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'aka','aka',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'albert','trebla',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'all','lla',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'allows','swolla',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'amet','tema',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'anchor','rohcna',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'and','dna',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'apple','elppa',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'arcu','ucra',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'are','era',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'automattic','cittamotua',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'ballmer','remllab',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'because','esuaceb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'best','tseb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'big','gib',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'bill','llib',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'black','kcalb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'blockquote','etouqkcolb',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'blockquotes','setouqkcolb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'blocks','skcolb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'blogging','gniggolb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'body','ydob',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'bold','dlob',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'boykins','snikyob',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'break','kaerb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'business','ssenisub',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'but','tub',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'carefully','ylluferac',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'christopher','rehpotsirhc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'cite','etic',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'code','edoc',6,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'coined','denioc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'come','emoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'commodo','odommoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'company','ynapmoc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'condimentum','mutnemidnoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'conference','ecnerefnoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'consectetur','rutetcesnoc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'convallis','sillavnoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'cupertino','onitrepuc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'deal','laed',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'definition','noitinifed',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'delete','eteled',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'denote','etoned',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'designed','dengised',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'developers','srepoleved',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'dictum','mutcid',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'division','noisivid',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'does','seod',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'dolor','rolod',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'done','enod',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'down','nwod',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'dowork','krowod',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'dyrdek','kedryd',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'eget','tege',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'einstein','nietsnie',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'elit','tile',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'emphasize','ezisahpme',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'employee','eeyolpme',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'emulates','setalume',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'enough','hguone',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'example','elpmaxe',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'explain','nialpxe',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'faq','qaf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'five','evif',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'focus','sucof',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'font','tnof',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'foolish','hsiloof',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'for','rof',6,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'four','ruof',7,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'friend','dneirf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'friends','sdneirf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'from','morf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'ftw','wtf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'getting','gnitteg',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'good','doog',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'got','tog',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'guard','draug',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'hair','riah',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'have','evah',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'haven','nevah',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'header','redaeh',6,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'headings','sgnidaeh',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'height','thgieh',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'his','sih',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'html5','5lmth',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'hundred','derdnuh',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'hungry','yrgnuh',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'ideas','saedi',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'infinite','etinifni',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'innovation','noitavonni',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'insert','tresni',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'inserted','detresni',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'instead','daetsni',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'ipsum','muspi',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'italicize','ezicilati',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'item','meti',24,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'jane','enaj',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'job','boj',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'jobs','sboj',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'john','nhoj',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'justo','otsuj',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'keyboard','draobyek',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'known','nwonk',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'large','egral',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'later','retal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'learn','nrael',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'let','tel',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'libero','orebil',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'lift','tfil',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'like','ekil',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'line','enil',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'link','knil',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'list','tsil',27,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'lists','stsil',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'live','evil',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'longer','regnol',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'loop','pool',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'lorem','merol',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'maecenas','saneceam',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'magna','angam',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'margin','nigram',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'markup','pukram',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'mattis','sittam',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'means','snaem',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'model','ledom',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'motivating','gnitavitom',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'motivator','rotavitom',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'multi','itlum',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'nam','man',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'nec','cen',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'needed','dedeen',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'nested','detsen',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'nibh','hbin',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'nisi','isin',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'nisl','lsin',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'not','ton',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'nullam','mallun',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'one','eno',8,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'ordered','deredro',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'organization','noitazinagro',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'other','rehto',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'our','ruo',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'people','elpoep',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'personal','lanosrep',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'pick','kcip',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'pictures','serutcip',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'poetry','yrteop',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'porta','atrop',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'porttitor','rotittrop',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'post','tsop',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'preformatted','dettamroferp',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'proud','duorp',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'pulvinar','ranivlup',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'push','hsup',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'quis','siuq',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'quote','etouq',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'rarely','ylerar',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'reference','ecnerefer',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'reilly','yllier',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'repeatable','elbataeper',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'right','thgir',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'rob','bor',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'said','dias',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'salary','yralas',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'saying','gniyas',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'scalable','elbalacs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'scarcely','ylecracs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'scelerisque','euqsirelecs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'science','ecneics',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'search','hcraes',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'self','fles',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'seriously','ylsuoires',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'should','dluohs',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'shows','swohs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'single','elgnis',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'sit','tis',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'six','xis',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'size','ezis',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'sollicitudin','niduticillos',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'srsly','ylsrs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'stands','sdnats',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'startup','putrats',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'states','setats',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'stay','yats',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'steve','evets',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'sticking','gnikcits',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'still','llits',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'strike','ekirts',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'styled','delyts',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'styles','selyts',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'styling','gnilyts',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'subscript','tpircsbus',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'superscript','tpircsrepus',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'supported','detroppus',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'tables','selbat',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'tag','gat',29,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'tags','sgat',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'teletype','epytelet',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'temporary','yraropmet',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'tests','stset',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'text','txet',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'that','taht',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'there','ereht',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'these','eseht',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'thing','gniht',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'things','sgniht',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'think','kniht',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'this','siht',11,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'thousand','dnasuoht',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'three','eerht',7,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'tincidunt','tnudicnit',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'title','eltit',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'tom','mot',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'two','owt',7,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'ultricies','seicirtlu',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'united','detinu',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'unordered','deredronu',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'urna','anru',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'use','esu',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'used','desu',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'usually','yllausu',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'variable','elbairav',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'variables','selbairav',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'velit','tilev',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'viverra','arreviv',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'what','tahw',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'which','hcihw',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'will','lliw',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'win','niw',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'with','htiw',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'word','drow',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'wordpress','sserpdrow',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'words','sdrow',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'work','krow',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'works','skrow',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'worldwide','ediwdlrow',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'worth','htrow',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'wrap','parw',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'yes','sey',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'you','uoy',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (61,'your','ruoy',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'alcatra','artacla',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'aliqua','auqila',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'aliquip','piuqila',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'bacon','nocab',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'ball','llab',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'beef','feeb',6,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'belly','ylleb',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'biltong','gnotlib',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'bone','enob',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'boudin','niduob',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'bresaola','aloaserb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'brisket','teksirb',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'buffalo','olaffub',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'burgdoggen','neggodgrub',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'capicola','alocipac',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'chicken','nekcihc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'chop','pohc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'chuck','kcuhc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'cillum','mullic',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'commodo','odommoc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'consectetur','rutetcesnoc',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'consequat','tauqesnoc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'corned','denroc',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'culpa','apluc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'cupidatat','tatadipuc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'cupim','mipuc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'deserunt','tnuresed',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'dolor','rolod',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'dolore','erolod',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'doner','renod',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'drumstick','kcitsmurd',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'duis','siud',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'eiusmod','domsuie',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'elit','tile',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'enim','mine',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'excepteur','ruetpecxe',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'exercitation','noitaticrexe',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'fatback','kcabtaf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'filet','telif',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'flank','knalf',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'frankfurter','retrufknarf',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'fugiat','taiguf',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'ground','dnuorg',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'ham','mah',7,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'hamburger','regrubmah',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'hierarchical','lacihcrareih',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'hock','kcoh',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'incididunt','tnudidicni',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'ipsum','muspi',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'jerky','ykrej',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'jowl','lwoj',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'kielbasa','asableik',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'laboris','sirobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'landjaeger','regeajdnal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'leberkas','sakrebel',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'loin','niol',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'lorem','merol',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'magna','angam',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'meatball','llabtaem',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'meatloaf','faoltaem',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'mignon','nongim',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'minim','minim',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'mollit','tillom',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'nisi','isin',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'non','non',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'nulla','allun',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'occaecat','taceacco',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'officia','aiciffo',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'pancetta','attecnap',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'pastrami','imartsap',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'picanha','ahnacip',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'porchetta','attehcrop',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'pork','krop',7,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'proident','tnediorp',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'prosciutto','ottuicsorp',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'qui','iuq',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'quis','siuq',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'reprehenderit','tiredneherper',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'ribs','sbir',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'round','dnuor',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'rump','pmur',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'salami','imalas',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'sed','des',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'shank','knahs',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'shankle','elknahs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'short','trohs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'shoulder','redluohs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'sirloin','niolris',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'spare','eraps',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'steak','kaets',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'strip','pirts',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'sunt','tnus',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'tempor','ropmet',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'tip','pit',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'tongue','eugnot',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'turducken','nekcudrut',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'turkey','yekrut',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'velit','tilev',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'veniam','mainev',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (66,'venison','nosinev',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'aliquip','piuqila',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'andouille','elliuodna',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'anim','mina',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'aute','etua',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'ball','llab',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'beef','feeb',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'belly','ylleb',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'biltong','gnotlib',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'bone','enob',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'boudin','niduob',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'bresaola','aloaserb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'buffalo','olaffub',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'burgdoggen','neggodgrub',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'capicola','alocipac',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'chicken','nekcihc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'chop','pohc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'chuck','kcuhc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'cillum','mullic',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'commodo','odommoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'consectetur','rutetcesnoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'consequat','tauqesnoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'corned','denroc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'culpa','apluc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'cupidatat','tatadipuc',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'deserunt','tnuresed',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'dolor','rolod',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'dolore','erolod',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'drumstick','kcitsmurd',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'duis','siud',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'eiusmod','domsuie',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'elit','tile',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'enim','mine',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'esse','esse',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'excepteur','ruetpecxe',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'exercitation','noitaticrexe',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'filet','telif',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'flank','knalf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'frankfurter','retrufknarf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'fugiat','taiguf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'ground','dnuorg',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'ham','mah',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'hamburger','regrubmah',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'hierarchical','lacihcrareih',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'hock','kcoh',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'incididunt','tnudidicni',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'irure','eruri',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'jerky','ykrej',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'jowl','lwoj',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'kevin','nivek',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'laboris','sirobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'laborum','murobal',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'landjaeger','regeajdnal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'level','level',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'loin','niol',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'lorem','merol',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'magna','angam',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'meatball','llabtaem',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'mignon','nongim',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'minim','minim',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'mollit','tillom',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'nisi','isin',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'non','non',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'nulla','allun',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'occaecat','taceacco',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'officia','aiciffo',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'pariatur','rutairap',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'pastrami','imartsap',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'picanha','ahnacip',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'pig','gip',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'porchetta','attehcrop',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'pork','krop',6,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'proident','tnediorp',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'prosciutto','ottuicsorp',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'qui','iuq',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'quis','siuq',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'reprehenderit','tiredneherper',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'ribs','sbir',9,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'round','dnuor',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'salami','imalas',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'shank','knahs',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'short','trohs',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'shoulder','redluohs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'spare','eraps',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'steak','kaets',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'strip','pirts',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'sunt','tnus',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'swine','eniws',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'tail','liat',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'tempor','ropmet',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'tenderloin','niolrednet',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'tip','pit',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'tri','irt',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'turducken','nekcudrut',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'ullamco','ocmallu',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (68,'veniam','mainev',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'adipisicing','gnicisipida',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'aliquip','piuqila',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'andouille','elliuodna',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'aute','etua',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'ball','llab',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'belly','ylleb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'biltong','gnotlib',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'bone','enob',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'boudin','niduob',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'brisket','teksirb',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'buffalo','olaffub',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'burgdoggen','neggodgrub',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'capicola','alocipac',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'chicken','nekcihc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'chuck','kcuhc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'cillum','mullic',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'consectetur','rutetcesnoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'culpa','apluc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'cupidatat','tatadipuc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'cupim','mipuc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'deserunt','tnuresed',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'dolor','rolod',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'dolore','erolod',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'eiusmod','domsuie',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'enim','mine',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'esse','esse',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'est','tse',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'excepteur','ruetpecxe',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'fatback','kcabtaf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'flank','knalf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'hierarchical','lacihcrareih',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'jerky','ykrej',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'jowl','lwoj',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'kevin','nivek',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'labore','erobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'laborum','murobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'leberkas','sakrebel',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'level','level',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'lorem','merol',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'meatball','llabtaem',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'mollit','tillom',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'non','non',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'nulla','allun',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'officia','aiciffo',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'picanha','ahnacip',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'pig','gip',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'porchetta','attehcrop',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'pork','krop',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'proident','tnediorp',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'qui','iuq',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'quis','siuq',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'reprehenderit','tiredneherper',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'ribeye','eyebir',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'ribs','sbir',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'rump','pmur',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'sed','des',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'shoulder','redluohs',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'spare','eraps',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'swine','eniws',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'tail','liat',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'tempor','ropmet',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'tenderloin','niolrednet',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'tip','pit',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'turducken','nekcudrut',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'turkey','yekrut',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'ullamco','ocmallu',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'veniam','mainev',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'venison','nosinev',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (70,'voluptate','etatpulov',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'adipisicing','gnicisipida',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'aliqua','auqila',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'aliquip','piuqila',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'andouille','elliuodna',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'bacon','nocab',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'ball','llab',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'beef','feeb',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'biltong','gnotlib',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'bone','enob',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'bresaola','aloaserb',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'buffalo','olaffub',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'capicola','alocipac',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'chicken','nekcihc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'chop','pohc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'chuck','kcuhc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'cillum','mullic',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'consectetur','rutetcesnoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'cow','woc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'culpa','apluc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'cupidatat','tatadipuc',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'cupim','mipuc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'dolore','erolod',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'drumstick','kcitsmurd',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'eiusmod','domsuie',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'enim','mine',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'esse','esse',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'est','tse',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'excepteur','ruetpecxe',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'exercitation','noitaticrexe',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'fatback','kcabtaf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'filet','telif',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'fugiat','taiguf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'ground','dnuorg',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'ham','mah',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'hamburger','regrubmah',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'hierarchical','lacihcrareih',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'hock','kcoh',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'incididunt','tnudidicni',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'irure','eruri',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'jowl','lwoj',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'kevin','nivek',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'kielbasa','asableik',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'laborum','murobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'landjaeger','regeajdnal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'leberkas','sakrebel',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'level','level',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'loin','niol',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'magna','angam',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'meatloaf','faoltaem',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'mignon','nongim',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'minim','minim',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'mollit','tillom',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'nisi','isin',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'nostrud','durtson',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'nulla','allun',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'pariatur','rutairap',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'pastrami','imartsap',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'picanha','ahnacip',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'porchetta','attehcrop',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'pork','krop',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'proident','tnediorp',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'prosciutto','ottuicsorp',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'reprehenderit','tiredneherper',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'ribeye','eyebir',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'ribs','sbir',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'round','dnuor',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'rump','pmur',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'salami','imalas',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'sed','des',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'shank','knahs',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'short','trohs',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'shoulder','redluohs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'sirloin','niolris',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'spare','eraps',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'steak','kaets',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'strip','pirts',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'swine','eniws',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'tail','liat',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'tempor','ropmet',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'tenderloin','niolrednet',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'tip','pit',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'tri','irt',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'turkey','yekrut',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'ullamco','ocmallu',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (73,'velit','tilev',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'adipisicing','gnicisipida',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'alcatra','artacla',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'aliqua','auqila',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'aliquip','piuqila',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'andouille','elliuodna',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'aute','etua',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'ball','llab',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'beef','feeb',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'belly','ylleb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'bone','enob',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'boudin','niduob',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'bresaola','aloaserb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'buffalo','olaffub',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'burgdoggen','neggodgrub',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'capicola','alocipac',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'chicken','nekcihc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'chop','pohc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'chuck','kcuhc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'commodo','odommoc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'consectetur','rutetcesnoc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'consequat','tauqesnoc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'corned','denroc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'cow','woc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'culpa','apluc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'cupidatat','tatadipuc',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'cupim','mipuc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'dolor','rolod',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'dolore','erolod',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'doner','renod',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'drumstick','kcitsmurd',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'duis','siud',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'eiusmod','domsuie',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'elit','tile',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'enim','mine',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'esse','esse',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'est','tse',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'excepteur','ruetpecxe',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'exercitation','noitaticrexe',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'fatback','kcabtaf',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'flank','knalf',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'frankfurter','retrufknarf',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'fugiat','taiguf',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'ground','dnuorg',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'ham','mah',8,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'hamburger','regrubmah',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'hock','kcoh',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'incididunt','tnudidicni',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'ipsum','muspi',1,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'irure','eruri',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'jerky','ykrej',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'kevin','nivek',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'kielbasa','asableik',2,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'labore','erobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'laboris','sirobal',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'laborum','murobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'leberkas','sakrebel',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'loin','niol',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'magna','angam',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'meatball','llabtaem',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'meatloaf','faoltaem',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'mollit','tillom',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'nisi','isin',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'non','non',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'nulla','allun',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'officia','aiciffo',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'pancetta','attecnap',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'pariatur','rutairap',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'pastrami','imartsap',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'pig','gip',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'porchetta','attehcrop',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'pork','krop',6,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'proident','tnediorp',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'prosciutto','ottuicsorp',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'qui','iuq',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'quis','siuq',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'ribs','sbir',7,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'round','dnuor',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'salami','imalas',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'sausage','egasuas',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'sed','des',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'shank','knahs',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'shankle','elknahs',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'short','trohs',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'shoulder','redluohs',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'sirloin','niolris',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'spare','eraps',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'steak','kaets',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'strip','pirts',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'sunt','tnus',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'swine','eniws',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'tail','liat',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'tempor','ropmet',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'tenderloin','niolrednet',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'tip','pit',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'tongue','eugnot',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'tri','irt',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'turducken','nekcudrut',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'ullamco','ocmallu',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'velit','tilev',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'veniam','mainev',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'venison','nosinev',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (83,'voluptate','etatpulov',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'adipisicing','gnicisipida',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'alcatra','artacla',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'aliquip','piuqila',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'andouille','elliuodna',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'anim','mina',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'are','era',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'beef','feeb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'bone','enob',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'bresaola','aloaserb',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'burgdoggen','neggodgrub',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'capicola','alocipac',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'chicken','nekcihc',3,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'chop','pohc',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'cillum','mullic',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'commodo','odommoc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'cow','woc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'culpa','apluc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'cupidatat','tatadipuc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'cupim','mipuc',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'deserunt','tnuresed',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'dolor','rolod',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'dolore','erolod',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'doner','renod',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'drumstick','kcitsmurd',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'duis','siud',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'eiusmod','domsuie',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'elit','tile',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'enim','mine',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'esse','esse',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'est','tse',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'exercitation','noitaticrexe',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'fatback','kcabtaf',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'filet','telif',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'flank','knalf',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'frankfurter','retrufknarf',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'ground','dnuorg',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'ham','mah',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'hock','kcoh',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'image','egami',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'incididunt','tnudidicni',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'irure','eruri',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'jerky','ykrej',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'jowl','lwoj',1,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'kevin','nivek',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'kielbasa','asableik',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'labore','erobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'laborum','murobal',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'landjaeger','regeajdnal',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'leberkas','sakrebel',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'loin','niol',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'lorem','merol',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'magna','angam',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'meatball','llabtaem',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'meatloaf','faoltaem',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'mignon','nongim',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'minim','minim',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'mollit','tillom',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'nightmare','eramthgin',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'nisi','isin',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'non','non',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'nostrud','durtson',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'nulla','allun',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'occaecat','taceacco',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'pancetta','attecnap',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'pariatur','rutairap',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'pastrami','imartsap',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'picanha','ahnacip',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'pig','gip',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'pork','krop',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'portrait','tiartrop',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'prosciutto','ottuicsorp',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'quis','siuq',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'reprehenderit','tiredneherper',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'ribeye','eyebir',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'ribs','sbir',2,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'round','dnuor',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'rump','pmur',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'salami','imalas',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'sausage','egasuas',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'sed','des',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'shank','knahs',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'shankle','elknahs',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'short','trohs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'shoulder','redluohs',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'sirloin','niolris',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'spare','eraps',2,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'steak','kaets',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'strip','pirts',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'sunt','tnus',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'tail','liat',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'these','eseht',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'tip','pit',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'tongue','eugnot',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'tri','irt',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'turducken','nekcudrut',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'turkey','yekrut',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'usually','yllausu',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'veniam','mainev',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'venison','nosinev',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (85,'voluptate','etatpulov',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'adipisicing','gnicisipida',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'alcatra','artacla',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'aliqua','auqila',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'andouille','elliuodna',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'anim','mina',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'ball','llab',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'beef','feeb',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'belly','ylleb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'biltong','gnotlib',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'boudin','niduob',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'bresaola','aloaserb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'brisket','teksirb',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'buffalo','olaffub',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'burgdoggen','neggodgrub',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'capicola','alocipac',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'chicken','nekcihc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'chuck','kcuhc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'cillum','mullic',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'consequat','tauqesnoc',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'culpa','apluc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'cupidatat','tatadipuc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'cupim','mipuc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'deserunt','tnuresed',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'dolore','erolod',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'drumstick','kcitsmurd',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'eiusmod','domsuie',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'elit','tile',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'esse','esse',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'est','tse',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'fatback','kcabtaf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'flank','knalf',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'frankfurter','retrufknarf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'fugiat','taiguf',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'ground','dnuorg',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'ham','mah',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'hamburger','regrubmah',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'hock','kcoh',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'incididunt','tnudidicni',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'ipsum','muspi',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'irure','eruri',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'jerky','ykrej',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'kevin','nivek',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'labore','erobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'laborum','murobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'landjaeger','regeajdnal',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'loin','niol',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'lorem','merol',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'magna','angam',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'meatball','llabtaem',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'meatballs','sllabtaem',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'meatloaf','faoltaem',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'mollit','tillom',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'nostrud','durtson',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'nulla','allun',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'occaecat','taceacco',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'pariatur','rutairap',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'pastrami','imartsap',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'picanha','ahnacip',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'porchetta','attehcrop',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'pork','krop',6,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'proident','tnediorp',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'prosciutto','ottuicsorp',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'qui','iuq',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'quis','siuq',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'ribs','sbir',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'round','dnuor',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'rump','pmur',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'salami','imalas',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'sausage','egasuas',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'sed','des',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'shank','knahs',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'shankle','elknahs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'short','trohs',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'shoulder','redluohs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'sirloin','niolris',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'spare','eraps',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'steak','kaets',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'strip','pirts',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'sunt','tnus',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'swine','eniws',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'tail','liat',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'tenderloin','niolrednet',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'tip','pit',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'tongue','eugnot',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'tri','irt',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'turducken','nekcudrut',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'turkey','yekrut',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'velit','tilev',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (87,'veniam','mainev',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'adipisicing','gnicisipida',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'alcatra','artacla',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'aliqua','auqila',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'aliquip','piuqila',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'andouille','elliuodna',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'anim','mina',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'aute','etua',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'bacon','nocab',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'ball','llab',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'beef','feeb',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'belly','ylleb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'biltong','gnotlib',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'bone','enob',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'boudin','niduob',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'bresaola','aloaserb',4,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'brisket','teksirb',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'buffalo','olaffub',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'burgdoggen','neggodgrub',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'chop','pohc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'chuck','kcuhc',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'cillum','mullic',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'commodo','odommoc',7,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'consectetur','rutetcesnoc',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'consequat','tauqesnoc',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'corned','denroc',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'cow','woc',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'culpa','apluc',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'deserunt','tnuresed',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'dolor','rolod',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'dolore','erolod',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'doner','renod',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'duis','siud',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'elit','tile',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'enim','mine',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'esse','esse',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'est','tse',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'excepteur','ruetpecxe',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'exercitation','noitaticrexe',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'fatback','kcabtaf',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'filet','telif',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'flank','knalf',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'frankfurter','retrufknarf',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'fugiat','taiguf',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'ground','dnuorg',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'ham','mah',7,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'hamburger','regrubmah',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'hock','kcoh',5,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'incididunt','tnudidicni',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'ipsum','muspi',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'irure','eruri',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'jerky','ykrej',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'jowl','lwoj',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'kielbasa','asableik',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'labore','erobal',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'laboris','sirobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'laborum','murobal',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'landjaeger','regeajdnal',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'leberkas','sakrebel',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'loin','niol',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'magna','angam',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'meatball','llabtaem',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'meatloaf','faoltaem',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'mignon','nongim',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'minim','minim',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'mollit','tillom',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'nisi','isin',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'non','non',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'nulla','allun',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'occaecat','taceacco',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'officia','aiciffo',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'pancetta','attecnap',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'picanha','ahnacip',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'pig','gip',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'porchetta','attehcrop',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'pork','krop',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'proident','tnediorp',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'prosciutto','ottuicsorp',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'qui','iuq',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'quis','siuq',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'reprehenderit','tiredneherper',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'ribeye','eyebir',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'ribs','sbir',4,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'round','dnuor',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'salami','imalas',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'shank','knahs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'shankle','elknahs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'short','trohs',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'shoulder','redluohs',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'sint','tnis',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'sirloin','niolris',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'spare','eraps',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'steak','kaets',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'strip','pirts',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'tail','liat',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'tempor','ropmet',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'tenderloin','niolrednet',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'tip','pit',5,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'tongue','eugnot',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'tri','irt',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'turkey','yekrut',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'ullamco','ocmallu',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'velit','tilev',2,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'veniam','mainev',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'venison','nosinev',3,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (96,'voluptate','etatpulov',1,0,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (99,'dummy','ymmud',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (101,'dummy','ymmud',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (103,'dummy','ymmud',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (105,'dummy','ymmud',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (107,'dummy','ymmud',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (109,'dummy','ymmud',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
INSERT INTO `wp_relevanssi` VALUES (111,'dummy','ymmud',0,1,0,0,0,0,0,0,0,0,0,'','','','post',0);
/*!40000 ALTER TABLE `wp_relevanssi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_relevanssi_log`
--

DROP TABLE IF EXISTS `wp_relevanssi_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_relevanssi_log` (
  `id` bigint(9) NOT NULL AUTO_INCREMENT,
  `query` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` mediumint(9) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_relevanssi_log`
--

LOCK TABLES `wp_relevanssi_log` WRITE;
/*!40000 ALTER TABLE `wp_relevanssi_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_relevanssi_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_relevanssi_stopwords`
--

DROP TABLE IF EXISTS `wp_relevanssi_stopwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_relevanssi_stopwords` (
  `stopword` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  UNIQUE KEY `stopword` (`stopword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_relevanssi_stopwords`
--

LOCK TABLES `wp_relevanssi_stopwords` WRITE;
/*!40000 ALTER TABLE `wp_relevanssi_stopwords` DISABLE KEYS */;
INSERT INTO `wp_relevanssi_stopwords` VALUES ('a');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('aina');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ainakin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('aivan');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('alla');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('alle');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('amp');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('an');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('asti');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('auki');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('author');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('com');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ehkä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ei');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('eikä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('eivät');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('em');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('emme');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('en');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('enemmän');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ennen');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('eri');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('et');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ette');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('että');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('fax');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('fi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('h');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('he');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('heidän');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('heidät');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('heihin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('heille');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('heillä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('heiltä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('heissä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('heistä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('heitä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hieman');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hlä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hlää');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('html');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('http');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hyvin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hän');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('häneen');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hänelle');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hänellä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('häneltä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hänen');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hänessä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hänestä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hänet');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('häntä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ihan');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ilman');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('itse');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ja');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jo');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('johon');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joiden');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joihin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joiksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joilla');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joille');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joilta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joina');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joissa');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joista');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joita');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joka');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joko');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jolla');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jolle');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jolta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jona');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jonka');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jopa');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jos');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('joskus');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jossa');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('josta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jota');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jotain');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jotka');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('juuri');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('jälkeen');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kai');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kaikki');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kanssa');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kaukana');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keiden');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keihin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keiksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keille');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keillä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keiltä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keinä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keissä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keistä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keitä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keneen');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keneksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kenelle');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kenellä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keneltä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kenen');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kenenä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kenessä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kenestä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kenet');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kenties');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keskellä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kesken');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ketkä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ketä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('klo');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('koko');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('koska');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('koskaan');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kuin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kuinka');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kuitenkaan');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kuitenkin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kuka');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kun');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kuten');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('kyllä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('li');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('liian');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('lisäksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('lisää');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('lla');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('lopulta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('lue');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('luona');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('lähellä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('läpi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('maroon');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('me');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('meidän');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('meidät');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('meihin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('meille');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('meillä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('meiltä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('meissä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('meistä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('meitä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('mihin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('miksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('mikä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('mille');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('milloin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('milloinkaan');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('millä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('miltä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('minkä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('minua');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('minulla');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('minulle');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('minulta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('minun');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('minussa');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('minusta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('minut');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('minuun');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('minä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('missä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('mistä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('miten');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('mitkä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('mitä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('mitään');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('mukaan');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('mutta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('muut');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('muuta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('myäs');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('myös');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ne');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('net');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('niiden');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('niihin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('niiksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('niille');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('niillä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('niiltä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('niin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('niinä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('niissä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('niistä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('niitä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('noiden');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('noihin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('noiksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('noilla');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('noille');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('noilta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('noin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('noina');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('noissa');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('noista');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('noita');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('nopeasti');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('nuo');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('nyt');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('näiden');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('näihin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('näiksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('näille');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('näillä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('näiltä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('näin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('näinä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('näissä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('näistä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('näitä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('nämä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('of');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('oikea');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('oikealla');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('oikein');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ole');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olemme');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olen');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olet');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olette');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('oli');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olimme');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olisi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olisimme');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olisin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olisit');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olisitte');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olisivat');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olit');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olitte');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olivat');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olla');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('olleet');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ollut');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('on');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('onkin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('org');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ovat');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('paitsi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('paljon');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('paras');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('poikki');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('puh');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('saa');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('saada');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('saat');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('se');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sekä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sen');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('siellä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('siihen');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('siinä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('siis');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('siitä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('siksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sille');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sillä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('silti');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('siltä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sinua');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sinulla');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sinulle');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sinulta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sinun');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sinussa');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sinusta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sinut');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sinuun');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sinä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sis');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sitten');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sitä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sivu');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('span');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ssa');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('strong');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('style');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('suoraan');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('taas');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tai');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('takana');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('takia');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tavalla');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('td');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('te');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('teidän');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('teidät');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('teihin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('teille');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('teillä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('teiltä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('teissä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('teistä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('teitä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('the');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tms');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('to');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tr');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tule');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tuo');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tuoda');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tuohon');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tuoksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tuolla');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tuolle');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tuolta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tuon');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tuona');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tuossa');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tuosta');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tuota');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tähän');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('täksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tälle');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tällä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tältä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tämä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tämän');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tänä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tässä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tästä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('tätä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ul');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('vaan');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('vai');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('vaikka');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('vain');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('varsin');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('vasemmalla');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('vasen');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('vastan');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('vielä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('vieressä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('viim');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('voi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('voida');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('voisi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('voit');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('vähemmän');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('vähän');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('välillä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('weight');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('wp');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('www');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('yhdessä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('yhtä');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('yksi');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('yli');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('yläs');
INSERT INTO `wp_relevanssi_stopwords` VALUES ('yms');
/*!40000 ALTER TABLE `wp_relevanssi_stopwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,3,0);
INSERT INTO `wp_term_relationships` VALUES (12,2,0);
INSERT INTO `wp_term_relationships` VALUES (13,2,0);
INSERT INTO `wp_term_relationships` VALUES (16,2,0);
INSERT INTO `wp_term_relationships` VALUES (65,2,0);
INSERT INTO `wp_term_relationships` VALUES (75,2,0);
INSERT INTO `wp_term_relationships` VALUES (76,2,0);
INSERT INTO `wp_term_relationships` VALUES (77,2,0);
INSERT INTO `wp_term_relationships` VALUES (78,2,0);
INSERT INTO `wp_term_relationships` VALUES (83,3,0);
INSERT INTO `wp_term_relationships` VALUES (85,1,0);
INSERT INTO `wp_term_relationships` VALUES (87,3,0);
INSERT INTO `wp_term_relationships` VALUES (96,3,0);
INSERT INTO `wp_term_relationships` VALUES (99,1,0);
INSERT INTO `wp_term_relationships` VALUES (101,1,0);
INSERT INTO `wp_term_relationships` VALUES (103,1,0);
INSERT INTO `wp_term_relationships` VALUES (105,1,0);
INSERT INTO `wp_term_relationships` VALUES (107,1,0);
INSERT INTO `wp_term_relationships` VALUES (109,1,0);
INSERT INTO `wp_term_relationships` VALUES (111,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Menu','menu',0);
INSERT INTO `wp_terms` VALUES (3,'Bacon','bacon',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (15,2,'nickname','vincit.admin');
INSERT INTO `wp_usermeta` VALUES (16,2,'first_name','');
INSERT INTO `wp_usermeta` VALUES (17,2,'last_name','');
INSERT INTO `wp_usermeta` VALUES (18,2,'description','');
INSERT INTO `wp_usermeta` VALUES (19,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (20,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (21,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (22,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (23,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (24,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (25,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (26,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (27,2,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (28,2,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (29,2,'session_tokens','a:4:{s:64:\"f6f4576eaa5f20aa19d3c4921ae2686935d861e4928a34917a2ace917b477365\";a:4:{s:10:\"expiration\";i:1515593420;s:2:\"ip\";s:13:\"37.219.17.195\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36\";s:5:\"login\";i:1514383820;}s:64:\"94e69d830fd28c00c03300426692ad03e13f8beced131b741672027b374b2c62\";a:4:{s:10:\"expiration\";i:1516106105;s:2:\"ip\";s:14:\"195.60.252.249\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\";s:5:\"login\";i:1514896505;}s:64:\"79177b2f9dc67c52fd888edefeb9e99588a38d07752337d932dec5078082c00c\";a:4:{s:10:\"expiration\";i:1515753723;s:2:\"ip\";s:14:\"195.60.252.249\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36\";s:5:\"login\";i:1515580923;}s:64:\"4dfbbe4ddfa8a2acb0b198f5caa8720dea6327321362406735201a86c54c9d3a\";a:4:{s:10:\"expiration\";i:1515754402;s:2:\"ip\";s:14:\"195.60.252.249\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36\";s:5:\"login\";i:1515581602;}}');
INSERT INTO `wp_usermeta` VALUES (30,2,'wp_dashboard_quick_press_last_post_id','113');
INSERT INTO `wp_usermeta` VALUES (45,2,'community-events-location','a:1:{s:2:\"ip\";s:12:\"195.60.252.0\";}');
INSERT INTO `wp_usermeta` VALUES (46,2,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (47,2,'metaboxhidden_nav-menus','a:3:{i:0;s:23:\"add-post-type-wplf-form\";i:1;s:12:\"add-post_tag\";i:2;s:18:\"add-media_category\";}');
INSERT INTO `wp_usermeta` VALUES (48,2,'acf_user_settings','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (49,2,'closedpostboxes_page','a:1:{i:0;s:18:\"relevanssi_hidebox\";}');
INSERT INTO `wp_usermeta` VALUES (50,2,'metaboxhidden_page','a:12:{i:0;s:23:\"acf-group_5a3917d1a34a0\";i:1;s:23:\"acf-group_5a390d4875b31\";i:2;s:23:\"acf-group_5a390c2abc23d\";i:3;s:23:\"acf-group_5a390df209399\";i:4;s:23:\"acf-group_5a3a18abe102c\";i:5;s:23:\"acf-group_5a39209623ace\";i:6;s:23:\"acf-group_5a0addd599761\";i:7;s:23:\"acf-group_59d247a794a25\";i:8;s:23:\"acf-group_59d246c91ec65\";i:9;s:16:\"commentstatusdiv\";i:10;s:7:\"slugdiv\";i:11;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (51,2,'wp_user-settings','libraryContent=browse&editor=tinymce&posts_list_mode=list');
INSERT INTO `wp_usermeta` VALUES (52,2,'wp_user-settings-time','1515157652');
INSERT INTO `wp_usermeta` VALUES (73,2,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (74,2,'closedpostboxes_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (75,2,'metaboxhidden_post','a:16:{i:0;s:23:\"acf-group_5a3917d1a34a0\";i:1;s:23:\"acf-group_5a390d4875b31\";i:2;s:23:\"acf-group_5a390c2abc23d\";i:3;s:23:\"acf-group_5a390df209399\";i:4;s:23:\"acf-group_5a3a18abe102c\";i:5;s:23:\"acf-group_5a39209623ace\";i:6;s:23:\"acf-group_5a4b50d4a1286\";i:7;s:23:\"acf-group_5a0addd599761\";i:8;s:23:\"acf-group_59d247a794a25\";i:9;s:23:\"acf-group_59d246c91ec65\";i:10;s:23:\"acf-group_59b7c0b279b2a\";i:11;s:11:\"postexcerpt\";i:12;s:13:\"trackbacksdiv\";i:13;s:16:\"commentstatusdiv\";i:14;s:7:\"slugdiv\";i:15;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (76,2,'meta-box-order_post','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:51:\"submitdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:324:\"acf-group_5a3917d1a34a0,acf-group_5a390d4875b31,acf-group_5a390c2abc23d,acf-group_5a390df209399,acf-group_5a3a18abe102c,acf-group_5a39209623ace,acf-group_5a4b50d4a1286,acf-group_5a0addd599761,acf-group_59d247a794a25,acf-group_59d246c91ec65,acf-group_59b7c0b279b2a,postexcerpt,trackbacksdiv,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:18:\"relevanssi_hidebox\";}');
INSERT INTO `wp_usermeta` VALUES (77,2,'screen_layout_post','2');
INSERT INTO `wp_usermeta` VALUES (78,2,'edit_post_per_page','999');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (2,'vincit.admin','$P$BnZtk.2QmR.m4HuIdJfOobjsmJUxl0.','vincit-admin','wordpress@vincit.fi','','2017-12-27 14:20:22','',0,'Administrator');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-10 11:54:19
