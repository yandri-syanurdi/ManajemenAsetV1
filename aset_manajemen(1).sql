-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 07:00 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aset`
--

INSERT INTO `aset` (`id`, `kode_aset`, `nama_aset`, `id_lokasi`, `deskripsi`, `created_at`, `id_kategori`) VALUES
(15, 'LabP1-TI-kom-1001001', 'komputer', 1, 'test', '2020-10-15', 4),
(16, 'LabP1-TI-kom-1001002', 'komputer', 1, '-', '2020-10-15', 4),
(17, 'LabP1-TI-cpu-1001003', 'CPU', 1, 'test', '2020-10-15', 6),
(18, 'LabP2-TI-cpu-1001004', 'CPU', 2, '-', '2020-10-15', 6);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_aset`
--

CREATE TABLE `kategori_aset` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `kode_kategori` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_aset`
--

INSERT INTO `kategori_aset` (`id`, `nama_kategori`, `kode_kategori`) VALUES
(4, 'elektronik-komputer', 'kom'),
(6, 'elektronik-cpu', 'cpu'),
(7, 'perabotan-lemari', 'lemari'),
(8, 'perabotan-meja', 'meja'),
(9, 'elektronik-switch', 'switch'),
(10, 'elektronik-router', 'router');

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
(35, 'lost', '2020-12-12 08:40:00', 11, 'abdul', '1602785386_image-d8736b39-01cb-454d-971c-62c48c66d331.jpg'),
(36, 'bad', '2020-12-12 08:40:00', 11, 'komputer rusak', '1602785755_image-62c0ed9f-0080-4a5f-a03d-f25fd021e1fd.jpg'),
(37, '', '2020-12-12 08:40:00', 12, 'mantap', '1602785851_image-49165b43-b967-4e19-bbe8-a054a367e559.jpg'),
(38, '', '2020-12-12 08:40:00', 13, '', '1602785932_image-a4cadb8b-17b6-44ac-90b6-815e22e94f5a.jpg'),
(40, 'damage', '2020-12-12 08:40:00', 15, 'gfgferferffffddf', '1602787244_image-35e8f1a1-5821-43e7-ac78-89bc54964a05.jpg');

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
(6, 'LabJar');

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
(9, 'vira', 'vira@example.com', 'Perempuan', '-', '$2y$10$C7kbtjzj.RiCokouXICC8.go9Ry1yLoqUdktdpXWiY77so1gA1n0K', '$2y$10$Y1WynjxOLR8Jm60xMH3Z0.0ArWfmYhjbDQHwMbZHBo4u2q94iDxIG'),
(10, 'admin', 'admin@example.com', 'Laki-Laki', '-', '$2y$10$yUOvU.K3PdMjHBWuKETPheoBNE9Mn3iQVBFmlkk0H/5YXtA90Sya.', '$2y$10$KxOrbbqxS/DJRwHnz.6CUeFnNjM9pqbrFgAYTeDnY8zaMOEcbRlR2'),
(11, 'abdul', 'abdul@gmail.com', 'Laki-Laki', '-', '$2y$10$nc9tOss3/5sprngPXpSch.pMCtMkyAAfBoIiSg8ljOVypQFQ/e4IO', '$2y$10$8mqgr72RSzwa9MKx3xRwF.zBd47Y1o8C3vWfFJfWsWI0TsNWhd2o.'),
(12, 'avicenna', 'avicenna@gmail.com', 'Perempuan', '-', '$2y$10$f4wizpaObwNgY.8oMDq1f.Loi9vym80WO5Ct750ZsEZFpxr7bakqe', '$2y$10$/SMNalvJNVfeoRctrQ7P4.m52UbB0iPUbJXs1INZfaoJLeuoLgov6'),
(13, 'a', 'a@g.co', 'Laki-Laki', '-', '$2y$10$y/bl7MUsPeEnsXz/46jkU.vBx8kRntfHP.NZhvjaYYzpKF6MJODdq', '$2y$10$VL//88Ua5Luxbmnq7OXpiu5rbl9MCi9HEn.VuHF4eUNFRFAZYWF4q');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kategori_aset`
--
ALTER TABLE `kategori_aset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kondisi_aset`
--
ALTER TABLE `kondisi_aset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
