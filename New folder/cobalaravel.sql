-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 09:02 PM
-- Server version: 5.6.21
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cobalaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Mechy Adelia', 'Mechy Adelia Semangat Terus', 'fdefsgfvfbgrnhtn', '2020-09-06 08:33:11', '2020-09-06 01:33:11'),
(2, 'About Fakhri Zhafran', 'Fakhri', 'ggggggggggggggggg', '2020-09-06 10:49:19', '2020-09-06 03:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `id_pengirim` int(11) DEFAULT NULL,
  `nama_pengirim` varchar(255) DEFAULT NULL,
  `profile_pengirim` varchar(255) DEFAULT NULL,
  `id_penerima` int(11) DEFAULT NULL,
  `nama_penerima` varchar(255) DEFAULT NULL,
  `id_chat` int(11) DEFAULT NULL,
  `isi_pesan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `id_pengirim`, `nama_pengirim`, `profile_pengirim`, `id_penerima`, `nama_penerima`, `id_chat`, `isi_pesan`, `created_at`, `updated_at`) VALUES
(7, 6, 'Yandri', 'uploads/default.png', 3, 'Mechy', 36, 'hai', '2020-10-17 17:48:21', NULL),
(8, 6, 'Yandri', 'uploads/default.png', 3, 'Mechy', 36, 'hai', '2020-10-17 17:48:50', NULL),
(9, 6, 'Yandri', 'uploads/default.png', 7, 'delvi wulandari', 67, 'delvi', '2020-10-17 18:11:15', NULL),
(10, 6, 'Yandri', 'uploads/default.png', 7, 'delvi wulandari', 67, 'tes', '2020-10-17 18:11:36', NULL),
(11, 6, 'Yandri', 'uploads/default.png', 7, 'delvi wulandari', 67, 'tes', '2020-10-17 18:11:38', NULL),
(12, 6, 'Yandri', 'uploads/default.png', 4, 'Mechy', 46, 'hai', '2020-10-17 18:13:50', NULL),
(13, 10, 'widya', 'uploads/default.png', 4, 'Mechy', 410, 'oi', '2020-10-17 18:20:36', NULL),
(14, 6, 'Yandri', 'uploads/default.png', 2, 'User', 26, 'tes', '2020-10-17 18:58:36', NULL),
(15, 6, 'Yandri', 'uploads/default.png', 2, 'User', 26, 'woi', '2020-10-17 21:37:21', NULL),
(16, 6, 'Yandri', 'uploads/default.png', 4, 'Mechy', 46, 'chy', '2020-10-17 22:07:59', NULL),
(17, 6, 'Yandri syanurdi', 'uploads/29490_1603048759.png', 3, 'Mechy', 36, 'hsagdas', '2020-10-19 10:08:11', NULL),
(18, 6, 'Yandri syanurdi', 'uploads/29490_1603048759.png', 3, 'Mechy', 36, 'hsagdas', '2020-10-19 10:09:32', NULL),
(19, 3, 'Mechy', 'uploads/16132_1603057671.png', 3, 'Mechy', 33, 'halooooooooooo', '2020-10-19 10:35:08', NULL),
(20, 3, 'Mechy', 'uploads/16132_1603057671.png', 3, 'Mechy', 33, 'halooooooooooo', '2020-10-19 10:35:10', NULL),
(21, 3, 'Mechy', 'uploads/16132_1603057671.png', 2, 'User', 23, 'malam', '2020-10-26 13:30:11', NULL),
(22, 3, 'Mechy', 'uploads/16132_1603057671.png', 3, 'Mechy', 33, 'malam', '2020-10-26 15:53:06', NULL),
(23, 3, 'Mechy Adelia', 'uploads/18_1603727738.png', 2, 'User', 23, 'hhhh', '2020-10-31 12:30:17', NULL),
(24, 3, 'Mechy', 'uploads/18_1603727738.png', 3, 'Mechy', 33, 'tes', '2020-11-04 11:57:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `id_user`, `title`, `date`, `image`, `description`, `created_at`, `updated_at`) VALUES
(57, 3, 'bbb', '2020-10-26', 'image-98a4c7bc-3efb-456e-953c-0654d595a04f.jpg', 'bbb', '2020-10-26 15:54:11', '0000-00-00 00:00:00'),
(58, 3, '', '1970-01-01', '', '', '2020-11-04 13:29:57', '0000-00-00 00:00:00'),
(59, 3, '', '1970-01-01', '', '', '2020-11-04 13:30:03', '0000-00-00 00:00:00'),
(60, 3, '', '1970-01-01', '', '', '2020-11-04 13:34:11', '0000-00-00 00:00:00'),
(61, 3, '', '1970-01-01', '', '', '2020-11-04 13:44:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `matkul` varchar(100) DEFAULT NULL,
  `namadosen` varchar(100) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `description` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `id_user`, `matkul`, `namadosen`, `file`, `description`, `created_at`, `updated_at`) VALUES
(12, 3, 'Jarkoms', 'Deddy Prayama', 'image-cab6a367-28ea-48d7-86ab-6253f405d180.jpg', 'aaaaaa', '2020-11-04 14:42:04', '0000-00-00 00:00:00'),
(16, 3, 'ggg', 'ggg', 'contoh-makalah-bahasa-Indonesia.pdf', 'ggg', '2020-10-31 12:32:14', '0000-00-00 00:00:00'),
(17, 3, '', '', '', '', '2020-11-04 13:48:34', '0000-00-00 00:00:00'),
(18, 3, '', '', '', '', '2020-11-04 13:49:36', '0000-00-00 00:00:00'),
(19, 3, '', '', 'kosong.pdf', '', '2020-11-04 13:49:50', '0000-00-00 00:00:00'),
(20, 3, '', '', 'kosong.pdf', '', '2020-11-04 13:50:41', '0000-00-00 00:00:00'),
(22, 3, '', '', '', '', '2020-11-04 13:54:08', '0000-00-00 00:00:00'),
(23, 3, '', '', 'kosong.pdf', '', '2020-11-04 13:54:46', '0000-00-00 00:00:00'),
(24, 3, '', '', 'image-cab6a367-28ea-48d7-86ab-6253f405d180.jpg', '', '2020-11-04 13:55:00', '0000-00-00 00:00:00'),
(25, 3, 'll', 'll', 'image-cab6a367-28ea-48d7-86ab-6253f405d180.jpg', 'll', '2020-11-04 13:55:18', '0000-00-00 00:00:00'),
(26, 3, '', '', 'kosong.pdf', '', '2020-11-04 13:56:54', '0000-00-00 00:00:00'),
(27, 3, '', '', 'kosong.pdf', '', '2020-11-04 14:39:38', '0000-00-00 00:00:00'),
(28, 3, '', '', 'kosong.pdf', '', '2020-11-04 14:39:43', '0000-00-00 00:00:00'),
(29, 3, '', '', 'kosong.pdf', '', '2020-11-04 14:39:45', '0000-00-00 00:00:00'),
(30, 3, '', '', '', '', '2020-11-05 06:29:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `judul`, `deskripsi`) VALUES
(1, 'Sejarah Teknologi Informasi', 'Gagasan pendirian jurusan Teknologi informasi sudah ada sejak awal tahun 2000, namun terkendala karena beberapa pertimbangan antara lain ketersediaan Sumber Daya Manusia dan Infra Struktur .Pada Awal bulan Febuari 2005, beberapa orang dosen yang antara lain terdiri dari, Erwadi Bakar, Surfayondri, Andrizal, H A Mooduto, Yulindon Ahmad Dahlan, Ronal Hadi dan Rahmat Hidayat, atas dukungan yang kuat dari pimpinan Politeknik Suhendrik Hanwar dan pimpinan lainnya membuat proposal pendirian program studi yang berkaitan dengan Teknologi Informasi.');

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
(3, '2020_09_03_100159_create_abouts_table', 2),
(4, '2020_09_16_093014_create_events_table', 3);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nobp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `usertype`, `nobp`, `email`, `password`, `gambar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '1701082014', 'admin@gmail.com', '$2y$10$/8/wH8FOF1SiUCqa3Gl2lOCmHRQAhLeC2XyeB0dD.D3D0UM96tjHe', 'uploads/default.png', 'GaAfPsltGkGj2bVyKxCpPt5ItwWHiXgRm6fpnS96rJQBcwiyvRSoJ40JknVN', '2020-09-02 08:21:29', '2020-09-02 08:21:29'),
(2, 'User', 'admin', '1701082014', 'user@gmail.com', '$2y$10$n/IvLqoRvnqYcTVYAXdkXOJwiFm8Ehvy5aij9FlKoRPfaxVnQteZi', 'uploads/default.png', '0KhVQU25zMaaAnodbSSlz7sqjpjKc28FtFZU3Bdl0g64hrOdmc5pu2yxh6I3', '2020-09-02 09:20:45', '2020-09-03 00:12:41'),
(3, 'Mechy', 'siswa', '1701082014', 'mechy@gmail.com', '$2y$10$n/IvLqoRvnqYcTVYAXdkXOJwiFm8Ehvy5aij9FlKoRPfaxVnQteZi', 'uploads/1350993713_1604495626.png', 'XfFwiX59dC1vWF5apUglVL6yXBze05ylgsehq1I0uFuxQU0P3YqLsiJWbku5', '2020-10-16 09:15:02', '2020-10-16 09:15:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
