-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2022 at 02:32 PM
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
-- Database: `blood_donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `blood_id` int(11) NOT NULL,
  `blood_type` varchar(4) DEFAULT NULL,
  `dnr_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`blood_id`, `blood_type`, `dnr_id`) VALUES
(67, 'O-', 21),
(90, 'AB+', 1122),
(99, 'A-', 85),
(333, 'B+', 111),
(2345, 'AB-', 255);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`) VALUES
(1, 'DR.HAIDER'),
(2, 'DR.ALI'),
(3, 'DR.AHMED'),
(4, 'DR.ANSARI');

-- --------------------------------------------------------

--
-- Table structure for table `donar`
--

CREATE TABLE `donar` (
  `donar_id` int(11) NOT NULL,
  `donar_name` varchar(20) DEFAULT NULL,
  `age` int(100) DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `bp` varchar(200) DEFAULT NULL,
  `doc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donar`
--

INSERT INTO `donar` (`donar_id`, `donar_name`, `age`, `gender`, `bp`, `doc_id`) VALUES
(21, 'NOOR', 26, 'FEMALE', '90,134', 4),
(85, 'FAIZAN', 30, 'MALE', '85,90', 2),
(111, 'BILAL', 20, 'MALE', '80,120', 1),
(255, 'BANDOOK KHAN', 50, 'MALE', '90,142', 4),
(1122, 'ABDULLAH', 30, 'MALE', '90,136', 4);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientID` int(11) NOT NULL,
  `patientName` varchar(255) DEFAULT NULL,
  `userBlood_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `patientName`, `userBlood_id`) VALUES
(11111, 'AAAAA', 90),
(33445, 'ULALA', 67);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`blood_id`),
  ADD KEY `dnr_id` (`dnr_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `donar`
--
ALTER TABLE `donar`
  ADD PRIMARY KEY (`donar_id`),
  ADD KEY `doc_id` (`doc_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientID`),
  ADD KEY `userBlood_id` (`userBlood_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood`
--
ALTER TABLE `blood`
  ADD CONSTRAINT `blood_ibfk_1` FOREIGN KEY (`dnr_id`) REFERENCES `donar` (`donar_id`);

--
-- Constraints for table `donar`
--
ALTER TABLE `donar`
  ADD CONSTRAINT `donar_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`doctor_id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`userBlood_id`) REFERENCES `blood` (`blood_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
