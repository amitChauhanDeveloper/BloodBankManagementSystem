-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 06:40 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `adv_id` int(100) NOT NULL,
  `camp_title` varchar(100) NOT NULL,
  `org_by` varchar(100) NOT NULL,
  `pic` varchar(700) NOT NULL,
  `detail` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`adv_id`, `camp_title`, `org_by`, `pic`, `detail`) VALUES
(4, 'Ramgarhia Engg Collage', 'Ramgarhia education consial', '2.jpg', 'Blood donation camp Organised by REC.  One who donate get certificate by REC\r\nThat can help you also to gets blood in jeopard time');

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE `bloodgroup` (
  `bg_id` int(100) NOT NULL,
  `bg_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(13, 'o+'),
(14, 'o-'),
(15, 'AB+'),
(16, 'AB-'),
(17, 'A+'),
(18, 'A-'),
(19, 'B+'),
(20, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE `camp` (
  `camp_id` int(100) NOT NULL,
  `camp_title` varchar(500) NOT NULL,
  `organised_by` varchar(500) NOT NULL,
  `state` int(100) NOT NULL,
  `city` int(100) NOT NULL,
  `pic` varchar(900) NOT NULL,
  `detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`camp_id`, `camp_title`, `organised_by`, `state`, `city`, `pic`, `detail`) VALUES
(10, 'Kalol Institute Management Studies', 'KIRC Management', 10, 16, 'blood_donation_camp.jpg', 'A Blood Donation Camp at KIRC College  organized by Kirc Management, Kalol.'),
(11, 'VJKM Vadu', 'VJKM Management', 10, 17, 'B.D camp 034.jpg', 'A Blood Donation Camp at VJKM College organized by VJKM Management Vadu, Dist Mahesana, Gujarat.'),
(12, 'Guru Nanak College', 'Lions Club', 15, 15, 'p36.jpg', 'A Blood Donation Camp at G.N.C College, Mumbai organized by Lions Club, Maharashtra.'),
(13, 'AJAY KUMAR GARG ENGINEERING COLLEGE', 'LIONS CLUB', 17, 18, 'Ajay engg college.jpg', 'A Blood Donation Camp at Ajay Engineering College, Lucknow organized by Human Welfare Society, Uttar Pradesh.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `pin_code`, `district`, `state`) VALUES
(1, 'Gandhinagar', '144401', 'Gujarat', 1),
(4, 'faridabad', '121001', 'Gurgaon', 2),
(7, 'jalandhar', '144001', 'jalandhar', 1),
(8, 'Amaravati', '444601', 'Amaravati', 3),
(9, 'Dispur', '781005', 'Dispur', 5),
(10, 'Patna', '800001', 'Patna', 4),
(11, 'Raipur', '493661', 'Raipur', 9),
(12, 'Chandigarh', '160102', 'Chandigarh', 11),
(13, 'Ranchi', '171003', 'Ranchi', 12),
(14, 'Bengaluru', '100550', 'Bengaluru', 13),
(15, 'Mumbai', '500110', 'Mumbai', 15),
(16, 'Kalol', '382721', 'Gujarat', 10),
(17, 'Vadu Mahesana', '382720', 'Mahesana', 10),
(18, 'Lucknow', '100550', 'Lucknow', 17);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `row_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subj` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`row_id`, `name`, `email`, `mobile`, `subj`) VALUES
(12, 'Amit', 'amitharidwarchauhan@gmail.com', '7990596833', 'Amit chauhan');

-- --------------------------------------------------------

--
-- Table structure for table `donarregistration`
--

CREATE TABLE `donarregistration` (
  `donar_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donarregistration`
--

INSERT INTO `donarregistration` (`donar_id`, `name`, `gender`, `age`, `mobile`, `b_id`, `email`, `pwd`, `pic`) VALUES
(22, 'Chauhan Amit', 'female', '23', '7990596833', 15, 'amitharidwarchauhan@gmail.com', 1234, 'Amit.jpg'),
(23, 'Krushang Parekh', 'male', '20', '9054800210', 17, 'krushangparekh999@gmail.com', 1234, 'Krushang.jpeg'),
(24, 'Rahul Nadiya', 'male', '24', '9328521935', 13, 'rahulnadiya1811@gmail.com', 12345, 'Rahul.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` int(100) NOT NULL,
  `camp_id` int(100) NOT NULL,
  `ddate` datetime NOT NULL,
  `units` int(100) NOT NULL,
  `detail` varchar(800) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `camp_id`, `ddate`, `units`, `detail`, `email`) VALUES
(28, 1, '2021-06-19 18:22:07', 20, 'A Blood Donation Camp at Ramgarhia Engg Collage organized by Ramgarhia consial , Phagwara.', 'amitharidwarchauhan@gmail.com'),
(29, 7, '2021-06-19 00:00:00', 30, 'A Blood Donation Camp at Lovely Professional University organized by Lovely Professional University , Jalandhar.', 'amitharidwarchauhan@gmail.com'),
(30, 8, '2021-06-19 00:00:00', 25, 'A Blood Donation Camp at G.N.C College, Phagwara organized by Lions Club, Phagwara.', 'amitharidwarchauhan@gmail.com'),
(31, 9, '2021-06-19 00:00:00', 22, 'A Blood Donation Camp at Apee-Jay College, Jalandhar organized by Human Welfare Society, Jalandhar.\r\n ', 'amitharidwarchauhan@gmail.com'),
(32, 7, '2021-06-19 00:00:00', 27, 'A Blood Donation Camp at Lovely Professional Unive...', 'preet22@yahoo.com'),
(33, 8, '2021-06-19 00:00:00', 17, 'save life', 'rahulnadiya1811@gmail.com'),
(34, 9, '2021-06-19 00:00:00', 10, 'give blood', 'krushangparekh999@gmail.com'),
(37, 10, '2010-05-06 00:00:00', 1, 'Save Life', 'amitharidwarchauhan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `camp_id` int(100) NOT NULL,
  `pic_id` int(100) NOT NULL,
  `title` varchar(400) NOT NULL,
  `pic` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`camp_id`, `pic_id`, `title`, `pic`) VALUES
(9, 15, 'pic 1', 'p48_2.jpg'),
(9, 16, 'pic 2', 'p11 (1).jpg'),
(9, 17, 'pic 3', 'p141.jpg'),
(9, 18, 'pic 5', 'p177_2.jpg'),
(9, 19, 'pic 6', 'p279.jpg'),
(8, 20, 'pic 8', 'p246.jpg'),
(9, 21, 'pic 9', 'p82.jpg'),
(7, 22, 'pic 2', 'p82.jpg'),
(7, 23, 'pic 3', 'p93.jpg'),
(7, 24, 'pic 6', 'p148.jpg'),
(7, 25, 'pic 7', 'pamrik@ymail.com1 (2).jpg'),
(7, 26, 'pic 8', 'slider4.jpg'),
(7, 27, 'pic 9', 'slider7.jpg'),
(1, 28, 'pic 2', 'slider8.jpg'),
(1, 29, 'pic 3', 'slider3.jpg'),
(1, 30, 'pic 4', 'donation.jpg'),
(1, 31, 'pic 3', 'Blood-Donation2.jpg'),
(1, 32, 'pic 4', 'blood-donation-.jpg'),
(1, 33, 'pic 6', 'blood-donation.jpg'),
(8, 34, 'pic 1', 'resizedBlood donation (1).jpg'),
(8, 35, 'pic 2', 'Blood-donation-camp.jpg'),
(8, 36, 'pic 4', '3.jpg'),
(8, 37, 'pic 5', '4.jpg'),
(8, 38, 'pic 7', '5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `detail` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `detail`) VALUES
(1, 'blood donate', 'give blood give bloodgive blood'),
(2, 'blood bank', 'blooooddddd\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE `requestes` (
  `req_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bgroup` int(100) NOT NULL,
  `reqdate` datetime NOT NULL,
  `detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`req_id`, `name`, `gender`, `age`, `mobile`, `email`, `bgroup`, `reqdate`, `detail`) VALUES
(7, 'Amit Chauhan', 'Male', '22', '7990596833', 'amitharidwarchauhan@gmail.com', 25, '2021-06-25 19:43:42', 'save life'),
(8, 'Krushang Parekh', 'Male', '20', '9054800210', 'krushangparekh999@gmail.com', 1, '2021-07-01 19:39:05', 'save life'),
(9, 'Rahul Nadiya', 'Male', '21', '9328521935', 'rahulnadiya1811@gmail.com', 10, '2021-07-10 19:44:08', 'save life');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(100) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Punjab'),
(2, 'Delhi'),
(3, 'Andhra Pradesh'),
(4, 'Bihar'),
(5, 'Assam'),
(6, 'Andhra Pradesh'),
(7, 'Assam'),
(8, 'Bihar'),
(9, 'Chhattisgarh'),
(10, 'Gujarat'),
(11, 'Haryana'),
(12, 'Jharkhand'),
(13, 'Karnataka'),
(14, 'Kerala'),
(15, 'Maharashtra'),
(16, 'Manipur'),
(17, 'Uttar Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `pwd`, `typeofuser`) VALUES
('Krushang Parekh', 'krushang', 'General'),
('Rahul Nadiya', 'rahul', 'General'),
('Amit Chauhan', 'amit', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`bg_id`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`camp_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `donarregistration`
--
ALTER TABLE `donarregistration`
  ADD PRIMARY KEY (`donar_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`pic_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `requestes`
--
ALTER TABLE `requestes`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `adv_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  MODIFY `bg_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `camp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `row_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donarregistration`
--
ALTER TABLE `donarregistration`
  MODIFY `donar_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `pic_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `requestes`
--
ALTER TABLE `requestes`
  MODIFY `req_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
