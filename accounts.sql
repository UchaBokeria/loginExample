-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2021 at 06:05 PM
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
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(255) NOT NULL,
  `username` varchar(500) NOT NULL,
  `passcode` varchar(1500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `gender` int(2) NOT NULL,
  `token` varchar(2000) NOT NULL,
  `createdAT` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `img` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `passcode`, `email`, `gender`, `token`, `createdAT`, `img`) VALUES
(1, 'admin', '$2y$10$x4Z0fM2qMFcqiS1z58KEQ..u.wS3qdVXCs57klCkBSCmUW6rkTg0.', 'ucha1bokeria@gmail.com', 0, 'a57ea75988ce69b2dda5b339412f6cea', '2021-02-07 00:58:45', 'https://cdn.iconscout.com/icon/free/png-512/laptop-user-1-1179329.png'),
(2, 'user', '$2y$10$ucnTEy1ukiWFjjpyeZZu4Onue1sNVoiC7sAwaDE2K3r9zwfXf777a', 'ucha2bokeria@gmail.com', 0, '5325cdb9e394139ecf63eb6dd8604300', '2021-02-07 01:12:58', 'https://cdn.iconscout.com/icon/free/png-512/laptop-user-1-1179329.png'),
(3, 'gio', '$2y$10$dpxKkTMN.iWPdB8YfNahsONpcnJ8wPpLu48iPOdHuYsGme3ovgEWG', 'ucha2bokeria@gmail.com', 0, '16434262f57c7b828524f863e8e5b12d', '2021-02-07 01:37:07', 'https://cdn.iconscout.com/icon/free/png-512/laptop-user-1-1179329.png'),
(4, 'dachi', '$2y$10$W7BDlWmXvAk7EIVYHJvo1uwOSXUtSfPnUESdeobw/w1JuDaZh.15G', 'ucha2bokeria@gmail.com', 2, 'f13dbed406c180a484223ddf9ad4edc1', '2021-02-07 17:02:22', 'https://cdn.iconscout.com/icon/free/png-512/laptop-user-1-1179329.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
