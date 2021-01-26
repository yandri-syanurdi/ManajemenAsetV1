-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `aset`;
CREATE TABLE `aset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_aset` varchar(100) NOT NULL,
  `nama_aset` varchar(50) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `id_kategori` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `aset` (`id`, `kode_aset`, `nama_aset`, `id_lokasi`, `deskripsi`, `created_at`, `id_kategori`) VALUES
(11,	'LabP1-TI-kom-1001001',	'komputer',	1,	'-',	'2020-08-27',	4),
(12,	'LabP2-TI-cpu-1001002',	'CPU',	2,	'-',	'2020-08-27',	6);

DROP TABLE IF EXISTS `kategori_aset`;
CREATE TABLE `kategori_aset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) NOT NULL,
  `kode_kategori` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `kategori_aset` (`id`, `nama_kategori`, `kode_kategori`) VALUES
(2,	'perabotan',	''),
(4,	'elektronik-k',	'kom'),
(6,	'elektronik-c',	'cpu');

DROP TABLE IF EXISTS `kondisi_aset`;
CREATE TABLE `kondisi_aset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kondisi` varchar(20) NOT NULL,
  `tanggal_kondisi` datetime NOT NULL,
  `id_aset` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `kondisi_aset` (`id`, `kondisi`, `tanggal_kondisi`, `id_aset`, `deskripsi`, `gambar`) VALUES
(1,	'good',	'2020-10-10 00:00:00',	1,	'zddd',	'dasdad'),
(2,	'Good',	'2020-08-19 15:28:00',	1,	'adksdk',	'images/zihfW7uVn47GuivZ3oGTLCZaZ8MGcSoZkOkk4yYq.png'),
(4,	'Good',	'2020-08-19 15:36:00',	4,	'zdasesrfwes',	'images/FJWPPAnKEIQ1Ydq9l4jh3doWoREsPrw5yMoUKSkJ.png'),
(5,	'Bad',	'2020-08-19 15:49:00',	4,	'aaa',	'1597826957_Untitled.png'),
(6,	'Lost',	'2020-08-20 16:06:00',	1,	'dfsdfs',	'1597828024_Untitled.png'),
(7,	'Bad',	'2020-08-19 20:23:00',	5,	'-',	'1597843401_Untitled.png'),
(8,	'Good',	'2020-08-23 00:31:00',	6,	'-',	'1598117494_4.png'),
(9,	'Good',	'2020-09-05 01:00:00',	11,	'good',	'1599049728_2.JPG');

DROP TABLE IF EXISTS `lokasi`;
CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `lokasi` (`id`, `nama_lokasi`) VALUES
(1,	'LabP1'),
(2,	'LabP2'),
(3,	'LabSI'),
(5,	'LabMM'),
(6,	'LabJar');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `api_token` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user.email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `name`, `email`, `jenis_kelamin`, `nohp`, `password`, `api_token`) VALUES
(1,	'users',	'user@example.com',	'Laki-Laki',	'',	'$2y$10$tfZzgTMy29T8VVKAu2D68.iu5BeVvLuwSPx2lhIszd4RB2.B2zNwe',	'drOOiJLMUadUU8dx7CvJXyXemUsyoih5DgDsndNJ'),
(5,	'vira',	'vira@gmail.com',	'Laki-Laki',	'',	'123456',	'122'),
(6,	'Ego Dafma Dasa',	'egodasa@gmail.com',	'Laki-Laki',	'089519649316',	'$2y$10$hzuhWCpdLtc/BWUu2DD7B.DkLiSsQQ54a9YZO4XApTnVr/lq9yPuS',	'$2y$10$hT9VHYmkS9ZWN68FhBFAqOcxCHhOmp6ljUiPf9C96gqZ6uJSmbmBy');

-- 2020-09-03 07:39:49
