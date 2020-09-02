simple-house-logo.png-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2020 at 08:38 AM
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
(44, '36.69.8.9', 'admin@dygalrakindo.com', 3, '2020-08-19 16:10:33', 1);

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

--
-- Dumping data for table `auth_tokens`
--

INSERT INTO `auth_tokens` (`id`, `selector`, `hashedValidator`, `user_id`, `expires`) VALUES
(2, '4c89ea5510de80181ac36382', '951f994d8e4fae912772abbe1abdd73a8f896c18acc1c8964d99742a1062cbec', 3, '2020-09-17 15:01:17'),
(3, 'f939363451b9e53cac1012cf', 'd2c4787e48f8fc92d32b82a554935eee424a7adbc61491ec95110eafa0c44563', 3, '2020-09-18 10:18:49');

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
(5, 'Cctv'),
(6, 'Software Kasir'),
(7, 'Rak  Gudang'),
(8, 'Box Obral Chrome'),
(9, 'Trolley'),
(10, 'Keranjang Belanja'),
(11, 'Box Obral Lipat');

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
(8, 'RAK 2 SISI/DOUBLE', '2020-08-18', '1597728084_c63ddd66951c9c227c39.jpg'),
(9, 'RAK ROKOK AKRILIK', '2020-08-18', '1597728163_c43b7b6a626f24612fa2.jpg'),
(10, 'RAK OBRAL CHROME', '2020-08-18', '1597728213_be4be09652d5563735a7.jpg'),
(11, 'RAK END', '2020-08-18', '1597728240_119f3b2c3dcb06a70a22.jpg'),
(12, 'BOX OBRAL LIPAT', '2020-08-18', '1597728272_5865184ad55ec682da05.jpg'),
(13, 'KERANJANG TARIK', '2020-08-18', '1597728396_7707350598cf51d21627.jpg'),
(14, 'TROLLEY BARANG', '2020-08-18', '1597728569_ce89356b04d40127fc1f.jpg'),
(16, 'RAK 1 SISI UTAMA DAN RAK SISI SAMBUNG', '2020-08-18', '1597729011_c25cdda0046181356944.jpg'),
(17, 'SINGLE RAM CHROME', '2020-08-18', '1597730241_67a7c7422e66334dc367.jpg'),
(18, 'RAK GUDANG', '2020-08-18', '1597738373_7daa1fb1571a261716e0.jpg'),
(19, 'PAKET SHELVING HEMAT FREE PRICE TAG', '2020-08-18', '1597738446_bf02202569aa9365b868.jpg'),
(20, 'TROLLEY TARIK', '2020-08-18', '1597738509_7f93a0300165a2fe2898.jpg'),
(21, 'RAK MINIMARKET SUDUT LUAR', '2020-08-18', '1597738990_03831b83d8fdd1fdccae.jpg'),
(22, 'MEJA KASIR', '2020-08-19', '1597808637_ebef156d5bc3dcef73f4.jpg');

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
(1, 0, 'Meja Kasir Shelving', '<p>Meja Kasir Shelving <br></p>', '<p>Meja Kasir<br></p>', '1597383791_c759f914b8dfbefbd094.jpg', 0),
(2, 0, 'Rak End Gondola', '<p>Rak End Gondila<br></p>', '<p>Rak End Gondila<br></p>', '1597383807_0b6a0a43e38763809d37.jpg', 0),
(3, 0, 'Rak 2 Sisi', '<p>Rak 2 Sisi<br></p>', '<p>Rak 2 Sisi<br></p>', '1597383874_047cb2304e01daa7b221.jpg', 0),
(4, 0, 'Rak Utama dan Sambung', '<p>Rak Utama dan Sambung<br></p>', '<p>Rak Utama dan Sambung<br></p>', '1597383897_77a2a686f34adcfeb686.jpg', 0),
(15, 2, 'RAK MINIMARKET & SUPERMARKET', '<p>RAK MINIMARKET &amp; SUPERMARKET</p><p><br></p>', '<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--></p><p><span style=\"color: rgb(122, 122, 122); font-family: Roboto, sans-serif; font-size: 16px;\">Rak Minimarket &amp; Supermarket untuk display usaha anda, dengan design yang kece. Kualitas terbaik berbahan baja dengan daya tahan beban hingga 75kg per shelving.</span></p><h5 style=\"margin: 0cm 0cm 0.0001pt 127.6pt; font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; line-height: normal; color: rgb(0, 0, 0); text-indent: -18pt;\"><span arial=\"\" black\";\"=\"\"><span style=\"font-weight: bolder;\">﻿Deskripsi Produk:</span></span></h5><p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Tahan Api</span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Tidak mudah berkarat</span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Cat tidak mudah terkelupas</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;=\"\" mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Tidak mudah penyok</span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Tahan hingga 75 kg per shelving</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Model terbaru</span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Garansi 20 tahun, langsung dari pabrik</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Dijamin paling berkualitas &amp; paling murah</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Jaminan GARANSI SEUMUR HIDUP</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Kami menjual produk-produk</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;=\"\" mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align: justify; margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span arial=\"\" black\";\"=\"\"></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin: 0cm 0cm 0.0001pt 127.6pt; text-indent: -18pt; line-height: normal;\"><span style=\"font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;</span></span><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\">Produk lansung dari pabrik</span><span arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;=\"\" mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\"><o:p></o:p></span></p><div><span arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\" style=\"font-size: 12pt;\"><br></span></div><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><span style=\"font-family: \" arial=\"\" black\";\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><br></p>', '1597812108_4ae9f83565bd44e34f58.jpg', 0),
(16, 3, 'MEJA KASIR SHELVING', '<p style=\"margin: 0cm 0cm 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">MEJA KASIR SHELVING</p>', '<p style=\"margin:0cm;margin-bottom:.0001pt;mso-outline-level:6\"><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">Dygal\r\nRakindo menjual Rak Minimarket, rak supermarket, rak swalayan, rak toko, rak\r\nswalayan, rak gudang,&nbsp;<a href=\"http://pabrikrakbaja.com/\" style=\"box-shadow: none;\"><span style=\"color:#1CA4EA\">meja kasir</span></a>, trolley barang,\r\ntrolley belanja, keranjang belanja, dan kebutuhan retail lainnya. Produk pabrik\r\nkami menjual barang dengan harga murah dengan kualitas terbaik menggunakan\r\nbahan BAJA.<u1:p></u1:p></span><o:p></o:p></p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt;mso-outline-level:6\"><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">Meja\r\nkasir adalah tempat untuk menaruh barang yang akan di bayar oleh costumer dan\r\nsebagai tempat untuk meletak kan komputer kasir, ada berbagai macam meja kasir produksi\r\npabrik kami yaitu&nbsp;<a href=\"http://pabrikrakbaja.com/\" style=\"box-shadow: none;\"><b><span style=\"color:#333333\">meja kasir &amp; meja kasir shelving&nbsp;</span></b></a>yang\r\nterbuat dari plat baja. Produk ini cocok digunakan untuk toko yang baru beralih\r\nmenjadi minimarket modern.<u1:p></u1:p></span><o:p></o:p></p>\r\n\r\n<p style=\"margin-top:11.25pt;margin-right:0cm;margin-bottom:0cm;margin-left:\r\n0cm;margin-bottom:.0001pt;mso-outline-level:6\"><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">Meja kasir shelving adalah\r\njenis khusus dari meja kasir. dengan tambahan rak di sisinya yang digunakan\r\nuntuk display berbagi produk fats moving yang dengan mudah di akses pelanggan.\r\nAnda bisa memilih warna yang sesuai dengan model bisnis anda. dengan harga\r\nmurah dan kualitas bagus serta customable membuat produk ini paling favorit.</span><o:p></o:p></p>\r\n\r\n<h5 style=\"margin-top: 0cm;\"><span times=\"\" new=\"\" \"=\"\"><b><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\"></span>Diskripsi Produk</b></span><b>:</b><b><span style=\"font-size: 10pt; line-height: 115%; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></b></h5>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Tahan Api</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \";=\"\" \"times=\"\" new=\"\" \";color:#606060;mso-fareast-language:=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Tidak mudah berkarat</span></span><span \";=\"\" \"times=\"\" new=\"\" \";color:#606060;mso-fareast-language:=\"\" \"=\"\"><u1:p></u1:p></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:\r\n&quot;Segoe UI&quot;;color:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Cat tidak mudah\r\nterkelupas</span></span><span \"times=\"\" new=\"\" \";color:#606060;=\"\" \"=\"\"><u1:p></u1:p></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Tidak mudah penyok</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \";=\"\" \"times=\"\" new=\"\" \";color:#606060;mso-fareast-language:=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Tahan hingga 75 kg per\r\nshelving</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \"times=\"\" new=\"\" \";=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Model terbaru</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \";=\"\" \"times=\"\" new=\"\" \";color:#606060;mso-fareast-language:=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Garansi 20 tahun,\r\nlangsung dari pabrik</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \"times=\"\" new=\"\" \";=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Dijamin paling\r\nberkualitas &amp; paling murah</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \"times=\"\" new=\"\" \";=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Jaminan GARANSI SEUMUR\r\nHIDUP</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \"times=\"\" new=\"\" \";=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Kami menjual\r\nproduk-produk</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \"times=\"\" new=\"\" \";color:#606060;=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size:10.0pt;font-family:Wingdings;mso-bidi-font-family:&quot;Segoe UI&quot;;\r\ncolor:#606060\">Ø<span times=\"\" new=\"\" \"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"></span><span style=\"font-family:&quot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black\">Produk lansung dari\r\npabrik</span></span><span style=\"font-size: 10.5pt; font-family: &quot;Segoe UI&quot;, sans-serif;\"><u1:p></u1:p></span><o:p></o:p><span \"times=\"\" new=\"\" \";color:#606060;=\"\" \"=\"\"></span></p>\r\n\r\n<p class=\"MsoNormal\"><span \";=\"\" \"times=\"\" new=\"\" \";color:#606060;mso-fareast-language:=\"\" \"=\"\"><u1:p><span style=\"font-family: &quot;Segoe UI&quot;, sans-serif;\">&nbsp;</span></u1:p></span><span style=\"font-size: 10.5pt; line-height: 115%; font-family: &quot;Segoe UI&quot;, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n', '1597813099_f0b37cba643217884aeb.jpg', 0),
(17, 7, 'RAK GUDANG', '<p><span style=\"color: rgb(122, 122, 122); font-family: Roboto, sans-serif; font-size: 16px;\">Rak Gudang berbahan baja dengan daya tahan 1 Ton Pershelving, cocok untuk gudang penyimpanan produk anda.</span><br></p>', '<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--></p><h5 style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><span style=\"font-family: &quot;Arial Black&quot;;\">Diskripsi Produk:﻿</span></h5><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tahan Api</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tidak mudah berkarat</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Cat tidak mudah terkelupas</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tidak mudah penyok</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tahan hingga 75 kg per shelving</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Model terbaru</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Garansi 20 tahun, langsung dari pabrik</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Dijamin paling berkualitas &amp; paling murah</span><span style=\"font-size:\r\n12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Jaminan GARANSI SEUMUR HIDUP</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Kami menjual produk-produk</span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><span style=\"text-indent: -18pt; font-size: 10pt; font-family: Wingdings; color: rgb(96, 96, 96);\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><span style=\"text-indent: -18pt; font-size: 12pt; font-family: Arial, sans-serif; color: rgb(84, 89, 95);\">Produk lansung dari pabrik</span><br></p>', '1597813534_2da3d0c7e419bdd585d9.jpg', 0),
(18, 4, 'RAK ROKOK ', 'RAK ROKOK DISPLAY', '<p><span style=\"color: rgb(122, 122, 122); font-family: Roboto, sans-serif; font-size: 16px;\">Rak Rokok cocok untuk display rokok dan juga beberapa item –&nbsp; item produk lain. Berbahan Baja dengan kualitas terjamin dan bergaransi resmi 20 tahun dari kami.</span></p><h5>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b><span style=\"font-family: &quot;Times New Roman&quot;;\">Diskripsi Produk:&nbsp;</span></b> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</h5><p class=\"MsoNormal\"><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tahan Api</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tidak mudah berkarat</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Cat tidak mudah terkelupas</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tidak mudah penyok</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tahan hingga 75 kg per shelving</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Model terbaru</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Garansi 20 tahun, langsung dari pabrik</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Dijamin paling berkualitas &amp; paling murah</span><span style=\"font-size:\r\n12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Jaminan GARANSI SEUMUR HIDUP</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Kami menjual produk-produk </span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Produk lansung dari pabrik</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p>&nbsp;</o:p></span></p>', '1597813959_caf9a75ef4f53a5943d0.jpg', 0);
INSERT INTO `products` (`products_id`, `category_id`, `product_nama`, `product_desc`, `product_spec`, `product_foto`, `product_harga`) VALUES
(19, 8, 'Box Obral Chrome', '<p><a href=\"https://pabrikrakbaja.com/box-obral-supermarket/\" style=\"color: rgb(28, 164, 234); background-color: rgb(255, 255, 255); margin: 0px; padding: 0px; box-shadow: none; font-family: Roboto, sans-serif; font-size: 16px;\">Box Obral&nbsp;Supermarket</a></p>', '<p><a href=\"https://pabrikrakbaja.com/box-obral-supermarket/\" style=\"margin: 0px; padding: 0px; color: rgb(28, 164, 234); box-shadow: none; font-family: Roboto, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Box Obral&nbsp;Supermarket</a><span style=\"font-family: Roboto, sans-serif; font-size: 16px;\">&nbsp;Cocok Untuk Display Produk Anda dengan Promo tertentu, agar Barang dengan Promo bisa lebih terlihat lebih menarik untuk pelanggan setia anda.</span></p><p class=\"MsoNormal\"><b><span style=\"font-size:16.0pt;line-height:115%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Diskripsi\r\nProduk:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tahan Api</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tidak mudah berkarat</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Cat tidak mudah terkelupas</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tidak mudah penyok</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Tahan hingga 75 kg per shelving</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Model terbaru</span><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Garansi 20 tahun, langsung dari pabrik</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Dijamin paling berkualitas &amp; paling murah</span><span style=\"font-size:\r\n12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Jaminan GARANSI SEUMUR HIDUP</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#606060;mso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Kami menjual produk-produk </span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#54595F;mso-fareast-language:\r\nIN\">Produk lansung dari pabrik</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#606060;mso-fareast-language:\r\nIN\"><o:p>&nbsp;</o:p></span></p>', '1597814547_a5fb9b045438eb302dd9.jpg', 0),
(20, 9, 'TROLLEY SUPERMARKET', 'TROLLEY SUPERMARKET', '<p class=\"MsoNormal\"><span style=\"font-family: Roboto, sans-serif; font-size: 16px;\">Trolley Minimarket &amp; Supermarket untuk keperluan usaha anda, sebagai alat untuk pelanggan membawa barang belanjaannya. Pelayanan Terbaik untuk Pelanggan anda</span></p><p class=\"MsoNormal\"><span style=\"font-family: Roboto, sans-serif; font-size: 16px;\"><br></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b style=\"font-size: 0.875rem;\"><span style=\"font-size:16.0pt;line-height:115%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\">Diskripsi\r\nProduk:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></b></p><p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:127.6pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Tahan Api</span><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Tidak mudah berkarat</span><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Cat tidak mudah terkelupas</span><span style=\"font-size:12.0pt;font-family:\r\n\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;=\"\" mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Tidak mudah penyok</span><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Tahan hingga 75 kg per shelving</span><span style=\"font-size:12.0pt;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Model terbaru</span><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Garansi 20 tahun, langsung dari pabrik</span><span style=\"font-size:12.0pt;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Dijamin paling berkualitas &amp; paling murah</span><span style=\"font-size:\r\n12.0pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Jaminan GARANSI SEUMUR HIDUP</span><span style=\"font-size:12.0pt;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#606060;mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Kami menjual produk-produk </span><span style=\"font-size:12.0pt;font-family:\r\n\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;=\"\" mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:0cm;margin-left:127.6pt;margin-bottom:.0001pt;mso-add-space:auto;\r\ntext-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Wingdings;\r\nmso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings;color:#606060;\r\nmso-fareast-language:IN\">Ø<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#54595f;mso-fareast-language:=\"\" in\"=\"\">Produk lansung dari pabrik</span><span style=\"font-size:12.0pt;font-family:\r\n\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;=\"\" mso-fareast-language:in\"=\"\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#606060;mso-fareast-language:=\"\" in\"=\"\"><o:p>&nbsp;</o:p></span></p>', '1597814805_f673deb193b9ba59f010.jpg', 0),
(21, 10, 'KERANJANG BELANJA MIRANI', 'KERANJANG BELANJA ', '<div class=\"elementor-element elementor-element-9ce3044 elementor-widget elementor-widget-heading\" data-id=\"9ce3044\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px 0px 20px; padding: 0px; position: relative; width: 550px; color: rgb(96, 96, 96); font-family: Oxygen, sans-serif; font-size: 16px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 1; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-weight: 600;\">Deskripsi Produk:</h5></div></div><div class=\"elementor-element elementor-element-4462cc3 elementor-widget elementor-widget-text-editor\" data-id=\"4462cc3\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px 0px 20px; padding: 0px; position: relative; font-family: Roboto, sans-serif; width: 550px; font-size: 16px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><div class=\"elementor-text-editor elementor-clearfix\" style=\"margin: 0px; padding: 0px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\">Keranjang Belanja untuk keperluan usaha anda, sebagai alat untuk pelanggan membawa barang belanjaannya. Pelayanan Terbaik untuk Pelanggan anda.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"font-weight: 600;\">Spesifikasi:</span></h5></div></div></div><div class=\"elementor-element elementor-element-d18531c elementor-icon-list--layout-traditional elementor-widget elementor-widget-icon-list\" data-id=\"d18531c\" data-element_type=\"widget\" data-widget_type=\"icon-list.default\" style=\"margin: 0px 0px 20px; padding: 0px; position: relative; width: 550px; color: rgb(96, 96, 96); font-family: Oxygen, sans-serif; font-size: 16px;\"><div class=\"elementor-widget-container\" style=\"margin: 0px; padding: 0px; transition: background 0.3s ease 0s, border 0.3s ease 0s, border-radius 0.3s ease 0s, box-shadow 0.3s ease 0s, -webkit-border-radius 0.3s ease 0s, -webkit-box-shadow 0.3s ease 0s;\"><ul><li style=\"margin: 0px; padding: 0px 0px calc(1.5px); position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span class=\"fa fa-check-square\" aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-stretch: normal; font-size: 20px; width: 1.25em; color: rgb(110, 193, 228);\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Warna tidak mudah terkelupas</span></li><li class=\"elementor-icon-list-item\" style=\"margin: calc(1.5px) 0px 0px; padding: 0px 0px calc(1.5px); position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span class=\"fa fa-check-square\" aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-stretch: normal; font-size: 20px; width: 1.25em; color: rgb(110, 193, 228);\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Tersedia Warna Merah, Biru, Hijau, dan kuning</span></li><li class=\"elementor-icon-list-item\" style=\"margin: calc(1.5px) 0px 0px; padding: 0px 0px calc(1.5px); position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span class=\"fa fa-check-square\" aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-stretch: normal; font-size: 20px; width: 1.25em; color: rgb(110, 193, 228);\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Tidak mudah penyok</span></li><li class=\"elementor-icon-list-item\" style=\"margin: calc(1.5px) 0px 0px; padding: 0px 0px calc(1.5px); position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span class=\"fa fa-check-square\" aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-stretch: normal; font-size: 20px; width: 1.25em; color: rgb(110, 193, 228);\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Ukuran Panjang 35cm, Lebar 30cm, Tinggi 20cm</span></li><li class=\"elementor-icon-list-item\" style=\"margin: calc(1.5px) 0px 0px; padding: 0px 0px calc(1.5px); position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span class=\"fa fa-check-square\" aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-stretch: normal; font-size: 20px; width: 1.25em; color: rgb(110, 193, 228);\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Model terbaru</span></li><li class=\"elementor-icon-list-item\" style=\"margin: calc(1.5px) 0px 0px; padding: 0px 0px calc(1.5px); position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><span class=\"fa fa-check-square\" aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-stretch: normal; font-size: 20px; width: 1.25em; color: rgb(110, 193, 228);\"></span></span><span class=\"elementor-icon-list-text\" style=\"margin: 0px; padding: 0px 0px 0px 5px; color: rgb(84, 89, 95); align-self: center;\">Dijamin paling berkualitas &amp; paling murah</span></li><li class=\"elementor-icon-list-item\" style=\"margin: calc(1.5px) 0px 0px; padding: 0px; position: relative; display: flex; -webkit-box-align: start; align-items: flex-start; font-family: Roboto, sans-serif;\"><br><span class=\"elementor-icon-list-icon\" style=\"margin: 0px; padding: 0px; flex-shrink: 0;\"><br></span></li></ul></div></div>', '1597816494_870bad7155b580c4f1e7.jpg', 0);

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
(1, 'Dygal Rakindo', '<p>Kami adalah distributor pembuatan rak dengan kualitas terbaik di Indonesia</p>', ' Merupakan pabrik yang memproduksi berbagai macam rak supermarket/rak \r\nminimarket/rak toko/rak swalayan yang mampu menahan dari 30 kg, 40kg, \r\n75kg, 100 kg/shelving serta rak gudang yang mampu menahan beban hingga \r\n300 kg/shelving, berbagai macam bentuk manekin yang sangat modern dengan\r\n model terbaru dan kualitas terbaik dari fiber maupun plastik tebal. \r\nKami juga menyediakan trolley, meja kasir dan berbagai macam keperluan \r\nusaha anda, semuanya lengkap dengan kualitas sangat tinggi dan harga \r\ntermurah kami jamin!');

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `caras`
--
ALTER TABLE `caras`
  MODIFY `cara_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `category_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `products_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `profils`
--
ALTER TABLE `profils`
  MODIFY `profil_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
