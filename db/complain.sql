-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2022 at 03:17 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `complain`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'Admin@123'),
(2, 'admin2', 'Admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `complain` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`id`, `email`, `complain`) VALUES
(3, 'ibrobk@gmail.com', 'I want you to help and configure my SSL certificate.'),
(4, 'ibrobk@gamiold', 'Hi there my complain is  I am  lazy.'),
(5, 'ibrobk12@gmail.com', 'I am very busy writing codes...'),
(6, 'ibrobk@outlook.com', 'another complain..'),
(7, 'zee@yahoo.com', 'I am having issue with my Phone....'),
(8, 'isahlabo39@gmail.com', 'I have try it several times....'),
(9, 'isahlabo39@gmail.com', 'I have try it several times....'),
(10, 'isahlabo39@gmail.com', 'I have try it several times....'),
(11, 'isahlabo39@gmail.com', 'I have try it several times....'),
(12, 'isahlabo39@gmail.com', 'I have try it several times....'),
(13, 'isahlabo39@gmail.com', 'I have try it several times....'),
(14, 'isahlabo39@gmail.com', 'I have try it several times....'),
(15, 'isahlabo39@gmail.com', 'I have try it several times....');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `username`, `phone`, `email`, `pass`) VALUES
(6, 'Hassan Abubakar', 'aahassan', '09876534656780', 'ahsa@gmail.com', '866f6a6fbbd7a335657481b14a1ef879'),
(7, 'Amina Aminu', 'aabakori', '08024772431', 'aaminu@gmail.com', '745268e347a01cd43f3008c9eb354ce9'),
(8, 'Ibrahim Umar', 'mashi', '07030401020', 'abbaumr1020@gmail.com', 'd7a6c9cd1649cdb1eb4ab4dd909f7959'),
(10, 'Ibrahim Yusuf', 'ibrobk2', '08135363779', 'ibrobk@yahoo.com', 'b713e325db1b3d1f3ff78eeb2a924ff5'),
(15, 'Ishaq Aminu', 'iaminu', '0908978765', 'iaminu@gmail.com', 'a891e49a784efc153dd28596dbdfc047'),
(16, 'Sani Musa', 'smusa', '08079865746', 'smusa@gmail.com', 'cee35689fcb111fcf1c4918992b44268'),
(17, 'Umar Musa', 'yaradua', '09097656565', 'um@gmail.com', '6679b0839ac2390752037d14db4065c3'),
(18, 'Zainab Lawal', 'zeelawal', '08798765867', 'zee@yahoo.com', '4a85d40cff7f6bf0afa1cb061f9517f3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
