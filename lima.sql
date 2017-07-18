-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2017 at 12:03 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lima`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `job_title`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yuri', 'yuri@gmail.com', 'Admin', '$2y$10$fK.TiE0kAoobHh6spoFJh.rvDEFFwvtI6VgvNOV3lENfkAs8cnwNu', 'dTNLlviHM6Wk2MpwErb800jZBNuescL18xGbAP28oZ44t9wToQYxfPjO5Epw', '2017-07-06 21:33:19', '2017-07-06 21:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_address`, `customer_phone_number`) VALUES
(1, 'lala', 'medan', 31213),
(2, 'sisi', 'jakarta', 12332),
(3, 'mimi', 'jakarta', 13232),
(4, 'siska', 'tarutung', 902190),
(5, 'miwa', 'japan', 231132312),
(6, 'wowo', 'japan', 1111111111),
(7, 'mimimimi', 'japan', 22222),
(8, 'lolo', 'japan', 44444),
(9, 'sisi', 'japan', 1212),
(10, 'woowoo', 'hokkaido', 1221212),
(11, 'mayu', 'namba', 129009),
(12, 'haruka', 'kyoto', 1221111),
(13, 'haruka', 'kyoto', 1221111),
(14, 'mirai', 'akihabara', 243243),
(15, 'mirai', 'akihabara', 321323),
(16, 'mirai', 'akihabara', 323322),
(17, 'mumu', 'harajuku', 2147483647),
(18, 'andi', 'bandung', 12121212),
(19, 'nikki', 'tarutung', 2147483647),
(20, 'anda', 'sakae', 1),
(21, 'riri', 'japan', 91019191),
(22, 'lily', 'japan', 2111211),
(23, 'omi', 'jakarta', 90987),
(24, 'didi', 'balige', 92929292),
(25, 'miku', 'niigata', 777878),
(26, 'ery', 'japan', 6676),
(27, 'lepe', 'sipoholon', 243423),
(28, 'qqq', 'qqqq', 11),
(29, 'anda', 'sakae', 1),
(30, 'akira', 'nagoya', 225),
(31, 'gracie', 'hakata', 987654321),
(32, 'gracie', 'hakata', 987654321),
(33, 'ami-chan', 'nam', 1111);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`) VALUES
(1, 'lemari buku'),
(2, 'kursi'),
(3, 'gunting'),
(4, 'pisau'),
(5, 'pulpen'),
(6, 'pensil'),
(7, 'penghapus'),
(8, 'kapak'),
(9, 'tas'),
(10, 'buku tulis'),
(11, 'mouse'),
(12, 'kaca a');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_07_031250_create_admins_table', 2),
(4, '2017_07_12_143512_create_roles_table', 3),
(5, '2017_07_13_033922_create_role_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('lily@gmail.com', '$2y$10$o2cCLGfreoFxgW4P8u2PV.x8j2UXtejQXDHZDPZEv49kfFBxNRRgK', '2017-07-12 07:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Customer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sales_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `customer_id`, `sales_date`) VALUES
(1, 1, '2017-06-15 00:00:00'),
(2, 1, '2017-06-22 00:00:00'),
(3, 2, '2017-06-20 00:00:00'),
(4, 2, '2017-06-22 00:00:00'),
(5, 3, '2017-06-22 00:00:00'),
(6, 2, '2016-09-11 00:00:00'),
(7, 1, '0000-00-00 00:00:00'),
(8, 1, '0000-00-00 00:00:00'),
(9, 1, '0000-00-00 00:00:00'),
(10, 1, '0000-00-00 00:00:00'),
(11, 4, '0000-00-00 00:00:00'),
(12, 1, '0000-00-00 00:00:00'),
(13, 1, '0000-00-00 00:00:00'),
(14, 3, '2017-06-22 00:00:00'),
(16, 1, '0000-00-00 00:00:00'),
(17, 2, '0000-00-00 00:00:00'),
(18, 2, '0000-00-00 00:00:00'),
(19, 3, '2016-09-11 00:00:00'),
(20, 3, '2016-09-11 00:00:00'),
(21, 2, '0000-00-00 00:00:00'),
(22, 1, '0000-00-00 00:00:00'),
(23, 4, '0000-00-00 00:00:00'),
(24, 4, '0000-00-00 00:00:00'),
(25, 4, '0000-00-00 00:00:00'),
(26, 1, '0000-00-00 00:00:00'),
(27, 3, '0000-00-00 00:00:00'),
(28, 1, '0000-00-00 00:00:00'),
(29, 1, '2017-12-11 00:00:00'),
(30, 1, '2017-06-22 00:00:00'),
(31, 1, '2017-06-22 00:00:00'),
(32, 2, '0000-00-00 00:00:00'),
(33, 1, '2017-06-22 00:00:00'),
(34, 3, '0000-00-00 00:00:00'),
(35, 2, '0000-00-00 00:00:00'),
(36, 10, '2017-12-11 00:00:00'),
(37, 10, '2017-12-11 00:00:00'),
(38, 10, '2017-12-11 00:00:00'),
(39, 10, '2017-12-11 00:00:00'),
(40, 10, '2017-12-11 00:00:00'),
(41, 10, '2017-12-11 00:00:00'),
(42, 10, '2017-12-11 00:00:00'),
(43, 10, '2017-12-11 00:00:00'),
(44, 10, '2017-12-11 00:00:00'),
(45, 14, '2017-12-11 00:00:00'),
(46, 14, '2017-12-11 00:00:00'),
(47, 14, '2017-12-11 00:00:00'),
(48, 14, '2017-12-11 00:00:00'),
(49, 19, '2017-12-11 00:00:00'),
(50, 32, '0000-00-00 00:00:00'),
(51, 32, '0000-00-00 00:00:00'),
(52, 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `sales_detail_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`sales_id`, `item_id`, `sales_detail_quantity`) VALUES
(1, 1, 5),
(1, 2, 2),
(1, 3, 5),
(1, 5, 5),
(1, 8, 1),
(2, 3, 10),
(3, 4, 2),
(9, 3, 2),
(10, 1, 2),
(10, 2, 9),
(11, 8, 1),
(11, 10, 22),
(12, 2, 1),
(13, 2, 3),
(14, 3, 4),
(14, 5, 4),
(16, 2, 1),
(17, 1, 7),
(18, 1, 7),
(19, 1, 1),
(20, 1, 1),
(21, 2, 2),
(22, 1, 1),
(23, 1, 1),
(24, 1, 1),
(25, 1, 1),
(26, 1, 1),
(27, 1, 1),
(28, 1, 1),
(28, 2, 2),
(29, 1, 1),
(30, 2, 9),
(31, 2, 9),
(32, 1, 7),
(33, 1, 3),
(34, 3, 1),
(35, 1, 1),
(36, 2, 9),
(37, 2, 9),
(38, 2, 9),
(39, 2, 9),
(40, 2, 9),
(41, 2, 9),
(42, 2, 9),
(43, 2, 9),
(44, 2, 9),
(45, 2, 9),
(46, 2, 9),
(47, 2, 9),
(48, 2, 9),
(49, 1, 1),
(50, 3, 9),
(51, 3, 9),
(52, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'lily', 'lily@gmail.com', '$2y$10$7yHKTzfg61rNXwMMQt19Q.9mbph8kWCWcJvn/8YAUJdf8GI40t9xC', 'y93oeK7eYUCPlPOtNOA6pRvmTTWX2eOO1WaCMdK097xPQb5cIbcCD06lVIzb', '2017-07-05 21:59:46', '2017-07-05 21:59:46'),
(2, 'lily1', 'lily1@gmail.com', '$2y$10$hTLRVxXZ5YHg27nI./yeh.44flG0muPAMzGZn2qeeRpoIXUI5FTuS', NULL, '2017-07-05 23:09:37', '2017-07-05 23:09:37'),
(3, 'lepe', 'lepe@gmail.com', '$2y$10$PCbsU2fP5QfCAd.HRY45luFJysCaXmAWbH1p48OZBUHi4iETNc1Si', 'qew81JGtqFiOmedwilraFDwzGBvOOebFSjvjy867TbdAxAJWAOBMKaQcgYdq', '2017-07-05 23:10:37', '2017-07-05 23:10:37'),
(4, 'depak', 'depak@gmail.com', '$2y$10$weQBQYgkk5AhDEOzv44U5elER4JKm4srLahuyF/nL7leVyxlEzxoy', 'd2vp5UlBMauYFM7Ha0tiiKNA2UHeyOOJyBHKMjy6Dou81HSLoXEBh0csUBFd', NULL, NULL),
(5, 'ana', 'ana@gmail.com', '$2y$10$YhNjvEGvEDTwn453JnawueQPuaHxL1wuALxvIlizwOtiQ0hFb2eeG', 'RDwFZc1OFsTiqL4XINdNdnogyWWetmtDr3bpi4vAx7hVc2ntxSGVz1JJ5bgZ', '2017-07-06 20:05:57', '2017-07-06 20:05:57'),
(6, 'Sakura', 'sakura@gmail.com', '$2y$10$fK.TiE0kAoobHh6spoFJh.rvDEFFwvtI6VgvNOV3lENfkAs8cnwNu', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD CONSTRAINT `sales_details_ibfk_1` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`sales_id`),
  ADD CONSTRAINT `sales_details_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
