-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 12, 2023 at 04:32 AM
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
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `sno` int(255) NOT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `companyid` varchar(100) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `specialzation` varchar(100) DEFAULT NULL,
  `role` varchar(999) DEFAULT NULL,
  `experience` int(50) DEFAULT NULL,
  `phonenumber` int(50) DEFAULT NULL,
  `datejoin` date DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`sno`, `companyname`, `companyid`, `email`, `specialzation`, `role`, `experience`, `phonenumber`, `datejoin`, `city`, `state`, `zip`) VALUES
(1, 'd', 's', 'j', 'lkm', 'lk', 4, 89465, '0005-08-04', '845', 'Tamil Nadu', 865),
(2, 'Alpha', '69', 'alpha@company.com', 'Cyber', 'White Hat', 5, 944574842, '2025-03-05', 'XXX', 'Others..', 98789);

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `sno` int(255) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `fathername` varchar(50) DEFAULT NULL,
  `mothername` varchar(50) DEFAULT NULL,
  `sibilings` int(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phonenumber` int(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`sno`, `firstname`, `lastname`, `email`, `fathername`, `mothername`, `sibilings`, `gender`, `phonenumber`, `dob`, `city`, `state`, `zip`) VALUES
(8, 'Naveen', 'Otto', 'pradhaphnaveen@gmail.com', 'na', 'va', 5, 'Female', 9846513, '1230-04-06', '875421', 'Andhra', 41),
(9, 'Naveen', 'Otto', 'pradhaphnaveen@gmail.com', 'na', 'va', 5, 'Female', 9846513, '1230-04-06', '875421', 'Andhra', 41);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `sno` (`sno`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
