

START TRANSACTION;

CREATE DATABASE IF NOT EXISTS `nmt_vorlage_komplett` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nmt_vorlage_komplett`;



CREATE TABLE `benutzer` (
                            `benutzername` varchar(255) NOT NULL,
                            `passwort` varchar(255) NOT NULL,
                            `administrator` tinyint(1) NOT NULL DEFAULT 0,
                            `registration_datum` datetime NOT NULL DEFAULT current_timestamp() ,
                            `personalnummer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `benutzer` (`benutzername`, `passwort`, `administrator`, `registration_datum`, `personalnummer`) VALUES
                                                                                                                 ('a.ventura', 'p4ssw0rd', 0, '2022-02-24', 23),
                                                                                                                 ('c.starling', 'nameMeinerFrau', 0, '2022-02-24', 2),
                                                                                                                 ('d.darko', 'passw0rd', 0, '2022-02-24', 9),
                                                                                                                 ('d.scully', 'asdfkj', 1, '2022-02-24', 18),
                                                                                                                 ('ellen.ripley', 'Geheim01', 1, '2022-02-24', 4),
                                                                                                                 ('f.gump', 'a1b2c3d4', 0, '2022-02-24', 19),
                                                                                                                 ('gordon.gekko', '1111', 1, '2022-02-24', 10),
                                                                                                                 ('i.jones', '4321', 0, '2022-02-24', 8),
                                                                                                                 ('j.jones', '1234', 1, '2022-02-24', 7),
                                                                                                                 ('j.sparrow', 'jacksparrow', 0, '2022-02-24', 17),
                                                                                                                 ('john.rambo', 'P455w0rd', 1, '2022-02-24', 1),
                                                                                                                 ('k.everdeen', 'qwerty', 0, '2022-02-24', 15),
                                                                                                                 ('l.skywalker', 'asdw', 0, '2022-02-24', 16),
                                                                                                                 ('n.bates', 'be$te5P4ssw0rT!', 0, '2022-02-24', 22),
                                                                                                                 ('p.venkman', '1234567890', 1, '2022-02-24', 20),
                                                                                                                 ('r.green', 'Mb2.r5oHf-0t', 0, '2022-02-24', 12),
                                                                                                                 ('r.zufall', 'meinGeburstag', 0, '2022-02-24', 3),
                                                                                                                 ('s.plissken', 'qwertz', 0, '2022-02-24', 14),
                                                                                                                 ('t.montana', 'Passwort', 1, '2022-02-24', 11),
                                                                                                                 ('v.corleone', '!\"§$%&//()', 0, '2022-02-24', 21),
                                                                                                                 ('v.vega', 'asdf1234', 0, '2022-02-24', 13);



CREATE TABLE `gebaeude` (
                            `gebaeudenummer` int(11) NOT NULL,
                            `bezeichnung` varchar(255) DEFAULT NULL,
                            `stockwerke` int(11) DEFAULT NULL,
                            `beschreibung` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


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



CREATE TABLE `geraete` (
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


INSERT INTO `geraete` (`inventarnummer`, `bezeichnung`, `seriennummer`, `hersteller`, `defekt`, `einkaufsdatum`, `garantie`, `einkaufspreis`, `raumnummer`) VALUES
                                                                                                                                                                (1, 'Schweißgerät', '123', 'DeltaCorp', 1, '2021-11-11', 36, 456, 1),
                                                                                                                                                                (2, 'IP-Telefon', '43673456', 'Tonschiba', 1, '2021-11-11', 24, 35, 2),
                                                                                                                                                                (3, 'Heizstrahler mit WakeOnLAN', '31415', 'Scharmsong', 0, '2015-11-19', 24, 1240, 3),
                                                                                                                                                                (4, 'Der Geraet', '432829', 'HaPee', 0, '2012-12-12', 12, 456.78, 6),
                                                                                                                                                                (5, 'Die Geraet', '5723895', 'Scharmsong', 0, '2011-11-11', 60, 789.2, 7),
                                                                                                                                                                (6, 'Das Geraet', '456776689', 'Eycer', 0, '2021-11-01', 24, 999.99, 2),
                                                                                                                                                                (7, 'yMäk', '34565678', 'Äppl', 0, '2021-11-01', 24, 999.99, 3),
                                                                                                                                                                (8, 'Powerbook', '3456456898', 'Äppl', 0, '2021-11-01', 24, 999.99, 4),
                                                                                                                                                                (9, 'Workstation', '74563456', 'Tonschiba', 1, '2021-11-01', 24, 999.99, 5),
                                                                                                                                                                (10, 'Workstation', '45672435', 'Lehnofen', 0, '2021-11-01', 12, 999.99, 6),
                                                                                                                                                                (11, 'Notebook', 'kztgcri7zuuh', 'Anschuss', 0, '2015-11-09', 48, 456.12, 4),
                                                                                                                                                                (12, 'yBook', 'kztgcri7zuuh', 'Äppl', 0, '2015-11-09', 60, 456.12, 6),
                                                                                                                                                                (13, 'Netbook', 'kzthgfhgf7zuuh', 'Eycer', 0, '2015-11-09', 48, 456.67, 3),
                                                                                                                                                                (14, 'PowerMäk', 'e4r5687567', 'Äppl', 0, '2021-11-02', 24, 999.99, 1),
                                                                                                                                                                (15, 'Beamer', 'Pa6JadKY', 'Eppsohn', 0, '2020-05-20', 36, 379.99, 1),
                                                                                                                                                                (16, 'PC', 'kDLYusNc', 'Delle', 0, '2020-03-07', 12, 599.99, 2),
                                                                                                                                                                (17, 'Mixer', '22545', 'Scharmsong', 0, '2012-03-27', 24, 225, 17),
                                                                                                                                                                (18, 'Server', '1337', 'Immens', 1, '2021-09-08', 36, 7331, 16),
                                                                                                                                                                (19, 'USV', '123456', 'Lehnofen', 0, '2021-11-02', 24, 2000, 1),
                                                                                                                                                                (20, 'PC', '122333', 'HaPee', 1, '2021-11-02', 36, 1500, 2),
                                                                                                                                                                (21, 'Notebook', '1234-5678', 'Immens', 0, '2017-08-20', 24, 999, 20),
                                                                                                                                                                (22, 'Notebook', '9876-5432', 'Scharmsong', 0, '2018-06-09', 24, 499, 21),
                                                                                                                                                                (23, 'EPSON E-564', '878598347598', 'Eppsohn', 1, '2021-11-11', 36, 799, 22),
                                                                                                                                                                (24, 'Gaming PC', '7579485395', 'Eycer', 0, '2021-08-17', 12, 7000, 23),
                                                                                                                                                                (25, 'Druecker', 'GP-38953-84HB', 'Lehnofen', 0, '2020-03-16', 24, 123.43, 20),
                                                                                                                                                                (26, 'Projektor', 'DS-27349-4353HR4', 'DEPSON', 0, '2013-06-10', NULL, 201.5, 21);



CREATE TABLE `geraetenutzung` (
                                  `gn_id` int(11) NOT NULL,
                                  `personalnummer` int(11) NOT NULL,
                                  `inventarnummer` int(11) NOT NULL,
                                  `anfangszeit` datetime DEFAULT NULL,
                                  `endzeit` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


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
                                                                                                         (18, 13, 15, '2020-05-21 00:00:00', '2020-05-21 00:00:00'),
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



CREATE TABLE `mitarbeiter` (
                               `personalnummer` int(11) NOT NULL,
                               `vorname` varchar(255) DEFAULT NULL,
                               `nachname` varchar(255) DEFAULT NULL,
                               `gebdatum` date DEFAULT NULL,
                               `geschlecht` char(1) NOT NULL DEFAULT 'w',
                               `eintrittsdatum` date DEFAULT NULL,
                               `gehalt` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `mitarbeiter` (`personalnummer`, `vorname`, `nachname`, `gebdatum`, `geschlecht`, `eintrittsdatum`, `gehalt`) VALUES
                                                                                                                              (1, 'John', 'Rambo', '1974-02-03', 'm', '2011-03-05', 3200),
                                                                                                                              (2, 'Clarice', 'Starling', '2001-11-01', 'w', '2020-04-03', 2750),
                                                                                                                              (3, 'Rainer', 'Zufall', '1955-05-05', 'w', '2001-01-01', 3400),
                                                                                                                              (4, 'Ellen', 'Ripley', '1970-01-01', 'w', '1990-03-14', 2350),
                                                                                                                              (5, 'Arya', 'Stark', '1996-04-05', 'w', '2017-09-01', 3000),
                                                                                                                              (6, 'Tony', 'Stark', '2000-03-23', 'm', '2021-11-11', 10000),
                                                                                                                              (7, 'Jessica', 'Jones', '2011-11-02', 'w', '2021-11-11', 2500),
                                                                                                                              (8, 'Indiana', 'Jones', '2000-01-01', 'm', '2020-01-01', 450),
                                                                                                                              (9, 'Donny', 'Darko', '2011-11-01', 'm', '2021-11-17', 2000),
                                                                                                                              (10, 'Gordon', 'Gekko', '2011-11-01', 'm', '2021-11-17', 1200),
                                                                                                                              (11, 'Tony', 'Montana', '2011-08-11', 'm', '2021-11-02', 35000),
                                                                                                                              (12, 'Rachel', 'Green', '2011-08-23', 'w', '2018-11-22', 12000),
                                                                                                                              (13, 'Vincent', 'Vega', '1999-12-23', 'm', '2021-01-01', 1234),
                                                                                                                              (14, 'Snake', 'Plissken', '1996-03-12', 'm', '2021-01-02', 4321),
                                                                                                                              (15, 'Katniss', 'Everdeen', '1989-03-15', 'w', '2019-03-09', 1000),
                                                                                                                              (16, 'Luke', 'Skywalker', '1977-12-22', 'm', '2015-07-23', 3200),
                                                                                                                              (17, 'Jack', 'Sparrow', '2000-01-01', 'm', '2018-07-01', 3500),
                                                                                                                              (18, 'Dana', 'Sculy', '1990-09-27', 'w', '2009-12-01', 2500),
                                                                                                                              (19, 'Forrest', 'Gump', '1997-01-26', 'm', '2021-11-01', 1111.11),
                                                                                                                              (20, 'Peter', 'Venkman', '1976-09-14', 'm', '1999-05-18', 3333.33),
                                                                                                                              (21, 'Vito', 'Corleone', '2011-11-01', 'm', '2021-11-17', 1500),
                                                                                                                              (22, 'Norman', 'Bates', '2011-08-23', 'm', '2018-11-22', 75000),
                                                                                                                              (23, 'Ace', 'Ventura', '1762-11-12', 'm', '2105-07-03', 3900),
                                                                                                                              (24, 'Hannibal', 'Lecter', '1994-04-08', 'm', '2013-07-19', 2700);



CREATE TABLE `netzwerkgeraete` (
                                   `ng_id` int(11) NOT NULL,
                                   `inventarnummer` int(11) NOT NULL,
                                   `hostname` varchar(255) DEFAULT NULL,
                                   `ipv4adresse` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `netzwerkgeraete` (`ng_id`, `inventarnummer`, `hostname`, `ipv4adresse`) VALUES
                                                                                         (1, 5, 'host_pc1', '1.2.3.4'),
                                                                                         (2, 6, 'host_pc2', '2.2.3.4'),
                                                                                         (3, 7, 'host_pc3', '3.2.3.4'),
                                                                                         (4, 8, 'host_pc4', '4.2.3.4'),
                                                                                         (5, 9, 'host_pc5', '5.2.3.4'),
                                                                                         (6, 10, 'host_pc6', '6.2.3.4'),
                                                                                         (7, 2, 'host_pc8', '10.0.0.12'),
                                                                                         (8, 3, 'host_pc7', '192.168.123.123'),
                                                                                         (9, 4, 'host_pc9', '192.168.2.7'),
                                                                                         (10, 16, 'admin_pc7', '1.1.1.1'),
                                                                                         (11, 18, 'fileserver', '1.2.3.4'),
                                                                                         (12, 23, 'printerver', '192.168.172.13'),
                                                                                         (13, 24, 'webserver', '192.168.172.42'),
                                                                                         (14, 21, 'admin_pc8', '192.168.1.9');



CREATE TABLE `raeume` (
                          `raumnummer` int(11) NOT NULL,
                          `gebaeudenummer` int(11) NOT NULL,
                          `personalnummer` int(11) NOT NULL,
                          `bezeichnung` varchar(255) DEFAULT NULL,
                          `laenge_in_m` double DEFAULT NULL,
                          `breite_in_m` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `raeume` (`raumnummer`, `gebaeudenummer`, `personalnummer`, `bezeichnung`, `laenge_in_m`, `breite_in_m`) VALUES
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



CREATE TABLE `status` (
                          `s_id` int(11) NOT NULL,
                          `ng_id` int(11) NOT NULL,
                          `laufzeit` double DEFAULT NULL COMMENT 'in Millisekunden',
                          `erreichbarkeit` tinyint(1) DEFAULT NULL,
                          `zeitstempel` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `status` (`s_id`, `ng_id`, `laufzeit`, `erreichbarkeit`, `zeitstempel`) VALUES
                                                                                        (1, 7, 13, 1, '2021-11-02 08:08:10'),
                                                                                        (2, 7, 500, 0, '2021-11-04 08:08:10'),
                                                                                        (3, 7, 12, 1, '2021-11-03 08:08:58'),
                                                                                        (4, 8, 123, 1, '2017-11-09 08:21:36'),
                                                                                        (5, 8, 137, 1, '2018-11-15 08:21:36'),
                                                                                        (6, 8, 350, 1, '2019-11-07 08:22:20'),
                                                                                        (7, 1, 31.1, 1, '2021-11-12 11:33:41'),
                                                                                        (11, 1, 2, 1, '2021-11-12 07:36:47'),
                                                                                        (12, 2, 2, 1, '2021-11-12 07:38:38'),
                                                                                        (13, 3, 1, 1, '2021-11-12 07:38:38'),
                                                                                        (14, 4, 1, 1, '2021-11-12 07:38:38'),
                                                                                        (15, 5, 1, 1, '2021-11-12 07:38:38'),
                                                                                        (16, 6, 1, 1, '2021-11-12 07:38:38'),
                                                                                        (17, 10, 38, 4, '2021-11-12 11:21:36'),
                                                                                        (18, 10, 40, 4, '2021-11-12 11:22:00'),
                                                                                        (19, 10, 30, 4, '2021-11-12 11:22:11'),
                                                                                        (20, 14, 6, 1, '2021-11-12 14:03:34'),
                                                                                        (21, 14, 3, 1, '2021-11-13 10:00:56'),
                                                                                        (22, 14, 2.5, 1, '2021-11-14 09:30:00'),
                                                                                        (23, 12, 8, 1, '2021-11-12 13:30:03'),
                                                                                        (24, 13, 99, 0, '2021-11-09 10:30:19'),
                                                                                        (25, 13, 29, 0, '2021-11-30 12:56:09'),
                                                                                        (26, 7, 1000, 0, '2021-11-30 12:56:09');



CREATE TABLE `ueberwachung` (
                                `uw_id` int(11) NOT NULL,
                                `ng_id` int(11) NOT NULL,
                                `benutzername` varchar(255) NOT NULL,
                                `anfangszeit` datetime DEFAULT NULL,
                                `endzeit` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `ueberwachung` (`uw_id`, `ng_id`, `benutzername`, `anfangszeit`, `endzeit`) VALUES
                                                                                            (1, 2, 'john.rambo', '2021-11-12 08:42:58', '2021-11-12 08:42:58'),
                                                                                            (2, 3, 'c.starling', '2021-11-12 08:42:58', '2021-11-12 08:42:58'),
                                                                                            (3, 3, 'john.rambo', '2021-11-12 08:42:58', '2021-11-12 08:42:58'),
                                                                                            (4, 1, 'c.starling', '2021-11-12 08:42:58', '2021-11-12 08:42:58'),
                                                                                            (5, 4, 'c.starling', '2021-11-12 08:42:58', '2021-11-12 08:42:58'),
                                                                                            (6, 1, 'john.rambo', '2021-11-12 08:42:58', '2021-11-12 08:42:58'),
                                                                                            (7, 3, 'c.starling', '2021-11-12 08:42:58', '2021-11-12 08:42:58'),
                                                                                            (8, 3, 'c.starling', '2021-11-12 08:42:58', '2021-11-12 08:42:58'),
                                                                                            (9, 4, 'john.rambo', '2021-11-12 08:42:58', '2021-11-12 08:42:58'),
                                                                                            (10, 7, 'd.scully', '2015-11-04 08:04:26', '2015-11-12 08:04:26'),
                                                                                            (11, 8, 'f.gump', '2016-11-10 08:17:09', '2023-03-16 08:17:09'),
                                                                                            (12, 1, 'p.venkman', '2021-11-01 12:32:41', '2021-11-12 12:32:41'),
                                                                                            (13, 10, 'v.corleone', '2021-11-12 08:42:58', '2021-11-12 08:42:58'),
                                                                                            (14, 12, 'n.bates', '2021-11-12 12:27:09', '2028-11-12 12:27:13'),
                                                                                            (15, 13, 'a.ventura', '2019-05-22 12:28:16', '2024-07-08 12:28:19');


ALTER TABLE `benutzer`
    ADD PRIMARY KEY (`benutzername`),
    ADD KEY `personalnummer` (`personalnummer`);

ALTER TABLE `gebaeude`
    ADD PRIMARY KEY (`gebaeudenummer`);

ALTER TABLE `geraete`
    ADD PRIMARY KEY (`inventarnummer`),
    ADD KEY `raumnummer` (`raumnummer`);

ALTER TABLE `geraetenutzung`
    ADD PRIMARY KEY (`gn_id`),
    ADD KEY `personalnummer` (`personalnummer`),
    ADD KEY `inventarnummer` (`inventarnummer`);

ALTER TABLE `mitarbeiter`
    ADD PRIMARY KEY (`personalnummer`);

ALTER TABLE `netzwerkgeraete`
    ADD PRIMARY KEY (`ng_id`),
    ADD KEY `inventarnummer` (`inventarnummer`);

ALTER TABLE `raeume`
    ADD PRIMARY KEY (`raumnummer`),
    ADD KEY `gebaeudenummer` (`gebaeudenummer`),
    ADD KEY `personalnummer` (`personalnummer`);

ALTER TABLE `status`
    ADD PRIMARY KEY (`s_id`),
    ADD KEY `ng_id` (`ng_id`);

ALTER TABLE `ueberwachung`
    ADD PRIMARY KEY (`uw_id`),
    ADD KEY `ng_id` (`ng_id`),
    ADD KEY `benutzername` (`benutzername`);


ALTER TABLE `gebaeude`
    MODIFY `gebaeudenummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

ALTER TABLE `geraete`
    MODIFY `inventarnummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

ALTER TABLE `geraetenutzung`
    MODIFY `gn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

ALTER TABLE `mitarbeiter`
    MODIFY `personalnummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

ALTER TABLE `netzwerkgeraete`
    MODIFY `ng_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `raeume`
    MODIFY `raumnummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

ALTER TABLE `status`
    MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

ALTER TABLE `ueberwachung`
    MODIFY `uw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;


ALTER TABLE `benutzer`
    ADD CONSTRAINT `benutzer_ibfk_1` FOREIGN KEY (`personalnummer`) REFERENCES `mitarbeiter` (`personalnummer`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `geraete`
    ADD CONSTRAINT `geraete_ibfk_1` FOREIGN KEY (`raumnummer`) REFERENCES `raeume` (`raumnummer`);

ALTER TABLE `geraetenutzung`
    ADD CONSTRAINT `geraetenutzung_ibfk_1` FOREIGN KEY (`personalnummer`) REFERENCES `mitarbeiter` (`personalnummer`),
    ADD CONSTRAINT `geraetenutzung_ibfk_2` FOREIGN KEY (`inventarnummer`) REFERENCES `geraete` (`inventarnummer`);

ALTER TABLE `netzwerkgeraete`
    ADD CONSTRAINT `netzwerkgeraete_ibfk_1` FOREIGN KEY (`inventarnummer`) REFERENCES `geraete` (`inventarnummer`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `raeume`
    ADD CONSTRAINT `raeume_ibfk_1` FOREIGN KEY (`gebaeudenummer`) REFERENCES `gebaeude` (`gebaeudenummer`),
    ADD CONSTRAINT `raeume_ibfk_2` FOREIGN KEY (`personalnummer`) REFERENCES `mitarbeiter` (`personalnummer`);

ALTER TABLE `status`
    ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`ng_id`) REFERENCES `netzwerkgeraete` (`ng_id`);

ALTER TABLE `ueberwachung`
    ADD CONSTRAINT `ueberwachung_ibfk_1` FOREIGN KEY (`ng_id`) REFERENCES `netzwerkgeraete` (`ng_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT `ueberwachung_ibfk_2` FOREIGN KEY (`benutzername`) REFERENCES `benutzer` (`benutzername`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;