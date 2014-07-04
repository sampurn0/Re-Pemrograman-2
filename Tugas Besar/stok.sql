-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2014 at 05:45 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stok`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbarang`
--

CREATE TABLE IF NOT EXISTS `tblbarang` (
  `KodeBarang` varchar(50) DEFAULT NULL,
  `NamaBarang` varchar(50) DEFAULT NULL,
  `Kategori` varchar(50) DEFAULT NULL,
  `Satuan` varchar(50) DEFAULT NULL,
  `HargaBeli` double DEFAULT '0',
  `HargaModal` double DEFAULT '0',
  `KodeSupplier` varchar(50) DEFAULT NULL,
  `NamaSupplier` varchar(50) DEFAULT NULL,
  `Awal` double DEFAULT '0',
  `Masuk` double DEFAULT '0',
  `Keluar` double DEFAULT '0',
  `Stok` double DEFAULT '0',
  `Merk` varchar(50) DEFAULT NULL,
  `Gambar` varchar(50) DEFAULT NULL,
  `StokLama` double DEFAULT '0',
  `seri` varchar(50) DEFAULT NULL,
  `StokBS` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbarang`
--

INSERT INTO `tblbarang` (`KodeBarang`, `NamaBarang`, `Kategori`, `Satuan`, `HargaBeli`, `HargaModal`, `KodeSupplier`, `NamaSupplier`, `Awal`, `Masuk`, `Keluar`, `Stok`, `Merk`, `Gambar`, `StokLama`, `seri`, `StokBS`) VALUES
('BRG-0000001', 'BLENDER 2061', 'BLENDER', 'UNIT', 10000, 1000, 'SUP-00007', 'PHILIPS', 193, 0, 1, 192, 'PHILIPS', '', 192, '', 0),
('BRG-0000002', 'PANASONIC NR-A192D', 'KULKAS', 'UNIT', 0, 0, 'SUP-00002', 'PANASONIC', 0, 0, 0, 0, 'PANASONIC', '', 0, '', 0),
('BRG-0000003', 'DISH-8F', 'PARABOLA', 'SET', 80000, 0, 'SUP-00006', 'BESTCO', 0, 30, 0, 30, 'BESTCO', '', 0, '', 0),
('BRG-0000004', 'SHARP AH-A9PEY', 'AC', 'SET', 0, 0, 'SUP-00003', 'SHARP', 0, 0, 0, 0, 'SHARP', '', 0, '', 0),
('BRG-0000005', 'MIYAKO S/F TJR 101', 'KIPAS ANGIN', 'UNIT', 0, 0, 'SUP-00025', 'MIYAKO / RINNAI', 0, 0, 0, 0, 'MIYAKO', '', 0, '', 0),
('BRG-0000006', 'PANASONIC F-EK 306', 'KIPAS ANGIN', 'UNIT', 15000, 1500, 'SUP-00002', 'PANASONIC', 5, 0, 0, 5, 'PANASONIC', '', 5, '', 0),
('BRG-0000007', 'PANASONIC CS-KC9 PKJ', 'AC', 'SET', 0, 0, 'SUP-00002', 'PANASONIC', 0, 0, 0, 0, 'PANASONIC', '', 0, '', 0),
('BRG-0000008', 'CMS 318F', 'SETRIKA', 'UNIT', 120000, 0, 'SUP-00009', 'COSMOS', 0, 20, 3, 17, 'COSMOS', '', 0, '', 0),
('BRG-0001', 'Komputer', 'LCD', 'UNIT', 1200000, 1200000, 'SUP-00001', 'JI-SUPPLIER', 0, 0, 0, 0, 'Dell', NULL, 0, 'dell-i-001', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblitemsatuan`
--

CREATE TABLE IF NOT EXISTS `tblitemsatuan` (
  `NamaSatuan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblitemsatuan`
--

INSERT INTO `tblitemsatuan` (`NamaSatuan`) VALUES
('UNIT'),
('SET'),
('METER'),
('ROOL'),
('TABUNG');

-- --------------------------------------------------------

--
-- Table structure for table `tblkategori`
--

CREATE TABLE IF NOT EXISTS `tblkategori` (
  `Kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkategori`
--

INSERT INTO `tblkategori` (`Kategori`) VALUES
('TELEVISI'),
('KULKAS'),
('MESIN CUCI'),
('-'),
('RICE COOKER'),
('KABEL'),
('POMPA'),
('AC'),
('MINI COMPO'),
('FREEZER'),
('SPEAKER'),
('KOMPOR'),
('RAK DISPENSER'),
('RAK TV'),
('KIPAS ANGIN'),
('LCD'),
('SHOWCASE'),
('LED'),
('DISPENSER'),
('DIGITAL'),
('LAMPU CAS'),
('DVD'),
('BLENDER'),
('MIXER'),
('RICE BOX'),
('HOME TEATHER'),
('SETRIKA'),
('MIC/ALAT LISTRIK'),
('TIANG MAXI'),
('PARABOLA'),
('RADIO'),
('OVEN'),
('REGULATOR'),
('SELANG GAS'),
('VACCUM');

-- --------------------------------------------------------

--
-- Table structure for table `tblkoreksi`
--

CREATE TABLE IF NOT EXISTS `tblkoreksi` (
  `Nomor` varchar(50) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `KodeBarang` varchar(50) DEFAULT NULL,
  `NamaBarang` varchar(50) DEFAULT NULL,
  `Satuan` varchar(50) DEFAULT NULL,
  `Jenis` varchar(50) DEFAULT NULL,
  `Jumlah` double DEFAULT NULL,
  `Keterangan` varchar(50) DEFAULT NULL,
  `Operator` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplier`
--

CREATE TABLE IF NOT EXISTS `tblsupplier` (
  `KodeSupplier` varchar(50) NOT NULL DEFAULT '',
  `NamaSupplier` varchar(50) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `KontakPerson` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupplier`
--

INSERT INTO `tblsupplier` (`KodeSupplier`, `NamaSupplier`, `Alamat`, `telepon`, `KontakPerson`) VALUES
('SUP-00001', 'JI-SUPPLIER', 'LAHAT', '0987654321', 'KRIS'),
('SUP00002', 'asldjsjd', 'lkjaskdjkl', 'jldajskldjklj', 'ljadsklda'),
('asdasdaasd', 'asdasdasd', 'asdasda', 'dadads', 'adsasda'),
('asdasd', 'asdasd', 'asdsd', 'asdasd', 'asdads'),
('asadsad', 'asdasd', 'asdadasd', 'asdada', 'adadad');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `UserID` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `NamaUser` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Pwd` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `HakAkses` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `p1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p3` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p4` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p5` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p6` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p7` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p8` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p9` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p10` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p11` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p12` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p13` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p14` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p15` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p16` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p17` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p18` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p19` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p20` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p21` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p22` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p23` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p24` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p25` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p26` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p27` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p28` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p29` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p30` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p31` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p32` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p33` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p34` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p35` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p36` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p37` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p38` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p39` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p40` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p41` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p42` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p43` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p44` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p45` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p46` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p47` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p48` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p49` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p50` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p51` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p52` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p53` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p54` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `p55` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `p56` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `p57` char(1) CHARACTER SET utf8 DEFAULT '0',
  `p58` char(1) CHARACTER SET utf8 DEFAULT '0',
  `p59` char(1) CHARACTER SET utf8 DEFAULT '0',
  `p60` char(1) CHARACTER SET utf8 DEFAULT '0',
  `SaldoAwal` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Tampil` varchar(11) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`UserID`, `NamaUser`, `Pwd`, `HakAkses`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `p13`, `p14`, `p15`, `p16`, `p17`, `p18`, `p19`, `p20`, `p21`, `p22`, `p23`, `p24`, `p25`, `p26`, `p27`, `p28`, `p29`, `p30`, `p31`, `p32`, `p33`, `p34`, `p35`, `p36`, `p37`, `p38`, `p39`, `p40`, `p41`, `p42`, `p43`, `p44`, `p45`, `p46`, `p47`, `p48`, `p49`, `p50`, `p51`, `p52`, `p53`, `p54`, `p55`, `p56`, `p57`, `p58`, `p59`, `p60`, `SaldoAwal`, `Tanggal`, `Tampil`) VALUES
('ADMIN', 'ADMIN', 'ADMIN', 'ADMIN', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2012-06-12', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
