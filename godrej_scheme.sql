-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 09:45 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `godrej_scheme`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_09_15_235705_create_contacts_table', 1),
(10, '2020_09_20_010523_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MRP` double(8,2) NOT NULL,
  `offer_price` double(8,2) NOT NULL,
  `saved_customer` double(8,2) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `type`, `model_no`, `size`, `MRP`, `offer_price`, `saved_customer`, `category`, `image`, `created_at`, `updated_at`) VALUES
(11, 'Front Loading', 'WFEON700PASE-E', '6.0 kg', 55890.00, 47490.00, 8400.00, 'washing machine', 'WFEON700PASE-E_1600599860.PNG', '2020-09-20 05:19:20', '2020-09-20 05:19:20'),
(12, 'Front Loading', 'WFEON700PASE-E', '7.0 kg', 65190.00, 55390.00, 9800.00, 'washing machine', 'WFEON700PASE-E_1600599909.PNG', '2020-09-20 05:20:09', '2020-09-20 05:20:09'),
(13, 'Semi Automatic  WM', 'WSEDGEPRO750CS', '7.5 Kg', 27790.00, 23590.00, 4200.00, 'washing machine', 'WSEDGEPRO750CS_1600599980.PNG', '2020-09-20 05:21:20', '2020-09-20 05:21:20'),
(14, 'Semi Automatic  WM', 'WSEDGE 8.0TB3MLVDR', '8.0 Kg', 27090.00, 22990.00, 4100.00, 'washing machine', 'WSEDGE 8.0TB3MLVDR_1600600039.PNG', '2020-09-20 05:22:19', '2020-09-20 05:22:19'),
(15, 'Fully Automatic  Top Load WM', 'WT7000PFDE-METALLIC RED', '7.0 KG', 34990.00, 29690.00, 5300.00, 'washing machine', 'WT7000PFDE-METALLIC RED_1600600098.PNG', '2020-09-20 05:23:18', '2020-09-20 05:23:18'),
(16, 'Hard Top', 'GCHW110R6SIB', '110 Ltr.', 28190.00, 23490.00, 4700.00, 'chest freezer', 'GCHW110R6SIB_1600756253.jpg', '2020-09-20 05:24:25', '2020-09-22 00:45:53'),
(17, 'Hard Top', 'GCSW310R2XB', '310 Ltr.', 58690.00, 48790.00, 9900.00, 'chest freezer', 'GCSW310R2XB_1600755393.webp', '2020-09-20 05:25:31', '2020-09-22 00:32:39'),
(18, 'Solo', 'GMX20SA2BLM', '20Ltrs', 10490.00, 8890.00, 1600.00, 'microwave oven', 'GMX20SA2BLM_1600600354.PNG', '2020-09-20 05:27:34', '2020-09-21 00:46:02'),
(19, 'Grill', 'GMX20GA9PLM', '20 Ltr', 13090.00, 10990.00, 2100.00, 'microwave oven', 'GMX20GA9PLM_1600600401.PNG', '2020-09-20 05:28:21', '2020-09-20 05:28:21'),
(20, 'Convection', 'GME728CF1PM', '28Ltrs', 22190.00, 18790.00, 3400.00, 'microwave oven', 'GME728CF1PM_1600600461.PNG', '2020-09-20 05:29:21', '2020-09-20 05:29:21'),
(21, 'Convection', 'GME730CR1PZ', '30Ltrs', 23590.00, 19990.00, 3600.00, 'microwave oven', 'GME730CR1PZ_1600756876.JPG', '2020-09-20 05:30:14', '2020-09-22 00:56:16'),
(24, 'Double Door', 'RT EON 231C SL', '230Ltrs', 42890.00, 36790.00, 6100.00, 'double door refrigerator', 'RT EON 231C SL_1600753758.webp', '2020-09-21 11:06:17', '2020-09-22 00:04:18'),
(25, 'Double Door', 'RT EON 245B 25 HI', '231Ltrs', 43890.00, 37690.00, 6200.00, 'double door refrigerator', 'RT EON 245B 25 HI_1600754017.webp', '2020-09-22 00:08:37', '2020-09-22 00:08:37'),
(26, 'Single Door', 'RDEPRO205TDF3.2', '190 Ltr', 33690.00, 29390.00, 4300.00, 'single door refrigerator', 'RDEPRO205TDF3.2_1600755893.jpg', '2020-09-22 00:39:53', '2020-09-22 00:39:53'),
(27, 'Single Door', 'RDEDGE205TRF2.2', '190 Ltr', 27590.00, 24290.00, 3300.00, 'single door refrigerator', 'RDEDGE205TRF2.2_1600755953.webp', '2020-09-22 00:40:53', '2020-09-22 00:40:53'),
(28, 'Single Door', 'RDEPRO205TDF3.2', '190 Ltr', 33690.00, 29390.00, 4300.00, 'single door refrigerator', 'RDEPRO205TDF3.2_1600756017.jpg', '2020-09-22 00:41:57', '2020-09-22 00:41:57'),
(29, 'Single Door', 'RDESX236TAF3.2', '221 Ltr', 33790.00, 29290.00, 4500.00, 'single door refrigerator', 'RDEDGE205TRF2.2_1600756139.webp', '2020-09-22 00:43:18', '2020-09-22 00:43:59');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'godrej@gmail.com', NULL, '$2y$10$XPqdcHxnGCF3dwuaAhVFWun/MlL1Sr4TUzitrJTTRGIJ3f/akbWBy', NULL, '2020-09-20 04:19:53', '2020-09-20 04:19:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
