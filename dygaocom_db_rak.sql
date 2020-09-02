-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2020 at 05:16 PM
-- Server version: 10.0.38-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dygaocom_db_rak`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '36.69.12.56', 'admin@admin.com', 1, '2020-08-14 20:50:25', 1),
(2, '36.69.12.56', 'admin@admin.com', 1, '2020-08-14 21:12:55', 1),
(3, '36.69.12.56', 'admin@admin.com', 1, '2020-08-14 21:14:23', 1),
(4, '36.69.12.56', 'admin@admin.com', 1, '2020-08-14 21:23:02', 1),
(5, '36.69.12.56', 'sarimegawati0177@gmail.com', 2, '2020-08-14 21:35:16', 1),
(6, '36.69.13.69', 'Admin', NULL, '2020-08-14 21:47:46', 0),
(7, '36.69.13.69', 'admin', NULL, '2020-08-14 21:47:55', 0),
(8, '36.69.14.213', 'admin', NULL, '2020-08-14 21:48:08', 0),
(9, '36.69.14.213', 'admin', NULL, '2020-08-14 21:48:19', 0),
(10, '36.69.14.213', 'admin', NULL, '2020-08-14 21:48:50', 0),
(11, '36.69.14.213', 'admin', NULL, '2020-08-14 22:12:18', 0),
(12, '36.69.14.213', 'admin', NULL, '2020-08-14 22:42:58', 0),
(13, '36.69.14.213', 'ADMIN', NULL, '2020-08-14 23:14:07', 0),
(14, '36.69.14.213', 'admin', NULL, '2020-08-14 23:14:15', 0),
(15, '36.69.14.213', 'admin@admin.com', 1, '2020-08-14 23:25:46', 1),
(16, '36.69.12.56', 'admin@admin.com', 1, '2020-08-14 23:27:15', 1),
(17, '36.69.12.56', 'admin@admin.com', 1, '2020-08-14 23:28:51', 1),
(18, '36.69.14.213', 'admin@admin.com', 1, '2020-08-15 00:13:37', 1),
(19, '36.69.12.56', 'admin@admin.com', 1, '2020-08-15 02:48:08', 1),
(20, '36.69.12.24', 'admin@admin.com', 1, '2020-08-15 02:53:07', 1),
(21, '36.69.12.56', 'admin@admin.com', 1, '2020-08-15 02:53:13', 1),
(22, '36.69.12.56', 'admin@admin.com', 1, '2020-08-15 03:22:35', 1),
(23, '36.69.12.56', 'admin@dygalrakindo.com', 3, '2020-08-15 04:03:55', 1),
(24, '36.69.14.215', 'admin@dygalrakindo.com', 3, '2020-08-18 08:54:41', 1),
(25, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 08:59:55', 1),
(26, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 09:03:31', 1),
(27, '114.124.212.81', 'admin@dygalrakindo.com', 3, '2020-08-18 09:59:55', 1),
(28, '36.69.14.38', 'admin@dygalrakindo.com', 3, '2020-08-18 10:35:02', 1),
(29, '114.124.228.113', 'admin@dygalrakindo.com', 3, '2020-08-18 10:56:41', 1),
(30, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 12:13:48', 1),
(31, '110.139.76.84', 'admin@dygalrakindo.com', 3, '2020-08-18 12:15:25', 1),
(32, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 12:59:43', 1),
(33, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 13:29:20', 1),
(34, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 14:21:22', 1),
(35, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 14:54:13', 1),
(36, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 15:01:17', 1),
(37, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 15:01:29', 1),
(38, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 15:01:37', 1),
(39, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 15:01:38', 1),
(40, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 15:12:14', 1),
(41, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-18 15:54:08', 1),
(42, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-19 10:18:49', 1),
(43, '36.69.13.239', 'admin@dygalrakindo.com', 3, '2020-08-19 12:21:33', 1),
(44, '36.69.8.9', 'admin@dygalrakindo.com', 3, '2020-08-19 16:10:33', 1),
(45, '36.69.14.113', 'admin@dygalrakindo.com', 3, '2020-08-21 10:50:18', 1),
(46, '36.69.14.113', 'admin@dygalrakindo.com', 3, '2020-08-21 13:47:41', 1),
(47, '36.69.9.11', 'admin@dygalrakindo.com', 3, '2020-08-21 16:12:16', 1),
(48, '36.69.14.113', 'admin@dygalrakindo.com', 3, '2020-08-21 16:33:38', 1),
(49, '114.124.246.83', 'admin@dygalrakindo.com', 3, '2020-08-23 21:12:58', 1),
(50, '36.69.14.231', 'admin@dygalrakindo.com', 3, '2020-08-24 09:36:38', 1),
(51, '36.69.13.21', 'admin@dygalrakindo.com', 3, '2020-08-24 10:03:09', 1),
(52, '36.92.177.191', 'admin@dygalrakindo.com', 3, '2020-08-24 10:10:57', 1),
(53, '36.69.13.21', 'admin@dygalrakindo.com', 3, '2020-08-24 10:15:53', 1),
(54, '36.69.13.248', 'admin@dygalrakindo.com', 3, '2020-08-26 11:29:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `caras`
--

CREATE TABLE `caras` (
  `cara_id` int(11) UNSIGNED NOT NULL,
  `cara_order` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `caras`
--

INSERT INTO `caras` (`cara_id`, `cara_order`) VALUES
(1, '<ol><li>Buka Web kami </li><li>Transaksi Via Whatsapp yang dipandu langsung oleh CS Kami</li><li>Setelah Cocok dengan Harga dan Ongkos Pengiriman, Segera Lakukan Transfer </li><li>Kirim Bukti Transfer ke CS</li><li>Proses Pengiriman Barang</li><li>Barang Diterima</li><li>Selesai</li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `category_id` int(100) UNSIGNED NOT NULL,
  `category_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`category_id`, `category_nama`) VALUES
(2, 'Rak'),
(3, 'Meja Kasir'),
(4, 'Rak Rokok'),
(7, 'Rak  Gudang'),
(8, 'Box Obral Chrome'),
(9, 'Trolley'),
(10, 'Keranjang Belanja'),
(11, 'Box Obral Lipat'),
(12, 'Rak Buku'),
(13, 'Cctv'),
(14, 'Software Kasir');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) UNSIGNED NOT NULL,
  `contact_facebook` varchar(100) DEFAULT NULL,
  `contact_twitter` varchar(100) DEFAULT NULL,
  `contact_instagram` varchar(100) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_alamat` varchar(100) DEFAULT NULL,
  `contact_no_tlp` varchar(100) DEFAULT NULL,
  `contact_no_wa` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `contact_facebook`, `contact_twitter`, `contact_instagram`, `contact_email`, `contact_alamat`, `contact_no_tlp`, `contact_no_wa`) VALUES
(1, 'dygalrakindo', 'Seeder', 'dygalrakindo', 'Seeder@gmail.com', 'Jl. Raya Pondok Kopi No 18 B. Siteba Padang', '082284912501', '082284912501');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) UNSIGNED NOT NULL,
  `gallery_nama` varchar(100) NOT NULL,
  `gallery_tgl` date DEFAULT NULL,
  `gallery_foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_nama`, `gallery_tgl`, `gallery_foto`) VALUES
(23, 'PEMASANGAN RAK DI TOKO NASEL', '2020-08-24', '1598240740_83fa1e655281594ccffb.jpg'),
(24, 'MEJA KASIR SHELVING', '2020-08-24', '1598240981_9c4f447484ce679f86a0.jpg'),
(25, 'TROLLEY BARANG', '2020-08-24', '1598241016_37e323910cf957492ff8.jpg'),
(27, 'RAK OBRAL CHROME', '2020-08-24', '1598241071_80074f417311aa4094ac.jpg'),
(28, 'RAK 1 SISI UTAMA DAN RAK SISI SAMBUNG', '2020-08-24', '1598241108_c5a732eb0ff264c72d77.jpg'),
(29, 'SINGLE RAM CHROME', '2020-08-24', '1598242015_56419985a6bfc89e28ff.jpg'),
(30, 'KERANJANG MIRANI', '2020-08-24', '1598242051_16ba778281683bb56493.jpg'),
(31, 'KERANJANG TARIK', '2020-08-24', '1598242080_bf96233949893d362201.jpg'),
(32, 'RAK END', '2020-08-24', '1598242117_312fc38a875a0010c58b.jpg'),
(33, 'BOX OBRAL LIPAT', '2020-08-24', '1598242150_223ee9d98a069c5e3dbc.jpg'),
(34, 'RAK CHIKI', '2020-08-24', '1598242186_088ed51177c53178709b.jpg'),
(35, 'RAK SUDUT LUAR', '2020-08-24', '1598242248_aabd19b473db9aedb52a.jpg'),
(36, 'TROLLEY TARIK', '2020-08-24', '1598242281_d86bb772daf72b6b83c8.jpg'),
(37, 'RAK BUKU', '2020-08-24', '1598242343_40f57a95401cb4fa92cc.jpg'),
(38, 'RAK GUDANG', '2020-08-24', '1598242378_2a9acc3b2395c8ab1237.jpg'),
(39, 'PAKET SHELVING HEMAT FREE PRICE TAG', '2020-08-24', '1598242429_59319b95f2fa02eca9f0.jpg'),
(40, 'MEJA KASIR', '2020-08-24', '1598242470_08eeaeca323960a36735.jpg'),
(41, 'RAK 2 SISI/DOUBLE', '2020-08-24', '1598242509_58592de4a78f0d5b6ff6.jpg'),
(42, 'SOFTWARE KASIR', '2020-08-24', '1598242576_ab597b1288c78b471da1.jpg'),
(43, 'CCTV', '2020-08-24', '1598242610_0e14baefa79dbd379dcc.jpg'),
(44, 'PERSIAPAN PENGANTARAN BARANG', '2020-08-24', '1598242760_b8c30752ed74ca723224.jpg'),
(45, 'WIREMESH', '2020-08-24', '1598246203_d4ecf36f5f6ae752428d.jpg'),
(46, 'RAK ROKOK AKRILIK', '2020-08-24', '1598248100_0ba3626d6d351dc411fc.jpg'),
(49, 'RAK 2 SISI/DOUBLE', '2020-08-26', '1598416654_3ed2e467c645cf6b786e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(72, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1597381500, 1),
(73, '2020-08-05-075511', 'App\\Database\\Migrations\\Gellery', 'default', 'App', 1597381500, 1),
(74, '2020-08-06-013325', 'App\\Database\\Migrations\\News', 'default', 'App', 1597381500, 1),
(75, '2020-08-06-024006', 'App\\Database\\Migrations\\Contacts', 'default', 'App', 1597381500, 1),
(76, '2020-08-06-034011', 'App\\Database\\Migrations\\Profils', 'default', 'App', 1597381500, 1),
(77, '2020-08-12-074859', 'App\\Database\\Migrations\\Products', 'default', 'App', 1597381500, 1),
(78, '2020-08-12-075738', 'App\\Database\\Migrations\\Cara', 'default', 'App', 1597381500, 1),
(79, '2020-08-14-031323', 'App\\Database\\Migrations\\Category', 'default', 'App', 1597381500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) UNSIGNED NOT NULL,
  `news_judul` varchar(200) NOT NULL,
  `news_isi` text,
  `news_tgl` date DEFAULT NULL,
  `news_foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(100) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_nama` text,
  `product_desc` text,
  `product_spec` text,
  `product_foto` varchar(100) NOT NULL,
  `product_harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `category_id`, `product_nama`, `product_desc`, `product_spec`, `product_foto`, `product_harga`) VALUES
(15, 2, 'Rak Minimarket & Supsermarket', '<p>RAK MINIMARKET &amp; SUPERMARKET</p><p><br></p>', '<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--></p><p><span style=\"color: rgb(122, 122, 122); font-family: Roboto, sans-serif; font-size: 16px;\">Rak Minimarket &amp; Supermarket untuk display usaha anda, dengan design yang kece. Kualitas terbaik berbahan baja dengan daya tahan beban hingga 75kg per shelving.</span></p><h5 style=\"margin: 0cm 0cm 0.0001pt 127.6pt; font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; line-height: normal; color: rgb(0, 0, 0); text-indent: -18pt;\"><span arial=\"\" black\";\"=\"\"><span style=\"font-weight: bolder;\">﻿Deskripsi Produk:</span></span></h5><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Tahan Api</span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Tidak mudah berkarat</span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Cat tidak mudah terkelupas</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;=\"\" mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Tidak mudah penyok</span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Tahan hingga 75 kg per shelving</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Model terbaru</span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Garansi 20 tahun, langsung dari pabrik</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Dijamin paling berkualitas &amp; paling murah</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Jaminan GARANSI SEUMUR HIDUP</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Kami menjual produk-produk</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;=\"\" mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: justify; margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span arial=\"\" black\";\"=\"\"></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Produk lansung dari pabrik</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;=\"\" mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><div><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\"><br></span></div><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><span style=\"font-family: \" arial=\"\" black\";\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><br></p>', '1597812108_4ae9f83565bd44e34f58.jpg', 0),
(16, 3, 'Meja Kasir Shelving', '<p style=\"margin: 0cm 0cm 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">MEJA KASIR SHELVING</p>', '<p style=\"margin:0cm;margin-bottom:.0001pt;mso-outline-level:6\"><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">Dygal\r\nRakindo menjual Rak Minimarket, rak supermarket, rak swalayan, rak toko, rak\r\nswalayan, rak gudang,&nbsp;<a href=\"http://pabrikrakbaja.com/\" style=\"box-shadow: none;\"><span style=\"color:#1CA4EA\">meja kasir</span></a>, trolley barang,\r\ntrolley belanja, keranjang belanja, dan kebutuhan retail lainnya. Produk pabrik\r\nkami menjual barang dengan harga murah dengan kualitas terbaik menggunakan\r\nbahan BAJA.<u1:p></u1:p></span><o:p></o:p></p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt;mso-outline-level:6\"><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">Meja\r\nkasir adalah tempat untuk menaruh barang yang akan di bayar oleh costumer dan\r\nsebagai tempat untuk meletak kan komputer kasir, ada berbagai macam meja kasir produksi\r\npabrik kami yaitu&nbsp;<a href=\"http://pabrikrakbaja.com/\" style=\"box-shadow: none;\"><b><span style=\"color:#333333\">meja kasir &amp; meja kasir shelving&nbsp;</span></b></a>yang\r\nterbuat dari plat baja. Produk ini cocok digunakan untuk toko yang baru beralih\r\nmenjadi minimarket modern.<u1:p></u1:p></span><o:p></o:p></p>\r\n\r\n<p style=\"margin-top:11.25pt;margin-right:0cm;margin-bottom:0cm;margin-left:\r\n0cm;margin-bottom:.0001pt;mso-outline-level:6\"><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">Meja kasir shelving adalah\r\njenis khusus dari meja kasir. dengan tambahan rak di sisinya yang digunakan\r\nuntuk display berbagi produk fats moving yang dengan mudah di akses pelanggan.\r\nAnda bisa memilih warna yang sesuai dengan model bisnis anda. dengan harga\r\nmurah dan kualitas bagus serta customable membuat produk ini paling favorit.</span><o:p></o:p></p>\r\n\r\n<h5 style=\"margin-top: 0cm;\"><span times=\"\" new=\"\" \"=\"\"><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"></span>Diskripsi Produk</b></span><b>:</b><b><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></h5>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Tahan Api</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \";=\"\" \"times=\"\" new=\"\" \";color:#606060;mso-fareast-language:=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Tidak mudah berkarat</span></span><span \";=\"\" \"times=\"\" new=\"\" \";color:#606060;mso-fareast-language:=\"\" \"=\"\"><u1:p></u1:p></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Cat tidak mudah\r\nterkelupas</span></span><span \"times=\"\" new=\"\" \";color:#606060;=\"\" \"=\"\"><u1:p></u1:p></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Tidak mudah penyok</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \";=\"\" \"times=\"\" new=\"\" \";color:#606060;mso-fareast-language:=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Tahan hingga 75 kg per\r\nshelving</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \"times=\"\" new=\"\" \";=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Model terbaru</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \";=\"\" \"times=\"\" new=\"\" \";color:#606060;mso-fareast-language:=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Garansi 20 tahun,\r\nlangsung dari pabrik</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \"times=\"\" new=\"\" \";=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Dijamin paling\r\nberkualitas &amp; paling murah</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \"times=\"\" new=\"\" \";=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Jaminan GARANSI SEUMUR\r\nHIDUP</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \"times=\"\" new=\"\" \";=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Kami menjual\r\nproduk-produk</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \"times=\"\" new=\"\" \";color:#606060;=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Produk lansung dari\r\npabrik</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \"times=\"\" new=\"\" \";color:#606060;=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\"><span \";=\"\" \"times=\"\" new=\"\" \";color:#606060;mso-fareast-language:=\"\" \"=\"\"><u1:p><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">&nbsp;</span></u1:p></span><span style=\"font-size: 10.5pt; line-height: 115%; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n', '1597813099_f0b37cba643217884aeb.jpg', 0),
(17, 7, 'Rak Gudang', '<p><span style=\"color: rgb(122, 122, 122); font-family: Roboto, sans-serif; font-size: 16px;\">Rak Gudang berbahan baja dengan daya tahan 1 Ton Pershelving, cocok untuk gudang penyimpanan produk anda.</span><br></p>', '<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--></p><h5 style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><span style=\"font-family: &quot;Arial Black&quot;;\">Diskripsi Produk:﻿</span></h5><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tahan Api</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tidak mudah berkarat</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Cat tidak mudah terkelupas</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tidak mudah penyok</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tahan hingga 75 kg per shelving</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Model terbaru</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Garansi 20 tahun, langsung dari pabrik</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Dijamin paling berkualitas &amp; paling murah</span><span style=\"font-size:\r\n12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Jaminan GARANSI SEUMUR HIDUP</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Kami menjual produk-produk</span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><span style=\"text-indent: -18pt; font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><span style=\"text-indent: -18pt; font-size: 12pt; font-family: Arial, sans-serif; color: rgb(84, 89, 95);\">Produk lansung dari pabrik</span><br></p>', '1597813534_2da3d0c7e419bdd585d9.jpg', 0),
(18, 4, 'Rar Rokok', 'RAK ROKOK DISPLAY', '<p><span style=\"color: rgb(122, 122, 122); font-family: Roboto, sans-serif; font-size: 16px;\">Rak Rokok cocok untuk display rokok dan juga beberapa item –&nbsp; item produk lain. Berbahan Baja dengan kualitas terjamin dan bergaransi resmi 20 tahun dari kami.</span></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b><span style=\"font-family: &quot;Times New Roman&quot;;\">Diskripsi Produk:&nbsp;</span></b> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</h5><p class=\"MsoNormal\"><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tahan Api</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tidak mudah berkarat</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Cat tidak mudah terkelupas</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tidak mudah penyok</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tahan hingga 75 kg per shelving</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Model terbaru</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Garansi 20 tahun, langsung dari pabrik</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Dijamin paling berkualitas &amp; paling murah</span><span style=\"font-size:\r\n12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Jaminan GARANSI SEUMUR HIDUP</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Kami menjual produk-produk </span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Produk lansung dari pabrik</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p>&nbsp;</o:p></span></p>', '1597813959_caf9a75ef4f53a5943d0.jpg', 0);
INSERT INTO `products` (`products_id`, `category_id`, `product_nama`, `product_desc`, `product_spec`, `product_foto`, `product_harga`) VALUES
(19, 8, 'Box Obral Chrome', '<p><a href=\"https://pabrikrakbaja.com/box-obral-supermarket/\" style=\"color: rgb(28, 164, 234); background-color: rgb(255, 255, 255); margin: 0px; padding: 0px; box-shadow: none; font-family: Roboto, sans-serif; font-size: 16px;\">Box Obral&nbsp;Supermarket</a></p>', '<p><a href=\"https://pabrikrakbaja.com/box-obral-supermarket/\" style=\"margin: 0px; padding: 0px; color: rgb(28, 164, 234); box-shadow: none; font-family: Roboto, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Box Obral&nbsp;Supermarket</a><span style=\"font-family: Roboto, sans-serif; font-size: 16px;\">&nbsp;Cocok Untuk Display Produk Anda dengan Promo tertentu, agar Barang dengan Promo bisa lebih terlihat lebih menarik untuk pelanggan setia anda.</span></p><p class=\"MsoNormal\"><b><span style=\"font-size:16.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Diskripsi\r\nProduk:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tahan Api</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tidak mudah berkarat</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Cat tidak mudah terkelupas</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tidak mudah penyok</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tahan hingga 75 kg per shelving</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Model terbaru</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Garansi 20 tahun, langsung dari pabrik</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Dijamin paling berkualitas &amp; paling murah</span><span style=\"font-size:\r\n12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Jaminan GARANSI SEUMUR HIDUP</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Kami menjual produk-produk </span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Produk lansung dari pabrik</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p>&nbsp;</o:p></span></p>', '1597814547_a5fb9b045438eb302dd9.jpg', 0),
(20, 9, 'Trolley Super Market', 'TROLLEY SUPERMARKET', '<p class=\"MsoNormal\"><span style=\"font-family: Roboto, sans-serif; font-size: 16px;\">Trolley Minimarket &amp; Supermarket untuk keperluan usaha anda, sebagai alat untuk pelanggan membawa barang belanjaannya. Pelayanan Terbaik untuk Pelanggan anda</span></p><p class=\"MsoNormal\"><span style=\"font-family: Roboto, sans-serif; font-size: 16px;\"><br></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style=\"font-size: 0.875rem;\"><span style=\"font-size:16.0pt;line-height:115%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Diskripsi\r\nProduk:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></b></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Tahan Api</span><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Tidak mudah berkarat</span><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Cat tidak mudah terkelupas</span><span style=\"font-size:12.0pt;font-family:\r\n\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;=\"\" mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Tidak mudah penyok</span><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Tahan hingga 75 kg per shelving</span><span style=\"font-size:12.0pt;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Model terbaru</span><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Garansi 20 tahun, langsung dari pabrik</span><span style=\"font-size:12.0pt;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Dijamin paling berkualitas &amp; paling murah</span><span style=\"font-size:\r\n12.0pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Jaminan GARANSI SEUMUR HIDUP</span><span style=\"font-size:12.0pt;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Kami menjual produk-produk </span><span style=\"font-size:12.0pt;font-family:\r\n\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;=\"\" mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Produk lansung dari pabrik</span><span style=\"font-size:12.0pt;font-family:\r\n\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;=\"\" mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\"><o:p>&nbsp;</o:p></span></p>', '1597814805_f673deb193b9ba59f010.jpg', 0),
(21, 10, 'Keranjang Belanja Mirani', 'KERANJANG BELANJA ', '<div class=\"elementor-element elementor-element-9ce3044 elementor-widget elementor-widget-heading\" data-id=\"9ce3044\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px 0px 20px; padding: 0px; position: relative; width: 550px; color: rgb(96, 96, 96); font-family: Oxygen, sans-serif; font-size: 16px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 1; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-weight: 600;\">Deskripsi Produk:</h5></div></div><div class=\"elementor-element elementor-element-4462cc3 elementor-widget elementor-widget-text-editor\" data-id=\"4462cc3\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px 0px 20px; padding: 0px; position: relative; font-family: Roboto, sans-serif; width: 550px; font-size: 16px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-text-editor elementor-clearfix\" style=\"margin: 0px; padding: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\">Keranjang Belanja untuk keperluan usaha anda, sebagai alat untuk pelanggan membawa barang belanjaannya. Pelayanan Terbaik untuk Pelanggan anda.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"font-weight: 600;\">Spesifikasi:</span></h5></div></div></div><div class=\"elementor-element elementor-element-d18531c elementor-icon-list--layout-traditional elementor-widget elementor-widget-icon-list\" data-id=\"d18531c\" data-element_type=\"widget\" data-widget_type=\"icon-list.default\" style=\"margin: 0px 0px 20px; padding: 0px; position: relative; width: 550px; color: rgb(96, 96, 96); font-family: Oxygen, sans-serif; font-size: 16px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><ul><li style=\"margin: 0px; padding: 0px 0px calc(1.5px); position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span class=\"fa fa-check-square\" aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-stretch: normal; font-size: 20px; width: 1.25em; color: rgb(110, 193, 228);\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Warna tidak mudah terkelupas</span></li><li class=\"elementor-icon-list-item\" style=\"margin: calc(1.5px) 0px 0px; padding: 0px 0px calc(1.5px); position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span class=\"fa fa-check-square\" aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-stretch: normal; font-size: 20px; width: 1.25em; color: rgb(110, 193, 228);\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Tersedia Warna Merah, Biru, Hijau, dan kuning</span></li><li class=\"elementor-icon-list-item\" style=\"margin: calc(1.5px) 0px 0px; padding: 0px 0px calc(1.5px); position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span class=\"fa fa-check-square\" aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-stretch: normal; font-size: 20px; width: 1.25em; color: rgb(110, 193, 228);\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Tidak mudah penyok</span></li><li class=\"elementor-icon-list-item\" style=\"margin: calc(1.5px) 0px 0px; padding: 0px 0px calc(1.5px); position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span class=\"fa fa-check-square\" aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-stretch: normal; font-size: 20px; width: 1.25em; color: rgb(110, 193, 228);\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Ukuran Panjang 35cm, Lebar 30cm, Tinggi 20cm</span></li><li class=\"elementor-icon-list-item\" style=\"margin: calc(1.5px) 0px 0px; padding: 0px 0px calc(1.5px); position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span class=\"fa fa-check-square\" aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-stretch: normal; font-size: 20px; width: 1.25em; color: rgb(110, 193, 228);\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Model terbaru</span></li><li class=\"elementor-icon-list-item\" style=\"margin: calc(1.5px) 0px 0px; padding: 0px 0px calc(1.5px); position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span class=\"fa fa-check-square\" aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-stretch: normal; font-size: 20px; width: 1.25em; color: rgb(110, 193, 228);\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Dijamin paling berkualitas &amp; paling murah</span></li><li class=\"elementor-icon-list-item\" style=\"margin: calc(1.5px) 0px 0px; padding: 0px; position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><br><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><br></span></li></ul></div></div>', '1597816494_870bad7155b580c4f1e7.jpg', 0),
(29, 12, 'RAK BUKU', 'RAK BUKU', '<h5 style=\"margin-top:0cm\"><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">Diskripsi Produk:</span></b><b><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></h5><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">Tahan Api</span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">Tidak mudah berkarat</span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">Cat tidak mudah terkelupas</span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">Tidak mudah penyok</span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">Tahan hingga 75 kg per shelving</span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">Model terbaru</span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">Garansi 20 tahun, langsung dari pabrik</span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">Dijamin paling berkualitas &amp; paling murah</span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">Jaminan GARANSI SEUMUR HIDUP</span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">Kami menjual produk-produk</span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø</span><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">Produk lansung dari pabrik</span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>', '1598002574_cee612f1dc539df08991.jpg', 0),
(30, 2, 'Rak Minimarket & Supermarket ', '<p>RAK MINIMARKET 2 SISI/DOUBLE</p>', '<h5 style=\"margin-top:0cm\"><b><span style=\"font-family: \"Segoe UI\", sans-serif;\">Diskripsi Produk:</span></b><b><span style=\"font-size: 10pt; line-height: 115%; font-family: \"Segoe UI\", sans-serif;\"><o:p></o:p></span></b></h5><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n\"Segoe UI\";color:#606060\">Ø</span><span style=\"font-family: \"Segoe UI\", sans-serif;\">Tahan Api</span><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n\"Segoe UI\";color:#606060\">Ø</span><span style=\"font-family: \"Segoe UI\", sans-serif;\">Tidak mudah berkarat</span><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n\"Segoe UI\";color:#606060\">Ø</span><span style=\"font-family: \"Segoe UI\", sans-serif;\">Cat tidak mudah terkelupas</span><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n\"Segoe UI\";color:#606060\">Ø</span><span style=\"font-family: \"Segoe UI\", sans-serif;\">Tidak mudah penyok</span><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n\"Segoe UI\";color:#606060\">Ø</span><span style=\"font-family: \"Segoe UI\", sans-serif;\">Tahan hingga 75 kg per shelving</span><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n\"Segoe UI\";color:#606060\">Ø</span><span style=\"font-family: \"Segoe UI\", sans-serif;\">Model terbaru</span><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n\"Segoe UI\";color:#606060\">Ø</span><span style=\"font-family: \"Segoe UI\", sans-serif;\">Garansi 20 tahun, langsung dari pabrik</span><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n\"Segoe UI\";color:#606060\">Ø</span><span style=\"font-family: \"Segoe UI\", sans-serif;\">Dijamin paling berkualitas & paling murah</span><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n\"Segoe UI\";color:#606060\">Ø</span><span style=\"font-family: \"Segoe UI\", sans-serif;\">Jaminan GARANSI SEUMUR HIDUP</span><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n\"Segoe UI\";color:#606060\">Ø</span><span style=\"font-family: \"Segoe UI\", sans-serif;\">Kami menjual produk-produk</span><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n\"Segoe UI\";color:#606060\">Ø</span><span style=\"font-family: \"Segoe UI\", sans-serif;\">Produk lansung dari pabrik</span><span style=\"font-size: 10.5pt; font-family: \"Segoe UI\", sans-serif;\"><o:p></o:p></span></p>', '1598002978_c0136d048cf6a0d0d11b.jpg', 0),
(31, 13, 'Cctv', 'CCTV', '<div>Untuk Cctv Paket 4 Kamera Hikvision 2mp siap pasang, isi paket antara lain ;</div><div>1 Dvr 4Channel Hikvision up to 4mp</div><div>2 kamera outdoor 2mp</div><div>2 kamera indoor 2mp</div><div>50kabel cctv</div><div>1 pcs kabel Hdmi</div><div>8pcs konektor bmc</div><div>4pcs dc male</div><div><br></div><div>Oh iya, untuk hikvision sudah terkenal ya kualitas nya, no 1 di indonesia untuk kualitas cctv dan ketahanan, tentu ada garansi 1 tahun</div><div>Bisa online ke hp android dan IOS nya, gratis biaya online kan ke HP</div><div>Harga sudah include pemasangan ya</div>', '1598004097_df837b4710359a1f0fc7.jpg', 0),
(32, 14, 'Software Kasir', '<p>SOFTWARE KASIR</p>', '<p>Paket kasir lengkap Baru</p><p>Antara lain :</p><p>1 set Komputer baru Core 2 duo Hdd 500gb + monitor 18.5inci</p><p>1 set Scanner Barcode baru</p><p>1 Set Printer Kasir baru</p><p>1 set Laci uang besi baru</p><p>1 Program / Aplikasi Kasir Sid Pro unlimited transaksi / Fitur lengkap dan terkoneksi dengan android</p><p>Insyallah dijamin perlengkapan kasir nya tidak mengecewakan</p><p><br></p>', '1598004335_e0bf64217a9bba8e99bd.jpg', 0);
INSERT INTO `products` (`products_id`, `category_id`, `product_nama`, `product_desc`, `product_spec`, `product_foto`, `product_harga`) VALUES
(33, 2, 'Rak Chiki', '<p>RAK CHIKI</p>', '<div class=\"elementor-element elementor-element-2e7a729 elementor-widget elementor-widget-heading\" data-id=\"2e7a729\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px 0px 20px; padding: 0px; position: relative; width: 550px; color: rgb(96, 96, 96); font-family: Oxygen, sans-serif; font-size: 16px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h1 class=\"elementor-heading-title elementor-size-large\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 26px; font-size: 29px; color: rgb(110, 193, 228); font-weight: 600; font-family: Roboto, sans-serif;\"><span style=\"font-size: 21px;\">Deskripsi Produk:</span><br></h1></div></div><div class=\"elementor-element elementor-element-80343c6 elementor-icon-list--layout-traditional elementor-widget elementor-widget-icon-list\" data-id=\"80343c6\" data-element_type=\"widget\" data-widget_type=\"icon-list.default\" style=\"margin: 0px 0px 20px; padding: 0px; position: relative; width: 550px; color: rgb(96, 96, 96); font-family: Oxygen, sans-serif; font-size: 16px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><ul class=\"elementor-icon-list-items\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style-position: inside; list-style-type: none;\"><li class=\"elementor-icon-list-item\" style=\"margin: 0px; padding: 0px; position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span aria-hidden=\"true\" class=\"fas fa-check\" style=\"margin: 0px; padding: 0px; width: 1.25em; color: rgb(110, 193, 228); font-size: 14px;\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Terdiri dari 4 Susun dan 6 Susun</span></li><li class=\"elementor-icon-list-item\" style=\"margin: 0px; padding: 0px; position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span aria-hidden=\"true\" class=\"fas fa-check\" style=\"margin: 0px; padding: 0px; width: 1.25em; color: rgb(110, 193, 228); font-size: 14px;\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Ukuran&nbsp;<span style=\"margin: 0px; padding: 0px; color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;= 42 cm x 46 cm x 142 cm</span></span></li><li class=\"elementor-icon-list-item\" style=\"margin: 0px; padding: 0px; position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span aria-hidden=\"true\" class=\"fas fa-check\" style=\"margin: 0px; padding: 0px; width: 1.25em; color: rgb(110, 193, 228); font-size: 14px;\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Tiang Warna Merah</span></li><li class=\"elementor-icon-list-item\" style=\"margin: 0px; padding: 0px; position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span aria-hidden=\"true\" class=\"fas fa-check\" style=\"margin: 0px; padding: 0px; width: 1.25em; color: rgb(110, 193, 228); font-size: 14px;\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Sistem Knockdown ( Bongkar Pasang )</span></li><li class=\"elementor-icon-list-item\" style=\"margin: 0px; padding: 0px; position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span aria-hidden=\"true\" class=\"fas fa-check\" style=\"margin: 0px; padding: 0px; width: 1.25em; color: rgb(110, 193, 228); font-size: 14px;\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Cat kami mengunakan powder coating</span></li><li class=\"elementor-icon-list-item\" style=\"margin: 0px; padding: 0px; position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span aria-hidden=\"true\" class=\"fas fa-check\" style=\"margin: 0px; padding: 0px; width: 1.25em; color: rgb(110, 193, 228); font-size: 14px;\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Kami produksi Dari pabrik langsung kondisi BARU</span></li><li class=\"elementor-icon-list-item\" style=\"margin: 0px; padding: 0px; position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span aria-hidden=\"true\" class=\"fas fa-check\" style=\"margin: 0px; padding: 0px; width: 1.25em; color: rgb(110, 193, 228); font-size: 14px;\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Menerima Pembelian grosir</span></li></ul></div></div>', '1598004682_d97c8659c7b6fea670b8.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `profils`
--

CREATE TABLE `profils` (
  `profil_id` int(100) UNSIGNED NOT NULL,
  `profil_nama` varchar(100) NOT NULL,
  `profil_headline` text,
  `profil_tentang` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profils`
--

INSERT INTO `profils` (`profil_id`, `profil_nama`, `profil_headline`, `profil_tentang`) VALUES
(1, 'Dygal Rakindo', '<p>Kami adalah distributor rak minimarket baja dengan kualitas terbaik di Indonesia</p>', ' Merupakan pabrik yang memproduksi berbagai macam rak supermarket/rak \r\nminimarket/rak toko/rak swalayan yang mampu menahan dari 30 kg, 40kg, \r\n75kg, 100 kg/shelving serta rak gudang yang mampu menahan beban hingga \r\n300 kg/shelving, berbagai macam bentuk manekin yang sangat modern dengan\r\n model terbaru dan kualitas terbaik dari fiber maupun plastik tebal. \r\nKami juga menyediakan trolley, meja kasir dan berbagai macam keperluan \r\nusaha anda, semuanya lengkap dengan kualitas sangat tinggi dan harga \r\ntermurah kami jamin!');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `slider_id` int(11) UNSIGNED NOT NULL,
  `slider_foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`slider_id`, `slider_foto`) VALUES
(12, '1598240690_0943e9ff596ebb5723ec.jpeg'),
(16, '1598243628_e083240e60807e421621.jpg'),
(17, '1598243873_0157c52f3c30d542defa.jpg'),
(18, '1598244085_26bee1604357beec2d85.jpg'),
(19, '1598244101_76bf56739114c268e981.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'admin@dygalrakindo.com', 'admin', '$2y$10$bIfRAhqpsjMfbeepFVDl6uBZ3Z1bJ9THiyrcOnwjQQd4gq3QcTSba', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-08-15 03:44:57', '2020-08-15 03:44:57', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `caras`
--
ALTER TABLE `caras`
  ADD PRIMARY KEY (`cara_id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `profils`
--
ALTER TABLE `profils`
  ADD PRIMARY KEY (`profil_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `caras`
--
ALTER TABLE `caras`
  MODIFY `cara_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `category_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `profils`
--
ALTER TABLE `profils`
  MODIFY `profil_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `slider_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
