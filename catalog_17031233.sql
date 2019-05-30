-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2019 at 04:01 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalog_17031233`
--

-- --------------------------------------------------------

--
-- Table structure for table `chief`
--

CREATE TABLE `chief` (
  `chief_name` varchar(30) NOT NULL,
  `chief_address` varchar(30) NOT NULL,
  `chief_email` varchar(35) NOT NULL,
  `chief_phone` int(7) NOT NULL,
  `chief_mobilephone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chief`
--

INSERT INTO `chief` (`chief_name`, `chief_address`, `chief_email`, `chief_phone`, `chief_mobilephone`) VALUES
('Sulav Thapa', 'Bhaktapur', 'thapasulup@gmail.com', 1234567, 127896540);

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `type` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Logo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`type`, `Name`, `Address`, `Phone`, `Logo`) VALUES
('trademark', 'Arm Tech.', 'Baneshowr', 1234567890, 'logo');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department` int(10) NOT NULL,
  `department_name` varchar(30) NOT NULL,
  `project_manager` varchar(30) NOT NULL,
  `Phone` int(10) NOT NULL,
  `description` varchar(125) NOT NULL,
  `projects` int(10) NOT NULL,
  `nofstaff` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department`, `department_name`, `project_manager`, `Phone`, `description`, `projects`, `nofstaff`) VALUES
(1, 'Android App Development', 'Ram Tiwari', 1478523690, 'This department focuses on the all types of the android app development. this department focuses makes user friendly applicat', 5, 35),
(2, 'IOS App development', 'Steve Jobs', 2130456987, 'This department looks after the app development for the apple devices.', 4, 26),
(3, 'Desktop Software Development', 'Mark Angel', 1456023789, 'This department looks after the development of the desktop software.', 12, 45),
(4, 'WebSite Development Department', 'Hari Ram', 2103658974, 'This department develops the website as per the requirement of the clients.', 13, 22),
(5, 'Web App Development', 'Samrakshya Thapa', 1233545660, 'This department develops the web application.', 22, 60);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
