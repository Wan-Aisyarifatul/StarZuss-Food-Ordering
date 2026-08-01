-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 09:55 PM
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
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'WAN AISYARIFATUL NOR', 'wan10aisya@gmail.com', 'b332eb14633c13dcd89d5115468e9ff9', 'admin'),
(2, 'ALYA FARHANA', 'alyafarhana@gmail.com', '6d2f2d182c03040daeddbd634291813b', 'admin'),
(3, 'NUR FARHANA', 'nurfarhana@gmail.com', '3b7972d6e14381a8f234aaf14c813d2e', 'admin'),
(4, 'SHAHIRA ELLIYANA', 'elliyana@gmail.com', 'e0a9ab6526071b0dbee156a43cc2400d', 'admin'),
(5, 'MOHD ALI ', 'mohdali@gmail.com', '984d8144fa08bfc637d2825463e184fa', 'user'),
(6, 'EUSOFF HAKIMI', 'eusoffhakimi@gmail.com', 'db9befa25b54cc750978d4a687a297c5', 'user'),
(7, 'NUR NILAM NAJWA', 'nilam@gmail.com', 'bab1ef28b83e3b13934ab50a54b20549', 'user'),
(8, 'HAFIZ ABDULLAH', 'hafiz@gmail.com', '7a5bde8adaf60027e794a3af535dcaff', 'user'),
(9, 'NUR NILAM SARI', 'nilam12@gmail.com', 'bab1ef28b83e3b13934ab50a54b20549', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
