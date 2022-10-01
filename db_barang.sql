-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 26. September 2022 jam 15:08
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_barang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluar`
--

CREATE TABLE IF NOT EXISTS `keluar` (
  `idkeluar` int(11) NOT NULL AUTO_INCREMENT,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `penerima` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  PRIMARY KEY (`idkeluar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `keluar`
--

INSERT INTO `keluar` (`idkeluar`, `idbarang`, `tanggal`, `penerima`, `qty`, `satuan`) VALUES
(6, 8, '2022-02-06 13:08:27', 'pak jo', 5, 'Buah'),
(7, 11, '2022-02-06 13:08:41', 'laila', 1, 'Dus'),
(8, 12, '2022-02-06 13:09:11', 'fina', 1, 'Box'),
(9, 13, '2022-08-02 11:07:42', 'pak saiful', 2, ''),
(10, 12, '2022-08-02 11:08:13', 'salma', 4, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE IF NOT EXISTS `masuk` (
  `idmasuk` int(11) NOT NULL AUTO_INCREMENT,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keterangan` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  PRIMARY KEY (`idmasuk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idbarang`, `tanggal`, `keterangan`, `qty`, `satuan`) VALUES
(6, 8, '2022-02-06 13:06:52', 'fina', 5, 'Buah'),
(7, 10, '2022-02-06 13:07:21', 'fina', 6, 'Buah'),
(8, 11, '2022-02-06 13:07:43', 'fina', 15, 'Dus'),
(9, 13, '2022-08-02 11:07:08', 'riski', 12, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `idbarang` int(11) NOT NULL AUTO_INCREMENT,
  `namabarang` varchar(50) NOT NULL,
  `Deskripsi` varchar(25) NOT NULL,
  `stock` int(11) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  PRIMARY KEY (`idbarang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data untuk tabel `stock`
--

INSERT INTO `stock` (`idbarang`, `namabarang`, `Deskripsi`, `stock`, `satuan`) VALUES
(8, 'Wipol botol', 'Kebutuhan sehari-hari per', 20, 'Buah'),
(9, 'Stella gantung', 'Kebutuhan sehari-hari per', 20, 'Buah'),
(10, 'Tempat sampah dalam ruang', 'Kebutuhan peralatan kerja', 16, 'Buah'),
(11, 'Kertas HVS A4', 'Kebutuhan ATK & Komputer ', 24, 'Rim'),
(12, 'Blinder Clip 107', 'Kebutuhan ATK & Komputer ', 0, 'Box'),
(13, 'baterai alkalin AA', 'Power supply', 34, 'Pcs'),
(14, 'Kertas F4', 'Kebutuhan ATK & Komputer', 15, 'Rim'),
(15, 'Map Tas', 'Kebutuhan ATK & Komputer', 10, 'Pcs'),
(16, 'Pulpen Standart AE7 hitam', 'Kebutuhan ATK & Komputer', 13, 'Pack'),
(17, 'Stapler kecil', 'Kebutuhan ATK & Komputer', 12, 'Pcs'),
(18, 'Stapler Besar', 'Kebutuhan ATK & Komputer', 8, 'Pcs'),
(19, 'Solasi Bening Sedang', 'Kebutuhan ATK & Komputer', 5, 'Pcs'),
(20, 'Solasi Bening Besar', 'Kebutuhan ATK & Komputer', 9, 'Pcs'),
(21, 'Trigonal Clip No.3', 'Kebutuhan ATK & Komputer', 17, 'Box'),
(22, 'Trigonal Clip No.5', 'Kebutuhan ATK & Komputer', 7, 'Box'),
(23, 'Binder Clip No.155', 'Kebutuhan ATK & Komputer', 8, 'Box'),
(24, 'Isi staples kecil', 'Kebutuhan ATK & Komputer', 18, 'Box'),
(25, 'Isi staples besar', 'Kebutuhan ATK & Komputer', 15, 'Box'),
(26, 'Paper clips', 'Kebutuhan ATK & Komputer', 2, 'Box'),
(27, 'Lem glue stick 25 gr', 'Kebutuhan ATK & Komputer', 24, 'Pcs'),
(28, 'Flashdisk 32 Gb', 'Kebutuhan ATK & Komputer', 9, 'Pcs'),
(29, 'Papan jalan', 'Kebutuhan ATK & Komputer', 6, 'Buah'),
(30, 'Spidol Permanent Hitam', 'Kebutuhan ATK & Komputer', 11, 'Pcs'),
(31, 'Pulpen balliner hitam', 'Kebutuhan ATK & Komputer', 21, 'Pack'),
(32, 'Lakban besar hitam', 'Kebutuhan ATK & Komputer', 6, 'Pcs'),
(33, 'Gunting besar', 'Kebutuhan ATK & Komputer', 7, 'Buah'),
(34, 'Tinta epson Yellow 003', 'Kebutuhan ATK & Komputer', 6, 'Buah'),
(35, 'Tinta epson Magenta 003', 'Kebutuhan ATK & Komputer', 6, 'Buah'),
(36, 'Tinta epson Blue 003', 'Kebutuhan ATK & Komputer', 6, 'Buah'),
(37, 'Tinta epson Black 003', 'Kebutuhan ATK & Komputer', 6, 'Buah'),
(38, 'Tinta epson Magenta 664', 'Kebutuhan ATK & Komputer', 5, 'Buah'),
(39, 'Tinta epson Yellow 664', 'Kebutuhan ATK & Komputer', 5, 'Buah'),
(40, 'Tinta epson Blue 664', 'Kebutuhan ATK & Komputer', 5, 'Buah'),
(41, 'Tinta epson Black 664', 'Kebutuhan ATK & Komputer', 5, 'Buah'),
(42, 'Wipol 750 ml', 'Alat kebersihan', 7, 'Botol'),
(43, 'Superpell refil 770 ml', 'Alat kebersihan', 9, 'Pcs'),
(44, 'Hit semprot 600', 'Alat kebersihan', 7, 'Botol'),
(45, 'Handwash soap', 'Alat kebersihan', 8, 'Botol'),
(46, 'Stella semprot 400 ml', 'Alat kebersihan', 9, 'Botol'),
(47, 'Sabun cuci piring sunlight 750 ml', 'Alat kebersihan', 17, 'Pcs'),
(48, 'Gula pasir 1 kg', 'Kebutuhan rumah tangga', 30, 'Pcs'),
(49, 'Kopi Kapal Api 380 gr', 'Kebutuhan rumah tangga', 30, 'Pcs'),
(50, 'Teh celup 25 sachet', 'Kebutuhan rumah tangga', 30, 'Pack'),
(51, 'Tissue', 'Kebutuhan rumah tangga', 24, 'Pcs'),
(52, 'Sapu lidi tangkai panjang', 'Alat kebersihan', 4, 'Buah'),
(53, 'Kanebo', 'Alat kebersihan', 7, 'Buah'),
(54, 'Kemoceng', 'Alat kebersihan', 7, 'Buah'),
(55, 'Lap kain', 'Alat kebersihan', 24, 'Pcs'),
(56, 'Kamper toilet', 'Kebutuhan rumah tangga', 12, 'Pack'),
(57, 'Plastik sampah hitam', 'Alat kebersihan', 24, 'Pack'),
(58, 'Pembersih toilet harpic 450 ml', 'Alat kebersihan', 9, 'Botol'),
(59, 'Sarung tangan sensi glow L', 'Alat kebersihan', 3, 'Box');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`) VALUES
(1, 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
