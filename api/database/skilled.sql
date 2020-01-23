-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 23, 2020 at 08:42 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.3.13-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skilled`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_01_22_183146_alter_users_table', 1),
(10, '2020_01_23_112619_create_questions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2a4e822540ec64ca458690af97edabe8dba240b3bdb344f30535bd81887fee77d07ca173cc3dc48d', 2, 3, 'password', '[]', 0, '2020-01-23 09:39:45', '2020-01-23 09:39:45', '2021-01-23 15:09:45'),
('2a7874f2670155d7867c1df09d63f775c00f6e2ef9988879eeb00810e567964db151f2b7cba1af48', 1, 3, 'password', '[]', 0, '2020-01-23 09:38:37', '2020-01-23 09:38:37', '2021-01-23 15:08:37'),
('44a0fe3735871e78c4769d1baf0bd615ee0fbff5b7fcf3fcd0fd146d0a61f48a2ccf251a62b8d81d', 2, 3, 'password', '[]', 0, '2020-01-23 09:38:24', '2020-01-23 09:38:24', '2021-01-23 15:08:24'),
('53e80b1b4de6214c550bfee56992505a7fa8c2e15ba578a928d527c7a3ec645ff741793b87b4450d', 1, 3, 'password', '[]', 0, '2020-01-23 09:40:08', '2020-01-23 09:40:08', '2021-01-23 15:10:08'),
('75b43ce64f3ed69a2d7af78cd78297c5635b6257018a55caacd4953b29e7b855ce782f766140eb55', 1, 3, 'password', '[]', 0, '2020-01-23 09:32:05', '2020-01-23 09:32:05', '2021-01-23 15:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '4g3MfVa7PbCTXPDpfmeCqpDMRVB8xahxCeCvXaNv', 'http://localhost', 1, 0, 0, '2020-01-23 09:30:46', '2020-01-23 09:30:46'),
(2, NULL, 'Laravel Password Grant Client', 'ENGD3dFIRPiuDTLMBN3fydDRnuLQuoZ0g6zjimdi', 'http://localhost', 0, 1, 0, '2020-01-23 09:30:46', '2020-01-23 09:30:46'),
(3, NULL, 'Laravel Personal Access Client', 'hgrw63akWsw7Pa176hnIbFMIuyFmoU1BYYF9w2x5', 'http://localhost', 1, 0, 0, '2020-01-23 09:30:48', '2020-01-23 09:30:48'),
(4, NULL, 'Laravel Password Grant Client', 'lZVO9bUook6NpS5FYN8LVUVu2kCFX5jTFpuXnOif', 'http://localhost', 0, 1, 0, '2020-01-23 09:30:49', '2020-01-23 09:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-01-23 09:30:46', '2020-01-23 09:30:46'),
(2, 3, '2020-01-23 09:30:49', '2020-01-23 09:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` int(11) NOT NULL,
  `name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option1` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option2` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option3` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option4` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `level`, `name`, `option1`, `option2`, `option3`, `option4`, `correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'What does the following declaration means?\r\nint (*a)[10];', 'a is the array of pointers to 10 integers', 'a is the array of 10 integer', 'a is the pointer to an array of 10 integers', 'a is an pointer to array', 'C', NULL, NULL),
(2, 1, 'Which is the valid keyword in JAVA?', 'string', 'interface', 'float', 'unsigned', 'B', NULL, NULL),
(3, 2, 'Which of the following would compile without error?', 'int a = Math.abs(-5);', 'int b = Math.abs(5);', 'int c = Math.abs(5.5F);', 'int d = Math.abs(5L);', 'A', NULL, NULL),
(4, 2, 'Which of the following symbols is not used in an ERD?', 'Rectangle', 'Oval', 'Diamond', 'Circle', 'D', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_lic_no` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ugc_no` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interested_in` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(161) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `institution`, `skills`, `trade_lic_no`, `ugc_no`, `qualification`, `interested_in`, `address`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Supriyo Das', 'supriyo15998@gmail.com', NULL, '7890122334', 'GNIT', 'HTML, CSS', NULL, NULL, NULL, NULL, 'basuduakdada', '$2y$10$KM8FDG6YKJgTphfVJvp01uXNcORJnLqnrRJN8hh7NJJZbgCbxF1Ti', NULL, '2020-01-23 09:32:05', '2020-01-23 09:32:05', 1),
(2, 'The BugLabs', 'thebuglabs@gmail.com', NULL, '7417417414', NULL, NULL, 'ufua21312', NULL, NULL, NULL, 'ahbda', '$2y$10$NPwKYe4FCzmpbJBD3IEfdOQWbLixEfXXLFre7OPy6smgYZfi078Si', NULL, '2020-01-23 09:38:23', '2020-01-23 09:38:23', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
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
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
