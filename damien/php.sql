-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2023 at 02:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `message`) VALUES
(1, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'f'),
(2, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'hello thank god finally it is working '),
(3, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'cheking again'),
(4, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'cheking again'),
(5, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'cheking again'),
(6, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'cheking again'),
(7, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'cheking again'),
(8, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'hiiiiiiiiiii'),
(9, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'hiiiiiiiiiii'),
(10, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'me again lol'),
(11, 'sheraz', 'sheraz.ie21@gmail.com', 'hey pookie'),
(12, 'sheraz', 'sheraz.ie21@gmail.com', 'hey pookie'),
(14, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'hi'),
(15, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'its again chiking im here hello '),
(16, 'bolortuya', 'bolortuyag.mongolia@gmail.com', 'its again chiking im here hello '),
(17, 'rita', 'bolortuyag.mongoloia@gmail.com', 'hi today'),
(18, 'Click Here', 'bolortuyag.mongoloia@gmail.com', 's');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
