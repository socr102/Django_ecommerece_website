-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2021 at 08:06 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `core_canadiantirecategory`
--

CREATE TABLE `core_canadiantirecategory` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_canadiantirecategory`
--

INSERT INTO `core_canadiantirecategory` (`id`, `parentid`, `name`) VALUES
(1, 0, 'Shop Kitchen'),
(2, 0, 'Shop Vacuums & Floor Care'),
(3, 0, 'Shop Home Furniture'),
(4, 0, 'Shop Tools & Hardware'),
(5, 0, 'Office & School Supplies'),
(6, 0, 'Storage & Organization');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core_canadiantirecategory`
--
ALTER TABLE `core_canadiantirecategory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core_canadiantirecategory`
--
ALTER TABLE `core_canadiantirecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
