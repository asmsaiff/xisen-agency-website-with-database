-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2021 at 04:40 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xisen`
--

-- --------------------------------------------------------

--
-- Table structure for table `wpxi_commentmeta`
--

CREATE TABLE `wpxi_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpxi_comments`
--

CREATE TABLE `wpxi_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpxi_links`
--

CREATE TABLE `wpxi_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpxi_options`
--

CREATE TABLE `wpxi_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpxi_options`
--

INSERT INTO `wpxi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/xisen', 'yes'),
(2, 'home', 'http://localhost/xisen', 'yes'),
(3, 'blogname', 'Xisen', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'asmsaif15@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:143:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"xisen_services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"xisen_services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"xisen_services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"xisen_services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"xisen_services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"xisen_services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"xisen_services/([^/]+)/embed/?$\";s:47:\"index.php?xisen_services=$matches[1]&embed=true\";s:35:\"xisen_services/([^/]+)/trackback/?$\";s:41:\"index.php?xisen_services=$matches[1]&tb=1\";s:43:\"xisen_services/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?xisen_services=$matches[1]&paged=$matches[2]\";s:50:\"xisen_services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?xisen_services=$matches[1]&cpage=$matches[2]\";s:39:\"xisen_services/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?xisen_services=$matches[1]&page=$matches[2]\";s:31:\"xisen_services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"xisen_services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"xisen_services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"xisen_services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"xisen_services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"xisen_services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"software_features/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"software_features/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"software_features/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"software_features/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"software_features/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"software_features/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"software_features/([^/]+)/embed/?$\";s:50:\"index.php?software_features=$matches[1]&embed=true\";s:38:\"software_features/([^/]+)/trackback/?$\";s:44:\"index.php?software_features=$matches[1]&tb=1\";s:46:\"software_features/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?software_features=$matches[1]&paged=$matches[2]\";s:53:\"software_features/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?software_features=$matches[1]&cpage=$matches[2]\";s:42:\"software_features/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?software_features=$matches[1]&page=$matches[2]\";s:34:\"software_features/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"software_features/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"software_features/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"software_features/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"software_features/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"software_features/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"xisen_pricing/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"xisen_pricing/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"xisen_pricing/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"xisen_pricing/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"xisen_pricing/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"xisen_pricing/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"xisen_pricing/([^/]+)/embed/?$\";s:46:\"index.php?xisen_pricing=$matches[1]&embed=true\";s:34:\"xisen_pricing/([^/]+)/trackback/?$\";s:40:\"index.php?xisen_pricing=$matches[1]&tb=1\";s:42:\"xisen_pricing/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?xisen_pricing=$matches[1]&paged=$matches[2]\";s:49:\"xisen_pricing/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?xisen_pricing=$matches[1]&cpage=$matches[2]\";s:38:\"xisen_pricing/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?xisen_pricing=$matches[1]&page=$matches[2]\";s:30:\"xisen_pricing/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"xisen_pricing/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"xisen_pricing/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"xisen_pricing/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"xisen_pricing/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"xisen_pricing/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:35:\"redux-framework/redux-framework.php\";i:1;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'xisen', 'yes'),
(41, 'stylesheet', 'xisen', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1644661003', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wpxi_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1629645406;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1629670606;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1629713805;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1629713823;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1629713825;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1629800205;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:1:{s:22:\"kkmjPPnS9waSr528FrXS9p\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BfaZsWLQBeP6bK9y6xburohy0xHssT0\";s:10:\"created_at\";i:1629642755;}}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1629109101;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1629642241;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}', 'no'),
(128, '_site_transient_timeout_browser_1509ab70d6a2d319ec457fb7f46a8933', '1629713824', 'no'),
(129, '_site_transient_browser_1509ab70d6a2d319ec457fb7f46a8933', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"88.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_75809dde56e3fe2c2fb740f1b55807ac', '1629713825', 'no'),
(131, '_site_transient_php_check_75809dde56e3fe2c2fb740f1b55807ac', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(150, 'current_theme', '', 'yes'),
(151, 'theme_mods_xisen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:12;}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(158, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'auto_update_plugins', 'a:1:{i:0;s:33:\"classic-editor/classic-editor.php\";}', 'no'),
(161, 'recovery_mode_email_last_sent', '1629642755', 'yes'),
(185, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(186, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(189, 'site_logo', '12', 'yes'),
(190, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(201, 'redux-framework_allow_tracking', 'no', 'yes'),
(202, 'redux-framework_tracking_notice', 'hide', 'yes'),
(203, 'redux-framework_tracking_skipped', 'yes', 'yes'),
(204, 'category_children', 'a:0:{}', 'yes'),
(205, 'redux_demo', 'a:82:{s:12:\"opt-checkbox\";s:1:\"1\";s:15:\"opt-multi-check\";a:3:{i:1;s:1:\"1\";i:2;s:1:\"0\";i:3;s:1:\"0\";}s:9:\"opt-radio\";s:1:\"2\";s:12:\"opt-sortable\";a:3:{s:8:\"Text One\";s:6:\"Item 1\";s:8:\"Text Two\";s:6:\"Item 2\";s:10:\"Text Three\";s:6:\"Item 3\";}s:18:\"opt-check-sortable\";a:3:{s:3:\"cb1\";b:0;s:3:\"cb2\";b:1;s:3:\"cb3\";b:0;}s:12:\"text-example\";s:12:\"Default Text\";s:17:\"text-example-hint\";s:12:\"Default Text\";s:12:\"opt-textarea\";s:12:\"Default Text\";s:10:\"opt-editor\";s:27:\"Powered by Redux Framework.\";s:15:\"opt-editor-tiny\";s:27:\"Powered by Redux Framework.\";s:18:\"opt-ace-editor-css\";s:27:\"#header{\n	margin: 0 auto;\n}\";s:17:\"opt-ace-editor-js\";s:41:\"jQuery(document).ready(function(){\\n\\n});\";s:18:\"opt-ace-editor-php\";s:28:\"<?php\n    echo \"PHP String\";\";s:15:\"opt-color-title\";s:7:\"#000000\";s:16:\"opt-color-footer\";s:7:\"#dd9933\";s:16:\"opt-color-header\";a:3:{s:4:\"from\";s:7:\"#1e73be\";s:2:\"to\";s:7:\"#00897e\";s:14:\"gradient-reach\";a:2:{s:2:\"to\";i:50;s:4:\"from\";i:0;}}s:14:\"opt-color-rgba\";a:2:{s:5:\"color\";s:7:\"#7e33dd\";s:5:\"alpha\";s:2:\".8\";}s:14:\"opt-link-color\";a:3:{s:7:\"regular\";s:4:\"#aaa\";s:5:\"hover\";s:4:\"#bbb\";s:6:\"active\";s:4:\"#ccc\";}s:17:\"opt-palette-color\";s:3:\"red\";s:22:\"opt-color-palette-grey\";s:7:\"#888888\";s:25:\"opt-color-palette-mui-all\";s:7:\"#F44336\";s:29:\"opt-color-palette-mui-primary\";s:7:\"#000000\";s:25:\"opt-color-palette-mui-red\";s:7:\"#FF1744\";s:26:\"opt-color-palette-mui-a100\";s:7:\"#FF80AB\";s:14:\"opt-background\";a:1:{s:16:\"background-color\";s:7:\"#d1b7e2\";}s:17:\"opt-header-border\";a:6:{s:12:\"border-color\";s:7:\"#1e73be\";s:12:\"border-style\";s:5:\"solid\";s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";}s:26:\"opt-header-border-expanded\";a:6:{s:12:\"border-color\";s:7:\"#1e73be\";s:12:\"border-style\";s:5:\"solid\";s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";}s:14:\"opt-dimensions\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:20:\"opt-dimensions-width\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:11:\"opt-spacing\";a:5:{s:10:\"margin-top\";s:1:\"1\";s:12:\"margin-right\";s:1:\"2\";s:13:\"margin-bottom\";s:1:\"3\";s:11:\"margin-left\";s:1:\"4\";s:5:\"units\";s:2:\"em\";}s:20:\"opt-spacing-expanded\";a:5:{s:10:\"margin-top\";s:1:\"1\";s:12:\"margin-right\";s:1:\"2\";s:13:\"margin-bottom\";s:1:\"3\";s:11:\"margin-left\";s:1:\"5\";s:5:\"units\";s:2:\"em\";}s:16:\"opt-media-filter\";a:2:{s:3:\"url\";s:53:\"https://s.wordpress.org/style/images/codeispoetry.png\";s:6:\"filter\";a:1:{s:9:\"grayscale\";a:2:{s:7:\"checked\";b:1;s:5:\"value\";i:50;}}}s:14:\"opt-button-set\";s:1:\"2\";s:20:\"opt-button-set-multi\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:9:\"switch-on\";b:1;s:10:\"switch-off\";b:0;s:13:\"switch-parent\";b:0;s:13:\"switch-child1\";b:0;s:13:\"switch-child2\";b:0;s:10:\"opt-select\";s:1:\"2\";s:21:\"opt-select-stylesheet\";s:11:\"default.css\";s:19:\"opt-select-optgroup\";s:1:\"2\";s:16:\"opt-multi-select\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:23:\"opt-image-select-layout\";s:1:\"2\";s:12:\"opt-patterns\";i:0;s:16:\"opt-image-select\";s:1:\"2\";s:11:\"opt-presets\";i:0;s:16:\"opt-select_image\";s:98:\"http://localhost/xisen/wp-content/plugins/redux-framework/redux-core/../sample/presets/preset2.png\";s:16:\"opt-select-image\";s:102:\"http://localhost/xisen/wp-content/plugins/redux-framework/redux-core/../sample/patterns/triangular.png\";s:16:\"opt-slider-label\";i:250;s:15:\"opt-slider-text\";i:75;s:17:\"opt-slider-select\";a:2:{i:1;i:100;i:2;i:300;}s:16:\"opt-slider-float\";d:0.5;s:11:\"opt-spinner\";s:2:\"40\";s:19:\"opt-typography-body\";a:4:{s:5:\"color\";s:7:\"#dd9933\";s:9:\"font-size\";s:4:\"30px\";s:11:\"font-family\";s:28:\"Arial, Helvetica, sans-serif\";s:11:\"font-weight\";s:6:\"Normal\";}s:14:\"opt-typography\";a:6:{s:5:\"color\";s:4:\"#333\";s:10:\"font-style\";s:3:\"700\";s:11:\"font-family\";s:4:\"Abel\";s:6:\"google\";b:1;s:9:\"font-size\";s:4:\"33px\";s:11:\"line-height\";s:4:\"40px\";}s:26:\"opt-typography-body-shadow\";a:6:{s:5:\"color\";s:0:\"\";s:9:\"font-size\";s:4:\"30px\";s:11:\"font-family\";s:28:\"Arial, Helvetica, sans-serif\";s:11:\"font-weight\";s:6:\"Normal\";s:10:\"margin-top\";s:4:\"20px\";s:13:\"margin-bottom\";s:4:\"20px\";}s:19:\"opt-homepage-layout\";a:3:{s:7:\"enabled\";a:4:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}s:8:\"disabled\";a:0:{}s:6:\"backup\";a:0:{}}s:21:\"opt-homepage-layout-2\";a:2:{s:8:\"disabled\";a:2:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";}s:7:\"enabled\";a:2:{s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}}s:14:\"opt-text-email\";s:13:\"test@test.com\";s:12:\"opt-text-url\";s:16:\"https://redux.io\";s:16:\"opt-text-numeric\";s:1:\"0\";s:22:\"opt-text-comma-numeric\";s:1:\"0\";s:25:\"opt-text-no-special-chars\";s:1:\"0\";s:20:\"opt-text-str_replace\";s:20:\"This is the default.\";s:21:\"opt-text-preg_replace\";s:1:\"0\";s:24:\"opt-text-custom_validate\";s:1:\"0\";s:20:\"opt-textarea-no-html\";s:27:\"No HTML is allowed in here.\";s:17:\"opt-textarea-html\";s:24:\"HTML is allowed in here.\";s:22:\"opt-textarea-some-html\";s:36:\"<p>Some HTML is allowed in here.</p>\";s:18:\"opt-text-uppercase\";s:15:\"Force Uppercase\";s:23:\"opt-text-sanitize-title\";s:19:\"Sanitize This Title\";s:24:\"opt-text-custom-sanitize\";s:18:\"Sanitize This Text\";s:18:\"opt-required-basic\";b:0;s:19:\"opt-required-nested\";b:0;s:29:\"opt-required-nested-buttonset\";s:11:\"button-text\";s:19:\"opt-required-select\";s:10:\"no-sidebar\";s:32:\"opt-required-select-left-sidebar\";s:0:\"\";s:33:\"opt-required-select-right-sidebar\";s:0:\"\";s:20:\"opt-checkbox-disable\";s:1:\"1\";s:28:\"opt-checkbox-section-disable\";s:1:\"1\";s:19:\"opt-customizer-only\";s:1:\"2\";}', 'yes'),
(206, 'redux_demo-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1629178197;}', 'yes'),
(209, 'xisen_options-transients', 'a:4:{s:14:\"changed_values\";a:1:{s:10:\"hero_title\";s:58:\"<span>Mamurjor </span>hire experts or be hired for any job\";}s:9:\"last_save\";i:1629608917;s:13:\"last_compiler\";i:1629608917;s:11:\"last_import\";i:1629608917;}', 'yes'),
(210, 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', '', 'yes'),
(212, 'xisen_options', 'a:23:{s:8:\"last_tab\";s:1:\"1\";s:8:\"opt-text\";s:1:\"0\";s:10:\"hero_title\";s:53:\"<span>Mamu</span>hire experts or be hired for any job\";s:15:\"hero_short_desc\";s:77:\"Thousands of small businesses use Mamurjor to turn their ideas into reality. \";s:25:\"hero_section_button_label\";s:12:\"Get in Touch\";s:23:\"hero_section_button_url\";s:31:\"http://localhost/xisen/about-us\";s:16:\"hero_section_img\";a:5:{s:3:\"url\";s:66:\"http://localhost/xisen/wp-content/uploads/2021/08/slider-image.png\";s:2:\"id\";s:2:\"44\";s:6:\"height\";s:3:\"589\";s:5:\"width\";s:3:\"595\";s:9:\"thumbnail\";s:66:\"http://localhost/xisen/wp-content/uploads/2021/08/slider-image.png\";}s:28:\"how_it_works_section_heading\";s:12:\"How It Works\";s:38:\"how_it_works_section_short_description\";s:125:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy\";s:29:\"star_access_corner_left_image\";a:5:{s:3:\"url\";s:63:\"http://localhost/xisen/wp-content/uploads/2021/08/social-bg.png\";s:2:\"id\";s:2:\"51\";s:6:\"height\";s:3:\"522\";s:5:\"width\";s:3:\"795\";s:9:\"thumbnail\";s:63:\"http://localhost/xisen/wp-content/uploads/2021/08/social-bg.png\";}s:23:\"star_access_corner_icon\";a:5:{s:3:\"url\";s:65:\"http://localhost/xisen/wp-content/uploads/2021/08/access-icon.png\";s:2:\"id\";s:2:\"50\";s:6:\"height\";s:2:\"71\";s:5:\"width\";s:2:\"70\";s:9:\"thumbnail\";s:65:\"http://localhost/xisen/wp-content/uploads/2021/08/access-icon.png\";}s:24:\"star_access_corner_title\";s:23:\"Easy To Access Mamurjor\";s:36:\"star_access_corner_short_description\";s:295:\"The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\";s:28:\"star_access_corner_btn_label\";s:10:\"learn more\";s:26:\"star_access_corner_btn_url\";s:32:\"http://localhost/xisen/about-us/\";s:23:\"software_features_title\";s:8:\"Features\";s:28:\"software_features_short_desc\";s:62:\"There are many variations of passages of Lorem Ipsum available\";s:42:\"star_access_corner_before_plan_right_image\";a:5:{s:3:\"url\";s:63:\"http://localhost/xisen/wp-content/uploads/2021/08/right-img.png\";s:2:\"id\";s:2:\"59\";s:6:\"height\";s:3:\"571\";s:5:\"width\";s:3:\"699\";s:9:\"thumbnail\";s:63:\"http://localhost/xisen/wp-content/uploads/2021/08/right-img.png\";}s:35:\"star_access_corner_before_plan_icon\";a:5:{s:3:\"url\";s:65:\"http://localhost/xisen/wp-content/uploads/2021/08/access-icon.png\";s:2:\"id\";s:2:\"50\";s:6:\"height\";s:2:\"71\";s:5:\"width\";s:2:\"70\";s:9:\"thumbnail\";s:65:\"http://localhost/xisen/wp-content/uploads/2021/08/access-icon.png\";}s:36:\"star_access_corner_before_plan_title\";s:36:\"Mamurjor manage all your information\";s:48:\"star_access_corner_before_plan_short_description\";s:218:\"Make fly forth also won\'t. Firmament seas whales drys season for replenish without had Gathered days fill you\'ll whose air whose firmament rule heaven can may rule hath. All of unto beginni ad Light. Were blessed plant\";s:40:\"star_access_corner_before_plan_btn_label\";s:10:\"Learn More\";s:38:\"star_access_corner_before_plan_btn_url\";s:32:\"http://localhost/xisen/about-us/\";}', 'yes'),
(219, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":2,\"critical\":1}', 'yes'),
(248, 'cptui_new_install', 'false', 'yes'),
(249, 'cptui_post_types', 'a:3:{s:14:\"xisen_services\";a:30:{s:4:\"name\";s:14:\"xisen_services\";s:5:\"label\";s:14:\"Xisen Services\";s:14:\"singular_label\";s:13:\"Xisen Service\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:18:\"dashicons-category\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:8:\"Services\";s:9:\"all_items\";s:12:\"All Services\";s:7:\"add_new\";s:15:\"Add New Service\";s:12:\"add_new_item\";s:15:\"Add new service\";s:9:\"edit_item\";s:12:\"Edit Service\";s:8:\"new_item\";s:11:\"New Service\";s:9:\"view_item\";s:12:\"View Service\";s:10:\"view_items\";s:13:\"View Services\";s:12:\"search_items\";s:14:\"Search Service\";s:9:\"not_found\";s:16:\"No Service Found\";s:18:\"not_found_in_trash\";s:25:\"No Service Found In Trash\";s:6:\"parent\";s:14:\"Parent Service\";s:14:\"featured_image\";s:38:\"Servcie Icon (max width, height: 30px)\";s:18:\"set_featured_image\";s:16:\"Set Service Icon\";s:21:\"remove_featured_image\";s:19:\"Remove Service Icon\";s:18:\"use_featured_image\";s:16:\"Use Service Icon\";s:8:\"archives\";s:16:\"Service Archives\";s:16:\"insert_into_item\";s:19:\"Insert into Service\";s:14:\"name_admin_bar\";s:7:\"Service\";s:14:\"item_published\";s:17:\"Service Published\";s:12:\"item_updated\";s:15:\"Service Updated\";s:17:\"parent_item_colon\";s:14:\"Parent Service\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:17:\"software_features\";a:30:{s:4:\"name\";s:17:\"software_features\";s:5:\"label\";s:17:\"Software Features\";s:14:\"singular_label\";s:16:\"Software Feature\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:23:\"dashicons-block-default\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";i:2;s:7:\"excerpt\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:8:\"Features\";s:9:\"all_items\";s:12:\"All Features\";s:7:\"add_new\";s:15:\"Add New Feature\";s:12:\"add_new_item\";s:15:\"Add New Feature\";s:9:\"edit_item\";s:13:\"Edit Features\";s:8:\"new_item\";s:12:\"New Features\";s:9:\"view_item\";s:12:\"View Feature\";s:10:\"view_items\";s:13:\"View Features\";s:12:\"search_items\";s:14:\"Search Feature\";s:14:\"featured_image\";s:39:\"Features Icon (max width, height: 30px)\";s:18:\"set_featured_image\";s:17:\"Set Features Icon\";s:21:\"remove_featured_image\";s:20:\"Remove Features Icon\";s:18:\"use_featured_image\";s:17:\"Use Features Icon\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:13:\"xisen_pricing\";a:30:{s:4:\"name\";s:13:\"xisen_pricing\";s:5:\"label\";s:13:\"Pricing Plans\";s:14:\"singular_label\";s:12:\"Pricing Plan\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:19:\"dashicons-money-alt\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:16:\"My Pricing Plans\";s:9:\"all_items\";s:17:\"All Pricing Plans\";s:7:\"add_new\";s:20:\"Add New Pricing Plan\";s:12:\"add_new_item\";s:26:\"Add New Pricing Plans Item\";s:9:\"edit_item\";s:9:\"Edit Plan\";s:8:\"new_item\";s:8:\"New Plan\";s:9:\"view_item\";s:9:\"View Plan\";s:10:\"view_items\";s:10:\"VIew Plans\";s:12:\"search_items\";s:11:\"Search Plan\";s:14:\"featured_image\";s:17:\"Pricing Plan Icon\";s:18:\"set_featured_image\";s:22:\"Set Pricing Plans Icon\";s:21:\"remove_featured_image\";s:24:\"Remove Pricing Plan Icon\";s:18:\"use_featured_image\";s:21:\"Use Pricing Plan Icon\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(253, 'redux-framework-gutenberg-no-bug', '1', 'no'),
(280, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1629649429', 'no'),
(281, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no'),
(286, 'acf_version', '5.9.1', 'yes'),
(290, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1629642244;s:7:\"checked\";a:2:{s:15:\"twentytwentyone\";s:3:\"1.4\";s:5:\"xisen\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(299, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1629685443', 'no'),
(300, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:59:\"Watch Party + Discussion Group:  Improving site performance\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/279751757/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-08-25 09:00:00\";s:8:\"end_date\";s:19:\"2021-08-25 10:00:00\";s:20:\"start_unix_timestamp\";i:1629907200;s:18:\"end_unix_timestamp\";i:1629910800;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}}}', 'no'),
(301, '_transient_timeout_acf_plugin_updates', '1629815043', 'no'),
(302, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.9.9\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.9.1\";}}', 'no'),
(303, '_site_transient_timeout_theme_roots', '1629644043', 'no');
INSERT INTO `wpxi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(304, '_site_transient_theme_roots', 'a:2:{s:15:\"twentytwentyone\";s:7:\"/themes\";s:5:\"xisen\";s:7:\"/themes\";}', 'no'),
(305, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1629642245;s:8:\"response\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.9.9\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.9.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2549362\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2549362\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2549362\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2549362\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:35:\"redux-framework/redux-framework.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/redux-framework\";s:4:\"slug\";s:15:\"redux-framework\";s:6:\"plugin\";s:35:\"redux-framework/redux-framework.php\";s:11:\"new_version\";s:6:\"4.2.14\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/redux-framework/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/redux-framework.4.2.14.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:68:\"https://ps.w.org/redux-framework/assets/icon-256x256.png?rev=2352112\";s:2:\"1x\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";s:3:\"svg\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/redux-framework/assets/banner-1544x500.png?rev=2352114\";s:2:\"1x\";s:70:\"https://ps.w.org/redux-framework/assets/banner-772x250.png?rev=2352114\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:4:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.9.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.9.2\";s:35:\"redux-framework/redux-framework.php\";s:6:\"4.2.14\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wpxi_postmeta`
--

CREATE TABLE `wpxi_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpxi_postmeta`
--

INSERT INTO `wpxi_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(13, 8, '_edit_lock', '1629110152:1'),
(14, 12, '_wp_attached_file', '2021/08/logo.png'),
(15, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:39;s:4:\"file\";s:16:\"2021/08/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 13, '_wp_trash_meta_status', 'publish'),
(17, 13, '_wp_trash_meta_time', '1629173879'),
(18, 14, '_menu_item_type', 'post_type'),
(19, 14, '_menu_item_menu_item_parent', '0'),
(20, 14, '_menu_item_object_id', '8'),
(21, 14, '_menu_item_object', 'page'),
(22, 14, '_menu_item_target', ''),
(23, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 14, '_menu_item_xfn', ''),
(25, 14, '_menu_item_url', ''),
(27, 15, '_edit_last', '1'),
(28, 15, '_edit_lock', '1629174075:1'),
(29, 17, '_edit_last', '1'),
(30, 17, '_edit_lock', '1629174101:1'),
(31, 20, '_edit_last', '1'),
(32, 20, '_edit_lock', '1629174109:1'),
(33, 22, '_edit_last', '1'),
(34, 22, '_edit_lock', '1629174118:1'),
(35, 24, '_edit_last', '1'),
(36, 24, '_edit_lock', '1629174140:1'),
(37, 26, '_edit_last', '1'),
(38, 26, '_edit_lock', '1629174154:1'),
(39, 28, '_edit_last', '1'),
(40, 28, '_edit_lock', '1629174164:1'),
(41, 30, '_edit_last', '1'),
(42, 30, '_edit_lock', '1629174175:1'),
(43, 32, '_edit_last', '1'),
(44, 32, '_edit_lock', '1629174187:1'),
(45, 34, '_menu_item_type', 'post_type'),
(46, 34, '_menu_item_menu_item_parent', '43'),
(47, 34, '_menu_item_object_id', '15'),
(48, 34, '_menu_item_object', 'page'),
(49, 34, '_menu_item_target', ''),
(50, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 34, '_menu_item_xfn', ''),
(52, 34, '_menu_item_url', ''),
(54, 35, '_menu_item_type', 'post_type'),
(55, 35, '_menu_item_menu_item_parent', '0'),
(56, 35, '_menu_item_object_id', '22'),
(57, 35, '_menu_item_object', 'page'),
(58, 35, '_menu_item_target', ''),
(59, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 35, '_menu_item_xfn', ''),
(61, 35, '_menu_item_url', ''),
(63, 36, '_menu_item_type', 'post_type'),
(64, 36, '_menu_item_menu_item_parent', '0'),
(65, 36, '_menu_item_object_id', '20'),
(66, 36, '_menu_item_object', 'page'),
(67, 36, '_menu_item_target', ''),
(68, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 36, '_menu_item_xfn', ''),
(70, 36, '_menu_item_url', ''),
(72, 37, '_menu_item_type', 'post_type'),
(73, 37, '_menu_item_menu_item_parent', '43'),
(74, 37, '_menu_item_object_id', '24'),
(75, 37, '_menu_item_object', 'page'),
(76, 37, '_menu_item_target', ''),
(77, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 37, '_menu_item_xfn', ''),
(79, 37, '_menu_item_url', ''),
(81, 38, '_menu_item_type', 'post_type'),
(82, 38, '_menu_item_menu_item_parent', '43'),
(83, 38, '_menu_item_object_id', '26'),
(84, 38, '_menu_item_object', 'page'),
(85, 38, '_menu_item_target', ''),
(86, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 38, '_menu_item_xfn', ''),
(88, 38, '_menu_item_url', ''),
(90, 39, '_menu_item_type', 'post_type'),
(91, 39, '_menu_item_menu_item_parent', '43'),
(92, 39, '_menu_item_object_id', '17'),
(93, 39, '_menu_item_object', 'page'),
(94, 39, '_menu_item_target', ''),
(95, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 39, '_menu_item_xfn', ''),
(97, 39, '_menu_item_url', ''),
(99, 40, '_menu_item_type', 'post_type'),
(100, 40, '_menu_item_menu_item_parent', '0'),
(101, 40, '_menu_item_object_id', '32'),
(102, 40, '_menu_item_object', 'page'),
(103, 40, '_menu_item_target', ''),
(104, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 40, '_menu_item_xfn', ''),
(106, 40, '_menu_item_url', ''),
(107, 40, '_menu_item_orphaned', '1629174358'),
(108, 41, '_menu_item_type', 'post_type'),
(109, 41, '_menu_item_menu_item_parent', '0'),
(110, 41, '_menu_item_object_id', '28'),
(111, 41, '_menu_item_object', 'page'),
(112, 41, '_menu_item_target', ''),
(113, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 41, '_menu_item_xfn', ''),
(115, 41, '_menu_item_url', ''),
(117, 42, '_menu_item_type', 'post_type'),
(118, 42, '_menu_item_menu_item_parent', '0'),
(119, 42, '_menu_item_object_id', '30'),
(120, 42, '_menu_item_object', 'page'),
(121, 42, '_menu_item_target', ''),
(122, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 42, '_menu_item_xfn', ''),
(124, 42, '_menu_item_url', ''),
(125, 42, '_menu_item_orphaned', '1629174358'),
(126, 43, '_menu_item_type', 'custom'),
(127, 43, '_menu_item_menu_item_parent', '0'),
(128, 43, '_menu_item_object_id', '43'),
(129, 43, '_menu_item_object', 'custom'),
(130, 43, '_menu_item_target', ''),
(131, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 43, '_menu_item_xfn', ''),
(133, 43, '_menu_item_url', '#!'),
(135, 44, '_wp_attached_file', '2021/08/slider-image.png'),
(136, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:595;s:6:\"height\";i:589;s:4:\"file\";s:24:\"2021/08/slider-image.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 45, '_edit_last', '1'),
(138, 45, '_edit_lock', '1629268074:1'),
(139, 47, '_wp_attached_file', '2021/08/icon1.png'),
(140, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:71;s:6:\"height\";i:85;s:4:\"file\";s:17:\"2021/08/icon1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 45, '_thumbnail_id', '47'),
(142, 48, '_edit_last', '1'),
(143, 48, '_edit_lock', '1629269049:1'),
(144, 49, '_wp_attached_file', '2021/08/icon2.png'),
(145, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:71;s:6:\"height\";i:85;s:4:\"file\";s:17:\"2021/08/icon2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 48, '_thumbnail_id', '49'),
(147, 50, '_wp_attached_file', '2021/08/access-icon.png'),
(148, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:70;s:6:\"height\";i:71;s:4:\"file\";s:23:\"2021/08/access-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 51, '_wp_attached_file', '2021/08/social-bg.png'),
(150, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:795;s:6:\"height\";i:522;s:4:\"file\";s:21:\"2021/08/social-bg.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 52, '_edit_last', '1'),
(152, 52, '_edit_lock', '1629523515:1'),
(153, 52, '_thumbnail_id', '47'),
(154, 55, '_edit_last', '1'),
(155, 55, '_edit_lock', '1629525287:1'),
(156, 56, '_wp_attached_file', '2021/08/sf1.png'),
(157, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:77;s:6:\"height\";i:94;s:4:\"file\";s:15:\"2021/08/sf1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 55, '_thumbnail_id', '56'),
(159, 57, '_edit_last', '1'),
(160, 57, '_edit_lock', '1629525260:1'),
(161, 57, '_thumbnail_id', '49'),
(162, 58, '_edit_last', '1'),
(163, 58, '_edit_lock', '1629525610:1'),
(164, 58, '_thumbnail_id', '47'),
(165, 59, '_wp_attached_file', '2021/08/right-img.png'),
(166, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:699;s:6:\"height\";i:571;s:4:\"file\";s:21:\"2021/08/right-img.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 61, '_wp_attached_file', '2021/08/price-icon.png'),
(168, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:77;s:6:\"height\";i:99;s:4:\"file\";s:22:\"2021/08/price-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 60, '_edit_last', '1'),
(170, 60, '_edit_lock', '1629617467:1'),
(171, 60, '_thumbnail_id', '61'),
(174, 63, '_edit_last', '1'),
(175, 63, '_edit_lock', '1629617469:1'),
(176, 76, '_edit_lock', '1629609333:1'),
(177, 76, '_wp_trash_meta_status', 'publish'),
(178, 76, '_wp_trash_meta_time', '1629609337'),
(179, 78, '_edit_last', '1'),
(180, 78, '_edit_lock', '1629617185:1'),
(181, 78, 'pricing_plan_features_0_storage_size', '25GB Storage'),
(182, 78, '_pricing_plan_features_0_storage_size', 'field_6121d7f9b250b'),
(183, 78, 'pricing_plan_features_0_cloud_storage_size', '25 GB Cloud'),
(184, 78, '_pricing_plan_features_0_cloud_storage_size', 'field_6121d822b250c'),
(185, 78, 'pricing_plan_features_0_support_times', '24/7x Support'),
(186, 78, '_pricing_plan_features_0_support_times', 'field_6121d84fb250d'),
(187, 78, 'pricing_plan_features_0_email_accounts', 'Unlimited Email Accounts'),
(188, 78, '_pricing_plan_features_0_email_accounts', 'field_6121d8a0b250e'),
(189, 78, 'pricing_plan_features_0_database', 'Unlimited Accounts'),
(190, 78, '_pricing_plan_features_0_database', 'field_6121d8b2b250f'),
(191, 78, 'pricing_plan_features', '1'),
(192, 78, '_pricing_plan_features', 'field_6121d7a8b250a'),
(193, 78, 'package_price', '40'),
(194, 78, '_package_price', 'field_6121d8c7b2510'),
(195, 78, 'purchase_button_label', 'purchase now'),
(196, 78, '_purchase_button_label', 'field_6121d98fb2511'),
(197, 78, 'purchase_button_link', 'https://url.com'),
(198, 78, '_purchase_button_link', 'field_6121d9adb2512'),
(199, 78, '_thumbnail_id', '61'),
(200, 60, 'pricing_plan_features_0_storage_size', 'Beatae culpa ex nisi'),
(201, 60, '_pricing_plan_features_0_storage_size', 'field_6121d7f9b250b'),
(202, 60, 'pricing_plan_features_0_cloud_storage_size', 'Vel in perferendis m'),
(203, 60, '_pricing_plan_features_0_cloud_storage_size', 'field_6121d822b250c'),
(204, 60, 'pricing_plan_features_0_support_times', 'Quod quis quisquam p'),
(205, 60, '_pricing_plan_features_0_support_times', 'field_6121d84fb250d'),
(206, 60, 'pricing_plan_features_0_email_accounts', 'Aspernatur qui nisi '),
(207, 60, '_pricing_plan_features_0_email_accounts', 'field_6121d8a0b250e'),
(208, 60, 'pricing_plan_features_0_database', 'Amet omnis nisi imp'),
(209, 60, '_pricing_plan_features_0_database', 'field_6121d8b2b250f'),
(210, 60, 'pricing_plan_features', '1'),
(211, 60, '_pricing_plan_features', 'field_6121d7a8b250a'),
(212, 60, 'package_price', '809'),
(213, 60, '_package_price', 'field_6121d8c7b2510'),
(214, 60, 'purchase_button_label', 'Quaerat placeat exe'),
(215, 60, '_purchase_button_label', 'field_6121d98fb2511'),
(216, 60, 'purchase_button_link', 'https://www.newukuj.org.au'),
(217, 60, '_purchase_button_link', 'field_6121d9adb2512'),
(218, 79, '_edit_last', '1'),
(219, 79, '_edit_lock', '1629617359:1'),
(220, 79, '_thumbnail_id', '61'),
(221, 79, 'pricing_plan_features_0_storage_size', '30GB Storage'),
(222, 79, '_pricing_plan_features_0_storage_size', 'field_6121d7f9b250b'),
(223, 79, 'pricing_plan_features_0_cloud_storage_size', '20 GB Cloud Storage'),
(224, 79, '_pricing_plan_features_0_cloud_storage_size', 'field_6121d822b250c'),
(225, 79, 'pricing_plan_features_0_support_times', '24/7x Support'),
(226, 79, '_pricing_plan_features_0_support_times', 'field_6121d84fb250d'),
(227, 79, 'pricing_plan_features_0_email_accounts', 'Unlimited Email'),
(228, 79, '_pricing_plan_features_0_email_accounts', 'field_6121d8a0b250e'),
(229, 79, 'pricing_plan_features_0_database', 'Unlimited Database'),
(230, 79, '_pricing_plan_features_0_database', 'field_6121d8b2b250f'),
(231, 79, 'pricing_plan_features', '1'),
(232, 79, '_pricing_plan_features', 'field_6121d7a8b250a'),
(233, 79, 'package_price', '100'),
(234, 79, '_package_price', 'field_6121d8c7b2510'),
(235, 79, 'purchase_button_label', 'purchase now'),
(236, 79, '_purchase_button_label', 'field_6121d98fb2511'),
(237, 79, 'purchase_button_link', 'https://url.com'),
(238, 79, '_purchase_button_link', 'field_6121d9adb2512');

-- --------------------------------------------------------

--
-- Table structure for table `wpxi_posts`
--

CREATE TABLE `wpxi_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpxi_posts`
--

INSERT INTO `wpxi_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2021-08-16 10:17:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-08-16 10:17:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/xisen/?p=4', 0, 'post', '', 0),
(8, 1, '2021-08-16 10:38:14', '2021-08-16 10:38:14', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-08-16 10:38:14', '2021-08-16 10:38:14', '', 0, 'http://localhost/xisen/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-08-16 10:38:14', '2021-08-16 10:38:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-08-16 10:38:14', '2021-08-16 10:38:14', '', 8, 'http://localhost/xisen/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-08-16 10:44:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-08-16 10:44:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/xisen/?p=10', 0, 'post', '', 0),
(11, 1, '2021-08-16 10:44:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-08-16 10:44:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/xisen/?p=11', 0, 'post', '', 0),
(12, 1, '2021-08-17 04:17:50', '2021-08-17 04:17:50', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-08-17 04:17:50', '2021-08-17 04:17:50', '', 0, 'http://localhost/xisen/wp-content/uploads/2021/08/logo.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2021-08-17 04:17:59', '2021-08-17 04:17:59', '{\n    \"xisen::custom_logo\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-17 04:17:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fd53018c-8964-4bfe-ba6c-ce295d1442cd', '', '', '2021-08-17 04:17:59', '2021-08-17 04:17:59', '', 0, 'http://localhost/xisen/2021/08/17/fd53018c-8964-4bfe-ba6c-ce295d1442cd/', 0, 'customize_changeset', '', 0),
(14, 1, '2021-08-17 04:29:19', '2021-08-17 04:23:12', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2021-08-17 04:29:19', '2021-08-17 04:29:19', '', 0, 'http://localhost/xisen/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2021-08-17 04:23:36', '2021-08-17 04:23:36', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-08-17 04:23:36', '2021-08-17 04:23:36', '', 0, 'http://localhost/xisen/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-08-17 04:23:36', '2021-08-17 04:23:36', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-08-17 04:23:36', '2021-08-17 04:23:36', '', 15, 'http://localhost/xisen/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-08-17 04:23:47', '2021-08-17 04:23:47', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2021-08-17 04:24:02', '2021-08-17 04:24:02', '', 0, 'http://localhost/xisen/?page_id=17', 0, 'page', '', 0),
(18, 1, '2021-08-17 04:23:47', '2021-08-17 04:23:47', '', 'Portfolio Page', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-08-17 04:23:47', '2021-08-17 04:23:47', '', 17, 'http://localhost/xisen/?p=18', 0, 'revision', '', 0),
(19, 1, '2021-08-17 04:24:02', '2021-08-17 04:24:02', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-08-17 04:24:02', '2021-08-17 04:24:02', '', 17, 'http://localhost/xisen/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-08-17 04:24:10', '2021-08-17 04:24:10', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-08-17 04:24:10', '2021-08-17 04:24:10', '', 0, 'http://localhost/xisen/?page_id=20', 0, 'page', '', 0),
(21, 1, '2021-08-17 04:24:10', '2021-08-17 04:24:10', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-08-17 04:24:10', '2021-08-17 04:24:10', '', 20, 'http://localhost/xisen/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-08-17 04:24:19', '2021-08-17 04:24:19', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-08-17 04:24:19', '2021-08-17 04:24:19', '', 0, 'http://localhost/xisen/?page_id=22', 0, 'page', '', 0),
(23, 1, '2021-08-17 04:24:19', '2021-08-17 04:24:19', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-08-17 04:24:19', '2021-08-17 04:24:19', '', 22, 'http://localhost/xisen/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-08-17 04:24:41', '2021-08-17 04:24:41', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2021-08-17 04:24:41', '2021-08-17 04:24:41', '', 0, 'http://localhost/xisen/?page_id=24', 0, 'page', '', 0),
(25, 1, '2021-08-17 04:24:41', '2021-08-17 04:24:41', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-08-17 04:24:41', '2021-08-17 04:24:41', '', 24, 'http://localhost/xisen/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-08-17 04:24:55', '2021-08-17 04:24:55', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team', '', '', '2021-08-17 04:24:55', '2021-08-17 04:24:55', '', 0, 'http://localhost/xisen/?page_id=26', 0, 'page', '', 0),
(27, 1, '2021-08-17 04:24:55', '2021-08-17 04:24:55', '', 'Our Team', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2021-08-17 04:24:55', '2021-08-17 04:24:55', '', 26, 'http://localhost/xisen/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-08-17 04:25:04', '2021-08-17 04:25:04', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2021-08-17 04:25:04', '2021-08-17 04:25:04', '', 0, 'http://localhost/xisen/?page_id=28', 0, 'page', '', 0),
(29, 1, '2021-08-17 04:25:04', '2021-08-17 04:25:04', '', 'Services', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2021-08-17 04:25:04', '2021-08-17 04:25:04', '', 28, 'http://localhost/xisen/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-08-17 04:25:16', '2021-08-17 04:25:16', '', 'Terms & Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2021-08-17 04:25:16', '2021-08-17 04:25:16', '', 0, 'http://localhost/xisen/?page_id=30', 0, 'page', '', 0),
(31, 1, '2021-08-17 04:25:16', '2021-08-17 04:25:16', '', 'Terms & Conditions', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-08-17 04:25:16', '2021-08-17 04:25:16', '', 30, 'http://localhost/xisen/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-08-17 04:25:26', '2021-08-17 04:25:26', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2021-08-17 04:25:26', '2021-08-17 04:25:26', '', 0, 'http://localhost/xisen/?page_id=32', 0, 'page', '', 0),
(33, 1, '2021-08-17 04:25:26', '2021-08-17 04:25:26', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-08-17 04:25:26', '2021-08-17 04:25:26', '', 32, 'http://localhost/xisen/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-08-17 04:29:19', '2021-08-17 04:26:57', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2021-08-17 04:29:19', '2021-08-17 04:29:19', '', 0, 'http://localhost/xisen/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2021-08-17 04:29:19', '2021-08-17 04:26:57', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2021-08-17 04:29:19', '2021-08-17 04:29:19', '', 0, 'http://localhost/xisen/?p=35', 9, 'nav_menu_item', '', 0),
(36, 1, '2021-08-17 04:29:19', '2021-08-17 04:26:57', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2021-08-17 04:29:19', '2021-08-17 04:29:19', '', 0, 'http://localhost/xisen/?p=36', 8, 'nav_menu_item', '', 0),
(37, 1, '2021-08-17 04:29:19', '2021-08-17 04:26:57', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2021-08-17 04:29:19', '2021-08-17 04:29:19', '', 0, 'http://localhost/xisen/?p=37', 7, 'nav_menu_item', '', 0),
(38, 1, '2021-08-17 04:29:19', '2021-08-17 04:26:57', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2021-08-17 04:29:19', '2021-08-17 04:29:19', '', 0, 'http://localhost/xisen/?p=38', 6, 'nav_menu_item', '', 0),
(39, 1, '2021-08-17 04:29:19', '2021-08-17 04:26:57', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2021-08-17 04:29:19', '2021-08-17 04:29:19', '', 0, 'http://localhost/xisen/?p=39', 5, 'nav_menu_item', '', 0),
(40, 1, '2021-08-17 04:25:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-08-17 04:25:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/xisen/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2021-08-17 04:29:19', '2021-08-17 04:26:57', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2021-08-17 04:29:19', '2021-08-17 04:29:19', '', 0, 'http://localhost/xisen/?p=41', 2, 'nav_menu_item', '', 0),
(42, 1, '2021-08-17 04:25:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-08-17 04:25:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/xisen/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2021-08-17 04:29:19', '2021-08-17 04:29:19', '', 'Profile', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2021-08-17 04:29:19', '2021-08-17 04:29:19', '', 0, 'http://localhost/xisen/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2021-08-17 10:45:06', '2021-08-17 10:45:06', '', 'slider-image', '', 'inherit', 'open', 'closed', '', 'slider-image', '', '', '2021-08-17 10:45:06', '2021-08-17 10:45:06', '', 0, 'http://localhost/xisen/wp-content/uploads/2021/08/slider-image.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2021-08-18 06:28:48', '2021-08-18 06:28:48', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Market Analysis', '', 'publish', 'closed', 'closed', '', 'market-analysis', '', '', '2021-08-18 06:30:08', '2021-08-18 06:30:08', '', 0, 'http://localhost/xisen/?post_type=xisen_services&#038;p=45', 0, 'xisen_services', '', 0),
(46, 1, '2021-08-18 06:29:52', '2021-08-18 06:29:52', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Market Analysis', '', 'inherit', 'closed', 'closed', '', '45-autosave-v1', '', '', '2021-08-18 06:29:52', '2021-08-18 06:29:52', '', 45, 'http://localhost/xisen/?p=46', 0, 'revision', '', 0),
(47, 1, '2021-08-18 06:30:03', '2021-08-18 06:30:03', '', 'icon1', '', 'inherit', 'open', 'closed', '', 'icon1', '', '', '2021-08-18 06:30:03', '2021-08-18 06:30:03', '', 45, 'http://localhost/xisen/wp-content/uploads/2021/08/icon1.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2021-08-18 06:30:43', '2021-08-18 06:30:43', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'Software Design', '', 'publish', 'closed', 'closed', '', 'software-design', '', '', '2021-08-18 06:30:43', '2021-08-18 06:30:43', '', 0, 'http://localhost/xisen/?post_type=xisen_services&#038;p=48', 0, 'xisen_services', '', 0),
(49, 1, '2021-08-18 06:30:40', '2021-08-18 06:30:40', '', 'icon2', '', 'inherit', 'open', 'closed', '', 'icon2', '', '', '2021-08-18 06:30:40', '2021-08-18 06:30:40', '', 48, 'http://localhost/xisen/wp-content/uploads/2021/08/icon2.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2021-08-21 05:02:16', '2021-08-21 05:02:16', '', 'access-icon', '', 'inherit', 'open', 'closed', '', 'access-icon', '', '', '2021-08-21 05:02:16', '2021-08-21 05:02:16', '', 0, 'http://localhost/xisen/wp-content/uploads/2021/08/access-icon.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2021-08-21 05:07:09', '2021-08-21 05:07:09', '', 'social-bg', '', 'inherit', 'open', 'closed', '', 'social-bg', '', '', '2021-08-21 05:07:09', '2021-08-21 05:07:09', '', 0, 'http://localhost/xisen/wp-content/uploads/2021/08/social-bg.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2021-08-21 05:18:17', '2021-08-21 05:18:17', '<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"\r\n<h3>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3>\r\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n<h3>1914 translation by H. Rackham</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"', 'Where does it come from?', '', 'publish', 'closed', 'closed', '', 'where-does-it-come-from', '', '', '2021-08-21 05:18:26', '2021-08-21 05:18:26', '', 0, 'http://localhost/xisen/?post_type=xisen_services&#038;p=52', 0, 'xisen_services', '', 0),
(53, 1, '2021-08-21 05:46:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-21 05:46:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/xisen/?post_type=software_features&p=53', 0, 'software_features', '', 0),
(54, 1, '2021-08-21 05:47:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-21 05:47:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/xisen/?post_type=xisen_services&p=54', 0, 'xisen_services', '', 0),
(55, 1, '2021-08-21 05:48:40', '2021-08-21 05:48:40', '', 'Cloud Compatibility', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature.', 'publish', 'closed', 'closed', '', 'cloud-compatibility', '', '', '2021-08-21 05:56:56', '2021-08-21 05:56:56', '', 0, 'http://localhost/xisen/?post_type=software_features&#038;p=55', 0, 'software_features', '', 0),
(56, 1, '2021-08-21 05:48:36', '2021-08-21 05:48:36', '', 'sf1', '', 'inherit', 'open', 'closed', '', 'sf1', '', '', '2021-08-21 05:48:36', '2021-08-21 05:48:36', '', 55, 'http://localhost/xisen/wp-content/uploads/2021/08/sf1.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2021-08-21 05:55:15', '2021-08-21 05:55:15', '', 'Easy to Manage', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature.', 'publish', 'closed', 'closed', '', 'easy-to-manage', '', '', '2021-08-21 05:56:43', '2021-08-21 05:56:43', '', 0, 'http://localhost/xisen/?post_type=software_features&#038;p=57', 0, 'software_features', '', 0),
(58, 1, '2021-08-21 05:57:58', '2021-08-21 05:57:58', '', 'Standard Lorem Passage', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.', 'publish', 'closed', 'closed', '', 'standard-lorem-passage', '', '', '2021-08-21 05:58:12', '2021-08-21 05:58:12', '', 0, 'http://localhost/xisen/?post_type=software_features&#038;p=58', 0, 'software_features', '', 0),
(59, 1, '2021-08-22 04:29:48', '2021-08-22 04:29:48', '', 'right-img', '', 'inherit', 'open', 'closed', '', 'right-img', '', '', '2021-08-22 04:29:48', '2021-08-22 04:29:48', '', 0, 'http://localhost/xisen/wp-content/uploads/2021/08/right-img.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2021-08-22 04:44:15', '2021-08-22 04:44:15', '<div class=\"price-body\">\r\n<div class=\"price\">\r\n<h5>$20/month</h5>\r\n</div>\r\n<ul class=\"package-list\">\r\n 	<li>15GB Cloud Storage</li>\r\n 	<li>Unlimited Account</li>\r\n 	<li>15GB Storage</li>\r\n 	<li>Sale After Service</li>\r\n 	<li>3 Host Domain Service</li>\r\n 	<li>24/7 Support</li>\r\n</ul>\r\n</div>', 'Starter', '', 'publish', 'closed', 'closed', '', 'starter', '', '', '2021-08-22 07:33:18', '2021-08-22 07:33:18', '', 0, 'http://localhost/xisen/?post_type=xisen_pricing&#038;p=60', 0, 'xisen_pricing', '', 0),
(61, 1, '2021-08-22 04:43:38', '2021-08-22 04:43:38', '', 'price-icon', '', 'inherit', 'open', 'closed', '', 'price-icon', '', '', '2021-08-22 04:43:38', '2021-08-22 04:43:38', '', 60, 'http://localhost/xisen/wp-content/uploads/2021/08/price-icon.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2021-08-22 05:00:23', '2021-08-22 05:00:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"xisen_pricing\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Pricing Plan Features', 'pricing-plan-features', 'publish', 'closed', 'closed', '', 'group_6121d76bb0d89', '', '', '2021-08-22 05:01:06', '2021-08-22 05:01:06', '', 0, 'http://localhost/xisen/?post_type=acf-field-group&#038;p=63', 0, 'acf-field-group', '', 0),
(64, 1, '2021-08-22 05:00:23', '2021-08-22 05:00:23', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Features', 'pricing_plan_features', 'publish', 'closed', 'closed', '', 'field_6121d7a8b250a', '', '', '2021-08-22 05:00:23', '2021-08-22 05:00:23', '', 63, 'http://localhost/xisen/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2021-08-22 05:00:23', '2021-08-22 05:00:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Storage Size', 'storage_size', 'publish', 'closed', 'closed', '', 'field_6121d7f9b250b', '', '', '2021-08-22 05:00:23', '2021-08-22 05:00:23', '', 64, 'http://localhost/xisen/?post_type=acf-field&p=65', 0, 'acf-field', '', 0),
(66, 1, '2021-08-22 05:00:23', '2021-08-22 05:00:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Cloud Storage', 'cloud_storage_size', 'publish', 'closed', 'closed', '', 'field_6121d822b250c', '', '', '2021-08-22 05:00:23', '2021-08-22 05:00:23', '', 64, 'http://localhost/xisen/?post_type=acf-field&p=66', 1, 'acf-field', '', 0),
(67, 1, '2021-08-22 05:00:23', '2021-08-22 05:00:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Support Times', 'support_times', 'publish', 'closed', 'closed', '', 'field_6121d84fb250d', '', '', '2021-08-22 05:00:23', '2021-08-22 05:00:23', '', 64, 'http://localhost/xisen/?post_type=acf-field&p=67', 2, 'acf-field', '', 0),
(68, 1, '2021-08-22 05:00:23', '2021-08-22 05:00:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email Accounts', 'email_accounts', 'publish', 'closed', 'closed', '', 'field_6121d8a0b250e', '', '', '2021-08-22 05:00:23', '2021-08-22 05:00:23', '', 64, 'http://localhost/xisen/?post_type=acf-field&p=68', 3, 'acf-field', '', 0),
(69, 1, '2021-08-22 05:00:23', '2021-08-22 05:00:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Database', 'database', 'publish', 'closed', 'closed', '', 'field_6121d8b2b250f', '', '', '2021-08-22 05:00:23', '2021-08-22 05:00:23', '', 64, 'http://localhost/xisen/?post_type=acf-field&p=69', 4, 'acf-field', '', 0),
(70, 1, '2021-08-22 05:00:23', '2021-08-22 05:00:23', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Package Price', 'package_price', 'publish', 'closed', 'closed', '', 'field_6121d8c7b2510', '', '', '2021-08-22 05:00:23', '2021-08-22 05:00:23', '', 63, 'http://localhost/xisen/?post_type=acf-field&p=70', 1, 'acf-field', '', 0),
(71, 1, '2021-08-22 05:00:23', '2021-08-22 05:00:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Purchase Button Label', 'purchase_button_label', 'publish', 'closed', 'closed', '', 'field_6121d98fb2511', '', '', '2021-08-22 05:00:23', '2021-08-22 05:00:23', '', 63, 'http://localhost/xisen/?post_type=acf-field&p=71', 2, 'acf-field', '', 0),
(72, 1, '2021-08-22 05:00:23', '2021-08-22 05:00:23', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Purchase Button Link', 'purchase_button_link', 'publish', 'closed', 'closed', '', 'field_6121d9adb2512', '', '', '2021-08-22 05:00:23', '2021-08-22 05:00:23', '', 63, 'http://localhost/xisen/?post_type=acf-field&p=72', 3, 'acf-field', '', 0),
(73, 1, '2021-08-22 05:01:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-22 05:01:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/xisen/?post_type=xisen_pricing&p=73', 0, 'xisen_pricing', '', 0),
(74, 1, '2021-08-22 05:02:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-22 05:02:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/xisen/?post_type=software_features&p=74', 0, 'software_features', '', 0),
(75, 1, '2021-08-22 05:02:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-22 05:02:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/xisen/?post_type=xisen_pricing&p=75', 0, 'xisen_pricing', '', 0),
(76, 1, '2021-08-22 05:15:37', '2021-08-22 05:15:37', '{\n    \"xisen::custom_logo\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-22 05:15:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b6a6432e-9f9e-48fb-95d0-ca6f132d6fe3', '', '', '2021-08-22 05:15:37', '2021-08-22 05:15:37', '', 0, 'http://localhost/xisen/?p=76', 0, 'customize_changeset', '', 0),
(77, 1, '2021-08-22 06:59:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-22 06:59:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/xisen/?post_type=xisen_pricing&p=77', 0, 'xisen_pricing', '', 0),
(78, 1, '2021-08-22 07:04:11', '2021-08-22 07:04:11', '', 'Standard', '', 'publish', 'closed', 'closed', '', 'standard', '', '', '2021-08-22 07:24:56', '2021-08-22 07:24:56', '', 0, 'http://localhost/xisen/?post_type=xisen_pricing&#038;p=78', 0, 'xisen_pricing', '', 0),
(79, 1, '2021-08-22 07:31:21', '2021-08-22 07:31:21', '', 'Premium', '', 'publish', 'closed', 'closed', '', 'premium', '', '', '2021-08-22 07:31:21', '2021-08-22 07:31:21', '', 0, 'http://localhost/xisen/?post_type=xisen_pricing&#038;p=79', 0, 'xisen_pricing', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpxi_termmeta`
--

CREATE TABLE `wpxi_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpxi_terms`
--

CREATE TABLE `wpxi_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpxi_terms`
--

INSERT INTO `wpxi_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpxi_term_relationships`
--

CREATE TABLE `wpxi_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpxi_term_relationships`
--

INSERT INTO `wpxi_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(14, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(39, 2, 0),
(41, 2, 0),
(43, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpxi_term_taxonomy`
--

CREATE TABLE `wpxi_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpxi_term_taxonomy`
--

INSERT INTO `wpxi_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wpxi_usermeta`
--

CREATE TABLE `wpxi_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpxi_usermeta`
--

INSERT INTO `wpxi_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wpxi_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpxi_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"87e1f847a38553f4b0748c796027971f222b61088b883deb0e12e10c0741f2cc\";a:4:{s:10:\"expiration\";i:1630318622;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0\";s:5:\"login\";i:1629109022;}}'),
(17, 1, 'wpxi_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:40:\"dashboard_site_health,dashboard_activity\";s:4:\"side\";s:41:\"dashboard_right_now,dashboard_quick_press\";s:7:\"column3\";s:17:\"dashboard_primary\";s:7:\"column4\";s:0:\"\";}'),
(20, 1, 'wpxi_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'wpxi_user-settings-time', '1629607451'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(24, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wpxi_users`
--

CREATE TABLE `wpxi_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpxi_users`
--

INSERT INTO `wpxi_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BMHSMrYT/dT8hIwxuwu.gY0IRXhZVv.', 'admin', 'asmsaif15@gmail.com', 'http://localhost/xisen', '2021-08-16 10:16:44', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wpxi_commentmeta`
--
ALTER TABLE `wpxi_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpxi_comments`
--
ALTER TABLE `wpxi_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wpxi_links`
--
ALTER TABLE `wpxi_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wpxi_options`
--
ALTER TABLE `wpxi_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wpxi_postmeta`
--
ALTER TABLE `wpxi_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpxi_posts`
--
ALTER TABLE `wpxi_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wpxi_termmeta`
--
ALTER TABLE `wpxi_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpxi_terms`
--
ALTER TABLE `wpxi_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wpxi_term_relationships`
--
ALTER TABLE `wpxi_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wpxi_term_taxonomy`
--
ALTER TABLE `wpxi_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wpxi_usermeta`
--
ALTER TABLE `wpxi_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpxi_users`
--
ALTER TABLE `wpxi_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wpxi_commentmeta`
--
ALTER TABLE `wpxi_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpxi_comments`
--
ALTER TABLE `wpxi_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wpxi_links`
--
ALTER TABLE `wpxi_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpxi_options`
--
ALTER TABLE `wpxi_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `wpxi_postmeta`
--
ALTER TABLE `wpxi_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `wpxi_posts`
--
ALTER TABLE `wpxi_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `wpxi_termmeta`
--
ALTER TABLE `wpxi_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpxi_terms`
--
ALTER TABLE `wpxi_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wpxi_term_taxonomy`
--
ALTER TABLE `wpxi_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wpxi_usermeta`
--
ALTER TABLE `wpxi_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wpxi_users`
--
ALTER TABLE `wpxi_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
