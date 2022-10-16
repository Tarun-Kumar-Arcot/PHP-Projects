-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2022 at 09:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signupsignin`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password_hash`) VALUES
(1, 'tarun', 'abc@gmail.com', '$2y$10$55SHhuMZc02dNyyFNunNGOpnd58YSTJjzPDpdzg.9KdvmXeOYV6sa'),
(2, 'arcot', 'arcot@gmail.com', '$2y$10$e08NjResHk6j4d8SJzorGe/JJqQmzjq7T20TR5.JjMcEMIShHtZRu'),
(3, 'harish', 'harish@gmail.com', '$2y$10$22yPWwEX/v0K.sLuLx7P4e.PogIEQeEsxzFgxAoTnrAbwuhl0OlMa'),
(4, 'def', 'def@gmail.com', '$2y$10$GBXZkP9Y4EZaAXeJQEo68ORJ5xx9UkHgZaQDI2LNucKq4U7P2xQpm'),
(5, 'abc', 'abcd@gmail.com', '$2y$10$esU9AWvYKTVI4TKFVRtWNOiQM1GxKUvH4fWZGZWQjv1uq1o0j/ZO6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
