-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 16, 2022 at 04:30 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `turffinding`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `cusrid` int(11) NOT NULL AUTO_INCREMENT,
  `Log_id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `addr` text,
  `email` varchar(200) DEFAULT NULL,
  `cntno` varchar(100) DEFAULT NULL,
  `photo` text,
  `date` date NOT NULL,
  PRIMARY KEY (`cusrid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`cusrid`, `Log_id`, `name`, `sex`, `age`, `location`, `addr`, `email`, `cntno`, `photo`, `date`) VALUES
(2, 'TRF763233536065', 'RAS', 'Male', 25, 'palakkad', 'palakakd', 'ras@gmail.com', '9847169014', 'a.jpg', '2022-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `CLog_Id` varchar(200) NOT NULL,
  `SLog_Id` varchar(200) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `caddr` text NOT NULL,
  `ccntno` varchar(200) NOT NULL,
  `scntno` varchar(200) NOT NULL,
  `saddr` varchar(200) NOT NULL,
  `photo` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `tot` double NOT NULL,
  `dat` double NOT NULL,
  `desp` text NOT NULL,
  `stats` varchar(200) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `CLog_Id`, `SLog_Id`, `cname`, `caddr`, `ccntno`, `scntno`, `saddr`, `photo`, `name`, `qty`, `tot`, `dat`, `desp`, `stats`) VALUES
(13, 'TRF18820581', 'TRF781837233', 'RAS', 'palakakd', '9847169014', '984716955', 'PALAKKAD', 'Tulips.png', 'RIC', '10', 2500, 16, 'hhh', 'Accept'),
(14, 'TRF18820581', 'TRF781837233', 'RAS', 'palakakd', '9847169014', '984716955', 'PALAKKAD', 'Tulips.png', 'RIC', '10', 2500, 16, 'hhh', 'Cancel'),
(15, 'TRF18820581', 'TRF781837233', 'RAS', 'palakakd', '9847169014', '984716955', 'PALAKKAD', 'Tulips.png', 'RIC', '10', 2500, 16, 'hhh', 'Pending'),
(16, 'TRF18820581', 'TRF781837233', 'RAS', 'palakakd', '9847169014', '984716955', 'PALAKKAD', 'Tulips.png', 'RIC', '10', 2500, 16, 'hhh', 'Pending'),
(17, 'TRF18820581', 'TRF781837233', 'RAS', 'palakakd', '9847169014', '984716955', 'PALAKKAD', 'Tulips.png', 'RIC', '10', 2500, 16, 'hhh', 'Pending'),
(37, 'TRF18820581', 'TRF781837233', 'RAS', 'palakakd', '9847169014', '984716955', 'PALAKKAD', 'Tulips.png', 'RIC', '5', 1250, 16, 'sss', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cusrid` int(11) NOT NULL AUTO_INCREMENT,
  `Log_id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `addr` text,
  `email` varchar(200) DEFAULT NULL,
  `cntno` varchar(100) DEFAULT NULL,
  `photo` text,
  `date` date NOT NULL,
  PRIMARY KEY (`cusrid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cusrid`, `Log_id`, `name`, `sex`, `age`, `location`, `addr`, `email`, `cntno`, `photo`, `date`) VALUES
(2, 'TRF18820581', 'RAS', 'Male', 25, 'palakkad', 'palakakd', 'ras@gmail.com', '9847169014', 'Tulips.jpg', '2022-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `fcart`
--

CREATE TABLE IF NOT EXISTS `fcart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `CLog_Id` varchar(200) NOT NULL,
  `SLog_Id` varchar(200) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `caddr` text NOT NULL,
  `ccntno` varchar(200) NOT NULL,
  `scntno` varchar(200) NOT NULL,
  `saddr` varchar(200) NOT NULL,
  `photo` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `tot` double NOT NULL,
  `dat` double NOT NULL,
  `desp` text NOT NULL,
  `stats` varchar(200) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fcart`
--

INSERT INTO `fcart` (`cart_id`, `CLog_Id`, `SLog_Id`, `cname`, `caddr`, `ccntno`, `scntno`, `saddr`, `photo`, `name`, `qty`, `tot`, `dat`, `desp`, `stats`) VALUES
(1, 'TRF18820581', 'TRF768776089', 'RAS', 'palakakd', '9847169014', '984716955', 'PALAKKAD', 'Tulips.png', 'RIC', '5', 12500, 16, 'sss', 'Accept'),
(2, 'TRF18820581', 'TRF768776089', 'RAS', 'palakakd', '9847169014', '984716955', 'PALAKKAD', 'Tulips.png', 'RIC', '5', 12500, 16, 'sss', 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fdbk_id` int(11) NOT NULL AUTO_INCREMENT,
  `Log_Id` text NOT NULL,
  `fname` varchar(200) NOT NULL,
  `contactno` varchar(200) NOT NULL,
  `subj` varchar(200) NOT NULL,
  `despc` text NOT NULL,
  `stat` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `reply` text NOT NULL,
  `rdate` date NOT NULL,
  PRIMARY KEY (`fdbk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fdbk_id`, `Log_Id`, `fname`, `contactno`, `subj`, `despc`, `stat`, `date`, `reply`, `rdate`) VALUES
(1, 'TRF763233536', 'NICE', '9847169014', 'hi', 'sss', 'Accept', '2022-03-16', 'eryery', '2022-03-16'),
(2, 'TRF763233536', 'NICE', '9847169014', 'hi', 'sss', 'Pending', '2022-03-16', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE IF NOT EXISTS `food` (
  `turfrid` int(11) NOT NULL AUTO_INCREMENT,
  `Log_Id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `licenno` text NOT NULL,
  `cntno` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `qty` text NOT NULL,
  `rate` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `photo` text NOT NULL,
  `desp` text,
  PRIMARY KEY (`turfrid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`turfrid`, `Log_Id`, `name`, `licenno`, `cntno`, `location`, `addr`, `qty`, `rate`, `date`, `photo`, `desp`) VALUES
(1, 'TRF768776089', 'RIC', 'NIUIGG', '984716955', 'PALAKKAD', 'PALAKKAD', '250', '2500', '2022-12-31', 'Tulips.png', 'SS'),
(2, 'TRF768776089', 'RIC', 'NIUIGG', '984716955', 'PALAKKAD', 'PALAKKAD', '250', '250', '2022-12-31', 'Lighthouse.jpg', 'SS'),
(3, 'TRF768776089', 'RIC', 'NIUIGG', '984716955', 'PALAKKAD', 'PALAKKAD', '250', '250', '2022-12-31', 'Lighthouse.jpg', 'SS'),
(4, 'TRF768776089', 'RIC', 'NIUIGG', '984716955', 'PALAKKAD', 'PALAKKAD', '250', '250', '2022-12-31', 'Lighthouse.jpg', 'SS'),
(5, 'TRF768776089', 'RIC', 'NIUIGG', '984716955', 'PALAKKAD', 'PALAKKAD', '250', '250', '2022-12-31', 'Lighthouse.jpg', 'SS'),
(6, 'TRF768776089', 'ss', '2112', '125125', 'palakad', 'palakkad', '250', '25', '2022-03-16', 'b.jpg', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notid` int(11) NOT NULL AUTO_INCREMENT,
  `notifid` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `contno` varchar(200) NOT NULL,
  `subj` text NOT NULL,
  `descprt` text NOT NULL,
  `sdate` date NOT NULL,
  `ddate` date NOT NULL,
  PRIMARY KEY (`notid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notid`, `notifid`, `name`, `contno`, `subj`, `descprt`, `sdate`, `ddate`) VALUES
(3, 'NOT1102609048', 'shameer', '9847169014', 'hi', 'nice', '2022-12-31', '2022-12-31'),
(4, 'NOT1102609048', 'shameer', '9847169014', 'hi', 'nice', '2022-12-31', '2022-12-31'),
(5, 'NOT1102609048', 'shameer', '9847169014', 'hi', 'nice', '2022-12-31', '2022-12-31'),
(6, 'NOT1102609048', 'shameer', '9847169014', 'hi', 'nice', '2022-12-31', '2022-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `turfrid` int(11) NOT NULL AUTO_INCREMENT,
  `Log_Id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `licenno` text NOT NULL,
  `cntno` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `qty` text NOT NULL,
  `rate` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `photo` text NOT NULL,
  `desp` text,
  PRIMARY KEY (`turfrid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`turfrid`, `Log_Id`, `name`, `licenno`, `cntno`, `location`, `addr`, `qty`, `rate`, `date`, `photo`, `desp`) VALUES
(1, 'TRF781837233', 'RIC', 'NIUIGG', '984716955', 'PALAKKAD', 'PALAKKAD', '250', '250', '2022-12-31', 'Tulips.png', 'SS'),
(2, 'TRF781837233', 'RIC', 'NIUIGG', '984716955', 'PALAKKAD', 'PALAKKAD', '250', '250', '2022-12-31', 'Lighthouse.jpg', 'SS'),
(3, 'TRF781837233', 'RIC', 'NIUIGG', '984716955', 'PALAKKAD', 'PALAKKAD', '250', '250', '2022-12-31', 'Lighthouse.jpg', 'SS'),
(4, 'TRF781837233', 'RIC', 'NIUIGG', '984716955', 'PALAKKAD', 'PALAKKAD', '250', '250', '2022-12-31', 'Lighthouse.jpg', 'SS'),
(5, 'TRF781837233', 'RIC', 'NIUIGG', '984716955', 'PALAKKAD', 'PALAKKAD', '250', '250', '2022-12-31', 'Lighthouse.jpg', 'SS');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
  `restid` int(11) NOT NULL AUTO_INCREMENT,
  `Log_id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `addrs` text,
  `email` text,
  `cntno` varchar(100) DEFAULT NULL,
  `expr` text,
  `photo` varchar(200) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`restid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restid`, `Log_id`, `name`, `edate`, `location`, `addrs`, `email`, `cntno`, `expr`, `photo`, `date`) VALUES
(3, 'TRF768776089', 'Habibi', NULL, 'PALAKKAD', 'PALAKKAD', 'hab@gmail.com', '9847169014', 'ONE YEAR', 'Lighthouse.jpg', '2022-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE IF NOT EXISTS `shops` (
  `shopid` int(11) NOT NULL AUTO_INCREMENT,
  `Log_id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `addrs` text,
  `email` text,
  `cntno` varchar(100) DEFAULT NULL,
  `expr` text,
  `photo` varchar(200) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`shopid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`shopid`, `Log_id`, `name`, `edate`, `location`, `addrs`, `email`, `cntno`, `expr`, `photo`, `date`) VALUES
(2, 'TRF781837233', 'KVR', NULL, 'palakkad', 'palakkad', 'kvr@gmail.com', '9847169014', 'on year', 'Tulips.png', '2022-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `trcart`
--

CREATE TABLE IF NOT EXISTS `trcart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `CLog_Id` varchar(200) NOT NULL,
  `SLog_Id` varchar(200) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `caddr` text NOT NULL,
  `ccntno` varchar(200) NOT NULL,
  `scntno` varchar(200) NOT NULL,
  `saddr` varchar(200) NOT NULL,
  `photo` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `tot` double NOT NULL,
  `dat` date NOT NULL,
  `desp` text NOT NULL,
  `stats` varchar(200) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `trcart`
--

INSERT INTO `trcart` (`cart_id`, `CLog_Id`, `SLog_Id`, `cname`, `caddr`, `ccntno`, `scntno`, `saddr`, `photo`, `name`, `qty`, `tot`, `dat`, `desp`, `stats`) VALUES
(1, 'TRF18820581', 'TRF763233536', 'RAS', 'palakakd', '9847169014', '9847169254', 'PALAKKAD', 'Penguins.jpg', 'NICE', '5', 1250, '2022-03-16', 'hi', 'Accept'),
(2, 'TRF18820581', 'TRF763233536', 'RAS', 'palakakd', '9847169014', '9847169254', 'PALAKKAD', 'Penguins.jpg', 'NICE', '5', 1250, '2022-03-16', 'hi', 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `turf`
--

CREATE TABLE IF NOT EXISTS `turf` (
  `turfid` int(11) NOT NULL AUTO_INCREMENT,
  `Log_id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `addr` text,
  `email` varchar(200) DEFAULT NULL,
  `cntno` varchar(100) DEFAULT NULL,
  `expr` text,
  `photo` text,
  `date` date NOT NULL,
  PRIMARY KEY (`turfid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `turf`
--

INSERT INTO `turf` (`turfid`, `Log_id`, `name`, `location`, `addr`, `email`, `cntno`, `expr`, `photo`, `date`) VALUES
(3, 'TRF763233536', 'NICE', 'PALAKKAD', 'PALAKKAD', 'nice@gmail.com', '9847169014', 'n@gmail.com', 'Tulips.jpg', '2022-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `turf_register`
--

CREATE TABLE IF NOT EXISTS `turf_register` (
  `turfrid` int(11) NOT NULL AUTO_INCREMENT,
  `Log_Id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `licenno` text NOT NULL,
  `cntno` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `capcty` text NOT NULL,
  `amnt` varchar(200) NOT NULL,
  `edate` date NOT NULL,
  `photo` text NOT NULL,
  `desp` text,
  PRIMARY KEY (`turfrid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `turf_register`
--

INSERT INTO `turf_register` (`turfrid`, `Log_Id`, `name`, `licenno`, `cntno`, `location`, `addr`, `capcty`, `amnt`, `edate`, `photo`, `desp`) VALUES
(5, 'TRF763233536', 'NICE', '79879464', '9847169254', 'PALAKKAD', 'PALAKKAD', '250', '250', '2022-12-31', 'Penguins.jpg', 'SSS'),
(6, 'TRF763233536', 'NICE', '79879464', '9847169254', 'PALAKKAD', 'PALAKKAD', '250', '250', '2022-12-31', 'a.jpg', 'SSS'),
(7, 'TRF763233536', 'NICE', '79879464', '9847169254', 'PALAKKAD', 'PALAKKAD', '250', '250', '2022-12-31', 'Penguins.jpg', 'SSS');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `usrid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `Log_Id` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `utype` varchar(200) NOT NULL,
  `cntno` varchar(200) NOT NULL,
  PRIMARY KEY (`usrid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`usrid`, `name`, `Log_Id`, `email`, `password`, `utype`, `cntno`) VALUES
(10, 'Administrator', 'TRF763233536065', 'admin@gmail.com', '123', 'Administrator', '9847169014'),
(11, 'KVR', 'TRF781837233', 'kvr@gmail.com', '123', 'Shops', '9847169014'),
(13, 'Habibi', 'TRF768776089', 'hab@gmail.com', '123', 'Restaurant', '9847169014'),
(14, 'RAS', 'TRF18820581', 'ras@gmail.com', '123', 'User', '9847169014'),
(15, 'NICE', 'TRF763233536', 'nice@gmail.com', '123', 'Turf', '9847169014');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
