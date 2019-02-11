-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 22, 2018 at 06:16 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `justeats`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

DROP TABLE IF EXISTS `tbl_address`;
CREATE TABLE IF NOT EXISTS `tbl_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `pancard` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`address_id`, `address1`, `address2`, `city`, `district_id`, `pincode`, `pancard`, `status`) VALUES
(1, 'ddddd', 'dmart aa', 'mukkam a', 1, '0', '777777', 1),
(7, 'ddddd', 'dmart aa', 'mukkam a', 9, '0', '223344', 1),
(6, 'ddddd', 'dmart aa', 'mukkam a', 8, '0', '11111', 1),
(8, 'ddddd', 'dmart aa', 'mukkam a', 11, '0', '0', 1),
(9, 'ddddd', 'dmart aa', 'mukkam a', 12, '0', '0', 1),
(10, 'ddddd', 'dmart aa', 'mukkam a', 13, '0', '0', 1),
(11, 'ddddd', 'dmart aa', 'mukkam a', 14, '0', '0', 1),
(12, 'ddddd', 'dmart aa', 'mukkam a', 15, '0', '223344', 1),
(13, 'ddddd', 'dmart aa', 'mukkam a', 16, '0', '223344', 1),
(14, 'ddddd', 'dmart aa', 'mukkam a', 17, '0', '223344', 1),
(15, 's1 street', 'payyavur', 'kannur', 0, '1111', '223344', 1),
(16, 'ddddd', 'dmart aa', 'mukkam a', 19, '0', '0', 1),
(17, 'ddddd', 'dmart aa', 'mukkam a', 20, '0', '0', 1),
(18, 'ddddd', 'dmart aa', 'mukkam a', 21, '0', '98', 1),
(19, 'kadavanthra', 'kochi', 'kochi', 22, '555555', '22222', 1),
(20, 'santhom', 'koovappalli', 'kanjirappalli', 23, '555555', '22222', 1),
(21, 'tharavadu', 'koovappalli', 'kannur', 24, '670632', '223344', 1),
(22, 'tharavadu', 'payyavur', 'srkpuram', 25, '222222', '223344', 1),
(23, 'ch.para', 'mukkam', 'Sreekandapuram', 26, '222222', '223344', 1),
(24, 's1 street', 'mukkam', '', 27, '0', '0', 1),
(25, 'dmart aa', 'koovappalli', 'srkpuram', 0, '670632', '22222', 1),
(26, 's1 street', 'kudianmala', 'fffff', 2, '222222', '11111', 1),
(27, 'q', 'w', '', 15, '0', '0', 1),
(28, 'dmart aa', 'koovappalli', 'srkpuram', 14, '222222', '0', 1),
(29, 's1 street', 'mukkam a', 'Sreekandapuram a', 1, '555555', 'ABCDE1234A', 1),
(30, 'tharavadu', 'payyavur', 'fffff', 2, '670632', '', 1),
(31, 'abc', 'abc', 'abc', 13, '670632', '', 1),
(32, 'kanjirappally', 'aaaaaa', 'kanjirappally', 1, '686518', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

DROP TABLE IF EXISTS `tbl_bank`;
CREATE TABLE IF NOT EXISTS `tbl_bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `account_number` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(100) NOT NULL,
  `balance` float NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`bank_id`, `bank_name`, `name`, `account_number`, `cvv`, `month`, `year`, `balance`) VALUES
(1, 'FCC', 'JITHU BENNY', 123456789, 123, 'Jul', '2018', 2926);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

DROP TABLE IF EXISTS `tbl_booking`;
CREATE TABLE IF NOT EXISTS `tbl_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_ofbooking` date NOT NULL,
  `number_ofpacket` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `d_address` varchar(200) NOT NULL,
  `ordernumber` int(11) NOT NULL,
  `booking_status` int(11) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `cust_id`, `product_id`, `date_ofbooking`, `number_ofpacket`, `rating`, `d_address`, `ordernumber`, `booking_status`) VALUES
(120, 29, 1, '2018-11-22', 1, 3, ' ', 0, 0),
(119, 29, 1, '2018-11-22', 1, 3, ' ', 9942, 1),
(124, 1, 8, '2018-11-22', 1, 3, ' ', 0, 0),
(125, 1, 14, '2018-11-22', 1, 3, ' ', 0, 0),
(123, 29, 3, '2018-11-22', 1, 3, ' ', 0, 0),
(122, 29, 7, '2018-11-22', 1, 3, ' ', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `s_id` int(11) NOT NULL,
  `c_status` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `s_id`, `c_status`) VALUES
(1, 'snack', 28, 1),
(2, 'Cookies & Crackers', 28, 1),
(3, 'Antipasti', 28, 1),
(4, 'Dry Snacks', 28, 1),
(5, 'Chocolates', 28, 1),
(6, 'BISCUIT', 28, 0),
(7, 'hot choclate', 28, 0),
(8, 'hot choclate10', 28, 0),
(9, 'buiscut', 28, 0),
(10, 'pups', 28, 0),
(11, 'hot chocl', 14, 0),
(12, 'tea snacks', 28, 0),
(13, 'bbb', 28, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

DROP TABLE IF EXISTS `tbl_district`;
CREATE TABLE IF NOT EXISTS `tbl_district` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`, `status`) VALUES
(1, '	Kasaragod', 1),
(2, 'Kannur', 1),
(3, '	Wayanad', 1),
(4, '	Kozhikode', 1),
(5, 'Thrissur', 1),
(6, 'Ernakulam', 1),
(7, 'Palakkad', 1),
(8, 'Malappuram	', 1),
(9, 'Alappuzha', 1),
(10, 'Kottayam', 1),
(11, 'Kollam', 1),
(13, 'Idukki', 1),
(14, '	Thiruvananthapuram', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

DROP TABLE IF EXISTS `tbl_item`;
CREATE TABLE IF NOT EXISTS `tbl_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `ilogin_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `measurement` varchar(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `date` date NOT NULL,
  `discription` varchar(200) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `item_status` int(11) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `ilogin_id`, `item_name`, `category_id`, `subcategory_id`, `price`, `quantity`, `measurement`, `stock`, `date`, `discription`, `photo`, `item_status`) VALUES
(1, 28, 'Badam Pista Biscuits', 2, 1, 25, '100', 'Grams', 40, '2018-11-22', 'Good taste', '1542895925Badam Pista Biscuits.JPG', 0),
(2, 28, 'Belgium Chocolate Chunk Biscuit', 2, 1, 20, '100', 'Grams', 20, '2018-11-22', 'Good taste\r\n', '1542864548Belgium Chocolate Chunk Biscuit.jpg', 1),
(3, 28, 'Bourbon Creams Biscuit', 2, 1, 30, '150', 'Grams', 10, '2018-11-22', 'Good taste', '1542864662Bourbon Creams Biscuit.jpg', 1),
(4, 28, 'Flavoured Straws', 2, 4, 40, '230', 'Grams', 10, '2018-11-22', 'Nice', '1542864717Flavoured Straws.JPG', 1),
(5, 28, 'Multigrain Cheese Straw', 2, 4, 60, '200', 'Grams', 10, '2018-11-22', 'Nice', '1542864775Multigrain Cheese Straw.jpg', 1),
(6, 28, 'Hide & Seek Chocolate Chip Cookie', 2, 3, 40, '200', 'Grams', 20, '2018-11-22', 'Nice', '1542864821Hide & Seek Chocolate Chip Cookie.jpg', 1),
(7, 28, 'Oat and Honey Cookies', 2, 3, 40, '250', 'Grams', 10, '2018-11-22', 'Nice', '1542864866Oat and Honey Cookies.jpg', 1),
(8, 28, 'Black Olives - Pitted - Olicoop', 3, 5, 200, '250', 'Grams', 10, '2018-11-22', 'Nice', '1542864928Black Olives - Pitted - Olicoop.JPG', 1),
(9, 28, 'Pitted Black Olives', 3, 5, 280, '250', 'Grams', 20, '2018-11-22', 'Nice', '1542864971Pitted Black Olives.jpg', 1),
(10, 28, 'Gherkins - Fragata', 3, 6, 150, '250', 'Grams', 10, '2018-11-22', 'Nice', '1542865040Gherkins - Fragata.JPG', 1),
(11, 28, 'Jalapeno Peppers Sliced - American Garden', 3, 6, 250, '300', 'Grams', 20, '2018-11-22', 'Nice', '1542865076Jalapeno Peppers Sliced - American Garden.JPG', 1),
(12, 28, 'Chili & Garlic Pesto', 3, 7, 120, '200', 'Grams', 20, '2018-11-22', 'Nice', '1542865128Chili & Garlic Pesto.JPG', 1),
(13, 28, 'Sliced Red Paprikas', 3, 7, 100, '250', 'Grams', 20, '2018-11-22', 'Nice', '1542865185Sliced Red Paprikas.jpg', 1),
(14, 28, 'Baked Pita Bread Crisps Chilli & Garlic', 4, 8, 100, '200', 'Grams', 20, '2018-11-22', 'Nice', '1542865258Baked Pita Bread Crisps Chilli & Garlic.jpg', 1),
(15, 28, 'Roasted Potato Chips', 4, 8, 200, '250', 'Grams', 10, '2018-11-22', 'Nice', '1542865301Roasted Potato Chips.jpg', 1),
(16, 28, 'Flavoured Peanuts', 4, 9, 100, '250', 'Grams', 20, '2018-11-22', 'Nice', '1542865387Flavoured Peanuts.jpg', 1),
(17, 28, 'Whole Dried Cranberries', 4, 9, 100, '250', 'Grams', 20, '2018-11-22', 'Nice', '1542865447Whole Dried Cranberries.jpg', 1),
(18, 28, 'Roasted Flax Seeds', 4, 10, 100, '200', 'Grams', 20, '2018-11-22', 'Nice', '1542865492Roasted Flax Seeds.jpg', 1),
(19, 28, 'Roasted Sunflower Seeds Blend wPumpkin And Flax Mix', 4, 10, 100, '200', 'Grams', 20, '2018-11-22', 'Nice', '1542865527Roasted Sunflower Seeds Blend wPumpkin And Flax Mix.jpg', 1),
(20, 28, 'Chana Lime Roasted', 4, 11, 70, '200', 'Grams', 20, '2018-11-22', 'Nice', '1542865570Chana Lime Roasted.jpg', 1),
(21, 28, 'Healthy Supergrain Roasted Puff Snacks', 4, 11, 40, '150', 'Grams', 20, '2018-11-22', 'Nice', '1542865672Healthy Supergrain Roasted Puff Snacks, Strawberry-Banana Crunchies.jpg', 1),
(22, 28, 'Jowar Flakes - Mix Tomato N Pudina Roasted Snack', 4, 11, 50, '200', 'Grams', 20, '2018-11-22', 'Nice', '1542865713Jowar Flakes - Mix Tomato N Pudina Roasted Snack.jpg', 1),
(23, 28, 'chana', 2, 4, 80, '200', 'Grams', 10, '2018-11-22', 'Nice', '1542883270Chana Lime Roasted.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

DROP TABLE IF EXISTS `tbl_login`;
CREATE TABLE IF NOT EXISTS `tbl_login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `email`, `password`, `user_id`, `type`, `status`) VALUES
(1, 'jithu.benny6@gmail.com', 'jithu', 1, '1', 1),
(28, 'amzone@gmail.com', 'Aa1', 29, 'Seller', 0),
(7, 'romy@gmail.com', 'romy', 7, '2', 1),
(6, 'jithin@gmail.com', 'jithin', 6, '2', 1),
(9, 'dmart@gmail.com', '2018-10-27', 9, '0', 1),
(10, 'am@gmail.com', '2018-10-03', 10, '0', 1),
(11, 'dm@gmail.com', '2018-10-25', 11, '3', 1),
(12, 'aleena@gmail.com', 'aleena', 12, '2', 1),
(13, 'al@gmail.com', 'al', 14, 'Shopper', 1),
(14, 'dmartone@gmail.com', 'd', 15, 'Seller', 1),
(15, 'easy@gmail.com', '2018-10-24', 16, 'QChecker', 1),
(16, 'qdeliver@gmail.com', '2018-10-11', 17, 'Deliverer', 1),
(17, 'gg@hh.com', '00', 18, 'Shopper', 1),
(18, 'dhl@gmail.com', 'dhl', 19, 'Seller', 1),
(19, 'ajil@gmail.com', 'aa', 20, 'Shopper', 1),
(20, 'alan@gmail.com', 'alan', 21, 'Seller', 1),
(21, 'jseller@gmail.com', 'jseller', 22, 'Seller', 1),
(22, 'aseller@gmail.com', 'aseller', 23, 'Seller', 1),
(23, 'adeliver@gmail.com', '2018-10-25', 24, 'Deliverer', 1),
(24, 'jikku@gmail.com', 'qqq', 25, 'Shopper', 0),
(25, 'aleena@gma', 'Qa1', 26, 'Shopper', 0),
(26, 'jit@gmail.com', '', 27, 'Deliverer', 1),
(27, 'ale@gmail.com', 'Aa1', 28, 'Shopper', 0),
(29, 'romyj@gmail.com', 'Aa1', 30, 'Shopper', 0),
(30, 'alee@gmail.com', 'Aa1', 31, 'Seller', 0),
(31, 'maruthis@gmail.com', 'Aa1', 32, 'Shopper', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

DROP TABLE IF EXISTS `tbl_registration`;
CREATE TABLE IF NOT EXISTS `tbl_registration` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `rphone` varchar(20) NOT NULL,
  `address_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `rphone`, `address_id`, `status`) VALUES
(1, 'dmart aaaaaaaa', '9497609019', 1, 1),
(8, 'dmart aaaaaaaa', '9497609019', 8, 1),
(7, 'dmart aaaaaaaa', '2233445566', 7, 1),
(6, 'dmart aaaaaaaa', '7788665522', 6, 1),
(9, 'dmart aaaaaaaa', '1122334455', 9, 1),
(10, 'dmart aaaaaaaa', '9497609019', 10, 1),
(11, 'dmart aaaaaaaa', '122222222', 11, 1),
(12, 'dmart aaaaaaaa', '1234567899', 12, 1),
(13, 'dmart aaaaaaaa', '1234567899', 13, 1),
(14, 'dmart aaaaaaaa', '1234567899', 14, 1),
(15, 'dmart one', '1234567899', 15, 1),
(16, 'dmart aaaaaaaa', '2233445566', 16, 1),
(17, 'dmart aaaaaaaa', '11111111', 17, 1),
(18, 'dmart aaaaaaaa', '9497609019', 18, 1),
(19, 'dhl', '9961082614', 19, 1),
(20, 'ajil', '9898989898', 20, 1),
(21, 'alan', '2233445566', 21, 1),
(22, 'jseller', '1234567899', 22, 1),
(23, 'bseller', '2233445566', 23, 1),
(24, 'adeliver', '1234567899', 24, 1),
(25, 'jikku', '1234567899', 25, 1),
(26, 'aleena', '1234567899', 26, 1),
(27, 'aaa', '1234567899', 27, 1),
(28, 'ale', '1234567899', 28, 1),
(29, 'amzone', '9497609019', 29, 1),
(30, 'romy', '9497609019', 30, 1),
(31, 'aleena', '9961082614', 31, 1),
(32, 'jiiii', '7541254788', 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sellerinfo`
--

DROP TABLE IF EXISTS `tbl_sellerinfo`;
CREATE TABLE IF NOT EXISTS `tbl_sellerinfo` (
  `seller_id` int(11) NOT NULL AUTO_INCREMENT,
  `slogin_id` int(11) NOT NULL,
  `licence_number` int(50) NOT NULL,
  `experience` int(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `s_status` int(50) NOT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sellerinfo`
--

INSERT INTO `tbl_sellerinfo` (`seller_id`, `slogin_id`, `licence_number`, `experience`, `image`, `s_status`) VALUES
(9, 22, 22222, 2, '', 1),
(8, 14, 3333, 2, '1541144353b.jpg', 1),
(11, 28, 121212, 1, '1542895460Chana Lime Roasted.jpg', 1),
(12, 29, 0, 0, 'NULL', 0),
(13, 30, 0, 0, '15425488782.jpg', 0),
(14, 31, 0, 0, 'NULL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

DROP TABLE IF EXISTS `tbl_subcategory`;
CREATE TABLE IF NOT EXISTS `tbl_subcategory` (
  `subcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `subcategory_name` varchar(100) NOT NULL,
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `sub_status` int(11) NOT NULL,
  PRIMARY KEY (`subcategory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcategory_id`, `subcategory_name`, `c_id`, `s_id`, `sub_status`) VALUES
(1, 'Biscuits', 2, 28, 1),
(3, 'Cookies', 2, 28, 1),
(4, 'Straws', 2, 28, 1),
(5, 'Olives, Capers & Tapenades', 3, 28, 1),
(6, 'Gherkins & Jalapenos', 3, 28, 1),
(7, 'Sundried Tomatoes & Others', 3, 28, 1),
(8, 'Chips , Nachos & Crisps', 4, 28, 1),
(9, 'Dry Fruits & Nuts', 4, 28, 1),
(10, 'Dry Seeds', 4, 28, 1),
(11, 'Indian & Dry Snacks', 4, 28, 1),
(12, 'Funsize Packs & Snacksize Bars', 5, 28, 1),
(13, 'Milk, Dark & Mint Chocolates', 5, 28, 1),
(14, 'Fudge & Truffles', 5, 28, 1),
(15, 'Gift Packs & Bouquettes', 5, 28, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
