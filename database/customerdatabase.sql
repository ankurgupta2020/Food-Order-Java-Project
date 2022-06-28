-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2021 at 05:02 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customerdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `User_id` int(10) NOT NULL,
  `Restaurant_id` int(11) NOT NULL,
  `Item_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`User_id`, `Restaurant_id`, `Item_id`, `Quantity`, `Price`) VALUES
(2, 1, 101, 3, 0),
(3, 2, 2, 4, 200),
(1, 2, 1, 2, 500),
(1, 2, 2, 3, 200);

-- --------------------------------------------------------

--
-- Table structure for table `creditcard`
--

CREATE TABLE `creditcard` (
  `CardNo` varchar(16) NOT NULL,
  `Pass` varchar(16) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `creditcard`
--

INSERT INTO `creditcard` (`CardNo`, `Pass`, `UserId`) VALUES
('1234567890123456', '123@pass', 1),
('1234567890123459', '123@pass', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cust`
--

CREATE TABLE `cust` (
  `User_id` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `RePassword` varchar(50) NOT NULL,
  `ContactNo` varchar(11) NOT NULL,
  `EmailId` varchar(20) NOT NULL,
  `Country` varchar(10) NOT NULL,
  `City` varchar(10) NOT NULL,
  `State` varchar(10) NOT NULL,
  `Pincode` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust`
--

INSERT INTO `cust` (`User_id`, `FirstName`, `LastName`, `UserName`, `Password`, `RePassword`, `ContactNo`, `EmailId`, `Country`, `City`, `State`, `Pincode`) VALUES
(1, 'Ankur', 'Gupta', 'Ankur200', 'asd@1234', 'asd@1234', '9560827725', 'ankur@gmail.com', 'India', 'Delhi', 'Delhi', 100065),
(4, 'Ankur', 'Gupta', 'Ankur2009', 'asd@1234', 'asd@1234', '9560827725', 'ankur@gmail.com', 'India', 'Delhi', 'Delhi', 110065),
(5, 'Ankur', 'Gupta', 'Ankur2008', 'asd@1234', 'asd@1234', '9560827725', 'ankur@gmail', 'India', 'Delhi', 'Delhi', 110020);

-- --------------------------------------------------------

--
-- Table structure for table `debitcard`
--

CREATE TABLE `debitcard` (
  `CardNo` varchar(16) NOT NULL,
  `Pass` varchar(15) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `debitcard`
--

INSERT INTO `debitcard` (`CardNo`, `Pass`, `userid`) VALUES
('1234567890123456', 'er', 2),
('1234123412341234', 'asd@1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `userid` int(11) NOT NULL,
  `SAVE20` int(11) NOT NULL,
  `SAVE50` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`userid`, `SAVE20`, `SAVE50`) VALUES
(1, 0, 0),
(2, 1, 1),
(4, 1, 1),
(5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Restaurant_Id` int(11) NOT NULL,
  `Item_id` int(11) NOT NULL,
  `Item_name` varchar(255) NOT NULL,
  `Item_type` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Restaurant_Id`, `Item_id`, `Item_name`, `Item_type`, `Price`) VALUES
(1, 1, 'Dal Tadka', 'Veg', 100),
(1, 2, 'Naan', 'Veg', 10),
(1, 3, 'Shahi Paneer', 'Veg', 150),
(1, 4, 'Dal Makhani', 'Veg', 120),
(1, 5, 'Lassi', 'Veg', 50),
(2, 1, 'Chocolate Cake', 'Veg', 500),
(2, 2, 'Triple Chocolate Waffle', 'Non-Veg', 200),
(2, 3, 'Red Valvet Pastry', 'Non-Veg', 200);

-- --------------------------------------------------------

--
-- Table structure for table `itemprice`
--

CREATE TABLE `itemprice` (
  `Item_id` int(11) NOT NULL,
  `Item_name` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  `Restaurant_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itemprice`
--

INSERT INTO `itemprice` (`Item_id`, `Item_name`, `Price`, `Restaurant_Id`) VALUES
(101, 'Veg Burger', 50, 1),
(102, 'Paneer tikka Burger', 60, 1),
(103, 'Veg Pizza', 150, 1),
(104, 'Veg Extravaganza Pizza', 180, 2),
(105, 'Arabiata Pasta', 140, 2),
(106, 'Veg Chowmein', 100, 2);

-- --------------------------------------------------------

--
-- Table structure for table `netbanking`
--

CREATE TABLE `netbanking` (
  `userid` int(11) NOT NULL,
  `acct_no` varchar(16) NOT NULL,
  `pass` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderStatus` varchar(300) NOT NULL,
  `TotalAmount` double NOT NULL,
  `PaymentId` int(11) DEFAULT NULL,
  `Discount` double NOT NULL,
  `DeliveryCharge` double NOT NULL,
  `TotalBill` double NOT NULL,
  `userid` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `RestaurantId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`OrderStatus`, `TotalAmount`, `PaymentId`, `Discount`, `DeliveryCharge`, `TotalBill`, `userid`, `OrderId`, `RestaurantId`) VALUES
('Order Confirmed', 3100, 43, 0, 266.19884738678405, 3366.198847386784, 1, 4, 2),
('Payment Pending', 3100, NULL, 0, 266.19884738678405, 3366.198847386784, 1, 5, 2),
('Payment Pending', 1900, NULL, 0, 266.19884738678405, 2166.198847386784, 1, 6, 2),
('Payment Pending', 1900, NULL, 0, 266.19884738678405, 2166.198847386784, 1, 7, 2),
('Order Confirmed', 1900, 44, 0, 266.19884738678405, 2166.198847386784, 1, 8, 2),
('Payment Pending', 1900, NULL, 0, 24.034199381608683, 1924.0341993816087, 1, 9, 2),
('Order Delivered', 1900, 45, 0, 24.034199381608683, 1924.0341993816087, 1, 10, 2),
('Order Delivered', 1900, 46, 0, 24.034199381608683, 1924.0341993816087, 1, 11, 2),
('Order Delivered', 1900, 47, 0, 24.034199381608683, 1924.0341993816087, 1, 12, 2),
('Order Cancelled', 1900, 48, 0, 24.034199381608683, 1924.0341993816087, 1, 13, 2),
('Order Delivered', 1900, 49, 0, 24.034199381608683, 1924.0341993816087, 1, 14, 2),
('Order Cancelled', 1900, 50, 0, 24.034199381608683, 1924.0341993816087, 1, 15, 2),
('Order Delivered', 1400, 51, 0, 24.034199381608683, 1424.0341993816087, 1, 16, 2),
('Order Delivered', 1900, 52, 0, 24.034199381608683, 1924.0341993816087, 1, 17, 2),
('Order Delivered', 1900, 53, 0, 24.034199381608683, 1924.0341993816087, 1, 18, 2),
('Order Delivered', 1900, 54, 0, 24.034199381608683, 1924.0341993816087, 1, 19, 2),
('Order Delivered', 2800, 55, 0, 24.034199381608683, 2824.0341993816087, 1, 20, 2),
('Order Cancelled', 800, 56, 0, 24.034199381608683, 824.0341993816087, 1, 21, 2),
('Order Delivered', 3100, 57, 0, 24.034199381608683, 3124.0341993816087, 1, 22, 2),
('Order Delivered', 2300, 58, 50, 24.034199381608683, 2274.0341993816087, 1, 23, 2),
('Order Cancelled', 2300, 59, 20, 24.034199381608683, 2304.0341993816087, 1, 24, 2),
('Order Delivered', 2300, 60, 50, 24.034199381608683, 2274.0341993816087, 1, 25, 2),
('Order Delivered', 1600, 61, 20, 24.034199381608683, 1604.0341993816087, 1, 26, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `OrderId` int(11) NOT NULL,
  `ItemId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `userid` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `mode` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `amount` double NOT NULL,
  `PaymentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`userid`, `orderId`, `mode`, `status`, `amount`, `PaymentId`) VALUES
(1, 4, 'Debit Card', 'Payment Done', 3366.198847386784, 43),
(1, 8, 'Debit Card', 'Payment Done', 2166.198847386784, 44),
(1, 10, 'Debit Card', 'Payment Done', 1924.0341993816087, 45),
(1, 11, 'Debit Card', 'Payment Done', 1924.0341993816087, 46),
(1, 12, 'Debit Card', 'Payment Done', 1924.0341993816087, 47),
(1, 13, 'Debit Card', 'Refund processed', 1924.0341993816087, 48),
(1, 14, 'Debit Card', 'Payment Done', 1924.0341993816087, 49),
(1, 15, 'Debit Card', 'Refund processed', 1924.0341993816087, 50),
(1, 16, 'Credit Card', 'Payment Done', 1424.0341993816087, 51),
(1, 17, 'Debit Card', 'Payment Done', 1924.0341993816087, 52),
(1, 18, 'Debit Card', 'Payment Done', 1924.0341993816087, 53),
(1, 19, 'Debit Card', 'Payment Done', 1924.0341993816087, 54),
(1, 20, 'Debit Card', 'Payment Done', 2824.0341993816087, 55),
(1, 21, 'Debit Card', 'Refund processed', 824.0341993816087, 56),
(1, 22, 'Credit Card', 'Payment Done', 3124.0341993816087, 57),
(1, 23, 'Debit Card', 'Payment Done', 2274.0341993816087, 58),
(1, 24, 'Debit Card', 'Refund processed', 2304.0341993816087, 59),
(1, 25, 'Debit Card', 'Payment Done', 2274.0341993816087, 60),
(1, 26, 'Debit Card', 'Payment Done', 1604.0341993816087, 61);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `Restaurant_Id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `App_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`Restaurant_Id`, `User_id`, `Rating`, `App_rating`) VALUES
(2, 1, 4, 0),
(2, 1, 2, 0),
(2, 1, 2, 5),
(2, 1, 4, 3),
(2, 1, 3, 5),
(2, 1, 4, 4),
(2, 1, 4, 4),
(2, 1, 4, 5),
(2, 1, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `Restaurant_Id` int(11) NOT NULL,
  `Restaurant_Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Pincode` int(11) NOT NULL,
  `Contact Number` int(11) NOT NULL,
  `Owner Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`Restaurant_Id`, `Restaurant_Name`, `Address`, `City`, `State`, `Country`, `Pincode`, `Contact Number`, `Owner Name`) VALUES
(2, 'Golden Fiesta', 'Greater Kailash', 'Delhi', 'Delhi', 'India', 110065, 12312412, 'Ekta'),
(3, 'Gujju Dhaba', 'Bhavnagar', 'Bhavnagar', 'Gujarat', 'India', 221094, 21312321, 'Rutwick'),
(4, 'BBQ Nation', 'Ahemdabad', 'Ahemdabad', 'Gujarat', 'India', 221094, 12345523, 'Bunty'),
(1, 'Punjabi_Dhaba', 'East of Kailash\r\n', 'Delhi', 'Delhi', 'India', 110065, 12321131, 'Jeet');

-- --------------------------------------------------------

--
-- Table structure for table `r_location`
--

CREATE TABLE `r_location` (
  `RestaurantId` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `r_location`
--

INSERT INTO `r_location` (`RestaurantId`, `lat`, `lon`) VALUES
(1, 53.32055, -1.7297),
(2, 53.32055, -1.7297);

-- --------------------------------------------------------

--
-- Table structure for table `upi`
--

CREATE TABLE `upi` (
  `userid` int(11) NOT NULL,
  `UPI_ID` varchar(100) NOT NULL,
  `Pass` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upi`
--

INSERT INTO `upi` (`userid`, `UPI_ID`, `Pass`) VALUES
(0, 'monacsjsr456@okicici', 'm@123'),
(1, 'mi', '12'),
(2, 'hi', '12');

-- --------------------------------------------------------

--
-- Table structure for table `u_location`
--

CREATE TABLE `u_location` (
  `userid` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `u_location`
--

INSERT INTO `u_location` (`userid`, `lat`, `lon`) VALUES
(1, 53.318611, -1.699722);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust`
--
ALTER TABLE `cust`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `itemprice`
--
ALTER TABLE `itemprice`
  ADD PRIMARY KEY (`Item_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cust`
--
ALTER TABLE `cust`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
