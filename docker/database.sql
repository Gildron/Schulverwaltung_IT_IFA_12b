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

INSERT INTO `raeume` (`raum_id`, `bezeichnung`, `gebaeude`, `laenge_in_cm`, `breite_in_cm`, `verantwortlicher`) VALUES (
    1,
    'U1',
    'IT-C',
    500,
    500,
    NULL
    );

ALTER TABLE `raeume`
    ADD PRIMARY KEY (`raum_id`);

ALTER TABLE `raeume`
    MODIFY `raum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

COMMIT;
