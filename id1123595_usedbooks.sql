-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2017 at 05:24 PM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1123595_usedbooks`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(20) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `authorName` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `edition` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cost` float NOT NULL,
  `user_id` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phoneno` int(40) DEFAULT NULL,
  `phoneno2` int(11) NOT NULL,
  `address` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `unique_id`, `name`, `email`, `encrypted_password`, `salt`, `created_at`, `updated_at`, `phoneno`, `phoneno2`, `address`, `city`, `state`) VALUES
(1, '58cea09d53f8d7.32935216', 'jotish suthar', 'jotish.suthar@practo.com', 'WK7AuWjJvKIDcqj7XAPHVnprsehiODA5Nzg5NDhj', 'b80978948c', '2017-03-19 15:15:41', NULL, 2147483647, 0, '', '', ''),
(2, '58cea169af1219.12513920', 'Indira Suthar', 'indirasuthar@gmail.com', '3HoS4dA0giOW5NIWQaP9+hm48JNhMGYwYjVjYWVm', 'a0f0b5caef', '2017-03-19 15:19:05', NULL, NULL, 0, '', '', ''),
(3, '58d5f0907a67e2.26976940', 'Indu', 'indusuthar@ymail.com', 'VaD/HKzICnsIRHGf2oYkhl6jJc8xYjIyNmZhN2Vj', '1b226fa7ec', '2017-03-25 04:22:40', NULL, NULL, 0, '', '', ''),
(4, '58d885cc4abf86.90478369', 'Indu Jangid', 'abx@gmail.com', 'Z+cpAvKmZrHi+zJRFL9mR6Mouy0yYjM0M2IwYjJj', '2b343b0b2c', '2017-03-27 03:23:56', NULL, NULL, 0, '', '', ''),
(5, '58d88a3dbc74e7.24479437', 'Abc', 'abc@gmail.com', 'ULrKonTfoo/78TYCBBtOoEeG9j1hZDllYTk2MTBh', 'ad9ea9610a', '2017-03-27 03:42:53', NULL, NULL, 0, '', '', ''),
(6, '', '', '', '', '', '2017-04-01 10:18:34', NULL, 0, 0, '', '', ''),
(7, '11', 'abcd', 'abcd@gmail.com', 'abcd', '', '2017-04-01 10:26:28', '2017-04-01 10:26:28', 123456789, 23722862, 'andfd', 'ffs', 'dfds'),
(8, '58e52d2c0ab237.53146208', 'jotish', 'jotish@joey.com', 'CIqz6kbrBYAUlfSeufLh5tcSEuo3Njc1ZmVkN2Zk', '7675fed7fd', '2017-04-05 17:45:16', '2017-04-05 17:45:16', 123, 123123, 'joey', 'erode', 'TN'),
(9, '58e52f7e3c8933.68354657', 'Pearl', 'pearl@gmail.com', 'vc27tlgSPEUoZ6pMwgDEOv9GAuMyYWI5NmE5NjI0', '2ab96a9624', '2017-04-05 17:55:10', '2017-04-05 17:55:10', 999999999, 888888888, 'erode', 'indira nagar', 'tn'),
(10, '58e531ea4889a4.12464841', '123', '123@gmail.com', 'LTLDnyjrqDu6O724yYAc/qHpc4thYzdkMmJjNzE4', 'ac7d2bc718', '2017-04-05 18:05:30', '2017-04-05 18:05:30', 12345, 12345, '123', '123', '123'),
(11, '58e6344d0d3916.03488077', 'rahul', 'rahul@gmail.com', 'GurjUMTp+8XYdlFJN2y2xSMvVcUwY2NkODAwYmRh', '0ccd800bda', '2017-04-06 12:27:57', '2017-04-06 12:27:57', 123456789, 231429455, 'erode', '15  laxmi nagar', 'tn'),
(12, '58e63e88befa82.30640070', 'Arun', 'arun@gmail.com', 'DLWHuVLak5HF4TyGV5uYUdh+NeZmMGJjODI1N2Q3', 'f0bc8257d7', '2017-04-06 13:11:36', '2017-04-06 13:11:36', 2147483647, 2147483647, 'coimbatore', '101 laxmi street', 'tamilnadu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
