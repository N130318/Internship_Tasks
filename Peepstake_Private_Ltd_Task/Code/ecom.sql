-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2018 at 12:21 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_u_id` int(11) NOT NULL,
  `c_p_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_image` varchar(500) NOT NULL,
  `c_price` int(11) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`c_id`, `c_u_id`, `c_p_id`, `c_name`, `c_image`, `c_price`) VALUES
(1, 26, 8, 'Skechers Women Flip Flops', 'images/8.png', 1899),
(2, 26, 22, 'Fastrack NG3089SL01 Black Analog Watch - For Men', 'images/22.png', 2395),
(3, 26, 4, 'Sparx Running Shoes (Grey)', 'images/4.png', 999);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktbl`
--

CREATE TABLE IF NOT EXISTS `feedbacktbl` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(30) NOT NULL,
  `feedback` varchar(1000) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `ord_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `pincode` int(6) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(30) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  PRIMARY KEY (`ord_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_image` varchar(500) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_type` varchar(50) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_image`, `p_price`, `p_type`) VALUES
(1, 'Reebok RUNNER Shoes (Blue)', 'images/1.png', 6939, 'Shoes'),
(2, 'Nike LITE Running Shoes (Red)', 'images/2.png', 5939, 'Shoes'),
(3, 'Woodland Men Boots (Camel)', 'images/3.png', 3695, 'Shoes'),
(4, 'Sparx Running Shoes (Grey)', 'images/4.png', 999, 'Shoes'),
(5, 'Puma Jago Men Running Shoes', 'images/5.png', 3123, 'Shoes'),
(10, 'Puma Printed Men Round Neck Black T-Shirt', 'images/10.png', 1325, 'Tshirt'),
(11, 'Lee Printed Men Round Neck Black T-Shirt', 'images/11.png', 979, 'Tshirt'),
(12, 'Adidas Originals Men Round Neck Black T-Shirt', 'images/12.png', 1659, 'Tshirt'),
(13, 'Nike Printed Men Polo Neck Blue T-Shirt', 'images/13.png', 2078, 'Tshirt'),
(6, 'Puma Wnomen Running Shoes', 'images/6.png', 6269, 'Shoes'),
(7, 'Bata Women Red Wedges', 'images/7.png', 629, 'Shoes'),
(8, 'Skechers Women Flip Flops', 'images/8.png', 1899, 'Shoes'),
(9, 'Paduki Ethnic Women Flats', 'images/9.png', 346, 'Shoes'),
(14, 'Levis Men Round Neck Grey T-Shirt', 'images/14.png', 656, 'Tshirt'),
(15, 'BLACK AND DENIM V-neck Blue T-Shirt', 'images/15.png', 549, 'Tshirt'),
(16, 'DENIM Harringbone Round Neck T-Shirt', 'images/16.png', 790, 'Tshirt'),
(17, 'Lee Printed Women Round Neck White T-Shirt', 'images/17.png', 477, 'Tshirt'),
(18, 'Puma Women Round Neck Blue T-Shirt\r\n', 'images/18.png', 989, 'Tshirt'),
(19, 'Elle Printed Women Round Neck Blue T-Shirt', 'images/19.png', 899, 'Tshirt'),
(20, 'Levis Women Round Neck Maroon T-Shirt', 'images/20.png', 649, 'Tshirt'),
(21, 'Clo Clu Solid Women Denim Jacket', 'images/21.png', 550, 'Tshirt'),
(22, 'Fastrack NG3089SL01 Black Analog Watch - For Men', 'images/22.png', 2395, 'Watches'),
(23, 'Titan NH90024BM01 Karishma Analog Watch - For Men', 'images/23.png', 2995, 'Watches'),
(24, 'Sonata 77037PP07J Sonata Digital Watch - For Men', 'images/24.png', 799, 'Watches'),
(25, 'Diesel DZ1609 Double Down Analog Watch - For Men', 'images/25.png', 9495, 'Watches'),
(26, 'Fastrack NG6078SL05C Analog Watch - For Women', 'images/26.png', 1890, 'Watches'),
(27, 'Fossil ES3060 Georgia Analog Watch - For Women', 'images/27.png', 1999, 'Watches'),
(28, 'Titan NH9710SM01 Raga Analog Watch - For Women', 'images/28.png', 1999, 'Watches'),
(29, 'Abrexo Abx-40007 Analog Watch - For Women', 'images/29.png', 539, 'Watches');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `mobile`, `email`) VALUES
(26, 'gopi', 'gopii318', '+919494918564', 'gopi.martha269@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
