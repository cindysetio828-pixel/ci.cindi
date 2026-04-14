-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2026 at 10:20 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci3`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `kode_buku` varchar(20) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `penerbit` varchar(100) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `lokasi_rak` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `judul`, `penulis`, `penerbit`, `tahun`, `id_kategori`, `stok`, `lokasi_rak`) VALUES
(1, '001', 'Athlas', 'Katakokoh', 'Pastel Books', 2018, 2, 7, 'A1'),
(2, '002', 'Matematika Pintar', 'Indy ', 'Gramedia', 2020, 3, 100, 'B1'),
(4, '003', 'Mari Cinta Biologi', 'Bulan Hameswari', 'Gramedia', 2021, 3, 50, 'B1'),
(5, '004', 'Tentang Kamu', 'Tere Liye', 'Republika', 2016, 2, 17, 'A1'),
(6, '005', 'Rantau 1 Muara', 'Ahmad Fuadi', 'Gramedia Pustaka Utama', 2013, 2, 20, 'A1'),
(7, '006', 'Atomic Habits', 'James Clear', 'Gramedia', 2019, 1, 9, 'A2'),
(8, '007', 'Dasar-Dasar Pemrograman Web', 'Abdul Kadir', 'Andi Pustaka', 2020, 10, 34, 'C1'),
(9, '007', 'Naruto Vol. 1', 'Masashi Kishimoto', 'Elex Media', 2015, 4, 3, 'A3'),
(10, '008', 'Learn English with Me', 'Badan Bahasa', 'Balai Pustaka', 2024, 5, 10, 'B2'),
(11, '010', 'Ensiklopedia Sains Modern', 'Tim Sains', 'Erlangga', 2018, 6, 5, 'C1'),
(12, '011', 'Habibie & Ainun', 'B.J Habibie', 'THC Mandiri', 2010, 9, 7, 'C2'),
(13, '012', 'Majalah Bobo Edisi Januari', 'Redaksi Bobo', 'Kompas Gramedia', 2018, 7, 5, 'A3');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(1, 'Non-fiksi'),
(2, 'Fiksi'),
(3, 'Buku Pelajaran'),
(4, 'Komik'),
(5, 'Kamus'),
(6, 'Ensiklopedia '),
(7, 'Majalah'),
(8, 'Jurnal'),
(9, 'Biografi'),
(10, 'Teknologi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id` (`id_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
