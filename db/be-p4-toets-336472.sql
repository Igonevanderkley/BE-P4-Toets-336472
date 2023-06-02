-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 02 jun 2023 om 10:22
-- Serverversie: 5.7.36
-- PHP-versie: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be-p4-toets-336472`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Examen`
--

DROP TABLE IF EXISTS `Examen`;
CREATE TABLE IF NOT EXISTS `Examen` (
  `Id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `Rijschool` varchar(40) DEFAULT NULL,
  `Stad` varchar(30) DEFAULT NULL,
  `Rijbewijscategorie` varchar(4) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `Uitslag` varchar(20) DEFAULT NULL,
  `IsActief` bit(1) NOT NULL DEFAULT b'1',
  `Opmerkingen` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Examen`
--

INSERT INTO `Examen` (`Id`, `StudentId`, `Rijschool`, `Stad`, `Rijbewijscategorie`, `Datum`, `Uitslag`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 100234, 'VolGasVooruit', 'Rotterdam', 'B', '2023-04-03', 'Geslaagd', b'1', NULL, '2023-06-02 11:51:41.186436', '2023-06-02 11:51:41.186440'),
(2, 123432, 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '2023-03-01', 'Geslaagd', b'1', NULL, '2023-06-02 11:51:41.186612', '2023-06-02 11:51:41.186613'),
(3, 103234, 'LinksomRechtsom', 'Dordrecht', 'D', '2023-05-15', 'Geslaagd', b'1', NULL, '2023-06-02 11:51:41.186669', '2023-06-02 11:51:41.186670'),
(4, 106452, 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-05-08', 'Gezakt', b'1', NULL, '2023-06-02 11:51:41.186700', '2023-06-02 11:51:41.186700'),
(5, 104546, 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-05-17', 'Gezakt', b'1', NULL, '2023-06-02 11:51:41.186726', '2023-06-02 11:51:41.186726'),
(6, 100333, 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-05-12', 'Geslaagd', b'1', NULL, '2023-06-02 11:51:41.186750', '2023-06-02 11:51:41.186750'),
(7, 124444, 'RijlesVoorJou', 'Rotterdam', 'B', '2023-04-12', 'Geslaagd', b'1', NULL, '2023-06-02 11:51:41.186775', '2023-06-02 11:51:41.186776');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ExamenPerExaminator`
--

DROP TABLE IF EXISTS `ExamenPerExaminator`;
CREATE TABLE IF NOT EXISTS `ExamenPerExaminator` (
  `Id` int(11) NOT NULL,
  `ExamenId` int(11) DEFAULT NULL,
  `ExaminatorId` int(11) DEFAULT NULL,
  `IsActief` bit(1) NOT NULL DEFAULT b'1',
  `Opmerkingen` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ExamenId` (`ExamenId`),
  KEY `ExaminatorId` (`ExaminatorId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `ExamenPerExaminator`
--

INSERT INTO `ExamenPerExaminator` (`Id`, `ExamenId`, `ExaminatorId`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 1, 3, b'1', NULL, '2023-06-02 11:51:41.245112', '2023-06-02 11:51:41.245115'),
(2, 3, 3, b'1', NULL, '2023-06-02 11:51:41.245249', '2023-06-02 11:51:41.245250'),
(3, 2, 2, b'1', NULL, '2023-06-02 11:51:41.245276', '2023-06-02 11:51:41.245276'),
(4, 4, 1, b'1', NULL, '2023-06-02 11:51:41.245294', '2023-06-02 11:51:41.245294'),
(5, 7, 3, b'1', NULL, '2023-06-02 11:51:41.245310', '2023-06-02 11:51:41.245310'),
(6, 6, 2, b'1', NULL, '2023-06-02 11:51:41.245325', '2023-06-02 11:51:41.245325'),
(7, 5, 4, b'1', NULL, '2023-06-02 11:51:41.245340', '2023-06-02 11:51:41.245340');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Examinator`
--

DROP TABLE IF EXISTS `Examinator`;
CREATE TABLE IF NOT EXISTS `Examinator` (
  `Id` int(11) NOT NULL,
  `Voornaam` varchar(50) DEFAULT NULL,
  `Tussenvoegsel` varchar(50) DEFAULT NULL,
  `Achternaam` varchar(50) DEFAULT NULL,
  `Mobiel` varchar(20) DEFAULT NULL,
  `IsActief` bit(1) NOT NULL DEFAULT b'1',
  `Opmerkingen` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Examinator`
--

INSERT INTO `Examinator` (`Id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Mobiel`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 'Manuel', 'van', 'Meekeren', '06-28493823', b'1', NULL, '2023-06-02 11:51:41.295146', '2023-06-02 11:51:41.295150'),
(2, 'Lisette', 'den', 'Dongen', '06-24383299', b'1', NULL, '2023-06-02 11:51:41.295283', '2023-06-02 11:51:41.295284'),
(3, 'Jurswailly', '', 'Luciano', '06-28493823', b'1', NULL, '2023-06-02 11:51:41.295309', '2023-06-02 11:51:41.295309'),
(4, 'Naswha', '', 'Salawi', '06-34291219', b'1', NULL, '2023-06-02 11:51:41.295332', '2023-06-02 11:51:41.295333');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
