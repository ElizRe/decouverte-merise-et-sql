-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2018 at 03:01 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `eve_event`
--

CREATE TABLE `eve_event` (
  `eve_oid` int(11) NOT NULL,
  `eve_title` varchar(100) DEFAULT NULL,
  `eve_description` text,
  `eve_price` float DEFAULT NULL,
  `eve_date` datetime DEFAULT NULL,
  `pla_oid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eve_event`
--

INSERT INTO `eve_event` (`eve_oid`, `eve_title`, `eve_description`, `eve_price`, `eve_date`, `pla_oid`) VALUES
(1, 'Toulouse Game Dev', 'Ce groupe se veut réunir et rassembler tous les passionnés de création et des coulisses du jeu vidéo. Vous pouvez donc venir rencontrer l\'association ToulouseGameDev si vous êtes créateur, passionné de jeux, universitaire sur le jeu vidéo, ou si vous voulez juste venir boire avec nous. On discute beaucoup de jeux indépendant, de game design, des tendances actuelles, des dernières news des membres, de gameplay ou des initiatives locales que nous tentons de mettre en place.', 0, '2018-03-15 00:00:00', 2),
(2, 'Software Craftsmanship ', 'Ce groupe est là pour faciliter l\'organisation des événements de la communauté Software Craftsmanship de Toulouse.\r\n\r\nL\'essentiel des discussions se fait sur la liste de diffusion https://groups.google.com/forum/?hl=fr#!forum/software-craftsmanship-toulouse', 0, '2018-02-06 00:00:00', 2),
(3, 'Paris Machine Learning', 'The Paris Machine learning meetup group is open to everyone who is interested in applications of Machine Learning and more generally Artificial Intelligence in every field. Our speakers are researchers in industry, academia, government and startups, Please Join us ! !\r\n', 15, '2018-03-05 00:00:00', 3),
(4, 'Socializing with Internationals in Paris', 'Hi people of the world !\r\n\r\nThanks all to support us, since 3 years we do events for internationals and now we are the most famous group in meetup because we are already 14 000 followers in this meetup group :)\r\n\r\nThis group have been create to gather a group of internationals and help each one of us to exchange languages in a friendly atmosphere . Each one that participates brings her/his personal input for the benefit of all others.This is a group for anyone interested in socializing with other International, expat, Au pairs and Erasmus people including french people who love to speak another language with a native speaker ;)\r\n\r\nHere you will find International Party in Paris, Pubcrawl, Socializing pub party, Picnic, Concert and more ... and in most cases our events are free without any fee !!!', 17, '2018-03-22 00:00:00', 3),
(5, 'Meetup Freelance Toulouse', 'Le rendez-vous des freelance autour d\'une table.', 27, '2018-03-14 00:00:00', 2),
(6, 'Super event informatique sur l\'optimisation du BIG DATA', 'Au restaurant le France à 20h', 30, '2018-03-22 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pla_place`
--

CREATE TABLE `pla_place` (
  `pla_oid` int(11) NOT NULL,
  `pla_city` varchar(100) DEFAULT NULL,
  `pla_google_map` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pla_place`
--

INSERT INTO `pla_place` (`pla_oid`, `pla_city`, `pla_google_map`) VALUES
(1, 'Cahor', 'https://www.google.fr/maps/place/46000+Cahors/@44.4566231,1.3688013,12z/data=!3m1!4b1!4m5!3m4!1s0x12ac8957547d14fb:0x406f69c2f3fcea0!8m2!3d44.4475229!4d1.441989?hl=en'),
(2, 'Toulouse', 'https://www.google.fr/maps/place/Toulouse/@43.6008028,1.3626293,12z/data=!3m1!4b1!4m5!3m4!1s0x12aebb6fec7552ff:0x406f69c2f411030!8m2!3d43.604652!4d1.444209?hl=en'),
(3, 'Paris', 'https://www.google.fr/maps/place/Paris/@48.8589506,2.2768484,12z/data=!3m1!4b1!4m5!3m4!1s0x47e66e1f06e2b70f:0x40b82c3688c9460!8m2!3d48.856614!4d2.3522219?hl=en');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eve_event`
--
ALTER TABLE `eve_event`
  ADD PRIMARY KEY (`eve_oid`),
  ADD KEY `pla_oid` (`pla_oid`);

--
-- Indexes for table `pla_place`
--
ALTER TABLE `pla_place`
  ADD PRIMARY KEY (`pla_oid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eve_event`
--
ALTER TABLE `eve_event`
  MODIFY `eve_oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pla_place`
--
ALTER TABLE `pla_place`
  MODIFY `pla_oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `eve_event`
--
ALTER TABLE `eve_event`
  ADD CONSTRAINT `eve_event_ibfk_1` FOREIGN KEY (`pla_oid`) REFERENCES `pla_place` (`pla_oid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
