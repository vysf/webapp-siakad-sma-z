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
-- Database: `latihanflask`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_guru`
--

CREATE TABLE `db_guru` (
  `id_guru` int(11) NOT NULL,
  `nip_guru` int(20) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `pass_guru` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_guru`
--

INSERT INTO `db_guru` (`id_guru`, `nip_guru`, `nama_guru`, `pass_guru`) VALUES
(1, 1234, 'Susanto S.Pd', 'admin123'),
(10, 1071171025, 'Yusuf Umar Al Hakim', '123yusuf'),
(11, 98, 'test', '098');

-- --------------------------------------------------------

--
-- Table structure for table `db_pelajaran`
--

CREATE TABLE `db_pelajaran` (
  `id_pelajaran` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `kode_pelajaran` varchar(7) NOT NULL,
  `nama_pelajaran` varchar(100) NOT NULL,
  `kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_pelajaran`
--

INSERT INTO `db_pelajaran` (`id_pelajaran`, `id_guru`, `kode_pelajaran`, `nama_pelajaran`, `kelas`) VALUES
(211, 10, 'MPU-011', 'mkmkm', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_guru`
--
ALTER TABLE `db_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `db_pelajaran`
--
ALTER TABLE `db_pelajaran`
  ADD PRIMARY KEY (`id_pelajaran`),
  ADD KEY `id_guru` (`id_guru`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_guru`
--
ALTER TABLE `db_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `db_pelajaran`
--
ALTER TABLE `db_pelajaran`
  MODIFY `id_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_pelajaran`
--
ALTER TABLE `db_pelajaran`
  ADD CONSTRAINT `db_pelajaran_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `db_guru` (`id_guru`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
