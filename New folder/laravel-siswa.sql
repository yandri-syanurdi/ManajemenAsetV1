-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 09:01 PM
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
-- Database: `laravel-siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nama_belakang` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `suku` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_id`, `nama`, `nama_belakang`, `jenis_kelamin`, `agama`, `telepon`, `whatsapp`, `instagram`, `facebook`, `alamat`, `profile`, `tgl_lahir`, `suku`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Yandri Syanurdi', NULL, 'P', NULL, '+6289664370576', '+6289664370576', 'yandri_syanurdi', 'yandri.syanurdi', 'Bukittinggi', '1597943600.png', NULL, NULL, '2020-08-20 09:36:28', '2020-08-20 17:13:20'),
(14, 57, 'Sarwanto', 'selesaih', 'P', 'Kristen', '089664370576', '089664370576', 'admin_turbo', 'admin_turbo', 'Bukittinggi', '1597943600.png', '1970-01-01', 'Chaniago', '2020-09-25 08:39:09', '2020-09-25 18:51:28'),
(15, 59, 'susanto', 'susanto', 'L', 'Islam', '089664370576', '089664370576', 'admin_turbo', 'admin_turbo', 'Padang', 'edita.JPG', '1970-01-01', 'Batak', '2020-09-25 12:00:56', '2020-09-25 19:00:56'),
(16, 60, 'susanti', 'susanti', 'L', 'Islam', '089664370576', '089664370576', 'admin_turbo', 'admin_turbo', 'Padang', 'haha.JPG', '1970-01-01', 'Batak', '2020-09-25 12:01:49', '2020-09-25 19:01:49'),
(26, NULL, 'nadiahh', 'nadiahh', 'L', 'islam', '2222', '2222', 'nadiahh', 'nadiahh', 'nadiahh', '500_F_112549592_wz4p4UJp2ZYE7AdLkkSvjQI4ndggAtAw.jpg', '1970-01-01', 'nadiahh', '2020-09-25 22:49:26', '2020-09-26 05:49:26'),
(28, 63, 'martah', 'martah', 'P', 'islam', '111', '111', 'martah', 'martah', 'martah', '500_F_112549592_wz4p4UJp2ZYE7AdLkkSvjQI4ndggAtAw.jpg', '1970-01-01', 'martah', '2020-09-25 23:03:19', '2020-09-26 06:03:19'),
(29, 65, 'widuri', 'widuri', 'L', 'islam', '111', '111', 'widuri', 'widuri', 'widuri', '500_F_112549592_wz4p4UJp2ZYE7AdLkkSvjQI4ndggAtAw.jpg', '1970-01-01', 'widuri', '2020-09-25 23:11:30', '2020-09-26 06:11:30'),
(30, 66, 'Livea', 'Nindy', 'P', 'islam', '081390874567', '081390874567', 'nindy008', 'Livea Nindy', 'Padang', '5.png', '1998-09-08', 'Chaniago', '2020-09-25 23:12:57', '2020-10-01 17:03:42'),
(31, 67, 'Sannia', 'Lauren', 'P', 'islam', '081324567892', '081324567892', 'laurentsannia', 'Sannia Laurent', 'Padang', '2.png', '1998-05-16', 'Chaniago', '2020-09-25 23:16:09', '2020-10-01 17:01:57'),
(33, 69, 'Annisa', 'Ulhafidzah', 'P', 'islam', '081387650987', '081387650987', 'annisaulhafidzah', 'Annisa Ulhafidzah', 'Bukittinggi', '7.png', '1997-07-11', 'Chaniago', '2020-09-25 23:23:00', '2020-10-01 17:00:31'),
(34, 70, 'Fery', 'Ferdian', 'L', 'Islam', '081340509876', '081340509876', 'ry.ferdian', 'Fery Ferdian', 'Bukittinggi', '1.png', '1997-05-06', 'Chaniago', '2020-09-25 23:26:20', '2020-10-01 16:56:46'),
(35, 72, 'Yandri', 'Syanurdi', 'L', 'islam', '089664370576', '089664370576', 'yandri_syanurdi', 'Yandri Syanurdi', 'Bukittinggi', 'yandri profil.jpg', '1997-12-10', 'Chaniago', '2020-09-25 23:42:30', '2020-10-01 16:32:04'),
(37, 88, 'sintiabel', 'sintiabel', 'L', 'Islam', '1122333', '1122333', 'sintaia', 'sintaia', 'sintaia', 'akunt.png', '1970-01-01', 'sintaia', '2020-10-13 05:16:25', '2020-10-13 12:16:25'),
(38, 89, 'Raihan', 'Raihan', 'L', 'Islam', '12345678', '12345678', 'raihan', 'Raihan', 'Bukittinggi', 'yandrianimated.jpg', '1970-01-01', 'Chaniago', '2020-10-13 05:17:48', '2020-10-13 12:18:36'),
(40, 97, 'obama', 'obama', 'L', 'Islam', '089664370576', '089664370576', 'admin_turbo', 'admin_turbo', 'Bukittinggi', 'yandris.png', '1970-01-01', 'Chaniago', '2020-10-14 13:05:41', '2020-10-14 20:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `detail` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `user_id`, `title`, `detail`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ff', 'fff', '2020-09-27 09:04:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `audio` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`id`, `user_id`, `nama`, `kategori`, `deskripsi`, `audio`, `created_at`, `updated_at`) VALUES
(1, 0, 'tes', 'IPA', 'tes', '1595596239.mp3', '2020-07-24 06:10:39', '2020-07-24 06:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `user_id`, `judul`, `tanggal`, `tempat`, `deskripsi`, `video`, `created_at`, `updated_at`) VALUES
(2, 2, 'Juara Pkm Dikti', '2020-06-06', 'Padang', 'Hebat sekali', '1597997794.mp4', '2020-08-21 00:46:38', '2020-08-21 08:16:34'),
(3, 2, 'Kasus corona di Padang', '2020-01-01', 'Padang', 'Masalah Corona di Kota Padang', '1598110057.mp4', '2020-08-22 08:27:37', '2020-08-22 15:27:37'),
(4, 2, 'PNP juarai Pimnas', '2020-01-01', 'Padang', 'PNP juarai Pimnas 2020', '1601043930.mp4', '2020-09-25 07:25:30', '2020-09-25 14:25:30'),
(5, 2, 'PNP Politeknik favorit', '2020-01-01', 'Padang', 'PNP menjadi Politeknik paling favorit', '1601043941.mp4', '2020-09-25 07:25:41', '2020-09-25 14:25:41'),
(6, 2, 'Aplikasi TURBO raih juara pimnas', '2020-01-01', 'Padang', 'Aplikasi TURBO raih juara pimnas', '1601620260.jpg', '2020-09-25 07:25:56', '2020-10-02 06:31:00'),
(7, 2, 'Kasus corona semakin bertambah parah', '2020-01-01', 'Padang', 'Kasus corona semakin bertambah par', '1601043965.mp4', '2020-09-25 07:26:05', '2020-09-25 14:26:05'),
(9, 2, 'Kasus Corona', '1970-01-01', 'Indonesia', 'kasus corona bertambah', '1602706533.mp4', '2020-10-14 13:15:33', '2020-10-14 20:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `id_pengirim` int(11) NOT NULL,
  `nama_pengirim` varchar(255) DEFAULT NULL,
  `profile_pengirim` varchar(255) DEFAULT NULL,
  `id_penerima` int(11) NOT NULL,
  `nama_penerima` varchar(255) DEFAULT NULL,
  `id_chat` int(11) NOT NULL,
  `isi_pesan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `id_pengirim`, `nama_pengirim`, `profile_pengirim`, `id_penerima`, `nama_penerima`, `id_chat`, `isi_pesan`, `created_at`, `updated_at`) VALUES
(1, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 4, 'Delvi Wulandari', 24, 'Halo', '2020-08-03 14:53:56', NULL),
(2, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 4, 'Delvi Wulandari', 24, 'hai', '2020-08-03 15:08:40', NULL),
(3, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 4, 'Delvi Wulandari', 24, 'hahaha', '2020-08-03 15:08:48', NULL),
(4, 4, 'Delvi Wulandari', 'uploads/default.png', 7, 'Sistri', 47, 'hai sistri', '2020-08-03 15:19:43', NULL),
(5, 4, 'Delvi Wulandari', 'uploads/default.png', 2, 'Yandri Syanurdi', 24, 'hai juga', '2020-08-03 15:20:00', NULL),
(6, 4, 'Delvi Wulandari', 'uploads/default.png', 2, 'Yandri Syanurdi', 24, 'hai juga', '2020-08-03 15:21:51', NULL),
(7, 4, 'Delvi Wulandari', 'uploads/default.png', 2, 'Yandri Syanurdi', 24, 'hai juga', '2020-08-03 15:21:52', NULL),
(8, 4, 'Delvi Wulandari', 'uploads/default.png', 2, 'Yandri Syanurdi', 24, 'hai juga', '2020-08-03 15:21:53', NULL),
(9, 4, 'Delvi Wulandari', 'uploads/default.png', 2, 'Yandri Syanurdi', 24, 'hai juga', '2020-08-03 15:21:54', NULL),
(10, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 4, 'Delvi Wulandari', 24, 'tes', '2020-08-04 06:45:49', NULL),
(11, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 4, 'Delvi Wulandari', 24, 'woi', '2020-08-04 06:46:02', NULL),
(12, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 4, 'Delvi Wulandari', 24, 'haha', '2020-08-04 06:47:27', NULL),
(13, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 4, 'Delvi Wulandari', 24, 'haha', '2020-08-04 06:47:30', NULL),
(14, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 4, 'Delvi Wulandari', 24, 'aku suka kamu', '2020-08-04 06:57:55', NULL),
(16, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 1, 'Basrul', 12, 'woi', '2020-08-04 07:52:02', NULL),
(17, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 1, 'Basrul', 12, 'woi', '2020-08-04 07:54:01', NULL),
(18, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 1, 'Basrul', 12, 'hai', '2020-08-04 07:54:07', NULL),
(19, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 8, 'Nisti', 28, 'hai', '2020-08-06 02:36:28', NULL),
(20, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 8, 'Nisti', 28, 'hallo', '2020-08-06 02:36:33', NULL),
(21, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 8, 'Nisti', 28, 'hallo', '2020-08-06 02:36:44', NULL),
(22, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 7, 'Sistri', 27, 'hai', '2020-08-14 16:46:38', NULL),
(23, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 7, 'Sistri', 27, 'hallo', '2020-08-14 16:53:38', NULL),
(24, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 7, 'Sistri', 27, 'tes', '2020-08-14 16:56:25', NULL),
(25, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 1, 'Basrul', 12, 'hai', '2020-08-17 13:10:30', NULL),
(26, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 1, 'Basrul', 12, 'hai', '2020-08-17 13:10:32', NULL),
(27, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 7, 'Siska', 27, 'hai', '2020-08-22 15:51:49', NULL),
(28, 2, 'Yandri Syanurdi', 'uploads/854394538_1597417565.jpeg', 7, 'Siska', 27, 'hai', '2020-08-22 15:51:50', NULL),
(29, 2, 'Yandri Syanurdi', 'uploads/190402888_1598111488.jpeg', 8, 'Tiwi', 28, 'hai', '2020-08-22 16:15:29', NULL),
(30, 2, 'Yandri Syanurdi', 'uploads/190402888_1598111488.jpeg', 8, 'Tiwi', 28, 'hai', '2020-08-22 16:15:30', NULL),
(31, 2, 'Yandri Syanurdi', 'uploads/1079830407_1599887962.jpeg', 12, 'Ilham', 212, 'halo', '2020-09-24 14:08:08', NULL),
(32, 2, 'Yandri Syanurdi', 'uploads/1079830407_1599887962.jpeg', 12, 'Ilham', 212, 'halo', '2020-09-24 14:08:14', NULL),
(33, 2, 'Yandri Syanurdi', 'uploads/1079830407_1599887962.jpeg', 12, 'Ilham', 212, 'hai', '2020-09-25 06:40:37', NULL),
(34, 2, 'Yandri Syanurdi', 'uploads/1079830407_1599887962.jpeg', 12, 'Ilham', 212, 'hai', '2020-09-25 06:40:41', NULL),
(35, 2, 'Yandri Syanurdi', 'uploads/1079830407_1599887962.jpeg', 2, 'Yandri Syanurdi', 22, 'hai', '2020-09-25 06:46:05', NULL),
(36, 2, 'Yandri Syanurdi', 'uploads/1079830407_1599887962.jpeg', 2, 'Yandri Syanurdi', 22, 'hai', '2020-09-25 06:46:07', NULL),
(37, 2, 'Yandri Syanurdi', 'uploads/1079830407_1599887962.jpeg', 2, 'Yandri Syanurdi', 22, 'hai', '2020-09-25 06:46:09', NULL),
(38, 2, 'Yandri Syanurdi', 'uploads/1074696743_1601016405.jpeg', 2, 'Yandri Syanurdi', 22, 'halo', '2020-10-14 19:29:37', NULL),
(39, 2, 'Yandri Syanurdi', 'uploads/1074696743_1601016405.jpeg', 2, 'Yandri Syanurdi', 22, 'halo', '2020-10-14 19:29:39', NULL),
(40, 2, 'Yandri Syanurdi', 'uploads/1074696743_1601016405.jpeg', 13, 'Nurul', 213, 'halo', '2020-10-14 19:29:52', NULL),
(41, 2, 'Yandri Syanurdi', 'uploads/1430654024_1602703826.jpeg', 2, 'Yandri Syanurdi', 22, 'hai', '2020-10-14 19:50:18', NULL),
(42, 2, 'Yandri Syanurdi', 'uploads/1430654024_1602703826.jpeg', 13, 'Nurul', 213, 'hai', '2020-10-14 19:50:32', NULL),
(43, 2, 'Yandri Syanurdi', 'uploads/1430654024_1602703826.jpeg', 13, 'Nurul', 213, 'hai', '2020-10-14 19:50:33', NULL),
(44, 2, 'Yandri Syanurdi', 'uploads/1422999118_1602705068.jpeg', 2, 'Yandri Syanurdi', 22, 'saya yandri', '2020-10-15 01:10:01', NULL),
(45, 2, 'Yandri Syanurdi', 'uploads/1422999118_1602705068.jpeg', 12, 'Ilham', 212, 'hallo', '2020-10-15 01:10:17', NULL),
(46, 2, 'Yandri Syanurdi', 'uploads/1422999118_1602705068.jpeg', 12, 'Ilham', 212, 'hallo', '2020-10-15 01:10:18', NULL),
(47, 2, 'Yandri Syanurdi', 'uploads/921239412_1602724250.jpeg', 7, 'Siska', 27, 'woi', '2020-10-28 15:33:54', NULL),
(48, 2, 'Yandri Syanurdi', 'uploads/921239412_1602724250.jpeg', 7, 'Siska', 27, 'woi', '2020-10-28 15:33:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coba`
--

CREATE TABLE `coba` (
  `id` int(11) NOT NULL,
  `tes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coba`
--

INSERT INTO `coba` (`id`, `tes`) VALUES
(1, 'main'),
(2, 'main'),
(3, ''),
(4, 'Shalat Subuh'),
(5, 'Sidang Tugas Akhir'),
(6, 'Sidang Tugas Akhir'),
(7, 'Sidang Tugas Akhir'),
(8, 'Tugas Sidang Akhir'),
(9, ''),
(10, 'Bikin Demonstrasi Ta'),
(11, 'Sidang Tugas Akhir'),
(12, 'Sidang Tugas Akhir'),
(13, 'Pkm Dikti'),
(14, 'Sidang Tugas Akhir'),
(15, 'Pkm Dikti'),
(16, 'Sidang Tugas Akhir'),
(17, 'Sidang Tugas Akahir');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_ayat`
--

CREATE TABLE `daftar_ayat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `penggalan_ayat` varchar(255) DEFAULT NULL,
  `terjemahan` varchar(255) DEFAULT NULL,
  `urutan_penggalan` int(100) DEFAULT NULL,
  `urutan_ayat` int(100) DEFAULT NULL,
  `nama_surat` varchar(255) DEFAULT NULL,
  `gambar_ayat` varchar(255) DEFAULT NULL,
  `video_terjemahan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_ayat`
--

INSERT INTO `daftar_ayat` (`id`, `user_id`, `penggalan_ayat`, `terjemahan`, `urutan_penggalan`, `urutan_ayat`, `nama_surat`, `gambar_ayat`, `video_terjemahan`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Qul', 'Katakanlah', 1, 1, 'Al-Ikhlas', '1.png', '1.mp4', '2020-08-21 12:53:59', NULL),
(2, NULL, 'Huwallahu', 'Dialah Allah', 2, 1, 'Al-Ikhlas', '2.png', '2.mp4', '2020-08-21 12:53:59', NULL),
(3, NULL, 'Ahad', 'Yang Maha Esa', 3, 1, 'Al-Ikhlas', '3.png', '3.mp4', '2020-08-21 12:53:59', NULL),
(4, NULL, 'Allahu', 'Allah', 1, 2, 'Al-Ikhlas', '4.png', '4.mp4', '2020-08-21 12:53:59', NULL),
(5, NULL, 'Shamad', 'Tempat Meminta', 2, 2, 'Al-Ikhlas', '5.png', '5.mp4', '2020-08-21 12:53:59', NULL),
(6, NULL, 'Lam Yalid', 'Tidak Beranak', 1, 3, 'Al-Ikhlas', '6.png', '6.mp4', '2020-08-21 13:07:44', NULL),
(7, NULL, 'Walam Yuwlad', 'Tidak Diperanak', 2, 3, 'Al-Ikhlas', '7.png', '7.mp4', '2020-08-21 13:07:44', NULL),
(8, NULL, 'Walam Yakul', 'Tidak Ada', 1, 4, 'Al-Ikhlas', '8.png', '8.mp4', '2020-08-21 13:17:33', NULL),
(9, NULL, 'Lahu', 'Bagi Nya', 2, 4, 'Al-Ikhlas', '9.png', '9.mp4', '2020-08-21 13:17:33', NULL),
(10, NULL, 'Kufuwan', 'Kesetaraan', 3, 4, 'Al-Ikhlas', '10.png', '10.mp4', '2020-08-21 13:17:33', NULL),
(11, NULL, 'Ahad', 'Dengan Apapun ', 4, 4, 'Al-Ikhlas', '11.png', '11.mp4', '2020-08-21 13:17:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daftar_surat`
--

CREATE TABLE `daftar_surat` (
  `id` int(11) NOT NULL,
  `nama_surat` varchar(255) NOT NULL,
  `arabic` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `arti_surat` varchar(255) NOT NULL,
  `gambar_surat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_surat`
--

INSERT INTO `daftar_surat` (`id`, `nama_surat`, `arabic`, `arti_surat`, `gambar_surat`, `created_at`, `updated_at`) VALUES
(1, 'Al-Fatihah', 'الفاتحة  ', ' Pembukaan ', '1.jpg', '2020-08-21 08:28:52', NULL),
(2, 'Al-Baqarah', 'البقرة  ', 'Sapi Betina', '2.jpg', '2020-08-21 08:44:01', NULL),
(3, 'Ali-Imran', 'آل عمران ', 'Keluarga Imran ', '3.jpg', '2020-08-21 08:45:10', NULL),
(4, 'An-Nisa', 'النّساء  ', 'Wanita', '4.jpg', '2020-08-21 08:46:11', NULL),
(5, 'Al-Maidah', 'المآئدة  ', 'Jamuan (hidangan makanan) ', '5.jpg', '2020-08-21 08:52:15', NULL),
(6, 'Al-Anam', 'الانعام  ', 'Binatang Ternak ', '6.jpg', '2020-08-21 08:52:15', NULL),
(7, 'Al-Araf', 'الأعراف  ', 'Tempat yang tertinggi ', '7.jpg', '2020-08-21 08:52:15', NULL),
(8, 'Al-Anfal', 'الأنفال  ', 'Harta rampasan perang ', '8.jpg', '2020-08-21 08:52:15', NULL),
(9, 'At-Taubah', 'التوبة‎‎  ', 'Pengampunan', '9.jpg', '2020-08-21 08:52:15', NULL),
(10, 'Yunus', 'ينوس  ', 'Nabi Yunus ', '10.jpg', '2020-08-21 08:52:15', NULL),
(11, 'Hud', 'هود  ', 'Nabi Hud ', '11.jpg', '2020-08-21 08:52:15', NULL),
(12, 'Yusuf', 'يسوف  ', 'Nabi Yusuf ', '12.jpg', '2020-08-21 08:52:15', NULL),
(13, 'Ar-Rad', 'الرّعد  ', 'Guruh (petir) ', '13.jpg', '2020-08-21 08:52:15', NULL),
(14, 'Ibrahim', 'إبراهيم  ', 'Nabi Ibrahim', '14.jpg', '2020-08-21 08:52:15', NULL),
(15, 'Al-Hijr', 'الحجر  ', 'Al Hijr (nama gunung) ', '15.jpg', '2020-08-21 08:59:19', NULL),
(16, 'An-Nahl', 'النّحل  ', 'Lebah  ', '16.jpg', '2020-08-21 08:59:19', NULL),
(17, 'Al-Isra', 'بني إسرائيل', 'Memperjalankan waktu malam ', '17.jpg', '2020-08-21 08:59:19', NULL),
(18, 'Al-Kahf', 'الكهف  ', 'Penghuni-penghuni gua ', '18.jpg', '2020-08-21 08:59:19', NULL),
(19, 'Maryam', 'مريم  ', 'Maryam (Maria) ', '19.jpg', '2020-08-21 08:59:19', NULL),
(20, 'Ta Ha', 'طه  ', 'Ta Ha ', '20.jpg', '2020-08-21 08:59:19', NULL),
(21, 'Al-Anbiya', 'الأنبياء  ', 'Nabi-Nabi ', '21.jpg', '2020-08-21 08:59:19', NULL),
(22, 'Al-Hajj', 'الحجّ  ', 'Haji', '22.jpg', '2020-08-21 08:59:19', NULL),
(23, 'Al-Muminun', 'المؤمنون  ', 'Orang-orang mukmin ', '23.jpg', '2020-08-21 08:59:19', NULL),
(24, 'An-Nur', 'النّور  ', 'Cahaya', '24.jpg', '2020-08-21 08:59:19', NULL),
(25, 'Al-Furqan', 'الفرقان  ', 'Pembeda ', '25.jpg', '2020-08-21 09:05:24', NULL),
(26, 'Asy-Syuara', 'الشّعراء  ', 'Penyair', '26.jpg', '2020-08-21 09:05:24', NULL),
(27, 'An-Naml', 'النّمل  ', 'Semut', '27.jpg', '2020-08-21 09:05:24', NULL),
(28, 'Al-Qasas', 'القصص  ', 'Cerita', '28.jpg', '2020-08-21 09:05:24', NULL),
(29, 'Al-Ankabut', 'العنكبوت  ', 'Laba-laba ', '29.jpg', '2020-08-21 09:05:24', NULL),
(30, 'Ar-Rum', 'الرّوم  ', 'Bangsa Romawi', '30.jpg', '2020-08-21 09:05:24', NULL),
(31, 'Luqman', 'لقمان  ', 'Keluarga Luqman', '31.jpg', '2020-08-21 09:05:24', NULL),
(32, 'As-Sajdah', 'السّجدة  ', 'Sajdah  ', '32.jpg', '2020-08-21 09:05:24', NULL),
(33, 'Al-Ahzab', 'الْأحزاب', 'Golongan-Golongan bersekutu ', '33.jpg', '2020-08-21 09:05:24', NULL),
(34, 'Saba', 'سبا  ', 'Kaum Saba', '34.jpg', '2020-08-21 09:05:24', NULL),
(35, 'Fatir', 'فاطر  ', 'Pencipta', '35.jpg', '2020-08-21 09:14:43', NULL),
(36, 'Ya Sin', 'يس  ', 'Yaasiin  ', '36.jpg', '2020-08-21 09:14:43', NULL),
(37, 'As-Saffat', 'الصّافات  ', 'Barisan-barisan ', '37.jpg', '2020-08-21 09:14:43', NULL),
(38, 'Sad', 'ص  ', 'Shaad  ', '38.jpg', '2020-08-21 09:14:43', NULL),
(39, 'Az-Zumar', 'الزّمر', 'Rombongan-rombongan  ', '39.jpg', '2020-08-21 09:14:43', NULL),
(40, 'Al-Mumin', 'المؤمن  ', 'Orang yg Beriman  ', '40.jpg', '2020-08-21 09:14:43', NULL),
(41, 'Fussilat', 'فصّلت  ', 'Yang dijelaskan', '41.jpg', '2020-08-21 09:14:43', NULL),
(42, 'Asy-Syura', 'الشّورى ', 'Musyawarah', '42.jpg', '2020-08-21 09:14:43', NULL),
(43, 'Az-Zukhruf', 'الزّخرف  ', 'Perhiasan', '43.jpg', '2020-08-21 09:14:43', NULL),
(44, 'Ad-Dukhan', 'الدّخان  ', 'Kabut', '44.jpg', '2020-08-21 09:14:43', NULL),
(45, 'Al-Jasiyah', 'الجاثية  ', 'Yang bertekuk lutut', '45.jpg', '2020-08-21 09:24:19', NULL),
(46, 'Al-Ahqaf', 'الَأحقاف  ', 'Bukit-bukit pasir ', '46.jpg', '2020-08-21 09:24:19', NULL),
(47, 'Muhammad', 'محمّد  ', 'Muhammad', '47.jpg', '2020-08-21 09:24:19', NULL),
(48, 'Al-Fath', 'الفتح  ', 'Kemenangan ', '48.jpg', '2020-08-21 09:24:19', NULL),
(49, 'Al-Hujurat', 'الحجرات  ', 'Kamar-kamar', '49.jpg', '2020-08-21 09:24:19', NULL),
(50, 'Qaf', 'ق  ', 'Qaaf', '50.jpg', '2020-08-21 09:24:19', NULL),
(51, 'Az-Zariyat', 'الذّاريات  ', 'Angin yang menerbangkan ', '51.jpg', '2020-08-21 09:24:19', NULL),
(52, 'At-Tur', 'الطّور  ', 'Bukit', '52.jpg', '2020-08-21 09:24:19', NULL),
(53, 'An-Najm', 'النّجْم  ', 'Bintang', '53.jpg', '2020-08-21 09:24:19', NULL),
(54, 'Al-Qamar', 'القمر  ', 'Bulan', '54.jpg', '2020-08-21 09:24:19', NULL),
(55, 'Ar-Rahman', 'الرّحْمن  ', 'Yang Maha Pemurah ', '55.jpg', '2020-08-21 09:31:00', NULL),
(56, 'Al-Waqiah', 'الواقعه  ', 'Hari Kiamat ', '56.jpg', '2020-08-21 09:31:00', NULL),
(57, 'Al-Hadid', 'الحديد  ', 'Besi', '57.jpg', '2020-08-21 09:31:00', NULL),
(58, 'Al-Mujadilah', 'المجادلة  ', 'Wanita mengajukan gugatan ', '58.jpg', '2020-08-21 09:31:00', NULL),
(59, 'Al-Hasyr', 'الحشْر  ', 'Pengusiran ', '59.jpg', '2020-08-21 09:31:00', NULL),
(60, 'Al-Mumtahanah', 'الممتحنة  ', 'Wanita yang diuji ', '60.jpg', '2020-08-21 09:31:00', NULL),
(61, 'As-Saff', 'الصّفّ  ', 'Satu barisan ', '61.jpg', '2020-08-21 09:31:00', NULL),
(62, 'Al-Jumuah', 'الجمعة  ', 'Hari jumat', '62.jpg', '2020-08-21 09:31:00', NULL),
(63, 'Al-Munafiqun', 'المنافقون  ', 'Orang-orang yang munafik ', '63.jpg', '2020-08-21 09:31:00', NULL),
(64, 'At-Tagabun', 'التّغابن  ', 'Hari dinampakkan kesalahan', '64.jpg', '2020-08-21 09:31:00', NULL),
(65, 'At-Talaq', 'الطّلاق  ', 'Talak', '65.jpg', '2020-08-21 09:31:00', NULL),
(66, 'At-Tahrim', 'التّحريم  ', 'Mengharamkan', '66.jpg', '2020-08-21 09:41:01', NULL),
(67, 'Al-Mulk', 'الملك  ', 'Kerajaan', '67.jpg', '2020-08-21 09:41:01', NULL),
(68, 'Al-Qalam', 'القلم  ', 'Pena', '68.jpg', '2020-08-21 09:41:01', NULL),
(69, 'Al-Haqqah', 'الحآقّة  ', 'Hari kiamat ', '69.jpg', '2020-08-21 09:41:01', NULL),
(70, 'Al-Maarij', 'المعارج  ', 'Tempat naik ', '70.jpg', '2020-08-21 09:41:01', NULL),
(71, 'Nuh', 'نوح  ', 'Nuh', '71.jpg', '2020-08-21 09:41:01', NULL),
(72, 'Al-Jinn', 'الجنّ  ', 'Jin', '72.jpg', '2020-08-21 09:41:01', NULL),
(73, 'Al-Muzzammil', 'المزمّل  ', 'Orang yang berselimut ', '73.jpg', '2020-08-21 09:41:01', NULL),
(74, 'Al-Muddassir', 'المدشّر  ', 'Orang yang berkemul ', '74.jpg', '2020-08-21 09:41:01', NULL),
(75, 'Al-Qiyamah', 'القيمة  ', 'Hari Kiamat ', '75.jpg', '2020-08-21 09:41:01', NULL),
(76, 'Al-Insan', 'الْاٍنسان  ', 'Manusia', '76.jpg', '2020-08-21 09:47:27', NULL),
(77, 'Al-Mursalat', 'المرسلات  ', 'Malaikat Yang Diutus ', '77.jpg', '2020-08-21 09:47:27', NULL),
(78, 'An-Naba', 'النّبا  ', 'Berita besar', '78.jpg', '2020-08-21 09:47:27', NULL),
(79, 'An-Naziat', 'النّازعات  ', 'Malaikat Yang Mencabut', '79.jpg', '2020-08-21 09:47:27', NULL),
(80, 'Abasa', 'عبس  ', 'Ia Bermuka masam', '80.jpg', '2020-08-21 09:47:27', NULL),
(81, 'At-Takwir', 'التّكوير  ', 'Menggulung ', '81.jpg', '2020-08-21 09:47:27', NULL),
(82, 'Al-Infitar', 'الانفطار  ', 'Terbelah', '82.jpg', '2020-08-21 09:47:27', NULL),
(83, 'Al-Tatfif', 'المطفّفين  ', 'Orang-orang yang curang ', '83.jpg', '2020-08-21 09:47:27', NULL),
(84, 'Al-Insyiqaq', 'الانشقاق  ', 'Terbelah', '84.jpg', '2020-08-21 09:47:27', NULL),
(85, 'Al-Buruj', 'البروج  ', 'Gugusan bintang ', '85.jpg', '2020-08-21 09:47:27', NULL),
(86, 'At-Tariq', 'الطّارق  ', 'Yang datang di malam hari  ', '86.jpg', '2020-08-21 09:56:36', NULL),
(87, 'Al-Ala', 'الْأعلى  ', 'Yang paling tinggi ', '87.jpg', '2020-08-21 09:56:36', NULL),
(88, 'Al-Gasyiyah', 'الغاشية   ', 'Hari Pembalasan', '88.jpg', '2020-08-21 09:56:36', NULL),
(89, 'Al-Fajr', 'الفجر  ', 'Fajar', '89.jpg', '2020-08-21 09:56:36', NULL),
(90, 'Al-Balad', 'البلد  ', 'Negeri', '90.jpg', '2020-08-21 09:56:36', NULL),
(91, 'Asy-Syams', 'الشّمس  ', 'Matahari', '91.jpg', '2020-08-21 09:56:36', NULL),
(92, 'Al-Lail', 'الّيل  ', 'Malam', '92.jpg', '2020-08-21 09:56:36', NULL),
(93, 'Ad-Duha', 'الضحى‎‎  ', 'Waktu Dhuha', '93.jpg', '2020-08-21 09:56:36', NULL),
(94, 'Al-Insyirah ', 'الانشراح‎‎  ', 'Melapangkan', '94.jpg', '2020-08-21 09:56:36', NULL),
(95, 'At-Tin', 'التِّينِ  ', 'Buah Tin ', '95.jpg', '2020-08-21 09:56:36', NULL),
(96, 'Al-Alaq', 'العَلَق  ', 'Segumpal Darah ', '96.jpg', '2020-08-21 10:02:36', NULL),
(97, 'Al-Qadr', 'الْقَدْرِ  ', 'Kemuliaan ', '97.jpg', '2020-08-21 10:02:36', NULL),
(98, 'Al-Bayyinah', 'الْبَيِّنَةُ  ', 'Pembuktian ', '98.jpg', '2020-08-21 10:02:36', NULL),
(99, 'Az-Zalzalah', 'الزلزلة‎‎  ', 'Kegoncangan ', '99.jpg', '2020-08-21 10:02:36', NULL),
(100, 'Al-Adiyat', 'العاديات‎‎  ', 'Berlari kencang ', '100.jpg', '2020-08-21 10:02:36', NULL),
(101, 'Al-Qariah', 'القارعة‎‎  ', 'Hari Kiamat ', '101.jpg', '2020-08-21 10:02:36', NULL),
(102, 'At-Takasur', 'التكاثر‎‎  ', 'Bermegah-megahan ', '102.jpg', '2020-08-21 10:02:36', NULL),
(103, 'Al-Asr', 'العصر  ', 'Masa Waktu ', '103.jpg', '2020-08-21 10:02:36', NULL),
(104, 'Al-Humazah', 'الهُمَزة‎‎  ', 'Pengumpat ', '104.jpg', '2020-08-21 10:02:36', NULL),
(105, 'Al-Fil', 'الْفِيلِ  ', 'Gajah ', '105.jpg', '2020-08-21 10:02:36', NULL),
(106, 'Quraisy', 'قُرَيْشٍ  ', 'Suku Quraisy', '106.jpg', '2020-08-21 10:17:59', NULL),
(107, 'Al-Maun', 'الْمَاعُونَ  ', 'Barang-barang yang berguna ', '107.jpg', '2020-08-21 10:17:59', NULL),
(108, 'Al-Kausar', 'الكوثر  ', 'Nikmat yang berlimpah ', '108.jpg', '2020-08-21 10:17:59', NULL),
(109, 'Al-Kafirun', 'الْكَافِرُونَ  ', 'Orang-orang kafir ', '109.jpg', '2020-08-21 10:17:59', NULL),
(110, 'An-Nasr', 'النصر‎‎  ', ' Pertolongan ', '110.jpg', '2020-08-21 10:17:59', NULL),
(111, 'Al-Lahab', 'المسد‎‎  ', 'Gejolak Api Sabut ', '111.jpg', '2020-08-21 10:17:59', NULL),
(112, 'Al-Ikhlas', 'الإخلاص‎‎  ', 'Ikhlas ', '112.jpg', '2020-08-21 10:17:59', NULL),
(113, 'Al-Falaq', 'الْفَلَقِ  ', 'Waktu Subuh ', '113.jpg', '2020-08-21 10:17:59', NULL),
(114, 'An-Nas', 'النَّاسِ  ', 'Manusia ', '114.jpg', '2020-08-21 10:17:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `document` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `user_id`, `nama`, `kategori`, `deskripsi`, `document`, `created_at`, `updated_at`) VALUES
(1, 84, 'Fotosintesis', 'Ilmu Pengetahuan Alam', 'Cara Fotosintesis', '1595595771.pdf', '2020-07-24 06:02:51', '2020-07-24 06:02:51'),
(2, 84, 'Aljabar', 'Matematika dasar', 'Rumus Aljabar', '1597912251.pdf', '2020-08-20 01:30:51', '2020-08-20 01:30:51'),
(3, 84, 'Tunarungu', 'Muatan Lokal', 'Pengertian Tunarungu', '1601015257.pdf', '2020-09-24 23:27:37', '2020-09-24 23:27:37'),
(4, 84, 'Seni Tari', 'Seni Budaya', 'Belajar Tari Piring', '1601038439.pdf', '2020-09-25 05:53:59', '2020-09-25 05:53:59'),
(5, 84, 'Kalkulus', 'Matematika dasar', 'Rumus Kalkulus', '1601042705.pdf', '2020-09-25 07:05:05', '2020-09-25 07:05:05'),
(6, 84, 'Logika', 'Matematika dasar', 'Belajar Ilmu Logika', '1601042723.pdf', '2020-09-25 07:05:23', '2020-09-25 07:05:23'),
(7, 84, 'Trigonometri', 'Matematika dasar', 'Rumus Trigonometri', '1601193566.pdf', '2020-09-27 00:59:26', '2020-09-27 00:59:26'),
(8, 2, 'Fotosintesis', 'Ilmu Pengetahuan Alam', 'Cara Fotosintesis', '1595595771.pdf', NULL, NULL),
(9, 2, 'Aljabar', 'Matematika dasar', 'Rumus Aljabar', '1597912251.pdf', NULL, NULL),
(10, 2, 'Tunarungu', 'Muatan Lokal', 'Pengertian Tunarungu', '1601015257.pdf', NULL, NULL),
(11, 2, 'Seni Tari', 'Seni Budaya', 'Belajar Tari Piring', '1601038439.pdf', NULL, NULL),
(12, 2, 'Kalkulus', 'Matematika dasar', 'Rumus Kalkulus', '1601042705.pdf', NULL, NULL),
(13, 2, 'Logika', 'Matematika dasar', 'Belajar Ilmu Logika', '1601042723.pdf', NULL, NULL),
(14, 2, 'Trigonometri', 'Trigonometri', 'Rumus Trigonometri', '1601193566.pdf', NULL, NULL),
(15, 22, 'Fotosintesis', 'Ilmu Pengetahuan Alam', 'Cara Fotosintesis', '1595595771.pdf', NULL, NULL),
(16, 22, 'Aljabar', 'Matematika dasar', 'Rumus Aljabar', '1597912251.pdf', NULL, NULL),
(17, 22, 'Tunarungu', 'Muatan Lokal', 'Pengertian Tunarungu', '1601015257.pdf\r\n', NULL, NULL),
(18, 22, 'Seni Tari', 'Seni Budaya', 'Belajar Tari Piring', '1601038439.pdf', NULL, NULL),
(19, 22, 'Kalkulus', 'Matematika dasar', 'Rumus Kalkulus', '1601042705.pdf', NULL, NULL),
(20, 22, 'Logika', 'Matematika dasar', 'Belajar Ilmu Logika', '1601042723.pdf', NULL, NULL),
(21, 22, 'Trigonometri', 'Matematika dasar', 'Rumus Trigonometri', '1601193566.pdf', NULL, NULL),
(23, 2, 'coba', 'Matematika dasar', 'tes1', '1602585968.pdf', '2020-10-13 03:45:57', '2020-10-13 03:46:08'),
(25, 2, 'Tugas Akhir', 'Matematika dasar', 'Tugas Akhir', '1602596590.pdf', '2020-10-13 06:43:10', '2020-10-13 06:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `acara` varchar(255) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `kontak` varchar(255) NOT NULL,
  `brosur` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `id_user`, `acara`, `tanggal_mulai`, `tanggal_selesai`, `lokasi`, `kegiatan`, `kontak`, `brosur`, `created_at`, `updated_at`) VALUES
(1, 22, 'Lomba Baca puisi', '2003-04-01', '2004-07-01', 'Bukittinggi', 'Baca Puisi', '089664370576', '1597934428.jpg', '2020-08-20 05:22:42', '2020-08-20 14:40:28'),
(2, 22, 'Cipta Cerpen', '2020-01-01', '2020-01-02', 'Padang', 'Lomba Cipta Cerpen', '089664370576', '1597926294.jpg', '2020-08-20 05:24:54', '2020-08-20 12:24:54'),
(4, 22, 'Lomba Debat Tingkat SD', '1970-01-01', '1970-01-01', 'Padang', 'Lomba Debat', '089664370576', '1601576597.jpg', '2020-09-25 07:14:55', '2020-10-01 18:23:17'),
(5, 22, 'Lomba Drama Tingkat SMA', '1970-01-01', '1970-01-01', 'Padang', 'Lomba Drama', '089664370576', '1601576585.jpg', '2020-09-25 07:15:10', '2020-10-01 18:23:05'),
(6, 22, 'Lomba Catur', '1970-01-01', '1970-01-01', 'Padang', 'Lomba Catur', '089664370576', '1597934428.jpg', '2020-09-25 07:15:26', '2020-09-25 14:15:26'),
(8, 22, 'Hackathon', '2020-01-01', '2020-01-02', 'Padang', 'Ngoding 24 Jam', '081343210987', '1601575845.jpg', '2020-10-01 11:10:45', '2020-10-01 18:10:45'),
(9, 2, 'Lomba Baca puisi', '2003-04-01', '2004-07-01', 'Bukittinggi', 'Baca Puisi', '089664370576', '1597934428.jpg', '2020-10-12 16:20:34', NULL),
(10, 2, 'Cipta Cerpen', '2020-01-01', '2020-01-02', 'Padang', 'Lomba Cipta Cerpen', '089664370576', '1597926294.jpg', '2020-10-12 16:30:59', NULL),
(11, 2, 'Lomba Debat Tingkat SD', '1970-01-01', '1970-01-01', 'Padang', 'Lomba Debat', '089664370576', '1601576597.jpg', '2020-10-12 16:30:59', NULL),
(12, 2, 'Lomba Drama Tingkat SMA', '1970-01-01', '1970-01-01', 'Padang', 'Lomba Drama', '089664370576', '1601576585.jpg', '2020-10-12 16:30:59', NULL),
(13, 2, 'Lomba Catur', '1970-01-01', '1970-01-01', 'Padang', 'Lomba Catur', '089664370576', '1597934428.jpg', '2020-10-12 16:30:59', NULL),
(14, 2, 'Hackathon', '2020-01-01', '2020-01-02', 'Padang', 'Ngoding 24 Jam', '081343210987', '1601575845.jpg', '2020-10-12 16:30:59', NULL),
(15, 84, 'Lomba Baca puisi', '2003-04-01', '2004-07-01', 'Bukittinggi', 'Baca Puisi', '089664370576', '1597934428.jpg', '2020-10-12 16:37:06', NULL),
(16, 84, 'Cipta Cerpen', '2020-01-01', '2020-01-02', 'Padang', 'Lomba Cipta Cerpen', '089664370576', '1597926294.jpg', '2020-10-12 16:37:06', NULL),
(17, 84, 'Lomba Debat Tingkat SD', '1970-01-01', '1970-01-01', 'Padang', 'Lomba Debat', '089664370576', '1601576597.jpg', '2020-10-12 16:37:06', NULL),
(18, 84, 'Lomba Drama Tingkat SMA', '1970-01-01', '1970-01-01', 'Padang', 'Lomba Drama', '089664370576', '1601576585.jpg', '2020-10-12 16:37:06', NULL),
(19, 84, 'Lomba Catur', '1970-01-01', '1970-01-01', 'Padang', 'Lomba Catur', '089664370576', '1597934428.jpg', '2020-10-12 16:37:06', NULL),
(20, 84, 'Hackathon', '2020-01-01', '2020-01-02', 'Padang', 'Ngoding 24 Jam', '081343210987', '1601575845.jpg', '2020-10-12 16:37:06', NULL),
(22, 2, 'Lomba Puisi', '2020-10-13', '2020-10-13', 'Padang', 'Baca Puisi', '1245677', 'upload/imgs/156994128-1602603953.jpeg', '2020-10-13 15:45:53', NULL),
(32, 2, 'Lomba baca puisi', '1970-01-01', '1970-01-01', 'Padang', 'Baca Puisi', '12345', '1602706367.jpg', '2020-10-14 13:12:47', '2020-10-14 20:12:47'),
(34, 2, 'Lomba Cipta Cerpen', '1970-01-01', '1970-01-01', 'Padang', 'CIpta cerpen', '1111', '1602724813.jpg', '2020-10-14 18:20:13', '2020-10-15 01:20:13'),
(35, 2, 'aduh', '1970-01-01', '1970-01-01', 'aduh', 'aduh', '1111', '1606402626.jpg', '2020-11-10 13:47:11', '2020-11-26 14:57:06');

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
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id`, `judul`, `slug`, `konten`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Forum pertama', 'forum-pertama', 'Ini konten forum', 7, '2020-07-15 08:23:47', '0000-00-00'),
(2, 'Forum kedua', 'forum-kedua', 'Ini konten kedua', 4, '2020-07-15 10:14:15', '0000-00-00'),
(3, 'Forum ketiga', 'forum-ketiga', 'Yandri sangat baik hati', 2, '2020-07-15 05:11:07', '2020-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nama_belakang` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `telpon` varchar(15) DEFAULT NULL,
  `alamat` text,
  `avatar` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `suku` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `user_id`, `nama`, `nama_belakang`, `jenis_kelamin`, `agama`, `telpon`, `alamat`, `avatar`, `tgl_lahir`, `suku`, `created_at`, `updated_at`) VALUES
(1, 0, 'Fery', 'Ferdian', 'L', 'Islam', '081290874565', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-06 12:50:04', '2020-10-01 17:21:17'),
(2, 0, 'Dwikorita', 'Intan', 'p', 'Islam', '087821738713', 'Bekasi', '2.png', '0000-00-00', 'Chaniago', '2020-07-06 12:50:04', '0000-00-00 00:00:00'),
(4, 81, 'Annisa', 'Ulhafidzah', 'P', 'Islam', '081376894278', 'Padang', '7.png', '1997-01-07', 'Chaniago', '2020-09-26 05:30:11', '2020-10-01 17:20:07'),
(5, 82, 'Lauren', 'Sannia', 'L', 'islam', '081326754398', 'Padang', '2.png', '1997-11-06', 'Chaniago', '2020-09-26 05:31:32', '2020-10-01 17:18:29'),
(6, 83, 'Nurul', 'Fadila', 'P', 'islam', '089656784321', 'Bukittinggi', 'be4aaab1b8214fe9afb8440541629f4c.jpg', '1984-06-14', 'Piliang', '2020-09-26 05:32:01', '2020-10-01 17:17:14'),
(7, 84, 'Yandri', 'Syanurdi', 'L', 'islam', '089664370576', 'Bukittinggi', 'logoyandri.png', '1970-01-01', 'Chaniago', '2020-09-26 05:32:30', '2020-10-13 20:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `user_id`, `nama`, `kategori`, `deskripsi`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'Yandri', 'IPA', 'tampan', '1595595604.jpg', '2020-07-24 06:00:04', '2020-07-24 06:00:04'),
(2, 2, 'tes', 'Matematika dasar', 'tes', '1597941281.png', '2020-08-20 09:34:41', '2020-08-20 09:34:41'),
(3, 2, 'tes', 'Matematika dasar', 'tes', '1601047048.jpg', '2020-09-25 08:17:28', '2020-09-25 08:17:28'),
(4, 2, 'cc', 'Matematika dasar', 'cc', '1601047090.jpg', '2020-09-25 08:18:10', '2020-09-25 08:18:10'),
(5, 2, 'dd', 'Matematika dasar', 'dd', '1601047099.jpg', '2020-09-25 08:18:19', '2020-09-25 08:18:19'),
(6, 2, 'dde', 'Matematika dasar', 'ddd', '1601047111.jpg', '2020-09-25 08:18:31', '2020-09-25 08:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `kamus`
--

CREATE TABLE `kamus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `b_indonesia` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `b_inggris` varchar(255) NOT NULL,
  `video_isyarat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamus`
--

INSERT INTO `kamus` (`id`, `user_id`, `b_indonesia`, `b_inggris`, `video_isyarat`, `created_at`, `updated_at`) VALUES
(1, 2, 'Singa', 'Lion', '1597987006.mp4', '2020-08-20 22:04:23', '2020-08-21 05:16:46'),
(2, 2, 'Monyet  ', 'Monkey', '1597986306.mp4', '2020-08-20 22:05:06', '2020-08-21 05:05:06'),
(5, 2, 'One', 'Satu', '1598110359.mp4', '2020-08-22 08:32:20', '2020-08-22 15:32:39'),
(6, 2, 'Elang', 'Eagle', '1601044904.mp4', '2020-09-25 07:41:44', '2020-09-25 14:41:44'),
(7, 2, 'Buaya', 'Crocodile', '1601044947.mp4', '2020-09-25 07:42:27', '2020-09-25 14:42:27'),
(8, 2, 'Beruang', 'Bear', '1601044961.mp4', '2020-09-25 07:42:41', '2020-09-25 14:42:41'),
(9, 2, 'Mungkin', 'Possible', '1601619011.mp4', '2020-10-01 23:10:11', '2020-10-02 06:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `konten` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `kode`, `nama`, `semester`, `guru_id`, `created_at`, `updated_at`) VALUES
(1, 'M-001', 'Matematika dasar', 'ganjil', 1, '2020-07-04 05:36:50', '0000-00-00 00:00:00'),
(2, 'B-001', 'Bahasa Indonesia', 'ganjil', 1, '2020-07-04 05:36:50', '0000-00-00 00:00:00'),
(3, 'M-003', 'Agama Islam', 'ganjil', 2, '2020-07-05 12:43:50', '0000-00-00 00:00:00'),
(4, 'P-001', 'Pendidikan Pancasila', 'ganjil', 1, '2020-07-29 10:52:26', '0000-00-00 00:00:00'),
(5, 'S-002', 'Seni Budaya', 'ganjil', 2, '2020-07-29 10:53:35', '0000-00-00 00:00:00'),
(6, 'O-004', 'Pendidikan Jasmani', 'ganjil', 2, '2020-07-29 10:55:51', '0000-00-00 00:00:00'),
(7, 'I-001', 'Ilmu Pengetahuan Alam', 'ganjil', 1, '2020-07-29 10:57:41', '0000-00-00 00:00:00'),
(8, 'I-002', 'Ilmu Pengetahuan Sosial', 'ganjil', 2, '2020-07-29 10:57:41', '0000-00-00 00:00:00'),
(9, 'K-009', 'Ketrampilan', 'ganjil', 2, '2020-07-29 11:28:32', '0000-00-00 00:00:00'),
(10, 'T-001', 'Tematik', 'ganjil', 1, '2020-07-29 11:37:52', '0000-00-00 00:00:00'),
(11, 'L-007', 'Muatan Lokal', 'ganjil', 1, '2020-07-29 11:37:52', '0000-00-00 00:00:00'),
(12, 'K-008', 'Bimbingan Konseling', 'ganjil', 2, '2020-07-29 11:37:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id`, `siswa_id`, `mapel_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 75, '2020-07-04 05:38:58', '0000-00-00 00:00:00'),
(2, 3, 2, 60, '2020-07-04 05:38:58', '0000-00-00 00:00:00'),
(3, 4, 1, 70, '2020-07-04 05:50:14', '0000-00-00 00:00:00'),
(4, 12, 1, 100, '2020-07-04 08:27:35', '0000-00-00 00:00:00'),
(5, 12, 2, 100, '2020-07-04 08:27:35', '0000-00-00 00:00:00'),
(8, 3, 3, 60, '2020-07-05 13:12:26', '0000-00-00 00:00:00'),
(9, 1, 1, 95, '2020-07-05 07:18:31', '2020-07-05 14:18:31'),
(10, 1, 2, 85, '2020-07-05 07:18:55', '2020-07-05 14:18:55'),
(11, 1, 3, 90, '2020-07-05 07:19:06', '2020-07-05 14:19:06'),
(13, 19, 2, 80, '2020-07-05 09:53:16', '2020-07-06 03:48:24'),
(14, 19, 1, 100, '2020-07-05 10:23:43', '2020-07-05 17:23:43'),
(16, 19, 3, 90, '2020-07-06 06:03:31', '2020-07-06 13:03:31'),
(17, 2, 1, 70, '2020-07-06 22:09:20', '2020-07-07 05:09:20'),
(18, 2, 2, 80, '2020-07-06 22:09:37', '2020-07-07 05:09:37'),
(19, 2, 3, 90, '2020-07-06 22:09:47', '2020-07-07 05:09:47'),
(20, 12, 3, 100, '2020-07-06 22:10:16', '2020-07-07 05:10:16'),
(21, 5, 1, 70, '2020-07-06 22:17:14', '2020-07-07 05:17:14'),
(22, 6, 1, 90, '2020-07-06 22:17:29', '2020-07-07 05:17:29'),
(23, 20, 1, 60, '2020-07-06 22:17:46', '2020-07-07 05:17:46'),
(24, 8, 1, 95, '2020-07-06 22:18:10', '2020-07-07 05:18:10'),
(25, 18, 1, 50, '2020-07-06 22:18:31', '2020-07-07 05:18:31'),
(26, 9, 1, 55, '2020-07-06 22:18:51', '2020-07-07 05:18:51'),
(27, 10, 1, 60, '2020-07-06 22:19:11', '2020-07-07 05:19:11'),
(28, 11, 1, 75, '2020-07-06 22:19:28', '2020-07-07 05:19:28'),
(29, 13, 1, 85, '2020-07-06 22:19:48', '2020-07-07 05:19:48'),
(30, 14, 1, 80, '2020-07-06 22:20:08', '2020-07-07 05:20:08'),
(31, 15, 1, 85, '2020-07-06 22:20:25', '2020-07-07 05:20:25'),
(32, 16, 1, 55, '2020-07-06 22:20:46', '2020-07-07 05:20:46'),
(34, 21, 2, 33, '2020-07-06 22:24:59', '2020-07-07 05:24:59'),
(35, 21, 3, 34, '2020-07-06 22:25:16', '2020-07-07 05:25:16'),
(36, 31, 6, 80, '2020-07-29 04:02:40', '2020-07-29 11:02:40'),
(37, 31, 1, 80, '2020-07-29 04:03:15', '2020-07-29 11:03:15'),
(38, 31, 4, 80, '2020-07-29 04:04:03', '2020-07-29 11:04:03'),
(39, 31, 8, 80, '2020-07-29 04:09:06', '2020-07-29 11:09:06'),
(40, 83, 1, 80, '2020-09-25 02:26:04', '2020-09-25 09:26:04'),
(41, 90, 1, 80, '2020-09-27 00:55:13', '2020-09-27 07:55:13'),
(42, 96, 1, 100, '2020-10-01 10:49:02', '2020-10-01 17:49:02'),
(43, 96, 2, 100, '2020-10-01 10:49:17', '2020-10-01 17:49:17'),
(44, 96, 3, 90, '2020-10-01 10:49:40', '2020-10-01 17:49:40'),
(45, 96, 9, 80, '2020-10-01 10:49:51', '2020-10-01 17:49:51'),
(46, 75, 1, 70, '2020-10-01 11:03:58', '2020-10-01 18:03:58'),
(47, 77, 1, 85, '2020-10-01 11:04:10', '2020-10-01 18:04:10'),
(48, 100, 1, 90, '2020-10-01 11:04:28', '2020-10-01 18:04:28'),
(49, 74, 1, 80, '2020-10-02 00:03:51', '2020-10-02 07:03:51'),
(50, 74, 2, 90, '2020-10-02 00:03:57', '2020-10-02 07:03:57'),
(51, 74, 3, 100, '2020-10-02 00:04:06', '2020-10-02 07:04:06'),
(52, 74, 9, 100, '2020-10-02 00:04:14', '2020-10-02 07:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `mapel_tingkat`
--

CREATE TABLE `mapel_tingkat` (
  `id` int(11) NOT NULL,
  `id_tingkat` int(11) NOT NULL,
  `nama_tingkat` varchar(255) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel_tingkat`
--

INSERT INTO `mapel_tingkat` (`id`, `id_tingkat`, `nama_tingkat`, `id_mapel`, `nama_mapel`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 1, 'TK', 1, 'Matematika dasar', 'matematika.png', NULL, NULL),
(2, 1, 'TK', 2, 'Bahasa Indonesia', 'bahasa.png', NULL, NULL),
(3, 1, 'TK', 3, 'Agama Islam', 'agama.png', NULL, NULL),
(4, 1, 'TK', 4, 'Pendidikan Pancasila', 'pancasila.png', NULL, NULL),
(5, 1, 'TK', 5, 'Seni Budaya', 'seni.png', NULL, NULL),
(6, 1, 'TK', 6, 'Pendidikan Jasmani', 'jasmani.png', NULL, NULL),
(7, 1, 'TK', 7, 'Ilmu Pengetahuan Alam', 'ipa.png', NULL, NULL),
(8, 1, 'TK', 8, 'Ilmu Pengetahuan Sosial', 'ips.png', NULL, NULL),
(9, 1, 'TK', 9, 'Ketrampilan', 'ketrampilan.png', NULL, NULL),
(10, 1, 'TK', 10, 'Tematik', 'tematik.png', NULL, NULL),
(11, 1, 'TK', 11, 'Muatan Lokal', 'muatan.png', NULL, NULL),
(12, 1, 'TK', 12, 'Bimbingan Konseling', 'konseling.png', NULL, NULL),
(13, 2, 'SD', 1, 'Matematika dasar', 'matematika.png', NULL, NULL),
(14, 2, 'SD', 2, 'Bahasa Indonesia', 'bahasa.png', NULL, NULL),
(15, 2, 'SD', 3, 'Agama Islam', 'agama.png', NULL, NULL),
(16, 2, 'SD', 4, 'Pendidikan Pancasila', 'pancasila.png', NULL, NULL),
(17, 2, 'SD', 5, 'Seni Budaya', 'seni.png', NULL, NULL),
(18, 2, 'SD', 6, 'Pendidikan Jasmani', 'jasmani.png', NULL, NULL),
(19, 2, 'SD', 7, 'Ilmu Pengetahuan Alam', 'ipa.png', NULL, NULL),
(20, 2, 'SD', 8, 'Ilmu Pengetahuan Sosial', 'ips.png', NULL, NULL),
(21, 2, 'SD', 9, 'Ketrampilan', 'ketrampilan.png', NULL, NULL),
(22, 2, 'SD', 10, 'Tematik', 'tematik.png', NULL, NULL),
(23, 2, 'SD', 11, 'Muatan Lokal', 'muatan.png', NULL, NULL),
(24, 2, 'SD', 12, 'Bimbingan Konseling', 'konseling.png', NULL, NULL),
(25, 3, 'SMP', 1, 'Matematika dasar', 'matematika.png', NULL, NULL),
(26, 3, 'SMP', 2, 'Bahasa Indonesia', 'bahasa.png', NULL, NULL),
(27, 3, 'SMP', 3, 'Agama Islam', 'agama.png', NULL, NULL),
(28, 3, 'SMP', 4, 'Pendidikan Pancasila', 'pancasila.png', NULL, NULL),
(29, 3, 'SMP', 5, 'Seni Budaya', 'seni.png', NULL, NULL),
(30, 3, 'SMP', 6, 'Pendidikan Jasmani', 'jasmani.png', NULL, NULL),
(31, 3, 'SMP', 7, 'Ilmu Pengetahuan Alam', 'ipa.png', NULL, NULL),
(32, 3, 'SMP', 8, 'Ilmu Pengetahuan Sosial', 'ips.png', NULL, NULL),
(33, 3, 'SMP', 9, 'Ketrampilan', 'ketrampilan.png', NULL, NULL),
(34, 3, 'SMP', 10, 'Tematik', 'tematik.png', NULL, NULL),
(35, 3, 'SMP', 11, 'Muatan Lokal', 'muatan.png', NULL, NULL),
(36, 3, 'SMP', 12, 'Bimbingan Konseling', 'konseling.png', NULL, NULL),
(37, 4, 'SMA', 1, 'Matematika dasar', 'matematika.png', NULL, NULL),
(38, 4, 'SMA', 2, 'Bahasa Indonesia', 'bahasa.png', NULL, NULL),
(39, 4, 'SMA', 3, 'Agama Islam', 'agama.png', NULL, NULL),
(40, 4, 'SMA', 4, 'Pendidikan Pancasila', 'pancasila.png', NULL, NULL),
(41, 4, 'SMA', 5, 'Seni Budaya', 'seni.png', NULL, NULL),
(42, 4, 'SMA', 6, 'Pendidikan Jasmani', 'jasmani.png', NULL, NULL),
(43, 4, 'SMA', 7, 'Ilmu Pengetahuan Alam', 'ipa.png', NULL, NULL),
(44, 4, 'SMA', 8, 'Ilmu Pengetahuan Sosial', 'ips.png', NULL, NULL),
(45, 4, 'SMA', 9, 'Ketrampilan', 'ketrampilan.png', NULL, NULL),
(46, 4, 'SMA', 10, 'Tematik', 'tematik.png', NULL, NULL),
(47, 4, 'SMA', 11, 'Muatan Lokal', 'muatan.png', NULL, NULL),
(48, 4, 'SMA', 12, 'Bimbingan Konseling', 'konseling.png', NULL, NULL),
(49, 5, 'UMUM', 1, 'Matematika dasar', 'matematika.png', NULL, NULL),
(50, 5, 'UMUM', 2, 'Bahasa Indonesia', 'bahasa.png', NULL, NULL),
(51, 5, 'UMUM', 3, 'Agama Islam', 'agama.png', NULL, NULL),
(52, 5, 'UMUM', 4, 'Pendidikan Pancasila', 'pancasila.png', NULL, NULL),
(53, 5, 'UMUM', 5, 'Seni Budaya', 'seni.png', NULL, NULL),
(54, 5, 'UMUM', 6, 'Pendidikan Jasmani', 'jasmani.png', NULL, NULL),
(55, 5, 'UMUM', 7, 'Ilmu Pengetahuan Alam', 'ipa.png', NULL, NULL),
(56, 5, 'UMUM', 8, 'Ilmu Pengetahuan Sosial', 'ips.png', NULL, NULL),
(57, 5, 'UMUM', 9, 'Ketrampilan', 'ketrampilan.png', NULL, NULL),
(58, 5, 'UMUM', 10, 'Tematik', 'tematik.png', NULL, NULL),
(59, 5, 'UMUM', 11, 'Muatan Lokal', 'muatan.png', NULL, NULL),
(60, 5, 'UMUM', 12, 'Bimbingan Konseling', 'konseling.png', NULL, NULL);

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
(4, '2020_06_30_075653_create_siswa_table', 1);

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
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id` int(11) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`id`, `kode`, `nama`, `semester`, `guru_id`, `created_at`, `updated_at`) VALUES
(1, 'M-001', 'Matematika dasar', 'ganjil', 1, '2020-07-04 05:36:50', '0000-00-00 00:00:00'),
(2, 'B-001', 'Bahasa Indonesia', 'ganjil', 1, '2020-07-04 05:36:50', '0000-00-00 00:00:00'),
(3, 'M-003', 'Agama Islam', 'ganjil', 2, '2020-07-05 12:43:50', '0000-00-00 00:00:00'),
(4, 'P-001', 'Pendidikan Pancasila', 'ganjil', 1, '2020-07-29 10:52:26', '0000-00-00 00:00:00'),
(5, 'S-002', 'Seni Budaya', 'ganjil', 2, '2020-07-29 10:53:35', '0000-00-00 00:00:00'),
(6, 'O-004', 'Pendidikan Jasmani', 'ganjil', 2, '2020-07-29 10:55:51', '0000-00-00 00:00:00'),
(7, 'I-001', 'Ilmu Pengetahuan Alam', 'ganjil', 1, '2020-07-29 10:57:41', '0000-00-00 00:00:00'),
(8, 'I-002', 'Ilmu Pengetahuan Sosial', 'ganjil', 2, '2020-07-29 10:57:41', '0000-00-00 00:00:00'),
(9, 'K-009', 'Ketrampilan', 'ganjil', 2, '2020-07-29 11:28:32', '0000-00-00 00:00:00'),
(10, 'T-001', 'Tematik', 'ganjil', 1, '2020-07-29 11:37:52', '0000-00-00 00:00:00'),
(11, 'L-007', 'Muatan Lokal', 'ganjil', 1, '2020-07-29 11:37:52', '0000-00-00 00:00:00'),
(12, 'K-008', 'Bimbingan Konseling', 'ganjil', 2, '2020-07-29 11:37:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `slug`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ini berita pertamah', 'Ini Isi dari berita pertama yang diinput secara manual', 'ini-berita-pertama', '1600935880.jpg', '2020-07-11 15:46:49', '2020-09-24 08:24:40'),
(2, 1, 'Pengumuman Kelulusan tahun 2018', 'Isi dari pengumuman Sekolah menengah Atas 59 Jakarta', 'pengumuman-kelulusan-tahun-2018', '1600934928.jpg', '2020-07-11 18:23:18', '0000-00-00 00:00:00'),
(4, 2, 'tes', 'tes', 'tes', '1600934928.jpg', '2020-09-24 01:08:48', '2020-09-24 08:08:48'),
(5, 2, 'Mahasiswa Terbaik Teknik Komputer', 'Yandri Syanurdi medapatkan piagam penghargaan sebagai mahasiswa  terbaik teknik komputer pnp angkatan 2017', 'coba', '1601624086.jpeg', '2020-09-24 01:16:13', '2020-10-02 07:34:46'),
(6, 2, 'Koordinator Programming Cybertech 2019', 'Yandri Menjabat sebagai Koordinator Programming Cybertech 2019', 'tes-1', '1601625273.jpg', '2020-09-25 06:51:31', '2020-10-02 07:54:33'),
(7, 2, 'Team Footsal Yandri menjadi pemenang TI CUP', 'Kelas Tekom A Raih juara TI CUP', 'tes-2', '1601580207.jpg', '2020-09-25 06:51:40', '2020-10-01 19:23:27'),
(8, 2, 'Aplikasi TURBO lolos pendanaan PKM', 'Aplikasi TURBO (Tunarungu Belajar Online) mendapatkan 5 juta rupiah', 'tes-3', '1601580098.jpg', '2020-09-25 06:51:49', '2020-10-01 19:21:38'),
(9, 2, 'Juara Favorite  Hackathon Cybertech', 'Team Yandri Berhasil Menjuarai Hackathon Cybertech PNP tahun 2019', 'tes-4', '1601617520.jpeg', '2020-09-25 06:51:59', '2020-10-02 05:45:20'),
(10, 22, 'Pengumuman Kelulusan tahun 2018', 'Isi dari pengumuman Sekolah menengah Atas 59 Jakarta', 'pengumuman-kelulusan-tahun-2018', '1600934928.jpg\r\n', '2020-10-12 17:10:03', '0000-00-00 00:00:00'),
(11, 22, 'Mahasiswa Terbaik Teknik Komputer', 'Yandri Syanurdi medapatkan piagam penghargaan sebagai', 'coba ', '1601624086.jpeg\r\n', '2020-10-12 17:10:03', '0000-00-00 00:00:00'),
(12, 22, 'Koordinator Programming Cybertech 2019', 'Yandri Menjabat sebagai Koordinator Programming Cybertech', 'tes-1', '1601625273.jpg', '2020-10-12 17:10:03', '0000-00-00 00:00:00'),
(13, 22, 'Team Footsal Yandri menjadi pemenang TI CUP', 'Kelas Tekom A Raih juara TI CUP', 'tes-2', '1601580207.jpg', '2020-10-12 17:10:03', '0000-00-00 00:00:00'),
(14, 22, 'Aplikasi TURBO lolos pendanaan PKM', 'Aplikasi TURBO (Tunarungu Belajar Online) mendapatkan 5 juta rupiah', 'tes-3', '1601580098.jpg', '2020-10-12 17:10:03', '0000-00-00 00:00:00'),
(15, 22, 'Juara Favorite  Hackathon Cybertech', 'Team Yandri Berhasil Menjuarai Hackathon Cybertech PNP tahun 2019', 'tes-4', '1601617520.jpeg', '2020-10-12 17:10:03', '0000-00-00 00:00:00'),
(16, 84, 'Pengumuman Kelulusan tahun 2018', 'Isi dari pengumuman Sekolah menengah Atas 59 Jakarta', 'pengumuman-kelulusan-tahun-2018', '1600934928.jpg\r\n', '2020-10-12 17:15:39', '0000-00-00 00:00:00'),
(17, 84, 'Mahasiswa Terbaik Teknik Komputer', 'Yandri Syanurdi medapatkan piagam penghargaan sebagai', 'coba ', '1601624086.jpeg\r\n', '2020-10-12 17:15:39', '0000-00-00 00:00:00'),
(18, 84, 'Koordinator Programming Cybertech 2019', 'Yandri Menjabat sebagai Koordinator Programming Cybertech', 'tes-1', '1601625273.jpg\r\n', '2020-10-12 17:15:39', '0000-00-00 00:00:00'),
(19, 84, 'Team Footsal Yandri menjadi pemenang TI CUP', 'Kelas Tekom A Raih juara TI CUP', 'tes-2', '1601580207.jpg', '2020-10-12 17:15:39', '0000-00-00 00:00:00'),
(20, 84, 'Aplikasi TURBO lolos pendanaan PKM', 'Aplikasi TURBO (Tunarungu Belajar Online) mendapatkan 5 juta rupiah', 'tes-3', '1601580098.jpg', '2020-10-12 17:15:39', '0000-00-00 00:00:00'),
(21, 84, 'Juara Favorite  Hackathon Cybertech', 'Team Yandri Berhasil Menjuarai Hackathon Cybertech PNP tahun 2019', 'tes-4', '1601617520.jpeg', '2020-10-12 17:15:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `id_user`, `kegiatan`, `tanggal_mulai`, `tanggal_selesai`, `created_at`, `updated_at`) VALUES
(2, 2, 'Belajar Mtk', '2001-08-22', '2031-08-24', '2020-08-18 19:17:22', NULL),
(4, 1, 'main', '2020-08-20', '2020-08-21', '2020-08-19 04:12:25', NULL),
(5, 6, '', '1970-01-01', '1970-01-01', '2020-10-13 14:43:41', NULL),
(8, 2, 'Tugas Sidang Akhir', '2020-10-14', '2020-10-14', '2020-10-13 15:03:09', NULL),
(13, 2, 'Pkm Dikti', '2020-10-08', '2020-10-14', '2020-10-14 19:30:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_depan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_belakang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `suku` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `role`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `avatar`, `tgl_lahir`, `suku`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', NULL, '2020-10-01 10:21:17'),
(2, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', NULL, '2020-10-01 10:21:17'),
(3, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', NULL, '2020-10-01 10:21:17'),
(4, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', NULL, '2020-10-01 10:21:17'),
(5, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', NULL, '2020-10-01 10:21:17'),
(6, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', NULL, '2020-10-01 10:21:17'),
(9, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-06-30 03:59:18', '2020-10-01 10:21:17'),
(10, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-06-30 04:07:18', '2020-10-01 10:21:17'),
(11, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-06-30 04:16:57', '2020-10-01 10:21:17'),
(12, 2, NULL, 'Yandri', 'Syanurdi', 'L', 'Islam', 'Bukittinggi', '8.png', '1970-01-01', 'Chaniago', '2020-07-01 01:30:35', '2020-10-14 18:25:48'),
(13, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-03 08:29:20', '2020-10-01 10:21:17'),
(15, 4, NULL, 'Dewi', 'Wulandari', 'P', 'Islam', 'Pasaman Barat', '7.png', '1970-01-01', NULL, '2020-07-04 00:23:52', '2020-10-14 13:06:31'),
(18, 7, NULL, 'Sistri', 'Indah', 'P', 'Islam', 'Pesisir', 'panel 03.jpg', '0000-00-00', '', '2020-07-04 03:48:49', '2020-07-04 03:48:49'),
(19, 8, NULL, 'Nisti', 'Yulia', 'P', 'Islam', 'Bukittinggi', 'te5.jpg', '0000-00-00', '', '2020-07-04 04:44:18', '2020-07-29 04:44:33'),
(20, 14, NULL, 'Sherin', 'Cinta', 'P', 'Islam', 'Bukittinggi', NULL, '0000-00-00', '', '2020-07-09 11:28:14', '2020-07-09 11:28:14'),
(21, 100, NULL, 'Jarred Kilback', '', 'P', 'Budha', '437 Abigail Trace\nNorth Electaburgh, ND 83963', NULL, '0000-00-00', '', '2020-07-13 09:31:36', '2020-07-13 09:31:36'),
(22, 100, NULL, 'Rebekah Wisoky', '', 'P', 'Islam', '92073 Mabel Field\nLake Claire, TN 30844-9162', NULL, '0000-00-00', '', '2020-07-13 09:31:36', '2020-07-13 09:31:36'),
(27, 100, NULL, 'Jazmyn Bradtke', '', 'P', 'Budha', '45496 Juliet Trail\nNorth Carlotown, NC 72292', NULL, '0000-00-00', '', '2020-07-13 09:31:36', '2020-07-13 09:31:36'),
(28, 100, NULL, 'Gabe Borer', '', 'L', 'Katolik', '31816 Howe Lodge Apt. 412\nMosesport, AZ 76893', NULL, '0000-00-00', '', '2020-07-13 09:31:36', '2020-07-13 09:31:36'),
(30, 100, NULL, 'Mr. Joseph Wuckert', '', 'P', 'Hindu', '305 Hildegard Trail\nPort Chetside, WY 08062-8001', NULL, '0000-00-00', '', '2020-07-13 09:31:36', '2020-07-13 09:31:36'),
(31, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(32, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(33, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(34, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(35, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(36, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(37, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(38, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(39, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(40, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(41, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(42, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(43, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(44, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(46, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(47, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(48, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(49, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 05:42:56', '2020-10-01 10:21:17'),
(65, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 06:10:25', '2020-10-01 10:21:17'),
(66, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 06:10:25', '2020-10-01 10:21:17'),
(67, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 06:18:04', '2020-10-01 10:21:17'),
(68, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 06:18:04', '2020-10-01 10:21:17'),
(69, 0, NULL, 'Fery', 'Ferdian', 'L', 'Islam', 'Padang', '1.png', '1997-08-08', 'Chaniago', '2020-07-14 06:18:04', '2020-10-01 10:21:17'),
(70, 18, NULL, 'Wahyu', 'Putra', 'L', 'Islam', 'Bukittinggi', NULL, NULL, '', '2020-07-14 06:18:52', '2020-07-14 06:18:52'),
(72, 20, NULL, 'Leo', 'Messi', 'L', 'Kristen', 'Argentina', NULL, NULL, '', '2020-07-14 08:51:24', '2020-07-14 08:51:24'),
(73, 21, NULL, 'Ramadhania', 'Khair', 'P', 'Islam', 'Bukittinggi', NULL, NULL, 'Minang', '2020-07-14 23:50:40', '2020-07-14 23:50:40'),
(74, 22, 'siswa', 'Yandri', 'Syanurdi', 'L', 'Islam', 'Bukittinggi', 'yandris.png', '1970-01-01', 'Chaniago', '2020-08-14 01:49:56', '2020-10-13 13:28:52'),
(75, 32, 'siswa', 'Fery', 'Ferdian', 'L', 'Islam', 'Bukittinggi', '1.png', '1970-01-01', 'Chaniago', '2020-09-24 02:16:28', '2020-10-01 11:00:37'),
(76, 33, 'guru', 'wibuh', 'wibuh', 'L', 'islam', 'jepang', NULL, NULL, 'Batak', '2020-09-24 02:21:37', '2020-09-24 02:21:37'),
(77, 34, 'siswa', 'Livea', 'Nindy', 'P', 'Islam', 'Padang', '5.png', '1977-06-11', 'Chaniago', '2020-09-24 03:36:49', '2020-10-01 10:59:03'),
(78, 35, 'admin', 'sagiri', 'sagiri', 'L', 'Islam', 'Padang', 'english.png', NULL, 'pisang', '2020-09-24 03:43:04', '2020-09-24 03:43:04'),
(79, 36, 'admin', 'yuiga', 'yuiga', 'L', 'islam', 'padang', 'books.png', NULL, 'batak', '2020-09-24 03:45:01', '2020-09-24 03:45:01'),
(80, 37, 'admin', 'hachiman', 'hachiman', 'L', 'islam', 'padang', 'blog.png', NULL, 'batak', '2020-09-24 03:49:11', '2020-09-24 03:49:11'),
(81, 38, 'admin', 'violet', 'violet', 'L', 'Islam', 'violet', 'book(2).png', NULL, 'violet', '2020-09-24 03:59:57', '2020-09-24 03:59:57'),
(82, 39, 'admin', 'violet', 'violet', 'L', 'Islam', 'violet', NULL, NULL, 'violet', '2020-09-24 04:05:37', '2020-09-24 04:05:37'),
(83, 40, 'siswa', 'Sarwanto', 'Ilham', 'L', 'Islam', 'Padang', '7cc0ec1782987a2cda34bad6a83a7270.jpg', '1970-01-01', 'Chaniago', '2020-09-24 04:06:30', '2020-10-01 11:02:35'),
(86, 43, 'admin', 'yukino', 'yukino', 'P', 'islam', 'Padang', 'iseng3.JPG', NULL, 'Batak', '2020-09-24 04:58:06', '2020-09-24 04:58:06'),
(87, 44, 'admin', 'yukino', 'yukino', 'L', 'islam', 'padang', 'iseng3.JPG', NULL, 'batak', '2020-09-24 05:01:20', '2020-09-24 05:01:20'),
(88, 45, 'admin', 'wahyuh', 'wahyuh', 'L', 'Islam', 'Padang', 'iseng3.JPG', NULL, 'Batak', '2020-09-24 05:05:26', '2020-09-24 05:05:26'),
(90, 47, 'siswa', 'Widuri', 'Ulhafidzah', 'P', 'Islam', 'Bukittinggi', '7.png', '1970-01-01', 'Chaniago', '2020-09-25 02:24:55', '2020-10-14 13:02:24'),
(96, 53, 'siswa', 'Yandri', 'Syanurdi', 'L', 'Islam', 'Bukittinggi', 'yandris.png', '1997-12-10', 'Chaniago', '2020-09-25 05:09:31', '2020-10-01 10:54:25'),
(99, 57, 'admin', 'selesaih', 'selesaih', 'P', 'Kristen', 'Bukittinggi', 'welcomeh.png', '1970-01-01', 'Chaniago', '2020-09-25 08:39:09', '2020-09-25 11:51:28'),
(100, 58, 'siswa', 'Sannia', 'Lauren', 'P', 'Islam', 'Padang', '2.png', '1997-07-12', 'Chaniago', '2020-09-25 08:40:05', '2020-10-01 10:55:39'),
(101, 59, 'admin', 'susanto', 'susanto', 'L', 'Islam', 'Padang', 'edita.JPG', '1970-01-01', 'Batak', '2020-09-25 12:00:56', '2020-09-25 12:00:56'),
(102, 60, 'admin', 'susanti', 'susanti', 'L', 'Islam', 'Padang', 'haha.JPG', '1970-01-01', 'Batak', '2020-09-25 12:01:49', '2020-09-25 12:01:49'),
(112, 84, 'guru', 'Yandri', 'Syanurdi', 'L', 'islam', 'Bukittinggi', 'logoyandri.png', '1970-01-01', 'Chaniago', '2020-09-26 05:32:30', '2020-10-13 13:30:19'),
(113, 85, NULL, 'wulan', 'widuri', 'P', 'Islam', 'Bukittinggi', NULL, NULL, 'Chaniago', '2020-10-13 05:08:58', '2020-10-13 05:08:58'),
(114, 86, NULL, 'wulan', 'widuri', 'P', 'Islam', 'Bukittinggi', NULL, NULL, 'Chaniago', '2020-10-13 05:09:40', '2020-10-13 05:09:40'),
(116, 88, 'admin', 'sintiabel', 'sintiabel', 'L', 'Islam', 'sintaia', 'akunt.png', '1970-01-01', 'sintaia', '2020-10-13 05:16:25', '2020-10-13 05:16:25'),
(117, 89, 'admin', 'Raihan', 'Raihan', 'L', 'Islam', 'Bukittinggi', 'yandrianimated.jpg', '1970-01-01', 'Chaniago', '2020-10-13 05:17:48', '2020-10-13 05:18:36'),
(125, 97, 'admin', 'obama', 'obama', 'L', 'Islam', 'Bukittinggi', 'yandris.png', '1970-01-01', 'Chaniago', '2020-10-14 13:05:41', '2020-10-14 13:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `skor_game`
--

CREATE TABLE `skor_game` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `skor` varchar(244) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skor_quiz`
--

CREATE TABLE `skor_quiz` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `skor` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tingkat`
--

CREATE TABLE `tingkat` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tingkat`
--

INSERT INTO `tingkat` (`id`, `nama`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'TK', 'Taman kanak-kanak', 'tk.jpg', '2020-07-29 09:56:54', NULL),
(2, 'SD', 'Sekolah Dasar', 'sd.jpg', '2020-07-29 09:56:54', NULL),
(3, 'SMP', 'Sekolah Menengah Pertama', 'smp.jpg', '2020-07-29 09:56:54', NULL),
(4, 'SMA', 'Sekolah Menengah Atas', 'sma.jpg', '2020-07-29 09:56:54', NULL),
(5, 'UMUM', 'Sekolah Tingkat Umum', 'umum.png', '2020-07-29 09:56:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `gambar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Basrul', 'rolloic@gmail.com', NULL, '$2y$10$Mc618EhNOQo50Rbsdzoa3ePwIBR.DDDMbRssBBNtGH3gjNhOwf62S', 'uploads/default.png', 'aMgKC1rpJ58haWxaDq3NFLZbcc1IsphmlgX2iK6vZSM08XXcUxGGygsbcBFg', '2020-06-30 22:35:08', '2020-06-30 22:35:08'),
(2, 'admin', 'Yandri Syanurdi', 'yandri@gmail.com', NULL, '$2y$10$b/Y/FpGoHmgREcZ2M9QKruedN4eely/a7Sv5hYRMfycevW/5/yVTG', 'uploads/921239412_1602724250.jpeg', 'hSk1wdNgdZglDdahl31uSjidc4y2sVgj7GAZX0kRahQsRUaIUsBLnsUSPHO5', '2020-06-30 23:22:04', '2020-10-14 18:25:48'),
(4, 'siswa', 'Delvi Wulandari', 'delvi@gmail.com', NULL, '$2y$10$vy5rNyKPk3MISosgBu/vpevuxHOtOUzn1/4rJhOkUJi4pWvon4ISO', 'uploads/default.png', '4QiVzuLx4CGLGoTMP2zqsxwamRLRSHO6LkvLKEsQbnQyHYUe9efXEKicSxSG', '2020-07-04 00:23:51', '2020-07-04 00:23:51'),
(7, 'siswa', 'Siska', 'siska@gmail.com', NULL, '$2y$10$vwoaTK9qSPX7Jpz2688LZu.zGTaRTzoAgjPsgbxO9d.GvUP6CM.u2', 'uploads/default.png', 'nbbYxYzCsAtA3PhN9zdD1GjzFF3oYsn91tqsoyisbcuq2fQEBKdsVlHatYxq', '2020-07-04 03:48:49', '2020-07-04 03:48:49'),
(8, 'siswa', 'Tiwi', 'tiwi@gmail.com', NULL, '$2y$10$Rq27QVA2vHJhlL70FqmqsOoe0ADqZFld4xV2uiCwSA7KJOKjWBDZ.', 'uploads/default.png', 'BPYMe7uJ83kryVFeX2Dmom8qOuMOMmTMtidaLvTWVdMiF4Gfvripbr2bbhnh', '2020-07-04 04:44:18', '2020-07-04 04:44:18'),
(11, 'siswa', 'Ranih', 'rani@gmail.com', NULL, '$2y$10$7trbWLvylocxbQAIwl9u4.R2CU4g4Uj0OCPfkZ6Bp9eCk4LQf9M2y', 'uploads/default.png', 'Vobp3LNRTrFhyQdbJcuau9dCVyHnMIX2hePtInQaw7VLoDZumINfupnT4hzD', '2020-07-07 23:02:53', '2020-07-07 23:02:53'),
(12, 'siswa', 'Ilham', 'ilham@gmail.com', NULL, '$2y$10$H9XZVdND6lG.Vsk/JrMOLOPv3uZPhSzE7ioQsJQ7qG.SaGbTgLExG', 'uploads/default.png', 'u5IeR7oarPAGdf8OWuSRQS2dgkjKTVmTPDdNiBKZVi6iJ90Mg5nUWgfzYOeX', '2020-07-07 23:03:33', '2020-07-07 23:03:33'),
(13, 'siswa', 'Nurul', 'nurul@gmail.com', NULL, '$2y$10$gizI175yaBeSMEudTq643.7sZMJKzQE3CFuj3NjyJRDW5TzaaMEM2', 'uploads/default.png', '1zkaJvwrcjlRebnNT8j2uI0olSUsK9S1AytLp2LzeiOhAUdH5Bpp5Pqp3gr0', '2020-07-07 23:39:53', '2020-07-07 23:39:53'),
(14, 'siswa', 'Sherin', 'sherin@gmail.com', NULL, '$2y$10$xub8gPTgSjaT/hAAEFgwK.XYrj4c.YdSjLtedXToLHPMngVMoqqTC', 'uploads/default.png', 'ZppVG8RN4aPGDEEvT3zPpHl1waGjMrJjeWq97OQPN8SbfRTaF2oiq3uD0QnH', '2020-07-09 11:28:14', '2020-07-09 11:28:14'),
(15, 'siswa', 'Annisa', 'annisah@gmail.com', NULL, '$2y$10$9YjOr7JDcjbgeqIpettkBOwMLxj1RUCOnqjGArO0AU7ajRKnwEyEK', 'uploads/default.png', 'CRaYZhDavwJqA45DJUG9mj17B7vmsQ3KZk0xy66RuXkd9BjNLxDiPvABAL7n', '2020-07-14 05:46:18', '2020-07-14 05:46:18'),
(16, 'siswa', 'Annisa', 'icha@gmail.com', NULL, '$2y$10$6Xt69KTNhFno3AzB26j8xuOMwfBOXUzu21F.X1SFhXy2LuGJqHR/2', 'uploads/default.png', 'mSgTx7aosL4zUHDIAcvss5dtr6SwbkqA5P91vWLI9QdRLBcLIt8e656q8AEn', '2020-07-14 05:51:35', '2020-07-14 05:51:35'),
(17, 'siswa', 'Annisa', 'icha123@gmail.com', NULL, '$2y$10$CrLKDlwV14VOYVVEm5Ii7OEXAFe87wtLIpIZD3Ad/CXzqFSJuUTGG', 'uploads/default.png', 'VL56rWrSp02DP1t3l52LiQX450jPBJeR0zKZ2umAaTR7w75YII1RXkmA4pqm', '2020-07-14 05:56:31', '2020-07-14 05:56:31'),
(18, 'siswa', 'Wahyu', 'wahyu@gmail.com', NULL, '$2y$10$C/TpqYRQciRjTFRzI5OzqO2X8XRIIyvhNMemaF0wAVmQXPpEOa3QS', 'uploads/default.png', 'DpVoaBarhtvMQ0jCI8GnkIEh7ZOicX80ypzdHUXAPCGiL4PL8CFJbFgTLiuL', '2020-07-14 06:18:52', '2020-07-14 06:18:52'),
(20, 'siswa', 'Leo', 'syanurdi.yandri34@gmail.com', NULL, '$2y$10$nYB0DsYsNNqZ6hcdThqEXeWyvz1MVxvJBu1KS3c3uIiV.FSBokkpO', 'uploads/default.png', 'v5WyVL8P9jcKnQKvjMB966Wbmd3wZCDwbj5fPJxkzrenGJgSN2WU5slMPQJB', '2020-07-14 08:51:24', '2020-07-14 08:51:24'),
(21, 'siswa', 'Ramadhania', 'rama@gmail.com', NULL, '$2y$10$yRHBfnZ.Gw974cx9YXpVhO3D2uazkr6.hUBbOwb1rL1TqhoNxHsdq', 'uploads/default.png', 'pdKEFPdB3GxYQzpsoMXhosjz0Eip2z5tKW9SslXFtX84DoRuZPVCZaBMmYAe', '2020-07-14 23:50:40', '2020-07-14 23:50:40'),
(22, 'siswa', 'Yandri Syanurdi', 'yandris@gmail.com', NULL, '$2y$10$ASdvlXGOMNXWjLGNv01xruLSe7fV8SO5HkHm.GxD7K9P3R/S5Mr/C', 'uploads/default.png', 'o2N6qvmlOSxV1D8OPy0IZhZTL9RgS5QEUdXeKMbPEnk2V7l2peXkWuSmlfU3', '2020-08-14 01:49:56', '2020-10-13 13:28:52'),
(25, 'siswa', 'noviah', 'noviah@gmail.com', NULL, '$2a$10$ke8MwfW5ae4935UvA0/abu/lKqJNp.Fc/RzsQHGy.bRyJ8oF1A5NC', 'uploads/default.png', 'XfFwiX59dC1vWF5apUglVL6yXBze05ylgsehq1I0uFuxQU0P3YqLsiJWbku5', '2020-08-28 13:46:30', '2020-08-28 13:46:42'),
(31, 'siswa', 'mantan', 'mantanz@gmail.com', NULL, '$2a$10$XSgSMU8tHIrRy6uJW1LDL.ntcHa6jOGC3/gze.UqpKoS9X2GLIWDu', 'uploads/default.png', 'XfFwiX59dC1vWF5apUglVL6yXBze05ylgsehq1I0uFuxQU0P3YqLsiJWbku5', '2020-08-28 09:06:37', '0000-00-00 00:00:00'),
(32, 'siswa', 'tesla', 'tesla@gmail.com', NULL, '$2y$10$uOThNQHi56G7cVoE5YNkTOK4Ya16Alg/na7LVhQ00j16jQ/Pkkuy6', 'default.png', 'W14vM3VMhWeYLhZxfwxF9guFABV7kE4wkhWFFAkYBshDBfGZ5JUvta3rUVLU', '2020-09-24 02:16:28', '2020-09-24 02:16:28'),
(33, 'guru', 'wibuh', 'wibu@gmail.com', NULL, '$2y$10$Qek0cvxysoHqZmp4MygtjeeuMBDQERb.tZMp991sjEhFyhWLVWf/q', 'default.png', 's7DfLukuPNphh1bRvRa6fV9bLbxUY6dTdnlGAb2EtiTAuUH4D8vviTNWL7hT', '2020-09-24 02:21:37', '2020-09-24 02:21:37'),
(34, 'siswa', 'otakuh', 'otakuh@gmail.com', NULL, '$2y$10$S/y3FmG/skvXA07KfUMOfO4dESp6iPe3rl.d6K6nS61AaSiaxqB4y', 'default.png', 'VrgsgdIQ0juF1Tccx8l0aQ0K0g8ySjEfR0E2PGsWiQMmiTpT3LaVhZfsJWDI', '2020-09-24 03:36:49', '2020-09-24 03:36:49'),
(35, 'admin', 'sagiri', 'sagiri@gmail.com', NULL, '$2y$10$Aj68L22Bi6rkIVAaGieJX.sV3K7Oz/ZZcErSj/wgNF2ZwjQ8sK74W', 'default.png', 'eYC828tu6hISjKyZnI4lNoa57kHvKr7M7pLPK8Su2Bmxmyjff5kHMWT38lXv', '2020-09-24 03:43:04', '2020-09-24 03:43:04'),
(36, 'admin', 'yuiga', 'yuiga@gmail.com', NULL, '$2y$10$N1QMeeIv/7o9JIO4W8TcOu4puH0/XPP5YI/OkupalND9n2EZNemnW', 'default.png', 'ffQw9saJCOH0YNV4xbf4eA8VrN4E2tsfdRlWZtOHEJr9VfJCmKEN1rUgAq2I', '2020-09-24 03:45:01', '2020-09-24 03:45:01'),
(37, 'admin', 'hachiman', 'hachiman@gmail.com', NULL, '$2y$10$.PjEjLgs/064L/fQF1MMUu1hd3QMGaASCdbFnRnAy8kgy.M74HPwO', 'default.png', 'r2QtAxcuWefMEvlICevnKfgYKhkOjiOaXhSnY2VT8wKlKUlj125G9ttBUMIw', '2020-09-24 03:49:11', '2020-09-24 03:49:11'),
(38, 'admin', 'violet', 'violet@gmail.com', NULL, '$2y$10$6bcIZBt8O03AoY2zG5YqpeF5IEc03Fzv6HNX4mLt5/j0zJRdqtLlC', 'default.png', 'uqPwd3YUvge5D9c3Hb0ICmTjl5McUlGiYiX8OmtzyHfQXkZXGwR8Amj90BgB', '2020-09-24 03:59:57', '2020-09-24 03:59:57'),
(39, 'admin', 'violet', 'violesst@gmail.com', NULL, '$2y$10$MLwGtGC6nZdlUOUtZSOXduVAdppEnq6Yqq5iQ4PKsn9TK/u2uScL2', 'default.png', 'zjarFRSrY2o6Wgultngw1TAPFchNjas77eSDxBoMr3XR9Kcb7EFqf4hvhklR', '2020-09-24 04:05:37', '2020-09-24 04:05:37'),
(40, 'siswa', 'woiiii', 'woiiii@gmail.com', NULL, '$2y$10$7vF.XsSlmzHqUMG/9byyHOVOyV9HaVjml.12WRxg6kTS9y/ncFuTi', 'default.png', 'fzrabJD3hvAgMkasJWYKOnaJzd73aUnpbMAoKuHsoAjoVp43YI9H7uTJ5nny', '2020-09-24 04:06:30', '2020-09-24 04:06:30'),
(41, 'siswa', 'upins', 'upins@gmail.com', NULL, '$2y$10$zywAUl8s3zEs0Bmcf40w.uuI7NmJUH6a.OZ6nEhqALug3sYv7On5i', 'default.png', 'KS4Px1vU2ghYHFAGtGAMMJfoJ7Yw6sxgknRHdZZw9Tq3VW6SYjlTdA17Cs07', '2020-09-24 04:11:35', '2020-09-24 04:11:35'),
(43, 'admin', 'yukino', 'yukino@gmail.com', NULL, '$2y$10$x/.WrD4/0L5hIGQvLLytqeR5himGscmZTCEsZ6upkuKdlcKwKJSkq', 'default.png', 'xhbyW3Q2QJjXu1H8Q7aasXUA2aExr88A3sKXhYRfM1VJtRYPLLBYMBJ8VViI', '2020-09-24 04:58:06', '2020-09-24 04:58:06'),
(44, 'admin', 'yukino', 'yukinon@gmail.com', NULL, '$2y$10$2sM3oQwo1oyND2pDwhHkVuSNLIW.u35SFp5f.KB3PMalftmkyNZni', 'default.png', 'eLoRe1vFkNGciVP6Mgn0CnYl5ykb0hwP0TOvtHbGyP1IrnADtKb34vt0rA0f', '2020-09-24 05:01:20', '2020-09-24 05:01:20'),
(45, 'admin', 'wahyuh', 'wahyuh@gmail.com', NULL, '$2y$10$RaFLhV.LIHXe0.16AaJvxeMaSuy.LN/LnmvyuL7xAC5.zfX6t.bWa', 'default.png', '3Zxn6FCtftQrZBlCOPCe1bmdbl43pUGHBsyhm4p5FhC2RO1b61h5vVvSgzLX', '2020-09-24 05:05:26', '2020-09-24 05:05:26'),
(46, 'admin', 'iroha', 'iroha@gmail.com', NULL, '$2y$10$/WXoOGiX7gxgtnq4z5CxzuMFn6O2F.ngq7BXkEfnTHCbIns0OEdyG', 'default.png', 'aaPozoGkG6BLnPGhVUvFKbk0gEacuCpXqmtosS4JfUxeGNrwvgbIHEDXFEgm', '2020-09-25 01:54:18', '2020-09-25 01:54:18'),
(47, 'siswa', 'ocikuh', 'ocikuh@gmail.com', NULL, '$2y$10$t5t1P.gOZ1zdf0whO7N56.WIFLLO9d03kW89B7J1TUQyeSYXT4CJy', 'default.png', '8j0uzzCa7BHl5wfJDWAZvmztHGXKa6KIt4ZbFuWBmxRVDScFeOaC0nDWmdDR', '2020-09-25 02:24:55', '2020-09-25 02:24:55'),
(48, 'siswa', 'niicah', 'niicah@gmail.com', NULL, '$2y$10$oABAPW2PYSL6tPVSi2OYP.TFf02tj1yW/TZWNicEMZZFg3MHzkVwy', 'default.png', '3eYYu0tbmKYoaiyC6sXS3iLDeG2s5k60N2rJLgTWoBW9omtbqvxdI5mUHgim', '2020-09-25 02:25:47', '2020-09-25 02:25:47'),
(52, 'admin', 'irohasu', 'irohasu@gmail.com', NULL, '$2y$10$sP1EtgP2Nnh.TqYlflpVFunHnaOVRWBmMb9BRGoZzp8Imhh6CCE7.', 'default.png', 'T1DRfFshxAyqqIuXXbN5rw6msHzcjP1W73XHA8Tku8nGuSRNIndS7TcXbKOw', '2020-09-25 04:25:10', '2020-09-25 04:25:10'),
(53, 'siswa', 'agustino', 'agustino@gmail.com', NULL, '$2y$10$J.57IyJgBxoUwdIqnD/44OGol9QN66kXCrwb4XRgjzNikW9aWKR3G', 'default.png', 'KNlr1UzagBele5YXa9ZaHvOPGrzTA4aSPTtrwpJLsQcsBAXtyaFBH0Caad7u', '2020-09-25 05:09:31', '2020-09-25 05:09:31'),
(54, 'admin', 'irohasu', 'irohasus@gmail.com', NULL, '$2y$10$.MDQoZ9drGkvaNpC/A4oeOg0NWlQ8bcxsx/Dx0sxDGGOtTj3cO.kK', 'default.png', '4ubl0x8gbwMeMkYHQbdSk54KTIgCV6AgoHGXtF8P7IR4CpB69PTz3ENO6pyG', '2020-09-25 05:14:43', '2020-09-25 05:14:43'),
(55, 'admin', 'yuisan', 'yuisan@gmail.com', NULL, '$2y$10$1gt9HGmrIXgHdxh/90GjwO4QbM0oJleHWhaE.//ywYNGpv9K.rFfW', 'default.png', 'B0n8RJWn4SEu97kqu0BigS1UdP2NcpeSpSRts9vgRGUox9mJUwzxP12HzHpg', '2020-09-25 08:30:03', '2020-09-25 08:30:03'),
(57, 'admin', 'selesai', 'selesai@gmail.com', NULL, '$2y$10$KJGgTdX9Z6zCyHzvrgnM5uaXqztWRbaWB8SeS7E58.R6SoSpybASq', 'default.png', 'fvgLa299WvyflXyflTcetXwT4UEDTTL7h5230WIx7gHsKamixUKz5ByWJbPW', '2020-09-25 08:39:09', '2020-09-25 08:39:09'),
(58, 'siswa', 'maaff', 'maaff@gmail.com', NULL, '$2y$10$MZQI4Lb.ulKueaOE1PMD3eWvQF1ahGSxh9GskYUzzygtoM0HL/TYy', 'default.png', 'DUNQNnXFZ7WX3sZLYRcFpBX7kWzlVNWQB7w3byzLRVKf1EusECpPjqC1O98C', '2020-09-25 08:40:05', '2020-09-25 08:40:05'),
(59, 'admin', 'susanto', 'susanto@gmail.com', NULL, '$2y$10$eo30w01XjNRz9m4AM/LbleN0t37xSi1bp7V5wJJ4o5rF4oeScfpGi', 'default.png', 'kjkwUuVV2sfvDJIRwvSu6hIugZUp2UkejMOraoMVf2ao3oElXtOZP1HPCu01', '2020-09-25 12:00:56', '2020-09-25 12:00:56'),
(60, 'admin', 'susanti', 'susanti@gmail.com', NULL, '$2y$10$NxPHVu6XZ8QUOnGxr00dF.YGQdPtQnP8G6.stMvAZczGRr0H4IJIe', 'default.png', 'M7gNMaRpJJwugL6eEBq0uRkHGCQaMO04iZUDtHe80FOtUnXSRAukYdOaoapA', '2020-09-25 12:01:49', '2020-09-25 12:01:49'),
(61, 'admin', 'saruwanto', 'saruwanto@gmail.com', NULL, '$2y$10$qng8q6VKbHVVF6Mn9xayOOU1OFkp8EN/cj2lj9f6uijOP7GQTgiki', 'default.png', 'OX8Q5Ozr22FIbBdeichZVTW3LpX1635eXsXnD9XdbLCWP6c4N9HYHCMN1yUb', '2020-09-25 12:03:57', '2020-09-25 12:03:57'),
(62, 'admin', 'sulehh', 'sulehh@gmail.com', NULL, '$2y$10$W8k6FJpkDQvrHHB4xzAHq.B.MFwAi3XL3ZgtQaqjLKUbECsnmgX3u', 'default.png', 'zElYUDDmKPbce93NrHlXJUBZfB2C7aKYc4EkVco1O1pT1xLONybNq0ljzFED', '2020-09-25 22:54:40', '2020-09-25 22:54:40'),
(63, 'admin', 'martah', 'martah@gmail.com', NULL, '$2y$10$aQINd2OOlNlKX2Y7mqVOGegjzSdvr5ngHqVjxaA31uGXGqN5c3kse', 'default.png', '59xrxF2sfhDEEVQZRTgxwTA9ZgjvNyJsweYXrXJMmx28DPXLt1vyT628r6Yh', '2020-09-25 23:03:19', '2020-09-25 23:03:19'),
(64, 'admin', 'mistah', 'mistah@gmail.com', NULL, '$2y$10$BI/wrf3SiZoBKhVppxnSj.ktnQzbqjd3LIMdjnXxTay/yAWKbf6f2', 'default.png', 'dfFf3hBwUNU4dKQMUmfyvPjpq8LqyHGz8TvumAlZVWkniZAbCqN6VLZwqaav', '2020-09-25 23:07:12', '2020-09-25 23:07:12'),
(65, 'admin', 'widuri', 'widuri@gmail.com', NULL, '$2y$10$dApGI4F.jC8Z7ln2vXq18.Kes3ZrIqAlVm4oLiqs3BvObzRQ7xcou', 'default.png', 'm10iqZDH0hJmJ8q8wCmvnfDUWdOMByQePYLXmWqJcqrDDaSkq0Yhb4b1d95r', '2020-09-25 23:11:30', '2020-09-25 23:11:30'),
(66, 'admin', 'isrsyad', 'isrsyad@gmail.com', NULL, '$2y$10$5Qy.3a9A0FmOIhMEvTH3Z.CQNs4jKPR7UzW5BvBIPBiRKqkMKvqya', 'default.png', 'MRJQyii2anxYf2qCIH1O2RDyEWLGBZgPpDhwGP5Nypf4CGyUN7IDELihw7hW', '2020-09-25 23:12:57', '2020-09-25 23:12:57'),
(67, 'admin', 'saburo', 'saburo@gmail.com', NULL, '$2y$10$Kn9JFdvzxaCLXw68mojq7.4myQyKKoAfnbKJU.vUMuHW2BkjN1uyy', 'default.png', '79Xrd9LXkKyyckOgGGTlrbdFHjoE2NcI5EzOuZs3YjivFUXl33zoPHuPQFrh', '2020-09-25 23:16:09', '2020-09-25 23:16:09'),
(68, 'admin', 'biawak', 'biawak@gmail.com', NULL, '$2y$10$TMI9HrUb7O8ldxWWqstF.OxTIC9PZU5pvSfKaeBtAkV7smCDAUJ.m', 'default.png', 'xHWT3D7JcN8J6UI3ZcKsX6kskZ86e2F22cMJuWcSQDPHPieF1PfXkiNFTyAj', '2020-09-25 23:18:43', '2020-09-25 23:18:43'),
(69, 'admin', 'windwo', 'windwo@gmail.com', NULL, '$2y$10$zcDf0ke4fLWLQExx1S.xI.bBE.ClNIXlxMLyFzo/rF9JXbH9B1NpW', 'default.png', 'DpP4IfQoKvJRvszdT1TFwAZHTFDbSbLY1f59at3IvV0Ovz4lM6seFJ0hO52O', '2020-09-25 23:23:00', '2020-09-25 23:23:00'),
(70, 'admin', 'ddddd', 'ddddd@gmail.com', NULL, '$2y$10$iitrAFA3eAUN0KPDQclusOKS5HpkHJJMLq4F5KkJm3d0bpA9tD.S.', 'default.png', '2OotrGiWnI5M99vWldo6iGBi7LM6roFB4syrar02pkmuD4t0YnCxmqCkajDs', '2020-09-25 23:26:20', '2020-09-25 23:26:20'),
(71, 'admin', 'bileeh', 'bileeh@gmail.com', NULL, '$2y$10$Ai6H37IvZkkjEkwvl7ru4eTATLHpOoT0D5I3NVj6uLDcg0Aof./3q', 'default.png', '06u2qVvH8uBocJq8QU4Dx7ivp4YEguUjUqCvETQpfamqijG7lXjMh46IZBTG', '2020-09-25 23:32:36', '2020-09-25 23:32:36'),
(72, 'admin', 'Widyah', 'widya@gmail.com', NULL, '$2y$10$DY4diXiKJ3I4bEI/QbCU6Oqe1EqopB77y8Vic7cvzgK0eOhCzcU6G', 'default.png', 'cb8asrcri1orzVlldr1c1cplglrzv7jm2yooKWqGwgNLsxGJu4vARgRWGfZs', '2020-09-25 23:42:30', '2020-09-25 23:42:30'),
(73, 'admin', 'adelia', 'adelia@gmail.com', NULL, '$2y$10$MK4WOeCmNd2v.wPhI70lR.H4sUpQY1nRsO/SXcbINiAjvY9h6Bb.S', 'default.png', 'zjwWvMZDfGFKb5R32bE1xL0v7XkFyaNeARlGQIShrpnF7XCgeDDhz3Wwmv36', '2020-09-25 23:43:46', '2020-09-25 23:43:46'),
(84, 'guru', 'Yandri Syanurdi', 'yandrisy@gmail.com', NULL, '$2y$10$4FjSzm5rn5MVjbz8DUGTXeTq3ktQ1O5NM9ret20ADLQs2XlVSzy/C', 'default.png', 'sjXVZr0geDrh7EWpkQYzFjaHyTk58uCSTXFn2V48aCNKyRuD42mQ2L6AG7D3', '2020-09-26 05:32:30', '2020-10-13 13:30:19'),
(85, 'siswa', 'wulan', 'widurih@gmail.com', NULL, '$2y$10$2gXU01YzwIURxONOqm83Veh/zEsEdA/EOpVBD4Snd9BJ7kQz9wxam', 'default.png', 'BGkU4q0BlIesD09yUezc3W2aZ5mfLXnc8Avsz7IZTdPSf661erIh1Sx2ZmCr', '2020-10-13 05:08:58', '2020-10-13 05:08:58'),
(86, 'siswa', 'wulan', 'widuriz@gmail.com', NULL, '$2y$10$d81LMVFl8QIyH7rbjuHAKOZLTI02/BjGKQsqlmDP7LO0Fa5EPSoWW', 'default.png', 'a8a0U8RZojLEJby3UN8jfSoUciSw0OOKH5mTAwWdtjwpEbskKMCi0JnIiltE', '2020-10-13 05:09:40', '2020-10-13 05:09:40'),
(88, 'admin', 'sintiabel', 'sintiabel@gmail.com', NULL, '$2y$10$W5BLELlIygN8cf/aC7fcQOjADttRpJfFSOXYGIsVWY6l3V39PI1Fu', 'default.png', 'qu1flFnUCntfa9bYsYbMQO17CLDtiUBBorOkjC4taSqnxpaDgFoXZGS6HKrZ', '2020-10-13 05:16:25', '2020-10-13 05:16:25'),
(89, 'admin', 'Raihan', 'raihan@gmail.com', NULL, '$2y$10$r24LkGBU2ttiEreEmIz0A.gbA5Fg.K4hz6EURByC73rItfDG0CxAm', 'default.png', 'kYD774iOYQRF9utxMFSFCqbt0nUC9H03bZ3HWb9u0D2GfnAoXvzDGxiQWgXj', '2020-10-13 05:17:48', '2020-10-13 05:17:48'),
(94, 'siswa', 'udins', 'udins@gmail.com', NULL, '$2y$10$vXFUE6sEhPCDK/EAbA.xre3mZmR9PvzCYMPwU.8wzODZiGykHyDXa', 'default.png', 'KJeqC7AbPgbKKZIMUHfBNVkXqalOoEAGY4ZRXnXWK4zCXeRwkhG44C212McQ', '2020-10-13 05:34:45', '2020-10-13 05:34:45'),
(97, 'admin', 'obama', 'obama@gmail.com', NULL, '$2y$10$d6XoARvNDQSvESNXlR6Y..BspvSZ.fFQlQ85iRE8Hn8KDCpaXOgmi', 'default.png', '6kCPCjSxnXwuy6D5rwPE36bNHoobbKkO8PCPTJjpXnrBD9snxlb1OR77p1UF', '2020-10-14 13:05:41', '2020-10-14 13:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `users_group`
--

CREATE TABLE `users_group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_depan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` datetime DEFAULT NULL,
  `suku` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_group`
--

INSERT INTO `users_group` (`id`, `user_id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `avatar`, `tgl_lahir`, `suku`, `created_at`, `updated_at`) VALUES
(1, 0, 'Basrul', 'Yandri', 'L', 'Islam', 'Depok', 'basrul.png', '0000-00-00 00:00:00', '', NULL, '2020-07-05 06:40:42'),
(2, 0, 'Dina', 'Ahmad', 'P', 'Islam', 'Jakarta', NULL, '0000-00-00 00:00:00', '', NULL, NULL),
(3, 0, 'Dimas', 'Haryono', 'L', 'Islam', 'Jakarta', NULL, '0000-00-00 00:00:00', '', NULL, NULL),
(4, 0, 'Ismi', 'Syafa', 'P', 'Islam', 'Bekasi', NULL, '0000-00-00 00:00:00', '', NULL, NULL),
(5, 0, 'Najwa', 'Aulia Haryono', 'P', 'Islam', 'Jakarta', NULL, '0000-00-00 00:00:00', '', NULL, NULL),
(6, 0, 'Salim', 'Ahmad', 'L', 'Islam', 'Bekasi', NULL, '0000-00-00 00:00:00', '', NULL, NULL),
(9, 0, 'Andi', 'Sulaeman', 'L', 'Islam', 'Bandung', NULL, '0000-00-00 00:00:00', '', '2020-06-30 03:59:18', '2020-06-30 03:59:18'),
(10, 0, 'Nana', 'Arnaeni', 'P', 'Islam', 'Purwakarta', NULL, '0000-00-00 00:00:00', '', '2020-06-30 04:07:18', '2020-06-30 04:07:18'),
(11, 0, 'Emil', 'Ahmad', 'L', 'Islam', 'Makasar', NULL, '0000-00-00 00:00:00', '', '2020-06-30 04:16:57', '2020-06-30 04:16:57'),
(12, 2, 'Yandri', 'Syanurdi', 'L', 'Islam', 'Bukittinggi', 'yandri.png', '0000-00-00 00:00:00', '', '2020-07-01 01:30:35', '2020-07-01 04:31:45'),
(13, 0, 'Ari', 'Kurniawan', 'L', 'Islam', 'Ciledug', NULL, '0000-00-00 00:00:00', '', '2020-07-03 08:29:20', '2020-07-03 08:29:20'),
(14, 3, 'Azil', 'Ilham', 'L', 'Islam', 'Bandung', NULL, '0000-00-00 00:00:00', '', '2020-07-03 08:55:59', '2020-07-03 08:55:59'),
(15, 4, 'Delvi', 'Wulandari', 'P', 'Islam', 'Pasaman Barat', NULL, '0000-00-00 00:00:00', '', '2020-07-04 00:23:52', '2020-07-04 00:23:52'),
(18, 7, 'Sistri', 'Indah', 'P', 'Islam', 'Pesisir', 'panel 03.jpg', '0000-00-00 00:00:00', '', '2020-07-04 03:48:49', '2020-07-04 03:48:49'),
(19, 8, 'Nisti', 'Yulia', 'P', 'Islam', 'Bukittinggi', 'te5.jpg', '0000-00-00 00:00:00', '', '2020-07-04 04:44:18', '2020-07-29 04:44:33'),
(20, 14, 'Sherin', 'Cinta', 'P', 'Islam', 'Bukittinggi', NULL, '0000-00-00 00:00:00', '', '2020-07-09 11:28:14', '2020-07-09 11:28:14'),
(31, 0, 'Agus Joko Susilo', 'h', 'L', 'ISLAM', 'Jl.Medan Merdeka Barat No. 13-14 Jakarta Pusat', NULL, '1999-03-01 00:00:00', '', '2020-07-14 05:42:56', '2020-08-20 08:05:24'),
(32, 0, 'Samuel Anderson', ' ', 'L', 'ISLAM', 'Jl. H.R. Rasuna Said Kav. 6-7 Kuningan Jakarta 12940', NULL, '1998-12-11 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(33, 0, 'Friyadi Simamora', ' ', 'L', 'ISLAM', 'JL. Saidi Bekasi Brat', NULL, '1999-09-08 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(34, 0, 'Pujianti', ' ', 'P', 'ISLAM', 'Komplek Aguna Rsidence Blok N No. 13', NULL, '2000-08-05 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(35, 0, 'Wahyu Nugroho', ' ', 'L', 'ISLAM', 'Perumahan Maharaja Depok', NULL, '2000-07-08 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(36, 0, 'Edwin Nurdiansyah', ' ', 'L', 'ISLAM', 'Jalan margonda Raya no.13', NULL, '2000-12-10 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(37, 0, 'Yopie Roy Munanto', ' ', 'L', 'ISLAM', 'Jl. Perisai 12A no 34 Bekasi barat', NULL, '1998-10-08 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(38, 0, 'Rahadian Rahim', ' ', 'L', 'ISLAM', 'Jalan Raya Bekasi Timur No. 86,  Cipinang Jakarta Timur', NULL, '2000-06-09 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(39, 0, 'Roby sugara', ' ', 'L', 'ISLAM', 'Jl. Gerbang Pemuda Senayan Jakarta no 60', NULL, '1998-12-11 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(40, 0, 'Awaluddin Siregar', ' ', 'L', 'KRISTEN', 'Jl. Jend. Basuki Rahmat No. 01', NULL, '1999-04-08 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(41, 0, 'Sumitro Ariadi', ' ', 'L', 'KRISTEN', 'Jl. Aruji Kartawinata No. 15', NULL, '2000-05-05 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(42, 0, 'Nindya rahyan', ' ', 'P', 'ISLAM', 'Jl. Ir. H. Juanda No. 10', NULL, '2000-07-08 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(43, 0, 'Deden Hermawan', ' ', 'L', 'ISLAM', 'Jalan Margonda Raya No.54, Depok - 16431', NULL, '1998-10-08 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(44, 0, 'wisnu koentjoro', ' ', 'L', 'ISLAM', 'Jl. Masjid No. 8', NULL, '2000-05-09 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(45, 0, 'Anisa ningsih', ' ', 'P', 'ISLAM', 'Jl. RA. Kartini No. 01 Batang', NULL, '1998-12-11 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(46, 0, 'Muhammad Ru\'yat', ' ', 'L', 'BUDHA', 'Jl. Pemuda No. 12, Blora - 58215', NULL, '1999-02-08 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(47, 0, 'Mala Kurnala', ' ', 'P', 'ISLAM', 'Jl. Jendral Sudirman No. 32 Cilacap, Jawa Tengah', NULL, '1999-03-01 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(48, 0, 'Fany surya', ' ', 'P', 'ISLAM', 'Jl. Gatot Subroto No. 6 Purwodadi Grobogan, Jateng', NULL, '1998-12-11 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(49, 0, 'Budi Karyanto', ' ', 'L', 'ISLAM', 'Kp. Sumur Jakarta Timur', NULL, '1999-05-04 00:00:00', '', '2020-07-14 05:42:56', '2020-07-14 05:42:56'),
(65, 0, 'Ranita Putri', ' ', 'P', 'ISLAM', 'Jl.Medan Merdeka Barat No. 13-14 Jakarta Pusat', NULL, '1999-03-01 00:00:00', '', '2020-07-14 06:10:25', '2020-07-14 06:10:25'),
(66, 0, 'Dora Gracia', ' ', 'P', 'ISLAM', 'Jl. H.R. Rasuna Said Kav. 6-7 Kuningan Jakarta 12940', NULL, '1998-12-11 00:00:00', '', '2020-07-14 06:10:25', '2020-07-14 06:10:25'),
(67, 0, 'Yolanda Velian', ' ', 'P', 'ISLAM', 'Jl. Taman Pejambon No. 6 Jakarta Pusat 10110', NULL, '2000-12-01 00:00:00', '', '2020-07-14 06:18:04', '2020-07-14 06:18:04'),
(68, 0, 'Ranita Putri', ' ', 'P', 'ISLAM', 'Jl.Medan Merdeka Barat No. 13-14 Jakarta Pusat', NULL, '1999-03-01 00:00:00', '', '2020-07-14 06:18:04', '2020-07-14 06:18:04'),
(69, 0, 'Dora Gracia', ' ', 'P', 'ISLAM', 'Jl. H.R. Rasuna Said Kav. 6-7 Kuningan Jakarta 12940', NULL, '1998-12-11 00:00:00', '', '2020-07-14 06:18:04', '2020-07-14 06:18:04'),
(70, 18, 'Wahyu', 'Putra', 'L', 'Islam', 'Bukittinggi', NULL, NULL, '', '2020-07-14 06:18:52', '2020-07-14 06:18:52'),
(72, 20, 'Leo', 'Messi', 'L', 'Kristen', 'Argentina', NULL, NULL, '', '2020-07-14 08:51:24', '2020-07-14 08:51:24'),
(73, 21, 'Ramadhania', 'Khair', 'P', 'Islam', 'Bukittinggi', NULL, NULL, 'Minang', '2020-07-14 23:50:40', '2020-07-14 23:50:40'),
(74, 22, 'Yandri', 'Syanurdi', 'L', 'Islam', 'Bukittinggi', 'yandris.png', '1970-01-01 00:00:00', 'Chaniago', '2020-08-14 01:49:56', '2020-10-13 13:28:52'),
(75, 34, 'Livea', 'Nindy', 'P', 'Islam', 'Padang', '5.png', '1977-06-11 00:00:00', 'Chaniago', '2020-09-24 03:36:49', '2020-10-01 10:59:03'),
(76, 40, 'Sarwanto', 'Ilham', 'L', 'Islam', 'Padang', '7cc0ec1782987a2cda34bad6a83a7270.jpg', '1970-01-01 00:00:00', 'Chaniago', '2020-09-24 04:06:30', '2020-10-01 11:02:35'),
(77, 41, 'upins', 'upins', 'L', 'islam', 'upins', 'hide.png', NULL, 'upins', '2020-09-24 04:11:35', '2020-09-24 04:11:35'),
(81, 53, 'Yandri', 'Syanurdi', 'L', 'Islam', 'Bukittinggi', 'yandris.png', '1997-12-10 00:00:00', 'Chaniago', '2020-09-25 05:09:32', '2020-10-01 10:54:25'),
(82, 58, 'Sannia', 'Lauren', 'P', 'Islam', 'Padang', '2.png', '1997-07-12 00:00:00', 'Chaniago', '2020-09-25 08:40:05', '2020-10-01 10:55:39'),
(83, 22, 'Yandri', 'Syanurdi', 'L', 'Islam', 'Bukittinggi', 'yandris.png', '1970-01-01 00:00:00', 'Chaniago', NULL, '2020-10-13 13:28:52'),
(84, 85, 'wulan', 'widuri', 'P', 'Islam', 'Bukittinggi', NULL, NULL, 'Chaniago', '2020-10-13 05:08:58', '2020-10-13 05:08:58'),
(85, 86, 'wulan', 'widuri', 'P', 'Islam', 'Bukittinggi', NULL, NULL, 'Chaniago', '2020-10-13 05:09:40', '2020-10-13 05:09:40'),
(89, 94, 'udins', 'udins', 'L', 'Islam', 'islam', 'yandrianimated.jpg', '1970-01-01 00:00:00', 'Chaniago', '2020-10-13 05:34:45', '2020-10-13 05:34:45'),
(90, 95, 'udins', 'udins', 'L', 'Islam', 'tes', NULL, NULL, 'tes', '2020-10-13 05:38:29', '2020-10-13 05:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_tingkat` varchar(255) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `user_id`, `nama`, `nama_tingkat`, `nama_mapel`, `deskripsi`, `video`, `created_at`, `updated_at`) VALUES
(9, 2, 'Bahasa Indonesia', 'SMP', 'Bahasa Indonesia', 'Bahasa Indonesia untuk siswa SD', '1596094067.mp4', '2020-07-30 00:27:47', '2020-07-30 00:28:49'),
(10, NULL, 'Belajar', 'SMP', 'Bahasa Indonesia', 'coba', '1596121958.mp4', '2020-07-30 08:12:38', '2020-07-30 08:12:38'),
(12, NULL, 'Matematika Dasar', 'SMA', 'Matematika dasar', 'mtk', '1596283759.mp4', '2020-08-01 05:09:19', '2020-08-01 05:09:19'),
(13, NULL, 'mtk', 'UMUM', 'Matematika dasar', 'tes', '1596681519.mp4', '2020-08-05 19:38:39', '2020-08-05 19:38:39'),
(14, NULL, 'Algoritma', 'SMP', 'Matematika dasar', 'MTK', '1598111786.mp4', '2020-08-22 08:56:26', '2020-08-22 08:56:26'),
(16, 84, 'Yandri Syanurdi', 'TK', 'Matematika dasar', 'tes', '1601038944.mp4', '2020-09-25 06:02:24', '2020-09-25 06:02:24'),
(17, 84, 'Trigonometri', 'SMA', 'Matematika dasar', 'Belajar TrigonometrI', '1601039147.mp4', '2020-09-25 06:05:47', '2020-09-25 06:05:47'),
(18, 84, 'Kalkulus', 'SMA', 'Matematika dasar', 'Belajar Kalkulus', '1601039178.mp4', '2020-09-25 06:06:18', '2020-09-25 06:06:18'),
(19, 84, 'Logaritma', 'SMA', 'Matematika dasar', 'Belajar Logaritma', '1601039514.mp4', '2020-09-25 06:11:54', '2020-09-25 06:11:54'),
(20, 84, 'Logika', 'SMA', 'Matematika dasar', 'Belajar Logika', '1601039587.mp4', '2020-09-25 06:13:07', '2020-09-25 06:13:07'),
(21, 84, 'Aljabar', 'SMP', 'Matematika dasar', 'Belajar Aljabar', '1601209685.mp4', '2020-09-27 05:28:05', '2020-09-27 05:28:05'),
(22, 84, 'Kabataku', 'SD', 'Matematika dasar', 'Belajar Kabataku', '1601304083.mp4', '2020-09-28 07:41:23', '2020-09-28 07:41:23'),
(23, 2, 'Yandri Syanurdi', 'TK', 'Matematika dasar', 'tes', '1601038944.mp4', NULL, NULL),
(24, 2, 'Trigonometri', 'SMA', 'Matematika dasar', 'Belajar Trigonometri', '1601039147.mp4', NULL, NULL),
(25, 2, 'Kalkulus', 'SMA', 'Matematika dasar', 'Belajar Kalkulus', '1601039178.mp4', NULL, NULL),
(26, 2, 'Logaritma', 'SMA', 'Matematika dasar', 'Belajar Logaritma', '1601039514.mp4', NULL, NULL),
(27, 2, 'Logika', 'SMA', 'Matematika dasar', 'Belajar Logika', '1601039587.mp4', NULL, NULL),
(28, 2, 'Aljabar', 'SMP', 'Matematika dasar', 'Belajar Aljabar', '1601209685.mp4', NULL, NULL),
(29, 2, 'Kabataku', 'SD', 'Matematika dasar', 'Belajar Kabataku', '1601304083.mp4', NULL, NULL),
(30, 22, 'Yandri Syanurdi', 'TK', 'Matematika dasar', 'tes', '1601038944.mp4', NULL, NULL),
(31, 22, 'Trigonometri', 'SMA', 'Matematika dasar', 'Belajar Trigonometri', '1601039147.mp4', NULL, NULL),
(32, 22, 'Kalkulus', 'SMA', 'Matematika dasar', 'Belajar Kalkulus', '1601039178.mp4', NULL, NULL),
(33, 22, 'Logaritma', 'SMA', 'Matematika dasar', 'Belajar Logaritma', '1601039514.mp4', NULL, NULL),
(34, 22, 'Logika', 'SMA', 'Matematika dasar', 'Belajar Logika', '1601039587.mp4', NULL, NULL),
(35, 22, 'Aljabar', 'SMP', 'Matematika dasar', 'Belajar Aljabar', '1601209685.mp4', NULL, NULL),
(36, 22, 'Kabataku', 'SD', 'Matematika dasar', 'Belajar Kabataku', '1601304083.mp4', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coba`
--
ALTER TABLE `coba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_ayat`
--
ALTER TABLE `daftar_ayat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_surat`
--
ALTER TABLE `daftar_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kamus`
--
ALTER TABLE `kamus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel_tingkat`
--
ALTER TABLE `mapel_tingkat`
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
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skor_game`
--
ALTER TABLE `skor_game`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skor_quiz`
--
ALTER TABLE `skor_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tingkat`
--
ALTER TABLE `tingkat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `coba`
--
ALTER TABLE `coba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `daftar_ayat`
--
ALTER TABLE `daftar_ayat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `daftar_surat`
--
ALTER TABLE `daftar_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kamus`
--
ALTER TABLE `kamus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `mapel_tingkat`
--
ALTER TABLE `mapel_tingkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `skor_game`
--
ALTER TABLE `skor_game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skor_quiz`
--
ALTER TABLE `skor_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tingkat`
--
ALTER TABLE `tingkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `users_group`
--
ALTER TABLE `users_group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
