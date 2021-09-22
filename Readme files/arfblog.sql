-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2021 at 01:30 PM
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
(1, 'programming', 1, 26, 'Published', '2021-08-31', 'arf'),
(2, 'lifestyle', 1, 45, 'Published', '2021-08-30', 'john doe'),
(3, 'php', 1, 0, 'Published', '2021-08-31', 'arf'),
(4, 'javascript', 1, 0, 'Published', '2021-09-01', 'bushra');

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
  `com_status` varchar(255) NOT NULL DEFAULT 'unapproved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `com_post_id`, `com_detail`, `com_user_id`, `com_user_name`, `com_date`, `com_status`) VALUES
(1, 1, 'great post', 1, 'shahan sarower', 'Sep 9, 2021 at 12:31 AM', 'approved'),
(2, 1, 'nyc post', 1, 'shahan sarower', 'Sep 9, 2021 at 01:24 AM', 'unapproved'),
(3, 1, 'give response', 1, 'shahan sarower', 'Sep 9, 2021 at 01:36 AM', 'unapproved');

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
  `post_tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_detail`, `post_category_id`, `post_image`, `post_date`, `post_status`, `post_author`, `post_views`, `post_comment_count`, `post_tags`) VALUES
(1, 'Build a Complete Website with Backend using PHP, MySQL & PDO', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 'photo2.jpg', 'Apr 4,2021 at 9.30 pm', 'Published', 'John Doe', 172, 0, 'php, mysql, pdo, php course'),
(2, 'I\'m a programmer, I love programming!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, 'photo1.jpg', 'Apr 6,2021 at 9.30 pm', 'Published', 'maria', 3, 0, 'php, mysql, pdo, php course'),
(3, 'I love garden, do you?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3, 'photo3.jpg', 'Apr 10,2021 at 9.32 pm', 'Published', 'farib', 15, 0, 'garden, flowers'),
(4, 'the most hate job I have ever had', ' lorem ipsum xxxxxxxxxxyyyyyyyy xyyyyb dvcdidjkj jfjfrjfjf  efddjfvwfs vd koi cwedscds dediejej dfenfeknfk dfnedfknfvn', 4, 'ctci-1.png', 'April 09,2021 at 9.30 a.m', 'Published', 'Rahul Gandhi', 11, 0, 'job fresher'),
(5, 'Php is super easy', 'Php is super easy detail', 1, 'photo1.jpg', 'Apr 9,2021 at 9.30 pm', 'Published', 'rakib', 4, 0, 'cs'),
(6, 'c++ hard', 'c++ detail', 1, 'photo1.jpg', 'Apr 9,2021 at 9.30 pm', 'Published', 'ash', 6, 0, 'cs'),
(7, 'python', 'python essential for hacking', 1, 'photo1.jpg', 'Apr 9,2021 at 9.30 pm', 'Published', 'arf asheq', 4, 0, 'cs');

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
(1, 'asheq farib', 'ss', 'tysonfarib@gmail.com', '$2y$10$Y2EpnI8wqjBBTGtCYcVwm.OMSIFYxGP4gYrt96fAqhfjMb3sWuBfi', 'ARF.jpg', 'Sep 9, 2021 at 08:13 AM', 'admin');

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
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
