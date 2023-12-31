-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 04:09 AM
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
-- Database: `crud_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `reservasis` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nomor` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `whatsapps` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nomor` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `gurus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `users`
--

-- USER
INSERT INTO `users` (`id`, `name`, `email`, `gender`, `createdAt`, `updatedAt`) VALUES
(3, 'John Doe', 'john@gmail.com', 'Male', '2022-03-29 03:23:37', '2022-03-29 03:23:37'),
(5, 'M Fikri', 'mfikri@gmail.com', 'Male', '2022-04-05 15:46:30', '2022-04-05 15:46:30'),
(6, 'Dhea', 'dhea@gmail.com', 'Female', '2022-04-05 15:46:46', '2022-04-05 15:46:46'),
(9, 'Laura Updated', 'laura@gmail.com', 'Female', '2022-06-03 02:01:55', '2022-06-03 02:07:06');

-- RESERVASI
INSERT INTO `reservasis` (`id`, `name`, `nomor`, `createdAt`, `updatedAt`) VALUES
(3, 'Kak Tisha', '+6285600422188', '2022-03-29 03:23:37', '2022-03-29 03:23:37'),
(5, 'Kak Nia', '+6281216365729', '2022-03-29 03:23:37', '2022-03-29 03:23:37'),
(6, 'Kak Iva', '+6282174144728', '2022-03-29 03:23:37', '2022-03-29 03:23:37'),

-- WA
INSERT INTO `whatsapps` (`id`, `name`, `nomor`, `createdAt`, `updatedAt`) VALUES
(3, 'Kak Tisha', '+6285600422188', '2022-03-29 03:23:37', '2022-03-29 03:23:37'),
(5, 'Kak Nia', '+6281216365729', '2022-03-29 03:23:37', '2022-03-29 03:23:37'),
(6, 'Kak Iva', '+6282174144728', '2022-03-29 03:23:37', '2022-03-29 03:23:37'),

-- GURU
INSERT INTO `gurus` (`id`, `name`, `image`, `deskripsi`, `url`, `createdAt`, `updatedAt`) VALUES
-- (3, 'Kak Tisha', '+6285600422188', '2022-03-29 03:23:37', '2022-03-29 03:23:37'),
-- (5, 'Kak Nia', '+6281216365729', '2022-03-29 03:23:37', '2022-03-29 03:23:37'),
-- (6, 'Kak Iva', '+6282174144728', '2022-03-29 03:23:37', '2022-03-29 03:23:37'),


-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `reservasis`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `whatsapps`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `gurus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

ALTER TABLE `reservasis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

ALTER TABLE `whatsapps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

ALTER TABLE `gurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
