-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 14, 2021 at 11:59 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `shopping`;
-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `member_username` varchar(50) NOT NULL,
  `member_password` varchar(50) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `member_name`, `member_username`, `member_password`, `created`) VALUES
(1, 'administrator', 'admin', '1234', '2021-08-07 12:40:31'),
(2, 'administrator2', 'admin2', '81dc9bdb52d04dc20036dbd8313ed055', '2021-08-07 12:45:02'),
(3, 'John Corner', 'john', '81dc9bdb52d04dc20036dbd8313ed055', '2021-08-13 04:58:09'),
(4, 'Test', 'test', '81dc9bdb52d04dc20036dbd8313ed055', '2021-08-13 05:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `member_id`, `created`) VALUES
(1, 2, '2021-08-07 14:40:49'),
(2, 2, '2021-08-07 14:41:54'),
(4, 2, '2021-08-07 14:43:39'),
(6, 3, '2021-08-13 09:15:31'),
(7, 3, '2021-08-13 09:23:41'),
(8, 3, '2021-08-13 09:26:11'),
(9, 3, '2021-08-13 09:27:05'),
(10, 3, '2021-08-13 09:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `order_id`, `item_name`, `item_price`, `item_amount`) VALUES
(1, 1, 'pen', 10, 100),
(2, 2, 'pencil', 20, 200),
(3, 2, 'book', 30, 300),
(4, 4, 'pencil', 40, 400),
(5, 4, 'book', 50, 500),
(8, 6, 'pen', 10, 24),
(9, 6, 'pencil', 20, 48),
(10, 7, 'pen', 10, 24),
(11, 7, 'pencil', 20, 48),
(12, 8, 'pen', 10, 24),
(13, 8, 'pencil', 20, 48),
(14, 9, 'pen', 10, 24),
(15, 9, 'pencil', 20, 48),
(16, 10, 'pen', 10, 24),
(17, 10, 'pencil', 20, 48);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
