-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2021 at 06:04 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(255) NOT NULL,
  `from_id` int(255) NOT NULL,
  `to_id` int(255) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `createdAT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_id`, `to_id`, `message`, `createdAT`) VALUES
(1, 1, 2, ' hi u ', '2021-02-07 01:14:21'),
(2, 2, 1, ' hi me? ', '2021-02-07 01:15:05'),
(3, 1, 2, ' yes hi u ', '2021-02-07 01:15:06'),
(4, 2, 1, ' hi u if its good>?!', '2021-02-07 01:15:06'),
(5, 1, 3, ' hi gio ', '2021-02-07 01:38:02'),
(6, 3, 1, ' hi me? ', '2021-02-07 01:38:02'),
(7, 1, 3, ' yes hi u gio ', '2021-02-07 01:38:02'),
(8, 3, 1, ' hi u if its good>?!', '2021-02-07 01:38:02'),
(9, 2, 3, ' hi u ', '2021-02-07 01:47:34'),
(10, 3, 2, ' hi me? ', '2021-02-07 01:47:34'),
(11, 2, 3, ' yes hi u ', '2021-02-07 01:47:34'),
(12, 3, 2, ' hi u if its good>?!', '2021-02-07 01:47:34'),
(13, 1, 2, '\'adsa\'', '2021-02-07 16:39:56'),
(14, 1, 2, '\'gamarjoba\'', '2021-02-07 17:03:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
