-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2019 at 08:52 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinetestia`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 999999999, 'super@admin.com', '$2y$04$xjUrUueX1ZrTGffLOvR4RuepA3JbmdmDItQXgx2BbDx5GJF4YkNHO', 1, 'U2j7KFx9C1', '2019-12-21 21:02:11', '2019-12-21 21:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`id`, `role_id`, `admin_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `char` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_en` text COLLATE utf8mb4_unicode_ci,
  `answer_ar` text COLLATE utf8mb4_unicode_ci,
  `correct` tinyint(1) DEFAULT '0',
  `active` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `char`, `answer_en`, `answer_ar`, `correct`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'a', 'coffee', 'coffee', 1, 'active', '2019-12-21 21:14:43', '2019-12-21 21:14:53'),
(2, 1, 'b', 'snsn', 'sksk', 0, 'active', '2019-12-21 21:14:43', '2019-12-21 21:14:53'),
(3, 1, 'c', 'jsms', 'msms', 0, 'active', '2019-12-21 21:14:43', '2019-12-21 21:14:53'),
(4, 1, 'd', 'dmndmdm', 'mdmdm', 0, 'active', '2019-12-21 21:14:43', '2019-12-21 21:14:53'),
(5, 2, 'a', 'MSMSM', 'msmsmsm', 1, 'active', '2019-12-21 21:30:28', '2019-12-21 21:30:28'),
(6, 2, 'b', 'smsms', 'kssmsms', 0, 'active', '2019-12-21 21:30:28', '2019-12-21 21:30:28'),
(7, 2, 'c', 'msmsm', 'smsms', 0, 'active', '2019-12-21 21:30:28', '2019-12-21 21:30:28'),
(8, 2, 'd', 'msmsm', 'msmsms', 0, 'active', '2019-12-21 21:30:28', '2019-12-21 21:30:28'),
(9, 3, 'a', 'smmsms', 'mmsmm', 1, 'active', '2019-12-21 21:42:28', '2019-12-21 22:01:59'),
(10, 3, 'b', 'msmsm', 'mmsms', 0, 'active', '2019-12-21 21:42:28', '2019-12-21 22:01:59'),
(11, 3, 'c', 'mmsmsmsm', 'msmsms', 0, 'active', '2019-12-21 21:42:28', '2019-12-21 22:01:59'),
(12, 3, 'd', 'msmsmsm', 'msmsm', 0, 'active', '2019-12-21 21:42:28', '2019-12-21 22:01:59'),
(13, 4, 'a', 'ndndn', 'mdmdm', 1, 'active', '2019-12-22 08:44:08', '2019-12-22 08:45:47'),
(14, 4, 'b', 'kjsj', 'kdkdk', 0, 'active', '2019-12-22 08:44:09', '2019-12-22 08:45:47'),
(15, 4, 'c', 'dkdjm', 'KKDDMK', 0, 'active', '2019-12-22 08:44:09', '2019-12-22 08:45:47'),
(16, 4, 'd', 'DDKD', 'DKKDK', 0, 'active', '2019-12-22 08:44:09', '2019-12-22 08:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `active` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `deadline`, `active`, `created_at`, `updated_at`) VALUES
(1, 'a:2:{s:2:\"en\";s:4:\"java\";s:2:\"ar\";s:8:\"جافا\";}', '2019-12-28', 'active', '2019-12-21 21:04:51', '2019-12-21 21:04:51'),
(2, 'a:2:{s:2:\"en\";s:2:\"IQ\";s:2:\"ar\";s:2:\"Iq\";}', '2019-12-25', 'active', '2019-12-22 08:41:49', '2019-12-22 08:41:49'),
(3, 'a:2:{s:2:\"en\";s:3:\"c++\";s:2:\"ar\";s:3:\"c++\";}', '2019-12-19', 'active', '2019-12-22 08:42:11', '2019-12-22 08:42:11'),
(4, 'a:2:{s:2:\"en\";s:2:\"ms\";s:2:\"ar\";s:2:\"ms\";}', '2019-12-26', 'active', '2019-12-22 08:43:05', '2019-12-22 08:43:05');

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
(51, '2014_10_12_000000_create_users_table', 1),
(52, '2014_10_12_100000_create_password_resets_table', 1),
(53, '2017_03_06_023521_create_admins_table', 1),
(54, '2017_03_06_053834_create_admin_role_table', 1),
(55, '2018_03_06_023523_create_roles_table', 1),
(56, '2019_12_19_161634_create_positions_table', 1),
(57, '2019_12_19_161735_create_exams_table', 1),
(58, '2019_12_19_161744_create_questions_table', 1),
(59, '2019_12_19_161751_create_answers_table', 1),
(60, '2019_12_19_164048_create_users_exams_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `head` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `head`, `active`, `created_at`, `updated_at`) VALUES
(1, 'a:2:{s:2:\"en\";s:13:\"web developer\";s:2:\"ar\";s:13:\"web developer\";}', 'active', '2019-12-22 07:28:45', '2019-12-22 07:28:45'),
(2, 'a:2:{s:2:\"en\";s:4:\"mbhh\";s:2:\"ar\";s:3:\"bvh\";}', 'active', '2019-12-22 08:34:29', '2019-12-22 08:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `num` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `head` text COLLATE utf8mb4_unicode_ci,
  `active` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `num`, `exam_id`, `head`, `active`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'a:2:{s:2:\"en\";s:16:\"what java means?\";s:2:\"ar\";s:16:\"what java means?\";}', 'active', '2019-12-21 21:14:43', '2019-12-21 21:14:43'),
(2, NULL, 1, 'a:2:{s:2:\"en\";s:5:\"what?\";s:2:\"ar\";s:5:\"what?\";}', 'active', '2019-12-21 21:30:28', '2019-12-21 21:30:28'),
(3, NULL, 1, 'a:2:{s:2:\"en\";s:5:\"why??\";s:2:\"ar\";s:5:\"why??\";}', 'active', '2019-12-21 21:42:28', '2019-12-21 22:01:59'),
(4, NULL, 2, 'a:2:{s:2:\"en\";s:26:\"what??????????????????????\";s:2:\"ar\";s:2:\"q1\";}', 'active', '2019-12-22 08:44:08', '2019-12-22 08:45:46');

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
(1, 'super', '2019-12-21 21:02:11', '2019-12-21 21:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `cv`, `image`, `position_id`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'msmsm', 'smsms@mmds.sm', '01188928221', NULL, '$2y$10$zb70k37sqq0e9pjt1uSxRuGidKSEvD7tfcg4c1e9MHQeGkW9S6xoS', '1576969747.jpg', '1576969747.jpg', '1', 'active', 'scBOy3HCeeyncohDh0nPf7AvvFs7ZxxQdttcJdoOZDTouLTmJ3KEBjSz2jwq', '2019-12-21 21:09:07', '2019-12-21 21:09:22'),
(2, 'sksmmnsmn', 'moooo@shs.com', '98899876787', NULL, '$2y$10$3Y3154P2NX18zfyREwzCkenajeHWxXOOL8pAzr9sAYXm/fZdSY4rC', '1577011013.jpg', '1577011013.jpg', '2', 'active', NULL, '2019-12-22 08:36:53', '2019-12-22 08:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `users_exams`
--

CREATE TABLE `users_exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_exams`
--

INSERT INTO `users_exams` (`id`, `user_id`, `exam_id`, `score`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 2, NULL, NULL),
(3, 2, 1, 1, NULL, NULL),
(4, 2, 2, 2, NULL, NULL);

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
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_role_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_exams`
--
ALTER TABLE `users_exams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_exams`
--
ALTER TABLE `users_exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD CONSTRAINT `admin_role_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
