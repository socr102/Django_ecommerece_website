-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 04:08 PM
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
  `id` bigint(20) NOT NULL,
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
(25, 'Can add contact', 7, 'add_contact'),
(26, 'Can change contact', 7, 'change_contact'),
(27, 'Can delete contact', 7, 'delete_contact'),
(28, 'Can view contact', 7, 'view_contact'),
(29, 'Can add site', 8, 'add_site'),
(30, 'Can change site', 8, 'change_site'),
(31, 'Can delete site', 8, 'delete_site'),
(32, 'Can view site', 8, 'view_site'),
(33, 'Can add email address', 9, 'add_emailaddress'),
(34, 'Can change email address', 9, 'change_emailaddress'),
(35, 'Can delete email address', 9, 'delete_emailaddress'),
(36, 'Can view email address', 9, 'view_emailaddress'),
(37, 'Can add email confirmation', 10, 'add_emailconfirmation'),
(38, 'Can change email confirmation', 10, 'change_emailconfirmation'),
(39, 'Can delete email confirmation', 10, 'delete_emailconfirmation'),
(40, 'Can view email confirmation', 10, 'view_emailconfirmation'),
(41, 'Can add social account', 11, 'add_socialaccount'),
(42, 'Can change social account', 11, 'change_socialaccount'),
(43, 'Can delete social account', 11, 'delete_socialaccount'),
(44, 'Can view social account', 11, 'view_socialaccount'),
(45, 'Can add social application', 12, 'add_socialapp'),
(46, 'Can change social application', 12, 'change_socialapp'),
(47, 'Can delete social application', 12, 'delete_socialapp'),
(48, 'Can view social application', 12, 'view_socialapp'),
(49, 'Can add social application token', 13, 'add_socialtoken'),
(50, 'Can change social application token', 13, 'change_socialtoken'),
(51, 'Can delete social application token', 13, 'delete_socialtoken'),
(52, 'Can view social application token', 13, 'view_socialtoken'),
(53, 'Can add address', 14, 'add_address'),
(54, 'Can change address', 14, 'change_address'),
(55, 'Can delete address', 14, 'delete_address'),
(56, 'Can view address', 14, 'view_address'),
(57, 'Can add cart', 15, 'add_cart'),
(58, 'Can change cart', 15, 'change_cart'),
(59, 'Can delete cart', 15, 'delete_cart'),
(60, 'Can view cart', 15, 'view_cart'),
(61, 'Can add category', 16, 'add_category'),
(62, 'Can change category', 16, 'change_category'),
(63, 'Can delete category', 16, 'delete_category'),
(64, 'Can view category', 16, 'view_category'),
(65, 'Can add coupon', 17, 'add_coupon'),
(66, 'Can change coupon', 17, 'change_coupon'),
(67, 'Can delete coupon', 17, 'delete_coupon'),
(68, 'Can view coupon', 17, 'view_coupon'),
(69, 'Can add item', 18, 'add_item'),
(70, 'Can change item', 18, 'change_item'),
(71, 'Can delete item', 18, 'delete_item'),
(72, 'Can view item', 18, 'view_item'),
(73, 'Can add refund', 19, 'add_refund'),
(74, 'Can change refund', 19, 'change_refund'),
(75, 'Can delete refund', 19, 'delete_refund'),
(76, 'Can view refund', 19, 'view_refund'),
(77, 'Can add payment', 20, 'add_payment'),
(78, 'Can change payment', 20, 'change_payment'),
(79, 'Can delete payment', 20, 'delete_payment'),
(80, 'Can view payment', 20, 'view_payment'),
(81, 'Can add order item', 21, 'add_orderitem'),
(82, 'Can change order item', 21, 'change_orderitem'),
(83, 'Can delete order item', 21, 'delete_orderitem'),
(84, 'Can view order item', 21, 'view_orderitem'),
(85, 'Can add user profile', 22, 'add_userprofile'),
(86, 'Can change user profile', 22, 'change_userprofile'),
(87, 'Can delete user profile', 22, 'delete_userprofile'),
(88, 'Can view user profile', 22, 'view_userprofile'),
(89, 'Can add comment', 23, 'add_comment'),
(90, 'Can change comment', 23, 'change_comment'),
(91, 'Can delete comment', 23, 'delete_comment'),
(92, 'Can view comment', 23, 'view_comment'),
(93, 'Can add dolloar category', 24, 'add_dolloarcategory'),
(94, 'Can change dolloar category', 24, 'change_dolloarcategory'),
(95, 'Can delete dolloar category', 24, 'delete_dolloarcategory'),
(96, 'Can view dolloar category', 24, 'view_dolloarcategory'),
(97, 'Can add dolloar item', 25, 'add_dolloaritem'),
(98, 'Can change dolloar item', 25, 'change_dolloaritem'),
(99, 'Can delete dolloar item', 25, 'delete_dolloaritem'),
(100, 'Can view dolloar item', 25, 'view_dolloaritem'),
(101, 'Can add canadiantire category', 26, 'add_canadiantirecategory'),
(102, 'Can change canadiantire category', 26, 'change_canadiantirecategory'),
(103, 'Can delete canadiantire category', 26, 'delete_canadiantirecategory'),
(104, 'Can view canadiantire category', 26, 'view_canadiantirecategory'),
(105, 'Can add walmart category', 27, 'add_walmartcategory'),
(106, 'Can change walmart category', 27, 'change_walmartcategory'),
(107, 'Can delete walmart category', 27, 'delete_walmartcategory'),
(108, 'Can view walmart category', 27, 'view_walmartcategory'),
(109, 'Can add target category', 28, 'add_targetcategory'),
(110, 'Can change target category', 28, 'change_targetcategory'),
(111, 'Can delete target category', 28, 'delete_targetcategory'),
(112, 'Can view target category', 28, 'view_targetcategory'),
(113, 'Can add costco category', 29, 'add_costcocategory'),
(114, 'Can change costco category', 29, 'change_costcocategory'),
(115, 'Can delete costco category', 29, 'delete_costcocategory'),
(116, 'Can view costco category', 29, 'view_costcocategory');

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
  `first_name` varchar(150) NOT NULL,
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
(1, 'pbkdf2_sha256$180000$EdWPZ9gPluPd$+CNT5qeWpxaoPiX2w0qeuOJlZ06d0kiG78+b8OpxBGs=', '2021-09-08 12:16:09.338578', 1, 'socr', '', '', 'normanburtonfree@gmail.com', 1, 1, '2021-08-31 04:04:54.600320');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_cart_items`
--

CREATE TABLE `core_cart_items` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `orderitem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_category`
--

CREATE TABLE `core_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
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

--
-- Dumping data for table `core_costcocategory`
--

INSERT INTO `core_costcocategory` (`id`, `parentid`, `name`) VALUES
(1, 0, 'Appliances'),
(2, 0, 'Automotive & Tires'),
(3, 0, 'Baby'),
(4, 0, 'Clothing, Uuggage, & Handbags'),
(5, 0, 'Computers'),
(6, 0, 'Electronics'),
(7, 0, 'Floral & Gift Baskets'),
(8, 0, 'Funeral'),
(9, 0, 'Furniture & Mattresses'),
(10, 0, 'Gift Cards & Tickets'),
(11, 0, 'Grocery & Household'),
(12, 0, 'Health & Beauty'),
(13, 0, 'Home & Kitchen'),
(14, 0, 'Home Improvement'),
(15, 0, 'Jewellery, Watches & Sunglasse'),
(16, 0, 'Office Products'),
(17, 0, 'Patio, Lawn & Garden'),
(18, 0, 'Pet Supplies'),
(19, 0, 'Sports & Fitness'),
(20, 0, 'Toy & Books'),
(21, 8, 'Caskets'),
(22, 8, 'Urns');

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
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_dolloaritem`
--

INSERT INTO `core_dolloaritem` (`id`, `display_name`, `product_id`, `product_images`, `product_full_name`, `product_case_price`, `product_unit_price`, `product_speciation`, `related_product_ID`, `product_specificaions`, `category_id`) VALUES
(85, 'Pencil Case with Zipper (Assorted Colours)\nSTUDIO', '0500706', 'https://www.dollarama.com/images/0500706_0_S.jpg', 'Pencil Case with Zipper (Assorted Colours)', 22.5, 1.25, '[\'Storage for pens and pencils\', \"9\'\' x 4 3/4\'\' (23cm x 12cm)\", \'Assorted colours\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0500706\'}, {\'UPC\': \'667888013821\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 4.75 x 0.50 IN\'}, {\'Weight\': \'0.08 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', 88),
(86, 'All Purpose Canvas Zipper Bag', '3042112', 'https://www.dollarama.com/images/3042112_0_S.jpg', 'All Purpose Canvas Zipper Bag', 48, 2, '[\'Canvas zipper bags\', \'A case contains: 4 red, 4 green, 4 navy, 4 black, 4 light blue and 4 pink bags\', \'11.8\" x 7.3\" (30 cm x 18.5 cm)\', \'Durable nylon and watrer resistant\', \'A case contains 24 zipper bags\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Dollarama Number\': \'3042112\'}, {\'UPC\': \'667888214518\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'11.80 x 7.20 x 0.30 IN\'}, {\'Weight\': \'0.15 LB\'}, {\'\': \'\'}]', 17),
(87, '3 Ring Mesh Binder Pouch - Assorted Colors', '3053291', 'https://www.dollarama.com/images/3053291_0_S.jpg', '3 Ring Mesh Binder Pouch - Assorted Colors', 60, 2.5, '[\'3 Ring mesh binder pouch\', \'A case contains 8 yellow, 8 blue and 8 green binder pouches\', \'9.8\" x 7.3\" (25 cm x 18.5 cm)\', \'A case contains 24 binder pouches\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3048337\', \'3069588\', \'3063193\']', '[{\'Dollarama Number\': \'3053291\'}, {\'UPC\': \'667888261918\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.80 x 7.00 x 0.30 IN\'}, {\'Weight\': \'0.15 LB\'}, {\'\': \'\'}]', 17),
(88, 'Canvas Zip File Bag', '3039518', 'https://www.dollarama.com/images/3039518_0_S.jpg', 'Canvas Zip File Bag', 30, 2.5, '[\'Canvas Zip File Bag With Mesh Zip Pocket\', \'37 x 27 cm (14.6\" x 10.6\" )\', \'Each case contains 3 pink, 3 navy blue, 4 black and 2 red bags\', \'Each case contains 12 bags\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3036744\', \'0502584\', \'0502418\']', '[{\'Dollarama Number\': \'3039518\'}, {\'UPC\': \'667888203383\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'24.80 x 10.63 x 0.50 IN\'}, {\'Weight\': \'0.25 LB\'}, {\'\': \'\'}]', 16),
(89, 'Section Hard Plastic Pencil Case', '3061363', 'https://www.dollarama.com/images/3061363_0_S.jpg', 'Section Hard Plastic Pencil Case', 36, 3, '[\'Hard plastic pencil case\', \'A case has 1 blue, 3 purple, 3 pink and 5 clear pencil cases\', \'9.25\" x 5.7\" x 2.6\" (23.5 cm x 14.5 cm x 6.5 cm)\', \'A case contains 12 pencil cases\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3048337\', \'3069588\', \'3063193\']', '[{\'Dollarama Number\': \'3061363\'}, {\'UPC\': \'667888295845\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 5.50 x 2.40 IN\'}, {\'Weight\': \'0.40 LB\'}, {\'\': \'\'}]', 17),
(90, '4Pk Report Covers', '0502418', 'https://www.dollarama.com/images/0502418_0_S.jpg', '4Pk Report Covers', 15, 1.25, '[\'4PK report covers\', \'A case contains green, red, blue, purple, yellow, orange and pink covers\', \'9\" x 11 1/4\" (23 cm x 28 cm)\', \'A case contains 12 packs of 4 report covers\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3036744\', \'0502584\', \'3039518\']', '[{\'Dollarama Number\': \'0502418\'}, {\'UPC\': \'827112524183, 667888196623\'}, {\'Pieces per Unit\': \'4\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 11.00 x 0.50 IN\'}, {\'Weight\': \'0.27 LB\'}, {\'\': \'\'}]', 16),
(91, '10 Tab Index Dividers', '0502584', 'https://www.dollarama.com/images/0502584_0_S.jpg', '10 Tab Index Dividers', 30, 1.25, '[\'10 tab index dividers\', \'10 insert tabs included with each index divider\', \'9\" x 11\" (23 cm x 28 cm)\', \'A case contains 24 packs of 10 index\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3036744\', \'0502418\', \'3039518\']', '[{\'Dollarama Number\': \'0502584\'}, {\'UPC\': \'827112525845, 827112517550, 667888161942\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.50 x 11.00 x 0.30 IN\'}, {\'Weight\': \'0.30 LB\'}, {\'\': \'\'}]', 16),
(92, 'Plastic Neon Portfolio', '3036744', 'https://www.dollarama.com/images/3036744_0_S.jpg', 'Plastic Neon Portfolio', 45, 1.25, '[\'Plastic neon portfolio\', \'A case contains 9 red portfolios, 12 blue, 9 green and 6 orange\', \'11.4\" x 9.4\" (29.3 cm x 24.1 cm)\', \'A case contains 24 portfolios\', \'\', \'\']', '[\'3035791\', \'3040847\', \'0502584\', \'0502418\', \'3039518\']', '[{\'Dollarama Number\': \'3036744\'}, {\'UPC\': \'667888192427\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'11.40 x 9.45 x 0.30 IN\'}, {\'Weight\': \'0.15 LB\'}, {\'\': \'\'}]', 16),
(93, 'Courier Bag (Assorted Colors)\nSTUDIO', '0502651', 'https://www.dollarama.com/images/0502651_0_S.jpg', 'Courier Bag (Assorted Colors)', 36, 1.5, '[\'With label insert slot\', \'Resistant vinyl cover\', \'15\" x 10.2\" (38.5cm x 26cm)\', \'A case contains equally distributed black, green, burgundy, grey, blue, and brown courrier bags\', \'Assortment may vary from picture\', \'\']', '[\'0502872\', \'0503164\', \'3019482\', \'0502831\', \'0502832\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0502651\'}, {\'UPC\': \'770457020318, 667888156634\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'15.00 x 10.30 x 0.50 IN\'}, {\'Weight\': \'0.18 LB\'}, {\'\': \'\'}]', 85),
(94, 'Masonite Clipboard\nSTUDIO', '0500052', 'https://www.dollarama.com/images/0500052_0_S.jpg', 'Masonite Clipboard', 36, 1.5, '[\'Hard surface\', \'Eases writing anywhere\', \'Holds 8.5\" x 11\" (21.6cm x 29,9cm)\', \'\', \'\', \'\']', '[\'0502651\', \'0501281\', \'3032953\', \'3044364\', \'3044358\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0500052\'}, {\'UPC\': \'57447581326, 667888097395\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 1.60 x 12.60 IN\'}, {\'Weight\': \'0.17 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', 80),
(95, 'Mini Marker set 12PK (Assorted Colours)\nSTUDIO COLOURS', '3033815', 'https://www.dollarama.com/images/3033815_0_S.jpg', 'Mini Marker set 12PK (Assorted Colours)', 45, 1.5, '[\'12 markers per package\', \'Non-toxic\', \'Washable\', \'Assorted colours\', \'Assortment may vary from picture\', \'\']', '[\'3047850\', \'3084887\', \'0502970\', \'3063962\', \'0502200\']', '[{\'Brand\': \'STUDIO COLOURS\'}, {\'Dollarama Number\': \'3033815\'}, {\'UPC\': \'667888179862\'}, {\'Pieces per Unit\': \'12\'}, {\'Packaging Dimensions (L x W x H)\': \'4.70 x 0.70 x 6.30 IN\'}, {\'Weight\': \'0.67 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', 82),
(96, 'Crayons 24PK\nCrayola', '3002707', 'https://www.dollarama.com/images/3002707_0_S.jpg', 'Crayons 24PK', 72, 1.5, '[\'Prefered by teachers\', \'24 crayons per packaging\', \'Non toxic\', \'\', \'\', \'\']', '[\'3047850\', \'3084887\', \'0502970\', \'3063962\', \'0502200\']', '[{\'Brand\': \'Crayola\'}, {\'Dollarama Number\': \'3002707\'}, {\'UPC\': \'71662000240\'}, {\'Pieces per Unit\': \'24\'}, {\'Packaging Dimensions (L x W x H)\': \'2.90 x 1.20 x 4.00 IN\'}, {\'Weight\': \'0.30 LB\'}, {\'\': \'\'}]', 82),
(97, 'Colour Pencil Set 12PK\nSTUDIO', '0501183', 'https://www.dollarama.com/images/0501183_0_S.jpg', 'Colour Pencil Set 12PK', 48, 2, '[\'12 pencils per package\', \'Pre-sharpened\', \'Art quality\', \'Strong leads\', \'Vivid colours\', \'\']', '[\'3047850\', \'3084887\', \'0502970\', \'3063962\', \'0502200\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0501183\'}, {\'UPC\': \'667888013883\'}, {\'Pieces per Unit\': \'12\'}, {\'Packaging Dimensions (L x W x H)\': \'3.60 x 0.50 x 8.40 IN\'}, {\'Weight\': \'0.26 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', 82),
(98, '12PC Washable Markers\nStudio', '3084887', 'https://www.dollarama.com/images/3084887_0_S.jpg', '12PC Washable Markers', 45, 2.5, '[\'Set of 12 washable assorted markers\', \'Safe & non-toxic\', \'A case contains 18 sets of markers\', \'\', \'\', \'\']', '[\'3047850\', \'0502970\', \'3063962\', \'0502200\', \'0501183\']', '[{\'Brand\': \'Studio\'}, {\'Dollarama Number\': \'3084887\'}, {\'UPC\': \'667888404018\'}, {\'Pieces per Unit\': \'12\'}, {\'Packaging Dimensions (L x W x H)\': \'6.50 x 5.00 x 0.50 IN\'}, {\'Weight\': \'0.20 LB\'}, {\'\': \'\'}]', 82),
(99, '24PC of Colour Pencils\nStudio', '3047850', 'https://www.dollarama.com/images/3047850_0_S.jpg', '24PC of Colour Pencils', 54, 3, '[\'Set of 24 pre-sharpened wooden colouring pencils\', \'Safe & non-toxic\', \'A case contains 18 sets of colouring pencils\', \'Fine art quality\', \'Bright colours\', \'\']', '[\'3084887\', \'0502970\', \'3063962\', \'0502200\', \'0501183\']', '[{\'Brand\': \'Studio\'}, {\'Dollarama Number\': \'3047850\'}, {\'UPC\': \'667888237920\'}, {\'Pieces per Unit\': \'24\'}, {\'Packaging Dimensions (L x W x H)\': \'7.00 x 4.00 x 0.50 IN\'}, {\'Weight\': \'0.28 LB\'}, {\'\': \'\'}]', 82),
(100, 'Metal 2 Hole Pencil Sharpener\nStudio', '3073919', 'https://www.dollarama.com/images/3073919_0_S.jpg', 'Metal 2 Hole Pencil Sharpener', 24, 1, '[\'2 Hole pencil sharpener\', \'Each pencil sharpeners are in aluminum\', \'For pens of 1.1 cm and 8 mm\', \'A case contains 24 pencil sharpeners\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3048337\', \'3069588\', \'3063193\']', '[{\'Brand\': \'Studio\'}, {\'Dollarama Number\': \'3073919\'}, {\'UPC\': \'667888354702\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'0.80 x 0.40 x 1.20 IN\'}, {\'Weight\': \'0.03 LB\'}, {\'\': \'\'}]', 17),
(101, 'Pencil Sharpener (Assorted Colours)\nSTUDIO', '3011706', 'https://www.dollarama.com/images/3011706_0_S.jpg', 'Pencil Sharpener (Assorted Colours)', 24, 1, '[\'Practical receptacle\', \'Dual blade\', \'A case contains equaly distributed Red, Blue and Smoke pencil sharpeners\', \'Assortment may vary from picture\', \'\', \'\']', '[\'3035791\', \'3040847\', \'3069588\', \'3069584\', \'3018473\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'3011706\'}, {\'UPC\': \'667888071258\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.50 x 1.10 x 5.50 IN\'}, {\'Weight\': \'0.85 LB\'}, {\'Color\': \'Assorted\'}, {\'Pattern\': \'Solid\'}]', 88),
(102, '205pc Stationery Pin And Clip Set', '3047014', 'https://www.dollarama.com/images/3047014_0_S.jpg', '205pc Stationery Pin And Clip Set', 36, 3, '[\'Paper clip, binder clip and push pins set\', \'Each set contains 30pc of 48mm paper clips; 100pc of 28mm paper clips; 5pc of 25mm binder clips; 70pc of push pins\', \'Each case contains 2 sets of each color: pink, blue, green, purple black & white and light', '[\'3088199\', \'3048337\', \'3069588\', \'3063193\', \'0502418\']', '[{\'Dollarama Number\': \'3047014\'}, {\'UPC\': \'667888235339\'}, {\'Pieces per Unit\': \'1\'}, {\'Weight\': \'173.00 G\'}, {\'\': \'\'}]', 17),
(103, 'Glue Sticks 4PK\nSTUDIO', '0501177', 'https://www.dollarama.com/images/0501177_0_S.jpg', 'Glue Sticks 4PK', 30, 1.25, '[\'4 sticks per package\', \'All purpose\', \'For paper, cardboard, photos, fabric, and more\', \'Non-toxic\', \'Acid-Free\', \'9g per stick\']', '[\'0501820\', \'0501821\', \'0501557\', \'0502341\', \'3081943\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0501177\'}, {\'UPC\': \'667888013876\'}, {\'Pieces per Unit\': \'4\'}, {\'Packaging Dimensions (L x W x H)\': \'3.90 x 1.60 x 6.20 IN\'}, {\'Weight\': \'0.30 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', 90),
(104, 'White Glue 3PK\nSTUDIO', '0502341', 'https://www.dollarama.com/images/0502341_0_S.jpg', 'White Glue 3PK', 30, 1.25, '[\'3 bottles per package\', \'All purpose\', \'Glues paper, cardboard and fabric\', \'Dries clear\', \'Non-toxic\', \'Washable\']', '[\'0501820\', \'0501821\', \'0501557\', \'3081943\', \'3069918\']', '[{\'Brand\': \'STUDIO\'}, {\'Dollarama Number\': \'0502341\'}, {\'UPC\': \'667888061402\'}, {\'Pieces per Unit\': \'3\'}, {\'Packaging Dimensions (L x W x H)\': \'6.90 x 0.90 x 7.50 IN\'}, {\'Weight\': \'0.63 LB\'}, {\'Color\': \'Solid\'}, {\'Pattern\': \'Solid\'}]', 90),
(105, 'Transparent School Glue (147ml)\nELMER\'S', '3081943', 'https://www.dollarama.com/images/3081943_0_S.jpg', 'Transparent School Glue (147ml)', 16, 2, '[\'Goes on clear and dries clear\', \'Ideal for paper\', \'Washable\', \'Non-toxic\', \'147ml\', \'\']', '[\'0501820\', \'0501821\', \'0501557\', \'0502341\', \'3069918\']', '[{\'Brand\': \"ELMER\'S\"}, {\'Dollarama Number\': \'3081943\'}, {\'UPC\': \'61550603059\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'2.60 x 1.35 x 5.80 IN\'}, {\'Weight\': \'0.38 LB\'}, {\'\': \'\'}]', 90),
(106, 'School Glue\nELMER\'S', '3069918', 'https://www.dollarama.com/images/3069918_0_S.jpg', 'School Glue', 20, 2.5, '[\'225mL\', \'Washable\', \'Non-toxic\', \'No run formula\', \'#1 Teacher brand\', \'\']', '[\'0501820\', \'0501821\', \'0501557\', \'0502341\', \'3081943\']', '[{\'Brand\': \"ELMER\'S\"}, {\'Dollarama Number\': \'3069918\'}, {\'UPC\': \'61550603103\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'3.00 x 1.40 x 7.25 IN\'}, {\'Weight\': \'0.58 LB\'}, {\'\': \'\'}]', 90),
(107, 'Basket with Chalkboard Decal and Handles', '3071008', 'https://www.dollarama.com/images/3071008_0_S.jpg', 'Basket with Chalkboard Decal and Handles', 36, 1.5, '[\'Plastic rectangular basket with chalkboard decal and handles\', \'26.7 x 20.6 x 12.2 cm\', \'Each case contains 6 red, 6 green, 6 blue and 6 pink baskets\', \'Each case contains 24 baskets\', \'\', \'\']', '[\'3080290\', \'3023423\', \'3055751\', \'3080451\', \'3020237\']', '[{\'Dollarama Number\': \'3071008\'}, {\'UPC\': \'667888338788\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'10.50 x 8.11 x 5.20 IN\'}, {\'Weight\': \'0.25 LB\'}, {\'\': \'\'}]', 18),
(108, 'Plastic Kiddie Caddy', '3069584', 'https://www.dollarama.com/images/3069584_0_S.jpg', 'Plastic Kiddie Caddy', 48, 2, '[\'Plastic Caddy\', \'9\" x 9\" x 3.5\" (23 cm x 23 cm x 9 cm)\', \'A case contains 6 red, 6 blue, 6 green and 6 yellow caddies\', \'A case contains 24 caddies\', \'\', \'\']', '[\'3080290\', \'3023423\', \'3055751\', \'3080451\', \'3071008\']', '[{\'Dollarama Number\': \'3069584\'}, {\'UPC\': \'667888333295\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'9.00 x 9.30 x 3.50 IN\'}, {\'Weight\': \'0.42 LB\'}, {\'\': \'\'}]', 18),
(109, '5PK Interlocking Pencil Trays', '3069588', 'https://www.dollarama.com/images/3069588_0_S.jpg', '5PK Interlocking Pencil Trays', 60, 2.5, '[\'5 Plastic interlocking pencil trays\', \'\', \'8.9\" x 3\" x 2\" (22.5 cm x 7.5 cm x 4.9 cm)\', \'A case has 24 packs of 5 pencil trays\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3048337\', \'3063193\', \'0502418\']', '[{\'Dollarama Number\': \'3069588\'}, {\'UPC\': \'667888333325\'}, {\'Pieces per Unit\': \'5\'}, {\'Packaging Dimensions (L x W x H)\': \'8.90 x 3.00 x 1.90 IN\'}, {\'Weight\': \'0.50 LB\'}, {\'\': \'\'}]', 17),
(110, 'Multi-purpose Basket\nPlastico', '3020237', 'https://www.dollarama.com/images/3020237_0_S.jpg', 'Multi-purpose Basket', 30, 2.5, '[\'Rectangular plastic basket\', \'Flared edges and with handles\', \'14.25\" x 10.25\" x 2.38\" (36.2 x 26 x 11.11cm)\', \'Assorted colours: 6 white, 3 grey and 3 blue\', \'A case contains 12 baskets\', \'\']', '[\'3042230\', \'3012493\', \'3011425\', \'3060334\', \'3037752\']', '[{\'Brand\': \'Plastico\'}, {\'Dollarama Number\': \'3020237\'}, {\'UPC\': \'667888117659\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'14.25 x 10.25 x 4.38 IN\'}, {\'Weight\': \'0.70 LB\'}, {\'\': \'\'}]', 53),
(111, '8 PK Interlocking Drawer Organizers - Assorted Sizes', '3080290', 'https://www.dollarama.com/images/3080290_0_S.jpg', '8 PK Interlocking Drawer Organizers - Assorted Sizes', 48, 4, '[\'A packs has 8 interlocking plastic drawer organizers\', \'PP plastic with 5% CaCo3\', \'Each pack comes in assorted sizes; 2 large: 23.5 x 15.5 x 5 cm; 3 medium 23.5 x 7.5 x 5 cm; 3 small: 7.5 x 7.5 x 5 cm\', \'Each case contains 3 packs in white, 3 black and', '[\'3023423\', \'3055751\', \'3080451\', \'3071008\', \'3020237\']', '[{\'Dollarama Number\': \'3080290\'}, {\'UPC\': \'667888383580\'}, {\'Pieces per Unit\': \'8\'}, {\'Packaging Dimensions (L x W x H)\': \'1.00 x 1.00 x 1.00 IN\'}, {\'Weight\': \'0.30 LB\'}, {\'\': \'\'}]', 18),
(112, 'Magnetic Dry Erase Board', '3063193', 'https://www.dollarama.com/images/3063193_0_S.jpg', 'Magnetic Dry Erase Board', 27, 1.5, '[\'Magnetic dry erase board\', \'8.5\" x 11\" (20 cm x 28 cm)\', \'Each board contains a dry erase pen\', \'A case contains 18 boards\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3048337\', \'3069588\', \'0502418\']', '[{\'Dollarama Number\': \'3063193\'}, {\'UPC\': \'667888302970\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'8.50 x 11.00 x 0.50 IN\'}, {\'Weight\': \'0.30 LB\'}, {\'\': \'\'}]', 17),
(113, '100 PK Neon Colored Wide Ruled Filler Paper', '3056384', 'https://www.dollarama.com/images/3056384_0_S.jpg', '100 PK Neon Colored Wide Ruled Filler Paper', 63, 3.5, '[\'Neon colored wide ruled filler paper\', \'8\" x 10.5\" (20.3 cm x 26.6 cm)\', \'Each pack contains 25 pink sheets, 25 blue, 25 green and 25 yellow\', \'Each case contains 18 packs\', \'\', \'\']', '[\'3088199\', \'3047014\', \'3048337\', \'3069588\', \'3063193\']', '[{\'Dollarama Number\': \'3056384\'}, {\'UPC\': \'667888274215\'}, {\'Pieces per Unit\': \'1\'}, {\'Packaging Dimensions (L x W x H)\': \'8.00 x 10.50 x 1.00 IN\'}, {\'Weight\': \'0.20 LB\'}, {\'\': \'\'}]', 17);

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
  `item_category_id` int(11) NOT NULL,
  `description` longtext NOT NULL
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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_payment`
--

CREATE TABLE `core_payment` (
  `id` int(11) NOT NULL,
  `stripe_charge_id` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ssl_charge_id` varchar(50) DEFAULT NULL
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
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_targetcategory`
--

INSERT INTO `core_targetcategory` (`id`, `parentid`, `name`) VALUES
(1, 0, 'Black-Owned or Founded'),
(2, 0, 'Ready for School'),
(3, 0, 'College'),
(4, 0, 'Grocery'),
(5, 0, 'Household Essentials'),
(6, 0, 'Women'),
(7, 0, 'Men'),
(8, 0, 'Young Adult'),
(9, 0, 'Kids'),
(10, 0, 'Shoes'),
(11, 0, 'Baby'),
(12, 0, 'Home'),
(13, 0, 'Furniture'),
(14, 0, 'Kitchen & Dining'),
(15, 0, 'Patio & Garden'),
(16, 0, 'Toys'),
(17, 0, 'Electronics'),
(18, 0, 'Video Games'),
(19, 0, 'Movies, Music & Books'),
(20, 0, 'Sports & Outdoors'),
(21, 0, 'Beauty'),
(22, 0, 'Personal Care'),
(23, 0, 'Health'),
(24, 0, 'Pets'),
(25, 0, 'Luggage'),
(26, 0, 'School & Office Supplies'),
(27, 0, 'Party Supplies'),
(28, 0, 'Bullseye\'s Playground'),
(29, 0, 'Gift Ideas'),
(30, 0, 'Clearance'),
(38, 4, 'Produce'),
(39, 4, 'Beverages'),
(40, 4, 'Meta & Seafood'),
(41, 4, 'Dairy'),
(42, 4, 'Breakfast & Cereal'),
(43, 4, 'Wine, Beer & Liquor'),
(44, 4, 'Pantry'),
(45, 4, 'Snacks'),
(46, 4, 'Frozen Foods'),
(47, 4, 'Bakery & Bread'),
(48, 4, 'Candy'),
(49, 4, 'Coffee'),
(50, 4, 'Deli'),
(51, 4, 'Game Day Snacks'),
(52, 4, 'On the Go Snacks'),
(53, 38, 'Fresh Fruit'),
(54, 38, 'Fresh Vegetables'),
(55, 38, 'Salad Mixes'),
(56, 38, 'Fresh Dressings & Dips'),
(57, 38, 'Fresh Juices'),
(58, 38, 'Meatless Alternatives'),
(59, 39, 'Soda & Pop'),
(60, 39, 'Water'),
(61, 39, 'Cocktail Mixers'),
(62, 39, 'Juice & Cider'),
(63, 39, 'Tea'),
(64, 39, 'Wine, Beer & Liquor'),
(65, 39, 'Energy & Sports Drinks'),
(66, 39, 'Cocoa'),
(67, 39, 'Coffee'),
(68, 39, 'Powdered & Liquid Drink Mixes'),
(69, 39, 'Protein & Meal Replacement Dri'),
(70, 40, 'Chicken'),
(71, 40, 'Turkey'),
(72, 40, 'Beef'),
(73, 40, 'Packaged Lunch Meat'),
(74, 40, 'Sliced Deli Meat & Deli Cheese'),
(75, 40, 'Pork'),
(76, 40, 'Bacon'),
(77, 40, 'Fish & Seafood'),
(78, 40, 'Hot Dogs'),
(79, 40, 'Meatless Alternatives'),
(80, 40, 'Sausages'),
(81, 40, 'Specialty Meats'),
(82, 41, 'Cottage Cheese'),
(83, 41, 'Cream & Whipped Toppings'),
(84, 41, 'Cream Cheese'),
(85, 41, 'Refrigerated Doughs'),
(86, 41, 'Sour Cream & Dips'),
(87, 41, 'Milk'),
(88, 41, 'Milk Substitutes'),
(89, 41, 'Cheese'),
(90, 41, 'Eggs'),
(91, 41, 'Yogurt'),
(92, 41, 'Butter & Margarine'),
(93, 41, 'Coffee Creamers'),
(94, 42, 'Granola & Cereal Bars'),
(95, 42, 'Cereal & Granola'),
(96, 42, 'Pancake Mixes, Waffle Mixes & '),
(97, 42, 'Toaster Pastries'),
(98, 43, 'Wine'),
(99, 43, 'Beer'),
(100, 43, 'Cocktail Mixers'),
(101, 43, 'Liquor'),
(102, 43, 'Hard Seltzers'),
(103, 43, 'Ready To Drink Cocktails'),
(104, 43, 'Hard Ciders'),
(105, 44, 'Canned & Packaged Foods'),
(106, 44, 'Boxed Meals & Side Dishes'),
(107, 44, 'Soups, Broth & Chili'),
(108, 44, 'Pasta, Rice & Grains'),
(109, 44, 'Sauces, Salsa & Marinades'),
(110, 44, 'Condiments & Salad Dressings'),
(111, 44, 'Peanut Butter & Jelly'),
(112, 44, 'Baking Staples'),
(113, 44, 'Cooking Oil & Vinegar'),
(114, 44, 'Spices & Seasonings'),
(115, 44, 'Sugar & Sweeteners'),
(116, 44, 'Emergency Food'),
(117, 105, 'Canned Fruit'),
(118, 105, 'Canned Vegetables'),
(119, 105, 'Canned Meat'),
(120, 105, 'Canned Tuna & Seafood'),
(121, 105, 'Olives, Pickles & Peppers'),
(122, 112, 'Dried Fruit & Raisins'),
(123, 112, 'Baking Chips & Cocoa'),
(124, 112, 'Baking Mixes'),
(125, 112, 'Baking Powder, Baking Soda & Yeast'),
(126, 112, 'Condensed & Powdered Milk'),
(127, 112, 'Extracts & Food Coloring'),
(128, 112, 'Flours & Meals'),
(129, 112, 'Frosting & Icing'),
(130, 112, 'Gelatin & Pudding'),
(131, 112, 'Marshmallows'),
(132, 112, 'Nuts & Coconut'),
(133, 112, 'Pie Crusts & Filling'),
(134, 112, 'Sprinkles, Candles & Decorations'),
(135, 112, 'Sugar & Sweeteners'),
(136, 112, 'Syrups & Sauces'),
(137, 114, 'Breadcrumbs & Seasoned Coatings'),
(138, 114, 'Herbs, Rubs & Spices'),
(139, 114, 'Salt & Pepper'),
(140, 45, 'Chips'),
(141, 45, 'Cookies'),
(142, 45, 'Crackers'),
(143, 45, 'Nuts'),
(144, 45, 'Trail & Snack Mixes'),
(145, 45, 'Pretzels'),
(146, 45, 'Popcorn'),
(147, 45, 'Fruit Snacks'),
(148, 45, 'Dried Fruit & Raisins'),
(149, 45, 'Granola & Cereal Bars'),
(150, 45, 'Jerky & Meat Sticks'),
(151, 45, 'Applesauce & Fruit Cups'),
(152, 45, 'Gelatin & Pudding'),
(153, 45, 'Salsa & Dips'),
(154, 45, 'Snack Cakes'),
(155, 46, 'Frozen Meals & Entrees'),
(156, 46, 'Frozen Pizza'),
(157, 46, 'Frozen Meat, Poultry, & Seafood'),
(158, 46, 'Frozen Vegetables'),
(159, 46, 'Frozen Fruit'),
(160, 46, 'Ice Cream & Frozen Dairy Desserts'),
(161, 46, 'Frozen Potatoes'),
(162, 46, 'Frozen Bread & Dough'),
(163, 46, 'Frozen Appetizers & Snacks'),
(164, 46, 'Frozen Breakfast Food'),
(165, 46, 'Frozen Desserts'),
(166, 157, 'Frozen Chicken'),
(167, 157, 'Frozen Beef'),
(168, 157, 'Frozen Fish & Seafood'),
(169, 157, 'Frozen Turkey'),
(170, 157, 'Frozen Meatless Alternatives'),
(171, 47, 'Breads'),
(172, 47, 'Rolls & Muffins'),
(173, 47, 'Cakes, Cookies & Pies'),
(174, 47, 'Tortillas, Pitas & Wraps'),
(175, 47, 'Donuts & Pastries'),
(176, 47, 'Pizza Crusts'),
(177, 47, 'Snack Cakes'),
(178, 47, ''),
(179, 48, 'Chocolate Candy'),
(180, 48, 'Gum & Mints'),
(181, 48, 'Gummy & Chewy Candy'),
(182, 48, 'Hard Candy'),
(183, 49, 'K-cups & Coffee Pods'),
(184, 49, 'Ground Coffee'),
(185, 49, 'Whole Bean Coffee'),
(186, 49, 'Bottled Coffee Drinks'),
(187, 49, 'Coffee Creamers'),
(188, 49, 'Cold Brew Coffee'),
(189, 49, 'Instant Coffee'),
(190, 50, 'Artisan Cheese & Cured Meats'),
(191, 50, 'Packaged Lunch Meat'),
(192, 50, 'Sliced Deli Meat & Deli Cheese'),
(193, 50, 'Fresh Soups'),
(194, 50, 'Fresh Dips, Salsas & Hummus'),
(195, 50, 'Meal Kits'),
(196, 50, 'Party Trays'),
(197, 50, 'Prepared Meals & Sides'),
(198, 50, 'Prepared Salads & Sandwiches'),
(199, 50, 'Snack Packs & On the Go Snacks'),
(200, 5, 'Bulk Items'),
(201, 5, 'Toilet Paper'),
(202, 5, 'Cleaning Supplies'),
(203, 5, 'Laundry Care'),
(204, 5, 'Paper & Plastic Products'),
(205, 5, 'Dish Detegents'),
(206, 5, 'Hand Soap & Sanitizers'),
(207, 5, 'Air Fresheners'),
(208, 5, 'Natural Cleaning'),
(209, 5, 'Paper Towels'),
(210, 5, 'Trash Bags'),
(211, 5, 'Disposable Tableware'),
(212, 5, 'Facial Tissue'),
(213, 5, 'Food Storage Bags & Containers'),
(214, 5, 'Napkins'),
(215, 5, 'Insect & Pest Control'),
(216, 202, 'All-purpose Cleaners'),
(217, 202, 'Cleaning Tools'),
(218, 202, 'Cleaning Wipes'),
(219, 202, 'Floor Care'),
(220, 202, 'Laundry Care'),
(221, 202, 'Bathroom Cleaners'),
(222, 202, 'Dish Detergents'),
(223, 202, 'Hand Soap & Sanitizers'),
(224, 202, 'Natural Cleaning'),
(225, 202, 'Vacuums & Floor Cleaning'),
(226, 202, 'Kitchen Cleaners'),
(227, 202, 'Glass Cleaners'),
(228, 220, 'Laundry Detergent'),
(229, 220, 'Fabric Softener'),
(230, 220, 'Scent Boosters'),
(231, 220, 'Bleach'),
(232, 220, 'Sanitizers'),
(233, 220, 'Dryer Sheets'),
(234, 220, 'Stain Removers'),
(235, 220, 'Baby Laundry Care'),
(236, 220, 'Lint Rollers'),
(237, 223, 'Hand Sanitizer'),
(238, 223, 'Hand Soap'),
(239, 223, 'Bar Soap'),
(240, 223, 'Hand Soap Refills'),
(241, 223, 'Hand Wipes'),
(242, 225, 'Canister Vacuums'),
(243, 225, 'Carpet Cleaner Machines'),
(244, 225, 'Floor Care Accessories'),
(245, 225, 'Handheld Vacuums'),
(246, 225, 'Robot Vacuums'),
(247, 225, 'Steam Mops & Steam Cleaners'),
(248, 225, 'Stick Vacuums'),
(249, 225, 'Sweepers'),
(250, 225, 'Upright Vacuums'),
(251, 225, 'Wet/dry & Shop Vacuumss'),
(252, 204, 'Toilet Paper'),
(253, 204, 'Paper Towels'),
(254, 204, 'Trash Bags'),
(255, 204, 'Disposable Tableware'),
(256, 204, 'Facial Tissue'),
(257, 204, 'Napkins'),
(258, 6, 'Womens\'s Clothing'),
(259, 6, 'Maternity Clothing'),
(260, 6, 'Swimsuits'),
(261, 6, 'Women\'s Accessories'),
(262, 6, 'Women\'s Handbags'),
(263, 6, 'Women\'s Jewelry'),
(264, 6, 'Women\'s Shoes'),
(265, 258, 'Activewear'),
(266, 258, 'Coats & Jackets'),
(267, 258, 'Dresses'),
(268, 258, 'Jeans'),
(269, 258, 'Jumpsuits & Rompers'),
(270, 258, 'Leggings'),
(271, 258, 'Pajamas & Loungewear'),
(272, 258, 'Pants'),
(273, 258, 'Shirts & Blouses'),
(274, 258, 'Shorts'),
(275, 258, 'Skirts'),
(276, 258, 'Socks & Hosiery'),
(277, 258, 'Sweaters'),
(278, 258, 'Sweatshirts & Sweatpants'),
(279, 258, 'Swimsuits'),
(280, 258, 'Tees & Tanks'),
(281, 258, 'Tops'),
(282, 258, 'Womes\'s Shoes'),
(283, 258, 'Intimates'),
(284, 258, 'Travelwear & Commute'),
(285, 265, 'Sports Bars'),
(286, 265, 'Workout Bottoms'),
(287, 265, 'Workout Tops'),
(288, 265, 'Athletic Coats & Jackets'),
(289, 265, 'Athletic Sweatshirts'),
(290, 265, 'Maternity Activewear'),
(291, 265, 'Active Swimsuits'),
(292, 265, 'Travelwear & Commute'),
(293, 265, 'Exercise & Fitness'),
(294, 286, 'Workout Shorts & Skirts'),
(295, 286, 'Workout Leggings'),
(296, 286, 'Workout Pants'),
(308, 299, 'Sports Supplements'),
(309, 299, 'Weight Loss Supplements'),
(310, 270, 'Pajama Bottoms'),
(311, 270, 'Pajama Sets'),
(312, 270, 'Pajama Tops'),
(313, 270, 'Loungewear'),
(314, 270, 'Nightgowns & Sleep Shirts'),
(315, 270, 'Robes'),
(317, 279, 'Bikinis'),
(318, 279, 'One-Piece Swimsuits'),
(319, 279, 'Tankinis'),
(320, 279, 'Bikini Bottoms'),
(321, 279, 'Swimsuit Tops'),
(322, 279, 'Active Swimsuits'),
(323, 279, 'Bra Sized Swimwear'),
(324, 279, 'Swimsuit Coverups'),
(325, 279, 'Slimming Swimsuits'),
(326, 279, 'Swimsuit Dresses'),
(327, 279, 'Juniors\' Swimsuits'),
(328, 279, 'Post-Mastectomy Swimsuits'),
(329, 280, 'Basic Tees & Tanks'),
(330, 280, 'Graphic Tees'),
(331, 282, 'Slippers'),
(332, 282, 'Boots'),
(333, 282, 'Flats'),
(334, 282, 'Heels & Pumps'),
(335, 282, 'Loafers'),
(336, 282, 'Mules & Clogs'),
(337, 282, 'Sandals'),
(338, 282, 'Sneakers & Athletic Shoes'),
(339, 282, 'Wedges'),
(340, 332, 'Ankle Boots'),
(341, 332, 'Winter Boots'),
(342, 332, 'Tall Boots'),
(343, 332, 'Dress Boots'),
(344, 332, 'Hiking Boots & Shoes'),
(345, 332, 'Rain Boots'),
(346, 332, 'Work Boots & Work Shoes'),
(347, 337, 'Flip Flops'),
(348, 337, 'Footbed Sandals'),
(349, 337, 'Gladiator Sandals'),
(350, 337, 'Slide Sandals'),
(351, 337, 'Thong Sandals'),
(352, 337, 'Wedge Sandals'),
(353, 283, 'Bras'),
(354, 283, 'Underwear'),
(355, 283, 'Thermal Underwear'),
(356, 283, 'Slips & Shapewear'),
(357, 283, 'Nursing & Maternity Intimates');

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

-- --------------------------------------------------------

--
-- Table structure for table `core_walmartcategory`
--

CREATE TABLE `core_walmartcategory` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_walmartcategory`
--

INSERT INTO `core_walmartcategory` (`id`, `parentid`, `name`) VALUES
(1, 0, 'Furniture'),
(2, 0, 'Electronics'),
(3, 0, 'Home'),
(4, 0, 'Bags & accessories'),
(5, 0, 'Women\'s clothing'),
(6, 0, 'Video games'),
(7, 0, 'Toys'),
(8, 0, 'Shoes'),
(9, 0, 'Boy\'s clothing'),
(10, 0, 'Baby clothing');

-- --------------------------------------------------------

--
-- Table structure for table `crudapp_contact`
--

CREATE TABLE `crudapp_contact` (
  `id` bigint(20) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL
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
(1, '2021-09-04 13:42:46.256743', '16', 'Notebooks and Folders', 1, '[{\"added\": {}}]', 24, 1),
(2, '2021-09-04 13:43:22.454275', '17', 'Stationery', 1, '[{\"added\": {}}]', 24, 1),
(3, '2021-09-04 13:43:34.991530', '18', 'Storage', 1, '[{\"added\": {}}]', 24, 1),
(4, '2021-09-04 13:44:23.416921', '19', 'All Purpose Cleaners', 1, '[{\"added\": {}}]', 24, 1),
(5, '2021-09-04 13:44:38.277433', '20', 'Cleaning Gloves', 1, '[{\"added\": {}}]', 24, 1),
(6, '2021-09-04 13:44:56.300563', '21', 'Cleaning Tools', 1, '[{\"added\": {}}]', 24, 1),
(7, '2021-09-04 13:45:10.736093', '22', 'Dishwashing Detergents', 1, '[{\"added\": {}}]', 24, 1),
(8, '2021-09-04 13:45:24.005945', '23', 'Garbage Bags', 1, '[{\"added\": {}}]', 24, 1),
(9, '2021-09-04 13:45:41.862901', '24', 'Laundry Supplies', 1, '[{\"added\": {}}]', 24, 1),
(10, '2021-09-04 13:45:55.499328', '25', 'Mopping & Sweeping', 1, '[{\"added\": {}}]', 24, 1),
(11, '2021-09-04 13:46:10.858668', '26', 'Toilet Brushes & Cleaners', 1, '[{\"added\": {}}]', 24, 1),
(12, '2021-09-04 13:46:25.744026', '27', 'Wipes, Cloths & Sponges', 1, '[{\"added\": {}}]', 24, 1),
(13, '2021-09-04 13:47:14.759894', '28', 'Batteries', 1, '[{\"added\": {}}]', 24, 1),
(14, '2021-09-04 13:47:27.821679', '29', 'Earphones & Headphones', 1, '[{\"added\": {}}]', 24, 1),
(15, '2021-09-04 13:47:40.650735', '30', 'Mobile Accessories', 1, '[{\"added\": {}}]', 24, 1),
(16, '2021-09-04 13:47:56.109460', '31', 'Television & Computer Accessor', 1, '[{\"added\": {}}]', 24, 1),
(17, '2021-09-04 13:48:31.289975', '32', 'Basics', 1, '[{\"added\": {}}]', 24, 1),
(18, '2021-09-04 13:48:52.951877', '33', 'Beverages', 1, '[{\"added\": {}}]', 24, 1),
(19, '2021-09-04 13:49:08.868716', '34', 'Chocolate', 1, '[{\"added\": {}}]', 24, 1),
(20, '2021-09-04 13:49:29.905248', '35', 'Gum & Candy', 1, '[{\"added\": {}}]', 24, 1),
(21, '2021-09-04 13:49:43.541368', '36', 'Snacks & Sweets', 1, '[{\"added\": {}}]', 24, 1),
(22, '2021-09-04 13:50:31.150594', '37', 'Construction Gloves', 1, '[{\"added\": {}}]', 24, 1),
(23, '2021-09-04 13:50:44.545886', '38', 'Hardware Tapes', 1, '[{\"added\": {}}]', 24, 1),
(24, '2021-09-04 13:50:56.908137', '39', 'Lighting & Electrical', 1, '[{\"added\": {}}]', 24, 1),
(25, '2021-09-04 13:51:08.763227', '40', 'Painting', 1, '[{\"added\": {}}]', 24, 1),
(26, '2021-09-04 13:51:22.051166', '41', 'Protection', 1, '[{\"added\": {}}]', 24, 1),
(27, '2021-09-04 13:51:37.201974', '42', 'Ropes, Tie wraps & Tie downs', 1, '[{\"added\": {}}]', 24, 1),
(28, '2021-09-04 13:51:50.879585', '43', 'Tools & Equipment', 1, '[{\"added\": {}}]', 24, 1),
(29, '2021-09-04 13:52:59.043171', '44', 'Baby Care', 1, '[{\"added\": {}}]', 24, 1),
(30, '2021-09-04 13:53:11.112767', '45', 'COVID-19', 1, '[{\"added\": {}}]', 24, 1),
(31, '2021-09-04 13:53:24.084188', '46', 'Dental Care', 1, '[{\"added\": {}}]', 24, 1),
(32, '2021-09-04 13:53:38.028262', '47', 'Hair Care', 1, '[{\"added\": {}}]', 24, 1),
(33, '2021-09-04 13:53:58.457465', '48', 'Handsoaps & Creams', 1, '[{\"added\": {}}]', 24, 1),
(34, '2021-09-04 13:54:11.061814', '49', 'Handsoaps & Creams', 1, '[{\"added\": {}}]', 24, 1),
(35, '2021-09-04 13:54:43.811735', '49', 'Handsoaps & Creams', 3, '', 24, 1),
(36, '2021-09-04 13:55:03.300243', '50', 'Personal Care', 1, '[{\"added\": {}}]', 24, 1),
(37, '2021-09-04 13:55:16.103361', '51', 'Pharmacy', 1, '[{\"added\": {}}]', 24, 1),
(38, '2021-09-04 13:55:27.974555', '52', 'Travel Accessories', 1, '[{\"added\": {}}]', 24, 1),
(39, '2021-09-04 13:56:10.780296', '53', 'Baskets', 1, '[{\"added\": {}}]', 24, 1),
(40, '2021-09-04 13:56:23.642979', '54', 'Bathroom Accessories', 1, '[{\"added\": {}}]', 24, 1),
(41, '2021-09-04 13:56:36.846075', '55', 'Bedroom Accessories', 1, '[{\"added\": {}}]', 24, 1),
(42, '2021-09-04 13:56:50.926777', '56', 'Candles', 1, '[{\"added\": {}}]', 24, 1),
(43, '2021-09-04 13:57:02.276607', '57', 'Closet & Storage', 1, '[{\"added\": {}}]', 24, 1),
(44, '2021-09-04 13:57:14.847082', '58', 'Floor Mats', 1, '[{\"added\": {}}]', 24, 1),
(45, '2021-09-04 13:57:29.833360', '59', 'Home Decor', 1, '[{\"added\": {}}]', 24, 1),
(46, '2021-09-04 13:57:42.404050', '60', 'Household Essentials', 1, '[{\"added\": {}}]', 24, 1),
(47, '2021-09-04 13:58:00.335984', '61', 'Photo Frames', 1, '[{\"added\": {}}]', 24, 1),
(48, '2021-09-04 13:58:14.071697', '62', 'Vases & Flowers', 1, '[{\"added\": {}}]', 24, 1),
(49, '2021-09-04 13:58:50.334406', '63', 'Bakeware & Cookware', 1, '[{\"added\": {}}]', 24, 1),
(50, '2021-09-04 13:59:03.321454', '64', 'Basics', 1, '[{\"added\": {}}]', 24, 1),
(51, '2021-09-04 14:01:12.279793', '65', 'Cutlery & Tabletop', 1, '[{\"added\": {}}]', 24, 1),
(52, '2021-09-04 14:01:28.755037', '66', 'Linens & Towels', 1, '[{\"added\": {}}]', 24, 1),
(53, '2021-09-04 14:01:42.695088', '67', 'Storage Containers', 1, '[{\"added\": {}}]', 24, 1),
(54, '2021-09-04 14:01:57.758564', '68', 'Wraps & Storage Bags', 1, '[{\"added\": {}}]', 24, 1),
(55, '2021-09-04 14:02:33.655013', '69', 'Balloons & Accessories', 1, '[{\"added\": {}}]', 24, 1),
(56, '2021-09-04 14:02:45.443408', '70', 'Decoration', 1, '[{\"added\": {}}]', 24, 1),
(57, '2021-09-04 14:02:58.979689', '71', 'Disposable Cutlery, Straws & N', 1, '[{\"added\": {}}]', 24, 1),
(58, '2021-09-04 14:03:14.022858', '72', 'Disposable Glasses', 1, '[{\"added\": {}}]', 24, 1),
(59, '2021-09-04 14:03:27.217444', '73', 'Disposable Plates & Bowls', 1, '[{\"added\": {}}]', 24, 1),
(60, '2021-09-04 14:03:45.598903', '74', 'Disposable Tablecloths', 1, '[{\"added\": {}}]', 24, 1),
(61, '2021-09-04 14:04:02.506623', '75', 'Tissues, Bags & Wraps', 1, '[{\"added\": {}}]', 24, 1),
(62, '2021-09-04 14:04:27.172594', '76', 'Birds', 1, '[{\"added\": {}}]', 24, 1),
(63, '2021-09-04 14:04:37.670724', '77', 'Cats', 1, '[{\"added\": {}}]', 24, 1),
(64, '2021-09-04 14:05:18.062363', '78', 'Dog Care & Toys', 1, '[{\"added\": {}}]', 24, 1),
(65, '2021-09-04 14:05:30.051544', '79', 'Dog Treats & Food', 1, '[{\"added\": {}}]', 24, 1),
(66, '2021-09-04 14:06:50.633881', '80', 'Binders & Organizers', 1, '[{\"added\": {}}]', 24, 1),
(67, '2021-09-04 14:07:02.784089', '81', 'Calendars & Planners', 1, '[{\"added\": {}}]', 24, 1),
(68, '2021-09-04 14:07:15.234294', '82', 'Colouring', 1, '[{\"added\": {}}]', 24, 1),
(69, '2021-09-04 14:07:26.613752', '83', 'Craft Basics', 1, '[{\"added\": {}}]', 24, 1),
(70, '2021-09-04 14:07:40.311663', '84', 'Craft Painting', 1, '[{\"added\": {}}]', 24, 1),
(71, '2021-09-04 14:07:54.457041', '85', 'Mailing', 1, '[{\"added\": {}}]', 24, 1),
(72, '2021-09-04 14:08:08.812373', '86', 'Notebooks', 1, '[{\"added\": {}}]', 24, 1),
(73, '2021-09-04 14:08:20.851228', '87', 'Pencils, Pens & Markers', 1, '[{\"added\": {}}]', 24, 1),
(74, '2021-09-04 14:08:35.085755', '88', 'School & Office Basics', 1, '[{\"added\": {}}]', 24, 1),
(75, '2021-09-04 14:08:47.624583', '89', 'Sketching & Presentation', 1, '[{\"added\": {}}]', 24, 1),
(76, '2021-09-04 14:09:06.372082', '90', 'Tapes & Glues', 1, '[{\"added\": {}}]', 24, 1),
(77, '2021-09-04 14:09:57.901930', '91', 'Accessories', 1, '[{\"added\": {}}]', 24, 1),
(78, '2021-09-04 14:10:13.678069', '92', 'Crafts', 1, '[{\"added\": {}}]', 24, 1),
(79, '2021-09-04 14:10:23.127134', '93', 'Flags', 1, '[{\"added\": {}}]', 24, 1),
(80, '2021-09-04 14:10:51.040790', '94', 'BBQ and Picnic', 1, '[{\"added\": {}}]', 24, 1),
(81, '2021-09-04 14:11:12.010418', '95', 'Camping', 1, '[{\"added\": {}}]', 24, 1),
(82, '2021-09-04 14:11:30.207974', '96', 'Fences', 1, '[{\"added\": {}}]', 24, 1),
(83, '2021-09-04 14:11:41.305112', '97', 'Garden', 1, '[{\"added\": {}}]', 24, 1),
(84, '2021-09-04 14:11:54.474959', '98', 'Outdoor Lights', 1, '[{\"added\": {}}]', 24, 1),
(85, '2021-09-04 14:12:05.114749', '99', 'Outdoor Toys', 1, '[{\"added\": {}}]', 24, 1);

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
(9, 'account', 'emailaddress'),
(10, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(14, 'core', 'address'),
(26, 'core', 'canadiantirecategory'),
(15, 'core', 'cart'),
(16, 'core', 'category'),
(23, 'core', 'comment'),
(29, 'core', 'costcocategory'),
(17, 'core', 'coupon'),
(24, 'core', 'dolloarcategory'),
(25, 'core', 'dolloaritem'),
(18, 'core', 'item'),
(21, 'core', 'orderitem'),
(20, 'core', 'payment'),
(19, 'core', 'refund'),
(28, 'core', 'targetcategory'),
(22, 'core', 'userprofile'),
(27, 'core', 'walmartcategory'),
(7, 'crudapp', 'contact'),
(6, 'sessions', 'session'),
(8, 'sites', 'site'),
(11, 'socialaccount', 'socialaccount'),
(12, 'socialaccount', 'socialapp'),
(13, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-08-31 03:59:41.289404'),
(2, 'auth', '0001_initial', '2021-08-31 03:59:48.564388'),
(3, 'admin', '0001_initial', '2021-08-31 03:59:50.395999'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-08-31 03:59:50.427622'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-31 03:59:50.502192'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-08-31 03:59:51.030605'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-08-31 03:59:52.469497'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-08-31 03:59:52.561251'),
(9, 'auth', '0004_alter_user_username_opts', '2021-08-31 03:59:52.604176'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-08-31 03:59:52.976817'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-08-31 03:59:53.015193'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-08-31 03:59:53.085239'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-08-31 03:59:53.193300'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-08-31 03:59:53.429223'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-08-31 03:59:53.726711'),
(16, 'auth', '0011_update_proxy_permissions', '2021-08-31 03:59:53.786581'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-08-31 03:59:53.894369'),
(18, 'sessions', '0001_initial', '2021-08-31 03:59:54.350713'),
(19, 'crudapp', '0001_initial', '2021-08-31 04:08:15.341138'),
(20, 'account', '0001_initial', '2021-09-04 11:55:30.132254'),
(21, 'account', '0002_email_max_length', '2021-09-04 11:55:34.945385'),
(22, 'core', '0001_initial', '2021-09-04 11:55:42.762678'),
(23, 'core', '0002_auto_20200625_2010', '2021-09-04 11:55:57.443092'),
(24, 'core', '0003_auto_20200625_2024', '2021-09-04 11:55:59.059675'),
(25, 'core', '0004_item_description', '2021-09-04 11:55:59.530849'),
(26, 'core', '0005_auto_20200626_1903', '2021-09-04 11:56:00.223706'),
(27, 'core', '0006_comment', '2021-09-04 11:56:00.659253'),
(28, 'core', '0007_auto_20201206_1235', '2021-09-04 11:56:03.903806'),
(29, 'sites', '0001_initial', '2021-09-04 11:56:04.275552'),
(30, 'sites', '0002_alter_domain_unique', '2021-09-04 11:56:05.362255'),
(31, 'socialaccount', '0001_initial', '2021-09-04 11:56:07.033104'),
(32, 'socialaccount', '0002_token_max_lengths', '2021-09-04 11:56:12.747981'),
(33, 'socialaccount', '0003_extra_data_default_dict', '2021-09-04 11:56:12.821001'),
(34, 'core', '0008_dolloarcategory', '2021-09-04 12:28:36.135816'),
(35, 'core', '0009_dolloaritem', '2021-09-04 13:00:56.832080'),
(36, 'core', '0010_canadiantirecategory', '2021-09-04 20:58:57.134798'),
(37, 'core', '0011_delete_canadiantirecategory', '2021-09-05 05:24:38.314577'),
(38, 'core', '0012_canadiantirecategory', '2021-09-05 05:25:17.009821'),
(39, 'core', '0013_walmartcategory', '2021-09-05 06:30:25.673556'),
(40, 'core', '0014_auto_20210906_2113', '2021-09-06 12:13:25.836428'),
(41, 'core', '0015_auto_20210906_2216', '2021-09-06 13:16:33.215313'),
(42, 'core', '0016_targetcategory', '2021-09-06 14:08:45.236821'),
(43, 'core', '0002_costcocategory', '2021-09-08 05:47:33.066520');

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
('1cn2j1bc85y9gypquo3k3d3tkcldv3kk', 'ZTZmYjRmNWExZGE3OWM1OWIzODU4MTc2YTY0ZGU4NWQ0YWQ5N2NlMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMTQ1OGEwMjJhNjYyMzJkOWE2MDVhNmIzYjlkY2EwY2MyYzE1ZjEwIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2021-09-20 19:01:05.727669'),
('8kw76h6g1tg28pxpgginzmyj0akxbf4m', '.eJxVjEEOwiAQRe_C2pABhhZduu8ZyACDVA0kpV0Z765NutDtf-_9l_C0rcVvnRc_J3ERSpx-t0DxwXUH6U711mRsdV3mIHdFHrTLqSV-Xg_376BQL9_aZHYIpNmMY4rBGOBwjohETIPTVqXBKuUyQASErBk5sWMKgAhgg3h_AO1xOAw:1mKzED:SXjzGsSxq1cfZnlWfepO-4oisqxQOBsEDTOk4-hH7gY', '2021-09-14 08:34:45.769562'),
('d7k1iwlt31ylau27u35wb7klsa37h9vm', 'ZTZmYjRmNWExZGE3OWM1OWIzODU4MTc2YTY0ZGU4NWQ0YWQ5N2NlMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMTQ1OGEwMjJhNjYyMzJkOWE2MDVhNmIzYjlkY2EwY2MyYzE1ZjEwIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==', '2021-09-22 12:16:09.388386');

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
(1, 'example.com', 'example.com');

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

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD KEY `core_dolloaritem_category_id_6ef5de9b_fk_core_dolloarcategory_id` (`category_id`);

--
-- Indexes for table `core_item`
--
ALTER TABLE `core_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_item_slug_07f502d0_uniq` (`slug`),
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
  ADD KEY `core_orderitem_item_id_3b7d0c2e_fk_core_item_id` (`item_id`),
  ADD KEY `core_orderitem_user_id_323fe695_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `crudapp_contact`
--
ALTER TABLE `crudapp_contact`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_address`
--
ALTER TABLE `core_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_canadiantirecategory`
--
ALTER TABLE `core_canadiantirecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_cart`
--
ALTER TABLE `core_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_cart_items`
--
ALTER TABLE `core_cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `core_userprofile`
--
ALTER TABLE `core_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_walmartcategory`
--
ALTER TABLE `core_walmartcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crudapp_contact`
--
ALTER TABLE `crudapp_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `core_orderitem_item_id_3b7d0c2e_fk_core_item_id` FOREIGN KEY (`item_id`) REFERENCES `core_item` (`id`),
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
