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
-- Table structure for table `core_dolloarcategory`
--

CREATE TABLE `core_dolloarcategory` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_dolloarcategory`
--

INSERT INTO `core_dolloarcategory` (`id`, `parentid`, `name`) VALUES
(2, 0, 'Back to School'),
(3, 0, 'Cleaning'),
(4, 0, 'Eletronics'),
(5, 0, 'Food'),
(6, 0, 'Hardware'),
(7, 0, 'Health &  Beauty'),
(8, 0, 'Home'),
(9, 0, 'Kitchen'),
(10, 0, 'Party'),
(11, 0, 'Pets'),
(12, 0, 'School & Office'),
(13, 0, 'Souvenirs'),
(14, 0, 'Summer Essentials'),
(15, 0, 'Toys'),
(16, 2, 'Notebooks and Folders'),
(17, 2, 'Stationery'),
(18, 2, 'Storage'),
(19, 3, 'All Purpose Cleaners'),
(20, 3, 'Cleaning Gloves'),
(21, 3, 'Cleaning Tools'),
(22, 3, 'Dishwashing Detergents'),
(23, 3, 'Garbage Bags'),
(24, 3, 'Laundry Supplies'),
(25, 3, 'Mopping & Sweeping'),
(26, 3, 'Toilet Brushes & Cleaners'),
(27, 3, 'Wipes, Cloths & Sponges'),
(28, 4, 'Batteries'),
(29, 4, 'Earphones & Headphones'),
(30, 4, 'Mobile Accessories'),
(31, 4, 'Television & Computer Accessor'),
(32, 5, 'Basics'),
(33, 5, 'Beverages'),
(34, 5, 'Chocolate'),
(35, 5, 'Gum & Candy'),
(36, 5, 'Snacks & Sweets'),
(37, 6, 'Construction Gloves'),
(38, 6, 'Hardware Tapes'),
(39, 6, 'Lighting & Electrical'),
(40, 6, 'Painting'),
(41, 6, 'Protection'),
(42, 6, 'Ropes, Tie wraps & Tie downs'),
(43, 6, 'Tools & Equipment'),
(44, 7, 'Baby Care'),
(45, 7, 'COVID-19'),
(46, 7, 'Dental Care'),
(47, 7, 'Hair Care'),
(48, 7, 'Handsoaps & Creams'),
(50, 7, 'Personal Care'),
(51, 7, 'Pharmacy'),
(52, 7, 'Travel Accessories'),
(53, 8, 'Baskets'),
(54, 8, 'Bathroom Accessories'),
(55, 8, 'Bedroom Accessories'),
(56, 8, 'Candles'),
(57, 8, 'Closet & Storage'),
(58, 8, 'Floor Mats'),
(59, 8, 'Home Decor'),
(60, 8, 'Household Essentials'),
(61, 8, 'Photo Frames'),
(62, 8, 'Vases & Flowers'),
(63, 9, 'Bakeware & Cookware'),
(64, 9, 'Basics'),
(65, 9, 'Cutlery & Tabletop'),
(66, 9, 'Linens & Towels'),
(67, 9, 'Storage Containers'),
(68, 9, 'Wraps & Storage Bags'),
(69, 10, 'Balloons & Accessories'),
(70, 10, 'Decoration'),
(71, 10, 'Disposable Cutlery, Straws & N'),
(72, 10, 'Disposable Glasses'),
(73, 10, 'Disposable Plates & Bowls'),
(74, 10, 'Disposable Tablecloths'),
(75, 10, 'Tissues, Bags & Wraps'),
(76, 11, 'Birds'),
(77, 11, 'Cats'),
(78, 11, 'Dog Care & Toys'),
(79, 11, 'Dog Treats & Food'),
(80, 12, 'Binders & Organizers'),
(81, 12, 'Calendars & Planners'),
(82, 12, 'Colouring'),
(83, 12, 'Craft Basics'),
(84, 12, 'Craft Painting'),
(85, 12, 'Mailing'),
(86, 12, 'Notebooks'),
(87, 12, 'Pencils, Pens & Markers'),
(88, 12, 'School & Office Basics'),
(89, 12, 'Sketching & Presentation'),
(90, 12, 'Tapes & Glues'),
(91, 13, 'Accessories'),
(92, 13, 'Crafts'),
(93, 13, 'Flags'),
(94, 14, 'BBQ and Picnic'),
(95, 14, 'Camping'),
(96, 14, 'Fences'),
(97, 14, 'Garden'),
(98, 14, 'Outdoor Lights'),
(99, 14, 'Outdoor Toys');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core_dolloarcategory`
--
ALTER TABLE `core_dolloarcategory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core_dolloarcategory`
--
ALTER TABLE `core_dolloarcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
