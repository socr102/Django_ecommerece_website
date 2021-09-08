-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2021 at 08:07 AM
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
-- Table structure for table `core_dolloaritem`
--

CREATE TABLE `core_dolloaritem` (
  `id` int(11) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_images` varchar(255) NOT NULL,
  `product_full_name` varchar(255) NOT NULL,
  `product_case_price` double NOT NULL,
  `product_unit_price` double NOT NULL,
  `product_speciation` varchar(255) NOT NULL,
  `related_product_ID` varchar(255) NOT NULL,
  `related_specifications` varchar(255) NOT NULL,
  `category_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core_dolloaritem`
--
ALTER TABLE `core_dolloaritem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_dolloaritem_category_id_id_9fccafe9_fk_core_doll` (`category_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core_dolloaritem`
--
ALTER TABLE `core_dolloaritem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `core_dolloaritem`
--
ALTER TABLE `core_dolloaritem`
  ADD CONSTRAINT `core_dolloaritem_category_id_id_9fccafe9_fk_core_doll` FOREIGN KEY (`category_id_id`) REFERENCES `core_dolloarcategory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
