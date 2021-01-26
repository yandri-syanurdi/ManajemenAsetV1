-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 09:03 PM
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
-- Database: `kebun_binatang`
--

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `desk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id`, `nama`, `kondisi`, `desk`) VALUES
(1, 'adsasda', 'sdasd', ' xcxvxcvgfd'),
(2, 'asdfgh', 'qwerty', 'zxcvbnnm');

-- --------------------------------------------------------

--
-- Table structure for table `hewan`
--

CREATE TABLE `hewan` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `id_kandang` int(11) NOT NULL,
  `desk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hewan`
--

INSERT INTO `hewan` (`id`, `foto`, `nama`, `id_jenis`, `kondisi`, `id_kandang`, `desk`) VALUES
(8, 'img/2dc701a0-8728-49b6-a11e-bdfa1217d7f6.jpg', 'asdas', 1, 'asdasd', 1, ' asdasd '),
(9, 'img/5a28be9e957441.9290815115126196786122.png', 'asda', 2, 'asdasd', 1, ' asdaasdasdsadd');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `jenis`) VALUES
(2, 'Mamalia'),
(3, 'Reptil'),
(4, 'Serangga'),
(5, 'Unggas');

-- --------------------------------------------------------

--
-- Table structure for table `kandang`
--

CREATE TABLE `kandang` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `desk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kandang`
--

INSERT INTO `kandang` (`id`, `nama`, `desk`) VALUES
(1, 'Violet Blue', 'Samping Red Sheel'),
(3, 'Violet Red', ' Violet Red Head');

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bayak` double NOT NULL,
  `id_hewan` int(11) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `desk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`id`, `nama`, `bayak`, `id_hewan`, `waktu`, `desk`) VALUES
(1, 'cook', 56, 8, 'MALAM', ' sdfsdfsd   '),
(2, 'qwert', 2, 8, 'PAGI', ' fsdvxcv'),
(3, '11', 1, 8, 'PAGI', ' 11');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `kd_pegawai` char(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `umur` int(11) NOT NULL,
  `gender` char(1) NOT NULL,
  `tmpt_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `id_hewan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`kd_pegawai`, `nama`, `umur`, `gender`, `tmpt_lahir`, `tgl_lahir`, `alamat`, `status`, `id_hewan`) VALUES
('P0001', 'Yandri', 22, 'L', 'Bukittinggi', '1996-01-10', 'terserah', 'lajang', 8),
('P0002', 'asdas', 1231, 'L', 'addas', '2019-01-11', 'dadasd', 'asdas', 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `kd_user` char(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`kd_user`, `nama`, `username`, `password`, `level`) VALUES
('A0001', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
('P0001', 'Yandri', 'yandri', '0d066e43b6d9aad0c4c6fab6943f9be2', 'user'),
('P0002', 'admin', 'asd', '202cb962ac59075b964b07152d234b70', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hewan`
--
ALTER TABLE `hewan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kandang`
--
ALTER TABLE `kandang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`kd_pegawai`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`kd_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hewan`
--
ALTER TABLE `hewan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kandang`
--
ALTER TABLE `kandang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
