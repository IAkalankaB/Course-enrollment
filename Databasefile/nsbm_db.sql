-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2018 at 05:27 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nsbm_db`
--
CREATE DATABASE IF NOT EXISTS `nsbm_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nsbm_db`;

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE IF NOT EXISTS `lecturer` (
  `Lec_id` varchar(10) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `MobileNo` varchar(10) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `faculty` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Lec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`Lec_id`, `FirstName`, `LastName`, `Email`, `Address`, `MobileNo`, `Description`, `gender`, `faculty`) VALUES
('lec001', 'Srinatha', 'Mahagamage', 'srinath@gmail.com', 'Melsiripura', '0711451245', 'He does the PHD in university of uttah', 'Male', 'School Of Computing'),
('lec002', 'Banuka', 'Aravinda', 'banuka@gmail.com', 'Boyagane', '0711414512', 'I am do my PHD in University of California', 'Male', 'School Of Computing');

-- --------------------------------------------------------

--
-- Table structure for table `marksbus11`
--

CREATE TABLE IF NOT EXISTS `marksbus11` (
  `Stu_id` char(9) NOT NULL,
  `BS1001` float NOT NULL,
  `BS1002` float NOT NULL,
  `BS1003` float NOT NULL,
  `BS1004` float NOT NULL,
  `BS1005` float NOT NULL,
  `BS1006` float NOT NULL,
  `BS1007` float DEFAULT NULL,
  `BS1008` float DEFAULT NULL,
  PRIMARY KEY (`Stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marksbus11`
--

INSERT INTO `marksbus11` (`Stu_id`, `BS1001`, `BS1002`, `BS1003`, `BS1004`, `BS1005`, `BS1006`, `BS1007`, `BS1008`) VALUES
('2016BS001', 80, 0, 0, 0, 0, 0, NULL, NULL),
('2016BS003', 0, 0, 0, 0, 0, 0, NULL, NULL),
('2016BS008', 0, 0, 0, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marksbus12`
--

CREATE TABLE IF NOT EXISTS `marksbus12` (
  `Stu_id` char(9) NOT NULL,
  `BS1007` float DEFAULT NULL,
  `BS1008` float DEFAULT NULL,
  `BS1009` float DEFAULT NULL,
  `BS1010` float DEFAULT NULL,
  PRIMARY KEY (`Stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `markscs11`
--

CREATE TABLE IF NOT EXISTS `markscs11` (
  `Stu_id` char(9) NOT NULL,
  `CS1001` float NOT NULL,
  `CS1002` float NOT NULL,
  `CS1003` float NOT NULL,
  `CS1004` float NOT NULL,
  `CS1005` float NOT NULL,
  `CS1006` float NOT NULL,
  `CS1007` float NOT NULL,
  `CS1008` float NOT NULL,
  PRIMARY KEY (`Stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markscs11`
--

INSERT INTO `markscs11` (`Stu_id`, `CS1001`, `CS1002`, `CS1003`, `CS1004`, `CS1005`, `CS1006`, `CS1007`, `CS1008`) VALUES
('2016cs001', 50, 65, 57, 76, 51, 41, 90, 30),
('2016cs002', 87, 90, 74, 47, 56, 74, 20, 66);

-- --------------------------------------------------------

--
-- Table structure for table `markscs12`
--

CREATE TABLE IF NOT EXISTS `markscs12` (
  `Stu_id` char(9) NOT NULL,
  `CS1010` float DEFAULT NULL,
  `CS1011` float DEFAULT NULL,
  `CS1012` float DEFAULT NULL,
  `CS1013` float DEFAULT NULL,
  PRIMARY KEY (`Stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `markseng11`
--

CREATE TABLE IF NOT EXISTS `markseng11` (
  `Stu_id` char(9) NOT NULL,
  `ENG1001` float NOT NULL,
  `ENG1002` float NOT NULL,
  `ENG1003` float NOT NULL,
  `ENG1004` float NOT NULL,
  `ENG1005` float NOT NULL,
  `ENG1006` float NOT NULL,
  `ENG1007` float NOT NULL,
  `ENG1008` float NOT NULL,
  PRIMARY KEY (`Stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markseng11`
--

INSERT INTO `markseng11` (`Stu_id`, `ENG1001`, `ENG1002`, `ENG1003`, `ENG1004`, `ENG1005`, `ENG1006`, `ENG1007`, `ENG1008`) VALUES
('2016cs009', 0, 0, 0, 0, 0, 0, 0, 0),
('2016EN002', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `markseng12`
--

CREATE TABLE IF NOT EXISTS `markseng12` (
  `Stu_id` char(9) NOT NULL,
  `EN1010` float DEFAULT NULL,
  `EN1011` float DEFAULT NULL,
  `EN1012` float DEFAULT NULL,
  `EN1013` float DEFAULT NULL,
  PRIMARY KEY (`Stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `Stu_id` char(9) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `BirthDay` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `MobileNo` char(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Faculty` varchar(30) NOT NULL,
  `CourseType` varchar(20) NOT NULL,
  `year` char(3) DEFAULT NULL,
  PRIMARY KEY (`Stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Stu_id`, `FirstName`, `LastName`, `BirthDay`, `Address`, `MobileNo`, `Email`, `Gender`, `Faculty`, `CourseType`, `year`) VALUES
('2016BS001', 'Srinatha', 'Mahagama', '1995/10/12', 'Melsiripura,kurunegala', '0711451845', 'mahagama@yahoo.com', 'Male', 'School Of Business', 'Bachelor', '2nd'),
('2016BS008', 'shyama', 'soyza', '1995/01/20', 'Moratuwa,Panadura', '0711477452', 'shayamasoyza@ymail.com', 'female', 'School Of Business', 'Bachelor', '1st'),
('2016cs001', 'Bhanuka', 'Aravinda', '1995/01/10', 'Boyagane,Kurunegala', '0711451214', 'banukaaravinda@gmail.com', 'Male', 'School Of Computing', 'Bachelor', '1st'),
('2016cs002', 'Pasan', 'Jayawickrama', '1994/05/10', 'Narammala,Kurunegala', '0767548541', 'pasanJaye@gmail.com', 'Male', 'School Of Computing', 'Bachelor', '1st'),
('2016EN002', 'Isuru', 'Banda', '1995/10/10', 'No65,Galleroad, Colombo 06', '0751421451', 'banda@hotmail.com', 'Male', 'School Of Engineering', 'Master', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `timetablecs1`
--

CREATE TABLE IF NOT EXISTS `timetablecs1` (
  `time` varchar(20) NOT NULL,
  `monday` varchar(20) NOT NULL,
  `tuesday` varchar(20) NOT NULL,
  `wednesday` varchar(20) NOT NULL,
  `thursday` varchar(20) NOT NULL,
  `friday` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetablecs1`
--

INSERT INTO `timetablecs1` (`time`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`) VALUES
('8-10', 'cs1001 L(w002)', 'cs1003 P(LAB B)', 'cs1002 P(SR004)', 'cs1004 P(LAB C)', '-'),
('10-12', '-', 'cs1003 L(w001)', 'cs1004 P(LAB D)', '-', 'cs1001 L(SR004)'),
('1-3', 'cs1004 L(SR004)', 'cs1003 P(LAB E)', 'cs1002 L(w001) ', '-', '- '),
('3-5', 'cs1001 L(w001)', 'cs1004 L(Mini Audi)', 'cs1003 P(LAB A)', '-', 'cs1003 P(LAB A)');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
