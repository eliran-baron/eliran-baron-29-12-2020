-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: דצמבר 29, 2020 בזמן 06:14 PM
-- גרסת שרת: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msgapp`
--

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `Owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Receiver` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- הוצאת מידע עבור טבלה `messages`
--

INSERT INTO `messages` (`id`, `Owner`, `Receiver`, `Subject`, `Message`, `createdAt`, `updatedAt`) VALUES
(1, 'test', 'test', 'test', 'test', '2020-12-28 18:11:33', '2020-12-28 18:11:33'),
(5, 'hagit', 'אלירן', 'test', 'hi', '2020-12-28 20:52:27', '2020-12-28 20:52:27'),
(6, 'אלירן', 'hagit', 'test', 'gh', '2020-12-28 21:28:59', '2020-12-28 21:28:59'),
(7, 'hagit', 'אלירן', 'test', 'i am', '2020-12-28 22:36:52', '2020-12-28 22:36:52'),
(8, 'larisa', 'joe', 'helo', 'helo my ', '2020-12-28 22:39:28', '2020-12-28 22:39:28'),
(9, 'shir', 'hagit', 'test', 'helo', '2020-12-28 22:48:16', '2020-12-28 22:48:16'),
(10, 'joe', 'hagit', 'test', 'hy', '2020-12-28 23:06:22', '2020-12-28 23:06:22'),
(11, 'joe', 'larisa', 'hui', 'dfs', '2020-12-29 08:46:52', '2020-12-29 08:46:52'),
(12, 'joe', 'chandler', 'test', 's', '2020-12-29 15:47:46', '2020-12-29 15:47:46');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- הוצאת מידע עבור טבלה `users`
--

INSERT INTO `users` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(3, 'hagit', '2020-12-28 18:29:04', '2020-12-28 18:29:04'),
(5, 'joe', '2020-12-28 22:38:43', '2020-12-28 22:38:43'),
(6, 'chandler', '2020-12-28 22:38:54', '2020-12-28 22:38:54'),
(7, 'larisa', '2020-12-28 22:39:01', '2020-12-28 22:39:01'),
(8, 'mor', '2020-12-28 22:42:48', '2020-12-28 22:42:48'),
(9, 'shir', '2020-12-28 22:44:39', '2020-12-28 22:44:39');

--
-- Indexes for dumped tables
--

--
-- אינדקסים לטבלה `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- אינדקסים לטבלה `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
