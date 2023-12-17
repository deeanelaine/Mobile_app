-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 02:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `categoryID` int(11) NOT NULL,
  `CategoryName` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`categoryID`, `CategoryName`, `Password`) VALUES
(1, 'Storage 1', '1234567'),
(2, 'Storage 2', 'storage2'),
(3, 'Storage 3', 'storage3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_list`
--

CREATE TABLE `tbl_list` (
  `listID` int(11) NOT NULL,
  `image` text NOT NULL,
  `ItemName` varchar(200) NOT NULL,
  `Details` varchar(200) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_list`
--

INSERT INTO `tbl_list` (`listID`, `image`, `ItemName`, `Details`, `Quantity`) VALUES
(1, '', 'num1 Item', 'Height: 100\r\nWeight: 100', 10),
(2, '', '2ndItem', 'stainless steel', 60),
(3, '', 'item', 'wood', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_signup`
--

CREATE TABLE `tbl_signup` (
  `userID` int(11) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_signup`
--

INSERT INTO `tbl_signup` (`userID`, `Email`, `Password`) VALUES
(1, 'num1user@gmail.com', 'user1password1234'),
(2, 'username@gmail.com', 'qwertyuiop'),
(3, 'nameuser@gmail.com', '1234567890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `tbl_list`
--
ALTER TABLE `tbl_list`
  ADD PRIMARY KEY (`listID`);

--
-- Indexes for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_list`
--
ALTER TABLE `tbl_list`
  MODIFY `listID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_signup`
--
ALTER TABLE `tbl_signup`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
