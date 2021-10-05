-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 03:44 PM
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
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, 'miladinovicdevelop@gmail.com', 1, 1, 2),
(2, 'normanburtonfree@gmail.com', 1, 1, 3),
(3, 'dane.peter.blair@gmail.com', 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add email address', 8, 'add_emailaddress'),
(30, 'Can change email address', 8, 'change_emailaddress'),
(31, 'Can delete email address', 8, 'delete_emailaddress'),
(32, 'Can view email address', 8, 'view_emailaddress'),
(33, 'Can add email confirmation', 9, 'add_emailconfirmation'),
(34, 'Can change email confirmation', 9, 'change_emailconfirmation'),
(35, 'Can delete email confirmation', 9, 'delete_emailconfirmation'),
(36, 'Can view email confirmation', 9, 'view_emailconfirmation'),
(37, 'Can add social account', 10, 'add_socialaccount'),
(38, 'Can change social account', 10, 'change_socialaccount'),
(39, 'Can delete social account', 10, 'delete_socialaccount'),
(40, 'Can view social account', 10, 'view_socialaccount'),
(41, 'Can add social application', 11, 'add_socialapp'),
(42, 'Can change social application', 11, 'change_socialapp'),
(43, 'Can delete social application', 11, 'delete_socialapp'),
(44, 'Can view social application', 11, 'view_socialapp'),
(45, 'Can add social application token', 12, 'add_socialtoken'),
(46, 'Can change social application token', 12, 'change_socialtoken'),
(47, 'Can delete social application token', 12, 'delete_socialtoken'),
(48, 'Can view social application token', 12, 'view_socialtoken'),
(49, 'Can add address', 13, 'add_address'),
(50, 'Can change address', 13, 'change_address'),
(51, 'Can delete address', 13, 'delete_address'),
(52, 'Can view address', 13, 'view_address'),
(53, 'Can add canadiantire category', 14, 'add_canadiantirecategory'),
(54, 'Can change canadiantire category', 14, 'change_canadiantirecategory'),
(55, 'Can delete canadiantire category', 14, 'delete_canadiantirecategory'),
(56, 'Can view canadiantire category', 14, 'view_canadiantirecategory'),
(57, 'Can add cart', 15, 'add_cart'),
(58, 'Can change cart', 15, 'change_cart'),
(59, 'Can delete cart', 15, 'delete_cart'),
(60, 'Can view cart', 15, 'view_cart'),
(61, 'Can add category', 16, 'add_category'),
(62, 'Can change category', 16, 'change_category'),
(63, 'Can delete category', 16, 'delete_category'),
(64, 'Can view category', 16, 'view_category'),
(65, 'Can add costco category', 17, 'add_costcocategory'),
(66, 'Can change costco category', 17, 'change_costcocategory'),
(67, 'Can delete costco category', 17, 'delete_costcocategory'),
(68, 'Can view costco category', 17, 'view_costcocategory'),
(69, 'Can add coupon', 18, 'add_coupon'),
(70, 'Can change coupon', 18, 'change_coupon'),
(71, 'Can delete coupon', 18, 'delete_coupon'),
(72, 'Can view coupon', 18, 'view_coupon'),
(73, 'Can add dolloar category', 19, 'add_dolloarcategory'),
(74, 'Can change dolloar category', 19, 'change_dolloarcategory'),
(75, 'Can delete dolloar category', 19, 'delete_dolloarcategory'),
(76, 'Can view dolloar category', 19, 'view_dolloarcategory'),
(77, 'Can add item', 20, 'add_item'),
(78, 'Can change item', 20, 'change_item'),
(79, 'Can delete item', 20, 'delete_item'),
(80, 'Can view item', 20, 'view_item'),
(81, 'Can add target category', 21, 'add_targetcategory'),
(82, 'Can change target category', 21, 'change_targetcategory'),
(83, 'Can delete target category', 21, 'delete_targetcategory'),
(84, 'Can view target category', 21, 'view_targetcategory'),
(85, 'Can add walmart category', 22, 'add_walmartcategory'),
(86, 'Can change walmart category', 22, 'change_walmartcategory'),
(87, 'Can delete walmart category', 22, 'delete_walmartcategory'),
(88, 'Can view walmart category', 22, 'view_walmartcategory'),
(89, 'Can add user profile', 23, 'add_userprofile'),
(90, 'Can change user profile', 23, 'change_userprofile'),
(91, 'Can delete user profile', 23, 'delete_userprofile'),
(92, 'Can view user profile', 23, 'view_userprofile'),
(93, 'Can add refund', 24, 'add_refund'),
(94, 'Can change refund', 24, 'change_refund'),
(95, 'Can delete refund', 24, 'delete_refund'),
(96, 'Can view refund', 24, 'view_refund'),
(97, 'Can add payment', 25, 'add_payment'),
(98, 'Can change payment', 25, 'change_payment'),
(99, 'Can delete payment', 25, 'delete_payment'),
(100, 'Can view payment', 25, 'view_payment'),
(101, 'Can add order item', 26, 'add_orderitem'),
(102, 'Can change order item', 26, 'change_orderitem'),
(103, 'Can delete order item', 26, 'delete_orderitem'),
(104, 'Can view order item', 26, 'view_orderitem'),
(105, 'Can add dolloar item', 27, 'add_dolloaritem'),
(106, 'Can change dolloar item', 27, 'change_dolloaritem'),
(107, 'Can delete dolloar item', 27, 'delete_dolloaritem'),
(108, 'Can view dolloar item', 27, 'view_dolloaritem'),
(109, 'Can add comment', 28, 'add_comment'),
(110, 'Can change comment', 28, 'change_comment'),
(111, 'Can delete comment', 28, 'delete_comment'),
(112, 'Can view comment', 28, 'view_comment'),
(113, 'Can add PayPal IPN', 29, 'add_paypalipn'),
(114, 'Can change PayPal IPN', 29, 'change_paypalipn'),
(115, 'Can delete PayPal IPN', 29, 'delete_paypalipn'),
(116, 'Can view PayPal IPN', 29, 'view_paypalipn');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(3, '!j6TLADrBfdkdPlksh7HJKRUgcV4Rix2N1R8qq3Wa', '2021-10-02 16:51:08.087883', 0, 'norman', 'Norman', 'Burton', 'normanburtonfree@gmail.com', 0, 1, '2021-09-13 04:48:50.957822'),
(4, '!sfZJwjg9dsAcfGQRcBe5M2HUJvNVfQMCwhJDmLIv', '2021-09-27 18:32:49.758360', 0, 'dane_peter', 'DANE PETER', 'BLAIR', 'dane.peter.blair@gmail.com', 0, 1, '2021-09-27 18:32:49.294804'),
(5, 'pbkdf2_sha256$180000$N3oLBQm2sokx$6+SD25gT+miil2jIT0qneOwvdCMgxacXiN5p2bdKZ2g=', '2021-10-02 18:08:02.677170', 1, 'socr', '', '', 'normanburtonfree@gmail.com', 1, 1, '2021-10-02 16:20:23.212335');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_address`
--

CREATE TABLE `core_address` (
  `id` int(11) NOT NULL,
  `street_address` varchar(100) NOT NULL,
  `apartment_address` varchar(100) NOT NULL,
  `country` varchar(746) NOT NULL,
  `zip_code` varchar(100) NOT NULL,
  `address_type` varchar(1) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_address`
--

INSERT INTO `core_address` (`id`, `street_address`, `apartment_address`, `country`, `zip_code`, `address_type`, `is_default`, `user_id`) VALUES
(1, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'S', 1, 3),
(2, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'B', 0, 3),
(3, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'S', 1, 3),
(4, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'B', 0, 3),
(5, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'S', 1, 3),
(6, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'B', 0, 3),
(7, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'S', 1, 3),
(8, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'B', 0, 3),
(9, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'S', 1, 3),
(10, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'B', 0, 3),
(11, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'S', 1, 3),
(12, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'B', 0, 3),
(13, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'S', 1, 3),
(14, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'B', 0, 3),
(15, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'S', 1, 3),
(16, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'B', 0, 3),
(17, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'S', 1, 3),
(18, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'B', 0, 3),
(19, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'S', 1, 3),
(20, '41 Stafford  Grove', 'apt10', 'GB', 'MK56AX', 'B', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `core_canadiantirecategory`
--

CREATE TABLE `core_canadiantirecategory` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_cart`
--

CREATE TABLE `core_cart` (
  `id` int(11) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `ordered_date` datetime(6) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `reference_code` varchar(20) NOT NULL,
  `being_delivered` tinyint(1) NOT NULL,
  `received` tinyint(1) NOT NULL,
  `refund_requested` tinyint(1) NOT NULL,
  `refund_granted` tinyint(1) NOT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `feed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_cart`
--

INSERT INTO `core_cart` (`id`, `start_date`, `ordered_date`, `ordered`, `reference_code`, `being_delivered`, `received`, `refund_requested`, `refund_granted`, `billing_address_id`, `coupon_id`, `payment_id`, `shipping_address_id`, `user_id`, `feed`) VALUES
(2, '2021-09-13 04:50:00.385582', '2021-09-13 04:50:00.385582', 0, '', 0, 0, 0, 0, 20, NULL, NULL, 19, 3, 0),
(3, '2021-09-27 18:32:59.632005', '2021-09-27 18:32:59.631027', 0, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 4, 0),
(4, '2021-10-02 16:35:49.009249', '2021-10-02 16:35:49.008282', 0, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_cart_items`
--

CREATE TABLE `core_cart_items` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `orderitem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_cart_items`
--

INSERT INTO `core_cart_items` (`id`, `cart_id`, `orderitem_id`) VALUES
(59, 2, 71),
(60, 2, 72),
(65, 3, 77),
(66, 3, 78),
(67, 4, 79),
(68, 4, 80);

-- --------------------------------------------------------

--
-- Table structure for table `core_category`
--

CREATE TABLE `core_category` (
  `id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_comment`
--

CREATE TABLE `core_comment` (
  `id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_costcocategory`
--

CREATE TABLE `core_costcocategory` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_coupon`
--

CREATE TABLE `core_coupon` (
  `id` int(11) NOT NULL,
  `coupon` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `product_specificaions` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_dolloaritem`
--

INSERT INTO `core_dolloaritem` (`id`, `display_name`, `product_id`, `product_images`, `product_full_name`, `product_case_price`, `product_unit_price`, `product_speciation`, `related_product_ID`, `product_specificaions`, `slug`, `category_id`) VALUES
(286, 'Pencil Case with Zipper (Assorted Colours)\nSTUDIO', '0500706', '[\'https://www.dollarama.com/images/0500706_0_S.jpg\', \'https://www.dollarama.com/images/0500706_1_S.jpg\', \'https://www.dollarama.com/images/0500706_2_S.jpg\', \'https://www.dollarama.com/images/0500706_3_S.jpg\']', 'Pencil Case with Zipper (Assorted Colours)', 22.5, 1.25, '[\'Storage for pens and pencils\', \"9\'\' x 4 3/4\'\' (23cm x 12cm)\", \'Assorted colours\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0500706\'}, {\'UPC\': \'667888013821\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 4.75 x 0.50 IN\'}, {\'Weight\': \'0.08 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '1', 88),
(287, 'All Purpose Canvas Zipper Bag', '3042112', '[\'https://www.dollarama.com/images/3042112_0_S.jpg\', \'https://www.dollarama.com/images/3042112_1_S.jpg\', \'https://www.dollarama.com/images/3042112_2_S.jpg\', \'https://www.dollarama.com/images/3042112_3_S.jpg\']', 'All Purpose Canvas Zipper Bag', 48, 2, '[\'Canvas zipper bags\', \'A case contains: 4 red, 4 green, 4 navy, 4 black, 4 light blue and 4 pink bags\', \'11.8\" x 7.3\" (30 cm x 18.5 cm)\', \'Durable nylon and watrer resistant\', \'A case contains 24 zipper bags\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Dollarama Number\': \'3042112\'}, {\'UPC\': \'667888214518\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'11.80 x 7.20 x 0.30 IN\'}, {\'Weight\': \'0.15 LB\'}, {\'\': \'\'}]', '2', 17),
(288, '3 Ring Mesh Binder Pouch - Assorted Colors', '3053291', '[\'https://www.dollarama.com/images/3053291_0_S.jpg\', \'https://www.dollarama.com/images/3053291_1_S.jpg\', \'https://www.dollarama.com/images/3053291_2_S.jpg\', \'https://www.dollarama.com/images/3053291_3_S.jpg\']', '3 Ring Mesh Binder Pouch - Assorted Colors', 60, 2.5, '[\'3 Ring mesh binder pouch\', \'A case contains 8 yellow, 8 blue and 8 green binder pouches\', \'9.8\" x 7.3\" (25 cm x 18.5 cm)\', \'A case contains 24 binder pouches\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3048337\', \'3069588\', \'3063193\']', '[{\'Dollarama Number\': \'3053291\'}, {\'UPC\': \'667888261918\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.80 x 7.00 x 0.30 IN\'}, {\'Weight\': \'0.15 LB\'}, {\'\': \'\'}]', '3', 17),
(289, 'Canvas Zip File Bag', '3039518', '[\'https://www.dollarama.com/images/3039518_0_S.jpg\', \'https://www.dollarama.com/images/3039518_1_S.jpg\', \'https://www.dollarama.com/images/3039518_2_S.jpg\', \'https://www.dollarama.com/images/3039518_3_S.jpg\']', 'Canvas Zip File Bag', 30, 2.5, '[\'Canvas Zip File Bag With Mesh Zip Pocket\', \'37 x 27 cm (14.6\" x 10.6\" )\', \'Each case contains 3 pink, 3 navy blue, 4 black and 2 red bags\', \'Each case contains 12 bags\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3036744\', \'0502584\', \'0502418\']', '[{\'Dollarama Number\': \'3039518\'}, {\'UPC\': \'667888203383\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'24.80 x 10.63 x 0.50 IN\'}, {\'Weight\': \'0.25 LB\'}, {\'\': \'\'}]', '4', 16),
(290, 'Section Hard Plastic Pencil Case', '3061363', '[\'https://www.dollarama.com/images/3061363_0_S.jpg\', \'https://www.dollarama.com/images/3061363_1_S.jpg\', \'https://www.dollarama.com/images/3061363_2_S.jpg\', \'https://www.dollarama.com/images/3061363_3_S.jpg\']', 'Section Hard Plastic Pencil Case', 36, 3, '[\'Hard plastic pencil case\', \'A case has 1 blue, 3 purple, 3 pink and 5 clear pencil cases\', \'9.25\" x 5.7\" x 2.6\" (23.5 cm x 14.5 cm x 6.5 cm)\', \'A case contains 12 pencil cases\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3048337\', \'3069588\', \'3063193\']', '[{\'Dollarama Number\': \'3061363\'}, {\'UPC\': \'667888295845\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 5.50 x 2.40 IN\'}, {\'Weight\': \'0.40 LB\'}, {\'\': \'\'}]', '5', 17),
(291, '4Pk Report Covers', '0502418', '[\'https://www.dollarama.com/images/0502418_0_S.jpg\', \'https://www.dollarama.com/images/0502418_1_S.jpg\', \'https://www.dollarama.com/images/0502418_2_S.jpg\', \'https://www.dollarama.com/images/0502418_3_S.jpg\']', '4Pk Report Covers', 15, 1.25, '[\'4PK report covers\', \'A case contains green, red, blue, purple, yellow, orange and pink covers\', \'9\" x 11 1/4\" (23 cm x 28 cm)\', \'A case contains 12 packs of 4 report covers\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3036744\', \'0502584\', \'3039518\']', '[{\'Dollarama Number\': \'0502418\'}, {\'UPC\': \'827112524183, 667888196623\'}, {\'Pieces per Unit\': \'4\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 11.00 x 0.50 IN\'}, {\'Weight\': \'0.27 LB\'}, {\'\': \'\'}]', '6', 16),
(292, '10 Tab Index Dividers', '0502584', '[\'https://www.dollarama.com/images/0502584_0_S.jpg\', \'https://www.dollarama.com/images/0502584_1_S.jpg\', \'https://www.dollarama.com/images/0502584_2_S.jpg\', \'https://www.dollarama.com/images/0502584_3_S.jpg\']', '10 Tab Index Dividers', 30, 1.25, '[\'10 tab index dividers\', \'10 insert tabs included with each index divider\', \'9\" x 11\" (23 cm x 28 cm)\', \'A case contains 24 packs of 10 index\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3036744\', \'0502418\', \'3039518\']', '[{\'Dollarama Number\': \'0502584\'}, {\'UPC\': \'827112525845, 827112517550, 667888161942\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.50 x 11.00 x 0.30 IN\'}, {\'Weight\': \'0.30 LB\'}, {\'\': \'\'}]', '7', 16),
(293, 'Plastic Neon Portfolio', '3036744', '[\'https://www.dollarama.com/images/3036744_0_S.jpg\', \'https://www.dollarama.com/images/3036744_1_S.jpg\', \'https://www.dollarama.com/images/3036744_2_S.jpg\', \'https://www.dollarama.com/images/3036744_3_S.jpg\']', 'Plastic Neon Portfolio', 45, 1.25, '[\'Plastic neon portfolio\', \'A case contains 9 red portfolios, 12 blue, 9 green and 6 orange\', \'11.4\" x 9.4\" (29.3 cm x 24.1 cm)\', \'A case contains 24 portfolios\', \'\', \'\']', '[\'3035791\', \'3040847\', \'0502584\', \'0502418\', \'3039518\']', '[{\'Dollarama Number\': \'3036744\'}, {\'UPC\': \'667888192427\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'11.40 x 9.45 x 0.30 IN\'}, {\'Weight\': \'0.15 LB\'}, {\'\': \'\'}]', '8', 16),
(294, 'Courier Bag (Assorted Colors)\nSTUDIO', '0502651', '[\'https://www.dollarama.com/images/0502651_0_S.jpg\', \'https://www.dollarama.com/images/0502651_1_S.jpg\', \'https://www.dollarama.com/images/0502651_2_S.jpg\', \'https://www.dollarama.com/images/0502651_3_S.jpg\']', 'Courier Bag (Assorted Colors)', 36, 1.5, '[\'With label insert slot\', \'Resistant vinyl cover\', \'15\" x 10.2\" (38.5cm x 26cm)\', \'A case contains equally distributed black, green, burgundy, grey, blue, and brown courrier bags\', \'Assortment may vary from picture\', \'\']', '[\'0502872\', \'0503164\', \'3019482\', \'0502831\', \'0502832\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0502651\'}, {\'UPC\': \'770457020318, 667888156634\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'15.00 x 10.30 x 0.50 IN\'}, {\'Weight\': \'0.18 LB\'}, {\'\': \'\'}]', '9', 85),
(295, 'Masonite Clipboard\nSTUDIO', '0500052', '[\'https://www.dollarama.com/images/0500052_0_S.jpg\', \'https://www.dollarama.com/images/0500052_1_S.jpg\', \'https://www.dollarama.com/images/0500052_2_S.jpg\', \'https://www.dollarama.com/images/0500052_3_S.jpg\']', 'Masonite Clipboard', 36, 1.5, '[\'Hard surface\', \'Eases writing anywhere\', \'Holds 8.5\" x 11\" (21.6cm x 29,9cm)\', \'\', \'\', \'\']', '[\'0502651\', \'0501281\', \'3032953\', \'3044364\', \'3044358\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0500052\'}, {\'UPC\': \'57447581326, 667888097395\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 1.60 x 12.60 IN\'}, {\'Weight\': \'0.17 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', '10', 80),
(296, 'Mini Marker set 12PK (Assorted Colours)\nSTUDIO COLOURS', '3033815', '[\'https://www.dollarama.com/images/3033815_0_S.jpg\', \'https://www.dollarama.com/images/3033815_1_S.jpg\', \'https://www.dollarama.com/images/3033815_2_S.jpg\', \'https://www.dollarama.com/images/3033815_3_S.jpg\']', 'Mini Marker set 12PK (Assorted Colours)', 45, 1.5, '[\'12 markers per package\', \'Non-toxic\', \'Washable\', \'Assorted colours\', \'Assortment may vary from picture\', \'\']', '[\'3047850\', \'3084887\', \'0502970\', \'3063962\', \'0502200\']', '[{\'Brand\': \'STUDIO COLOURS\'}, {\'Dollarama Number\': \'3033815\'}, {\'UPC\': \'667888179862\'}, {\'Pieces per Unit\': \'12\'}, {\'Packaging Dimensions (L x W x H)\': \'4.70 x 0.70 x 6.30 IN\'}, {\'Weight\': \'0.67 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '11', 82),
(297, 'Crayons 24PK\nCrayola', '3002707', '[\'https://www.dollarama.com/images/3002707_0_S.jpg\', \'https://www.dollarama.com/images/3002707_1_S.jpg\', \'https://www.dollarama.com/images/3002707_2_S.jpg\', \'https://www.dollarama.com/images/3002707_3_S.jpg\']', 'Crayons 24PK', 72, 1.5, '[\'Prefered by teachers\', \'24 crayons per packaging\', \'Non toxic\', \'\', \'\', \'\']', '[\'3047850\', \'3084887\', \'0502970\', \'3063962\', \'0502200\']', '[{\'Brand\': \'Crayola\'}, {\'Dollarama Number\': \'3002707\'}, {\'UPC\': \'71662000240\'}, {\'Pieces per Unit\': \'24\'}, {\'Packaging Dimensions (L x W x H)\': \'2.90 x 1.20 x 4.00 IN\'}, {\'Weight\': \'0.30 LB\'}, {\'\': \'\'}]', '12', 82),
(298, 'Colour Pencil Set 12PK\nSTUDIO', '0501183', '[\'https://www.dollarama.com/images/0501183_0_S.jpg\', \'https://www.dollarama.com/images/0501183_1_S.jpg\', \'https://www.dollarama.com/images/0501183_2_S.jpg\', \'https://www.dollarama.com/images/0501183_3_S.jpg\']', 'Colour Pencil Set 12PK', 48, 2, '[\'12 pencils per package\', \'Pre-sharpened\', \'Art quality\', \'Strong leads\', \'Vivid colours\', \'\']', '[\'3047850\', \'3084887\', \'0502970\', \'3063962\', \'0502200\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0501183\'}, {\'UPC\': \'667888013883\'}, {\'Pieces per Unit\': \'12\'}, {\'Packaging Dimensions (L x W x H)\': \'3.60 x 0.50 x 8.40 IN\'}, {\'Weight\': \'0.26 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '13', 82),
(299, '12PC Washable Markers\nStudio', '3084887', '[\'https://www.dollarama.com/images/3084887_0_S.jpg\', \'https://www.dollarama.com/images/3084887_1_S.jpg\', \'https://www.dollarama.com/images/3084887_2_S.jpg\', \'https://www.dollarama.com/images/3084887_3_S.jpg\']', '12PC Washable Markers', 45, 2.5, '[\'Set of 12 washable assorted markers\', \'Safe & non-toxic\', \'A case contains 18 sets of markers\', \'\', \'\', \'\']', '[\'3047850\', \'0502970\', \'3063962\', \'0502200\', \'0501183\']', '[{\'Brand\': \'Studio\'}, {\'Dollarama Number\': \'3084887\'}, {\'UPC\': \'667888404018\'}, {\'Pieces per Unit\': \'12\'}, {\'Packaging Dimensions (L x W x H)\': \'6.50 x 5.00 x 0.50 IN\'}, {\'Weight\': \'0.20 LB\'}, {\'\': \'\'}]', '14', 82),
(300, '24PC of Colour Pencils\nStudio', '3047850', '[\'https://www.dollarama.com/images/3047850_0_S.jpg\', \'https://www.dollarama.com/images/3047850_1_S.jpg\', \'https://www.dollarama.com/images/3047850_2_S.jpg\', \'https://www.dollarama.com/images/3047850_3_S.jpg\']', '24PC of Colour Pencils', 54, 3, '[\'Set of 24 pre-sharpened wooden colouring pencils\', \'Safe & non-toxic\', \'A case contains 18 sets of colouring pencils\', \'Fine art quality\', \'Bright colours\', \'\']', '[\'3084887\', \'0502970\', \'3063962\', \'0502200\', \'0501183\']', '[{\'Brand\': \'Studio\'}, {\'Dollarama Number\': \'3047850\'}, {\'UPC\': \'667888237920\'}, {\'Pieces per Unit\': \'24\'}, {\'Packaging Dimensions (L x W x H)\': \'7.00 x 4.00 x 0.50 IN\'}, {\'Weight\': \'0.28 LB\'}, {\'\': \'\'}]', '15', 82),
(301, 'Metal 2 Hole Pencil Sharpener\nStudio', '3073919', '[\'https://www.dollarama.com/images/3073919_0_S.jpg\', \'https://www.dollarama.com/images/3073919_1_S.jpg\', \'https://www.dollarama.com/images/3073919_2_S.jpg\', \'https://www.dollarama.com/images/3073919_3_S.jpg\']', 'Metal 2 Hole Pencil Sharpener', 24, 1, '[\'2 Hole pencil sharpener\', \'Each pencil sharpeners are in aluminum\', \'For pens of 1.1 cm and 8 mm\', \'A case contains 24 pencil sharpeners\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3048337\', \'3069588\', \'3063193\']', '[{\'Brand\': \'Studio\'}, {\'Dollarama Number\': \'3073919\'}, {\'UPC\': \'667888354702\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'0.80 x 0.40 x 1.20 IN\'}, {\'Weight\': \'0.03 LB\'}, {\'\': \'\'}]', '16', 17),
(302, 'Pencil Sharpener (Assorted Colours)\nSTUDIO', '3011706', '[\'https://www.dollarama.com/images/3011706_0_S.jpg\', \'https://www.dollarama.com/images/3011706_1_S.jpg\', \'https://www.dollarama.com/images/3011706_2_S.jpg\', \'https://www.dollarama.com/images/3011706_3_S.jpg\']', 'Pencil Sharpener (Assorted Colours)', 24, 1, '[\'Practical receptacle\', \'Dual blade\', \'A case contains equaly distributed Red, Blue and Smoke pencil sharpeners\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3011706\'}, {\'UPC\': \'667888071258\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.50 x 1.10 x 5.50 IN\'}, {\'Weight\': \'0.85 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '17', 88),
(303, '205pc Stationery Pin And Clip Set', '3047014', '[\'https://www.dollarama.com/images/3047014_0_S.jpg\', \'https://www.dollarama.com/images/3047014_1_S.jpg\', \'https://www.dollarama.com/images/3047014_2_S.jpg\', \'https://www.dollarama.com/images/3047014_3_S.jpg\']', '205pc Stationery Pin And Clip Set', 36, 3, '[\'Paper clip, binder clip and push pins set\', \'Each set contains 30pc of 48mm paper clips; 100pc of 28mm paper clips; 5pc of 25mm binder clips; 70pc of push pins\', \'Each case contains 2 sets of each color: pink, blue, green, purple black & white and light', '[\'3088199\', \'3048337\', \'3069588\', \'3063193\', \'0502418\']', '[{\'Dollarama Number\': \'3047014\'}, {\'UPC\': \'667888235339\'}, {\'Pieces per Unit\': \'1\'}, {\'Weight\': \'173.00 G\'}, {\'\': \'\'}]', '18', 17),
(304, 'Glue Sticks 4PK\nSTUDIO', '0501177', '[\'https://www.dollarama.com/images/0501177_0_S.jpg\', \'https://www.dollarama.com/images/0501177_1_S.jpg\', \'https://www.dollarama.com/images/0501177_2_S.jpg\', \'https://www.dollarama.com/images/0501177_3_S.jpg\']', 'Glue Sticks 4PK', 30, 1.25, '[\'4 sticks per package\', \'All purpose\', \'For paper, cardboard, photos, fabric, and more\', \'Non-toxic\', \'Acid-Free\', \'9g per stick\']', '[\'0501820\', \'0501821\', \'0501557\', \'0502341\', \'3081943\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0501177\'}, {\'UPC\': \'667888013876\'}, {\'Pieces per Unit\': \'4\'}, {\'Packaging Dimensions (L x W x H)\': \'3.90 x 1.60 x 6.20 IN\'}, {\'Weight\': \'0.30 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', '19', 90),
(305, 'White Glue 3PK\nSTUDIO', '0502341', '[\'https://www.dollarama.com/images/0502341_0_S.jpg\', \'https://www.dollarama.com/images/0502341_1_S.jpg\', \'https://www.dollarama.com/images/0502341_2_S.jpg\', \'https://www.dollarama.com/images/0502341_3_S.jpg\']', 'White Glue 3PK', 30, 1.25, '[\'3 bottles per package\', \'All purpose\', \'Glues paper, cardboard and fabric\', \'Dries clear\', \'Non-toxic\', \'Washable\']', '[\'0501820\', \'0501821\', \'0501557\', \'3081943\', \'3069918\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0502341\'}, {\'UPC\': \'667888061402\'}, {\'Pieces per Unit\': \'3\'}, {\'Packaging Dimensions (L x W x H)\': \'6.90 x 0.90 x 7.50 IN\'}, {\'Weight\': \'0.63 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', '20', 90),
(306, 'Transparent School Glue (147ml)\nELMER\'S', '3081943', '[\'https://www.dollarama.com/images/3081943_0_S.jpg\', \'https://www.dollarama.com/images/3081943_1_S.jpg\', \'https://www.dollarama.com/images/3081943_2_S.jpg\', \'https://www.dollarama.com/images/3081943_3_S.jpg\']', 'Transparent School Glue (147ml)', 16, 2, '[\'Goes on clear and dries clear\', \'Ideal for paper\', \'Washable\', \'Non-toxic\', \'147ml\', \'\']', '[\'0501820\', \'0501821\', \'0501557\', \'0502341\', \'3069918\']', '[{\'Brand\': \"ELMER\'S\"}, {\'Dollarama Number\': \'3081943\'}, {\'UPC\': \'61550603059\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.60 x 1.35 x 5.80 IN\'}, {\'Weight\': \'0.38 LB\'}, {\'\': \'\'}]', '21', 90),
(307, 'School Glue\nELMER\'S', '3069918', '[\'https://www.dollarama.com/images/3069918_0_S.jpg\', \'https://www.dollarama.com/images/3069918_1_S.jpg\', \'https://www.dollarama.com/images/3069918_2_S.jpg\', \'https://www.dollarama.com/images/3069918_3_S.jpg\']', 'School Glue', 20, 2.5, '[\'225mL\', \'Washable\', \'Non-toxic\', \'No run formula\', \'#1 Teacher brand\', \'\']', '[\'0501820\', \'0501821\', \'0501557\', \'0502341\', \'3081943\']', '[{\'Brand\': \"ELMER\'S\"}, {\'Dollarama Number\': \'3069918\'}, {\'UPC\': \'61550603103\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.00 x 1.40 x 7.25 IN\'}, {\'Weight\': \'0.58 LB\'}, {\'\': \'\'}]', '22', 90),
(308, 'Basket with Chalkboard Decal and Handles', '3071008', '[\'https://www.dollarama.com/images/3071008_0_S.jpg\', \'https://www.dollarama.com/images/3071008_1_S.jpg\', \'https://www.dollarama.com/images/3071008_2_S.jpg\', \'https://www.dollarama.com/images/3071008_3_S.jpg\']', 'Basket with Chalkboard Decal and Handles', 36, 1.5, '[\'Plastic rectangular basket with chalkboard decal and handles\', \'26.7 x 20.6 x 12.2 cm\', \'Each case contains 6 red, 6 green, 6 blue and 6 pink baskets\', \'Each case contains 24 baskets\', \'\', \'\']', '[\'3080290\', \'3023423\', \'3055751\', \'3080451\', \'3020237\']', '[{\'Dollarama Number\': \'3071008\'}, {\'UPC\': \'667888338788\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'10.50 x 8.11 x 5.20 IN\'}, {\'Weight\': \'0.25 LB\'}, {\'\': \'\'}]', '23', 18),
(309, 'Plastic Kiddie Caddy', '3069584', '[\'https://www.dollarama.com/images/3069584_0_S.jpg\', \'https://www.dollarama.com/images/3069584_1_S.jpg\', \'https://www.dollarama.com/images/3069584_2_S.jpg\', \'https://www.dollarama.com/images/3069584_3_S.jpg\']', 'Plastic Kiddie Caddy', 48, 2, '[\'Plastic Caddy\', \'9\" x 9\" x 3.5\" (23 cm x 23 cm x 9 cm)\', \'A case contains 6 red, 6 blue, 6 green and 6 yellow caddies\', \'A case contains 24 caddies\', \'\', \'\']', '[\'3080290\', \'3023423\', \'3055751\', \'3080451\', \'3071008\']', '[{\'Dollarama Number\': \'3069584\'}, {\'UPC\': \'667888333295\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 9.30 x 3.50 IN\'}, {\'Weight\': \'0.42 LB\'}, {\'\': \'\'}]', '24', 18),
(310, '5PK Interlocking Pencil Trays', '3069588', '[\'https://www.dollarama.com/images/3069588_0_S.jpg\', \'https://www.dollarama.com/images/3069588_1_S.jpg\', \'https://www.dollarama.com/images/3069588_2_S.jpg\', \'https://www.dollarama.com/images/3069588_3_S.jpg\']', '5PK Interlocking Pencil Trays', 60, 2.5, '[\'5 Plastic interlocking pencil trays\', \'\', \'8.9\" x 3\" x 2\" (22.5 cm x 7.5 cm x 4.9 cm)\', \'A case has 24 packs of 5 pencil trays\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3048337\', \'3063193\', \'0502418\']', '[{\'Dollarama Number\': \'3069588\'}, {\'UPC\': \'667888333325\'}, {\'Pieces per Unit\': \'5\'}, {\'Packaging Dimensions (L x W x H)\': \'8.90 x 3.00 x 1.90 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'\': \'\'}]', '25', 17),
(311, 'Multi-purpose Basket\nPlastico', '3020237', '[\'https://www.dollarama.com/images/3020237_0_S.jpg\', \'https://www.dollarama.com/images/3020237_1_S.jpg\', \'https://www.dollarama.com/images/3020237_2_S.jpg\', \'https://www.dollarama.com/images/3020237_3_S.jpg\']', 'Multi-purpose Basket', 30, 2.5, '[\'Rectangular plastic basket\', \'Flared edges and with handles\', \'14.25\" x 10.25\" x 2.38\" (36.2 x 26 x 11.11cm)\', \'Assorted colours: 6 white, 3 grey and 3 blue\', \'A case contains 12 baskets\', \'\']', '[\'3042230\', \'3012493\', \'3011425\', \'3060334\', \'3037752\']', '[{\'Brand\': \'Plastico\'}, {\'Dollarama Number\': \'3020237\'}, {\'UPC\': \'667888117659\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'14.25 x 10.25 x 4.38 IN\'}, {\'Weight\': \'0.70 LB\'}, {\'\': \'\'}]', '26', 53),
(312, '8 PK Interlocking Drawer Organizers - Assorted Sizes', '3080290', '[\'https://www.dollarama.com/images/3080290_0_S.jpg\', \'https://www.dollarama.com/images/3080290_1_S.jpg\', \'https://www.dollarama.com/images/3080290_2_S.jpg\', \'https://www.dollarama.com/images/3080290_3_S.jpg\']', '8 PK Interlocking Drawer Organizers - Assorted Sizes', 48, 4, '[\'A packs has 8 interlocking plastic drawer organizers\', \'PP plastic with 5% CaCo3\', \'Each pack comes in assorted sizes; 2 large: 23.5 x 15.5 x 5 cm; 3 medium 23.5 x 7.5 x 5 cm; 3 small: 7.5 x 7.5 x 5 cm\', \'Each case contains 3 packs in white, 3 black and', '[\'3023423\', \'3055751\', \'3080451\', \'3071008\', \'3020237\']', '[{\'Dollarama Number\': \'3080290\'}, {\'UPC\': \'667888383580\'}, {\'Pieces per Unit\': \'8\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.30 LB\'}, {\'\': \'\'}]', '27', 18),
(313, 'Magnetic Dry Erase Board', '3063193', '[\'https://www.dollarama.com/images/3063193_0_S.jpg\', \'https://www.dollarama.com/images/3063193_1_S.jpg\', \'https://www.dollarama.com/images/3063193_2_S.jpg\', \'https://www.dollarama.com/images/3063193_3_S.jpg\']', 'Magnetic Dry Erase Board', 27, 1.5, '[\'Magnetic dry erase board\', \'8.5\" x 11\" (20 cm x 28 cm)\', \'Each board contains a dry erase pen\', \'A case contains 18 boards\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3048337\', \'3069588\', \'0502418\']', '[{\'Dollarama Number\': \'3063193\'}, {\'UPC\': \'667888302970\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'8.50 x 11.00 x 0.50 IN\'}, {\'Weight\': \'0.30 LB\'}, {\'\': \'\'}]', '28', 17),
(314, '100 PK Neon Colored Wide Ruled Filler Paper', '3056384', '[\'https://www.dollarama.com/images/3056384_0_S.jpg\', \'https://www.dollarama.com/images/3056384_1_S.jpg\', \'https://www.dollarama.com/images/3056384_2_S.jpg\', \'https://www.dollarama.com/images/3056384_3_S.jpg\']', '100 PK Neon Colored Wide Ruled Filler Paper', 63, 3.5, '[\'Neon colored wide ruled filler paper\', \'8\" x 10.5\" (20.3 cm x 26.6 cm)\', \'Each pack contains 25 pink sheets, 25 blue, 25 green and 25 yellow\', \'Each case contains 18 packs\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3048337\', \'3069588\', \'3063193\']', '[{\'Dollarama Number\': \'3056384\'}, {\'UPC\': \'667888274215\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'8.00 x 10.50 x 1.00 IN\'}, {\'Weight\': \'0.20 LB\'}, {\'\': \'\'}]', '29', 17),
(315, 'Modelling Clay (Assorted Colours)\nPlay-Doh', '0800915', '[\'https://www.dollarama.com/images/0800915_0_S.jpg\', \'https://www.dollarama.com/images/0800915_1_S.jpg\', \'https://www.dollarama.com/images/0800915_2_S.jpg\', \'https://www.dollarama.com/images/0800915_3_S.jpg\']', 'Modelling Clay (Assorted Colours)', 30, 1.25, '[\'112g (4oz)\', \'A case contains equally distributed green, orange, blue, red and purple modeling clays\', \'Assortment may vary from picture\', \'\', \'\', \'\']', '[\'3023950\', \'3097293\', \'3071401\', \'3097216\', \'3097217\']', '[{\'Brand\': \'Play-Doh\'}, {\'Dollarama Number\': \'0800915\'}, {\'UPC\': \'Multiples\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.70 x 2.70 x 3.10 IN\'}, {\'Weight\': \'0.25 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '30', 15),
(316, 'Natural Modelling Clay\nCrafts', '3004183', '[\'https://www.dollarama.com/images/3004183_0_S.jpg\', \'https://www.dollarama.com/images/3004183_1_S.jpg\', \'https://www.dollarama.com/images/3004183_2_S.jpg\', \'https://www.dollarama.com/images/3004183_3_S.jpg\']', 'Natural Modelling Clay', 35, 1.75, '[\'Dries naturally\', \'Easy to shape\', \'No oven or kiln needed\', \'500g\', \'\', \'\']', '[\'3056359\', \'3100187\', \'3100212\', \'0201254\', \'3069552\']', '[{\'Brand\': \'Crafts\'}, {\'Dollarama Number\': \'3004183\'}, {\'UPC\': \'667888037735\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'8.70 x 3.30 x 1.20 IN\'}, {\'Weight\': \'1.16 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', '31', 83),
(317, '200 Page Top Coil Ruled Notebook-english', '3088199', '[\'https://www.dollarama.com/images/3088199_0_S.jpg\', \'https://www.dollarama.com/images/3088199_1_S.jpg\', \'https://www.dollarama.com/images/3088199_2_S.jpg\', \'https://www.dollarama.com/images/3088199_3_S.jpg\']', '200 Page Top Coil Ruled Notebook-english', 42, 2, '[\'200 Page Top Coil Ruled Note Book in assorted sizes and designs\', \'6\" x 4\"\', \'\', \'A case contains 21 notebooks\', \'\', \'\']', '[\'3047014\', \'3048337\', \'3069588\', \'3063193\', \'0502418\']', '[{\'Dollarama Number\': \'3088199\'}, {\'UPC\': \'667888417360\'}, {\'Pieces per Unit\': \'1\'}, {\'Weight\': \'140.00 G\'}, {\'\': \'\'}]', '32', 17),
(318, 'Colored Letter Combination Lock\nWordlock', '3048337', '[\'https://www.dollarama.com/images/3048337_0_S.jpg\', \'https://www.dollarama.com/images/3048337_1_S.jpg\', \'https://www.dollarama.com/images/3048337_2_S.jpg\', \'https://www.dollarama.com/images/3048337_3_S.jpg\']', 'Colored Letter Combination Lock', 48, 4, '[\'Hardened steel shackle\', \'Non-resettable, combination is inside\', \'Each case contains 4 red locks, 4 blue and 4 silver\', \'A case contains 12 combination locks\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3069588\', \'3063193\', \'0502418\']', '[{\'Brand\': \'Wordlock\'}, {\'Dollarama Number\': \'3048337\'}, {\'UPC\': \'667888240036\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.30 x 3.00 x 2.00 IN\'}, {\'Weight\': \'0.25 LB\'}, {\'\': \'\'}]', '33', 17),
(319, '250 Page A4 Size Notebook', '3035791', '[\'https://www.dollarama.com/images/3035791_0_S.jpg\', \'https://www.dollarama.com/images/3035791_1_S.jpg\', \'https://www.dollarama.com/images/3035791_2_S.jpg\', \'https://www.dollarama.com/images/3035791_3_S.jpg\']', '250 Page A4 Size Notebook', 48, 4, '[\'A4 size notebook with coil binding\', \'A case contains notebooks with dots and circle designs\', \'Each notebook has 250 pages\', \'20.8 x 29.7cm\', \'A case contains 12 notebooks\', \'\']', '[\'3040847\', \'3036744\', \'0502584\', \'0502418\', \'3039518\']', '[{\'Dollarama Number\': \'3035791\'}, {\'UPC\': \'667888189083\'}, {\'Pieces per Unit\': \'3\'}, {\'Packaging Dimensions (L x W x H)\': \'11.22 x 11.70 x 0.50 IN\'}, {\'Weight\': \'1.40 LB\'}, {\'\': \'\'}]', '34', 16),
(320, 'Poly Cover Composition Book', '3040847', '[\'https://www.dollarama.com/images/3040847_0_S.jpg\', \'https://www.dollarama.com/images/3040847_1_S.jpg\', \'https://www.dollarama.com/images/3040847_2_S.jpg\', \'https://www.dollarama.com/images/3040847_3_S.jpg\']', 'Poly Cover Composition Book', 36, 1.5, '[\'Composition book\', \'A case contains 4 pink, 4 blue, 4 purple, 4 black, 4 teal and 4 grey books\', \'9.75\" x 7.5\" (19.2 cm x 24.8 cm)\', \'Each composition book has 70 sheets\', \'A case contains 24 composition books\', \'\']', '[\'3035791\', \'3036744\', \'0502584\', \'0502418\', \'3039518\']', '[{\'Dollarama Number\': \'3040847\'}, {\'UPC\': \'667888208852\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.50 x 7.50 x 0.50 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'\': \'\'}]', '35', 16),
(321, 'Wire Mesh Stationery Organizer Tray - Medium', '3023423', '[\'https://www.dollarama.com/images/3023423_0_S.jpg\', \'https://www.dollarama.com/images/3023423_1_S.jpg\', \'https://www.dollarama.com/images/3023423_2_S.jpg\', \'https://www.dollarama.com/images/3023423_3_S.jpg\']', 'Wire Mesh Stationery Organizer Tray - Medium', 48, 4, '[\'Organizer tray in wire mesh\', \'22.2 x 11.9 x 12.5 cm\', \'4 felt pads\', \'Each case contains 7 black trays and 5 silver ones\', \'A case has 12 trays\', \'\']', '[\'3080290\', \'3055751\', \'3080451\', \'3071008\', \'3020237\']', '[{\'Dollarama Number\': \'3023423\'}, {\'UPC\': \'667888131273\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'8.74 x 4.69 x 2.00 IN\'}, {\'Weight\': \'0.66 LB\'}, {\'\': \'\'}]', '36', 18),
(322, 'Stationery Organizer Tray - Small\nStudio', '3055751', '[\'https://www.dollarama.com/images/3055751_0_S.jpg\', \'https://www.dollarama.com/images/3055751_1_S.jpg\', \'https://www.dollarama.com/images/3055751_2_S.jpg\', \'https://www.dollarama.com/images/3055751_3_S.jpg\']', 'Stationery Organizer Tray - Small', 24, 2, '[\'Organizer tray in wire mesh\', \'7.4 x 23 x 5 cm\', \'4 felt pads\', \'Each case contains 7 black trays and 5 silver ones\', \'A case has 12 trays\', \'\']', '[\'3080290\', \'3023423\', \'3080451\', \'3071008\', \'3020237\']', '[{\'Brand\': \'Studio\'}, {\'Dollarama Number\': \'3055751\'}, {\'UPC\': \'667888271443\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.91 x 9.00 x 2.00 IN\'}, {\'Weight\': \'0.25 LB\'}, {\'\': \'\'}]', '37', 18),
(323, 'Rectangular Container with Clip-Lock Lid', '3080451', '[\'https://www.dollarama.com/images/3080451_0_S.jpg\', \'https://www.dollarama.com/images/3080451_1_S.jpg\', \'https://www.dollarama.com/images/3080451_2_S.jpg\', \'https://www.dollarama.com/images/3080451_3_S.jpg\']', 'Rectangular Container with Clip-Lock Lid', 30, 1.25, '[\'Rectangular plastic container with clear clip-lock lid\', \'9\"x4\" x 1.625\", 510 ml/17.3 oz\', \'PP plastic, BPA free\', \'Each case contains 8 clear containers, 8 blue, 4 green and 4 purple\', \'A case contains 24 containers\', \'\']', '[\'3080290\', \'3023423\', \'3055751\', \'3071008\', \'3020237\']', '[{\'Dollarama Number\': \'3080451\'}, {\'UPC\': \'667888384341\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 4.00 x 1.63 IN\'}, {\'Weight\': \'0.25 LB\'}, {\'\': \'\'}]', '38', 18),
(324, '3Pk Snack Storage Container', '3018473', '[\'https://www.dollarama.com/images/3018473_0_S.jpg\', \'https://www.dollarama.com/images/3018473_1_S.jpg\', \'https://www.dollarama.com/images/3018473_2_S.jpg\', \'https://www.dollarama.com/images/3018473_3_S.jpg\']', '3Pk Snack Storage Container', 48, 2, '[\'Pack of 3 plastic storage containers with clip lock\', \'BPA-Free\', \'4.5\" x 3.38\" x 4.5\" (10 cm x 7.6 cm x 10 cm)\', \'A case contains 9 blue, 9 green and 6 pink containers\', \'A case contains 24 packs of 3 containers\', \'\']', '[\'3080290\', \'3023423\', \'3055751\', \'3080451\', \'3071008\']', '[{\'Dollarama Number\': \'3018473\'}, {\'UPC\': \'667888109937\'}, {\'Pieces per Unit\': \'3\'}, {\'Packaging Dimensions (L x W x H)\': \'4.50 x 3.38 x 4.50 IN\'}, {\'Weight\': \'0.32 LB\'}, {\'\': \'\'}]', '39', 18),
(325, 'Packing Cube with Mesh Top - Large', '3059472', '[\'https://www.dollarama.com/images/3059472_0_S.jpg\', \'https://www.dollarama.com/images/3059472_1_S.jpg\', \'https://www.dollarama.com/images/3059472_2_S.jpg\', \'https://www.dollarama.com/images/3059472_3_S.jpg\']', 'Packing Cube with Mesh Top - Large', 30, 2.5, '[\'Items in the bag are not included\', \'Dimensions: 2.75\" x 8.7\" x 11\" (7 cm x 22 cm x 28 cm)\', \'A case contains green, blue, red and grey bags\', \'A case contains 12 mesh bags\', \'\', \'\']', '[\'3065314\', \'3065295\', \'3042230\', \'3065293\', \'3091190\']', '[{\'Dollarama Number\': \'3059472\'}, {\'UPC\': \'667888287895\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.40 LB\'}, {\'\': \'\'}]', '40', 51),
(326, 'Purell Hand Sanitizer\nPurell', '3097310', '[\'https://www.dollarama.com/images/3097310_0_S.jpg\', \'https://www.dollarama.com/images/3097310_1_S.jpg\', \'https://www.dollarama.com/images/3097310_2_S.jpg\', \'https://www.dollarama.com/images/3097310_3_S.jpg\']', 'Purell Hand Sanitizer', 108, 1.5, '[\'Purell hand sanitizer\', \'70% Alcohol\', \'30 ml\', \'A case contains 2 jars of 36 sanitizers each\', \'This product has a special carrier surcharge of $12/case ($20 flat for orders over 30 cases) in addition to the shipping fee.\', \'\']', '[\'3065314\', \'3065295\', \'3042230\', \'3065293\', \'3091190\']', '[{\'Brand\': \'Purell\'}, {\'Dollarama Number\': \'3097310\'}, {\'UPC\': \'73852056242, 73852045413\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'\': \'\'}]', '41', 51),
(327, 'Assorted Cotton Protective Mask -Adult', '3099369', '[\'https://www.dollarama.com/images/3099369_0_S.jpg\', \'https://www.dollarama.com/images/3099369_1_S.jpg\', \'https://www.dollarama.com/images/3099369_2_S.jpg\', \'https://www.dollarama.com/images/3099369_3_S.jpg\']', 'Assorted Cotton Protective Mask -Adult', 96, 4, '[\'Cotton masks for adult\', \'A case contains Floral, Denim, Checkered, Polka Dots masks\', \'100% cotton\', \'Adjustable ear loops\', \'A case contains 24 masks\', \'\']', '[\'3065314\', \'3065295\', \'3042230\', \'3065293\', \'3091190\']', '[{\'Dollarama Number\': \'3099369\'}, {\'UPC\': \'667888469802\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Assorted\'}]', '114', 51),
(328, 'Packing Cube with Mesh Top - Small', '3059474', '[\'https://www.dollarama.com/images/3059474_0_S.jpg\', \'https://www.dollarama.com/images/3059474_1_S.jpg\', \'https://www.dollarama.com/images/3059474_2_S.jpg\', \'https://www.dollarama.com/images/3059474_3_S.jpg\']', 'Packing Cube with Mesh Top - Small', 24, 2, '[\'Items in the bag are not included\', \'Dimensions: 2.5\" x 7\" x 11.6\" (6.5 cm x 18 cm x 29.5 cm)\', \'A case contains green, blue, red and grey bags \', \'A case contains 12 mesh bags\', \'\', \'\']', '[\'3065314\', \'3065295\', \'3042230\', \'3065293\', \'3091190\']', '[{\'Dollarama Number\': \'3059474\'}, {\'UPC\': \'667888287918\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.40 LB\'}, {\'\': \'\'}]', '43', 51),
(329, 'Clear Plastic craft storage', '3076906', '[\'https://www.dollarama.com/images/3076906_0_S.jpg\', \'https://www.dollarama.com/images/3076906_1_S.jpg\', \'https://www.dollarama.com/images/3076906_2_S.jpg\', \'https://www.dollarama.com/images/3076906_3_S.jpg\']', 'Clear Plastic craft storage', 48, 4, '[\'Clear plastic craft storage\', \'Locks on handle\', \'Dimensions: 12\" x 9.8\" x 3.7\"(30.5 cm x 25 cm x 9.5 cm)\', \'\', \'\', \'\']', '[\'3056359\', \'3100187\', \'3100212\', \'0201254\', \'3069552\']', '[{\'Dollarama Number\': \'3076906\'}, {\'UPC\': \'667888369324\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'\': \'\'}]', '44', 83),
(330, 'Foaming Handwash (Assorted Scents)', '3042594', '[\'https://www.dollarama.com/images/3042594_0_S.jpg\', \'https://www.dollarama.com/images/3042594_1_S.jpg\', \'https://www.dollarama.com/images/3042594_2_S.jpg\', \'https://www.dollarama.com/images/3042594_3_S.jpg\']', 'Foaming Handwash (Assorted Scents)', 42, 1.75, '[\'Foaming and moisturizing\', \'250mL\', \'A case contains equally distributed Cherry Blossom, Pomegranate apple, Vanilla Sugar and Coconut lime scented soaps\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3068609\', \'3059822\', \'3022067\']', '[{\'Dollarama Number\': \'3042594\'}, {\'UPC\': \'667888216130\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'7.00 x 2.50 x 2.00 IN\'}, {\'Volume\': \'250.00 ML\'}, {\'Weight\': \'0.67 LB\'}, {\'Pattern\': \'Assorted\'}]', '45', 48),
(331, 'Modelling Clay Set 4PC (Assorted Colours)\nPlay-Doh', '3019486', '[\'https://www.dollarama.com/images/3019486_0_S.jpg\', \'https://www.dollarama.com/images/3019486_1_S.jpg\', \'https://www.dollarama.com/images/3019486_2_S.jpg\', \'https://www.dollarama.com/images/3019486_3_S.jpg\']', 'Modelling Clay Set 4PC (Assorted Colours)', 84, 3.5, '[\'4 different colours per package\', \'224g (8oz)\', \'A case contains equally distributed yellow, green, blue and red clays\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3023950\', \'3097293\', \'3071401\', \'3097216\', \'3097217\']', '[{\'Brand\': \'Play-Doh\'}, {\'Dollarama Number\': \'3019486\'}, {\'UPC\': \'667888113514, 76930232415, 5010994484927, 630509359080\'}, {\'Pieces per Unit\': \'4\'}, {\'Packaging Dimensions (L x W x H)\': \'8.30 x 2.10 x 2.40 IN\'}, {\'Weight\': \'0.58 LB\'}, {\'Color\': \'Assorted', '46', 15),
(332, 'Sketch Pad\nSTUDIO MEDIA', '0502970', '[\'https://www.dollarama.com/images/0502970_0_S.jpg\', \'https://www.dollarama.com/images/0502970_1_S.jpg\', \'https://www.dollarama.com/images/0502970_2_S.jpg\', \'https://www.dollarama.com/images/0502970_3_S.jpg\']', 'Sketch Pad', 48, 2, '[\'Smooth Paper\', \'Standard weight\', \'Perfect for crayons and markers\', \'9\" x 12\" (23cm x 30.5cm)\', \'\', \'\']', '[\'3047850\', \'3084887\', \'3034557\', \'3027176\', \'3060041\']', '[{\'Brand\': \'STUDIO MEDIA\'}, {\'Dollarama Number\': \'0502970\'}, {\'UPC\': \'667888014682\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.10 x 12.00 x 0.30 IN\'}, {\'Weight\': \'0.99 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', '47', 89),
(333, '80 Page Sketchbook\nSTUDIO', '3027176', '[\'https://www.dollarama.com/images/3027176_0_S.jpg\', \'https://www.dollarama.com/images/3027176_1_S.jpg\', \'https://www.dollarama.com/images/3027176_2_S.jpg\', \'https://www.dollarama.com/images/3027176_3_S.jpg\']', '80 Page Sketchbook', 48, 4, '[\'80 pages per sketch book\', \'A suitable sketch paper for quick studies with any dry media\', \'Acid-Free\', \'9\" x 12\" (22.86cm x 30.48cm)\', \'\', \'\']', '[\'3047850\', \'3084887\', \'0502970\', \'3034557\', \'3060041\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3027176\'}, {\'UPC\': \'667888150991\'}, {\'Pieces per Unit\': \'80\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 12.00 x 0.80 IN\'}, {\'Weight\': \'1.69 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', '48', 89),
(334, 'White Foam Board\nELMER\'S', '3005411', '[\'https://www.dollarama.com/images/3005411_0_S.jpg\', \'https://www.dollarama.com/images/3005411_1_S.jpg\', \'https://www.dollarama.com/images/3005411_2_S.jpg\', \'https://www.dollarama.com/images/3005411_3_S.jpg\']', 'White Foam Board', 60, 1.5, '[\'Lightweight\', \'Heavy Duty\', \'20\" x 30\" x 0.2\" (51.2cm x 77cm x 0.6cm)\', \'\', \'\', \'\']', '[\'3047850\', \'3084887\', \'0502970\', \'3034557\', \'3027176\']', '[{\'Brand\': \"ELMER\'S\"}, {\'Dollarama Number\': \'3005411\'}, {\'UPC\': \'82665305256, 79946053326\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'20.20 x 0.20 x 30.30 IN\'}, {\'Weight\': \'0.40 LB\'}, {\'Color\': \'White only\'}, {\'Pattern\': \'Solid\'}]', '49', 89),
(335, '3-Subject Spiral Notebook (Assorted Colours)\nSTUDIO MEDIA', '3015864', '[\'https://www.dollarama.com/images/3015864_0_S.jpg\', \'https://www.dollarama.com/images/3015864_1_S.jpg\', \'https://www.dollarama.com/images/3015864_2_S.jpg\', \'https://www.dollarama.com/images/3015864_3_S.jpg\']', '3-Subject Spiral Notebook (Assorted Colours)', 60, 2.5, '[\'250 pages\', \'Ruled paper\', \'8\" x 10.5\" (20.3cm x 26.7cm)\', \'A case contains equally distributed Black, Green, Burgundy and Blue notebooks\', \'Assortment may vary from picture\', \'\']', '[\'3035791\', \'3040847\', \'3098724\', \'3019730\', \'0500627\']', '[{\'Brand\': \'STUDIO MEDIA\'}, {\'Dollarama Number\': \'3015864\'}, {\'UPC\': \'667888093731\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'8.50 x 10.60 x 0.50 IN\'}, {\'Weight\': \'0.93 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '50', 86),
(336, 'Spiral Notebook (Assorted Colours and Designs)\nSTUDIO MEDIA', '3019730', '[\'https://www.dollarama.com/images/3019730_0_S.jpg\', \'https://www.dollarama.com/images/3019730_1_S.jpg\', \'https://www.dollarama.com/images/3019730_2_S.jpg\', \'https://www.dollarama.com/images/3019730_3_S.jpg\']', 'Spiral Notebook (Assorted Colours and Designs)', 36, 1.5, '[\'250 ruled pages\', \'Durable front and back cover\', \'9\" x 6\" (22.9cm x 15.2cm)\', \'Snag-Free coil binding\', \'Assorted colours and designs\', \'Assortment may vary from picture\']', '[\'3035791\', \'3040847\', \'3098724\', \'3015864\', \'0500627\']', '[{\'Brand\': \'STUDIO MEDIA\'}, {\'Dollarama Number\': \'3019730\'}, {\'UPC\': \'667888114726\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'6.50 x 9.20 x 0.50 IN\'}, {\'Weight\': \'0.95 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', '51', 86),
(337, 'Spiral Notebook (Assorted Colours)\nFIRSTLINE', '0502657', '[\'https://www.dollarama.com/images/0502657_0_S.jpg\', \'https://www.dollarama.com/images/0502657_1_S.jpg\', \'https://www.dollarama.com/images/0502657_2_S.jpg\', \'https://www.dollarama.com/images/0502657_3_S.jpg\']', 'Spiral Notebook (Assorted Colours)', 45, 1.25, '[\'140 pages\', \'College ruled\', \'1 Subject\', \'8\" x 10.5\" (20.3cm x 26.6cm)\', \'Assorted colours\', \'Assortment may vary from picture\']', '[\'3035791\', \'3040847\', \'3098724\', \'3015864\', \'3019730\']', '[{\'Brand\': \'FIRSTLINE\'}, {\'Dollarama Number\': \'0502657\'}, {\'UPC\': \'827112526576, 667888122387\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'8.30 x 10.60 x 0.60 IN\'}, {\'Weight\': \'0.46 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '52', 86),
(338, 'Spiral Notebook (Assorted Colours)\nFIRST CLASS', '3008655', '[\'https://www.dollarama.com/images/3008655_0_S.jpg\', \'https://www.dollarama.com/images/3008655_1_S.jpg\', \'https://www.dollarama.com/images/3008655_2_S.jpg\', \'https://www.dollarama.com/images/3008655_3_S.jpg\']', 'Spiral Notebook (Assorted Colours)', 60, 2.5, '[\'200 college ruled pages\', \'Pages with perforated line\', \'2 pockets\', \'10.5\" x 8\" (26.6cm x 20.3cm)\', \'A case contains equally distributed Blue, Red, Black and Dark Green notebooks \', \'Assortment may vary from picture\']', '[\'3035791\', \'3040847\', \'3098724\', \'3015864\', \'3019730\']', '[{\'Brand\': \'FIRST CLASS\'}, {\'Dollarama Number\': \'3008655\'}, {\'UPC\': \'667888047598, 827112386552\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.30 x 10.60 x 0.90 IN\'}, {\'Weight\': \'1.01 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}', '53', 86),
(339, 'Composition Book (Assorted Styles)', '0500723', '[\'https://www.dollarama.com/images/0500723_0_S.jpg\', \'https://www.dollarama.com/images/0500723_1_S.jpg\', \'https://www.dollarama.com/images/0500723_2_S.jpg\', \'https://www.dollarama.com/images/0500723_3_S.jpg\']', 'Composition Book (Assorted Styles)', 27, 1.5, '[\'180 pages\', \'Wide ruled\', \'9.75\" x 7.5\" (24.7cm x 19cm)\', \'A case contains black/blue/red doted and blue, green and orange designed books\', \'Assortment may vary from picture\', \'\']', '[\'3035791\', \'3040847\', \'3098724\', \'3015864\', \'3019730\']', '[{\'Dollarama Number\': \'0500723\'}, {\'UPC\': \'667888013838\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'7.40 x 9.80 x 0.40 IN\'}, {\'Weight\': \'0.75 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Assorted\'}]', '54', 86),
(340, 'Dry-Erase Markers with Built-in Eraser 3PK (Assorted Colors)\nSTUDIO', '0503040', '[\'https://www.dollarama.com/images/0503040_0_S.jpg\', \'https://www.dollarama.com/images/0503040_1_S.jpg\', \'https://www.dollarama.com/images/0503040_2_S.jpg\', \'https://www.dollarama.com/images/0503040_3_S.jpg\']', 'Dry-Erase Markers with Built-in Eraser 3PK (Assorted Colors)', 30, 1.25, '[\'With built-in eraser\', \'Low odour, non-toxic\', \'Quick drying\', \'Wipes off easily\', \'A case contains equally distributed red, blue and black markers\', \'\']', '[\'3083557\', \'0501803\', \'3020905\', \'3063059\', \'3060160\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0503040\'}, {\'UPC\': \'667888014743\'}, {\'Pieces per Unit\': \'3\'}, {\'Packaging Dimensions (L x W x H)\': \'7.30 x 0.50 x 5.90 IN\'}, {\'Weight\': \'0.12 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '55', 87),
(341, '2PK Permanent Black Sharpie Markers\nSharpie', '3020905', '[\'https://www.dollarama.com/images/3020905_0_S.jpg\', \'https://www.dollarama.com/images/3020905_1_S.jpg\', \'https://www.dollarama.com/images/3020905_2_S.jpg\', \'https://www.dollarama.com/images/3020905_3_S.jpg\']', '2PK Permanent Black Sharpie Markers', 12, 2, '[\'2 markers per package\', \'Fine point\', \'Marks on most surfaces\', \'A case contains 6 packages\', \'\', \'\']', '[\'3083557\', \'0501803\', \'0503040\', \'3063059\', \'3060160\']', '[{\'Brand\': \'Sharpie\'}, {\'Dollarama Number\': \'3020905\'}, {\'UPC\': \'71641301627\'}, {\'Pieces per Unit\': \'2\'}, {\'Packaging Dimensions (L x W x H)\': \'7.50 x 2.30 x 0.80 IN\'}, {\'Weight\': \'0.05 LB\'}, {\'\': \'\'}]', '187', 87),
(342, 'Black Ultra Fine Point Permanent Markers 2PK\nSharpie', '3063059', '[\'https://www.dollarama.com/images/3063059_0_S.jpg\', \'https://www.dollarama.com/images/3063059_1_S.jpg\', \'https://www.dollarama.com/images/3063059_2_S.jpg\', \'https://www.dollarama.com/images/3063059_3_S.jpg\']', 'Black Ultra Fine Point Permanent Markers 2PK', 12, 2, '[\'Precise, narrow tip for extreme control\', \'Quick-drying\', \'Fade-resistant and water-resistant ink\', \'Marks on most surfaces\', \'\', \'\']', '[\'3083557\', \'0501803\', \'0503040\', \'3020905\', \'3060160\']', '[{\'Brand\': \'Sharpie\'}, {\'Dollarama Number\': \'3063059\'}, {\'UPC\': \'71641371613\'}, {\'Pieces per Unit\': \'2\'}, {\'Packaging Dimensions (L x W x H)\': \'2.00 x 0.50 x 7.50 IN\'}, {\'Weight\': \'0.05 LB\'}, {\'\': \'\'}]', '57', 87),
(343, 'Ballpoint Pens 6PK (Assorted Colours)\nSTUDIO', '3012811', '[\'https://www.dollarama.com/images/3012811_0_S.jpg\', \'https://www.dollarama.com/images/3012811_1_S.jpg\', \'https://www.dollarama.com/images/3012811_2_S.jpg\', \'https://www.dollarama.com/images/3012811_3_S.jpg\']', 'Ballpoint Pens 6PK (Assorted Colours)', 30, 1.25, '[\'6 pens per package\', \'0.7mm medium point\', \'Easy clip retract\', \'Textured comfort grip\', \'A case contains Blue, Black and Red ink pens\', \'Assortment may vary from picture\']', '[\'3083557\', \'0501803\', \'0503040\', \'3020905\', \'3063059\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3012811\'}, {\'UPC\': \'667888076840\'}, {\'Pieces per Unit\': \'6\'}, {\'Packaging Dimensions (L x W x H)\': \'8.00 x 3.80 x 0.50 IN\'}, {\'Weight\': \'0.12 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '58', 87),
(344, 'Black Gel Pens 12PK\nSTUDIO', '3020600', '[\'https://www.dollarama.com/images/3020600_0_S.jpg\', \'https://www.dollarama.com/images/3020600_1_S.jpg\', \'https://www.dollarama.com/images/3020600_2_S.jpg\', \'https://www.dollarama.com/images/3020600_3_S.jpg\']', 'Black Gel Pens 12PK', 60, 2.5, '[\'12 pens per package\', \'Gel pens\', \'Rubber comfort grip\', \'\', \'\', \'\']', '[\'3083557\', \'0501803\', \'0503040\', \'3020905\', \'3063059\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3020600\'}, {\'UPC\': \'667888119738\'}, {\'Pieces per Unit\': \'12\'}, {\'Packaging Dimensions (L x W x H)\': \'4.70 x 1.60 x 8.30 IN\'}, {\'Weight\': \'0.38 LB\'}, {\'Color\': \'Solid\'}, {\'\': \'\'}]', '59', 87),
(345, 'Gel Pens 18PK\nSTUDIO', '3063962', '[\'https://www.dollarama.com/images/3063962_0_S.jpg\', \'https://www.dollarama.com/images/3063962_1_S.jpg\', \'https://www.dollarama.com/images/3063962_2_S.jpg\', \'https://www.dollarama.com/images/3063962_3_S.jpg\']', 'Gel Pens 18PK', 48, 4, '[\'6 Neon / 6 Glitter / 6 Metalic\', \'Super smooth\', \'Tip thickness 0.8-1.0 mm\', \'A case contains equally distributed Neon (fuschia,orange,yellow,green,blue,purple) and Metallic (grey,red,purple,blue,green,gold) gel pens sets\', \'\', \'\']', '[\'3083557\', \'0501803\', \'0503040\', \'3020905\', \'3063059\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3063962\'}, {\'UPC\': \'667888306848\'}, {\'Pieces per Unit\': \'18\'}, {\'Packaging Dimensions (L x W x H)\': \'4.13 x 1.13 x 9.00 IN\'}, {\'Weight\': \'0.35 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '60', 87),
(346, 'HB #2 Graphite Pencils 12PK\nSTUDIO', '3069095', '[\'https://www.dollarama.com/images/3069095_0_S.jpg\', \'https://www.dollarama.com/images/3069095_1_S.jpg\', \'https://www.dollarama.com/images/3069095_2_S.jpg\', \'https://www.dollarama.com/images/3069095_3_S.jpg\']', 'HB #2 Graphite Pencils 12PK', 60, 2, '[\'12 pencils per package\', \'Graphite HB #2\', \'Latex-free eraser\', \'Sharpened\', \"7.5\'\' (19cm)\", \'\']', '[\'3083557\', \'0501803\', \'0503040\', \'3020905\', \'3063059\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3069095\'}, {\'UPC\': \'667888329908\'}, {\'Pieces per Unit\': \'12\'}, {\'Packaging Dimensions (L x W x H)\': \'8.50 x 2.00 x 0.80 IN\'}, {\'Weight\': \'0.18 LB\'}, {\'\': \'\'}]', '61', 87);
INSERT INTO `core_dolloaritem` (`id`, `display_name`, `product_id`, `product_images`, `product_full_name`, `product_case_price`, `product_unit_price`, `product_speciation`, `related_product_ID`, `product_specificaions`, `slug`, `category_id`) VALUES
(347, 'Colour Mechanical Pencil Set with Accessories 6PK (Assorted Colours)\nSTUDIO', '3031101', '[\'https://www.dollarama.com/images/3031101_0_S.jpg\', \'https://www.dollarama.com/images/3031101_1_S.jpg\', \'https://www.dollarama.com/images/3031101_2_S.jpg\', \'https://www.dollarama.com/images/3031101_3_S.jpg\']', 'Colour Mechanical Pencil Set with Accessories 6PK (Assorted Colours)', 30, 2.5, '[\'6 pencils per package\', \'0.7mm lead\', \'Accessories: 12 refill leads and 6 erasers\', \'Quality eraser\', \'A case contains packs of pencils with Black, Blue, Pink, Green, Orange and Purple ink in each pack \', \'Assortment may vary from picture\']', '[\'3083557\', \'0501803\', \'0503040\', \'3020905\', \'3063059\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3031101\'}, {\'UPC\': \'667888168262\'}, {\'Pieces per Unit\': \'6\'}, {\'Packaging Dimensions (L x W x H)\': \'5.00 x 0.90 x 7.50 IN\'}, {\'Weight\': \'2.37 LB\'}, {\'\': \'\'}]', '62', 87),
(348, 'Highlighters 5PK (Assorted Colours)\nSTUDIO', '0502200', '[\'https://www.dollarama.com/images/0502200_0_S.jpg\', \'https://www.dollarama.com/images/0502200_1_S.jpg\', \'https://www.dollarama.com/images/0502200_2_S.jpg\', \'https://www.dollarama.com/images/0502200_3_S.jpg\']', 'Highlighters 5PK (Assorted Colours)', 30, 1.25, '[\'5 highlighters per package\', \'Chisel tip\', \'Quick drying\', \'Vivid colour\', \'Assorted colours\', \'Assortment may vary from picture\']', '[\'3083557\', \'0501803\', \'0503040\', \'3020905\', \'3063059\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0502200\'}, {\'UPC\': \'667888056972\'}, {\'Pieces per Unit\': \'5\'}, {\'Packaging Dimensions (L x W x H)\': \'4.60 x 0.80 x 7.10 IN\'}, {\'Weight\': \'0.11 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '63', 87),
(349, 'Permanant Marker 3PK (Assorted Colors)\nSharpie', '3020906', '[\'https://www.dollarama.com/images/3020906_0_S.jpg\', \'https://www.dollarama.com/images/3020906_1_S.jpg\', \'https://www.dollarama.com/images/3020906_2_S.jpg\', \'https://www.dollarama.com/images/3020906_3_S.jpg\']', 'Permanant Marker 3PK (Assorted Colors)', 18, 3, '[\'3 Colours per pack: red, blue and black\', \'Quick drying, fade- and water-resistant ink\', \'Fine point\', \'Marks on most surfaces\', \'Non-toxic\', \'\']', '[\'3083557\', \'0501803\', \'0503040\', \'3020905\', \'3063059\']', '[{\'Brand\': \'Sharpie\'}, {\'Dollarama Number\': \'3020906\'}, {\'UPC\': \'71641301733\'}, {\'Pieces per Unit\': \'3\'}, {\'Packaging Dimensions (L x W x H)\': \'3.25 x 0.50 x 7.60 IN\'}, {\'Weight\': \'0.08 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '64', 87),
(350, 'Fine Tip Marker Set 18PK (Assorted Colors)\nSTUDIO', '3016734', '[\'https://www.dollarama.com/images/3016734_0_S.jpg\', \'https://www.dollarama.com/images/3016734_1_S.jpg\', \'https://www.dollarama.com/images/3016734_2_S.jpg\', \'https://www.dollarama.com/images/3016734_3_S.jpg\']', 'Fine Tip Marker Set 18PK (Assorted Colors)', 42, 3.5, '[\'18 markers per package\', \'Washable\', \'Assorted package colours\', \'A case contains equally distributed grey, blue and pink pens packages\', \'Assortment may vary from picture\', \'\']', '[\'3047850\', \'3084887\', \'0502970\', \'3063962\', \'0502200\']', '[]', '65', 82),
(351, 'Marker Set 14PK (Assorted Colours)\nSTUDIO Fineline', '3024210', '[\'https://www.dollarama.com/images/3024210_0_S.jpg\', \'https://www.dollarama.com/images/3024210_1_S.jpg\', \'https://www.dollarama.com/images/3024210_2_S.jpg\', \'https://www.dollarama.com/images/3024210_3_S.jpg\']', 'Marker Set 14PK (Assorted Colours)', 84, 3.5, '[\'14 markers per package\', \'Super fine tip (0.4mm)\', \'Comfort grip shape\', \'Assorted colours\', \'Assortment may vary from picture\', \'\']', '[\'3047850\', \'3084887\', \'0502970\', \'3063962\', \'0502200\']', '[{\'Brand\': \'STUDIO Fineline\'}, {\'Dollarama Number\': \'3024210\'}, {\'UPC\': \'667888135714\'}, {\'Pieces per Unit\': \'14\'}, {\'Packaging Dimensions (L x W x H)\': \'5.10 x 0.50 x 6.50 IN\'}, {\'Weight\': \'1.50 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '66', 82),
(352, 'Flat Artist Canvas (Assorted Sizes and Quantities)\nArtist\'s series', '0201015', '[\'https://www.dollarama.com/images/0201015_0_S.jpg\', \'https://www.dollarama.com/images/0201015_1_S.jpg\', \'https://www.dollarama.com/images/0201015_2_S.jpg\', \'https://www.dollarama.com/images/0201015_3_S.jpg\']', 'Flat Artist Canvas (Assorted Sizes and Quantities)', 45, 1.25, '[\'100% bleached cotton\', \'Medium : 8\" x 10\" (20.5cm x 25.5cm)\', \'Large : 9\" x 12\" (23cm x 30.5cm)\', \"A case contains medium and large artist\'s canvas\", \'Assortment may vary from picture\', \'\']', '[\'3066281\', \'3069592\', \'3060378\', \'3086873\', \'3053303\']', '[{\'Brand\': \"Artist\'s series\"}, {\'Dollarama Number\': \'0201015\'}, {\'UPC\': \'667888010714\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.10 x 12.00 x 0.10 IN\'}, {\'Weight\': \'0.38 LB\'}, {\'Color\': \'White only\'}, {\'Pattern\': \'Solid\'}]', '67', 84),
(353, '9\'\'x12\'\' Wood Framed Artist Canvas', '3045087', '[\'https://www.dollarama.com/images/3045087_0_S.jpg\', \'https://www.dollarama.com/images/3045087_1_S.jpg\', \'https://www.dollarama.com/images/3045087_2_S.jpg\', \'https://www.dollarama.com/images/3045087_3_S.jpg\']', '9\'\'x12\'\' Wood Framed Artist Canvas', 48, 2, '[\'100% bleached cotton\', \'9\" x 12\" (23cm x 30.5cm)\', \'\', \'\', \'\', \'\']', '[\'3066281\', \'3069592\', \'3060378\', \'3086873\', \'3053303\']', '[{\'Dollarama Number\': \'3045087\'}, {\'UPC\': \'667888226344\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.10 x 12.00 x 0.70 IN\'}, {\'Weight\': \'0.40 LB\'}, {\'Color\': \'White only\'}, {\'Pattern\': \'Solid\'}]', '68', 84),
(354, 'Colourful Paint Brush Set 5PC\nCrafts', '3017476', '[\'https://www.dollarama.com/images/3017476_0_S.jpg\', \'https://www.dollarama.com/images/3017476_1_S.jpg\', \'https://www.dollarama.com/images/3017476_2_S.jpg\', \'https://www.dollarama.com/images/3017476_3_S.jpg\']', 'Colourful Paint Brush Set 5PC', 48, 2, '[\'5 brushes per package\', \'Flat paint brushes\', \'Includes 3 straight and 2 angled tip brushes\', \'Plastic handle\', \'\', \'\']', '[\'3066281\', \'3069592\', \'3060378\', \'3086873\', \'3053303\']', '[{\'Brand\': \'Crafts\'}, {\'Dollarama Number\': \'3017476\'}, {\'UPC\': \'667888103898\'}, {\'Pieces per Unit\': \'5\'}, {\'Packaging Dimensions (L x W x H)\': \'4.70 x 0.90 x 10.20 IN\'}, {\'Weight\': \'0.17 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '69', 84),
(355, 'Stainless Steel Scissors (Assorted Colours)\nSTITCH-IT', '0200593', '[\'https://www.dollarama.com/images/0200593_0_S.jpg\', \'https://www.dollarama.com/images/0200593_1_S.jpg\', \'https://www.dollarama.com/images/0200593_2_S.jpg\', \'https://www.dollarama.com/images/0200593_3_S.jpg\']', 'Stainless Steel Scissors (Assorted Colours)', 36, 1.5, '[\'For paper, fabric, and other materials\', \'Assorted styles\', \'Assorted colours\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3056359\', \'3100187\', \'3100212\', \'0201254\', \'3069552\']', '[{\'Brand\': \'STITCH-IT\'}, {\'Dollarama Number\': \'0200593\'}, {\'UPC\': \'667888010622\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.30 x 0.70 x 9.80 IN\'}, {\'Weight\': \'0.38 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Assorted\'}]', '70', 83),
(356, 'Invisible Tape\nSTUDIO', '0501820', '[\'https://www.dollarama.com/images/0501820_0_S.jpg\', \'https://www.dollarama.com/images/0501820_1_S.jpg\', \'https://www.dollarama.com/images/0501820_2_S.jpg\', \'https://www.dollarama.com/images/0501820_3_S.jpg\']', 'Invisible Tape', 48, 1, '[\'With metal teeth for easy cutting\', \'0.75\" x 67\\\' (1.8cm x 20m)\', \'Invisible when applied\', \'\', \'\', \'\']', '[\'0501821\', \'0501557\', \'0502341\', \'3081943\', \'3069918\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0501820\'}, {\'UPC\': \'667888014125\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.80 x 1.00 x 4.80 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '71', 90),
(357, 'Transparent Tape\nSTUDIO', '0501821', '[\'https://www.dollarama.com/images/0501821_0_S.jpg\', \'https://www.dollarama.com/images/0501821_1_S.jpg\', \'https://www.dollarama.com/images/0501821_2_S.jpg\', \'https://www.dollarama.com/images/0501821_3_S.jpg\']', 'Transparent Tape', 60, 1.25, '[\'With metal teeth for easy cutting\', \'0.75\" x 108\\\' (1.8cm x 33m)\', \'\', \'\', \'\', \'\']', '[\'0501820\', \'0501557\', \'0502341\', \'3081943\', \'3069918\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0501821\'}, {\'UPC\': \'667888061327\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.80 x 1.00 x 4.80 IN\'}, {\'Weight\': \'0.14 LB\'}, {\'\': \'\'}]', '72', 90),
(358, 'Instant Tac (Assorted Colours)', '0501557', '[\'https://www.dollarama.com/images/0501557_0_S.jpg\', \'https://www.dollarama.com/images/0501557_1_S.jpg\', \'https://www.dollarama.com/images/0501557_2_S.jpg\', \'https://www.dollarama.com/images/0501557_3_S.jpg\']', 'Instant Tac (Assorted Colours)', 24, 1, '[\'Replaces tape, pushpins and tacks\', \"Won\'t dry out\", \'Reusable, Safe, Non-toxic\', \'1.10z (31.5g)\', \'A case contains White and Blue reusable adhesives\', \'Assortment may vary from picture\']', '[\'0501820\', \'0501821\', \'0502341\', \'3081943\', \'3069918\']', '[{\'Dollarama Number\': \'0501557\'}, {\'UPC\': \'667888014002\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'5.00 x 0.40 x 6.80 IN\'}, {\'Weight\': \'0.75 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '73', 90),
(359, 'Ruled Sheets 125PK\nSTUDIO MEDIA', '3033439', '[\'https://www.dollarama.com/images/3033439_0_S.jpg\', \'https://www.dollarama.com/images/3033439_1_S.jpg\', \'https://www.dollarama.com/images/3033439_2_S.jpg\', \'https://www.dollarama.com/images/3033439_3_S.jpg\']', 'Ruled Sheets 125PK', 30, 1.25, '[\'125 sheets per pack\', \'With holes\', \'8\" x 10.5\" (20.3cm x 26.6cm)\', \'\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO MEDIA\'}, {\'Dollarama Number\': \'3033439\'}, {\'UPC\': \'667888177578\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'10.50 x 8.00 x 0.80 IN\'}, {\'Weight\': \'1.45 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', '74', 88),
(360, 'Multi-Usage Paper 8.5\"x11\" 150PK\nSTUDIO', '3009160', '[\'https://www.dollarama.com/images/3009160_0_S.jpg\', \'https://www.dollarama.com/images/3009160_1_S.jpg\', \'https://www.dollarama.com/images/3009160_2_S.jpg\', \'https://www.dollarama.com/images/3009160_3_S.jpg\']', 'Multi-Usage Paper 8.5\"x11\" 150PK', 72, 3, '[\'150 sheets per pack\', \'8.5\" x 11\" (21.6cm x 27.9cm)\', \'Can be used with fax, photocopiers, laser and inkjet printers\', \'\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3009160\'}, {\'UPC\': \'667888049769\'}, {\'Pieces per Unit\': \'150\'}, {\'Packaging Dimensions (L x W x H)\': \'8.50 x 11.00 x 1.30 IN\'}, {\'Weight\': \'1.61 LB\'}, {\'Color\': \'White only\'}, {\'Pattern\': \'Solid\'}]', '75', 88),
(361, 'Correction Tape 2PK\ninc.', '3030438', '[\'https://www.dollarama.com/images/3030438_0_S.jpg\', \'https://www.dollarama.com/images/3030438_1_S.jpg\', \'https://www.dollarama.com/images/3030438_2_S.jpg\', \'https://www.dollarama.com/images/3030438_3_S.jpg\']', 'Correction Tape 2PK', 48, 2, '[\'2 pieces per package\', \'Applies dry\', \'Comfortable grip\', \'\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'inc.\'}, {\'Dollarama Number\': \'3030438\'}, {\'UPC\': \'667888164929\'}, {\'Pieces per Unit\': \'2\'}, {\'Packaging Dimensions (L x W x H)\': \'3.20 x 0.60 x 7.60 IN\'}, {\'Weight\': \'1.02 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', '76', 88),
(362, 'Stapler Set (Assorted Colours)\nSTUDIO', '3064461', '[\'https://www.dollarama.com/images/3064461_0_S.jpg\', \'https://www.dollarama.com/images/3064461_1_S.jpg\', \'https://www.dollarama.com/images/3064461_2_S.jpg\', \'https://www.dollarama.com/images/3064461_3_S.jpg\']', 'Stapler Set (Assorted Colours)', 48, 4, '[\'3 pieces per package\', \'Includes standard size stapler, 1000 staples and staple remover\', \'20 sheet capacity\', \'A case contains Black and Blue sets\', \'Assortment may vary from picture\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3064461\'}, {\'UPC\': \'667888308507\'}, {\'Pieces per Unit\': \'3\'}, {\'Packaging Dimensions (L x W x H)\': \'6.50 x 5.50 x 1.50 IN\'}, {\'Weight\': \'0.48 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '77', 88),
(363, 'Vinyl Erasers 3PK\nSTUDIO', '0501451', '[\'https://www.dollarama.com/images/0501451_0_S.jpg\', \'https://www.dollarama.com/images/0501451_1_S.jpg\', \'https://www.dollarama.com/images/0501451_2_S.jpg\', \'https://www.dollarama.com/images/0501451_3_S.jpg\']', 'Vinyl Erasers 3PK', 24, 1, '[\'3 pieces per package\', \'Latex free\', \"4\'\' x 0.9\'\' x 2.3\'\' (10.1cm x 2.3cm x 6.5cm)\", \'\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0501451\'}, {\'UPC\': \'667888013975\'}, {\'Pieces per Unit\': \'3\'}, {\'Packaging Dimensions (L x W x H)\': \'5.50 x 3.50 x 0.50 IN\'}, {\'Weight\': \'0.15 LB\'}, {\'\': \'\'}]', '78', 88),
(364, 'Dual Powered Calculator\nSTUDIO', '3012921', '[\'https://www.dollarama.com/images/3012921_0_S.jpg\', \'https://www.dollarama.com/images/3012921_1_S.jpg\', \'https://www.dollarama.com/images/3012921_2_S.jpg\', \'https://www.dollarama.com/images/3012921_3_S.jpg\']', 'Dual Powered Calculator', 36, 3, '[\'Eight digit display\', \'Memory function\', \'Renewable resource\', \'\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3012921\'}, {\'UPC\': \'667888077205\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'5.50 x 0.60 x 8.70 IN\'}, {\'Weight\': \'0.43 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', '79', 88),
(365, 'Desktop Calculator\nSTUDIO', '3010653', '[\'https://www.dollarama.com/images/3010653_0_S.jpg\', \'https://www.dollarama.com/images/3010653_1_S.jpg\', \'https://www.dollarama.com/images/3010653_2_S.jpg\', \'https://www.dollarama.com/images/3010653_3_S.jpg\']', 'Desktop Calculator', 42, 3.5, '[\'Eight digit display\', \'Dual Power\', \'Memory function\', \'Tilt-up display\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3010653\'}, {\'UPC\': \'667888066261\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'5.80 x 1.20 x 8.30 IN\'}, {\'Weight\': \'0.58 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', '80', 88),
(366, '100 Push Pins (Assorted Colours)\nSTUDIO', '0501412', '[\'https://www.dollarama.com/images/0501412_0_S.jpg\', \'https://www.dollarama.com/images/0501412_1_S.jpg\', \'https://www.dollarama.com/images/0501412_2_S.jpg\', \'https://www.dollarama.com/images/0501412_3_S.jpg\']', '100 Push Pins (Assorted Colours)', 30, 1.25, '[\'100 push pins per package\', \'Reclosable package\', \'A case contains Multicoloured and Clear containers or push pins\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[]', '81', 88),
(367, 'Multicolor Rubber Bands\nSTUDIO', '3051249', '[\'https://www.dollarama.com/images/3051249_0_S.jpg\', \'https://www.dollarama.com/images/3051249_1_S.jpg\', \'https://www.dollarama.com/images/3051249_2_S.jpg\', \'https://www.dollarama.com/images/3051249_3_S.jpg\']', 'Multicolor Rubber Bands', 30, 1.25, '[\'Multicolours\', \'100g\', \'\', \'\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3051249\'}, {\'UPC\': \'667888253630\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'7.00 x 5.00 x 1.50 IN\'}, {\'Weight\': \'0.22 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '82', 88),
(368, 'Coloured Ruled Cards 100PK\nSTUDIO MEDIA', '3021546', '[\'https://www.dollarama.com/images/3021546_0_S.jpg\', \'https://www.dollarama.com/images/3021546_1_S.jpg\', \'https://www.dollarama.com/images/3021546_2_S.jpg\', \'https://www.dollarama.com/images/3021546_3_S.jpg\']', 'Coloured Ruled Cards 100PK', 30, 1.25, '[\'100 cards per package\', \'4 colours per package\', \"3\'\' x 5\'\' (8cm x 13cm)\", \'\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO MEDIA\'}, {\'Dollarama Number\': \'3021546\'}, {\'UPC\': \'667888124084\'}, {\'Pieces per Unit\': \'100\'}, {\'Packaging Dimensions (L x W x H)\': \'5.00 x 3.00 x 1.00 IN\'}, {\'Weight\': \'0.35 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '83', 88),
(369, '400 Self-Adhesive Notes (Assorted Colours)\nSTUDIO MEDIA', '3042867', '[\'https://www.dollarama.com/images/3042867_0_S.jpg\', \'https://www.dollarama.com/images/3042867_1_S.jpg\', \'https://www.dollarama.com/images/3042867_2_S.jpg\', \'https://www.dollarama.com/images/3042867_3_S.jpg\']', '400 Self-Adhesive Notes (Assorted Colours)', 36, 1.5, '[\'400 sheets per package\', \"3\'\' x 3\'\' (75 mm x 75 mm)\", \'A case contains Yellow, Green, Blue, Light Blue and Pink packs of note pads\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO MEDIA\'}, {\'Dollarama Number\': \'3042867\'}, {\'UPC\': \'667888217434\'}, {\'Pieces per Unit\': \'400\'}, {\'Packaging Dimensions (L x W x H)\': \'3.00 x 3.00 x 1.80 IN\'}, {\'Weight\': \'0.39 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '84', 88),
(370, 'Dry Erase Board\nSTUDIO', '3011334', '[\'https://www.dollarama.com/images/3011334_0_S.jpg\', \'https://www.dollarama.com/images/3011334_1_S.jpg\', \'https://www.dollarama.com/images/3011334_2_S.jpg\', \'https://www.dollarama.com/images/3011334_3_S.jpg\']', 'Dry Erase Board', 30, 2.5, '[\'Super smooth writing and erasing surface\', \'Magnets included\', \'Dry-erase marker included\', \'11\" x 14\" (28cm x 35.5cm)\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3011334\'}, {\'UPC\': \'667888069583\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'14.30 x 11.20 x 0.40 IN\'}, {\'Weight\': \'0.41 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', '85', 88),
(371, '6L Storage Box with Cover\nKIS', '3037752', '[\'https://www.dollarama.com/images/3037752_0_S.jpg\', \'https://www.dollarama.com/images/3037752_1_S.jpg\', \'https://www.dollarama.com/images/3037752_2_S.jpg\', \'https://www.dollarama.com/images/3037752_3_S.jpg\']', '6L Storage Box with Cover', 40, 2, '[\'Stackable\', \'Clear Plastic\', \'Dust proof\', \'Great for home, school and office use\', \'Made in Canada\', \'8.2\" x 13.4\" x 4.7\" (20.8cm x 34.1cm x 11.9cm)\']', '[\'3020237\', \'3042230\', \'3012493\', \'3011425\', \'3060334\']', '[{\'Brand\': \'KIS\'}, {\'Dollarama Number\': \'3037752\'}, {\'UPC\': \'667888196913\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'8.30 x 13.50 x 4.70 IN\'}, {\'Volume\': \'6.00 L\'}, {\'Weight\': \'0.90 LB\'}, {\'Pattern\': \'Solid\'}]', '86', 53),
(372, 'Lysol Disinfectant Spray Crisp Linen\nLysol', '3041909', '[\'https://www.dollarama.com/images/3041909_0_S.jpg\', \'https://www.dollarama.com/images/3041909_1_S.jpg\', \'https://www.dollarama.com/images/3041909_2_S.jpg\', \'https://www.dollarama.com/images/3041909_3_S.jpg\']', 'Lysol Disinfectant Spray Crisp Linen', 30, 2.5, '[\'Disinfecting Spray\', \'Crisp Linen\', \'200g\', \'This product has a special carrier surcharge of $12/case ($20 flat for orders over 30 cases) in addition to the shipping fee.\', \'\', \'\']', '[\'3024565\', \'3048447\', \'3104070\', \'0302332\', \'3048444\']', '[{\'Brand\': \'Lysol\'}, {\'Dollarama Number\': \'3041909\'}, {\'UPC\': \'59631909855\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '87', 19),
(373, 'Lysol Lemon Disinfecting Wipes\nLysol', '3024565', '[\'https://www.dollarama.com/images/3024565_0_S.jpg\', \'https://www.dollarama.com/images/3024565_1_S.jpg\', \'https://www.dollarama.com/images/3024565_2_S.jpg\', \'https://www.dollarama.com/images/3024565_3_S.jpg\']', 'Lysol Lemon Disinfecting Wipes', 30, 2.5, '[\'Disinfecting Wipes\', \'30 Wipes\', \'Lemon Scent\', \'\', \'\', \'\']', '[\'3073883\', \'3097025\', \'3097027\', \'3055228\', \'3028399\']', '[{\'Brand\': \'Lysol\'}, {\'Dollarama Number\': \'3024565\'}, {\'UPC\': \'19200843836, 59631941497\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '88', 27),
(374, 'Clorox disinfecting wipes - Crisp Lemon\nClorox', '3097025', '[\'https://www.dollarama.com/images/3097025_0_S.jpg\', \'https://www.dollarama.com/images/3097025_1_S.jpg\', \'https://www.dollarama.com/images/3097025_2_S.jpg\', \'https://www.dollarama.com/images/3097025_3_S.jpg\']', 'Clorox disinfecting wipes - Crisp Lemon', 30, 2.5, '[\'Disinfecting wipes\', \'Crisp Lemon\', \'35PK\', \'IMPORTANT: Please read Canadian Bilingual packaging information in \"More about this product\" section below\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097027\', \'3055228\', \'3028399\']', '[{\'Brand\': \'Clorox\'}, {\'Dollarama Number\': \'3097025\'}, {\'UPC\': \'44600015941\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.40 LB\'}, {\'\': \'\'}]', '89', 27),
(375, 'Clorox disinfecting wipes - Fresh Scent\nClorox', '3097027', '[\'https://www.dollarama.com/images/3097027_0_S.jpg\', \'https://www.dollarama.com/images/3097027_1_S.jpg\', \'https://www.dollarama.com/images/3097027_2_S.jpg\', \'https://www.dollarama.com/images/3097027_3_S.jpg\']', 'Clorox disinfecting wipes - Fresh Scent', 30, 2.5, '[\'Disinfecting wipes\', \'Fresh Scent\', \'Each bottle contains 35 wipes\', \'Each case contains 12 bottles\', \'IMPORTANT: Please read Canadian Bilingual packaging information in \"More about this product\" section below\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3055228\', \'3028399\']', '[{\'Brand\': \'Clorox\'}, {\'Dollarama Number\': \'3097027\'}, {\'UPC\': \'44600015934\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.40 LB\'}, {\'\': \'\'}]', '90', 27),
(376, 'Disinfectant Multi-Surface Cleaner, Original Scent\nPine-Sol', '3048444', '[\'https://www.dollarama.com/images/3048444_0_S.jpg\', \'https://www.dollarama.com/images/3048444_1_S.jpg\', \'https://www.dollarama.com/images/3048444_2_S.jpg\', \'https://www.dollarama.com/images/3048444_3_S.jpg\']', 'Disinfectant Multi-Surface Cleaner, Original Scent', 30, 2.5, '[\'Cleans, disinfects and deodorizes\', \'Kills 99.9% of bacteria\', \'Safe on wood, glazed tile and laminate\', \'Original scent\', \'828mL\', \'\']', '[\'3041909\', \'3024565\', \'3048447\', \'3104070\', \'0302332\']', '[{\'Brand\': \'Pine-Sol\'}, {\'Dollarama Number\': \'3048444\'}, {\'UPC\': \'55500402946, 55500016563\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.80 x 2.80 x 10.60 IN\'}, {\'Volume\': \'828.00 ML\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '91', 19),
(377, 'Pine Sol Cleaner - Lavender\nPine Sol', '3048447', '[\'https://www.dollarama.com/images/3048447_0_S.jpg\', \'https://www.dollarama.com/images/3048447_1_S.jpg\', \'https://www.dollarama.com/images/3048447_2_S.jpg\', \'https://www.dollarama.com/images/3048447_3_S.jpg\']', 'Pine Sol Cleaner - Lavender', 30, 2.5, '[\'Cleans, disinfects and deodorizes\', \'4x cleaning action\', \'Safe on wood, glazed tile and laminate surfaces\', \'Lavender clean scent\', \'828mL\', \'\']', '[\'3041909\', \'3024565\', \'3104070\', \'0302332\', \'3048444\']', '[{\'Brand\': \'Pine Sol\'}, {\'Dollarama Number\': \'3048447\'}, {\'UPC\': \'55500402892, 55500015870, 41294401128, 41294401876\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.20 LB\'}, {\'\': \'\'}]', '92', 19),
(378, 'Pine-Sol Multi-Surface Cleaner, Mandarin Sunrise Scent\nPine-Sol', '3049030', '[\'https://www.dollarama.com/images/3049030_0_S.jpg\', \'https://www.dollarama.com/images/3049030_1_S.jpg\', \'https://www.dollarama.com/images/3049030_2_S.jpg\', \'https://www.dollarama.com/images/3049030_3_S.jpg\']', 'Pine-Sol Multi-Surface Cleaner, Mandarin Sunrise Scent', 30, 2.5, '[\'Cleans, disinfects and deodorizes\', \'4x cleaning action\', \'Safe on wood, glazed tile and laminate\', \'Mandarin sunrise scent\', \'828mL\', \'\']', '[\'3041909\', \'3024565\', \'3048447\', \'3104070\', \'0302332\']', '[{\'Brand\': \'Pine-Sol\'}, {\'Dollarama Number\': \'3049030\'}, {\'UPC\': \'667888243204, 55500015498, 55500015917, 41294419048\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.80 x 2.80 x 10.60 IN\'}, {\'Volume\': \'828.00 ML\'}, {\'Weight\': \'1.00 LB', '93', 19),
(379, 'All-Purpose Cleaner, Lemon scent\nLysol', '3050619', '[\'https://www.dollarama.com/images/3050619_0_S.jpg\', \'https://www.dollarama.com/images/3050619_1_S.jpg\', \'https://www.dollarama.com/images/3050619_2_S.jpg\', \'https://www.dollarama.com/images/3050619_3_S.jpg\']', 'All-Purpose Cleaner, Lemon scent', 36, 3, '[\'Disinfectant\', \'Kills 99.9% of bacteria\', \'Removes soap scum and cuts through grease\', \'Lemon scent\', \'600mL\', \'\']', '[\'3041909\', \'3024565\', \'3048447\', \'3104070\', \'0302332\']', '[{\'Brand\': \'Lysol\'}, {\'Dollarama Number\': \'3050619\'}, {\'UPC\': \'59631950642, 59631752277\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'4.80 x 2.50 x 10.60 IN\'}, {\'Volume\': \'600.00 ML\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '94', 19),
(380, '1 Pair Natural Rubber Dish Gloves, Small\nJavex', '3071088', '[\'https://www.dollarama.com/images/3071088_0_S.jpg\', \'https://www.dollarama.com/images/3071088_1_S.jpg\', \'https://www.dollarama.com/images/3071088_2_S.jpg\', \'https://www.dollarama.com/images/3071088_3_S.jpg\']', '1 Pair Natural Rubber Dish Gloves, Small', 36, 1.5, '[\'1 pair per package\', \'Made with natural rubber\', \'Non-slip grip\', \'With ultra-soft cotton lining\', \'Reusable\', \'Recyclable packaging\']', '[\'3099023\', \'3071093\', \'3071119\', \'0302403\', \'3024817\']', '[{\'Brand\': \'Javex\'}, {\'Dollarama Number\': \'3071088\'}, {\'UPC\': \'667888339280\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'10.00 x 5.50 x 1.00 IN\'}, {\'Weight\': \'0.11 LB\'}, {\'Color\': \'Solid\'}, {\'\': \'\'}]', '95', 20),
(381, '1 Pair Natural Rubber Dish Gloves, Medium\nJavex', '3071093', '[\'https://www.dollarama.com/images/3071093_0_S.jpg\', \'https://www.dollarama.com/images/3071093_1_S.jpg\', \'https://www.dollarama.com/images/3071093_2_S.jpg\', \'https://www.dollarama.com/images/3071093_3_S.jpg\']', '1 Pair Natural Rubber Dish Gloves, Medium', 72, 1.5, '[\'1 pair per package\', \'Made with natural rubber\', \'Non-slip grip\', \'With ultra-soft cotton lining\', \'Reusable\', \'Recyclable packaging\']', '[\'3099023\', \'3071088\', \'3071119\', \'0302403\', \'3024817\']', '[{\'Brand\': \'Javex\'}, {\'Dollarama Number\': \'3071093\'}, {\'UPC\': \'667888339389\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'10.00 x 5.50 x 1.00 IN\'}, {\'Weight\': \'0.13 LB\'}, {\'Color\': \'Solid\'}, {\'\': \'\'}]', '96', 20),
(382, '1 Pair Natural Rubber Dish Gloves, Large\nJavex', '3071119', '[\'https://www.dollarama.com/images/3071119_0_S.jpg\', \'https://www.dollarama.com/images/3071119_1_S.jpg\', \'https://www.dollarama.com/images/3071119_2_S.jpg\', \'https://www.dollarama.com/images/3071119_3_S.jpg\']', '1 Pair Natural Rubber Dish Gloves, Large', 54, 1.5, '[\'1 pair per package\', \'Made with natural rubber\', \'Non-slip grip\', \'With ultra-soft cotton lining\', \'Reusable\', \'Recyclable packaging\']', '[\'3099023\', \'3071088\', \'3071093\', \'0302403\', \'3024817\']', '[{\'Brand\': \'Javex\'}, {\'Dollarama Number\': \'3071119\'}, {\'UPC\': \'667888339501\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 5.50 x 1.00 IN\'}, {\'Weight\': \'0.13 LB\'}, {\'Color\': \'Solid\'}, {\'\': \'\'}]', '97', 20),
(383, 'Disposable Poly Gloves 50PK\nAnsell', '0302403', '[\'https://www.dollarama.com/images/0302403_0_S.jpg\', \'https://www.dollarama.com/images/0302403_1_S.jpg\', \'https://www.dollarama.com/images/0302403_2_S.jpg\', \'https://www.dollarama.com/images/0302403_3_S.jpg\']', 'Disposable Poly Gloves 50PK', 60, 1.25, '[\'50 gloves per package\', \'Economical and disposable\', \'Great sensitivity and dexterity\', \'Fits either hand\', \'One size fits all\', \'\']', '[\'3099023\', \'3071088\', \'3071093\', \'3071119\', \'3024817\']', '[{\'Brand\': \'Ansell\'}, {\'Dollarama Number\': \'0302403\'}, {\'UPC\': \'70394049503, 60405840502, 60405840809\'}, {\'Pieces per Unit\': \'50\'}, {\'Packaging Dimensions (L x W x H)\': \'5.70 x 1.30 x 10.20 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '98', 20),
(384, 'Hypoallergenic Gloves\nARM & HAMMER', '3024817', '[\'https://www.dollarama.com/images/3024817_0_S.jpg\', \'https://www.dollarama.com/images/3024817_1_S.jpg\', \'https://www.dollarama.com/images/3024817_2_S.jpg\', \'https://www.dollarama.com/images/3024817_3_S.jpg\']', 'Hypoallergenic Gloves', 63, 3.5, '[\'1  pair per package\', \'Latex-Free\', \'Non-slip grip\', \'Reusable\', \'Soft plush lining\', \'\']', '[\'3099023\', \'3071088\', \'3071093\', \'3071119\', \'0302403\']', '[{\'Brand\': \'ARM & HAMMER\'}, {\'Dollarama Number\': \'3024817\'}, {\'UPC\': \'667888138432, 773392512689\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'6.20 x 1.20 x 9.80 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'Color\': \'Solid\'}, {\'\': \'\'}]', '99', 20),
(385, 'Mirage KN95 Protective Mask', '3097048', '[\'https://www.dollarama.com/images/3097048_0_S.jpg\', \'https://www.dollarama.com/images/3097048_1_S.jpg\', \'https://www.dollarama.com/images/3097048_2_S.jpg\', \'https://www.dollarama.com/images/3097048_3_S.jpg\']', 'Mirage KN95 Protective Mask', 100, 2, '[\'KN95 Mask\', \'White only\', \'A case contains a total of 50 masks\', \'\', \'\', \'\']', '[\'3065314\', \'3065295\', \'3042230\', \'3065293\', \'3091190\']', '[{\'Dollarama Number\': \'3097048\'}, {\'UPC\': \'59261151310\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'\': \'\'}]', '100', 51),
(386, 'Econo Paper Towels 2PK of 60\nSponge Towels', '3055228', '[\'https://www.dollarama.com/images/3055228_0_S.jpg\', \'https://www.dollarama.com/images/3055228_1_S.jpg\', \'https://www.dollarama.com/images/3055228_2_S.jpg\', \'https://www.dollarama.com/images/3055228_3_S.jpg\']', 'Econo Paper Towels 2PK of 60', 30, 2.5, '[\'2 rolls per package\', \'60 sheets per roll\', \'2-ply towels\', \'Quality paper\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3028399\']', '[{\'Brand\': \'Sponge Towels\'}, {\'Dollarama Number\': \'3055228\'}, {\'UPC\': \'61328562021\'}, {\'Pieces per Unit\': \'2\'}, {\'Packaging Dimensions (L x W x H)\': \'8.30 x 4.40 x 11.00 IN\'}, {\'Weight\': \'0.92 LB\'}, {\'\': \'\'}]', '101', 27),
(387, 'Roll Ultra Paper Towels 2PK\nSponge Towels', '3028399', '[\'https://www.dollarama.com/images/3028399_0_S.jpg\', \'https://www.dollarama.com/images/3028399_1_S.jpg\', \'https://www.dollarama.com/images/3028399_2_S.jpg\', \'https://www.dollarama.com/images/3028399_3_S.jpg\']', 'Roll Ultra Paper Towels 2PK', 48, 4, '[\'2 rolls per package\', \'Choose-a-size\', \'2-ply\', \'10.91\" x 5.39\" (27.7cm x 13.7cm)\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Sponge Towels\'}, {\'Dollarama Number\': \'3028399\'}, {\'UPC\': \'61328532000, 61328532208, 61328532215, 61328532239\'}, {\'Pieces per Unit\': \'2\'}, {\'Packaging Dimensions (L x W x H)\': \'9.40 x 5.50 x 11.10 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'Color\': \'Solid\'', '102', 27),
(388, '50 Disposable Shop Towels\nDURAMAX PRO', '3047230', '[\'https://www.dollarama.com/images/3047230_0_S.jpg\', \'https://www.dollarama.com/images/3047230_1_S.jpg\', \'https://www.dollarama.com/images/3047230_2_S.jpg\', \'https://www.dollarama.com/images/3047230_3_S.jpg\']', '50 Disposable Shop Towels', 30, 2.5, '[\'Soft\', \'Absorbent\', \'Disposable\', \'Heavy duty quality\', \'Multi-purpose\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'DURAMAX PRO\'}, {\'Dollarama Number\': \'3047230\'}, {\'UPC\': \'667888236114\'}, {\'Pieces per Unit\': \'50\'}, {\'Packaging Dimensions (L x W x H)\': \'10.00 x 3.00 x 3.00 IN\'}, {\'Weight\': \'0.49 LB\'}, {\'\': \'\'}]', '103', 27),
(389, 'Cleaning Wipes 6PK\nARM & HAMMER', '3027687', '[\'https://www.dollarama.com/images/3027687_0_S.jpg\', \'https://www.dollarama.com/images/3027687_1_S.jpg\', \'https://www.dollarama.com/images/3027687_2_S.jpg\', \'https://www.dollarama.com/images/3027687_3_S.jpg\']', 'Cleaning Wipes 6PK', 45, 1.25, '[\'6 wipes per package\', \'Super absorbent\', \'Reusable\', \'Machine washable\', \'21\" x 11\" (53.3cm x 27.9cm)\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'ARM & HAMMER\'}, {\'Dollarama Number\': \'3027687\'}, {\'UPC\': \'667888153800, 773392512726, 773392513020\'}, {\'Pieces per Unit\': \'6\'}, {\'Packaging Dimensions (L x W x H)\': \'7.50 x 1.20 x 12.50 IN\'}, {\'Weight\': \'0.14 LB\'}, {\'\': \'\'}]', '104', 27),
(390, 'Microfibre Dishcloths 4PK (Assorted Colours)', '3029206', '[\'https://www.dollarama.com/images/3029206_0_S.jpg\', \'https://www.dollarama.com/images/3029206_1_S.jpg\', \'https://www.dollarama.com/images/3029206_2_S.jpg\', \'https://www.dollarama.com/images/3029206_3_S.jpg\']', 'Microfibre Dishcloths 4PK (Assorted Colours)', 60, 2.5, '[\'4 cloths per package\', \'Ultra absorbent\', \'12\" x 12\" (30cm x 30cm)\', \'A case contains equally distributed Pink/Purple/Peach/Yellow, Red/Burnt/Orange/Yellow/Brown, and Blue/Grey/White/Light Blue dish cloths\', \'Assortment may vary from picture\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Dollarama Number\': \'3029206\'}, {\'UPC\': \'667888159581\'}, {\'Pieces per Unit\': \'4\'}, {\'Packaging Dimensions (L x W x H)\': \'4.60 x 2.00 x 13.10 IN\'}, {\'Weight\': \'0.26 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '105', 27),
(391, 'Microfibre Cloths 5PK (Assorted Colours)\nScrubber Cleanz', '3033854', '[\'https://www.dollarama.com/images/3033854_0_S.jpg\', \'https://www.dollarama.com/images/3033854_1_S.jpg\', \'https://www.dollarama.com/images/3033854_2_S.jpg\', \'https://www.dollarama.com/images/3033854_3_S.jpg\']', 'Microfibre Cloths 5PK (Assorted Colours)', 108, 3, '[\'5 pieces per unit\', \'15\" x 11\" (38cm x 28cm)\', \'Assorted colours\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'3033854\'}, {\'UPC\': \'667888180073\'}, {\'Pieces per Unit\': \'5\'}, {\'Packaging Dimensions (L x W x H)\': \'3.10 x 2.80 x 19.30 IN\'}, {\'Weight\': \'0.29 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '106', 27),
(392, 'Microfibre Wipe\nARM & HAMMER', '3024821', '[\'https://www.dollarama.com/images/3024821_0_S.jpg\', \'https://www.dollarama.com/images/3024821_1_S.jpg\', \'https://www.dollarama.com/images/3024821_2_S.jpg\', \'https://www.dollarama.com/images/3024821_3_S.jpg\']', 'Microfibre Wipe', 36, 1.5, '[\'Machine washable\', \'Grabs and locks dust and dirt\', \'Reusable\', \"13.5\'\' x 13.5\'\' (34cm x 34cm)\", \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'ARM & HAMMER\'}, {\'Dollarama Number\': \'3024821\'}, {\'UPC\': \'667888138456, 7733924128873\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'7.00 x 0.25 x 13.50 IN\'}, {\'Weight\': \'0.13 LB\'}, {\'\': \'\'}]', '107', 27),
(393, 'Black Outdoor Garbage Bag 14PK\nHERCULES', '3066768', '[\'https://www.dollarama.com/images/3066768_0_S.jpg\', \'https://www.dollarama.com/images/3066768_1_S.jpg\', \'https://www.dollarama.com/images/3066768_2_S.jpg\', \'https://www.dollarama.com/images/3066768_3_S.jpg\']', 'Black Outdoor Garbage Bag 14PK', 96, 4, '[\'14 bags per pack in a roll format\', \'Drawstring ties for a tight closure\', \'77L, 30\" x 33\" (76.2cm x 83.8cm)\', \'Extra strong, Mil thickness: 0.9\', \'Each case contains 24 packs\', \'\']', '[\'0302622\', \'3006495\', \'3028904\', \'3028902\', \'3054497\']', '[{\'Brand\': \'HERCULES\'}, {\'Dollarama Number\': \'3066768\'}, {\'UPC\': \'55966908068\'}, {\'Pieces per Unit\': \'14\'}, {\'Packaging Dimensions (L x W x H)\': \'8.75 x 3.25 x 3.25 IN\'}, {\'Weight\': \'1.07 LB\'}, {\'Color\': \'Solid\'}, {\'\': \'\'}]', '108', 23),
(394, '10PK Disposable Latex Gloves', '3099023', '[\'https://www.dollarama.com/images/3099023_0_S.jpg\', \'https://www.dollarama.com/images/3099023_1_S.jpg\', \'https://www.dollarama.com/images/3099023_2_S.jpg\', \'https://www.dollarama.com/images/3099023_3_S.jpg\']', '10PK Disposable Latex Gloves', 60, 2.5, '[\'Pack of 10 dispoable latex gloves\', \'Large, one size fits all\', \'100% natural latex\', \'A case contains 24 packs\', \'\', \'\']', '[\'3071088\', \'3071093\', \'3071119\', \'0302403\', \'3024817\']', '[{\'Dollarama Number\': \'3099023\'}, {\'UPC\': \'667888467594\'}, {\'Pieces per Unit\': \'10\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.20 LB\'}, {\'\': \'\'}]', '109', 20),
(395, 'Lysol Multi Surface cleaner - Lavender\nLysol', '3104070', '[\'https://www.dollarama.com/images/3104070_0_S.jpg\', \'https://www.dollarama.com/images/3104070_1_S.jpg\', \'https://www.dollarama.com/images/3104070_2_S.jpg\', \'https://www.dollarama.com/images/3104070_3_S.jpg\']', 'Lysol Multi Surface cleaner - Lavender', 27, 3, '[\'Lysol Power & Fresh multi-purpose cleaner\', \'Lavender breeze\', \'1.2L\', \'A case contains 9 bottles\', \'\', \'\']', '[\'3041909\', \'3024565\', \'3048447\', \'0302332\', \'3048444\']', '[{\'Brand\': \'Lysol\'}, {\'Dollarama Number\': \'3104070\'}, {\'UPC\': \'19200786317\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'2.90 LB\'}, {\'\': \'\'}]', '110', 19),
(396, 'Metal Broom Handle', '3100004', '[\'https://www.dollarama.com/images/3100004_0_S.jpg\', \'https://www.dollarama.com/images/3100004_1_S.jpg\', \'https://www.dollarama.com/images/3100004_2_S.jpg\', \'https://www.dollarama.com/images/3100004_3_S.jpg\']', 'Metal Broom Handle', 30, 1.25, '[\'Metal broom handle\', \'120cm, 220g\', \'12 black, 9 silver and 3 red\', \'A case contains 24 broom handles\', \'\', \'\']', '[\'0302263\', \'3048444\', \'3049030\', \'0301144\', \'0302702\']', '[{\'Dollarama Number\': \'3100004\'}, {\'UPC\': \'667888473946, 59212501942, 667888055777\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 48.00 IN\'}, {\'Weight\': \'0.48 LB\'}, {\'\': \'\'}]', '111', 25),
(397, 'Protective Face Shield with Glasses', '3097214', '[\'https://www.dollarama.com/images/3097214_0_S.jpg\', \'https://www.dollarama.com/images/3097214_1_S.jpg\', \'https://www.dollarama.com/images/3097214_2_S.jpg\', \'https://www.dollarama.com/images/3097214_3_S.jpg\']', 'Protective Face Shield with Glasses', 96, 4, '[\'Face shield with glasses\', \'A case contains transparent and blue shield\', \'A case contains 24 face shields\', \'\', \'\', \'\']', '[\'3065314\', \'3065295\', \'3042230\', \'3065293\', \'3091190\']', '[{\'Dollarama Number\': \'3097214\'}, {\'UPC\': \'667888459414\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'\': \'\'}]', '112', 51),
(398, 'Large Adult Cotton Protective Mask - Camo', '3097700', '[\'https://www.dollarama.com/images/3097700_0_S.jpg\', \'https://www.dollarama.com/images/3097700_1_S.jpg\', \'https://www.dollarama.com/images/3097700_2_S.jpg\', \'https://www.dollarama.com/images/3097700_3_S.jpg\']', 'Large Adult Cotton Protective Mask - Camo', 96, 4, '[\'100% Cotton 3- Ply mask for Adults\', \'Breathable and washable\', \'Adjustable ear loop\', \'Filter Pocket (Filter not included, sold separately)\', \'A case contains 24 masks of assorted colours\', \'\']', '[\'3065314\', \'3065295\', \'3042230\', \'3065293\', \'3091190\']', '[{\'Dollarama Number\': \'3097700\'}, {\'UPC\': \'667888461103\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'\': \'\'}]', '113', 51),
(399, 'Gain Dryer Sheets Original Scent - 34ct\nGain', '3067532', '[\'https://www.dollarama.com/images/3067532_0_S.jpg\', \'https://www.dollarama.com/images/3067532_1_S.jpg\', \'https://www.dollarama.com/images/3067532_2_S.jpg\', \'https://www.dollarama.com/images/3067532_3_S.jpg\']', 'Gain Dryer Sheets Original Scent - 34ct', 30, 2.5, '[\'34 sheets per box\', \'16.2cm x 22.8cm\', \'A case contains 12 boxes\', \'\', \'\', \'\']', '[\'3020156\', \'3044729\', \'3029184\', \'3032074\', \'3031889\']', '[{\'Brand\': \'Gain\'}, {\'Dollarama Number\': \'3067532\'}, {\'UPC\': \'37000823650\'}, {\'Pieces per Unit\': \'34\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '115', 24),
(400, 'Cascades 2 Ply 6 Rolls Ultra Soft\nCASCADES', '3073883', '[\'https://www.dollarama.com/images/3073883_0_S.jpg\', \'https://www.dollarama.com/images/3073883_1_S.jpg\', \'https://www.dollarama.com/images/3073883_2_S.jpg\', \'https://www.dollarama.com/images/3073883_3_S.jpg\']', 'Cascades 2 Ply 6 Rolls Ultra Soft', 32, 4, '[\'6 rolls per package\', \'253 sheets per roll\', \'Ultra soft\', \'A Case contains 8 packs of 6 rolls\', \'\', \'\']', '[\'3083316\', \'3023950\', \'3098360\', \'3098440\', \'3098361\']', '[{\'Brand\': \'CASCADES\'}, {\'Dollarama Number\': \'3073883\'}, {\'UPC\': \'771913776862, 771913777449\'}, {\'Pieces per Unit\': \'6\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'\': \'\'}]', '116', 50),
(401, '10PK N95 Mask\nShawmut Protex', '3105162', '[\'https://www.dollarama.com/images/3105162_0_S.jpg\', \'https://www.dollarama.com/images/3105162_1_S.jpg\', \'https://www.dollarama.com/images/3105162_2_S.jpg\', \'https://www.dollarama.com/images/3105162_3_S.jpg\']', '10PK N95 Mask', 375, 25, '[\'Pack of 10 Protex N95 masks\', \'Removes 95% of 0.3+ micron particles\', \'Made in USA, Latex free, PVC free\', \'NIOSH approved N95\', \'A case contains 15 packs of 10 masks\', \'\']', '[\'3097048\', \'3097214\', \'3097700\', \'3099369\', \'3097701\']', '[{\'Brand\': \'Shawmut Protex\'}, {\'Dollarama Number\': \'3105162\'}, {\'UPC\': \'850026398243\'}, {\'Pieces per Unit\': \'10\'}, {\'Packaging Dimensions (L x W x H)\': \'4.00 x 4.00 x 4.00 IN\'}, {\'Weight\': \'0.20 LB\'}, {\'\': \'\'}]', '117', 21),
(402, 'Large Adult Cotton Potective Mask - Assorted Designs', '3097701', '[\'https://www.dollarama.com/images/3097701_0_S.jpg\', \'https://www.dollarama.com/images/3097701_1_S.jpg\', \'https://www.dollarama.com/images/3097701_2_S.jpg\', \'https://www.dollarama.com/images/3097701_3_S.jpg\']', 'Large Adult Cotton Potective Mask - Assorted Designs', 72, 3, '[\'100% Cotton 3- Ply mask for Adults\', \'Breathable and washable\', \'Adjustable ear loop\', \'Filter pocket (Filter not included, sold separately)\', \'A case contains 24 masks\', \'A case comes in assorted designs\']', '[\'3065314\', \'3065295\', \'3042230\', \'3065293\', \'3091190\']', '[{\'Dollarama Number\': \'3097701\'}, {\'UPC\': \'667888461110\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'\': \'\'}]', '118', 51),
(403, '5PK PM2.5 Mask Filters', '3097735', '[\'https://www.dollarama.com/images/3097735_0_S.jpg\', \'https://www.dollarama.com/images/3097735_1_S.jpg\', \'https://www.dollarama.com/images/3097735_2_S.jpg\', \'https://www.dollarama.com/images/3097735_3_S.jpg\']', '5PK PM2.5 Mask Filters', 60, 2.5, '[\'5PK of mask filters\', \'Lab tested for particle matter 2.5 µm\', \'A case contains 24 bags of 5 masks each\', \'\', \'\', \'\']', '[\'3065314\', \'3065295\', \'3042230\', \'3065293\', \'3091190\']', '[{\'Dollarama Number\': \'3097735\'}, {\'UPC\': \'667888461288\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'\': \'\'}]', '119', 51),
(404, 'Disposable Kids Rainbow Protective Masks', '3097211', '[\'https://www.dollarama.com/images/3097211_0_S.jpg\', \'https://www.dollarama.com/images/3097211_1_S.jpg\', \'https://www.dollarama.com/images/3097211_2_S.jpg\', \'https://www.dollarama.com/images/3097211_3_S.jpg\']', 'Disposable Kids Rainbow Protective Masks', 12, 1, '[\'Disposable kids Face Masks\', \'3 Ply mask\', \'A case contains 12 rainbow kids masks\', \'\', \'\', \'\']', '[\'3083316\', \'3041909\', \'3024565\', \'3099023\', \'3048447\']', '[{\'Dollarama Number\': \'3097211\'}, {\'UPC\': \'667888459391\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Volume\': \'1.00 FT3\'}, {\'Weight\': \'0.40 LB\'}, {\'\': \'\'}]', '120', 60),
(405, 'Cotton Protective Face Mask - Adult', '3099671', '[\'https://www.dollarama.com/images/3099671_0_S.jpg\', \'https://www.dollarama.com/images/3099671_1_S.jpg\', \'https://www.dollarama.com/images/3099671_2_S.jpg\', \'https://www.dollarama.com/images/3099671_3_S.jpg\']', 'Cotton Protective Face Mask - Adult', 96, 4, '[\'100% Cotton Masks for Adults\', \'Breathable and washable\', \'A case contains solid colour masks only\', \'A case contains 24 masks for adults\', \'\', \'\']', '[\'3083316\', \'3041909\', \'3024565\', \'3099023\', \'3048447\']', '[]', '121', 60),
(406, 'Scented Garbage Bags 10PK (Assorted Scents and Colours)\nKitchen Scents', '0302622', '[\'https://www.dollarama.com/images/0302622_0_S.jpg\', \'https://www.dollarama.com/images/0302622_1_S.jpg\', \'https://www.dollarama.com/images/0302622_2_S.jpg\', \'https://www.dollarama.com/images/0302622_3_S.jpg\']', 'Scented Garbage Bags 10PK (Assorted Scents and Colours)', 90, 1.25, '[\'10 bags per package\', \'Drawstring bag\', \'20\" x 20\" (50cm x 50cm)\', \'A case contains Ocean Blue, Lavender, Orange, Vanilla, Green Apple and Rose scented garbage bags rolls\', \'Assortment may vary from picture\', \'\']', '[\'3066768\', \'3006495\', \'3028904\', \'3028902\', \'3054497\']', '[{\'Brand\': \'Kitchen Scents\'}, {\'Dollarama Number\': \'0302622\'}, {\'UPC\': \'667888013104\'}, {\'Pieces per Unit\': \'10\'}, {\'Packaging Dimensions (L x W x H)\': \'6.10 x 1.80 x 1.80 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '122', 23),
(407, 'Scented Garbage Bags 25PK (Assorted Scents and Colours)\nTUFFGUY', '3006495', '[\'https://www.dollarama.com/images/3006495_0_S.jpg\', \'https://www.dollarama.com/images/3006495_1_S.jpg\', \'https://www.dollarama.com/images/3006495_2_S.jpg\', \'https://www.dollarama.com/images/3006495_3_S.jpg\']', 'Scented Garbage Bags 25PK (Assorted Scents and Colours)', 60, 1.25, '[\'25 bags per package\', \'Ideal for kitchen, diaper pail, bathroom and office\', \'20\" x 22\" (51cm x 56cm)\', \'Assorted scents and colours\', \'Assortment may vary from picture\', \'\']', '[\'3066768\', \'0302622\', \'3028904\', \'3028902\', \'3054497\']', '[{\'Brand\': \'TUFFGUY\'}, {\'Dollarama Number\': \'3006495\'}, {\'UPC\': \'Multiples\'}, {\'Pieces per Unit\': \'25\'}, {\'Packaging Dimensions (L x W x H)\': \'3.70 x 1.70 x 9.10 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '123', 23),
(408, 'Kitchen Garbage Bags 20PK\nHERCULES', '3028904', '[\'https://www.dollarama.com/images/3028904_0_S.jpg\', \'https://www.dollarama.com/images/3028904_1_S.jpg\', \'https://www.dollarama.com/images/3028904_2_S.jpg\', \'https://www.dollarama.com/images/3028904_3_S.jpg\']', 'Kitchen Garbage Bags 20PK', 60, 1.25, '[\'20 bags per package\', \'Convenient flap handles for a tight closure\', \'20\" x 21\" (50.8cm x 53.3cm)\', \'Made in Canada\', \'\', \'\']', '[\'3066768\', \'0302622\', \'3006495\', \'3028902\', \'3054497\']', '[{\'Brand\': \'HERCULES\'}, {\'Dollarama Number\': \'3028904\'}, {\'UPC\': \'55966902998\'}, {\'Pieces per Unit\': \'20\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 2.40 x 2.40 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'Color\': \'White only\'}, {\'\': \'\'}]', '124', 23);
INSERT INTO `core_dolloaritem` (`id`, `display_name`, `product_id`, `product_images`, `product_full_name`, `product_case_price`, `product_unit_price`, `product_speciation`, `related_product_ID`, `product_specificaions`, `slug`, `category_id`) VALUES
(409, 'Black Outdoor Garbage Bags 10PK\nHERCULES', '3028902', '[\'https://www.dollarama.com/images/3028902_0_S.jpg\', \'https://www.dollarama.com/images/3028902_1_S.jpg\', \'https://www.dollarama.com/images/3028902_2_S.jpg\', \'https://www.dollarama.com/images/3028902_3_S.jpg\']', 'Black Outdoor Garbage Bags 10PK', 60, 1.25, '[\'10 bags per package\', \'Convenient flap handles for a tight closure\', \'Individually folded\', \'26\" x 32.5\" (66cm x 82.6cm)\', \'\', \'\']', '[\'3066768\', \'0302622\', \'3006495\', \'3028904\', \'3054497\']', '[{\'Brand\': \'HERCULES\'}, {\'Dollarama Number\': \'3028902\'}, {\'UPC\': \'55966903001\'}, {\'Pieces per Unit\': \'10\'}, {\'Packaging Dimensions (L x W x H)\': \'8.80 x 2.50 x 2.50 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '125', 23),
(410, 'Clear Blue Recycling Kitchen Bags 10PK\nHERCULES', '3054497', '[\'https://www.dollarama.com/images/3054497_0_S.jpg\', \'https://www.dollarama.com/images/3054497_1_S.jpg\', \'https://www.dollarama.com/images/3054497_2_S.jpg\', \'https://www.dollarama.com/images/3054497_3_S.jpg\']', 'Clear Blue Recycling Kitchen Bags 10PK', 60, 2.5, '[\'10 bags per package\', \'Drawstring bag\', \'Fits containers of 42.5L\', \'24\" x 28\" (61cm x 71.1cm)\', \'Made in Canada\', \'\']', '[\'3066768\', \'0302622\', \'3006495\', \'3028904\', \'3028902\']', '[{\'Brand\': \'HERCULES\'}, {\'Dollarama Number\': \'3054497\'}, {\'UPC\': \'55966905609\'}, {\'Pieces per Unit\': \'10\'}, {\'Packaging Dimensions (L x W x H)\': \'7.70 x 2.10 x 4.60 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '126', 23),
(411, 'Wet Disposable Cloths 15PK\nSTATIC MATIC', '0302263', '[\'https://www.dollarama.com/images/0302263_0_S.jpg\', \'https://www.dollarama.com/images/0302263_1_S.jpg\', \'https://www.dollarama.com/images/0302263_2_S.jpg\', \'https://www.dollarama.com/images/0302263_3_S.jpg\']', 'Wet Disposable Cloths 15PK', 30, 1.25, '[\'15 cloths per package\', \'Presoaked and no rinsing\', \'Fresh lemon scent\', \'Patented microfibre\', \'Can be used with Exstatic, Swiffer and Pledge Grab-it sweepers\', \'8.6\" x 11.4\" (22cm x 29cm)\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'STATIC MATIC\'}, {\'Dollarama Number\': \'0302263\'}, {\'UPC\': \'667888012381\'}, {\'Pieces per Unit\': \'15\'}, {\'Packaging Dimensions (L x W x H)\': \'5.50 x 0.80 x 13.60 IN\'}, {\'Weight\': \'0.39 LB\'}, {\'\': \'\'}]', '127', 27),
(412, 'Microfibre Dish Drying Mat (Assorted Colours)\nD MAISON', '3025629', '[\'https://www.dollarama.com/images/3025629_0_S.jpg\', \'https://www.dollarama.com/images/3025629_1_S.jpg\', \'https://www.dollarama.com/images/3025629_2_S.jpg\', \'https://www.dollarama.com/images/3025629_3_S.jpg\']', 'Microfibre Dish Drying Mat (Assorted Colours)', 72, 3, '[\'Super absorbent\', \'Fast drying\', \'Durable\', \'Help protect your countertop\', \'A case contains equally distributed Taupe, Blue, Grey and Sage drying mats\', \'Assortment may vary from picture\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'D MAISON\'}, {\'Dollarama Number\': \'3025629\'}, {\'UPC\': \'667888144006\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'6.50 x 1.00 x 17.00 IN\'}, {\'Weight\': \'0.27 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '128', 27),
(413, 'Scrubbing Sponges 10PK\nScrubber Cleanz', '3008036', '[\'https://www.dollarama.com/images/3008036_0_S.jpg\', \'https://www.dollarama.com/images/3008036_1_S.jpg\', \'https://www.dollarama.com/images/3008036_2_S.jpg\', \'https://www.dollarama.com/images/3008036_3_S.jpg\']', 'Scrubbing Sponges 10PK', 45, 1.25, '[\'10 sponges per package\', \'Super absorbent\', \'Double sided sponge\', \'Sponge on one side and scour on the other\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'3008036\'}, {\'UPC\': \'63920019347, 667888128846\'}, {\'Pieces per Unit\': \'10\'}, {\'Packaging Dimensions (L x W x H)\': \'3.50 x 2.20 x 11.40 IN\'}, {\'Weight\': \'0.18 LB\'}, {\'\': \'\'}]', '129', 27),
(414, 'Scrub Sponges 3PK\nScrubber Cleanz', '3037500', '[\'https://www.dollarama.com/images/3037500_0_S.jpg\', \'https://www.dollarama.com/images/3037500_1_S.jpg\', \'https://www.dollarama.com/images/3037500_2_S.jpg\', \'https://www.dollarama.com/images/3037500_3_S.jpg\']', 'Scrub Sponges 3PK', 45, 1.25, '[\'3 sponges per package\', \'Double sided sponges\', \'Gently scrubs surfaces\', \'Heavy duty\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'3037500\'}, {\'UPC\': \'667888195909\'}, {\'Pieces per Unit\': \'3\'}, {\'Packaging Dimensions (L x W x H)\': \'4.10 x 3.30 x 8.60 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '130', 27),
(415, 'Non-Scratch Cellulose Scrub Sponges 2PK\nScrubber Cleanz', '3018352', '[\'https://www.dollarama.com/images/3018352_0_S.jpg\', \'https://www.dollarama.com/images/3018352_1_S.jpg\', \'https://www.dollarama.com/images/3018352_2_S.jpg\', \'https://www.dollarama.com/images/3018352_3_S.jpg\']', 'Non-Scratch Cellulose Scrub Sponges 2PK', 45, 1.25, '[\'2 sponges per package\', \'Double sided multipurpose sponge\', \'Non-scratch\', \'\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'3018352\'}, {\'UPC\': \'667888109227\'}, {\'Pieces per Unit\': \'2\'}, {\'Packaging Dimensions (L x W x H)\': \'4.60 x 1.70 x 7.90 IN\'}, {\'Weight\': \'0.11 LB\'}, {\'\': \'\'}]', '131', 27),
(416, 'Rainbow Sponges\nScrubber Cleanz', '3014722', '[\'https://www.dollarama.com/images/3014722_0_S.jpg\', \'https://www.dollarama.com/images/3014722_1_S.jpg\', \'https://www.dollarama.com/images/3014722_2_S.jpg\', \'https://www.dollarama.com/images/3014722_3_S.jpg\']', 'Rainbow Sponges', 30, 1.25, '[\'5 sponges per package\', \'Super absorbent\', \'For your light clean up jobs\', \'Assorted colours\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'3014722\'}, {\'UPC\': \'63920019231, 667888128839\'}, {\'Pieces per Unit\': \'6\'}, {\'Packaging Dimensions (L x W x H)\': \'8.00 x 4.50 x 3.00 IN\'}, {\'Weight\': \'0.07 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid', '132', 27),
(417, 'Metallic Scouring Pads 3PK\nScrubber Cleanz', '0300394', '[\'https://www.dollarama.com/images/0300394_0_S.jpg\', \'https://www.dollarama.com/images/0300394_1_S.jpg\', \'https://www.dollarama.com/images/0300394_2_S.jpg\', \'https://www.dollarama.com/images/0300394_3_S.jpg\']', 'Metallic Scouring Pads 3PK', 36, 1, '[\'3 sponges per package\', \'Stainless steel sponges\', \'\', \'\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'0300394\'}, {\'UPC\': \'667888011520\'}, {\'Pieces per Unit\': \'3\'}, {\'Packaging Dimensions (L x W x H)\': \'4.30 x 2.10 x 9.70 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '133', 27),
(418, 'Scouring Pads 4PK\nScrubber Cleanz', '3046641', '[\'https://www.dollarama.com/images/3046641_0_S.jpg\', \'https://www.dollarama.com/images/3046641_1_S.jpg\', \'https://www.dollarama.com/images/3046641_2_S.jpg\', \'https://www.dollarama.com/images/3046641_3_S.jpg\']', 'Scouring Pads 4PK', 30, 1.25, '[\'4 pads per package\', \'Made from metal\', \'Perfect for washing stubborn stains\', \'\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'3046641\'}, {\'UPC\': \'667888233618, 6956456465648\'}, {\'Pieces per Unit\': \'4\'}, {\'Packaging Dimensions (L x W x H)\': \'3.60 x 3.10 x 6.40 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'', '134', 27),
(419, 'Scouring Pads 3PK (Assorted Colours)\nScrubber Cleanz', '0302132', '[\'https://www.dollarama.com/images/0302132_0_S.jpg\', \'https://www.dollarama.com/images/0302132_1_S.jpg\', \'https://www.dollarama.com/images/0302132_2_S.jpg\', \'https://www.dollarama.com/images/0302132_3_S.jpg\']', 'Scouring Pads 3PK (Assorted Colours)', 36, 1, '[\'3 pads per package\', \'For your toughest clean up jobs\', \'A case contains Rose, Green and Blue pads, equally distributed\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'0302132\'}, {\'UPC\': \'667888058242\'}, {\'Pieces per Unit\': \'3\'}, {\'Packaging Dimensions (L x W x H)\': \'5.00 x 2.10 x 5.20 IN\'}, {\'Weight\': \'0.16 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '135', 27),
(420, 'Metallic Scouring Pads 3PK (Assorted Colours)\nScrubber Cleanz', '0301633', '[\'https://www.dollarama.com/images/0301633_0_S.jpg\', \'https://www.dollarama.com/images/0301633_1_S.jpg\', \'https://www.dollarama.com/images/0301633_2_S.jpg\', \'https://www.dollarama.com/images/0301633_3_S.jpg\']', 'Metallic Scouring Pads 3PK (Assorted Colours)', 45, 1.25, '[\'3 pads per package\', \'For your toughest clean up jobs\', \'A case contains equally distributed Gold and Silver mettalic sponge scrubbers\', \'Assortment may vary form picture\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'0301633\'}, {\'UPC\': \'667888085101, 60405030132\'}, {\'Pieces per Unit\': \'3\'}, {\'Packaging Dimensions (L x W x H)\': \'6.00 x 0.90 x 13.90 IN\'}, {\'Weight\': \'0.08 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '136', 27),
(421, 'Scouring Pads 8PK\nScrubber Cleanz', '3020407', '[\'https://www.dollarama.com/images/3020407_0_S.jpg\', \'https://www.dollarama.com/images/3020407_1_S.jpg\', \'https://www.dollarama.com/images/3020407_2_S.jpg\', \'https://www.dollarama.com/images/3020407_3_S.jpg\']', 'Scouring Pads 8PK', 30, 1.25, '[\'8 pads per package\', \'For your toughest clean up jobs\', \'\', \'\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'3020407\'}, {\'UPC\': \'667888118519\'}, {\'Pieces per Unit\': \'8\'}, {\'Packaging Dimensions (L x W x H)\': \'7.30 x 1.40 x 10.60 IN\'}, {\'Weight\': \'0.20 LB\'}, {\'\': \'\'}]', '137', 27),
(422, 'S.O.S Steel Wool Pads 10PK\nCLOROX', '3020216', '[\'https://www.dollarama.com/images/3020216_0_S.jpg\', \'https://www.dollarama.com/images/3020216_1_S.jpg\', \'https://www.dollarama.com/images/3020216_2_S.jpg\', \'https://www.dollarama.com/images/3020216_3_S.jpg\']', 'S.O.S Steel Wool Pads 10PK', 7.5, 1.25, '[\'10 pads per package\', \'Reusable\', \'Soap filled\', \'Removes baked on food\', \'Cuts through grease\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'CLOROX\'}, {\'Dollarama Number\': \'3020216\'}, {\'UPC\': \'67029931012, 16500980322\'}, {\'Pieces per Unit\': \'10\'}, {\'Packaging Dimensions (L x W x H)\': \'6.50 x 3.10 x 8.90 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '138', 27),
(423, 'Double Easy Erasers 2PK\nScrubber Cleanz', '0302601', '[\'https://www.dollarama.com/images/0302601_0_S.jpg\', \'https://www.dollarama.com/images/0302601_1_S.jpg\', \'https://www.dollarama.com/images/0302601_2_S.jpg\', \'https://www.dollarama.com/images/0302601_3_S.jpg\']', 'Double Easy Erasers 2PK', 45, 1.25, '[\'2 sponges per package\', \'Disposable cleaning pads\', \'Cleans without chemical cleaners\', \'\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'0302601\'}, {\'UPC\': \'667888071029\'}, {\'Pieces per Unit\': \'2\'}, {\'Packaging Dimensions (L x W x H)\': \'6.00 x 1.20 x 6.00 IN\'}, {\'Weight\': \'0.09 LB\'}, {\'\': \'\'}]', '139', 27),
(424, 'Magic Eraser\nMr.Clean', '3021178', '[\'https://www.dollarama.com/images/3021178_0_S.jpg\', \'https://www.dollarama.com/images/3021178_1_S.jpg\', \'https://www.dollarama.com/images/3021178_2_S.jpg\', \'https://www.dollarama.com/images/3021178_3_S.jpg\']', 'Magic Eraser', 30, 1.25, '[\'Household cleaning pad\', \'Contains no phosphates\', \'A powerful clean with water alone\', \'Use on doors, window frames, light switches and more\', \'\', \'\']', '[\'3024565\', \'3073883\', \'3097025\', \'3097027\', \'3055228\']', '[{\'Brand\': \'Mr.Clean\'}, {\'Dollarama Number\': \'3021178\'}, {\'UPC\': \'37000006619\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.80 x 1.30 x 5.10 IN\'}, {\'Weight\': \'0.05 LB\'}, {\'\': \'\'}]', '140', 27),
(425, 'Cream Cleanser\nVim', '0302332', '[\'https://www.dollarama.com/images/0302332_0_S.jpg\', \'https://www.dollarama.com/images/0302332_1_S.jpg\', \'https://www.dollarama.com/images/0302332_2_S.jpg\', \'https://www.dollarama.com/images/0302332_3_S.jpg\']', 'Cream Cleanser', 24, 1.5, '[\'Lemon scent\', \'Cleans quickly and effectively\', \'Contains a gentle abrasive\', \'250mL\', \'\', \'\']', '[\'3041909\', \'3024565\', \'3048447\', \'3104070\', \'3048444\']', '[{\'Brand\': \'Vim\'}, {\'Dollarama Number\': \'0302332\'}, {\'UPC\': \'67238212285, 67238212223\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.50 x 1.40 x 8.30 IN\'}, {\'Volume\': \'250.00 ML\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '141', 19),
(426, 'Fabric Refresher\nJazzee', '3010305', '[\'https://www.dollarama.com/images/3010305_0_S.jpg\', \'https://www.dollarama.com/images/3010305_1_S.jpg\', \'https://www.dollarama.com/images/3010305_2_S.jpg\', \'https://www.dollarama.com/images/3010305_3_S.jpg\']', 'Fabric Refresher', 48, 2, '[\'Eliminates odours and refreshes fabrics\', \'Fresh linen scent\', \'500mL\', \'\', \'\', \'\']', '[\'3041909\', \'3024565\', \'3048447\', \'3104070\', \'0302332\']', '[{\'Brand\': \'Jazzee\'}, {\'Dollarama Number\': \'3010305\'}, {\'UPC\': \'667888058594\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.50 x 2.00 x 9.50 IN\'}, {\'Volume\': \'500.00 ML\'}, {\'Weight\': \'1.23 LB\'}, {\'\': \'\'}]', '142', 19),
(427, 'Tub and Tile Cleaner\nComet', '3019719', '[\'https://www.dollarama.com/images/3019719_0_S.jpg\', \'https://www.dollarama.com/images/3019719_1_S.jpg\', \'https://www.dollarama.com/images/3019719_2_S.jpg\', \'https://www.dollarama.com/images/3019719_3_S.jpg\']', 'Tub and Tile Cleaner', 24, 2, '[\'Removes ugly stains from tubs, shower doors, tiles, sinks and more\', \'709mL\', \'\', \'\', \'\', \'\']', '[\'3041909\', \'3024565\', \'3048447\', \'3104070\', \'0302332\']', '[{\'Brand\': \'Comet\'}, {\'Dollarama Number\': \'3019719\'}, {\'UPC\': \'678112102051, 810003980182\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'4.25 x 2.20 x 10.50 IN\'}, {\'Volume\': \'709.00 ML\'}, {\'Weight\': \'2.00 LB\'}, {\'\': \'\'}]', '143', 19),
(428, 'Scouring Powder with Bleach\nComet', '0302051', '[\'https://www.dollarama.com/images/0302051_0_S.jpg\', \'https://www.dollarama.com/images/0302051_1_S.jpg\', \'https://www.dollarama.com/images/0302051_2_S.jpg\', \'https://www.dollarama.com/images/0302051_3_S.jpg\']', 'Scouring Powder with Bleach', 30, 1.25, '[\'Phosphate free\', \'Scratch free\', \'Cleans tough staines\', \'480g (17oz)\', \'\', \'\']', '[\'3041909\', \'3024565\', \'3048447\', \'3104070\', \'0302332\']', '[{\'Brand\': \'Comet\'}, {\'Dollarama Number\': \'0302051\'}, {\'UPC\': \'678112451289, 810003980250\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.80 x 2.80 x 7.75 IN\'}, {\'Weight\': \'1.10 LB\'}, {\'\': \'\'}]', '144', 19),
(429, 'Carpet Odour Eliminator\nARM & HAMMER', '3018158', '[\'https://www.dollarama.com/images/3018158_0_S.jpg\', \'https://www.dollarama.com/images/3018158_1_S.jpg\', \'https://www.dollarama.com/images/3018158_2_S.jpg\', \'https://www.dollarama.com/images/3018158_3_S.jpg\']', 'Carpet Odour Eliminator', 36, 3, '[\'Extra strength to neutralize even the toughest odours such as mould, mildew and smoke\', \'With vacuum booster to loosen and help lift up to 25% more dirt\', \'700g (24.7oz)\', \'\', \'\', \'\']', '[\'3041909\', \'3024565\', \'3048447\', \'3104070\', \'0302332\']', '[{\'Brand\': \'ARM & HAMMER\'}, {\'Dollarama Number\': \'3018158\'}, {\'UPC\': \'65333005238\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.60 x 2.40 x 8.60 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '145', 19),
(430, 'Dishwashing Liquid, Green apple scent\nOld Dutch', '3052773', '[\'https://www.dollarama.com/images/3052773_0_S.jpg\', \'https://www.dollarama.com/images/3052773_1_S.jpg\', \'https://www.dollarama.com/images/3052773_2_S.jpg\', \'https://www.dollarama.com/images/3052773_3_S.jpg\']', 'Dishwashing Liquid, Green apple scent', 18, 1.5, '[\'Biodegradable\', \'Concentrated\', \'Cuts through grease\', \'Non-irritating product tested on dermatological control\', \'Green apple scent\', \'740mL\']', '[]', '[{\'Brand\': \'Old Dutch\'}, {\'Dollarama Number\': \'3052773\'}, {\'UPC\': \'63474390213, 69045390019\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.90 x 2.40 x 9.90 IN\'}, {\'Volume\': \'740.00 ML\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '146', 22),
(431, 'Toilet Bowl Gel Cleaner\nLysol', '3017174', '[\'https://www.dollarama.com/images/3017174_0_S.jpg\', \'https://www.dollarama.com/images/3017174_1_S.jpg\', \'https://www.dollarama.com/images/3017174_2_S.jpg\', \'https://www.dollarama.com/images/3017174_3_S.jpg\']', 'Toilet Bowl Gel Cleaner', 30, 2.5, '[\'10x cleaning power\', \'Kills 99.9% of bacteria\', \'Disinfectant\', \'Removes tough hard water stains and mineral deposits\', \'473mL\', \'\']', '[\'3052859\', \'3021480\', \'3056401\', \'0301747\', \'3040741\']', '[{\'Brand\': \'Lysol\'}, {\'Dollarama Number\': \'3017174\'}, {\'UPC\': \'59631854438\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 4.00 x 2.00 IN\'}, {\'Volume\': \'473.00 ML\'}, {\'Weight\': \'1.18 LB\'}, {\'\': \'\'}]', '147', 26),
(432, 'Toilet Bowl Cleaner - Deep Reach\nLysol', '3052859', '[\'https://www.dollarama.com/images/3052859_0_S.jpg\', \'https://www.dollarama.com/images/3052859_1_S.jpg\', \'https://www.dollarama.com/images/3052859_2_S.jpg\', \'https://www.dollarama.com/images/3052859_3_S.jpg\']', 'Toilet Bowl Cleaner - Deep Reach', 30, 2.5, '[\'Cleans beyond the bowl\', \'Kills 99.9% of bacteria\', \'473mL\', \'\', \'\', \'\']', '[\'3017174\', \'3021480\', \'3056401\', \'0301747\', \'3040741\']', '[{\'Brand\': \'Lysol\'}, {\'Dollarama Number\': \'3052859\'}, {\'UPC\': \'59631951847\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.50 x 2.00 x 9.50 IN\'}, {\'Volume\': \'473.00 ML\'}, {\'Weight\': \'1.50 LB\'}, {\'\': \'\'}]', '148', 26),
(433, 'Toilet Bowl Cleaner 2PK\nTerrifik', '3021480', '[\'https://www.dollarama.com/images/3021480_0_S.jpg\', \'https://www.dollarama.com/images/3021480_1_S.jpg\', \'https://www.dollarama.com/images/3021480_2_S.jpg\', \'https://www.dollarama.com/images/3021480_3_S.jpg\']', 'Toilet Bowl Cleaner 2PK', 36, 1, '[\'2 pieces per package\', \'Cleans with every flush with powerful crystals\', \'Neutralizes odours\', \'Fights hard water stains\', \'\', \'\']', '[\'3017174\', \'3052859\', \'3056401\', \'0301747\', \'3040741\']', '[{\'Brand\': \'Terrifik\'}, {\'Dollarama Number\': \'3021480\'}, {\'UPC\': \'667888123728\'}, {\'Pieces per Unit\': \'2\'}, {\'Packaging Dimensions (L x W x H)\': \'5.70 x 0.90 x 5.10 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '149', 26),
(434, 'Bleach Tabs Bowl Cleaner 2PK\nTerrifik', '3056401', '[\'https://www.dollarama.com/images/3056401_0_S.jpg\', \'https://www.dollarama.com/images/3056401_1_S.jpg\', \'https://www.dollarama.com/images/3056401_2_S.jpg\', \'https://www.dollarama.com/images/3056401_3_S.jpg\']', 'Bleach Tabs Bowl Cleaner 2PK', 30, 1.25, '[\'Long lasting\', \'Bleaches with every flush\', \'Fights odours and stains around the clock\', \'2 x 50g (2 x 1.75oz)\', \'\', \'\']', '[\'3017174\', \'3052859\', \'3021480\', \'0301747\', \'3040741\']', '[{\'Brand\': \'Terrifik\'}, {\'Dollarama Number\': \'3056401\'}, {\'UPC\': \'667888274369\'}, {\'Pieces per Unit\': \'2\'}, {\'Packaging Dimensions (L x W x H)\': \'5.00 x 1.00 x 6.50 IN\'}, {\'Weight\': \'0.27 LB\'}, {\'\': \'\'}]', '150', 26),
(435, 'Toilet Brush (Assorted Colours)\nThe Bath Collection', '0301747', '[\'https://www.dollarama.com/images/0301747_0_S.jpg\', \'https://www.dollarama.com/images/0301747_1_S.jpg\', \'https://www.dollarama.com/images/0301747_2_S.jpg\', \'https://www.dollarama.com/images/0301747_3_S.jpg\']', 'Toilet Brush (Assorted Colours)', 45, 1.25, '[\'With plastic holder\', \'A case contains  White, Clear Frost, Frost Green and Frost Blue toilet brushes\', \'Assortment may vary from picture\', \'\', \'\', \'\']', '[\'3017174\', \'3052859\', \'3021480\', \'3056401\', \'3040741\']', '[{\'Brand\': \'The Bath Collection\'}, {\'Dollarama Number\': \'0301747\'}, {\'UPC\': \'667888011810\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'4.50 x 4.50 x 13.80 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '151', 26),
(436, 'Toilet Brush', '3040741', '[\'https://www.dollarama.com/images/3040741_0_S.jpg\', \'https://www.dollarama.com/images/3040741_1_S.jpg\', \'https://www.dollarama.com/images/3040741_2_S.jpg\', \'https://www.dollarama.com/images/3040741_3_S.jpg\']', 'Toilet Brush', 48, 4, '[\'Stainless steel handle and holder\', \'Ventilation holes in holder\', \'\', \'\', \'\', \'\']', '[\'3017174\', \'3052859\', \'3021480\', \'3056401\', \'0301747\']', '[{\'Dollarama Number\': \'3040741\'}, {\'UPC\': \'667888208296\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.80 x 3.80 x 15.40 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '152', 26),
(437, 'Toilet Bowl Brush with Rim Scrubber (Assorted Colours)', '3055311', '[\'https://www.dollarama.com/images/3055311_0_S.jpg\', \'https://www.dollarama.com/images/3055311_1_S.jpg\', \'https://www.dollarama.com/images/3055311_2_S.jpg\', \'https://www.dollarama.com/images/3055311_3_S.jpg\']', 'Toilet Bowl Brush with Rim Scrubber (Assorted Colours)', 48, 4, '[\'With rim scrubber\', \'A case contains equally distributed blue and black toilet bowl brushes\', \'Assortment may vary from picture\', \'\', \'\', \'\']', '[\'3017174\', \'3052859\', \'3021480\', \'3056401\', \'0301747\']', '[{\'Dollarama Number\': \'3055311\'}, {\'UPC\': \'667888269297\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'6.00 x 4.50 x 15.00 IN\'}, {\'Weight\': \'0.65 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '153', 26),
(438, 'Yacht Mop Head\nScrubber Cleanz', '0301144', '[\'https://www.dollarama.com/images/0301144_0_S.jpg\', \'https://www.dollarama.com/images/0301144_1_S.jpg\', \'https://www.dollarama.com/images/0301144_2_S.jpg\', \'https://www.dollarama.com/images/0301144_3_S.jpg\']', 'Yacht Mop Head', 96, 2, '[\'Durable and absorbent\', \'100% cotton mop\', \'Handmade\', \'\', \'\', \'\']', '[\'3100004\', \'0302263\', \'3048444\', \'3049030\', \'0302702\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'0301144\'}, {\'UPC\': \'61747130085\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'6.20 x 1.90 x 14.60 IN\'}, {\'Weight\': \'0.34 LB\'}, {\'\': \'\'}]', '154', 25),
(439, 'Smart Mop Synthetic Refill\nScrubber Cleanz', '0302702', '[\'https://www.dollarama.com/images/0302702_0_S.jpg\', \'https://www.dollarama.com/images/0302702_1_S.jpg\', \'https://www.dollarama.com/images/0302702_2_S.jpg\', \'https://www.dollarama.com/images/0302702_3_S.jpg\']', 'Smart Mop Synthetic Refill', 72, 2, '[\'Synthetic mop head\', \'Lint free\', \'Absorbent\', \'Ultra strong\', \'\', \'\']', '[\'3100004\', \'0302263\', \'3048444\', \'3049030\', \'0301144\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'0302702\'}, {\'UPC\': \'667888013142\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'7.30 x 2.80 x 14.00 IN\'}, {\'Weight\': \'0.38 LB\'}, {\'\': \'\'}]', '155', 25),
(440, 'Microfibre Mop Head (Assorted Colours)\nScrubber Cleanz', '3051645', '[\'https://www.dollarama.com/images/3051645_0_S.jpg\', \'https://www.dollarama.com/images/3051645_1_S.jpg\', \'https://www.dollarama.com/images/3051645_2_S.jpg\', \'https://www.dollarama.com/images/3051645_3_S.jpg\']', 'Microfibre Mop Head (Assorted Colours)', 36, 3, '[\'Durable and absorbent\', \'With scrubber pad\', \'Reinforcing band\', \'Durable and Tangle-free\', \'A case contains equally distributed Green, Blue, Purple mop heads\', \'Assortment may vary from picture\']', '[\'3100004\', \'0302263\', \'3048444\', \'3049030\', \'0301144\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'3051645\'}, {\'UPC\': \'667888255412\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'6.30 x 2.70 x 14.30 IN\'}, {\'Weight\': \'0.43 LB\'}, {\'\': \'\'}]', '156', 25),
(441, 'Looped Mop Head\nScrubber Cleanz', '3023338', '[\'https://www.dollarama.com/images/3023338_0_S.jpg\', \'https://www.dollarama.com/images/3023338_1_S.jpg\', \'https://www.dollarama.com/images/3023338_2_S.jpg\', \'https://www.dollarama.com/images/3023338_3_S.jpg\']', 'Looped Mop Head', 70, 3.5, '[\'Durable and absorbent\', \'100% cotton mop\', \'Reinforcing band\', \'Longer lasting\', \'Tangle free\', \'\']', '[\'3100004\', \'0302263\', \'3048444\', \'3049030\', \'0301144\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'3023338\'}, {\'UPC\': \'61747002009, 667888326730\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'6.00 x 2.80 x 19.00 IN\'}, {\'Weight\': \'0.55 LB\'}, {\'\': \'\'}]', '157', 25),
(442, 'Metal Broom Handle (Assorted Styles)\nMISS PRISTINE', '3006633', '[\'https://www.dollarama.com/images/3006633_0_S.jpg\', \'https://www.dollarama.com/images/3006633_1_S.jpg\', \'https://www.dollarama.com/images/3006633_2_S.jpg\', \'https://www.dollarama.com/images/3006633_3_S.jpg\']', 'Metal Broom Handle (Assorted Styles)', 63, 1.75, '[\'Fits most common broom head\', \"3.93\' (120cm)\", \'A case contains equally distributed Blue Floral, Multiflower, White/Black dots, Blue/White dots, Coloured Stripes and Large dots broom handles \', \'Assortment may vary from picture\', \'\', \'\']', '[\'3100004\', \'0302263\', \'3048444\', \'3049030\', \'0301144\']', '[{\'Brand\': \'MISS PRISTINE\'}, {\'Dollarama Number\': \'3006633\'}, {\'UPC\': \'667888001972\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 47.20 IN\'}, {\'Weight\': \'0.46 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Assorted\'}]', '158', 25),
(443, 'Magnetic Broom Head (Assorted Colours)\nScrubber Cleanz', '0300258', '[\'https://www.dollarama.com/images/0300258_0_S.jpg\', \'https://www.dollarama.com/images/0300258_1_S.jpg\', \'https://www.dollarama.com/images/0300258_2_S.jpg\', \'https://www.dollarama.com/images/0300258_3_S.jpg\']', 'Magnetic Broom Head (Assorted Colours)', 72, 2, '[\'Strong magnet\', \'A case contains Red, Silver, Blue and Green broom heads\', \'Assortment may vary from picture\', \'\', \'\', \'\']', '[\'3100004\', \'0302263\', \'3048444\', \'3049030\', \'0301144\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'0300258\'}, {\'UPC\': \'667888000289\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'12.20 x 2.40 x 3.30 IN\'}, {\'Weight\': \'0.56 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '159', 25),
(444, 'Broom Head (Assorted Colours)\nMISS PRISTINE', '3007563', '[\'https://www.dollarama.com/images/3007563_0_S.jpg\', \'https://www.dollarama.com/images/3007563_1_S.jpg\', \'https://www.dollarama.com/images/3007563_2_S.jpg\', \'https://www.dollarama.com/images/3007563_3_S.jpg\']', 'Broom Head (Assorted Colours)', 45, 2.5, '[\'Broom head with long lasting hair soft hair\', \'Fancy design\', \'A case contains equally distributed Green floral, Blue floral, Pink floral, cow patch, Black/White dot and Blue/White dot magnetic broom heads\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3100004\', \'0302263\', \'3048444\', \'3049030\', \'0301144\']', '[{\'Brand\': \'MISS PRISTINE\'}, {\'Dollarama Number\': \'3007563\'}, {\'UPC\': \'667888005925\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'10.10 x 1.90 x 3.80 IN\'}, {\'Weight\': \'22.00 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Assorted\'}]', '160', 25),
(445, 'Angled Broom Head (Assorted Colours)\nScrubber-Cleanz', '0301036', '[\'https://www.dollarama.com/images/0301036_0_S.jpg\', \'https://www.dollarama.com/images/0301036_1_S.jpg\', \'https://www.dollarama.com/images/0301036_2_S.jpg\', \'https://www.dollarama.com/images/0301036_3_S.jpg\']', 'Angled Broom Head (Assorted Colours)', 42, 1.75, '[\'Beveled broom head\', \'Design for hard-to-reach places\', \'A case contains Red, Blue and Green broom heads\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3100004\', \'0302263\', \'3048444\', \'3049030\', \'0301144\']', '[{\'Brand\': \'Scrubber-Cleanz\'}, {\'Dollarama Number\': \'0301036\'}, {\'UPC\': \'667888060771\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'1.50 x 8.00 x 11.00 IN\'}, {\'Weight\': \'0.39 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '161', 25),
(446, 'Dust Pan (Assorted Colours)\nScrubber Cleanz', '0301893', '[\'https://www.dollarama.com/images/0301893_0_S.jpg\', \'https://www.dollarama.com/images/0301893_1_S.jpg\', \'https://www.dollarama.com/images/0301893_2_S.jpg\', \'https://www.dollarama.com/images/0301893_3_S.jpg\']', 'Dust Pan (Assorted Colours)', 45, 1.25, '[\'Molded rubber lip\', \'Convenient brush clip\', \'A case contains equally distributed white and blue plastic dust pans\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3100004\', \'0302263\', \'3048444\', \'3049030\', \'0301144\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'0301893\'}, {\'UPC\': \'667888060887\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'8.00 x 2.80 x 14.00 IN\'}, {\'Weight\': \'0.23 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '162', 25),
(447, 'Dry Disposable Cloths 20PK\nSTATIC MATIC', '0302333', '[\'https://www.dollarama.com/images/0302333_0_S.jpg\', \'https://www.dollarama.com/images/0302333_1_S.jpg\', \'https://www.dollarama.com/images/0302333_2_S.jpg\', \'https://www.dollarama.com/images/0302333_3_S.jpg\']', 'Dry Disposable Cloths 20PK', 45, 1.25, '[\'20 cloths per package\', \'Electrostatic cloths grab dust, dirt and hair\', \'Dispenser opening on the box\', \'Can be used with Exstatic, Swiffer and Pledge Grab-it sweepers\', \'8.6\" x 11.4\" (22cm x 29cm)\', \'\']', '[\'3100004\', \'0302263\', \'3048444\', \'3049030\', \'0301144\']', '[{\'Brand\': \'STATIC MATIC\'}, {\'Dollarama Number\': \'0302333\'}, {\'UPC\': \'667888012602\'}, {\'Pieces per Unit\': \'20\'}, {\'Packaging Dimensions (L x W x H)\': \'4.60 x 1.90 x 6.90 IN\'}, {\'Weight\': \'0.22 LB\'}, {\'\': \'\'}]', '163', 25),
(448, 'Plastic Bucket\nPlastico', '3029893', '[\'https://www.dollarama.com/images/3029893_0_S.jpg\', \'https://www.dollarama.com/images/3029893_1_S.jpg\', \'https://www.dollarama.com/images/3029893_2_S.jpg\', \'https://www.dollarama.com/images/3029893_3_S.jpg\']', 'Plastic Bucket', 56, 4, '[\'13L\', \'Spouted edge\', \'Made in Canada\', \'\', \'\', \'\']', '[\'3100004\', \'0302263\', \'3048444\', \'3049030\', \'0301144\']', '[{\'Brand\': \'Plastico\'}, {\'Dollarama Number\': \'3029893\'}, {\'UPC\': \'667888161911\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'13.00 x 13.00 x 10.60 IN\'}, {\'Volume\': \'13.00 L\'}, {\'Weight\': \'1.07 LB\'}, {\'\': \'\'}]', '164', 25),
(449, 'Concentrated Fabric Softener\nFleecy', '3020156', '[\'https://www.dollarama.com/images/3020156_0_S.jpg\', \'https://www.dollarama.com/images/3020156_1_S.jpg\', \'https://www.dollarama.com/images/3020156_2_S.jpg\', \'https://www.dollarama.com/images/3020156_3_S.jpg\']', 'Concentrated Fabric Softener', 30, 2.5, '[\'28 loads\', \'Safe for all washing machines\', \'850mL\', \'\', \'\', \'\']', '[\'3067532\', \'3044729\', \'3029184\', \'3032074\', \'3031889\']', '[{\'Brand\': \'Fleecy\'}, {\'Dollarama Number\': \'3020156\'}, {\'UPC\': \'58000309241, 58000312678\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.40 x 2.40 x 10.90 IN\'}, {\'Volume\': \'850.00 ML\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '165', 24),
(450, 'Bounce Sheet Fabric Softener\nBounce', '3044729', '[\'https://www.dollarama.com/images/3044729_0_S.jpg\', \'https://www.dollarama.com/images/3044729_1_S.jpg\', \'https://www.dollarama.com/images/3044729_2_S.jpg\', \'https://www.dollarama.com/images/3044729_3_S.jpg\']', 'Bounce Sheet Fabric Softener', 36, 3, '[\'Static control\', \'Freshens and softens\', \'Helps reduce wrinkles\', \'Fresh linen Scent\', \'34 sheets per unit\', \'H.E. safe\']', '[\'3067532\', \'3020156\', \'3029184\', \'3032074\', \'3031889\']', '[{\'Brand\': \'Bounce\'}, {\'Dollarama Number\': \'3044729\'}, {\'UPC\': \'37000823322, 37000823339\'}, {\'Pieces per Unit\': \'34\'}, {\'Packaging Dimensions (L x W x H)\': \'7.00 x 4.50 x 1.50 IN\'}, {\'Weight\': \'0.22 LB\'}, {\'\': \'\'}]', '166', 24),
(451, 'Laundry Stain Remover\nRESOLVE', '3029184', '[\'https://www.dollarama.com/images/3029184_0_S.jpg\', \'https://www.dollarama.com/images/3029184_1_S.jpg\', \'https://www.dollarama.com/images/3029184_2_S.jpg\', \'https://www.dollarama.com/images/3029184_3_S.jpg\']', 'Laundry Stain Remover', 36, 3, '[\'Pre-treat stains before washing\', \'650mL\', \'\', \'\', \'\', \'\']', '[\'3067532\', \'3020156\', \'3044729\', \'3032074\', \'3031889\']', '[{\'Brand\': \'RESOLVE\'}, {\'Dollarama Number\': \'3029184\'}, {\'UPC\': \'62200754428\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'4.70 x 2.00 x 10.80 IN\'}, {\'Volume\': \'650.00 ML\'}, {\'Weight\': \'1.17 LB\'}, {\'\': \'\'}]', '167', 24),
(452, 'Laundry Stain Remover\nRESOLVE', '3032074', '[\'https://www.dollarama.com/images/3032074_0_S.jpg\', \'https://www.dollarama.com/images/3032074_1_S.jpg\', \'https://www.dollarama.com/images/3032074_2_S.jpg\', \'https://www.dollarama.com/images/3032074_3_S.jpg\']', 'Laundry Stain Remover', 18, 3, '[\'Oxi-Action\', \'In-wash use\', \'Removes tough stains for whites and colours\', \'Does not contain chlorine bleach\', \'390g (13.75oz)\', \'\']', '[\'3067532\', \'3020156\', \'3044729\', \'3029184\', \'3031889\']', '[{\'Brand\': \'RESOLVE\'}, {\'Dollarama Number\': \'3032074\'}, {\'UPC\': \'667888173105, 62338890203\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.50 x 3.50 x 4.75 IN\'}, {\'Weight\': \'0.90 LB\'}, {\'\': \'\'}]', '168', 24),
(453, 'Multi-purpose Stain Remover\nOXI-ALL', '3031889', '[\'https://www.dollarama.com/images/3031889_0_S.jpg\', \'https://www.dollarama.com/images/3031889_1_S.jpg\', \'https://www.dollarama.com/images/3031889_2_S.jpg\', \'https://www.dollarama.com/images/3031889_3_S.jpg\']', 'Multi-purpose Stain Remover', 24, 2, '[\'Eliminates tough stains from carpets, furniture and laundry\', \'Colour safe\', \'400g (14oz)\', \'\', \'\', \'\']', '[\'3067532\', \'3020156\', \'3044729\', \'3029184\', \'3032074\']', '[{\'Brand\': \'OXI-ALL\'}, {\'Dollarama Number\': \'3031889\'}, {\'UPC\': \'5050375055650, 63517040365, 667888224463\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.50 x 3.50 x 5.30 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '169', 24),
(454, 'Wooden Clothespins 36PK\nRICHARD', '0300134', '[\'https://www.dollarama.com/images/0300134_0_S.jpg\', \'https://www.dollarama.com/images/0300134_1_S.jpg\', \'https://www.dollarama.com/images/0300134_2_S.jpg\', \'https://www.dollarama.com/images/0300134_3_S.jpg\']', 'Wooden Clothespins 36PK', 30, 1.25, '[\'36 pieces per package\', \'Rust and moisture resistant\', \'High tension springs\', \'Treated smooth finished wood\', \'\', \'\']', '[\'3067532\', \'3020156\', \'3044729\', \'3029184\', \'3032074\']', '[{\'Brand\': \'RICHARD\'}, {\'Dollarama Number\': \'0300134\'}, {\'UPC\': \'667888011506\'}, {\'Pieces per Unit\': \'36\'}, {\'Packaging Dimensions (L x W x H)\': \'9.40 x 5.20 x 1.00 IN\'}, {\'Weight\': \'0.32 LB\'}, {\'\': \'\'}]', '170', 24),
(455, 'Plastic Laundry Basket (Assorted Colours)\nPARAGON', '1000774', '[\'https://www.dollarama.com/images/1000774_0_S.jpg\', \'https://www.dollarama.com/images/1000774_1_S.jpg\', \'https://www.dollarama.com/images/1000774_2_S.jpg\', \'https://www.dollarama.com/images/1000774_3_S.jpg\']', 'Plastic Laundry Basket (Assorted Colours)', 72, 3, '[\'Capacity of 30L\', \'Diameter: 16,5\" (42cm) x Height: 10\" (25.4cm)\', \'A case contains White and Blue laundry baskets\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3067532\', \'3020156\', \'3044729\', \'3029184\', \'3032074\']', '[{\'Brand\': \'PARAGON\'}, {\'Dollarama Number\': \'1000774\'}, {\'UPC\': \'667888020522\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'16.50 x 16.50 x 10.00 IN\'}, {\'Weight\': \'0.66 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '171', 24),
(456, 'Mesh Laundry Wash Bag\nRICHARD', '3011793', '[\'https://www.dollarama.com/images/3011793_0_S.jpg\', \'https://www.dollarama.com/images/3011793_1_S.jpg\', \'https://www.dollarama.com/images/3011793_2_S.jpg\', \'https://www.dollarama.com/images/3011793_3_S.jpg\']', 'Mesh Laundry Wash Bag', 30, 1.25, '[\'Durable mesh with zipper closure\', \'Large size 15\" x 19\" (38cm x 48cm)\', \'Solid white\', \'\', \'\', \'\']', '[\'3067532\', \'3020156\', \'3044729\', \'3029184\', \'3032074\']', '[{\'Brand\': \'RICHARD\'}, {\'Dollarama Number\': \'3011793\'}, {\'UPC\': \'667888071432\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'6.20 x 0.50 x 10.80 IN\'}, {\'Weight\': \'0.58 LB\'}, {\'Color\': \'White only\'}, {\'Pattern\': \'Solid\'}]', '172', 24),
(457, 'Pot Scrubber\nScrubber Cleanz', '0302288', '[\'https://www.dollarama.com/images/0302288_0_S.jpg\', \'https://www.dollarama.com/images/0302288_1_S.jpg\', \'https://www.dollarama.com/images/0302288_2_S.jpg\', \'https://www.dollarama.com/images/0302288_3_S.jpg\']', 'Pot Scrubber', 30, 1.25, '[\'Rubber grip\', \'Pierced handle to hang\', \'Scraper for stubborn dirt\', \'Profiled handle to access bottom of pots\', \'Assorted colours\', \'Assortment may vary from picture\']', '[\'3097048\', \'3097214\', \'3097700\', \'3099369\', \'3105162\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'0302288\'}, {\'UPC\': \'667888061013\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.10 x 9.10 x 5.10 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'Color\': \'Solid\'}, {\'\': \'\'}]', '173', 21),
(458, 'Scrub Brush (Assorted Colours)\nScrubber Cleanz', '0302290', '[\'https://www.dollarama.com/images/0302290_0_S.jpg\', \'https://www.dollarama.com/images/0302290_1_S.jpg\', \'https://www.dollarama.com/images/0302290_2_S.jpg\', \'https://www.dollarama.com/images/0302290_3_S.jpg\']', 'Scrub Brush (Assorted Colours)', 30, 1.25, '[\'Plastic-made handle\', \'A case contains White and Blue scrub brushes\', \'Assortment may vary from picture\', \'\', \'\', \'\']', '[\'3097048\', \'3097214\', \'3097700\', \'3099369\', \'3105162\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'0302290\'}, {\'UPC\': \'667888012510\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'11.40 x 2.60 x 2.50 IN\'}, {\'Weight\': \'0.12 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', '174', 21),
(459, 'Dish Mop\nScrubber Cleanz', '0300788', '[\'https://www.dollarama.com/images/0300788_0_S.jpg\', \'https://www.dollarama.com/images/0300788_1_S.jpg\', \'https://www.dollarama.com/images/0300788_2_S.jpg\', \'https://www.dollarama.com/images/0300788_3_S.jpg\']', 'Dish Mop', 30, 1.25, '[\'Plastic handle\', \'Made from 70% cotton and 30% polyester\', \'\', \'\', \'\', \'\']', '[\'3097048\', \'3097214\', \'3097700\', \'3099369\', \'3105162\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'0300788\'}, {\'UPC\': \'667888085279\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'15.00 x 3.10 x 1.60 IN\'}, {\'Weight\': \'0.14 LB\'}, {\'\': \'\'}]', '175', 21),
(460, 'Round Scouring Pad with White Plastic Handle (Assorted Colours)\nScrubber Cleanz', '0300158', '[\'https://www.dollarama.com/images/0300158_0_S.jpg\', \'https://www.dollarama.com/images/0300158_1_S.jpg\', \'https://www.dollarama.com/images/0300158_2_S.jpg\', \'https://www.dollarama.com/images/0300158_3_S.jpg\']', 'Round Scouring Pad with White Plastic Handle (Assorted Colours)', 30.24, 0.63, '[\'All purpose scubber\', \'Made in Canada\', \'A case contains White, Blue, Red and Green scrubbers\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3097048\', \'3097214\', \'3097700\', \'3099369\', \'3105162\']', '[{\'Brand\': \'Scrubber Cleanz\'}, {\'Dollarama Number\': \'0300158\'}, {\'UPC\': \'667888076765\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'6.50 x 2.50 x 1.00 IN\'}, {\'Weight\': \'0.05 LB\'}, {\'\': \'\'}]', '176', 21),
(461, 'Multi-Use Drip Tray (Assorted Colours)\nPlastico', '3060639', '[\'https://www.dollarama.com/images/3060639_0_S.jpg\', \'https://www.dollarama.com/images/3060639_1_S.jpg\', \'https://www.dollarama.com/images/3060639_2_S.jpg\', \'https://www.dollarama.com/images/3060639_3_S.jpg\']', 'Multi-Use Drip Tray (Assorted Colours)', 48, 4, '[\'Multi-use\', \'Protects surfaces from spills\', \'17\" x 13\" x 1\"  (43cm x 33cm x 2.5cm)\', \'A case contains White/Grey dots and Grey/Grey dots plastic drip tray\', \'Assortment may vary from picture\', \'\']', '[\'3097048\', \'3097214\', \'3097700\', \'3099369\', \'3105162\']', '[{\'Brand\': \'Plastico\'}, {\'Dollarama Number\': \'3060639\'}, {\'UPC\': \'667888293230\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'17.00 x 12.75 x 1.00 IN\'}, {\'Weight\': \'0.77 LB\'}, {\'Color\': \'Assorted\'}, {\'\': \'\'}]', '177', 21),
(462, '6 Fluff Bathroom Tissue Rolls\ncascades', '3064690', '[\'https://www.dollarama.com/images/3064690_0_S.jpg\', \'https://www.dollarama.com/images/3064690_1_S.jpg\', \'https://www.dollarama.com/images/3064690_2_S.jpg\', \'https://www.dollarama.com/images/3064690_3_S.jpg\']', '6 Fluff Bathroom Tissue Rolls', 32, 4, '[\'6 rolls per package\', \'253 sheets per roll\', \'Soft et strong\', \'2 ply\', \'\', \'\']', '[\'3083316\', \'3023950\', \'3098360\', \'3098440\', \'3073883\']', '[]', '178', 50),
(463, 'Tissues 100PK (Assorted Designs)\nSCOTTIES', '3046917', '[\'https://www.dollarama.com/images/3046917_0_S.jpg\', \'https://www.dollarama.com/images/3046917_1_S.jpg\', \'https://www.dollarama.com/images/3046917_2_S.jpg\', \'https://www.dollarama.com/images/3046917_3_S.jpg\']', 'Tissues 100PK (Assorted Designs)', 60, 1.25, '[\'100 tissues per box\', \'2-Ply\', \'Assorted styles and colours\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3083316\', \'3023950\', \'3098360\', \'3098440\', \'3073883\']', '[{\'Brand\': \'SCOTTIES\'}, {\'Dollarama Number\': \'3046917\'}, {\'UPC\': \'61328802196, 61328801144, 61328805005\'}, {\'Pieces per Unit\': \'100\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 4.30 x 2.80 IN\'}, {\'Weight\': \'0.38 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\':', '179', 50),
(464, '10 Ultra Soft Tissues Pocket Size 10PK\nKleenex', '3051000', '[\'https://www.dollarama.com/images/3051000_0_S.jpg\', \'https://www.dollarama.com/images/3051000_1_S.jpg\', \'https://www.dollarama.com/images/3051000_2_S.jpg\', \'https://www.dollarama.com/images/3051000_3_S.jpg\']', '10 Ultra Soft Tissues Pocket Size 10PK', 112, 3.5, '[\'10 packs per package\', \'10 tissues per pack\', \'Soft and silky\', \'\', \'\', \'\']', '[\'3083316\', \'3023950\', \'3098360\', \'3098440\', \'3073883\']', '[{\'Brand\': \'Kleenex\'}, {\'Dollarama Number\': \'3051000\'}, {\'UPC\': \'5029053000619\'}, {\'Pieces per Unit\': \'100\'}, {\'Packaging Dimensions (L x W x H)\': \'8.50 x 4.50 x 2.00 IN\'}, {\'Weight\': \'0.34 LB\'}, {\'\': \'\'}]', '180', 50),
(465, 'Multi-Purpose Clips 10PK (Assorted Colours)\nRICHARD', '3053371', '[\'https://www.dollarama.com/images/3053371_0_S.jpg\', \'https://www.dollarama.com/images/3053371_1_S.jpg\', \'https://www.dollarama.com/images/3053371_2_S.jpg\', \'https://www.dollarama.com/images/3053371_3_S.jpg\']', 'Multi-Purpose Clips 10PK (Assorted Colours)', 48, 2, '[\'10 clips per package\', \'Made of plastic and rubber\', \'A case contains equally distributed White/Black, White/Red, White/blue and Mixed colored clips \', \'Assortment may vary from picture\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'RICHARD\'}, {\'Dollarama Number\': \'3053371\'}, {\'UPC\': \'667888262236\'}, {\'Pieces per Unit\': \'10\'}, {\'Packaging Dimensions (L x W x H)\': \'9.50 x 6.80 x 1.50 IN\'}, {\'Weight\': \'0.30 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Assorted\'}]', '181', 88),
(466, 'Closet Dehumidifier\nDamp Trap', '0302618', '[\'https://www.dollarama.com/images/0302618_0_S.jpg\', \'https://www.dollarama.com/images/0302618_1_S.jpg\', \'https://www.dollarama.com/images/0302618_2_S.jpg\', \'https://www.dollarama.com/images/0302618_3_S.jpg\']', 'Closet Dehumidifier', 30, 1.25, '[\'Absorbs moisture and odours.\', \'Great for closet, basement, bathroom, medicine cabinet and kitchen\', \'Last up to 3 months\', \'Absorbs up to 400mL\', \'180g\', \'\']', '[\'3042230\', \'0302186\', \'3021051\', \'3021052\', \'3016810\']', '[{\'Brand\': \'Damp Trap\'}, {\'Dollarama Number\': \'0302618\'}, {\'UPC\': \'667888013081\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'6.00 x 3.30 x 3.20 IN\'}, {\'Weight\': \'1.00 LB\'}, {\'\': \'\'}]', '182', 57),
(467, 'Pure Breeze Scent Gel Air Freshener\nrenuzit', '3038997', '[\'https://www.dollarama.com/images/3038997_0_S.jpg\', \'https://www.dollarama.com/images/3038997_1_S.jpg\', \'https://www.dollarama.com/images/3038997_2_S.jpg\', \'https://www.dollarama.com/images/3038997_3_S.jpg\']', 'Pure Breeze Scent Gel Air Freshener', 15, 1.25, '[\'Super odour neutralizer\', \'Biodegradable gel\', \'Made with 97% natural ingredients\', \'198g\', \'\', \'\']', '[\'3082576\', \'3023681\', \'3050423\', \'1500334\', \'1500035\']', '[{\'Brand\': \'renuzit\'}, {\'Dollarama Number\': \'3038997\'}, {\'UPC\': \'23400000982, 23400003716\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.80 x 2.80 x 5.00 IN\'}, {\'Weight\': \'0.41 LB\'}, {\'\': \'\'}]', '183', 59),
(468, 'Raspberry Scent Gel Air Freshener\nrenuzit', '3038994', '[\'https://www.dollarama.com/images/3038994_0_S.jpg\', \'https://www.dollarama.com/images/3038994_1_S.jpg\', \'https://www.dollarama.com/images/3038994_2_S.jpg\', \'https://www.dollarama.com/images/3038994_3_S.jpg\']', 'Raspberry Scent Gel Air Freshener', 15, 1.25, '[\'Super odour neutralizer\', \'Biodegradable gel\', \'Made with 98% naturally sourced ingredients\', \'198g\', \'\', \'\']', '[\'3082576\', \'3023681\', \'3050423\', \'1500334\', \'1500035\']', '[{\'Brand\': \'renuzit\'}, {\'Dollarama Number\': \'3038994\'}, {\'UPC\': \'19800036676, 59200007319\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.80 x 2.80 x 5.00 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'\': \'\'}]', '184', 59),
(469, 'Tide Simply Clean &Fresh Laundry Detergent\nTide', '3090436', '[\'https://www.dollarama.com/images/3090436_0_S.jpg\', \'https://www.dollarama.com/images/3090436_1_S.jpg\', \'https://www.dollarama.com/images/3090436_2_S.jpg\', \'https://www.dollarama.com/images/3090436_3_S.jpg\']', 'Tide Simply Clean &Fresh Laundry Detergent', 21, 3.5, '[\'\', \'\', \'\', \'\', \'\', \'\']', '[\'3067532\', \'3020156\', \'3044729\', \'3029184\', \'3032074\']', '[{\'Brand\': \'Tide\'}, {\'Dollarama Number\': \'3090436\'}, {\'UPC\': \'37000908142, 37000447214\'}, {\'Pieces per Unit\': \'1\'}, {\'Weight\': \'3.00 LB\'}, {\'\': \'\'}]', '185', 24),
(470, '2PK Black Permanent Markers\nSTUDIO', '0501803', '[\'https://www.dollarama.com/images/0501803_0_S.jpg\', \'https://www.dollarama.com/images/0501803_1_S.jpg\', \'https://www.dollarama.com/images/0501803_2_S.jpg\', \'https://www.dollarama.com/images/0501803_3_S.jpg\']', '2PK Black Permanent Markers', 45, 1.25, '[\'2 markers per package\', \'Fine point\', \'Smearproof\', \'\', \'\', \'\']', '[\'3083557\', \'0503040\', \'3020905\', \'3063059\', \'3060160\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0501803\'}, {\'UPC\': \'667888014101\'}, {\'Pieces per Unit\': \'2\'}, {\'Packaging Dimensions (L x W x H)\': \'2.70 x 0.80 x 7.60 IN\'}, {\'Weight\': \'0.08 LB\'}, {\'Color\': \'Solid\'}, {\'\': \'\'}]', '186', 87);

-- --------------------------------------------------------

--
-- Table structure for table `core_item`
--

CREATE TABLE `core_item` (
  `id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `discount_price` double DEFAULT NULL,
  `item_image` varchar(100) NOT NULL,
  `labels` varchar(2) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `item_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_item_likes`
--

CREATE TABLE `core_item_likes` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_orderitem`
--

CREATE TABLE `core_orderitem` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_orderitem`
--

INSERT INTO `core_orderitem` (`id`, `quantity`, `ordered`, `item_id`, `user_id`, `shop`) VALUES
(71, 3, 0, 290, 3, 1),
(72, 2, 0, 288, 3, 1),
(77, 3, 0, 297, 4, 1),
(78, 2, 0, 310, 4, 1),
(79, 1, 0, 286, 5, 1),
(80, 1, 0, 291, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_payment`
--

CREATE TABLE `core_payment` (
  `id` int(11) NOT NULL,
  `stripe_charge_id` varchar(50) DEFAULT NULL,
  `ssl_charge_id` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_refund`
--

CREATE TABLE `core_refund` (
  `id` int(11) NOT NULL,
  `reference_code` varchar(20) NOT NULL,
  `reason` longtext NOT NULL,
  `email` varchar(254) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_targetcategory`
--

CREATE TABLE `core_targetcategory` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_userprofile`
--

CREATE TABLE `core_userprofile` (
  `id` int(11) NOT NULL,
  `stripe_customer_id` varchar(20) DEFAULT NULL,
  `on_click_purchasing` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_userprofile`
--

INSERT INTO `core_userprofile` (`id`, `stripe_customer_id`, `on_click_purchasing`, `user_id`) VALUES
(1, NULL, 0, 1),
(2, NULL, 0, 2),
(3, NULL, 0, 3),
(4, NULL, 0, 4),
(5, NULL, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `core_walmartcategory`
--

CREATE TABLE `core_walmartcategory` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-09-10 05:12:27.170727', '1', 'djangoecommerece', 1, '[{\"added\": {}}]', 11, 1),
(2, '2021-09-10 05:12:47.225442', '1', 'djangoecommerece', 2, '[]', 11, 1),
(3, '2021-09-10 05:14:39.106419', '2', '127.0.0.1:8000', 1, '[{\"added\": {}}]', 7, 1),
(4, '2021-09-10 05:14:50.783531', '1', 'example.com', 3, '', 7, 1),
(5, '2021-09-10 05:15:09.251604', '1', 'djangoecommerece', 2, '[{\"changed\": {\"fields\": [\"Sites\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'account', 'emailaddress'),
(9, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'core', 'address'),
(14, 'core', 'canadiantirecategory'),
(15, 'core', 'cart'),
(16, 'core', 'category'),
(28, 'core', 'comment'),
(17, 'core', 'costcocategory'),
(18, 'core', 'coupon'),
(19, 'core', 'dolloarcategory'),
(27, 'core', 'dolloaritem'),
(20, 'core', 'item'),
(26, 'core', 'orderitem'),
(25, 'core', 'payment'),
(24, 'core', 'refund'),
(21, 'core', 'targetcategory'),
(23, 'core', 'userprofile'),
(22, 'core', 'walmartcategory'),
(29, 'ipn', 'paypalipn'),
(6, 'sessions', 'session'),
(7, 'sites', 'site'),
(10, 'socialaccount', 'socialaccount'),
(11, 'socialaccount', 'socialapp'),
(12, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-09 11:52:24.340237'),
(2, 'auth', '0001_initial', '2021-09-09 11:52:25.808622'),
(3, 'account', '0001_initial', '2021-09-09 11:52:32.381720'),
(4, 'account', '0002_email_max_length', '2021-09-09 11:52:33.772006'),
(5, 'admin', '0001_initial', '2021-09-09 11:52:34.271896'),
(6, 'admin', '0002_logentry_remove_auto_add', '2021-09-09 11:52:36.099578'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-09 11:52:36.130824'),
(8, 'contenttypes', '0002_remove_content_type_name', '2021-09-09 11:52:36.615091'),
(9, 'auth', '0002_alter_permission_name_max_length', '2021-09-09 11:52:37.989761'),
(10, 'auth', '0003_alter_user_email_max_length', '2021-09-09 11:52:38.083494'),
(11, 'auth', '0004_alter_user_username_opts', '2021-09-09 11:52:38.130351'),
(12, 'auth', '0005_alter_user_last_login_null', '2021-09-09 11:52:38.567763'),
(13, 'auth', '0006_require_contenttypes_0002', '2021-09-09 11:52:38.599001'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2021-09-09 11:52:38.645832'),
(15, 'auth', '0008_alter_user_username_max_length', '2021-09-09 11:52:38.739599'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2021-09-09 11:52:38.880183'),
(17, 'auth', '0010_alter_group_name_max_length', '2021-09-09 11:52:38.989528'),
(18, 'auth', '0011_update_proxy_permissions', '2021-09-09 11:52:39.036405'),
(19, 'core', '0001_initial', '2021-09-09 11:52:48.112355'),
(20, 'sessions', '0001_initial', '2021-09-09 11:53:00.715351'),
(21, 'sites', '0001_initial', '2021-09-09 11:53:01.133914'),
(22, 'sites', '0002_alter_domain_unique', '2021-09-09 11:53:02.071191'),
(23, 'socialaccount', '0001_initial', '2021-09-09 11:53:03.914547'),
(24, 'socialaccount', '0002_token_max_lengths', '2021-09-09 11:53:08.202037'),
(25, 'socialaccount', '0003_extra_data_default_dict', '2021-09-09 11:53:08.248890'),
(26, 'core', '0002_auto_20210912_1545', '2021-09-12 06:45:39.731810'),
(27, 'core', '0003_orderitem_shop', '2021-09-12 17:48:03.070703'),
(28, 'core', '0004_cart_feed', '2021-10-01 16:40:34.528406'),
(29, 'ipn', '0001_initial', '2021-10-01 16:40:35.046480'),
(30, 'ipn', '0002_paypalipn_mp_id', '2021-10-01 16:40:35.421465'),
(31, 'ipn', '0003_auto_20141117_1647', '2021-10-01 16:40:36.499301'),
(32, 'ipn', '0004_auto_20150612_1826', '2021-10-01 16:40:45.557608'),
(33, 'ipn', '0005_auto_20151217_0948', '2021-10-01 16:40:45.791913'),
(34, 'ipn', '0006_auto_20160108_1112', '2021-10-01 16:40:46.073112'),
(35, 'ipn', '0007_auto_20160219_1135', '2021-10-01 16:40:46.135595'),
(36, 'ipn', '0008_auto_20181128_1032', '2021-10-01 16:40:46.166800');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0diwoe5ifhvlgty33166evjps9xkanmi', 'M2MxY2IyNzJhNjg4MDVjMDIzM2ZiYTY2Mzc0ZjAyNmU1NWQ0MWVkNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOWE1ZmYzNTY1ZWZmYmM0MWY3OGU5NDA5YWY2ZjQzYzAxYTRhYzNhZiJ9', '2021-09-24 05:21:34.671822'),
('0k1d0b49wsavte44v8wgxx3htllvzkwv', 'NWQxNTcyZDc0MTI5NzFlY2M2M2FmZmMwNjQyNGM4NzU3NDRhZTgwODp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTUwOGVlNDczMjE3ODUyNDk2NDYzNThiYzBkMzRmOTQyYWU0ZjFiNSIsIl9sYW5ndWFnZSI6ImVuIn0=', '2021-10-06 03:43:05.157234'),
('1fv6zrf6jszikhwgjxgiag9gc4enh12w', 'MDU3YzQ2Y2E2NTgxYzVhZjk2ZTA5ZGRiZjM0ZjQwOWJkYmEzNDNhYTp7InNvY2lhbGFjY291bnRfc29jaWFsbG9naW4iOnsiYWNjb3VudCI6eyJpZCI6bnVsbCwidXNlcl9pZCI6bnVsbCwicHJvdmlkZXIiOiJnb29nbGUiLCJ1aWQiOiIxMDE3MjA5NzEzNTg5MzE4OTM0MTYiLCJsYXN0X2xvZ2luIjpudWxsLCJkYXRlX2pvaW5lZCI6bnVsbCwiZXh0cmFfZGF0YSI6eyJpZCI6IjEwMTcyMDk3MTM1ODkzMTg5MzQxNiIsImVtYWlsIjoibm9ybWFuYnVydG9uZnJlZUBnbWFpbC5jb20iLCJ2ZXJpZmllZF9lbWFpbCI6dHJ1ZSwibmFtZSI6Ik5vcm1hbiBCdXJ0b24iLCJnaXZlbl9uYW1lIjoiTm9ybWFuIiwiZmFtaWx5X25hbWUiOiJCdXJ0b24iLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKeE1nbUdldXZvNTF6NGxMcWNOaDdfdEZkUUdITGw3bVBvTzNnLVM9czk2LWMiLCJsb2NhbGUiOiJlbi1HQiJ9fSwidXNlciI6eyJpZCI6bnVsbCwicGFzc3dvcmQiOiIhN1JPYW84WWkyUGF4RDZGczZrTDVYYzVvYWx1V2lKaEdhMTZOZk9WZiIsImxhc3RfbG9naW4iOm51bGwsImlzX3N1cGVydXNlciI6ZmFsc2UsInVzZXJuYW1lIjoiIiwiZmlyc3RfbmFtZSI6Ik5vcm1hbiIsImxhc3RfbmFtZSI6IkJ1cnRvbiIsImVtYWlsIjoibm9ybWFuYnVydG9uZnJlZUBnbWFpbC5jb20iLCJpc19zdGFmZiI6ZmFsc2UsImlzX2FjdGl2ZSI6dHJ1ZSwiZGF0ZV9qb2luZWQiOiIyMDIxLTA5LTEzVDA0OjQ2OjEzLjA4N1oifSwic3RhdGUiOnsibmV4dCI6Ii9jb250YWN0dXMvIiwicHJvY2VzcyI6ImxvZ2luIiwic2NvcGUiOiIiLCJhdXRoX3BhcmFtcyI6IiJ9LCJlbWFpbF9hZGRyZXNzZXMiOlt7ImlkIjpudWxsLCJ1c2VyX2lkIjpudWxsLCJlbWFpbCI6Im5vcm1hbmJ1cnRvbmZyZWVAZ21haWwuY29tIiwidmVyaWZpZWQiOnRydWUsInByaW1hcnkiOnRydWV9XSwidG9rZW4iOnsiaWQiOm51bGwsImFwcF9pZCI6MSwiYWNjb3VudF9pZCI6bnVsbCwidG9rZW4iOiJ5YTI5LmEwQVJyZGFNLV9JUjhIYllTUktLb0lhYVBjYU81SUcyNUd2TW1TeXJ2a0s5cm5RVWc0cmNsTFBBWm5xaFkyXzQwWXVYZkkyUFZLUG5HVFFUcXN6cE1TSEFYaG5iM0YxU2ZCNFRubk4wVjRkTzBDWHVhU1ZreFBuUzBLMldwVDdSTVo1Wkdra3VveEdzS2s4S3pfalZqa01BVHg2UmpCIiwidG9rZW5fc2VjcmV0IjoiIiwiZXhwaXJlc19hdCI6IjIwMjEtMDktMTNUMDU6NDY6MTEuNDEyWiJ9fSwiYWNjb3VudF92ZXJpZmllZF9lbWFpbCI6bnVsbCwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhbGxhdXRoLmFjY291bnQuYXV0aF9iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTA4ZWU0NzMyMTc4NTI0OTY0NjM1OGJjMGQzNGY5NDJhZTRmMWI1In0=', '2021-09-27 04:48:51.851459'),
('3tj87r9juqcml8jlsgjdf79vlv849gfu', 'MGRiNDZiYmQzNzUwY2EyNTk1Yzk1Y2Y2MWJkYjE5MzlhYzRkZmQ4YTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZGNiZDNlZDliZmExNTY3YzJhMDA4NWJmZjg0MWY5NjcxZWFjYTNjIn0=', '2021-10-16 18:08:02.698389'),
('7sgtifp1fwwierybm7y12vi5awtft9b2', 'ZDlkYzMyZjI2NTZkMzU5OWY2OTMyN2U3MGUwNTI1NWU3OTQ0MzhmZTp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGI0MmI3MWJmODJjNDQ1YjU5N2JjMjk0ZmJiOGU3ZjNlNGM4N2Q3YSJ9', '2021-10-11 18:32:49.827874'),
('ab1e0wbsqngii3c90umvb8n0kcabbdgj', 'MGRiNDZiYmQzNzUwY2EyNTk1Yzk1Y2Y2MWJkYjE5MzlhYzRkZmQ4YTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZGNiZDNlZDliZmExNTY3YzJhMDA4NWJmZjg0MWY5NjcxZWFjYTNjIn0=', '2021-10-16 16:20:30.082142'),
('blsbzjoqq590k60ptvyirpdsekcisf3g', 'YjQ4MmNmZDlhY2I0N2Q1MzA2NDAxYTU5MDJhYWFmODYwMWM4ZGYwMTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTUwOGVlNDczMjE3ODUyNDk2NDYzNThiYzBkMzRmOTQyYWU0ZjFiNSIsIl9sYW5ndWFnZSI6ImFyIn0=', '2021-10-04 08:01:14.862849'),
('enjc7hkzkgmokl7in6dsb627x2u8g77q', 'MzczOTU0ODQzYWUyOGJlZGRkZmFmMWY3MzM1YWE4MGUxYzZjOGViNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTUwOGVlNDczMjE3ODUyNDk2NDYzNThiYzBkMzRmOTQyYWU0ZjFiNSJ9', '2021-09-29 01:23:30.558507'),
('g7ei1q272umuo31d7m5gf2ofmmhu1j9s', 'NTA3OWQyN2IzNzg4OTU3NDUxNDA1NDM4NTFkMjM1ODU4ZDBmYTIzZDp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOWE1ZmYzNTY1ZWZmYmM0MWY3OGU5NDA5YWY2ZjQzYzAxYTRhYzNhZiJ9', '2021-09-24 05:20:31.037819'),
('huq9il3y88d9jq8ulh5mwh3zvuchpjk7', 'MzczOTU0ODQzYWUyOGJlZGRkZmFmMWY3MzM1YWE4MGUxYzZjOGViNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTUwOGVlNDczMjE3ODUyNDk2NDYzNThiYzBkMzRmOTQyYWU0ZjFiNSJ9', '2021-10-15 16:24:40.868522'),
('hwvo11uw0t8nllpsrdcgqnxcjjeq0s7f', 'MzczOTU0ODQzYWUyOGJlZGRkZmFmMWY3MzM1YWE4MGUxYzZjOGViNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTUwOGVlNDczMjE3ODUyNDk2NDYzNThiYzBkMzRmOTQyYWU0ZjFiNSJ9', '2021-09-29 01:15:50.129972'),
('pbk46q68oo1rzbttmq9b0i8ahnzuzwd7', 'NDljMDIyMzkyMjBkYjBlNmE2YTRkYTYyNjA5Y2UyYWJkNDM5MTU5MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDllZjJjN2U2NzUwNWI0MWI1NzJkNmI0YjM3N2E1NWIyNjgyMDI2IiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2021-09-23 11:56:22.169770');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(2, '127.0.0.1:8000', 'djangoecommerece');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL,
  `business` varchar(127) NOT NULL,
  `charset` varchar(255) NOT NULL,
  `custom` varchar(256) NOT NULL,
  `notify_version` decimal(64,2) DEFAULT NULL,
  `parent_txn_id` varchar(19) NOT NULL,
  `receiver_email` varchar(254) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `residence_country` varchar(2) NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `txn_type` varchar(255) NOT NULL,
  `verify_sign` varchar(255) NOT NULL,
  `address_country` varchar(64) NOT NULL,
  `address_city` varchar(40) NOT NULL,
  `address_country_code` varchar(64) NOT NULL,
  `address_name` varchar(128) NOT NULL,
  `address_state` varchar(40) NOT NULL,
  `address_status` varchar(255) NOT NULL,
  `address_street` varchar(200) NOT NULL,
  `address_zip` varchar(20) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `payer_business_name` varchar(127) NOT NULL,
  `payer_email` varchar(127) NOT NULL,
  `payer_id` varchar(13) NOT NULL,
  `auth_amount` decimal(64,2) DEFAULT NULL,
  `auth_exp` varchar(28) NOT NULL,
  `auth_id` varchar(19) NOT NULL,
  `auth_status` varchar(255) NOT NULL,
  `exchange_rate` decimal(64,16) DEFAULT NULL,
  `invoice` varchar(127) NOT NULL,
  `item_name` varchar(127) NOT NULL,
  `item_number` varchar(127) NOT NULL,
  `mc_currency` varchar(32) NOT NULL,
  `mc_fee` decimal(64,2) DEFAULT NULL,
  `mc_gross` decimal(64,2) DEFAULT NULL,
  `mc_handling` decimal(64,2) DEFAULT NULL,
  `mc_shipping` decimal(64,2) DEFAULT NULL,
  `memo` varchar(255) NOT NULL,
  `num_cart_items` int(11) DEFAULT NULL,
  `option_name1` varchar(64) NOT NULL,
  `option_name2` varchar(64) NOT NULL,
  `payer_status` varchar(255) NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_gross` decimal(64,2) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `pending_reason` varchar(255) NOT NULL,
  `protection_eligibility` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `reason_code` varchar(255) NOT NULL,
  `remaining_settle` decimal(64,2) DEFAULT NULL,
  `settle_amount` decimal(64,2) DEFAULT NULL,
  `settle_currency` varchar(32) NOT NULL,
  `shipping` decimal(64,2) DEFAULT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `tax` decimal(64,2) DEFAULT NULL,
  `transaction_entity` varchar(255) NOT NULL,
  `auction_buyer_id` varchar(64) NOT NULL,
  `auction_closing_date` datetime(6) DEFAULT NULL,
  `auction_multi_item` int(11) DEFAULT NULL,
  `for_auction` decimal(64,2) DEFAULT NULL,
  `amount` decimal(64,2) DEFAULT NULL,
  `amount_per_cycle` decimal(64,2) DEFAULT NULL,
  `initial_payment_amount` decimal(64,2) DEFAULT NULL,
  `next_payment_date` datetime(6) DEFAULT NULL,
  `outstanding_balance` decimal(64,2) DEFAULT NULL,
  `payment_cycle` varchar(255) NOT NULL,
  `period_type` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `profile_status` varchar(255) NOT NULL,
  `recurring_payment_id` varchar(255) NOT NULL,
  `rp_invoice_id` varchar(127) NOT NULL,
  `time_created` datetime(6) DEFAULT NULL,
  `amount1` decimal(64,2) DEFAULT NULL,
  `amount2` decimal(64,2) DEFAULT NULL,
  `amount3` decimal(64,2) DEFAULT NULL,
  `mc_amount1` decimal(64,2) DEFAULT NULL,
  `mc_amount2` decimal(64,2) DEFAULT NULL,
  `mc_amount3` decimal(64,2) DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `reattempt` varchar(1) NOT NULL,
  `recur_times` int(11) DEFAULT NULL,
  `recurring` varchar(1) NOT NULL,
  `retry_at` datetime(6) DEFAULT NULL,
  `subscr_date` datetime(6) DEFAULT NULL,
  `subscr_effective` datetime(6) DEFAULT NULL,
  `subscr_id` varchar(19) NOT NULL,
  `username` varchar(64) NOT NULL,
  `case_creation_date` datetime(6) DEFAULT NULL,
  `case_id` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `receipt_id` varchar(255) NOT NULL,
  `currency_code` varchar(32) NOT NULL,
  `handling_amount` decimal(64,2) DEFAULT NULL,
  `transaction_subject` varchar(256) NOT NULL,
  `ipaddress` char(39) DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) NOT NULL,
  `flag_info` longtext NOT NULL,
  `query` longtext NOT NULL,
  `response` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `from_view` varchar(6) DEFAULT NULL,
  `mp_id` varchar(128) DEFAULT NULL,
  `option_selection1` varchar(200) NOT NULL,
  `option_selection2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialaccount`
--

INSERT INTO `socialaccount_socialaccount` (`id`, `provider`, `uid`, `last_login`, `date_joined`, `extra_data`, `user_id`) VALUES
(1, 'google', '101193102636376377520', '2021-09-10 05:21:34.426970', '2021-09-10 05:20:30.595515', '{\"id\": \"101193102636376377520\", \"email\": \"miladinovicdevelop@gmail.com\", \"verified_email\": true, \"name\": \"Miroslav Miladinovi\\u0107\", \"given_name\": \"Miroslav\", \"family_name\": \"Miladinovi\\u0107\", \"picture\": \"https://lh3.googleusercontent.com/a/AATXAJyEsCN80O2pkdSBndohIRXZqPT8mhC_xyPAr7bB=s96-c\", \"locale\": \"sr\"}', 2),
(2, 'google', '101720971358931893416', '2021-10-02 16:51:07.901877', '2021-09-13 04:48:51.102463', '{\"id\": \"101720971358931893416\", \"email\": \"normanburtonfree@gmail.com\", \"verified_email\": true, \"name\": \"Norman Burton\", \"given_name\": \"Norman\", \"family_name\": \"Burton\", \"picture\": \"https://lh3.googleusercontent.com/a/AATXAJxMgmGeuvo51z4lLqcNh7_tFdQGHLl7mPoO3g-S=s96-c\", \"locale\": \"en-GB\"}', 3),
(3, 'google', '112518547452842529577', '2021-09-27 18:32:49.443408', '2021-09-27 18:32:49.443408', '{\"id\": \"112518547452842529577\", \"email\": \"dane.peter.blair@gmail.com\", \"verified_email\": true, \"name\": \"DANE PETER BLAIR\", \"given_name\": \"DANE PETER\", \"family_name\": \"BLAIR\", \"picture\": \"https://lh3.googleusercontent.com/a/AATXAJzz0Yu7W82nucTUFV1_RTt9lz1qS9ynFL1bhy9M=s96-c\", \"locale\": \"en\"}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialapp`
--

INSERT INTO `socialaccount_socialapp` (`id`, `provider`, `name`, `client_id`, `secret`, `key`) VALUES
(1, 'google', 'djangoecommerece', '56738678446-6l08vur98h6g6mfn9dvt0717tiflm968.apps.googleusercontent.com', 'DDz0JYH5J8nYcjZpCRLHJuwP', '');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialapp_sites`
--

INSERT INTO `socialaccount_socialapp_sites` (`id`, `socialapp_id`, `site_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socialaccount_socialtoken`
--

INSERT INTO `socialaccount_socialtoken` (`id`, `token`, `token_secret`, `expires_at`, `account_id`, `app_id`) VALUES
(1, 'ya29.a0ARrdaM85jkfkd6EZiVaCYCgP7ay3jlQM09MLuot63nAXRGFpS9e5oZQwNZOJfVRLfW7Xq08-P-GOLSiNRuBeHW1YcWMcQ-QrWtpqO-K5MpABoHSxvDKQyePS6hFbj5ax8YPVkViHwbNIrsNxNMsK1b96DWck', '', '2021-09-10 06:21:30.699377', 1, 1),
(2, 'ya29.a0ARrdaM8rW9C7GS_tYooeEmHlAuBVRv4XJNO2sRBPZiafAIjOI-MLPZkQVrD8VNlJ1YNWTOO6HjgjmtjnzUiHxM6w-N9CN7KMPqt6IppqlBsZYh5O4fRJjR99r1h1HMPrlto0b4pUpmPqxbcC7fMLwv0aqN25', '', '2021-10-02 17:51:05.664063', 2, 1),
(3, 'ya29.a0ARrdaM_5Nlry4hG4YuYqB6mBP5ukS3u8eLHOQHBXj5FkbRvWeMapBfNwfJiT7vNcVLeP3vneJTKl4qd3McxfpD2hTe9gYhmXf54l1MLWT4ogHR38MBnmUyI613QsGEjYVXtTVLxSuH1PovH7E5P_pWyC-FcZ', '', '2021-09-27 19:32:45.969371', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `core_address`
--
ALTER TABLE `core_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_address_user_id_7681a39c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `core_canadiantirecategory`
--
ALTER TABLE `core_canadiantirecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_cart`
--
ALTER TABLE `core_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_cart_coupon_id_f9496726_fk_core_coupon_id` (`coupon_id`),
  ADD KEY `core_cart_payment_id_17c06809_fk_core_payment_id` (`payment_id`),
  ADD KEY `core_cart_shipping_address_id_8c274555_fk_core_address_id` (`shipping_address_id`),
  ADD KEY `core_cart_user_id_2ebeb843_fk_auth_user_id` (`user_id`),
  ADD KEY `core_cart_billing_address_id_b8f7d753_fk_core_address_id` (`billing_address_id`);

--
-- Indexes for table `core_cart_items`
--
ALTER TABLE `core_cart_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_cart_items_cart_id_orderitem_id_af65f45e_uniq` (`cart_id`,`orderitem_id`),
  ADD KEY `core_cart_items_orderitem_id_df0bf9e2_fk_core_orderitem_id` (`orderitem_id`);

--
-- Indexes for table `core_category`
--
ALTER TABLE `core_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_comment`
--
ALTER TABLE `core_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_comment_item_id_81e851f1_fk_core_item_id` (`item_id`),
  ADD KEY `core_comment_user_id_a9a9430c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `core_costcocategory`
--
ALTER TABLE `core_costcocategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_coupon`
--
ALTER TABLE `core_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_dolloarcategory`
--
ALTER TABLE `core_dolloarcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_dolloaritem`
--
ALTER TABLE `core_dolloaritem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `core_dolloaritem_category_id_6ef5de9b_fk_core_dolloarcategory_id` (`category_id`);

--
-- Indexes for table `core_item`
--
ALTER TABLE `core_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `core_item_item_category_id_a4375176_fk_core_category_id` (`item_category_id`);

--
-- Indexes for table `core_item_likes`
--
ALTER TABLE `core_item_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_item_likes_item_id_user_id_15e32b8f_uniq` (`item_id`,`user_id`),
  ADD KEY `core_item_likes_user_id_8df66e8d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `core_orderitem`
--
ALTER TABLE `core_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_orderitem_user_id_323fe695_fk_auth_user_id` (`user_id`),
  ADD KEY `core_orderitem_item_id_3b7d0c2e_fk_core_dolloaritem_id` (`item_id`);

--
-- Indexes for table `core_payment`
--
ALTER TABLE `core_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_payment_user_id_274e164a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `core_refund`
--
ALTER TABLE `core_refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_refund_order_id_7fe621fa_fk_core_cart_id` (`order_id`);

--
-- Indexes for table `core_targetcategory`
--
ALTER TABLE `core_targetcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_userprofile`
--
ALTER TABLE `core_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `core_walmartcategory`
--
ALTER TABLE `core_walmartcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paypal_ipn_txn_id_8fa22c44` (`txn_id`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_address`
--
ALTER TABLE `core_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `core_canadiantirecategory`
--
ALTER TABLE `core_canadiantirecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_cart`
--
ALTER TABLE `core_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_cart_items`
--
ALTER TABLE `core_cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `core_category`
--
ALTER TABLE `core_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_comment`
--
ALTER TABLE `core_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_costcocategory`
--
ALTER TABLE `core_costcocategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_coupon`
--
ALTER TABLE `core_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_dolloarcategory`
--
ALTER TABLE `core_dolloarcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `core_dolloaritem`
--
ALTER TABLE `core_dolloaritem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `core_item`
--
ALTER TABLE `core_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_item_likes`
--
ALTER TABLE `core_item_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_orderitem`
--
ALTER TABLE `core_orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `core_payment`
--
ALTER TABLE `core_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_refund`
--
ALTER TABLE `core_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_targetcategory`
--
ALTER TABLE `core_targetcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_userprofile`
--
ALTER TABLE `core_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_walmartcategory`
--
ALTER TABLE `core_walmartcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_address`
--
ALTER TABLE `core_address`
  ADD CONSTRAINT `core_address_user_id_7681a39c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_cart`
--
ALTER TABLE `core_cart`
  ADD CONSTRAINT `core_cart_billing_address_id_b8f7d753_fk_core_address_id` FOREIGN KEY (`billing_address_id`) REFERENCES `core_address` (`id`),
  ADD CONSTRAINT `core_cart_coupon_id_f9496726_fk_core_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `core_coupon` (`id`),
  ADD CONSTRAINT `core_cart_payment_id_17c06809_fk_core_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `core_payment` (`id`),
  ADD CONSTRAINT `core_cart_shipping_address_id_8c274555_fk_core_address_id` FOREIGN KEY (`shipping_address_id`) REFERENCES `core_address` (`id`),
  ADD CONSTRAINT `core_cart_user_id_2ebeb843_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_cart_items`
--
ALTER TABLE `core_cart_items`
  ADD CONSTRAINT `core_cart_items_cart_id_e9fed967_fk_core_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `core_cart` (`id`),
  ADD CONSTRAINT `core_cart_items_orderitem_id_df0bf9e2_fk_core_orderitem_id` FOREIGN KEY (`orderitem_id`) REFERENCES `core_orderitem` (`id`);

--
-- Constraints for table `core_comment`
--
ALTER TABLE `core_comment`
  ADD CONSTRAINT `core_comment_item_id_81e851f1_fk_core_item_id` FOREIGN KEY (`item_id`) REFERENCES `core_item` (`id`),
  ADD CONSTRAINT `core_comment_user_id_a9a9430c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_dolloaritem`
--
ALTER TABLE `core_dolloaritem`
  ADD CONSTRAINT `core_dolloaritem_category_id_6ef5de9b_fk_core_dolloarcategory_id` FOREIGN KEY (`category_id`) REFERENCES `core_dolloarcategory` (`id`);

--
-- Constraints for table `core_item`
--
ALTER TABLE `core_item`
  ADD CONSTRAINT `core_item_item_category_id_a4375176_fk_core_category_id` FOREIGN KEY (`item_category_id`) REFERENCES `core_category` (`id`);

--
-- Constraints for table `core_item_likes`
--
ALTER TABLE `core_item_likes`
  ADD CONSTRAINT `core_item_likes_item_id_54c65f84_fk_core_item_id` FOREIGN KEY (`item_id`) REFERENCES `core_item` (`id`),
  ADD CONSTRAINT `core_item_likes_user_id_8df66e8d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_orderitem`
--
ALTER TABLE `core_orderitem`
  ADD CONSTRAINT `core_orderitem_item_id_3b7d0c2e_fk_core_dolloaritem_id` FOREIGN KEY (`item_id`) REFERENCES `core_dolloaritem` (`id`),
  ADD CONSTRAINT `core_orderitem_user_id_323fe695_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_payment`
--
ALTER TABLE `core_payment`
  ADD CONSTRAINT `core_payment_user_id_274e164a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_refund`
--
ALTER TABLE `core_refund`
  ADD CONSTRAINT `core_refund_order_id_7fe621fa_fk_core_cart_id` FOREIGN KEY (`order_id`) REFERENCES `core_cart` (`id`);

--
-- Constraints for table `core_userprofile`
--
ALTER TABLE `core_userprofile`
  ADD CONSTRAINT `core_userprofile_user_id_5141ad90_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
