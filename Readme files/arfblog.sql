-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2021 at 11:52 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arfblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_total_posts` int(11) NOT NULL,
  `total_post_views` int(11) NOT NULL,
  `category_status` varchar(11) NOT NULL DEFAULT 'Published',
  `created_on` varchar(255) NOT NULL,
  `created_by` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_total_posts`, `total_post_views`, `category_status`, `created_on`, `created_by`) VALUES
(11, 'Computer fundamental', 1, 0, 'Published', 'Sep 9, 2021 at 11:40 PM', 'arf'),
(12, 'Operating system', 1, 0, 'Published', 'Sep 9, 2021 at 11:47 PM', 'arf');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `com_post_id` int(11) NOT NULL,
  `com_detail` text NOT NULL,
  `com_user_id` int(11) NOT NULL,
  `com_user_name` varchar(255) NOT NULL,
  `com_date` varchar(255) NOT NULL,
  `com_status` varchar(255) NOT NULL DEFAULT 'unapproved',
  `comment_state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ms_id` int(11) NOT NULL,
  `ms_username` varchar(255) NOT NULL,
  `ms_useremail` varchar(255) NOT NULL,
  `ms_detail` text NOT NULL,
  `ms_date` varchar(255) NOT NULL,
  `ms_status` varchar(255) NOT NULL DEFAULT 'pending',
  `ms_state` int(11) NOT NULL DEFAULT 0,
  `reply` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_detail` text NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `post_image` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'Published',
  `post_author` varchar(255) NOT NULL,
  `post_views` int(11) NOT NULL DEFAULT 0,
  `post_comment_count` int(11) NOT NULL DEFAULT 0,
  `post_tags` text NOT NULL,
  `author_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_detail`, `post_category_id`, `post_image`, `post_date`, `post_status`, `post_author`, `post_views`, `post_comment_count`, `post_tags`, `author_photo`) VALUES
(15, 'Random Access Memory', 'RAM (Random Access Memory) is the internal memory of the CPU for storing data, programs, and program results. It is a read/write memory that stores data until the machine is working. As soon as the machine is switched off, data is erased.\r\nAccess time in RAM is independent of the address, that is, each storage location inside the memory is as easy to reach as other locations and takes the same amount of time. Data in the RAM can be accessed randomly but it is very expensive.\r\n\r\nRAM is volatile, i.e. data stored in it is lost when we switch off the computer or if there is a power failure. Hence, a backup Uninterruptible Power System (UPS) is often used with computers. RAM is small, both in terms of its physical size and in the amount of data it can hold.\r\n\r\nRAM is of two types −\r\n\r\nStatic RAM (SRAM)\r\nDynamic RAM (DRAM)', 11, 'primary_memory.jpg', 'Sep 9, 2021 at 11:43 PM', 'Published', 'asheq farib', 1, 0, 'RAM,CSE.CS.COMPUTER MEMORY', 'ARF.jpg'),
(16, 'Why to Learn Operating System?', 'An operating system (OS) is a collection of software that manages computer hardware resources and provides common services for computer programs. The operating system is a vital component of the system software in a computer system. This tutorial will take you through step by step approach while learning Operating System concepts.\r\n\r\nWhy Learn Operating System?\r\nAn Operating System (OS) is an interface between a computer user and computer hardware. An operating system is a software that performs all the basic tasks like file management, memory management, process management, handling input and output, and controlling peripheral devices such as disk drives and printers.\r\n\r\nSome popular Operating Systems include Linux Operating System, Windows Operating System, VMS, OS/400, AIX, z/OS, etc.\r\n\r\nApplications of Operating System\r\nFollowing are some of the important activities that an Operating System performs −\r\n\r\nSecurity − By means of passwords and similar other techniques, it prevents unauthorized access to programs and data.\r\n\r\nControl over system performance − Recording delays between requests for a service and responses from the system.\r\n\r\nJob accounting − Keeping track of time and resources used by various jobs and users.\r\n\r\nError detecting aids − Production of dumps, traces, error messages, and other debugging and error detecting aids.\r\n\r\nCoordination between other software and users − Coordination and assignment of compilers, interpreters, assemblers and other software to the various users of the computer systems.', 12, 'Operating_System.jpg', 'Sep 9, 2021 at 11:50 PM', 'Published', 'asheq farib', 1, 0, 'windows,Linux,os,mac', 'ARF.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`) VALUES
(1, 'arif'),
(2, 'farib');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_nickname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_photo` text NOT NULL,
  `registered_on` varchar(255) NOT NULL,
  `user_role` varchar(255) NOT NULL DEFAULT 'Subscriber'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_nickname`, `user_email`, `user_password`, `user_photo`, `registered_on`, `user_role`) VALUES
(1, 'asheq farib', 'arf', 'tysonfarib@gmail.com', '$2y$10$kCcF0pLSX/Qfh7CA9WJG3ujzGGN6uM72ACZr/Qwi2ODXdCn7cRoyS', 'ARF.jpg', 'Sep 9, 2021 at 08:13 AM', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ms_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
