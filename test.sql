-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2017 at 04:23 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `newaccount`
--

CREATE TABLE `newaccount` (
  `accountno` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `repassword` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `adderess` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newaccount`
--

INSERT INTO `newaccount` (`accountno`, `username`, `password`, `repassword`, `amount`, `adderess`, `phone`) VALUES
('0', 'KULDEEPP', 'KULDEEPP', 'KULDEEPP', '164996', 'burari', '145.0'),
('1000', 'ram', 'ram', 'ram', '5988', 'haryana', '1252'),
('2', 'abcd', 'abcd', 'abcd', '4752', 'dd', '145'),
('420', 'SHARMA', 'SHARMA', 'SHARMA', '5464', 'BADLI', '142'),
('5', 'amar', 'amar', 'amar', '4700', 'uk', '1232'),
('88', 'priya ', 'priya', 'priya', '5200', 'delhi wali gf ', '998878'),
('kl', 'MUKESH', 'MUKESH', 'MUKESH', '1254', 'Delhi', '145236'),
('null', 'dd', 'tomar', 'tomar', 'burari', '5000', '84676874');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `pass`) VALUES
('tomar@gmail.com', 'tomar'),
('abc', 'abc'),
('abc', 'abc'),
('qq', 'qq');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`userName`, `password`) VALUES
('kuldeep', 'kk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `newaccount`
--
ALTER TABLE `newaccount`
  ADD PRIMARY KEY (`accountno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
