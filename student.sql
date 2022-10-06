-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 06:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.2.0

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
-- Table structure for table `pet`
--

CREATE TABLE `pet` (
  `petid` int(13) NOT NULL,
  `pet` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pet`
--

INSERT INTO `pet` (`petid`, `pet`) VALUES
(2, 'หนู'),
(3, 'เสือ'),
(4, 'ใส้เดือน'),
(5, 'งู'),
(6, 'แมลงสาบ');

-- --------------------------------------------------------

--
-- Table structure for table `studentbio`
--

CREATE TABLE `studentbio` (
  `sid` int(13) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `slastname` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `telephone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentbio`
--

INSERT INTO `studentbio` (`sid`, `sname`, `slastname`, `address`, `telephone`) VALUES
(1, 'วีรกร', 'นิลนามะ', 'ที่นั่นแหละ', '0000000000'),
(3, 'สุรศักดิ์', 'หนูด้วง', 'เด็กใต้', '1345795613'),
(4, 'ฉัตรมงคล', 'สอนจันทร์', 'เด็กปทุมตัวอยู่นครนายก', '6157958432'),
(5, 'ใครสักคนแหละ', 'นามสกุล', 'ที่นั่นแหละ', '6495826457'),
(6, 'ธีรพัฒน์', 'อ่อนแย้ม', 'เด็กคลอง 8', '6597846125'),
(11, 'ธิดารัตน์', 'จำไม่ได้', 'หอคลอง 6', '6534915764');

-- --------------------------------------------------------

--
-- Table structure for table `studentpet`
--

CREATE TABLE `studentpet` (
  `spid` int(13) NOT NULL,
  `sid` int(13) NOT NULL,
  `petid` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentpet`
--

INSERT INTO `studentpet` (`spid`, `sid`, `petid`) VALUES
(1, 1, 5),
(2, 1, 6),
(3, 3, 2),
(4, 3, 4),
(5, 4, 3),
(6, 4, 5),
(7, 1, 5),
(8, 1, 6),
(9, 3, 2),
(10, 3, 4),
(11, 4, 3),
(12, 4, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`petid`),
  ADD KEY `petid-index` (`petid`);

--
-- Indexes for table `studentbio`
--
ALTER TABLE `studentbio`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `sid-index` (`sid`);

--
-- Indexes for table `studentpet`
--
ALTER TABLE `studentpet`
  ADD PRIMARY KEY (`spid`),
  ADD KEY `sid_constraint` (`sid`),
  ADD KEY `petid_constraint` (`petid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `petid` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `studentbio`
--
ALTER TABLE `studentbio`
  MODIFY `sid` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `studentpet`
--
ALTER TABLE `studentpet`
  MODIFY `spid` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `studentpet`
--
ALTER TABLE `studentpet`
  ADD CONSTRAINT `petid_constraint` FOREIGN KEY (`petid`) REFERENCES `pet` (`petid`),
  ADD CONSTRAINT `sid_constraint` FOREIGN KEY (`sid`) REFERENCES `studentbio` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
