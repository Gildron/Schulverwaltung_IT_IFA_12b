CREATE USER 'schueler'@'%' IDENTIFIED BY 'Geheim01';
GRANT ALL PRIVILEGES ON *.* TO 'schueler'@'%' WITH GRANT OPTION;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
--
CREATE DATABASE IF NOT EXISTS `ams_fx_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ams_fx_test`;


CREATE TABLE `raeume` (
                          `raum_id` int(11) NOT NULL,
                          `bezeichnung` varchar(20) DEFAULT NULL,
                          `gebaeude` varchar(20) DEFAULT NULL,
                          `laenge_in_cm` double DEFAULT NULL,
                          `breite_in_cm` double DEFAULT NULL,
                          `verantwortlicher` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `raeume`
--

INSERT INTO `raeume` (`raum_id`, `bezeichnung`, `gebaeude`, `laenge_in_cm`, `breite_in_cm`, `verantwortlicher`) VALUES
                                                                                                                    (1, 'U1', 'IT-C', 500, 500, NULL),
                                                                                                                    (2, 'U2', 'IT-C', 500, 500, NULL),
                                                                                                                    (3, '121', 'Hauptgebäude', 500, 500, NULL);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `raeume`
--
ALTER TABLE `raeume`
    ADD PRIMARY KEY (`raum_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `raeume`
--
ALTER TABLE `raeume`
    MODIFY `raum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
