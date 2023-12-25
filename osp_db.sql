-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 03:53 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Cartid` int(11) NOT NULL,
  `Pid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `manager_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `street` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `pin` text NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`manager_id`, `name`, `phone_num`, `email`, `DOB`, `Gender`, `street`, `city`, `state`, `pin`, `password`) VALUES
(6, 'Hrushikesh', '9988998898', 'hrushikeshkalikiri@gmail.com', '2023-04-18', 'Male', 'JCB Hall', 'KGP', 'West Bengal', '730121', '$2b$12$BEX8a8hum1sxNIgddAEYyODPKkfHzYhaBdm7JaHf75LqhSRptfpCy');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `oid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `quantity` int(11) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`oid`, `pid`, `cid`, `date`, `quantity`, `Status`) VALUES
(9, 11, 25, '2023-04-02 13:52:02', 1, 0),
(10, 10, 25, '2023-04-02 13:52:02', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Pid` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Sellerid` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Image_url` varchar(100) NOT NULL,
  `mfgdate` date NOT NULL,
  `mfgcompany` text NOT NULL,
  `sellercity` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `Weight` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `Description` text NOT NULL,
  `Category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Pid`, `Name`, `Sellerid`, `Price`, `Image_url`, `mfgdate`, `mfgcompany`, `sellercity`, `quantity`, `Weight`, `status`, `Description`, `Category`) VALUES
(10, 'Dettol Soap', 27, 40, '1.jpg', '2023-04-18', 'Dettol', 'KGP', 2, 0.5, 1, 'Good quality Soap', 'Grocery'),
(11, 'Nano', 27, 100000, '6.jpg', '2023-04-06', 'Tata', 'KGP', 14, 1000, 1, 'Small Car', 'Automobiles');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_Id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Phone_num` varchar(15) NOT NULL,
  `Street` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `PIN` text NOT NULL,
  `IsBuyer` tinyint(1) NOT NULL,
  `IsSeller` tinyint(1) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_Id`, `Name`, `Email`, `Password`, `Phone_num`, `Street`, `City`, `State`, `PIN`, `IsBuyer`, `IsSeller`, `Balance`) VALUES
(25, 'Shivang', 'agrawalshivang29@gmail.com', '$2b$12$o7ruYDeMT4YG.Am21UWHsOpyq/FYNLGeiqPi4gkSj706nU8E59Aie', '9988998898', 'JCB Hall', 'KGP', 'West Bengal', '730121', 1, 1, 50380),
(26, 'Hari Krishna', 'harikrishna03ima@gmail.com', '$2b$12$pR.ha0sene965dtOLUIVHe6iynfSodNBKoyABodomHA1bMAW8v7xu', '9988998898', 'JCB Hall', 'KGP', 'West Bengal', '1234569', 1, 1, 0),
(27, 'Shivang Agrawal', 'shivang29104@gmail.com', '$2b$12$7jKF0PXvsO98dwtgQVoZ7OKl8J2jElwQfUQHXaCCR.A/asBoDnWhy', '9988998898', 'JCB Hall', 'KGP', 'West Bengal', '730121', 1, 1, 100120);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Cartid`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`manager_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Pid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `Cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
