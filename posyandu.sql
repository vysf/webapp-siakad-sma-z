-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 10:16 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posyandu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'zaki', 'sambas');

-- --------------------------------------------------------

--
-- Table structure for table `anak`
--

CREATE TABLE `anak` (
  `id_anak` int(20) NOT NULL,
  `nama_anak` varchar(100) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_hp` int(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tinggi_badan` varchar(20) NOT NULL,
  `berat_lahir` varchar(11) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anak`
--

INSERT INTO `anak` (`id_anak`, `nama_anak`, `nama_ayah`, `nama_ibu`, `tanggal_lahir`, `no_hp`, `alamat`, `tinggi_badan`, `berat_lahir`, `jenis_kelamin`) VALUES
(1001, 'Alwi', 'Suriadi', 'Erda', '2018-03-03', 1231313, 'Muare Ulakan', '', '2,9 kg', 'Laki-Laki'),
(1002, 'Alifa Now Falin', 'Sabarudin', 'Siti', '2018-03-18', 12123141, 'Muare Ulakan', '', '3,2 kg', 'Perempuan'),
(1003, 'Reza', 'RIzal', 'Sumiarti', '2018-04-24', 12151515, 'Dusun Jaur', '', '3,2 kg', 'Laki-Laki'),
(1004, 'Rian', 'Misli', 'Dayang', '2018-06-01', 6744534, 'Muare Ulakan', '', '2,6 kg', 'Laki-Laki'),
(1005, 'Azril', 'Misron', 'Wita', '2018-05-30', 124151, 'Dusun Jaur', '', '3,2 kg', 'Laki-Laki'),
(1006, 'Rianka Alif', 'Heri', 'Daniati', '2018-06-30', 35237562, 'Muare Ulakan', '', '2,7 kg', 'Laki-Laki'),
(1007, 'Putra WIjaya', 'Hendri', 'Esi Surya', '2018-07-15', 4356725, 'Muare Ulakan', '', '3,0 kg', 'Laki-Laki'),
(1008, 'Indah', 'Indra', 'Devi', '2018-03-22', 56874573, 'Muare Ulakan', '', '2,6 kg', 'Perempuan'),
(1009, 'Farel', 'Asdi', 'Lia', '2018-05-07', 234171624, 'Muare Ulakan', '', '2,7 kg', 'Laki-Laki'),
(1010, 'Kelva Oktaviani', 'Prengki', 'Qori.A', '2018-10-06', 346752834, 'Dusun Jaur', '', '3,4 kg', 'Perempuan'),
(1011, 'Al-Farezi Bilfaqih', 'Rabudi', 'Intan Nuraini', '2018-08-26', 48675274, 'Dusun Jaur', '', '3,1 kg', 'Laki-Laki'),
(1012, 'Naura Abdila', 'Sarifudin', 'Suhartini', '2018-10-14', 238675823, 'Muare Ulakan', '', '3,0 kg', 'Perempuan'),
(1013, 'Asifa', 'Atan', 'Karna', '2018-10-18', 23841125, 'Muare Ulakan', '', '2,6 kg', 'Perempuan'),
(1014, 'Shopia', 'Reza', 'Wahyuni', '2018-09-19', 48545763, 'Muare Ulakan', '', '2,7 kg', 'Perempuan'),
(1015, 'Reno', 'Karno', 'Sari', '2017-01-14', 982365325, 'Muare Ulakan', '', '2,3 kg', 'Laki-Laki'),
(1016, 'Calista Aoelina', 'Rolibin', 'Sariyati', '2017-02-12', 38674528, 'Muare Ulakan', '', '2,6 kg', 'Perempuan'),
(1017, 'M.Alfarizi', 'Saiful', 'Ita', '2017-04-06', 34874653, 'Muare Ulakan', '', '2,9 kg', 'Laki-Laki'),
(1018, 'Aldi Rafasya', 'Dino', 'Linda', '2017-04-14', 74673534, 'Muare Ulakan', '', '2,7 kg', 'Laki-Laki'),
(1019, 'Cinta Bela', 'Jumadi', 'Melati', '2017-05-05', 97543265, 'Muare Ulakan', '', '3,0 kg', 'Perempuan'),
(1020, 'Fiqri Alfero', 'Juski', 'Lastri', '2017-04-11', 984572635, 'Muare Ulakan', '', '2,7 kg', 'Laki-Laki'),
(1021, 'Subhan', 'Sugeng', 'Rini', '2017-08-13', 2375632, 'Muare Ulakan', '', '3,4 kg', 'Laki-Laki'),
(1022, 'Saqila Maharani', 'Sukariadi', 'Yanti', '2017-09-21', 23745235, 'Muare Ulakan', '', '3,4 kg', 'Perempuan'),
(1023, 'Alifa', 'Mulyadi', 'Winarsiti', '2017-09-12', 23523622, 'Muare Ulakan', '', '2,7 kg', 'Perempuan'),
(1024, 'Mishari Rasyid', 'Jumardi', 'Yeni', '2017-09-20', 47566723, 'Muare Ulakan', '', '2,6 kg', 'Laki-Laki');

-- --------------------------------------------------------

--
-- Table structure for table `imunisasi`
--

CREATE TABLE `imunisasi` (
  `id_imunisasi` int(11) NOT NULL,
  `jenis_imunisasi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imunisasi`
--

INSERT INTO `imunisasi` (`id_imunisasi`, `jenis_imunisasi`) VALUES
(1, 'BCG'),
(2, 'DPT 1'),
(3, 'DPT 2'),
(4, 'DPT 3'),
(5, 'POLIO 1'),
(6, 'POLIO 2'),
(7, 'POLIO 3'),
(8, 'POLIO 4'),
(9, 'HB 1'),
(10, 'HB 2'),
(11, 'HB 3'),
(12, 'CAMPAK');

-- --------------------------------------------------------

--
-- Table structure for table `kematian`
--

CREATE TABLE `kematian` (
  `id_kematian` int(11) NOT NULL,
  `id_anak` int(11) NOT NULL,
  `tanggal_kematian` date NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kematian`
--

INSERT INTO `kematian` (`id_kematian`, `id_anak`, `tanggal_kematian`, `keterangan`) VALUES
(4001, 1001, '2020-09-16', 'Diare'),
(4002, 1001, '2020-09-17', 'Diare'),
(4003, 1002, '2020-09-30', 'Diare'),
(4004, 1003, '2020-09-23', 'Demam'),
(4005, 1004, '2020-09-30', 'TBC'),
(4006, 1001, '2020-09-22', 'Meningitis'),
(4007, 1001, '2020-09-16', 'Meningitis');

-- --------------------------------------------------------

--
-- Table structure for table `penimbangan`
--

CREATE TABLE `penimbangan` (
  `id_penimbangan` int(20) NOT NULL,
  `id_anak` int(11) NOT NULL,
  `tanggal_timbang` date NOT NULL,
  `usia` varchar(20) NOT NULL,
  `panjang_badan` varchar(20) NOT NULL,
  `berat_badan` varchar(11) NOT NULL,
  `id_imunisasi` int(11) NOT NULL,
  `id_vitamin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penimbangan`
--

INSERT INTO `penimbangan` (`id_penimbangan`, `id_anak`, `tanggal_timbang`, `usia`, `panjang_badan`, `berat_badan`, `id_imunisasi`, `id_vitamin`) VALUES
(2001, 1015, '2017-02-13', '1 Bulan', '70 cm', '3,6 kg', 1, 0),
(2002, 1015, '2017-03-13', '2 Bulan', '', '5.0 kg', 2, 0),
(2003, 1015, '2017-04-13', '3 Bulan', '', '5,5 kg', 3, 0),
(2004, 1015, '2017-05-13', '4 Bulan', '', '6,3 kg', 4, 0),
(2005, 1015, '2017-06-13', '5 Bulan', '', '6,3 kg', 8, 0),
(2006, 1015, '2017-07-13', '7 bulan', '', '6,6 kg', 7, 0),
(2007, 1015, '2017-08-13', '8 Bulan', '', '7,2 kg', 8, 0),
(2008, 1015, '2017-10-13', '9 Bulan', '', '7,9 kg', 12, 0),
(2009, 1016, '2017-04-13', '2 Bulan', '', '4,6 kg', 2, 0),
(2010, 1016, '2017-05-13', '3 Bulan', '', '5,6 kg', 2, 0),
(2011, 1016, '2017-06-13', '4 Bulan', '', '6,2 kg', 4, 0),
(2012, 1017, '2017-05-13', '1 Bulan', '', '3,8 kg', 1, 0),
(2013, 1017, '2017-06-13', '2 Bulan', '', '4,7 kg', 2, 0),
(2014, 1017, '2017-07-13', '3 Bulan', '', '5,4 kg', 3, 0),
(2015, 1017, '2017-08-13', '4 Bulan', '', '6,0 kg', 4, 0),
(2016, 1017, '2017-09-13', '5 Bulan', '', '6,4 kg', 6, 0),
(2017, 1017, '2017-10-13', '6 Bulan', '', '6,8 kg', 9, 0),
(2018, 1017, '2017-11-13', '7 Bulan', '', '7,3 kg', 11, 0),
(2019, 1017, '2017-12-13', '8 Bulan', '', '7,6 kg', 12, 0),
(2020, 1018, '2017-12-05', '1 Bulan', '', '4,0 kg', 1, 0),
(2021, 1001, '2018-05-13', '2 Bulan', '', '6,2 kg', 1, 0),
(2022, 1001, '2018-07-13', '4 Bulan', '', '6,9 kg', 3, 0),
(2023, 1001, '2018-08-13', '5 Bulan', '', '7.5 kg', 4, 0),
(2024, 1001, '2018-10-13', '7 Bulan', '', '7,9 kg', 11, 0),
(2025, 1002, '2018-05-13', '2 Bulan', '', '5,9 kg', 1, 0),
(2026, 1002, '2018-07-13', '4 Bulan', '', '7,4 kg', 2, 0),
(2027, 1003, '2018-05-13', '1 Bulan', '', '3,6 kg', 1, 0),
(2028, 1003, '2018-07-13', '3 Bulan', '', '5,3 kg', 2, 0),
(2029, 1004, '2018-07-13', '1 Bulan', '', '4,2 kg', 1, 0),
(2030, 1004, '2018-08-13', '2 Bulan', '', '5,5 kg', 2, 0),
(2031, 1004, '2018-09-13', '3 Bulan', '', '5,6 kg', 3, 0),
(2032, 1004, '2018-10-13', '4 Bulan', '', '6,3 kg', 9, 0),
(2033, 1004, '2018-11-13', '5 Bulan', '', '6,7 kg', 2, 0),
(2034, 1004, '2018-12-13', '6 Bulan', '', '7,8 kg', 7, 0),
(2035, 1004, '2019-01-13', '7 Bulan', '', '7.0 kg', 6, 0),
(2036, 1004, '2019-02-13', '8 Bulan', '', '6,8 kg', 2, 2),
(2037, 1005, '2018-07-13', '2 Bulan', '', '6.0 kg', 1, 0),
(2038, 1005, '2018-08-13', '3 Bulan', '', '6,9 kg', 2, 2),
(2039, 1006, '2018-08-13', '2 Bulan', '', '4,1 kg', 1, 2),
(2040, 1006, '2018-09-13', '3 Bulan', '', '5,1 kg', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vitamin`
--

CREATE TABLE `vitamin` (
  `id_vitamin` int(11) NOT NULL,
  `jenis_vitamin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vitamin`
--

INSERT INTO `vitamin` (`id_vitamin`, `jenis_vitamin`) VALUES
(0, 'Tidak Diberi'),
(1, 'Vitamin A Biru'),
(2, 'Vitamin A Merah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id_anak`),
  ADD KEY `id_anak` (`id_anak`);

--
-- Indexes for table `imunisasi`
--
ALTER TABLE `imunisasi`
  ADD PRIMARY KEY (`id_imunisasi`),
  ADD KEY `id_imunisasi` (`id_imunisasi`);

--
-- Indexes for table `kematian`
--
ALTER TABLE `kematian`
  ADD PRIMARY KEY (`id_kematian`),
  ADD KEY `id_kematian` (`id_kematian`),
  ADD KEY `id_anak` (`id_anak`);

--
-- Indexes for table `penimbangan`
--
ALTER TABLE `penimbangan`
  ADD PRIMARY KEY (`id_penimbangan`),
  ADD KEY `id_penimbangan` (`id_penimbangan`),
  ADD KEY `id_imunisasi` (`id_imunisasi`),
  ADD KEY `id_vitamin` (`id_vitamin`),
  ADD KEY `id_anak` (`id_anak`),
  ADD KEY `tinggi_badan` (`panjang_badan`);

--
-- Indexes for table `vitamin`
--
ALTER TABLE `vitamin`
  ADD PRIMARY KEY (`id_vitamin`),
  ADD KEY `id_vitamin` (`id_vitamin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kematian`
--
ALTER TABLE `kematian`
  ADD CONSTRAINT `kematian_ibfk_1` FOREIGN KEY (`id_anak`) REFERENCES `anak` (`id_anak`);

--
-- Constraints for table `penimbangan`
--
ALTER TABLE `penimbangan`
  ADD CONSTRAINT `penimbangan_ibfk_1` FOREIGN KEY (`id_anak`) REFERENCES `anak` (`id_anak`),
  ADD CONSTRAINT `penimbangan_ibfk_2` FOREIGN KEY (`id_imunisasi`) REFERENCES `imunisasi` (`id_imunisasi`),
  ADD CONSTRAINT `penimbangan_ibfk_3` FOREIGN KEY (`id_vitamin`) REFERENCES `vitamin` (`id_vitamin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
