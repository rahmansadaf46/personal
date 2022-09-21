-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8080
-- Generation Time: Sep 21, 2022 at 04:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `std_data`
--

CREATE TABLE `std_data` (
  `id` int(100) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `fathername` text NOT NULL,
  `address` text NOT NULL,
  `gender` text NOT NULL,
  `laptop` tinyint(1) NOT NULL,
  `mobile` tinyint(1) NOT NULL,
  `department` text NOT NULL,
  `roll` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `std_data`
--

INSERT INTO `std_data` (`id`, `firstname`, `lastname`, `fathername`, `address`, `gender`, `laptop`, `mobile`, `department`, `roll`, `password`) VALUES
(2, 'Murad', 'Chudir vai', 'Tarifur', '', 'Other', 0, 0, 'diploma', '6969', 'muradkhanki'),
(3, 'Sadaf', 'Rahman', 'Saidur Rahman', '', 'Male', 1, 0, 'cse', '17050', ''),
(4, 'Nazmus Sakib', 'Abir', 'Murad Khan', '', 'Male', 1, 0, 'cse', '17059', '');

-- --------------------------------------------------------

--
-- Table structure for table `std_info`
--

CREATE TABLE `std_info` (
  `id` int(100) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `fathername` text NOT NULL,
  `address` text NOT NULL,
  `gender` text NOT NULL,
  `laptop` tinyint(1) NOT NULL,
  `mobile` tinyint(1) NOT NULL,
  `department` text NOT NULL,
  `roll` text NOT NULL,
  `password` text NOT NULL,
  `mark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `std_info`
--

INSERT INTO `std_info` (`id`, `firstname`, `lastname`, `fathername`, `address`, `gender`, `laptop`, `mobile`, `department`, `roll`, `password`, `mark`) VALUES
(2, 'Rayhan', 'Shuvo', 'Manzarul', 'Kalabagan', 'Male', 1, 0, 'cse', '1523', 'r123', '56');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(100) NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `fatherName` text NOT NULL,
  `address` text NOT NULL,
  `gender` text NOT NULL,
  `laptop` tinyint(1) NOT NULL,
  `mobile` tinyint(1) NOT NULL,
  `department` text NOT NULL,
  `roll` text NOT NULL,
  `password` text NOT NULL,
  `mark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(100) NOT NULL,
  `studentname` text NOT NULL,
  `address` text NOT NULL,
  `gender` text NOT NULL,
  `computer` tinyint(1) NOT NULL,
  `mobile` tinyint(1) NOT NULL,
  `department` text NOT NULL,
  `password` text NOT NULL,
  `cgpa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `studentname`, `address`, `gender`, `computer`, `mobile`, `department`, `password`, `cgpa`) VALUES
(1, 'Kamrul Bari', 'Agargaon', 'Male', 1, 0, 'cse', 'kamrul345', '87'),
(2, 'Sadaf Rahman', 'Kathal Bagan, Dhaka-1205', 'Male', 0, 1, 'cse', 'sadaf123', '99');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(100) NOT NULL,
  `studentname` text NOT NULL,
  `address` text NOT NULL,
  `gender` text NOT NULL,
  `computer` tinyint(1) NOT NULL,
  `mobile` tinyint(1) NOT NULL,
  `department` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `studentname`, `address`, `gender`, `computer`, `mobile`, `department`, `password`) VALUES
(1, 'Sadaf Rahman', 'Kathal Bagan, Dhaka', 'Male', 1, 0, 'cse', 'sadaf123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `std_data`
--
ALTER TABLE `std_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_info`
--
ALTER TABLE `std_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `std_data`
--
ALTER TABLE `std_data`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `std_info`
--
ALTER TABLE `std_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
