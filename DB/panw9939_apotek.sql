-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2022 at 08:20 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `panw9939_apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_wip`
--

CREATE TABLE IF NOT EXISTS `article_wip` (
`id_article` int(11) NOT NULL,
  `article_name` varchar(100) NOT NULL,
  `total_wipfactory` int(100) NOT NULL,
  `total_wipgudang` int(100) NOT NULL,
  `total_wipstore` int(100) NOT NULL,
  `total_wipsby` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_wip`
--

INSERT INTO `article_wip` (`id_article`, `article_name`, `total_wipfactory`, `total_wipgudang`, `total_wipstore`, `total_wipsby`) VALUES
(1, 'B22729R2S', 11850, 3185, 3465, 1450),
(2, 'S22772N1S', 3600, 700, 2100, 1700),
(3, 'C22711R2S', 0, 0, 0, 950),
(4, 'B22717J5S', 0, 0, 0, 1950),
(5, 'C22772N1S', 5750, 1850, 1900, 1150),
(6, 'B20811C23', 1300, 1000, 900, 800),
(7, 'B22138M17', 3900, 1900, 1200, 2450),
(8, 'B2162WP15', 2200, 1100, 1400, 1500),
(9, 'B22131125', 4750, 1600, 1650, 1300),
(10, 'C22711D34', 2200, 600, 200, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `article_wip_copy`
--

CREATE TABLE IF NOT EXISTS `article_wip_copy` (
  `article_name` varchar(50) NOT NULL,
  `id_brand` varchar(50) NOT NULL,
  `id_dept` varchar(50) NOT NULL,
  `id_kategori` varchar(50) NOT NULL,
  `id_bahan` varchar(50) NOT NULL,
  `id_motif` varchar(50) NOT NULL,
  `id_warna` varchar(50) NOT NULL,
  `id_store` varchar(50) NOT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `total_wipfactory` int(11) NOT NULL,
  `total_wipsby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_wip_copy`
--

INSERT INTO `article_wip_copy` (`article_name`, `id_brand`, `id_dept`, `id_kategori`, `id_bahan`, `id_motif`, `id_warna`, `id_store`, `nama_kota`, `total_wipfactory`, `total_wipsby`) VALUES
('B22729R2S', '2', '2', '9', 'R', '2', 'S', 'msby1', 'Surabaya', 11859, 11859),
('B22729R2S', '2', '2', '9', 'R', '2', 'S', 'mjpr', 'Jepara', 10250, 10250),
('B22729R2S', '2', '2', '9', 'R', '2', 'S', 'mmdn1', 'Medan', 9210, 350),
('B22729R2S', '2', '2', '9', 'R', '2', 'S', 'rjpr', 'Jepara', 8940, 296),
('S22772N1S', '3', '7', '2', 'N', '1', 'S', 'mmlg1', 'Malang', 5210, 221),
('S22772N1S', '3', '7', '2', 'N', '1', 'S', 'mbtn', 'Banten', 3219, 185),
('C22711R2S', '4', '1', '1', 'R', '2', 'S', 'msby1', 'Surabaya', 25000, 3000),
('C22711R2S', '4', '1', '1', 'R', '2', 'S', 'rjpr', 'Jepara', 15000, 2000),
('B22717J5S', '2', '1', '7', 'J', '5', 'S', 'mmdn1', 'Medan', 8000, 1942),
('B22717J5S', '2', '1', '7', 'J', '5', 'S', 'rjpr', 'Jepara', 5210, 450),
('C22772N1S', '4', '7', '2', 'N', '1', 'S', 'mbtn', 'Banten', 7000, 600),
('C22772N1S', '4', '7', '2', 'N', '1', 'S', 'mjpr', 'Banten', 2000, 124);

-- --------------------------------------------------------

--
-- Table structure for table `bahan`
--

CREATE TABLE IF NOT EXISTS `bahan` (
  `id_bahan` varchar(10) NOT NULL,
  `bahan_name` varchar(50) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bahan`
--

INSERT INTO `bahan` (`id_bahan`, `bahan_name`, `desc`) VALUES
('1', 'SOFT FLANEL\r\n', NULL),
('2', 'COTTON SLUB\r\n', NULL),
('A', 'FLANEL', NULL),
('B', 'DOBBY\r\n', NULL),
('C', 'DENIM\r\n', NULL),
('D', 'SAND WASH\r\n', NULL),
('E', 'POLYNOSIC\r\n', NULL),
('F', 'POPLIN\r\n', NULL),
('G', 'LINEN\r\n', NULL),
('H', 'OXFORD\r\n', NULL),
('I', 'COTTON DOBBY\r\n', NULL),
('J', 'CHAMBRAY\r\n', NULL),
('K', 'MODAL\r\n', NULL),
('L', 'VISCOSE\r\n', NULL),
('M', 'POLYESTER\r\n', NULL),
('N', 'CHINOS CASUAL\r\n', NULL),
('O', 'CORDUROY\r\n', NULL),
('P', 'COTTON STRETCH\r\n', NULL),
('Q', 'TWILL\r\n', NULL),
('R', 'COTTON\r\n', NULL),
('S', 'CHINOS CLEAN LOOK\r\n', NULL),
('T', 'CHINOS SMART\r\n', NULL),
('U', 'MICROPOROS\r\n', NULL),
('V', 'PARASIT\r\n', NULL),
('W', 'COTT COMBED\r\n', NULL),
('X', 'FORMAL\r\n', NULL),
('Y', 'HERRINGBONE\r\n', NULL),
('Z', 'COTTON FLEECE\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id_brand` varchar(10) NOT NULL,
  `brand_name` varchar(50) DEFAULT NULL,
  `brand_code` varchar(50) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id_brand`, `brand_name`, `brand_code`, `desc`) VALUES
('1', 'NON B/S/C\r\n', 'N', NULL),
('2', 'BENHILL\r\n', 'B', NULL),
('3', 'S135\r\n', 'S', NULL),
('4', 'SCOTCH\r\n', 'C', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE IF NOT EXISTS `data_pegawai` (
`id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE IF NOT EXISTS `dept` (
`id_dept` int(10) NOT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`id_dept`, `dept_name`, `desc`) VALUES
(1, 'PRIA PANJANG', NULL),
(2, 'PRIA PENDEK\r\n', NULL),
(3, 'WANITA PANJANG\r\n', NULL),
(4, 'WANITA PENDEK\r\n', NULL),
(5, 'SP PANJANG\r\n', NULL),
(6, 'SP PENDEK\r\n', NULL),
(7, 'FORMAL PANJANG\r\n', NULL),
(8, 'FORMAL PENDEK\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE IF NOT EXISTS `identitas` (
`id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `sekolah` varchar(225) NOT NULL,
  `kepsek` varchar(225) NOT NULL,
  `nip` varchar(225) NOT NULL,
  `jln` varchar(225) NOT NULL,
  `kel` varchar(225) NOT NULL,
  `kec` varchar(225) NOT NULL,
  `kab` varchar(225) NOT NULL,
  `prov` varchar(225) NOT NULL,
  `pos` varchar(225) NOT NULL,
  `telp` varchar(225) NOT NULL,
  `hp` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `web` varchar(225) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id`, `gambar`, `title`, `sekolah`, `kepsek`, `nip`, `jln`, `kel`, `kec`, `kab`, `prov`, `pos`, `telp`, `hp`, `email`, `web`) VALUES
(1, 'Benhill_Company_logo.jpg', 'WIP Monitoring Admin', 'PT. PUTERATEJA SEMPURNA', 'Riki', '007', 'Jl. Raya Dukuh Kupang No.141 C', 'Pakis', 'Sawahan', 'Surabaya', 'Jawa Timur', '60225', '024', '085', 'info@benhill.co.id', 'https://benhill.co.id/');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` varchar(10) DEFAULT NULL,
  `kategori_name` varchar(50) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori_name`, `desc`) VALUES
('1', 'KEMEJA', NULL),
('2', 'CELANA', NULL),
('3', 'JAKET', NULL),
('4', 'KOKO', NULL),
('5', 'TUNIK', NULL),
('6', 'GAMIS', NULL),
('7', 'CARDIGAN/VEST', NULL),
('8', 'JAS/BLAZER', NULL),
('9', 'CELANA KOLOR', NULL),
('Z', 'CELANA 3/4', NULL),
('Y', 'CELANA CARGO', NULL),
('X', 'CELANA RIBBING', NULL),
('W', 'CELANA BERMUDA', NULL),
('V', 'TSHIRT / KAOS OBLONG', NULL),
('U', 'ROK', NULL),
('T', 'CELANA JOGER', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lupa_password`
--

CREATE TABLE IF NOT EXISTS `lupa_password` (
`id` int(11) NOT NULL,
  `nama_perusahaan` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `telp` varchar(225) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lupa_password`
--

INSERT INTO `lupa_password` (`id`, `nama_perusahaan`, `email`, `telp`) VALUES
(1, 'Yoyo Pudding', 'info@yoyopudding.com', '085266446655');

-- --------------------------------------------------------

--
-- Table structure for table `master_order`
--

CREATE TABLE IF NOT EXISTS `master_order` (
  `oref` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `po` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `factory` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `buyer` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `style` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `color` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `prodtype` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `destination` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `deliverydate` date NOT NULL,
  `status` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `master_order`
--

INSERT INTO `master_order` (`oref`, `po`, `factory`, `buyer`, `style`, `color`, `prodtype`, `destination`, `deliverydate`, `status`) VALUES
('WO2207-774115', 'KEMEJA PANJANG LADIES', 'FACTORY-1', 'PS-SBY', '774-115-62', 'COKLAT/BROWN', 'WANITA PANJANG', 'KEMEJA', '2022-10-15', 1),
('WO2207-121325', 'CELANA PDK BERMUDA', 'FACTORY-2', 'PS-SBY', '121-325-67', 'COKLAT/BROWN', 'PRIA PENDEK', 'CELANA', '2022-10-15', 1),
('WO2207-802397', 'KEMEJA PANJANG', 'FACTORY-1', 'PS-SBY', '802-397-99', 'HIJAU/GREEN', 'PRIA PANJANG', 'KEMEJA', '2022-10-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_qr`
--

CREATE TABLE IF NOT EXISTS `master_qr` (
`qrid` int(10) NOT NULL,
  `tagid` int(10) DEFAULT NULL,
  `oref` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `po` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `style` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `color` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `size` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `bundle` int(10) DEFAULT NULL,
  `sr` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `cut` int(10) DEFAULT NULL,
  `qrno` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `picQR` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `buyer` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `prodtype` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `line` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `master_qr`
--

INSERT INTO `master_qr` (`qrid`, `tagid`, `oref`, `po`, `style`, `color`, `size`, `qty`, `bundle`, `sr`, `cut`, `qrno`, `picQR`, `buyer`, `prodtype`, `line`, `status`, `tanggal`) VALUES
(1, 1, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'S', 30, 1, '1-30', 5, '0000000722931', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722931', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(2, 1, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'S', 20, 2, '31-50', 5, '0000000722912', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722912', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(3, 3, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'L', 30, 1, '1-30', 5, '0000000722803', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722803', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(4, 4, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'XL', 30, 1, '1-30', 5, '0000000722274', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722274', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(5, 8, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '40', 30, 1, '1-30', 5, '0000000722925', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722925', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(6, 3, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'L', 30, 2, '31-60', 5, '0000000722846', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722846', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(7, 4, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'XL', 30, 2, '31-60', 5, '0000000722447', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722447', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(8, 8, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '40', 30, 2, '31-60', 5, '0000000722688', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722688', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(9, 3, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'L', 30, 3, '61-90', 5, '0000000722129', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722129', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(10, 4, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'XL', 30, 3, '61-90', 5, '0000007225010', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225010', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(11, 8, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '40', 30, 3, '61-90', 5, '0000007221811', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007221811', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(12, 3, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'L', 22, 4, '91-112', 5, '0000007223912', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007223912', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(13, 4, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'XL', 20, 4, '91-110', 5, '0000007224313', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224313', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(14, 8, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '40', 20, 4, '91-110', 5, '0000007229614', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007229614', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(15, 2, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'M', 30, 1, '1-30', 5, '0000007225615', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225615', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(16, 2, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'M', 30, 2, '31-60', 5, '0000007228916', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228916', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(17, 2, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'M', 30, 3, '61-90', 5, '0000007228217', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228217', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(18, 2, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'M', 30, 4, '91-120', 5, '0000007224518', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224518', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(19, 2, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'M', 10, 5, '121-130', 5, '0000007227719', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227719', 'PS-SBY', 'WANITA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(20, 6, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '30', 30, 1, '1-30', 5, '0000007225420', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225420', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(21, 7, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '31', 30, 1, '1-30', 5, '0000007223721', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007223721', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(22, 6, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '30', 30, 2, '31-60', 5, '0000007222222', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007222222', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(23, 7, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '31', 30, 2, '31-60', 5, '0000007229623', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007229623', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(24, 6, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '30', 30, 3, '61-90', 5, '0000007222124', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007222124', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(25, 7, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '31', 30, 3, '61-90', 5, '0000007221225', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007221225', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(26, 6, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '30', 30, 4, '91-120', 5, '0000007229426', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007229426', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(27, 7, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '31', 30, 4, '91-120', 5, '0000007224127', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224127', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(28, 6, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '30', 30, 5, '121-150', 5, '0000007222028', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007222028', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(29, 7, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '31', 30, 5, '121-150', 5, '0000007227629', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227629', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(30, 6, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '30', 5, 6, '151-155', 5, '0000007222630', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007222630', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(31, 7, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '31', 5, 6, '151-155', 5, '0000007229831', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007229831', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(32, 5, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '29', 30, 1, '1-30', 5, '0000007221732', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007221732', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(33, 5, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '29', 30, 2, '31-60', 5, '0000007228633', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228633', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(34, 5, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '29', 30, 3, '61-90', 5, '0000007228434', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228434', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(35, 5, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '29', 30, 4, '91-120', 5, '0000007226235', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007226235', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(36, 5, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '29', 30, 5, '121-150', 5, '0000007225936', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225936', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(37, 5, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '29', 30, 6, '151-180', 5, '0000007221137', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007221137', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(38, 5, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '29', 20, 7, '181-200', 5, '0000007227338', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227338', 'PS-SBY', 'PRIA PENDEK', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(39, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 30, 1, '1-30', 7, '0000007223739', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007223739', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(40, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 30, 2, '31-60', 7, '0000007226240', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007226240', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(41, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 30, 3, '61-90', 7, '0000000722341', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722341', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(42, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 30, 4, '91-120', 7, '0000007222342', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007222342', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(43, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 30, 5, '121-150', 7, '0000007221143', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007221143', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(44, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 30, 6, '151-180', 7, '0000007228044', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228044', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(45, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 30, 7, '181-210', 7, '0000007227545', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227545', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(46, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 30, 8, '211-240', 7, '0000007223746', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007223746', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(47, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 30, 9, '241-270', 7, '0000007225747', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225747', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(48, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 30, 10, '271-300', 7, '0000007227448', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227448', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(49, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 30, 11, '301-330', 7, '0000000722349', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722349', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(50, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 30, 12, '331-360', 7, '0000007228950', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228950', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(51, 10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 5, 13, '361-365', 7, '0000007224151', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224151', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(52, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 1, '1-30', 7, '0000007223452', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007223452', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(53, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 2, '31-60', 7, '0000007225053', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225053', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(54, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 3, '61-90', 7, '0000007224854', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224854', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(55, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 4, '91-120', 7, '0000007229055', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007229055', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(56, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 5, '121-150', 7, '0000007221356', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007221356', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(57, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 6, '151-180', 7, '0000007228757', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228757', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(58, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 7, '181-210', 7, '0000000722458', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722458', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(59, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 8, '211-240', 7, '0000007225159', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225159', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(60, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 9, '241-270', 7, '0000007224560', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224560', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(61, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 10, '271-300', 7, '0000007227561', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227561', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(62, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 11, '301-330', 7, '0000007224062', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224062', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(63, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 12, '331-360', 7, '0000007227563', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227563', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(64, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 13, '361-390', 7, '0000007225764', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225764', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(65, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 14, '391-420', 7, '0000007225965', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225965', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(66, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 15, '421-450', 7, '0000007222566', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007222566', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(67, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 16, '451-480', 7, '0000007224867', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224867', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16'),
(68, 9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 30, 17, '481-510', 7, '0000007226468', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007226468', 'PS-SBY', 'PRIA PANJANG', 'PO BUNDLE', NULL, '2022-07-22 23:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `master_size`
--

CREATE TABLE IF NOT EXISTS `master_size` (
`id` int(10) NOT NULL,
  `oref` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `po` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `style` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `color` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `size` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `sku` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `master_size`
--

INSERT INTO `master_size` (`id`, `oref`, `po`, `style`, `color`, `size`, `sku`, `qty`) VALUES
(1, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'S', 'B221311250S02', 50),
(2, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'M', 'B221311250M02', 130),
(3, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'L', 'B221311250L02\r\n', 112),
(4, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'XL', 'B22131125XL02\r\n', 110),
(5, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '29', 'B2162WP152906\r\n', 200),
(6, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '30', 'B2162WP153006\r\n', 155),
(7, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '31', 'B2162WP153106\r\n', 155),
(8, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '40', 'B2162WP154006\r\n', 110),
(9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 'B22138M170M02\r\n', 510),
(10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 'B22138M17XL02\r\n', 365);

-- --------------------------------------------------------

--
-- Table structure for table `master_tagid`
--

CREATE TABLE IF NOT EXISTS `master_tagid` (
`tagid` int(10) NOT NULL,
  `oref` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `po` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `style` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `color` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `size` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sisabagi` int(10) DEFAULT NULL,
  `pembagi` int(10) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `master_tagid`
--

INSERT INTO `master_tagid` (`tagid`, `oref`, `po`, `style`, `color`, `size`, `qty`, `sisabagi`, `pembagi`) VALUES
(1, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'S', 50, 20, 1),
(2, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'M', 130, 10, 4),
(3, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'L', 112, 22, 3),
(4, 'WO2207-774115', 'KEMEJA PANJANG LADIES', '774-115-62', 'COKLAT/BROWN', 'XL', 110, 20, 3),
(5, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '29', 200, 20, 6),
(6, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '30', 155, 5, 5),
(7, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '31', 155, 5, 5),
(8, 'WO2207-121325', 'CELANA PDK BERMUDA', '121-325-67', 'COKLAT/BROWN', '40', 110, 20, 3),
(9, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'M', 510, 0, 17),
(10, 'WO2207-802397', 'KEMEJA PANJANG', '802-397-99', 'HIJAU/GREEN', 'XL', 365, 5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `master_temp`
--

CREATE TABLE IF NOT EXISTS `master_temp` (
`bundle` int(10) NOT NULL,
  `qrid` int(10) DEFAULT NULL,
  `tagid` int(10) DEFAULT NULL,
  `oref` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `po` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `style` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `color` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `size` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(11) NOT NULL,
  `link` varchar(225) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `link`) VALUES
(1, 'printkartupelajar'),
(2, 'blokmenucetakkaper');

-- --------------------------------------------------------

--
-- Table structure for table `milari`
--

CREATE TABLE IF NOT EXISTS `milari` (
  `id_obat` varchar(100) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `milari`
--

INSERT INTO `milari` (`id_obat`, `nama`, `alamat`) VALUES
('00001883399', 'HANSEUNG', 'SB7601');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE IF NOT EXISTS `month` (
  `month_num` int(2) NOT NULL,
  `month_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_num`, `month_name`) VALUES
(0, ''),
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `motif`
--

CREATE TABLE IF NOT EXISTS `motif` (
  `id_motif` varchar(10) DEFAULT NULL,
  `motif_name` varchar(50) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motif`
--

INSERT INTO `motif` (`id_motif`, `motif_name`, `desc`) VALUES
('1', 'POLOS', NULL),
('2', 'KOTAK', NULL),
('3', 'PRINTING', NULL),
('4', 'SALUR', NULL),
('5', 'COMBO', NULL),
('6', 'BORDIR', NULL),
('7', 'BLACK PANTHER', NULL),
('8', 'POLOS BUNGLON', NULL),
('9', 'TYE DYE/CELUP', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permintaan_akun`
--

CREATE TABLE IF NOT EXISTS `permintaan_akun` (
`id` int(11) NOT NULL,
  `nama_perusahaan` varchar(225) NOT NULL,
  `nama_pemilik` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `telp` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` varchar(15) NOT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `alamat`) VALUES
('2', '123', 'pmj');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE IF NOT EXISTS `size` (
  `id_size` varchar(10) DEFAULT NULL,
  `size_name` varchar(50) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id_size`, `size_name`, `desc`) VALUES
('1', '0S', NULL),
('2', '0M', NULL),
('3', '0L', NULL),
('4', 'XL', NULL),
('5', '2L', NULL),
('6', '3L', NULL),
('7', '4L', NULL),
('8', '5L', NULL),
('9', '28\r\n29\r\n30\r\n31\r\n32\r\n33\r\n34\r\n35\r\n36\r\n37\r\n38\r\n39\r\n40', NULL),
('10', '29', NULL),
('11', '30', NULL),
('12', '31', NULL),
('13', '32', NULL),
('14', '33', NULL),
('15', '34', NULL),
('16', '35', NULL),
('17', '36', NULL),
('18', '37', NULL),
('19', '38', NULL),
('20', '39', NULL),
('21', '40', NULL),
('22', '41', NULL),
('23', '44', NULL),
('24', '46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stempel`
--

CREATE TABLE IF NOT EXISTS `stempel` (
`id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stempel`
--

INSERT INTO `stempel` (`id`, `gambar`) VALUES
(1, 'stempel926.png');

-- --------------------------------------------------------

--
-- Table structure for table `stock_kota`
--

CREATE TABLE IF NOT EXISTS `stock_kota` (
  `id_kota` varchar(50) NOT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `stock_kota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_kota`
--

INSERT INTO `stock_kota` (`id_kota`, `nama_kota`, `stock_kota`) VALUES
('path23', 'Balikpapan', 3300),
('path14', 'Banten', 2000),
('path17', 'Denpasar', 1650),
('path11', 'Jakarta', 1400),
('path13', 'Jepara', 1350),
('path15', 'Surabaya', 1100),
('path13', 'Solo', 1000),
('path15', 'Malang', 950),
('path2', 'Medan', 350);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `id_store` varchar(50) NOT NULL,
  `name_store` varchar(50) NOT NULL,
  `stock_store` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id_store`, `name_store`, `stock_store`) VALUES
('msby1', 'Matahari SBY 1', 2050),
('mjpr', 'Matahari JPR', 1650),
('mmdn1', 'Matahari MDN 1', 1400),
('mbtn', 'Matahari BTN', 1350),
('rjpr', 'Ramayana JPR', 1150),
('mmlg1', 'Matahari MLG 1', 1100);

-- --------------------------------------------------------

--
-- Table structure for table `table_cat`
--

CREATE TABLE IF NOT EXISTS `table_cat` (
`id_kat` int(3) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `des_kat` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_cat`
--

INSERT INTO `table_cat` (`id_kat`, `nama_kategori`, `des_kat`) VALUES
(201, 'Anti Radang', 'Melegakan peradangan'),
(207, 'Antioksidan', 'Mencegah penuaan dini'),
(208, 'Anti Depresan', 'Mengurangi depresi'),
(209, 'Vitamin', 'Suplemen'),
(216, 'Stimulan', 'Menstimulasi hewan'),
(217, 'Antibiotik', 'bakteriostatik'),
(222, 'Hemolitika', 'Menghentikan pendarahan');

-- --------------------------------------------------------

--
-- Table structure for table `table_invoice`
--

CREATE TABLE IF NOT EXISTS `table_invoice` (
`id_tagihan` int(5) NOT NULL,
  `ref` varchar(10) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `banyak` int(3) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `nama_pembeli` varchar(40) NOT NULL,
  `tgl_beli` date NOT NULL,
  `grandtotal` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_invoice`
--

INSERT INTO `table_invoice` (`id_tagihan`, `ref`, `nama_obat`, `harga_jual`, `banyak`, `subtotal`, `nama_pembeli`, `tgl_beli`, `grandtotal`) VALUES
(80, 'JMBSErmmo0', 'Adona', 15000, 1, 15000, 'Melinda', '2018-08-09', 29000),
(81, 'JMBSErmmo0', 'Asam Mefenamat', 4000, 1, 4000, 'Melinda', '2018-08-09', 29000),
(82, 'JMBSErmmo0', 'Salbutamol', 10000, 1, 10000, 'Melinda', '2018-08-09', 29000),
(87, 'xl23Q6whsP', 'Salbutamol', 10000, 3, 30000, 'Melinda', '2018-01-10', 30000),
(90, '9ab7RcZHma', 'Adrome', 15000, 6, 90000, 'Doni', '2018-02-14', 90000),
(91, 'fAMEjr9rA0', 'Ambroxol', 22000, 5, 110000, 'Amirullah', '2018-03-14', 110000),
(92, 'so5518T1vI', 'Salbutamol', 10000, 6, 60000, 'Doni', '2018-04-18', 60000),
(97, 'VS27jjD5Ze', 'Ambroxol', 22000, 1, 22000, 'Pitaloka', '2018-07-18', 32000),
(98, 'VS27jjD5Ze', 'Stimuno', 10000, 1, 10000, 'Pitaloka', '2018-07-18', 32000),
(99, 'nyptFm9i43', 'Stimuno', 10000, 3, 30000, 'Andi', '2018-06-13', 30000),
(101, 'e7QgBweE8X', 'Adrome', 15000, 1, 15000, 'Andi', '2018-09-15', 15000),
(105, 'zPpAfLsmd7', 'Adrome', 15000, 1, 15000, 'Amila', '2018-05-16', 25000),
(106, 'zPpAfLsmd7', 'Amoxilin', 10000, 1, 10000, 'Amila', '2018-05-16', 25000),
(119, 'FfndSkUmh6', 'Asam Mefenamat', 4000, 2, 8000, 'Alina', '2018-09-24', 12000),
(120, 'FfndSkUmh6', 'Vitamin E', 4000, 1, 4000, 'Alina', '2018-09-24', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `table_med`
--

CREATE TABLE IF NOT EXISTS `table_med` (
`id_obat` int(4) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `penyimpanan` varchar(30) NOT NULL,
  `stok` int(3) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL,
  `kedaluwarsa` date NOT NULL,
  `des_obat` text NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `nama_pemasok` varchar(30) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1037 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_med`
--

INSERT INTO `table_med` (`id_obat`, `nama_obat`, `penyimpanan`, `stok`, `unit`, `nama_kategori`, `kedaluwarsa`, `des_obat`, `harga_beli`, `harga_jual`, `nama_pemasok`, `gambar`) VALUES
(1008, 'Asam Mefenamat', 'Gudang', 11, 'Semprot', 'Antioksidan', '2020-07-20', 'Untuk meringankan gejala nyeri', 4000, 4000, 'Bina Jaya Apotek', ''),
(1016, 'Salbutamol', 'Gudang', 4, 'Sirup', 'Antioksidan', '2020-07-20', 'Tidak ada', 6000, 10000, 'Bina Jaya Apotek', ''),
(1018, 'Adrome', 'Gudang', 6, 'Kapsul', 'Stimulan', '2020-08-20', 'Tidak untuk kucing', 12000, 15000, 'Kenanga Apotek', ''),
(1023, 'Ambroxol', 'Lemari 1', 6, 'Semprot', 'Anti Radang', '2014-08-20', '', 20000, 22000, 'Kenanga Apotek', ''),
(1025, 'Amoxilin', 'Rak 1', 9, 'Semprot', 'Anti Radang', '2018-12-14', '', 7000, 10000, 'Tina Farma', ''),
(1026, 'Cetirizen', 'Rak 1', 0, 'Tablet', 'Anti Radang', '2020-01-20', '', 2000, 3000, 'Kenanga Apotek', ''),
(1027, 'Corovit', 'Gudang', 10, 'Tablet', 'Antioksidan', '2018-09-28', '', 2000, 3000, 'Kimia Farma', ''),
(1033, 'Vitamin E', 'Rak 1', 8, 'Tablet', 'Vitamin', '2019-01-23', '', 3000, 4000, 'Bina Jaya Apotek', ''),
(1036, 'Vitamin A', 'Rak 2', 10, 'Tablet', 'Vitamin', '2013-02-20', '', 3000, 4000, 'Bina Jaya Apotek', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_packin`
--

CREATE TABLE IF NOT EXISTS `table_packin` (
  `id_obat` varchar(30) NOT NULL,
  `nama_obat` varchar(30) DEFAULT NULL,
  `penyimpanan` varchar(30) DEFAULT NULL,
  `stok` int(3) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL,
  `kedaluwarsa` date DEFAULT NULL,
  `des_obat` text,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `nama_pemasok` varchar(30) DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_packin`
--

INSERT INTO `table_packin` (`id_obat`, `nama_obat`, `penyimpanan`, `stok`, `unit`, `nama_kategori`, `kedaluwarsa`, `des_obat`, `harga_beli`, `harga_jual`, `nama_pemasok`, `gambar`) VALUES
('1008', 'Asam Mefenamat', 'Gudang', 11, 'Semprot', 'Antioksidan', '2020-07-20', 'Untuk meringankan gejala nyeri', 4000, 4000, 'Bina Jaya Apotek', ''),
('1016', 'Salbutamol', 'Gudang', 4, 'Sirup', 'Antioksidan', '2020-07-20', 'Tidak ada', 6000, 10000, 'Bina Jaya Apotek', ''),
('1018', 'Adrome', 'Gudang', 6, 'Kapsul', 'Stimulan', '2020-08-20', 'Tidak untuk kucing', 12000, 15000, 'Kenanga Apotek', ''),
('1023', 'Ambroxol', 'Lemari 1', 6, 'Semprot', 'Anti Radang', '2014-08-20', '', 20000, 22000, 'Kenanga Apotek', ''),
('1025', 'Amoxilin', 'Rak 1', 9, 'Semprot', 'Anti Radang', '2018-12-14', '', 7000, 10000, 'Tina Farma', ''),
('1026', 'Cetirizen', 'Rak 1', 0, 'Tablet', 'Anti Radang', '2020-01-20', '', 2000, 3000, 'Kenanga Apotek', ''),
('1027', 'Corovit', 'Gudang', 10, 'Tablet', 'Antioksidan', '2018-09-28', '', 2000, 3000, 'Kimia Farma', ''),
('1033', 'Vitamin E', 'Rak 1', 8, 'Tablet', 'Vitamin', '2019-01-23', '', 3000, 4000, 'Bina Jaya Apotek', ''),
('1036', 'Vitamin A', 'Rak 2', 10, 'Tablet', 'Vitamin', '2013-02-20', '', 3000, 4000, 'Bina Jaya Apotek', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_purchase`
--

CREATE TABLE IF NOT EXISTS `table_purchase` (
`id_pembelian` int(5) NOT NULL,
  `ref` varchar(10) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `banyak` int(3) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `nama_pemasok` varchar(40) NOT NULL,
  `tgl_beli` date NOT NULL,
  `grandtotal` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_purchase`
--

INSERT INTO `table_purchase` (`id_pembelian`, `ref`, `nama_obat`, `harga_beli`, `banyak`, `subtotal`, `nama_pemasok`, `tgl_beli`, `grandtotal`) VALUES
(3, 'L8BvtCyFDZ', 'Salbutamol', 6000, 3, 18000, 'Bina Jaya Apotek', '2018-08-11', 24000),
(4, 'L8BvtCyFDZ', 'Stimuno', 6000, 1, 6000, 'Bina Jaya Apotek', '2018-08-11', 24000),
(8, 'pwoaFcmGVs', 'Asam Mefenamat', 4000, 12, 48000, 'Bina Jaya Apotek', '2018-02-22', 48000),
(9, '96kHYMepS9', 'Salbutamol', 6000, 7, 42000, 'Bina Jaya Apotek', '2018-03-21', 42000),
(10, 'Tbb6pLVCJr', 'Ambroxol', 20000, 4, 80000, 'Bina Jaya Apotek', '2018-01-24', 80000),
(11, 'fdMGrBa4nS', 'Stimuno', 6000, 16, 96000, 'Bina Jaya Apotek', '2018-04-18', 96000),
(12, 'aDxtUA0rsc', 'Adrome', 12000, 6, 72000, 'Bina Jaya Apotek', '2018-05-09', 72000),
(14, 'KCZxZ1MqID', 'Ambroxol', 20000, 2, 40000, 'Bina Jaya Apotek', '2018-07-18', 40000),
(15, 'Ar9235n1ny', 'Adrome', 12000, 3, 36000, 'Kenanga Apotek', '2018-06-06', 56000),
(16, 'Ar9235n1ny', 'Ambroxol', 20000, 1, 20000, 'Kenanga Apotek', '2018-06-06', 56000),
(25, 'q8ke6ToBMo', 'Cetirizen', 2000, 3, 6000, 'Kenanga Apotek', '2018-09-24', 6000);

-- --------------------------------------------------------

--
-- Table structure for table `table_sewingin`
--

CREATE TABLE IF NOT EXISTS `table_sewingin` (
  `tagid` varchar(20) DEFAULT NULL,
  `buyer` varchar(30) DEFAULT NULL,
  `style` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `cut` int(11) DEFAULT NULL,
  `po` varchar(30) DEFAULT NULL,
  `oref` varchar(20) DEFAULT NULL,
  `ssn` varchar(10) DEFAULT NULL,
  `shade` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `sr` varchar(20) DEFAULT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `prodtype` varchar(20) DEFAULT NULL,
  `bundle` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `line` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `lineasal` varchar(30) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `picQR` varchar(150) DEFAULT NULL,
  `ExFact` int(5) DEFAULT NULL,
`no` int(20) NOT NULL,
  `LOC01` datetime DEFAULT NULL,
  `LOC02` datetime DEFAULT NULL,
  `LOC03` datetime DEFAULT NULL,
  `LOC04` datetime DEFAULT NULL,
  `LOC05` datetime DEFAULT NULL,
  `LOC06` datetime DEFAULT NULL,
  `LOC07` datetime DEFAULT NULL,
  `LOC08` datetime DEFAULT NULL,
  `LOC09` datetime DEFAULT NULL,
  `LOC10` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_sewingin`
--

INSERT INTO `table_sewingin` (`tagid`, `buyer`, `style`, `qty`, `color`, `cut`, `po`, `oref`, `ssn`, `shade`, `size`, `sr`, `sku`, `prodtype`, `bundle`, `tanggal`, `line`, `status`, `lineasal`, `unit`, `picQR`, `ExFact`, `no`, `LOC01`, `LOC02`, `LOC03`, `LOC04`, `LOC05`, `LOC06`, `LOC07`, `LOC08`, `LOC09`, `LOC10`) VALUES
('0000000722925', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '40', '1-30', 'B2162WP154006', 'PRIA PENDEK', 1, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722925', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000000722688', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '40', '31-60', 'B2162WP154006', 'PRIA PENDEK', 2, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722688', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007221811', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '40', '61-90', 'B2162WP154006', 'PRIA PENDEK', 3, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007221811', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007229614', 'PS-SBY', '121-325-67', 20, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '40', '91-110', 'B2162WP154006', 'PRIA PENDEK', 4, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007229614', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007225420', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '30', '1-30', 'B2162WP153006', 'PRIA PENDEK', 1, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225420', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007223721', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '31', '1-30', 'B2162WP153106', 'PRIA PENDEK', 1, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007223721', NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007222222', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '30', '31-60', 'B2162WP153006', 'PRIA PENDEK', 2, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007222222', NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007229623', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '31', '31-60', 'B2162WP153106', 'PRIA PENDEK', 2, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007229623', NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007222124', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '30', '61-90', 'B2162WP153006', 'PRIA PENDEK', 3, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007222124', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007221225', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '31', '61-90', 'B2162WP153106', 'PRIA PENDEK', 3, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007221225', NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007229426', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '30', '91-120', 'B2162WP153006', 'PRIA PENDEK', 4, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007229426', NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007224127', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '31', '91-120', 'B2162WP153106', 'PRIA PENDEK', 4, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224127', NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007222028', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '30', '121-150', 'B2162WP153006', 'PRIA PENDEK', 5, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007222028', NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007227629', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '31', '121-150', 'B2162WP153106', 'PRIA PENDEK', 5, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227629', NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007222630', 'PS-SBY', '121-325-67', 5, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '30', '151-155', 'B2162WP153006', 'PRIA PENDEK', 6, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007222630', NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007229831', 'PS-SBY', '121-325-67', 5, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '31', '151-155', 'B2162WP153106', 'PRIA PENDEK', 6, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007229831', NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007221732', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '29', '1-30', 'B2162WP152906', 'PRIA PENDEK', 1, '2022-07-23 03:57:29', 'SHIPPING', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007221732', NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-23 03:57:29', NULL, NULL, NULL),
('0000007228633', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '29', '31-60', 'B2162WP152906', 'PRIA PENDEK', 2, '2022-07-23 05:35:02', 'STORE IN', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228633', NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-23 05:31:20', '2022-07-23 05:32:17', '2022-07-23 05:34:20', '2022-07-23 05:35:02'),
('0000007228434', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '29', '61-90', 'B2162WP152906', 'PRIA PENDEK', 3, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228434', NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007226235', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '29', '91-120', 'B2162WP152906', 'PRIA PENDEK', 4, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007226235', NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007225936', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '29', '121-150', 'B2162WP152906', 'PRIA PENDEK', 5, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225936', NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007221137', 'PS-SBY', '121-325-67', 30, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '29', '151-180', 'B2162WP152906', 'PRIA PENDEK', 6, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007221137', NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007227338', 'PS-SBY', '121-325-67', 20, 'COKLAT/BROWN', 5, 'CELANA PDK BERMUDA', 'WO2207-121325', NULL, NULL, '29', '181-200', 'B2162WP152906', 'PRIA PENDEK', 7, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227338', NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007223739', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '1-30', 'B22138M17XL02', 'PRIA PANJANG', 1, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007223739', NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007226240', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '31-60', 'B22138M17XL02', 'PRIA PANJANG', 2, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007226240', NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000000722341', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '61-90', 'B22138M17XL02', 'PRIA PANJANG', 3, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722341', NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007222342', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '91-120', 'B22138M17XL02', 'PRIA PANJANG', 4, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007222342', NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007221143', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '121-150', 'B22138M17XL02', 'PRIA PANJANG', 5, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007221143', NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007228044', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '151-180', 'B22138M17XL02', 'PRIA PANJANG', 6, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228044', NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007227545', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '181-210', 'B22138M17XL02', 'PRIA PANJANG', 7, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227545', NULL, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007223746', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '211-240', 'B22138M17XL02', 'PRIA PANJANG', 8, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007223746', NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007225747', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '241-270', 'B22138M17XL02', 'PRIA PANJANG', 9, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225747', NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007227448', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '271-300', 'B22138M17XL02', 'PRIA PANJANG', 10, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227448', NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000000722349', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '301-330', 'B22138M17XL02', 'PRIA PANJANG', 11, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722349', NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007228950', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '331-360', 'B22138M17XL02', 'PRIA PANJANG', 12, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228950', NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007224151', 'PS-SBY', '802-397-99', 5, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'XL', '361-365', 'B22138M17XL02', 'PRIA PANJANG', 13, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224151', NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007223452', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '1-30', 'B22138M170M02', 'PRIA PANJANG', 1, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007223452', NULL, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007225053', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '31-60', 'B22138M170M02', 'PRIA PANJANG', 2, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225053', NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007224854', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '61-90', 'B22138M170M02', 'PRIA PANJANG', 3, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224854', NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007229055', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '91-120', 'B22138M170M02', 'PRIA PANJANG', 4, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007229055', NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007221356', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '121-150', 'B22138M170M02', 'PRIA PANJANG', 5, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007221356', NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007228757', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '151-180', 'B22138M170M02', 'PRIA PANJANG', 6, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228757', NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000000722458', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '181-210', 'B22138M170M02', 'PRIA PANJANG', 7, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722458', NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007225159', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '211-240', 'B22138M170M02', 'PRIA PANJANG', 8, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225159', NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007224560', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '241-270', 'B22138M170M02', 'PRIA PANJANG', 9, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224560', NULL, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007227561', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '271-300', 'B22138M170M02', 'PRIA PANJANG', 10, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227561', NULL, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007224062', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '301-330', 'B22138M170M02', 'PRIA PANJANG', 11, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224062', NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007227563', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '331-360', 'B22138M170M02', 'PRIA PANJANG', 12, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227563', NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007225764', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '361-390', 'B22138M170M02', 'PRIA PANJANG', 13, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225764', NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007225965', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '391-420', 'B22138M170M02', 'PRIA PANJANG', 14, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225965', NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007222566', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '421-450', 'B22138M170M02', 'PRIA PANJANG', 15, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007222566', NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007224867', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '451-480', 'B22138M170M02', 'PRIA PANJANG', 16, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224867', NULL, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007226468', 'PS-SBY', '802-397-99', 30, 'HIJAU/GREEN', 7, 'KEMEJA PANJANG', 'WO2207-802397', NULL, NULL, 'M', '481-510', 'B22138M170M02', 'PRIA PANJANG', 17, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007226468', NULL, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000000722931', 'PS-SBY', '774-115-62', 30, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'S', '1-30', 'B221311250S02', 'WANITA PANJANG', 1, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722931', NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000000722912', 'PS-SBY', '774-115-62', 20, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'S', '31-50', 'B221311250S02', 'WANITA PANJANG', 2, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722912', NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000000722803', 'PS-SBY', '774-115-62', 30, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'L', '1-30', 'B221311250L02', 'WANITA PANJANG', 1, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722803', NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000000722274', 'PS-SBY', '774-115-62', 30, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'XL', '1-30', 'B22131125XL02', 'WANITA PANJANG', 1, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722274', NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000000722846', 'PS-SBY', '774-115-62', 30, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'L', '31-60', 'B221311250L02', 'WANITA PANJANG', 2, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722846', NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000000722447', 'PS-SBY', '774-115-62', 30, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'XL', '31-60', 'B22131125XL02', 'WANITA PANJANG', 2, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722447', NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000000722129', 'PS-SBY', '774-115-62', 30, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'L', '61-90', 'B221311250L02', 'WANITA PANJANG', 3, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000000722129', NULL, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007225010', 'PS-SBY', '774-115-62', 30, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'XL', '61-90', 'B22131125XL02', 'WANITA PANJANG', 3, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225010', NULL, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007223912', 'PS-SBY', '774-115-62', 22, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'L', '91-112', 'B221311250L02', 'WANITA PANJANG', 4, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007223912', NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007224313', 'PS-SBY', '774-115-62', 20, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'XL', '91-110', 'B22131125XL02', 'WANITA PANJANG', 4, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224313', NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007225615', 'PS-SBY', '774-115-62', 30, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'M', '1-30', 'B221311250M02', 'WANITA PANJANG', 1, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007225615', NULL, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007228916', 'PS-SBY', '774-115-62', 30, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'M', '31-60', 'B221311250M02', 'WANITA PANJANG', 2, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228916', NULL, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007228217', 'PS-SBY', '774-115-62', 30, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'M', '61-90', 'B221311250M02', 'WANITA PANJANG', 3, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007228217', NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007224518', 'PS-SBY', '774-115-62', 30, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'M', '91-120', 'B221311250M02', 'WANITA PANJANG', 4, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007224518', NULL, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('0000007227719', 'PS-SBY', '774-115-62', 10, 'COKLAT/BROWN', 5, 'KEMEJA PANJANG LADIES', 'WO2207-774115', NULL, NULL, 'M', '121-130', 'B221311250M02', 'WANITA PANJANG', 5, NULL, 'PO BUNDLE', NULL, '', '', 'bbg@Indev_Benhill2022,,,,,,,,,,,,,,,,sq_n.c.v_0000007227719', NULL, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_sewingin2`
--

CREATE TABLE IF NOT EXISTS `table_sewingin2` (
  `tagid` varchar(20) DEFAULT NULL,
  `buyer` varchar(30) DEFAULT NULL,
  `style` varchar(20) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `cut` int(11) DEFAULT NULL,
  `po` varchar(30) DEFAULT NULL,
  `oref` varchar(20) DEFAULT NULL,
  `ssn` varchar(10) DEFAULT NULL,
  `shade` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `sr` varchar(20) DEFAULT NULL,
  `prodtype` varchar(20) DEFAULT NULL,
  `bundle` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `line` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `lineasal` varchar(30) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `picQR` varchar(150) DEFAULT NULL,
  `ExFact` int(5) DEFAULT NULL,
`no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_sup`
--

CREATE TABLE IF NOT EXISTS `table_sup` (
`id_pem` int(3) NOT NULL,
  `nama_pemasok` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_sup`
--

INSERT INTO `table_sup` (`id_pem`, `nama_pemasok`, `alamat`, `telepon`) VALUES
(101, 'Bina Jaya Apotek', 'Jalan Kaliurang KM 7', '089693330253'),
(103, 'Kimia Farma', 'Jalan Kaliurang', '02574555'),
(104, 'Tina Farma', 'Jalan Kaliurang', '08775544'),
(105, 'Kenanga Apotek', 'Jalan Magelang', '08965555'),
(108, 'Surya Farmasi', 'Jalan Magelang KM 9', '08546677790');

-- --------------------------------------------------------

--
-- Table structure for table `table_unit`
--

CREATE TABLE IF NOT EXISTS `table_unit` (
`id_unit` int(2) NOT NULL,
  `unit` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_unit`
--

INSERT INTO `table_unit` (`id_unit`, `unit`) VALUES
(1, 'Kapsul'),
(2, 'Semprot'),
(3, 'Sirup'),
(4, 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE IF NOT EXISTS `temp` (
`tagid` int(11) NOT NULL,
  `oref` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `s1` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `s2` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `s3` varchar(10) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tkapel`
--

CREATE TABLE IF NOT EXISTS `tkapel` (
`id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkapel`
--

INSERT INTO `tkapel` (`id`, `gambar`) VALUES
(1, 'bismillah.png');

-- --------------------------------------------------------

--
-- Table structure for table `tkaper`
--

CREATE TABLE IF NOT EXISTS `tkaper` (
`id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkaper`
--

INSERT INTO `tkaper` (`id`, `gambar`) VALUES
(1, 'bismillah.png');

-- --------------------------------------------------------

--
-- Table structure for table `ttangan`
--

CREATE TABLE IF NOT EXISTS `ttangan` (
`id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ttangan`
--

INSERT INTO `ttangan` (`id`, `gambar`) VALUES
(1, 'ttdskl586.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nis` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nisn` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tmp_lhr` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_lhr` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nis`, `nisn`, `nama_lengkap`, `tmp_lhr`, `tgl_lhr`, `jk`, `email`, `alamat`, `no_telp`, `gambar`, `level`, `blokir`, `id_session`) VALUES
('admin', '910257', '', '', 'Administrator', '', '', '', 'bbgprasetio@gmail.com', '', '085710073294', 'Benhill_Brand.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('bbg', '123', '04749', '123', 'bbg', 'jkt', '1973-01-12', 'laki-laki', 'bbgpandu@gmail.com', 'yk', '085710073294', 'cmp_20180722013828bbg_foto.jpg', 'admin', 'N', '123'),
('cutting', '123', '009', '123', 'cutting', 'klaten', '1993-01-12', 'pria', 'klaten2021@gmail.com', 'klaten', '0272', 'avatar2.png', 'user', 'N', '999'),
('indra', '123', '007', '123', 'indra', 'surabaya', '1970-07-23', 'pria', 'indra33@gmail.com', 'solo', '0271', 'avatar5.png', 'admin', 'N', '007');

-- --------------------------------------------------------

--
-- Table structure for table `warna`
--

CREATE TABLE IF NOT EXISTS `warna` (
  `id_warna` varchar(10) DEFAULT NULL,
  `warna_name` varchar(50) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warna`
--

INSERT INTO `warna` (`id_warna`, `warna_name`, `desc`) VALUES
('0', 'MULTI COLOR', NULL),
('1', 'PUTIH/WHITE', NULL),
('2', 'HITAM/BLACK', NULL),
('3', 'BIRU/BLUE', NULL),
('4', 'MERAH/RED', NULL),
('5', 'COKLAT/BROWN', NULL),
('6', 'ABU/GREY', NULL),
('7', 'HIJAU/GREEN', NULL),
('8', 'UNGU/PURPLE', NULL),
('9', 'KREM/BEIGE', NULL),
('A', 'BRONZE', NULL),
('B', 'CORAL', NULL),
('C', 'FUSCHIA', NULL),
('D', 'GOLD', NULL),
('E', 'KHAKI', NULL),
('F', 'MAROON', NULL),
('G', 'NAVY BLUE', NULL),
('H', 'OLIVE', NULL),
('I', 'ORANGE', NULL),
('J', 'PINK', NULL),
('K', 'PRINT', NULL),
('L', 'RAINBOW', NULL),
('M', 'SILVER', NULL),
('N', 'VANILLA', NULL),
('O', 'YELLOW', NULL),
('P', 'CHARCOAL', NULL),
('Q', 'EARTH BROWN', NULL),
('R', 'TANNED', NULL),
('S', 'ARMY', NULL),
('T', 'CAMEL BROWN', NULL),
('U', 'DESERT SAND', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xx`
--

CREATE TABLE IF NOT EXISTS `xx` (
  `id_xx` varchar(10) DEFAULT NULL,
  `xx_name` varchar(50) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xx`
--

INSERT INTO `xx` (`id_xx`, `xx_name`, `desc`) VALUES
('1', '01', NULL),
('2', '02', NULL),
('3', '03', NULL),
('4', '04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_wip`
--
ALTER TABLE `article_wip`
 ADD PRIMARY KEY (`id_article`);

--
-- Indexes for table `bahan`
--
ALTER TABLE `bahan`
 ADD PRIMARY KEY (`id_bahan`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
 ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
 ADD PRIMARY KEY (`id_dept`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lupa_password`
--
ALTER TABLE `lupa_password`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_order`
--
ALTER TABLE `master_order`
 ADD PRIMARY KEY (`oref`);

--
-- Indexes for table `master_qr`
--
ALTER TABLE `master_qr`
 ADD UNIQUE KEY `qrid` (`qrid`);

--
-- Indexes for table `master_size`
--
ALTER TABLE `master_size`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_tagid`
--
ALTER TABLE `master_tagid`
 ADD PRIMARY KEY (`tagid`);

--
-- Indexes for table `master_temp`
--
ALTER TABLE `master_temp`
 ADD UNIQUE KEY `bundle` (`bundle`), ADD UNIQUE KEY `qrid` (`qrid`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milari`
--
ALTER TABLE `milari`
 ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
 ADD PRIMARY KEY (`month_num`);

--
-- Indexes for table `permintaan_akun`
--
ALTER TABLE `permintaan_akun`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
 ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `stempel`
--
ALTER TABLE `stempel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_cat`
--
ALTER TABLE `table_cat`
 ADD PRIMARY KEY (`id_kat`), ADD UNIQUE KEY `kategori` (`nama_kategori`);

--
-- Indexes for table `table_invoice`
--
ALTER TABLE `table_invoice`
 ADD PRIMARY KEY (`id_tagihan`);

--
-- Indexes for table `table_med`
--
ALTER TABLE `table_med`
 ADD PRIMARY KEY (`id_obat`), ADD UNIQUE KEY `nama_obat` (`nama_obat`), ADD KEY `med_unit` (`unit`), ADD KEY `med_cat` (`nama_kategori`), ADD KEY `med_sup` (`nama_pemasok`);

--
-- Indexes for table `table_packin`
--
ALTER TABLE `table_packin`
 ADD PRIMARY KEY (`id_obat`), ADD UNIQUE KEY `nama_obat` (`nama_obat`), ADD KEY `med_unit` (`unit`), ADD KEY `med_cat` (`nama_kategori`), ADD KEY `med_sup` (`nama_pemasok`);

--
-- Indexes for table `table_purchase`
--
ALTER TABLE `table_purchase`
 ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `table_sewingin`
--
ALTER TABLE `table_sewingin`
 ADD UNIQUE KEY `no` (`no`);

--
-- Indexes for table `table_sewingin2`
--
ALTER TABLE `table_sewingin2`
 ADD UNIQUE KEY `no` (`no`);

--
-- Indexes for table `table_sup`
--
ALTER TABLE `table_sup`
 ADD PRIMARY KEY (`id_pem`), ADD UNIQUE KEY `nama_supplier` (`nama_pemasok`);

--
-- Indexes for table `table_unit`
--
ALTER TABLE `table_unit`
 ADD PRIMARY KEY (`id_unit`), ADD UNIQUE KEY `unit` (`unit`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
 ADD PRIMARY KEY (`tagid`);

--
-- Indexes for table `tkapel`
--
ALTER TABLE `tkapel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkaper`
--
ALTER TABLE `tkaper`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttangan`
--
ALTER TABLE `ttangan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_wip`
--
ALTER TABLE `article_wip`
MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
MODIFY `id_dept` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lupa_password`
--
ALTER TABLE `lupa_password`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `master_qr`
--
ALTER TABLE `master_qr`
MODIFY `qrid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `master_size`
--
ALTER TABLE `master_size`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `master_tagid`
--
ALTER TABLE `master_tagid`
MODIFY `tagid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `master_temp`
--
ALTER TABLE `master_temp`
MODIFY `bundle` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permintaan_akun`
--
ALTER TABLE `permintaan_akun`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stempel`
--
ALTER TABLE `stempel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `table_cat`
--
ALTER TABLE `table_cat`
MODIFY `id_kat` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=223;
--
-- AUTO_INCREMENT for table `table_invoice`
--
ALTER TABLE `table_invoice`
MODIFY `id_tagihan` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `table_med`
--
ALTER TABLE `table_med`
MODIFY `id_obat` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1037;
--
-- AUTO_INCREMENT for table `table_purchase`
--
ALTER TABLE `table_purchase`
MODIFY `id_pembelian` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `table_sewingin`
--
ALTER TABLE `table_sewingin`
MODIFY `no` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `table_sewingin2`
--
ALTER TABLE `table_sewingin2`
MODIFY `no` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `table_sup`
--
ALTER TABLE `table_sup`
MODIFY `id_pem` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `table_unit`
--
ALTER TABLE `table_unit`
MODIFY `id_unit` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
MODIFY `tagid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tkapel`
--
ALTER TABLE `tkapel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tkaper`
--
ALTER TABLE `tkaper`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ttangan`
--
ALTER TABLE `ttangan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
