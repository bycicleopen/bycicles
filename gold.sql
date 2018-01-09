﻿# SQL Manager 2011 for MySQL 5.1.0.2
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : gold


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `gold`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `gold`;

SET sql_mode = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';

#
# Структура для таблицы `address`: 
#

CREATE TABLE `address` (
  `address_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `customer_id` INTEGER(11) NOT NULL,
  `firstname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `lastname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `company` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `company_id` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `tax_id` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `address_1` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `address_2` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `city` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `postcode` VARCHAR(10) COLLATE utf8_general_ci NOT NULL,
  `country_id` INTEGER(11) NOT NULL DEFAULT 0,
  `zone_id` INTEGER(11) NOT NULL DEFAULT 0
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `affiliate`: 
#

CREATE TABLE `affiliate` (
  `affiliate_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `lastname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `email` VARCHAR(96) COLLATE utf8_general_ci NOT NULL,
  `telephone` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `fax` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `password` VARCHAR(40) COLLATE utf8_general_ci NOT NULL,
  `salt` VARCHAR(9) COLLATE utf8_general_ci NOT NULL,
  `company` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `website` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `address_1` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `address_2` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `city` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `postcode` VARCHAR(10) COLLATE utf8_general_ci NOT NULL,
  `country_id` INTEGER(11) NOT NULL,
  `zone_id` INTEGER(11) NOT NULL,
  `code` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `commission` DECIMAL(4,2) NOT NULL DEFAULT 0.00,
  `tax` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `payment` VARCHAR(6) COLLATE utf8_general_ci NOT NULL,
  `cheque` VARCHAR(100) COLLATE utf8_general_ci NOT NULL,
  `paypal` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `bank_name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `bank_branch_number` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `bank_swift_code` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `bank_account_name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `bank_account_number` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `ip` VARCHAR(40) COLLATE utf8_general_ci NOT NULL,
  `status` TINYINT(1) NOT NULL,
  `approved` TINYINT(1) NOT NULL,
  `date_added` DATETIME NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `affiliate_transaction`: 
#

CREATE TABLE `affiliate_transaction` (
  `affiliate_transaction_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` INTEGER(11) NOT NULL,
  `order_id` INTEGER(11) NOT NULL,
  `description` TEXT COLLATE utf8_general_ci NOT NULL,
  `amount` DECIMAL(15,4) NOT NULL,
  `date_added` DATETIME NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `attribute`: 
#

CREATE TABLE `attribute` (
  `attribute_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` INTEGER(11) NOT NULL,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=12 AVG_ROW_LENGTH=13 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `attribute` table  (LIMIT -488,500)
#

INSERT INTO `attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES 
  (1,6,1),
  (2,6,5),
  (3,6,3),
  (4,3,1),
  (5,3,2),
  (6,3,3),
  (7,3,4),
  (8,3,5),
  (9,3,6),
  (10,3,7),
  (11,3,8);
COMMIT;

#
# Структура для таблицы `attribute_description`: 
#

CREATE TABLE `attribute_description` (
  `attribute_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=21 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `attribute_description` table  (LIMIT -488,500)
#

INSERT INTO `attribute_description` (`attribute_id`, `language_id`, `name`) VALUES 
  (1,1,'Description'),
  (2,1,'No. of Cores'),
  (3,1,'Clockspeed'),
  (4,1,'test 1'),
  (5,1,'test 2'),
  (6,1,'test 3'),
  (7,1,'test 4'),
  (8,1,'test 5'),
  (9,1,'test 6'),
  (10,1,'test 7'),
  (11,1,'test 8');
COMMIT;

#
# Структура для таблицы `attribute_group`: 
#

CREATE TABLE `attribute_group` (
  `attribute_group_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=10 AVG_ROW_LENGTH=9 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `attribute_group` table  (LIMIT -492,500)
#

INSERT INTO `attribute_group` (`attribute_group_id`, `sort_order`) VALUES 
  (3,2),
  (4,1),
  (5,3),
  (6,4),
  (7,1),
  (8,2),
  (9,3);
COMMIT;

#
# Структура для таблицы `attribute_group_description`: 
#

CREATE TABLE `attribute_group_description` (
  `attribute_group_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=25 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `attribute_group_description` table  (LIMIT -485,500)
#

INSERT INTO `attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES 
  (3,1,'Память'),
  (3,2,'Memory'),
  (4,1,'Technical'),
  (4,2,'Technical'),
  (5,1,'Материнская плата'),
  (5,2,'Motherboard'),
  (6,1,'Процессор'),
  (6,2,'Processor'),
  (7,1,'Бренд'),
  (7,2,'Brand'),
  (8,1,'Тип'),
  (8,2,'Type'),
  (9,1,'Диаметр'),
  (9,2,'Diameter');
COMMIT;

#
# Структура для таблицы `banner`: 
#

CREATE TABLE `banner` (
  `banner_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `status` TINYINT(1) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=9 AVG_ROW_LENGTH=24 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `banner` table  (LIMIT -496,500)
#

INSERT INTO `banner` (`banner_id`, `name`, `status`) VALUES 
  (6,'HP Products',1),
  (7,'Samsung Tab',1),
  (8,'Manufacturers',1);
COMMIT;

#
# Структура для таблицы `banner_image`: 
#

CREATE TABLE `banner_image` (
  `banner_image_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `banner_id` INTEGER(11) NOT NULL,
  `link` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `image` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `product_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=85 AVG_ROW_LENGTH=104 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `banner_image` table  (LIMIT -491,500)
#

INSERT INTO `banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `product_id`) VALUES 
  (71,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=10','data/demo/sony_logo.jpg',0),
  (72,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=6','data/demo/palm_logo.jpg',0),
  (73,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','data/demo/apple_logo.jpg',0),
  (74,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=9','data/demo/canon_logo.jpg',0),
  (75,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=5','data/demo/htc_logo.jpg',0),
  (76,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','data/demo/hp_logo.jpg',0),
  (77,6,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','data/demo/hp_banner.jpg',0),
  (84,7,'index.php?route=product/product&amp;path=57&amp;product_id=49','data/slider/slider-bike.png',49);
COMMIT;

#
# Структура для таблицы `banner_image_description`: 
#

CREATE TABLE `banner_image_description` (
  `banner_image_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `banner_id` INTEGER(11) NOT NULL,
  `title` VARCHAR(64) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=27 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `banner_image_description` table  (LIMIT -483,500)
#

INSERT INTO `banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES 
  (71,1,8,'Sony'),
  (71,2,8,'Sony'),
  (72,1,8,'Palm'),
  (72,2,8,'Palm'),
  (73,1,8,'Apple'),
  (73,2,8,'Apple'),
  (74,1,8,'Canon'),
  (74,2,8,'Canon'),
  (75,1,8,'HTC'),
  (75,2,8,'HTC'),
  (76,1,8,'Hewlett-Packard'),
  (76,2,8,'Hewlett-Packard'),
  (77,1,6,'HP Banner'),
  (77,2,6,'HP Banner'),
  (84,1,7,'Кінетик 1'),
  (84,2,7,'Kinetik 1');
COMMIT;

#
# Структура для таблицы `category`: 
#

CREATE TABLE `category` (
  `category_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `image` VARCHAR(255) COLLATE utf8_general_ci DEFAULT NULL,
  `parent_id` INTEGER(11) NOT NULL DEFAULT 0,
  `top` TINYINT(1) NOT NULL,
  `column` INTEGER(3) NOT NULL,
  `sort_order` INTEGER(3) NOT NULL DEFAULT 0,
  `status` TINYINT(1) NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=72 AVG_ROW_LENGTH=44 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `category` table  (LIMIT -463,500)
#

INSERT INTO `category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES 
  (25,'',0,1,1,0,1,'2009-01-31 01:04:25','2017-12-29 13:59:51'),
  (28,'',33,0,0,1,1,'2009-02-02 13:11:12','2017-12-21 11:22:50'),
  (32,'',33,0,0,1,1,'2009-02-03 14:17:34','2017-12-21 11:21:09'),
  (33,'',0,1,1,1,1,'2009-02-03 14:17:55','2017-12-21 12:06:27'),
  (34,'data/demo/ipod_touch_4.jpg',0,1,4,2,1,'2009-02-03 14:18:11','2017-12-21 12:06:46'),
  (37,'',34,0,0,0,1,'2010-09-18 14:03:39','2011-04-22 01:55:08'),
  (38,'',34,0,0,0,1,'2010-09-18 14:03:51','2010-09-18 14:03:51'),
  (39,'',34,0,0,0,1,'2010-09-18 14:04:17','2011-04-22 01:55:20'),
  (40,'',34,0,0,0,1,'2010-09-18 14:05:36','2010-09-18 14:05:36'),
  (41,'',34,0,0,0,1,'2010-09-18 14:05:49','2011-04-22 01:55:30'),
  (42,'',34,0,0,0,1,'2010-09-18 14:06:34','2010-11-07 20:31:04'),
  (43,'',34,0,0,0,1,'2010-09-18 14:06:49','2011-04-22 01:55:40'),
  (44,'',34,0,0,0,1,'2010-09-21 15:39:21','2010-11-07 20:30:55'),
  (47,'',34,0,0,0,1,'2010-11-07 11:13:16','2010-11-07 11:13:16'),
  (48,'',34,0,0,0,1,'2010-11-07 11:13:33','2010-11-07 11:13:33'),
  (49,'',34,0,0,0,1,'2010-11-07 11:14:04','2010-11-07 11:14:04'),
  (50,'',34,0,0,0,1,'2010-11-07 11:14:23','2011-04-22 01:16:01'),
  (51,'',34,0,0,0,1,'2010-11-07 11:14:38','2011-04-22 01:16:13'),
  (52,'',34,0,0,0,1,'2010-11-07 11:16:09','2011-04-22 01:54:57'),
  (53,'',34,0,0,0,1,'2010-11-07 11:28:53','2011-04-22 01:14:36'),
  (54,'',34,0,0,0,1,'2010-11-07 11:29:16','2011-04-22 01:16:50'),
  (55,'',34,0,0,0,1,'2010-11-08 10:31:32','2010-11-08 10:31:32'),
  (56,'',34,0,0,0,1,'2010-11-08 10:31:50','2011-04-22 01:16:37'),
  (58,'',52,0,0,0,1,'2011-05-08 13:44:16','2011-05-08 13:44:16'),
  (59,'',0,1,1,3,1,'2017-12-21 11:23:42','2017-12-21 12:07:06'),
  (60,'',33,1,1,0,1,'2017-12-21 11:47:15','2017-12-21 11:47:15'),
  (61,'',0,1,1,4,1,'2017-12-21 12:04:10','2017-12-21 12:07:23'),
  (62,'',0,1,1,5,1,'2017-12-21 12:04:52','2017-12-21 12:07:52'),
  (64,'data/category/main/cross.jpg',25,1,1,0,1,'2017-12-29 09:53:22','2017-12-29 10:11:23'),
  (65,'data/category/main/woman.jpg',25,0,1,1,1,'2017-12-29 09:54:34','2017-12-29 10:07:55'),
  (66,'data/category/main/kids.jpg',25,0,1,2,1,'2017-12-29 09:55:18','2017-12-29 10:06:44'),
  (67,'data/category/main/kids.jpg',25,0,1,3,1,'2017-12-29 09:55:54','2017-12-29 10:09:51'),
  (68,'data/category/main/city.jpg',25,0,1,4,1,'2017-12-29 09:56:51','2017-12-29 10:07:15'),
  (69,'data/category/main/portable.jpg',25,0,1,5,1,'2017-12-29 09:57:19','2017-12-29 10:10:23'),
  (70,'data/category/main/road.jpg',25,0,1,6,1,'2017-12-29 09:58:30','2017-12-29 10:10:43'),
  (71,'data/category/main/other.jpg',25,0,1,7,1,'2017-12-29 09:59:00','2017-12-29 10:07:35');
COMMIT;

#
# Структура для таблицы `category_description`: 
#

CREATE TABLE `category_description` (
  `category_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `description` TEXT COLLATE utf8_general_ci NOT NULL,
  `meta_description` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `meta_keyword` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `seo_title` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `seo_h1` VARCHAR(255) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=54 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `category_description` table  (LIMIT -427,500)
#

INSERT INTO `category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `seo_title`, `seo_h1`) VALUES 
  (25,1,'Велосипеды','','','','',''),
  (25,2,'Bycicles','','','','',''),
  (28,1,'Держатели телефонов','','','','',''),
  (28,2,'Holders of telephones','','','','',''),
  (32,1,'Багажники','','','','',''),
  (32,2,'Luggage carriers','','','','',''),
  (33,1,'Аксессуары','','','','',''),
  (33,2,'Accessories','','','','',''),
  (34,1,'Запчасти','&lt;p&gt;\r\n\tShop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n','','','',''),
  (34,2,'spare parts','&lt;p&gt;\r\n\tShop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n','','','',''),
  (37,1,'test 5','','','','',''),
  (37,2,'test 5','','','','',''),
  (38,1,'test 4','','','','',''),
  (38,2,'test 4','','','','',''),
  (39,1,'test 6','','','','',''),
  (39,2,'test 6','','','','',''),
  (40,1,'test 7','','','','',''),
  (40,2,'test 7','','','','',''),
  (41,1,'test 8','','','','',''),
  (41,2,'test 8','','','','',''),
  (42,1,'test 9','','','','',''),
  (42,2,'test 9','','','','',''),
  (43,1,'test 11','','','','',''),
  (43,2,'test 11','','','','',''),
  (44,1,'test 12','','','','',''),
  (44,2,'test 12','','','','',''),
  (47,1,'test 15','','','','',''),
  (47,2,'test 15','','','','',''),
  (48,1,'test 16','','','','',''),
  (48,2,'test 16','','','','',''),
  (49,1,'test 17','','','','',''),
  (49,2,'test 17','','','','',''),
  (50,1,'test 18','','','','',''),
  (50,2,'test 18','','','','',''),
  (51,1,'test 19','','','','',''),
  (51,2,'test 19','','','','',''),
  (52,1,'test 20','','','','',''),
  (52,2,'test 20','','','','',''),
  (53,1,'test 21','','','','',''),
  (53,2,'test 21','','','','',''),
  (54,1,'test 22','','','','',''),
  (54,2,'test 22','','','','',''),
  (55,1,'test 23','','','','',''),
  (55,2,'test 23','','','','',''),
  (56,1,'test 24','','','','',''),
  (56,2,'test 24','','','','',''),
  (58,1,'test 25','','','','',''),
  (58,2,'test 25','','','','',''),
  (59,1,'Инструменты и ремонт','','','','',''),
  (59,2,'Tools and repair','','','','',''),
  (60,1,'Звонки','','','','',''),
  (60,2,'Balls','','','','',''),
  (61,1,'Экипировка','','','','',''),
  (61,2,'Equipment','','','','',''),
  (62,1,'Активный Отдых','','','','',''),
  (62,2,'Leisure','','','','',''),
  (64,1,'Горные велосипеды','','','','',''),
  (64,2,'Mountain bikes','','','','',''),
  (65,1,'Женские велосипеды','','','','',''),
  (65,2,'Women''s bicycles','','','','',''),
  (66,1,'Детские велосипеды','','','','',''),
  (66,2,'Children''s bicycles','','','','',''),
  (67,1,'Подгостковые велосипеды','','','','',''),
  (67,2,'Bicycles for teenagers','','','','',''),
  (68,1,'Дорожные велосипеды','','','','',''),
  (68,2,'Road bicycles','','','','',''),
  (69,1,'Складные велосипеды','','','','',''),
  (69,2,'Folding bicycles','','','','',''),
  (70,1,'Шоссейные велосипеды','','','','',''),
  (70,2,'Road Bikes','','','','',''),
  (71,1,'Другие','','','','',''),
  (71,2,'Other','','','','','');
COMMIT;

#
# Структура для таблицы `category_filter`: 
#

CREATE TABLE `category_filter` (
  `category_id` INTEGER(11) NOT NULL,
  `filter_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `category_path`: 
#

CREATE TABLE `category_path` (
  `category_id` INTEGER(11) NOT NULL,
  `path_id` INTEGER(11) NOT NULL,
  `level` INTEGER(11) NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=13 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `category_path` table  (LIMIT -432,500)
#

INSERT INTO `category_path` (`category_id`, `path_id`, `level`) VALUES 
  (25,25,0),
  (28,28,1),
  (28,33,0),
  (32,32,1),
  (32,33,0),
  (33,33,0),
  (34,34,0),
  (37,34,0),
  (37,37,1),
  (38,34,0),
  (38,38,1),
  (39,34,0),
  (39,39,1),
  (40,34,0),
  (40,40,1),
  (41,34,0),
  (41,41,1),
  (42,34,0),
  (42,42,1),
  (43,34,0),
  (43,43,1),
  (44,34,0),
  (44,44,1),
  (47,34,0),
  (47,47,1),
  (48,34,0),
  (48,48,1),
  (49,34,0),
  (49,49,1),
  (50,34,0),
  (50,50,1),
  (51,34,0),
  (51,51,1),
  (52,34,0),
  (52,52,1),
  (53,34,0),
  (53,53,1),
  (54,34,0),
  (54,54,1),
  (55,34,0),
  (55,55,1),
  (56,34,0),
  (56,56,1),
  (58,34,0),
  (58,52,1),
  (58,58,2),
  (59,59,0),
  (60,33,0),
  (60,60,1),
  (61,61,0),
  (62,62,0),
  (64,25,0),
  (64,64,1),
  (65,25,0),
  (65,65,1),
  (66,25,0),
  (66,66,1),
  (67,25,0),
  (67,67,1),
  (68,25,0),
  (68,68,1),
  (69,25,0),
  (69,69,1),
  (70,25,0),
  (70,70,1),
  (71,25,0),
  (71,71,1);
COMMIT;

#
# Структура для таблицы `category_to_layout`: 
#

CREATE TABLE `category_to_layout` (
  `category_id` INTEGER(11) NOT NULL,
  `store_id` INTEGER(11) NOT NULL,
  `layout_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `category_to_store`: 
#

CREATE TABLE `category_to_store` (
  `category_id` INTEGER(11) NOT NULL,
  `store_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=9 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `category_to_store` table  (LIMIT -463,500)
#

INSERT INTO `category_to_store` (`category_id`, `store_id`) VALUES 
  (25,0),
  (28,0),
  (32,0),
  (33,0),
  (34,0),
  (37,0),
  (38,0),
  (39,0),
  (40,0),
  (41,0),
  (42,0),
  (43,0),
  (44,0),
  (47,0),
  (48,0),
  (49,0),
  (50,0),
  (51,0),
  (52,0),
  (53,0),
  (54,0),
  (55,0),
  (56,0),
  (58,0),
  (59,0),
  (60,0),
  (61,0),
  (62,0),
  (64,0),
  (65,0),
  (66,0),
  (67,0),
  (68,0),
  (69,0),
  (70,0),
  (71,0);
COMMIT;

#
# Структура для таблицы `country`: 
#

CREATE TABLE `country` (
  `country_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `iso_code_2` VARCHAR(2) COLLATE utf8_general_ci NOT NULL,
  `iso_code_3` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `address_format` TEXT COLLATE utf8_general_ci NOT NULL,
  `postcode_required` TINYINT(1) NOT NULL,
  `status` TINYINT(1) NOT NULL DEFAULT 1
)ENGINE=MyISAM
AUTO_INCREMENT=240 AVG_ROW_LENGTH=40 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `country` table  (LIMIT -260,500)
#

INSERT INTO `country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES 
  (1,'Афганистан','AF','AFG','',0,1),
  (2,'Албания','AL','ALB','',0,1),
  (3,'Алжир','DZ','DZA','',0,1),
  (4,'Восточное Самоа','AS','ASM','',0,1),
  (5,'Андорра','AD','AND','',0,1),
  (6,'Ангола','AO','AGO','',0,1),
  (7,'Ангилья','AI','AIA','',0,1),
  (8,'Антарктида','AQ','ATA','',0,1),
  (9,'Антигуа и Барбуда','AG','ATG','',0,1),
  (10,'Аргентина','AR','ARG','',0,1),
  (11,'Армения','AM','ARM','',0,1),
  (12,'Аруба','AW','ABW','',0,1),
  (13,'Австралия','AU','AUS','',0,1),
  (14,'Австрия','AT','AUT','',0,1),
  (15,'Азербайджан','AZ','AZE','',0,1),
  (16,'Багамские острова','BS','BHS','',0,1),
  (17,'Бахрейн','BH','BHR','',0,1),
  (18,'Бангладеш','BD','BGD','',0,1),
  (19,'Барбадос','BB','BRB','',0,1),
  (20,'Белоруссия (Беларусь)','BY','BLR','',0,1),
  (21,'Бельгия','BE','BEL','',0,1),
  (22,'Белиз','BZ','BLZ','',0,1),
  (23,'Бенин','BJ','BEN','',0,1),
  (24,'Бермудские острова','BM','BMU','',0,1),
  (25,'Бутан','BT','BTN','',0,1),
  (26,'Боливия','BO','BOL','',0,1),
  (27,'Босния и Герцеговина','BA','BIH','',0,1),
  (28,'Ботсвана','BW','BWA','',0,1),
  (29,'Остров Буве','BV','BVT','',0,1),
  (30,'Бразилия','BR','BRA','',0,1),
  (31,'Британская территория в Индийском океане','IO','IOT','',0,1),
  (32,'Бруней','BN','BRN','',0,1),
  (33,'Болгария','BG','BGR','',0,1),
  (34,'Буркина-Фасо','BF','BFA','',0,1),
  (35,'Бурунди','BI','BDI','',0,1),
  (36,'Камбоджа','KH','KHM','',0,1),
  (37,'Камерун','CM','CMR','',0,1),
  (38,'Канада','CA','CAN','',0,1),
  (39,'Кабо-Верде','CV','CPV','',0,1),
  (40,'Каймановы острова','KY','CYM','',0,1),
  (41,'Центрально-Африканская Республика','CF','CAF','',0,1),
  (42,'Чад','TD','TCD','',0,1),
  (43,'Чили','CL','CHL','',0,1),
  (44,'Китайская Народная Республика','CN','CHN','',0,1),
  (45,'Остров Рождества','CX','CXR','',0,1),
  (46,'Кокосовые острова','CC','CCK','',0,1),
  (47,'Колумбия','CO','COL','',0,1),
  (48,'Коморские острова','KM','COM','',0,1),
  (49,'Конго','CG','COG','',0,1),
  (50,'Острова Кука','CK','COK','',0,1),
  (51,'Коста-Рика','CR','CRI','',0,1),
  (52,'Кот д''Ивуар','CI','CIV','',0,1),
  (53,'Хорватия','HR','HRV','',0,1),
  (54,'Куба','CU','CUB','',0,1),
  (55,'Кипр','CY','CYP','',0,1),
  (56,'Чехия','CZ','CZE','',0,1),
  (57,'Дания','DK','DNK','',0,1),
  (58,'Джибути','DJ','DJI','',0,1),
  (59,'Доминика','DM','DMA','',0,1),
  (60,'Доминиканская Республика','DO','DOM','',0,1),
  (61,'Восточный Тимор','TP','TMP','',0,1),
  (62,'Эквадор','EC','ECU','',0,1),
  (63,'Египет','EG','EGY','',0,1),
  (64,'Сальвадор','SV','SLV','',0,1),
  (65,'Экваториальная Гвинея','GQ','GNQ','',0,1),
  (66,'Эритрея','ER','ERI','',0,1),
  (67,'Эстония','EE','EST','',0,1),
  (68,'Эфиопия','ET','ETH','',0,1),
  (69,'Фолклендские (Мальвинские) острова','FK','FLK','',0,1),
  (70,'Фарерские острова','FO','FRO','',0,1),
  (71,'Фиджи','FJ','FJI','',0,1),
  (72,'Финляндия','FI','FIN','',0,1),
  (73,'Франция','FR','FRA','',0,1),
  (74,'Франция, Метрополия','FX','FXX','',0,1),
  (75,'Французская Гвиана','GF','GUF','',0,1),
  (76,'Французская Полинезия','PF','PYF','',0,1),
  (77,'Французские Южные территории','TF','ATF','',0,1),
  (78,'Габон','GA','GAB','',0,1),
  (79,'Гамбия','GM','GMB','',0,1),
  (80,'Грузия','GE','GEO','',0,1),
  (81,'Германия','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),
  (82,'Гана','GH','GHA','',0,1),
  (83,'Гибралтар','GI','GIB','',0,1),
  (84,'Греция','GR','GRC','',0,1),
  (85,'Гренландия','GL','GRL','',0,1),
  (86,'Гренада','GD','GRD','',0,1),
  (87,'Гваделупа','GP','GLP','',0,1),
  (88,'Гуам','GU','GUM','',0,1),
  (89,'Гватемала','GT','GTM','',0,1),
  (90,'Гвинея','GN','GIN','',0,1),
  (91,'Гвинея-Бисау','GW','GNB','',0,1),
  (92,'Гайана','GY','GUY','',0,1),
  (93,'Гаити','HT','HTI','',0,1),
  (94,'Херд и Макдональд, острова','HM','HMD','',0,1),
  (95,'Гондурас','HN','HND','',0,1),
  (96,'Гонконг','HK','HKG','',0,1),
  (97,'Венгрия','HU','HUN','',0,1),
  (98,'Исландия','IS','ISL','',0,1),
  (99,'Индия','IN','IND','',0,1),
  (100,'Индонезия','ID','IDN','',0,1),
  (101,'Иран','IR','IRN','',0,1),
  (102,'Ирак','IQ','IRQ','',0,1),
  (103,'Ирландия','IE','IRL','',0,1),
  (104,'Израиль','IL','ISR','',0,1),
  (105,'Италия','IT','ITA','',0,1),
  (106,'Ямайка','JM','JAM','',0,1),
  (107,'Япония','JP','JPN','',0,1),
  (108,'Иордания','JO','JOR','',0,1),
  (109,'Казахстан','KZ','KAZ','',0,1),
  (110,'Кения','KE','KEN','',0,1),
  (111,'Кирибати','KI','KIR','',0,1),
  (112,'Корейская Народно-Демократическая Республика','KP','PRK','',0,1),
  (113,'Республика Корея','KR','KOR','',0,1),
  (114,'Кувейт','KW','KWT','',0,1),
  (115,'Киргизия (Кыргызстан)','KG','KGZ','',0,1),
  (116,'Лаос','LA','LAO','',0,1),
  (117,'Латвия','LV','LVA','',0,1),
  (118,'Ливан','LB','LBN','',0,1),
  (119,'Лесото','LS','LSO','',0,1),
  (120,'Либерия','LR','LBR','',0,1),
  (121,'Ливия','LY','LBY','',0,1),
  (122,'Лихтенштейн','LI','LIE','',0,1),
  (123,'Литва','LT','LTU','',0,1),
  (124,'Люксембург','LU','LUX','',0,1),
  (125,'Макао','MO','MAC','',0,1),
  (126,'Македония','MK','MKD','',0,1),
  (127,'Мадагаскар','MG','MDG','',0,1),
  (128,'Малави','MW','MWI','',0,1),
  (129,'Малайзия','MY','MYS','',0,1),
  (130,'Мальдивы','MV','MDV','',0,1),
  (131,'Мали','ML','MLI','',0,1),
  (132,'Мальта','MT','MLT','',0,1),
  (133,'Маршалловы острова','MH','MHL','',0,1),
  (134,'Мартиника','MQ','MTQ','',0,1),
  (135,'Мавритания','MR','MRT','',0,1),
  (136,'Маврикий','MU','MUS','',0,1),
  (137,'Майотта','YT','MYT','',0,1),
  (138,'Мексика','MX','MEX','',0,1),
  (139,'Микронезия','FM','FSM','',0,1),
  (140,'Молдова','MD','MDA','',0,1),
  (141,'Монако','MC','MCO','',0,1),
  (142,'Монголия','MN','MNG','',0,1),
  (143,'Монтсеррат','MS','MSR','',0,1),
  (144,'Марокко','MA','MAR','',0,1),
  (145,'Мозамбик','MZ','MOZ','',0,1),
  (146,'Мьянма','MM','MMR','',0,1),
  (147,'Намибия','NA','NAM','',0,1),
  (148,'Науру','NR','NRU','',0,1),
  (149,'Непал','NP','NPL','',0,1),
  (150,'Нидерланды','NL','NLD','',0,1),
  (151,'Антильские (Нидерландские) острова','AN','ANT','',0,1),
  (152,'Новая Каледония','NC','NCL','',0,1),
  (153,'Новая Зеландия','NZ','NZL','',0,1),
  (154,'Никарагуа','NI','NIC','',0,1),
  (155,'Нигер','NE','NER','',0,1),
  (156,'Нигерия','NG','NGA','',0,1),
  (157,'Ниуэ','NU','NIU','',0,1),
  (158,'Остров Норфолк','NF','NFK','',0,1),
  (159,'Северные Марианские острова','MP','MNP','',0,1),
  (160,'Норвегия','NO','NOR','',0,1),
  (161,'Оман','OM','OMN','',0,1),
  (162,'Пакистан','PK','PAK','',0,1),
  (163,'Палау','PW','PLW','',0,1),
  (164,'Панама','PA','PAN','',0,1),
  (165,'Папуа - Новая Гвинея','PG','PNG','',0,1),
  (166,'Парагвай','PY','PRY','',0,1),
  (167,'Перу','PE','PER','',0,1),
  (168,'Филиппины','PH','PHL','',0,1),
  (169,'Острова Питкэрн','PN','PCN','',0,1),
  (170,'Польша','PL','POL','',0,1),
  (171,'Португалия','PT','PRT','',0,1),
  (172,'Пуэрто-Рико','PR','PRI','',0,1),
  (173,'Катар','QA','QAT','',0,1),
  (174,'Реюньон','RE','REU','',0,1),
  (175,'Румыния','RO','ROM','',0,1),
  (176,'Российская Федерация','RU','RUS','',0,1),
  (177,'Руанда','RW','RWA','',0,1),
  (178,'Сент-Китс и Невис','KN','KNA','',0,1),
  (179,'Сент-Люсия','LC','LCA','',0,1),
  (180,'Сент-Винсент и Гренадины','VC','VCT','',0,1),
  (181,'Западное Самоа','WS','WSM','',0,1),
  (182,'Сан-Марино','SM','SMR','',0,1),
  (183,'Сан-Томе и Принсипи','ST','STP','',0,1),
  (184,'Саудовская Аравия','SA','SAU','',0,1),
  (185,'Сенегал','SN','SEN','',0,1),
  (186,'Сейшельские острова','SC','SYC','',0,1),
  (187,'Сьерра-Леоне','SL','SLE','',0,1),
  (188,'Сингапур','SG','SGP','',0,1),
  (189,'Словакия','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),
  (190,'Словения','SI','SVN','',0,1),
  (191,'Соломоновы острова','SB','SLB','',0,1),
  (192,'Сомали','SO','SOM','',0,1),
  (193,'Южно-Африканская Республика','ZA','ZAF','',0,1),
  (194,'Южная Джорджия и Южные Сандвичевы острова','GS','SGS','',0,1),
  (195,'Испания','ES','ESP','',0,1),
  (196,'Шри-Ланка','LK','LKA','',0,1),
  (197,'Остров Святой Елены','SH','SHN','',0,1),
  (198,'Сен-Пьер и Микелон','PM','SPM','',0,1),
  (199,'Судан','SD','SDN','',0,1),
  (200,'Суринам','SR','SUR','',0,1),
  (201,'Шпицберген и Ян Майен','SJ','SJM','',0,1),
  (202,'Свазиленд','SZ','SWZ','',0,1),
  (203,'Швеция','SE','SWE','',0,1),
  (204,'Швейцария','CH','CHE','',0,1),
  (205,'Сирия','SY','SYR','',0,1),
  (206,'Тайвань (провинция Китая)','TW','TWN','',0,1),
  (207,'Таджикистан','TJ','TJK','',0,1),
  (208,'Танзания','TZ','TZA','',0,1),
  (209,'Таиланд','TH','THA','',0,1),
  (210,'Того','TG','TGO','',0,1),
  (211,'Токелау','TK','TKL','',0,1),
  (212,'Тонга','TO','TON','',0,1),
  (213,'Тринидад и Тобаго','TT','TTO','',0,1),
  (214,'Тунис','TN','TUN','',0,1),
  (215,'Турция','TR','TUR','',0,1),
  (216,'Туркменистан','TM','TKM','',0,1),
  (217,'Острова Теркс и Кайкос','TC','TCA','',0,1),
  (218,'Тувалу','TV','TUV','',0,1),
  (219,'Уганда','UG','UGA','',0,1),
  (220,'Украина','UA','UKR','',0,1),
  (221,'Объединенные Арабские Эмираты','AE','ARE','',0,1),
  (222,'Великобритания','GB','GBR','',1,1),
  (223,'Соединенные Штаты Америки','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),
  (224,'Мелкие отдаленные острова США','UM','UMI','',0,1),
  (225,'Уругвай','UY','URY','',0,1),
  (226,'Узбекистан','UZ','UZB','',0,1),
  (227,'Вануату','VU','VUT','',0,1),
  (228,'Ватикан','VA','VAT','',0,1),
  (229,'Венесуэла','VE','VEN','',0,1),
  (230,'Вьетнам','VN','VNM','',0,1),
  (231,'Виргинские острова (Британские)','VG','VGB','',0,1),
  (232,'Виргинские острова (США)','VI','VIR','',0,1),
  (233,'Уоллис и Футуна','WF','WLF','',0,1),
  (234,'Западная Сахара','EH','ESH','',0,1),
  (235,'Йемен','YE','YEM','',0,1),
  (236,'Сербия и Черногория','CS','SCG','',0,1),
  (237,'Заир','ZR','ZAR','',0,1),
  (238,'Замбия','ZM','ZMB','',0,1),
  (239,'Зимбабве','ZW','ZWE','',0,1);
COMMIT;

#
# Структура для таблицы `coupon`: 
#

CREATE TABLE `coupon` (
  `coupon_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `code` VARCHAR(10) COLLATE utf8_general_ci NOT NULL,
  `type` CHAR(1) COLLATE utf8_general_ci NOT NULL,
  `discount` DECIMAL(15,4) NOT NULL,
  `logged` TINYINT(1) NOT NULL,
  `shipping` TINYINT(1) NOT NULL,
  `total` DECIMAL(15,4) NOT NULL,
  `date_start` DATE NOT NULL DEFAULT '0000-00-00',
  `date_end` DATE NOT NULL DEFAULT '0000-00-00',
  `uses_total` INTEGER(11) NOT NULL,
  `uses_customer` VARCHAR(11) COLLATE utf8_general_ci NOT NULL,
  `status` TINYINT(1) NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=7 AVG_ROW_LENGTH=78 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `coupon` table  (LIMIT -496,500)
#

INSERT INTO `coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES 
  (4,'-10% скидка','2222','P',10.0000,0,0,0.0000,'2011-01-01','2012-01-01',10,'10',1,'2009-01-27 13:55:03'),
  (5,'Бесплатная доставка','3333','P',0.0000,0,1,100.0000,'2009-03-01','2009-08-31',10,'10',1,'2009-03-14 21:13:53'),
  (6,'-10.00 скидка','1111','F',10.0000,0,0,10.0000,'1970-11-01','2020-11-01',100000,'10000',1,'2009-03-14 21:15:18');
COMMIT;

#
# Структура для таблицы `coupon_category`: 
#

CREATE TABLE `coupon_category` (
  `coupon_id` INTEGER(11) NOT NULL,
  `category_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `coupon_history`: 
#

CREATE TABLE `coupon_history` (
  `coupon_history_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` INTEGER(11) NOT NULL,
  `order_id` INTEGER(11) NOT NULL,
  `customer_id` INTEGER(11) NOT NULL,
  `amount` DECIMAL(15,4) NOT NULL,
  `date_added` DATETIME NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `coupon_product`: 
#

CREATE TABLE `coupon_product` (
  `coupon_product_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` INTEGER(11) NOT NULL,
  `product_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `currency`: 
#

CREATE TABLE `currency` (
  `currency_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `code` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `symbol_left` VARCHAR(12) COLLATE utf8_general_ci NOT NULL,
  `symbol_right` VARCHAR(12) COLLATE utf8_general_ci NOT NULL,
  `decimal_place` CHAR(1) COLLATE utf8_general_ci NOT NULL,
  `value` FLOAT(15,8) NOT NULL,
  `status` TINYINT(1) NOT NULL,
  `date_modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=4 AVG_ROW_LENGTH=40 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `currency` table  (LIMIT -496,500)
#

INSERT INTO `currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES 
  (1,'Рубль','RUB','',' р.','2',1.00000000,1,'2018-01-09 12:44:04'),
  (2,'US Dollar','USD','$','','2',1.00000000,1,'2018-01-02 10:49:49'),
  (3,'Euro','EUR','','€','2',0.74959999,1,'2012-03-31 17:33:53');
COMMIT;

#
# Структура для таблицы `custom_field`: 
#

CREATE TABLE `custom_field` (
  `custom_field_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `value` TEXT COLLATE utf8_general_ci NOT NULL,
  `required` TINYINT(1) NOT NULL,
  `location` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `position` INTEGER(3) NOT NULL,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `custom_field_description`: 
#

CREATE TABLE `custom_field_description` (
  `custom_field_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(128) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `custom_field_to_customer_group`: 
#

CREATE TABLE `custom_field_to_customer_group` (
  `custom_field_id` INTEGER(11) NOT NULL,
  `customer_group_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `custom_field_value`: 
#

CREATE TABLE `custom_field_value` (
  `custom_field_value_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` INTEGER(11) NOT NULL,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `custom_field_value_description`: 
#

CREATE TABLE `custom_field_value_description` (
  `custom_field_value_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `custom_field_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(128) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `customer`: 
#

CREATE TABLE `customer` (
  `customer_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `store_id` INTEGER(11) NOT NULL DEFAULT 0,
  `firstname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `lastname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `email` VARCHAR(96) COLLATE utf8_general_ci NOT NULL,
  `telephone` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `fax` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `password` VARCHAR(40) COLLATE utf8_general_ci NOT NULL,
  `salt` VARCHAR(9) COLLATE utf8_general_ci NOT NULL,
  `cart` TEXT COLLATE utf8_general_ci,
  `wishlist` TEXT COLLATE utf8_general_ci,
  `newsletter` TINYINT(1) NOT NULL DEFAULT 0,
  `address_id` INTEGER(11) NOT NULL DEFAULT 0,
  `customer_group_id` INTEGER(11) NOT NULL,
  `ip` VARCHAR(40) COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` TINYINT(1) NOT NULL,
  `approved` TINYINT(1) NOT NULL,
  `token` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `customer_ban_ip`: 
#

CREATE TABLE `customer_ban_ip` (
  `customer_ban_ip_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `ip` VARCHAR(40) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `customer_field`: 
#

CREATE TABLE `customer_field` (
  `customer_id` INTEGER(11) NOT NULL,
  `custom_field_id` INTEGER(11) NOT NULL,
  `custom_field_value_id` INTEGER(11) NOT NULL,
  `name` INTEGER(128) NOT NULL,
  `value` TEXT COLLATE utf8_general_ci NOT NULL,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `customer_group`: 
#

CREATE TABLE `customer_group` (
  `customer_group_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `approval` INTEGER(1) NOT NULL,
  `company_id_display` INTEGER(1) NOT NULL,
  `company_id_required` INTEGER(1) NOT NULL,
  `tax_id_display` INTEGER(1) NOT NULL,
  `tax_id_required` INTEGER(1) NOT NULL,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=2 AVG_ROW_LENGTH=29 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `customer_group` table  (LIMIT -498,500)
#

INSERT INTO `customer_group` (`customer_group_id`, `approval`, `company_id_display`, `company_id_required`, `tax_id_display`, `tax_id_required`, `sort_order`) VALUES 
  (1,0,1,0,0,1,1);
COMMIT;

#
# Структура для таблицы `customer_group_description`: 
#

CREATE TABLE `customer_group_description` (
  `customer_group_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `description` TEXT COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=28 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `customer_group_description` table  (LIMIT -498,500)
#

INSERT INTO `customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES 
  (1,1,'Default','test');
COMMIT;

#
# Структура для таблицы `customer_history`: 
#

CREATE TABLE `customer_history` (
  `customer_history_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `customer_id` INTEGER(11) NOT NULL,
  `comment` TEXT COLLATE utf8_general_ci NOT NULL,
  `date_added` DATETIME NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `customer_ip`: 
#

CREATE TABLE `customer_ip` (
  `customer_ip_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `customer_id` INTEGER(11) NOT NULL,
  `ip` VARCHAR(40) COLLATE utf8_general_ci NOT NULL,
  `date_added` DATETIME NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `customer_online`: 
#

CREATE TABLE `customer_online` (
  `ip` VARCHAR(40) COLLATE utf8_general_ci NOT NULL,
  `customer_id` INTEGER(11) NOT NULL,
  `url` TEXT COLLATE utf8_general_ci NOT NULL,
  `referer` TEXT COLLATE utf8_general_ci NOT NULL,
  `date_added` DATETIME NOT NULL
)ENGINE=MyISAM
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `customer_reward`: 
#

CREATE TABLE `customer_reward` (
  `customer_reward_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `customer_id` INTEGER(11) NOT NULL DEFAULT 0,
  `order_id` INTEGER(11) NOT NULL DEFAULT 0,
  `description` TEXT COLLATE utf8_general_ci NOT NULL,
  `points` INTEGER(8) NOT NULL DEFAULT 0,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `customer_transaction`: 
#

CREATE TABLE `customer_transaction` (
  `customer_transaction_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `customer_id` INTEGER(11) NOT NULL,
  `order_id` INTEGER(11) NOT NULL,
  `description` TEXT COLLATE utf8_general_ci NOT NULL,
  `amount` DECIMAL(15,4) NOT NULL,
  `date_added` DATETIME NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `download`: 
#

CREATE TABLE `download` (
  `download_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `filename` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `mask` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `remaining` INTEGER(11) NOT NULL DEFAULT 0,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `download_description`: 
#

CREATE TABLE `download_description` (
  `download_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `extension`: 
#

CREATE TABLE `extension` (
  `extension_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `code` VARCHAR(32) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=438 AVG_ROW_LENGTH=24 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `extension` table  (LIMIT -475,500)
#

INSERT INTO `extension` (`extension_id`, `type`, `code`) VALUES 
  (22,'total','shipping'),
  (23,'payment','cod'),
  (57,'total','sub_total'),
  (58,'total','tax'),
  (59,'total','total'),
  (349,'total','handling'),
  (350,'total','low_order_fee'),
  (387,'shipping','flat'),
  (389,'total','coupon'),
  (390,'total','credit'),
  (393,'total','reward'),
  (398,'total','voucher'),
  (407,'payment','free_checkout'),
  (408,'module','account'),
  (410,'module','banner'),
  (413,'module','category'),
  (419,'module','slideshow'),
  (426,'module','carousel'),
  (427,'module','featured'),
  (429,'module','information'),
  (432,'module','special'),
  (435,'module','maincategory'),
  (436,'module','maincategory'),
  (437,'module','latest');
COMMIT;

#
# Структура для таблицы `filter`: 
#

CREATE TABLE `filter` (
  `filter_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` INTEGER(11) NOT NULL,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=3 AVG_ROW_LENGTH=13 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `filter` table  (LIMIT -497,500)
#

INSERT INTO `filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES 
  (1,1,1),
  (2,1,2);
COMMIT;

#
# Структура для таблицы `filter_description`: 
#

CREATE TABLE `filter_description` (
  `filter_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `filter_group_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=44 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `filter_description` table  (LIMIT -495,500)
#

INSERT INTO `filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES 
  (1,1,1,'Бренд'),
  (1,2,1,'Brand'),
  (2,1,1,'Тип велосипеда'),
  (2,2,1,'Bycicle''s type');
COMMIT;

#
# Структура для таблицы `filter_group`: 
#

CREATE TABLE `filter_group` (
  `filter_group_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=2 AVG_ROW_LENGTH=9 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `filter_group` table  (LIMIT -498,500)
#

INSERT INTO `filter_group` (`filter_group_id`, `sort_order`) VALUES 
  (1,5);
COMMIT;

#
# Структура для таблицы `filter_group_description`: 
#

CREATE TABLE `filter_group_description` (
  `filter_group_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=54 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `filter_group_description` table  (LIMIT -497,500)
#

INSERT INTO `filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES 
  (1,1,'Фильтр Велосклад'),
  (1,2,'Varehouse Filter');
COMMIT;

#
# Структура для таблицы `geo_zone`: 
#

CREATE TABLE `geo_zone` (
  `geo_zone_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `description` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `date_modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=4 AVG_ROW_LENGTH=56 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `geo_zone` table  (LIMIT -498,500)
#

INSERT INTO `geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES 
  (3,'НДС','Облагаемые НДС','2010-02-26 22:33:24','2009-01-06 23:26:25');
COMMIT;

#
# Структура для таблицы `information`: 
#

CREATE TABLE `information` (
  `information_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `bottom` INTEGER(1) NOT NULL DEFAULT 0,
  `sort_order` INTEGER(3) NOT NULL DEFAULT 0,
  `status` TINYINT(1) NOT NULL DEFAULT 1
)ENGINE=MyISAM
AUTO_INCREMENT=11 AVG_ROW_LENGTH=14 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `information` table  (LIMIT -491,500)
#

INSERT INTO `information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES 
  (3,1,3,1),
  (4,1,1,1),
  (5,1,4,0),
  (6,1,2,1),
  (7,1,910,1),
  (8,1,920,1),
  (9,1,930,1),
  (10,1,940,1);
COMMIT;

#
# Структура для таблицы `information_description`: 
#

CREATE TABLE `information_description` (
  `information_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `title` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `description` TEXT COLLATE utf8_general_ci NOT NULL,
  `meta_description` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `meta_keyword` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `seo_title` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `seo_h1` VARCHAR(255) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=114 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `information_description` table  (LIMIT -483,500)
#

INSERT INTO `information_description` (`information_id`, `language_id`, `title`, `description`, `meta_description`, `meta_keyword`, `seo_title`, `seo_h1`) VALUES 
  (3,1,'Новости','&lt;p&gt;\r\n\tНовости&lt;/p&gt;\r\n&lt;p&gt;\r\n\tНовости&lt;/p&gt;\r\n&lt;p&gt;\r\n\tСвежие&lt;/p&gt;\r\n&lt;p&gt;\r\n\tновости&lt;/p&gt;\r\n','','','',''),
  (3,2,'News','&lt;p&gt;\r\n\tNews&lt;/p&gt;\r\n&lt;p&gt;\r\n\tFresh News&lt;/p&gt;\r\n','','','',''),
  (4,1,'О магазине','&lt;p&gt;\r\n\tО нас&lt;/p&gt;\r\n&lt;p&gt;\r\n\tО магазине&lt;/p&gt;\r\n&lt;p&gt;\r\n\tО товарах в магазине....&lt;/p&gt;\r\n','','','',''),
  (4,2,'About Us','&lt;p&gt;\r\n\tAbout Us&lt;/p&gt;\r\n','','','',''),
  (5,1,'Контакты','&lt;p&gt;\r\n\tКонтакты&lt;/p&gt;\r\n','','','',''),
  (5,2,'Contacts','&lt;p&gt;\r\n\tContacts&lt;/p&gt;\r\n','','','',''),
  (6,1,'Доставка и оплата','&lt;p&gt;\r\n\tИнформация о доставке&lt;/p&gt;\r\n','','','',''),
  (6,2,'Shipping and payment','&lt;p&gt;\r\n\tDelivery Information&lt;/p&gt;\r\n','','','',''),
  (7,1,'Велосипед','&lt;p&gt;\r\n\tВелосипед статьи...&lt;/p&gt;\r\n','','','',''),
  (7,2,'bycicle','&lt;p&gt;\r\n\tBycicle articles&lt;/p&gt;\r\n','','','',''),
  (8,1,'Горные','&lt;p&gt;\r\n\tГорные велосипеды это......&lt;/p&gt;\r\n','','','',''),
  (8,2,'Mountain','&lt;p&gt;\r\n\tГорные велосипеды это...... the same in English&lt;/p&gt;\r\n','','','',''),
  (9,1,'Запчасти','&lt;p&gt;\r\n\tЗапчасти к велосипедам....&lt;/p&gt;\r\n','','','',''),
  (9,2,'Parts','&lt;p&gt;\r\n\tparts for bycicles&lt;/p&gt;\r\n','','','',''),
  (10,1,'Шлем','&lt;p&gt;\r\n\tСтатья о шлеме....&lt;/p&gt;\r\n','','','',''),
  (10,2,'helmet','&lt;p&gt;\r\n\tArticle about helmet......&lt;/p&gt;\r\n','','','','');
COMMIT;

#
# Структура для таблицы `information_to_layout`: 
#

CREATE TABLE `information_to_layout` (
  `information_id` INTEGER(11) NOT NULL,
  `store_id` INTEGER(11) NOT NULL,
  `layout_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=13 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `information_to_layout` table  (LIMIT -496,500)
#

INSERT INTO `information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES 
  (8,0,0),
  (9,0,0),
  (10,0,0);
COMMIT;

#
# Структура для таблицы `information_to_store`: 
#

CREATE TABLE `information_to_store` (
  `information_id` INTEGER(11) NOT NULL,
  `store_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=9 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `information_to_store` table  (LIMIT -491,500)
#

INSERT INTO `information_to_store` (`information_id`, `store_id`) VALUES 
  (3,0),
  (4,0),
  (5,0),
  (6,0),
  (7,0),
  (8,0),
  (9,0),
  (10,0);
COMMIT;

#
# Структура для таблицы `language`: 
#

CREATE TABLE `language` (
  `language_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `code` VARCHAR(5) COLLATE utf8_general_ci NOT NULL,
  `locale` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `image` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `directory` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `filename` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `sort_order` INTEGER(3) NOT NULL DEFAULT 0,
  `status` TINYINT(1) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=3 AVG_ROW_LENGTH=78 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `language` table  (LIMIT -497,500)
#

INSERT INTO `language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES 
  (1,'Russian','ru','ru_RU.UTF-8,ru_RU,russian','ru.png','russian','russian',1,1),
  (2,'English','en','en_US.UTF-8,en_US,en-gb,english','gb.png','english','english',2,1);
COMMIT;

#
# Структура для таблицы `layout`: 
#

CREATE TABLE `layout` (
  `layout_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=15 AVG_ROW_LENGTH=32 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `layout` table  (LIMIT -485,500)
#

INSERT INTO `layout` (`layout_id`, `name`) VALUES 
  (1,'Главная'),
  (2,'Продукт'),
  (3,'Категория'),
  (4,'По-умолчанию'),
  (5,'Производитель'),
  (6,'Аккаунт'),
  (7,'Оформление заказ'),
  (8,'Контакты'),
  (9,'Карта сайта'),
  (10,'Партнерская программа'),
  (11,'Информация'),
  (12,'Корзина_М'),
  (13,'Акции'),
  (14,'Как управлять');
COMMIT;

#
# Структура для таблицы `layout_route`: 
#

CREATE TABLE `layout_route` (
  `layout_route_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `layout_id` INTEGER(11) NOT NULL,
  `store_id` INTEGER(11) NOT NULL,
  `route` VARCHAR(255) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=37 AVG_ROW_LENGTH=28 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `layout_route` table  (LIMIT -486,500)
#

INSERT INTO `layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES 
  (17,10,0,'affiliate/'),
  (20,2,0,'product/product'),
  (22,5,0,'product/manufacturer'),
  (23,7,0,'checkout/'),
  (24,11,0,'information/information'),
  (26,1,0,'common/home'),
  (29,3,0,'product/category'),
  (30,6,0,'account'),
  (31,8,0,'information/contact'),
  (32,9,0,'information/sitemap'),
  (34,12,0,'common/cart'),
  (35,13,0,'action'),
  (36,14,0,'information/howtocontrol');
COMMIT;

#
# Структура для таблицы `length_class`: 
#

CREATE TABLE `length_class` (
  `length_class_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `value` DECIMAL(15,8) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=4 AVG_ROW_LENGTH=13 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `length_class` table  (LIMIT -496,500)
#

INSERT INTO `length_class` (`length_class_id`, `value`) VALUES 
  (1,1.00000000),
  (2,10.00000000),
  (3,0.39370000);
COMMIT;

#
# Структура для таблицы `length_class_description`: 
#

CREATE TABLE `length_class_description` (
  `length_class_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `language_id` INTEGER(11) NOT NULL,
  `title` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `unit` VARCHAR(4) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=3 AVG_ROW_LENGTH=32 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `length_class_description` table  (LIMIT -495,500)
#

INSERT INTO `length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES 
  (1,1,'Сантиметр','см'),
  (1,2,'Centimeter','cm'),
  (2,1,'Миллиметр','мм'),
  (2,2,'Millimeter','mm');
COMMIT;

#
# Структура для таблицы `manufacturer`: 
#

CREATE TABLE `manufacturer` (
  `manufacturer_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `image` VARCHAR(255) COLLATE utf8_general_ci DEFAULT NULL,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=11 AVG_ROW_LENGTH=40 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `manufacturer` table  (LIMIT -493,500)
#

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES 
  (5,'HTC','data/demo/htc_logo.jpg',0),
  (6,'Palm','data/demo/palm_logo.jpg',0),
  (7,'Hewlett-Packard','data/demo/hp_logo.jpg',0),
  (8,'Apple','data/demo/apple_logo.jpg',0),
  (9,'Canon','data/demo/canon_logo.jpg',0),
  (10,'Sony','data/demo/sony_logo.jpg',0);
COMMIT;

#
# Структура для таблицы `manufacturer_description`: 
#

CREATE TABLE `manufacturer_description` (
  `manufacturer_id` INTEGER(11) NOT NULL DEFAULT 0,
  `language_id` INTEGER(11) NOT NULL DEFAULT 0,
  `description` TEXT COLLATE utf8_general_ci NOT NULL,
  `meta_description` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `meta_keyword` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `seo_title` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `seo_h1` VARCHAR(255) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=20 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `manufacturer_description` table  (LIMIT -487,500)
#

INSERT INTO `manufacturer_description` (`manufacturer_id`, `language_id`, `description`, `meta_description`, `meta_keyword`, `seo_title`, `seo_h1`) VALUES 
  (5,1,'','','','',''),
  (5,2,'','','','',''),
  (6,1,'','','','',''),
  (6,2,'','','','',''),
  (7,1,'','','','',''),
  (7,2,'','','','',''),
  (8,1,'','','','',''),
  (8,2,'','','','',''),
  (9,1,'','','','',''),
  (9,2,'','','','',''),
  (10,1,'','','','',''),
  (10,2,'','','','','');
COMMIT;

#
# Структура для таблицы `manufacturer_to_store`: 
#

CREATE TABLE `manufacturer_to_store` (
  `manufacturer_id` INTEGER(11) NOT NULL,
  `store_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=9 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `manufacturer_to_store` table  (LIMIT -493,500)
#

INSERT INTO `manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES 
  (5,0),
  (6,0),
  (7,0),
  (8,0),
  (9,0),
  (10,0);
COMMIT;

#
# Структура для таблицы `option`: 
#

CREATE TABLE `option` (
  `option_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=14 AVG_ROW_LENGTH=21 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `option` table  (LIMIT -487,500)
#

INSERT INTO `option` (`option_id`, `type`, `sort_order`) VALUES 
  (1,'radio',2),
  (2,'checkbox',3),
  (4,'text',4),
  (5,'select',1),
  (6,'textarea',5),
  (7,'file',6),
  (8,'date',7),
  (9,'time',8),
  (10,'datetime',9),
  (11,'select',1),
  (12,'date',1),
  (13,'radio',12);
COMMIT;

#
# Структура для таблицы `option_description`: 
#

CREATE TABLE `option_description` (
  `option_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(128) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=22 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `option_description` table  (LIMIT -475,500)
#

INSERT INTO `option_description` (`option_id`, `language_id`, `name`) VALUES 
  (1,1,'Radio'),
  (1,2,'Radio'),
  (2,1,'Checkbox'),
  (2,2,'Checkbox'),
  (4,1,'Text'),
  (4,2,'Text'),
  (5,1,'Select'),
  (5,2,'Select'),
  (6,1,'Textarea'),
  (6,2,'Textarea'),
  (7,1,'File'),
  (7,2,'File'),
  (8,1,'Date'),
  (8,2,'Date'),
  (9,1,'Time'),
  (9,2,'Time'),
  (10,1,'Date &amp; Time'),
  (10,2,'Date &amp; Time'),
  (11,1,'Size'),
  (11,2,'Size'),
  (12,1,'Delivery Date'),
  (12,2,'Delivery Date'),
  (13,1,'brand'),
  (13,2,'Бренд');
COMMIT;

#
# Структура для таблицы `option_value`: 
#

CREATE TABLE `option_value` (
  `option_value_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `option_id` INTEGER(11) NOT NULL,
  `image` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=50 AVG_ROW_LENGTH=20 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `option_value` table  (LIMIT -484,500)
#

INSERT INTO `option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES 
  (23,2,'',1),
  (24,2,'',2),
  (31,1,'',2),
  (32,1,'',1),
  (39,5,'',1),
  (40,5,'',2),
  (41,5,'',3),
  (42,5,'',4),
  (43,1,'',3),
  (44,2,'',3),
  (45,2,'',4),
  (46,11,'',1),
  (47,11,'',2),
  (48,11,'',3),
  (49,13,'',1);
COMMIT;

#
# Структура для таблицы `option_value_description`: 
#

CREATE TABLE `option_value_description` (
  `option_value_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `option_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(128) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=24 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `option_value_description` table  (LIMIT -469,500)
#

INSERT INTO `option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES 
  (23,1,2,'Checkbox 1'),
  (23,2,2,'Checkbox 1'),
  (24,1,2,'Checkbox 2'),
  (24,2,2,'Checkbox 2'),
  (31,1,1,'Medium'),
  (31,2,1,'Medium'),
  (32,1,1,'Small'),
  (32,2,1,'Small'),
  (39,1,5,'Red'),
  (39,2,5,'Red'),
  (40,1,5,'Blue'),
  (40,2,5,'Blue'),
  (41,1,5,'Green'),
  (41,2,5,'Green'),
  (42,1,5,'Yellow'),
  (42,2,5,'Yellow'),
  (43,1,1,'Large'),
  (43,2,1,'Large'),
  (44,1,2,'Checkbox 3'),
  (44,2,2,'Checkbox 3'),
  (45,1,2,'Checkbox 4'),
  (45,2,2,'Checkbox 4'),
  (46,1,11,'Small'),
  (46,2,11,'Small'),
  (47,1,11,'Medium'),
  (47,2,11,'Medium'),
  (48,1,11,'Large'),
  (48,2,11,'Large'),
  (49,1,13,'Brand1'),
  (49,2,13,'Бренд1');
COMMIT;

#
# Структура для таблицы `order`: 
#

CREATE TABLE `order` (
  `order_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` INTEGER(11) NOT NULL DEFAULT 0,
  `invoice_prefix` VARCHAR(26) COLLATE utf8_general_ci NOT NULL,
  `store_id` INTEGER(11) NOT NULL DEFAULT 0,
  `store_name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `store_url` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `customer_id` INTEGER(11) NOT NULL DEFAULT 0,
  `customer_group_id` INTEGER(11) NOT NULL DEFAULT 0,
  `firstname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `lastname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `email` VARCHAR(96) COLLATE utf8_general_ci NOT NULL,
  `telephone` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `fax` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `payment_firstname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `payment_lastname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `payment_company` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `payment_company_id` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `payment_tax_id` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `payment_address_1` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `payment_address_2` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `payment_city` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `payment_postcode` VARCHAR(10) COLLATE utf8_general_ci NOT NULL,
  `payment_country` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `payment_country_id` INTEGER(11) NOT NULL,
  `payment_zone` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `payment_zone_id` INTEGER(11) NOT NULL,
  `payment_address_format` TEXT COLLATE utf8_general_ci NOT NULL,
  `payment_method` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `payment_code` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `shipping_firstname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `shipping_lastname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `shipping_company` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `shipping_address_1` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `shipping_address_2` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `shipping_city` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `shipping_postcode` VARCHAR(10) COLLATE utf8_general_ci NOT NULL,
  `shipping_country` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `shipping_country_id` INTEGER(11) NOT NULL,
  `shipping_zone` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `shipping_zone_id` INTEGER(11) NOT NULL,
  `shipping_address_format` TEXT COLLATE utf8_general_ci NOT NULL,
  `shipping_method` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `shipping_code` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `comment` TEXT COLLATE utf8_general_ci NOT NULL,
  `total` DECIMAL(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` INTEGER(11) NOT NULL DEFAULT 0,
  `affiliate_id` INTEGER(11) NOT NULL,
  `commission` DECIMAL(15,4) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `currency_id` INTEGER(11) NOT NULL,
  `currency_code` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `currency_value` DECIMAL(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` VARCHAR(40) COLLATE utf8_general_ci NOT NULL,
  `forwarded_ip` VARCHAR(40) COLLATE utf8_general_ci NOT NULL,
  `user_agent` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `accept_language` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `date_added` DATETIME NOT NULL,
  `date_modified` DATETIME NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `order_download`: 
#

CREATE TABLE `order_download` (
  `order_download_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `order_id` INTEGER(11) NOT NULL,
  `order_product_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `filename` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `mask` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `remaining` INTEGER(3) NOT NULL DEFAULT 0
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `order_field`: 
#

CREATE TABLE `order_field` (
  `order_id` INTEGER(11) NOT NULL,
  `custom_field_id` INTEGER(11) NOT NULL,
  `custom_field_value_id` INTEGER(11) NOT NULL,
  `name` INTEGER(128) NOT NULL,
  `value` TEXT COLLATE utf8_general_ci NOT NULL,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `order_fraud`: 
#

CREATE TABLE `order_fraud` (
  `order_id` INTEGER(11) NOT NULL,
  `customer_id` INTEGER(11) NOT NULL,
  `country_match` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `country_code` VARCHAR(2) COLLATE utf8_general_ci NOT NULL,
  `high_risk_country` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `distance` INTEGER(11) NOT NULL,
  `ip_region` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `ip_city` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `ip_latitude` DECIMAL(10,6) NOT NULL,
  `ip_longitude` DECIMAL(10,6) NOT NULL,
  `ip_isp` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `ip_org` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `ip_asnum` INTEGER(11) NOT NULL,
  `ip_user_type` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `ip_country_confidence` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `ip_region_confidence` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `ip_city_confidence` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `ip_postal_confidence` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `ip_postal_code` VARCHAR(10) COLLATE utf8_general_ci NOT NULL,
  `ip_accuracy_radius` INTEGER(11) NOT NULL,
  `ip_net_speed_cell` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `ip_metro_code` INTEGER(3) NOT NULL,
  `ip_area_code` INTEGER(3) NOT NULL,
  `ip_time_zone` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `ip_region_name` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `ip_domain` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `ip_country_name` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `ip_continent_code` VARCHAR(2) COLLATE utf8_general_ci NOT NULL,
  `ip_corporate_proxy` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `anonymous_proxy` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `proxy_score` INTEGER(3) NOT NULL,
  `is_trans_proxy` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `free_mail` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `carder_email` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `high_risk_username` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `high_risk_password` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `bin_match` VARCHAR(10) COLLATE utf8_general_ci NOT NULL,
  `bin_country` VARCHAR(2) COLLATE utf8_general_ci NOT NULL,
  `bin_name_match` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `bin_name` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `bin_phone_match` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `bin_phone` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `customer_phone_in_billing_location` VARCHAR(8) COLLATE utf8_general_ci NOT NULL,
  `ship_forward` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `city_postal_match` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `ship_city_postal_match` VARCHAR(3) COLLATE utf8_general_ci NOT NULL,
  `score` DECIMAL(10,5) NOT NULL,
  `explanation` TEXT COLLATE utf8_general_ci NOT NULL,
  `risk_score` DECIMAL(10,5) NOT NULL,
  `queries_remaining` INTEGER(11) NOT NULL,
  `maxmind_id` VARCHAR(8) COLLATE utf8_general_ci NOT NULL,
  `error` TEXT COLLATE utf8_general_ci NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `order_history`: 
#

CREATE TABLE `order_history` (
  `order_history_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `order_id` INTEGER(11) NOT NULL,
  `order_status_id` INTEGER(5) NOT NULL,
  `notify` TINYINT(1) NOT NULL DEFAULT 0,
  `comment` TEXT COLLATE utf8_general_ci NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `order_option`: 
#

CREATE TABLE `order_option` (
  `order_option_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `order_id` INTEGER(11) NOT NULL,
  `order_product_id` INTEGER(11) NOT NULL,
  `product_option_id` INTEGER(11) NOT NULL,
  `product_option_value_id` INTEGER(11) NOT NULL DEFAULT 0,
  `name` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `value` TEXT COLLATE utf8_general_ci NOT NULL,
  `type` VARCHAR(32) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `order_product`: 
#

CREATE TABLE `order_product` (
  `order_product_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `order_id` INTEGER(11) NOT NULL,
  `product_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `model` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `quantity` INTEGER(4) NOT NULL,
  `price` DECIMAL(15,4) NOT NULL DEFAULT 0.0000,
  `total` DECIMAL(15,4) NOT NULL DEFAULT 0.0000,
  `tax` DECIMAL(15,4) NOT NULL DEFAULT 0.0000,
  `reward` INTEGER(8) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `order_status`: 
#

CREATE TABLE `order_status` (
  `order_status_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `language_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(32) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=14 AVG_ROW_LENGTH=31 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `order_status` table  (LIMIT -477,500)
#

INSERT INTO `order_status` (`order_status_id`, `language_id`, `name`) VALUES 
  (1,1,'Ожидание'),
  (1,2,'Pending'),
  (2,1,'В обработке'),
  (2,2,'Processing'),
  (3,1,'Доставлено'),
  (3,2,'Shipped'),
  (5,1,'Сделка завершена'),
  (5,2,'Complete'),
  (7,1,'Отменено'),
  (7,2,'Canceled'),
  (8,1,'Возврат'),
  (8,2,'Denied'),
  (9,1,'Отмена и аннулирование'),
  (9,2,'Canceled Reversal'),
  (10,1,'Неудавшийся'),
  (10,2,'Failed'),
  (11,1,'Возмещенный'),
  (11,2,'Refunded'),
  (12,1,'Полностью измененный'),
  (12,2,'Reversed'),
  (13,1,'Полный возврат'),
  (13,2,'Chargeback');
COMMIT;

#
# Структура для таблицы `order_total`: 
#

CREATE TABLE `order_total` (
  `order_total_id` INTEGER(10) NOT NULL AUTO_INCREMENT,
  `order_id` INTEGER(11) NOT NULL,
  `code` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `title` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `text` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `value` DECIMAL(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` INTEGER(3) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `order_voucher`: 
#

CREATE TABLE `order_voucher` (
  `order_voucher_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `order_id` INTEGER(11) NOT NULL,
  `voucher_id` INTEGER(11) NOT NULL,
  `description` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `code` VARCHAR(10) COLLATE utf8_general_ci NOT NULL,
  `from_name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `from_email` VARCHAR(96) COLLATE utf8_general_ci NOT NULL,
  `to_name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `to_email` VARCHAR(96) COLLATE utf8_general_ci NOT NULL,
  `voucher_theme_id` INTEGER(11) NOT NULL,
  `message` TEXT COLLATE utf8_general_ci NOT NULL,
  `amount` DECIMAL(15,4) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `product`: 
#

CREATE TABLE `product` (
  `product_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `model` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `sku` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `upc` VARCHAR(12) COLLATE utf8_general_ci NOT NULL,
  `ean` VARCHAR(14) COLLATE utf8_general_ci NOT NULL,
  `jan` VARCHAR(13) COLLATE utf8_general_ci NOT NULL,
  `isbn` VARCHAR(13) COLLATE utf8_general_ci NOT NULL,
  `mpn` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `location` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `quantity` INTEGER(4) NOT NULL DEFAULT 0,
  `stock_status_id` INTEGER(11) NOT NULL,
  `image` VARCHAR(255) COLLATE utf8_general_ci DEFAULT NULL,
  `manufacturer_id` INTEGER(11) NOT NULL,
  `shipping` TINYINT(1) NOT NULL DEFAULT 1,
  `price` DECIMAL(15,4) NOT NULL DEFAULT 0.0000,
  `points` INTEGER(8) NOT NULL DEFAULT 0,
  `tax_class_id` INTEGER(11) NOT NULL,
  `date_available` DATE NOT NULL,
  `weight` DECIMAL(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` INTEGER(11) NOT NULL DEFAULT 0,
  `length` DECIMAL(15,8) NOT NULL DEFAULT 0.00000000,
  `width` DECIMAL(15,8) NOT NULL DEFAULT 0.00000000,
  `height` DECIMAL(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` INTEGER(11) NOT NULL DEFAULT 0,
  `subtract` TINYINT(1) NOT NULL DEFAULT 1,
  `minimum` INTEGER(11) NOT NULL DEFAULT 1,
  `sort_order` INTEGER(11) NOT NULL DEFAULT 0,
  `status` TINYINT(1) NOT NULL DEFAULT 0,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` INTEGER(5) NOT NULL DEFAULT 0
)ENGINE=MyISAM
AUTO_INCREMENT=67 AVG_ROW_LENGTH=150 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `product` table  (LIMIT -477,500)
#

INSERT INTO `product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES 
  (28,'Товар 1','','','','','','','',939,7,'data/demo/htc_touch_hd_1.jpg',5,1,100.0000,200,9,'2009-02-03',146.40000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,'2009-02-03 16:06:50','2011-09-30 01:05:39',0),
  (29,'Товар 2','','','','','','','',999,6,'data/demo/palm_treo_pro_1.jpg',6,1,279.9900,0,9,'2009-02-03',133.00000000,2,0.00000000,0.00000000,0.00000000,3,1,1,0,1,'2009-02-03 16:42:17','2011-09-30 01:06:08',1),
  (30,'Товар 3','','','','','','','',7,6,'data/demo/canon_eos_5d_1.jpg',9,1,100.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,'2009-02-03 16:59:00','2018-01-03 14:10:54',3),
  (31,'Товар 4','','','','','','','',1000,6,'data/demo/nikon_d300_1.jpg',0,1,80.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,3,1,1,0,1,'2009-02-03 17:00:10','2011-09-30 01:06:00',0),
  (32,'Товар 5','','','','','','','',999,6,'data/demo/ipod_touch_1.jpg',8,1,100.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,'2009-02-03 17:07:26','2011-09-30 01:07:22',0),
  (33,'Товар 6','','','','','','','',1000,6,'data/demo/samsung_syncmaster_941bw.jpg',0,1,200.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,'2009-02-03 17:08:31','2011-09-30 01:06:29',17),
  (34,'Товар 7','','','','','','','',1000,6,'data/demo/ipod_shuffle_1.jpg',8,1,100.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,'2009-02-03 18:07:54','2011-09-30 01:07:17',0),
  (35,'Товар 8','','','','','','','',1000,5,'',0,0,100.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,'2009-02-03 18:08:31','2011-09-30 01:06:17',0),
  (36,'Товар 9','','','','','','','',994,6,'data/demo/ipod_nano_1.jpg',8,0,100.0000,100,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,'2009-02-03 18:09:19','2011-09-30 01:07:12',0),
  (40,'Товар 11','','','','','','','',970,5,'data/demo/iphone_1.jpg',8,1,101.0000,0,9,'2009-02-03',10.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,'2009-02-03 21:07:12','2011-09-30 01:06:53',4),
  (41,'Товар 14','','','','','','','',977,5,'data/demo/imac_1.jpg',8,1,100.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,'2009-02-03 21:07:26','2011-09-30 01:06:44',0),
  (42,'Товар 15','','','','','','','',990,5,'data/demo/apple_cinema_30.jpg',8,1,100.0000,400,9,'2009-02-04',12.50000000,1,1.00000000,2.00000000,3.00000000,1,1,1,0,1,'2009-02-03 21:07:37','2017-12-28 10:32:48',162),
  (43,'Товар 16','','','','','','','',929,5,'data/demo/macbook_1.jpg',8,0,500.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,'2009-02-03 21:07:49','2018-01-02 18:07:10',88),
  (44,'Товар 17','','','','','','','',1000,5,'data/demo/macbook_air_1.jpg',8,1,1000.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,'2009-02-03 21:08:00','2011-09-30 01:05:53',0),
  (45,'Товар 18','','','','','','','',998,5,'data/demo/macbook_pro_1.jpg',8,1,2000.0000,0,100,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,'2009-02-03 21:08:17','2011-09-15 22:22:01',0),
  (46,'Товар 19','','','','','','','',1000,5,'data/demo/sony_vaio_1.jpg',10,1,1000.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,'2009-02-03 21:08:29','2018-01-03 14:12:15',6),
  (47,'Товар 21','','','','','','','',1000,5,'data/demo/hp_1.jpg',7,1,100.0000,400,9,'2009-02-03',1.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,'2009-02-03 21:08:40','2018-01-03 14:12:47',0),
  (48,'Товар 20','test 1','','','','','','test 2',995,5,'data/demo/ipod_classic_1.jpg',8,1,100.0000,0,9,'2009-02-08',1.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,'2009-02-08 17:21:51','2011-09-30 01:07:06',1),
  (49,'12576890','SAM1_1','','','','','','',10,8,'data/slider/slider-bike.png',0,1,3600.0000,100,9,'2011-04-25',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2011-04-26 08:57:34','2017-12-28 16:51:27',218),
  (64,'Товар 01','','','','','','','',946,7,'data/demo/htc_touch_hd_1.jpg',5,1,500.0000,200,9,'2009-02-03',146.40000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,0,'2011-05-24 23:48:34','0000-00-00 00:00:00',0),
  (65,'11233123','','','','','','','',1,7,'data/category/main/cross.jpg',0,1,1000.0000,0,0,'2017-12-28',12.00000000,1,1.00000000,2.00000000,3.00000000,1,1,1,1,1,'2017-12-29 10:52:20','2018-01-02 18:05:48',63),
  (66,'11111111','','','','','','','',1,5,'',0,1,0.0000,0,0,'2017-12-28',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,'2017-12-29 10:55:45','0000-00-00 00:00:00',0);
COMMIT;

#
# Структура для таблицы `product_attribute`: 
#

CREATE TABLE `product_attribute` (
  `product_id` INTEGER(11) NOT NULL,
  `attribute_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `text` TEXT COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=30 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `product_attribute` table  (LIMIT -489,500)
#

INSERT INTO `product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES 
  (42,3,1,'100мгц'),
  (42,3,2,'100mhz'),
  (43,2,1,'1'),
  (43,2,2,'1'),
  (43,4,1,'8гб'),
  (43,4,2,'8gb'),
  (47,2,1,'4'),
  (47,2,2,'4'),
  (47,4,1,'16ГБ'),
  (47,4,2,'16GB');
COMMIT;

#
# Структура для таблицы `product_description`: 
#

CREATE TABLE `product_description` (
  `product_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `description` TEXT COLLATE utf8_general_ci NOT NULL,
  `meta_description` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `meta_keyword` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `seo_title` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `seo_h1` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `tag` TEXT COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=1378 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `product_description` table  (LIMIT -455,500)
#

INSERT INTO `product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `seo_title`, `seo_h1`, `tag`) VALUES 
  (28,1,'HTC Touch HD','&lt;p&gt;\r\n\tHTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tProcessor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWindows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMemory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tDimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tHSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tQuad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tDevice Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tGPS and A-GPS ready&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tHTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t5 megapixel color camera with auto focus&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tVGA CMOS color camera&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBuilt-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tRing tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tRechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tExpansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tAC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tSpecial Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),
  (28,2,'HTC Touch HD','&lt;p&gt;\r\n\tHTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tProcessor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWindows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMemory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tDimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tHSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tQuad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tDevice Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tGPS and A-GPS ready&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tHTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t5 megapixel color camera with auto focus&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tVGA CMOS color camera&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBuilt-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tRing tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tRechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tExpansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tAC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tSpecial Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),
  (29,1,'Palm Treo Pro','&lt;p&gt;\r\n\tRedefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tWindows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tQualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tHSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tTri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tQuad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBuilt-in GPS&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tRemovable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tUp to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t3.5mm stereo headset jack&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),
  (29,2,'Palm Treo Pro','&lt;p&gt;\r\n\tRedefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tWindows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tQualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tHSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tTri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tQuad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBuilt-in GPS&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tRemovable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tUp to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t3.5mm stereo headset jack&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),
  (30,1,'Canon EOS 5D','&lt;p&gt;\r\n\tCanon''s press material for the EOS 5D states that it ''defines (a) new D-SLR category'', while we''re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably ''chunkier''). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR''s, an important difference when compared to the latter is that the EOS 5D doesn''t have any environmental seals. While Canon don''t specifically refer to the EOS 5D as a ''professional'' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they''ve not bought too many EF-S lenses...) ??&lt;/p&gt;\r\n','','','','',''),
  (30,2,'Canon EOS 5D','&lt;p&gt;\r\n\tCanon''s press material for the EOS 5D states that it ''defines (a) new D-SLR category'', while we''re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably ''chunkier''). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR''s, an important difference when compared to the latter is that the EOS 5D doesn''t have any environmental seals. While Canon don''t specifically refer to the EOS 5D as a ''professional'' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they''ve not bought too many EF-S lenses...) ??&lt;/p&gt;\r\n','','','','',''),
  (31,1,'Nikon D300','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n\t&lt;div&gt;\r\n\t\tEngineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n\t\t&lt;br /&gt;\r\n\t\tSimilar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n\t\t&lt;br /&gt;\r\n\t\tThe D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n\t\t&lt;br /&gt;\r\n\t\tThe D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','','','',''),
  (31,2,'Nikon D300','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n\t&lt;div&gt;\r\n\t\tEngineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n\t\t&lt;br /&gt;\r\n\t\tSimilar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n\t\t&lt;br /&gt;\r\n\t\tThe D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n\t\t&lt;br /&gt;\r\n\t\tThe D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','','','',''),
  (32,1,'iPod Touch','&lt;p&gt;\r\n\t&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n\tiPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n\tWatch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n\tShop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n\tBrowse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n\t&amp;nbsp;&lt;/p&gt;\r\n','','','','',''),
  (32,2,'iPod Touch','&lt;p&gt;\r\n\t&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n\tiPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n\tWatch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n\tShop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n\tBrowse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n\t&amp;nbsp;&lt;/p&gt;\r\n','','','','',''),
  (33,1,'Samsung SyncMaster 941BW','&lt;div&gt;\r\n\tImagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n','','','','',''),
  (33,2,'Samsung SyncMaster 941BW','&lt;div&gt;\r\n\tImagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n','','','','',''),
  (34,1,'iPod Shuffle','&lt;div&gt;\r\n\t&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n\t&lt;p&gt;\r\n\t\tClip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tWith iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n\t&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n\t&lt;p&gt;\r\n\t\tCharge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','','','',''),
  (34,2,'iPod Shuffle','&lt;div&gt;\r\n\t&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n\t&lt;p&gt;\r\n\t\tClip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tWith iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n\t&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n\t&lt;p&gt;\r\n\t\tCharge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','','','',''),
  (35,1,'Товар 8','&lt;p&gt;\r\n\tТовар 8&lt;/p&gt;\r\n','','','','',''),
  (35,2,'Product 8','&lt;p&gt;\r\n\tProduct 8&lt;/p&gt;\r\n','','','','',''),
  (36,1,'iPod Nano','&lt;div&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tIts the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tBrowse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tExperience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tWith an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tAvailable as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','','','',''),
  (36,2,'iPod Nano','&lt;div&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tIts the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tBrowse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tExperience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tWith an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tAvailable as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','','','',''),
  (40,1,'iPhone','&lt;p class=&quot;intro&quot;&gt;\r\n\tiPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n','','','','',''),
  (40,2,'iPhone','&lt;p class=&quot;intro&quot;&gt;\r\n\tiPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n','','','','',''),
  (41,1,'iMac','&lt;div&gt;\r\n\tJust when you thought iMac had everything, now there’s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ’08, and it’s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n','','','','',''),
  (41,2,'iMac','&lt;div&gt;\r\n\tJust when you thought iMac had everything, now there’s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ’08, and it’s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n','','','','',''),
  (42,1,'Apple Cinema 30&quot;','&lt;p&gt;\r\n\t&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there''s no limit to what you can achieve. &lt;/font&gt;&lt;br /&gt;\r\n\t&lt;br /&gt;\r\n\t&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;/font&gt;&lt;br /&gt;\r\n\t&lt;br /&gt;\r\n\t&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple''s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;/font&gt;&lt;br /&gt;\r\n\t&lt;br /&gt;\r\n\t&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;/font&gt;&lt;br /&gt;\r\n\t&lt;br /&gt;\r\n\t&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n\tFeatures:&lt;/h3&gt;\r\n&lt;p&gt;\r\n\tUnrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tSupport for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tIndustry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tIncredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tLightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tSupport for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\tSimple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tSingle cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBuilt-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tTwo FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\tSleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tHuge virtual workspace, very small footprint.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tNarrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tUnique hinge design for effortless adjustment&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tSupport for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n\tTechnical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tApple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tThin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t2048 x 1280&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t1920 x 1200&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t1280 x 800&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tAntiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tDisplay Power,&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tSystem sleep, wake&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBrightness&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMonitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br /&gt;\r\n\tCable&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tDVI (Digital Visual Interface)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tFireWire 400&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tUSB 2.0&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tDC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\tConnectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tTwo-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tTwo FireWire 400 ports&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tKensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br /&gt;\r\n\tRequires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tCompatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tInput voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMaximum power when operating: 150W&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tEnergy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tOperating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tStorage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tOperating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMaximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tFCC Part 15 Class B&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tEN55022 Class B&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tEN55024&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tVCCI Class B&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tAS/NZS 3548 Class B&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tCNS 13438 Class B&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tICES-003 Class B&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tISO 13406 part 2&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMPR II&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tIEC 60950&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tUL 60950&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tCSA 60950&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tEN60950&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tENERGY STAR&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tTCO ''03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Size and weight&lt;/b&gt;&lt;br /&gt;\r\n\t30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tHeight: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWidth: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tDepth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWeight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tMac Pro, all graphic options&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMacBook Pro&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tPower Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tPower Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tPowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWindows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),
  (42,2,'Apple Cinema 30&quot;','&lt;p&gt;\r\n\t&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there''s no limit to what you can achieve. &lt;/font&gt;&lt;br /&gt;\r\n\t&lt;br /&gt;\r\n\t&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;/font&gt;&lt;br /&gt;\r\n\t&lt;br /&gt;\r\n\t&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple''s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;/font&gt;&lt;br /&gt;\r\n\t&lt;br /&gt;\r\n\t&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;/font&gt;&lt;br /&gt;\r\n\t&lt;br /&gt;\r\n\t&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n\tFeatures:&lt;/h3&gt;\r\n&lt;p&gt;\r\n\tUnrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tSupport for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tIndustry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tIncredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tLightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tSupport for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\tSimple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tSingle cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBuilt-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tTwo FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\tSleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tHuge virtual workspace, very small footprint.&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tNarrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tUnique hinge design for effortless adjustment&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tSupport for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n\tTechnical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tApple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tThin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t2048 x 1280&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t1920 x 1200&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t1280 x 800&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\t30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tAntiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tDisplay Power,&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tSystem sleep, wake&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBrightness&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMonitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br /&gt;\r\n\tCable&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tDVI (Digital Visual Interface)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tFireWire 400&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tUSB 2.0&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tDC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\tConnectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tTwo-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tTwo FireWire 400 ports&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tKensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br /&gt;\r\n\tRequires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tCompatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tInput voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMaximum power when operating: 150W&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tEnergy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tOperating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tStorage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tOperating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMaximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tFCC Part 15 Class B&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tEN55022 Class B&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tEN55024&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tVCCI Class B&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tAS/NZS 3548 Class B&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tCNS 13438 Class B&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tICES-003 Class B&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tISO 13406 part 2&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMPR II&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tIEC 60950&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tUL 60950&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tCSA 60950&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tEN60950&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tENERGY STAR&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tTCO ''03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;Size and weight&lt;/b&gt;&lt;br /&gt;\r\n\t30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tHeight: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWidth: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tDepth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWeight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n\t&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tMac Pro, all graphic options&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMacBook Pro&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tPower Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tPower Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tPowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWindows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),
  (43,1,'MacBook','&lt;div&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tPowered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tThe new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tMacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tRight out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','','','',''),
  (43,2,'MacBook','&lt;div&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tPowered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tThe new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tMacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\t&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n\t&lt;p&gt;\r\n\t\tRight out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','','','',''),
  (44,1,'MacBook Air','&lt;div&gt;\r\n\tMacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n','','','','',''),
  (44,2,'MacBook Air','&lt;div&gt;\r\n\tMacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n','','','','',''),
  (45,1,'MacBook Pro','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n\t&lt;div&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tPowered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tThe NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tInnovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tQuickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tFeaturing 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n\t&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','','','',''),
  (45,2,'MacBook Pro','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n\t&lt;div&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tPowered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tThe NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tInnovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tQuickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tFeaturing 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n\t&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','','','',''),
  (46,1,'Sony VAIO','&lt;div&gt;\r\n\tUnprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel''s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n','','','','',''),
  (46,2,'Sony VAIO','&lt;div&gt;\r\n\tUnprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel''s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n','','','','',''),
  (47,1,'HP LP3065','&lt;p&gt;\r\n\tStop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you''re at the office&lt;/p&gt;\r\n','','','','',''),
  (47,2,'HP LP3065','&lt;p&gt;\r\n\tStop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you''re at the office&lt;/p&gt;\r\n','','','','',''),
  (48,1,'iPod Classic','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n\t&lt;div&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tWith 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tBrowse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tExperience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tBeautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n\t&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','','','',''),
  (48,2,'iPod Classic','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n\t&lt;div&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tWith 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tBrowse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tExperience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\t&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n\t\t&lt;p&gt;\r\n\t\t\tBeautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n\t&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','','','',''),
  (49,1,'Kinetic Sniper Disk 24','&lt;p&gt;\r\n\t&lt;span style=&quot;color: rgb(0, 0, 0); font-family: monospace; font-size: medium; white-space: pre-wrap;&quot;&gt;У подросткового велосипеда трансмиссия на 18 передач, амортизирующая вилка, которая поможет сделать езду намного более комфортной, надёжные и простых дисковые тормоза!&lt;/span&gt;&lt;/p&gt;\r\n','','','','',''),
  (49,2,'Samsung Galaxy Tab 10.1','&lt;p&gt;\r\n\tThe teenage bike has a transmission for 18 gears, a shock-absorbing fork that will make driving a lot more comfortable, reliable and simple disc brakes! &amp;lt;&lt;/p&gt;\r\n','','','','',''),
  (64,1,'HTC Touch HD','&lt;p&gt;\r\n\tHTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tProcessor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWindows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMemory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tDimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tHSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tQuad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tDevice Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tGPS and A-GPS ready&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tHTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t5 megapixel color camera with auto focus&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tVGA CMOS color camera&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBuilt-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tRing tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tRechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tExpansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tAC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tSpecial Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),
  (64,2,'HTC Touch HD','&lt;p&gt;\r\n\tHTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n\t&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n\t&lt;li&gt;\r\n\t\tProcessor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWindows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tMemory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tDimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tHSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tQuad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tDevice Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tGPS and A-GPS ready&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tWi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tHTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t5 megapixel color camera with auto focus&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tVGA CMOS color camera&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tBuilt-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tRing tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\t40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tRechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tExpansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tAC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n\t&lt;li&gt;\r\n\t\tSpecial Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','','','',''),
  (65,1,'Горный 1','','','','','',''),
  (65,2,'Mount 1','','','','','',''),
  (66,1,'Горный1','','','','','',''),
  (66,2,'Mount1','','','','','','');
COMMIT;

#
# Структура для таблицы `product_discount`: 
#

CREATE TABLE `product_discount` (
  `product_discount_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `product_id` INTEGER(11) NOT NULL,
  `customer_group_id` INTEGER(11) NOT NULL,
  `quantity` INTEGER(4) NOT NULL DEFAULT 0,
  `priority` INTEGER(5) NOT NULL DEFAULT 1,
  `price` DECIMAL(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` DATE NOT NULL DEFAULT '0000-00-00',
  `date_end` DATE NOT NULL DEFAULT '0000-00-00'
)ENGINE=MyISAM
AUTO_INCREMENT=450 AVG_ROW_LENGTH=34 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `product_discount` table  (LIMIT -495,500)
#

INSERT INTO `product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES 
  (441,42,1,10,1,88.0000,'0000-00-00','0000-00-00'),
  (442,42,1,20,1,77.0000,'0000-00-00','0000-00-00'),
  (443,42,1,30,1,66.0000,'0000-00-00','0000-00-00'),
  (449,49,1,2,1,500.0000,'2018-01-28','2018-01-28');
COMMIT;

#
# Структура для таблицы `product_filter`: 
#

CREATE TABLE `product_filter` (
  `product_id` INTEGER(11) NOT NULL,
  `filter_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `product_image`: 
#

CREATE TABLE `product_image` (
  `product_image_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `product_id` INTEGER(11) NOT NULL,
  `image` VARCHAR(255) COLLATE utf8_general_ci DEFAULT NULL,
  `sort_order` INTEGER(3) NOT NULL DEFAULT 0
)ENGINE=MyISAM
AUTO_INCREMENT=2435 AVG_ROW_LENGTH=41 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `product_image` table  (LIMIT -436,500)
#

INSERT INTO `product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES 
  (1972,44,'data/demo/macbook_air_3.jpg',0),
  (1973,44,'data/demo/macbook_air_2.jpg',0),
  (1974,44,'data/demo/macbook_air_4.jpg',0),
  (1975,45,'data/demo/macbook_pro_4.jpg',0),
  (1976,45,'data/demo/macbook_pro_3.jpg',0),
  (1977,45,'data/demo/macbook_pro_2.jpg',0),
  (1978,40,'data/demo/iphone_4.jpg',0),
  (1979,40,'data/demo/iphone_3.jpg',0),
  (1980,40,'data/demo/iphone_5.jpg',0),
  (1981,40,'data/demo/iphone_2.jpg',0),
  (1982,40,'data/demo/iphone_6.jpg',0),
  (1983,31,'data/demo/nikon_d300_5.jpg',0),
  (1984,31,'data/demo/nikon_d300_4.jpg',0),
  (1985,31,'data/demo/nikon_d300_2.jpg',0),
  (1986,31,'data/demo/nikon_d300_3.jpg',0),
  (1987,29,'data/demo/palm_treo_pro_2.jpg',0),
  (1988,29,'data/demo/palm_treo_pro_3.jpg',0),
  (1989,48,'data/demo/ipod_classic_2.jpg',0),
  (1990,48,'data/demo/ipod_classic_3.jpg',0),
  (1991,48,'data/demo/ipod_classic_4.jpg',0),
  (1998,36,'data/demo/ipod_nano_3.jpg',0),
  (1999,36,'data/demo/ipod_nano_2.jpg',0),
  (2000,36,'data/demo/ipod_nano_4.jpg',0),
  (2001,36,'data/demo/ipod_nano_5.jpg',0),
  (2002,34,'data/demo/ipod_shuffle_3.jpg',0),
  (2003,34,'data/demo/ipod_shuffle_2.jpg',0),
  (2004,34,'data/demo/ipod_shuffle_4.jpg',0),
  (2005,34,'data/demo/ipod_shuffle_5.jpg',0),
  (2006,32,'data/demo/ipod_touch_4.jpg',0),
  (2007,32,'data/demo/ipod_touch_3.jpg',0),
  (2008,32,'data/demo/ipod_touch_2.jpg',0),
  (2009,32,'data/demo/ipod_touch_5.jpg',0),
  (2010,32,'data/demo/ipod_touch_6.jpg',0),
  (2011,32,'data/demo/ipod_touch_7.jpg',0),
  (2034,28,'data/demo/htc_touch_hd_3.jpg',0),
  (2035,28,'data/demo/htc_touch_hd_2.jpg',0),
  (2275,64,'data/demo/htc_touch_hd_2.jpg',0),
  (2276,64,'data/demo/htc_touch_hd_3.jpg',0),
  (2350,41,'data/demo/imac_2.jpg',0),
  (2351,41,'data/demo/imac_3.jpg',0),
  (2352,42,'data/demo/canon_logo.jpg',0),
  (2353,42,'data/demo/hp_1.jpg',0),
  (2354,42,'data/demo/compaq_presario.jpg',0),
  (2355,42,'data/demo/canon_eos_5d_1.jpg',0),
  (2356,42,'data/demo/canon_eos_5d_2.jpg',0),
  (2417,49,'data/demo/samsung_tab_7.jpg',0),
  (2418,49,'data/demo/samsung_tab_6.jpg',0),
  (2419,49,'data/demo/samsung_tab_5.jpg',0),
  (2420,49,'data/demo/samsung_tab_4.jpg',0),
  (2421,49,'data/demo/samsung_tab_3.jpg',0),
  (2422,49,'data/demo/samsung_tab_2.jpg',0),
  (2423,43,'data/demo/macbook_5.jpg',0),
  (2424,43,'data/demo/macbook_4.jpg',0),
  (2425,43,'data/demo/macbook_2.jpg',0),
  (2426,43,'data/demo/macbook_3.jpg',0),
  (2427,30,'data/demo/canon_eos_5d_2.jpg',0),
  (2428,30,'data/demo/canon_eos_5d_3.jpg',0),
  (2429,46,'data/demo/sony_vaio_5.jpg',0),
  (2430,46,'data/demo/sony_vaio_4.jpg',0),
  (2431,46,'data/demo/sony_vaio_2.jpg',0),
  (2432,46,'data/demo/sony_vaio_3.jpg',0),
  (2433,47,'data/demo/hp_3.jpg',0),
  (2434,47,'data/demo/hp_2.jpg',0);
COMMIT;

#
# Структура для таблицы `product_option`: 
#

CREATE TABLE `product_option` (
  `product_option_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `product_id` INTEGER(11) NOT NULL,
  `option_id` INTEGER(11) NOT NULL,
  `option_value` TEXT COLLATE utf8_general_ci NOT NULL,
  `required` TINYINT(1) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=228 AVG_ROW_LENGTH=28 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `product_option` table  (LIMIT -486,500)
#

INSERT INTO `product_option` (`product_option_id`, `product_id`, `option_id`, `option_value`, `required`) VALUES 
  (208,42,4,'test',1),
  (209,42,6,'',1),
  (217,42,5,'',1),
  (218,42,1,'',1),
  (219,42,8,'2011-02-20',1),
  (220,42,10,'2011-02-20 22:25',1),
  (221,42,9,'22:25',1),
  (222,42,7,'',1),
  (223,42,2,'',1),
  (224,35,11,'',1),
  (225,47,12,'2011-04-22',1),
  (226,30,5,'',1),
  (227,49,11,'',1);
COMMIT;

#
# Структура для таблицы `product_option_value`: 
#

CREATE TABLE `product_option_value` (
  `product_option_value_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` INTEGER(11) NOT NULL,
  `product_id` INTEGER(11) NOT NULL,
  `option_id` INTEGER(11) NOT NULL,
  `option_value_id` INTEGER(11) NOT NULL,
  `quantity` INTEGER(3) NOT NULL,
  `subtract` TINYINT(1) NOT NULL,
  `price` DECIMAL(15,4) NOT NULL,
  `price_prefix` VARCHAR(1) COLLATE utf8_general_ci NOT NULL,
  `points` INTEGER(8) NOT NULL,
  `points_prefix` VARCHAR(1) COLLATE utf8_general_ci NOT NULL,
  `weight` DECIMAL(15,8) NOT NULL,
  `weight_prefix` VARCHAR(1) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=18 AVG_ROW_LENGTH=53 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `product_option_value` table  (LIMIT -482,500)
#

INSERT INTO `product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES 
  (1,217,42,5,41,100,0,1.0000,'+',0,'+',1.00000000,'+'),
  (2,217,42,5,42,200,1,2.0000,'+',0,'+',2.00000000,'+'),
  (3,217,42,5,40,300,0,3.0000,'+',0,'+',3.00000000,'+'),
  (4,217,42,5,39,92,1,4.0000,'+',0,'+',4.00000000,'+'),
  (5,218,42,1,32,96,1,10.0000,'+',1,'+',10.00000000,'+'),
  (6,218,42,1,31,146,1,20.0000,'+',2,'-',20.00000000,'+'),
  (7,218,42,1,43,300,1,30.0000,'+',3,'+',30.00000000,'+'),
  (8,223,42,2,23,48,1,10.0000,'+',0,'+',10.00000000,'+'),
  (9,223,42,2,24,194,1,20.0000,'+',0,'+',20.00000000,'+'),
  (10,223,42,2,44,2696,1,30.0000,'+',0,'+',30.00000000,'+'),
  (11,223,42,2,45,3998,1,40.0000,'+',0,'+',40.00000000,'+'),
  (12,224,35,11,46,0,1,5.0000,'+',0,'+',0.00000000,'+'),
  (13,224,35,11,47,10,1,10.0000,'+',0,'+',0.00000000,'+'),
  (14,224,35,11,48,15,1,15.0000,'+',0,'+',0.00000000,'+'),
  (15,226,30,5,39,2,1,0.0000,'+',0,'+',0.00000000,'+'),
  (16,226,30,5,40,5,1,0.0000,'+',0,'+',0.00000000,'+'),
  (17,227,49,11,48,1,1,0.0000,'+',0,'+',0.00000000,'+');
COMMIT;

#
# Структура для таблицы `product_related`: 
#

CREATE TABLE `product_related` (
  `product_id` INTEGER(11) NOT NULL,
  `related_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=9 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `product_related` table  (LIMIT -495,500)
#

INSERT INTO `product_related` (`product_id`, `related_id`) VALUES 
  (40,42),
  (41,42),
  (42,40),
  (42,41);
COMMIT;

#
# Структура для таблицы `product_reward`: 
#

CREATE TABLE `product_reward` (
  `product_reward_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `product_id` INTEGER(11) NOT NULL DEFAULT 0,
  `customer_group_id` INTEGER(11) NOT NULL DEFAULT 0,
  `points` INTEGER(8) NOT NULL DEFAULT 0
)ENGINE=MyISAM
AUTO_INCREMENT=567 AVG_ROW_LENGTH=17 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `product_reward` table  (LIMIT -478,500)
#

INSERT INTO `product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES 
  (331,44,1,700),
  (333,45,1,800),
  (335,40,1,0),
  (337,31,1,0),
  (339,29,1,0),
  (343,48,1,0),
  (345,33,1,0),
  (351,36,1,0),
  (353,34,1,0),
  (355,32,1,0),
  (379,28,1,400),
  (425,35,1,0),
  (545,41,1,0),
  (546,42,1,100),
  (557,49,1,1000),
  (559,66,1,0),
  (562,65,1,0),
  (563,43,1,600),
  (564,30,1,200),
  (565,46,1,0),
  (566,47,1,300);
COMMIT;

#
# Структура для таблицы `product_special`: 
#

CREATE TABLE `product_special` (
  `product_special_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `product_id` INTEGER(11) NOT NULL,
  `customer_group_id` INTEGER(11) NOT NULL,
  `priority` INTEGER(5) NOT NULL DEFAULT 1,
  `price` DECIMAL(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` DATE NOT NULL DEFAULT '0000-00-00',
  `date_end` DATE NOT NULL DEFAULT '0000-00-00'
)ENGINE=MyISAM
AUTO_INCREMENT=448 AVG_ROW_LENGTH=30 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `product_special` table  (LIMIT -495,500)
#

INSERT INTO `product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES 
  (440,42,1,1,90.0000,'0000-00-00','0000-00-00'),
  (445,49,1,1,1500.0000,'2017-12-01','2018-01-29'),
  (446,30,1,1,80.0000,'0000-00-00','0000-00-00'),
  (447,30,1,2,90.0000,'0000-00-00','0000-00-00');
COMMIT;

#
# Структура для таблицы `product_to_category`: 
#

CREATE TABLE `product_to_category` (
  `product_id` INTEGER(11) NOT NULL,
  `category_id` INTEGER(11) NOT NULL,
  `main_category` TINYINT(1) NOT NULL DEFAULT 0
)ENGINE=MyISAM
AVG_ROW_LENGTH=10 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `product_to_category` table  (LIMIT -490,500)
#

INSERT INTO `product_to_category` (`product_id`, `category_id`, `main_category`) VALUES 
  (30,33,1),
  (31,33,0),
  (32,34,0),
  (33,28,0),
  (34,34,0),
  (36,34,0),
  (42,28,1),
  (48,34,0),
  (65,64,1);
COMMIT;

#
# Структура для таблицы `product_to_download`: 
#

CREATE TABLE `product_to_download` (
  `product_id` INTEGER(11) NOT NULL,
  `download_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `product_to_layout`: 
#

CREATE TABLE `product_to_layout` (
  `product_id` INTEGER(11) NOT NULL,
  `store_id` INTEGER(11) NOT NULL,
  `layout_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `product_to_store`: 
#

CREATE TABLE `product_to_store` (
  `product_id` INTEGER(11) NOT NULL,
  `store_id` INTEGER(11) NOT NULL DEFAULT 0
)ENGINE=MyISAM
AVG_ROW_LENGTH=9 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `product_to_store` table  (LIMIT -477,500)
#

INSERT INTO `product_to_store` (`product_id`, `store_id`) VALUES 
  (28,0),
  (29,0),
  (30,0),
  (31,0),
  (32,0),
  (33,0),
  (34,0),
  (35,0),
  (36,0),
  (40,0),
  (41,0),
  (42,0),
  (43,0),
  (44,0),
  (45,0),
  (46,0),
  (47,0),
  (48,0),
  (49,0),
  (64,0),
  (65,0),
  (66,0);
COMMIT;

#
# Структура для таблицы `return`: 
#

CREATE TABLE `return` (
  `return_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `order_id` INTEGER(11) NOT NULL,
  `product_id` INTEGER(11) NOT NULL,
  `customer_id` INTEGER(11) NOT NULL,
  `firstname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `lastname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `email` VARCHAR(96) COLLATE utf8_general_ci NOT NULL,
  `telephone` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `product` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `model` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `quantity` INTEGER(4) NOT NULL,
  `opened` TINYINT(1) NOT NULL,
  `return_reason_id` INTEGER(11) NOT NULL,
  `return_action_id` INTEGER(11) NOT NULL,
  `return_status_id` INTEGER(11) NOT NULL,
  `comment` TEXT COLLATE utf8_general_ci,
  `date_ordered` DATE NOT NULL,
  `date_added` DATETIME NOT NULL,
  `date_modified` DATETIME NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `return_action`: 
#

CREATE TABLE `return_action` (
  `return_action_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `language_id` INTEGER(11) NOT NULL DEFAULT 0,
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=4 AVG_ROW_LENGTH=48 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `return_action` table  (LIMIT -493,500)
#

INSERT INTO `return_action` (`return_action_id`, `language_id`, `name`) VALUES 
  (1,1,'Возвращены средства'),
  (1,2,'Refunded'),
  (2,1,'Выдан в кредит'),
  (2,2,'Credit Issued'),
  (3,1,'Отправлена замена (отправлен другой товар для замены)'),
  (3,2,'Replacement Sent');
COMMIT;

#
# Структура для таблицы `return_history`: 
#

CREATE TABLE `return_history` (
  `return_history_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `return_id` INTEGER(11) NOT NULL,
  `return_status_id` INTEGER(11) NOT NULL,
  `notify` TINYINT(1) NOT NULL,
  `comment` TEXT COLLATE utf8_general_ci NOT NULL,
  `date_added` DATETIME NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `return_reason`: 
#

CREATE TABLE `return_reason` (
  `return_reason_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `language_id` INTEGER(11) NOT NULL DEFAULT 0,
  `name` VARCHAR(128) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=6 AVG_ROW_LENGTH=70 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `return_reason` table  (LIMIT -491,500)
#

INSERT INTO `return_reason` (`return_reason_id`, `language_id`, `name`) VALUES 
  (1,1,'Получен/доставлен неисправным (сломанным)'),
  (1,2,'Dead On Arrival'),
  (2,1,'Получен не тот (ошибочный) товар'),
  (2,2,'Received Wrong Item'),
  (4,1,'Ошибочный, пожалуйста укажите/приложите подробности'),
  (4,2,'Faulty, please supply details'),
  (5,1,'Другое (другая причина), пожалуйста укажите/приложите подробности'),
  (5,2,'Other, please supply details');
COMMIT;

#
# Структура для таблицы `return_status`: 
#

CREATE TABLE `return_status` (
  `return_status_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `language_id` INTEGER(11) NOT NULL DEFAULT 0,
  `name` VARCHAR(32) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=4 AVG_ROW_LENGTH=48 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `return_status` table  (LIMIT -493,500)
#

INSERT INTO `return_status` (`return_status_id`, `language_id`, `name`) VALUES 
  (1,1,'Рассматриваемый / находящийся в '),
  (1,2,'Pending'),
  (2,1,'Заказ \"висит\" в ожидании поступл'),
  (2,2,'Awaiting Products'),
  (3,1,'Готов (к отправке) / или Заверше'),
  (3,2,'Complete');
COMMIT;

#
# Структура для таблицы `review`: 
#

CREATE TABLE `review` (
  `review_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `product_id` INTEGER(11) NOT NULL,
  `customer_id` INTEGER(11) NOT NULL,
  `author` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `text` TEXT COLLATE utf8_general_ci NOT NULL,
  `rating` INTEGER(1) NOT NULL,
  `status` TINYINT(1) NOT NULL DEFAULT 0,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=8 AVG_ROW_LENGTH=88 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `review` table  (LIMIT -492,500)
#

INSERT INTO `review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES 
  (1,33,0,'гшгш','гшгшгшгшгшwewewewexdwedwedwedxwedxwedxwexdwxewedxwed',5,0,'2017-12-27 16:04:14','0000-00-00 00:00:00'),
  (2,33,0,'edwdewed','edwedwedwedwedwededddddddddddddddddddddddddddddddwewe',3,0,'2017-12-27 16:04:52','0000-00-00 00:00:00'),
  (3,42,0,'uikuikuik','uikuikuikuikuikuikuikurrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',3,0,'2017-12-27 16:06:06','0000-00-00 00:00:00'),
  (4,49,0,'rtgtrg','rtgrtcccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc',2,0,'2017-12-28 16:42:26','0000-00-00 00:00:00'),
  (5,49,0,'12576890','купукпйукпй',4,1,'2018-01-03 15:15:41','0000-00-00 00:00:00'),
  (6,65,0,'Автор1','цувцув',4,1,'2018-01-03 15:16:21','0000-00-00 00:00:00'),
  (7,65,0,'Автор2','мамывамывамывам\r\nыва\r\nмывамывам',5,1,'2018-01-03 15:17:07','0000-00-00 00:00:00');
COMMIT;

#
# Структура для таблицы `setting`: 
#

CREATE TABLE `setting` (
  `setting_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `store_id` INTEGER(11) NOT NULL DEFAULT 0,
  `group` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `key` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `value` TEXT COLLATE utf8_general_ci NOT NULL,
  `serialized` TINYINT(1) NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=433 AVG_ROW_LENGTH=96 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `setting` table  (LIMIT -342,500)
#

INSERT INTO `setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES 
  (1,0,'shipping','shipping_sort_order','3',0),
  (2,0,'sub_total','sub_total_sort_order','1',0),
  (3,0,'sub_total','sub_total_status','1',0),
  (4,0,'tax','tax_status','1',0),
  (5,0,'total','total_sort_order','9',0),
  (6,0,'total','total_status','1',0),
  (7,0,'tax','tax_sort_order','5',0),
  (8,0,'free_checkout','free_checkout_sort_order','1',0),
  (9,0,'cod','cod_sort_order','5',0),
  (10,0,'cod','cod_total','0.01',0),
  (11,0,'cod','cod_order_status_id','1',0),
  (12,0,'cod','cod_geo_zone_id','0',0),
  (13,0,'cod','cod_status','1',0),
  (14,0,'shipping','shipping_status','1',0),
  (15,0,'shipping','shipping_estimator','1',0),
  (27,0,'coupon','coupon_sort_order','4',0),
  (28,0,'coupon','coupon_status','1',0),
  (42,0,'credit','credit_sort_order','7',0),
  (43,0,'credit','credit_status','1',0),
  (53,0,'reward','reward_sort_order','2',0),
  (54,0,'reward','reward_status','1',0),
  (60,0,'account','account_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),
  (93,0,'voucher','voucher_sort_order','8',0),
  (94,0,'voucher','voucher_status','1',0),
  (102,0,'free_checkout','free_checkout_status','1',0),
  (103,0,'free_checkout','free_checkout_order_status_id','1',0),
  (260,0,'flat','flat_cost','5.00',0),
  (261,0,'flat','flat_tax_class_id','9',0),
  (262,0,'flat','flat_geo_zone_id','0',0),
  (263,0,'flat','flat_status','1',0),
  (264,0,'flat','flat_sort_order','1',0),
  (272,0,'slideshow','slideshow_module','a:1:{i:0;a:7:{s:9:\"banner_id\";s:1:\"7\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:3:\"280\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),
  (290,0,'special','special_module','a:1:{i:0;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}}',1),
  (292,0,'featured','product','',0),
  (293,0,'featured','featured_product','43,40,42,49,46,47,28',0),
  (294,0,'featured','featured_module','a:1:{i:0;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:3:\"160\";s:12:\"image_height\";s:3:\"160\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),
  (298,0,'carousel','carousel_module','a:1:{i:0;a:9:{s:9:\"banner_id\";s:1:\"8\";s:5:\"limit\";s:1:\"5\";s:6:\"scroll\";s:1:\"3\";s:5:\"width\";s:2:\"80\";s:6:\"height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"0\";}}',1),
  (299,0,'banner','banner_module','a:1:{i:0;a:7:{s:9:\"banner_id\";s:1:\"7\";s:5:\"width\";s:3:\"182\";s:6:\"height\";s:3:\"182\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"0\";}}',1),
  (309,0,'maincategory','maincategory_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:2:\"-2\";}}',1),
  (314,0,'category','category_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:1:\"1\";}}',1),
  (315,0,'information','information_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"0\";s:10:\"sort_order\";s:2:\"10\";}}',1),
  (316,0,'config','config_name','Велосклад',0),
  (317,0,'config','config_owner','Мое Имя',0),
  (318,0,'config','config_address','Адрес',0),
  (319,0,'config','config_email','test205@mail.ru',0),
  (320,0,'config','config_telephone','123456789',0),
  (321,0,'config','config_fax','',0),
  (322,0,'config','config_title','Мой Магазин',0),
  (323,0,'config','config_meta_description','Мой Магазин',0),
  (324,0,'config','config_template','default',0),
  (325,0,'config','config_layout_id','4',0),
  (326,0,'config','config_country_id','176',0),
  (327,0,'config','config_zone_id','2761',0),
  (328,0,'config','config_language','ru',0),
  (329,0,'config','config_admin_language','ru',0),
  (330,0,'config','config_currency','RUB',0),
  (331,0,'config','config_currency_auto','1',0),
  (332,0,'config','config_length_class_id','1',0),
  (333,0,'config','config_weight_class_id','1',0),
  (334,0,'config','config_catalog_limit','15',0),
  (335,0,'config','config_admin_limit','20',0),
  (336,0,'config','config_product_count','1',0),
  (337,0,'config','config_review_status','1',0),
  (338,0,'config','config_download','1',0),
  (339,0,'config','config_voucher_min','1',0),
  (340,0,'config','config_voucher_max','1000',0),
  (341,0,'config','config_tax','1',0),
  (342,0,'config','config_vat','0',0),
  (343,0,'config','config_tax_default','shipping',0),
  (344,0,'config','config_tax_customer','shipping',0),
  (345,0,'config','config_customer_online','0',0),
  (346,0,'config','config_customer_group_id','1',0),
  (347,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),
  (348,0,'config','config_customer_price','0',0),
  (349,0,'config','config_account_id','3',0),
  (350,0,'config','config_cart_weight','1',0),
  (351,0,'config','config_guest_checkout','1',0),
  (352,0,'config','config_checkout_id','5',0),
  (353,0,'config','config_order_edit','100',0),
  (354,0,'config','config_invoice_prefix','INV-2013-00',0),
  (355,0,'config','config_order_status_id','1',0),
  (356,0,'config','config_complete_status_id','5',0),
  (357,0,'config','config_stock_display','0',0),
  (358,0,'config','config_stock_warning','0',0),
  (359,0,'config','config_stock_checkout','0',0),
  (360,0,'config','config_stock_status_id','5',0),
  (361,0,'config','config_affiliate_id','4',0),
  (362,0,'config','config_commission','5',0),
  (363,0,'config','config_return_id','0',0),
  (364,0,'config','config_return_status_id','2',0),
  (365,0,'config','config_logo','data/logo.png',0),
  (366,0,'config','config_icon','data/cart.png',0),
  (367,0,'config','config_image_category_width','80',0),
  (368,0,'config','config_image_category_height','80',0),
  (369,0,'config','config_image_thumb_width','228',0),
  (370,0,'config','config_image_thumb_height','228',0),
  (371,0,'config','config_image_popup_width','500',0),
  (372,0,'config','config_image_popup_height','500',0),
  (373,0,'config','config_image_product_width','120',0),
  (374,0,'config','config_image_product_height','120',0),
  (375,0,'config','config_image_additional_width','74',0),
  (376,0,'config','config_image_additional_height','74',0),
  (377,0,'config','config_image_related_width','80',0),
  (378,0,'config','config_image_related_height','80',0),
  (379,0,'config','config_image_compare_width','90',0),
  (380,0,'config','config_image_compare_height','90',0),
  (381,0,'config','config_image_wishlist_width','47',0),
  (382,0,'config','config_image_wishlist_height','47',0),
  (383,0,'config','config_image_cart_width','47',0),
  (384,0,'config','config_image_cart_height','47',0),
  (385,0,'config','config_ftp_host','localhost',0),
  (386,0,'config','config_ftp_port','21',0),
  (387,0,'config','config_ftp_username','',0),
  (388,0,'config','config_ftp_password','',0),
  (389,0,'config','config_ftp_root','',0),
  (390,0,'config','config_ftp_status','0',0),
  (391,0,'config','config_mail_protocol','mail',0),
  (392,0,'config','config_mail_parameter','',0),
  (393,0,'config','config_smtp_host','',0),
  (394,0,'config','config_smtp_username','',0),
  (395,0,'config','config_smtp_password','',0),
  (396,0,'config','config_smtp_port','25',0),
  (397,0,'config','config_smtp_timeout','5',0),
  (398,0,'config','config_alert_mail','0',0),
  (399,0,'config','config_account_mail','0',0),
  (400,0,'config','config_alert_emails','',0),
  (401,0,'config','config_fraud_detection','0',0),
  (402,0,'config','config_fraud_key','',0),
  (403,0,'config','config_fraud_score','',0),
  (404,0,'config','config_fraud_status_id','2',0),
  (405,0,'config','config_secure','0',0),
  (406,0,'config','config_shared','0',0),
  (407,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),
  (408,0,'config','config_seo_url','0',0),
  (409,0,'config','config_seo_url_type','seo_url',0),
  (410,0,'config','config_seo_url_include_path','0',0),
  (411,0,'config','config_seo_url_postfix','',0),
  (412,0,'config','config_file_extension_allowed','txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods',0),
  (413,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet',0),
  (414,0,'config','config_maintenance','0',0),
  (415,0,'config','config_password','1',0),
  (416,0,'config','config_encryption','62d2909eed7f8d28994136ce1076fb47',0),
  (417,0,'config','config_compression','0',0),
  (418,0,'config','config_error_display','1',0),
  (419,0,'config','config_error_log','1',0),
  (420,0,'config','config_error_filename','my_mego_log.log',0),
  (421,0,'config','config_google_analytics','',0),
  (422,0,'config','config_google_api_key','',0),
  (423,0,'config','config_sms_alert','0',0),
  (424,0,'config','config_sms_gatename','testsms',0),
  (425,0,'config','config_sms_from','',0),
  (426,0,'config','config_sms_to','',0),
  (427,0,'config','config_sms_copy','',0),
  (428,0,'config','config_sms_message','',0),
  (429,0,'config','config_sms_gate_username','',0),
  (430,0,'config','config_sms_gate_password','',0),
  (432,0,'latest','latest_module','a:1:{i:0;a:7:{s:5:\"limit\";s:1:\"5\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}}',1);
COMMIT;

#
# Структура для таблицы `stock_status`: 
#

CREATE TABLE `stock_status` (
  `stock_status_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `language_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(32) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=9 AVG_ROW_LENGTH=30 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `stock_status` table  (LIMIT -491,500)
#

INSERT INTO `stock_status` (`stock_status_id`, `language_id`, `name`) VALUES 
  (5,1,'Нет в наличии'),
  (5,2,'Out Of Stock'),
  (6,1,'Ожидание 2-3 дня'),
  (6,2,'2 - 3 Days'),
  (7,1,'В наличии'),
  (7,2,'In Stock'),
  (8,1,'Предзаказ'),
  (8,2,'Pre-Order');
COMMIT;

#
# Структура для таблицы `store`: 
#

CREATE TABLE `store` (
  `store_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `url` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `ssl` VARCHAR(255) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `tax_class`: 
#

CREATE TABLE `tax_class` (
  `tax_class_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `description` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=10 AVG_ROW_LENGTH=68 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `tax_class` table  (LIMIT -498,500)
#

INSERT INTO `tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES 
  (9,'Налоги','Облагаемые налогом','2009-01-06 23:21:53','2011-03-09 21:17:10');
COMMIT;

#
# Структура для таблицы `tax_rate`: 
#

CREATE TABLE `tax_rate` (
  `tax_rate_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` INTEGER(11) NOT NULL DEFAULT 0,
  `name` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `rate` DECIMAL(15,4) NOT NULL DEFAULT 0.0000,
  `type` CHAR(1) COLLATE utf8_general_ci NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=88 AVG_ROW_LENGTH=46 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `tax_rate` table  (LIMIT -497,500)
#

INSERT INTO `tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES 
  (86,3,'НДС 18%',18.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),
  (87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
COMMIT;

#
# Структура для таблицы `tax_rate_to_customer_group`: 
#

CREATE TABLE `tax_rate_to_customer_group` (
  `tax_rate_id` INTEGER(11) NOT NULL,
  `customer_group_id` INTEGER(11) NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=9 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `tax_rate_to_customer_group` table  (LIMIT -497,500)
#

INSERT INTO `tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES 
  (86,1),
  (87,1);
COMMIT;

#
# Структура для таблицы `tax_rule`: 
#

CREATE TABLE `tax_rule` (
  `tax_rule_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` INTEGER(11) NOT NULL,
  `tax_rate_id` INTEGER(11) NOT NULL,
  `based` VARCHAR(10) COLLATE utf8_general_ci NOT NULL,
  `priority` INTEGER(5) NOT NULL DEFAULT 1
)ENGINE=MyISAM
AUTO_INCREMENT=129 AVG_ROW_LENGTH=29 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `tax_rule` table  (LIMIT -495,500)
#

INSERT INTO `tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES 
  (120,10,87,'store',0),
  (121,10,86,'payment',1),
  (127,9,87,'shipping',2),
  (128,9,86,'shipping',1);
COMMIT;

#
# Структура для таблицы `url_alias`: 
#

CREATE TABLE `url_alias` (
  `url_alias_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `query` VARCHAR(255) COLLATE utf8_general_ci NOT NULL,
  `keyword` VARCHAR(255) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=825 AVG_ROW_LENGTH=40 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `url_alias` table  (LIMIT -452,500)
#

INSERT INTO `url_alias` (`url_alias_id`, `query`, `keyword`) VALUES 
  (704,'product_id=48','ipod_classic'),
  (730,'manufacturer_id=8','apple'),
  (774,'common/home',''),
  (775,'affiliate/login','affiliate-login'),
  (776,'affiliate/register','create-affiliate-account'),
  (777,'affiliate/forgotten','affiliate-forgot-password'),
  (778,'affiliate/logout','affiliate-logout'),
  (779,'affiliate/transaction','affiliate-transactions'),
  (780,'affiliate/tracking','affiliate-tracking-code'),
  (781,'affiliate/payment','affiliate-payment-options'),
  (782,'affiliate/password','change-affiliate-password'),
  (783,'affiliate/edit','edit-affiliate-account'),
  (784,'account/reward','reward-points'),
  (785,'account/address','address-book'),
  (786,'account/password','change-password'),
  (787,'account/edit','edit-account'),
  (788,'product/search','search'),
  (789,'product/compare','compare-products'),
  (790,'account/register','create-account'),
  (791,'account/transaction','transactions'),
  (792,'account/return','returns'),
  (793,'account/download','downloads'),
  (794,'account/forgotten','forgot-password'),
  (795,'information/sitemap','sitemap'),
  (796,'account/return/insert','request-return'),
  (797,'information/contact','contact-us'),
  (798,'product/manufacturer','brands'),
  (799,'checkout/voucher','gift-vouchers'),
  (800,'affiliate/account','affiliates'),
  (801,'product/special','specials'),
  (802,'account/newsletter','newsletter'),
  (803,'account/order','order-history'),
  (804,'account/logout','logout'),
  (805,'account/login','login'),
  (806,'checkout/checkout','checkout'),
  (807,'checkout/cart','cart'),
  (808,'account/account','my-account'),
  (809,'account/wishlist','wishlist'),
  (810,'account/voucher','vouchers'),
  (811,'product_id=35','about_us'),
  (813,'category_id=34','mp3-players'),
  (816,'information_id=4','about_us'),
  (817,'product_id=42','test'),
  (821,'information_id=7','bycicle'),
  (822,'information_id=8','mauntain'),
  (823,'information_id=9','parts'),
  (824,'information_id=10','helmet');
COMMIT;

#
# Структура для таблицы `user`: 
#

CREATE TABLE `user` (
  `user_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` INTEGER(11) NOT NULL,
  `username` VARCHAR(20) COLLATE utf8_general_ci NOT NULL,
  `password` VARCHAR(40) COLLATE utf8_general_ci NOT NULL,
  `salt` VARCHAR(9) COLLATE utf8_general_ci NOT NULL,
  `firstname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `lastname` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `email` VARCHAR(96) COLLATE utf8_general_ci NOT NULL,
  `code` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `ip` VARCHAR(40) COLLATE utf8_general_ci NOT NULL,
  `status` TINYINT(1) NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=2 AVG_ROW_LENGTH=116 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `user` table  (LIMIT -498,500)
#

INSERT INTO `user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES 
  (1,1,'root','bafa37e20d8abdd2f95108779106bc8106f040f8','fda1311b9','','','test205@mail.ru','','::1',1,'2017-11-16 17:48:11');
COMMIT;

#
# Структура для таблицы `user_group`: 
#

CREATE TABLE `user_group` (
  `user_group_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `permission` TEXT COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=11 AVG_ROW_LENGTH=4238 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `user_group` table  (LIMIT -497,500)
#

INSERT INTO `user_group` (`user_group_id`, `name`, `permission`) VALUES 
  (1,'Главный администратор','a:2:{s:6:\"access\";a:138:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:14:\"catalog/review\";i:10;s:18:\"common/filemanager\";i:11;s:13:\"design/banner\";i:12;s:19:\"design/custom_field\";i:13;s:13:\"design/layout\";i:14;s:14:\"extension/feed\";i:15;s:17:\"extension/manager\";i:16;s:16:\"extension/module\";i:17;s:17:\"extension/payment\";i:18;s:18:\"extension/shipping\";i:19;s:15:\"extension/total\";i:20;s:16:\"feed/google_base\";i:21;s:19:\"feed/google_sitemap\";i:22;s:20:\"localisation/country\";i:23;s:21:\"localisation/currency\";i:24;s:21:\"localisation/geo_zone\";i:25;s:21:\"localisation/language\";i:26;s:25:\"localisation/length_class\";i:27;s:25:\"localisation/order_status\";i:28;s:26:\"localisation/return_action\";i:29;s:26:\"localisation/return_reason\";i:30;s:26:\"localisation/return_status\";i:31;s:25:\"localisation/stock_status\";i:32;s:22:\"localisation/tax_class\";i:33;s:21:\"localisation/tax_rate\";i:34;s:25:\"localisation/weight_class\";i:35;s:17:\"localisation/zone\";i:36;s:14:\"module/account\";i:37;s:16:\"module/affiliate\";i:38;s:13:\"module/banner\";i:39;s:17:\"module/bestseller\";i:40;s:15:\"module/carousel\";i:41;s:15:\"module/category\";i:42;s:15:\"module/featured\";i:43;s:13:\"module/filter\";i:44;s:18:\"module/google_talk\";i:45;s:18:\"module/information\";i:46;s:13:\"module/latest\";i:47;s:16:\"module/slideshow\";i:48;s:14:\"module/special\";i:49;s:12:\"module/store\";i:50;s:14:\"module/welcome\";i:51;s:14:\"octeam/toolset\";i:52;s:18:\"octeam_tools/dummy\";i:53;s:32:\"octeam_tools/seo_keyword_checker\";i:54;s:24:\"payment/authorizenet_aim\";i:55;s:21:\"payment/bank_transfer\";i:56;s:14:\"payment/cheque\";i:57;s:11:\"payment/cod\";i:58;s:21:\"payment/free_checkout\";i:59;s:22:\"payment/klarna_account\";i:60;s:22:\"payment/klarna_invoice\";i:61;s:14:\"payment/liqpay\";i:62;s:20:\"payment/moneybookers\";i:63;s:14:\"payment/nochex\";i:64;s:15:\"payment/paymate\";i:65;s:16:\"payment/paypoint\";i:66;s:13:\"payment/payza\";i:67;s:26:\"payment/perpetual_payments\";i:68;s:14:\"payment/pp_pro\";i:69;s:17:\"payment/pp_pro_uk\";i:70;s:19:\"payment/pp_standard\";i:71;s:15:\"payment/sagepay\";i:72;s:22:\"payment/sagepay_direct\";i:73;s:18:\"payment/sagepay_us\";i:74;s:19:\"payment/twocheckout\";i:75;s:28:\"payment/web_payment_software\";i:76;s:16:\"payment/worldpay\";i:77;s:27:\"report/affiliate_commission\";i:78;s:22:\"report/customer_credit\";i:79;s:22:\"report/customer_online\";i:80;s:21:\"report/customer_order\";i:81;s:22:\"report/customer_reward\";i:82;s:24:\"report/product_purchased\";i:83;s:21:\"report/product_viewed\";i:84;s:18:\"report/sale_coupon\";i:85;s:17:\"report/sale_order\";i:86;s:18:\"report/sale_return\";i:87;s:20:\"report/sale_shipping\";i:88;s:15:\"report/sale_tax\";i:89;s:14:\"sale/affiliate\";i:90;s:12:\"sale/contact\";i:91;s:11:\"sale/coupon\";i:92;s:13:\"sale/customer\";i:93;s:20:\"sale/customer_ban_ip\";i:94;s:19:\"sale/customer_group\";i:95;s:10:\"sale/order\";i:96;s:11:\"sale/return\";i:97;s:12:\"sale/voucher\";i:98;s:18:\"sale/voucher_theme\";i:99;s:15:\"setting/setting\";i:100;s:13:\"setting/store\";i:101;s:16:\"shipping/auspost\";i:102;s:17:\"shipping/citylink\";i:103;s:14:\"shipping/fedex\";i:104;s:13:\"shipping/flat\";i:105;s:13:\"shipping/free\";i:106;s:13:\"shipping/item\";i:107;s:23:\"shipping/parcelforce_48\";i:108;s:15:\"shipping/pickup\";i:109;s:19:\"shipping/royal_mail\";i:110;s:12:\"shipping/ups\";i:111;s:13:\"shipping/usps\";i:112;s:15:\"shipping/weight\";i:113;s:11:\"tool/backup\";i:114;s:14:\"tool/error_log\";i:115;s:12:\"total/coupon\";i:116;s:12:\"total/credit\";i:117;s:14:\"total/handling\";i:118;s:16:\"total/klarna_fee\";i:119;s:19:\"total/low_order_fee\";i:120;s:12:\"total/reward\";i:121;s:14:\"total/shipping\";i:122;s:15:\"total/sub_total\";i:123;s:9:\"total/tax\";i:124;s:11:\"total/total\";i:125;s:13:\"total/voucher\";i:126;s:9:\"user/user\";i:127;s:20:\"user/user_permission\";i:128;s:17:\"module/bestseller\";i:129;s:18:\"module/information\";i:130;s:13:\"module/filter\";i:131;s:13:\"module/latest\";i:132;s:14:\"module/special\";i:133;s:12:\"module/store\";i:134;s:14:\"module/welcome\";i:135;s:19:\"module/maincategory\";i:136;s:19:\"module/maincategory\";i:137;s:13:\"module/latest\";}s:6:\"modify\";a:138:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:14:\"catalog/review\";i:10;s:18:\"common/filemanager\";i:11;s:13:\"design/banner\";i:12;s:19:\"design/custom_field\";i:13;s:13:\"design/layout\";i:14;s:14:\"extension/feed\";i:15;s:17:\"extension/manager\";i:16;s:16:\"extension/module\";i:17;s:17:\"extension/payment\";i:18;s:18:\"extension/shipping\";i:19;s:15:\"extension/total\";i:20;s:16:\"feed/google_base\";i:21;s:19:\"feed/google_sitemap\";i:22;s:20:\"localisation/country\";i:23;s:21:\"localisation/currency\";i:24;s:21:\"localisation/geo_zone\";i:25;s:21:\"localisation/language\";i:26;s:25:\"localisation/length_class\";i:27;s:25:\"localisation/order_status\";i:28;s:26:\"localisation/return_action\";i:29;s:26:\"localisation/return_reason\";i:30;s:26:\"localisation/return_status\";i:31;s:25:\"localisation/stock_status\";i:32;s:22:\"localisation/tax_class\";i:33;s:21:\"localisation/tax_rate\";i:34;s:25:\"localisation/weight_class\";i:35;s:17:\"localisation/zone\";i:36;s:14:\"module/account\";i:37;s:16:\"module/affiliate\";i:38;s:13:\"module/banner\";i:39;s:17:\"module/bestseller\";i:40;s:15:\"module/carousel\";i:41;s:15:\"module/category\";i:42;s:15:\"module/featured\";i:43;s:13:\"module/filter\";i:44;s:18:\"module/google_talk\";i:45;s:18:\"module/information\";i:46;s:13:\"module/latest\";i:47;s:16:\"module/slideshow\";i:48;s:14:\"module/special\";i:49;s:12:\"module/store\";i:50;s:14:\"module/welcome\";i:51;s:14:\"octeam/toolset\";i:52;s:18:\"octeam_tools/dummy\";i:53;s:32:\"octeam_tools/seo_keyword_checker\";i:54;s:24:\"payment/authorizenet_aim\";i:55;s:21:\"payment/bank_transfer\";i:56;s:14:\"payment/cheque\";i:57;s:11:\"payment/cod\";i:58;s:21:\"payment/free_checkout\";i:59;s:22:\"payment/klarna_account\";i:60;s:22:\"payment/klarna_invoice\";i:61;s:14:\"payment/liqpay\";i:62;s:20:\"payment/moneybookers\";i:63;s:14:\"payment/nochex\";i:64;s:15:\"payment/paymate\";i:65;s:16:\"payment/paypoint\";i:66;s:13:\"payment/payza\";i:67;s:26:\"payment/perpetual_payments\";i:68;s:14:\"payment/pp_pro\";i:69;s:17:\"payment/pp_pro_uk\";i:70;s:19:\"payment/pp_standard\";i:71;s:15:\"payment/sagepay\";i:72;s:22:\"payment/sagepay_direct\";i:73;s:18:\"payment/sagepay_us\";i:74;s:19:\"payment/twocheckout\";i:75;s:28:\"payment/web_payment_software\";i:76;s:16:\"payment/worldpay\";i:77;s:27:\"report/affiliate_commission\";i:78;s:22:\"report/customer_credit\";i:79;s:22:\"report/customer_online\";i:80;s:21:\"report/customer_order\";i:81;s:22:\"report/customer_reward\";i:82;s:24:\"report/product_purchased\";i:83;s:21:\"report/product_viewed\";i:84;s:18:\"report/sale_coupon\";i:85;s:17:\"report/sale_order\";i:86;s:18:\"report/sale_return\";i:87;s:20:\"report/sale_shipping\";i:88;s:15:\"report/sale_tax\";i:89;s:14:\"sale/affiliate\";i:90;s:12:\"sale/contact\";i:91;s:11:\"sale/coupon\";i:92;s:13:\"sale/customer\";i:93;s:20:\"sale/customer_ban_ip\";i:94;s:19:\"sale/customer_group\";i:95;s:10:\"sale/order\";i:96;s:11:\"sale/return\";i:97;s:12:\"sale/voucher\";i:98;s:18:\"sale/voucher_theme\";i:99;s:15:\"setting/setting\";i:100;s:13:\"setting/store\";i:101;s:16:\"shipping/auspost\";i:102;s:17:\"shipping/citylink\";i:103;s:14:\"shipping/fedex\";i:104;s:13:\"shipping/flat\";i:105;s:13:\"shipping/free\";i:106;s:13:\"shipping/item\";i:107;s:23:\"shipping/parcelforce_48\";i:108;s:15:\"shipping/pickup\";i:109;s:19:\"shipping/royal_mail\";i:110;s:12:\"shipping/ups\";i:111;s:13:\"shipping/usps\";i:112;s:15:\"shipping/weight\";i:113;s:11:\"tool/backup\";i:114;s:14:\"tool/error_log\";i:115;s:12:\"total/coupon\";i:116;s:12:\"total/credit\";i:117;s:14:\"total/handling\";i:118;s:16:\"total/klarna_fee\";i:119;s:19:\"total/low_order_fee\";i:120;s:12:\"total/reward\";i:121;s:14:\"total/shipping\";i:122;s:15:\"total/sub_total\";i:123;s:9:\"total/tax\";i:124;s:11:\"total/total\";i:125;s:13:\"total/voucher\";i:126;s:9:\"user/user\";i:127;s:20:\"user/user_permission\";i:128;s:17:\"module/bestseller\";i:129;s:18:\"module/information\";i:130;s:13:\"module/filter\";i:131;s:13:\"module/latest\";i:132;s:14:\"module/special\";i:133;s:12:\"module/store\";i:134;s:14:\"module/welcome\";i:135;s:19:\"module/maincategory\";i:136;s:19:\"module/maincategory\";i:137;s:13:\"module/latest\";}}'),
  (10,'Демонстрация','');
COMMIT;

#
# Структура для таблицы `voucher`: 
#

CREATE TABLE `voucher` (
  `voucher_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `order_id` INTEGER(11) NOT NULL,
  `code` VARCHAR(10) COLLATE utf8_general_ci NOT NULL,
  `from_name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `from_email` VARCHAR(96) COLLATE utf8_general_ci NOT NULL,
  `to_name` VARCHAR(64) COLLATE utf8_general_ci NOT NULL,
  `to_email` VARCHAR(96) COLLATE utf8_general_ci NOT NULL,
  `voucher_theme_id` INTEGER(11) NOT NULL,
  `message` TEXT COLLATE utf8_general_ci NOT NULL,
  `amount` DECIMAL(15,4) NOT NULL,
  `status` TINYINT(1) NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=1 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `voucher_history`: 
#

CREATE TABLE `voucher_history` (
  `voucher_history_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` INTEGER(11) NOT NULL,
  `order_id` INTEGER(11) NOT NULL,
  `amount` DECIMAL(15,4) NOT NULL,
  `date_added` DATETIME NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=1 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Структура для таблицы `voucher_theme`: 
#

CREATE TABLE `voucher_theme` (
  `voucher_theme_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `image` VARCHAR(255) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=9 AVG_ROW_LENGTH=40 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `voucher_theme` table  (LIMIT -496,500)
#

INSERT INTO `voucher_theme` (`voucher_theme_id`, `image`) VALUES 
  (6,'data/demo/apple_logo.jpg'),
  (7,'data/demo/gift-voucher-birthday.jpg'),
  (8,'data/demo/canon_eos_5d_2.jpg');
COMMIT;

#
# Структура для таблицы `voucher_theme_description`: 
#

CREATE TABLE `voucher_theme_description` (
  `voucher_theme_id` INTEGER(11) NOT NULL,
  `language_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(32) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AVG_ROW_LENGTH=28 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `voucher_theme_description` table  (LIMIT -493,500)
#

INSERT INTO `voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES 
  (6,1,'Рождество'),
  (6,2,'Christmas'),
  (7,1,'День рождения'),
  (7,2,'Birthday'),
  (8,1,'Основной'),
  (8,2,'General');
COMMIT;

#
# Структура для таблицы `weight_class`: 
#

CREATE TABLE `weight_class` (
  `weight_class_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `value` DECIMAL(15,8) NOT NULL DEFAULT 0.00000000
)ENGINE=MyISAM
AUTO_INCREMENT=3 AVG_ROW_LENGTH=13 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `weight_class` table  (LIMIT -497,500)
#

INSERT INTO `weight_class` (`weight_class_id`, `value`) VALUES 
  (1,1.00000000),
  (2,1000.00000000);
COMMIT;

#
# Структура для таблицы `weight_class_description`: 
#

CREATE TABLE `weight_class_description` (
  `weight_class_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `language_id` INTEGER(11) NOT NULL,
  `title` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `unit` VARCHAR(4) COLLATE utf8_general_ci NOT NULL
)ENGINE=MyISAM
AUTO_INCREMENT=3 AVG_ROW_LENGTH=28 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `weight_class_description` table  (LIMIT -495,500)
#

INSERT INTO `weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES 
  (1,1,'Килограммы','кг'),
  (1,2,'Kilogram','kg'),
  (2,1,'Граммы','г'),
  (2,2,'Gram','g');
COMMIT;

#
# Структура для таблицы `zone`: 
#

CREATE TABLE `zone` (
  `zone_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `country_id` INTEGER(11) NOT NULL,
  `name` VARCHAR(128) COLLATE utf8_general_ci NOT NULL,
  `code` VARCHAR(32) COLLATE utf8_general_ci NOT NULL,
  `status` TINYINT(1) NOT NULL DEFAULT 1
)ENGINE=MyISAM
AUTO_INCREMENT=3971 AVG_ROW_LENGTH=29 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `zone` table  (LIMIT 1,500)
#

INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES 
  (1,1,'Бадахшан','BDS',1),
  (2,1,'Бадгис','BDG',1),
  (3,1,'Баглан','BGL',1),
  (4,1,'Балх','BAL',1),
  (5,1,'Бамиан','BAM',1),
  (6,1,'Фарах','FRA',1),
  (7,1,'Фарьяб','FYB',1),
  (8,1,'Газни','GHA',1),
  (9,1,'Гор','GHO',1),
  (10,1,'Гильменд','HEL',1),
  (11,1,'Герат','HER',1),
  (12,1,'Джаузджан','JOW',1),
  (13,1,'Кабул','KAB',1),
  (14,1,'Кандагар','KAN',1),
  (15,1,'Каписа','KAP',1),
  (16,1,'Хост','KHO',1),
  (17,1,'Кунар','KNR',1),
  (18,1,'Кундуз','KDZ',1),
  (19,1,'Лагман','LAG',1),
  (20,1,'Логар','LOW',1),
  (21,1,'Нангархар','NAN',1),
  (22,1,'Нимроз','NIM',1),
  (23,1,'Нуристан','NUR',1),
  (24,1,'Урузган','ORU',1),
  (25,1,'Пактия','PIA',1),
  (26,1,'Пактика','PKA',1),
  (27,1,'Парван','PAR',1),
  (28,1,'Саманган','SAM',1),
  (29,1,'Сари-Пуль','SAR',1),
  (30,1,'Тахар','TAK',1),
  (31,1,'Вардак','WAR',1),
  (32,1,'Забуль','ZAB',1),
  (33,2,'Берат','BR',1),
  (34,2,'Булькиза','BU',1),
  (35,2,'Дельвина','DL',1),
  (36,2,'Девол','DV',1),
  (37,2,'Дибра','DI',1),
  (38,2,'Дуррес','DR',1),
  (39,2,'Эльбасан','EL',1),
  (40,2,'Колёня','ER',1),
  (41,2,'Фиери','FR',1),
  (42,2,'Гирокастра','GJ',1),
  (43,2,'Грамши','GR',1),
  (44,2,'Хас','HA',1),
  (45,2,'Кавая','KA',1),
  (46,2,'Курбин','KB',1),
  (47,2,'Кучова','KC',1),
  (48,2,'Корча','KO',1),
  (49,2,'Круя','KR',1),
  (50,2,'Кукес','KU',1),
  (51,2,'Либражди','LB',1),
  (52,2,'Лежа','LE',1),
  (53,2,'Люшня','LU',1),
  (54,2,'Мальси-э-Мади','MM',1),
  (55,2,'Малакастра','MK',1),
  (56,2,'Мати','MT',1),
  (57,2,'Мирдита','MR',1),
  (58,2,'Пекини','PQ',1),
  (59,2,'Пермети','PR',1),
  (60,2,'Поградец','PG',1),
  (61,2,'Пука','PU',1),
  (62,2,'Шкодер','SH',1),
  (63,2,'Скрапари','SK',1),
  (64,2,'Саранда','SR',1),
  (65,2,'Тепелена','TE',1),
  (66,2,'Тропоя','TP',1),
  (67,2,'Тирана','TR',1),
  (68,2,'Влёра','VL',1),
  (69,3,'Адрар','ADR',1),
  (70,3,'Айн-Дефла','ADE',1),
  (71,3,'Айн-Темухент','ATE',1),
  (72,3,'Алжир','ALG',1),
  (73,3,'Аннаба','ANN',1),
  (74,3,'Батна','BAT',1),
  (75,3,'Бешар','BEC',1),
  (76,3,'Беджая','BEJ',1),
  (77,3,'Бискра','BIS',1),
  (78,3,'Блида','BLI',1),
  (79,3,'Бордж-Бу-Арреридж','BBA',1),
  (80,3,'Буйра','BOA',1),
  (81,3,'Бумердес','BMD',1),
  (82,3,'Шлеф','CHL',1),
  (83,3,'Константина','CON',1),
  (84,3,'Джельфа','DJE',1),
  (85,3,'Эль-Баяд','EBA',1),
  (86,3,'Эль-Уэд','EOU',1),
  (87,3,'Эль-Тарф','ETA',1),
  (88,3,'Гардая','GHA',1),
  (89,3,'Гуэльма','GUE',1),
  (90,3,'Иллизи','ILL',1),
  (91,3,'Джиджель','JIJ',1),
  (92,3,'Хеншела','KHE',1),
  (93,3,'Лагуат','LAG',1),
  (94,3,'Маскара','MUA',1),
  (95,3,'Медеа','MED',1),
  (96,3,'Мила','MIL',1),
  (97,3,'Мостаганем','MOS',1),
  (98,3,'Мсила','MSI',1),
  (99,3,'Наама','NAA',1),
  (100,3,'Оран','ORA',1),
  (101,3,'Уаргла','OUA',1),
  (102,3,'Ум Эль-Буахи','OEB',1),
  (103,3,'Релизан','REL',1),
  (104,3,'Саида','SAI',1),
  (105,3,'Сетиф','SET',1),
  (106,3,'Сиди-Бель-Аббес','SBA',1),
  (107,3,'Скикда','SKI',1),
  (108,3,'Сук-Ахрас','SAH',1),
  (109,3,'Таменрассет','TAM',1),
  (110,3,'Тебесса','TEB',1),
  (111,3,'Тиарет','TIA',1),
  (112,3,'Тиндуф','TIN',1),
  (113,3,'Типаза','TIP',1),
  (114,3,'Тиссемсилт','TIS',1),
  (115,3,'Тизи-Узу','TOU',1),
  (116,3,'Тлемсен','TLE',1),
  (117,4,'Восточный округ','E',1),
  (118,4,'Мануа','M',1),
  (119,4,'Остров Роз','R',1),
  (120,4,'Остров Суэйнс','S',1),
  (121,4,'Западный округ','W',1),
  (122,5,'Андорра-ла-Велья','ALV',1),
  (123,5,'Канильо','CAN',1),
  (124,5,'Энкамп','ENC',1),
  (125,5,'Эскальдес-Энгордань','ESE',1),
  (126,5,'Ла-Массана','LMA',1),
  (127,5,'Ордино','ORD',1),
  (128,5,'Сант-Жулия-де-Лория','SJL',1),
  (129,6,'Бенго','BGO',1),
  (130,6,'Бенгела','BGU',1),
  (131,6,'Бие','BIE',1),
  (132,6,'Кабинда','CAB',1),
  (133,6,'Квандо-Кубанго','CCU',1),
  (134,6,'Северная Кванза','CNO',1),
  (135,6,'Южная Кванза','CUS',1),
  (136,6,'Кунене','CNN',1),
  (137,6,'Уамбо','HUA',1),
  (138,6,'Уила','HUI',1),
  (139,6,'Луанда','LUA',1),
  (140,6,'Северная Лунда','LNO',1),
  (141,6,'Южная Лунда','LSU',1),
  (142,6,'Маланже','MAL',1),
  (143,6,'Мошико','MOX',1),
  (144,6,'Намибе','NAM',1),
  (145,6,'Уиже','UIG',1),
  (146,6,'Заире','ZAI',1),
  (147,9,'Сент-Джордж','ASG',1),
  (148,9,'Сент-Джон','ASJ',1),
  (149,9,'Сент-Мери','ASM',1),
  (150,9,'Сент-Пол','ASL',1),
  (151,9,'Сент-Петер','ASR',1),
  (152,9,'Сент-Филип','ASH',1),
  (153,9,'Барбуда','BAR',1),
  (154,9,'Редонда','RED',1),
  (155,10,'Антарктида и острова Южной Атлантики','AN',1),
  (156,10,'Буэнос-Айрес','BA',1),
  (157,10,'Катамарка','CA',1),
  (158,10,'Чако','CH',1),
  (159,10,'Чубут','CU',1),
  (160,10,'Кордова','CO',1),
  (161,10,'Корриентес','CR',1),
  (162,10,'Федеральный округ','DF',1),
  (163,10,'Энтре-Риос','ER',1),
  (164,10,'Формоса','FO',1),
  (165,10,'Жужуй','JU',1),
  (166,10,'Ла-Пампа','LP',1),
  (167,10,'Ла-Риоха','LR',1),
  (168,10,'Мендоса','ME',1),
  (169,10,'Мисьонес','MI',1),
  (170,10,'Неукен','NE',1),
  (171,10,'Рио-Негро','RN',1),
  (172,10,'Сальта','SA',1),
  (173,10,'Сан-Хуан','SJ',1),
  (174,10,'Сан-Луис','SL',1),
  (175,10,'Санта-Крус','SC',1),
  (176,10,'Санта-Фе','SF',1),
  (177,10,'Сантьяго-дель-Эстеро','SD',1),
  (178,10,'Тьерра-дель-Фуэго','TF',1),
  (179,10,'Тукуман','TU',1),
  (180,11,'Арагацотн','AGT',1),
  (181,11,'Арарат','ARR',1),
  (182,11,'Армавир','ARM',1),
  (183,11,'Гегаркуник','GEG',1),
  (184,11,'Котайк','KOT',1),
  (185,11,'Лори','LOR',1),
  (186,11,'Ширак','SHI',1),
  (187,11,'Сюник','SYU',1),
  (188,11,'Тавуш','TAV',1),
  (189,11,'Вайоц Дзор','VAY',1),
  (190,11,'Ереван','YER',1),
  (191,13,'Австралийская столичная территория','ACT',1),
  (192,13,'Новый Южный Уэльс','NSW',1),
  (193,13,'Северная территория','NT',1),
  (194,13,'Квинсленд','QLD',1),
  (195,13,'Южная Австралия','SA',1),
  (196,13,'Тасмания','TAS',1),
  (197,13,'Виктория','VIC',1),
  (198,13,'Западная Австралия','WA',1),
  (199,14,'Бургенланд','BUR',1),
  (200,14,'Каринтия','KAR',1),
  (201,14,'Нижняя Австрия','NOS',1),
  (202,14,'Верхняя Австрия','OOS',1),
  (203,14,'Зальцбург','SAL',1),
  (204,14,'Штирия','STE',1),
  (205,14,'Тироль','TIR',1),
  (206,14,'Форарльберг','VOR',1),
  (207,14,'Вена','WIE',1),
  (208,15,'Ali Bayramli','AB',1),
  (209,15,'Abseron','ABS',1),
  (210,15,'AgcabAdi','AGC',1),
  (211,15,'Agdam','AGM',1),
  (212,15,'Agdas','AGS',1),
  (213,15,'Agstafa','AGA',1),
  (214,15,'Agsu','AGU',1),
  (215,15,'Astara','AST',1),
  (216,15,'Baki','BA',1),
  (217,15,'BabAk','BAB',1),
  (218,15,'BalakAn','BAL',1),
  (219,15,'BArdA','BAR',1),
  (220,15,'Beylaqan','BEY',1),
  (221,15,'Bilasuvar','BIL',1),
  (222,15,'Cabrayil','CAB',1),
  (223,15,'Calilabab','CAL',1),
  (224,15,'Culfa','CUL',1),
  (225,15,'Daskasan','DAS',1),
  (226,15,'Davaci','DAV',1),
  (227,15,'Fuzuli','FUZ',1),
  (228,15,'Ganca','GA',1),
  (229,15,'Gadabay','GAD',1),
  (230,15,'Goranboy','GOR',1),
  (231,15,'Goycay','GOY',1),
  (232,15,'Haciqabul','HAC',1),
  (233,15,'Imisli','IMI',1),
  (234,15,'Ismayilli','ISM',1),
  (235,15,'Kalbacar','KAL',1),
  (236,15,'Kurdamir','KUR',1),
  (237,15,'Lankaran','LA',1),
  (238,15,'Lacin','LAC',1),
  (239,15,'Lankaran','LAN',1),
  (240,15,'Lerik','LER',1),
  (241,15,'Masalli','MAS',1),
  (242,15,'Mingacevir','MI',1),
  (243,15,'Naftalan','NA',1),
  (244,15,'Neftcala','NEF',1),
  (245,15,'Oguz','OGU',1),
  (246,15,'Ordubad','ORD',1),
  (247,15,'Qabala','QAB',1),
  (248,15,'Qax','QAX',1),
  (249,15,'Qazax','QAZ',1),
  (250,15,'Qobustan','QOB',1),
  (251,15,'Quba','QBA',1),
  (252,15,'Qubadli','QBI',1),
  (253,15,'Qusar','QUS',1),
  (254,15,'Saki','SA',1),
  (255,15,'Saatli','SAT',1),
  (256,15,'Sabirabad','SAB',1),
  (257,15,'Sadarak','SAD',1),
  (258,15,'Sahbuz','SAH',1),
  (259,15,'Saki','SAK',1),
  (260,15,'Salyan','SAL',1),
  (261,15,'Sumqayit','SM',1),
  (262,15,'Samaxi','SMI',1),
  (263,15,'Samkir','SKR',1),
  (264,15,'Samux','SMX',1),
  (265,15,'Sarur','SAR',1),
  (266,15,'Siyazan','SIY',1),
  (267,15,'Susa','SS',1),
  (268,15,'Susa','SUS',1),
  (269,15,'Tartar','TAR',1),
  (270,15,'Tovuz','TOV',1),
  (271,15,'Ucar','UCA',1),
  (272,15,'Xankandi','XA',1),
  (273,15,'Xacmaz','XAC',1),
  (274,15,'Xanlar','XAN',1),
  (275,15,'Xizi','XIZ',1),
  (276,15,'Xocali','XCI',1),
  (277,15,'Xocavand','XVD',1),
  (278,15,'Yardimli','YAR',1),
  (279,15,'Yevlax','YEV',1),
  (280,15,'Zangilan','ZAN',1),
  (281,15,'Zaqatala','ZAQ',1),
  (282,15,'Zardab','ZAR',1),
  (283,15,'Naxcivan','NX',1),
  (284,16,'Acklins','ACK',1),
  (285,16,'Berry Islands','BER',1),
  (286,16,'Bimini','BIM',1),
  (287,16,'Black Point','BLK',1),
  (288,16,'Cat Island','CAT',1),
  (289,16,'Central Abaco','CAB',1),
  (290,16,'Central Andros','CAN',1),
  (291,16,'Central Eleuthera','CEL',1),
  (292,16,'City of Freeport','FRE',1),
  (293,16,'Crooked Island','CRO',1),
  (294,16,'East Grand Bahama','EGB',1),
  (295,16,'Exuma','EXU',1),
  (296,16,'Grand Cay','GRD',1),
  (297,16,'Harbour Island','HAR',1),
  (298,16,'Hope Town','HOP',1),
  (299,16,'Inagua','INA',1),
  (300,16,'Long Island','LNG',1),
  (301,16,'Mangrove Cay','MAN',1),
  (302,16,'Mayaguana','MAY',1),
  (303,16,'Moore''s Island','MOO',1),
  (304,16,'North Abaco','NAB',1),
  (305,16,'North Andros','NAN',1),
  (306,16,'North Eleuthera','NEL',1),
  (307,16,'Ragged Island','RAG',1),
  (308,16,'Rum Cay','RUM',1),
  (309,16,'San Salvador','SAL',1),
  (310,16,'South Abaco','SAB',1),
  (311,16,'South Andros','SAN',1),
  (312,16,'South Eleuthera','SEL',1),
  (313,16,'Spanish Wells','SWE',1),
  (314,16,'West Grand Bahama','WGB',1),
  (315,17,'Capital','CAP',1),
  (316,17,'Central','CEN',1),
  (317,17,'Muharraq','MUH',1),
  (318,17,'Northern','NOR',1),
  (319,17,'Southern','SOU',1),
  (320,18,'Barisal','BAR',1),
  (321,18,'Chittagong','CHI',1),
  (322,18,'Dhaka','DHA',1),
  (323,18,'Khulna','KHU',1),
  (324,18,'Rajshahi','RAJ',1),
  (325,18,'Sylhet','SYL',1),
  (326,19,'Christ Church','CC',1),
  (327,19,'Saint Andrew','AND',1),
  (328,19,'Saint George','GEO',1),
  (329,19,'Saint James','JAM',1),
  (330,19,'Saint John','JOH',1),
  (331,19,'Saint Joseph','JOS',1),
  (332,19,'Saint Lucy','LUC',1),
  (333,19,'Saint Michael','MIC',1),
  (334,19,'Saint Peter','PET',1),
  (335,19,'Saint Philip','PHI',1),
  (336,19,'Saint Thomas','THO',1),
  (337,20,'Брест','BR',1),
  (338,20,'Гомель','HO',1),
  (339,20,'Минск','HM',1),
  (340,20,'Гродно','HR',1),
  (341,20,'Могилев','MA',1),
  (342,20,'Минская область','MI',1),
  (343,20,'Витебск','VI',1),
  (344,21,'Antwerpen','VAN',1),
  (345,21,'Brabant Wallon','WBR',1),
  (346,21,'Hainaut','WHT',1),
  (347,21,'Liege','WLG',1),
  (348,21,'Limburg','VLI',1),
  (349,21,'Luxembourg','WLX',1),
  (350,21,'Namur','WNA',1),
  (351,21,'Oost-Vlaanderen','VOV',1),
  (352,21,'Vlaams Brabant','VBR',1),
  (353,21,'West-Vlaanderen','VWV',1),
  (354,22,'Belize','BZ',1),
  (355,22,'Cayo','CY',1),
  (356,22,'Corozal','CR',1),
  (357,22,'Orange Walk','OW',1),
  (358,22,'Stann Creek','SC',1),
  (359,22,'Toledo','TO',1),
  (360,23,'Alibori','AL',1),
  (361,23,'Atakora','AK',1),
  (362,23,'Atlantique','AQ',1),
  (363,23,'Borgou','BO',1),
  (364,23,'Collines','CO',1),
  (365,23,'Donga','DO',1),
  (366,23,'Kouffo','KO',1),
  (367,23,'Littoral','LI',1),
  (368,23,'Mono','MO',1),
  (369,23,'Oueme','OU',1),
  (370,23,'Plateau','PL',1),
  (371,23,'Zou','ZO',1),
  (372,24,'Devonshire','DS',1),
  (373,24,'Hamilton City','HC',1),
  (374,24,'Hamilton','HA',1),
  (375,24,'Paget','PG',1),
  (376,24,'Pembroke','PB',1),
  (377,24,'Saint George City','GC',1),
  (378,24,'Saint George''s','SG',1),
  (379,24,'Sandys','SA',1),
  (380,24,'Smith''s','SM',1),
  (381,24,'Southampton','SH',1),
  (382,24,'Warwick','WA',1),
  (383,25,'Bumthang','BUM',1),
  (384,25,'Chukha','CHU',1),
  (385,25,'Dagana','DAG',1),
  (386,25,'Gasa','GAS',1),
  (387,25,'Haa','HAA',1),
  (388,25,'Lhuntse','LHU',1),
  (389,25,'Mongar','MON',1),
  (390,25,'Paro','PAR',1),
  (391,25,'Pemagatshel','PEM',1),
  (392,25,'Punakha','PUN',1),
  (393,25,'Samdrup Jongkhar','SJO',1),
  (394,25,'Samtse','SAT',1),
  (395,25,'Sarpang','SAR',1),
  (396,25,'Thimphu','THI',1),
  (397,25,'Trashigang','TRG',1),
  (398,25,'Trashiyangste','TRY',1),
  (399,25,'Trongsa','TRO',1),
  (400,25,'Tsirang','TSI',1),
  (401,25,'Wangdue Phodrang','WPH',1),
  (402,25,'Zhemgang','ZHE',1),
  (403,26,'Beni','BEN',1),
  (404,26,'Chuquisaca','CHU',1),
  (405,26,'Cochabamba','COC',1),
  (406,26,'La Paz','LPZ',1),
  (407,26,'Oruro','ORU',1),
  (408,26,'Pando','PAN',1),
  (409,26,'Potosi','POT',1),
  (410,26,'Santa Cruz','SCZ',1),
  (411,26,'Tarija','TAR',1),
  (412,27,'Brcko district','BRO',1),
  (413,27,'Unsko-Sanski Kanton','FUS',1),
  (414,27,'Posavski Kanton','FPO',1),
  (415,27,'Tuzlanski Kanton','FTU',1),
  (416,27,'Zenicko-Dobojski Kanton','FZE',1),
  (417,27,'Bosanskopodrinjski Kanton','FBP',1),
  (418,27,'Srednjebosanski Kanton','FSB',1),
  (419,27,'Hercegovacko-neretvanski Kanton','FHN',1),
  (420,27,'Zapadnohercegovacka Zupanija','FZH',1),
  (421,27,'Kanton Sarajevo','FSA',1),
  (422,27,'Zapadnobosanska','FZA',1),
  (423,27,'Banja Luka','SBL',1),
  (424,27,'Doboj','SDO',1),
  (425,27,'Bijeljina','SBI',1),
  (426,27,'Vlasenica','SVL',1),
  (427,27,'Sarajevo-Romanija or Sokolac','SSR',1),
  (428,27,'Foca','SFO',1),
  (429,27,'Trebinje','STR',1),
  (430,28,'Central','CE',1),
  (431,28,'Ghanzi','GH',1),
  (432,28,'Kgalagadi','KD',1),
  (433,28,'Kgatleng','KT',1),
  (434,28,'Kweneng','KW',1),
  (435,28,'Ngamiland','NG',1),
  (436,28,'North East','NE',1),
  (437,28,'North West','NW',1),
  (438,28,'South East','SE',1),
  (439,28,'Southern','SO',1),
  (440,30,'Acre','AC',1),
  (441,30,'Alagoas','AL',1),
  (442,30,'Amapa','AP',1),
  (443,30,'Amazonas','AM',1),
  (444,30,'Bahia','BA',1),
  (445,30,'Ceara','CE',1),
  (446,30,'Distrito Federal','DF',1),
  (447,30,'Espirito Santo','ES',1),
  (448,30,'Goias','GO',1),
  (449,30,'Maranhao','MA',1),
  (450,30,'Mato Grosso','MT',1),
  (451,30,'Mato Grosso do Sul','MS',1),
  (452,30,'Minas Gerais','MG',1),
  (453,30,'Para','PA',1),
  (454,30,'Paraiba','PB',1),
  (455,30,'Parana','PR',1),
  (456,30,'Pernambuco','PE',1),
  (457,30,'Piaui','PI',1),
  (458,30,'Rio de Janeiro','RJ',1),
  (459,30,'Rio Grande do Norte','RN',1),
  (460,30,'Rio Grande do Sul','RS',1),
  (461,30,'Rondonia','RO',1),
  (462,30,'Roraima','RR',1),
  (463,30,'Santa Catarina','SC',1),
  (464,30,'Sao Paulo','SP',1),
  (465,30,'Sergipe','SE',1),
  (466,30,'Tocantins','TO',1),
  (467,31,'Peros Banhos','PB',1),
  (468,31,'Salomon Islands','SI',1),
  (469,31,'Nelsons Island','NI',1),
  (470,31,'Three Brothers','TB',1),
  (471,31,'Eagle Islands','EA',1),
  (472,31,'Danger Island','DI',1),
  (473,31,'Egmont Islands','EG',1),
  (474,31,'Diego Garcia','DG',1),
  (475,32,'Belait','BEL',1),
  (476,32,'Brunei and Muara','BRM',1),
  (477,32,'Temburong','TEM',1),
  (478,32,'Tutong','TUT',1),
  (479,33,'Blagoevgrad','',1),
  (480,33,'Burgas','',1),
  (481,33,'Dobrich','',1),
  (482,33,'Gabrovo','',1),
  (483,33,'Haskovo','',1),
  (484,33,'Kardjali','',1),
  (485,33,'Kyustendil','',1),
  (486,33,'Lovech','',1),
  (487,33,'Montana','',1),
  (488,33,'Pazardjik','',1),
  (489,33,'Pernik','',1),
  (490,33,'Pleven','',1),
  (491,33,'Plovdiv','',1),
  (492,33,'Razgrad','',1),
  (493,33,'Shumen','',1),
  (494,33,'Silistra','',1),
  (495,33,'Sliven','',1),
  (496,33,'Smolyan','',1),
  (497,33,'Sofia','',1),
  (498,33,'Sofia - town','',1),
  (499,33,'Stara Zagora','',1),
  (500,33,'Targovishte','',1);
COMMIT;

#
# Data for the `zone` table  (LIMIT 501,500)
#

INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES 
  (501,33,'Varna','',1),
  (502,33,'Veliko Tarnovo','',1),
  (503,33,'Vidin','',1),
  (504,33,'Vratza','',1),
  (505,33,'Yambol','',1),
  (506,34,'Bale','BAL',1),
  (507,34,'Bam','BAM',1),
  (508,34,'Banwa','BAN',1),
  (509,34,'Bazega','BAZ',1),
  (510,34,'Bougouriba','BOR',1),
  (511,34,'Boulgou','BLG',1),
  (512,34,'Boulkiemde','BOK',1),
  (513,34,'Comoe','COM',1),
  (514,34,'Ganzourgou','GAN',1),
  (515,34,'Gnagna','GNA',1),
  (516,34,'Gourma','GOU',1),
  (517,34,'Houet','HOU',1),
  (518,34,'Ioba','IOA',1),
  (519,34,'Kadiogo','KAD',1),
  (520,34,'Kenedougou','KEN',1),
  (521,34,'Komondjari','KOD',1),
  (522,34,'Kompienga','KOP',1),
  (523,34,'Kossi','KOS',1),
  (524,34,'Koulpelogo','KOL',1),
  (525,34,'Kouritenga','KOT',1),
  (526,34,'Kourweogo','KOW',1),
  (527,34,'Leraba','LER',1),
  (528,34,'Loroum','LOR',1),
  (529,34,'Mouhoun','MOU',1),
  (530,34,'Nahouri','NAH',1),
  (531,34,'Namentenga','NAM',1),
  (532,34,'Nayala','NAY',1),
  (533,34,'Noumbiel','NOU',1),
  (534,34,'Oubritenga','OUB',1),
  (535,34,'Oudalan','OUD',1),
  (536,34,'Passore','PAS',1),
  (537,34,'Poni','PON',1),
  (538,34,'Sanguie','SAG',1),
  (539,34,'Sanmatenga','SAM',1),
  (540,34,'Seno','SEN',1),
  (541,34,'Sissili','SIS',1),
  (542,34,'Soum','SOM',1),
  (543,34,'Sourou','SOR',1),
  (544,34,'Tapoa','TAP',1),
  (545,34,'Tuy','TUY',1),
  (546,34,'Yagha','YAG',1),
  (547,34,'Yatenga','YAT',1),
  (548,34,'Ziro','ZIR',1),
  (549,34,'Zondoma','ZOD',1),
  (550,34,'Zoundweogo','ZOW',1),
  (551,35,'Bubanza','BB',1),
  (552,35,'Bujumbura','BJ',1),
  (553,35,'Bururi','BR',1),
  (554,35,'Cankuzo','CA',1),
  (555,35,'Cibitoke','CI',1),
  (556,35,'Gitega','GI',1),
  (557,35,'Karuzi','KR',1),
  (558,35,'Kayanza','KY',1),
  (559,35,'Kirundo','KI',1),
  (560,35,'Makamba','MA',1),
  (561,35,'Muramvya','MU',1),
  (562,35,'Muyinga','MY',1),
  (563,35,'Mwaro','MW',1),
  (564,35,'Ngozi','NG',1),
  (565,35,'Rutana','RT',1),
  (566,35,'Ruyigi','RY',1),
  (567,36,'Phnom Penh','PP',1),
  (568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),
  (569,36,'Pailin','PA',1),
  (570,36,'Keb','KB',1),
  (571,36,'Banteay Meanchey','BM',1),
  (572,36,'Battambang','BA',1),
  (573,36,'Kampong Cham','KM',1),
  (574,36,'Kampong Chhnang','KN',1),
  (575,36,'Kampong Speu','KU',1),
  (576,36,'Kampong Som','KO',1),
  (577,36,'Kampong Thom','KT',1),
  (578,36,'Kampot','KP',1),
  (579,36,'Kandal','KL',1),
  (580,36,'Kaoh Kong','KK',1),
  (581,36,'Kratie','KR',1),
  (582,36,'Mondul Kiri','MK',1),
  (583,36,'Oddar Meancheay','OM',1),
  (584,36,'Pursat','PU',1),
  (585,36,'Preah Vihear','PR',1),
  (586,36,'Prey Veng','PG',1),
  (587,36,'Ratanak Kiri','RK',1),
  (588,36,'Siemreap','SI',1),
  (589,36,'Stung Treng','ST',1),
  (590,36,'Svay Rieng','SR',1),
  (591,36,'Takeo','TK',1),
  (592,37,'Adamawa (Adamaoua)','ADA',1),
  (593,37,'Centre','CEN',1),
  (594,37,'East (Est)','EST',1),
  (595,37,'Extreme North (Extreme-Nord)','EXN',1),
  (596,37,'Littoral','LIT',1),
  (597,37,'North (Nord)','NOR',1),
  (598,37,'Northwest (Nord-Ouest)','NOT',1),
  (599,37,'West (Ouest)','OUE',1),
  (600,37,'South (Sud)','SUD',1),
  (601,37,'Southwest (Sud-Ouest).','SOU',1),
  (602,38,'Alberta','AB',1),
  (603,38,'British Columbia','BC',1),
  (604,38,'Manitoba','MB',1),
  (605,38,'New Brunswick','NB',1),
  (606,38,'Newfoundland and Labrador','NL',1),
  (607,38,'Northwest Territories','NT',1),
  (608,38,'Nova Scotia','NS',1),
  (609,38,'Nunavut','NU',1),
  (610,38,'Ontario','ON',1),
  (611,38,'Prince Edward Island','PE',1),
  (612,38,'Qu&eacute;bec','QC',1),
  (613,38,'Saskatchewan','SK',1),
  (614,38,'Yukon Territory','YT',1),
  (615,39,'Boa Vista','BV',1),
  (616,39,'Brava','BR',1),
  (617,39,'Calheta de Sao Miguel','CS',1),
  (618,39,'Maio','MA',1),
  (619,39,'Mosteiros','MO',1),
  (620,39,'Paul','PA',1),
  (621,39,'Porto Novo','PN',1),
  (622,39,'Praia','PR',1),
  (623,39,'Ribeira Grande','RG',1),
  (624,39,'Sal','SL',1),
  (625,39,'Santa Catarina','CA',1),
  (626,39,'Santa Cruz','CR',1),
  (627,39,'Sao Domingos','SD',1),
  (628,39,'Sao Filipe','SF',1),
  (629,39,'Sao Nicolau','SN',1),
  (630,39,'Sao Vicente','SV',1),
  (631,39,'Tarrafal','TA',1),
  (632,40,'Creek','CR',1),
  (633,40,'Eastern','EA',1),
  (634,40,'Midland','ML',1),
  (635,40,'South Town','ST',1),
  (636,40,'Spot Bay','SP',1),
  (637,40,'Stake Bay','SK',1),
  (638,40,'West End','WD',1),
  (639,40,'Western','WN',1),
  (640,41,'Bamingui-Bangoran','BBA',1),
  (641,41,'Basse-Kotto','BKO',1),
  (642,41,'Haute-Kotto','HKO',1),
  (643,41,'Haut-Mbomou','HMB',1),
  (644,41,'Kemo','KEM',1),
  (645,41,'Lobaye','LOB',1),
  (646,41,'Mambere-KadeÔ','MKD',1),
  (647,41,'Mbomou','MBO',1),
  (648,41,'Nana-Mambere','NMM',1),
  (649,41,'Ombella-M''Poko','OMP',1),
  (650,41,'Ouaka','OUK',1),
  (651,41,'Ouham','OUH',1),
  (652,41,'Ouham-Pende','OPE',1),
  (653,41,'Vakaga','VAK',1),
  (654,41,'Nana-Grebizi','NGR',1),
  (655,41,'Sangha-Mbaere','SMB',1),
  (656,41,'Bangui','BAN',1),
  (657,42,'Batha','BA',1),
  (658,42,'Biltine','BI',1),
  (659,42,'Borkou-Ennedi-Tibesti','BE',1),
  (660,42,'Chari-Baguirmi','CB',1),
  (661,42,'Guera','GU',1),
  (662,42,'Kanem','KA',1),
  (663,42,'Lac','LA',1),
  (664,42,'Logone Occidental','LC',1),
  (665,42,'Logone Oriental','LR',1),
  (666,42,'Mayo-Kebbi','MK',1),
  (667,42,'Moyen-Chari','MC',1),
  (668,42,'Ouaddai','OU',1),
  (669,42,'Salamat','SA',1),
  (670,42,'Tandjile','TA',1),
  (671,43,'Aisen del General Carlos Ibanez','AI',1),
  (672,43,'Antofagasta','AN',1),
  (673,43,'Araucania','AR',1),
  (674,43,'Atacama','AT',1),
  (675,43,'Bio-Bio','BI',1),
  (676,43,'Coquimbo','CO',1),
  (677,43,'Libertador General Bernardo O''Hi','LI',1),
  (678,43,'Los Lagos','LL',1),
  (679,43,'Magallanes y de la Antartica Chi','MA',1),
  (680,43,'Maule','ML',1),
  (681,43,'Region Metropolitana','RM',1),
  (682,43,'Tarapaca','TA',1),
  (683,43,'Valparaiso','VS',1),
  (684,44,'Anhui','AN',1),
  (685,44,'Beijing','BE',1),
  (686,44,'Chongqing','CH',1),
  (687,44,'Fujian','FU',1),
  (688,44,'Gansu','GA',1),
  (689,44,'Guangdong','GU',1),
  (690,44,'Guangxi','GX',1),
  (691,44,'Guizhou','GZ',1),
  (692,44,'Hainan','HA',1),
  (693,44,'Hebei','HB',1),
  (694,44,'Heilongjiang','HL',1),
  (695,44,'Henan','HE',1),
  (696,44,'Hong Kong','HK',1),
  (697,44,'Hubei','HU',1),
  (698,44,'Hunan','HN',1),
  (699,44,'Inner Mongolia','IM',1),
  (700,44,'Jiangsu','JI',1),
  (701,44,'Jiangxi','JX',1),
  (702,44,'Jilin','JL',1),
  (703,44,'Liaoning','LI',1),
  (704,44,'Macau','MA',1),
  (705,44,'Ningxia','NI',1),
  (706,44,'Shaanxi','SH',1),
  (707,44,'Shandong','SA',1),
  (708,44,'Shanghai','SG',1),
  (709,44,'Shanxi','SX',1),
  (710,44,'Sichuan','SI',1),
  (711,44,'Tianjin','TI',1),
  (712,44,'Xinjiang','XI',1),
  (713,44,'Yunnan','YU',1),
  (714,44,'Zhejiang','ZH',1),
  (715,46,'Direction Island','D',1),
  (716,46,'Home Island','H',1),
  (717,46,'Horsburgh Island','O',1),
  (718,46,'South Island','S',1),
  (719,46,'West Island','W',1),
  (720,47,'Amazonas','AMZ',1),
  (721,47,'Antioquia','ANT',1),
  (722,47,'Arauca','ARA',1),
  (723,47,'Atlantico','ATL',1),
  (724,47,'Bogota D.C.','BDC',1),
  (725,47,'Bolivar','BOL',1),
  (726,47,'Boyaca','BOY',1),
  (727,47,'Caldas','CAL',1),
  (728,47,'Caqueta','CAQ',1),
  (729,47,'Casanare','CAS',1),
  (730,47,'Cauca','CAU',1),
  (731,47,'Cesar','CES',1),
  (732,47,'Choco','CHO',1),
  (733,47,'Cordoba','COR',1),
  (734,47,'Cundinamarca','CAM',1),
  (735,47,'Guainia','GNA',1),
  (736,47,'Guajira','GJR',1),
  (737,47,'Guaviare','GVR',1),
  (738,47,'Huila','HUI',1),
  (739,47,'Magdalena','MAG',1),
  (740,47,'Meta','MET',1),
  (741,47,'Narino','NAR',1),
  (742,47,'Norte de Santander','NDS',1),
  (743,47,'Putumayo','PUT',1),
  (744,47,'Quindio','QUI',1),
  (745,47,'Risaralda','RIS',1),
  (746,47,'San Andres y Providencia','SAP',1),
  (747,47,'Santander','SAN',1),
  (748,47,'Sucre','SUC',1),
  (749,47,'Tolima','TOL',1),
  (750,47,'Valle del Cauca','VDC',1),
  (751,47,'Vaupes','VAU',1),
  (752,47,'Vichada','VIC',1),
  (753,48,'Grande Comore','G',1),
  (754,48,'Anjouan','A',1),
  (755,48,'Moheli','M',1),
  (756,49,'Bouenza','BO',1),
  (757,49,'Brazzaville','BR',1),
  (758,49,'Cuvette','CU',1),
  (759,49,'Cuvette-Ouest','CO',1),
  (760,49,'Kouilou','KO',1),
  (761,49,'Lekoumou','LE',1),
  (762,49,'Likouala','LI',1),
  (763,49,'Niari','NI',1),
  (764,49,'Plateaux','PL',1),
  (765,49,'Pool','PO',1),
  (766,49,'Sangha','SA',1),
  (767,50,'Pukapuka','PU',1),
  (768,50,'Rakahanga','RK',1),
  (769,50,'Manihiki','MK',1),
  (770,50,'Penrhyn','PE',1),
  (771,50,'Nassau Island','NI',1),
  (772,50,'Surwarrow','SU',1),
  (773,50,'Palmerston','PA',1),
  (774,50,'Aitutaki','AI',1),
  (775,50,'Manuae','MA',1),
  (776,50,'Takutea','TA',1),
  (777,50,'Mitiaro','MT',1),
  (778,50,'Atiu','AT',1),
  (779,50,'Mauke','MU',1),
  (780,50,'Rarotonga','RR',1),
  (781,50,'Mangaia','MG',1),
  (782,51,'Alajuela','AL',1),
  (783,51,'Cartago','CA',1),
  (784,51,'Guanacaste','GU',1),
  (785,51,'Heredia','HE',1),
  (786,51,'Limon','LI',1),
  (787,51,'Puntarenas','PU',1),
  (788,51,'San Jose','SJ',1),
  (789,52,'Abengourou','ABE',1),
  (790,52,'Abidjan','ABI',1),
  (791,52,'Aboisso','ABO',1),
  (792,52,'Adiake','ADI',1),
  (793,52,'Adzope','ADZ',1),
  (794,52,'Agboville','AGB',1),
  (795,52,'Agnibilekrou','AGN',1),
  (796,52,'Alepe','ALE',1),
  (797,52,'Bocanda','BOC',1),
  (798,52,'Bangolo','BAN',1),
  (799,52,'Beoumi','BEO',1),
  (800,52,'Biankouma','BIA',1),
  (801,52,'Bondoukou','BDK',1),
  (802,52,'Bongouanou','BGN',1),
  (803,52,'Bouafle','BFL',1),
  (804,52,'Bouake','BKE',1),
  (805,52,'Bouna','BNA',1),
  (806,52,'Boundiali','BDL',1),
  (807,52,'Dabakala','DKL',1),
  (808,52,'Dabou','DBU',1),
  (809,52,'Daloa','DAL',1),
  (810,52,'Danane','DAN',1),
  (811,52,'Daoukro','DAO',1),
  (812,52,'Dimbokro','DIM',1),
  (813,52,'Divo','DIV',1),
  (814,52,'Duekoue','DUE',1),
  (815,52,'Ferkessedougou','FER',1),
  (816,52,'Gagnoa','GAG',1),
  (817,52,'Grand-Bassam','GBA',1),
  (818,52,'Grand-Lahou','GLA',1),
  (819,52,'Guiglo','GUI',1),
  (820,52,'Issia','ISS',1),
  (821,52,'Jacqueville','JAC',1),
  (822,52,'Katiola','KAT',1),
  (823,52,'Korhogo','KOR',1),
  (824,52,'Lakota','LAK',1),
  (825,52,'Man','MAN',1),
  (826,52,'Mankono','MKN',1),
  (827,52,'Mbahiakro','MBA',1),
  (828,52,'Odienne','ODI',1),
  (829,52,'Oume','OUM',1),
  (830,52,'Sakassou','SAK',1),
  (831,52,'San-Pedro','SPE',1),
  (832,52,'Sassandra','SAS',1),
  (833,52,'Seguela','SEG',1),
  (834,52,'Sinfra','SIN',1),
  (835,52,'Soubre','SOU',1),
  (836,52,'Tabou','TAB',1),
  (837,52,'Tanda','TAN',1),
  (838,52,'Tiebissou','TIE',1),
  (839,52,'Tingrela','TIN',1),
  (840,52,'Tiassale','TIA',1),
  (841,52,'Touba','TBA',1),
  (842,52,'Toulepleu','TLP',1),
  (843,52,'Toumodi','TMD',1),
  (844,52,'Vavoua','VAV',1),
  (845,52,'Yamoussoukro','YAM',1),
  (846,52,'Zuenoula','ZUE',1),
  (847,53,'Bjelovar-Bilogora','BB',1),
  (848,53,'City of Zagreb','CZ',1),
  (849,53,'Dubrovnik-Neretva','DN',1),
  (850,53,'Istra','IS',1),
  (851,53,'Karlovac','KA',1),
  (852,53,'Koprivnica-Krizevci','KK',1),
  (853,53,'Krapina-Zagorje','KZ',1),
  (854,53,'Lika-Senj','LS',1),
  (855,53,'Medimurje','ME',1),
  (856,53,'Osijek-Baranja','OB',1),
  (857,53,'Pozega-Slavonia','PS',1),
  (858,53,'Primorje-Gorski Kotar','PG',1),
  (859,53,'Sibenik','SI',1),
  (860,53,'Sisak-Moslavina','SM',1),
  (861,53,'Slavonski Brod-Posavina','SB',1),
  (862,53,'Split-Dalmatia','SD',1),
  (863,53,'Varazdin','VA',1),
  (864,53,'Virovitica-Podravina','VP',1),
  (865,53,'Vukovar-Srijem','VS',1),
  (866,53,'Zadar-Knin','ZK',1),
  (867,53,'Zagreb','ZA',1),
  (868,54,'Camaguey','CA',1),
  (869,54,'Ciego de Avila','CD',1),
  (870,54,'Cienfuegos','CI',1),
  (871,54,'Ciudad de La Habana','CH',1),
  (872,54,'Granma','GR',1),
  (873,54,'Guantanamo','GU',1),
  (874,54,'Holguin','HO',1),
  (875,54,'Isla de la Juventud','IJ',1),
  (876,54,'La Habana','LH',1),
  (877,54,'Las Tunas','LT',1),
  (878,54,'Matanzas','MA',1),
  (879,54,'Pinar del Rio','PR',1),
  (880,54,'Sancti Spiritus','SS',1),
  (881,54,'Santiago de Cuba','SC',1),
  (882,54,'Villa Clara','VC',1),
  (883,55,'Famagusta','F',1),
  (884,55,'Kyrenia','K',1),
  (885,55,'Larnaca','A',1),
  (886,55,'Limassol','I',1),
  (887,55,'Nicosia','N',1),
  (888,55,'Paphos','P',1),
  (889,56,'Ústecký','U',1),
  (890,56,'Jihočeský','C',1),
  (891,56,'Jihomoravský','B',1),
  (892,56,'Karlovarský','K',1),
  (893,56,'Královehradecký','H',1),
  (894,56,'Liberecký','L',1),
  (895,56,'Moravskoslezský','T',1),
  (896,56,'Olomoucký','M',1),
  (897,56,'Pardubický','E',1),
  (898,56,'Plzeňský','P',1),
  (899,56,'Praha','A',1),
  (900,56,'Středočeský','S',1),
  (901,56,'Vysočina','J',1),
  (902,56,'Zlínský','Z',1),
  (903,57,'Arhus','AR',1),
  (904,57,'Bornholm','BH',1),
  (905,57,'Copenhagen','CO',1),
  (906,57,'Faroe Islands','FO',1),
  (907,57,'Frederiksborg','FR',1),
  (908,57,'Fyn','FY',1),
  (909,57,'Kobenhavn','KO',1),
  (910,57,'Nordjylland','NO',1),
  (911,57,'Ribe','RI',1),
  (912,57,'Ringkobing','RK',1),
  (913,57,'Roskilde','RO',1),
  (914,57,'Sonderjylland','SO',1),
  (915,57,'Storstrom','ST',1),
  (916,57,'Vejle','VK',1),
  (917,57,'Vestj&aelig;lland','VJ',1),
  (918,57,'Viborg','VB',1),
  (919,58,'''Ali Sabih','S',1),
  (920,58,'Dikhil','K',1),
  (921,58,'Djibouti','J',1),
  (922,58,'Obock','O',1),
  (923,58,'Tadjoura','T',1),
  (924,59,'Saint Andrew Parish','AND',1),
  (925,59,'Saint David Parish','DAV',1),
  (926,59,'Saint George Parish','GEO',1),
  (927,59,'Saint John Parish','JOH',1),
  (928,59,'Saint Joseph Parish','JOS',1),
  (929,59,'Saint Luke Parish','LUK',1),
  (930,59,'Saint Mark Parish','MAR',1),
  (931,59,'Saint Patrick Parish','PAT',1),
  (932,59,'Saint Paul Parish','PAU',1),
  (933,59,'Saint Peter Parish','PET',1),
  (934,60,'Distrito Nacional','DN',1),
  (935,60,'Azua','AZ',1),
  (936,60,'Baoruco','BC',1),
  (937,60,'Barahona','BH',1),
  (938,60,'Dajabon','DJ',1),
  (939,60,'Duarte','DU',1),
  (940,60,'Elias Pina','EL',1),
  (941,60,'El Seybo','SY',1),
  (942,60,'Espaillat','ET',1),
  (943,60,'Hato Mayor','HM',1),
  (944,60,'Independencia','IN',1),
  (945,60,'La Altagracia','AL',1),
  (946,60,'La Romana','RO',1),
  (947,60,'La Vega','VE',1),
  (948,60,'Maria Trinidad Sanchez','MT',1),
  (949,60,'Monsenor Nouel','MN',1),
  (950,60,'Monte Cristi','MC',1),
  (951,60,'Monte Plata','MP',1),
  (952,60,'Pedernales','PD',1),
  (953,60,'Peravia (Bani)','PR',1),
  (954,60,'Puerto Plata','PP',1),
  (955,60,'Salcedo','SL',1),
  (956,60,'Samana','SM',1),
  (957,60,'Sanchez Ramirez','SH',1),
  (958,60,'San Cristobal','SC',1),
  (959,60,'San Jose de Ocoa','JO',1),
  (960,60,'San Juan','SJ',1),
  (961,60,'San Pedro de Macoris','PM',1),
  (962,60,'Santiago','SA',1),
  (963,60,'Santiago Rodriguez','ST',1),
  (964,60,'Santo Domingo','SD',1),
  (965,60,'Valverde','VA',1),
  (966,61,'Aileu','AL',1),
  (967,61,'Ainaro','AN',1),
  (968,61,'Baucau','BA',1),
  (969,61,'Bobonaro','BO',1),
  (970,61,'Cova Lima','CO',1),
  (971,61,'Dili','DI',1),
  (972,61,'Ermera','ER',1),
  (973,61,'Lautem','LA',1),
  (974,61,'Liquica','LI',1),
  (975,61,'Manatuto','MT',1),
  (976,61,'Manufahi','MF',1),
  (977,61,'Oecussi','OE',1),
  (978,61,'Viqueque','VI',1),
  (979,62,'Azuay','AZU',1),
  (980,62,'Bolivar','BOL',1),
  (981,62,'Ca&ntilde;ar','CAN',1),
  (982,62,'Carchi','CAR',1),
  (983,62,'Chimborazo','CHI',1),
  (984,62,'Cotopaxi','COT',1),
  (985,62,'El Oro','EOR',1),
  (986,62,'Esmeraldas','ESM',1),
  (987,62,'Gal&aacute;pagos','GPS',1),
  (988,62,'Guayas','GUA',1),
  (989,62,'Imbabura','IMB',1),
  (990,62,'Loja','LOJ',1),
  (991,62,'Los Rios','LRO',1),
  (992,62,'Manab&iacute;','MAN',1),
  (993,62,'Morona Santiago','MSA',1),
  (994,62,'Napo','NAP',1),
  (995,62,'Orellana','ORE',1),
  (996,62,'Pastaza','PAS',1),
  (997,62,'Pichincha','PIC',1),
  (998,62,'Sucumb&iacute;os','SUC',1),
  (999,62,'Tungurahua','TUN',1),
  (1000,62,'Zamora Chinchipe','ZCH',1);
COMMIT;

#
# Data for the `zone` table  (LIMIT 1001,500)
#

INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES 
  (1001,63,'Ad Daqahliyah','DHY',1),
  (1002,63,'Al Bahr al Ahmar','BAM',1),
  (1003,63,'Al Buhayrah','BHY',1),
  (1004,63,'Al Fayyum','FYM',1),
  (1005,63,'Al Gharbiyah','GBY',1),
  (1006,63,'Al Iskandariyah','IDR',1),
  (1007,63,'Al Isma''iliyah','IML',1),
  (1008,63,'Al Jizah','JZH',1),
  (1009,63,'Al Minufiyah','MFY',1),
  (1010,63,'Al Minya','MNY',1),
  (1011,63,'Al Qahirah','QHR',1),
  (1012,63,'Al Qalyubiyah','QLY',1),
  (1013,63,'Al Wadi al Jadid','WJD',1),
  (1014,63,'Ash Sharqiyah','SHQ',1),
  (1015,63,'As Suways','SWY',1),
  (1016,63,'Aswan','ASW',1),
  (1017,63,'Asyut','ASY',1),
  (1018,63,'Bani Suwayf','BSW',1),
  (1019,63,'Bur Sa''id','BSD',1),
  (1020,63,'Dumyat','DMY',1),
  (1021,63,'Janub Sina''','JNS',1),
  (1022,63,'Kafr ash Shaykh','KSH',1),
  (1023,63,'Matruh','MAT',1),
  (1024,63,'Qina','QIN',1),
  (1025,63,'Shamal Sina''','SHS',1),
  (1026,63,'Suhaj','SUH',1),
  (1027,64,'Ahuachapan','AH',1),
  (1028,64,'Cabanas','CA',1),
  (1029,64,'Chalatenango','CH',1),
  (1030,64,'Cuscatlan','CU',1),
  (1031,64,'La Libertad','LB',1),
  (1032,64,'La Paz','PZ',1),
  (1033,64,'La Union','UN',1),
  (1034,64,'Morazan','MO',1),
  (1035,64,'San Miguel','SM',1),
  (1036,64,'San Salvador','SS',1),
  (1037,64,'San Vicente','SV',1),
  (1038,64,'Santa Ana','SA',1),
  (1039,64,'Sonsonate','SO',1),
  (1040,64,'Usulutan','US',1),
  (1041,65,'Provincia Annobon','AN',1),
  (1042,65,'Provincia Bioko Norte','BN',1),
  (1043,65,'Provincia Bioko Sur','BS',1),
  (1044,65,'Provincia Centro Sur','CS',1),
  (1045,65,'Provincia Kie-Ntem','KN',1),
  (1046,65,'Provincia Litoral','LI',1),
  (1047,65,'Provincia Wele-Nzas','WN',1),
  (1048,66,'Central (Maekel)','MA',1),
  (1049,66,'Anseba (Keren)','KE',1),
  (1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),
  (1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),
  (1052,66,'Southern (Debub)','DE',1),
  (1053,66,'Gash-Barka (Barentu)','BR',1),
  (1054,67,'Harjumaa (Tallinn)','HA',1),
  (1055,67,'Hiiumaa (Kardla)','HI',1),
  (1056,67,'Ida-Virumaa (Johvi)','IV',1),
  (1057,67,'Jarvamaa (Paide)','JA',1),
  (1058,67,'Jogevamaa (Jogeva)','JO',1),
  (1059,67,'Laane-Virumaa (Rakvere)','LV',1),
  (1060,67,'Laanemaa (Haapsalu)','LA',1),
  (1061,67,'Parnumaa (Parnu)','PA',1),
  (1062,67,'Polvamaa (Polva)','PO',1),
  (1063,67,'Raplamaa (Rapla)','RA',1),
  (1064,67,'Saaremaa (Kuessaare)','SA',1),
  (1065,67,'Tartumaa (Tartu)','TA',1),
  (1066,67,'Valgamaa (Valga)','VA',1),
  (1067,67,'Viljandimaa (Viljandi)','VI',1),
  (1068,67,'Vorumaa (Voru)','VO',1),
  (1069,68,'Afar','AF',1),
  (1070,68,'Amhara','AH',1),
  (1071,68,'Benishangul-Gumaz','BG',1),
  (1072,68,'Gambela','GB',1),
  (1073,68,'Hariai','HR',1),
  (1074,68,'Oromia','OR',1),
  (1075,68,'Somali','SM',1),
  (1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),
  (1077,68,'Tigray','TG',1),
  (1078,68,'Addis Ababa','AA',1),
  (1079,68,'Dire Dawa','DD',1),
  (1080,71,'Central Division','C',1),
  (1081,71,'Northern Division','N',1),
  (1082,71,'Eastern Division','E',1),
  (1083,71,'Western Division','W',1),
  (1084,71,'Rotuma','R',1),
  (1085,72,'Ahvenanmaan Laani','AL',1),
  (1086,72,'Etela-Suomen Laani','ES',1),
  (1087,72,'Ita-Suomen Laani','IS',1),
  (1088,72,'Lansi-Suomen Laani','LS',1),
  (1089,72,'Lapin Lanani','LA',1),
  (1090,72,'Oulun Laani','OU',1),
  (1091,73,'Alsace','AL',1),
  (1092,73,'Aquitaine','AQ',1),
  (1093,73,'Auvergne','AU',1),
  (1094,73,'Brittany','BR',1),
  (1095,73,'Burgundy','BU',1),
  (1096,73,'Center Loire Valley','CE',1),
  (1097,73,'Champagne','CH',1),
  (1098,73,'Corse','CO',1),
  (1099,73,'France Comte','FR',1),
  (1100,73,'Languedoc Roussillon','LA',1),
  (1101,73,'Limousin','LI',1),
  (1102,73,'Lorraine','LO',1),
  (1103,73,'Midi Pyrenees','MI',1),
  (1104,73,'Nord Pas de Calais','NO',1),
  (1105,73,'Normandy','NR',1),
  (1106,73,'Paris / Ill de France','PA',1),
  (1107,73,'Picardie','PI',1),
  (1108,73,'Poitou Charente','PO',1),
  (1109,73,'Provence','PR',1),
  (1110,73,'Rhone Alps','RH',1),
  (1111,73,'Riviera','RI',1),
  (1112,73,'Western Loire Valley','WE',1),
  (1113,74,'Etranger','Et',1),
  (1114,74,'Ain','01',1),
  (1115,74,'Aisne','02',1),
  (1116,74,'Allier','03',1),
  (1117,74,'Alpes de Haute Provence','04',1),
  (1118,74,'Hautes-Alpes','05',1),
  (1119,74,'Alpes Maritimes','06',1),
  (1120,74,'Ard&egrave;che','07',1),
  (1121,74,'Ardennes','08',1),
  (1122,74,'Ari&egrave;ge','09',1),
  (1123,74,'Aube','10',1),
  (1124,74,'Aude','11',1),
  (1125,74,'Aveyron','12',1),
  (1126,74,'Bouches du Rh&ocirc;ne','13',1),
  (1127,74,'Calvados','14',1),
  (1128,74,'Cantal','15',1),
  (1129,74,'Charente','16',1),
  (1130,74,'Charente Maritime','17',1),
  (1131,74,'Cher','18',1),
  (1132,74,'Corr&egrave;ze','19',1),
  (1133,74,'Corse du Sud','2A',1),
  (1134,74,'Haute Corse','2B',1),
  (1135,74,'C&ocirc;te d&#039;or','21',1),
  (1136,74,'C&ocirc;tes d&#039;Armor','22',1),
  (1137,74,'Creuse','23',1),
  (1138,74,'Dordogne','24',1),
  (1139,74,'Doubs','25',1),
  (1140,74,'Dr&ocirc;me','26',1),
  (1141,74,'Eure','27',1),
  (1142,74,'Eure et Loir','28',1),
  (1143,74,'Finist&egrave;re','29',1),
  (1144,74,'Gard','30',1),
  (1145,74,'Haute Garonne','31',1),
  (1146,74,'Gers','32',1),
  (1147,74,'Gironde','33',1),
  (1148,74,'H&eacute;rault','34',1),
  (1149,74,'Ille et Vilaine','35',1),
  (1150,74,'Indre','36',1),
  (1151,74,'Indre et Loire','37',1),
  (1152,74,'Is&eacute;re','38',1),
  (1153,74,'Jura','39',1),
  (1154,74,'Landes','40',1),
  (1155,74,'Loir et Cher','41',1),
  (1156,74,'Loire','42',1),
  (1157,74,'Haute Loire','43',1),
  (1158,74,'Loire Atlantique','44',1),
  (1159,74,'Loiret','45',1),
  (1160,74,'Lot','46',1),
  (1161,74,'Lot et Garonne','47',1),
  (1162,74,'Loz&egrave;re','48',1),
  (1163,74,'Maine et Loire','49',1),
  (1164,74,'Manche','50',1),
  (1165,74,'Marne','51',1),
  (1166,74,'Haute Marne','52',1),
  (1167,74,'Mayenne','53',1),
  (1168,74,'Meurthe et Moselle','54',1),
  (1169,74,'Meuse','55',1),
  (1170,74,'Morbihan','56',1),
  (1171,74,'Moselle','57',1),
  (1172,74,'Ni&egrave;vre','58',1),
  (1173,74,'Nord','59',1),
  (1174,74,'Oise','60',1),
  (1175,74,'Orne','61',1),
  (1176,74,'Pas de Calais','62',1),
  (1177,74,'Puy de D&ocirc;me','63',1),
  (1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),
  (1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),
  (1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),
  (1181,74,'Bas Rhin','67',1),
  (1182,74,'Haut Rhin','68',1),
  (1183,74,'Rh&ocirc;ne','69',1),
  (1184,74,'Haute Sa&ocirc;ne','70',1),
  (1185,74,'Sa&ocirc;ne et Loire','71',1),
  (1186,74,'Sarthe','72',1),
  (1187,74,'Savoie','73',1),
  (1188,74,'Haute Savoie','74',1),
  (1189,74,'Paris','75',1),
  (1190,74,'Seine Maritime','76',1),
  (1191,74,'Seine et Marne','77',1),
  (1192,74,'Yvelines','78',1),
  (1193,74,'Deux S&egrave;vres','79',1),
  (1194,74,'Somme','80',1),
  (1195,74,'Tarn','81',1),
  (1196,74,'Tarn et Garonne','82',1),
  (1197,74,'Var','83',1),
  (1198,74,'Vaucluse','84',1),
  (1199,74,'Vend&eacute;e','85',1),
  (1200,74,'Vienne','86',1),
  (1201,74,'Haute Vienne','87',1),
  (1202,74,'Vosges','88',1),
  (1203,74,'Yonne','89',1),
  (1204,74,'Territoire de Belfort','90',1),
  (1205,74,'Essonne','91',1),
  (1206,74,'Hauts de Seine','92',1),
  (1207,74,'Seine St-Denis','93',1),
  (1208,74,'Val de Marne','94',1),
  (1209,74,'Val d''Oise','95',1),
  (1210,76,'Archipel des Marquises','M',1),
  (1211,76,'Archipel des Tuamotu','T',1),
  (1212,76,'Archipel des Tubuai','I',1),
  (1213,76,'Iles du Vent','V',1),
  (1214,76,'Iles Sous-le-Vent','S',1),
  (1215,77,'Iles Crozet','C',1),
  (1216,77,'Iles Kerguelen','K',1),
  (1217,77,'Ile Amsterdam','A',1),
  (1218,77,'Ile Saint-Paul','P',1),
  (1219,77,'Adelie Land','D',1),
  (1220,78,'Estuaire','ES',1),
  (1221,78,'Haut-Ogooue','HO',1),
  (1222,78,'Moyen-Ogooue','MO',1),
  (1223,78,'Ngounie','NG',1),
  (1224,78,'Nyanga','NY',1),
  (1225,78,'Ogooue-Ivindo','OI',1),
  (1226,78,'Ogooue-Lolo','OL',1),
  (1227,78,'Ogooue-Maritime','OM',1),
  (1228,78,'Woleu-Ntem','WN',1),
  (1229,79,'Banjul','BJ',1),
  (1230,79,'Basse','BS',1),
  (1231,79,'Brikama','BR',1),
  (1232,79,'Janjangbure','JA',1),
  (1233,79,'Kanifeng','KA',1),
  (1234,79,'Kerewan','KE',1),
  (1235,79,'Kuntaur','KU',1),
  (1236,79,'Mansakonko','MA',1),
  (1237,79,'Lower River','LR',1),
  (1238,79,'Central River','CR',1),
  (1239,79,'North Bank','NB',1),
  (1240,79,'Upper River','UR',1),
  (1241,79,'Western','WE',1),
  (1242,80,'Abkhazia','AB',1),
  (1243,80,'Ajaria','AJ',1),
  (1244,80,'Tbilisi','TB',1),
  (1245,80,'Guria','GU',1),
  (1246,80,'Imereti','IM',1),
  (1247,80,'Kakheti','KA',1),
  (1248,80,'Kvemo Kartli','KK',1),
  (1249,80,'Mtskheta-Mtianeti','MM',1),
  (1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),
  (1251,80,'Samegrelo-Zemo Svaneti','SZ',1),
  (1252,80,'Samtskhe-Javakheti','SJ',1),
  (1253,80,'Shida Kartli','SK',1),
  (1254,81,'Baden-W&uuml;rttemberg','BAW',1),
  (1255,81,'Bayern','BAY',1),
  (1256,81,'Berlin','BER',1),
  (1257,81,'Brandenburg','BRG',1),
  (1258,81,'Bremen','BRE',1),
  (1259,81,'Hamburg','HAM',1),
  (1260,81,'Hessen','HES',1),
  (1261,81,'Mecklenburg-Vorpommern','MEC',1),
  (1262,81,'Niedersachsen','NDS',1),
  (1263,81,'Nordrhein-Westfalen','NRW',1),
  (1264,81,'Rheinland-Pfalz','RHE',1),
  (1265,81,'Saarland','SAR',1),
  (1266,81,'Sachsen','SAS',1),
  (1267,81,'Sachsen-Anhalt','SAC',1),
  (1268,81,'Schleswig-Holstein','SCN',1),
  (1269,81,'Th&uuml;ringen','THE',1),
  (1270,82,'Ashanti Region','AS',1),
  (1271,82,'Brong-Ahafo Region','BA',1),
  (1272,82,'Central Region','CE',1),
  (1273,82,'Eastern Region','EA',1),
  (1274,82,'Greater Accra Region','GA',1),
  (1275,82,'Northern Region','NO',1),
  (1276,82,'Upper East Region','UE',1),
  (1277,82,'Upper West Region','UW',1),
  (1278,82,'Volta Region','VO',1),
  (1279,82,'Western Region','WE',1),
  (1280,84,'Attica','AT',1),
  (1281,84,'Central Greece','CN',1),
  (1282,84,'Central Macedonia','CM',1),
  (1283,84,'Crete','CR',1),
  (1284,84,'East Macedonia and Thrace','EM',1),
  (1285,84,'Epirus','EP',1),
  (1286,84,'Ionian Islands','II',1),
  (1287,84,'North Aegean','NA',1),
  (1288,84,'Peloponnesos','PP',1),
  (1289,84,'South Aegean','SA',1),
  (1290,84,'Thessaly','TH',1),
  (1291,84,'West Greece','WG',1),
  (1292,84,'West Macedonia','WM',1),
  (1293,85,'Avannaa','A',1),
  (1294,85,'Tunu','T',1),
  (1295,85,'Kitaa','K',1),
  (1296,86,'Saint Andrew','A',1),
  (1297,86,'Saint David','D',1),
  (1298,86,'Saint George','G',1),
  (1299,86,'Saint John','J',1),
  (1300,86,'Saint Mark','M',1),
  (1301,86,'Saint Patrick','P',1),
  (1302,86,'Carriacou','C',1),
  (1303,86,'Petit Martinique','Q',1),
  (1304,89,'Alta Verapaz','AV',1),
  (1305,89,'Baja Verapaz','BV',1),
  (1306,89,'Chimaltenango','CM',1),
  (1307,89,'Chiquimula','CQ',1),
  (1308,89,'El Peten','PE',1),
  (1309,89,'El Progreso','PR',1),
  (1310,89,'El Quiche','QC',1),
  (1311,89,'Escuintla','ES',1),
  (1312,89,'Guatemala','GU',1),
  (1313,89,'Huehuetenango','HU',1),
  (1314,89,'Izabal','IZ',1),
  (1315,89,'Jalapa','JA',1),
  (1316,89,'Jutiapa','JU',1),
  (1317,89,'Quetzaltenango','QZ',1),
  (1318,89,'Retalhuleu','RE',1),
  (1319,89,'Sacatepequez','ST',1),
  (1320,89,'San Marcos','SM',1),
  (1321,89,'Santa Rosa','SR',1),
  (1322,89,'Solola','SO',1),
  (1323,89,'Suchitepequez','SU',1),
  (1324,89,'Totonicapan','TO',1),
  (1325,89,'Zacapa','ZA',1),
  (1326,90,'Conakry','CNK',1),
  (1327,90,'Beyla','BYL',1),
  (1328,90,'Boffa','BFA',1),
  (1329,90,'Boke','BOK',1),
  (1330,90,'Coyah','COY',1),
  (1331,90,'Dabola','DBL',1),
  (1332,90,'Dalaba','DLB',1),
  (1333,90,'Dinguiraye','DGR',1),
  (1334,90,'Dubreka','DBR',1),
  (1335,90,'Faranah','FRN',1),
  (1336,90,'Forecariah','FRC',1),
  (1337,90,'Fria','FRI',1),
  (1338,90,'Gaoual','GAO',1),
  (1339,90,'Gueckedou','GCD',1),
  (1340,90,'Kankan','KNK',1),
  (1341,90,'Kerouane','KRN',1),
  (1342,90,'Kindia','KND',1),
  (1343,90,'Kissidougou','KSD',1),
  (1344,90,'Koubia','KBA',1),
  (1345,90,'Koundara','KDA',1),
  (1346,90,'Kouroussa','KRA',1),
  (1347,90,'Labe','LAB',1),
  (1348,90,'Lelouma','LLM',1),
  (1349,90,'Lola','LOL',1),
  (1350,90,'Macenta','MCT',1),
  (1351,90,'Mali','MAL',1),
  (1352,90,'Mamou','MAM',1),
  (1353,90,'Mandiana','MAN',1),
  (1354,90,'Nzerekore','NZR',1),
  (1355,90,'Pita','PIT',1),
  (1356,90,'Siguiri','SIG',1),
  (1357,90,'Telimele','TLM',1),
  (1358,90,'Tougue','TOG',1),
  (1359,90,'Yomou','YOM',1),
  (1360,91,'Bafata Region','BF',1),
  (1361,91,'Biombo Region','BB',1),
  (1362,91,'Bissau Region','BS',1),
  (1363,91,'Bolama Region','BL',1),
  (1364,91,'Cacheu Region','CA',1),
  (1365,91,'Gabu Region','GA',1),
  (1366,91,'Oio Region','OI',1),
  (1367,91,'Quinara Region','QU',1),
  (1368,91,'Tombali Region','TO',1),
  (1369,92,'Barima-Waini','BW',1),
  (1370,92,'Cuyuni-Mazaruni','CM',1),
  (1371,92,'Demerara-Mahaica','DM',1),
  (1372,92,'East Berbice-Corentyne','EC',1),
  (1373,92,'Essequibo Islands-West Demerara','EW',1),
  (1374,92,'Mahaica-Berbice','MB',1),
  (1375,92,'Pomeroon-Supenaam','PM',1),
  (1376,92,'Potaro-Siparuni','PI',1),
  (1377,92,'Upper Demerara-Berbice','UD',1),
  (1378,92,'Upper Takutu-Upper Essequibo','UT',1),
  (1379,93,'Artibonite','AR',1),
  (1380,93,'Centre','CE',1),
  (1381,93,'Grand''Anse','GA',1),
  (1382,93,'Nord','ND',1),
  (1383,93,'Nord-Est','NE',1),
  (1384,93,'Nord-Ouest','NO',1),
  (1385,93,'Ouest','OU',1),
  (1386,93,'Sud','SD',1),
  (1387,93,'Sud-Est','SE',1),
  (1388,94,'Flat Island','F',1),
  (1389,94,'McDonald Island','M',1),
  (1390,94,'Shag Island','S',1),
  (1391,94,'Heard Island','H',1),
  (1392,95,'Atlantida','AT',1),
  (1393,95,'Choluteca','CH',1),
  (1394,95,'Colon','CL',1),
  (1395,95,'Comayagua','CM',1),
  (1396,95,'Copan','CP',1),
  (1397,95,'Cortes','CR',1),
  (1398,95,'El Paraiso','PA',1),
  (1399,95,'Francisco Morazan','FM',1),
  (1400,95,'Gracias a Dios','GD',1),
  (1401,95,'Intibuca','IN',1),
  (1402,95,'Islas de la Bahia (Bay Islands)','IB',1),
  (1403,95,'La Paz','PZ',1),
  (1404,95,'Lempira','LE',1),
  (1405,95,'Ocotepeque','OC',1),
  (1406,95,'Olancho','OL',1),
  (1407,95,'Santa Barbara','SB',1),
  (1408,95,'Valle','VA',1),
  (1409,95,'Yoro','YO',1),
  (1410,96,'Central and Western Hong Kong Island','HCW',1),
  (1411,96,'Eastern Hong Kong Island','HEA',1),
  (1412,96,'Southern Hong Kong Island','HSO',1),
  (1413,96,'Wan Chai Hong Kong Island','HWC',1),
  (1414,96,'Kowloon City Kowloon','KKC',1),
  (1415,96,'Kwun Tong Kowloon','KKT',1),
  (1416,96,'Sham Shui Po Kowloon','KSS',1),
  (1417,96,'Wong Tai Sin Kowloon','KWT',1),
  (1418,96,'Yau Tsim Mong Kowloon','KYT',1),
  (1419,96,'Islands New Territories','NIS',1),
  (1420,96,'Kwai Tsing New Territories','NKT',1),
  (1421,96,'North New Territories','NNO',1),
  (1422,96,'Sai Kung New Territories','NSK',1),
  (1423,96,'Sha Tin New Territories','NST',1),
  (1424,96,'Tai Po New Territories','NTP',1),
  (1425,96,'Tsuen Wan New Territories','NTW',1),
  (1426,96,'Tuen Mun New Territories','NTM',1),
  (1427,96,'Yuen Long New Territories','NYL',1),
  (1428,97,'Bacs-Kiskun','BK',1),
  (1429,97,'Baranya','BA',1),
  (1430,97,'Bekes','BE',1),
  (1431,97,'Bekescsaba','BS',1),
  (1432,97,'Borsod-Abauj-Zemplen','BZ',1),
  (1433,97,'Budapest','BU',1),
  (1434,97,'Csongrad','CS',1),
  (1435,97,'Debrecen','DE',1),
  (1436,97,'Dunaujvaros','DU',1),
  (1437,97,'Eger','EG',1),
  (1438,97,'Fejer','FE',1),
  (1439,97,'Gyor','GY',1),
  (1440,97,'Gyor-Moson-Sopron','GM',1),
  (1441,97,'Hajdu-Bihar','HB',1),
  (1442,97,'Heves','HE',1),
  (1443,97,'Hodmezovasarhely','HO',1),
  (1444,97,'Jasz-Nagykun-Szolnok','JN',1),
  (1445,97,'Kaposvar','KA',1),
  (1446,97,'Kecskemet','KE',1),
  (1447,97,'Komarom-Esztergom','KO',1),
  (1448,97,'Miskolc','MI',1),
  (1449,97,'Nagykanizsa','NA',1),
  (1450,97,'Nograd','NO',1),
  (1451,97,'Nyiregyhaza','NY',1),
  (1452,97,'Pecs','PE',1),
  (1453,97,'Pest','PS',1),
  (1454,97,'Somogy','SO',1),
  (1455,97,'Sopron','SP',1),
  (1456,97,'Szabolcs-Szatmar-Bereg','SS',1),
  (1457,97,'Szeged','SZ',1),
  (1458,97,'Szekesfehervar','SE',1),
  (1459,97,'Szolnok','SL',1),
  (1460,97,'Szombathely','SM',1),
  (1461,97,'Tatabanya','TA',1),
  (1462,97,'Tolna','TO',1),
  (1463,97,'Vas','VA',1),
  (1464,97,'Veszprem','VE',1),
  (1465,97,'Zala','ZA',1),
  (1466,97,'Zalaegerszeg','ZZ',1),
  (1467,98,'Austurland','AL',1),
  (1468,98,'Hofuoborgarsvaeoi','HF',1),
  (1469,98,'Norourland eystra','NE',1),
  (1470,98,'Norourland vestra','NV',1),
  (1471,98,'Suourland','SL',1),
  (1472,98,'Suournes','SN',1),
  (1473,98,'Vestfiroir','VF',1),
  (1474,98,'Vesturland','VL',1),
  (1475,99,'Andaman and Nicobar Islands','AN',1),
  (1476,99,'Andhra Pradesh','AP',1),
  (1477,99,'Arunachal Pradesh','AR',1),
  (1478,99,'Assam','AS',1),
  (1479,99,'Bihar','BI',1),
  (1480,99,'Chandigarh','CH',1),
  (1481,99,'Dadra and Nagar Haveli','DA',1),
  (1482,99,'Daman and Diu','DM',1),
  (1483,99,'Delhi','DE',1),
  (1484,99,'Goa','GO',1),
  (1485,99,'Gujarat','GU',1),
  (1486,99,'Haryana','HA',1),
  (1487,99,'Himachal Pradesh','HP',1),
  (1488,99,'Jammu and Kashmir','JA',1),
  (1489,99,'Karnataka','KA',1),
  (1490,99,'Kerala','KE',1),
  (1491,99,'Lakshadweep Islands','LI',1),
  (1492,99,'Madhya Pradesh','MP',1),
  (1493,99,'Maharashtra','MA',1),
  (1494,99,'Manipur','MN',1),
  (1495,99,'Meghalaya','ME',1),
  (1496,99,'Mizoram','MI',1),
  (1497,99,'Nagaland','NA',1),
  (1498,99,'Orissa','OR',1),
  (1499,99,'Pondicherry','PO',1),
  (1500,99,'Punjab','PU',1);
COMMIT;

#
# Data for the `zone` table  (LIMIT 1501,500)
#

INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES 
  (1501,99,'Rajasthan','RA',1),
  (1502,99,'Sikkim','SI',1),
  (1503,99,'Tamil Nadu','TN',1),
  (1504,99,'Tripura','TR',1),
  (1505,99,'Uttar Pradesh','UP',1),
  (1506,99,'West Bengal','WB',1),
  (1507,100,'Aceh','AC',1),
  (1508,100,'Bali','BA',1),
  (1509,100,'Banten','BT',1),
  (1510,100,'Bengkulu','BE',1),
  (1511,100,'BoDeTaBek','BD',1),
  (1512,100,'Gorontalo','GO',1),
  (1513,100,'Jakarta Raya','JK',1),
  (1514,100,'Jambi','JA',1),
  (1515,100,'Jawa Barat','JB',1),
  (1516,100,'Jawa Tengah','JT',1),
  (1517,100,'Jawa Timur','JI',1),
  (1518,100,'Kalimantan Barat','KB',1),
  (1519,100,'Kalimantan Selatan','KS',1),
  (1520,100,'Kalimantan Tengah','KT',1),
  (1521,100,'Kalimantan Timur','KI',1),
  (1522,100,'Kepulauan Bangka Belitung','BB',1),
  (1523,100,'Lampung','LA',1),
  (1524,100,'Maluku','MA',1),
  (1525,100,'Maluku Utara','MU',1),
  (1526,100,'Nusa Tenggara Barat','NB',1),
  (1527,100,'Nusa Tenggara Timur','NT',1),
  (1528,100,'Papua','PA',1),
  (1529,100,'Riau','RI',1),
  (1530,100,'Sulawesi Selatan','SN',1),
  (1531,100,'Sulawesi Tengah','ST',1),
  (1532,100,'Sulawesi Tenggara','SG',1),
  (1533,100,'Sulawesi Utara','SA',1),
  (1534,100,'Sumatera Barat','SB',1),
  (1535,100,'Sumatera Selatan','SS',1),
  (1536,100,'Sumatera Utara','SU',1),
  (1537,100,'Yogyakarta','YO',1),
  (1538,101,'Tehran','TEH',1),
  (1539,101,'Qom','QOM',1),
  (1540,101,'Markazi','MKZ',1),
  (1541,101,'Qazvin','QAZ',1),
  (1542,101,'Gilan','GIL',1),
  (1543,101,'Ardabil','ARD',1),
  (1544,101,'Zanjan','ZAN',1),
  (1545,101,'East Azarbaijan','EAZ',1),
  (1546,101,'West Azarbaijan','WEZ',1),
  (1547,101,'Kurdistan','KRD',1),
  (1548,101,'Hamadan','HMD',1),
  (1549,101,'Kermanshah','KRM',1),
  (1550,101,'Ilam','ILM',1),
  (1551,101,'Lorestan','LRS',1),
  (1552,101,'Khuzestan','KZT',1),
  (1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),
  (1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),
  (1555,101,'Bushehr','BSH',1),
  (1556,101,'Fars','FAR',1),
  (1557,101,'Hormozgan','HRM',1),
  (1558,101,'Sistan and Baluchistan','SBL',1),
  (1559,101,'Kerman','KRB',1),
  (1560,101,'Yazd','YZD',1),
  (1561,101,'Esfahan','EFH',1),
  (1562,101,'Semnan','SMN',1),
  (1563,101,'Mazandaran','MZD',1),
  (1564,101,'Golestan','GLS',1),
  (1565,101,'North Khorasan','NKH',1),
  (1566,101,'Razavi Khorasan','RKH',1),
  (1567,101,'South Khorasan','SKH',1),
  (1568,102,'Baghdad','BD',1),
  (1569,102,'Salah ad Din','SD',1),
  (1570,102,'Diyala','DY',1),
  (1571,102,'Wasit','WS',1),
  (1572,102,'Maysan','MY',1),
  (1573,102,'Al Basrah','BA',1),
  (1574,102,'Dhi Qar','DQ',1),
  (1575,102,'Al Muthanna','MU',1),
  (1576,102,'Al Qadisyah','QA',1),
  (1577,102,'Babil','BB',1),
  (1578,102,'Al Karbala','KB',1),
  (1579,102,'An Najaf','NJ',1),
  (1580,102,'Al Anbar','AB',1),
  (1581,102,'Ninawa','NN',1),
  (1582,102,'Dahuk','DH',1),
  (1583,102,'Arbil','AL',1),
  (1584,102,'At Ta''mim','TM',1),
  (1585,102,'As Sulaymaniyah','SL',1),
  (1586,103,'Carlow','CA',1),
  (1587,103,'Cavan','CV',1),
  (1588,103,'Clare','CL',1),
  (1589,103,'Cork','CO',1),
  (1590,103,'Donegal','DO',1),
  (1591,103,'Dublin','DU',1),
  (1592,103,'Galway','GA',1),
  (1593,103,'Kerry','KE',1),
  (1594,103,'Kildare','KI',1),
  (1595,103,'Kilkenny','KL',1),
  (1596,103,'Laois','LA',1),
  (1597,103,'Leitrim','LE',1),
  (1598,103,'Limerick','LI',1),
  (1599,103,'Longford','LO',1),
  (1600,103,'Louth','LU',1),
  (1601,103,'Mayo','MA',1),
  (1602,103,'Meath','ME',1),
  (1603,103,'Monaghan','MO',1),
  (1604,103,'Offaly','OF',1),
  (1605,103,'Roscommon','RO',1),
  (1606,103,'Sligo','SL',1),
  (1607,103,'Tipperary','TI',1),
  (1608,103,'Waterford','WA',1),
  (1609,103,'Westmeath','WE',1),
  (1610,103,'Wexford','WX',1),
  (1611,103,'Wicklow','WI',1),
  (1612,104,'Be''er Sheva','BS',1),
  (1613,104,'Bika''at Hayarden','BH',1),
  (1614,104,'Eilat and Arava','EA',1),
  (1615,104,'Galil','GA',1),
  (1616,104,'Haifa','HA',1),
  (1617,104,'Jehuda Mountains','JM',1),
  (1618,104,'Jerusalem','JE',1),
  (1619,104,'Negev','NE',1),
  (1620,104,'Semaria','SE',1),
  (1621,104,'Sharon','SH',1),
  (1622,104,'Tel Aviv (Gosh Dan)','TA',1),
  (1643,106,'Clarendon Parish','CLA',1),
  (1644,106,'Hanover Parish','HAN',1),
  (1645,106,'Kingston Parish','KIN',1),
  (1646,106,'Manchester Parish','MAN',1),
  (1647,106,'Portland Parish','POR',1),
  (1648,106,'Saint Andrew Parish','AND',1),
  (1649,106,'Saint Ann Parish','ANN',1),
  (1650,106,'Saint Catherine Parish','CAT',1),
  (1651,106,'Saint Elizabeth Parish','ELI',1),
  (1652,106,'Saint James Parish','JAM',1),
  (1653,106,'Saint Mary Parish','MAR',1),
  (1654,106,'Saint Thomas Parish','THO',1),
  (1655,106,'Trelawny Parish','TRL',1),
  (1656,106,'Westmoreland Parish','WML',1),
  (1657,107,'Aichi','AI',1),
  (1658,107,'Akita','AK',1),
  (1659,107,'Aomori','AO',1),
  (1660,107,'Chiba','CH',1),
  (1661,107,'Ehime','EH',1),
  (1662,107,'Fukui','FK',1),
  (1663,107,'Fukuoka','FU',1),
  (1664,107,'Fukushima','FS',1),
  (1665,107,'Gifu','GI',1),
  (1666,107,'Gumma','GU',1),
  (1667,107,'Hiroshima','HI',1),
  (1668,107,'Hokkaido','HO',1),
  (1669,107,'Hyogo','HY',1),
  (1670,107,'Ibaraki','IB',1),
  (1671,107,'Ishikawa','IS',1),
  (1672,107,'Iwate','IW',1),
  (1673,107,'Kagawa','KA',1),
  (1674,107,'Kagoshima','KG',1),
  (1675,107,'Kanagawa','KN',1),
  (1676,107,'Kochi','KO',1),
  (1677,107,'Kumamoto','KU',1),
  (1678,107,'Kyoto','KY',1),
  (1679,107,'Mie','MI',1),
  (1680,107,'Miyagi','MY',1),
  (1681,107,'Miyazaki','MZ',1),
  (1682,107,'Nagano','NA',1),
  (1683,107,'Nagasaki','NG',1),
  (1684,107,'Nara','NR',1),
  (1685,107,'Niigata','NI',1),
  (1686,107,'Oita','OI',1),
  (1687,107,'Okayama','OK',1),
  (1688,107,'Okinawa','ON',1),
  (1689,107,'Osaka','OS',1),
  (1690,107,'Saga','SA',1),
  (1691,107,'Saitama','SI',1),
  (1692,107,'Shiga','SH',1),
  (1693,107,'Shimane','SM',1),
  (1694,107,'Shizuoka','SZ',1),
  (1695,107,'Tochigi','TO',1),
  (1696,107,'Tokushima','TS',1),
  (1697,107,'Tokyo','TK',1),
  (1698,107,'Tottori','TT',1),
  (1699,107,'Toyama','TY',1),
  (1700,107,'Wakayama','WA',1),
  (1701,107,'Yamagata','YA',1),
  (1702,107,'Yamaguchi','YM',1),
  (1703,107,'Yamanashi','YN',1),
  (1704,108,'''Amman','AM',1),
  (1705,108,'Ajlun','AJ',1),
  (1706,108,'Al ''Aqabah','AA',1),
  (1707,108,'Al Balqa''','AB',1),
  (1708,108,'Al Karak','AK',1),
  (1709,108,'Al Mafraq','AL',1),
  (1710,108,'At Tafilah','AT',1),
  (1711,108,'Az Zarqa''','AZ',1),
  (1712,108,'Irbid','IR',1),
  (1713,108,'Jarash','JA',1),
  (1714,108,'Ma''an','MA',1),
  (1715,108,'Madaba','MD',1),
  (1716,109,'Алматинская область','AL',1),
  (1717,109,'Алматы - город республ-го значения','AC',1),
  (1718,109,'Акмолинская область','AM',1),
  (1719,109,'Актюбинская область','AQ',1),
  (1720,109,'Астана - город республ-го значения','AS',1),
  (1721,109,'Атырауская область','AT',1),
  (1722,109,'Западно-Казахстанская область','BA',1),
  (1723,109,'Байконур - город республ-го значения','BY',1),
  (1724,109,'Мангистауская область','MA',1),
  (1725,109,'Южно-Казахстанская область','ON',1),
  (1726,109,'Павлодарская область','PA',1),
  (1727,109,'Карагандинская область','QA',1),
  (1728,109,'Костанайская область','QO',1),
  (1729,109,'Кызылординская область','QY',1),
  (1730,109,'Восточно-Казахстанская область','SH',1),
  (1731,109,'Северо-Казахстанская область','SO',1),
  (1732,109,'Жамбылская область','ZH',1),
  (1733,110,'Central','CE',1),
  (1734,110,'Coast','CO',1),
  (1735,110,'Eastern','EA',1),
  (1736,110,'Nairobi Area','NA',1),
  (1737,110,'North Eastern','NE',1),
  (1738,110,'Nyanza','NY',1),
  (1739,110,'Rift Valley','RV',1),
  (1740,110,'Western','WE',1),
  (1741,111,'Abaiang','AG',1),
  (1742,111,'Abemama','AM',1),
  (1743,111,'Aranuka','AK',1),
  (1744,111,'Arorae','AO',1),
  (1745,111,'Banaba','BA',1),
  (1746,111,'Beru','BE',1),
  (1747,111,'Butaritari','bT',1),
  (1748,111,'Kanton','KA',1),
  (1749,111,'Kiritimati','KR',1),
  (1750,111,'Kuria','KU',1),
  (1751,111,'Maiana','MI',1),
  (1752,111,'Makin','MN',1),
  (1753,111,'Marakei','ME',1),
  (1754,111,'Nikunau','NI',1),
  (1755,111,'Nonouti','NO',1),
  (1756,111,'Onotoa','ON',1),
  (1757,111,'Tabiteuea','TT',1),
  (1758,111,'Tabuaeran','TR',1),
  (1759,111,'Tamana','TM',1),
  (1760,111,'Tarawa','TW',1),
  (1761,111,'Teraina','TE',1),
  (1762,112,'Chagang-do','CHA',1),
  (1763,112,'Hamgyong-bukto','HAB',1),
  (1764,112,'Hamgyong-namdo','HAN',1),
  (1765,112,'Hwanghae-bukto','HWB',1),
  (1766,112,'Hwanghae-namdo','HWN',1),
  (1767,112,'Kangwon-do','KAN',1),
  (1768,112,'P''yongan-bukto','PYB',1),
  (1769,112,'P''yongan-namdo','PYN',1),
  (1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),
  (1771,112,'Rason Directly Governed City','NAJ',1),
  (1772,112,'P''yongyang Special City','PYO',1),
  (1773,113,'Ch''ungch''ong-bukto','CO',1),
  (1774,113,'Ch''ungch''ong-namdo','CH',1),
  (1775,113,'Cheju-do','CD',1),
  (1776,113,'Cholla-bukto','CB',1),
  (1777,113,'Cholla-namdo','CN',1),
  (1778,113,'Inch''on-gwangyoksi','IG',1),
  (1779,113,'Kangwon-do','KA',1),
  (1780,113,'Kwangju-gwangyoksi','KG',1),
  (1781,113,'Kyonggi-do','KD',1),
  (1782,113,'Kyongsang-bukto','KB',1),
  (1783,113,'Kyongsang-namdo','KN',1),
  (1784,113,'Pusan-gwangyoksi','PG',1),
  (1785,113,'Soul-t''ukpyolsi','SO',1),
  (1786,113,'Taegu-gwangyoksi','TA',1),
  (1787,113,'Taejon-gwangyoksi','TG',1),
  (1788,114,'Al ''Asimah','AL',1),
  (1789,114,'Al Ahmadi','AA',1),
  (1790,114,'Al Farwaniyah','AF',1),
  (1791,114,'Al Jahra''','AJ',1),
  (1792,114,'Hawalli','HA',1),
  (1793,115,'Bishkek','GB',1),
  (1794,115,'Batken','B',1),
  (1795,115,'Chu','C',1),
  (1796,115,'Jalal-Abad','J',1),
  (1797,115,'Naryn','N',1),
  (1798,115,'Osh','O',1),
  (1799,115,'Talas','T',1),
  (1800,115,'Ysyk-Kol','Y',1),
  (1801,116,'Vientiane','VT',1),
  (1802,116,'Attapu','AT',1),
  (1803,116,'Bokeo','BK',1),
  (1804,116,'Bolikhamxai','BL',1),
  (1805,116,'Champasak','CH',1),
  (1806,116,'Houaphan','HO',1),
  (1807,116,'Khammouan','KH',1),
  (1808,116,'Louang Namtha','LM',1),
  (1809,116,'Louangphabang','LP',1),
  (1810,116,'Oudomxai','OU',1),
  (1811,116,'Phongsali','PH',1),
  (1812,116,'Salavan','SL',1),
  (1813,116,'Savannakhet','SV',1),
  (1814,116,'Vientiane','VI',1),
  (1815,116,'Xaignabouli','XA',1),
  (1816,116,'Xekong','XE',1),
  (1817,116,'Xiangkhoang','XI',1),
  (1818,116,'Xaisomboun','XN',1),
  (1819,117,'Aizkraukles Rajons','AIZ',1),
  (1820,117,'Aluksnes Rajons','ALU',1),
  (1821,117,'Balvu Rajons','BAL',1),
  (1822,117,'Bauskas Rajons','BAU',1),
  (1823,117,'Cesu Rajons','CES',1),
  (1824,117,'Daugavpils Rajons','DGR',1),
  (1825,117,'Dobeles Rajons','DOB',1),
  (1826,117,'Gulbenes Rajons','GUL',1),
  (1827,117,'Jekabpils Rajons','JEK',1),
  (1828,117,'Jelgavas Rajons','JGR',1),
  (1829,117,'Kraslavas Rajons','KRA',1),
  (1830,117,'Kuldigas Rajons','KUL',1),
  (1831,117,'Liepajas Rajons','LPR',1),
  (1832,117,'Limbazu Rajons','LIM',1),
  (1833,117,'Ludzas Rajons','LUD',1),
  (1834,117,'Madonas Rajons','MAD',1),
  (1835,117,'Ogres Rajons','OGR',1),
  (1836,117,'Preilu Rajons','PRE',1),
  (1837,117,'Rezeknes Rajons','RZR',1),
  (1838,117,'Rigas Rajons','RGR',1),
  (1839,117,'Saldus Rajons','SAL',1),
  (1840,117,'Talsu Rajons','TAL',1),
  (1841,117,'Tukuma Rajons','TUK',1),
  (1842,117,'Valkas Rajons','VLK',1),
  (1843,117,'Valmieras Rajons','VLM',1),
  (1844,117,'Ventspils Rajons','VSR',1),
  (1845,117,'Daugavpils','DGV',1),
  (1846,117,'Jelgava','JGV',1),
  (1847,117,'Jurmala','JUR',1),
  (1848,117,'Liepaja','LPK',1),
  (1849,117,'Rezekne','RZK',1),
  (1850,117,'Riga','RGA',1),
  (1851,117,'Ventspils','VSL',1),
  (1852,119,'Berea','BE',1),
  (1853,119,'Butha-Buthe','BB',1),
  (1854,119,'Leribe','LE',1),
  (1855,119,'Mafeteng','MF',1),
  (1856,119,'Maseru','MS',1),
  (1857,119,'Mohale''s Hoek','MH',1),
  (1858,119,'Mokhotlong','MK',1),
  (1859,119,'Qacha''s Nek','QN',1),
  (1860,119,'Quthing','QT',1),
  (1861,119,'Thaba-Tseka','TT',1),
  (1862,120,'Bomi','BI',1),
  (1863,120,'Bong','BG',1),
  (1864,120,'Grand Bassa','GB',1),
  (1865,120,'Grand Cape Mount','CM',1),
  (1866,120,'Grand Gedeh','GG',1),
  (1867,120,'Grand Kru','GK',1),
  (1868,120,'Lofa','LO',1),
  (1869,120,'Margibi','MG',1),
  (1870,120,'Maryland','ML',1),
  (1871,120,'Montserrado','MS',1),
  (1872,120,'Nimba','NB',1),
  (1873,120,'River Cess','RC',1),
  (1874,120,'Sinoe','SN',1),
  (1875,121,'Ajdabiya','AJ',1),
  (1876,121,'Al ''Aziziyah','AZ',1),
  (1877,121,'Al Fatih','FA',1),
  (1878,121,'Al Jabal al Akhdar','JA',1),
  (1879,121,'Al Jufrah','JU',1),
  (1880,121,'Al Khums','KH',1),
  (1881,121,'Al Kufrah','KU',1),
  (1882,121,'An Nuqat al Khams','NK',1),
  (1883,121,'Ash Shati''','AS',1),
  (1884,121,'Awbari','AW',1),
  (1885,121,'Az Zawiyah','ZA',1),
  (1886,121,'Banghazi','BA',1),
  (1887,121,'Darnah','DA',1),
  (1888,121,'Ghadamis','GD',1),
  (1889,121,'Gharyan','GY',1),
  (1890,121,'Misratah','MI',1),
  (1891,121,'Murzuq','MZ',1),
  (1892,121,'Sabha','SB',1),
  (1893,121,'Sawfajjin','SW',1),
  (1894,121,'Surt','SU',1),
  (1895,121,'Tarabulus (Tripoli)','TL',1),
  (1896,121,'Tarhunah','TH',1),
  (1897,121,'Tubruq','TU',1),
  (1898,121,'Yafran','YA',1),
  (1899,121,'Zlitan','ZL',1),
  (1900,122,'Vaduz','V',1),
  (1901,122,'Schaan','A',1),
  (1902,122,'Balzers','B',1),
  (1903,122,'Triesen','N',1),
  (1904,122,'Eschen','E',1),
  (1905,122,'Mauren','M',1),
  (1906,122,'Triesenberg','T',1),
  (1907,122,'Ruggell','R',1),
  (1908,122,'Gamprin','G',1),
  (1909,122,'Schellenberg','L',1),
  (1910,122,'Planken','P',1),
  (1911,123,'Alytus','AL',1),
  (1912,123,'Kaunas','KA',1),
  (1913,123,'Klaipeda','KL',1),
  (1914,123,'Marijampole','MA',1),
  (1915,123,'Panevezys','PA',1),
  (1916,123,'Siauliai','SI',1),
  (1917,123,'Taurage','TA',1),
  (1918,123,'Telsiai','TE',1),
  (1919,123,'Utena','UT',1),
  (1920,123,'Vilnius','VI',1),
  (1921,124,'Diekirch','DD',1),
  (1922,124,'Clervaux','DC',1),
  (1923,124,'Redange','DR',1),
  (1924,124,'Vianden','DV',1),
  (1925,124,'Wiltz','DW',1),
  (1926,124,'Grevenmacher','GG',1),
  (1927,124,'Echternach','GE',1),
  (1928,124,'Remich','GR',1),
  (1929,124,'Luxembourg','LL',1),
  (1930,124,'Capellen','LC',1),
  (1931,124,'Esch-sur-Alzette','LE',1),
  (1932,124,'Mersch','LM',1),
  (1933,125,'Our Lady Fatima Parish','OLF',1),
  (1934,125,'St. Anthony Parish','ANT',1),
  (1935,125,'St. Lazarus Parish','LAZ',1),
  (1936,125,'Cathedral Parish','CAT',1),
  (1937,125,'St. Lawrence Parish','LAW',1),
  (1938,127,'Antananarivo','AN',1),
  (1939,127,'Antsiranana','AS',1),
  (1940,127,'Fianarantsoa','FN',1),
  (1941,127,'Mahajanga','MJ',1),
  (1942,127,'Toamasina','TM',1),
  (1943,127,'Toliara','TL',1),
  (1944,128,'Balaka','BLK',1),
  (1945,128,'Blantyre','BLT',1),
  (1946,128,'Chikwawa','CKW',1),
  (1947,128,'Chiradzulu','CRD',1),
  (1948,128,'Chitipa','CTP',1),
  (1949,128,'Dedza','DDZ',1),
  (1950,128,'Dowa','DWA',1),
  (1951,128,'Karonga','KRG',1),
  (1952,128,'Kasungu','KSG',1),
  (1953,128,'Likoma','LKM',1),
  (1954,128,'Lilongwe','LLG',1),
  (1955,128,'Machinga','MCG',1),
  (1956,128,'Mangochi','MGC',1),
  (1957,128,'Mchinji','MCH',1),
  (1958,128,'Mulanje','MLJ',1),
  (1959,128,'Mwanza','MWZ',1),
  (1960,128,'Mzimba','MZM',1),
  (1961,128,'Ntcheu','NTU',1),
  (1962,128,'Nkhata Bay','NKB',1),
  (1963,128,'Nkhotakota','NKH',1),
  (1964,128,'Nsanje','NSJ',1),
  (1965,128,'Ntchisi','NTI',1),
  (1966,128,'Phalombe','PHL',1),
  (1967,128,'Rumphi','RMP',1),
  (1968,128,'Salima','SLM',1),
  (1969,128,'Thyolo','THY',1),
  (1970,128,'Zomba','ZBA',1),
  (1971,129,'Johor','JO',1),
  (1972,129,'Kedah','KE',1),
  (1973,129,'Kelantan','KL',1),
  (1974,129,'Labuan','LA',1),
  (1975,129,'Melaka','ME',1),
  (1976,129,'Negeri Sembilan','NS',1),
  (1977,129,'Pahang','PA',1),
  (1978,129,'Perak','PE',1),
  (1979,129,'Perlis','PR',1),
  (1980,129,'Pulau Pinang','PP',1),
  (1981,129,'Sabah','SA',1),
  (1982,129,'Sarawak','SR',1),
  (1983,129,'Selangor','SE',1),
  (1984,129,'Terengganu','TE',1),
  (1985,129,'Wilayah Persekutuan','WP',1),
  (1986,130,'Thiladhunmathi Uthuru','THU',1),
  (1987,130,'Thiladhunmathi Dhekunu','THD',1),
  (1988,130,'Miladhunmadulu Uthuru','MLU',1),
  (1989,130,'Miladhunmadulu Dhekunu','MLD',1),
  (1990,130,'Maalhosmadulu Uthuru','MAU',1),
  (1991,130,'Maalhosmadulu Dhekunu','MAD',1),
  (1992,130,'Faadhippolhu','FAA',1),
  (1993,130,'Male Atoll','MAA',1),
  (1994,130,'Ari Atoll Uthuru','AAU',1),
  (1995,130,'Ari Atoll Dheknu','AAD',1),
  (1996,130,'Felidhe Atoll','FEA',1),
  (1997,130,'Mulaku Atoll','MUA',1),
  (1998,130,'Nilandhe Atoll Uthuru','NAU',1),
  (1999,130,'Nilandhe Atoll Dhekunu','NAD',1),
  (2000,130,'Kolhumadulu','KLH',1),
  (2001,130,'Hadhdhunmathi','HDH',1),
  (2002,130,'Huvadhu Atoll Uthuru','HAU',1),
  (2003,130,'Huvadhu Atoll Dhekunu','HAD',1),
  (2004,130,'Fua Mulaku','FMU',1),
  (2005,130,'Addu','ADD',1),
  (2006,131,'Gao','GA',1),
  (2007,131,'Kayes','KY',1),
  (2008,131,'Kidal','KD',1),
  (2009,131,'Koulikoro','KL',1),
  (2010,131,'Mopti','MP',1),
  (2011,131,'Segou','SG',1),
  (2012,131,'Sikasso','SK',1),
  (2013,131,'Tombouctou','TB',1),
  (2014,131,'Bamako Capital District','CD',1),
  (2015,132,'Attard','ATT',1),
  (2016,132,'Balzan','BAL',1),
  (2017,132,'Birgu','BGU',1),
  (2018,132,'Birkirkara','BKK',1),
  (2019,132,'Birzebbuga','BRZ',1),
  (2020,132,'Bormla','BOR',1);
COMMIT;

#
# Data for the `zone` table  (LIMIT 2001,500)
#

INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES 
  (2021,132,'Dingli','DIN',1),
  (2022,132,'Fgura','FGU',1),
  (2023,132,'Floriana','FLO',1),
  (2024,132,'Gudja','GDJ',1),
  (2025,132,'Gzira','GZR',1),
  (2026,132,'Gargur','GRG',1),
  (2027,132,'Gaxaq','GXQ',1),
  (2028,132,'Hamrun','HMR',1),
  (2029,132,'Iklin','IKL',1),
  (2030,132,'Isla','ISL',1),
  (2031,132,'Kalkara','KLK',1),
  (2032,132,'Kirkop','KRK',1),
  (2033,132,'Lija','LIJ',1),
  (2034,132,'Luqa','LUQ',1),
  (2035,132,'Marsa','MRS',1),
  (2036,132,'Marsaskala','MKL',1),
  (2037,132,'Marsaxlokk','MXL',1),
  (2038,132,'Mdina','MDN',1),
  (2039,132,'Melliea','MEL',1),
  (2040,132,'Mgarr','MGR',1),
  (2041,132,'Mosta','MST',1),
  (2042,132,'Mqabba','MQA',1),
  (2043,132,'Msida','MSI',1),
  (2044,132,'Mtarfa','MTF',1),
  (2045,132,'Naxxar','NAX',1),
  (2046,132,'Paola','PAO',1),
  (2047,132,'Pembroke','PEM',1),
  (2048,132,'Pieta','PIE',1),
  (2049,132,'Qormi','QOR',1),
  (2050,132,'Qrendi','QRE',1),
  (2051,132,'Rabat','RAB',1),
  (2052,132,'Safi','SAF',1),
  (2053,132,'San Giljan','SGI',1),
  (2054,132,'Santa Lucija','SLU',1),
  (2055,132,'San Pawl il-Bahar','SPB',1),
  (2056,132,'San Gwann','SGW',1),
  (2057,132,'Santa Venera','SVE',1),
  (2058,132,'Siggiewi','SIG',1),
  (2059,132,'Sliema','SLM',1),
  (2060,132,'Swieqi','SWQ',1),
  (2061,132,'Ta Xbiex','TXB',1),
  (2062,132,'Tarxien','TRX',1),
  (2063,132,'Valletta','VLT',1),
  (2064,132,'Xgajra','XGJ',1),
  (2065,132,'Zabbar','ZBR',1),
  (2066,132,'Zebbug','ZBG',1),
  (2067,132,'Zejtun','ZJT',1),
  (2068,132,'Zurrieq','ZRQ',1),
  (2069,132,'Fontana','FNT',1),
  (2070,132,'Ghajnsielem','GHJ',1),
  (2071,132,'Gharb','GHR',1),
  (2072,132,'Ghasri','GHS',1),
  (2073,132,'Kercem','KRC',1),
  (2074,132,'Munxar','MUN',1),
  (2075,132,'Nadur','NAD',1),
  (2076,132,'Qala','QAL',1),
  (2077,132,'Victoria','VIC',1),
  (2078,132,'San Lawrenz','SLA',1),
  (2079,132,'Sannat','SNT',1),
  (2080,132,'Xagra','ZAG',1),
  (2081,132,'Xewkija','XEW',1),
  (2082,132,'Zebbug','ZEB',1),
  (2083,133,'Ailinginae','ALG',1),
  (2084,133,'Ailinglaplap','ALL',1),
  (2085,133,'Ailuk','ALK',1),
  (2086,133,'Arno','ARN',1),
  (2087,133,'Aur','AUR',1),
  (2088,133,'Bikar','BKR',1),
  (2089,133,'Bikini','BKN',1),
  (2090,133,'Bokak','BKK',1),
  (2091,133,'Ebon','EBN',1),
  (2092,133,'Enewetak','ENT',1),
  (2093,133,'Erikub','EKB',1),
  (2094,133,'Jabat','JBT',1),
  (2095,133,'Jaluit','JLT',1),
  (2096,133,'Jemo','JEM',1),
  (2097,133,'Kili','KIL',1),
  (2098,133,'Kwajalein','KWJ',1),
  (2099,133,'Lae','LAE',1),
  (2100,133,'Lib','LIB',1),
  (2101,133,'Likiep','LKP',1),
  (2102,133,'Majuro','MJR',1),
  (2103,133,'Maloelap','MLP',1),
  (2104,133,'Mejit','MJT',1),
  (2105,133,'Mili','MIL',1),
  (2106,133,'Namorik','NMK',1),
  (2107,133,'Namu','NAM',1),
  (2108,133,'Rongelap','RGL',1),
  (2109,133,'Rongrik','RGK',1),
  (2110,133,'Toke','TOK',1),
  (2111,133,'Ujae','UJA',1),
  (2112,133,'Ujelang','UJL',1),
  (2113,133,'Utirik','UTK',1),
  (2114,133,'Wotho','WTH',1),
  (2115,133,'Wotje','WTJ',1),
  (2116,135,'Adrar','AD',1),
  (2117,135,'Assaba','AS',1),
  (2118,135,'Brakna','BR',1),
  (2119,135,'Dakhlet Nouadhibou','DN',1),
  (2120,135,'Gorgol','GO',1),
  (2121,135,'Guidimaka','GM',1),
  (2122,135,'Hodh Ech Chargui','HC',1),
  (2123,135,'Hodh El Gharbi','HG',1),
  (2124,135,'Inchiri','IN',1),
  (2125,135,'Tagant','TA',1),
  (2126,135,'Tiris Zemmour','TZ',1),
  (2127,135,'Trarza','TR',1),
  (2128,135,'Nouakchott','NO',1),
  (2129,136,'Beau Bassin-Rose Hill','BR',1),
  (2130,136,'Curepipe','CU',1),
  (2131,136,'Port Louis','PU',1),
  (2132,136,'Quatre Bornes','QB',1),
  (2133,136,'Vacoas-Phoenix','VP',1),
  (2134,136,'Agalega Islands','AG',1),
  (2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),
  (2136,136,'Rodrigues','RO',1),
  (2137,136,'Black River','BL',1),
  (2138,136,'Flacq','FL',1),
  (2139,136,'Grand Port','GP',1),
  (2140,136,'Moka','MO',1),
  (2141,136,'Pamplemousses','PA',1),
  (2142,136,'Plaines Wilhems','PW',1),
  (2143,136,'Port Louis','PL',1),
  (2144,136,'Riviere du Rempart','RR',1),
  (2145,136,'Savanne','SA',1),
  (2146,138,'Baja California Norte','BN',1),
  (2147,138,'Baja California Sur','BS',1),
  (2148,138,'Campeche','CA',1),
  (2149,138,'Chiapas','CI',1),
  (2150,138,'Chihuahua','CH',1),
  (2151,138,'Coahuila de Zaragoza','CZ',1),
  (2152,138,'Colima','CL',1),
  (2153,138,'Distrito Federal','DF',1),
  (2154,138,'Durango','DU',1),
  (2155,138,'Guanajuato','GA',1),
  (2156,138,'Guerrero','GE',1),
  (2157,138,'Hidalgo','HI',1),
  (2158,138,'Jalisco','JA',1),
  (2159,138,'Mexico','ME',1),
  (2160,138,'Michoacan de Ocampo','MI',1),
  (2161,138,'Morelos','MO',1),
  (2162,138,'Nayarit','NA',1),
  (2163,138,'Nuevo Leon','NL',1),
  (2164,138,'Oaxaca','OA',1),
  (2165,138,'Puebla','PU',1),
  (2166,138,'Queretaro de Arteaga','QA',1),
  (2167,138,'Quintana Roo','QR',1),
  (2168,138,'San Luis Potosi','SA',1),
  (2169,138,'Sinaloa','SI',1),
  (2170,138,'Sonora','SO',1),
  (2171,138,'Tabasco','TB',1),
  (2172,138,'Tamaulipas','TM',1),
  (2173,138,'Tlaxcala','TL',1),
  (2174,138,'Veracruz-Llave','VE',1),
  (2175,138,'Yucatan','YU',1),
  (2176,138,'Zacatecas','ZA',1),
  (2177,139,'Chuuk','C',1),
  (2178,139,'Kosrae','K',1),
  (2179,139,'Pohnpei','P',1),
  (2180,139,'Yap','Y',1),
  (2181,140,'Gagauzia','GA',1),
  (2182,140,'Chisinau','CU',1),
  (2183,140,'Balti','BA',1),
  (2184,140,'Cahul','CA',1),
  (2185,140,'Edinet','ED',1),
  (2186,140,'Lapusna','LA',1),
  (2187,140,'Orhei','OR',1),
  (2188,140,'Soroca','SO',1),
  (2189,140,'Tighina','TI',1),
  (2190,140,'Ungheni','UN',1),
  (2191,140,'St‚nga Nistrului','SN',1),
  (2192,141,'Fontvieille','FV',1),
  (2193,141,'La Condamine','LC',1),
  (2194,141,'Monaco-Ville','MV',1),
  (2195,141,'Monte-Carlo','MC',1),
  (2196,142,'Ulanbaatar','1',1),
  (2197,142,'Orhon','035',1),
  (2198,142,'Darhan uul','037',1),
  (2199,142,'Hentiy','039',1),
  (2200,142,'Hovsgol','041',1),
  (2201,142,'Hovd','043',1),
  (2202,142,'Uvs','046',1),
  (2203,142,'Tov','047',1),
  (2204,142,'Selenge','049',1),
  (2205,142,'Suhbaatar','051',1),
  (2206,142,'Omnogovi','053',1),
  (2207,142,'Ovorhangay','055',1),
  (2208,142,'Dzavhan','057',1),
  (2209,142,'DundgovL','059',1),
  (2210,142,'Dornod','061',1),
  (2211,142,'Dornogov','063',1),
  (2212,142,'Govi-Sumber','064',1),
  (2213,142,'Govi-Altay','065',1),
  (2214,142,'Bulgan','067',1),
  (2215,142,'Bayanhongor','069',1),
  (2216,142,'Bayan-Olgiy','071',1),
  (2217,142,'Arhangay','073',1),
  (2218,143,'Saint Anthony','A',1),
  (2219,143,'Saint Georges','G',1),
  (2220,143,'Saint Peter','P',1),
  (2221,144,'Agadir','AGD',1),
  (2222,144,'Al Hoceima','HOC',1),
  (2223,144,'Azilal','AZI',1),
  (2224,144,'Beni Mellal','BME',1),
  (2225,144,'Ben Slimane','BSL',1),
  (2226,144,'Boulemane','BLM',1),
  (2227,144,'Casablanca','CBL',1),
  (2228,144,'Chaouen','CHA',1),
  (2229,144,'El Jadida','EJA',1),
  (2230,144,'El Kelaa des Sraghna','EKS',1),
  (2231,144,'Er Rachidia','ERA',1),
  (2232,144,'Essaouira','ESS',1),
  (2233,144,'Fes','FES',1),
  (2234,144,'Figuig','FIG',1),
  (2235,144,'Guelmim','GLM',1),
  (2236,144,'Ifrane','IFR',1),
  (2237,144,'Kenitra','KEN',1),
  (2238,144,'Khemisset','KHM',1),
  (2239,144,'Khenifra','KHN',1),
  (2240,144,'Khouribga','KHO',1),
  (2241,144,'Laayoune','LYN',1),
  (2242,144,'Larache','LAR',1),
  (2243,144,'Marrakech','MRK',1),
  (2244,144,'Meknes','MKN',1),
  (2245,144,'Nador','NAD',1),
  (2246,144,'Ouarzazate','ORZ',1),
  (2247,144,'Oujda','OUJ',1),
  (2248,144,'Rabat-Sale','RSA',1),
  (2249,144,'Safi','SAF',1),
  (2250,144,'Settat','SET',1),
  (2251,144,'Sidi Kacem','SKA',1),
  (2252,144,'Tangier','TGR',1),
  (2253,144,'Tan-Tan','TAN',1),
  (2254,144,'Taounate','TAO',1),
  (2255,144,'Taroudannt','TRD',1),
  (2256,144,'Tata','TAT',1),
  (2257,144,'Taza','TAZ',1),
  (2258,144,'Tetouan','TET',1),
  (2259,144,'Tiznit','TIZ',1),
  (2260,144,'Ad Dakhla','ADK',1),
  (2261,144,'Boujdour','BJD',1),
  (2262,144,'Es Smara','ESM',1),
  (2263,145,'Cabo Delgado','CD',1),
  (2264,145,'Gaza','GZ',1),
  (2265,145,'Inhambane','IN',1),
  (2266,145,'Manica','MN',1),
  (2267,145,'Maputo (city)','MC',1),
  (2268,145,'Maputo','MP',1),
  (2269,145,'Nampula','NA',1),
  (2270,145,'Niassa','NI',1),
  (2271,145,'Sofala','SO',1),
  (2272,145,'Tete','TE',1),
  (2273,145,'Zambezia','ZA',1),
  (2274,146,'Ayeyarwady','AY',1),
  (2275,146,'Bago','BG',1),
  (2276,146,'Magway','MG',1),
  (2277,146,'Mandalay','MD',1),
  (2278,146,'Sagaing','SG',1),
  (2279,146,'Tanintharyi','TN',1),
  (2280,146,'Yangon','YG',1),
  (2281,146,'Chin State','CH',1),
  (2282,146,'Kachin State','KC',1),
  (2283,146,'Kayah State','KH',1),
  (2284,146,'Kayin State','KN',1),
  (2285,146,'Mon State','MN',1),
  (2286,146,'Rakhine State','RK',1),
  (2287,146,'Shan State','SH',1),
  (2288,147,'Caprivi','CA',1),
  (2289,147,'Erongo','ER',1),
  (2290,147,'Hardap','HA',1),
  (2291,147,'Karas','KR',1),
  (2292,147,'Kavango','KV',1),
  (2293,147,'Khomas','KH',1),
  (2294,147,'Kunene','KU',1),
  (2295,147,'Ohangwena','OW',1),
  (2296,147,'Omaheke','OK',1),
  (2297,147,'Omusati','OT',1),
  (2298,147,'Oshana','ON',1),
  (2299,147,'Oshikoto','OO',1),
  (2300,147,'Otjozondjupa','OJ',1),
  (2301,148,'Aiwo','AO',1),
  (2302,148,'Anabar','AA',1),
  (2303,148,'Anetan','AT',1),
  (2304,148,'Anibare','AI',1),
  (2305,148,'Baiti','BA',1),
  (2306,148,'Boe','BO',1),
  (2307,148,'Buada','BU',1),
  (2308,148,'Denigomodu','DE',1),
  (2309,148,'Ewa','EW',1),
  (2310,148,'Ijuw','IJ',1),
  (2311,148,'Meneng','ME',1),
  (2312,148,'Nibok','NI',1),
  (2313,148,'Uaboe','UA',1),
  (2314,148,'Yaren','YA',1),
  (2315,149,'Bagmati','BA',1),
  (2316,149,'Bheri','BH',1),
  (2317,149,'Dhawalagiri','DH',1),
  (2318,149,'Gandaki','GA',1),
  (2319,149,'Janakpur','JA',1),
  (2320,149,'Karnali','KA',1),
  (2321,149,'Kosi','KO',1),
  (2322,149,'Lumbini','LU',1),
  (2323,149,'Mahakali','MA',1),
  (2324,149,'Mechi','ME',1),
  (2325,149,'Narayani','NA',1),
  (2326,149,'Rapti','RA',1),
  (2327,149,'Sagarmatha','SA',1),
  (2328,149,'Seti','SE',1),
  (2329,150,'Drenthe','DR',1),
  (2330,150,'Flevoland','FL',1),
  (2331,150,'Friesland','FR',1),
  (2332,150,'Gelderland','GE',1),
  (2333,150,'Groningen','GR',1),
  (2334,150,'Limburg','LI',1),
  (2335,150,'Noord Brabant','NB',1),
  (2336,150,'Noord Holland','NH',1),
  (2337,150,'Overijssel','OV',1),
  (2338,150,'Utrecht','UT',1),
  (2339,150,'Zeeland','ZE',1),
  (2340,150,'Zuid Holland','ZH',1),
  (2341,152,'Iles Loyaute','L',1),
  (2342,152,'Nord','N',1),
  (2343,152,'Sud','S',1),
  (2344,153,'Auckland','AUK',1),
  (2345,153,'Bay of Plenty','BOP',1),
  (2346,153,'Canterbury','CAN',1),
  (2347,153,'Coromandel','COR',1),
  (2348,153,'Gisborne','GIS',1),
  (2349,153,'Fiordland','FIO',1),
  (2350,153,'Hawke''s Bay','HKB',1),
  (2351,153,'Marlborough','MBH',1),
  (2352,153,'Manawatu-Wanganui','MWT',1),
  (2353,153,'Mt Cook-Mackenzie','MCM',1),
  (2354,153,'Nelson','NSN',1),
  (2355,153,'Northland','NTL',1),
  (2356,153,'Otago','OTA',1),
  (2357,153,'Southland','STL',1),
  (2358,153,'Taranaki','TKI',1),
  (2359,153,'Wellington','WGN',1),
  (2360,153,'Waikato','WKO',1),
  (2361,153,'Wairprarapa','WAI',1),
  (2362,153,'West Coast','WTC',1),
  (2363,154,'Atlantico Norte','AN',1),
  (2364,154,'Atlantico Sur','AS',1),
  (2365,154,'Boaco','BO',1),
  (2366,154,'Carazo','CA',1),
  (2367,154,'Chinandega','CI',1),
  (2368,154,'Chontales','CO',1),
  (2369,154,'Esteli','ES',1),
  (2370,154,'Granada','GR',1),
  (2371,154,'Jinotega','JI',1),
  (2372,154,'Leon','LE',1),
  (2373,154,'Madriz','MD',1),
  (2374,154,'Managua','MN',1),
  (2375,154,'Masaya','MS',1),
  (2376,154,'Matagalpa','MT',1),
  (2377,154,'Nuevo Segovia','NS',1),
  (2378,154,'Rio San Juan','RS',1),
  (2379,154,'Rivas','RI',1),
  (2380,155,'Agadez','AG',1),
  (2381,155,'Diffa','DF',1),
  (2382,155,'Dosso','DS',1),
  (2383,155,'Maradi','MA',1),
  (2384,155,'Niamey','NM',1),
  (2385,155,'Tahoua','TH',1),
  (2386,155,'Tillaberi','TL',1),
  (2387,155,'Zinder','ZD',1),
  (2388,156,'Abia','AB',1),
  (2389,156,'Abuja Federal Capital Territory','CT',1),
  (2390,156,'Adamawa','AD',1),
  (2391,156,'Akwa Ibom','AK',1),
  (2392,156,'Anambra','AN',1),
  (2393,156,'Bauchi','BC',1),
  (2394,156,'Bayelsa','BY',1),
  (2395,156,'Benue','BN',1),
  (2396,156,'Borno','BO',1),
  (2397,156,'Cross River','CR',1),
  (2398,156,'Delta','DE',1),
  (2399,156,'Ebonyi','EB',1),
  (2400,156,'Edo','ED',1),
  (2401,156,'Ekiti','EK',1),
  (2402,156,'Enugu','EN',1),
  (2403,156,'Gombe','GO',1),
  (2404,156,'Imo','IM',1),
  (2405,156,'Jigawa','JI',1),
  (2406,156,'Kaduna','KD',1),
  (2407,156,'Kano','KN',1),
  (2408,156,'Katsina','KT',1),
  (2409,156,'Kebbi','KE',1),
  (2410,156,'Kogi','KO',1),
  (2411,156,'Kwara','KW',1),
  (2412,156,'Lagos','LA',1),
  (2413,156,'Nassarawa','NA',1),
  (2414,156,'Niger','NI',1),
  (2415,156,'Ogun','OG',1),
  (2416,156,'Ondo','ONG',1),
  (2417,156,'Osun','OS',1),
  (2418,156,'Oyo','OY',1),
  (2419,156,'Plateau','PL',1),
  (2420,156,'Rivers','RI',1),
  (2421,156,'Sokoto','SO',1),
  (2422,156,'Taraba','TA',1),
  (2423,156,'Yobe','YO',1),
  (2424,156,'Zamfara','ZA',1),
  (2425,159,'Northern Islands','N',1),
  (2426,159,'Rota','R',1),
  (2427,159,'Saipan','S',1),
  (2428,159,'Tinian','T',1),
  (2429,160,'Akershus','AK',1),
  (2430,160,'Aust-Agder','AA',1),
  (2431,160,'Buskerud','BU',1),
  (2432,160,'Finnmark','FM',1),
  (2433,160,'Hedmark','HM',1),
  (2434,160,'Hordaland','HL',1),
  (2435,160,'More og Romdal','MR',1),
  (2436,160,'Nord-Trondelag','NT',1),
  (2437,160,'Nordland','NL',1),
  (2438,160,'Ostfold','OF',1),
  (2439,160,'Oppland','OP',1),
  (2440,160,'Oslo','OL',1),
  (2441,160,'Rogaland','RL',1),
  (2442,160,'Sor-Trondelag','ST',1),
  (2443,160,'Sogn og Fjordane','SJ',1),
  (2444,160,'Svalbard','SV',1),
  (2445,160,'Telemark','TM',1),
  (2446,160,'Troms','TR',1),
  (2447,160,'Vest-Agder','VA',1),
  (2448,160,'Vestfold','VF',1),
  (2449,161,'Ad Dakhiliyah','DA',1),
  (2450,161,'Al Batinah','BA',1),
  (2451,161,'Al Wusta','WU',1),
  (2452,161,'Ash Sharqiyah','SH',1),
  (2453,161,'Az Zahirah','ZA',1),
  (2454,161,'Masqat','MA',1),
  (2455,161,'Musandam','MU',1),
  (2456,161,'Zufar','ZU',1),
  (2457,162,'Balochistan','B',1),
  (2458,162,'Federally Administered Tribal Areas','T',1),
  (2459,162,'Islamabad Capital Territory','I',1),
  (2460,162,'North-West Frontier','N',1),
  (2461,162,'Punjab','P',1),
  (2462,162,'Sindh','S',1),
  (2463,163,'Aimeliik','AM',1),
  (2464,163,'Airai','AR',1),
  (2465,163,'Angaur','AN',1),
  (2466,163,'Hatohobei','HA',1),
  (2467,163,'Kayangel','KA',1),
  (2468,163,'Koror','KO',1),
  (2469,163,'Melekeok','ME',1),
  (2470,163,'Ngaraard','NA',1),
  (2471,163,'Ngarchelong','NG',1),
  (2472,163,'Ngardmau','ND',1),
  (2473,163,'Ngatpang','NT',1),
  (2474,163,'Ngchesar','NC',1),
  (2475,163,'Ngeremlengui','NR',1),
  (2476,163,'Ngiwal','NW',1),
  (2477,163,'Peleliu','PE',1),
  (2478,163,'Sonsorol','SO',1),
  (2479,164,'Bocas del Toro','BT',1),
  (2480,164,'Chiriqui','CH',1),
  (2481,164,'Cocle','CC',1),
  (2482,164,'Colon','CL',1),
  (2483,164,'Darien','DA',1),
  (2484,164,'Herrera','HE',1),
  (2485,164,'Los Santos','LS',1),
  (2486,164,'Panama','PA',1),
  (2487,164,'San Blas','SB',1),
  (2488,164,'Veraguas','VG',1),
  (2489,165,'Bougainville','BV',1),
  (2490,165,'Central','CE',1),
  (2491,165,'Chimbu','CH',1),
  (2492,165,'Eastern Highlands','EH',1),
  (2493,165,'East New Britain','EB',1),
  (2494,165,'East Sepik','ES',1),
  (2495,165,'Enga','EN',1),
  (2496,165,'Gulf','GU',1),
  (2497,165,'Madang','MD',1),
  (2498,165,'Manus','MN',1),
  (2499,165,'Milne Bay','MB',1),
  (2500,165,'Morobe','MR',1),
  (2501,165,'National Capital','NC',1),
  (2502,165,'New Ireland','NI',1),
  (2503,165,'Northern','NO',1),
  (2504,165,'Sandaun','SA',1),
  (2505,165,'Southern Highlands','SH',1),
  (2506,165,'Western','WE',1),
  (2507,165,'Western Highlands','WH',1),
  (2508,165,'West New Britain','WB',1),
  (2509,166,'Alto Paraguay','AG',1),
  (2510,166,'Alto Parana','AN',1),
  (2511,166,'Amambay','AM',1),
  (2512,166,'Asuncion','AS',1),
  (2513,166,'Boqueron','BO',1),
  (2514,166,'Caaguazu','CG',1),
  (2515,166,'Caazapa','CZ',1),
  (2516,166,'Canindeyu','CN',1),
  (2517,166,'Central','CE',1),
  (2518,166,'Concepcion','CC',1),
  (2519,166,'Cordillera','CD',1),
  (2520,166,'Guaira','GU',1);
COMMIT;

#
# Data for the `zone` table  (LIMIT 2501,500)
#

INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES 
  (2521,166,'Itapua','IT',1),
  (2522,166,'Misiones','MI',1),
  (2523,166,'Neembucu','NE',1),
  (2524,166,'Paraguari','PA',1),
  (2525,166,'Presidente Hayes','PH',1),
  (2526,166,'San Pedro','SP',1),
  (2527,167,'Amazonas','AM',1),
  (2528,167,'Ancash','AN',1),
  (2529,167,'Apurimac','AP',1),
  (2530,167,'Arequipa','AR',1),
  (2531,167,'Ayacucho','AY',1),
  (2532,167,'Cajamarca','CJ',1),
  (2533,167,'Callao','CL',1),
  (2534,167,'Cusco','CU',1),
  (2535,167,'Huancavelica','HV',1),
  (2536,167,'Huanuco','HO',1),
  (2537,167,'Ica','IC',1),
  (2538,167,'Junin','JU',1),
  (2539,167,'La Libertad','LD',1),
  (2540,167,'Lambayeque','LY',1),
  (2541,167,'Lima','LI',1),
  (2542,167,'Loreto','LO',1),
  (2543,167,'Madre de Dios','MD',1),
  (2544,167,'Moquegua','MO',1),
  (2545,167,'Pasco','PA',1),
  (2546,167,'Piura','PI',1),
  (2547,167,'Puno','PU',1),
  (2548,167,'San Martin','SM',1),
  (2549,167,'Tacna','TA',1),
  (2550,167,'Tumbes','TU',1),
  (2551,167,'Ucayali','UC',1),
  (2552,168,'Abra','ABR',1),
  (2553,168,'Agusan del Norte','ANO',1),
  (2554,168,'Agusan del Sur','ASU',1),
  (2555,168,'Aklan','AKL',1),
  (2556,168,'Albay','ALB',1),
  (2557,168,'Antique','ANT',1),
  (2558,168,'Apayao','APY',1),
  (2559,168,'Aurora','AUR',1),
  (2560,168,'Basilan','BAS',1),
  (2561,168,'Bataan','BTA',1),
  (2562,168,'Batanes','BTE',1),
  (2563,168,'Batangas','BTG',1),
  (2564,168,'Biliran','BLR',1),
  (2565,168,'Benguet','BEN',1),
  (2566,168,'Bohol','BOL',1),
  (2567,168,'Bukidnon','BUK',1),
  (2568,168,'Bulacan','BUL',1),
  (2569,168,'Cagayan','CAG',1),
  (2570,168,'Camarines Norte','CNO',1),
  (2571,168,'Camarines Sur','CSU',1),
  (2572,168,'Camiguin','CAM',1),
  (2573,168,'Capiz','CAP',1),
  (2574,168,'Catanduanes','CAT',1),
  (2575,168,'Cavite','CAV',1),
  (2576,168,'Cebu','CEB',1),
  (2577,168,'Compostela','CMP',1),
  (2578,168,'Davao del Norte','DNO',1),
  (2579,168,'Davao del Sur','DSU',1),
  (2580,168,'Davao Oriental','DOR',1),
  (2581,168,'Eastern Samar','ESA',1),
  (2582,168,'Guimaras','GUI',1),
  (2583,168,'Ifugao','IFU',1),
  (2584,168,'Ilocos Norte','INO',1),
  (2585,168,'Ilocos Sur','ISU',1),
  (2586,168,'Iloilo','ILO',1),
  (2587,168,'Isabela','ISA',1),
  (2588,168,'Kalinga','KAL',1),
  (2589,168,'Laguna','LAG',1),
  (2590,168,'Lanao del Norte','LNO',1),
  (2591,168,'Lanao del Sur','LSU',1),
  (2592,168,'La Union','UNI',1),
  (2593,168,'Leyte','LEY',1),
  (2594,168,'Maguindanao','MAG',1),
  (2595,168,'Marinduque','MRN',1),
  (2596,168,'Masbate','MSB',1),
  (2597,168,'Mindoro Occidental','MIC',1),
  (2598,168,'Mindoro Oriental','MIR',1),
  (2599,168,'Misamis Occidental','MSC',1),
  (2600,168,'Misamis Oriental','MOR',1),
  (2601,168,'Mountain','MOP',1),
  (2602,168,'Negros Occidental','NOC',1),
  (2603,168,'Negros Oriental','NOR',1),
  (2604,168,'North Cotabato','NCT',1),
  (2605,168,'Northern Samar','NSM',1),
  (2606,168,'Nueva Ecija','NEC',1),
  (2607,168,'Nueva Vizcaya','NVZ',1),
  (2608,168,'Palawan','PLW',1),
  (2609,168,'Pampanga','PMP',1),
  (2610,168,'Pangasinan','PNG',1),
  (2611,168,'Quezon','QZN',1),
  (2612,168,'Quirino','QRN',1),
  (2613,168,'Rizal','RIZ',1),
  (2614,168,'Romblon','ROM',1),
  (2615,168,'Samar','SMR',1),
  (2616,168,'Sarangani','SRG',1),
  (2617,168,'Siquijor','SQJ',1),
  (2618,168,'Sorsogon','SRS',1),
  (2619,168,'South Cotabato','SCO',1),
  (2620,168,'Southern Leyte','SLE',1),
  (2621,168,'Sultan Kudarat','SKU',1),
  (2622,168,'Sulu','SLU',1),
  (2623,168,'Surigao del Norte','SNO',1),
  (2624,168,'Surigao del Sur','SSU',1),
  (2625,168,'Tarlac','TAR',1),
  (2626,168,'Tawi-Tawi','TAW',1),
  (2627,168,'Zambales','ZBL',1),
  (2628,168,'Zamboanga del Norte','ZNO',1),
  (2629,168,'Zamboanga del Sur','ZSU',1),
  (2630,168,'Zamboanga Sibugay','ZSI',1),
  (2631,170,'Dolnoslaskie','DO',1),
  (2632,170,'Kujawsko-Pomorskie','KP',1),
  (2633,170,'Lodzkie','LO',1),
  (2634,170,'Lubelskie','LL',1),
  (2635,170,'Lubuskie','LU',1),
  (2636,170,'Malopolskie','ML',1),
  (2637,170,'Mazowieckie','MZ',1),
  (2638,170,'Opolskie','OP',1),
  (2639,170,'Podkarpackie','PP',1),
  (2640,170,'Podlaskie','PL',1),
  (2641,170,'Pomorskie','PM',1),
  (2642,170,'Slaskie','SL',1),
  (2643,170,'Swietokrzyskie','SW',1),
  (2644,170,'Warminsko-Mazurskie','WM',1),
  (2645,170,'Wielkopolskie','WP',1),
  (2646,170,'Zachodniopomorskie','ZA',1),
  (2647,198,'Saint Pierre','P',1),
  (2648,198,'Miquelon','M',1),
  (2649,171,'A&ccedil;ores','AC',1),
  (2650,171,'Aveiro','AV',1),
  (2651,171,'Beja','BE',1),
  (2652,171,'Braga','BR',1),
  (2653,171,'Bragan&ccedil;a','BA',1),
  (2654,171,'Castelo Branco','CB',1),
  (2655,171,'Coimbra','CO',1),
  (2656,171,'&Eacute;vora','EV',1),
  (2657,171,'Faro','FA',1),
  (2658,171,'Guarda','GU',1),
  (2659,171,'Leiria','LE',1),
  (2660,171,'Lisboa','LI',1),
  (2661,171,'Madeira','ME',1),
  (2662,171,'Portalegre','PO',1),
  (2663,171,'Porto','PR',1),
  (2664,171,'Santar&eacute;m','SA',1),
  (2665,171,'Set&uacute;bal','SE',1),
  (2666,171,'Viana do Castelo','VC',1),
  (2667,171,'Vila Real','VR',1),
  (2668,171,'Viseu','VI',1),
  (2669,173,'Ad Dawhah','DW',1),
  (2670,173,'Al Ghuwayriyah','GW',1),
  (2671,173,'Al Jumayliyah','JM',1),
  (2672,173,'Al Khawr','KR',1),
  (2673,173,'Al Wakrah','WK',1),
  (2674,173,'Ar Rayyan','RN',1),
  (2675,173,'Jarayan al Batinah','JB',1),
  (2676,173,'Madinat ash Shamal','MS',1),
  (2677,173,'Umm Sa''id','UD',1),
  (2678,173,'Umm Salal','UL',1),
  (2679,175,'Alba','AB',1),
  (2680,175,'Arad','AR',1),
  (2681,175,'Arges','AG',1),
  (2682,175,'Bacau','BC',1),
  (2683,175,'Bihor','BH',1),
  (2684,175,'Bistrita-Nasaud','BN',1),
  (2685,175,'Botosani','BT',1),
  (2686,175,'Brasov','BV',1),
  (2687,175,'Braila','BR',1),
  (2688,175,'Bucuresti','B',1),
  (2689,175,'Buzau','BZ',1),
  (2690,175,'Caras-Severin','CS',1),
  (2691,175,'Calarasi','CL',1),
  (2692,175,'Cluj','CJ',1),
  (2693,175,'Constanta','CT',1),
  (2694,175,'Covasna','CV',1),
  (2695,175,'Dimbovita','DB',1),
  (2696,175,'Dolj','DJ',1),
  (2697,175,'Galati','GL',1),
  (2698,175,'Giurgiu','GR',1),
  (2699,175,'Gorj','GJ',1),
  (2700,175,'Harghita','HR',1),
  (2701,175,'Hunedoara','HD',1),
  (2702,175,'Ialomita','IL',1),
  (2703,175,'Iasi','IS',1),
  (2704,175,'Ilfov','IF',1),
  (2705,175,'Maramures','MM',1),
  (2706,175,'Mehedinti','MH',1),
  (2707,175,'Mures','MS',1),
  (2708,175,'Neamt','NT',1),
  (2709,175,'Olt','OT',1),
  (2710,175,'Prahova','PH',1),
  (2711,175,'Satu-Mare','SM',1),
  (2712,175,'Salaj','SJ',1),
  (2713,175,'Sibiu','SB',1),
  (2714,175,'Suceava','SV',1),
  (2715,175,'Teleorman','TR',1),
  (2716,175,'Timis','TM',1),
  (2717,175,'Tulcea','TL',1),
  (2718,175,'Vaslui','VS',1),
  (2719,175,'Valcea','VL',1),
  (2720,175,'Vrancea','VN',1),
  (2721,176,'Республика Хакасия','KK',1),
  (2722,176,'Московская область','MOS',1),
  (2723,176,'Чукотский АО','CHU',1),
  (2724,176,'Архангельская область','ARK',1),
  (2725,176,'Астраханская область','AST',1),
  (2726,176,'Алтайский край','ALT',1),
  (2727,176,'Белгородская область','BEL',1),
  (2728,176,'Еврейская АО','YEV',1),
  (2729,176,'Амурская область','AMU',1),
  (2730,176,'Брянская область','BRY',1),
  (2731,176,'Чувашская Республика','CU',1),
  (2732,176,'Челябинская область','CHE',1),
  (2733,176,'Карачаево-Черкеcсия','KC',1),
  (2734,176,'Забайкальский край','ZAB',1),
  (2735,176,'Ленинградская область','LEN',1),
  (2736,176,'Республика Калмыкия','KL',1),
  (2737,176,'Сахалинская область','SAK',1),
  (2738,176,'Республика Алтай','AL',1),
  (2739,176,'Чеченская Республика','CE',1),
  (2740,176,'Иркутская область','IRK',1),
  (2741,176,'Ивановская область','IVA',1),
  (2742,176,'Удмуртская Республика','UD',1),
  (2743,176,'Калининградская область','KGD',1),
  (2744,176,'Калужская область','KLU',1),
  (2746,176,'Республика Татарстан','TA',1),
  (2747,176,'Кемеровская область','KEM',1),
  (2748,176,'Хабаровский край','KHA',1),
  (2749,176,'Ханты-Мансийский АО - Югра','KHM',1),
  (2750,176,'Костромская область','KOS',1),
  (2751,176,'Краснодарский край','KDA',1),
  (2752,176,'Красноярский край','KYA',1),
  (2754,176,'Курганская область','KGN',1),
  (2755,176,'Курская область','KRS',1),
  (2756,176,'Республика Тыва','TY',1),
  (2757,176,'Липецкая область','LIP',1),
  (2758,176,'Магаданская область','MAG',1),
  (2759,176,'Республика Дагестан','DA',1),
  (2760,176,'Республика Адыгея','AD',1),
  (2761,176,'Москва','MOW',1),
  (2762,176,'Мурманская область','MUR',1),
  (2763,176,'Республика Кабардино-Балкария','KB',1),
  (2764,176,'Ненецкий АО','NEN',1),
  (2765,176,'Республика Ингушетия','IN',1),
  (2766,176,'Нижегородская область','NIZ',1),
  (2767,176,'Новгородская область','NGR',1),
  (2768,176,'Новосибирская область','NVS',1),
  (2769,176,'Омская область','OMS',1),
  (2770,176,'Орловская область','ORL',1),
  (2771,176,'Оренбургская область','ORE',1),
  (2773,176,'Пензенская область','PNZ',1),
  (2774,176,'Пермский край','PER',1),
  (2775,176,'Камчатский край','KAM',1),
  (2776,176,'Республика Карелия','KR',1),
  (2777,176,'Псковская область','PSK',1),
  (2778,176,'Ростовская область','ROS',1),
  (2779,176,'Рязанская область','RYA',1),
  (2780,176,'Ямало-Ненецкий АО','YAN',1),
  (2781,176,'Самарская область','SAM',1),
  (2782,176,'Республика Мордовия','MO',1),
  (2783,176,'Саратовская область','SAR',1),
  (2784,176,'Смоленская область','SMO',1),
  (2785,176,'Санкт-Петербург','SPE',1),
  (2786,176,'Ставропольский край','STA',1),
  (2787,176,'Республика Коми','KO',1),
  (2788,176,'Тамбовская область','TAM',1),
  (2789,176,'Томская область','TOM',1),
  (2790,176,'Тульская область','TUL',1),
  (2792,176,'Тверская область','TVE',1),
  (2793,176,'Тюменская область','TYU',1),
  (2794,176,'Республика Башкортостан','BA',1),
  (2795,176,'Ульяновская область','ULY',1),
  (2796,176,'Республика Бурятия','BU',1),
  (2798,176,'Республика Северная Осетия','SE',1),
  (2799,176,'Владимирская область','VLA',1),
  (2800,176,'Приморский край','PRI',1),
  (2801,176,'Волгоградская область','VGG',1),
  (2802,176,'Вологодская область','VLG',1),
  (2803,176,'Воронежская область','VOR',1),
  (2804,176,'Кировская область','KIR',1),
  (2805,176,'Республика Саха','SA',1),
  (2806,176,'Ярославская область','YAR',1),
  (2807,176,'Свердловская область','SVE',1),
  (2808,176,'Республика Марий Эл','ME',1),
  (2809,177,'Butare','BU',1),
  (2810,177,'Byumba','BY',1),
  (2811,177,'Cyangugu','CY',1),
  (2812,177,'Gikongoro','GK',1),
  (2813,177,'Gisenyi','GS',1),
  (2814,177,'Gitarama','GT',1),
  (2815,177,'Kibungo','KG',1),
  (2816,177,'Kibuye','KY',1),
  (2817,177,'Kigali Rurale','KR',1),
  (2818,177,'Kigali-ville','KV',1),
  (2819,177,'Ruhengeri','RU',1),
  (2820,177,'Umutara','UM',1),
  (2821,178,'Christ Church Nichola Town','CCN',1),
  (2822,178,'Saint Anne Sandy Point','SAS',1),
  (2823,178,'Saint George Basseterre','SGB',1),
  (2824,178,'Saint George Gingerland','SGG',1),
  (2825,178,'Saint James Windward','SJW',1),
  (2826,178,'Saint John Capesterre','SJC',1),
  (2827,178,'Saint John Figtree','SJF',1),
  (2828,178,'Saint Mary Cayon','SMC',1),
  (2829,178,'Saint Paul Capesterre','CAP',1),
  (2830,178,'Saint Paul Charlestown','CHA',1),
  (2831,178,'Saint Peter Basseterre','SPB',1),
  (2832,178,'Saint Thomas Lowland','STL',1),
  (2833,178,'Saint Thomas Middle Island','STM',1),
  (2834,178,'Trinity Palmetto Point','TPP',1),
  (2835,179,'Anse-la-Raye','AR',1),
  (2836,179,'Castries','CA',1),
  (2837,179,'Choiseul','CH',1),
  (2838,179,'Dauphin','DA',1),
  (2839,179,'Dennery','DE',1),
  (2840,179,'Gros-Islet','GI',1),
  (2841,179,'Laborie','LA',1),
  (2842,179,'Micoud','MI',1),
  (2843,179,'Praslin','PR',1),
  (2844,179,'Soufriere','SO',1),
  (2845,179,'Vieux-Fort','VF',1),
  (2846,180,'Charlotte','C',1),
  (2847,180,'Grenadines','R',1),
  (2848,180,'Saint Andrew','A',1),
  (2849,180,'Saint David','D',1),
  (2850,180,'Saint George','G',1),
  (2851,180,'Saint Patrick','P',1),
  (2852,181,'A''ana','AN',1),
  (2853,181,'Aiga-i-le-Tai','AI',1),
  (2854,181,'Atua','AT',1),
  (2855,181,'Fa''asaleleaga','FA',1),
  (2856,181,'Gaga''emauga','GE',1),
  (2857,181,'Gagaifomauga','GF',1),
  (2858,181,'Palauli','PA',1),
  (2859,181,'Satupa''itea','SA',1),
  (2860,181,'Tuamasaga','TU',1),
  (2861,181,'Va''a-o-Fonoti','VF',1),
  (2862,181,'Vaisigano','VS',1),
  (2863,182,'Acquaviva','AC',1),
  (2864,182,'Borgo Maggiore','BM',1),
  (2865,182,'Chiesanuova','CH',1),
  (2866,182,'Domagnano','DO',1),
  (2867,182,'Faetano','FA',1),
  (2868,182,'Fiorentino','FI',1),
  (2869,182,'Montegiardino','MO',1),
  (2870,182,'Citta di San Marino','SM',1),
  (2871,182,'Serravalle','SE',1),
  (2872,183,'Sao Tome','S',1),
  (2873,183,'Principe','P',1),
  (2874,184,'Al Bahah','BH',1),
  (2875,184,'Al Hudud ash Shamaliyah','HS',1),
  (2876,184,'Al Jawf','JF',1),
  (2877,184,'Al Madinah','MD',1),
  (2878,184,'Al Qasim','QS',1),
  (2879,184,'Ar Riyad','RD',1),
  (2880,184,'Ash Sharqiyah (Eastern)','AQ',1),
  (2881,184,'''Asir','AS',1),
  (2882,184,'Ha''il','HL',1),
  (2883,184,'Jizan','JZ',1),
  (2884,184,'Makkah','ML',1),
  (2885,184,'Najran','NR',1),
  (2886,184,'Tabuk','TB',1),
  (2887,185,'Dakar','DA',1),
  (2888,185,'Diourbel','DI',1),
  (2889,185,'Fatick','FA',1),
  (2890,185,'Kaolack','KA',1),
  (2891,185,'Kolda','KO',1),
  (2892,185,'Louga','LO',1),
  (2893,185,'Matam','MA',1),
  (2894,185,'Saint-Louis','SL',1),
  (2895,185,'Tambacounda','TA',1),
  (2896,185,'Thies','TH',1),
  (2897,185,'Ziguinchor','ZI',1),
  (2898,186,'Anse aux Pins','AP',1),
  (2899,186,'Anse Boileau','AB',1),
  (2900,186,'Anse Etoile','AE',1),
  (2901,186,'Anse Louis','AL',1),
  (2902,186,'Anse Royale','AR',1),
  (2903,186,'Baie Lazare','BL',1),
  (2904,186,'Baie Sainte Anne','BS',1),
  (2905,186,'Beau Vallon','BV',1),
  (2906,186,'Bel Air','BA',1),
  (2907,186,'Bel Ombre','BO',1),
  (2908,186,'Cascade','CA',1),
  (2909,186,'Glacis','GL',1),
  (2910,186,'Grand'' Anse (on Mahe)','GM',1),
  (2911,186,'Grand'' Anse (on Praslin)','GP',1),
  (2912,186,'La Digue','DG',1),
  (2913,186,'La Riviere Anglaise','RA',1),
  (2914,186,'Mont Buxton','MB',1),
  (2915,186,'Mont Fleuri','MF',1),
  (2916,186,'Plaisance','PL',1),
  (2917,186,'Pointe La Rue','PR',1),
  (2918,186,'Port Glaud','PG',1),
  (2919,186,'Saint Louis','SL',1),
  (2920,186,'Takamaka','TA',1),
  (2921,187,'Eastern','E',1),
  (2922,187,'Northern','N',1),
  (2923,187,'Southern','S',1),
  (2924,187,'Western','W',1),
  (2925,189,'Banskobystrický','BA',1),
  (2926,189,'Bratislavský','BR',1),
  (2927,189,'Košický','KO',1),
  (2928,189,'Nitriansky','NI',1),
  (2929,189,'Prešovský','PR',1),
  (2930,189,'Trenčiansky','TC',1),
  (2931,189,'Trnavský','TV',1),
  (2932,189,'Žilinský','ZI',1),
  (2933,191,'Central','CE',1),
  (2934,191,'Choiseul','CH',1),
  (2935,191,'Guadalcanal','GC',1),
  (2936,191,'Honiara','HO',1),
  (2937,191,'Isabel','IS',1),
  (2938,191,'Makira','MK',1),
  (2939,191,'Malaita','ML',1),
  (2940,191,'Rennell and Bellona','RB',1),
  (2941,191,'Temotu','TM',1),
  (2942,191,'Western','WE',1),
  (2943,192,'Awdal','AW',1),
  (2944,192,'Bakool','BK',1),
  (2945,192,'Banaadir','BN',1),
  (2946,192,'Bari','BR',1),
  (2947,192,'Bay','BY',1),
  (2948,192,'Galguduud','GA',1),
  (2949,192,'Gedo','GE',1),
  (2950,192,'Hiiraan','HI',1),
  (2951,192,'Jubbada Dhexe','JD',1),
  (2952,192,'Jubbada Hoose','JH',1),
  (2953,192,'Mudug','MU',1),
  (2954,192,'Nugaal','NU',1),
  (2955,192,'Sanaag','SA',1),
  (2956,192,'Shabeellaha Dhexe','SD',1),
  (2957,192,'Shabeellaha Hoose','SH',1),
  (2958,192,'Sool','SL',1),
  (2959,192,'Togdheer','TO',1),
  (2960,192,'Woqooyi Galbeed','WG',1),
  (2961,193,'Eastern Cape','EC',1),
  (2962,193,'Free State','FS',1),
  (2963,193,'Gauteng','GT',1),
  (2964,193,'KwaZulu-Natal','KN',1),
  (2965,193,'Limpopo','LP',1),
  (2966,193,'Mpumalanga','MP',1),
  (2967,193,'North West','NW',1),
  (2968,193,'Northern Cape','NC',1),
  (2969,193,'Western Cape','WC',1),
  (2970,195,'La Coru&ntilde;a','CA',1),
  (2971,195,'&Aacute;lava','AL',1),
  (2972,195,'Albacete','AB',1),
  (2973,195,'Alicante','AC',1),
  (2974,195,'Almeria','AM',1),
  (2975,195,'Asturias','AS',1),
  (2976,195,'&Aacute;vila','AV',1),
  (2977,195,'Badajoz','BJ',1),
  (2978,195,'Baleares','IB',1),
  (2979,195,'Barcelona','BA',1),
  (2980,195,'Burgos','BU',1),
  (2981,195,'C&aacute;ceres','CC',1),
  (2982,195,'C&aacute;diz','CZ',1),
  (2983,195,'Cantabria','CT',1),
  (2984,195,'Castell&oacute;n','CL',1),
  (2985,195,'Ceuta','CE',1),
  (2986,195,'Ciudad Real','CR',1),
  (2987,195,'C&oacute;rdoba','CD',1),
  (2988,195,'Cuenca','CU',1),
  (2989,195,'Girona','GI',1),
  (2990,195,'Granada','GD',1),
  (2991,195,'Guadalajara','GJ',1),
  (2992,195,'Guip&uacute;zcoa','GP',1),
  (2993,195,'Huelva','HL',1),
  (2994,195,'Huesca','HS',1),
  (2995,195,'Ja&eacute;n','JN',1),
  (2996,195,'La Rioja','RJ',1),
  (2997,195,'Las Palmas','PM',1),
  (2998,195,'Leon','LE',1),
  (2999,195,'Lleida','LL',1),
  (3000,195,'Lugo','LG',1),
  (3001,195,'Madrid','MD',1),
  (3002,195,'Malaga','MA',1),
  (3003,195,'Melilla','ML',1),
  (3004,195,'Murcia','MU',1),
  (3005,195,'Navarra','NV',1),
  (3006,195,'Ourense','OU',1),
  (3007,195,'Palencia','PL',1),
  (3008,195,'Pontevedra','PO',1),
  (3009,195,'Salamanca','SL',1),
  (3010,195,'Santa Cruz de Tenerife','SC',1),
  (3011,195,'Segovia','SG',1),
  (3012,195,'Sevilla','SV',1),
  (3013,195,'Soria','SO',1),
  (3014,195,'Tarragona','TA',1),
  (3015,195,'Teruel','TE',1),
  (3016,195,'Toledo','TO',1),
  (3017,195,'Valencia','VC',1),
  (3018,195,'Valladolid','VD',1),
  (3019,195,'Vizcaya','VZ',1),
  (3020,195,'Zamora','ZM',1),
  (3021,195,'Zaragoza','ZR',1),
  (3022,196,'Central','CE',1),
  (3023,196,'Eastern','EA',1),
  (3024,196,'North Central','NC',1),
  (3025,196,'Northern','NO',1);
COMMIT;

#
# Data for the `zone` table  (LIMIT 3001,500)
#

INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES 
  (3026,196,'North Western','NW',1),
  (3027,196,'Sabaragamuwa','SA',1),
  (3028,196,'Southern','SO',1),
  (3029,196,'Uva','UV',1),
  (3030,196,'Western','WE',1),
  (3031,197,'Ascension','A',1),
  (3032,197,'Saint Helena','S',1),
  (3033,197,'Tristan da Cunha','T',1),
  (3034,199,'A''ali an Nil','ANL',1),
  (3035,199,'Al Bahr al Ahmar','BAM',1),
  (3036,199,'Al Buhayrat','BRT',1),
  (3037,199,'Al Jazirah','JZR',1),
  (3038,199,'Al Khartum','KRT',1),
  (3039,199,'Al Qadarif','QDR',1),
  (3040,199,'Al Wahdah','WDH',1),
  (3041,199,'An Nil al Abyad','ANB',1),
  (3042,199,'An Nil al Azraq','ANZ',1),
  (3043,199,'Ash Shamaliyah','ASH',1),
  (3044,199,'Bahr al Jabal','BJA',1),
  (3045,199,'Gharb al Istiwa''iyah','GIS',1),
  (3046,199,'Gharb Bahr al Ghazal','GBG',1),
  (3047,199,'Gharb Darfur','GDA',1),
  (3048,199,'Gharb Kurdufan','GKU',1),
  (3049,199,'Janub Darfur','JDA',1),
  (3050,199,'Janub Kurdufan','JKU',1),
  (3051,199,'Junqali','JQL',1),
  (3052,199,'Kassala','KSL',1),
  (3053,199,'Nahr an Nil','NNL',1),
  (3054,199,'Shamal Bahr al Ghazal','SBG',1),
  (3055,199,'Shamal Darfur','SDA',1),
  (3056,199,'Shamal Kurdufan','SKU',1),
  (3057,199,'Sharq al Istiwa''iyah','SIS',1),
  (3058,199,'Sinnar','SNR',1),
  (3059,199,'Warab','WRB',1),
  (3060,200,'Brokopondo','BR',1),
  (3061,200,'Commewijne','CM',1),
  (3062,200,'Coronie','CR',1),
  (3063,200,'Marowijne','MA',1),
  (3064,200,'Nickerie','NI',1),
  (3065,200,'Para','PA',1),
  (3066,200,'Paramaribo','PM',1),
  (3067,200,'Saramacca','SA',1),
  (3068,200,'Sipaliwini','SI',1),
  (3069,200,'Wanica','WA',1),
  (3070,202,'Hhohho','H',1),
  (3071,202,'Lubombo','L',1),
  (3072,202,'Manzini','M',1),
  (3073,202,'Shishelweni','S',1),
  (3074,203,'Blekinge','K',1),
  (3075,203,'Dalarna','W',1),
  (3076,203,'G&auml;vleborg','X',1),
  (3077,203,'Gotland','I',1),
  (3078,203,'Halland','N',1),
  (3079,203,'J&auml;mtland','Z',1),
  (3080,203,'J&ouml;nk&ouml;ping','F',1),
  (3081,203,'Kalmar','H',1),
  (3082,203,'Kronoberg','G',1),
  (3083,203,'Norrbotten','BD',1),
  (3084,203,'&Ouml;rebro','T',1),
  (3085,203,'&Ouml;sterg&ouml;tland','E',1),
  (3086,203,'Sk&aring;ne','M',1),
  (3087,203,'S&ouml;dermanland','D',1),
  (3088,203,'Stockholm','AB',1),
  (3089,203,'Uppsala','C',1),
  (3090,203,'V&auml;rmland','S',1),
  (3091,203,'V&auml;sterbotten','AC',1),
  (3092,203,'V&auml;sternorrland','Y',1),
  (3093,203,'V&auml;stmanland','U',1),
  (3094,203,'V&auml;stra G&ouml;taland','O',1),
  (3095,204,'Aargau','AG',1),
  (3096,204,'Appenzell Ausserrhoden','AR',1),
  (3097,204,'Appenzell Innerrhoden','AI',1),
  (3098,204,'Basel-Stadt','BS',1),
  (3099,204,'Basel-Landschaft','BL',1),
  (3100,204,'Bern','BE',1),
  (3101,204,'Fribourg','FR',1),
  (3102,204,'Gen&egrave;ve','GE',1),
  (3103,204,'Glarus','GL',1),
  (3104,204,'Graub&uuml;nden','GR',1),
  (3105,204,'Jura','JU',1),
  (3106,204,'Luzern','LU',1),
  (3107,204,'Neuch&acirc;tel','NE',1),
  (3108,204,'Nidwald','NW',1),
  (3109,204,'Obwald','OW',1),
  (3110,204,'St. Gallen','SG',1),
  (3111,204,'Schaffhausen','SH',1),
  (3112,204,'Schwyz','SZ',1),
  (3113,204,'Solothurn','SO',1),
  (3114,204,'Thurgau','TG',1),
  (3115,204,'Ticino','TI',1),
  (3116,204,'Uri','UR',1),
  (3117,204,'Valais','VS',1),
  (3118,204,'Vaud','VD',1),
  (3119,204,'Zug','ZG',1),
  (3120,204,'Z&uuml;rich','ZH',1),
  (3121,205,'Al Hasakah','HA',1),
  (3122,205,'Al Ladhiqiyah','LA',1),
  (3123,205,'Al Qunaytirah','QU',1),
  (3124,205,'Ar Raqqah','RQ',1),
  (3125,205,'As Suwayda','SU',1),
  (3126,205,'Dara','DA',1),
  (3127,205,'Dayr az Zawr','DZ',1),
  (3128,205,'Dimashq','DI',1),
  (3129,205,'Halab','HL',1),
  (3130,205,'Hamah','HM',1),
  (3131,205,'Hims','HI',1),
  (3132,205,'Idlib','ID',1),
  (3133,205,'Rif Dimashq','RD',1),
  (3134,205,'Tartus','TA',1),
  (3135,206,'Chang-hua','CH',1),
  (3136,206,'Chia-i','CI',1),
  (3137,206,'Hsin-chu','HS',1),
  (3138,206,'Hua-lien','HL',1),
  (3139,206,'I-lan','IL',1),
  (3140,206,'Kao-hsiung county','KH',1),
  (3141,206,'Kin-men','KM',1),
  (3142,206,'Lien-chiang','LC',1),
  (3143,206,'Miao-li','ML',1),
  (3144,206,'Nan-t''ou','NT',1),
  (3145,206,'P''eng-hu','PH',1),
  (3146,206,'P''ing-tung','PT',1),
  (3147,206,'T''ai-chung','TG',1),
  (3148,206,'T''ai-nan','TA',1),
  (3149,206,'T''ai-pei county','TP',1),
  (3150,206,'T''ai-tung','TT',1),
  (3151,206,'T''ao-yuan','TY',1),
  (3152,206,'Yun-lin','YL',1),
  (3153,206,'Chia-i city','CC',1),
  (3154,206,'Chi-lung','CL',1),
  (3155,206,'Hsin-chu','HC',1),
  (3156,206,'T''ai-chung','TH',1),
  (3157,206,'T''ai-nan','TN',1),
  (3158,206,'Kao-hsiung city','KC',1),
  (3159,206,'T''ai-pei city','TC',1),
  (3160,207,'Gorno-Badakhstan','GB',1),
  (3161,207,'Khatlon','KT',1),
  (3162,207,'Sughd','SU',1),
  (3163,208,'Arusha','AR',1),
  (3164,208,'Dar es Salaam','DS',1),
  (3165,208,'Dodoma','DO',1),
  (3166,208,'Iringa','IR',1),
  (3167,208,'Kagera','KA',1),
  (3168,208,'Kigoma','KI',1),
  (3169,208,'Kilimanjaro','KJ',1),
  (3170,208,'Lindi','LN',1),
  (3171,208,'Manyara','MY',1),
  (3172,208,'Mara','MR',1),
  (3173,208,'Mbeya','MB',1),
  (3174,208,'Morogoro','MO',1),
  (3175,208,'Mtwara','MT',1),
  (3176,208,'Mwanza','MW',1),
  (3177,208,'Pemba North','PN',1),
  (3178,208,'Pemba South','PS',1),
  (3179,208,'Pwani','PW',1),
  (3180,208,'Rukwa','RK',1),
  (3181,208,'Ruvuma','RV',1),
  (3182,208,'Shinyanga','SH',1),
  (3183,208,'Singida','SI',1),
  (3184,208,'Tabora','TB',1),
  (3185,208,'Tanga','TN',1),
  (3186,208,'Zanzibar Central/South','ZC',1),
  (3187,208,'Zanzibar North','ZN',1),
  (3188,208,'Zanzibar Urban/West','ZU',1),
  (3189,209,'Amnat Charoen','Amnat Charoen',1),
  (3190,209,'Ang Thong','Ang Thong',1),
  (3191,209,'Ayutthaya','Ayutthaya',1),
  (3192,209,'Bangkok','Bangkok',1),
  (3193,209,'Buriram','Buriram',1),
  (3194,209,'Chachoengsao','Chachoengsao',1),
  (3195,209,'Chai Nat','Chai Nat',1),
  (3196,209,'Chaiyaphum','Chaiyaphum',1),
  (3197,209,'Chanthaburi','Chanthaburi',1),
  (3198,209,'Chiang Mai','Chiang Mai',1),
  (3199,209,'Chiang Rai','Chiang Rai',1),
  (3200,209,'Chon Buri','Chon Buri',1),
  (3201,209,'Chumphon','Chumphon',1),
  (3202,209,'Kalasin','Kalasin',1),
  (3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),
  (3204,209,'Kanchanaburi','Kanchanaburi',1),
  (3205,209,'Khon Kaen','Khon Kaen',1),
  (3206,209,'Krabi','Krabi',1),
  (3207,209,'Lampang','Lampang',1),
  (3208,209,'Lamphun','Lamphun',1),
  (3209,209,'Loei','Loei',1),
  (3210,209,'Lop Buri','Lop Buri',1),
  (3211,209,'Mae Hong Son','Mae Hong Son',1),
  (3212,209,'Maha Sarakham','Maha Sarakham',1),
  (3213,209,'Mukdahan','Mukdahan',1),
  (3214,209,'Nakhon Nayok','Nakhon Nayok',1),
  (3215,209,'Nakhon Pathom','Nakhon Pathom',1),
  (3216,209,'Nakhon Phanom','Nakhon Phanom',1),
  (3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),
  (3218,209,'Nakhon Sawan','Nakhon Sawan',1),
  (3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),
  (3220,209,'Nan','Nan',1),
  (3221,209,'Narathiwat','Narathiwat',1),
  (3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),
  (3223,209,'Nong Khai','Nong Khai',1),
  (3224,209,'Nonthaburi','Nonthaburi',1),
  (3225,209,'Pathum Thani','Pathum Thani',1),
  (3226,209,'Pattani','Pattani',1),
  (3227,209,'Phangnga','Phangnga',1),
  (3228,209,'Phatthalung','Phatthalung',1),
  (3229,209,'Phayao','Phayao',1),
  (3230,209,'Phetchabun','Phetchabun',1),
  (3231,209,'Phetchaburi','Phetchaburi',1),
  (3232,209,'Phichit','Phichit',1),
  (3233,209,'Phitsanulok','Phitsanulok',1),
  (3234,209,'Phrae','Phrae',1),
  (3235,209,'Phuket','Phuket',1),
  (3236,209,'Prachin Buri','Prachin Buri',1),
  (3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),
  (3238,209,'Ranong','Ranong',1),
  (3239,209,'Ratchaburi','Ratchaburi',1),
  (3240,209,'Rayong','Rayong',1),
  (3241,209,'Roi Et','Roi Et',1),
  (3242,209,'Sa Kaeo','Sa Kaeo',1),
  (3243,209,'Sakon Nakhon','Sakon Nakhon',1),
  (3244,209,'Samut Prakan','Samut Prakan',1),
  (3245,209,'Samut Sakhon','Samut Sakhon',1),
  (3246,209,'Samut Songkhram','Samut Songkhram',1),
  (3247,209,'Sara Buri','Sara Buri',1),
  (3248,209,'Satun','Satun',1),
  (3249,209,'Sing Buri','Sing Buri',1),
  (3250,209,'Sisaket','Sisaket',1),
  (3251,209,'Songkhla','Songkhla',1),
  (3252,209,'Sukhothai','Sukhothai',1),
  (3253,209,'Suphan Buri','Suphan Buri',1),
  (3254,209,'Surat Thani','Surat Thani',1),
  (3255,209,'Surin','Surin',1),
  (3256,209,'Tak','Tak',1),
  (3257,209,'Trang','Trang',1),
  (3258,209,'Trat','Trat',1),
  (3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),
  (3260,209,'Udon Thani','Udon Thani',1),
  (3261,209,'Uthai Thani','Uthai Thani',1),
  (3262,209,'Uttaradit','Uttaradit',1),
  (3263,209,'Yala','Yala',1),
  (3264,209,'Yasothon','Yasothon',1),
  (3265,210,'Kara','K',1),
  (3266,210,'Plateaux','P',1),
  (3267,210,'Savanes','S',1),
  (3268,210,'Centrale','C',1),
  (3269,210,'Maritime','M',1),
  (3270,211,'Atafu','A',1),
  (3271,211,'Fakaofo','F',1),
  (3272,211,'Nukunonu','N',1),
  (3273,212,'Ha''apai','H',1),
  (3274,212,'Tongatapu','T',1),
  (3275,212,'Vava''u','V',1),
  (3276,213,'Couva/Tabaquite/Talparo','CT',1),
  (3277,213,'Diego Martin','DM',1),
  (3278,213,'Mayaro/Rio Claro','MR',1),
  (3279,213,'Penal/Debe','PD',1),
  (3280,213,'Princes Town','PT',1),
  (3281,213,'Sangre Grande','SG',1),
  (3282,213,'San Juan/Laventille','SL',1),
  (3283,213,'Siparia','SI',1),
  (3284,213,'Tunapuna/Piarco','TP',1),
  (3285,213,'Port of Spain','PS',1),
  (3286,213,'San Fernando','SF',1),
  (3287,213,'Arima','AR',1),
  (3288,213,'Point Fortin','PF',1),
  (3289,213,'Chaguanas','CH',1),
  (3290,213,'Tobago','TO',1),
  (3291,214,'Ariana','AR',1),
  (3292,214,'Beja','BJ',1),
  (3293,214,'Ben Arous','BA',1),
  (3294,214,'Bizerte','BI',1),
  (3295,214,'Gabes','GB',1),
  (3296,214,'Gafsa','GF',1),
  (3297,214,'Jendouba','JE',1),
  (3298,214,'Kairouan','KR',1),
  (3299,214,'Kasserine','KS',1),
  (3300,214,'Kebili','KB',1),
  (3301,214,'Kef','KF',1),
  (3302,214,'Mahdia','MH',1),
  (3303,214,'Manouba','MN',1),
  (3304,214,'Medenine','ME',1),
  (3305,214,'Monastir','MO',1),
  (3306,214,'Nabeul','NA',1),
  (3307,214,'Sfax','SF',1),
  (3308,214,'Sidi','SD',1),
  (3309,214,'Siliana','SL',1),
  (3310,214,'Sousse','SO',1),
  (3311,214,'Tataouine','TA',1),
  (3312,214,'Tozeur','TO',1),
  (3313,214,'Tunis','TU',1),
  (3314,214,'Zaghouan','ZA',1),
  (3315,215,'Adana','ADA',1),
  (3316,215,'Adıyaman','ADI',1),
  (3317,215,'Afyonkarahisar','AFY',1),
  (3318,215,'Ağrı','AGR',1),
  (3319,215,'Aksaray','AKS',1),
  (3320,215,'Amasya','AMA',1),
  (3321,215,'Ankara','ANK',1),
  (3322,215,'Antalya','ANT',1),
  (3323,215,'Ardahan','ARD',1),
  (3324,215,'Artvin','ART',1),
  (3325,215,'Aydın','AYI',1),
  (3326,215,'Balıkesir','BAL',1),
  (3327,215,'Bartın','BAR',1),
  (3328,215,'Batman','BAT',1),
  (3329,215,'Bayburt','BAY',1),
  (3330,215,'Bilecik','BIL',1),
  (3331,215,'Bingöl','BIN',1),
  (3332,215,'Bitlis','BIT',1),
  (3333,215,'Bolu','BOL',1),
  (3334,215,'Burdur','BRD',1),
  (3335,215,'Bursa','BRS',1),
  (3336,215,'Çanakkale','CKL',1),
  (3337,215,'Çankırı','CKR',1),
  (3338,215,'Çorum','COR',1),
  (3339,215,'Denizli','DEN',1),
  (3340,215,'Diyarbakir','DIY',1),
  (3341,215,'Düzce','DUZ',1),
  (3342,215,'Edirne','EDI',1),
  (3343,215,'Elazig','ELA',1),
  (3344,215,'Erzincan','EZC',1),
  (3345,215,'Erzurum','EZR',1),
  (3346,215,'Eskişehir','ESK',1),
  (3347,215,'Gaziantep','GAZ',1),
  (3348,215,'Giresun','GIR',1),
  (3349,215,'Gümüşhane','GMS',1),
  (3350,215,'Hakkari','HKR',1),
  (3351,215,'Hatay','HTY',1),
  (3352,215,'Iğdır','IGD',1),
  (3353,215,'Isparta','ISP',1),
  (3354,215,'İstanbul','IST',1),
  (3355,215,'İzmir','IZM',1),
  (3356,215,'Kahramanmaraş','KAH',1),
  (3357,215,'Karabük','KRB',1),
  (3358,215,'Karaman','KRM',1),
  (3359,215,'Kars','KRS',1),
  (3360,215,'Kastamonu','KAS',1),
  (3361,215,'Kayseri','KAY',1),
  (3362,215,'Kilis','KLS',1),
  (3363,215,'Kirikkale','KRK',1),
  (3364,215,'Kirklareli','KLR',1),
  (3365,215,'Kirsehir','KRH',1),
  (3366,215,'Kocaeli','KOC',1),
  (3367,215,'Konya','KON',1),
  (3368,215,'Kütahya','KUT',1),
  (3369,215,'Malatya','MAL',1),
  (3370,215,'Manisa','MAN',1),
  (3371,215,'Mardin','MAR',1),
  (3372,215,'Mersin','MER',1),
  (3373,215,'Muğla','MUG',1),
  (3374,215,'Muş','MUS',1),
  (3375,215,'Nevşehir','NEV',1),
  (3376,215,'Niğde','NIG',1),
  (3377,215,'Ordu','ORD',1),
  (3378,215,'Osmaniye','OSM',1),
  (3379,215,'Rize','RIZ',1),
  (3380,215,'Sakarya','SAK',1),
  (3381,215,'Samsun','SAM',1),
  (3382,215,'Şanlıurfa','SAN',1),
  (3383,215,'Siirt','SII',1),
  (3384,215,'Sinop','SIN',1),
  (3385,215,'Şırnak','SIR',1),
  (3386,215,'Sivas','SIV',1),
  (3387,215,'Tekirdağ','TEL',1),
  (3388,215,'Tokat','TOK',1),
  (3389,215,'Trabzon','TRA',1),
  (3390,215,'Tunceli','TUN',1),
  (3391,215,'Uşak','USK',1),
  (3392,215,'Van','VAN',1),
  (3393,215,'Yalova','YAL',1),
  (3394,215,'Yozgat','YOZ',1),
  (3395,215,'Zonguldak','ZON',1),
  (3396,216,'Ahal Welayaty','A',1),
  (3397,216,'Balkan Welayaty','B',1),
  (3398,216,'Dashhowuz Welayaty','D',1),
  (3399,216,'Lebap Welayaty','L',1),
  (3400,216,'Mary Welayaty','M',1),
  (3401,217,'Ambergris Cays','AC',1),
  (3402,217,'Dellis Cay','DC',1),
  (3403,217,'French Cay','FC',1),
  (3404,217,'Little Water Cay','LW',1),
  (3405,217,'Parrot Cay','RC',1),
  (3406,217,'Pine Cay','PN',1),
  (3407,217,'Salt Cay','SL',1),
  (3408,217,'Grand Turk','GT',1),
  (3409,217,'South Caicos','SC',1),
  (3410,217,'East Caicos','EC',1),
  (3411,217,'Middle Caicos','MC',1),
  (3412,217,'North Caicos','NC',1),
  (3413,217,'Providenciales','PR',1),
  (3414,217,'West Caicos','WC',1),
  (3415,218,'Nanumanga','NMG',1),
  (3416,218,'Niulakita','NLK',1),
  (3417,218,'Niutao','NTO',1),
  (3418,218,'Funafuti','FUN',1),
  (3419,218,'Nanumea','NME',1),
  (3420,218,'Nui','NUI',1),
  (3421,218,'Nukufetau','NFT',1),
  (3422,218,'Nukulaelae','NLL',1),
  (3423,218,'Vaitupu','VAI',1),
  (3424,219,'Kalangala','KAL',1),
  (3425,219,'Kampala','KMP',1),
  (3426,219,'Kayunga','KAY',1),
  (3427,219,'Kiboga','KIB',1),
  (3428,219,'Luwero','LUW',1),
  (3429,219,'Masaka','MAS',1),
  (3430,219,'Mpigi','MPI',1),
  (3431,219,'Mubende','MUB',1),
  (3432,219,'Mukono','MUK',1),
  (3433,219,'Nakasongola','NKS',1),
  (3434,219,'Rakai','RAK',1),
  (3435,219,'Sembabule','SEM',1),
  (3436,219,'Wakiso','WAK',1),
  (3437,219,'Bugiri','BUG',1),
  (3438,219,'Busia','BUS',1),
  (3439,219,'Iganga','IGA',1),
  (3440,219,'Jinja','JIN',1),
  (3441,219,'Kaberamaido','KAB',1),
  (3442,219,'Kamuli','KML',1),
  (3443,219,'Kapchorwa','KPC',1),
  (3444,219,'Katakwi','KTK',1),
  (3445,219,'Kumi','KUM',1),
  (3446,219,'Mayuge','MAY',1),
  (3447,219,'Mbale','MBA',1),
  (3448,219,'Pallisa','PAL',1),
  (3449,219,'Sironko','SIR',1),
  (3450,219,'Soroti','SOR',1),
  (3451,219,'Tororo','TOR',1),
  (3452,219,'Adjumani','ADJ',1),
  (3453,219,'Apac','APC',1),
  (3454,219,'Arua','ARU',1),
  (3455,219,'Gulu','GUL',1),
  (3456,219,'Kitgum','KIT',1),
  (3457,219,'Kotido','KOT',1),
  (3458,219,'Lira','LIR',1),
  (3459,219,'Moroto','MRT',1),
  (3460,219,'Moyo','MOY',1),
  (3461,219,'Nakapiripirit','NAK',1),
  (3462,219,'Nebbi','NEB',1),
  (3463,219,'Pader','PAD',1),
  (3464,219,'Yumbe','YUM',1),
  (3465,219,'Bundibugyo','BUN',1),
  (3466,219,'Bushenyi','BSH',1),
  (3467,219,'Hoima','HOI',1),
  (3468,219,'Kabale','KBL',1),
  (3469,219,'Kabarole','KAR',1),
  (3470,219,'Kamwenge','KAM',1),
  (3471,219,'Kanungu','KAN',1),
  (3472,219,'Kasese','KAS',1),
  (3473,219,'Kibaale','KBA',1),
  (3474,219,'Kisoro','KIS',1),
  (3475,219,'Kyenjojo','KYE',1),
  (3476,219,'Masindi','MSN',1),
  (3477,219,'Mbarara','MBR',1),
  (3478,219,'Ntungamo','NTU',1),
  (3479,219,'Rukungiri','RUK',1),
  (3480,220,'Черкассы','CK',1),
  (3481,220,'Чернигов','CH',1),
  (3482,220,'Черновцы','CV',1),
  (3483,220,'Крым','CR',1),
  (3484,220,'Днепропетровск','DN',1),
  (3485,220,'Донецк','DO',1),
  (3486,220,'Ивано-Франковск','IV',1),
  (3487,220,'Харьков','KH',1),
  (3488,220,'Хмельницкий','KM',1),
  (3489,220,'Кировоград','KR',1),
  (3490,220,'Киевская область','KV',1),
  (3491,220,'Киев','KY',1),
  (3492,220,'Луганск','LU',1),
  (3493,220,'Львов','LV',1),
  (3494,220,'Николаев','MY',1),
  (3495,220,'Одесса','OD',1),
  (3496,220,'Полтава','PO',1),
  (3497,220,'Ровно','RI',1),
  (3498,220,'Севастополь','SE',1),
  (3499,220,'Сумы','SU',1),
  (3500,220,'Тернополь','TE',1),
  (3501,220,'Винница','VI',1),
  (3502,220,'Луцк','VO',1),
  (3503,220,'Ужгород','ZK',1),
  (3504,220,'Запорожье','ZA',1),
  (3505,220,'Житомир','ZH',1),
  (3506,221,'Abu Zaby','AZ',1),
  (3507,221,'''Ajman','AJ',1),
  (3508,221,'Al Fujayrah','FU',1),
  (3509,221,'Ash Shariqah','SH',1),
  (3510,221,'Dubayy','DU',1),
  (3511,221,'R''as al Khaymah','RK',1),
  (3512,221,'Umm al Qaywayn','UQ',1),
  (3513,222,'Aberdeen','ABN',1),
  (3514,222,'Aberdeenshire','ABNS',1),
  (3515,222,'Anglesey','ANG',1),
  (3516,222,'Angus','AGS',1),
  (3517,222,'Argyll and Bute','ARY',1),
  (3518,222,'Bedfordshire','BEDS',1),
  (3519,222,'Berkshire','BERKS',1),
  (3520,222,'Blaenau Gwent','BLA',1),
  (3521,222,'Bridgend','BRI',1),
  (3522,222,'Bristol','BSTL',1),
  (3523,222,'Buckinghamshire','BUCKS',1),
  (3524,222,'Caerphilly','CAE',1),
  (3525,222,'Cambridgeshire','CAMBS',1);
COMMIT;

#
# Data for the `zone` table  (LIMIT 3446,500)
#

INSERT INTO `zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES 
  (3526,222,'Cardiff','CDF',1),
  (3527,222,'Carmarthenshire','CARM',1),
  (3528,222,'Ceredigion','CDGN',1),
  (3529,222,'Cheshire','CHES',1),
  (3530,222,'Clackmannanshire','CLACK',1),
  (3531,222,'Conwy','CON',1),
  (3532,222,'Cornwall','CORN',1),
  (3533,222,'Denbighshire','DNBG',1),
  (3534,222,'Derbyshire','DERBY',1),
  (3535,222,'Devon','DVN',1),
  (3536,222,'Dorset','DOR',1),
  (3537,222,'Dumfries and Galloway','DGL',1),
  (3538,222,'Dundee','DUND',1),
  (3539,222,'Durham','DHM',1),
  (3540,222,'East Ayrshire','ARYE',1),
  (3541,222,'East Dunbartonshire','DUNBE',1),
  (3542,222,'East Lothian','LOTE',1),
  (3543,222,'East Renfrewshire','RENE',1),
  (3544,222,'East Riding of Yorkshire','ERYS',1),
  (3545,222,'East Sussex','SXE',1),
  (3546,222,'Edinburgh','EDIN',1),
  (3547,222,'Essex','ESX',1),
  (3548,222,'Falkirk','FALK',1),
  (3549,222,'Fife','FFE',1),
  (3550,222,'Flintshire','FLINT',1),
  (3551,222,'Glasgow','GLAS',1),
  (3552,222,'Gloucestershire','GLOS',1),
  (3553,222,'Greater London','LDN',1),
  (3554,222,'Greater Manchester','MCH',1),
  (3555,222,'Gwynedd','GDD',1),
  (3556,222,'Hampshire','HANTS',1),
  (3557,222,'Herefordshire','HWR',1),
  (3558,222,'Hertfordshire','HERTS',1),
  (3559,222,'Highlands','HLD',1),
  (3560,222,'Inverclyde','IVER',1),
  (3561,222,'Isle of Wight','IOW',1),
  (3562,222,'Kent','KNT',1),
  (3563,222,'Lancashire','LANCS',1),
  (3564,222,'Leicestershire','LEICS',1),
  (3565,222,'Lincolnshire','LINCS',1),
  (3566,222,'Merseyside','MSY',1),
  (3567,222,'Merthyr Tydfil','MERT',1),
  (3568,222,'Midlothian','MLOT',1),
  (3569,222,'Monmouthshire','MMOUTH',1),
  (3570,222,'Moray','MORAY',1),
  (3571,222,'Neath Port Talbot','NPRTAL',1),
  (3572,222,'Newport','NEWPT',1),
  (3573,222,'Norfolk','NOR',1),
  (3574,222,'North Ayrshire','ARYN',1),
  (3575,222,'North Lanarkshire','LANN',1),
  (3576,222,'North Yorkshire','YSN',1),
  (3577,222,'Northamptonshire','NHM',1),
  (3578,222,'Northumberland','NLD',1),
  (3579,222,'Nottinghamshire','NOT',1),
  (3580,222,'Orkney Islands','ORK',1),
  (3581,222,'Oxfordshire','OFE',1),
  (3582,222,'Pembrokeshire','PEM',1),
  (3583,222,'Perth and Kinross','PERTH',1),
  (3584,222,'Powys','PWS',1),
  (3585,222,'Renfrewshire','REN',1),
  (3586,222,'Rhondda Cynon Taff','RHON',1),
  (3587,222,'Rutland','RUT',1),
  (3588,222,'Scottish Borders','BOR',1),
  (3589,222,'Shetland Islands','SHET',1),
  (3590,222,'Shropshire','SPE',1),
  (3591,222,'Somerset','SOM',1),
  (3592,222,'South Ayrshire','ARYS',1),
  (3593,222,'South Lanarkshire','LANS',1),
  (3594,222,'South Yorkshire','YSS',1),
  (3595,222,'Staffordshire','SFD',1),
  (3596,222,'Stirling','STIR',1),
  (3597,222,'Suffolk','SFK',1),
  (3598,222,'Surrey','SRY',1),
  (3599,222,'Swansea','SWAN',1),
  (3600,222,'Torfaen','TORF',1),
  (3601,222,'Tyne and Wear','TWR',1),
  (3602,222,'Vale of Glamorgan','VGLAM',1),
  (3603,222,'Warwickshire','WARKS',1),
  (3604,222,'West Dunbartonshire','WDUN',1),
  (3605,222,'West Lothian','WLOT',1),
  (3606,222,'West Midlands','WMD',1),
  (3607,222,'West Sussex','SXW',1),
  (3608,222,'West Yorkshire','YSW',1),
  (3609,222,'Western Isles','WIL',1),
  (3610,222,'Wiltshire','WLT',1),
  (3611,222,'Worcestershire','WORCS',1),
  (3612,222,'Wrexham','WRX',1),
  (3613,223,'Alabama','AL',1),
  (3614,223,'Alaska','AK',1),
  (3615,223,'American Samoa','AS',1),
  (3616,223,'Arizona','AZ',1),
  (3617,223,'Arkansas','AR',1),
  (3618,223,'Armed Forces Africa','AF',1),
  (3619,223,'Armed Forces Americas','AA',1),
  (3620,223,'Armed Forces Canada','AC',1),
  (3621,223,'Armed Forces Europe','AE',1),
  (3622,223,'Armed Forces Middle East','AM',1),
  (3623,223,'Armed Forces Pacific','AP',1),
  (3624,223,'California','CA',1),
  (3625,223,'Colorado','CO',1),
  (3626,223,'Connecticut','CT',1),
  (3627,223,'Delaware','DE',1),
  (3628,223,'District of Columbia','DC',1),
  (3629,223,'Federated States Of Micronesia','FM',1),
  (3630,223,'Florida','FL',1),
  (3631,223,'Georgia','GA',1),
  (3632,223,'Guam','GU',1),
  (3633,223,'Hawaii','HI',1),
  (3634,223,'Idaho','ID',1),
  (3635,223,'Illinois','IL',1),
  (3636,223,'Indiana','IN',1),
  (3637,223,'Iowa','IA',1),
  (3638,223,'Kansas','KS',1),
  (3639,223,'Kentucky','KY',1),
  (3640,223,'Louisiana','LA',1),
  (3641,223,'Maine','ME',1),
  (3642,223,'Marshall Islands','MH',1),
  (3643,223,'Maryland','MD',1),
  (3644,223,'Massachusetts','MA',1),
  (3645,223,'Michigan','MI',1),
  (3646,223,'Minnesota','MN',1),
  (3647,223,'Mississippi','MS',1),
  (3648,223,'Missouri','MO',1),
  (3649,223,'Montana','MT',1),
  (3650,223,'Nebraska','NE',1),
  (3651,223,'Nevada','NV',1),
  (3652,223,'New Hampshire','NH',1),
  (3653,223,'New Jersey','NJ',1),
  (3654,223,'New Mexico','NM',1),
  (3655,223,'New York','NY',1),
  (3656,223,'North Carolina','NC',1),
  (3657,223,'North Dakota','ND',1),
  (3658,223,'Northern Mariana Islands','MP',1),
  (3659,223,'Ohio','OH',1),
  (3660,223,'Oklahoma','OK',1),
  (3661,223,'Oregon','OR',1),
  (3662,223,'Palau','PW',1),
  (3663,223,'Pennsylvania','PA',1),
  (3664,223,'Puerto Rico','PR',1),
  (3665,223,'Rhode Island','RI',1),
  (3666,223,'South Carolina','SC',1),
  (3667,223,'South Dakota','SD',1),
  (3668,223,'Tennessee','TN',1),
  (3669,223,'Texas','TX',1),
  (3670,223,'Utah','UT',1),
  (3671,223,'Vermont','VT',1),
  (3672,223,'Virgin Islands','VI',1),
  (3673,223,'Virginia','VA',1),
  (3674,223,'Washington','WA',1),
  (3675,223,'West Virginia','WV',1),
  (3676,223,'Wisconsin','WI',1),
  (3677,223,'Wyoming','WY',1),
  (3678,224,'Baker Island','BI',1),
  (3679,224,'Howland Island','HI',1),
  (3680,224,'Jarvis Island','JI',1),
  (3681,224,'Johnston Atoll','JA',1),
  (3682,224,'Kingman Reef','KR',1),
  (3683,224,'Midway Atoll','MA',1),
  (3684,224,'Navassa Island','NI',1),
  (3685,224,'Palmyra Atoll','PA',1),
  (3686,224,'Wake Island','WI',1),
  (3687,225,'Artigas','AR',1),
  (3688,225,'Canelones','CA',1),
  (3689,225,'Cerro Largo','CL',1),
  (3690,225,'Colonia','CO',1),
  (3691,225,'Durazno','DU',1),
  (3692,225,'Flores','FS',1),
  (3693,225,'Florida','FA',1),
  (3694,225,'Lavalleja','LA',1),
  (3695,225,'Maldonado','MA',1),
  (3696,225,'Montevideo','MO',1),
  (3697,225,'Paysandu','PA',1),
  (3698,225,'Rio Negro','RN',1),
  (3699,225,'Rivera','RV',1),
  (3700,225,'Rocha','RO',1),
  (3701,225,'Salto','SL',1),
  (3702,225,'San Jose','SJ',1),
  (3703,225,'Soriano','SO',1),
  (3704,225,'Tacuarembo','TA',1),
  (3705,225,'Treinta y Tres','TT',1),
  (3706,226,'Andijon','AN',1),
  (3707,226,'Buxoro','BU',1),
  (3708,226,'Farg''ona','FA',1),
  (3709,226,'Jizzax','JI',1),
  (3710,226,'Namangan','NG',1),
  (3711,226,'Navoiy','NW',1),
  (3712,226,'Qashqadaryo','QA',1),
  (3713,226,'Qoraqalpog''iston Republikasi','QR',1),
  (3714,226,'Samarqand','SA',1),
  (3715,226,'Sirdaryo','SI',1),
  (3716,226,'Surxondaryo','SU',1),
  (3717,226,'Toshkent City','TK',1),
  (3718,226,'Toshkent Region','TO',1),
  (3719,226,'Xorazm','XO',1),
  (3720,227,'Malampa','MA',1),
  (3721,227,'Penama','PE',1),
  (3722,227,'Sanma','SA',1),
  (3723,227,'Shefa','SH',1),
  (3724,227,'Tafea','TA',1),
  (3725,227,'Torba','TO',1),
  (3726,229,'Amazonas','AM',1),
  (3727,229,'Anzoategui','AN',1),
  (3728,229,'Apure','AP',1),
  (3729,229,'Aragua','AR',1),
  (3730,229,'Barinas','BA',1),
  (3731,229,'Bolivar','BO',1),
  (3732,229,'Carabobo','CA',1),
  (3733,229,'Cojedes','CO',1),
  (3734,229,'Delta Amacuro','DA',1),
  (3735,229,'Dependencias Federales','DF',1),
  (3736,229,'Distrito Federal','DI',1),
  (3737,229,'Falcon','FA',1),
  (3738,229,'Guarico','GU',1),
  (3739,229,'Lara','LA',1),
  (3740,229,'Merida','ME',1),
  (3741,229,'Miranda','MI',1),
  (3742,229,'Monagas','MO',1),
  (3743,229,'Nueva Esparta','NE',1),
  (3744,229,'Portuguesa','PO',1),
  (3745,229,'Sucre','SU',1),
  (3746,229,'Tachira','TA',1),
  (3747,229,'Trujillo','TR',1),
  (3748,229,'Vargas','VA',1),
  (3749,229,'Yaracuy','YA',1),
  (3750,229,'Zulia','ZU',1),
  (3751,230,'An Giang','AG',1),
  (3752,230,'Bac Giang','BG',1),
  (3753,230,'Bac Kan','BK',1),
  (3754,230,'Bac Lieu','BL',1),
  (3755,230,'Bac Ninh','BC',1),
  (3756,230,'Ba Ria-Vung Tau','BR',1),
  (3757,230,'Ben Tre','BN',1),
  (3758,230,'Binh Dinh','BH',1),
  (3759,230,'Binh Duong','BU',1),
  (3760,230,'Binh Phuoc','BP',1),
  (3761,230,'Binh Thuan','BT',1),
  (3762,230,'Ca Mau','CM',1),
  (3763,230,'Can Tho','CT',1),
  (3764,230,'Cao Bang','CB',1),
  (3765,230,'Dak Lak','DL',1),
  (3766,230,'Dak Nong','DG',1),
  (3767,230,'Da Nang','DN',1),
  (3768,230,'Dien Bien','DB',1),
  (3769,230,'Dong Nai','DI',1),
  (3770,230,'Dong Thap','DT',1),
  (3771,230,'Gia Lai','GL',1),
  (3772,230,'Ha Giang','HG',1),
  (3773,230,'Hai Duong','HD',1),
  (3774,230,'Hai Phong','HP',1),
  (3775,230,'Ha Nam','HM',1),
  (3776,230,'Ha Noi','HI',1),
  (3777,230,'Ha Tay','HT',1),
  (3778,230,'Ha Tinh','HH',1),
  (3779,230,'Hoa Binh','HB',1),
  (3780,230,'Ho Chi Minh City','HC',1),
  (3781,230,'Hau Giang','HU',1),
  (3782,230,'Hung Yen','HY',1),
  (3783,232,'Saint Croix','C',1),
  (3784,232,'Saint John','J',1),
  (3785,232,'Saint Thomas','T',1),
  (3786,233,'Alo','A',1),
  (3787,233,'Sigave','S',1),
  (3788,233,'Wallis','W',1),
  (3789,235,'Abyan','AB',1),
  (3790,235,'Adan','AD',1),
  (3791,235,'Amran','AM',1),
  (3792,235,'Al Bayda','BA',1),
  (3793,235,'Ad Dali','DA',1),
  (3794,235,'Dhamar','DH',1),
  (3795,235,'Hadramawt','HD',1),
  (3796,235,'Hajjah','HJ',1),
  (3797,235,'Al Hudaydah','HU',1),
  (3798,235,'Ibb','IB',1),
  (3799,235,'Al Jawf','JA',1),
  (3800,235,'Lahij','LA',1),
  (3801,235,'Ma''rib','MA',1),
  (3802,235,'Al Mahrah','MR',1),
  (3803,235,'Al Mahwit','MW',1),
  (3804,235,'Sa''dah','SD',1),
  (3805,235,'San''a','SN',1),
  (3806,235,'Shabwah','SH',1),
  (3807,235,'Ta''izz','TA',1),
  (3808,236,'Kosovo','KOS',1),
  (3809,236,'Montenegro','MON',1),
  (3810,236,'Serbia','SER',1),
  (3811,236,'Vojvodina','VOJ',1),
  (3812,237,'Bas-Congo','BC',1),
  (3813,237,'Bandundu','BN',1),
  (3814,237,'Equateur','EQ',1),
  (3815,237,'Katanga','KA',1),
  (3816,237,'Kasai-Oriental','KE',1),
  (3817,237,'Kinshasa','KN',1),
  (3818,237,'Kasai-Occidental','KW',1),
  (3819,237,'Maniema','MA',1),
  (3820,237,'Nord-Kivu','NK',1),
  (3821,237,'Orientale','OR',1),
  (3822,237,'Sud-Kivu','SK',1),
  (3823,238,'Central','CE',1),
  (3824,238,'Copperbelt','CB',1),
  (3825,238,'Eastern','EA',1),
  (3826,238,'Luapula','LP',1),
  (3827,238,'Lusaka','LK',1),
  (3828,238,'Northern','NO',1),
  (3829,238,'North-Western','NW',1),
  (3830,238,'Southern','SO',1),
  (3831,238,'Western','WE',1),
  (3832,239,'Bulawayo','BU',1),
  (3833,239,'Harare','HA',1),
  (3834,239,'Manicaland','ML',1),
  (3835,239,'Mashonaland Central','MC',1),
  (3836,239,'Mashonaland East','ME',1),
  (3837,239,'Mashonaland West','MW',1),
  (3838,239,'Masvingo','MV',1),
  (3839,239,'Matabeleland North','MN',1),
  (3840,239,'Matabeleland South','MS',1),
  (3841,239,'Midlands','MD',1),
  (3842,105,'Agrigento','AG',1),
  (3843,105,'Alessandria','AL',1),
  (3844,105,'Ancona','AN',1),
  (3845,105,'Aosta','AO',1),
  (3846,105,'Arezzo','AR',1),
  (3847,105,'Ascoli Piceno','AP',1),
  (3848,105,'Asti','AT',1),
  (3849,105,'Avellino','AV',1),
  (3850,105,'Bari','BA',1),
  (3851,105,'Belluno','BL',1),
  (3852,105,'Benevento','BN',1),
  (3853,105,'Bergamo','BG',1),
  (3854,105,'Biella','BI',1),
  (3855,105,'Bologna','BO',1),
  (3856,105,'Bolzano','BZ',1),
  (3857,105,'Brescia','BS',1),
  (3858,105,'Brindisi','BR',1),
  (3859,105,'Cagliari','CA',1),
  (3860,105,'Caltanissetta','CL',1),
  (3861,105,'Campobasso','CB',1),
  (3862,105,'Carbonia-Iglesias','CI',1),
  (3863,105,'Caserta','CE',1),
  (3864,105,'Catania','CT',1),
  (3865,105,'Catanzaro','CZ',1),
  (3866,105,'Chieti','CH',1),
  (3867,105,'Como','CO',1),
  (3868,105,'Cosenza','CS',1),
  (3869,105,'Cremona','CR',1),
  (3870,105,'Crotone','KR',1),
  (3871,105,'Cuneo','CN',1),
  (3872,105,'Enna','EN',1),
  (3873,105,'Ferrara','FE',1),
  (3874,105,'Firenze','FI',1),
  (3875,105,'Foggia','FG',1),
  (3876,105,'Forli-Cesena','FC',1),
  (3877,105,'Frosinone','FR',1),
  (3878,105,'Genova','GE',1),
  (3879,105,'Gorizia','GO',1),
  (3880,105,'Grosseto','GR',1),
  (3881,105,'Imperia','IM',1),
  (3882,105,'Isernia','IS',1),
  (3883,105,'L&#39;Aquila','AQ',1),
  (3884,105,'La Spezia','SP',1),
  (3885,105,'Latina','LT',1),
  (3886,105,'Lecce','LE',1),
  (3887,105,'Lecco','LC',1),
  (3888,105,'Livorno','LI',1),
  (3889,105,'Lodi','LO',1),
  (3890,105,'Lucca','LU',1),
  (3891,105,'Macerata','MC',1),
  (3892,105,'Mantova','MN',1),
  (3893,105,'Massa-Carrara','MS',1),
  (3894,105,'Matera','MT',1),
  (3895,105,'Medio Campidano','VS',1),
  (3896,105,'Messina','ME',1),
  (3897,105,'Milano','MI',1),
  (3898,105,'Modena','MO',1),
  (3899,105,'Napoli','NA',1),
  (3900,105,'Novara','NO',1),
  (3901,105,'Nuoro','NU',1),
  (3902,105,'Ogliastra','OG',1),
  (3903,105,'Olbia-Tempio','OT',1),
  (3904,105,'Oristano','OR',1),
  (3905,105,'Padova','PD',1),
  (3906,105,'Palermo','PA',1),
  (3907,105,'Parma','PR',1),
  (3908,105,'Pavia','PV',1),
  (3909,105,'Perugia','PG',1),
  (3910,105,'Pesaro e Urbino','PU',1),
  (3911,105,'Pescara','PE',1),
  (3912,105,'Piacenza','PC',1),
  (3913,105,'Pisa','PI',1),
  (3914,105,'Pistoia','PT',1),
  (3915,105,'Pordenone','PN',1),
  (3916,105,'Potenza','PZ',1),
  (3917,105,'Prato','PO',1),
  (3918,105,'Ragusa','RG',1),
  (3919,105,'Ravenna','RA',1),
  (3920,105,'Reggio Calabria','RC',1),
  (3921,105,'Reggio Emilia','RE',1),
  (3922,105,'Rieti','RI',1),
  (3923,105,'Rimini','RN',1),
  (3924,105,'Roma','RM',1),
  (3925,105,'Rovigo','RO',1),
  (3926,105,'Salerno','SA',1),
  (3927,105,'Sassari','SS',1),
  (3928,105,'Savona','SV',1),
  (3929,105,'Siena','SI',1),
  (3930,105,'Siracusa','SR',1),
  (3931,105,'Sondrio','SO',1),
  (3932,105,'Taranto','TA',1),
  (3933,105,'Teramo','TE',1),
  (3934,105,'Terni','TR',1),
  (3935,105,'Torino','TO',1),
  (3936,105,'Trapani','TP',1),
  (3937,105,'Trento','TN',1),
  (3938,105,'Treviso','TV',1),
  (3939,105,'Trieste','TS',1),
  (3940,105,'Udine','UD',1),
  (3941,105,'Varese','VA',1),
  (3942,105,'Venezia','VE',1),
  (3943,105,'Verbano-Cusio-Ossola','VB',1),
  (3944,105,'Vercelli','VC',1),
  (3945,105,'Verona','VR',1),
  (3946,105,'Vibo Valentia','VV',1),
  (3947,105,'Vicenza','VI',1),
  (3948,105,'Viterbo','VT',1),
  (3949,222,'County Antrim','ANT',1),
  (3950,222,'County Armagh','ARM',1),
  (3951,222,'County Down','DOW',1),
  (3952,222,'County Fermanagh','FER',1),
  (3953,222,'County Londonderry','LDY',1),
  (3954,222,'County Tyrone','TYR',1),
  (3955,222,'Cumbria','CMA',1),
  (3956,190,'Pomurska','1',1),
  (3957,190,'Podravska','2',1),
  (3958,190,'Koroška','3',1),
  (3959,190,'Savinjska','4',1),
  (3960,190,'Zasavska','5',1),
  (3961,190,'Spodnjeposavska','6',1),
  (3962,190,'Jugovzhodna Slovenija','7',1),
  (3963,190,'Osrednjeslovenska','8',1),
  (3964,190,'Gorenjska','9',1),
  (3965,190,'Notranjsko-kraška','10',1),
  (3966,190,'Goriška','11',1),
  (3967,190,'Obalno-kraška','12',1),
  (3968,33,'Ruse','',1),
  (3969,101,'Alborz','ALB',1),
  (3970,220,'Херсон','KE',1);
COMMIT;

#
# Структура для таблицы `zone_to_geo_zone`: 
#

CREATE TABLE `zone_to_geo_zone` (
  `zone_to_geo_zone_id` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `country_id` INTEGER(11) NOT NULL,
  `zone_id` INTEGER(11) NOT NULL DEFAULT 0,
  `geo_zone_id` INTEGER(11) NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=MyISAM
AUTO_INCREMENT=58 AVG_ROW_LENGTH=27 ROW_FORMAT=FIXED CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Data for the `zone_to_geo_zone` table  (LIMIT -498,500)
#

INSERT INTO `zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES 
  (57,176,0,3,'2010-02-26 22:33:24','0000-00-00 00:00:00');
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;