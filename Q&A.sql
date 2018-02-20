-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 20, 2018 at 05:55 PM
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
-- Database: `q&a`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_title` varchar(60) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `category_title`) VALUES
(1, 'COMPUTERS'),
(2, 'ARTS'),
(3, 'ELECTRONICS');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
CREATE TABLE IF NOT EXISTS `replies` (
  `reply_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(100) UNSIGNED NOT NULL,
  `subcategory_id` int(100) UNSIGNED NOT NULL,
  `topic_id` int(100) UNSIGNED NOT NULL,
  `author` varchar(16) NOT NULL,
  `comment` text NOT NULL,
  `date_posted` date NOT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `category_id` (`category_id`,`subcategory_id`,`topic_id`),
  KEY `subcategory_id` (`subcategory_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`reply_id`, `category_id`, `subcategory_id`, `topic_id`, `author`, `comment`, `date_posted`) VALUES
(6, 1, 1, 17, 'abc', 'check your internet setting in laptop.', '2018-02-20'),
(7, 2, 6, 18, 'riya', 'i think bollywood.', '2018-02-20'),
(8, 1, 1, 17, 'riya', 'your internet connection may be slow.', '2018-02-20'),
(9, 2, 9, 21, 'ravina', 'you should read daily magazines.', '2018-02-20'),
(10, 2, 9, 21, 'ravina', 'by internet surfing,newspapars etc.', '2018-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `subcat_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(100) UNSIGNED NOT NULL,
  `subcategory_title` varchar(100) NOT NULL,
  `subcategory_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`subcat_id`),
  KEY `parent_id` (`parent_id`),
  KEY `parent_id_2` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`subcat_id`, `parent_id`, `subcategory_title`, `subcategory_desc`) VALUES
(1, 1, 'INTERNET', ''),
(2, 1, 'COMPUTER SOFTWARE', ''),
(3, 1, 'COMPUTER HARDWARE', ''),
(4, 1, 'COMPUTER PROGRAMMING', ''),
(5, 1, 'SECURITY & HACKING', ''),
(6, 2, 'MUSIC', ''),
(7, 2, 'DANCE', ''),
(8, 2, 'THREATER', ''),
(9, 2, 'FASHION', ''),
(10, 3, 'RADIOS', ''),
(11, 3, 'MOBILE PHONES', ''),
(12, 3, 'HOME AUDIO', '');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `topic_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `author` varchar(16) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `date_posted` date NOT NULL,
  `replies` int(3) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `category_id`, `subcategory_id`, `author`, `title`, `content`, `date_posted`, `replies`) VALUES
(22, 2, 7, 'ravina', 'useful', 'how can be it is useful for our health', '2018-02-20', NULL),
(21, 2, 9, 'riya', 'style', 'how to stay updated', '2018-02-20', NULL),
(20, 1, 3, 'riya', 'harware parts', 'why it is too complicated to manage.', '2018-02-20', NULL),
(19, 3, 11, 'riya', 'mobile brand', 'what is the popular mobile brand in today\'s date.', '2018-02-20', NULL),
(18, 2, 6, 'abc', 'dance form', 'which form is easiest among all?', '2018-02-20', NULL),
(17, 1, 1, 'admin', 'error in connection', 'what should i do if internet connection not working.', '2018-02-20', NULL),
(23, 1, 1, 'ravina', 'sharing', 'how i can share my net on other device.', '2018-02-20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(14, 'ravina', 'ravina'),
(13, 'riya', '1234'),
(12, 'abc', 'abc'),
(11, 'admin', 'admin'),
(15, 'aa', 'aa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
