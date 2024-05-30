-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2024 at 09:50 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inggi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi_diri` varchar(700) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `handphone` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `umur` int NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kutipan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `nama`, `deskripsi_diri`, `tanggal_lahir`, `tempat_lahir`, `handphone`, `alamat`, `umur`, `pendidikan`, `email`, `kutipan`) VALUES
(1, 'Inggi Maulani', 'Saya adalah seorang yang bersemangat dan berdedikasi tinggi dalam bidang Teknik Informatika. Dengan latar belakang pendidikan dan pengalaman praktis, saya memiliki keterampilan yang kuat dalam pengembangan perangkat lunak, analisis data, dan manajemen sistem informasi. Saya juga memiliki pengetahuan yang mendalam dalam bahasa pemrograman seperti Java, Python, dan PHP, serta pengalaman dalam penggunaan berbagai teknologi seperti database MySQL dan PostgreSQL.', '2003-05-11', 'Sukabumi', '085770032596', 'Tegalbuleud, Sukabumi', 21, 'Semester 6, Teknik Informatika (S1)', 'maulaniinggi@gmail.com', '\"Sebagai seorang yang selalu haus akan pengetahuan, saya tidak pernah berhenti belajar dan terus mencari cara untuk mengembangkan diri. Saya percaya bahwa komitmen saya terhadap pertumbuhan pribadi adalah kunci kesuksesan dalam mencapai tujuan.\"');

-- --------------------------------------------------------

--
-- Table structure for table `tablepesan`
--

CREATE TABLE `tablepesan` (
  `id` int NOT NULL,
  `nama` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `subjek` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `pesan` text COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tablepesan`
--

INSERT INTO `tablepesan` (`id`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(4, 'Putri', 'putri@gmail.com', 'Website nya lucu', 'Tess', '2024-05-31 04:13:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablepesan`
--
ALTER TABLE `tablepesan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tablepesan`
--
ALTER TABLE `tablepesan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
