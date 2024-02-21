-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 03:00 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cuti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_adm` int(11) NOT NULL,
  `nama_adm` varchar(50) NOT NULL,
  `telp_adm` varchar(15) NOT NULL,
  `user_adm` varchar(50) NOT NULL,
  `pass_adm` varchar(100) NOT NULL,
  `foto_adm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_adm`, `nama_adm`, `telp_adm`, `user_adm`, `pass_adm`, `foto_adm`) VALUES
(1, 'Administrator', '08962878534', 'admin', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `no_cuti` varchar(30) NOT NULL,
  `npp` varchar(20) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `alamatcuti` text NOT NULL,
  `jeniscuti` text NOT NULL,
  `leader` varchar(20) NOT NULL,
  `manager` varchar(30) NOT NULL,
  `spv` varchar(20) NOT NULL,
  `stt_cuti` varchar(50) NOT NULL,
  `ket_reject` text NOT NULL,
  `hrd_app` int(2) NOT NULL,
  `lead_app` int(2) NOT NULL,
  `spv_app` int(2) NOT NULL,
  `mng_app` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`no_cuti`, `npp`, `tgl_pengajuan`, `tgl_awal`, `tgl_akhir`, `durasi`, `keterangan`, `alamatcuti`, `jeniscuti`, `leader`, `manager`, `spv`, `stt_cuti`, `ket_reject`, `hrd_app`, `lead_app`, `spv_app`, `mng_app`) VALUES
('08082023152144', 'pegawai', '2023-08-08', '2023-08-08', '2023-08-09', 2, 'Cuti jalan jalan', 'Blitar', 'Cuti Site', '', 'depthead', 'supervisor', 'Approved', '', 1, 0, 1, 1),
('08082023155314', '121598', '2023-08-08', '2023-08-08', '2023-08-10', 3, 'Cuti Nikah', 'Blitar', 'Cuti Site', '', '80121060', 'supervisor', 'Approved', '', 1, 0, 1, 1),
('09082023150736', 'pegawai', '2023-08-09', '2023-08-09', '2023-08-11', 3, 'Cuti Nikah lagi', 'Prindapan', 'Cuti site', '', '', 'supervisor', 'Rejected', ' roba rabi wae', 0, 0, 0, 0),
('09082023152613', '121598', '2023-08-09', '2023-08-09', '2023-08-12', 4, 'saf', 'asf', 'asf', '', '80121060', 'supervisor', 'Menunggu Approval Depthead', '', 0, 0, 1, 0),
('10082023144120', '121598', '2023-08-10', '2023-08-10', '2023-08-13', 4, 'Cuti menikah', 'Blitar', 'Cuti Site', '', '', 'supervisor', 'Menunggu Approval Supervisor', '', 0, 0, 0, 0),
('11052019221922', '12345', '2019-05-11', '2019-05-12', '2019-05-13', 2, 'asda', 'Blitar', 'cuti site', '11111', '', '', 'Menunggu Approval Leader', '', 0, 0, 0, 0),
('12052019121722', '11111', '2019-05-12', '2019-05-14', '2019-05-14', 1, 'Menengok orang tua', 'Blitar', 'cuti site', '', '33333', '22222', 'Approved', '', 1, 0, 1, 1),
('12052019143232', '22222', '2019-05-12', '2019-05-16', '2019-05-16', 1, 'Jalan jalan', '', '33333', 'Blitar', 'cuti site', '', 'Approved', '', 1, 0, 0, 1),
('13052019195049', '33333', '2019-05-13', '2019-05-14', '2019-05-14', 1, 'asdakjd', '', '', '', 'Approved', 'Blitar', 'cuti site', '', 1, 0, 0, 0),
('14052019105620', '12345', '2019-05-14', '2019-05-16', '2019-05-17', 2, 'kjfsk', '11111', '33333', '22222', 'Blitar', 'cuti site', 'Approved', '', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `npp` varchar(20) NOT NULL,
  `nama_emp` varchar(100) NOT NULL,
  `jk_emp` varchar(20) NOT NULL,
  `telp_emp` varchar(20) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `hak_akses` varchar(20) NOT NULL,
  `jml_cuti` int(11) NOT NULL,
  `jct_cuti` int(11) NOT NULL,
  `jcb_cuti` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto_emp` text NOT NULL,
  `active` varchar(20) NOT NULL,
  `id_adm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`npp`, `nama_emp`, `jk_emp`, `telp_emp`, `divisi`, `jabatan`, `alamat`, `hak_akses`, `jml_cuti`, `jct_cuti`, `jcb_cuti`, `password`, `foto_emp`, `active`, `id_adm`) VALUES
('101010', 'Jefpri', 'Laki-Laki', '1', 'ADM', 'IT', 'Blitar', 'Leader', 5, 20, 14, '101010', 'foto101010r.jpg', 'Aktif', 1),
('121598', 'Dhimas Adi Sucipto', 'Laki-Laki', '08129181998', 'ADM', 'Admin Departemen Head', 'Jakarta', 'Leader', 5, 20, 14, '121598', 'foto22222y.jpg', 'Aktif', 1),
('80121060', 'Hafid Pramaisvara', 'Laki-Laki', '08129181998', 'Admin Departemen Head', 'ADH', 'Jakarta', 'Manager', 5, 20, 14, '80121060', 'foto22222y.jpg', 'Aktif', 1),
('depthead', 'Test Manager', 'Laki-Laki', '081287189898', 'IT', 'Manager IT', 'Jakarta', 'Manager', 5, 20, 14, 'depthead', 'foto33333r.jpg', 'Aktif', 1),
('pegawai', 'Test Leader', 'Laki-Laki', '012381238', 'IT', 'Leader IT', 'Jakarta', 'Leader', 5, 20, 14, 'pegawai', 'foto111112.jpg', 'Aktif', 1),
('supervisor', 'Test Supervisor', 'Laki-Laki', '08129181998', 'IT', 'Spv IT', 'Jakarta', 'Supervisor', 5, 20, 14, 'supervisor', 'foto22222y.jpg', 'Aktif', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_adm`);

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`no_cuti`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`npp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
