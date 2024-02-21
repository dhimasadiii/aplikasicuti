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
-- Database: `biometricattendace`
--

-- --------------------------------------------------------

--
-- Table structure for table `cari`
--

CREATE TABLE `cari` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `serialnumber` int(11) NOT NULL,
  `fingerprint_id` int(11) NOT NULL,
  `checkindate` date NOT NULL,
  `timein` time NOT NULL,
  `timeout` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cari`
--

INSERT INTO `cari` (`id`, `username`, `serialnumber`, `fingerprint_id`, `checkindate`, `timein`, `timeout`) VALUES
(13, 'Adi', 123, 2, '2023-08-01', '20:47:42', '20:59:53'),
(14, 'Dhimas', 1122, 1, '2023-08-01', '20:59:38', '21:01:01'),
(15, 'Dhimas', 1122, 1, '2023-08-01', '21:00:15', '21:01:01'),
(16, 'Dhimas', 1122, 1, '2023-08-01', '21:00:48', '21:01:01'),
(17, 'Dhimas', 1122, 1, '2023-08-02', '21:01:49', '08:40:49'),
(18, 'Adi', 123, 2, '2023-08-02', '21:08:47', '21:09:03'),
(19, 'Dhimas', 1122, 1, '2023-08-22', '21:28:01', '21:28:11'),
(20, 'Dhimas', 1122, 1, '2023-08-02', '08:40:33', '08:40:49'),
(21, 'Adi', 123, 2, '2023-08-03', '08:08:47', '21:09:03'),
(22, 'Adi', 123, 2, '2023-08-04', '08:08:47', '21:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `serialnumber` double NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fingerprint_id` int(11) NOT NULL,
  `fingerprint_select` tinyint(1) NOT NULL DEFAULT 0,
  `user_date` date NOT NULL,
  `time_in` time NOT NULL,
  `del_fingerid` tinyint(1) NOT NULL DEFAULT 0,
  `add_fingerid` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `serialnumber`, `gender`, `email`, `fingerprint_id`, `fingerprint_select`, `user_date`, `time_in`, `del_fingerid`, `add_fingerid`) VALUES
(1, 'Dhimas', 1122, 'Male', 'dhimas', 1, 0, '2023-08-01', '08:00:00', 0, 0),
(2, 'Adi', 123, 'Male', 'adi', 2, 1, '2023-08-01', '08:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `serialnumber` double NOT NULL,
  `fingerprint_id` int(5) NOT NULL,
  `checkindate` date NOT NULL,
  `timein` time NOT NULL,
  `timeout` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_logs`
--

INSERT INTO `users_logs` (`id`, `username`, `serialnumber`, `fingerprint_id`, `checkindate`, `timein`, `timeout`) VALUES
(1, 'Dhimas', 1122, 1, '2023-08-03', '14:58:01', '16:32:52'),
(2, 'Dhimas', 1122, 1, '2023-08-03', '15:37:57', '16:32:52'),
(3, 'Adi', 123, 2, '2023-08-03', '16:32:15', '16:32:25'),
(4, 'Dhimas', 1122, 1, '2023-08-03', '16:32:40', '16:32:52'),
(5, 'Dhimas', 1122, 1, '2023-08-03', '16:32:40', '16:32:52'),
(6, 'Dhimas', 1122, 1, '2023-08-30', '16:32:40', '16:32:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cari`
--
ALTER TABLE `cari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cari`
--
ALTER TABLE `cari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
