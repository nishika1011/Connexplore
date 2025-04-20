-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2025 at 01:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `connexplore_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `approved_emails`
--

CREATE TABLE `approved_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `approved_emails`
--

INSERT INTO `approved_emails` (`id`, `email`, `created_at`, `updated_at`) VALUES
(3, 'admin@gmail.com', '2025-03-21 08:46:30', '2025-03-21 08:46:30'),
(36, 'cb011579@gmail.com', '2025-03-25 22:57:24', '2025-03-25 22:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cbnumber` varchar(255) NOT NULL,
  `sport_id` bigint(20) UNSIGNED NOT NULL,
  `sport_name` varchar(255) DEFAULT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `time_slot` varchar(255) NOT NULL,
  `set_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `user_name`, `cbnumber`, `sport_id`, `sport_name`, `location_id`, `location_name`, `date`, `time_slot`, `set_number`, `created_at`, `updated_at`) VALUES
(22, 47, 'Mohammed Aqib Mohammed Nazar', '012181', 1, 'Chess', 1, 'City campus', '2025-04-18', '08:00-10:00', NULL, '2025-04-18 14:41:35', '2025-04-18 14:41:35'),
(23, 47, 'Mohammed Aqib Mohammed Nazar', '012181', 1, 'Chess', 1, 'City campus', '2025-04-18', '08:00-10:00', NULL, '2025-04-18 14:43:05', '2025-04-18 14:43:05'),
(24, 47, 'Mohammed Aqib Mohammed Nazar', '012181', 1, 'Chess', 1, 'City campus', '2025-04-18', '08:00-10:00', NULL, '2025-04-18 14:44:49', '2025-04-18 14:44:49'),
(25, 47, 'Mohammed Aqib Mohammed Nazar', '012181', 1, 'Chess', 1, 'City campus', '2025-04-18', '08:00-10:00', NULL, '2025-04-18 14:46:02', '2025-04-18 14:46:02'),
(26, 47, 'Mohammed Aqib Mohammed Nazar', '012181', 1, 'Chess', 1, 'City campus', '2025-04-18', '08:00-10:00', NULL, '2025-04-18 14:53:20', '2025-04-18 14:53:20'),
(27, 47, 'Mohammed Aqib Mohammed Nazar', '012181', 1, 'Chess', 1, 'City campus', '2025-04-18', '08:00-10:00', NULL, '2025-04-18 14:59:58', '2025-04-18 14:59:58'),
(28, 47, 'Mohammed Aqib Mohammed Nazar', '012181', 1, 'Chess', 1, 'City campus', '2025-04-18', '08:00-10:00', NULL, '2025-04-18 15:14:10', '2025-04-18 15:14:10'),
(29, 47, 'Mohammed Aqib Mohammed Nazar', '012181', 1, 'Chess', 1, 'City campus', '2025-04-18', '08:00-10:00', NULL, '2025-04-18 15:20:41', '2025-04-18 15:20:41'),
(30, 47, 'Mohammed Aqib Mohammed Nazar', '012181', 1, 'Chess', 1, 'City campus', '2025-04-18', '08:00-10:00', NULL, '2025-04-18 15:21:24', '2025-04-18 15:21:24'),
(41, 45, 'Nishika Jayawardene', 'cb011429', 5, 'Card games', 1, 'City campus', '2025-04-22', '08:00-10:00', 1, '2025-04-20 03:07:55', '2025-04-20 03:07:55'),
(44, 45, 'Nishika Jayawardene', 'cb011429', 1, 'Chess', 1, 'City campus', '2025-04-22', '12:00-14:00', 1, '2025-04-20 04:40:45', '2025-04-20 04:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sport_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `availability_status` varchar(255) NOT NULL DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `name`, `sport_id`, `location_id`, `set`, `image`, `created_at`, `updated_at`, `availability_status`) VALUES
(15, 'Board', 1, 1, 1, NULL, '2025-04-16 00:26:21', '2025-04-18 10:48:30', 'reserved'),
(16, 'Coins', 1, 1, 1, NULL, '2025-04-16 00:26:37', '2025-04-18 10:48:30', 'reserved'),
(17, 'Board', 4, 2, 1, NULL, '2025-04-16 00:28:48', '2025-04-20 03:08:14', 'reserved'),
(18, 'Racket', 4, 2, 1, NULL, '2025-04-16 00:29:06', '2025-04-20 03:08:14', 'reserved'),
(19, 'Ball', 4, 2, 1, NULL, '2025-04-16 00:29:25', '2025-04-20 03:08:14', 'reserved'),
(20, 'Board', 1, 1, 2, NULL, '2025-04-16 00:34:06', '2025-04-18 11:06:43', 'reserved'),
(21, 'Coins', 1, 1, 2, NULL, '2025-04-16 00:34:41', '2025-04-18 11:06:43', 'reserved'),
(22, 'Board', 1, 2, 1, NULL, '2025-04-20 02:17:27', '2025-04-20 02:17:27', 'new'),
(23, 'Coins', 1, 2, 1, NULL, '2025-04-20 02:18:19', '2025-04-20 02:18:19', 'new'),
(24, 'Board', 1, 2, 2, NULL, '2025-04-20 02:18:36', '2025-04-20 02:18:36', 'new'),
(25, 'Coins', 1, 2, 2, NULL, '2025-04-20 02:18:53', '2025-04-20 02:18:53', 'new'),
(26, 'Board', 4, 2, 2, NULL, '2025-04-20 02:19:28', '2025-04-20 02:19:28', 'new'),
(27, 'Racket', 4, 2, 2, NULL, '2025-04-20 02:19:46', '2025-04-20 02:19:46', 'new'),
(28, 'Ball', 4, 2, 2, NULL, '2025-04-20 02:20:04', '2025-04-20 02:20:04', 'new'),
(29, 'Card Pack', 5, 1, 1, NULL, '2025-04-20 02:20:20', '2025-04-20 03:07:55', 'reserved'),
(30, 'Card Pack', 5, 1, 2, NULL, '2025-04-20 02:20:36', '2025-04-20 02:20:36', 'new'),
(31, 'Card Pack', 5, 2, 1, NULL, '2025-04-20 02:20:53', '2025-04-20 02:20:53', 'new'),
(32, 'Card Pack', 5, 4, 1, NULL, '2025-04-20 02:21:07', '2025-04-20 02:21:07', 'new'),
(33, 'Card Pack', 5, 3, 1, NULL, '2025-04-20 02:21:21', '2025-04-20 02:21:21', 'new'),
(34, 'Pool Balls', 6, 1, 1, NULL, '2025-04-20 02:21:39', '2025-04-20 02:21:39', 'new'),
(35, 'Cue Stick', 6, 1, 1, NULL, '2025-04-20 02:21:57', '2025-04-20 02:21:57', 'new'),
(36, 'Rack/Triangle', 6, 1, 1, NULL, '2025-04-20 02:22:31', '2025-04-20 02:22:31', 'new'),
(37, 'Rack/Triangle', 6, 1, 2, NULL, '2025-04-20 02:22:46', '2025-04-20 02:22:46', 'new'),
(38, 'Cue Stick', 6, 1, 2, NULL, '2025-04-20 02:23:07', '2025-04-20 02:23:07', 'new'),
(39, 'Pool Balls', 6, 1, 2, NULL, '2025-04-20 02:23:27', '2025-04-20 02:23:27', 'new'),
(40, 'Pool Balls', 6, 2, 1, NULL, '2025-04-20 02:23:41', '2025-04-20 03:07:34', 'reserved'),
(41, 'Cue Stick', 6, 2, 1, NULL, '2025-04-20 02:23:59', '2025-04-20 03:07:34', 'reserved'),
(42, 'Rack/Triangle', 6, 2, 1, NULL, '2025-04-20 02:24:18', '2025-04-20 03:07:34', 'reserved');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_damage_reports`
--

CREATE TABLE `equipment_damage_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cb_number` varchar(255) NOT NULL,
  `incident_date` date NOT NULL,
  `incident_time` time NOT NULL,
  `reported_on` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `sport_name` varchar(255) NOT NULL,
  `equipment_id` bigint(20) UNSIGNED NOT NULL,
  `damage_details` text NOT NULL,
  `images` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"a860e28b-eaa9-4598-918d-fcf9e0e4fca0\",\"displayName\":\"App\\\\Notifications\\\\BookingCancelledNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:45;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\BookingCancelledNotification\\\":2:{s:7:\\\"booking\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Booking\\\";s:2:\\\"id\\\";i:32;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"309ecee0-8fdc-481c-b216-7dcf274cb677\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745130670, 1745130670),
(2, 'default', '{\"uuid\":\"25f8f536-7f9a-4654-973b-1bc9db94a0ec\",\"displayName\":\"App\\\\Notifications\\\\BookingCancelledNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:45;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\BookingCancelledNotification\\\":2:{s:14:\\\"bookingDetails\\\";a:6:{s:5:\\\"sport\\\";s:5:\\\"Chess\\\";s:8:\\\"location\\\";s:11:\\\"City campus\\\";s:4:\\\"date\\\";s:14:\\\"April 22, 2025\\\";s:4:\\\"time\\\";s:11:\\\"10:00-12:00\\\";s:3:\\\"set\\\";i:1;s:9:\\\"user_name\\\";s:19:\\\"Nishika Jayawardene\\\";}s:2:\\\"id\\\";s:36:\\\"c4db844f-4344-49b9-a77d-49a385e713a0\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745132087, 1745132087),
(3, 'default', '{\"uuid\":\"6c706cd6-d462-4f16-8fa0-b1f267edfce3\",\"displayName\":\"App\\\\Notifications\\\\BookingCancelledNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:45;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\BookingCancelledNotification\\\":2:{s:14:\\\"bookingDetails\\\";a:6:{s:5:\\\"sport\\\";s:5:\\\"Chess\\\";s:8:\\\"location\\\";s:11:\\\"City campus\\\";s:4:\\\"date\\\";s:14:\\\"April 22, 2025\\\";s:4:\\\"time\\\";s:11:\\\"10:00-12:00\\\";s:3:\\\"set\\\";i:1;s:9:\\\"user_name\\\";s:19:\\\"Nishika Jayawardene\\\";}s:2:\\\"id\\\";s:36:\\\"faea2955-522c-47d6-80ce-c84e47afb490\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745132213, 1745132213),
(4, 'default', '{\"uuid\":\"6ab936a7-196d-446e-8635-9c38ff511bff\",\"displayName\":\"App\\\\Notifications\\\\BookingCancelledNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:45;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\BookingCancelledNotification\\\":2:{s:14:\\\"bookingDetails\\\";a:6:{s:5:\\\"sport\\\";s:5:\\\"Chess\\\";s:8:\\\"location\\\";s:11:\\\"City campus\\\";s:4:\\\"date\\\";s:14:\\\"April 21, 2025\\\";s:4:\\\"time\\\";s:11:\\\"08:00-10:00\\\";s:3:\\\"set\\\";i:1;s:9:\\\"user_name\\\";s:19:\\\"Nishika Jayawardene\\\";}s:2:\\\"id\\\";s:36:\\\"da1960bf-d6ab-48c3-8921-8711a83c79a1\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745132505, 1745132505),
(5, 'default', '{\"uuid\":\"c708e215-6121-4f22-adc8-62a821e6b99a\",\"displayName\":\"App\\\\Notifications\\\\BookingCancelledNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:45;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\BookingCancelledNotification\\\":2:{s:14:\\\"bookingDetails\\\";a:6:{s:5:\\\"sport\\\";s:5:\\\"Chess\\\";s:8:\\\"location\\\";s:11:\\\"City campus\\\";s:4:\\\"date\\\";s:14:\\\"April 21, 2025\\\";s:4:\\\"time\\\";s:11:\\\"08:00-10:00\\\";s:3:\\\"set\\\";i:1;s:9:\\\"user_name\\\";s:19:\\\"Nishika Jayawardene\\\";}s:2:\\\"id\\\";s:36:\\\"33f33b5f-9089-4c1d-9c68-8ca712218c4a\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745132662, 1745132662),
(6, 'default', '{\"uuid\":\"26a7acf5-1986-4f7d-a97b-0f8a2cf89d04\",\"displayName\":\"App\\\\Notifications\\\\BookingCancelledNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:45;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\BookingCancelledNotification\\\":2:{s:14:\\\"bookingDetails\\\";a:6:{s:5:\\\"sport\\\";s:5:\\\"Chess\\\";s:8:\\\"location\\\";s:11:\\\"City campus\\\";s:4:\\\"date\\\";s:14:\\\"April 21, 2025\\\";s:4:\\\"time\\\";s:11:\\\"08:00-10:00\\\";s:3:\\\"set\\\";i:2;s:9:\\\"user_name\\\";s:19:\\\"Nishika Jayawardene\\\";}s:2:\\\"id\\\";s:36:\\\"3ac76eab-1072-4d4f-902e-2bdeb038da77\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745134729, 1745134729),
(7, 'default', '{\"uuid\":\"9d8e20a6-eb99-44a9-97b7-df511c7f1a8f\",\"displayName\":\"App\\\\Notifications\\\\BookingCancelledNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:45;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\BookingCancelledNotification\\\":2:{s:14:\\\"bookingDetails\\\";a:6:{s:5:\\\"sport\\\";s:5:\\\"Chess\\\";s:8:\\\"location\\\";s:11:\\\"City campus\\\";s:4:\\\"date\\\";s:14:\\\"April 21, 2025\\\";s:4:\\\"time\\\";s:11:\\\"08:00-10:00\\\";s:3:\\\"set\\\";i:2;s:9:\\\"user_name\\\";s:19:\\\"Nishika Jayawardene\\\";}s:2:\\\"id\\\";s:36:\\\"45fc48ba-be32-4a36-8188-d5873ec6f52d\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745134757, 1745134757),
(8, 'default', '{\"uuid\":\"17ade2f1-e773-40fb-b16b-eb190fc86716\",\"displayName\":\"App\\\\Notifications\\\\BookingCancelledNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:45;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\BookingCancelledNotification\\\":2:{s:14:\\\"bookingDetails\\\";a:6:{s:5:\\\"sport\\\";s:5:\\\"Chess\\\";s:8:\\\"location\\\";s:11:\\\"City campus\\\";s:4:\\\"date\\\";s:14:\\\"April 21, 2025\\\";s:4:\\\"time\\\";s:11:\\\"08:00-10:00\\\";s:3:\\\"set\\\";i:2;s:9:\\\"user_name\\\";s:19:\\\"Nishika Jayawardene\\\";}s:2:\\\"id\\\";s:36:\\\"6f9df58a-b993-410d-af81-bf4dfbfdc850\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745134871, 1745134871),
(9, 'default', '{\"uuid\":\"44a76483-49b2-4ab1-be1a-f6f4463211a6\",\"displayName\":\"App\\\\Notifications\\\\BookingCancelledNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:45;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\BookingCancelledNotification\\\":2:{s:14:\\\"bookingDetails\\\";a:6:{s:5:\\\"sport\\\";s:5:\\\"Chess\\\";s:8:\\\"location\\\";s:11:\\\"City campus\\\";s:4:\\\"date\\\";s:14:\\\"April 23, 2025\\\";s:4:\\\"time\\\";s:11:\\\"10:00-12:00\\\";s:3:\\\"set\\\";i:1;s:9:\\\"user_name\\\";s:19:\\\"Nishika Jayawardene\\\";}s:2:\\\"id\\\";s:36:\\\"af64e2c8-2536-4d05-a6f3-3ab246a9ef78\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745135070, 1745135070),
(10, 'default', '{\"uuid\":\"ee591ebd-4ab3-4b03-9b9f-ded8d538980a\",\"displayName\":\"App\\\\Notifications\\\\BookingCancelledNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:45;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\BookingCancelledNotification\\\":2:{s:14:\\\"bookingDetails\\\";a:6:{s:5:\\\"sport\\\";s:5:\\\"Chess\\\";s:8:\\\"location\\\";s:11:\\\"City campus\\\";s:4:\\\"date\\\";s:14:\\\"April 23, 2025\\\";s:4:\\\"time\\\";s:11:\\\"10:00-12:00\\\";s:3:\\\"set\\\";i:1;s:9:\\\"user_name\\\";s:19:\\\"Nishika Jayawardene\\\";}s:2:\\\"id\\\";s:36:\\\"8d18cfcf-8da5-499b-acb5-5d88d0ffb883\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745135125, 1745135125),
(11, 'default', '{\"uuid\":\"9fbee093-8293-47fe-8939-5bb71e87818c\",\"displayName\":\"App\\\\Notifications\\\\BookingCancelledNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:45;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:46:\\\"App\\\\Notifications\\\\BookingCancelledNotification\\\":2:{s:14:\\\"bookingDetails\\\";a:6:{s:5:\\\"sport\\\";s:5:\\\"Chess\\\";s:8:\\\"location\\\";s:11:\\\"City campus\\\";s:4:\\\"date\\\";s:14:\\\"April 24, 2025\\\";s:4:\\\"time\\\";s:11:\\\"08:00-10:00\\\";s:3:\\\"set\\\";i:1;s:9:\\\"user_name\\\";s:19:\\\"Nishika Jayawardene\\\";}s:2:\\\"id\\\";s:36:\\\"3e434522-1d56-43c5-a3f2-d80b847cfcb3\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1745135736, 1745135736);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `branch`, `created_at`, `updated_at`) VALUES
(1, 'City campus', NULL, NULL),
(2, 'Law school', NULL, NULL),
(3, 'Business School', NULL, NULL),
(4, 'Kandy Campus', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '0001_01_01_000000_create_users_table', 1),
(5, '0001_01_01_000001_create_cache_table', 1),
(6, '0001_01_01_000002_create_jobs_table', 1),
(7, '2025_03_21_132642_create_approved_emails_table', 2),
(8, '2025_03_21_153933_create_locations_table', 3),
(9, '2025_03_21_154349_create_sports_table', 4),
(11, '2025_03_21_183504_create_equipment_table', 5),
(12, '2025_03_21_191046_create_damage_loss_reports_table', 5),
(13, '2025_03_21_195021_add_issue_type_to_damage_loss_reports_table', 6),
(14, '2025_03_22_024459_add_availability_status_to_equipment_table', 7),
(16, '2025_03_22_042345_add_bio_and_interests_to_users_table', 8),
(17, '2025_03_22_044041_create_user_profiles_table', 8),
(18, '2025_03_22_063622_create_equipments_damage_reports_table', 9),
(20, '2025_03_22_073635_add_deleted_at_to_equipment_damage_reports_table', 10),
(21, '2025_03_22_084835_create_equipments_damage_reports_table', 11),
(22, '2025_03_22_160828_create_damage_loss_reports_table', 12),
(23, '2025_03_23_051530_create_bookings_table', 13),
(24, '2025_03_23_062953_create_bookings_table', 14),
(25, '2025_03_23_090139_add_cbnumber_to_bookings_table', 15),
(26, '2025_03_23_100155_add_name_fields_to_bookings_table', 16),
(27, '2025_03_23_115434_create_equipment_damage_report_table', 17),
(28, '2025_03_23_121845_add_status_to_equipment_damage_reports_table', 18),
(30, '2025_03_23_124742_create_user_equipment_reports_table', 19),
(31, '2025_04_08_072651_create_email_verifications_table', 20),
(32, '2025_04_08_073406_create_email_verifications_table', 21),
(33, '2025_04_08_080842_add_otp_columns_to_users_table', 22),
(34, '2025_04_10_114033_modify_equipment_table', 23),
(35, '2025_04_15_154138_modify_equipment_table', 24),
(36, '2025_04_15_174554_modify_sports_table', 25),
(37, '2025_04_17_062313_create_reserved_equipment_table', 26),
(38, '2025_04_17_062658__modify_bookings_table', 27),
(39, '2025_04_18_161147_add_set_number_to_bookings_table', 28),
(40, '2025_04_18_161536_remove_set_foreign_key_from_reserved_equipment', 29);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('cb011429@students.apiit.lk', '$2y$12$QTaFE/hCrvMhiWs.lJWcS.uD8uhFRNqZsjT2cwZQEJ.Y4LyLKFCF.', '2025-04-10 12:25:56'),
('user@gmail.com', '$2y$12$DIyTiJX4llAi6yLErzI1yOG/pmtDqGqJNUGy1e3D2NUcKUgWFGbxW', '2025-03-23 05:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `reserved_equipment`
--

CREATE TABLE `reserved_equipment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `set` bigint(20) UNSIGNED NOT NULL,
  `time_slot` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reserved_equipment`
--

INSERT INTO `reserved_equipment` (`id`, `equipment_id`, `booking_id`, `set`, `time_slot`, `created_at`, `updated_at`, `date`) VALUES
(21, 29, 41, 1, '08:00-10:00', '2025-04-20 03:07:55', '2025-04-20 03:07:55', '2025-04-22'),
(29, 15, 44, 1, '12:00-14:00', '2025-04-20 04:40:45', '2025-04-20 04:40:45', '2025-04-22'),
(30, 16, 44, 1, '12:00-14:00', '2025-04-20 04:40:45', '2025-04-20 04:40:45', '2025-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8b3S2Ftaqi6ob53RUrzgisNWVMs2FiELJ4W2X2nE', 45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYlgzamNKVUxFaWlWOWVRODJMeVlBT0NkcEJZak1MU3c0MXV4YWxSQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zcG9ydHMtcGFnZSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ1O30=', 1745143845);

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `max_players` varchar(255) NOT NULL,
  `min_players` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`id`, `name`, `max_players`, `min_players`, `image`, `location_id`, `created_at`, `updated_at`) VALUES
(1, 'Chess', '8', '4', 'sports/6ioqlvDN8hRChc6XreDPUSgrwQqrWUa1qyqswYFC.jpg', 2, '2025-03-21 10:47:42', '2025-03-21 12:51:29'),
(4, 'Table tennis', '6', '2', 'sports/HtuxvVhQjU5CrQaxhWiErZ6dJR8P6RbhnmlaDF9H.jpg', 1, '2025-03-21 12:52:13', '2025-03-23 00:02:12'),
(5, 'Card games', '6', '4', 'sports/L3IirdVFXY1cI49lwFHWSyB7uCfwDVz4b8CQWNYZ.jpg', 2, '2025-03-22 02:25:17', '2025-03-23 00:02:18'),
(6, 'Pool game', '6', '2', 'sports/tZ4Q0rac9WGwmM3Oet0MbkUsyYCpaCyFwzMApIPo.jpg', 1, '2025-03-22 08:53:20', '2025-03-23 00:02:23'),
(10, 'Football', '12', '11', 'sports/0d9N2AQYQ6BvPrgvtpTtuOOl5byfuhRZSO0LdjLv.jpg', 1, '2025-03-23 09:17:42', '2025-03-23 09:17:50'),
(15, 'Chess', '4', '2', NULL, 4, '2025-04-08 00:04:01', '2025-04-08 00:04:01'),
(16, 'Chess', '2', '2', NULL, 1, '2025-04-16 01:02:21', '2025-04-16 01:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 2,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `interests` text DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_verified_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `bio`, `interests`, `otp`, `otp_verified_at`) VALUES
(6, 'Admin', 'admin@gmail.com', 0, NULL, '$2y$12$WdZKVpmKqSvwxABxIlia8ulHZGQU8hjmSP0Roma.ejrTnj1zUe2tu', NULL, '2025-03-21 08:47:03', '2025-03-21 08:47:03', NULL, NULL, NULL, NULL),
(31, 'Amisha', 'cb011579@gmail.com', 2, NULL, '$2y$12$gNzqVnbl2M3WHT2j82Q6o.M9Tt7n5nX9jJinhxju.b2/rX3unWzIa', NULL, '2025-03-25 22:57:50', '2025-03-25 22:57:50', NULL, NULL, NULL, NULL),
(45, 'Nishika Jayawardene', 'cb011429@students.apiit.lk', 2, NULL, '$2y$12$Nfh6O5chdhrI.Pb2EdDflOugMIT4zYKowR2VFh1WW.sGEXeHXcaDO', NULL, '2025-04-08 07:53:44', '2025-04-08 07:54:01', NULL, NULL, NULL, '2025-04-08 07:54:01'),
(47, 'Mohammed Aqib Mohammed Nazar', 'cb012181@students.apiit.lk', 2, NULL, '$2y$12$GZoP2SuvXkhZW2L0ppMQIemY3TA5UYMb7aayxJeKMKQqSvsxjLMTG', 'ayVZkLvo72zBPlzQxIyueVrAhpLUBjkzy8TqGRc2GISvkEv07jCDqofZHJy6', '2025-04-09 02:36:39', '2025-04-18 13:57:25', NULL, NULL, NULL, '2025-04-09 02:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_equipment_reports`
--

CREATE TABLE `user_equipment_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `cb_number` varchar(255) NOT NULL,
  `incident_date` date NOT NULL,
  `incident_time` time NOT NULL,
  `reported_on` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `sport_name` varchar(255) NOT NULL,
  `equipment_name` varchar(255) NOT NULL,
  `loss_description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bio` text DEFAULT NULL,
  `interests` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `bio`, `interests`, `created_at`, `updated_at`) VALUES
(13, 31, 'I like to play sports with my friends', 'I\'m interested in indoor games mores', '2025-03-25 23:37:34', '2025-03-25 23:40:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approved_emails`
--
ALTER TABLE `approved_emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `approved_emails_email_unique` (`email`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_sport_id_foreign` (`sport_id`),
  ADD KEY `bookings_location_id_foreign` (`location_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_verifications_email_unique` (`email`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipment_sport_id_foreign` (`sport_id`),
  ADD KEY `equipment_location_id_foreign` (`location_id`);

--
-- Indexes for table `equipment_damage_reports`
--
ALTER TABLE `equipment_damage_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipment_damage_reports_equipment_id_foreign` (`equipment_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reserved_equipment`
--
ALTER TABLE `reserved_equipment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reserved_equipment_equipment_id_time_slot_booking_id_set_unique` (`equipment_id`,`time_slot`,`booking_id`,`set`),
  ADD KEY `reserved_equipment_booking_id_foreign` (`booking_id`),
  ADD KEY `reserved_equipment_set_foreign` (`set`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sports_location_id_foreign` (`location_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_equipment_reports`
--
ALTER TABLE `user_equipment_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_equipment_reports_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profiles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approved_emails`
--
ALTER TABLE `approved_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `equipment_damage_reports`
--
ALTER TABLE `equipment_damage_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `reserved_equipment`
--
ALTER TABLE `reserved_equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user_equipment_reports`
--
ALTER TABLE `user_equipment_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_sport_id_foreign` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `equipment`
--
ALTER TABLE `equipment`
  ADD CONSTRAINT `equipment_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `equipment_sport_id_foreign` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `equipment_damage_reports`
--
ALTER TABLE `equipment_damage_reports`
  ADD CONSTRAINT `equipment_damage_reports_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reserved_equipment`
--
ALTER TABLE `reserved_equipment`
  ADD CONSTRAINT `reserved_equipment_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reserved_equipment_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sports`
--
ALTER TABLE `sports`
  ADD CONSTRAINT `sports_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_equipment_reports`
--
ALTER TABLE `user_equipment_reports`
  ADD CONSTRAINT `user_equipment_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
