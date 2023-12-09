-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 03:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `nilai_un` double DEFAULT NULL,
  `nilai_us` double DEFAULT NULL,
  `nilai_uts_1` double NOT NULL,
  `status` int(1) NOT NULL,
  `pendaftar_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `nilai_un`, `nilai_us`, `nilai_uts_1`, `status`, `pendaftar_id`) VALUES
(6, 100, 100, 100, 1, 7),
(7, 55, 78, 28, 1, 8),
(8, 70, 80, 80, 1, 9),
(9, 0, 0, 0, 2, 10),
(10, 90, 85, 70, 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar`
--

CREATE TABLE `pendaftar` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tmpt_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `agama` varchar(45) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(45) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `users_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pendaftar`
--

INSERT INTO `pendaftar` (`id`, `nama`, `tmpt_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `alamat`, `email`, `telepon`, `foto`, `users_id`) VALUES
(6, 'baghiz', 'sintong', '2004-08-31', 'L', 'islam', 'adad', 'arasya@gmail.com', '082284863821', '', 14),
(7, 'aulia', 'pangkalan kerinci', '2003-09-28', 'L', 'islam', 'Kerinci', 'aul@gmail.com', '082182112', '', 15),
(8, 'ikhwan', 'solok', '2004-10-30', 'L', 'kristen', 'solok', 'ikhwan@gmail.com', '0218293719', '', 16),
(9, 'abi', 'kualu', '1945-08-17', 'L', 'katolik', 'kualu', 'abi@gmail.com', '10837109', '', 17),
(10, 'muthi', 'bangkinang', '1945-11-28', 'L', 'hindu', 'bangkinang', 'girang@gmail.com', '0908210312', '', 18),
(11, 'rafly', 'duri', '1945-04-12', 'L', 'budha', 'duri', 'rafly@gmail.com', '08122881783', '', 19);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `level`) VALUES
(14, 'baghiz', 'arasya@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(15, 'aulia', 'aul@gmail.com', '202cb962ac59075b964b07152d234b70', 'siswa'),
(16, 'ikhwan', 'ikhwan@gmail.com', '202cb962ac59075b964b07152d234b70', 'siswa'),
(17, 'abi', 'abi@gmail.com', '202cb962ac59075b964b07152d234b70', 'siswa'),
(18, 'muthi', 'girang@gmail.com', '202cb962ac59075b964b07152d234b70', 'siswa'),
(19, 'rafly', 'rafly@gmail.com', '202cb962ac59075b964b07152d234b70', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nilai_pendaftar1_idx` (`pendaftar_id`);

--
-- Indexes for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_pendaftar_users_idx` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `fk_nilai_pendaftar1` FOREIGN KEY (`pendaftar_id`) REFERENCES `pendaftar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD CONSTRAINT `fk_pendaftar_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
