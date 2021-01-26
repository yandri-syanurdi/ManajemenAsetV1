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
-- Database: `aset_manajemen`
--

-- --------------------------------------------------------

--
-- Table structure for table `aset`
--

CREATE TABLE `aset` (
  `id` int(11) NOT NULL,
  `kode_aset` varchar(100) NOT NULL,
  `nama_aset` varchar(50) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `kode_meja` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aset`
--

INSERT INTO `aset` (`id`, `kode_aset`, `nama_aset`, `id_lokasi`, `deskripsi`, `created_at`, `id_kategori`, `kode_meja`) VALUES
(15, 'LabP1-TI-kom-1001001', 'komputer', 1, 'test', '2020-10-15', 4, 1),
(16, 'LabP1-TI-kom-1001002', 'komputer', 1, 'test', '2020-10-15', 4, 3),
(17, 'LabP1-TI-cpu-1001003', 'CPU', 1, 'test', '2020-10-15', 6, 4),
(18, 'LabP2-TI-cpu-1001004', 'CPU', 2, 'test', '2020-10-15', 6, 5),
(19, 'LabP1-TI-meja-1001005', 'yandri', 1, 'tes', '2020-11-28', 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_aset`
--

CREATE TABLE `kategori_aset` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `kode_kategori` varchar(10) NOT NULL,
  `kode_barang` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_aset`
--

INSERT INTO `kategori_aset` (`id`, `nama_kategori`, `kode_kategori`, `kode_barang`) VALUES
(4, 'elektronik-komputer', 'kom', '100'),
(6, 'elektronik-cpu', 'cpu', '101'),
(7, 'perabotan-lemari', 'lemari', '102'),
(8, 'perabotan-meja', 'meja', '103'),
(9, 'elektronik-switch', 'switch', '104'),
(10, 'elektronik-router', 'router', '105'),
(11, 'yandri-yandri', 'yandri', '106');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi_aset`
--

CREATE TABLE `kondisi_aset` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(20) NOT NULL,
  `tanggal_kondisi` datetime NOT NULL,
  `id_aset` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kondisi_aset`
--

INSERT INTO `kondisi_aset` (`id`, `kondisi`, `tanggal_kondisi`, `id_aset`, `deskripsi`, `gambar`) VALUES
(51, 'Damaged', '2020-11-28 23:15:00', 15, 'aduh', '1606666278_damage.png'),
(53, 'Good', '2020-12-12 08:40:00', 18, 'mantap', '1606669382_reactimage-3.png'),
(59, 'Lost', '2020-11-29 05:11:00', 18, 'mantap', '1606669862_reactimage-3.png'),
(61, 'Bad', '2020-11-29 05:13:39', 18, 'mantap', '1606670021_reactimage-1.png'),
(62, 'Damaged', '2020-11-29 05:17:34', 18, 'mantap', '1606670256_reactimage.png');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `nama_lokasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `nama_lokasi`) VALUES
(1, 'LabP1'),
(2, 'LabP2'),
(3, 'LabSI'),
(5, 'LabMM'),
(6, 'LabJar'),
(7, 'yandri');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` smallint(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `api_token` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `jenis_kelamin`, `nohp`, `password`, `api_token`) VALUES
(8, 'user', 'user@example.com', 'Perempuan', '082284026868', '$2y$10$u7e/eitWpc6iNdISVjRqfu7trNyA4Dy2YBbHzpsRy8RdxJKAu6uvK', '$2y$10$sOPbglsxPw0.cNil6l3lIO7F89oE9KDcWlSoULcljsSJyu7bc9gSi'),
(9, 'vira', 'vira@example.com', 'Perempuan', '082284026868', '$2y$10$C7kbtjzj.RiCokouXICC8.go9Ry1yLoqUdktdpXWiY77so1gA1n0K', '$2y$10$Y1WynjxOLR8Jm60xMH3Z0.0ArWfmYhjbDQHwMbZHBo4u2q94iDxIG'),
(10, 'admin', 'admin@example.com', 'Laki-Laki', '082284026868', '$2y$10$yUOvU.K3PdMjHBWuKETPheoBNE9Mn3iQVBFmlkk0H/5YXtA90Sya.', '$2y$10$KxOrbbqxS/DJRwHnz.6CUeFnNjM9pqbrFgAYTeDnY8zaMOEcbRlR2'),
(11, 'abdul', 'abdul@gmail.com', 'Laki-Laki', '082284026868', '$2y$10$nc9tOss3/5sprngPXpSch.pMCtMkyAAfBoIiSg8ljOVypQFQ/e4IO', '$2y$10$8mqgr72RSzwa9MKx3xRwF.zBd47Y1o8C3vWfFJfWsWI0TsNWhd2o.'),
(12, 'avicenna', 'avicenna@gmail.com', 'Perempuan', '082284026868', '$2y$10$f4wizpaObwNgY.8oMDq1f.Loi9vym80WO5Ct750ZsEZFpxr7bakqe', '$2y$10$/SMNalvJNVfeoRctrQ7P4.m52UbB0iPUbJXs1INZfaoJLeuoLgov6'),
(13, 'alod', 'aldo@gmail.com', 'Laki-Laki', '082284026868', '$2y$10$y/bl7MUsPeEnsXz/46jkU.vBx8kRntfHP.NZhvjaYYzpKF6MJODdq', '$2y$10$VL//88Ua5Luxbmnq7OXpiu5rbl9MCi9HEn.VuHF4eUNFRFAZYWF4q'),
(14, 'yandri syanurdi', 'yandri@gmail.com', 'Laki-Laki', '089664370576', '$2y$10$b/Y/FpGoHmgREcZ2M9QKruedN4eely/a7Sv5hYRMfycevW/5/yVTG', 'hSk1wdNgdZglDdahl31uSjidc4y2sVgj7GAZX0kRahQsRUaIUsBLnsUSPHO5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_aset`
--
ALTER TABLE `kategori_aset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kondisi_aset`
--
ALTER TABLE `kondisi_aset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user.email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aset`
--
ALTER TABLE `aset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kategori_aset`
--
ALTER TABLE `kategori_aset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kondisi_aset`
--
ALTER TABLE `kondisi_aset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
