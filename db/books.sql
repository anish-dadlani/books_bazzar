-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 12:46 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `pk_id` int(11) NOT NULL,
  `business_number` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tagline` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `business_logo` varchar(255) DEFAULT NULL,
  `cover_photo` varchar(255) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `postalcode` varchar(30) DEFAULT NULL,
  `lat` text DEFAULT NULL,
  `lang` text DEFAULT NULL,
  `business_website` varchar(30) DEFAULT NULL,
  `business_email` varchar(30) DEFAULT NULL,
  `business_mobile` varchar(30) DEFAULT NULL,
  `business_landline` varchar(30) DEFAULT NULL,
  `business_address` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `delivery_fee` varchar(30) DEFAULT NULL,
  `min_delivery_price` varchar(30) DEFAULT NULL,
  `min_delivery_time` varchar(30) DEFAULT NULL,
  `business_admin_id` int(11) DEFAULT NULL,
  `business_category_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `udpated_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`pk_id`, `business_number`, `name`, `tagline`, `description`, `business_logo`, `cover_photo`, `country`, `state`, `city`, `postalcode`, `lat`, `lang`, `business_website`, `business_email`, `business_mobile`, `business_landline`, `business_address`, `status`, `is_active`, `delivery_fee`, `min_delivery_price`, `min_delivery_time`, `business_admin_id`, `business_category_id`, `created_by`, `updated_by`, `created_datetime`, `udpated_datetime`) VALUES
(1, 1234, 'Bluebird Books', 'NA', 'NA', 'includes/images/ZrortAdmin/businessproductslogo/default.jpg', 'includes/images/ZrortAdmin/businessproducts/download_2.jpg', 'Pakistan', 'Sindh', 'Larkana', '77150', NULL, NULL, 'https://www.bluebirds.com', 'anishdadlani@live.com', '03048999119', '03312268839', 'NA.NA.NA', '1', 1, NULL, NULL, NULL, 1, 1, 1, 1, '2021-04-24 22:06:35', '2021-04-24 22:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `business_admins`
--

CREATE TABLE `business_admins` (
  `pk_id` int(11) NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `password_hash` varchar(40) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_admins`
--

INSERT INTO `business_admins` (`pk_id`, `firstname`, `lastname`, `username`, `email`, `contact`, `password_hash`, `created_by`, `updated_by`, `created_datetime`, `updated_datetime`) VALUES
(1, 'Anish', 'Dadlani', 'anish', 'anishdadlani@live.com', '03048999119', '97ca6feae441878b4a659622cc60a513', 1, 1, '2021-04-24 22:06:35', '2021-04-24 22:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `business_admins_activity_log`
--

CREATE TABLE `business_admins_activity_log` (
  `pk_id` int(11) NOT NULL,
  `action_module` text DEFAULT NULL,
  `requested_path` text DEFAULT NULL,
  `requested_time` datetime NOT NULL DEFAULT current_timestamp(),
  `ip` text DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `requested_string` text DEFAULT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_admins_activity_log`
--

INSERT INTO `business_admins_activity_log` (`pk_id`, `action_module`, `requested_path`, `requested_time`, `ip`, `browser`, `requested_string`, `admin_id`) VALUES
(1, 'configuration', 'Categories Added', '2021-04-28 17:28:50', NULL, NULL, '{\"name\":\"test\",\"shortname\":null,\"tags\":\"tetsing\",\"bussiness_id\":1,\"is_active\":\"1\",\"description\":\"testingkjhkjhkjhkhkhkhkjhkhkhkhkkkhghjghjghjghjggjgjgjgjgjghjgjgjghgjghjgjghjghjghghjgghggghgghhghghhggggggggggggggggggggggggggggggg\",\"image_path\":\"includes\\/images\\/BusinessAdmin\\/categories\\/Screenshot (55).png\",\"thumbnail_path\":\"includes\\/images\\/BusinessAdmin\\/categories\\/Screenshot (55).png\",\"created_by\":\"1\",\"business_category\":\"3\"}', 1),
(2, 'configuration', 'Products Added', '2021-04-28 17:43:36', NULL, NULL, '{\"name\":\"book test\",\"shortname\":\"book author test\",\"description\":\"product_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_id\",\"is_active\":\"1\",\"product_category_id\":\"1195\",\"image_path\":\"includes\\/images\\/BusinessAdmin\\/products\\/7b206bb93c9d4b422c6bde6f9dd19a3a20f55621.jpg\",\"thumbnail_path\":\"includes\\/images\\/BusinessAdmin\\/products\\/7b206bb93c9d4b422c6bde6f9dd19a3a20f55621.jpg\",\"created_by\":\"1\"}', 1),
(3, 'configuration', 'Categories Added', '2021-05-02 21:57:21', NULL, NULL, '{\"name\":\"test gener\",\"shortname\":null,\"tags\":\"na\",\"bussiness_id\":1,\"is_active\":\"1\",\"description\":\"111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\",\"image_path\":\"includes\\/images\\/BusinessAdmin\\/categories\\/vlcsnap-2021-04-30-02h16m38s831.png\",\"thumbnail_path\":\"includes\\/images\\/BusinessAdmin\\/categories\\/vlcsnap-2021-04-30-02h16m38s831.png\",\"created_by\":\"1\",\"business_category\":\"56\"}', 1),
(4, 'configuration', 'Categories Updated', '2021-05-02 21:58:29', NULL, NULL, '{\"name\":\"test gener update\",\"shortname\":null,\"bussiness_id\":1,\"is_active\":\"1\",\"description\":\"11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111ddkldjlkjsadjsajdlkjdlajsldjaldjalksjdlas1111111111111111\",\"image_path\":\"includes\\/images\\/BusinessAdmin\\/categories\\/Screenshot (54).png\",\"thumbnail_path\":\"includes\\/images\\/BusinessAdmin\\/categories\\/Screenshot (54).png\",\"created_by\":\"1\",\"updated_by\":\"1\",\"business_category\":\"56\"}', 1),
(5, 'configuration', 'Products Added', '2021-05-02 21:59:51', NULL, NULL, '{\"name\":\"test book title\",\"shortname\":\"test author name\",\"description\":\"11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"tags\":\"na book\",\"is_active\":\"1\",\"product_category_id\":\"1197\",\"image_path\":\"includes\\/images\\/BusinessAdmin\\/products\\/Screenshot (111).png\",\"thumbnail_path\":\"includes\\/images\\/BusinessAdmin\\/products\\/Notification regarding Covid-19.pdf\",\"created_by\":\"1\",\"bussiness_id\":1}', 1),
(6, 'configuration', 'Products Updated', '2021-05-02 22:03:55', NULL, NULL, '{\"name\":\"test book title edit \",\"shortname\":\"test author name update\",\"description\":\"11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa update book aaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\",\"is_active\":\"1\",\"tags\":\"na book update book\",\"product_category_id\":\"1197\",\"bussiness_id\":1,\"image_path\":\"includes\\/images\\/BusinessAdmin\\/products\\/Screenshot (111).png\",\"created_by\":\"1\",\"updated_by\":\"1\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `business_admins_login_log`
--

CREATE TABLE `business_admins_login_log` (
  `pk_id` int(11) NOT NULL,
  `login_attempt_result` varchar(10) NOT NULL,
  `login_attempt_time` datetime NOT NULL DEFAULT current_timestamp(),
  `logout_time` datetime DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `query_string` text DEFAULT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_admins_login_log`
--

INSERT INTO `business_admins_login_log` (`pk_id`, `login_attempt_result`, `login_attempt_time`, `logout_time`, `ip`, `browser`, `query_string`, `admin_id`) VALUES
(1, 'Success', '2021-04-24 22:10:19', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '3cbe662211153b70d427d3056c7218a7', 0);

-- --------------------------------------------------------

--
-- Table structure for table `business_categories`
--

CREATE TABLE `business_categories` (
  `pk_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `udpated_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `image_path` varchar(255) DEFAULT NULL,
  `thumbnail_path` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_categories`
--

INSERT INTO `business_categories` (`pk_id`, `title`, `description`, `created_by`, `updated_by`, `created_datetime`, `udpated_datetime`, `image_path`, `thumbnail_path`, `is_active`) VALUES
(2, 'ARCHITECTURE', NULL, 1, NULL, '2021-04-24 20:21:01', '2021-04-24 20:21:01', 'includes/categories/model-architecture.jpg', NULL, 1),
(3, 'ART', NULL, 1, NULL, '2021-04-24 20:21:51', '2021-04-24 20:21:51', 'includes/categories/elements-of-art-thumbnail-1.jpg', NULL, 1),
(4, 'BIOGRAPHY & AUTOBIOGRAPHY', NULL, 1, NULL, '2021-04-24 20:22:13', '2021-04-24 20:22:13', 'includes/categories/images.jpg', NULL, 1),
(5, 'BODY, MIND & SPIRIT', NULL, 1, NULL, '2021-04-24 20:22:35', '2021-04-24 20:22:35', 'includes/categories/download.jpg', NULL, 1),
(6, 'BUSINESS & ECONOMICS', NULL, 1, NULL, '2021-04-24 20:23:02', '2021-04-24 20:23:02', 'includes/categories/18_333_1024_Blog-1024-x686.jpg', NULL, 1),
(7, 'CHILDREN FICTION', NULL, 1, NULL, '2021-04-24 20:23:40', '2021-04-24 20:23:40', 'includes/categories/childrens-books-7-9a.jpg', NULL, 1),
(8, 'COMICS & GRAPHIC NOVELS', NULL, 1, NULL, '2021-04-24 20:24:54', '2021-04-24 20:24:54', 'includes/categories/main-qimg-d5538d0eeac4106d1082e218d8496401.jpg', NULL, 1),
(9, 'COMPUTERS & INTERNET', NULL, 1, NULL, '2021-04-24 20:25:11', '2021-04-24 20:25:11', 'includes/categories/internet.png', NULL, 1),
(10, 'COOKING, FOOD & WINE', NULL, 1, NULL, '2021-04-24 20:25:58', '2021-04-24 20:25:58', 'includes/categories/download (1).jpg', NULL, 1),
(11, 'CRAFTS & HOBBIES', NULL, 1, NULL, '2021-04-24 20:26:13', '2021-04-24 20:26:13', 'includes/categories/image.jpg', NULL, 1),
(12, 'DESIGN', NULL, 1, NULL, '2021-04-24 20:26:26', '2021-04-24 20:26:26', 'includes/categories/download (2).jpg', NULL, 1),
(13, 'DRAMA', NULL, 1, NULL, '2021-04-24 20:26:34', '2021-04-24 20:26:34', 'includes/categories/images (1).jpg', NULL, 1),
(14, 'EDUCATION', NULL, 1, NULL, '2021-04-24 20:26:44', '2021-04-24 20:26:44', 'includes/categories/How-can-education-improve-the-sustainable-development-of-the-world.jpg', NULL, 1),
(15, 'FAMILY & RELATIONSHIPS', NULL, 1, NULL, '2021-04-24 20:26:53', '2021-04-24 20:26:53', 'includes/categories/family-photo-1.jpg', NULL, 1),
(16, 'FICTION', NULL, 1, NULL, '2021-04-24 20:27:03', '2021-04-24 20:27:03', 'includes/categories/download (3).jpg', NULL, 1),
(17, 'FOREIGN LANGUAGE STUDY', NULL, 1, NULL, '2021-04-24 20:27:12', '2021-04-24 20:27:12', 'includes/categories/foreignlanguages.jpg', NULL, 1),
(18, 'GAMES', NULL, 1, NULL, '2021-04-24 20:27:25', '2021-04-24 20:27:25', 'includes/categories/38133.fit_lim.size_1050x.jpg', NULL, 1),
(19, 'GARDENING', NULL, 1, NULL, '2021-04-24 20:27:38', '2021-04-24 20:27:38', 'includes/categories/gardener-planting-flowers-gardening-skills-ss-featured.jpg', NULL, 1),
(20, 'HEALTH & FITNESS', NULL, 1, NULL, '2021-04-24 20:27:50', '2021-04-24 20:27:50', 'includes/categories/download (4).jpg', NULL, 1),
(21, 'HISTORY & GEOGRAPHY', NULL, 1, NULL, '2021-04-24 20:28:02', '2021-04-24 20:28:02', 'includes/categories/images (2).jpg', NULL, 1),
(22, 'HOUSE & HOME', NULL, 1, NULL, '2021-04-24 20:28:16', '2021-04-24 20:28:16', 'includes/categories/main-qimg-1014a076d79548736908680a63aadba5.jpg', NULL, 1),
(23, 'HUMOR', NULL, 1, NULL, '2021-04-24 20:28:26', '2021-04-24 20:28:26', 'includes/categories/download (5).jpg', NULL, 1),
(24, 'LANGUAGE ARTS & DISCIPLINES', NULL, 1, NULL, '2021-04-24 20:28:37', '2021-04-24 20:28:37', 'includes/categories/blog-image-20160108.jpg', NULL, 1),
(25, 'LAW', NULL, 1, NULL, '2021-04-24 20:28:49', '2021-04-24 20:28:49', 'includes/categories/download (6).jpg', NULL, 1),
(26, 'LITERARY COLLECTIONS', NULL, 1, NULL, '2021-04-24 20:29:02', '2021-04-24 20:29:02', 'includes/categories/download (7).jpg', NULL, 1),
(27, 'LITERARY CRITICISM', NULL, 1, NULL, '2021-04-24 20:29:13', '2021-04-24 20:29:13', 'includes/categories/download (8).jpg', NULL, 1),
(28, 'MATHEMATICS', NULL, 1, NULL, '2021-04-24 20:29:25', '2021-04-24 20:29:25', 'includes/categories/msc-mathematics_26.jpg', NULL, 1),
(29, 'MEDICAL', NULL, 1, NULL, '2021-04-24 20:29:34', '2021-04-24 20:29:34', 'includes/categories/medical.jpg', NULL, 1),
(30, 'MUSIC', NULL, 1, NULL, '2021-04-24 20:29:44', '2021-04-24 20:29:44', 'includes/categories/getty_860462652_396419.jpg', NULL, 1),
(31, 'NATURE & OUTDOORS', NULL, 1, NULL, '2021-04-24 20:29:56', '2021-04-24 20:29:56', 'includes/categories/istock_000057227368_small.jpg', NULL, 1),
(32, 'PERFORMING ARTS', NULL, 1, NULL, '2021-04-24 20:30:08', '2021-04-24 20:30:08', 'includes/categories/086-1024x768.jpeg', NULL, 1),
(33, 'PETS', NULL, 1, NULL, '2021-04-24 20:30:18', '2021-04-24 20:30:18', 'includes/categories/golden_retiver_cat_cropped.jpg', NULL, 1),
(34, 'PHILOSOPHY', NULL, 1, NULL, '2021-04-24 20:30:29', '2021-04-24 20:30:29', 'includes/categories/the-business-of-thinking-applying-practical-philosophy-to-decision_201910241458063.png', NULL, 1),
(35, 'PHOTOGRAPHY', NULL, 1, NULL, '2021-04-24 20:30:44', '2021-04-24 20:30:44', 'includes/categories/benefits-of-photography.jpg', NULL, 1),
(36, 'POETRY', NULL, 1, NULL, '2021-04-24 20:30:57', '2021-04-24 20:30:57', 'includes/categories/poetrywordcloud.jpg', NULL, 1),
(37, 'POLITICAL SCIENCE', NULL, 1, NULL, '2021-04-24 20:31:24', '2021-04-24 20:31:24', 'includes/categories/MA-Political-Science-Syllabus.jpg', NULL, 1),
(38, 'PSYCHOLOGY', NULL, 1, NULL, '2021-04-24 20:31:35', '2021-04-24 20:31:35', 'includes/categories/skills.png', NULL, 1),
(39, 'REFERENCE', NULL, 1, NULL, '2021-04-24 20:31:44', '2021-04-24 20:31:44', 'includes/categories/12-best-free-online-bibliography-and-citation-tools-1.jpg', NULL, 1),
(40, 'RELIGION & SPIRITUALITY', NULL, 1, NULL, '2021-04-24 20:31:55', '2021-04-24 20:31:55', 'includes/categories/Interfaith-globe-e1329560535864.jpg', NULL, 1),
(41, 'SCIENCE', NULL, 1, NULL, '2021-04-24 20:32:17', '2021-04-24 20:32:17', 'includes/categories/3v8PB95CCSn86e5fowthRAybW4ajSY18z2FfVPi2spk.jpeg', NULL, 1),
(42, 'SELF-HELP', NULL, 1, NULL, '2021-04-24 20:32:28', '2021-04-24 20:32:28', 'includes/categories/benefits-self-service.png', NULL, 1),
(43, 'SOCIAL SCIENCE', NULL, 1, NULL, '2021-04-24 20:32:41', '2021-04-24 20:32:41', 'includes/categories/GettyImages_862457080.0.jpg', NULL, 1),
(44, 'SPORTS & RECREATION', NULL, 1, NULL, '2021-04-24 20:32:57', '2021-04-24 20:32:57', 'includes/categories/071818-sports-equipment-recreation-gym-fitness-adobestock_190038155.jpeg', NULL, 1),
(45, 'STATIONERY', NULL, 1, NULL, '2021-04-24 20:33:09', '2021-04-24 20:33:09', 'includes/categories/stationery-design-min.jpg', NULL, 1),
(46, 'STUDY AIDS', NULL, 1, NULL, '2021-04-24 20:33:19', '2021-04-24 20:33:19', 'includes/categories/7b206bb93c9d4b422c6bde6f9dd19a3a20f55621.jpg', NULL, 1),
(47, 'TECHNOLOGY', NULL, 1, NULL, '2021-04-24 20:33:33', '2021-04-24 20:33:33', 'includes/categories/speed-internet-technology-background.jpg', NULL, 1),
(48, 'TOYS & ACTIVITIES', NULL, 1, NULL, '2021-04-24 20:33:46', '2021-04-24 20:33:46', 'includes/categories/photo-1515488042361-ee00e0ddd4e4.jpg', NULL, 1),
(49, 'TRANSPORTATION', NULL, 1, NULL, '2021-04-24 20:33:58', '2021-04-24 20:33:58', 'includes/categories/AdobeStock_244807532-2048x1024.jpeg', NULL, 1),
(50, 'TRAVEL', NULL, 1, NULL, '2021-04-24 20:34:07', '2021-04-24 20:34:07', 'includes/categories/ce-travel.jpg', NULL, 1),
(51, 'TRUE CRIME', NULL, 1, NULL, '2021-04-24 20:34:17', '2021-04-24 20:34:17', 'includes/categories/True-Crime-1-900x720.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('db8lnnqoofj80taj9uk2vno2b8rllu89', '::1', 1620297357, '__ci_last_regenerate|i:1620297356;_ci_previous_url|s:45:\"http://localhost/Project/books_bazzar/public/\";');

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(1, 'Love.Fish', '580 Darling Street, Rozelle, NSW', -33.861034, 151.171936, 'restaurant'),
(2, 'Young Henrys', '76 Wilford Street, Newtown, NSW', -33.898113, 151.174469, 'bar'),
(3, 'Hunter Gatherer', 'Greenwood Plaza, 36 Blue St, North Sydney NSW', -33.840282, 151.207474, 'bar'),
(4, 'The Potting Shed', '7A, 2 Huntley Street, Alexandria, NSW', -33.910751, 151.194168, 'bar'),
(5, 'Nomad', '16 Foster Street, Surry Hills, NSW', -33.879917, 151.210449, 'bar'),
(6, 'Three Blue Ducks', '43 Macpherson Street, Bronte, NSW', -33.906357, 151.263763, 'restaurant'),
(7, 'Single Origin Roasters', '60-64 Reservoir Street, Surry Hills, NSW', -33.881123, 151.209656, 'restaurant'),
(8, 'Red Lantern', '60 Riley Street, Darlinghurst, NSW', -33.874737, 151.215530, 'restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pk_id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `shortname` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT 'includes/images/products/default.jpg',
  `thumbnail_path` varchar(255) DEFAULT 'includes/images/products/default_thumb.jpg',
  `created_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `udpated_datetime` datetime DEFAULT NULL,
  `unit_quantity` int(11) DEFAULT NULL,
  `product_type` varchar(1) NOT NULL DEFAULT '0',
  `on_sale` varchar(1) NOT NULL DEFAULT '0',
  `unit_price` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `list_order_numb` int(11) DEFAULT NULL,
  `favorities` int(11) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `product_sku` text DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `discount_type` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `discount_percent` double DEFAULT NULL,
  `product_unit_id` int(11) DEFAULT NULL,
  `bussiness_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pk_id`, `name`, `shortname`, `description`, `image_path`, `thumbnail_path`, `created_datetime`, `udpated_datetime`, `unit_quantity`, `product_type`, `on_sale`, `unit_price`, `is_active`, `list_order_numb`, `favorities`, `tags`, `product_sku`, `product_category_id`, `is_featured`, `created_by`, `updated_by`, `discount_type`, `discount_amount`, `discount_percent`, `product_unit_id`, `bussiness_id`) VALUES
(1, 'The Plaza: The Secret Life of Americas Most Famous Hotel', 'Satow, JulieTwelve', 'Journalist Julie Satow\'s thrilling, unforgettable history of how one illustrious hotel has defined our understanding of money and glamour, from the Gilded Age to the Go-Go Eighties to today\'s Billionaire Row.\r\n\r\nFrom the moment in 1907 when New York millionaire Alfred Gwynne Vanderbilt strode through the Plaza Hotel\'s revolving doors to become its first guest, to the afternoon in 2007 when a mysterious Russian oligarch paid a record price for the hotel\'s largest penthouse, the eighteen-story white marble edifice at the corner of Fifth Avenue and 59th Street has radiated wealth and luxury.\r\n\r\nFor some, the hotel evokes images of F. Scott Fitzgerald frolicking in the Pulitzer Fountain, or Eloise, the impish young guest who pours water down the mail chute. But the true stories captured in THE PLAZA also include dark, hidden secrets: the cold-blooded murder perpetrated by the construction workers in charge of building the hotel, how Donald J. Trump came to be the only owner to ever bankrupt the Plaza, and the tale of the disgraced Indian tycoon who ran the hotel from a maximum-security prison cell, 7,000 miles away in Delhi.\r\n\r\nIn this definitive history, award-winning journalist Julie Satow not only pulls back the curtain on Truman Capote\'s Black and White Ball and The Beatles\' first stateside visit-she also follows the money trail. THE PLAZA reveals how a handful of rich, dowager widows were the financial lifeline that saved the hotel during the Great Depression, and how, today, foreign money and anonymous shell companies have transformed iconic guest rooms into condominiums that shield ill-gotten gains-hollowing out parts of the hotel as well as the city around it.\r\n\r\nTHE PLAZA is the account of one vaunted New York City address that has become synonymous with wealth and scandal, opportunity and tragedy. With glamour on the surface and strife behind the scenes, it is the story of how one hotel became a mirror reflecting New York\'s place at the center of the country\'s cultural narrative for over a century.', '/includes/books_images/plaza.jpg', 'includes/pdfs/SER421Lab6.pdf', '2021-04-25 23:30:46', NULL, 358, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'The Big Tiny: A Built-It-Myself Memoir', 'Williams, Dee', 'Part how-to, part personal memoir, The Big Tiny is an utterly seductive meditation on the benefits of slowing down, scaling back, and appreciating the truly important things in life.\r\n\r\nMore than ten years ago, a near-death experience abruptly reminded sustainability advocate and pioneer Dee Williams that life is short. So she sold her sprawling home and built an eighty-four-square-foot house - on her own, from the ground up. Today, Williams can list everything she owns on one sheet of paper, her monthly housekeeping bills amount to about eight dollars, and it takes her about ten minutes to clean the entire house. Adopting a new lifestyle left her with the ultimate luxury - more time to spend with friends and family - and gave her the freedom to head out for adventure at a moment\'s notice, or watch the clouds and sunset while drinking a beer on her (yes, tiny) front porch.', '/includes/books_images/bigtiny.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 304, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'Public Toilet Design (Second Edition)', 'Mola, Francesc Zamora', 'Public Toilet Design presents a selection of 130 very diverse public toilet designs -- 50 of them installed over the last two years -- in which toilets enjoy special status as a vehicle for various artistic and cultural expressions, corporate values and the needs of different social groups.\r\n\r\nThe book covers as:\r\n\r\nHistory and evolution of the public toilet\r\nPlaces of leisure: e.g., restaurants, bars, clubs, malls, gyms, theaters, museums, stadiums\r\nCommuting spaces: e.g., airports, train stations, boats, rest areas\r\nPublic residences: e.g., hotels, spas, geriatric residences\r\nWorking Environments: e.g., banks, offices, public administrations\r\nMaterials and accessories used\r\nErgonomics: adaptations for users, including the elderly, handicapped, diaper-changing stations.\r\nLocations from around the world are featured, including restaurants, bars, malls, schools, museums, hotels, gyms, cinemas, boutiques, businesses, stadiums, airports, train stations, street lavatories, and park restrooms.\r\n\r\nAmong the 50 new designs -- and don\'t miss the transparent \"Don\'t Miss a Sec\" sidewalk toilet -- are the following:\r\n\r\nCentral Library Rotterdam, The Netherlands\r\nSIDE Hotel, Hamburg, Germany\r\nRain Restaurant, Toronto, Canada\r\nRoman Tabernae at the Trajan\'s Forum, Rome\r\nRizhao Public Bathroom, Rizhao, China\r\nMid-City Gym, New York City\r\nPublic Toilets at the Port of Dubrovnik, Croatia\r\nYoga Deva, Gilbert, Arizona\r\nKros Urinal, London, UK\r\nRestrooms of the New Hotel, Athens, Greece.\r\nMore than 600 full-color photographs illustrate the designs in detail and each project is accompanied by descriptive text in five languages. Plans and detailed descriptions show the transformation of the public toilet during its planning, development and construction stages.\r\n\r\nDesigners, architects, students and the purely inquisitive will find Public Toilet Design fascinating and informative.', '/includes/books_images/toiletdesign.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 288, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(4, 'Farmhouse Revival', 'Daley, Susan', 'The American farmhouse represents integrity, ingenuity, self-reliance, and agricultural heritage. Today, the farmhouse is a rare survivor from another era that can be found sensitively reinterpreted by artists, carefully preserved by original owners, or functionally maintained by farm-to-table artisanal food producers. In more than 200 stunning images, Steve Gross and Sue Daley have painstakingly photographed 20 of the most beautifully preserved farmhouses in the northeast. Some are working farmhouses that have been passed down in families for generations; some have been made productive again by a whole new generation of organic farmers. Still others have been rescued from neglect and restored to their former splendor. Each house is accompanied by an overview of the farmhouse owner and how he or she maintains the property. Fans of the farm-to-table movement as well as historic architecture and preservation will find this an intriguing and beautiful read.', '/includes/books_images/farmhouserevival.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 192, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(5, 'The Most Beautiful Universities in the World', 'Serroy, Jean', 'The Most Beautiful Universities in the World invites readers to discover more than 20 hallowed halls of higher learning, from the University of Bologna—the Western world’s first university, founded in 1088—to the Sorbonne in France to Cambridge University in England to Yale University in the United States and many other architecturally significant universities in between. Following his acclaimed books on the world’s most beautiful libraries and opera houses, photographer Guillaume de Laubier now turns his lens toward a new aspect of world heritage. Sumptuous photographs showcase amphitheaters, libraries, reception halls, and hidden gardens, while the text describes the history of each campus, its architecture, research disciplines, and reference collections.', '/includes/books_images/universitiees.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 239, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(6, 'Home', 'DeGeneres, Ellen', 'Ellen DeGeneres has bought and renovated nearly a dozen homes over the last twenty-five years, and describes her real-estate and decorating adventures as \"an education.\" She has long cared deeply about design: \"I think I wanted to be an interior designer when I was thirteen.\"\r\n\r\nThis deluxe edition of Home is printed on extremely high quality paper, printed on a sheet-fed press, and bound in a real cloth covered case with a tipped in photo of Ellen DeGeneres\' living room featuring her Picasso.\r\n\r\nIn Home, DeGeneres will, for the first time, share her passion for home design and style. She believes, \"You don\'t have to have money to have good taste,\" and she is eager to share what she has learned over the years. DeGeneres offers a personal look at every room in each of her homes. Included are seven of her homes past and present, from the famous \"Brody House\" up to her current homes, and she offers tips and advice on what each house taught her. An added bonus is a look at the homes of her friends and collaborators-some of the finest designers in the country. They share their advice on home design, furnishings, as well as a glimpse at their awe-inspiring rooms.\r\n\r\nFull of beautiful photographs, this book is a treasure trove of amazing California architecture, unique home furnishings, breathtaking art, and hundreds of ideas on putting together the home you\'ve always dreamed of.', '/includes/books_images/home.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 304, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(7, 'The American Townhouse', 'Murphy, Kevin D.', 'The American townhouse is one of the most popular house types in urban America. This comprehensive volume tours the reader through 25 stunning examples of townhouses and rowhouses from Boston to Brooklyn, St. Louis to San Francisco. Radek Kurzaj\'s striking photographs complement a fascinating text by nationally recognized historic-house expert Kevin Murphy about the townhouse as cultural phenomena, as well as the unique design peculiarities, construction records, and ownership histories of these 25. Included are some of the country\'s finest townhouses, including the famed Nathaniel Russell House in Charleston; Teddy Roosevelt\'s New York birth house; the Payne and Helen Hay Whitney House in New York; and the Glenn and Ida Moore House in Rancho Santa Fe. An important book for townhouse dwellers and a captivating read for anyone interested in the history of how we live in America, this book will be widely regarded as a primary reference on this important subject.', '/includes/books_images/townhouse.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 240, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(8, '150 Best New Bathroom Ideas', 'Mola, Francesc Zamora', 'For homeowners and architects alike, an irresistible collection of hundreds of inspirational full-color profiles of 150 of the most exciting contemporary bathroom designs.\r\n\r\nShowcasing an extensive collection of designs and style, captured in stunning full-color photos, 150 Best New Bathroom Ideas provides an in-depth review of outstanding bathroom designs from internationally renowned architects and designers.\r\n\r\nHere are the most attractive, functional, and cost-effective bathroom concepts from around the world. Practical yet beautiful and stylish, 150 Best New Bathroom Ideas includes innovative ideas for lighting, floor, wall, and window treatments, and for showers, toilets, sinks, and bathtubs.\r\n\r\nAn essential design and decorating reference, 150 Best New Bathroom Ideas covers the diversity of current trends and is an inspirational source for homeowners, designers, interior decorators, and architects.', '/includes/books_images/bathroomideas.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 480, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(9, 'FARMHOUSE REVIVAL', 'Daley, Susan and Gross, Steve', 'The American farmhouse represents integrity, ingenuity, self-reliance, and agricultural heritage. Today, the farmhouse is a rare survivor from another era that can be found sensitively reinterpreted by artists, carefully preserved by original owners, or functionally maintained by farm-to-table artisanal food producers. In more than 200 stunning images, Steve Gross and Sue Daley have painstakingly photographed 20 of the most beautifully preserved farmhouses in the northeast. Some are working farmhouses that have been passed down in families for generations; some have been made productive again by a whole new generation of organic farmers. Still others have been rescued from neglect and restored to their former splendor. Each house is accompanied by an overview of the farmhouse owner and how he or she maintains the property. Fans of the farm-to-table movement as well as historic architecture and preservation will find this an intriguing and beautiful read.', '/includes/books_images/farmhouserevival.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 240, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(10, 'SAVING CENTRAL PARK: A HISTORY AND A MEMOIR', 'Rogers, Elizabeth Barlow', 'The story of how one woman\'s long love affair with New York\'s Central Park led her to organize its rescue from a state of serious decline, returning it to the beautiful place of recreational opportunity and spiritual sustenance that it is today.\r\n\r\nElizabeth Barlow Rogers opens with a quick survey of her early life--a middle-class upbringing in Texas; college at Wellesley, marriage, a master\'s degree in city planning at Yale. And then her move to New York, where she starts a family and, when she finds being a mother and a housewife is not enough, pours herself into the protection and enhancement of the city\'s green spaces.\r\n\r\nInterwoven into her own story is a comprehensive history of Central Park: its design and construction as a scenic masterpiece; the alterations of each succeeding era; the addition of numerous facilities for sports and play; and finally, the \"anything goes\" phase of the 1960s and 70s, which was often fun but nearly destroyed the park.\r\n\r\nThe two narratives continue to entwine as she finds a job in the administration of Central Park, founds the Central Park Conservancy, and transforms both the park and herself--a transformation that has led to the writing of her many books, to travels that have taken her to parks and gardens around the world, and to solidifying the prestige of one of New York\'s most conspicuous landmarks.', '/includes/books_images/saveingcentralpark.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 336, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 4, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(11, 'Signs of Resistance: A Visual History of Protest in America', 'Siegler, Bonnie', 'From British rule to women\'s suffrage to the Vietnam War to Black Lives Matter to the actions of our forty-fifth president and more, Signs of Resistance is an inspiring, optimistic, and visually galvanizing history lesson about the power people have when they take to the streets and stand up for what\'s right.\r\n', '/includes/books_images/signofresistance.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 240, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 5, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(12, 'Churchill: The Statesman as Artist', 'Cannadine, David', 'Across almost 50 years, Winston Churchill produced more than 500 paintings. His subjects included his family homes at Blenheim and Chartwell, evocative coastal scenes on the French Riviera, and many sun-drenched depictions of Marrakesh in Morocco, as well as still life pictures and an extraordinarily revealing self-portrait, painted during a particularly troubled time in his life. In war and peace, Churchill came to enjoy painting as his primary means of relaxation from the strain of public affairs.\r\n\r\nIn his introduction to Churchill: The Statesman as Artist, David Cannadine provides the most important account yet of Churchill\'s life in art, which was not just a private hobby, but also, from 1945 onwards, an essential element of his public fame. The first part of this book brings together for the first time all of Churchill\'s writings and speeches on art, not only \"Painting as a Pastime,\" but his addresses to the Royal Academy, his reviews of two of the Academy\'s summer exhibitions, and an important speech he delivered about art and freedom in 1937.\r\n\r\nThe second part of the book provides previously uncollected critical accounts of his work by some of Churchill\'s contemporaries: Augustus John\'s hitherto unpublished introduction to the Royal Academy exhibition of Churchill\'s paintings in 1959, and essays and reviews by Churchill\'s acquaintances Sir John Rothenstein and Professor Thomas Bodkin, and the art critic Eric Newton. The book is lavishly illustrated with reproductions of many of Churchill\'s paintings, some of them appearing for the first time. Here is Churchill the artist more fully revealed than ever before.', '/includes/books_images/churchilhill.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 172, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 5, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(13, 'Draw Your Weapons', 'Sentilles, Sarah', 'A single book might not change the world. But this utterly original meditation on art and war might transform the way you see the world - and that makes all the difference.\r\n\r\nThrough a dazzling combination of memoir, history, reporting, visual culture, literature, and theology, Sarah Sentilles offers an impassioned defense of life lived by peace and principle. It is a literary collage with an urgent hope at its core: that art might offer tools for remaking the world.\r\n\r\nIn Draw Your Weapons, Sentilles tells the true stories of Howard, a conscientious objector during World War II, and Miles, a former prison guard at Abu Ghraib, and in the process she challenges conventional thinking about how war is waged, witnessed, and resisted. The pacifist and the soldier both create art in response to war: Howard builds a violin; Miles paints portraits of detainees. With echoes of Susan Sontag and Maggie Nelson, Sentilles investigates images of violence from the era of slavery to the drone age. In doing so, she wrestles with some of our most profound questions: What does it take to inspire compassion? What impact can one person have? How should we respond to violence when it feels like it can’t be stopped?', '/includes/books_images/drawyourweapon.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 304, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 5, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(14, 'The Art of Brush Lettering: A Stroke-by-Stroke Guide to the Practice and Techniques of Creative Lettering and Calligraphy', 'Klapstein, Kelly', 'A complete guide to brush pen lettering, The Art of Brush Lettering takes a meditative approach to creating beautiful letterforms, plus freestyle lettering, faux calligraphy, and special effects.\r\n\r\nInstagram brush lettering artist Kelly Klapstein (@kellycreates) takes a simple, serene approach to teaching the art of creating beautiful letterforms with easy-to-use and richly colored brush pens. Kelly begins by guiding you through the tools you’ll be using and the best ways to position pen, hand, and paper.\r\n\r\nShe goes on to demonstrate a range of basic strokes and drills, detailed tutorials for both lowercase and uppercase alphabets, and lessons on freestyle lettering, faux calligraphy, and a variety of special effects.\r\n\r\nAlso included for practice and improvement are exemplars for tracing and worksheets for basic strokes and drills, lowercase and uppercase letters, punctuation, and numerals for both large and small brush pens, so you\'ll never have to look far to find the best examples to practice from.', '/includes/books_images/artofbrush.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 160, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(15, 'The Joy of Lettering: A Creative Exploration of Contemporary Hand Lettering, Typography and Illustrated Typeface', 'Escalera, Jaclyn', 'Gabri Joy Kirkendall (Creative Lettering & Beyond) and Jaclyn Escalera guide readers through a dynamic exploration of the craft, focusing on typography and illuminated letters and numbers using pencil, ink, and marker in a variety of styles and themes. From there, artists will learn how to create letters using a variety of alternative materials and media, such as watercolor, gouache, and wood. Easily customized DIY projects invite artists to finesse their skills as they learn to letter on different types of surfaces while creating lettered murals, stationery, and signage. Packed with creative techniques and easy-to-follow lessons, this all-inclusive resource is a must-have for anyone who wants to learn or grow their expertise in the art of hand lettering.', '/includes/books_images/joyoflettering.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 144, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(16, 'Forty Ways to Write I Love You', 'Hughes, Lana', 'For globe-trotting romantics and lovers of hand-lettering the world over, this is an activity book like no other. Expert letterer Lana Hughes has created 40 unique and beautiful designs of the heart-warming words \"I Love You\" with a twist - they are each written in a different language.\r\n\r\nThere is plenty of room for you to practise copying the designs for yourself, and if you need a little more help with technique, each \"I love you\" is accompanied by a simple lesson that can also be tried out in the book.', '/includes/books_images/fortywaystowrite.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 176, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(17, 'Hand-Lettered Life (Scratch & Create)', 'Smith, Shandra', 'Adult coloring books are so 2015. Grab your stylus and dive into the awesome world of scratch art! Each art page in Scratch & Create: Hand-Lettered Life is covered in a layer of silver, metallic coating. With the provided tool, you will etch, scrape, and scratch it away to reveal beautiful scenes beneath.\r\n\r\nWhat better way to unwind after a stressful day than with the simple, meditative, satisfying act of creating art? Scratch & Create: Hand-Lettered Life comes with 20 delightful, original postcard-style designs by Shandra Smith. Each page is easy to tear out, so once you\'ve completed your masterpiece, you can display, frame, or even mail them. Grab your stylus and get scratching today! You\'ll definitely be glad that you did.', '/includes/books_images/handletteredlife.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 50, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(18, 'Learn to Create Gorgeous Metallic Notes', 'Covington, Lauren', 'Inspired by beautiful hand-lettered type, talented designer Lauren Covington shares techniques for creating uppercase and lowercase styles to create custom postcards, with a hint of glamour. Take what you have learned and personalize journals, school supplies, gift tags, or anything that you would like to embellish with fantastic metallic hand lettering. With beautiful typography and simple tutorials, you\'ll find endless ways to decorate with type and find joy in discovering the happy imperfections unique to your own style.', '/includes/books_images/learntocreate.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 31, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(19, 'I Love Hand Lettering (Scratch & Create)', 'Smith, Shandra', 'Adult coloring books are so 2015. Grab your stylus and dive into the awesome world of scratch art! Each art page in Scratch & Create: I Love Hand Lettering is covered in a layer of silver, metallic coating. With the provided tool, you will etch, scrape, and scratch it away to reveal beautiful scenes beneath.\r\n\r\nWhat better way to unwind after a stressful day than with the simple, meditative, satisfying act of creating art? Scratch & Create: I Love Hand Lettering comes with 20 delightful, original postcard-style designs by Shandra Smith. Each page is easy to tear out, so once you\'ve completed your masterpiece, you can display, frame, or even mail them. Grab your stylus and get scratching today! You\'ll definitely be glad that you did.', '/includes/books_images/ilovehand.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 50, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(20, 'Hand-Lettered Home: DIY Wood Signs for Farmhouse Decor', 'Bryan, Caroline', 'You can create your own lettering art to personalize your wall decor and add modern farmhouse style to every area of your home. Even if you’re new to hand lettering, you’ll find it easier than you ever imagined with Caroline Bryan\'s Hand-Lettered Home.', '/includes/books_images/handlettereddiy.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 176, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(21, 'DANGEROUS MOVES: POLITICS AND PERFORMANCE IN CUBA', 'Fusco, Coco', 'Examining performance and politics in post-revolutionary Cuba, Dangerous Moves challenges the understanding of performance art and political engagement through a sustained analysis of the contemporary experience in Cuba. Coco Fusco analyzes the ways that the Cuban state has wielded influence over artists in recent times, arguing that in a context in which overt political speech is subject to censorship, the language of performance emerges as the favored means of social commentary.\r\n\r\nFocusing on a range of performative practices in visual art, music, poetry, and political activism, Fusco examines the relationship between the abject body in performance and the greater body politic of a state officially defined as revolutionary yet seeking to limit and constrain dissent. Dangerous Moves is a key addition to the canon of writing on contemporary performance art.', '/includes/books_images/dangerousmoves.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 192, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 7, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(22, 'Chibi Manga: Irresistible!', 'Minguet, Eva', NULL, '/includes/books_images/chibimanga.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 8, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(23, 'Why Comics? - From Underground to Everywhere', 'Chute, Hillary', NULL, '/includes/books_images/whycomics.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 8, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(24, 'Doodling for Tree Huggers & Nature Lovers', 'Correll, Gemma', NULL, '/includes/books_images/doodling.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 8, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(25, 'The Art of Smurfs: The Lost Village', 'Miller-Zarneke, Tracey', NULL, '/includes/books_images/artofsmurfs.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 8, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(26, 'The Art of Being Bill: Bill Murray and the Many Faces of Awesome', 'Croft, Ezra', 'The Art of Being Bill is the first illustrated collection of Bill Murray, highlighting the star like you’ve never seen him before: Bill Murray at The Last Supper, Bill Murray as an Indian god, Bill Murray as a knight, Bill Murray as Superman, and numerous other artistic tributes that will amuse and inspire you.\r\n', '/includes/books_images/artofbeingbil.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 176, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(27, 'William Powell Frith: The Peoples Painter', 'Green, Richard', 'William Powell Frith (1819-1909), famous for his picture The Derby Day which normally hangs at Tate Britain, was the most celebrated painter of modern-life subjects in mid-Victorian England and the most popular British artist of that time. Published to mark the bicentenary of his birth and in association with an exhibition at the Mercer Art Gallery, Harrogate, this richly illustrated volume of essays offers fresh and fascinating perspectives on Frith\'s career and context.\r\n', '/includes/books_images/williampwelfrith.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 192, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(28, 'David Gill: Designing Art', 'Etherington-Smith, Meredith', 'David Gill reveals the famed gallerist’s opinions of and influence on the world of art and design. He presents the works of artists, sculptors, and designers he admires, champions, and nurtures, among them Donald Judd, Mattia Bonetti, Zaha Hadid, Grayson Perry, Barnaby Barford, Fredrikson Stallard, Jorge Pardo, and the Campana brothers. Structured chronologically and divided by location, the book includes never-before-seen photographs of Gill’s galleries, his award-winning exhibitions, and his own homes: a converted handbag factory south of the River Thames; the 18th-century Albany apartments in London’s Mayfair; and a restored palazzo in Malta’s Valetta. Seen throughout are the designs of the many world-famous artists he has represented over his 25 years at the forefront of the contemporary art and design world. The book also features a selection of his curated interiors and never-before-published glimpses of the private collections and homes of the numerous internationally renowned collectors with whom Gill regularly collaborates.\r\n', '/includes/books_images/designingart.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 240, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(29, 'Superflex: One Two Three Swing (The Hyundai Commission)', 'Hyslop, Donald', 'Since Tate Modern opened in London in 2000, its Turbine Hall has hosted memorable installations; the way artists have interpreted this vast industrial space has revolutionized public perceptions of contemporary art. The annual Hyundai Commission, now in its third year, is by the Danish collective SUPERFLEX, founded in 1993 in Copenhagen by Bjornstjerne Christiansen, Jakob Fenger, and Rasmus Nielsen. Migration, alternative energy, and the power of global capital are just some of the motives behind their highly engaging and often humorous work; they are best known for their playfully subversive installations and films. Created in close collaboration with SUPERFLEX, this book features a fully illustrated survey of their work and an in-depth conversation between the artists and curator Donald Hyslop.\r\n', '/includes/books_images/superflees.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 160, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(30, 'LAYOUT WORKBOOK: A REAL-WORLD GUIDE TO CREATING POWERFUL PIECES', 'Cullen, Kristen', 'An inspired resource for creating meaningful design, Layout Workbook is one of five volumes in Rockport\'s series of practical and inspirational books that cover the fundamental areas of graphic design. In this edition, author Kristin Cullen tackles the often perplexing job of nailing down a layout that works. More than a collection of great examples, this book is a valuable resource for students, designers, and creative professionals who seek design understanding and inspiration. The book illuminates the broad category of layout, communicating specifically what it takes to design with excellence. It also addresses the how and why of the creative process. Cullen approaches layout with a series of step-by-step fundamental chapters addressing topics such as design function, inspiration, process, intuition, structure, organization, the interaction of visual elements, typography, and design analysis.\r\n', '/includes/books_images/layoutworkbook.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 240, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 10, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(31, 'Layout Workbook: A Real-World Guide to Creating Powerful Pieces', 'Cullen, Kristen', 'An inspired resource for creating meaningful design, Layout Workbook is one of five volumes in Rockport\'s series of practical and inspirational books that cover the fundamental areas of graphic design. In this edition, author Kristin Cullen tackles the often perplexing job of nailing down a layout that works. More than a collection of great examples, this book is a valuable resource for students, designers, and creative professionals who seek design understanding and inspiration. The book illuminates the broad category of layout, communicating specifically what it takes to design with excellence. It also addresses the how and why of the creative process. Cullen approaches layout with a series of step-by-step fundamental chapters addressing topics such as design function, inspiration, process, intuition, structure, organization, the interaction of visual elements, typography, and design analysis.\r\n', '/includes/books_images/layoutworkbook.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 240, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 11, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(32, 'Fashion Design Studio', 'Hart, Christopher', 'This fun introduction to design opens the world of style to budding fashionistas. Bestselling art instructor Chris Hart not only gives step-by-step instructions on drawing figures from many points of view and in varying poses, he explains the tricks of the trade: how to \"dress\" your figure; render color, texture, and print; and create accessories, hairstyles, and makeup looks. An overview of tools, materials, and essential skills will help you bring your creative vision to life\r\n', '/includes/books_images/fashiondesignstudio.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 127, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 11, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(33, 'Timeless Beadwork Designs', 'Rutledge, Cynthia', 'One of the foremost names in beadwork creates 15 gorgeous, all-new projects. Widely regarded as one of today\'s finest teachers of beading, Cynthia Rutledge reveals her creative process and presents stunning designs that explore color, three-dimensional form, and mixed media. Meant for intermediate-to-advanced-level beaders, the pieces include a classic Renaissance Cameo Necklace, a pearl-and-glass Florentine Rosette Cuff, and Hebe\'s Floral Earrings. Each project offers historical perspective on the design, including an inspirational painting, instructions, and an explanation of the required techniques.\r\n', '/includes/books_images/timelessbeadwork.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 188, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 11, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(34, 'Creative Doodling and Beyond', 'Corfee, Stephanie', 'Who among us doesn\'t simply love to doodle--or, at the very least, doodle to pass the time during long meetings or classes? Now you can learn the fine art of doodling while exercising your creativity at the same time. Creative Doodling & Beyond features a fun variety of projects, prompts, exercises, and ideas to get your doodling juices flowing, while also providing inspiration for how to use your doodles creatively. Artists will begin with some warm-up exercises and basic drawing instruction. From there, they\'ll embark on creating projects with doodles that get progressively more advanced through the book, starting with a gift tag and ending with elaborate doodling projects on wood and fabric.', '/includes/books_images/creativedoodling.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 144, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 11, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(35, 'The Complete Book of Chalk Lettering: Create and Develop Your Own Style', 'McKeehan, Valerie', 'Ubiquitous at boutiques and cafes, on Etsy and Pinterest, in stationery and home decor, the art of chalk lettering is hotter than ever. Valerie McKeehan, an Etsy standout whose work has been featured in magazines and websites from Good Housekeeping to RealSimple.com, teaches us everything we need to know to create gorgeous hand-drawn chalk designs. The book is also a practice space, with three foldout \"chalkboards\" - the inside cover and foldout back cover are lined with blackboard paper.\r\n\r\nIn over 60 lessons, learn the ABCs of lettering (literally) and basic styles: serif, sans serif, and script. Next, how to lay out a design, combine various styles into one cohesive piece, add shadows and dimension. Master more advanced letter styles, from faceted to ribbon to \"vintage circus.\" Use banners, borders, flourishes. And finally, 12 projects to show off your newfound skills: including a Winter Wonderland Snow Globe; a smartphone-themed birthday card to text friends and family; a one-of-a-kind party invitation to create, photograph, and mail; and a bake sale sign guaranteed to put everyone who sees it in the mood for a cupcake!', '/includes/books_images/bookofchartlettering.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 171, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 11, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(36, 'The Steal Like an Artist Journal', 'Kleon, Austin', NULL, '/includes/books_images/steallikeanartist.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 11, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(37, 'Electric Dreams: Designing for the Digital Age', 'Redhead, David', 'This riveting analysis looks at the relationship between people, designers, and electronic products. It speculates on how, in the future, cell phones, personal computers, audio equipment, and televisions may merge into one all-purpose tool, blending into the fabric of our homes and offices or even disappearing into our bodies. David Redhead focuses on the role of designers in shaping this brave new world.\r\n', '/includes/books_images/electricdreams.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 128, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 11, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(38, 'The Oliver Stone Experience', 'Seitz, Matt Zoller', 'Stone himself serves as guide to this no-holds-barred retrospective - an extremely candid and comprehensive monograph of the renowned and controversial writer, director, and cinematic historian in interview form.\r\n', '/includes/books_images/oliverstone.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 400, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(39, 'Better Living Through Criticism: How to Think About Art, Pleasure, Beauty, and Truth', 'Scott, A. O.', 'Few could explain, let alone seek out, a career in criticism. Yet what A.O. Scott shows in Better Living Through Criticism is that we are, in fact, all critics: because critical thinking informs almost every aspect of artistic creation, of civil action, of interpersonal life. With penetrating insight and warm humor, Scott shows that while individual critics--himself included--can make mistakes and find flaws where they shouldn\'t, criticism as a discipline is one of the noblest, most creative, and urgent activities of modern existence.\r\n\r\nUsing his own film criticism as a starting point--everything from his infamous dismissal of the international blockbuster The Avengers to his intense affection for Pixar\'s animated Ratatouille--Scott expands outward, easily guiding readers through the complexities of Rilke and Shelley, the origins of Chuck Berry and the Rolling Stones, the power of Marina Abramovich and \'Ode on a Grecian Urn.\' Drawing on the long tradition of criticism from Aristotle to Susan Sontag, Scott shows that real criticism was and always will be the breath of fresh air that allows true creativity to thrive. \"The time for criticism is always now,\" Scott explains, \"because the imperative to think clearly, to insist on the necessary balance of reason and passion, never goes away.\"', '/includes/books_images/betterlivingthroughcritism.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 128, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(40, 'Broadsword Calling Danny Boy: Watching Where Eagles Dare', 'Dyer, Geoff', 'Geoff Dyer has loved Where Eagles Dare since childhood. It is both a thrillingly realized Alpine World War II adventure with tough, compelling acting from its two great stars, Richard Burton and Clint Eastwood, and a flippant travesty, reducing the central disaster in Europe\'s modern history to a series of huge explosions and peopled by campy SS officers.\r\n     As he did in Zona--which took on Andrei Tarkovsky\'s Stalker--in Broadsword Calling Danny Boy, Dyer gives us a scene-by-scene reaction to and reading of the film. And perhaps as only he can, the author both extols and denigrates--lovingly and entertainingly no matter which way he falls--this acme of the late \'60s action movie.', '/includes/books_images/broadsword.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 121, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(41, 'The Incomplete History of Secret Organizations', 'Hachette', 'This mysterious illustrated tie-in to Netflix\'s award-winning A Series of Unfortunate Events--featuring an introduction by Count Olaf\'s legal representative, Neil Patrick Harris--shares insider secrets about the Baudelaire family and the making of the show.\r\n\r\nIn this collector\'s companion you will discover never-before-seen photographs, never-before-told stories, and never-before, revealed secrets spanning all three seasons of the hilariously twisted, critically acclaimed hit series. You will encounter original concept art, annotated script excerpts, and interviews with the creative team and all-star cast, as well as glossaries, recipes, lyric sheets, hidden Easter eggs, shocking backstories, and suspicious pages from the titular tome, unredacted, and revealed here for the first time.', '/includes/books_images/incomplete histroy.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 208, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(42, 'Block Adventures: Incredible Maps and Games to Create and Explore in Minecraft', 'Kearney, Kirsten', 'Explore the best stories and quests in Minecraft.\r\n\r\nMinecraft is one of the world\'s most inventive and flexible gaming platforms, offering players endless opportunities for exploring and building virtual worlds. Today, Minecraft is far more than a single game: players can now create their own games - called Adventure Maps - that anyone may enter and explore. This mode allows builders to construct beautiful and imaginative lands that are self-contained games for single and/or multiple players, truly unlocking thousands of unique possibilities for the Minecraft community.\r\n\r\nWith more than thirty captivating games and scenarios, Block Adventures will appeal to players at every level of expertise with tutorials and step-by-step guides that teach you how to design and build your own adventures.', '/includes/books_images/blockadventure.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 256, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(43, 'Fractal 3D Magic', 'Pickover, Clifford A.', 'This groundbreaking 3D showcase offers a rare glimpse into the dazzling world of computer-generated fractal art. Prolific polymath Clifford Pickover introduces the collection, which provides background on everything from the classic Mandelbrot set, to the infinitely porous Menger Sponge, to ethereal fractal flames. The following eye-popping gallery displays mathematical formulas transformed into stunning computer-generated 3D anaglyphs. More than 200 intricate designs, visible in three dimensions thanks to the enclosed 3D glasses, will engross math and optical illusions enthusiasts alike.\r\n', '/includes/books_images/fractal3dmagic.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 160, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(44, 'Block Wonders: How to Build Super Structures in Minecraft', 'Kearney, Kirsten', 'Block Wonders presents thirty-four building projects by the world\'s most talented Minecraft masters, ranging from the Egyptian pyramids at Giza to the space shuttle. Included are historic landmarks, modern structures, transportation-related projects, fantastic creatures, and imagined wonders. Master builders offer valuable tips, as well as step-by-step tutorials on techniques for constructing and detailing structures in many different styles. A head-spinning tour of amazing MInecraft productions filled with useful information, Block Wonders will appeal to builders at every level of expertise, from novices to experts.\r\n', '/includes/books_images/blockwonders.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 256, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(45, 'Cultural Insurrection: A Manifesto for Arts, Agriculture, and Natural Wine', 'Nossiter, Jonathan', 'What if, ten years from now, an artist--a filmmaker, for example--will have become as marginal and anachronistic as a blacksmith? What if the actors in the cultural world are on the brink of extinction, not about to disappear like prehistoric animals, but worse--submitting to the status quo? Absorbed by a marketplace that increasingly devalues true artistic work?\r\n\r\nIn Cultural Insurrection, award-winning filmmaker and sommelier Jonathan Nossiter considers these questions and offers a solution inspired by the rebellious, innovative figures transforming the way we produce and consume wine. This new generation of artisans, working closely with the earth to create exceptional natural wines, has assumed the role of dissenters that artists have abandoned, and we should look to them in order to revitalize contemporary art.', '/includes/books_images/culturalinsurrection.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 306, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(46, 'The Art of Smurfs: The Lost Village', 'Miller-Zarneke, Tracey', 'Based on the classic Smurfs comic books by Belgian artist Peyo, the beloved blue creatures come to life in Sony Pictures Animation\'s action-packed animated story of a young Smurf\'s search for the legendary Smurf Village, and her true purpose. Smurfette (Demi Lovato), sets out on her grand adventure accompanied by her brothers, Brainy (Danny Pudi), Hefty (Joe Manganiello), and Clumsy (Jack McBrayer), undertaking a wild journey full of danger and discovery. The Art of Smurfs presents hundreds of storyboards, character design, and location concept pieces. With a foreword by Veronique Culliford, daughter of Pierrot \"Peyo\" Culliford, this insider\'s guide celebrates her father\'s cherished Smurfs and provides a glimpse into the creative process that turned his popular comics into a feature-length, animated film.\r\n', '/includes/books_images/artofsmurfs.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 157, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(47, 'Draw 100 Things to Make You Happy: Step-by-Step Drawings to Nourish Your Creative Self', 'Hart, Christopher', 'Best-selling author Christopher Hart has come up with 100 ways to make you happy! In this book he shows you how to draw dozens of inspiring subjects, some of which are fun and exciting, and some of which are calmly meditative. They range from skiing down the slopes to sharing a moment on a moonlit night to playing with a puppy. If it makes you happy, it\'s in here, and Christopher Hart will shows you how to draw it.\r\n', '/includes/books_images/draw100things.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 144, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `products` (`pk_id`, `name`, `shortname`, `description`, `image_path`, `thumbnail_path`, `created_datetime`, `udpated_datetime`, `unit_quantity`, `product_type`, `on_sale`, `unit_price`, `is_active`, `list_order_numb`, `favorities`, `tags`, `product_sku`, `product_category_id`, `is_featured`, `created_by`, `updated_by`, `discount_type`, `discount_amount`, `discount_percent`, `product_unit_id`, `bussiness_id`) VALUES
(48, 'Fabulous Figures (I Heart Drawing)', 'Davenport, Jane', 'For aspiring artists, drawing people can be intimidating - but it doesn’t have to be. Over years working as a fashion illustrator, Jane Davenport devised her own method of creating in-proportion figures. Her clever core technique involves using equal-size hearts to build the body’s structure. And Jane’s results have been astounding: her students go from “I can’t draw a stick figure” to producing gorgeous, well-proportioned illustrations. After laying out the basics, her imaginative guide walks you through working with different mediums; drawing the head, face, clothing, hair, and features; and constructing figures inspired by fashion, fantasy, life drawing, and more.\r\n', '/includes/books_images/fabulousfigures2.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 140, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(49, 'The Art of Brush Lettering: A Stroke-by-Stroke Guide to the Practice and Techniques of Creative Lettering and Calligraphy', 'Klapstein, Kelly', 'A complete guide to brush pen lettering, The Art of Brush Lettering takes a meditative approach to creating beautiful letterforms, plus freestyle lettering, faux calligraphy, and special effects.\r\n\r\nInstagram brush lettering artist Kelly Klapstein (@kellycreates) takes a simple, serene approach to teaching the art of creating beautiful letterforms with easy-to-use and richly colored brush pens. Kelly begins by guiding you through the tools you’ll be using and the best ways to position pen, hand, and paper.\r\n\r\nShe goes on to demonstrate a range of basic strokes and drills, detailed tutorials for both lowercase and uppercase alphabets, and lessons on freestyle lettering, faux calligraphy, and a variety of special effects.\r\n\r\nAlso included for practice and improvement are exemplars for tracing and worksheets for basic strokes and drills, lowercase and uppercase letters, punctuation, and numerals for both large and small brush pens, so you\'ll never have to look far to find the best examples to practice from.', '/includes/books_images/artofbrush.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 160, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(50, 'My Fashion: A Sketchbook for Artists, Designers, and Fashionistas (Dream, Draw, Design)', 'Karman, Bijou', 'You know you have a flair for fashion, style, and putting a look together - now you have the perfect sketchbook to try out your ideas and prove it! Fashion illustrator Bijou Karman has provided the faces, figures, and prompts - you fill in the stylish details. Jeans? Jewelry? Heels? How about a cute bathing suit or dazzling gown? Take out your colored pens and pencils, turn the page, and find a place to design to and draw it the way that only you can do it - the way you\'ve always dreamed.\r\n', '/includes/books_images/myfashion.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 176, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(51, 'Forty Ways to Write I Love You', 'Hughes, Lana', 'For globe-trotting romantics and lovers of hand-lettering the world over, this is an activity book like no other. Expert letterer Lana Hughes has created 40 unique and beautiful designs of the heart-warming words \"I Love You\" with a twist - they are each written in a different language.\r\n\r\nThere is plenty of room for you to practise copying the designs for yourself, and if you need a little more help with technique, each \"I love you\" is accompanied by a simple lesson that can also be tried out in the book.', '/includes/books_images/fortywaystowriteily.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 176, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(52, 'Pen and Ink: Contemporary Artists, Timeless Techniques', 'Hobbs, James', 'In this original and inspiring book, James Hobbs explores nearly 100 artworks by contemporary artists. Dip in and out for advice or flick through for fresh inspiration and ideas.\r\n\r\nPen and Ink is the perfect reference book for anyone interested in contemporary art. Build your skills and discover the various ways in which different artists approach subjects and styles using the same medium.', '/includes/books_images/penandink.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 208, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(53, 'A Year in Small Drawings (Sketchbook)', 'Tristram, Matilda', 'A Year in Small Drawings is a charmingly original visual diary, encouraging you to capture and collect the small details all around you, every day. Artist and author, Matilda Tristram, invites doodlers and drawing enthusiasts alike to take pleasure in making a series of small drawings on a single subject. Each spread features Matilda’s variations on everyday objects (window frames, tree buds, shoes, breakfast), accompanied by a grid of blank spaces for your own little drawings. As you fill this book, you’ll make interesting observations, discover beauty in unexpected places, and create a unique record of the world around you.', '/includes/books_images/default.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 240, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(54, 'Creative Folk Art and Beyond: Inspiring Tips, Projects, and Ideas for Creating Cheerful Folk Art Inspired by the Scandinavian Concept of Hygge', 'Walter Foster Publishing', 'Creative Folk Art and Beyond features the whimsical and colorful folk-art style of Scandinavia… and beyond! Inspired by the concept of hygge (an idea similar to coziness), Creative Folk Art and Beyond includes creative prompts,easy exercises, and step-by-step projects that embrace all things Scandinavian.\r\n\r\nNo matter your skill level, you can learn how to draw and paint beautiful, colorful art using a variety of accessible, affordable supplies. Starting off with basic tools, materials, techniques, and color basics, Creative Folk Art and Beyond then jumps into tips and exercises that will have you drawing and painting your favorite folk-art designs in no time. This book is a must-have for any \"Scandophile\" or folk-art enthusiast!', '/includes/books_images/creativefolkart.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 144, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(55, 'Draw 500 Ways to Get Around: A Sketchbook for Artists, Designers, and Doodlers', 'Hancock, James Gulliver', 'The best way to learn to draw is to DRAW! And this fun sketchbook is going to help you do just that. It\'s filled with 500 inspiring, modern drawings of all your favorite ways to move about - from scooters to surfboards and trains to sailboats - and plenty of room for drawing your favorite modes of transport.\r\n\r\nGet out your favorite drawing tools and see what quirky vehicles you can imagine!', '/includes/books_images/draw500ways.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 208, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(56, 'Ten-Step Drawing: Flowers: Learn to Draw 75 Flowers in Ten Easy Steps!', 'Woodin, Mary', 'Designed especially for aspiring illustrators, doodlers, and art hobbyists, the fun and approachable books in the 10-Step Drawing series encourage new artists to get acquainted with the basic principles of drawing so they can learn to create art with confidence.\r\n\r\nIn 10-Step Drawing: Flowers, aspiring artists will learn to draw 75 stunning flowers and botanicals - from blooms and blossoms to floral displays - step-by-step! A basic review of supplies and an overview of coloring methods rounds out this perfect introduction to drawing gorgeous flora.', '/includes/books_images/tenstepdraw.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 128, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(57, 'The Everything Art Handbook', 'Walter Foster Publishing', 'A refreshing, accessible compendium of materials and techniques, The Everything Art Handbook is the perfect all-inclusive resource for beginning artists wanting to experiment and play with a variety of art mediums and techniques. The Everything Art Handbook is divided into sections focusing on different art mediums, such as drawing, pastel, watercolor, acrylic, oil, calligraphy, mixed media, color, composition, and more. Each section includes a basic overview of the technique, instructions for selecting and working with the right tools and materials, step-by-step sample artwork, and helpful sidebars with advice from professional artists. Using clear, informative explanations and tips for selecting the right tools and achieving the best results, The Everything Art Handbook is an approachable reference guide for contemporary artists of any skill level.', '/includes/books_images/everthingart.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 240, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(58, 'Portfolio: Beginning Pastel', 'Pigram, Paul', NULL, '/includes/books_images/portfolio.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(59, '100 Things to Draw With a Circle (100 Shapes - 100 Doodles)', 'Walsh, Sarah', NULL, '/includes/books_images/100thingsdrawcircle.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(60, 'The Art of Brush Lettering: A Stroke-by-Stroke Guide to the Practice and Techniques of Creative Lettering and Calligraphy', 'Klapstein, Kelly', 'A complete guide to brush pen lettering, The Art of Brush Lettering takes a meditative approach to creating beautiful letterforms, plus freestyle lettering, faux calligraphy, and special effects.\r\n\r\nInstagram brush lettering artist Kelly Klapstein (@kellycreates) takes a simple, serene approach to teaching the art of creating beautiful letterforms with easy-to-use and richly colored brush pens. Kelly begins by guiding you through the tools you’ll be using and the best ways to position pen, hand, and paper.\r\n\r\nShe goes on to demonstrate a range of basic strokes and drills, detailed tutorials for both lowercase and uppercase alphabets, and lessons on freestyle lettering, faux calligraphy, and a variety of special effects.\r\n\r\nAlso included for practice and improvement are exemplars for tracing and worksheets for basic strokes and drills, lowercase and uppercase letters, punctuation, and numerals for both large and small brush pens, so you\'ll never have to look far to find the best examples to practice from.', '/includes/books_images/artofbrush.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 160, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(61, 'No One Does It Like You: And 77 Other Illustrated Affirmations', 'Spiegel, Amy Rose', NULL, '/includes/books_images/noonedoesitlikeyou.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(62, 'Free Hand: New Typography Sketchbooks', 'Heller, Steven', 'In Free Hand: New Typography Sketchbooks, Steven Heller, respected graphic-design commentator, and Lita Talarico, design educator, offer glimpses inside the personal sketchbooks of more than 70 designers and typographers - including Philippe Apeloig, Ed Beguiat, Hoefler & Co., Henrik Kubel, Toshi Omagari, and Francesco Zorzi. Featuring a wealth of sketches, precision drawings, and computer-generated artwork, as well as a range of styles, concepts, languages, and alphabets, Free Hand illustrates the idiosyncratic creative processes behind the design of typefaces, logos, and word-images. A valuable resource for anyone who engages creatively with type - whether by hand or on a screen - this rich compendium emphasizes the power of typography in the digital age, while celebrating designers who continue to innovate in their practice of this time-honored craft.\r\n', '/includes/books_images/freehandtype.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 352, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(63, 'Jot Dot Doodle Notebook (Gray and Gold)', 'Rogge, Robie', 'The dot-gridded pages of this stylish paperback notebook is perfect for note-taking, list making, designing, and more. The blank dotted pages are interspersed with examples of amazing dot grid–based illustrations by artist Corina Nika. Her designs can be continued, copied, or used as point of departure for free-form doodling. With a tactile cover, the Jot Dot Doodle Notebook is a practical, everyday tool with an element of creative play.\r\n', '/includes/books_images/jotdotdoodle.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 128, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(64, 'The Moderns: Midcentury American Graphic Design', 'DOnofrio, Greg', NULL, '/includes/books_images/themoderns.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(65, 'Two-Dimensional Man', 'Paul Sahre', 'Paul Sahre shares deeply revealing stories that serve as the unlikely inspiration behind his extraordinary thirty-year design career. Sahre explores his most vain attempts to escape his \"suburban Addams Family\" upbringing and the death of his elephant-trainer brother. He also wrestles with the cosmic implications involved in operating a scanner, explains the disappearance of ice machines, analyzes a disastrous meeting with Steely Dan, and laments the typos, sunsets, and poor color choices that have shaped his work and point of view.\r\n\r\nTwo-Dimensional Man portrays the designer\'s life as one of constant questioning, inventing, failing, dreaming, and ultimately making.', '/includes/books_images/2dman.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, 320, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(66, 'Expressive Type: Unique Typographic Design in Sketchbooks, in Print, and On Location around the Globe', 'FowkesAlex', NULL, '/includes/books_images/expressivetype.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(67, 'Handmade Type Workshop: Tips, Tools & Techniques for Creating Custom Typography', 'Rivers, Charlotte', NULL, '/includes/books_images/handmadetype.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(68, 'Abstract City', 'Niemann, Christoph', NULL, '/includes/books_images/abstractcity.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(69, 'Layout Workbook (Revised and Updated)', 'Cullen, Kristin', NULL, '/includes/books_images/layoutworkbook.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(70, 'Brand by Hand: Blisters, Calluses, and Clients - A Life in Design', 'Contino, Jon', NULL, '/includes/books_images/brandbyhand.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(71, 'Free Hand: New Typography Sketchbooks', 'Heller, Steven', NULL, '/includes/books_images/freehandtypo.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(72, 'Downtown Pop Underground', 'McLeod, Kembrew', NULL, '/includes/books_images/downtop.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(73, 'Math and the Mona Lisa: The Art and Science of Leonardo da Vinci', 'Atalay, Bulent', NULL, '/includes/books_images/mathandmonalisa.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(74, 'Duchamps Pipe: A Chess Romance--Marcel Duchamp and George Koltanowski', 'Rabinovitch, Celia', NULL, '/includes/books_images/duchampspipe.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(75, 'The Last Wild Men of Borneo: A True Story of Death and Treasure', 'Hoffman, Carl', NULL, '/includes/books_images/lastwildmenborn.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(76, 'Pagan Light: Dreams of Freedom and Beauty in Capri', 'James, Jamie', NULL, '/includes/books_images/paganlight.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(77, 'The Vanishing Velazquez: A 19th Century Booksellers Obsession with a Lost Masterpiece', 'Cumming, Laura', NULL, '/includes/books_images/vanisingvelaz.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(78, 'The Holy Shroud: A Brilliant Hoax in the Time of the Black Death', 'Vikan, Gary', NULL, '/includes/books_images/default.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(79, 'Picasso and the Painting That Shocked the World', 'Unger, Miles J.', NULL, '/includes/books_images/picassoandpainting.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(80, 'Superflex: One Two Three Swing (The Hyundai Commission)', 'Hyslop, Donald', NULL, '/includes/books_images/superflex.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(81, 'Sarah Lucas', 'Collings, Matthew', NULL, '/includes/books_images/sarahlucas.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 16, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(82, 'All of It', 'Aisbett, Bev', NULL, '/includes/books_images/allofit.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 16, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(83, 'Susan Hiller', 'Gallagher, Ann', NULL, '/includes/books_images/susanhiller.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 16, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(84, 'Gustav Klimt at Home', 'Bade, Patrick', NULL, '/includes/books_images/gustav.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 16, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(85, 'Two-Dimensional Man', 'Paul Sahre, Inc.', NULL, '/includes/books_images/2dman.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 16, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(86, 'The Joy of Lettering: A Creative Exploration of Contemporary Hand Lettering, Typography and Illustrated Typeface', 'Escalera, Jaclyn', NULL, '/includes/books_images/joyofletering.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 17, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(87, 'Bible Journaling for the Fine Artist', 'Fischer, Melissa', NULL, '/includes/books_images/biblejournaling.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 17, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(88, 'Ever After: Create Fairy Tale-Inspired Mixed-Media Art Projects to Develop Your Personal Artistic Style', 'Laporte, Tamara', NULL, '/includes/books_images/everafter.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 17, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(89, 'Nature Art Workshop', 'Walter Foster Publishing', NULL, '/includes/books_images/natureartwork.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 17, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(90, 'Release Your Creativity: Discover Your Inner Artist With 15 Simple Painting Projects', 'Schweiger, Rebecca', NULL, '/includes/books_images/release.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(91, 'The Art of Painting Still Life in Acrylic', 'Walter Foster Publishing', NULL, '/includes/books_images/artofpainting.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(92, 'Paint Like The Masters', 'B.E.S. Publishing', NULL, '/includes/books_images/paintlikemasters.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(93, 'Creative Painting & Beyond', 'Adams, Alix', NULL, '/includes/books_images/creativepainting.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(94, 'Dogs & Puppies (How to Draw & Paint', 'Knox, Cynthia', NULL, '/includes/books_images/dogandpuppies.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(95, 'The Everything Art Handbook', 'Walter Foster Publishing', NULL, '/includes/books_images/everthingart.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(96, 'Oil & Acrylic: Waterscapes (How to Draw and Paint)', 'Darflinger, Joan', NULL, '/includes/books_images/oilandacrylic.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(97, 'Invented Landscapes', 'Telfair, Tula', NULL, '/includes/books_images/inventedlandscapes.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(98, 'Beginning Chinese Brush (How to Draw & Paint Special Subjets)', 'Cilmi, Monika', NULL, '/includes/books_images/begningschinese.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(99, 'Beginning Oil (Portfolio)', 'Murphy, Jan', NULL, '/includes/books_images/begningsoil.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(100, 'Flowers (Art Studio)', 'Walter Foster Publishing', NULL, '/includes/books_images/flowers.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(101, 'Faces & Features (Art Studio)', 'Walter Foster Publishing', NULL, '/includes/books_images/facesandfeatures.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(102, 'Downtown Pop Underground', 'McLeod, KembrewAbrams', NULL, '/includes/books_images/downtownpop.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 19, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(103, 'Muslim Women Are Everything: Stereotype-Shattering Stories of Courage, Inspiration, and Adventure', 'Yasmin, SeemaHarperDesign', NULL, '/includes/books_images/muslimwomen.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 19, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(104, 'Agnès B: Styliste', 'AbramsAbrams', NULL, '/includes/books_images/agnesb.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 19, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(105, 'The Greatest Brick Builds: Amazing Creations in LEGO', 'Sawaya, NathanThunder Bay Pres', NULL, '/includes/books_images/thegreatestbrick.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 19, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(106, 'Cut It Out: Re-create Your Favorite Dictators Hairstyle at Home--for Fun and Profit!', 'Burnsides, Bryan', NULL, '/includes/books_images/cutitout.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 19, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(107, 'Hollywoods Eve: Eve Babitz and the Secret History of L.A.', 'Anolik, Lili', NULL, '/includes/books_images/hollywoodeves.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 19, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(108, 'Gemini Man: The Art and Making of the Film', 'Singer, Michael', NULL, '/includes/books_images/geminiman.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 19, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(109, 'The Art of the Simon and Kirby Studio', 'Kirby, Jack', NULL, '/includes/books_images/theartofthesimon.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 19, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(110, 'Philippe Parreno: Anywhen (The Hyundai Commission)', 'Lissoni, Andrea', NULL, '/includes/books_images/phillipepereno.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 20, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(111, 'Liu Bolin', 'Bolin, Liu', NULL, '/includes/books_images/liu.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 20, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(112, 'Figure It Out! Drawing Essential Poses: The Beginners Guide to the Natural-Looking Figure (Christopher Hart Figure It Out!)', 'Hart, Christopher', NULL, '/includes/books_images/figureitout.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 21, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(113, 'Create Your Own Stick World (Art Kit)', 'Attinger, Billy', NULL, '/includes/books_images/createyourownstick.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 21, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(114, 'Draw 500 Ways to Get Around: A Sketchbook for Artists, Designers, and Doodlers', 'Hancock, James Gulliver', NULL, '/includes/books_images/draw500ways.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 21, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(115, 'Dogs & Puppies (How to Draw & Paint', 'Knox, Cynthia', NULL, '/includes/books_images/dogsandpuppeis.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 21, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(116, 'Acrylic Basics (How to Draw & Paint)', 'Robertson, Janice', NULL, '/includes/books_images/acrylicbasics.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 21, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(117, 'My Garden (Dream, Draw, Design)', 'Hobbs, James', NULL, '/includes/books_images/mygarden.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 21, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(118, 'Fabulous Figures (I Heart Drawing)', 'Davenport, Jane', NULL, '/includes/books_images/fabulousfigures.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 22, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(119, 'Shojo Manga', 'Kamikaze Factory Studio', NULL, '/includes/books_images/shojomanga.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 22, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(120, 'Cut It Out: Re-create Your Favorite Dictators Hairstyle at Home--for Fun and Profit!', 'Burnsides, Bryan', NULL, '/includes/books_images/cutitout.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 22, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(121, 'Wild Garden (Scratch & Create)', 'Dardik, Helen', NULL, '/includes/books_images/wildgarden.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 22, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(122, 'Flowers & Botanicals (Drawing Made Easy)', 'Cardaci, Diane', NULL, '/includes/books_images/flowersandbotanicals.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 22, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(123, 'Better Living Through Criticism: How to Think About Art, Pleasure, Beauty, and Truth', 'Scott, A. O.', NULL, '/includes/books_images/betterlivingthroughcritism.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 22, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(124, 'Draw 500 Fabulous Flowers', 'Congdon, Lisa', NULL, '/includes/books_images/draw500fabulousflowers.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 22, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(125, 'The Sartorialist: X', 'Schuman, Scott', NULL, '/includes/books_images/thesartolist.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 22, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(126, 'London Tattoos', 'MacNaughton, Alex', NULL, '/includes/books_images/londontatoos.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 23, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(127, 'DIY Temporary Tattoo Art: Easy Step-by-Step Instructions for Watercolor, Henna, Flash Tattoos, and More!', 'Cao, K. L.', NULL, '/includes/books_images/diytemporarytatoo.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 23, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(128, 'Release Your Creativity: Discover Your Inner Artist With 15 Simple Painting Projects', 'Schweiger, Rebecca', NULL, '/includes/books_images/release.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 24, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(129, 'Fabulous Figures (I Heart Drawing)', 'Davenport, Jane', NULL, '/includes/books_images/fabulousfigures2.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 24, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(130, 'The Art of Painting Still Life in Acrylic', 'Walter Foster Publishing', NULL, '/includes/books_images/artofpainting.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 24, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(131, 'Chibi Manga: Irresistible!', 'Minguet, Eva', NULL, '/includes/books_images/chibimanga.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 24, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(132, 'Craft-a-Doodle Deux: 73 Exercises for Creative Drawing', 'Doh, Jenny', NULL, '/includes/books_images/craftadoodledeux.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 24, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(133, 'Pen and Ink: Contemporary Artists, Timeless Techniques', 'Hobbs, James', NULL, '/includes/books_images/penandink.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 24, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(134, 'Portfolio: Beginning Pastel', 'Pigram, Paul', NULL, '/includes/books_images/portfolio.webp', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 24, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(135, 'The Evolution of Type: A Graphic Guide to 100 Landmark Typefaces', 'Seddon, Tony', NULL, '/includes/books_images/evolution.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 25, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(136, 'Free Hand: New Typography Sketchbooks', 'Heller, Steven', NULL, '/includes/books_images/freehandtype.jpg', '/includes/books_images/default.jpg', '2021-04-25 23:30:46', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 25, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(137, 'The Flight: Charles Lindberghs Daring and Immortal 1927 Transatlantic Crossing', 'Hampton, Dan', NULL, '/includes/books_images/9780062464408-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 26, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(138, 'Beyond the Known: How Exploration Created the Modern World and Will Take Us to the Stars', 'Rader, Andrew', NULL, '/includes/books_images/9781982123536-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 26, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(139, 'Captain Blighs Portable Nightmare', 'Toohey, John', NULL, '/includes/books_images/9781510729179-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 26, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(140, 'Finding North: How Navigation Makes Us Human', 'Foy, George Michelsen', NULL, '/includes/books_images/9781250052681-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 26, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(141, 'Becoming Superman: My Journey From Poverty to Hollywood', 'Straczynski, J. Michael', NULL, '/includes/books_images/9780062857866-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 27, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(142, 'Autobiografia', 'Enrique, Luis', NULL, '/includes/books_images/9780718092054-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 27, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(143, 'Krazy: George Herriman, A Life in Black and White', 'Tisserand, Michael', NULL, '/includes/books_images/9780061733000-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 27, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(144, 'Arbitrary Stupid Goal', 'Shopsin, Tamara', NULL, '/includes/books_images/9780374105860-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 27, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(145, 'The Harder You Work, the Luckier You Get: An Entrepreneurs Memoir', 'Ricketts, Joe', NULL, '/includes/books_images/9781501164781-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 28, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(146, 'The Legend of Colton H. Bryant', 'Fuller, Alexandra', NULL, '/includes/books_images/9780143115373-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 28, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(147, 'Ray & Joan: The Man Who Made the McDonalds Fortune and the Woman Who Gave It All Away', 'Napoli, Lisa', NULL, '/includes/books_images/9781101984956-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 28, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(148, 'American Entrepreneur: How 400 Years of Risk-Takers, Innovators, and Business Visionaries Built the U.S.A.', 'Doyle, William', NULL, '/includes/books_images/9780062693419-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 28, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(149, 'Sage-ing While Age-ing', 'MacLaine, Shirley', NULL, '/includes/books_images/9781416550426-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 29, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(150, 'Next Level Basic: The Definitive Basic Bitch Handbook', 'Schroeder, Stassi', NULL, '/includes/books_images/9781982112462-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 29, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(151, 'So That Happened: A Memoir', 'Cryer, Jon', NULL, '/includes/books_images/9780451472366-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 29, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(152, 'Capital Gaines: Smart Things I Learned Doing Stupid Stuff', 'Gaines, Chip', NULL, '/includes/books_images/9780785216308-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 29, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(153, 'Steve Jobs: Thinking Differently', 'Lakin, Patricia', NULL, '/includes/books_images/9781442453937-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 29, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(154, 'A Lucky Child: A Memoir of Surviving Auschwitz as a Young Boy', 'Buergenthal, Thomas', NULL, '/includes/books_images/9780316339186-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 30, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(155, 'The Best of Friends: Two Women, Two Continents, and One Enduring Friendship', 'James, Sara', NULL, '/includes/books_images/9780060779498-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 30, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(156, 'Oh the Glory of It All', 'Wilsey, Sean', NULL, '/includes/books_images/9780143036913-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 30, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(157, 'Where Rivers Change Direction', 'Spragg, Mark', NULL, '/includes/books_images/9781573228251-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 30, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(158, 'Always Running: La Vida Loca: Gang Days in L.A.', 'Rodriguez, Luis J.', NULL, '/includes/books_images/9780743276917-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 30, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(159, '150 Glimpses of the Beatles', 'Brown, Craig', NULL, '/includes/books_images/9780374109318-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 31, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(160, 'Been So Long: My Life and Music', 'Kaukonen, Jorma', NULL, '/includes/books_images/9781250125484-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 31, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(161, 'Elton John: Rocket Man', 'Roberts, Chris', NULL, '/includes/books_images/9781454934523-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 31, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(162, 'This Thing Called Life: Princes Odyssey, On and Off the Record', 'Karlen, Neal', NULL, '/includes/books_images/9781250135247-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 31, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(163, 'I Hear Shes a Real Bitch', 'Agg, Jen', NULL, '/includes/books_images/9780143132646-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 32, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(164, 'Wine Girl: The Obstacles, Humiliations, and Triumphs of Americas Youngest Sommelier', 'James, Victoria', NULL, '/includes/books_images/9780062961679-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 32, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(165, 'Drive-Thru Dreams: A Journey Through the Heart of Americas Fast-Food Kingdom', 'Chandler, Adam', NULL, '/includes/books_images/9781250090720-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 32, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(166, 'Eating Viet Nam: Dispatches From a Blue Plastic Table', 'Holliday, Graham', NULL, '/includes/books_images/9780062293060-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 32, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(167, 'Killing It: An Education', 'Davis, Camas', NULL, '/includes/books_images/9781101980095-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 32, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(168, 'Hunting LeRoux: The Inside Story of the DEA Takedown of a Criminal Genius and His Empire', 'Shannon, Elaine', NULL, '/includes/books_images/9780062859136-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 33, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(169, 'Citizen Outlaw: One Mans Journey from Gangleader to Peacekeeper', 'Barber, Charles', NULL, '/includes/books_images/9780062692849-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 33, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(170, 'Hunting Charles Manson: The Quest for Justice in the Days of Helter Skelter', 'Wiehl, Lis', NULL, '/includes/books_images/9781400210268-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 33, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(171, 'El Jefe: The Stalking of Chapo Guzman', 'Feuer, Alan', NULL, '/includes/books_images/9781250254504-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 33, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(172, 'The Elephants in My Backyard: A Memoir of Chasing a Dream and Facing Failure', 'Surendra, Rajiv', NULL, '/includes/books_images/9780345816818-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 34, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(173, 'Patriot Number One: A Chinese Rebel Comes to America', 'Hilgers, Lauren', NULL, '/includes/books_images/9780451496140-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 34, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(174, 'AOC: The Fearless Rise and Powerful Resonance of Alexandria Ocasio-Cortez', 'Lopez, Lynda', NULL, '/includes/books_images/9781250257413-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 34, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(175, 'El Jefe: The Stalking of Chapo Guzman', 'Feuer, Alan', NULL, '/includes/books_images/9781250254504-l (1).jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 34, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(176, 'Miracle in the Cave: The 12 Lost Boys, Their Coach, and the Heroes Who Rescued Them', 'Cochrane, Liam', NULL, '/includes/books_images/9780062912480-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 34, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(177, 'Lake of the Ozarks: My Surreal Summers in a Vanishing America', 'Geist, Bill', NULL, '/includes/books_images/9781538729809-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 35, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(178, 'Not Pretty Enough: The Unlikely Triumph of Helen Gurley Brown', 'Hirshey, Gerri', NULL, '/includes/books_images/9780374537074-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 35, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(179, 'Love, Africa: A Memoir of Romance, War, and Survival', 'Gettleman, Jeffrey', NULL, '/includes/books_images/9780062284105-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 35, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(180, 'Boy Wonders', 'Kelly, Cathal', NULL, '/includes/books_images/9780385687508-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 35, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(181, 'How We Did It: The Subban Plan for Success in Hockey, School and Life', 'Subban, Karl', NULL, '/includes/books_images/9780345816726-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 36, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(182, 'The Battle for Room 314: My Year of Hope and Despair in a New York City High School', 'Boland, Ed', NULL, '/includes/books_images/9781455560615-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 36, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(183, 'Sit Down and Shut Up: How Discipline Can Set Students Free', 'Henderson, Cinque', NULL, '/includes/books_images/9781250101884-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 36, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(184, 'My Stroke of Luck', 'Douglas, Kirk', NULL, '/includes/books_images/9780060014049-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 37, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(185, 'Carrie Fisher: A Life on the Edge', 'Weller, Sheila', NULL, '/includes/books_images/9780374282233-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 37, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `products` (`pk_id`, `name`, `shortname`, `description`, `image_path`, `thumbnail_path`, `created_datetime`, `udpated_datetime`, `unit_quantity`, `product_type`, `on_sale`, `unit_price`, `is_active`, `list_order_numb`, `favorities`, `tags`, `product_sku`, `product_category_id`, `is_featured`, `created_by`, `updated_by`, `discount_type`, `discount_amount`, `discount_percent`, `product_unit_id`, `bussiness_id`) VALUES
(186, 'INSTANT WALL ART: ASTROLOGICAL DESIGNS', 'Stellas, Constance', NULL, '/includes/books_images/9781507211465-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 69, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(187, 'Paranormal State: My Journey into the Unknown', 'Buell, Ryan', NULL, '/includes/books_images/9780061767944-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 71, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(188, 'My Son and the Afterlife', 'Medhus, Elisa', NULL, '/includes/books_images/9781582704616-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 71, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(189, 'SOUL MAGIC: ANCIENT WISDOM FOR MODERN MYSTICS', 'Bell, Arizona, Garza, Morgan, ', NULL, '/includes/books_images/9781250253040-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 72, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(190, 'Change Me Prayers: The Hidden Power of Spiritual Surrender', 'Silver, Tosha', NULL, '/includes/books_images/9781476789767-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 73, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(191, 'Mind Reader', 'Suchard, Lior', NULL, '/includes/books_images/9780062087379-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 73, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(192, 'Beyond The Horizon', 'Walter Mercado', NULL, '/includes/books_images/9780446520669-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 73, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(193, 'The Warrior Heart Practice', 'Amara, Heatherash', NULL, '/includes/books_images/9781250230584-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 75, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(194, 'A Mind at Home with Itself: How Asking Four Questions Can Free Your Mind, Open Your Heart, and Turn Your World Around', 'Katie, Byron', NULL, '/includes/books_images/9780062651600-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 75, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(195, 'The Longevity Plan: Seven Life-Transforming Lessons from Ancient China', 'Day, Jane Ann', NULL, '/includes/books_images/9780062319821-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 75, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(196, 'Whole Detox: A 21-Day Personalized Program to Break Through Barriers in Every Area of Your Life', 'Minich, Deanna', NULL, '/includes/books_images/9780062426802-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 76, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(197, 'Change Me Prayers: The Hidden Power of Spiritual Surrender', 'Silver, Tosha', NULL, '/includes/books_images/9781476789767-l (1).jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 76, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(198, 'House of Cards: A Tale of Hubris and Wretched Excess on Wall Street', 'Cohan, William D.', NULL, '/includes/books_images/9780767930895-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 86, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(199, 'Secrecy World: Inside the Panama Papers, Illicit Money Networks, and the Global Elite', 'Bernstein, Jake', NULL, '/includes/books_images/9781250182463-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 86, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(200, 'The Alchemists: Three Central Bankers and a World on Fire', 'Irwin, Neil', NULL, '/includes/books_images/9780143124993-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 86, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(201, 'The Truth Doesnt Have to Hurt. How to Use Criticism to Strengthen Relationships, Improve Performance, and Promote Change', 'Bright, Deb', NULL, '/includes/books_images/9780814434819-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 88, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(202, 'Intentional Relationships: How to Work and Succeed with Others', 'Tucker, Ken', NULL, '/includes/books_images/9781942934479-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 88, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(203, 'The Storytellers Secret: From TED Speakers to Business Legends, Why Some Ideas Catch On and Others Dont', 'Gallo, Carmine', NULL, '/includes/books_images/9781250072238-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 88, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(204, 'The Humane Economy: How Innovators and Enlightened Consumers Are Transforming the Lives of Animals', 'Pacelle, Wayne', NULL, '/includes/books_images/9780062389657-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 89, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(205, 'The Golden Passport: Harvard Business School, the Limits of Capitalism, and the Moral Failure of the MBA Elite', 'McDonald, Duff', NULL, '/includes/books_images/9780062870070-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 89, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(206, 'Competition Overdose: How Free Market Mythology Transformed Us from Citizen Kings to Market Servants', 'Ezrachi, Ariel', NULL, '/includes/books_images/9780062892836-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 89, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(207, 'Seven Bad Ideas: How Mainstream Economists Have Damaged America and the World', 'Madrick, Jeff', NULL, '/includes/books_images/9780307950727-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 89, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(208, 'Emily Posts: The Etiquette Advantage in Business: Personal Skills for Professional Success (2nd Edition)', 'Post, Peggy', NULL, '/includes/books_images/9780060760021-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 90, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(209, 'The No Asshole Rule: Building a Civilized Workplace and Surviving One That Isnt', 'Sutton, Robert I.', NULL, '/includes/books_images/9780446698207-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 90, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(210, 'The One Minute Manager Balances Work and Life', 'Blanchard, Ken', NULL, '/includes/books_images/9780688186500-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 93, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(211, 'Take the Leap: Change Your Career, Change Your Life', 'Bliss, Sara', NULL, '/includes/books_images/9781501183195-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 93, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(212, 'Mission Transition: Navigating the Opportunities and Obstacles to Your Post-Military Career', 'Louis, Matthew J.', NULL, '/includes/books_images/9781400214754-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 94, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(213, 'Kiss Your But Good-Bye', 'Azelby, Joseph/Azelby, Robert', NULL, '/includes/books_images/9780062246981-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 94, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(214, 'Temp: The Real Story of What Happened to Your Salary, Benefits, and Job Security', 'Hyman, Louis', NULL, '/includes/books_images/9780735224087-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 50, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(215, 'Based on the Major New Movie (Peter Rabbit 2)', 'Warne, Frederick', NULL, '/includes/books_images/9780241415306-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 151, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(216, 'Peter Powers and the Swashbuckling Sky Pirates! (Peter Powers, Bk. 6)', 'Clark, Kent', NULL, '/includes/books_images/9780316437943-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 151, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(217, 'The Space Walk', 'Biggs, Brian', NULL, '/includes/books_images/9780525553373-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 151, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(218, 'HAPPY HAIR', 'Roe, Mechal Renee', NULL, '/includes/books_images/9781984895547-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 151, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(219, 'All About Peter', 'Potter, Beatrix', NULL, '/includes/books_images/9780241324554-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 152, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(220, 'Be Our Guest!: Not Your Ordinary Vacation', 'Malin, Gray', NULL, '/includes/books_images/9781419729300-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 152, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(221, 'Chunky Little Library', 'Haines, Emma', NULL, '/includes/books_images/9781438050652-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 152, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(222, 'Arty: The Greatest Artist in the World', 'Sterling', NULL, '/includes/books_images/9781454932932-l.webp', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 153, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(223, 'Hurry Up and Wait (Bk. 2)', 'Handler, Daniel', NULL, '/includes/books_images/9780870709593-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 153, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(224, 'Marianthes Story: Painted Words and Spoken Memories', 'Aliki', NULL, '/includes/books_images/9780061857744-l.jpg', '/includes/books_images/default.jpg', '2021-04-27 17:06:12', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 153, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(225, 'book test', 'book author test', 'product_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_idproduct_category_id', 'includes/images/BusinessAdmin/products/7b206bb93c9d4b422c6bde6f9dd19a3a20f55621.jpg', 'includes/images/BusinessAdmin/products/7b206bb93c9d4b422c6bde6f9dd19a3a20f55621.jpg', '2021-04-28 17:43:36', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, NULL, NULL, 1195, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(226, 'test book title edit ', 'test author name update', '11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa update book aaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa11111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'includes/images/BusinessAdmin/products/Screenshot (111).png', 'includes/images/BusinessAdmin/products/Notification regarding Covid-19.pdf', '2021-05-02 21:59:51', NULL, NULL, '0', '0', NULL, 1, NULL, NULL, 'na book update book', NULL, 1197, NULL, 1, 1, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `pk_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `shortname` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `udpated_datetime` datetime DEFAULT NULL,
  `image_path` varchar(255) DEFAULT 'includes/images/categories/default.jpg',
  `thumbnail_path` varchar(255) DEFAULT 'includes/images/categories/default_thumb.jpg',
  `list_order_numb` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `tags` text DEFAULT NULL,
  `bussiness_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `business_category` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`pk_id`, `name`, `shortname`, `description`, `created_datetime`, `udpated_datetime`, `image_path`, `thumbnail_path`, `list_order_numb`, `is_active`, `tags`, `bussiness_id`, `created_by`, `updated_by`, `business_category`) VALUES
(1, 'Buildings', NULL, NULL, '2021-04-24 19:59:41', NULL, 'includes/genre/download.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 2),
(2, 'Domestic', NULL, NULL, '2021-04-24 19:59:41', NULL, 'includes/genre/f40643777e177c45d551d24f56d77ca7.1566229964.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 2),
(3, 'Historic Preservation', NULL, NULL, '2021-04-24 19:59:41', NULL, 'includes/genre/download (1).jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 2),
(4, 'Landscape', NULL, NULL, '2021-04-24 19:59:41', NULL, 'includes/genre/dwarf-shrubs-land-morphology_11506.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 2),
(5, 'Art & Politics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/genre/2019_43_john_gray_main.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(6, 'Calligraphy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/genre/Calligraphy-writing.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(7, 'Caribbean & Latin American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(8, 'Cartooning', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(9, 'Collections, Catalogs, Exhibit', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(10, 'Commercial', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(11, 'Design', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(12, 'Digital & Video', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(13, 'Drawing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(14, 'Graphic Arts', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(15, 'History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(16, 'Individual Artist', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(17, 'Mixed-Media', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(18, 'Painting', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(19, 'Popular Culture', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(20, 'Sculpture', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(21, 'Sketching', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(22, 'Subjects & Themes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(23, 'Tattoos, Mehndi, & Body Painti', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(24, 'Techniques', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(25, 'Typography', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 3),
(26, 'Adventurers & Explorers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(27, 'Artists, Architects, Photograp', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(28, 'Business', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(29, 'Celebrity, Entertainment & Art', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(30, 'Childhood Memoir', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(31, 'Composers & Musicians', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(32, 'Cooking', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(33, 'Criminals & Outlaws', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(34, 'Cultural', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(35, 'Editors, Journalists, Publishe', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(36, 'Educators', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(37, 'Entertainment & Performing Art', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(38, 'Environmentalists/Naturalists', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(39, 'First Ladies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(40, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(41, 'Health, Exercise & Fitness', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(42, 'Historical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(43, 'Humanitarians', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(44, 'Judaism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(45, 'Law Enforcement', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(46, 'Lawyers & Judges', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(47, 'Literary', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(48, 'Medical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(49, 'Military', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(50, 'Naturalists & Gardeners', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(51, 'Parental Memoirs', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(52, 'People of Color', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(53, 'Personal Memoirs', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(54, 'Philosophers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(55, 'Political', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(56, 'Presidents & Heads of State', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(57, 'Regional Subjects', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(58, 'Religious', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(59, 'Rich & Famous', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(60, 'Royalty', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(61, 'Scientists', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(62, 'Social Activists', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(63, 'Social Scientists & Psychologi', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(64, 'Sociologists', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(65, 'Specific Groups', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(66, 'Sports', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(67, 'Travelers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(68, 'Women', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 4),
(69, 'Astrology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(70, 'Channeling', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(71, 'Controversial Knowledge', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(72, 'Crystals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(73, 'Divination', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(74, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(75, 'Healing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(76, 'Inspiration & Personal Growth', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(77, 'Meditation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(78, 'Metaphysical Phenomena', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(79, 'Mythical Civilizations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(80, 'New Thought', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(81, 'Occultism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(82, 'Parapsychology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(83, 'Prophecy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(84, 'Reincarnation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(85, 'Spirituality', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 5),
(86, 'Banks & Banking', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(87, 'Budgeting', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(88, 'Business Communication', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(89, 'Business Ethics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(90, 'Business Etiquette', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(91, 'Business Life', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(92, 'Business Writing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(93, 'Career Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(94, 'Careers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(95, 'Commerce', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(96, 'Consumer Behavior', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(97, 'Corporate & Business History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(98, 'Corporate Finance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(99, 'Customer Service', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(100, 'Decision Making & Problem Solv', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(101, 'Development', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(102, 'E-Commerce', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(103, 'Economic Conditions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(104, 'Economic History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(105, 'Education', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(106, 'Entrepreneurship', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(107, 'Environmental Economics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(108, 'Facility Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(109, 'Finance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(110, 'Forecasting', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(111, 'Free Enterprise', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(112, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(113, 'Globalization', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(114, 'Government & Business', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(115, 'Green Business', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(116, 'Human Resources & Personnel Ma', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(117, 'Industrial Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(118, 'Industries', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(119, 'Infrastructure', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(120, 'Insurance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(121, 'International', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(122, 'Investments & Securities', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(123, 'Labor', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(124, 'Leadership', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(125, 'Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(126, 'Marketing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(127, 'Mergers & Acquisitions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(128, 'Money & Monetary Policy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(129, 'Motivational', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(130, 'Negotiating', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(131, 'Nonprofit Organizations & Char', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(132, 'Organizational Behavior', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(133, 'Organizational Development', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(134, 'Personal Finance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(135, 'Personal Success', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(136, 'Project Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(137, 'Public Finance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(138, 'Public Relations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(139, 'Real Estate', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(140, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(141, 'Sales & Selling', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(142, 'Skills', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(143, 'Small Business', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(144, 'Strategic Planning', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(145, 'Structural Adjustment', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(146, 'Time Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(147, 'Training', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(148, 'Urban & Regional', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(149, 'Women & Business', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(150, 'Workplace Culture', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 6),
(151, 'Action & Adventure', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(152, 'Animals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(153, 'Art (painting sculpture artist', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(154, 'Bedtime & Dreams', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(155, 'Bedtime Stories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(156, 'Biographical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(157, 'Books & Libraries', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(158, 'Business, Careers, Occupations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(159, 'Celebrations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(160, 'Classics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(161, 'Coloring & Activity', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(162, 'Comics & Graphic Novels', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(163, 'Computers & Digital Media', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(164, 'Concepts', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(165, 'Cooking/Food', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(166, 'Dinosaurs & Prehistoric Creatu', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(167, 'Fairy Tales & Folklore', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(168, 'Family', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(169, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(170, 'Girls & Women', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(171, 'Health & Medicine', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(172, 'Historical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(173, 'Holidays & Festivals - Christm', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(174, 'Holidays & Festivals - Easter', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(175, 'Holidays & Festivals - Hallowe', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(176, 'Holidays & Festivals - Jewish', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(177, 'Holidays & Festivals - Other', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(178, 'Holidays & Festivals - Thanksg', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(179, 'Holidays & Festivals - Valenti', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(180, 'Horror & Ghost Stories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(181, 'Humorous Stories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(182, 'Imagination & Play', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(183, 'Interactive Adventure', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(184, 'Legends, Myths, & Fables', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(185, 'Lifestyles', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(186, 'Love & Romance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(187, 'Movie Tie - In', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(188, 'Mysteries, Espionage, & Detect', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(189, 'Nature & the Natural World', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(190, 'Nursery Rhymes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(191, 'People & Places', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(192, 'Performing Arts', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(193, 'Poetry', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(194, 'Popular Characters', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(195, 'Readers - Beginner', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(196, 'Readers - Chapter Books', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(197, 'Religious', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(198, 'Royalty', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(199, 'School & Education', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(200, 'Science & Technology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(201, 'Science Fiction, Fantasy, & Ma', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(202, 'Short Stories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(203, 'Social Situations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(204, 'Sports & Recreation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(205, 'Stories in Verse (see also Poe', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(206, 'Transportation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(207, 'Travel', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(208, 'Westerns', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 7),
(209, 'Anthologies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(210, 'Comics & Cartoons', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(211, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(212, 'Graphic Novels - Crime & Myste', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(213, 'Graphic Novels - Fantasy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(214, 'Graphic Novels - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(215, 'Graphic Novels - Horror', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(216, 'Graphic Novels - Science Ficti', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(217, 'Graphic Novels - Superheroes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(218, 'Historical Fiction', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(219, 'History & Criticism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(220, 'Literary', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(221, 'Nonfiction', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 8),
(222, 'Artificial Intelligence', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 9),
(223, 'Cybernetics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 9),
(224, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 9),
(225, 'Hardware', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 9),
(226, 'History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 9),
(227, 'Internet', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 9),
(228, 'Programming', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 9),
(229, 'Security', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 9),
(230, 'Social Aspects - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 9),
(231, 'Social Aspects - Human-Compute', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 9),
(232, 'Virtual Reality', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 9),
(233, 'Web', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 9),
(234, 'American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(235, 'Baby Food', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(236, 'Baking', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(237, 'Barbecue & Grilling', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(238, 'Beverages', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(239, 'Canadian', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(240, 'Cooking for Kids', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(241, 'Cooking with Kids', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(242, 'Courses & Dishes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(243, 'Entertaining', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(244, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(245, 'French', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(246, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(247, 'Health & Healing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(248, 'History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(249, 'Holiday', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(250, 'Individual Chefs & Restaurants', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(251, 'Italian', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(252, 'Methods', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(253, 'Middle Eastern', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(254, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(255, 'Seasonal', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(256, 'Specific Ingredients', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(257, 'Vegetarian - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(258, 'Vegetarian - Vegan', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 10),
(259, 'Adult Colouring Books', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 11),
(260, 'Assorted', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 11),
(261, 'Candlemaking', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 11),
(262, 'Crafts for Children', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 11),
(263, 'Decorating', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 11),
(264, 'Jewelry', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 11),
(265, 'Models', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 11),
(266, 'Needlework', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 11),
(267, 'Painting', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 11),
(268, 'Papercrafts', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 11);
INSERT INTO `product_categories` (`pk_id`, `name`, `shortname`, `description`, `created_datetime`, `udpated_datetime`, `image_path`, `thumbnail_path`, `list_order_numb`, `is_active`, `tags`, `bussiness_id`, `created_by`, `updated_by`, `business_category`) VALUES
(269, 'Scrapbooking', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 11),
(270, 'Sewing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 11),
(271, 'Fashion & Accessories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 12),
(272, 'Furniture', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 12),
(273, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 12),
(274, 'Interior Decorating', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 12),
(275, 'American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 13),
(276, 'Ancient, Classical & Medieval', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 13),
(277, 'Anthologies (multiple authors)', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 13),
(278, 'Caribbean & Latin American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 13),
(279, 'Continental European', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 13),
(280, 'English, Irish, Scottish, Wels', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 13),
(281, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 13),
(282, 'Middle Eastern', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 13),
(283, 'Scenes and Monologues', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 13),
(284, 'Shakespeare', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 13),
(285, 'Administration', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(286, 'Behavior Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(287, 'Classroom Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(288, 'Comparative', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(289, 'Counseling', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(290, 'Curricula', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(291, 'Decision Making & Problem Solv', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(292, 'Educational Policy & Reform', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(293, 'Educational Psychology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(294, 'Elementary', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(295, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(296, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(297, 'Guidance & Orientation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(298, 'Higher', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(299, 'Non-Formal Education', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(300, 'Organizations & Institutions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(301, 'Parent Participation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(302, 'Philosophy & Social Aspects', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(303, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(304, 'Secondary', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(305, 'Special Education', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(306, 'Speed Reading', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(307, 'Students & Student Life', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(308, 'Study Skills', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(309, 'Teacher & Student Mentoring', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(310, 'Teaching Methods & Materials', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(311, 'Testing & Measurement', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 14),
(312, 'Abuse', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(313, 'Activities', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(314, 'Adolescence', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(315, 'Adoption', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(316, 'Aging - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(317, 'Autism Spectrum Disorders', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(318, 'Baby Names', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(319, 'Breastfeeding', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(320, 'Child Care', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(321, 'Children with Special Needs', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(322, 'Conflict Resolution', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(323, 'Death, Grief, Bereavement', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(324, 'Divorce', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(325, 'Dysfunctional Families', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(326, 'Education', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(327, 'Eldercare', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(328, 'Emotions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(329, 'Family Relationships', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(330, 'Fatherhood', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(331, 'Friendship', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(332, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(333, 'Grandparenting', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(334, 'Health - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(335, 'Health - Nutrition', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(336, 'Infants & Toddlers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(337, 'Interpersonal Relations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(338, 'Learning Disabilities', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(339, 'Life Stages', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(340, 'Love & Romance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(341, 'Marriage', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(342, 'Military Families', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(343, 'Motherhood', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(344, 'Parenting', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(345, 'School Age', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(346, 'Stepparenting', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(347, 'Teenagers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 15),
(348, 'Action & Adventure', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(349, 'African American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(350, 'Alternative History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(351, 'Anthologies (multiple authors)', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(352, 'Biographical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(353, 'Classics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(354, 'Coming of Age', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(355, 'Contemporary', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(356, 'Crime', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(357, 'Cultural Heritage', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(358, 'Espionage/Intrigue', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(359, 'Family Life', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(360, 'Fantasy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(361, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(362, 'Ghost', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(363, 'Historical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(364, 'Holidays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(365, 'Horror', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(366, 'Humorous', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(367, 'Jewish', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(368, 'Legal', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(369, 'Literary', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(370, 'Medical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(371, 'Movie-TV Tie-In', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(372, 'Mystery & Detective', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(373, 'Native American & Aboriginal', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(374, 'Occult', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(375, 'Political', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(376, 'Psychological', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(377, 'Religious', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(378, 'Romance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(379, 'Sagas', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(380, 'Science Fiction', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(381, 'Sea & Ocean', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(382, 'Short Stories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(383, 'Sports', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(384, 'Superheroes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(385, 'Suspense', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(386, 'Technological', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(387, 'Thrillers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(388, 'Untranslated Fiction', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(389, 'Visionary & Metaphysical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(390, 'War & Military', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(391, 'Westerns', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(392, 'Naturopathy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(393, 'Nutrition', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(394, 'Pain Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(395, 'Pregnancy & Childbirth', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(396, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(397, 'Sleep & Sleep Disorders', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(398, 'Action & Adventure', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(399, 'African American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(400, 'Alternative History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(401, 'Anthologies (multiple authors)', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(402, 'Biographical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(403, 'Classics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(404, 'Coming of Age', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(405, 'Contemporary', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(406, 'Crime', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(407, 'Cultural Heritage', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(408, 'Espionage/Intrigue', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(409, 'Family Life', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(410, 'Fantasy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(411, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(412, 'Ghost', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(413, 'Historical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(414, 'Holidays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(415, 'Horror', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(416, 'Humorous', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(417, 'Jewish', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(418, 'Legal', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(419, 'Literary', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(420, 'Medical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(421, 'Movie-TV Tie-In', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(422, 'Mystery & Detective', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(423, 'Native American & Aboriginal', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(424, 'Occult', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(425, 'Political', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(426, 'Psychological', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(427, 'Religious', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(428, 'Romance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(429, 'Sagas', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(430, 'Science Fiction', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(431, 'Sea & Ocean', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(432, 'Short Stories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(433, 'Sports', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(434, 'Superheroes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(435, 'Suspense', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(436, 'Technological', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(437, 'Thrillers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(438, 'Untranslated Fiction', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(439, 'Visionary & Metaphysical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(440, 'War & Military', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(441, 'Westerns', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(442, 'Womens Fiction', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 16),
(443, 'French', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 17),
(444, 'Latin', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 17),
(445, 'Portuguese', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 17),
(446, 'Spanish', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 17),
(447, 'Board', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 18),
(448, 'Card Games', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 18),
(449, 'Chess', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 18),
(450, 'Crosswords', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 18),
(451, 'Gambling', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 18),
(452, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 18),
(453, 'Puzzles', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 18),
(454, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 18),
(455, 'Role Playing & Fantasy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 18),
(456, 'Trivia', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 18),
(457, 'Video & Electronic', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 18),
(458, 'Word', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 18),
(459, 'Container', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 19),
(460, 'Garden Design', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 19),
(461, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 19),
(462, 'Allergies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(463, 'Alternative Therapies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(464, 'Aromatherapy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(465, 'Beauty & Grooming', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(466, 'Diets', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(467, 'Diseases', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(468, 'Exercise', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(469, 'Food Content Guides', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(470, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(471, 'Healing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(472, 'Health Care Issues', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(473, 'Healthy Living', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(474, 'Hearing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(475, 'Herbal Medications', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(476, 'Kids Fitness', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(477, 'Macrobiotics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(478, 'Massage & Reflexotherapy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(479, 'Mens Health', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(480, 'Naturopathy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(481, 'Nutrition', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(482, 'Pain Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(483, 'Pregnancy & Childbirth', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(484, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(485, 'Sleep & Sleep Disorders', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(486, 'Vision', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(487, 'Weight Loss', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(488, 'Womens Health', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(489, 'Yoga', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 20),
(490, 'African American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(491, 'Africa', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(492, 'Americas (North, Central, Sout', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(493, 'Ancient', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(494, 'Asia', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(495, 'Canada', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(496, 'Caribbean & West Indies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(497, 'Civilization', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(498, 'Current Events', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(499, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(500, 'Europe', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(501, 'Expeditions & Discoveries', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(502, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(503, 'Geography', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(504, 'Jewish', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(505, 'Latin America', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(506, 'Maritime History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(507, 'Middle East', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(508, 'Military', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(509, 'Modern', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(510, 'Native American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(511, 'North American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(512, 'Polar Regions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(513, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(514, 'Revolutionary', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(515, 'Social History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(516, 'Speculative', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(517, 'Study & Teaching', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(518, 'United States - Civil War', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(519, 'United States', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(520, 'Women', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(521, 'World', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 21),
(522, 'Cleaning & Caretaking', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 22),
(523, 'Decorating', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 22),
(524, 'Design & Construction', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 22),
(525, 'Do-It-Yourself', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 22),
(526, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 22),
(527, 'Power Tools', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 22),
(528, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 22),
(529, 'Repair', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 22),
(530, 'Sustainable Living', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 22),
(531, 'Form - Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(532, 'Form - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(533, 'Form - Jokes & Riddles', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(534, 'Form - Limericks & Verse', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(535, 'Form - Parodies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(536, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(537, 'Satire', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(538, 'Topic - Adult', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23);
INSERT INTO `product_categories` (`pk_id`, `name`, `shortname`, `description`, `created_datetime`, `udpated_datetime`, `image_path`, `thumbnail_path`, `list_order_numb`, `is_active`, `tags`, `bussiness_id`, `created_by`, `updated_by`, `business_category`) VALUES
(539, 'Topic - Animals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(540, 'Topic - Business and Professio', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(541, 'Topic - Family', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(542, 'Topic - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(543, 'Topic - Political', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(544, 'Topic - Relationships', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(545, 'Topic - Religion', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(546, 'Topic - Sports', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 23),
(547, 'Communication', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(548, 'Composition & Creative Writing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(549, 'Etymology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(550, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(551, 'Grammar', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(552, 'Journalism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(553, 'Linguistics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(554, 'Public Speaking', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(555, 'Publishing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(556, 'Reading Skills', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(557, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(558, 'Rhetoric', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(559, 'Semantics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(560, 'Study & Teaching', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 24),
(561, 'Comparative', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 25),
(562, 'Court', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 25),
(563, 'Criminal Law', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 25),
(564, 'Emigration & Immigration', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 25),
(565, 'General Practice', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 25),
(566, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 25),
(567, 'Government', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 25),
(568, 'Legal History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 25),
(569, 'American - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 26),
(570, 'Asian', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 26),
(571, 'Continental European', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 26),
(572, 'Diaries & Journals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 26),
(573, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 26),
(574, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 26),
(575, 'Letters', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 26),
(576, 'American - Various', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 27),
(577, 'Books & Reading', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 27),
(578, 'Comics & Graphic Novels', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 27),
(579, 'European', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 27),
(580, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 27),
(581, 'Mystery & Detective Fiction', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 27),
(582, 'Poetry', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 27),
(583, 'Renaissance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 27),
(584, 'Russian & Former Soviet Union', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 27),
(585, 'Science Fiction & Fantasy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 27),
(586, 'Shakespeare', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 27),
(587, 'Subjects & Themes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 27),
(588, 'Algebra', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 28),
(589, 'Applied', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 28),
(590, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 28),
(591, 'Geometry', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 28),
(592, 'History & Philosophy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 28),
(593, 'Probability & Statistics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 28),
(594, 'AIDS & HIV', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(595, 'Allied Health Services', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(596, 'Alternative Medicine', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(597, 'Cardiology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(598, 'Dermatology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(599, 'Diseases', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(600, 'Drug Guides', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(601, 'Endocrinology & Metabolism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(602, 'Epidemiology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(603, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(604, 'Ethics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(605, 'Gastroenterology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(606, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(607, 'Genetics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(608, 'Gerontology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(609, 'Gynecology & Obstetrics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(610, 'Health Care Delivery', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(611, 'Health Policy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(612, 'History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(613, 'Holistic Medicine', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(614, 'Immunology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(615, 'Infectious Diseases', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(616, 'Internal Medicine', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(617, 'Mental Health', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(618, 'Neurology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(619, 'Neuroscience', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(620, 'Nutrition', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(621, 'Oncology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(622, 'Pain Medicine', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(623, 'Pathology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(624, 'Pediatrics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(625, 'Pharmacy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(626, 'Physician & Patient', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(627, 'Psychiatry', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(628, 'Public Health', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(629, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(630, 'Veterinary Medicine', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 29),
(631, 'Business Aspects', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(632, 'Classical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(633, 'Ethnomusicology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(634, 'Folk & Traditional', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(635, 'Genres & Styles', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(636, 'History & Criticism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(637, 'Instruction & Study', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(638, 'Jazz', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(639, 'Opera', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(640, 'Popular', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(641, 'Punk', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(642, 'Rap & Hip-Hop', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(643, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(644, 'Rock', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(645, 'Voice', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 30),
(646, 'Animal Rights', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(647, 'Animals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(648, 'Apes & Monkeys', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(649, 'Birds & Birdwatching', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(650, 'Butterflies & Moths', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(651, 'Earthquakes & Volcanoes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(652, 'Ecology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(653, 'Ecosystems & Habitats', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(654, 'Environmental Conservation & P', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(655, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(656, 'Fish', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(657, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(658, 'Insects & Spiders', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(659, 'Mammals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(660, 'Marine Life', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(661, 'Natural Disasters', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(662, 'Natural Resources', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(663, 'Reptiles & Amphibians', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(664, 'Water Supply', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(665, 'Weather', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(666, 'Wildlife', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 31),
(667, 'Acting & Auditioning', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 32),
(668, 'Comedy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 32),
(669, 'Dance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 32),
(670, 'Film', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 32),
(671, 'Mass Media', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 32),
(672, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 32),
(673, 'Screenplays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 32),
(674, 'Television', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 32),
(675, 'Theater', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 32),
(676, 'Birds', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 33),
(677, 'Cats', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 33),
(678, 'Dogs', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 33),
(679, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 33),
(680, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 33),
(681, 'Horses', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 33),
(682, 'Miscellaneous Other Pets', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 33),
(683, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 33),
(684, 'Eastern', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 34),
(685, 'Ethics & Moral Philosophy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 34),
(686, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 34),
(687, 'History & Surveys', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 34),
(688, 'Metaphysics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 34),
(689, 'Mind & Body', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 34),
(690, 'Movements', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 34),
(691, 'Political', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 34),
(692, 'Religious', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 34),
(693, 'Social', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 34),
(694, 'Collections, Catalogs, Exhibit', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 35),
(695, 'Fashion', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 35),
(696, 'Individual Photographer', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 35),
(697, 'Photoessays & Documentaries', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 35),
(698, 'Photojournalism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 35),
(699, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 35),
(700, 'Subjects & Themes - Travel', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 35),
(701, 'Subjects & Themes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 35),
(702, 'Techniques', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 35),
(703, 'American - African American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 36),
(704, 'American - Hispanic American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 36),
(705, 'American - Various', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 36),
(706, 'Anthologies (multiple authors)', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 36),
(707, 'English, Irish, Scottish, Wels', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 36),
(708, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 36),
(709, 'Inspirational & Religious', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 36),
(710, 'Subjects & Themes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 36),
(711, 'Women Authors', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 36),
(712, 'Youth Poetry', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 36),
(713, 'Arms Control', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(714, 'Censorship', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(715, 'City Planning & Urban Developm', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(716, 'Civics & Citizenship', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(717, 'Commentary & Opinion', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(718, 'Conspiracy & Scandal Investiga', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(719, 'Constitutions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(720, 'Corruption & Misconduct', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(721, 'Current Events', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(722, 'Economic Conditions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(723, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(724, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(725, 'Genocide & War Crimes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(726, 'Globalization', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(727, 'Government', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(728, 'History & Theory', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(729, 'Human Rights', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(730, 'International Relations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(731, 'Labor & Industrial Relations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(732, 'Legal System', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(733, 'Peace', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(734, 'Political Advocacy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(735, 'Political Freedom & Security', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(736, 'Political History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(737, 'Political Ideologies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(738, 'Political Parties', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(739, 'Political Process', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(740, 'Public Policy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(741, 'Social Policy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(742, 'Terrorism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(743, 'Women in Politics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(744, 'World', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 37),
(745, 'Applied Psychology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(746, 'Behavior Therapy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(747, 'Cognitive Psychology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(748, 'Cognitive Therapy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(749, 'Creative Ability', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(750, 'Developmental', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(751, 'Emotions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(752, 'Experimental Psychology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(753, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(754, 'History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(755, 'Human Sexuality', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(756, 'Industrial & Organizational Ps', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(757, 'Interpersonal Relations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(758, 'Mental Health', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(759, 'Movements', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(760, 'Neuropsychology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(761, 'Personality', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(762, 'Physiological Psychology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(763, 'Psychopathology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(764, 'Psychotherapy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(765, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(766, 'Social Psychology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 38),
(767, 'Bible - Commentaries', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(768, 'Bible - Criticism Interpretati', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(769, 'Bible - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(770, 'Bible - Hermeneutics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(771, 'Bible - Meditations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(772, 'Bible - Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(773, 'Bible - Study', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(774, 'Bible Covers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(775, 'Bibles', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(776, 'Buddhism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(777, 'Christian Church', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(778, 'Christian Life', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(779, 'Christianity - Christian Scien', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(780, 'Christianity - Church Administ', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(781, 'Christianity - Education - Gen', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(782, 'Christianity - Evangelism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(783, 'Christianity - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(784, 'Christianity - History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(785, 'Christianity - Literature', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(786, 'Christianity - Pastoral Counse', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(787, 'Christianity - Pastoral Minist', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(788, 'Christianity - Ritual & Practi', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(789, 'Christianity - Spiritual Warfa', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(790, 'Christianity - Theology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(791, 'Comparative Religion', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(792, 'Counseling', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(793, 'Devotional', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(794, 'Ecumenism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(795, 'Education', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(796, 'Ethics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(797, 'Faith', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(798, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(799, 'Hinduism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(800, 'History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(801, 'Holidays - Christian', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(802, 'Holidays - Christmas', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(803, 'Inspirational', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(804, 'Institutions & Organizations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(805, 'Islam', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(806, 'Judaism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40);
INSERT INTO `product_categories` (`pk_id`, `name`, `shortname`, `description`, `created_datetime`, `udpated_datetime`, `image_path`, `thumbnail_path`, `list_order_numb`, `is_active`, `tags`, `bussiness_id`, `created_by`, `updated_by`, `business_category`) VALUES
(807, 'Leadership', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(808, 'Meditations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(809, 'Missions & Missionary Work', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(810, 'Monasticism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(811, 'Philosophy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(812, 'Prayerbooks - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(813, 'Prayer', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(814, 'Psychology of Religion', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(815, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(816, 'Religion & Science', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(817, 'Religion, Politics & State', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(818, 'Sermons', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(819, 'Sexuality & Gender Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(820, 'Spirituality', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(821, 'Taoism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(822, 'Theology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 40),
(823, 'Astronomy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(824, 'Astrophysics & Space Science', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(825, 'Biotechnology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(826, 'Chemistry', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(827, 'Cognitive Science', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(828, 'Cosmology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(829, 'Earth Sciences', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(830, 'Electromagnetism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(831, 'Energy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(832, 'Environmental Science', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(833, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(834, 'Experiments & Projects', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(835, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(836, 'Geophysics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(837, 'History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(838, 'Life Sciences', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(839, 'Natural History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(840, 'Nuclear Physics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(841, 'Philosophy & Social Aspects', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(842, 'Physics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(843, 'Quantum Theory', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(844, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(845, 'Study & Teaching', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 41),
(846, 'Abuse', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(847, 'Affirmations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(848, 'Aging', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(849, 'Anxieties & Phobias', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(850, 'Communication & Social Skills', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(851, 'Creativity', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(852, 'Death, Grief, Bereavement', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(853, 'Depression', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(854, 'Emotions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(855, 'Fashion & Style', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(856, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(857, 'Green Lifestyle', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(858, 'Journal Writing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(859, 'Meditation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(860, 'Mood Disorders', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(861, 'Motivational & Inspirational', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(862, 'New Age (Self Help)', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(863, 'Personal Growth', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(864, 'Post-Traumatic Stress Disorder', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(865, 'Self-Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(866, 'Spiritual', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(867, 'Stress Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(868, 'Substance Abuse & Addictions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(869, 'Time Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(870, 'Twelve-Step Programs', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(871, 'Abortion & Birth Control', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(872, 'African American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(873, 'Agriculture & Food (see also P', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(874, 'Anthropology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(875, 'Archaeology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(876, 'Conspiracy Theories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(877, 'Cultural Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(878, 'Customs & Traditions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(879, 'Death & Dying', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(880, 'Demography', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(881, 'Discrimination & Racism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(882, 'Disease & Health Issues', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(883, 'Emigration & Immigration', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(884, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(885, 'Feminism & Feminist Theory', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(886, 'Folklore & Mythology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(887, 'Future Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(888, 'Gender Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(889, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(890, 'Human Geography', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(891, 'Human Sexuality (see also PSYC', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(892, 'Jewish Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(893, 'Media Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(894, 'Baseball', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(895, 'Basketball', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(896, 'Abuse', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(897, 'Affirmations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(898, 'Aging', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(899, 'Anxieties & Phobias', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(900, 'Communication & Social Skills', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(901, 'Creativity', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(902, 'Death, Grief, Bereavement', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(903, 'Depression', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(904, 'Emotions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(905, 'Fashion & Style', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(906, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(907, 'Green Lifestyle', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(908, 'Journal Writing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(909, 'Meditation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(910, 'Mood Disorders', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(911, 'Motivational & Inspirational', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(912, 'New Age (Self Help)', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(913, 'Personal Growth', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(914, 'Post-Traumatic Stress Disorder', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(915, 'Self-Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(916, 'Spiritual', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(917, 'Stress Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(918, 'Substance Abuse & Addictions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(919, 'Time Management', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(920, 'Twelve-Step Programs', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 42),
(921, 'Abortion & Birth Control', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(922, 'African American', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(923, 'Agriculture & Food (see also P', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(924, 'Anthropology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(925, 'Archaeology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(926, 'Conspiracy Theories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(927, 'Cultural Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(928, 'Customs & Traditions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(929, 'Death & Dying', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(930, 'Demography', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(931, 'Discrimination & Racism', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(932, 'Disease & Health Issues', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(933, 'Emigration & Immigration', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(934, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(935, 'Feminism & Feminist Theory', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(936, 'Folklore & Mythology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(937, 'Future Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(938, 'Gender Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(939, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(940, 'Human Geography', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(941, 'Human Sexuality (see also PSYC', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(942, 'Jewish Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(943, 'Media Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(944, 'Mens Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(945, 'Minority Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(946, 'Penology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(947, 'Philanthropy & Charity', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(948, 'Popular Culture', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(949, 'Poverty', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(950, 'Sexual Abuse & Harassment', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(951, 'Slavery', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(952, 'Social Classes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(953, 'Social History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(954, 'Social Work', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(955, 'Sociology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(956, 'Violence in Society', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(957, 'Volunteer Work', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(958, 'Womens Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 43),
(959, 'Baseball', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(960, 'Basketball', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(961, 'Boating', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(962, 'Bodybuilding & Weight Training', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(963, 'Coaching', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(964, 'Cricket', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(965, 'Cycling', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(966, 'Equestrian', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(967, 'Essays', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(968, 'Extreme Sports', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(969, 'Football', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(970, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(971, 'Golf', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(972, 'History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(973, 'Hockey', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(974, 'Hunting', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(975, 'Martial Arts', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(976, 'Motor Sports', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(977, 'Mountaineering', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(978, 'Olympics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(979, 'Outdoor Skills', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(980, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(981, 'Rugby', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(982, 'Running & Jogging', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(983, 'Sailing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(984, 'Skateboarding', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(985, 'Soccer', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(986, 'Sociology of Sports', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(987, 'Sports Psychology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(988, 'Swimming', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(989, 'Tennis', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(990, 'Training', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(991, 'Triathlon', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(992, 'Walking', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 44),
(993, 'Assorted', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 45),
(994, 'Greeting Cards', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 45),
(995, 'Journals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 45),
(996, 'Armed Forces', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 46),
(997, 'College Entrance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 46),
(998, 'College Guides', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 46),
(999, 'Financial Aid', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 46),
(1000, 'Professional - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 46),
(1001, 'SAT & PSAT', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 46),
(1002, 'Agriculture', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1003, 'Engineering', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1004, 'Environmental Engineering & Te', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1005, 'Food Science', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1006, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1007, 'History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1008, 'Industrial Technology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1009, 'Inventions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1010, 'Military Science', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1011, 'Petroleum', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1012, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1013, 'Robotics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1014, 'Social Aspects', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 47),
(1015, 'Activity Sets', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 48),
(1016, 'Automotive - Antique & Classic', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 49),
(1017, 'Automotive - Customizing', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 49),
(1018, 'Automotive - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 49),
(1019, 'Automotive - Repair & Maintena', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 49),
(1020, 'Aviation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 49),
(1021, 'Motorcycles', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 49),
(1022, 'Navigation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 49),
(1023, 'Railroads', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 49),
(1024, 'Africa', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1025, 'Asia', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1026, 'Canada', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1027, 'Caribbean & West Indies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1028, 'Essays & Travelogues', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1029, 'Europe', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1030, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1031, 'Mexico', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1032, 'Middle East', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1033, 'Parks & Campgrounds', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1034, 'Pictorials', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1035, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1036, 'Restaurants', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1037, 'South America', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1038, 'Special Interest - Adventure', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1039, 'Special Interest - Family', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1040, 'Special Interest - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1041, 'United States', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 50),
(1042, 'Espionage', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 51),
(1043, 'General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 51),
(1044, 'Hoaxes & Deceptions', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 51),
(1045, 'Murder - General', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 51),
(1046, 'Murder - Serial Killers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 51),
(1047, 'Organized Crime', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 51),
(1048, 'Other Miscellaneous Crimes', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 51),
(1049, 'White Collar Crime', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 51),
(1050, 'Action & Adventure', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1051, 'Animals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1052, 'Art (painting sculpture artist', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1053, 'Books & Libraries', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1054, 'Business, Careers, Occupations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1055, 'Classics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1056, 'Comics & Graphic Novels', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1057, 'Comics & Graphic', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1058, 'Contemporary', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1059, 'Family', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1060, 'Fantasy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1061, 'Games & Activities', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1062, 'Graphic Novels - Manga', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1063, 'Health & Medicine', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1064, 'Historical Fiction', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1065, 'Historical', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1066, 'Horror & Ghost Stories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1067, 'Horror & Suspense', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1068, 'Humorous Stories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1069, 'Humor', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1070, 'Legends, Myths, Fables', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1071, 'Lifestyles', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1072, 'Love & Romance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1073, 'Movie Tie - In', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52);
INSERT INTO `product_categories` (`pk_id`, `name`, `shortname`, `description`, `created_datetime`, `udpated_datetime`, `image_path`, `thumbnail_path`, `list_order_numb`, `is_active`, `tags`, `bussiness_id`, `created_by`, `updated_by`, `business_category`) VALUES
(1074, 'Mysteries & Thrillers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1075, 'Mysteries, Espionage, & Detect', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1076, 'Nature & the Natural World', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1077, 'Paranormal', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1078, 'People & Places', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1079, 'Performing Arts', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1080, 'Poetry', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1081, 'Religion & Spirituality', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1082, 'Religious', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1083, 'School & Education', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1084, 'Sci-Fi', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1085, 'Science & Technology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1086, 'Science Fiction', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1087, 'Series', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1088, 'Short Stories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1089, 'Social Situations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1090, 'Sports & Recreation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1091, 'Thrillers & Suspense', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 52),
(1092, 'Activity Books', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1093, 'Animals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1094, 'Art', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1095, 'Biographies & Memoirs', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1096, 'Biography & Autobiography', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1097, 'Comics & Graphic Novels', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1098, 'Computers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1099, 'Cooking', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1100, 'Crafts & Hobbies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1101, 'Curiosities & Wonders', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1102, 'Dinosaurs & Prehistoric Creatu', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1103, 'Education & Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1104, 'Games & Activities', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1105, 'Health & Fitness', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1106, 'Health', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1107, 'History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1108, 'Humor - Cartoons & Comics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1109, 'Humor - Jokes & Riddles', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1110, 'Journals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1111, 'Language Arts', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1112, 'Law & Crime', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1113, 'Mathematics', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1114, 'Media Tie-In', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1115, 'Nature', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1116, 'People & Places', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1117, 'Performing Arts', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1118, 'Poetry', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1119, 'Politics & Government', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1120, 'Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1121, 'Religion & Spirituality', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1122, 'Religion', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1123, 'Science & Nature', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1124, 'Science & Technology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1125, 'Social Situations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1126, 'Sports & Adventure', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1127, 'Sports & Recreation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 53),
(1128, 'Action & Adventure', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1129, 'Animals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1130, 'Anthologies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1131, 'Comics & Graphic Novels', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1132, 'Computers & Digital Media', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1133, 'Contemporary', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1134, 'Diversity & Multicultural', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1135, 'Family', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1136, 'Fantasy', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1137, 'Graphic Novels - Manga', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1138, 'Health & Daily Living', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1139, 'Historical Fiction', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1140, 'Horror & Ghost Stories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1141, 'Horror & Suspense', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1142, 'Humorous Stories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1143, 'Humor', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1144, 'Interactive Adventures', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1145, 'Law & Crime', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1146, 'Legends, Myths, Fables', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1147, 'Literary', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1148, 'Love & Romance', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1149, 'Mysteries & Thrillers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1150, 'Mysteries, Espionage, & Detect', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1151, 'Paranormal', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1152, 'People & Places', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1153, 'Performing Arts', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1154, 'Poetry', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1155, 'Politics & Government', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1156, 'Religion & Spirituality', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1157, 'School & Education', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1158, 'Sci-Fi', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1159, 'Short Stories', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1160, 'Social Situations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1161, 'Sports & Recreation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1162, 'Suspense/Thriller', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1163, 'Travel & Transportation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1164, 'War & Military', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 54),
(1165, 'Activity Books', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1166, 'Animals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1167, 'Architecture', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1168, 'Art', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1169, 'Biographies & Memoirs', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1170, 'Comics & Graphic Novels', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1171, 'Computers', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1172, 'Crafts & Hobbies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1173, 'Curiosities & Wonders', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1174, 'Education & Reference', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1175, 'Girls & Women', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1176, 'Health & Fitness', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1177, 'Health', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1178, 'History', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1179, 'Inspirational & Personal Growt', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1180, 'Journals', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1181, 'Language Arts', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1182, 'Law & Crime', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1183, 'Media Studies', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1184, 'People & Places', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1185, 'Performing Arts', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1186, 'Poetry', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1187, 'Politics & Government', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1188, 'Religion & Spirituality', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1189, 'Science & Nature', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1190, 'Science & Technology', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1191, 'Social Science', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1192, 'Social Situations', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1193, 'Sports & Adventure', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55),
(1194, 'Transportation', NULL, NULL, '2021-04-24 20:13:20', NULL, 'includes/images/categories/default.jpg', 'includes/images/categories/default_thumb.jpg', NULL, 1, NULL, 1, 1, NULL, 55);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `pk_id` int(11) NOT NULL,
  `image_path` varchar(500) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zrort_admins`
--

CREATE TABLE `zrort_admins` (
  `pk_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password_hash` varchar(40) NOT NULL,
  `image_path` varchar(255) DEFAULT 'includes/images/admin/default.jpg',
  `thumbnail_path` varchar(255) DEFAULT 'includes/images/admin/default_thumb.jpg',
  `first_name` varchar(30) DEFAULT 'Admin',
  `middle_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_super_admin` varchar(1) NOT NULL DEFAULT '0',
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT NULL,
  `contact_no` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zrort_admins`
--

INSERT INTO `zrort_admins` (`pk_id`, `username`, `password_hash`, `image_path`, `thumbnail_path`, `first_name`, `middle_name`, `last_name`, `is_super_admin`, `added_on`, `updated_on`, `contact_no`, `email`, `role_id`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3', 'includes/images/admin/default.jpg', 'includes/images/admin/default.jpg', 'Admin', NULL, NULL, '1', '2021-04-24 13:48:29', NULL, '1234', 'admin@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zrort_admin_activity_log`
--

CREATE TABLE `zrort_admin_activity_log` (
  `pk_id` int(11) NOT NULL,
  `action_module` text DEFAULT NULL,
  `requested_path` text DEFAULT NULL,
  `requested_time` datetime NOT NULL DEFAULT current_timestamp(),
  `ip` text DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `requested_string` text DEFAULT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zrort_admin_activity_log`
--

INSERT INTO `zrort_admin_activity_log` (`pk_id`, `action_module`, `requested_path`, `requested_time`, `ip`, `browser`, `requested_string`, `admin_id`) VALUES
(1, 'configuration', 'Businesscategories Added', '2021-04-24 18:35:27', NULL, NULL, '{\"title\":\"Action \\/ Adventure\",\"description\":\"Featuring characters involved in exciting and usually dangerous activities and adventures\",\"is_active\":\"1\",\"image_path\":\"includes\\/images\\/ZrortAdmin\\/businesscategories\\/18084478._SX540_.jpg\",\"thumbnail_path\":\"includes\\/images\\/ZrortAdmin\\/businesscategories\\/18084478._SX540_.jpg\",\"created_by\":\"1\",\"updated_by\":\"1\"}', 1),
(2, 'configuration', 'Businesscategories Updated', '2021-04-24 18:38:38', NULL, NULL, '{\"title\":\"Action \\/ Adventure\",\"description\":\"Featuring characters involved in exciting and usually dangerous activities and adventures\",\"is_active\":\"0\",\"image_path\":\"includes\\/images\\/ZrortAdmin\\/businesscategories\\/18084478._SX540_.jpg\",\"thumbnail_path\":\"includes\\/images\\/ZrortAdmin\\/businesscategories\\/18084478._SX540_.jpg\",\"created_by\":\"1\",\"updated_by\":\"1\"}', 1),
(3, 'configuration', 'Business Admin Added', '2021-04-24 22:06:35', NULL, NULL, '{\"firstname\":\"Anish\",\"lastname\":\"Dadlani\",\"username\":\"anish\",\"password_hash\":\"97ca6feae441878b4a659622cc60a513\",\"email\":\"anishdadlani@live.com\",\"contact\":\"03048999119\",\"created_by\":\"1\",\"updated_by\":\"1\"}', 1),
(4, 'configuration', 'Business Added', '2021-04-24 22:06:35', NULL, NULL, '{\"business_number\":\"1234\",\"name\":\"Bluebird Books\",\"tagline\":\"NA\",\"description\":\"NA\",\"country\":\"Pakistan\",\"state\":\"Sindh\",\"city\":\"Larkana\",\"postalcode\":\"77150\",\"lat\":null,\"lang\":null,\"business_website\":\"https:\\/\\/www.bluebirds.com\",\"business_email\":\"anishdadlani@live.com\",\"business_mobile\":\"03048999119\",\"business_landline\":\"03312268839\",\"business_address\":\"NA.NA.NA\",\"status\":\"1\",\"is_active\":\"1\",\"delivery_fee\":null,\"min_delivery_price\":null,\"min_delivery_time\":null,\"business_admin_id\":1,\"business_category_id\":\"1\",\"cover_photo\":\"includes\\/images\\/ZrortAdmin\\/businessproducts\\/download_2.jpg\",\"business_logo\":\"includes\\/images\\/ZrortAdmin\\/businessproductslogo\\/default.jpg\",\"created_by\":\"1\",\"updated_by\":\"1\"}', 1),
(5, 'configuration', 'Businesscategories Added', '2021-05-02 21:51:22', NULL, NULL, '{\"title\":\"test category\",\"description\":\"testingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtesting\",\"is_active\":\"1\",\"image_path\":\"includes\\/images\\/ZrortAdmin\\/businesscategories\\/vlcsnap-2021-04-30-00h17m38s458.png\",\"thumbnail_path\":\"includes\\/images\\/ZrortAdmin\\/businesscategories\\/vlcsnap-2021-04-30-00h17m38s458.png\",\"created_by\":\"1\",\"updated_by\":\"1\"}', 1),
(6, 'configuration', 'Businesscategories Updated', '2021-05-02 21:55:19', NULL, NULL, '{\"title\":\"test category1234\",\"description\":\"testingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtesting123456\",\"is_active\":\"1\",\"image_path\":\"includes\\/images\\/ZrortAdmin\\/businesscategories\\/vlcsnap-2021-04-30-00h17m38s458.png\",\"thumbnail_path\":\"includes\\/images\\/ZrortAdmin\\/businesscategories\\/vlcsnap-2021-04-30-00h17m38s458.png\",\"created_by\":\"1\",\"updated_by\":\"1\"}', 1),
(7, 'configuration', 'Businesscategories Updated', '2021-05-02 21:55:40', NULL, NULL, '{\"title\":\"test category1234\",\"description\":\"testingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtesting123456\",\"is_active\":\"1\",\"image_path\":\"includes\\/images\\/ZrortAdmin\\/businesscategories\\/vlcsnap-2021-04-30-01h52m11s073.png\",\"thumbnail_path\":\"includes\\/images\\/ZrortAdmin\\/businesscategories\\/vlcsnap-2021-04-30-01h52m11s073.png\",\"created_by\":\"1\",\"updated_by\":\"1\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zrort_admin_login_log`
--

CREATE TABLE `zrort_admin_login_log` (
  `pk_id` int(11) NOT NULL,
  `login_attempt_result` varchar(10) NOT NULL,
  `login_attempt_time` datetime NOT NULL DEFAULT current_timestamp(),
  `logout_time` datetime DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `query_string` text DEFAULT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zrort_admin_login_log`
--

INSERT INTO `zrort_admin_login_log` (`pk_id`, `login_attempt_result`, `login_attempt_time`, `logout_time`, `ip`, `browser`, `query_string`, `admin_id`) VALUES
(1, 'Success', '2021-04-24 18:15:17', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '1329ee063211db1071cf85981d7b6768', 0),
(2, 'Neglect', '2021-04-28 16:22:11', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', 'fad5ba206e3f271ccafe4576b8a7ce42', 0),
(3, 'Neglect', '2021-04-28 16:36:57', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', 'fad5ba206e3f271ccafe4576b8a7ce42', 0),
(4, 'Neglect', '2021-04-28 16:37:02', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', 'fad5ba206e3f271ccafe4576b8a7ce42', 0),
(5, 'Neglect', '2021-04-28 16:37:33', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', 'fad5ba206e3f271ccafe4576b8a7ce42', 0),
(6, 'Success', '2021-04-28 16:37:45', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '1329ee063211db1071cf85981d7b6768', 0),
(7, 'Success', '2021-04-28 16:37:53', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '1329ee063211db1071cf85981d7b6768', 0),
(8, 'Success', '2021-04-28 17:31:09', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '1329ee063211db1071cf85981d7b6768', 0),
(9, 'Success', '2021-04-28 17:56:10', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '1329ee063211db1071cf85981d7b6768', 0),
(10, 'Neglect', '2021-05-02 15:49:57', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '32ff9ee7e841b26a966870c144fdcaec', 0),
(11, 'Success', '2021-05-02 15:50:07', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '1329ee063211db1071cf85981d7b6768', 0),
(12, 'Success', '2021-05-02 17:29:55', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '1329ee063211db1071cf85981d7b6768', 0),
(13, 'Success', '2021-05-02 21:46:20', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '1329ee063211db1071cf85981d7b6768', 0),
(14, 'Neglect', '2021-05-02 21:48:42', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '32ff9ee7e841b26a966870c144fdcaec', 0),
(15, 'Success', '2021-05-02 21:49:11', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '32ff9ee7e841b26a966870c144fdcaec', 0),
(16, 'Success', '2021-05-05 15:20:59', NULL, NULL, 'Browser: Google Chrome Version: 89.0.4389.114', '32ff9ee7e841b26a966870c144fdcaec', 0);

-- --------------------------------------------------------

--
-- Table structure for table `zrort_site_setting`
--

CREATE TABLE `zrort_site_setting` (
  `pk_id` int(11) NOT NULL,
  `site_name` varchar(30) NOT NULL,
  `site_title` varchar(30) NOT NULL,
  `site_description` text DEFAULT NULL,
  `timezome` datetime NOT NULL,
  `logo` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `google_analytics_tracking_id` int(11) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `facebook_page` varchar(30) DEFAULT NULL,
  `twitter_page` varchar(30) DEFAULT NULL,
  `google_plus_page` varchar(30) DEFAULT NULL,
  `linked_in_page` varchar(30) DEFAULT NULL,
  `instagram_page` varchar(30) DEFAULT NULL,
  `pintrest_page` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`pk_id`),
  ADD UNIQUE KEY `business_number` (`business_number`,`name`,`business_website`,`business_email`);

--
-- Indexes for table `business_admins`
--
ALTER TABLE `business_admins`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `business_admins_activity_log`
--
ALTER TABLE `business_admins_activity_log`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `business_admins_login_log`
--
ALTER TABLE `business_admins_login_log`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `business_categories`
--
ALTER TABLE `business_categories`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `zrort_admins`
--
ALTER TABLE `zrort_admins`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `zrort_admin_activity_log`
--
ALTER TABLE `zrort_admin_activity_log`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `zrort_admin_login_log`
--
ALTER TABLE `zrort_admin_login_log`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `zrort_site_setting`
--
ALTER TABLE `zrort_site_setting`
  ADD PRIMARY KEY (`pk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_admins`
--
ALTER TABLE `business_admins`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_admins_activity_log`
--
ALTER TABLE `business_admins_activity_log`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `business_admins_login_log`
--
ALTER TABLE `business_admins_login_log`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_categories`
--
ALTER TABLE `business_categories`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1198;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zrort_admins`
--
ALTER TABLE `zrort_admins`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zrort_admin_activity_log`
--
ALTER TABLE `zrort_admin_activity_log`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `zrort_admin_login_log`
--
ALTER TABLE `zrort_admin_login_log`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `zrort_site_setting`
--
ALTER TABLE `zrort_site_setting`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
