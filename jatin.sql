-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2021 at 04:23 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jatin`
--

-- --------------------------------------------------------

--
-- Table structure for table `querry`
--

CREATE TABLE `querry` (
  `sno` int(200) NOT NULL,
  `name` text NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `address` varchar(300) NOT NULL,
  `img_file` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone_no` int(15) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `querry`
--

INSERT INTO `querry` (`sno`, `name`, `title`, `content`, `address`, `img_file`, `email`, `phone_no`, `date`) VALUES
(3, 'JATIN KUMAR SHARMA', 'Child Labour', 'In our are there are children working in shops', 'PALA SAHIBABAD, NEAR PREM CHOWK, TAMMANCHA FACTORY, ALIGRH, UTTAR PRADESH, 202001', 'jee.jpg', 'en.jatinshr@gmail.co', 2147483647, '2021-02-14 19:08:02'),
(4, 'Bhavya Jain', 'Child Labour', 'I live in Jharkhand and i see that child labour is a very common practice in our village .\r\nThese small children who must be in schools are pushed by their parents to work in the \r\nmines.I want support all of you to raise your voice against this malpractice \r\nso that authorities take the needed steps to addrss this problem', 'Sher gaon, Dhanbad , Jharkhand', 'NEET.jpg', 'bhavyajain@gmail.com', 0, '2021-02-14 19:27:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `querry`
--
ALTER TABLE `querry`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `querry`
--
ALTER TABLE `querry`
  MODIFY `sno` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
