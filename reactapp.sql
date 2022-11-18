-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 04:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reactapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_tokens`
--

CREATE TABLE `access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_type` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_tokens`
--

INSERT INTO `access_tokens` (`id`, `tokenable_id`, `tokenable_type`, `name`, `token`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, 'access-token', '7f4e85a18340205eb61cd0f76a3d52a9880add6adb131c107a4b420ab4258f93', NULL, '2022-10-09 20:04:34', '2022-10-09 20:04:34'),
(2, '1', NULL, 'access-token', 'd4bf9fa182d287e6c4baa5ecc18175f086e3320107a55e38c8afc7fa06c69cec', NULL, '2022-10-09 20:47:12', '2022-10-09 20:47:12'),
(3, '1', NULL, 'access-token', '605a935dc46da6b6179c679a213d15ff0664fd73a451e1168f499abf74d2fa6f', NULL, '2022-10-09 20:48:04', '2022-10-09 20:48:04'),
(4, '1', NULL, 'access-token', '4d631ae7e70b778b2112f6b69df72e7082cce77fb38c6dec6922fad80a08fd0a', NULL, '2022-10-09 20:49:02', '2022-10-09 20:49:02'),
(5, '1', NULL, 'access-token', '0f0712f10f63df50a68ee916e7998a5cd2020f55984af36b3ddc5a145210044b', NULL, '2022-10-09 20:50:55', '2022-10-09 20:50:55'),
(6, '1', NULL, 'access-token', 'cedc9c6b19fd020752e446d7bbbe134cb0b1e212a698046586e6d9159862073f', NULL, '2022-10-09 20:52:09', '2022-10-09 20:52:09'),
(7, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'd9d1bd1076a8025be6f5cb7624010312b4bc1f4fe8a6df1eac547d53b2f721d9', '2022-10-10', '2022-10-09 20:53:44', '2022-10-09 20:54:08'),
(8, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', '671a492e7b41726a3e4c062e0727b79e2cf0563f8b4636162eb12a6f0a064bba', '2022-10-10', '2022-10-10 09:17:13', '2022-10-10 09:55:52'),
(9, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'b1264bd986f1d96eb22f488eaf436d6aca4a518418d3ec37dd6dca7c2923651d', '2022-10-10', '2022-10-10 09:57:03', '2022-10-10 09:57:46'),
(10, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'bdf8c9f0c7e6aa41d49f49724e8e382f58a7d09f25effbe09a5923d99c25d065', '2022-10-10', '2022-10-10 10:00:39', '2022-10-10 10:01:43'),
(11, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', '025a7b9bb83d7381ac912b755689a790d649c870ffd314cddbbafb3137e15f6a', '2022-10-10', '2022-10-10 10:03:03', '2022-10-10 10:03:21'),
(12, '1', 'http://127.0.0.1:8000/api/access/updateproductquantity', 'access-token', '4bbafa725773b577d2b083cc6becba0adcf447dff14dba790b6492dc4fe1a0ec', '2022-10-10', '2022-10-10 10:03:52', '2022-10-10 10:04:18'),
(13, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'ca1bd2ebf744aa2d91892e959cde64a22689a0d7d9dea07138bda2e438287d04', '2022-10-10', '2022-10-10 10:04:58', '2022-10-10 10:05:08'),
(14, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', '46355dbae5f1ce0ca5878ed2c31f84f48e0da570bad04ae422cbd2d012267eea', '2022-10-10', '2022-10-10 10:07:19', '2022-10-10 10:07:49'),
(15, '1', NULL, 'access-token', 'b6b33d09e094dab75237f9ad68d63379d3824f8cf643d7f818287265080adb3d', NULL, '2022-10-10 10:14:56', '2022-10-10 10:14:56'),
(16, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'bdd81565f0d1d03c20d6928f1a7523edb3402f8322d5aea5eae3e8a7298d361d', '2022-10-10', '2022-10-10 10:15:23', '2022-10-10 10:15:24'),
(17, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'a3bd5f04c2d186684705628a223372a64be0a632d3b18715eddaf8e6768d695e', '2022-10-10', '2022-10-10 10:16:02', '2022-10-10 10:16:02'),
(18, '1', NULL, 'access-token', '62e6363683c79ea695fec65e292e76aca8215f4591e8bbce7420efb20b20047b', NULL, '2022-10-10 10:17:22', '2022-10-10 10:17:22'),
(19, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', '962403126a654fcb7a68d894eb1e748eedca3cd7fe335980190c759ea50e6906', '2022-10-10', '2022-10-10 10:18:05', '2022-10-10 10:18:06'),
(20, '1', NULL, 'access-token', 'd55c186398fa09fb8f9b98d51b10fdb52042036b53140c0a83994a917dc4aba2', NULL, '2022-10-10 10:20:13', '2022-10-10 10:20:13'),
(21, '1', 'http://127.0.0.1:8000/api/access/updateproductquantity', 'access-token', 'cd6f8ae84675d37a41e4bb543b4bb53fe0b3cba11cbde502e3dd728f7fa0a48e', '2022-10-10', '2022-10-10 10:21:21', '2022-10-10 10:25:23'),
(22, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', '743827e269d56bcb6d128591f9a10620274c94e2c17a4ec036326649987aa86a', '2022-10-10', '2022-10-10 10:31:14', '2022-10-10 10:31:15'),
(23, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', '927787356c6e9cde1fae14bc7d3df14ad23c4c95b734b920c682a17ac885563d', '2022-10-10', '2022-10-10 10:34:52', '2022-10-10 10:34:53'),
(24, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', '0c2595b8d4356aa5725e93c3d2fb9e76db465fc3364662fd4cbdb6a7a9c7aed2', '2022-10-11', '2022-10-10 19:56:42', '2022-10-10 19:59:59'),
(25, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', '755b91d86c44a9de603791b61c3ada2fd6a602f1d2cbedaa95caa57caa3e45d8', '2022-10-11', '2022-10-10 20:00:50', '2022-10-10 20:00:51'),
(26, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'a6ea05fdd99aecebeeaf389bde8794b27ff7cac28f88c262129f5f8e80c3733a', '2022-10-11', '2022-10-10 20:04:32', '2022-10-10 20:04:32'),
(27, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'e79045443dd06468d5070a066fafd36012448f893256b66cc46e7c0637402ffd', '2022-10-12', '2022-10-11 20:16:44', '2022-10-11 20:16:45'),
(28, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'd10c4679b2b80466b6dc48be920807452fcc9147af719de1f983d962ac9c8c13', '2022-10-12', '2022-10-11 20:20:39', '2022-10-11 20:20:39'),
(29, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'e13f064fe5c1322fea4cd24876506f5aa33500a1e4fc4ef76b4f744ddf31a671', '2022-10-16', '2022-10-15 22:47:35', '2022-10-15 22:47:36'),
(30, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'd667ae41538e8d43e83b03f181fd9d6773e581f86cf15ce6f009885bc0d3a913', '2022-10-16', '2022-10-15 22:48:03', '2022-10-15 22:48:03'),
(31, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', '01b81653603491c38172c6fe49b297bdf8711307275048eeda4c489816774186', '2022-10-16', '2022-10-15 22:48:42', '2022-10-15 22:48:42'),
(32, '1', 'http://127.0.0.1:8000/api/access/viewbrand', 'access-token', '268f5582bc5ec7714ee5356ca3aa8163cb26b2b2fe8fcd02c94490e69b51ba8c', '2022-10-16', '2022-10-15 22:53:00', '2022-10-15 22:53:12'),
(33, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', '699511450c5eaedab6b59680fb55afbb5b17b0f90f9f02adaaf56f96ef8a475e', '2022-10-16', '2022-10-15 22:53:30', '2022-10-15 22:53:30'),
(34, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'f78d7329d4c60b7153cdfd9f05191045b750032456edad4d0dca099725336524', '2022-10-16', '2022-10-15 23:18:14', '2022-10-15 23:28:32'),
(35, '1', 'http://127.0.0.1:8000/api/access/productlist', 'access-token', 'e3003fb3b0c1b46828b83a8fbd9a0bdb2420c13805b1322a0c9a321f1756236f', '2022-11-04', '2022-11-04 09:35:53', '2022-11-04 09:36:35'),
(36, '1', 'http://127.0.0.1:8000/api/access/categorylist', 'access-token', '4ae41667fba87d4e2a28133eb0788d7f9419cce52428407e2c0a359a279b0070', '2022-11-04', '2022-11-04 09:43:07', '2022-11-04 09:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `address_type`
--

CREATE TABLE `address_type` (
  `id` int(11) NOT NULL,
  `name` varchar(350) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address_type`
--

INSERT INTO `address_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Home', '2022-10-15 16:33:49', '2022-10-15 16:33:49'),
(2, 'Work', '2022-10-15 16:34:24', '2022-10-15 16:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(350) DEFAULT NULL,
  `logo` varchar(350) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Apple', 'brand_22096_8705.jpg', '1', '2022-09-16 20:57:50', '2022-09-20 19:53:10'),
(3, 'Samsung', 'brand_44816_14460.jpg', '1', '2022-09-16 20:58:34', '2022-10-02 21:42:35'),
(4, 'Xiaomi', 'brand_15936_1389.jpg', '1', '2022-09-16 21:00:17', '2022-10-02 21:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `category_img` varchar(300) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `category_img`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Appliances', 'category_76078_9140.jpg', '1', '2022-09-13 20:36:46', '2022-10-03 02:24:17'),
(14, 'Electronics', 'category_33288_8536.jpg', '1', '2022-09-13 20:54:41', '2022-09-18 01:09:02'),
(15, 'Fashion', 'category_45997_13244.jpg', '1', '2022-09-13 20:36:46', '2022-09-18 01:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `code` varchar(250) DEFAULT NULL,
  `timezone` varchar(250) DEFAULT NULL,
  `utc` varchar(250) DEFAULT NULL,
  `mobileCode` varchar(250) DEFAULT NULL,
  `flag` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `code`, `timezone`, `utc`, `mobileCode`, `flag`) VALUES
(1, 'Afghanistan', 'AF', 'Afghanistan Standard Time', 'UTC+04:30', '+93', 'https://cdn.kcak11.com/CountryFlags/countries/af.svg'),
(2, 'Åland Islands', 'AX', 'FLE Standard Time', 'UTC+02:00', '+358-18', 'https://cdn.kcak11.com/CountryFlags/countries/ax.svg'),
(3, 'Albania', 'AL', 'Central Europe Standard Time', 'UTC+01:00', '+355', 'https://cdn.kcak11.com/CountryFlags/countries/al.svg'),
(4, 'American Samoa', 'AS', 'UTC-11', 'UTC-11:00', '+1-684', 'https://cdn.kcak11.com/CountryFlags/countries/as.svg'),
(5, 'Algeria', 'DZ', 'W. Central Africa Standard Time', 'UTC+01:00', '+213', 'https://cdn.kcak11.com/CountryFlags/countries/dz.svg'),
(6, 'Angola', 'AO', 'W. Central Africa Standard Time', 'UTC+01:00', '+244', 'https://cdn.kcak11.com/CountryFlags/countries/ao.svg'),
(7, 'Anguilla', 'AI', 'SA Western Standard Time', 'UTC-04:00', '+1-264', 'https://cdn.kcak11.com/CountryFlags/countries/ai.svg'),
(8, 'Antarctica', 'AQ', 'Pacific SA Standard Time', 'UTC-03:00', '+672', 'https://cdn.kcak11.com/CountryFlags/countries/aq.svg'),
(9, 'Antigua and Barbuda', 'AG', 'SA Western Standard Time', 'UTC-04:00', '+1-268', 'https://cdn.kcak11.com/CountryFlags/countries/ag.svg'),
(10, 'Argentina', 'AR', 'Argentina Standard Time', 'UTC-03:00', '+54', 'https://cdn.kcak11.com/CountryFlags/countries/ar.svg'),
(11, 'Armenia', 'AM', 'Caucasus Standard Time', 'UTC+04:00', '+374', 'https://cdn.kcak11.com/CountryFlags/countries/am.svg'),
(12, 'Aruba', 'AW', 'SA Western Standard Time', 'UTC-04:00', '+297', 'https://cdn.kcak11.com/CountryFlags/countries/aw.svg'),
(13, 'Australia', 'AU', 'AUS Eastern Standard Time', 'UTC+10:00', '+61', 'https://cdn.kcak11.com/CountryFlags/countries/au.svg'),
(14, 'Andorra', 'AD', 'W. Europe Standard Time', 'UTC+01:00', '+376', 'https://cdn.kcak11.com/CountryFlags/countries/ad.svg'),
(15, 'Austria', 'AT', 'W. Europe Standard Time', 'UTC+01:00', '+43', 'https://cdn.kcak11.com/CountryFlags/countries/at.svg'),
(16, 'Bahamas, The', 'BS', 'Eastern Standard Time', 'UTC-05:00', '+1-242', 'https://cdn.kcak11.com/CountryFlags/countries/bs.svg'),
(17, 'Azerbaijan', 'AZ', 'Azerbaijan Standard Time', 'UTC+04:00', '+994', 'https://cdn.kcak11.com/CountryFlags/countries/az.svg'),
(18, 'Bahrain', 'BH', 'Arab Standard Time', 'UTC+03:00', '+973', 'https://cdn.kcak11.com/CountryFlags/countries/bh.svg'),
(19, 'Bangladesh', 'BD', 'Bangladesh Standard Time', 'UTC+06:00', '+880', 'https://cdn.kcak11.com/CountryFlags/countries/bd.svg'),
(20, 'Barbados', 'BB', 'SA Western Standard Time', 'UTC-04:00', '+1-246', 'https://cdn.kcak11.com/CountryFlags/countries/bb.svg'),
(21, 'Belgium', 'BE', 'Romance Standard Time', 'UTC+01:00', '+32', 'https://cdn.kcak11.com/CountryFlags/countries/be.svg'),
(22, 'Belarus', 'BY', 'Belarus Standard Time', 'UTC+03:00', '+375', 'https://cdn.kcak11.com/CountryFlags/countries/by.svg'),
(23, 'Belize', 'BZ', 'Central America Standard Time', 'UTC-06:00', '+501', 'https://cdn.kcak11.com/CountryFlags/countries/bz.svg'),
(24, 'Benin', 'BJ', 'W. Central Africa Standard Time', 'UTC+01:00', '+229', 'https://cdn.kcak11.com/CountryFlags/countries/bj.svg'),
(25, 'Bermuda', 'BM', 'Atlantic Standard Time', 'UTC-04:00', '+1-441', 'https://cdn.kcak11.com/CountryFlags/countries/bm.svg'),
(26, 'Bolivarian Republic of Venezuela', 'VE', 'Venezuela Standard Time', 'UTC-04:30', '+58', 'https://cdn.kcak11.com/CountryFlags/countries/ve.svg'),
(27, 'Bhutan', 'BT', 'Bangladesh Standard Time', 'UTC+06:00', '+975', 'https://cdn.kcak11.com/CountryFlags/countries/bt.svg'),
(28, 'Bolivia', 'BO', 'SA Western Standard Time', 'UTC-04:00', '+591', 'https://cdn.kcak11.com/CountryFlags/countries/bo.svg'),
(29, 'Bosnia and Herzegovina', 'BA', 'Central European Standard Time', 'UTC+01:00', '+387', 'https://cdn.kcak11.com/CountryFlags/countries/ba.svg'),
(30, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'SA Western Standard Time', 'UTC-04:00', '+599', 'https://cdn.kcak11.com/CountryFlags/countries/bq.svg'),
(31, 'Bouvet Island', 'BV', 'UTC', 'UTC', '+47', 'https://cdn.kcak11.com/CountryFlags/countries/bv.svg'),
(32, 'Botswana', 'BW', 'South Africa Standard Time', 'UTC+02:00', '+267', 'https://cdn.kcak11.com/CountryFlags/countries/bw.svg'),
(33, 'Brazil', 'BR', 'E. South America Standard Time', 'UTC-03:00', '+55', 'https://cdn.kcak11.com/CountryFlags/countries/br.svg'),
(34, 'British Indian Ocean Territory', 'IO', 'Central Asia Standard Time', 'UTC+06:00', '+246', 'https://cdn.kcak11.com/CountryFlags/countries/io.svg'),
(35, 'Brunei', 'BN', 'Singapore Standard Time', 'UTC+08:00', '+673', 'https://cdn.kcak11.com/CountryFlags/countries/bn.svg'),
(36, 'Burundi', 'BI', 'South Africa Standard Time', 'UTC+02:00', '+257', 'https://cdn.kcak11.com/CountryFlags/countries/bi.svg'),
(37, 'Burkina Faso', 'BF', 'Greenwich Standard Time', 'UTC', '+226', 'https://cdn.kcak11.com/CountryFlags/countries/bf.svg'),
(38, 'Cabo Verde', 'CV', 'Cape Verde Standard Time', 'UTC-01:00', '+238', 'https://cdn.kcak11.com/CountryFlags/countries/cv.svg'),
(39, 'Bulgaria', 'BG', 'FLE Standard Time', 'UTC+02:00', '+359', 'https://cdn.kcak11.com/CountryFlags/countries/bg.svg'),
(40, 'Cambodia', 'KH', 'SE Asia Standard Time', 'UTC+07:00', '+855', 'https://cdn.kcak11.com/CountryFlags/countries/kh.svg'),
(41, 'Cameroon', 'CM', 'W. Central Africa Standard Time', 'UTC+01:00', '+237', 'https://cdn.kcak11.com/CountryFlags/countries/cm.svg'),
(42, 'Canada', 'CA', 'Eastern Standard Time', 'UTC-05:00', '+1', 'https://cdn.kcak11.com/CountryFlags/countries/ca.svg'),
(43, 'Cayman Islands', 'KY', 'SA Pacific Standard Time', 'UTC-05:00', '+1-345', 'https://cdn.kcak11.com/CountryFlags/countries/ky.svg'),
(44, 'Central African Republic', 'CF', 'W. Central Africa Standard Time', 'UTC+01:00', '+236', 'https://cdn.kcak11.com/CountryFlags/countries/cf.svg'),
(45, 'Chad', 'TD', 'W. Central Africa Standard Time', 'UTC+01:00', '+235', 'https://cdn.kcak11.com/CountryFlags/countries/td.svg'),
(46, 'Chile', 'CL', 'Pacific SA Standard Time', 'UTC-03:00', '+56', 'https://cdn.kcak11.com/CountryFlags/countries/cl.svg'),
(47, 'China', 'CN', 'China Standard Time', 'UTC+08:00', '+86', 'https://cdn.kcak11.com/CountryFlags/countries/cn.svg'),
(48, 'Christmas Island', 'CX', 'SE Asia Standard Time', 'UTC+07:00', '+61', 'https://cdn.kcak11.com/CountryFlags/countries/cx.svg'),
(49, 'Cocos (Keeling) Islands', 'CC', 'Myanmar Standard Time', 'UTC+06:30', '+61', 'https://cdn.kcak11.com/CountryFlags/countries/cc.svg'),
(50, 'Colombia', 'CO', 'SA Pacific Standard Time', 'UTC-05:00', '+57', 'https://cdn.kcak11.com/CountryFlags/countries/co.svg'),
(51, 'Comoros', 'KM', 'E. Africa Standard Time', 'UTC+03:00', '+269', 'https://cdn.kcak11.com/CountryFlags/countries/km.svg'),
(52, 'Congo', 'CG', 'W. Central Africa Standard Time', 'UTC+01:00', '+242', 'https://cdn.kcak11.com/CountryFlags/countries/cg.svg'),
(53, 'Congo (DRC)', 'CD', 'W. Central Africa Standard Time', 'UTC+01:00', '+243', 'https://cdn.kcak11.com/CountryFlags/countries/cd.svg'),
(54, 'Cook Islands', 'CK', 'Hawaiian Standard Time', 'UTC-10:00', '+682', 'https://cdn.kcak11.com/CountryFlags/countries/ck.svg'),
(55, 'Costa Rica', 'CR', 'Central America Standard Time', 'UTC-06:00', '+506', 'https://cdn.kcak11.com/CountryFlags/countries/cr.svg'),
(56, 'Côte d\'Ivoire', 'CI', 'Greenwich Standard Time', 'UTC', '+225', 'https://cdn.kcak11.com/CountryFlags/countries/ci.svg'),
(57, 'Croatia', 'HR', 'Central European Standard Time', 'UTC+01:00', '+385', 'https://cdn.kcak11.com/CountryFlags/countries/hr.svg'),
(58, 'Cuba', 'CU', 'Eastern Standard Time', 'UTC-05:00', '+53', 'https://cdn.kcak11.com/CountryFlags/countries/cu.svg'),
(59, 'Curaçao', 'CW', 'SA Western Standard Time', 'UTC-04:00', '+599', 'https://cdn.kcak11.com/CountryFlags/countries/cw.svg'),
(60, 'Cyprus', 'CY', 'E. Europe Standard Time', 'UTC+02:00', '+357', 'https://cdn.kcak11.com/CountryFlags/countries/cy.svg'),
(61, 'Czech Republic', 'CZ', 'Central Europe Standard Time', 'UTC+01:00', '+420', 'https://cdn.kcak11.com/CountryFlags/countries/cz.svg'),
(62, 'Democratic Republic of Timor-Leste', 'TL', 'Tokyo Standard Time', 'UTC+09:00', '+670', 'https://cdn.kcak11.com/CountryFlags/countries/tl.svg'),
(63, 'Denmark', 'DK', 'Romance Standard Time', 'UTC+01:00', '+45', 'https://cdn.kcak11.com/CountryFlags/countries/dk.svg'),
(64, 'Djibouti', 'DJ', 'E. Africa Standard Time', 'UTC+03:00', '+253', 'https://cdn.kcak11.com/CountryFlags/countries/dj.svg'),
(65, 'Dominica', 'DM', 'SA Western Standard Time', 'UTC-04:00', '+1-767', 'https://cdn.kcak11.com/CountryFlags/countries/dm.svg'),
(66, 'Dominican Republic', 'DO', 'SA Western Standard Time', 'UTC-04:00', '+1-809 and 1-829', 'https://cdn.kcak11.com/CountryFlags/countries/do.svg'),
(67, 'Ecuador', 'EC', 'SA Pacific Standard Time', 'UTC-05:00', '+593', 'https://cdn.kcak11.com/CountryFlags/countries/ec.svg'),
(68, 'Egypt', 'EG', 'Egypt Standard Time', 'UTC+02:00', '+20', 'https://cdn.kcak11.com/CountryFlags/countries/eg.svg'),
(69, 'El Salvador', 'SV', 'Central America Standard Time', 'UTC-06:00', '+503', 'https://cdn.kcak11.com/CountryFlags/countries/sv.svg'),
(70, 'Equatorial Guinea', 'GQ', 'W. Central Africa Standard Time', 'UTC+01:00', '+240', 'https://cdn.kcak11.com/CountryFlags/countries/gq.svg'),
(71, 'Eritrea', 'ER', 'E. Africa Standard Time', 'UTC+03:00', '+291', 'https://cdn.kcak11.com/CountryFlags/countries/er.svg'),
(72, 'Estonia', 'EE', 'FLE Standard Time', 'UTC+02:00', '+372', 'https://cdn.kcak11.com/CountryFlags/countries/ee.svg'),
(73, 'Falkland Islands (Islas Malvinas)', 'FK', 'SA Eastern Standard Time', 'UTC-03:00', '+500', 'https://cdn.kcak11.com/CountryFlags/countries/fk.svg'),
(74, 'Ethiopia', 'ET', 'E. Africa Standard Time', 'UTC+03:00', '+251', 'https://cdn.kcak11.com/CountryFlags/countries/et.svg'),
(75, 'Faroe Islands', 'FO', 'GMT Standard Time', 'UTC', '+298', 'https://cdn.kcak11.com/CountryFlags/countries/fo.svg'),
(76, 'Fiji Islands', 'FJ', 'Fiji Standard Time', 'UTC+12:00', '+679', 'https://cdn.kcak11.com/CountryFlags/countries/fj.svg'),
(77, 'Finland', 'FI', 'FLE Standard Time', 'UTC+02:00', '+358', 'https://cdn.kcak11.com/CountryFlags/countries/fi.svg'),
(78, 'France', 'FR', 'Romance Standard Time', 'UTC+01:00', '+33', 'https://cdn.kcak11.com/CountryFlags/countries/fr.svg'),
(79, 'French Guiana', 'GF', 'SA Eastern Standard Time', 'UTC-03:00', '+594', 'https://cdn.kcak11.com/CountryFlags/countries/gf.svg'),
(80, 'French Polynesia', 'PF', 'Hawaiian Standard Time', 'UTC-10:00', '+689', 'https://cdn.kcak11.com/CountryFlags/countries/pf.svg'),
(81, 'French Southern and Antarctic Lands', 'TF', 'West Asia Standard Time', 'UTC+05:00', '+262', 'https://cdn.kcak11.com/CountryFlags/countries/tf.svg'),
(82, 'Gabon', 'GA', 'W. Central Africa Standard Time', 'UTC+01:00', '+241', 'https://cdn.kcak11.com/CountryFlags/countries/ga.svg'),
(83, 'Gambia, The', 'GM', 'Greenwich Standard Time', 'UTC', '+220', 'https://cdn.kcak11.com/CountryFlags/countries/gm.svg'),
(84, 'Georgia', 'GE', 'Georgian Standard Time', 'UTC+04:00', '+995', 'https://cdn.kcak11.com/CountryFlags/countries/ge.svg'),
(85, 'Germany', 'DE', 'W. Europe Standard Time', 'UTC+01:00', '+49', 'https://cdn.kcak11.com/CountryFlags/countries/de.svg'),
(86, 'Ghana', 'GH', 'Greenwich Standard Time', 'UTC', '+233', 'https://cdn.kcak11.com/CountryFlags/countries/gh.svg'),
(87, 'Greece', 'GR', 'GTB Standard Time', 'UTC+02:00', '+30', 'https://cdn.kcak11.com/CountryFlags/countries/gr.svg'),
(88, 'Gibraltar', 'GI', 'W. Europe Standard Time', 'UTC+01:00', '+350', 'https://cdn.kcak11.com/CountryFlags/countries/gi.svg'),
(89, 'Grenada', 'GD', 'SA Western Standard Time', 'UTC-04:00', '+1-473', 'https://cdn.kcak11.com/CountryFlags/countries/gd.svg'),
(90, 'Greenland', 'GL', 'Greenland Standard Time', 'UTC-03:00', '+299', 'https://cdn.kcak11.com/CountryFlags/countries/gl.svg'),
(91, 'Guadeloupe', 'GP', 'SA Western Standard Time', 'UTC-04:00', '+590', 'https://cdn.kcak11.com/CountryFlags/countries/gp.svg'),
(92, 'Guam', 'GU', 'West Pacific Standard Time', 'UTC+10:00', '+1-671', 'https://cdn.kcak11.com/CountryFlags/countries/gu.svg'),
(93, 'Guatemala', 'GT', 'Central America Standard Time', 'UTC-06:00', '+502', 'https://cdn.kcak11.com/CountryFlags/countries/gt.svg'),
(94, 'Guinea', 'GN', 'Greenwich Standard Time', 'UTC', '+224', 'https://cdn.kcak11.com/CountryFlags/countries/gn.svg'),
(95, 'Guernsey', 'GG', 'GMT Standard Time', 'UTC', '+44-1481', 'https://cdn.kcak11.com/CountryFlags/countries/gg.svg'),
(96, 'Guinea-Bissau', 'GW', 'Greenwich Standard Time', 'UTC', '+245', 'https://cdn.kcak11.com/CountryFlags/countries/gw.svg'),
(97, 'Haiti', 'HT', 'Eastern Standard Time', 'UTC-05:00', '+509', 'https://cdn.kcak11.com/CountryFlags/countries/ht.svg'),
(98, 'Guyana', 'GY', 'SA Western Standard Time', 'UTC-04:00', '+592', 'https://cdn.kcak11.com/CountryFlags/countries/gy.svg'),
(99, 'Heard Island and McDonald Islands', 'HM', 'Mauritius Standard Time', 'UTC+04:00', '+672', 'https://cdn.kcak11.com/CountryFlags/countries/hm.svg'),
(100, 'Honduras', 'HN', 'Central America Standard Time', 'UTC-06:00', '+504', 'https://cdn.kcak11.com/CountryFlags/countries/hn.svg'),
(101, 'Hong Kong SAR', 'HK', 'China Standard Time', 'UTC+08:00', '+852', 'https://cdn.kcak11.com/CountryFlags/countries/hk.svg'),
(102, 'Hungary', 'HU', 'Central Europe Standard Time', 'UTC+01:00', '+36', 'https://cdn.kcak11.com/CountryFlags/countries/hu.svg'),
(103, 'Iceland', 'IS', 'Greenwich Standard Time', 'UTC', '+354', 'https://cdn.kcak11.com/CountryFlags/countries/is.svg'),
(104, 'India', 'IN', 'India Standard Time', 'UTC+05:30', '+91', 'https://cdn.kcak11.com/CountryFlags/countries/in.svg'),
(105, 'Indonesia', 'ID', 'SE Asia Standard Time', 'UTC+07:00', '+62', 'https://cdn.kcak11.com/CountryFlags/countries/id.svg'),
(106, 'Iran', 'IR', 'Iran Standard Time', 'UTC+03:30', '+98', 'https://cdn.kcak11.com/CountryFlags/countries/ir.svg'),
(107, 'Iraq', 'IQ', 'Arabic Standard Time', 'UTC+03:00', '+964', 'https://cdn.kcak11.com/CountryFlags/countries/iq.svg'),
(108, 'Ireland', 'IE', 'GMT Standard Time', 'UTC', '+353', 'https://cdn.kcak11.com/CountryFlags/countries/ie.svg'),
(109, 'Italy', 'IT', 'W. Europe Standard Time', 'UTC+01:00', '+39', 'https://cdn.kcak11.com/CountryFlags/countries/it.svg'),
(110, 'Israel', 'IL', 'Israel Standard Time', 'UTC+02:00', '+972', 'https://cdn.kcak11.com/CountryFlags/countries/il.svg'),
(111, 'Jamaica', 'JM', 'SA Pacific Standard Time', 'UTC-05:00', '+1-876', 'https://cdn.kcak11.com/CountryFlags/countries/jm.svg'),
(112, 'Jan Mayen', 'SJ', 'W. Europe Standard Time', 'UTC+01:00', '+47', 'https://cdn.kcak11.com/CountryFlags/countries/sj.svg'),
(113, 'Japan', 'JP', 'Tokyo Standard Time', 'UTC+09:00', '+81', 'https://cdn.kcak11.com/CountryFlags/countries/jp.svg'),
(114, 'Jersey', 'JE', 'GMT Standard Time', 'UTC', '+44-1534', 'https://cdn.kcak11.com/CountryFlags/countries/je.svg'),
(115, 'Jordan', 'JO', 'Jordan Standard Time', 'UTC+02:00', '+962', 'https://cdn.kcak11.com/CountryFlags/countries/jo.svg'),
(116, 'Kazakhstan', 'KZ', 'Central Asia Standard Time', 'UTC+06:00', '+7', 'https://cdn.kcak11.com/CountryFlags/countries/kz.svg'),
(117, 'Kenya', 'KE', 'E. Africa Standard Time', 'UTC+03:00', '+254', 'https://cdn.kcak11.com/CountryFlags/countries/ke.svg'),
(118, 'Kiribati', 'KI', 'UTC+12', 'UTC+12:00', '+686', 'https://cdn.kcak11.com/CountryFlags/countries/ki.svg'),
(119, 'Korea', 'KR', 'Korea Standard Time', 'UTC+09:00', '+82', 'https://cdn.kcak11.com/CountryFlags/countries/kr.svg'),
(120, 'Kosovo', 'XK', 'Central European Standard Time', 'UTC+01:00', '+', 'https://cdn.kcak11.com/CountryFlags/countries/xk.svg'),
(121, 'Kuwait', 'KW', 'Arab Standard Time', 'UTC+03:00', '+965', 'https://cdn.kcak11.com/CountryFlags/countries/kw.svg'),
(122, 'Kyrgyzstan', 'KG', 'Central Asia Standard Time', 'UTC+06:00', '+996', 'https://cdn.kcak11.com/CountryFlags/countries/kg.svg'),
(123, 'Laos', 'LA', 'SE Asia Standard Time', 'UTC+07:00', '+856', 'https://cdn.kcak11.com/CountryFlags/countries/la.svg'),
(124, 'Latvia', 'LV', 'FLE Standard Time', 'UTC+02:00', '+371', 'https://cdn.kcak11.com/CountryFlags/countries/lv.svg'),
(125, 'Lebanon', 'LB', 'Middle East Standard Time', 'UTC+02:00', '+961', 'https://cdn.kcak11.com/CountryFlags/countries/lb.svg'),
(126, 'Lesotho', 'LS', 'South Africa Standard Time', 'UTC+02:00', '+266', 'https://cdn.kcak11.com/CountryFlags/countries/ls.svg'),
(127, 'Liechtenstein', 'LI', 'W. Europe Standard Time', 'UTC+01:00', '+423', 'https://cdn.kcak11.com/CountryFlags/countries/li.svg'),
(128, 'Liberia', 'LR', 'Greenwich Standard Time', 'UTC', '+231', 'https://cdn.kcak11.com/CountryFlags/countries/lr.svg'),
(129, 'Libya', 'LY', 'E. Europe Standard Time', 'UTC+02:00', '+218', 'https://cdn.kcak11.com/CountryFlags/countries/ly.svg'),
(130, 'Lithuania', 'LT', 'FLE Standard Time', 'UTC+02:00', '+370', 'https://cdn.kcak11.com/CountryFlags/countries/lt.svg'),
(131, 'Macao SAR', 'MO', 'China Standard Time', 'UTC+08:00', '+853', 'https://cdn.kcak11.com/CountryFlags/countries/mo.svg'),
(132, 'Luxembourg', 'LU', 'W. Europe Standard Time', 'UTC+01:00', '+352', 'https://cdn.kcak11.com/CountryFlags/countries/lu.svg'),
(133, 'Macedonia, Former Yugoslav Republic of', 'MK', 'Central European Standard Time', 'UTC+01:00', '+389', 'https://cdn.kcak11.com/CountryFlags/countries/mk.svg'),
(134, 'Madagascar', 'MG', 'E. Africa Standard Time', 'UTC+03:00', '+261', 'https://cdn.kcak11.com/CountryFlags/countries/mg.svg'),
(135, 'Malawi', 'MW', 'South Africa Standard Time', 'UTC+02:00', '+265', 'https://cdn.kcak11.com/CountryFlags/countries/mw.svg'),
(136, 'Malaysia', 'MY', 'Singapore Standard Time', 'UTC+08:00', '+60', 'https://cdn.kcak11.com/CountryFlags/countries/my.svg'),
(137, 'Maldives', 'MV', 'West Asia Standard Time', 'UTC+05:00', '+960', 'https://cdn.kcak11.com/CountryFlags/countries/mv.svg'),
(138, 'Man, Isle of', 'IM', 'GMT Standard Time', 'UTC', '+44-1624', 'https://cdn.kcak11.com/CountryFlags/countries/im.svg'),
(139, 'Malta', 'MT', 'W. Europe Standard Time', 'UTC+01:00', '+356', 'https://cdn.kcak11.com/CountryFlags/countries/mt.svg'),
(140, 'Mali', 'ML', 'Greenwich Standard Time', 'UTC', '+223', 'https://cdn.kcak11.com/CountryFlags/countries/ml.svg'),
(141, 'Marshall Islands', 'MH', 'UTC+12', 'UTC+12:00', '+692', 'https://cdn.kcak11.com/CountryFlags/countries/mh.svg'),
(142, 'Martinique', 'MQ', 'SA Western Standard Time', 'UTC-04:00', '+596', 'https://cdn.kcak11.com/CountryFlags/countries/mq.svg'),
(143, 'Mauritania', 'MR', 'Greenwich Standard Time', 'UTC', '+222', 'https://cdn.kcak11.com/CountryFlags/countries/mr.svg'),
(144, 'Mauritius', 'MU', 'Mauritius Standard Time', 'UTC+04:00', '+230', 'https://cdn.kcak11.com/CountryFlags/countries/mu.svg'),
(145, 'Mayotte', 'YT', 'E. Africa Standard Time', 'UTC+03:00', '+262', 'https://cdn.kcak11.com/CountryFlags/countries/yt.svg'),
(146, 'Mexico', 'MX', 'Central Standard Time (Mexico)', 'UTC-06:00', '+52', 'https://cdn.kcak11.com/CountryFlags/countries/mx.svg'),
(147, 'Micronesia', 'FM', 'West Pacific Standard Time', 'UTC+10:00', '+691', 'https://cdn.kcak11.com/CountryFlags/countries/fm.svg'),
(148, 'Moldova', 'MD', 'GTB Standard Time', 'UTC+02:00', '+373', 'https://cdn.kcak11.com/CountryFlags/countries/md.svg'),
(149, 'Monaco', 'MC', 'W. Europe Standard Time', 'UTC+01:00', '+377', 'https://cdn.kcak11.com/CountryFlags/countries/mc.svg'),
(150, 'Montenegro', 'ME', 'Central European Standard Time', 'UTC+01:00', '+382', 'https://cdn.kcak11.com/CountryFlags/countries/me.svg'),
(151, 'Mozambique', 'MZ', 'South Africa Standard Time', 'UTC+02:00', '+258', 'https://cdn.kcak11.com/CountryFlags/countries/mz.svg'),
(152, 'Morocco', 'MA', 'Morocco Standard Time', 'UTC', '+212', 'https://cdn.kcak11.com/CountryFlags/countries/ma.svg'),
(153, 'Montserrat', 'MS', 'SA Western Standard Time', 'UTC-04:00', '+1-664', 'https://cdn.kcak11.com/CountryFlags/countries/ms.svg'),
(154, 'Mongolia', 'MN', 'Ulaanbaatar Standard Time', 'UTC+08:00', '+976', 'https://cdn.kcak11.com/CountryFlags/countries/mn.svg'),
(155, 'Myanmar', 'MM', 'Myanmar Standard Time', 'UTC+06:30', '+95', 'https://cdn.kcak11.com/CountryFlags/countries/mm.svg'),
(156, 'Namibia', 'NA', 'Namibia Standard Time', 'UTC+01:00', '+264', 'https://cdn.kcak11.com/CountryFlags/countries/na.svg'),
(157, 'Netherlands', 'NL', 'W. Europe Standard Time', 'UTC+01:00', '+31', 'https://cdn.kcak11.com/CountryFlags/countries/nl.svg'),
(158, 'Nepal', 'NP', 'Nepal Standard Time', 'UTC+05:45', '+977', 'https://cdn.kcak11.com/CountryFlags/countries/np.svg'),
(159, 'New Caledonia', 'NC', 'Central Pacific Standard Time', 'UTC+11:00', '+687', 'https://cdn.kcak11.com/CountryFlags/countries/nc.svg'),
(160, 'Nauru', 'NR', 'UTC+12', 'UTC+12:00', '+674', 'https://cdn.kcak11.com/CountryFlags/countries/nr.svg'),
(161, 'New Zealand', 'NZ', 'New Zealand Standard Time', 'UTC+12:00', '+64', 'https://cdn.kcak11.com/CountryFlags/countries/nz.svg'),
(162, 'Niger', 'NE', 'W. Central Africa Standard Time', 'UTC+01:00', '+227', 'https://cdn.kcak11.com/CountryFlags/countries/ne.svg'),
(163, 'Nicaragua', 'NI', 'Central America Standard Time', 'UTC-06:00', '+505', 'https://cdn.kcak11.com/CountryFlags/countries/ni.svg'),
(164, 'Norfolk Island', 'NF', 'Central Pacific Standard Time', 'UTC+11:00', '+672', 'https://cdn.kcak11.com/CountryFlags/countries/nf.svg'),
(165, 'Nigeria', 'NG', 'W. Central Africa Standard Time', 'UTC+01:00', '+234', 'https://cdn.kcak11.com/CountryFlags/countries/ng.svg'),
(166, 'Niue', 'NU', 'UTC-11', 'UTC-11:00', '+683', 'https://cdn.kcak11.com/CountryFlags/countries/nu.svg'),
(167, 'North Korea', 'KP', 'Korea Standard Time', 'UTC+09:00', '+850', 'https://cdn.kcak11.com/CountryFlags/countries/kp.svg'),
(168, 'Northern Mariana Islands', 'MP', 'West Pacific Standard Time', 'UTC+10:00', '+1-670', 'https://cdn.kcak11.com/CountryFlags/countries/mp.svg'),
(169, 'Norway', 'NO', 'W. Europe Standard Time', 'UTC+01:00', '+47', 'https://cdn.kcak11.com/CountryFlags/countries/no.svg'),
(170, 'Oman', 'OM', 'Arabian Standard Time', 'UTC+04:00', '+968', 'https://cdn.kcak11.com/CountryFlags/countries/om.svg'),
(171, 'Palau', 'PW', 'Tokyo Standard Time', 'UTC+09:00', '+680', 'https://cdn.kcak11.com/CountryFlags/countries/pw.svg'),
(172, 'Palestinian Authority', 'PS', 'Egypt Standard Time', 'UTC+02:00', '+970', 'https://cdn.kcak11.com/CountryFlags/countries/ps.svg'),
(173, 'Pakistan', 'PK', 'Pakistan Standard Time', 'UTC+05:00', '+92', 'https://cdn.kcak11.com/CountryFlags/countries/pk.svg'),
(174, 'Panama', 'PA', 'SA Pacific Standard Time', 'UTC-05:00', '+507', 'https://cdn.kcak11.com/CountryFlags/countries/pa.svg'),
(175, 'Papua New Guinea', 'PG', 'West Pacific Standard Time', 'UTC+10:00', '+675', 'https://cdn.kcak11.com/CountryFlags/countries/pg.svg'),
(176, 'Peru', 'PE', 'SA Pacific Standard Time', 'UTC-05:00', '+51', 'https://cdn.kcak11.com/CountryFlags/countries/pe.svg'),
(177, 'Paraguay', 'PY', 'Paraguay Standard Time', 'UTC-04:00', '+595', 'https://cdn.kcak11.com/CountryFlags/countries/py.svg'),
(178, 'Philippines', 'PH', 'Singapore Standard Time', 'UTC+08:00', '+63', 'https://cdn.kcak11.com/CountryFlags/countries/ph.svg'),
(179, 'Pitcairn Islands', 'PN', 'Pacific Standard Time', 'UTC-08:00', '+870', 'https://cdn.kcak11.com/CountryFlags/countries/pn.svg'),
(180, 'Poland', 'PL', 'Central European Standard Time', 'UTC+01:00', '+48', 'https://cdn.kcak11.com/CountryFlags/countries/pl.svg'),
(181, 'Portugal', 'PT', 'GMT Standard Time', 'UTC', '+351', 'https://cdn.kcak11.com/CountryFlags/countries/pt.svg'),
(182, 'Puerto Rico', 'PR', 'SA Western Standard Time', 'UTC-04:00', '+1-787 and 1-939', 'https://cdn.kcak11.com/CountryFlags/countries/pr.svg'),
(183, 'Qatar', 'QA', 'Arab Standard Time', 'UTC+03:00', '+974', 'https://cdn.kcak11.com/CountryFlags/countries/qa.svg'),
(184, 'Romania', 'RO', 'GTB Standard Time', 'UTC+02:00', '+40', 'https://cdn.kcak11.com/CountryFlags/countries/ro.svg'),
(185, 'Reunion', 'RE', 'Mauritius Standard Time', 'UTC+04:00', '+262', 'https://cdn.kcak11.com/CountryFlags/countries/re.svg'),
(186, 'Russia', 'RU', 'Russian Standard Time', 'UTC+03:00', '+7', 'https://cdn.kcak11.com/CountryFlags/countries/ru.svg'),
(187, 'Rwanda', 'RW', 'South Africa Standard Time', 'UTC+02:00', '+250', 'https://cdn.kcak11.com/CountryFlags/countries/rw.svg'),
(188, 'Saint Barthélemy', 'BL', 'SA Western Standard Time', 'UTC-04:00', '+590', 'https://cdn.kcak11.com/CountryFlags/countries/bl.svg'),
(189, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'Greenwich Standard Time', 'UTC', '+290', 'https://cdn.kcak11.com/CountryFlags/countries/sh.svg'),
(190, 'Saint Kitts and Nevis', 'KN', 'SA Western Standard Time', 'UTC-04:00', '+1-869', 'https://cdn.kcak11.com/CountryFlags/countries/kn.svg'),
(191, 'Saint Lucia', 'LC', 'SA Western Standard Time', 'UTC-04:00', '+1-758', 'https://cdn.kcak11.com/CountryFlags/countries/lc.svg'),
(192, 'Saint Pierre and Miquelon', 'PM', 'Greenland Standard Time', 'UTC-03:00', '+508', 'https://cdn.kcak11.com/CountryFlags/countries/pm.svg'),
(193, 'Saint Martin (French part)', 'MF', 'SA Western Standard Time', 'UTC-04:00', '+590', 'https://cdn.kcak11.com/CountryFlags/countries/mf.svg'),
(194, 'Samoa', 'WS', 'Samoa Standard Time', 'UTC+13:00', '+685', 'https://cdn.kcak11.com/CountryFlags/countries/ws.svg'),
(195, 'Saint Vincent and the Grenadines', 'VC', 'SA Western Standard Time', 'UTC-04:00', '+1-784', 'https://cdn.kcak11.com/CountryFlags/countries/vc.svg'),
(196, 'San Marino', 'SM', 'W. Europe Standard Time', 'UTC+01:00', '+378', 'https://cdn.kcak11.com/CountryFlags/countries/sm.svg'),
(197, 'São Tomé and Príncipe', 'ST', 'Greenwich Standard Time', 'UTC', '+239', 'https://cdn.kcak11.com/CountryFlags/countries/st.svg'),
(198, 'Saudi Arabia', 'SA', 'Arab Standard Time', 'UTC+03:00', '+966', 'https://cdn.kcak11.com/CountryFlags/countries/sa.svg'),
(199, 'Senegal', 'SN', 'Greenwich Standard Time', 'UTC', '+221', 'https://cdn.kcak11.com/CountryFlags/countries/sn.svg'),
(200, 'Serbia', 'RS', 'Central Europe Standard Time', 'UTC+01:00', '+381', 'https://cdn.kcak11.com/CountryFlags/countries/rs.svg'),
(201, 'Seychelles', 'SC', 'Mauritius Standard Time', 'UTC+04:00', '+248', 'https://cdn.kcak11.com/CountryFlags/countries/sc.svg'),
(202, 'Sierra Leone', 'SL', 'Greenwich Standard Time', 'UTC', '+232', 'https://cdn.kcak11.com/CountryFlags/countries/sl.svg'),
(203, 'Singapore', 'SG', 'Singapore Standard Time', 'UTC+08:00', '+65', 'https://cdn.kcak11.com/CountryFlags/countries/sg.svg'),
(204, 'Slovakia', 'SK', 'Central Europe Standard Time', 'UTC+01:00', '+421', 'https://cdn.kcak11.com/CountryFlags/countries/sk.svg'),
(205, 'Slovenia', 'SI', 'Central Europe Standard Time', 'UTC+01:00', '+386', 'https://cdn.kcak11.com/CountryFlags/countries/si.svg'),
(206, 'Sint Maarten (Dutch part)', 'SX', 'SA Western Standard Time', 'UTC-04:00', '+599', 'https://cdn.kcak11.com/CountryFlags/countries/sx.svg'),
(207, 'Solomon Islands', 'SB', 'Central Pacific Standard Time', 'UTC+11:00', '+677', 'https://cdn.kcak11.com/CountryFlags/countries/sb.svg'),
(208, 'Somalia', 'SO', 'E. Africa Standard Time', 'UTC+03:00', '+252', 'https://cdn.kcak11.com/CountryFlags/countries/so.svg'),
(209, 'South Africa', 'ZA', 'South Africa Standard Time', 'UTC+02:00', '+27', 'https://cdn.kcak11.com/CountryFlags/countries/za.svg'),
(210, 'South Georgia and the South Sandwich Islands', 'GS', 'UTC-02', 'UTC-02:00', '+', 'https://cdn.kcak11.com/CountryFlags/countries/gs.svg'),
(211, 'South Sudan', 'SS', 'E. Africa Standard Time', 'UTC+03:00', '+211', 'https://cdn.kcak11.com/CountryFlags/countries/ss.svg'),
(212, 'Spain', 'ES', 'Romance Standard Time', 'UTC+01:00', '+34', 'https://cdn.kcak11.com/CountryFlags/countries/es.svg'),
(213, 'Sri Lanka', 'LK', 'Sri Lanka Standard Time', 'UTC+05:30', '+94', 'https://cdn.kcak11.com/CountryFlags/countries/lk.svg'),
(214, 'Sudan', 'SD', 'E. Africa Standard Time', 'UTC+03:00', '+249', 'https://cdn.kcak11.com/CountryFlags/countries/sd.svg'),
(215, 'Svalbard', 'SJ', 'W. Europe Standard Time', 'UTC+01:00', '+47', 'https://cdn.kcak11.com/CountryFlags/countries/sj.svg'),
(216, 'Suriname', 'SR', 'SA Eastern Standard Time', 'UTC-03:00', '+597', 'https://cdn.kcak11.com/CountryFlags/countries/sr.svg'),
(217, 'Sweden', 'SE', 'W. Europe Standard Time', 'UTC+01:00', '+46', 'https://cdn.kcak11.com/CountryFlags/countries/se.svg'),
(218, 'Switzerland', 'CH', 'W. Europe Standard Time', 'UTC+01:00', '+41', 'https://cdn.kcak11.com/CountryFlags/countries/ch.svg'),
(219, 'Swaziland', 'SZ', 'South Africa Standard Time', 'UTC+02:00', '+268', 'https://cdn.kcak11.com/CountryFlags/countries/sz.svg'),
(220, 'Syria', 'SY', 'Syria Standard Time', 'UTC+02:00', '+963', 'https://cdn.kcak11.com/CountryFlags/countries/sy.svg'),
(221, 'Taiwan', 'TW', 'Taipei Standard Time', 'UTC+08:00', '+886', 'https://cdn.kcak11.com/CountryFlags/countries/tw.svg'),
(222, 'Tajikistan', 'TJ', 'West Asia Standard Time', 'UTC+05:00', '+992', 'https://cdn.kcak11.com/CountryFlags/countries/tj.svg'),
(223, 'Tanzania', 'TZ', 'E. Africa Standard Time', 'UTC+03:00', '+255', 'https://cdn.kcak11.com/CountryFlags/countries/tz.svg'),
(224, 'Thailand', 'TH', 'SE Asia Standard Time', 'UTC+07:00', '+66', 'https://cdn.kcak11.com/CountryFlags/countries/th.svg'),
(225, 'Togo', 'TG', 'Greenwich Standard Time', 'UTC', '+228', 'https://cdn.kcak11.com/CountryFlags/countries/tg.svg'),
(226, 'Tonga', 'TO', 'Tonga Standard Time', 'UTC+13:00', '+676', 'https://cdn.kcak11.com/CountryFlags/countries/to.svg'),
(227, 'Tokelau', 'TK', 'Tonga Standard Time', 'UTC+13:00', '+690', 'https://cdn.kcak11.com/CountryFlags/countries/tk.svg'),
(228, 'Trinidad and Tobago', 'TT', 'SA Western Standard Time', 'UTC-04:00', '+1-868', 'https://cdn.kcak11.com/CountryFlags/countries/tt.svg'),
(229, 'Tunisia', 'TN', 'W. Central Africa Standard Time', 'UTC+01:00', '+216', 'https://cdn.kcak11.com/CountryFlags/countries/tn.svg'),
(230, 'Turkey', 'TR', 'Turkey Standard Time', 'UTC+02:00', '+90', 'https://cdn.kcak11.com/CountryFlags/countries/tr.svg'),
(231, 'Turkmenistan', 'TM', 'West Asia Standard Time', 'UTC+05:00', '+993', 'https://cdn.kcak11.com/CountryFlags/countries/tm.svg'),
(232, 'Turks and Caicos Islands', 'TC', 'Eastern Standard Time', 'UTC-05:00', '+1-649', 'https://cdn.kcak11.com/CountryFlags/countries/tc.svg'),
(233, 'Tuvalu', 'TV', 'UTC+12', 'UTC+12:00', '+688', 'https://cdn.kcak11.com/CountryFlags/countries/tv.svg'),
(234, 'U.S. Minor Outlying Islands', 'UM', 'UTC-11', 'UTC-11:00', '+1', NULL),
(235, 'Uganda', 'UG', 'E. Africa Standard Time', 'UTC+03:00', '+256', 'https://cdn.kcak11.com/CountryFlags/countries/ug.svg'),
(236, 'Ukraine', 'UA', 'FLE Standard Time', 'UTC+02:00', '+380', 'https://cdn.kcak11.com/CountryFlags/countries/ua.svg'),
(237, 'United Arab Emirates', 'AE', 'Arabian Standard Time', 'UTC+04:00', '+971', 'https://cdn.kcak11.com/CountryFlags/countries/ae.svg'),
(238, 'United Kingdom', 'GB', 'GMT Standard Time', 'UTC', '+44', 'https://cdn.kcak11.com/CountryFlags/countries/gb.svg'),
(239, 'United States', 'US', 'Pacific Standard Time', 'UTC-08:00', '+1', 'https://cdn.kcak11.com/CountryFlags/countries/us.svg'),
(240, 'Uruguay', 'UY', 'Montevideo Standard Time', 'UTC-03:00', '+598', 'https://cdn.kcak11.com/CountryFlags/countries/uy.svg'),
(241, 'Vanuatu', 'VU', 'Central Pacific Standard Time', 'UTC+11:00', '+678', 'https://cdn.kcak11.com/CountryFlags/countries/vu.svg'),
(242, 'Uzbekistan', 'UZ', 'West Asia Standard Time', 'UTC+05:00', '+998', 'https://cdn.kcak11.com/CountryFlags/countries/uz.svg'),
(243, 'Vatican City', 'VA', 'W. Europe Standard Time', 'UTC+01:00', '+379', 'https://cdn.kcak11.com/CountryFlags/countries/va.svg'),
(244, 'Vietnam', 'VN', 'SE Asia Standard Time', 'UTC+07:00', '+84', 'https://cdn.kcak11.com/CountryFlags/countries/vn.svg'),
(245, 'Virgin Islands, British', 'VG', 'SA Western Standard Time', 'UTC-04:00', '+1-284', 'https://cdn.kcak11.com/CountryFlags/countries/vg.svg'),
(246, 'Virgin Islands, U.S.', 'VI', 'SA Western Standard Time', 'UTC-04:00', '+1-340', 'https://cdn.kcak11.com/CountryFlags/countries/vi.svg'),
(247, 'Wallis and Futuna', 'WF', 'UTC+12', 'UTC+12:00', '+681', 'https://cdn.kcak11.com/CountryFlags/countries/wf.svg'),
(248, 'Yemen', 'YE', 'Arab Standard Time', 'UTC+03:00', '+967', 'https://cdn.kcak11.com/CountryFlags/countries/ye.svg'),
(249, 'Zambia', 'ZM', 'South Africa Standard Time', 'UTC+02:00', '+260', 'https://cdn.kcak11.com/CountryFlags/countries/zm.svg'),
(250, 'Zimbabwe', 'ZW', 'South Africa Standard Time', 'UTC+02:00', '+263', 'https://cdn.kcak11.com/CountryFlags/countries/zw.svg');

-- --------------------------------------------------------

--
-- Table structure for table `customers_tbl`
--

CREATE TABLE `customers_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verify` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers_tbl`
--

INSERT INTO `customers_tbl` (`id`, `name`, `email`, `email_verified_at`, `phone`, `phone_verify`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vidyut Mandal', 'mondalbidyut38@gmail.com', NULL, '7735501335', NULL, '$2y$10$PpxnfH5XLN0yA9S3qDmFWOF9aCR6wzm40jEQEtyo.iLji3bY0VI8i', 'customer_68930_1133693.jpg', NULL, '2022-10-01 20:17:35', '2022-10-01 20:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` varchar(250) DEFAULT NULL,
  `sub_category_id` varchar(250) DEFAULT NULL,
  `brand_id` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `product_img` varchar(250) DEFAULT NULL,
  `available_stock` varchar(250) NOT NULL DEFAULT '0',
  `status` varchar(100) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `name`, `price`, `description`, `product_img`, `available_stock`, `status`, `created_at`, `updated_at`) VALUES
(2, '14', '1', '2', 'Apple iPhone 11 (64GB) - Yellow', '46999', '6.1-inch (15.5 cm diagonal) Liquid Retina HD LCD display. Water and dust resistant (2 meters for up to 30 minutes, IP68). Dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video up to 60fps. 12MP TrueDepth front camera with Portrait mode, 4K video, and Slo-Mo. Face ID for secure authentication. A13 Bionic chip with third-generation Neural Engine. Fast-charge capable.', 'product_18563_16542.jpg', '100', '1', '2022-08-31 09:01:22', '2022-10-03 15:58:59'),
(4, '14', '1', '2', 'Apple iPhone 12 (64GB) - White', '53999', '6.1-inch (15.5 cm diagonal) Super Retina XDR display.\r\nCeramic Shield, tougher than any smartphone glass.\r\nA14 Bionic chip, the fastest chip ever in a smartphone.\r\nAdvanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording.\r\n12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording.\r\nIndustry-leading IP68 water resistance.\r\nSupports MagSafe accessories for easy attach and faster wireless charging.\r\niOS with redesigned widgets on the Home screen, all-new App Library, App Clips and more.', 'product_81708_118545.jpg', '100', '1', '2022-08-31 09:06:44', '2022-10-03 15:59:09'),
(5, '14', '1', '4', 'Xiaomi Redmi Note 11 Pro Plus 5G', '19999', '5G Connectivity (SA / NSA): More spectrum bands supported by a handset would provide wider 5G connectivity across markets. Enhanced Coverage: Handset features that can increase the time spent on 5G technology. Superfast 4G: Features that enhance speeds even in 4G coverage.', 'product_91549_8774.jpg', '100', '1', '2022-08-31 19:47:37', '2022-10-03 15:59:09'),
(6, '14', '1', '2', 'APPLE iPhone 13 (Blue, 128 GB)', '69999', '128 GB ROM. 15.49 cm (6.1 inch) Super Retina XDR Display. 12MP + 12MP | 12MP Front Camera. A15 Bionic Chip Processor.', 'product_70019_4834.jpg', '100', '1', '2022-09-02 20:15:26', '2022-10-03 15:59:09'),
(7, '14', '1', '2', 'APPLE iPhone 11 (White, 128 GB)', '54900', '128 GB ROM. 15.49 cm (6.1 inch) Liquid Retina HD Display.12MP + 12MP | 12MP Front Camera. A13 Bionic Chip Processor.', 'product_84876_5592.jpg', '100', '1', '2022-09-02 20:16:22', '2022-10-03 15:59:09'),
(8, '14', '1', '2', 'APPLE iPhone 13 Pro Max (Gold, 1 TB)', '179900', '1 TB ROM. 17.02 cm (6.7 inch) Super Retina XDR Display. 12MP + 12MP + 12MP | 12MP Front Camera. A15 Bionic Chip Processor.', 'product_96469_4630.jpg', '100', '1', '2022-09-02 20:17:30', '2022-10-03 15:59:09'),
(9, '14', '1', '3', 'SAMSUNG Galaxy F23 5G (Aqua Blue, 128 GB)  (4 GB RAM)', '17499', '4 GB RAM | 128 GB ROM | Expandable Upto 1 TB. 16.76 cm (6.6 inch) Full HD+ Display. 50MP + 8MP + 2MP | 8MP Front Camera. 5000 mAh Lithium Ion Battery. Qualcomm Snapdragon 750G Processor.', 'product_27113_11396.jpg', '100', '1', '2022-09-02 20:20:15', '2022-10-03 15:59:09'),
(10, '14', '1', '3', 'SAMSUNG Galaxy F13 (Waterfall Blue, 128 GB)  (4 GB RAM)', '12999', '4 GB RAM | 128 GB ROM | Expandable Upto 1 TB. 16.76 cm (6.6 inch) Full HD+ Display. \r\n50MP + 5MP + 2MP | 8MP Front Camera. 6000 mAh Lithium Ion Battery. Exynos 850 Processor.', 'product_55381_7566.jpg', '100', '1', '2022-09-02 20:21:03', '2022-10-03 15:59:09'),
(11, '14', '1', '3', 'SAMSUNG Galaxy F13 (Sunrise Copper, 128 GB)  (4 GB RAM)', '12999', '4 GB RAM | 128 GB ROM | Expandable Upto 1 TB. 16.76 cm (6.6 inch) Full HD+ Display. 50MP + 5MP + 2MP | 8MP Front Camera. 6000 mAh Lithium Ion Battery. Exynos 850 Processor', 'product_50877_7754.jpg', '100', '1', '2022-09-02 20:21:54', '2022-10-03 15:59:09'),
(12, '14', '1', '4', 'REDMI Note 10S (Frost White, 64 GB)  (6 GB RAM)', '13999', '6 GB RAM | 64 GB ROM | Expandable Upto 512 GB. 16.33 cm (6.43 inch) Full HD+ Super AMOLED Display\r\n64MP + 8MP + 2MP + 2MP | 13MP Front Camera. 5000 mAh Lithium-Ploymer Battery. Mediatek Helio G95 Processor.', 'product_22315_13882.jpg', '100', '1', '2022-09-02 20:23:28', '2022-10-03 15:59:09'),
(13, '14', '1', '4', 'Xiaomi 11i 5G (Pacific Pearl, 128 GB)  (8 GB RAM)', '26999', '8 GB RAM | 128 GB ROM | Expandable Upto 1 TB. 16.94 cm (6.67 inch) Full HD+ AMOLED Display. \r\n108MP Rear Camera | 16MP Front Camera. 5160 mAh Li-Polymer Battery. Mediatek Dimensity 920 Processor', 'product_75809_8640.jpg', '100', '1', '2022-09-02 20:23:31', '2022-10-03 10:28:46'),
(14, '14', '1', '4', 'Xiaomi 11i Hypercharge 5G (Stealth Black, 128 GB)  (8 GB RAM)', '28999', '8 GB RAM | 128 GB ROM | Expandable Upto 1 TB. 16.94 cm (6.67 inch) Full HD+ AMOLED Display. 108MP + 8MP + 2MP | 16MP Front Camera. 4500 mAh Li-Polymer Battery. Mediatek Dimensity 920 Processor.', 'product_41266_6966.jpg', '100', '0', '2022-09-02 20:24:15', '2022-10-10 19:58:49'),
(15, '14', '1', '4', 'Xiaomi Mi A3 (Kind of Grey, 4GB RAM, 64GB Storage)', '12589', '48+8+2MP AI triple rear camera with portrait mode, HDR, PDAF supported | 32MP front camera with f2.0, 1/2.8 inch pixel size, portrait mode, HDR supported.\r\n15.46 centimeters (6.088-inch) AMOLED multi-touch capacitive touchscreen with 1520 x 720 pixels resolution, 282 ppi pixel density.\r\nMemory, Storage & SIM: 4GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G).\r\nAndroid Pie v9.0 operating system with 2.0GHz Qualcomm Snapdragon 665 octa core processor, Adreno 610 GPU, AI Scene detection: Detects up to 27 different scenes.\r\n4030mAH lithium-ion battery.\r\n1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase.\r\nBox also includes: Power adapter, USB cable, warranty card, user guide, SIM tray ejection tool and back cover.', 'product_58085_48656.jpg', '100', '1', '2022-09-21 19:53:11', '2022-10-03 15:59:09'),
(25, '13', '4', '2', 'Vidyut Mandal', '240', '123', 'product_44571_816285.jpg', '100', '0', '2022-09-26 20:17:22', '2022-11-04 09:51:28'),
(26, '13', '4', '2', 'Vidyut Mandal', '240', '123 qwe qe', 'product_41189_816285.jpg', '129', '0', '2022-09-26 20:17:22', '2022-11-04 09:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories_tbl`
--

CREATE TABLE `sub_categories_tbl` (
  `id` int(11) NOT NULL,
  `category_id` varchar(350) DEFAULT NULL,
  `name` varchar(350) DEFAULT NULL,
  `img` varchar(350) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories_tbl`
--

INSERT INTO `sub_categories_tbl` (`id`, `category_id`, `name`, `img`, `status`, `created_at`, `updated_at`) VALUES
(1, '14', 'Phone', 'sub_category_52413_24068.jpg', '1', '2022-09-15 20:32:59', '2022-09-22 01:21:23'),
(3, '15', 'Vidyut Mandal', 'sub_category_93041_24068.jpg', '1', '2022-09-15 20:36:16', '2022-09-18 01:05:05'),
(4, '13', 'Bidyut Mandal', 'sub_category_45114_24068.jpg', '1', '2022-09-15 20:36:35', '2022-09-18 01:05:00'),
(5, '13', 'Vidyut Mandal', 'category_61504_176911.jpg', '1', '2022-09-15 20:37:49', '2022-09-18 01:04:49'),
(6, '14', '4535', 'sub_category_15947_24068.jpg', '1', '2022-09-15 20:38:24', '2022-09-18 01:04:54'),
(7, '15', 'test', 'category_54014_795734.jpg', '1', '2022-09-16 20:16:58', '2022-09-18 01:04:43'),
(8, '14', 'Vidyut test', 'category_78141_795734.jpg', '1', '2022-09-16 20:17:33', '2022-10-02 21:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vidyut Mandal', 'mondalbidyut38@gmail.com', NULL, '$2y$10$K.32snt4E6ADswlB8wmWzeaSLTVC8Un3bAe87a8iJ9h.9XD.78Uze', 'demo.jpg', NULL, '2022-08-30 09:27:43', '2022-08-30 09:27:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_tokens`
--
ALTER TABLE `access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_tokens_token_unique` (`token`);

--
-- Indexes for table `address_type`
--
ALTER TABLE `address_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers_tbl`
--
ALTER TABLE `customers_tbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories_tbl`
--
ALTER TABLE `sub_categories_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_tokens`
--
ALTER TABLE `access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `address_type`
--
ALTER TABLE `address_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `customers_tbl`
--
ALTER TABLE `customers_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sub_categories_tbl`
--
ALTER TABLE `sub_categories_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
