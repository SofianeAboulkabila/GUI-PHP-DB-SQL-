-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 23 mai 2023 à 16:53
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mydbcom`
--

-- --------------------------------------------------------

--
-- Structure de la table `Ordersaaa`
--

CREATE TABLE `Ordersaaa` (
  `idOrder` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `User_idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `Ordersaaa`
--

INSERT INTO `Ordersaaa` (`idOrder`, `date`, `User_idUser`) VALUES
(1, '1998-08-16 21:26:37', 1),
(2, '1971-11-10 15:34:43', 2),
(3, '1990-05-22 17:02:03', 3),
(4, '1991-06-13 12:31:09', 4),
(5, '1975-01-21 22:12:23', 5),
(6, '2002-07-19 17:20:12', 6),
(7, '2019-08-24 15:42:44', 7),
(8, '2012-02-22 07:07:18', 8),
(9, '2008-02-10 15:55:24', 9),
(10, '1976-04-16 21:31:53', 10),
(11, '1993-11-09 06:39:42', 11),
(12, '2009-02-22 02:28:45', 12),
(13, '2008-08-23 06:30:56', 13),
(14, '2021-01-22 08:29:38', 14),
(15, '1973-12-13 01:46:35', 15),
(16, '2000-09-01 02:31:27', 16),
(17, '1999-05-20 20:12:44', 17),
(18, '2005-06-30 01:03:20', 18),
(19, '1972-02-15 02:41:44', 19),
(20, '2019-11-05 07:40:21', 20),
(21, '2009-12-17 13:23:58', 1),
(22, '2005-08-13 09:21:40', 2),
(23, '1972-05-24 02:01:39', 3),
(24, '1971-11-03 09:24:25', 4),
(25, '2005-07-05 14:36:22', 5),
(26, '1972-06-15 20:15:53', 6),
(27, '2008-11-25 14:39:18', 7),
(28, '2002-06-27 19:57:47', 8),
(29, '1998-02-13 08:11:24', 9),
(30, '1974-06-09 19:58:41', 10),
(31, '2004-02-03 18:21:44', 11),
(32, '2011-03-09 03:47:11', 12),
(33, '2012-10-23 06:50:34', 13),
(34, '2008-05-20 20:38:48', 14),
(35, '1991-04-06 21:48:40', 15),
(36, '2004-12-04 09:33:25', 16),
(37, '2018-01-11 10:09:04', 17),
(38, '1972-04-11 05:02:46', 18),
(39, '1972-10-08 15:12:27', 19),
(40, '1987-08-28 05:45:22', 20),
(41, '1975-09-25 23:26:31', 1),
(42, '2013-08-14 10:17:11', 2),
(43, '1988-04-29 05:57:34', 3),
(44, '1977-08-24 21:38:56', 4),
(45, '2018-10-04 04:17:52', 5),
(46, '2001-08-05 00:30:34', 6),
(47, '1982-12-22 13:37:02', 7),
(48, '1976-06-04 05:31:48', 8),
(49, '2004-07-22 04:26:46', 9),
(50, '2008-03-19 11:16:27', 10),
(51, '2020-01-25 10:19:48', 11),
(52, '2010-09-20 04:21:03', 12),
(53, '2020-02-21 06:13:17', 13),
(54, '2007-05-13 23:46:41', 14),
(55, '2005-05-22 08:07:28', 15),
(56, '1972-10-09 10:02:01', 16),
(57, '1978-09-24 03:26:02', 17),
(58, '1996-04-13 22:28:37', 18),
(59, '1975-08-14 03:14:45', 19),
(60, '2013-04-12 15:05:27', 20),
(61, '1984-03-29 17:11:01', 1),
(62, '2004-05-29 04:32:05', 2),
(63, '2015-10-31 18:16:46', 3),
(64, '1987-08-31 03:06:57', 4),
(65, '1979-05-02 08:15:10', 5),
(66, '2011-08-18 22:48:20', 6),
(67, '2001-07-06 04:06:51', 7),
(68, '2008-12-15 12:26:07', 8),
(69, '2009-11-09 03:56:00', 9),
(70, '1997-03-30 02:14:39', 10),
(71, '2010-04-17 10:07:29', 11),
(72, '2014-06-05 15:09:14', 12),
(73, '1979-10-25 03:09:55', 13),
(74, '1990-06-24 04:25:30', 14),
(75, '2008-03-16 17:39:45', 15),
(76, '1987-06-06 21:01:08', 16),
(77, '1995-10-25 23:09:45', 17),
(78, '1984-03-21 04:00:02', 18),
(79, '1976-07-12 16:48:33', 19),
(80, '1998-11-15 04:55:23', 20),
(81, '2009-07-10 06:29:38', 1),
(82, '1976-11-29 19:24:46', 2),
(83, '1976-04-16 06:41:04', 3),
(84, '1986-09-09 16:52:38', 4),
(85, '2018-07-15 20:08:32', 5),
(86, '1993-04-01 23:21:18', 6),
(87, '1997-10-22 20:58:03', 7),
(88, '2002-10-20 09:55:16', 8),
(89, '1985-03-14 10:02:24', 9),
(90, '2005-03-28 22:44:32', 10),
(91, '1999-08-31 02:57:07', 11),
(92, '1981-09-28 13:47:30', 12),
(93, '2005-11-10 21:29:53', 13),
(94, '2020-06-09 18:47:01', 14),
(95, '1972-11-25 19:09:06', 15),
(96, '1989-01-05 05:24:50', 16),
(97, '2001-03-28 03:59:37', 17),
(98, '2021-09-25 15:05:51', 18),
(99, '1970-10-02 05:01:17', 19),
(100, '2004-06-07 09:44:45', 20);

-- --------------------------------------------------------

--
-- Structure de la table `Order_has_Product`
--

CREATE TABLE `Order_has_Product` (
  `Order_idOrder` int(11) NOT NULL,
  `Product_idProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `Order_has_Product`
--

INSERT INTO `Order_has_Product` (`Order_idOrder`, `Product_idProduct`) VALUES
(1, 16),
(1, 21),
(1, 26),
(2, 17),
(2, 22),
(2, 27),
(3, 18),
(3, 23),
(3, 28),
(4, 19),
(4, 24),
(4, 29),
(5, 20),
(5, 25),
(5, 30),
(6, 16),
(6, 21),
(6, 26),
(7, 17),
(7, 22),
(7, 27),
(8, 18),
(8, 23),
(8, 28),
(9, 19),
(9, 24),
(9, 29),
(10, 20),
(10, 25),
(10, 30),
(11, 16),
(11, 21),
(11, 26),
(12, 17),
(12, 22),
(12, 27),
(13, 18),
(13, 23),
(13, 28),
(14, 19),
(14, 24),
(14, 29),
(15, 20),
(15, 25),
(15, 30),
(16, 16),
(16, 21),
(16, 26),
(17, 17),
(17, 22),
(17, 27),
(18, 18),
(18, 23),
(18, 28),
(19, 19),
(19, 24),
(19, 29),
(20, 20),
(20, 25),
(20, 30),
(21, 16),
(21, 21),
(21, 26),
(22, 17),
(22, 22),
(22, 27),
(23, 18),
(23, 23),
(23, 28),
(24, 19),
(24, 24),
(24, 29),
(25, 20),
(25, 25),
(25, 30),
(26, 16),
(26, 21),
(26, 26),
(27, 17),
(27, 22),
(27, 27),
(28, 18),
(28, 23),
(28, 28),
(29, 19),
(29, 24),
(29, 29),
(30, 20),
(30, 25),
(30, 30),
(31, 16),
(31, 21),
(31, 26),
(32, 17),
(32, 22),
(32, 27),
(33, 18),
(33, 23),
(33, 28),
(34, 19),
(34, 24),
(34, 29),
(35, 20),
(35, 25),
(35, 30),
(36, 16),
(36, 21),
(36, 26),
(37, 17),
(37, 22),
(37, 27),
(38, 18),
(38, 23),
(38, 28),
(39, 19),
(39, 24),
(39, 29),
(40, 20),
(40, 25),
(40, 30),
(41, 16),
(41, 21),
(41, 26),
(42, 17),
(42, 22),
(42, 27),
(43, 18),
(43, 23),
(43, 28),
(44, 19),
(44, 24),
(44, 29),
(45, 20),
(45, 25),
(45, 30),
(46, 16),
(46, 21),
(46, 26),
(47, 17),
(47, 22),
(47, 27),
(48, 18),
(48, 23),
(48, 28),
(49, 19),
(49, 24),
(49, 29),
(50, 20),
(50, 25),
(50, 30),
(51, 16),
(51, 21),
(51, 26),
(52, 17),
(52, 22),
(52, 27),
(53, 18),
(53, 23),
(53, 28),
(54, 19),
(54, 24),
(54, 29),
(55, 20),
(55, 25),
(55, 30),
(56, 16),
(56, 21),
(56, 26),
(57, 17),
(57, 22),
(57, 27),
(58, 18),
(58, 23),
(58, 28),
(59, 19),
(59, 24),
(59, 29),
(60, 20),
(60, 25),
(60, 30),
(61, 16),
(61, 21),
(61, 26),
(62, 17),
(62, 22),
(62, 27),
(63, 18),
(63, 23),
(63, 28),
(64, 19),
(64, 24),
(64, 29),
(65, 20),
(65, 25),
(65, 30),
(66, 16),
(66, 21),
(66, 26),
(67, 17),
(67, 22),
(67, 27),
(68, 18),
(68, 23),
(68, 28),
(69, 19),
(69, 24),
(69, 29),
(70, 20),
(70, 25),
(70, 30),
(71, 16),
(71, 21),
(71, 26),
(72, 17),
(72, 22),
(72, 27),
(73, 18),
(73, 23),
(73, 28),
(74, 19),
(74, 24),
(74, 29),
(75, 20),
(75, 25),
(75, 30),
(76, 16),
(76, 21),
(76, 26),
(77, 17),
(77, 22),
(77, 27),
(78, 18),
(78, 23),
(78, 28),
(79, 19),
(79, 24),
(79, 29),
(80, 20),
(80, 25),
(80, 30),
(81, 16),
(81, 21),
(81, 26),
(82, 17),
(82, 22),
(82, 27),
(83, 18),
(83, 23),
(83, 28),
(84, 19),
(84, 24),
(84, 29),
(85, 20),
(85, 25),
(85, 30),
(86, 16),
(86, 21),
(86, 26),
(87, 17),
(87, 22),
(87, 27),
(88, 18),
(88, 23),
(88, 28),
(89, 19),
(89, 24),
(89, 29),
(90, 20),
(90, 25),
(90, 30),
(91, 16),
(91, 21),
(91, 26),
(92, 17),
(92, 22),
(92, 27),
(93, 18),
(93, 23),
(93, 28),
(94, 19),
(94, 24),
(94, 29),
(95, 20),
(95, 25),
(95, 30),
(96, 16),
(96, 21),
(96, 26),
(97, 17),
(97, 22),
(97, 27),
(98, 18),
(98, 23),
(98, 28),
(99, 19),
(99, 24),
(99, 29),
(100, 20),
(100, 25),
(100, 30);

-- --------------------------------------------------------

--
-- Structure de la table `Product`
--

CREATE TABLE `Product` (
  `idProduct` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `Product`
--

INSERT INTO `Product` (`idProduct`, `name`, `price`) VALUES
(16, 'Sac de couchage', '25.00'),
(17, 'Moma Bikes', '1799.99'),
(18, 'Gourde', '15.00'),
(19, 'Serviette de bain', '10.05'),
(20, 'tee shirt anti uv', '10.99'),
(21, 'casquette', '4.55'),
(22, 'chapeau trekking', '12.35'),
(23, 'lampe de camping', '11.00'),
(24, 'fauteuil pliant', '49.99'),
(25, 'sac à dos ', '25.65'),
(26, 'hamac', '35.25'),
(27, 'tente à arceaux', '235.10'),
(28, 'matelas gonflable', '26.70'),
(29, 'réchaud à gaz', '20.00'),
(30, 'table pliante', '61.50');

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE `User` (
  `idUser` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `User`
--

INSERT INTO `User` (`idUser`, `name`, `email`, `password`) VALUES
(1, 'Dr. Aleen Kuhn DDS', 'edmund42@example.net', 'a8a84dc887e0ab28a7cfe5e59ae2107a'),
(2, 'Ida Nader', 'candice78@example.net', '7189e44ab8b9bfc4b7002b3fc8a7c3a3'),
(3, 'Joy Franecki IV', 'magdalena68@example.com', '5c0c6a952ae9912a4b5a98f2cc24fde9'),
(4, 'Candido Bogisich', 'turner.madelyn@example.org', '95df1aab1eff98e66314884ae8d504db'),
(5, 'Reynold Wuckert Jr.', 'kirsten83@example.com', 'c0f678e1c89c000c8e8479289e694aa9'),
(6, 'Stefan Ortiz', 'romaguera.nigel@example.net', 'd8ae66199d198420b0012818eccebefb'),
(7, 'Lucy Dickinson', 'matteo.jaskolski@example.org', '07075231eba2061469bf7d0028e265f2'),
(8, 'Alexanne Anderson I', 'kacey.wiegand@example.org', 'f9369a411143ba88104539d203bade2f'),
(9, 'Pierce Nikolaus IV', 'conner24@example.org', '3810425a388f2c00b950500012e59062'),
(10, 'Henriette Herman', 'queenie.herzog@example.com', '45ed35229256858e2407ff3c58c7c7e8'),
(11, 'Trent Schmitt', 'yost.dariana@example.com', '3bcabc48f5c1819d0b1f30299cebf297'),
(12, 'Hugh Weber', 'homenick.blair@example.com', '0188beb887ef0066254801650da739db'),
(13, 'Margie Leannon', 'kswaniawski@example.com', 'cad42da7982592a12e7bcecf1a8a1ffc'),
(14, 'Nellie Roob V', 'edgar01@example.net', '2c292853c0d00b7448573e2ff052006d'),
(15, 'General Prohaska DDS', 'qbatz@example.net', '393fe4a5f8b2e4e14f4d61e12ce1b081'),
(16, 'Mr. Seamus Effertz', 'conor.beahan@example.com', '97ef1447510d939630a43994d9a6b89e'),
(17, 'Oswald Ebert', 'katelyn.stoltenberg@example.org', '5a8147fb1b091a4fe648b9d5031497a6'),
(18, 'Prof. Claude Konopelski', 'madaline.lubowitz@example.org', 'd31d32c61d0ae9d208e348b7c43e6ebc'),
(19, 'Domenica Ritchie', 'reece.williamson@example.net', '0e5ab61591fbfc23e57c09ee1688bdb9'),
(20, 'Elvis Waters', 'darrick13@example.org', '29ada9294f5ff4d67d2985b05d0abfa5');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Ordersaaa`
--
ALTER TABLE `Ordersaaa`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `fk_Order_User_idx` (`User_idUser`);

--
-- Index pour la table `Order_has_Product`
--
ALTER TABLE `Order_has_Product`
  ADD PRIMARY KEY (`Order_idOrder`,`Product_idProduct`),
  ADD KEY `fk_Order_has_Product_Product1_idx` (`Product_idProduct`),
  ADD KEY `fk_Order_has_Product_Order1_idx` (`Order_idOrder`);

--
-- Index pour la table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`idProduct`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Ordersaaa`
--
ALTER TABLE `Ordersaaa`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `Product`
--
ALTER TABLE `Product`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `User`
--
ALTER TABLE `User`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Ordersaaa`
--
ALTER TABLE `Ordersaaa`
  ADD CONSTRAINT `fk_Order_User` FOREIGN KEY (`User_idUser`) REFERENCES `User` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `Order_has_Product`
--
ALTER TABLE `Order_has_Product`
  ADD CONSTRAINT `fk_Order_has_Product_Order1` FOREIGN KEY (`Order_idOrder`) REFERENCES `Ordersaaa` (`idOrder`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Order_has_Product_Product1` FOREIGN KEY (`Product_idProduct`) REFERENCES `Product` (`idProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
