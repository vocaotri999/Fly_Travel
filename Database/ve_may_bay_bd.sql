-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2019 at 02:59 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ve_may_bay_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` bigint(3) NOT NULL COMMENT ' Id admin',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id_bill` bigint(255) NOT NULL,
  `id_ticket` bigint(255) NOT NULL,
  `id_user` bigint(255) NOT NULL,
  `quantum_check` varchar(255) NOT NULL,
  `departing` varchar(255) NOT NULL,
  `returning` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `detailbill`
--

CREATE TABLE `detailbill` (
  `id_detailbill` bigint(255) NOT NULL,
  `id_bill` bigint(255) NOT NULL,
  `type_ticket` varchar(255) NOT NULL,
  `price_ticket` varchar(255) NOT NULL,
  `numpeople` varchar(255) NOT NULL,
  `travel_class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` bigint(255) NOT NULL,
  `name_ticket` varchar(255) NOT NULL,
  `type_ticket` varchar(255) NOT NULL,
  `quantum_ticket` varchar(255) NOT NULL,
  `flying_from` varchar(255) NOT NULL,
  `flying_to` varchar(255) NOT NULL,
  `departing` varchar(255) NOT NULL,
  `returnning` varchar(255) NOT NULL,
  `adults` varchar(255) NOT NULL,
  `child` int(255) NOT NULL,
  `travel_class` varchar(255) NOT NULL,
  `price_ticket` varchar(255) NOT NULL,
  `promotion_ticket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` bigint(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `startup` varchar(255) DEFAULT NULL,
  `friendly` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`);

--
-- Indexes for table `detailbill`
--
ALTER TABLE `detailbill`
  ADD PRIMARY KEY (`id_detailbill`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` bigint(3) NOT NULL AUTO_INCREMENT COMMENT ' Id admin';

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` bigint(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
