
-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 09:58 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nmt_vorlage_struktur_unvollstaendig`
--

CREATE DATABASE IF NOT EXISTS `ams_fx_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ams_fx_test`;


-- --------------------------------------------------------

--
-- Table structure for table `benutzer`
--

CREATE TABLE `benutzer` (
                            `b_id` int(11) NOT NULL,
                            `benutzername` varchar(1000) NOT NULL,
                            `passwort` varchar(1000) NOT NULL,
                            `administrator` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gebaeude`
--

CREATE TABLE `gebaeude` (
                            `gebaeudenummer` int(11) NOT NULL,
                            `bezeichnung` varchar(255) DEFAULT NULL,
                            `stockwerke` int(11) DEFAULT NULL,
                            `beschreibung` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gebaeude`
--

INSERT INTO `gebaeude` (`gebaeudenummer`, `bezeichnung`, `stockwerke`, `beschreibung`) VALUES
                                                                                           (1, 'Kommandozentrale', NULL, 'Produziert Arbeiter und ermöglicht das Sammeln von Mineralien'),
                                                                                           (2, 'Pavillion', NULL, 'Kleines Zelt im Hof'),
                                                                                           (3, 'Kantine', NULL, 'Essen für alle'),
                                                                                           (4, 'Polizeistation', NULL, 'HQ der lokalen Polizei'),
                                                                                           (5, 'Feuerwehrhaus', NULL, 'Beim Flughafen'),
                                                                                           (6, 'Hochlager', NULL, 'Lagerung von Hochstoffen'),
                                                                                           (7, 'Lagerhaus ', NULL, 'Lagerung von Rohstoffen'),
                                                                                           (8, 'Mitteltrakt', NULL, 'Verbindungsgebäude'),
                                                                                           (9, 'Werkstätten 1', NULL, 'Metallverarbeitung'),
                                                                                           (10, 'Werkstätten 2', NULL, 'Keramische Verarbeitung'),
                                                                                           (11, 'Elektronik', NULL, 'Elektrowerkstatt'),
                                                                                           (12, 'Stark Tower', NULL, 'Noice'),
                                                                                           (13, 'Serverraum', NULL, 'Raum für Server'),
                                                                                           (386, 'High Science', NULL, 'Wissenschaft und Labore');

-- --------------------------------------------------------

--
-- Table structure for table `geraet`
--

CREATE TABLE `geraet` (
                          `inventarnummer` int(11) NOT NULL,
                          `bezeichnung` varchar(255) DEFAULT NULL,
                          `seriennummer` varchar(255) DEFAULT NULL,
                          `hersteller` varchar(255) DEFAULT NULL,
                          `defekt` tinyint(1) DEFAULT NULL,
                          `einkaufsdatum` date DEFAULT NULL,
                          `garantie` int(11) DEFAULT NULL COMMENT 'in Monaten',
                          `einkaufspreis` double DEFAULT NULL,
                          `raumnummer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `geraet`
--

INSERT INTO `geraet` (`inventarnummer`, `bezeichnung`, `seriennummer`, `hersteller`, `defekt`, `einkaufsdatum`, `garantie`, `einkaufspreis`, `raumnummer`) VALUES
                                                                                                                                                               (1, 'Schweißgerät', '123', 'DeltaCorp', 1, '2021-11-11', 36, 456, 1),
                                                                                                                                                               (2, 'IP-Telefon', '43673456', 'Tonschiba', 1, '2021-11-11', 24, 35, 2),
                                                                                                                                                               (3, 'Heizstrahler mit WakeOnLAN', '31415', 'Scharmsong', 0, '2015-11-19', 24, 1240, 3),
                                                                                                                                                               (4, 'Der Geraet', '432829', 'HaPee', 0, '2012-12-12', 12, 456.78, 6),
                                                                                                                                                               (5, 'Die Geraet', '5723895', 'Scharmsong', 0, '2011-11-11', 60, 789.2, 7),
                                                                                                                                                               (6, 'Das Geraet', '456776689', 'Eycer', 0, '2021-11-01', 24, 999.99, 2),
                                                                                                                                                               (7, 'pc3', '34565678', 'Äppl', 0, '2021-11-01', 24, 999.99, 3),
                                                                                                                                                               (8, 'pc4', '3456456898', 'Äppl', 0, '2021-11-01', 24, 999.99, 4),
                                                                                                                                                               (9, 'pc5', '74563456', 'Tonschiba', 1, '2021-11-01', 24, 999.99, 5),
                                                                                                                                                               (10, 'pc6', '45672435', 'Lehnofen', 0, '2021-11-01', 12, 999.99, 6),
                                                                                                                                                               (11, 'kein_nwg', 'kztgcri7zuuh', 'Anschuss', 0, '2015-11-09', 48, 456.12, 4),
                                                                                                                                                               (12, 'kein_nwg3', 'kztgcri7zuuh', 'Äppl', 0, '2015-11-09', 60, 456.12, 6),
                                                                                                                                                               (13, 'kein_nwg2', 'kzthgfhgf7zuuh', 'Eycer', 0, '2015-11-09', 48, 456.67, 3),
                                                                                                                                                               (14, 'pc1', 'e4r5687567', 'Äppl', 0, '2021-11-02', 24, 999.99, 1),
                                                                                                                                                               (15, 'Beamer', 'Pa6JadKY', 'Eppsohn', 0, '2020-05-20', 36, 379.99, 1),
                                                                                                                                                               (16, 'PC', 'kDLYusNc', 'Delle', 0, '2020-03-07', 12, 599.99, 2),
                                                                                                                                                               (17, 'Mixer', '22545', 'Scharmsong', 0, '2012-03-27', 24, 225, 17),
                                                                                                                                                               (18, 'Server', '1337', 'Immens', 1, '2021-09-08', 36, 7331, 16),
                                                                                                                                                               (19, 'USV', '123456', 'Lehnofen', 0, '2021-11-02', 24, 2000, 1),
                                                                                                                                                               (20, 'PC', '122333', 'HaPee', 1, '2021-11-02', 36, 1500, 2),
                                                                                                                                                               (21, 'Notebook', '1234-5678', 'Immens', 0, '2017-08-20', 24, 999, 20),
                                                                                                                                                               (22, 'Notebook', '9876-5432', 'Scharmsong', 0, '2018-06-09', 24, 499, 21),
                                                                                                                                                               (23, 'EPSON E-564', '878598347598', 'Eppsohn', 1, '2021-11-11', 36, 799, 22),
                                                                                                                                                               (24, 'Acer Predator X99-5', '7579485395', 'Eycer', 0, '2021-08-17', 12, 7000, 23),
                                                                                                                                                               (25, 'Druecker', 'GP-38953-84HB', 'Lehnofen', 0, '2020-03-16', 24, 123.43, 20),
                                                                                                                                                               (26, 'Projektor', 'DS-27349-4353HR4', 'DEPSON', 0, '2013-06-10', NULL, 201.5, 21);

-- --------------------------------------------------------

--
-- Table structure for table `geraetenutzung`
--

CREATE TABLE `geraetenutzung` (
                                  `gn_id` int(11) NOT NULL,
                                  `personalnummer` int(11) NOT NULL,
                                  `inventarnummer` int(11) NOT NULL,
                                  `anfangszeit` datetime DEFAULT NULL,
                                  `endzeit` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `geraetenutzung`
--

INSERT INTO `geraetenutzung` (`gn_id`, `personalnummer`, `inventarnummer`, `anfangszeit`, `endzeit`) VALUES
                                                                                                         (1, 23, 2, '2021-11-03 08:04:26', '2021-11-04 12:28:17'),
                                                                                                         (2, 23, 1, '2015-11-04 08:04:26', '2015-11-12 08:04:26'),
                                                                                                         (3, 3, 3, '2016-11-10 08:17:09', '2023-03-16 08:17:09'),
                                                                                                         (4, 3, 3, '2016-11-10 08:17:09', '2023-03-16 08:17:09'),
                                                                                                         (5, 6, 19, '2021-11-12 07:48:09', '2021-11-16 07:47:46'),
                                                                                                         (6, 6, 20, '2021-11-12 07:48:25', '2021-11-12 07:48:00'),
                                                                                                         (7, 1, 4, '2021-11-09 12:30:32', '2021-11-12 12:30:32'),
                                                                                                         (8, 2, 5, '2021-11-11 12:30:32', '2021-11-12 12:30:32'),
                                                                                                         (9, 5, 6, '2021-11-12 08:39:25', '2021-11-12 08:39:25'),
                                                                                                         (10, 3, 10, '2021-11-12 08:39:25', '2021-11-12 08:39:25'),
                                                                                                         (11, 3, 5, '2021-11-12 08:39:25', '2021-11-12 08:39:25'),
                                                                                                         (12, 2, 6, '2021-11-12 08:39:25', '2021-11-12 08:39:25'),
                                                                                                         (13, 1, 8, '2021-11-12 08:39:25', '2021-11-12 08:39:25'),
                                                                                                         (14, 5, 9, '2021-11-12 08:39:25', '2021-11-12 08:39:25'),
                                                                                                         (15, 2, 7, '2021-11-12 08:39:25', '2021-11-12 08:39:25'),
                                                                                                         (16, 1, 5, '2021-11-12 08:39:25', '2021-11-12 08:39:25'),
                                                                                                         (17, 1, 6, '2021-11-12 08:39:25', '2021-11-12 08:39:25'),
                                                                                                         (18, 13, 15, '2020-05-21 00:00:00', '0000-00-00 00:00:00'),
                                                                                                         (19, 14, 16, '2020-07-12 00:00:00', '2020-09-11 00:00:00'),
                                                                                                         (20, 16, 17, '2021-11-12 12:14:42', '2021-11-12 12:14:42'),
                                                                                                         (21, 15, 18, '2021-11-12 12:14:55', '2021-11-12 12:14:55'),
                                                                                                         (22, 23, 23, '2021-08-17 12:25:44', '2021-11-12 12:25:52'),
                                                                                                         (23, 24, 24, '2021-11-11 12:26:09', '2021-11-11 12:31:12'),
                                                                                                         (24, 17, 22, '2018-07-01 13:00:00', '2022-07-31 17:00:00'),
                                                                                                         (25, 18, 21, '2017-09-01 08:00:00', '2021-08-31 17:00:00'),
                                                                                                         (26, 19, 25, '2021-11-12 09:33:54', '2021-11-12 12:33:54'),
                                                                                                         (27, 19, 26, '2021-11-12 06:34:23', '2021-11-12 12:34:23'),
                                                                                                         (28, 7, 20, '2021-10-12 07:48:25', '2020-10-25 07:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `mitarbeiter`
--

CREATE TABLE `mitarbeiter` (
                               `personalnummer` int(11) NOT NULL,
                               `vorname` varchar(255) DEFAULT NULL,
                               `nachname` varchar(255) DEFAULT NULL,
                               `gebdatum` date DEFAULT NULL,
                               `eintrittsdatum` date DEFAULT NULL,
                               `gehalt` double DEFAULT NULL,
                               `b_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mitarbeiter`
--

INSERT INTO `mitarbeiter` (`personalnummer`, `vorname`, `nachname`, `gebdatum`, `eintrittsdatum`, `gehalt`, `b_id`) VALUES
                                                                                                                        (1, 'John', 'Rambo', '1974-02-03', '2011-03-05', 3200, NULL),
                                                                                                                        (2, 'Clarice', 'Starling', '2001-11-01', '2020-04-03', 2750, NULL),
                                                                                                                        (3, 'Rainer', 'Zufall', '1955-05-05', '2001-01-01', 3400, NULL),
                                                                                                                        (4, 'Ellen', 'Ripley', '1970-01-01', '1990-03-14', 2350, NULL),
                                                                                                                        (5, 'Arya', 'Stark', '1996-04-05', '2017-09-01', 3000, NULL),
                                                                                                                        (6, 'Tony', 'Stark', '2000-03-23', '2021-11-11', 10000, NULL),
                                                                                                                        (7, 'Jessica', 'Jones', '2011-11-02', '2021-11-11', 2500, NULL),
                                                                                                                        (8, 'Indiana', 'Jones', '2000-01-01', '2020-01-01', 450, NULL),
                                                                                                                        (9, 'Donny', 'Darko', '2011-11-01', '2021-11-17', 2000, NULL),
                                                                                                                        (10, 'Gordon', 'Gekko', '2011-11-01', '2021-11-17', 1200, NULL),
                                                                                                                        (11, 'Tony', 'Montana', '2011-08-11', '2021-11-02', 35000, NULL),
                                                                                                                        (12, 'Rachel', 'Green', '2011-08-23', '2018-11-22', 12000, NULL),
                                                                                                                        (13, 'Vincent', 'Vega', '1999-12-23', '2021-01-01', 1234, NULL),
                                                                                                                        (14, 'Snake', 'Plissken', '1996-03-12', '2021-01-02', 4321, NULL),
                                                                                                                        (15, 'Katniss', 'Everdeen', '1989-03-15', '2019-03-09', 1000, NULL),
                                                                                                                        (16, 'Luke', 'Skywalker', '1977-12-05', '2015-07-23', 3200, NULL),
                                                                                                                        (17, 'Jack', 'Sparrow', '2000-01-01', '2018-07-01', 3500, NULL),
                                                                                                                        (18, 'Dana', 'Sculy', '1990-09-27', '2009-12-01', 2500, NULL),
                                                                                                                        (19, 'Forrest', 'Gump', '1997-01-26', '2021-11-01', 1111.11, NULL),
                                                                                                                        (20, 'Peter', 'Venkman', '1976-09-14', '1999-05-18', 3333.33, NULL),
                                                                                                                        (21, 'Vito', 'Corleone', '2011-11-01', '2021-11-17', 1500, NULL),
                                                                                                                        (22, 'Norman', 'Bates', '2011-08-23', '2018-11-22', 75000, NULL),
                                                                                                                        (23, 'Ace', 'Ventura', '1762-11-12', '2105-07-03', 3900, NULL),
                                                                                                                        (24, 'Hannibal', 'Lecter', '1994-04-08', '2013-07-19', 2700, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `netzwerkgeraete`
--

CREATE TABLE `netzwerkgeraete` (
                                   `NG_ID` int(11) NOT NULL,
                                   `inventarnummer` int(11) NOT NULL,
                                   `ipv4adresse` varchar(1000) NOT NULL,
                                   `hostname` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `raum`
--

CREATE TABLE `raum` (
                        `raumnummer` int(11) NOT NULL,
                        `gebaeudenummer` int(11) NOT NULL,
                        `personalnummer` int(11) NOT NULL,
                        `bezeichnung` varchar(255) DEFAULT NULL,
                        `laenge_in_m` double DEFAULT NULL,
                        `breite_in_m` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `raum`
--

INSERT INTO `raum` (`raumnummer`, `gebaeudenummer`, `personalnummer`, `bezeichnung`, `laenge_in_m`, `breite_in_m`) VALUES
                                                                                                                       (1, 1, 1, 'Ausbildung', 30, 15),
                                                                                                                       (2, 1, 2, 'Antriebsraum', 50, 50),
                                                                                                                       (3, 2, 3, 'Pavillion', 5, 5),
                                                                                                                       (4, 3, 4, 'Essensausgabe', 20, 30),
                                                                                                                       (5, 4, 5, 'Seminarraum', 10, 8),
                                                                                                                       (6, 6, 2, 'Holodeck', 20.5108, 20.5108),
                                                                                                                       (7, 5, 1, 'Maschinenraum', 42, 32),
                                                                                                                       (8, 7, 6, 'Serverraum I', 30, 10),
                                                                                                                       (9, 7, 6, 'Serverraum III', 30, 10),
                                                                                                                       (10, 1, 2, 'Raum 1', 5, 6),
                                                                                                                       (11, 1, 5, 'Raum 2', 5, 5),
                                                                                                                       (12, 1, 3, 'Raum 3', 8, 9),
                                                                                                                       (13, 2, 1, 'Raum 4', 7, 7.5),
                                                                                                                       (14, 2, 2, 'Raum 5', 6, 8),
                                                                                                                       (15, 2, 5, 'Raum 6', 9, 8),
                                                                                                                       (16, 11, 15, 'Serverraum', 12, 9),
                                                                                                                       (17, 11, 16, 'Küche', 4, 6),
                                                                                                                       (18, 10, 13, 'Besprechungsraum 1. OG', 25, 10),
                                                                                                                       (19, 10, 14, 'Admin Büro', 12, 8),
                                                                                                                       (20, 13, 17, 'Pausenraum', 4.2, 6.9),
                                                                                                                       (21, 13, 18, 'Entspannungsraum', 20.5108, 20.5108),
                                                                                                                       (22, 12, 23, 'Betriebsarztzimmer', 7, 6),
                                                                                                                       (23, 12, 24, 'Personalbüro', 6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
                          `S_ID` int(11) NOT NULL,
                          `NG_ID` int(11) NOT NULL,
                          `Zeitspempel` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
                          `Erreichbar` varchar(1000) NOT NULL,
                          `Zeit` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ueberwachung`
--

CREATE TABLE `ueberwachung` (
                                `id` int(11) NOT NULL,
                                `b_id` int(11) NOT NULL,
                                `NG_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ueberwachung`
--

INSERT INTO `ueberwachung` (`id`, `b_id`, `NG_ID`) VALUES
    (1, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `benutzer`
--
ALTER TABLE `benutzer`
    ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `gebaeude`
--
ALTER TABLE `gebaeude`
    ADD PRIMARY KEY (`gebaeudenummer`);

--
-- Indexes for table `geraet`
--
ALTER TABLE `geraet`
    ADD PRIMARY KEY (`inventarnummer`),
    ADD KEY `raumnummer` (`raumnummer`);

--
-- Indexes for table `geraetenutzung`
--
ALTER TABLE `geraetenutzung`
    ADD PRIMARY KEY (`gn_id`),
    ADD KEY `personalnummer` (`personalnummer`),
    ADD KEY `inventarnummer` (`inventarnummer`);

--
-- Indexes for table `mitarbeiter`
--
ALTER TABLE `mitarbeiter`
    ADD PRIMARY KEY (`personalnummer`),
    ADD KEY `b_id` (`b_id`);

--
-- Indexes for table `netzwerkgeraete`
--
ALTER TABLE `netzwerkgeraete`
    ADD PRIMARY KEY (`NG_ID`),
    ADD KEY `inventarnummer` (`inventarnummer`);

--
-- Indexes for table `raum`
--
ALTER TABLE `raum`
    ADD PRIMARY KEY (`raumnummer`),
    ADD KEY `gebaeudenummer` (`gebaeudenummer`),
    ADD KEY `personalnummer` (`personalnummer`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
    ADD PRIMARY KEY (`S_ID`),
    ADD KEY `NG_ID` (`NG_ID`);

--
-- Indexes for table `ueberwachung`
--
ALTER TABLE `ueberwachung`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `benutzer`
--
ALTER TABLE `benutzer`
    MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gebaeude`
--
ALTER TABLE `gebaeude`
    MODIFY `gebaeudenummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `geraet`
--
ALTER TABLE `geraet`
    MODIFY `inventarnummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `geraetenutzung`
--
ALTER TABLE `geraetenutzung`
    MODIFY `gn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `mitarbeiter`
--
ALTER TABLE `mitarbeiter`
    MODIFY `personalnummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `netzwerkgeraete`
--
ALTER TABLE `netzwerkgeraete`
    MODIFY `NG_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `raum`
--
ALTER TABLE `raum`
    MODIFY `raumnummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
    MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ueberwachung`
--
ALTER TABLE `ueberwachung`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `geraet`
--
ALTER TABLE `geraet`
    ADD CONSTRAINT `geraet_ibfk_1` FOREIGN KEY (`raumnummer`) REFERENCES `raum` (`raumnummer`);

--
-- Constraints for table `geraetenutzung`
--
ALTER TABLE `geraetenutzung`
    ADD CONSTRAINT `geraetenutzung_ibfk_1` FOREIGN KEY (`personalnummer`) REFERENCES `mitarbeiter` (`personalnummer`),
    ADD CONSTRAINT `geraetenutzung_ibfk_2` FOREIGN KEY (`inventarnummer`) REFERENCES `geraet` (`inventarnummer`);

--
-- Constraints for table `mitarbeiter`
--
ALTER TABLE `mitarbeiter`
    ADD CONSTRAINT `b_id` FOREIGN KEY (`b_id`) REFERENCES `benutzer` (`b_id`);

--
-- Constraints for table `netzwerkgeraete`
--
ALTER TABLE `netzwerkgeraete`
    ADD CONSTRAINT `inventarnummer` FOREIGN KEY (`inventarnummer`) REFERENCES `geraet` (`inventarnummer`);

--
-- Constraints for table `raum`
--
ALTER TABLE `raum`
    ADD CONSTRAINT `raum_ibfk_1` FOREIGN KEY (`gebaeudenummer`) REFERENCES `gebaeude` (`gebaeudenummer`),
    ADD CONSTRAINT `raum_ibfk_2` FOREIGN KEY (`personalnummer`) REFERENCES `mitarbeiter` (`personalnummer`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
    ADD CONSTRAINT `NG_ID` FOREIGN KEY (`NG_ID`) REFERENCES `netzwerkgeraete` (`NG_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
