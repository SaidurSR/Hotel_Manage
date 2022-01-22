-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2022 at 06:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idb_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_src`, `alt_text`, `publish_status`, `created_at`, `updated_at`) VALUES
(8, 'public/imgs/QPN4m3sQXi3EJHq2JV5SQrsKdzuUZuX0N5rd2uru.jpg', 'Banner', 'on', '2022-01-22 10:05:53', '2022-01-22 10:05:53'),
(9, 'public/imgs/MlV1BSK4XGxqzbvqFsSxag0I7NogeqGywe51oh1O.jpg', 'Banner', 'on', '2022-01-22 10:06:50', '2022-01-22 10:06:50'),
(10, 'public/imgs/PcmotBkdt78futukyR85g6QBipuXEs22vQgDbpWj.jpg', 'Banner', 'on', '2022-01-22 10:07:31', '2022-01-22 10:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `checkin_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_adults` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_children` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer_id`, `room_id`, `checkin_date`, `checkout_date`, `total_adults`, `total_children`, `ref`, `created_at`, `updated_at`) VALUES
(5, 6, 5, '2022-01-23', '2022-01-26', '2', '0', 'admin', '2022-01-22 10:47:27', '2022-01-22 10:47:27'),
(6, 7, 7, '2022-01-23', '2022-01-25', '2', '0', 'admin', '2022-01-22 10:49:49', '2022-01-22 10:49:49'),
(7, 8, 6, '2022-01-24', '2022-01-27', '2', '0', 'admin', '2022-01-22 10:51:10', '2022-01-22 10:51:10'),
(8, 9, 9, '2022-01-26', '2022-01-28', '2', '0', 'admin', '2022-01-22 10:53:54', '2022-01-22 10:53:54'),
(9, 10, 11, '2022-01-24', '2022-01-29', '5', '1', 'admin', '2022-01-22 10:55:23', '2022-01-22 10:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `email`, `password`, `mobile`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(6, 'Sujon Ahmed', 'sujon@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '01545778899', 'Tangail,Dhaka', 'public/imgs/7VGMKVlFaGmhJEE4pp7c0o8JCFMv0RHtpYFTwuX6.jpg', '2022-01-22 10:44:51', '2022-01-22 10:56:33'),
(7, 'Mostofa Kamal', 'mostofa@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '01859698745', 'Bogura', 'public/imgs/g9v3dRgSJwrKt7B5w8Mz9eOpTWJAx3MUNyNIvw5b.jpg', '2022-01-22 10:48:58', '2022-01-22 10:56:49'),
(8, 'Lamon Mia', 'lamon@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '0145878965', 'Khulna', 'public/imgs/G5CXL4DZ4qo7G8sQSvamtwnoJ5dp7Bx1GKzF411S.jpg', '2022-01-22 10:50:27', '2022-01-22 10:57:03'),
(9, 'Apon Ali', 'apon@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '01785968574', 'Sylhet', 'public/imgs/bISYHEY0P32OD9cyXRzgsM1jRKxuXFHCGnlMfuoz.jpg', '2022-01-22 10:52:53', '2022-01-22 10:57:13'),
(10, 'Selim Udiin', 'selim@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '0158969845', 'Chitagong', 'public/imgs/q7aXjIDfbWSGz5iRqAJtPgxVayJZlMVBMYzIrE3p.jpg', '2022-01-22 10:54:26', '2022-01-22 10:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(3, 'Cleaner', 'Hotel Cleaner', '2022-01-22 10:32:02', '2022-01-22 10:32:02'),
(4, 'House Keeper', 'House Keaper', '2022-01-22 10:32:21', '2022-01-22 10:32:21'),
(5, 'Manager', 'Hotel Manger', '2022-01-22 10:32:32', '2022-01-22 10:32:32'),
(6, 'Assistant Manager', 'Assistant Manager', '2022-01-22 10:32:50', '2022-01-22 10:32:50'),
(7, 'Cook', 'Hotel Cook', '2022-01-22 10:33:07', '2022-01-22 10:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_22_181853_create_room_types_table', 1),
(5, '2021_07_22_182302_create_rooms_table', 2),
(6, '2021_07_22_182755_add_room_type_id_to_rooms_table', 3),
(7, '2021_07_29_154439_create_customers_table', 4),
(8, '2021_07_29_165100_add_price_to_room_types_table', 5),
(9, '2021_08_01_163509_create_admins_table', 6),
(10, '2021_08_05_031451_create_roomtypeimages_table', 7),
(11, '2021_08_05_033838_create_roomtypeimages_table', 8),
(12, '2021_08_15_090054_create_departments_table', 9),
(13, '2021_08_15_094608_create_staff_table', 10),
(14, '2021_08_19_034453_create_staff_payments_table', 11),
(15, '2021_08_30_192906_create_bookings_table', 12),
(16, '2021_10_29_033215_create_services_table', 13),
(17, '2021_10_31_083320_create_testimonials_table', 14),
(18, '2021_11_12_180726_create_banners_table', 15);

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
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `created_at`, `updated_at`, `room_type_id`) VALUES
(5, 'B 101', '2022-01-22 10:30:13', '2022-01-22 10:30:13', 23),
(6, 'B 102', '2022-01-22 10:30:21', '2022-01-22 10:30:21', 23),
(7, 'B 103', '2022-01-22 10:30:39', '2022-01-22 10:30:39', 24),
(8, 'B 104', '2022-01-22 10:30:44', '2022-01-22 10:30:44', 24),
(9, 'C 101', '2022-01-22 10:30:51', '2022-01-22 10:30:51', 25),
(10, 'C 102', '2022-01-22 10:30:59', '2022-01-22 10:30:59', 25),
(11, 'D 101', '2022-01-22 10:31:16', '2022-01-22 10:31:16', 26),
(12, 'D 102', '2022-01-22 10:31:23', '2022-01-22 10:31:23', 26);

-- --------------------------------------------------------

--
-- Table structure for table `roomtypeimages`
--

CREATE TABLE `roomtypeimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `img_src` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_alt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roomtypeimages`
--

INSERT INTO `roomtypeimages` (`id`, `room_type_id`, `img_src`, `img_alt`, `created_at`, `updated_at`) VALUES
(23, 21, 'public/imgs/vD5L0IlIU4sztSucrQIEq0FmEY8yeJQsJEjurKPn.jpg', 'Sweet Room', '2021-08-09 12:08:37', '2021-08-09 12:08:37'),
(31, 1, 'public/imgs/ehMMWJulWTWDtbhXR56FMc52lRPCXrlYLVK0xHIK.jpg', 'Deluxe Rooms', '2022-01-18 06:12:51', '2022-01-18 06:12:51'),
(32, 1, 'public/imgs/TKqtkxwJZoskPs0GFIX5g3UwSvlniNZLJ2OC64Oo.jpg', 'Deluxe Rooms', '2022-01-18 06:12:51', '2022-01-18 06:12:51'),
(33, 23, 'public/imgs/chMCb1gzANhCGIIj8IvSx8rMXrCPna5s9RVM3hkq.jpg', 'Eco', '2022-01-22 10:11:21', '2022-01-22 10:11:21'),
(34, 24, 'public/imgs/Pf7x0dEMDTsR2qZ4ld84q3vH25HdIXrPbmCxWnoE.jpg', 'VIP', '2022-01-22 10:12:31', '2022-01-22 10:12:31'),
(35, 25, 'public/imgs/EID4nRHG42zSqVyVDOFEvvTDM1sZa2XUyradpK6d.jpg', 'Business Class', '2022-01-22 10:16:16', '2022-01-22 10:16:16'),
(37, 23, 'public/imgs/PGmJEtVVlFkHoTahCUqaJF2QcFI67VFagc5wL2yP.jpg', 'Economy', '2022-01-22 10:18:32', '2022-01-22 10:18:32'),
(38, 23, 'public/imgs/KXQ3WKednJvWerbQl4dYalHI0iapbiwmMtXnOIRt.jpg', 'Economy', '2022-01-22 10:20:05', '2022-01-22 10:20:05'),
(39, 24, 'public/imgs/O4d5H0q7D58HhXjIorJuPxs6XfY0xtL7JOaOjtMH.jpg', 'VIP', '2022-01-22 10:21:09', '2022-01-22 10:21:09'),
(40, 24, 'public/imgs/67qdkEnS96jEhWyqeFL2J1yOxf2FPLwbRqer5fna.jpg', 'VIP', '2022-01-22 10:21:39', '2022-01-22 10:21:39'),
(41, 25, 'public/imgs/TGsPOc9UhIde5ZikenGzTf3I3pRLngTceStUIL6L.jpg', 'Business Class', '2022-01-22 10:23:41', '2022-01-22 10:23:41'),
(43, 25, 'public/imgs/n7EWD8ncROgtW6enQT8iI01SyZEJIO5RhXGKJWUF.jpg', 'Business Class', '2022-01-22 10:24:18', '2022-01-22 10:24:18'),
(44, 26, 'public/imgs/D48eQKm4Pe2c2383SLaJ7xWSicQk5NQKebo4e1of.jpg', 'Family Type', '2022-01-22 10:28:30', '2022-01-22 10:28:30'),
(45, 26, 'public/imgs/jTu5cA4Gb4nknyEnRvDRMDye1JEyIc22oISruUV9.jpg', 'Family Type', '2022-01-22 10:28:42', '2022-01-22 10:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `title`, `detail`, `created_at`, `updated_at`, `price`) VALUES
(23, 'Economy', 'Economy Class. 2 bed 2/4 person', '2022-01-22 10:11:21', '2022-01-22 10:14:08', '2000'),
(24, 'VIP', 'Vip Room \r\nWith A/C', '2022-01-22 10:12:31', '2022-01-22 10:21:09', '4000'),
(25, 'Business Class', 'Business Class Room With All Service free!', '2022-01-22 10:16:16', '2022-01-22 10:16:16', '8000'),
(26, 'Family Type', 'Family Size Double Bed', '2022-01-22 10:28:30', '2022-01-22 10:28:30', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `small_desc`, `detail_desc`, `photo`, `created_at`, `updated_at`) VALUES
(4, 'Loundry', 'We serve you free loundry services', 'we are here to care your loundry washing free of cost. we provide free loundry service', 'public/imgs/2NSLJDD5696ENp7uxovgQXwkWpLfPZ82Y8aNqOCR.jpg', '2022-01-18 05:27:58', '2022-01-18 05:27:58'),
(5, 'Free Drinks', 'we offer you a free drink', 'at our hotel.we provide', 'public/imgs/JmyYkW4cwrrbPyXkk0ILfXyKuRyASVG0KGf1KkMw.jpg', '2022-01-18 05:29:54', '2022-01-18 05:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_amt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `full_name`, `department_id`, `photo`, `bio`, `salary_type`, `salary_amt`, `created_at`, `updated_at`) VALUES
(2, 'Mijanur Rahman', 3, 'public/imgs/M7hK89hCEcXy4WLTIzzvjh4dPtZUHxtBrVMjUEK0.jpg', 'Address: Dhaka', 'monthly', '8000', '2022-01-22 10:36:15', '2022-01-22 10:36:15'),
(3, 'Hafiz Uddin', 4, 'public/imgs/RYXTyb6IaRNhjoqe6jpE4bZczyC9cgA1BsrO4Z7q.jpg', 'Adress: Dhaka', 'monthly', '10000', '2022-01-22 10:37:30', '2022-01-22 10:37:30'),
(4, 'Joshim Hawladar', 6, 'public/imgs/K4Ml7FStUGnRQnHQJP4Ctib6qEw3zgZhLiniOz8P.jpg', 'Adress: Barishal', 'monthly', '10000', '2022-01-22 10:38:34', '2022-01-22 10:39:02'),
(5, 'Gofur Kazi', 7, 'public/imgs/CkUtTzH2dw0F0Hm2n3G0BIH7MM11YoPEevbAguEH.jpg', 'Dhaka', 'monthly', '10000', '2022-01-22 10:41:55', '2022-01-22 10:41:55'),
(6, 'Md Saidur Rahman', 5, 'public/imgs/OoZVethQzKbtUvohe3c2w4uczfLynnQn5fXJpXo2.jpg', 'Tangail', 'monthly', '500000', '2022-01-22 10:42:34', '2022-01-22 10:42:34'),
(7, 'Masud Rana', 6, 'public/imgs/DMLTrOcLh7GIpqveHtPEthLL52bwoNjFXie1ptI5.jpg', 'Dhaka', 'monthly', '20000', '2022-01-22 10:43:19', '2022-01-22 10:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `staff_payments`
--

CREATE TABLE `staff_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `testi_cont` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `customer_id`, `testi_cont`, `created_at`, `updated_at`) VALUES
(4, 6, 'nice services', '2022-01-22 10:48:17', '2022-01-22 10:48:17'),
(5, 7, 'great service', '2022-01-22 10:50:00', '2022-01-22 10:50:00'),
(6, 8, 'Best hotel', '2022-01-22 10:50:48', '2022-01-22 10:50:48'),
(7, 9, 'wow...nice service', '2022-01-22 10:53:17', '2022-01-22 10:53:17'),
(8, 10, 'great services', '2022-01-22 10:54:52', '2022-01-22 10:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomtypeimages`
--
ALTER TABLE `roomtypeimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_payments`
--
ALTER TABLE `staff_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roomtypeimages`
--
ALTER TABLE `roomtypeimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff_payments`
--
ALTER TABLE `staff_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
