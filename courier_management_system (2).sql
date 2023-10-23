-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 03:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courier management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_information`
--

CREATE TABLE `billing_information` (
  `billing_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `agent_name` varchar(200) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `delivery_adress` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `pickup_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `recipient_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_details`
--

CREATE TABLE `parcel_details` (
  `parcel_id` int(11) NOT NULL,
  `parcel_type` varchar(200) NOT NULL,
  `parcel_weight` float NOT NULL,
  `username` varchar(200) NOT NULL,
  `tracking id` varchar(200) NOT NULL,
  `billing_number` bigint(12) NOT NULL,
  `parcel_status` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'Azeem', 'azeem@gmail.com', '123'),
(2, 'haseeb', 'haseeb@gmail.com', 'haseeb'),
(16, 'ali', 'ali@gmail.com', 'ali'),
(17, 'rohit', 'rohit@gmail.com', 'rohit'),
(18, 'kamran', 'kamran@gmail.com', 'kamran'),
(19, 'nabeel', 'nabeel@gmail.com', '$2y$10$RoxnlCgKyQ6qaH0fsa/2q.4PV/9EvpDFZWBSH7OOA7QLR0U964KUm'),
(20, 'talib', 'talib@gmail.com', '$2y$10$7iRminC.qjgGwiw9YMz3guWBxHZll3UaokARcLPclKxiClVxHk4e6'),
(21, 'aptech', 'aptech@gmail.com', '$2y$10$cXgJkhXfdU/TEnawf/6A0O3AB7mbSUYyoB6wAipqrrgJuOs6Yetvi'),
(22, 'abc', 'abc@gmail.com', '$2y$10$1DJtH631jIt4wC5h7.DIeOuIg90laZ..m5VTGcvA2QnuK9VnIJt62');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parcel_details`
--
ALTER TABLE `parcel_details`
  ADD PRIMARY KEY (`parcel_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parcel_details`
--
ALTER TABLE `parcel_details`
  MODIFY `parcel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `parcel_details`
--
ALTER TABLE `parcel_details`
  ADD CONSTRAINT `parcel_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
