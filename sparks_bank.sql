-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2021 at 12:20 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Shubham', 'Siddhant', 10000, '2021-07-06 17:39:09'),
(2, 'Amrit', 'Rishabh', 900, '2021-07-06 17:39:54'),
(12, 'Ashutosh', 'Shubham', 1000, '2021-07-06 17:41:31'),
(13, 'Rishabh', 'Shubham', 9000, '2021-07-06 18:53:37'),
(14, 'Sujal', 'Vaibhav', 1000, '2021-07-06 18:58:27'),
(15, 'Shubham', 'Amrit', 900, '2021-07-06 20:58:01'),
(16, 'Siddhant', 'Shubham', 900, '2021-07-17 14:06:58'),
(17, 'Amrit', 'Siddhant', 1000, '2021-07-17 14:29:29'),
(18, 'Amrit', 'Ashutosh', 11000, '2021-07-17 14:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Shubham', 'shubham@gmail.com', 100000),
(2, 'Amrit', 'amrit@gmail.com', 38000),
(3, 'Siddhant', 'siddhant@gmail.com', 50000),
(4, 'Ashutosh', 'ashutosh@gmail.com', 20000),
(5, 'Aman', 'aman@gmail.com', 40000),
(6, 'Yash', 'yash@gmail.com', 19990),
(7, 'Nishant', 'nishant@gmail.com', 20000),
(8, 'Rishabh', 'rishabh@gmail.com', 32000),
(9, 'Sujal', 'sujal@gmail.com', 29000),
(10, 'Vaibhav', 'vaibhav@gmail.com', 16000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
