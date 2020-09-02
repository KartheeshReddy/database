-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: us-cdbr-east-02.cleardb.com
-- Generation Time: Sep 02, 2020 at 02:01 PM
-- Server version: 5.5.62-log
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heroku_da380dfb3ec7262`
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
(1, 'kartheeshreddy', 'menternship');

-- --------------------------------------------------------

--
-- Table structure for table `assign`
--

CREATE TABLE `assign` (
  `id` int(11) NOT NULL,
  `test_id` int(20) NOT NULL,
  `lab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign`
--

INSERT INTO `assign` (`id`, `test_id`, `lab`) VALUES
(159, 0, ''),
(160, 0, ''),
(271, 476451555, 'Lab A'),
(281, 334335854, 'Lab A'),
(291, 890320765, 'Lab A'),
(301, 935507760, 'Lab A'),
(311, 334335854, 'Lab B'),
(321, 890320765, 'Lab B'),
(331, 496450774, 'Lab B'),
(341, 1031931971, 'Lab B'),
(351, 476451555, 'Lab C'),
(361, 496450774, 'Lab C'),
(371, 1031931971, 'Lab C'),
(381, 935507760, 'Lab C');

-- --------------------------------------------------------

--
-- Table structure for table `bookingdetails`
--

CREATE TABLE `bookingdetails` (
  `id` bigint(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `mobile` bigint(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookingdetails`
--

INSERT INTO `bookingdetails` (`id`, `username`, `customer`, `mobile`, `email`, `address`, `date`, `time`, `status`) VALUES
(127486772, 'abc', 'abc', 7418529630, 'qwertyu@qaz.kj', 'qwertyu45678', '2020-09-04', '9:00AM-10:00AM', 'Approved'),
(1718048398, 'ram', 'fugjfjuh', 4535, 'gjhg@hgg.fj', 'ghjgjh', '2020-08-20', '11:00AM-12:00PM', 'Approved'),
(984570330, 'xyz', 'yrhdhyg', 7869435, 'khgg@fjg.jgf', 'hjgfjhvjnmb', '2020-08-14', '4:00PM-5:00PM', 'Approved'),
(498973729, 'abc', 'tedsgf', 654132, 'fjg@fhhg.fghf', 'gygjh687', '2020-08-14', '9:00AM-10:00AM', 'Rejected'),
(1165399576, 'sheru', 'sharanya', 7896543210, 'sheru@live.com', 'qwertyuiop', '2020-09-04', '9:00AM-10:00AM', 'Approved'),
(2014438108, 'karthi', 'karthi reddy', 7894561230, 'kkr@outlook.com', 'H.No:34/5-3,Jubilee Hills,Hyderabad', '2020-09-18', '2:00PM-3:00PM', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(20) NOT NULL,
  `lab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `lab`) VALUES
(1592551317, 'Lab A'),
(1906965765, 'Lab B'),
(1433601943, 'Lab C');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `id` int(11) NOT NULL,
  `test_id` int(20) NOT NULL,
  `lab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `test_id`, `lab`) VALUES
(5, 334335854, 'Lab A'),
(6, 334335854, 'Lab B'),
(7, 334335854, 'Lab C'),
(8, 476451555, 'Lab D'),
(9, 476451555, 'Lab E'),
(11, 476451555, 'Lab F'),
(12, 496450774, 'Lab G'),
(13, 496450774, 'Lab H'),
(14, 496450774, 'Lab I'),
(15, 890320765, 'Lab J'),
(16, 890320765, 'Lab K'),
(18, 890320765, 'Lab L'),
(19, 935507760, 'Lab M'),
(20, 935507760, 'Lab N'),
(21, 935507760, 'Lab O'),
(22, 1031931971, 'Lab P'),
(23, 1031931971, 'Lab Q'),
(24, 1031931971, 'Lab R'),
(26, 0, 'Lab K');

-- --------------------------------------------------------

--
-- Table structure for table `newbookingpage`
--

CREATE TABLE `newbookingpage` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `test` varchar(30) NOT NULL,
  `prescription` varchar(100) NOT NULL,
  `lab` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newbookingpage`
--

INSERT INTO `newbookingpage` (`id`, `username`, `test`, `prescription`, `lab`) VALUES
(127486772, 'abc', '334335854', 'uploads/Receipt-Details.pdf', 'Lab B'),
(1718048398, 'ram', '334335854', 'uploads/bookingdetails.pdf', 'Lab B'),
(984570330, 'xyz', '334335854', 'uploads/Transaction-Details.pdf', 'Lab A'),
(498973729, 'abc', '935507760', 'uploads/sample1591677900319.pdf', 'Lab N'),
(1165399576, 'sheru', '476451555', 'uploads/sample1592298556588.pdf', 'Lab A'),
(2014438108, 'karthi', '476451555', 'uploads/Receipt-Details.pdf', 'Lab C');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `password`) VALUES
('abc', '123'),
('xyz', '456'),
('lmn', '789'),
('ram', 'ram'),
('sheru', '000'),
('karthi', 'kkr');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(20) NOT NULL,
  `test` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `test`) VALUES
(476451555, 'CT Scan'),
(334335854, 'Electrocardiogram (ECG)'),
(890320765, 'Endoscopy'),
(496450774, 'MRI Scans'),
(1031931971, 'Thyroid Tests'),
(935507760, 'Other');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign`
--
ALTER TABLE `assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assign`
--
ALTER TABLE `assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
