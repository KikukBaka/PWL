-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2022 at 06:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transaksi`
--

-- --------------------------------------------------------

--
-- Table structure for table `no_ktp`
--

CREATE TABLE `no_ktp` (
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `telfon` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `no_plat`
--

CREATE TABLE `no_plat` (
  `tahun` year(4) NOT NULL,
  `tarif` decimal(6,0) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `no_transaksi`
--

CREATE TABLE `no_transaksi` (
  `tanggal pesan` date NOT NULL,
  `tanggal pinjam` date NOT NULL,
  `tanggal kembali rencana` date NOT NULL,
  `jam kembali rencana` time(6) NOT NULL,
  `tanggal kembali realisasi` date NOT NULL,
  `jam kembali realisasi` time(6) NOT NULL,
  `denda` int(6) NOT NULL,
  `kilometer pinjam` decimal(5,0) NOT NULL,
  `kilometer kembali` decimal(5,0) NOT NULL,
  `bbm pinjam` varchar(4) NOT NULL,
  `bbm kembali` varchar(2) NOT NULL,
  `kondisi mobil pinjam` text NOT NULL,
  `kondisi mobil kembali` text NOT NULL,
  `kerusakan` text NOT NULL,
  `biaya kerusakan` int(6) NOT NULL,
  `biaya bbm` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sopir`
--

CREATE TABLE `sopir` (
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `sim` int(16) NOT NULL,
  `telfon` int(12) NOT NULL,
  `tarif` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipe_kendaraan`
--

CREATE TABLE `tipe_kendaraan` (
  `tipe` enum('A','B','C') NOT NULL,
  `Merk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `no_ktp`
--
ALTER TABLE `no_ktp`
  ADD PRIMARY KEY (`nama`),
  ADD KEY `alamat` (`alamat`);

--
-- Indexes for table `no_plat`
--
ALTER TABLE `no_plat`
  ADD PRIMARY KEY (`tahun`),
  ADD KEY `tarif` (`tarif`);

--
-- Indexes for table `no_transaksi`
--
ALTER TABLE `no_transaksi`
  ADD PRIMARY KEY (`tanggal pesan`),
  ADD KEY `tanggal pinjam` (`tanggal pinjam`);

--
-- Indexes for table `sopir`
--
ALTER TABLE `sopir`
  ADD PRIMARY KEY (`nama`),
  ADD KEY `alamat` (`alamat`);

--
-- Indexes for table `tipe_kendaraan`
--
ALTER TABLE `tipe_kendaraan`
  ADD PRIMARY KEY (`tipe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
