-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 09:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kendari`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_lokasi`
--

CREATE TABLE `tb_lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `latlng` varchar(100) NOT NULL,
  `nama_lokasi` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_lokasi`
--

INSERT INTO `tb_lokasi` (`id_lokasi`, `latlng`, `nama_lokasi`, `kategori`, `gambar`) VALUES
(32, '-3.962921, 122.581353', 'SMPN 18 Kendari', 'SMP', 'download (4).jpeg'),
(33, '-3.964320, 122.585790', 'SD 24 Kendari', 'SD', 'download (5).jpeg'),
(34, '-4.009553, 122.541453', 'SMPN 5 Kendari', 'SMP', 'download (7).jpeg'),
(35, '-4.008101, 122.557676', 'SMAN 2 Kendari', 'SMA', 'IMG-20210713-WA0001.jpg'),
(36, '-3.952585, 122.497482', 'SMPN 13 Kendari', 'SMP', 'images (1).jpeg'),
(37, '-4.029653, 122.524273', 'SMPN 15 Kendari', 'SMP', 'images (2).jpeg'),
(38, '-4.065527, 122.521798', 'SDN 104 Kendari', 'SD', 'images (3).jpeg'),
(39, '-4.014637, 122.578644', 'SDN 76 Kendari', 'SD', 'images (4).jpeg'),
(40, '-4.000686, 122.548888', 'SMKN 4 Kendari', 'SMK', 'download (6).jpeg'),
(41, '-4.006147, 122.499157', 'SMPN 4 Kendari', 'SMP', 'heil.jpg'),
(45, '-4.023747, 122.529796', 'SMAN 10 Kendari', 'SMA', 'images (5).jpeg'),
(46, '-4.065822, 122.521902', 'SMPN 22 Kendari', 'SMP', 'images (6).jpeg'),
(47, '-4.014204, 122.526948', 'SDN 100 Kendari', 'SD', 'IMG-20230712-WA0055.jpg'),
(48, '-3.962821, 122.541975', 'SMAN 1 Kendari', 'SMA', 'foto-sma-1-kendari.jpg'),
(49, '-3.979003, 122.510794', 'SMKN 1 Kendari', 'SMK', 'images (7).jpeg'),
(50, '-4.017957, 122.527733', 'SD Ibnu Abbas Kendari', 'SD', '508f4b902a962a2abad1479c30e3f39c.jpeg'),
(51, '-3.976482, 122.598949', 'SMAN 3 Kendari', 'SMA', 'images (8).jpeg'),
(52, '-3.978017, 122.512009', 'SMAN 4 Kendari', 'SMA', 'SMAN-4-Kendari.jpg'),
(53, '-4.028025, 122.544438', 'SMPN 19 Kendari', 'SMP', 'images (9).jpeg'),
(54, '-4.019663, 122.543746', 'SDN 78 Kendari', 'SD', 'images (10).jpeg'),
(55, '-4.001963, 122.567095', 'SDN 101 Kendari', 'SD', 'images (11).jpeg'),
(56, '-4.041565, 122.493224', 'SMAN 5 Kendari', 'SMA', 'WhatsApp-Image-2023-12-13-at-12.38.21 (1).jpeg'),
(57, '-3.970698, 122.490070', 'SMAN 6 Kendari', 'SMA', 'images (12).jpeg'),
(58, '-4.002868, 122.527515', 'SMPN 10 Kendari', 'SMP', 'images (13).jpeg'),
(59, '-4.046306, 122.478032', 'SMPN 23 Kendari', 'SMP', '2023-10-04.jpg'),
(60, '-4.026272, 122.483332', 'SMKN 5 Kendari', 'SMK', 'images (14).jpeg'),
(61, '-4.006545, 122.558472', 'SMPN 20 Kendari', 'SMP', 'Screenshot 2024-07-14 233741.png'),
(62, '-4.006545, 122.585565', 'SMPN 7 Kendari', 'SMP', 'Screenshot 2024-07-14 234409.png'),
(63, '-3.985632, 122.590052', 'SDN 20 Kendari', 'SD', 'Screenshot 2024-07-14 234525.png'),
(64, '-3.954738, 122.498878', 'SDN 61 Kendari', 'SD', 'Screenshot 2024-07-14 234742.png'),
(65, '-3.987354, 122.504153', 'SMKN 3 Kendari', 'SMK', 'Screenshot 2024-07-14 234957.png'),
(66, '-3.972757, 122.601365', 'SMPN 6 Kendari', 'SMP', 'Screenshot 2024-07-14 235257.png'),
(67, '-4.009325, 122.584568', 'SDN 60 Kendari', 'SD', 'Screenshot 2024-07-14 235403.png'),
(68, '-3.978716, 122.513979', 'SMPN 9 Kendari', 'SMP', 'SMPN-9-Kendari-Dukung-Sistem-PPDB-Online-Kepsek-Sebut-Mempermudah-Orangtua-Siswa-dan-Sekolah.jpg'),
(69, '-3.994187, 122.495260', 'SDN 53 Kendari', 'SD', 'Screenshot 2024-07-14 235727.png'),
(70, '-4.009835, 122.504484', 'SMAN 11 Kendari', 'SMA', 'Screenshot 2024-07-14 235929.png'),
(71, '-3.959204, 122.529873', 'SDN 38 Kendari', 'SD', 'Screenshot 2024-07-15 000136.png'),
(72, '-3.983263, 122.511581', 'SMKN 2 Kendari', 'SMK', 'Screenshot 2024-07-15 000307.png'),
(73, '-4.000922, 122.564611', 'SDN 59 Kendari', 'SD', 'Screenshot 2024-07-15 001216.png'),
(74, '-3.959961, 122.585837', 'SDN 14 Kendari', 'SD', 'Screenshot 2024-07-15 001335.png'),
(75, '-4.034218, 122.479320', 'SMKS Dewi Sartika', 'SMK', '1.webp'),
(76, '-4.015572, 122.504141', 'SD Islam Terpadu Al Qalam Kendari', 'SD', 'Screenshot 2024-07-15 002349.png'),
(77, '-3.985808, 122.576796', 'SDN 23 Kendari', 'SD', 'Screenshot 2024-07-15 002637.png'),
(78, '-3.966188, 122.596312', 'SDN 73 Kendari', 'SD', 'Screenshot 2024-07-15 132529.png'),
(79, '-3.981855, 122.609375', 'SDN 67 Kendari', 'SD', 'Screenshot 2024-07-15 133334.png'),
(80, '-3.942927, 122.500332', 'SDN 16 Mandonga', 'SD', 'Screenshot 2024-07-15 133455.png'),
(81, '-3.982409, 122.595278', 'SDN 40 Kendari', 'SD', 'Screenshot 2024-07-15 133838.png'),
(82, '-3.964361, 122.554062', 'SMPN 14 Kendari', 'SMP', 'Screenshot 2024-07-15 134502.png'),
(83, '-3.960661, 122.615179', 'SMPN 16 Kendari', 'SMP', 'Screenshot 2024-07-15 134725.png'),
(84, '-3.981322, 122.611083', 'SDN 12 Kendari', 'SD', 'Screenshot 2024-07-15 134844.png'),
(85, '-3.967142, 122.580739', 'SDN 10 Kendari', 'SD', 'Screenshot 2024-07-15 135024.png'),
(86, '-3.941162, 122.507869', 'SMAN 7 Kendari', 'SMA', 'Screenshot 2024-07-15 162659.png'),
(87, '-3.940451, 122.506742', 'SDN 17 Mandonga', 'SD', 'Screenshot 2024-07-15 162825.png'),
(88, '-3.941567, 122.492452', 'SDN 106 Kendari', 'SD', 'Screenshot 2024-07-15 163056.png'),
(89, '-3.987207, 122.478676', 'SMPN 19 Kendari', 'SD', 'Screenshot 2024-07-15 163246.png'),
(91, '-3.892598, 122.514381', 'SMAN 886 Kendari', 'SMP', 'Screenshot (26).png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`username`, `password`) VALUES
('admin', '$2y$10$v.ROY6zMaSHC3DIsvGUy2e00wiAe0ZvY5cEh7PjbDXghf7DwfnR2.'),
('anggun', '$2y$10$h6EegZZruv.74PW2r8FVP.R4MR53CEh5jxq/EkYes3wayUz4Lv5Hq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_lokasi`
--
ALTER TABLE `tb_lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_lokasi`
--
ALTER TABLE `tb_lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
