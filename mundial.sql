-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2018 a las 22:15:27
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mundial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arbitros`
--

CREATE TABLE `arbitros` (
  `Arbid` int(10) UNSIGNED NOT NULL COMMENT 'Código Arbitro',
  `ArbNomb` char(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nombre Arbitro ',
  `ArbEdad` int(3) UNSIGNED NOT NULL COMMENT 'Edad Arbitro',
  `ArbPais` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Se almacena la informacion del de los Arbitros  del mundial ';

--
-- Volcado de datos para la tabla `arbitros`
--

INSERT INTO `arbitros` (`Arbid`, `ArbNomb`, `ArbEdad`, `ArbPais`) VALUES
(1001, 'AL MIRDASI Fahads', 33, 'Arabia Saudita'),
(1002, 'FAGHANI Alireza', 40, 'Iran'),
(1003, 'IRMATOV Ravshan', 40, 'Uzbekistan'),
(1004, 'MOHAMED Mohammed Abdulla', 40, 'Abu Dabi'),
(1005, 'SATO Ryuji', 41, 'Japon'),
(1006, 'SHUKRALLA Nawaf Abdulla', 41, 'Berein'),
(1007, 'ABID CHAREF Mehdi', 37, 'Argelia'),
(1008, 'DIEDHIOU Malang', 45, 'Senegal'),
(1009, 'GASSAMA Bakary Papa', 39, 'Gambia'),
(1010, 'GRISHA Ghead', 42, 'Egipto'),
(1011, 'SIKAZWE Janny', 38, 'Zambia'),
(1012, 'TESSEMA WEYESA Bamlak', 38, 'Etiopia'),
(1013, 'AGUILAR Joel', 42, 'San Salvador'),
(1014, 'GEIGER Mark W.', 43, 'Estados Unidos'),
(1015, 'MARRUFO Jair', 40, 'Estados Unidos'),
(1017, 'PITTI John', 39, 'Panama'),
(1018, 'RAMOS Cesar Arturo', 34, 'Mexico'),
(1019, 'BASCUÑAN Julio', 39, 'Chile'),
(1020, 'CACERES Enrique', 44, 'Paraguay'),
(1021, 'CUNHA Andres', 41, 'Uruguay'),
(1022, 'PITANA Nestor', 42, 'Argentina'),
(1023, 'TURPIN Clement', 40, 'Brasil'),
(1024, 'ROLDAN Wilmar', 38, 'Colombia'),
(1025, 'CONGER Matthew', 39, 'Nueva Zelanda'),
(1026, 'HAUATA Norbert', 38, 'Tahiti'),
(1027, 'BRYCH Felix', 42, 'Alemania'),
(1028, 'CAKIR Cüneyt', 41, 'Turquia'),
(1029, 'KARASEV Sergey', 41, 'Rusia'),
(1030, 'KUIPERS Bjorn', 38, 'Olanda'),
(1031, 'MARCINIAK Szymon', 40, 'Polonia'),
(1032, 'Paquete MATEU LAHOZ Antonio', 41, 'España'),
(1016, 'MONTERO Ricardo', 39, 'Costa Rica'),
(1033, 'MAZIC Milorad', 45, 'Servia'),
(1034, 'ROCCHI Gianluca', 40, 'Italia'),
(1035, 'Damir Skomina', 41, 'Eslovenia'),
(1036, 'TURPIN Clement', 40, 'Francia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campeones`
--

CREATE TABLE `campeones` (
  `CampId` int(10) UNSIGNED NOT NULL COMMENT 'Codigo deL CAMPEON',
  `Mundid` int(10) UNSIGNED NOT NULL COMMENT 'Codigo deL Mundial',
  `Paisid` int(10) UNSIGNED NOT NULL COMMENT 'Codigo del PAIS'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Se almacena la informacion de Campeones AUTO_INCREMENT=10004';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadio`
--

CREATE TABLE `estadio` (
  `EstadioId` int(10) NOT NULL,
  `EstadioNom` varchar(20) NOT NULL,
  `EstadioCapa` int(10) NOT NULL,
  `SedeId` int(10) NOT NULL,
  `EstadioUrl` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadio`
--

INSERT INTO `estadio` (`EstadioId`, `EstadioNom`, `EstadioCapa`, `SedeId`, `EstadioUrl`) VALUES
(1010, 'SPARTAK STADIUM', 43298, 10, ''),
(1011, 'ESTADIO LUZHNIKI', 81000, 10, ''),
(1110, 'KAZÁN ARENA', 44779, 11, ''),
(1210, 'MORDAVIA ARENA', 44442, 12, ''),
(1310, 'SAMARA ARENA', 44807, 13, ''),
(1410, 'EKATERIMBURGO ARENA', 35690, 14, ''),
(1510, 'VOLGOGRADO ARENA', 45568, 15, ''),
(1610, 'ROSTOV ARENA', 45145, 16, ''),
(1710, 'ESTADIO FISHT', 47700, 17, ''),
(1810, 'NIZHNY NÓVGOROD', 45331, 18, ''),
(1910, 'SAN PETER STADIUM', 68134, 19, ''),
(2010, 'ESTADIO KALININGRADO', 35212, 20, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `goles`
--

CREATE TABLE `goles` (
  `GolId` int(10) UNSIGNED NOT NULL COMMENT 'Codigo del Gol',
  `Partid` int(10) UNSIGNED NOT NULL COMMENT 'Codigo  Partido',
  `JugadorId` int(10) UNSIGNED NOT NULL COMMENT 'Codigo del jugador del mundial',
  `GolMinuto` int(10) UNSIGNED NOT NULL COMMENT 'minuto del Gol',
  `GolDet` char(50) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Detalle del Gol'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Se almacena la informacion del de los grupos del mundial ';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `GrupoId` int(10) UNSIGNED NOT NULL,
  `GrupoNom` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `SelecId1` int(10) UNSIGNED NOT NULL,
  `SelecId2` int(10) NOT NULL,
  `SelecId3` int(10) NOT NULL,
  `SelecId4` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Se almacena la informacion del de los grupos del mundial ';

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`GrupoId`, `GrupoNom`, `SelecId1`, `SelecId2`, `SelecId3`, `SelecId4`) VALUES
(900, 'Grupo A', 101, 102, 103, 104),
(901, 'Grupo B', 105, 106, 107, 108),
(902, 'Grupo C', 109, 110, 111, 112),
(903, 'Grupo D', 113, 114, 115, 116),
(904, 'Grupo E', 117, 118, 119, 120),
(905, 'Grupo F', 121, 122, 123, 124),
(906, 'Grupo G', 125, 126, 127, 128),
(907, 'Grupo H', 129, 130, 131, 132);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `judador`
--

CREATE TABLE `judador` (
  `JugadorId` int(10) NOT NULL,
  `JugadorNom` varchar(20) NOT NULL,
  `JugadorApe` varchar(20) NOT NULL,
  `JugadorNum` int(2) NOT NULL,
  `JugadorEdad` int(2) NOT NULL,
  `JugadorPo` varchar(4) NOT NULL,
  `JugadorGoles` int(2) NOT NULL,
  `JugadorEqui` varchar(20) NOT NULL,
  `JugadorUrl` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `judador`
--

INSERT INTO `judador` (`JugadorId`, `JugadorNom`, `JugadorApe`, `JugadorNum`, `JugadorEdad`, `JugadorPo`, `JugadorGoles`, `JugadorEqui`, `JugadorUrl`) VALUES
(10101, 'Igor', 'AKinfeev ', 1, 32, 'GK', 0, 'CSKA Moscu', ''),
(10102, 'vLADIMIR', 'bORISOVICH', 2, 34, 'GK', 0, 'Club Brugge', ''),
(10103, 'Soslan', 'Dzhanaev', 3, 31, 'GK', 0, 'Rubin Kazan', ''),
(10104, 'vladimir', 'borisovish', 4, 25, 'CB', 2, 'Club Brugge', ''),
(10105, 'andrey', 'dluner', 5, 20, 'CB', 0, 'Rubin kazan', ''),
(10106, 'sergie', 'ignsshervi', 6, 25, 'CB', 0, 'Club Brugge', ''),
(10107, 'fedor', 'kudryssho', 7, 19, 'cb', 2, 'zenit', ''),
(10108, 'llya', 'kutepo', 8, 30, 'CB', 1, 'dinamo', ''),
(10109, 'roma', 'neutorteht', 9, 19, 'DM', 6, 'sparta de moscu', ''),
(10110, 'igor', 'smollnirt', 10, 20, 'DM', 5, 'zenit', ''),
(10111, 'mario', 'fernandes', 11, 21, 'RB', 2, 'cska', ''),
(10112, 'yuri', 'gasinr', 12, 22, 'CM', 4, 'Club Brugge', ''),
(10113, 'daler', 'kusyary', 13, 25, 'LW', 3, 'sparta', ''),
(10114, 'alestandre', 'borisovish', 15, 22, 'LW', 2, 'Club Brugge', ''),
(10115, 'danis', 'cherycht', 16, 20, 'CM', 3, 'cska', ''),
(10116, 'fedor', 'esmolvo', 17, 25, 'RB', 2, 'valencia', ''),
(10117, 'anther', 'borisovish', 18, 20, 'CM', 2, 'Club Brugge', ''),
(10301, 'Essam', 'El Hadary', 1, 45, 'GK', 0, 'Al-Taawoun', ''),
(10302, 'Mohamed', 'El-Shenawy', 2, 29, 'GK', 0, 'Al Ahly', ''),
(10303, 'Sherif', 'Ekramy', 3, 34, 'GK', 0, 'Ankaragucu', ''),
(10304, 'Ahmed', 'Fathi', 4, 33, 'CM', 3, 'Al Ahly', ''),
(10305, 'Saad', 'Samir', 5, 29, 'CM', 7, 'Al Ahly', ''),
(10306, 'Ayman', 'Ashraf', 6, 27, 'CM', 2, 'Al Ahly', ''),
(10307, 'Ahmed', 'Elmohamady', 7, 30, 'LW', 4, 'Aston Villa', ''),
(10308, 'Karim', 'Hafez', 8, 22, 'RW', 6, 'Al Ahly', ''),
(10309, 'Omar', 'Gaber', 9, 24, 'RW', 1, 'Al Ahly', ''),
(10310, 'Armor', 'Tarek', 10, 22, 'LW', 1, 'Al Ahly', ''),
(10311, 'Tarek', 'Hamed', 11, 28, 'CF', 9, 'Al Ahly', ''),
(10312, 'Mohamed', 'Salah', 12, 28, 'CF', 12, 'Liverpool', ''),
(10401, 'Fernado', 'Muslera', 1, 32, 'GK', 0, 'Rubin Kazan', ''),
(10402, 'Martin', 'Silva', 2, 25, 'GK', 0, 'peñarol', ''),
(10403, 'Diego', 'Godin', 3, 35, 'CB', 4, 'atletico de madrid', ''),
(10404, 'jose', 'Gimenes', 4, 20, 'CB', 3, 'atletico de madrid', ''),
(10405, 'maximiliano', 'pereira', 5, 32, 'RB', 0, 'universitario', ''),
(10406, 'guillermo', 'barela', 6, 27, 'RB', 1, 'valencia', ''),
(10407, 'sebastian', 'cuates', 7, 32, 'MD', 1, 'boca junior', ''),
(10408, 'Cristian', 'Pereira', 8, 20, 'RB', 3, 'sanlorenso', ''),
(10409, 'luis', 'Suarez', 9, 32, 'SS', 30, 'BARCELONA', ''),
(10410, 'lucas', 'toleria', 10, 22, 'RB', 0, 'Aston villa', ''),
(10411, 'carlos', 'sanches', 11, 25, 'RB', 12, 'universitario', ''),
(10412, 'maximiliano', 'pereira', 12, 32, 'RB', 0, 'America', ''),
(10413, 'federico ', 'Valverde', 13, 26, 'LM', 3, 'palmeeiras', ''),
(10414, 'nicolas', 'lodeiro', 14, 32, 'LM', 4, 'universitario', ''),
(10415, 'Edinson', 'cavani', 15, 27, 'RB', 6, 'PSG', ''),
(10416, 'nicolas', 'pereira', 16, 33, 'RB', 3, 'City', ''),
(10417, 'Matias', 'vecino', 17, 35, 'RB', 5, 'celti', ''),
(10418, 'fancisco', 'lodeiro', 18, 32, 'LM', 4, 'saopablo', ''),
(10501, 'antonio', 'lopes', 1, 32, 'GK', 0, 'porto', ''),
(10502, 'beto', 'Silva', 2, 25, 'GK', 0, 'Sporting', ''),
(10503, 'rui', 'patricio', 3, 35, 'CB', 4, 'atletico de madrid', ''),
(10504, 'bruno', 'alves', 4, 20, 'CB', 3, 'besiktas', ''),
(10505, 'andrien', 'siulva', 5, 32, 'RB', 0, 'milan', ''),
(10506, 'guillermo', 'guerreiro', 6, 27, 'RB', 1, 'valencia', ''),
(10507, 'joau', 'cuates', 7, 32, 'MD', 1, 'inter', ''),
(10508, 'willian', 'carvloh', 8, 20, 'RB', 3, 'city', ''),
(10509, 'Ronaldo', 'dasilhno', 9, 32, 'SS', 30, 'BARCELONA', ''),
(10510, 'cristiana', 'ronaldo', 10, 22, 'RB', 2, 'real madrid', ''),
(10511, 'carlos', 'gelson', 11, 25, 'RB', 3, 'universitario', ''),
(10512, 'andres', 'silva', 12, 32, 'RB', 0, 'leicester', ''),
(10513, 'federico ', 'couthiño', 13, 26, 'LM', 3, 'villareal', ''),
(10514, 'nicolas', 'loerio', 14, 32, 'LM', 4, 'inter', ''),
(10515, 'Edinson', 'patricio', 15, 27, 'RB', 6, 'PSG', ''),
(10516, 'ricardo', 'pereira', 16, 33, 'RB', 3, 'City', ''),
(10517, 'Matias', 'goncalo', 17, 35, 'RB', 5, 'celti', ''),
(10518, 'gerson', 'lodeiro', 18, 32, 'LM', 4, 'valencia', ''),
(10701, 'mounir', 'kajoui', 1, 30, 'GK', 0, 'numanciao', ''),
(10702, 'jessiune', 'buonuo', 2, 26, 'GK', 0, 'Sporting', ''),
(10703, 'romais', 'saiud', 3, 30, 'CB', 2, 'girona', ''),
(10704, 'ahmar', 'reban', 4, 20, 'CB', 2, 'besiktas', ''),
(10705, 'barh', 'menatid', 5, 23, 'RB', 5, 'getafe', ''),
(10706, 'acher', 'maquifi', 6, 27, 'RB', 1, 'fenerbache', ''),
(10707, 'joau', 'hakimi', 7, 32, 'MD', 1, 'inter', ''),
(10708, 'hamza', 'cadiar', 8, 20, 'RB', 3, 'irm', ''),
(10709, 'sofyha', 'dasilhno', 9, 32, 'SS', 5, 'sclake', ''),
(10710, 'armabat', 'buotaer', 10, 22, 'RB', 5, 'garatasarai', ''),
(10711, 'carlos', 'gelson', 11, 25, 'RB', 3, 'universitario', ''),
(10712, 'mahiu', 'benatia', 12, 32, 'RB', 7, 'leicester', ''),
(10713, 'fedhat ', 'coumhyo', 13, 26, 'LM', 7, 'villareal', ''),
(10714, 'youssert', 'loervio', 14, 32, 'LM', 7, 'inter', ''),
(10715, 'bart', 'benoure', 15, 27, 'RB', 7, 'juventus', ''),
(10716, 'reda', 'kajui', 16, 33, 'RB', 3, 'City', ''),
(10717, 'nabils', 'goanbio', 17, 35, 'RB', 5, 'celti', ''),
(10718, 'banassert', 'locaft', 18, 32, 'LM', 4, 'valencia', ''),
(10801, 'aliresar', 'veiraban', 1, 25, 'GK', 0, 'persepolis', ''),
(10802, 'rashid', 'masageri', 2, 26, 'GK', 0, 'Sporting', ''),
(10803, 'ali', 'saiud', 3, 30, 'CB', 2, 'milad', ''),
(10804, 'ahmar', 'pegmann', 4, 20, 'CB', 2, 'besiktas', ''),
(10805, 'said', 'menatid', 5, 23, 'RB', 0, 'ramin', ''),
(10806, 'mogamerr', 'mamasi', 6, 20, 'RB', 1, 'saipa', ''),
(10807, 'joau', 'haji', 7, 20, 'MD', 1, 'aek', ''),
(10808, 'vahij', 'said', 8, 20, 'RB', 3, 'irm', ''),
(10809, 'torabi', 'milad', 9, 32, 'SS', 5, 'sclake', ''),
(10810, 'madhi', 'tarami', 10, 22, 'RB', 2, 'garatasarai', ''),
(10811, 'amiri', 'enzatolazi', 11, 25, 'RB', 2, 'ortes', ''),
(10812, 'mahiu', 'shoman', 12, 31, 'RB', 3, 'leicester', ''),
(10813, 'massouy ', 'cohosyo', 13, 25, 'LM', 2, 'saipa', ''),
(10814, 'youssert', 'razas', 14, 23, 'LM', 3, 'bojama', ''),
(10815, 'bart', 'locar', 15, 27, 'RB', 7, 'jiman', ''),
(10816, 'redaba', 'kajui', 16, 33, 'RB', 3, 'remasary', ''),
(10817, 'nabilyus', 'gohtanbio', 17, 35, 'RB', 5, 'celti', ''),
(10818, 'saman', 'locaft', 18, 32, 'LM', 4, 'valencia', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `JugadorId` int(10) NOT NULL,
  `SelecId` int(10) NOT NULL,
  `JugadorNom` varchar(20) NOT NULL,
  `JugadorApe` varchar(20) NOT NULL,
  `JugadorNum` int(2) NOT NULL,
  `JugadorEdad` int(2) NOT NULL,
  `JugadorPo` varchar(4) NOT NULL,
  `JugadorGoles` int(2) NOT NULL,
  `JugadorEqui` varchar(20) NOT NULL,
  `JugadorUrl` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`JugadorId`, `SelecId`, `JugadorNom`, `JugadorApe`, `JugadorNum`, `JugadorEdad`, `JugadorPo`, `JugadorGoles`, `JugadorEqui`, `JugadorUrl`) VALUES
(10101, 101, 'Igor', 'AKinfeev ', 1, 32, 'GK', 0, 'CSKA Moscu', ''),
(10102, 101, 'VLADIMIR', 'bORISOVICH', 2, 34, 'GK', 0, 'Club Brugge', ''),
(10103, 101, 'Soslan', 'Dzhanaev', 3, 31, 'GK', 0, 'Rubin Kazan', ''),
(10104, 101, 'vladimir', 'borisovish', 4, 25, 'CB', 2, 'Club Brugge', ''),
(10105, 101, 'andrey', 'dluner', 5, 20, 'CB', 0, 'Rubin kazan', ''),
(10106, 101, 'sergie', 'ignsshervi', 6, 25, 'CB', 0, 'Club Brugge', ''),
(10107, 101, 'fedor', 'kudryssho', 7, 19, 'cb', 2, 'zenit', ''),
(10108, 101, 'llya', 'kutepo', 8, 30, 'CB', 1, 'dinamo', ''),
(10109, 101, 'roma', 'neutorteht', 9, 19, 'DM', 6, 'sparta de moscu', ''),
(10110, 101, 'igor', 'smollnirt', 10, 20, 'DM', 5, 'zenit', ''),
(10111, 101, 'mario', 'fernandes', 11, 21, 'RB', 2, 'cska', ''),
(10112, 101, 'yuri', 'gasinr', 12, 22, 'CM', 4, 'Club Brugge', ''),
(10113, 101, 'daler', 'kusyary', 13, 25, 'LW', 3, 'sparta', ''),
(10114, 101, 'alestandre', 'borisovish', 15, 22, 'LW', 2, 'Club Brugge', ''),
(10115, 101, 'danis', 'cherycht', 16, 20, 'CM', 3, 'cska', ''),
(10116, 101, 'fedor', 'esmolvo', 17, 25, 'RB', 2, 'valencia', ''),
(10117, 101, 'anther', 'borisovish', 18, 20, 'CM', 2, 'Club Brugge', ''),
(10301, 103, 'Essam', 'El Hadary', 1, 45, 'GK', 0, 'Al-Taawoun', ''),
(10302, 103, 'Mohamed', 'El-Shenawy', 2, 29, 'GK', 0, 'Al Ahly', ''),
(10303, 103, 'Sherif', 'Ekramy', 3, 34, 'GK', 0, 'Ankaragucu', ''),
(10304, 103, 'Ahmed', 'Fathi', 4, 33, 'CM', 3, 'Al Ahly', ''),
(10305, 103, 'Saad', 'Samir', 5, 29, 'CM', 7, 'Al Ahly', ''),
(10306, 103, 'Ayman', 'Ashraf', 6, 27, 'CM', 2, 'Al Ahly', ''),
(10307, 103, 'Ahmed', 'Elmohamady', 7, 30, 'LW', 4, 'Aston Villa', ''),
(10308, 103, 'Karim', 'Hafez', 8, 22, 'RW', 6, 'Al Ahly', ''),
(10309, 103, 'Omar', 'Gaber', 9, 24, 'RW', 1, 'Al Ahly', ''),
(10310, 103, 'Armor', 'Tarek', 10, 22, 'LW', 1, 'Al Ahly', ''),
(10311, 103, 'Tarek', 'Hamed', 11, 28, 'CF', 9, 'Al Ahly', ''),
(10312, 103, 'Mohamed', 'Salah', 12, 28, 'CF', 12, 'Liverpool', ''),
(10401, 104, 'Fernado', 'Muslera', 1, 32, 'GK', 0, 'Rubin Kazan', ''),
(10402, 104, 'Martin', 'Silva', 2, 25, 'GK', 0, 'peñarol', ''),
(10403, 104, 'Diego', 'Godin', 3, 35, 'CB', 4, 'atletico de madrid', ''),
(10404, 104, 'jose', 'Gimenes', 4, 20, 'CB', 3, 'atletico de madrid', ''),
(10405, 104, 'maximiliano', 'pereira', 5, 32, 'RB', 0, 'universitario', ''),
(10406, 104, 'guillermo', 'barela', 6, 27, 'RB', 1, 'valencia', ''),
(10407, 104, 'sebastian', 'cuates', 7, 32, 'MD', 1, 'boca junior', ''),
(10408, 104, 'Cristian', 'Pereira', 8, 20, 'RB', 3, 'sanlorenso', ''),
(10409, 104, 'luis', 'Suarez', 9, 32, 'SS', 30, 'BARCELONA', ''),
(10410, 104, 'lucas', 'toleria', 10, 22, 'RB', 0, 'Aston villa', ''),
(10411, 104, 'carlos', 'sanches', 11, 25, 'RB', 12, 'universitario', ''),
(10412, 104, 'maximiliano', 'pereira', 12, 32, 'RB', 0, 'America', ''),
(10413, 104, 'federico ', 'Valverde', 13, 26, 'LM', 3, 'palmeeiras', ''),
(10414, 104, 'nicolas', 'lodeiro', 14, 32, 'LM', 4, 'universitario', ''),
(10415, 104, 'Edinson', 'cavani', 15, 27, 'RB', 6, 'PSG', ''),
(10416, 104, 'nicolas', 'pereira', 16, 33, 'RB', 3, 'City', ''),
(10417, 104, 'Matias', 'vecino', 17, 35, 'RB', 5, 'celti', ''),
(10418, 104, 'fancisco', 'lodeiro', 18, 32, 'LM', 4, 'saopablo', ''),
(10501, 105, 'antonio', 'lopes', 1, 32, 'GK', 0, 'porto', ''),
(10502, 105, 'beto', 'Silva', 2, 25, 'GK', 0, 'Sporting', ''),
(10503, 105, 'rui', 'patricio', 3, 35, 'CB', 4, 'atletico de madrid', ''),
(10504, 105, 'bruno', 'alves', 4, 20, 'CB', 3, 'besiktas', ''),
(10505, 105, 'andrien', 'siulva', 5, 32, 'RB', 0, 'milan', ''),
(10506, 105, 'guillermo', 'guerreiro', 6, 27, 'RB', 1, 'valencia', ''),
(10507, 105, 'joau', 'cuates', 7, 32, 'MD', 1, 'inter', ''),
(10508, 105, 'willian', 'carvloh', 8, 20, 'RB', 3, 'city', ''),
(10509, 105, 'Ronaldo', 'dasilhno', 9, 32, 'SS', 30, 'BARCELONA', ''),
(10510, 105, 'cristiana', 'ronaldo', 10, 22, 'RB', 2, 'real madrid', ''),
(10511, 105, 'carlos', 'gelson', 11, 25, 'RB', 3, 'universitario', ''),
(10512, 105, 'andres', 'silva', 12, 32, 'RB', 0, 'leicester', ''),
(10513, 105, 'federico ', 'couthiño', 13, 26, 'LM', 3, 'villareal', ''),
(10514, 105, 'nicolas', 'loerio', 14, 32, 'LM', 4, 'inter', ''),
(10515, 105, 'Edinson', 'patricio', 15, 27, 'RB', 6, 'PSG', ''),
(10516, 105, 'ricardo', 'pereira', 16, 33, 'RB', 3, 'City', ''),
(10517, 105, 'Matias', 'goncalo', 17, 35, 'RB', 5, 'celti', ''),
(10518, 105, 'gerson', 'lodeiro', 18, 32, 'LM', 4, 'valencia', ''),
(10701, 107, 'mounir', 'kajoui', 1, 30, 'GK', 0, 'numanciao', ''),
(10702, 107, 'jessiune', 'buonuo', 2, 26, 'GK', 0, 'Sporting', ''),
(10703, 107, 'romais', 'saiud', 3, 30, 'CB', 2, 'girona', ''),
(10704, 107, 'ahmar', 'reban', 4, 20, 'CB', 2, 'besiktas', ''),
(10705, 107, 'barh', 'menatid', 5, 23, 'RB', 5, 'getafe', ''),
(10706, 107, 'acher', 'maquifi', 6, 27, 'RB', 1, 'fenerbache', ''),
(10707, 107, 'joau', 'hakimi', 7, 32, 'MD', 1, 'inter', ''),
(10708, 107, 'hamza', 'cadiar', 8, 20, 'RB', 3, 'irm', ''),
(10709, 107, 'sofyha', 'dasilhno', 9, 32, 'SS', 5, 'sclake', ''),
(10710, 107, 'armabat', 'buotaer', 10, 22, 'RB', 5, 'garatasarai', ''),
(10711, 107, 'carlos', 'gelson', 11, 25, 'RB', 3, 'universitario', ''),
(10712, 107, 'mahiu', 'benatia', 12, 32, 'RB', 7, 'leicester', ''),
(10713, 107, 'fedhat ', 'coumhyo', 13, 26, 'LM', 7, 'villareal', ''),
(10714, 107, 'youssert', 'loervio', 14, 32, 'LM', 7, 'inter', ''),
(10715, 107, 'bart', 'benoure', 15, 27, 'RB', 7, 'juventus', ''),
(10716, 107, 'reda', 'kajui', 16, 33, 'RB', 3, 'City', ''),
(10717, 107, 'nabils', 'goanbio', 17, 35, 'RB', 5, 'celti', ''),
(10718, 107, 'banassert', 'locaft', 18, 32, 'LM', 4, 'valencia', ''),
(10801, 108, 'aliresar', 'veiraban', 1, 25, 'GK', 0, 'persepolis', ''),
(10802, 108, 'rashid', 'masageri', 2, 26, 'GK', 0, 'Sporting', ''),
(10803, 108, 'ali', 'saiud', 3, 30, 'CB', 2, 'milad', ''),
(10804, 108, 'ahmar', 'pegmann', 4, 20, 'CB', 2, 'besiktas', ''),
(10805, 108, 'said', 'menatid', 5, 23, 'RB', 0, 'ramin', ''),
(10806, 108, 'mogamerr', 'mamasi', 6, 20, 'RB', 1, 'saipa', ''),
(10807, 108, 'joau', 'haji', 7, 20, 'MD', 1, 'aek', ''),
(10808, 108, 'vahij', 'said', 8, 20, 'RB', 3, 'irm', ''),
(10809, 108, 'torabi', 'milad', 9, 32, 'SS', 5, 'sclake', ''),
(10810, 108, 'madhi', 'tarami', 10, 22, 'RB', 2, 'garatasarai', ''),
(10811, 108, 'amiri', 'enzatolazi', 11, 25, 'RB', 2, 'ortes', ''),
(10812, 108, 'mahiu', 'shoman', 12, 31, 'RB', 3, 'leicester', ''),
(10813, 108, 'massouy ', 'cohosyo', 13, 25, 'LM', 2, 'saipa', ''),
(10814, 108, 'youssert', 'razas', 14, 23, 'LM', 3, 'bojama', ''),
(10815, 108, 'bart', 'locar', 15, 27, 'RB', 7, 'jiman', ''),
(10816, 108, 'redaba', 'kajui', 16, 33, 'RB', 3, 'remasary', ''),
(10817, 108, 'nabilyus', 'gohtanbio', 17, 35, 'RB', 5, 'celti', ''),
(10818, 108, 'saman', 'locaft', 18, 32, 'LM', 4, 'valencia', ''),
(10901, 109, 'Alphonse', 'Areola', 1, 25, 'GK', 0, 'PSG', ''),
(10902, 109, 'Benjamin', 'Pavard', 2, 22, 'CB', 0, 'Stutgart', ''),
(10903, 109, 'Presnel', 'Kimpembe', 3, 22, 'CB', 0, 'PSG', ''),
(10904, 109, 'Raphael ', 'Varane', 4, 25, 'CB', 2, 'Real Madrid', ''),
(10905, 109, 'Samuel', 'Umtiti', 5, 24, 'CB', 1, 'BARCELONA', ''),
(10906, 109, 'Paul', 'Pogba', 6, 25, 'CM', 9, 'United', ''),
(10907, 109, 'Antoine', 'Griezmann', 7, 27, 'CF', 19, 'Atletico Madrid', ''),
(10908, 109, 'Nabil', 'Fekir', 8, 24, 'CM', 1, 'Liverpool', ''),
(10909, 109, 'Oliver', 'Giroud', 9, 31, 'CF', 30, 'Chelsea', ''),
(10910, 109, 'Kylian', 'Mbappe', 10, 19, 'CF', 3, 'PSG', ''),
(10911, 109, 'Ousmane', 'Dembele', 11, 21, 'RW', 2, 'BARCELONA', ''),
(10912, 109, 'Florian', 'Thauvin', 12, 25, 'LW', 7, 'Marsella', ''),
(10913, 109, 'Adil', 'Rami', 13, 32, 'CB', 0, 'Marsella', ''),
(10914, 109, 'Blaise', 'Matuidi', 14, 31, 'CM', 9, 'Juventus', ''),
(10915, 109, 'N Golo', 'Kante', 15, 29, 'CM', 1, 'Chelsea', ''),
(10916, 109, 'Steve', 'Mandanda', 16, 33, 'GK', 0, 'Marsella', ''),
(10917, 109, 'Thomas', 'Lemar', 17, 22, 'CM', 3, 'Monaco', ''),
(10918, 109, 'Corenti', 'Tolisso', 18, 25, 'CM', 0, 'Bayern Munich', ''),
(10919, 109, 'Djibril', 'Sidibe', 19, 25, 'LB', 0, 'Monaco', ''),
(10920, 109, 'Steven', 'NZonzi', 20, 29, 'CM', 0, 'Sevilla', ''),
(10921, 109, 'Benjamin', 'Mendy', 21, 23, 'CB', 0, 'Manchester City', ''),
(10922, 109, 'Lucas', 'Hernandez', 22, 22, 'LB', 0, 'Atletico M', ''),
(10923, 109, 'Hugo', 'Lloris', 23, 31, 'GK', 0, 'Tottenham', ''),
(11001, 110, 'Mat', 'Ryan', 1, 20, 'GK', 0, 'Brighton', ''),
(11002, 110, 'Brad', 'Jones ', 2, 29, 'GK', 0, 'Feyenoord ', ''),
(11003, 110, 'Aziz', 'Behich', 3, 23, 'SW', 1, 'Bursaspor', ''),
(11004, 110, 'Milos  ', 'Boateng', 4, 24, 'SW', 1, 'Yokohama', ''),
(11005, 110, 'Matthew ', 'Jurman ', 5, 26, 'SW', 1, 'Leicester ', ''),
(11006, 110, 'Mathias', 'Meredith ', 6, 27, 'RB', 4, 'Borussia', ''),
(11007, 110, 'Risdon ', 'Plattenhard', 7, 20, 'LB', 2, 'Western ', ''),
(11008, 110, 'Trent', 'Plattenhard', 8, 26, 'LB', 1, 'Lens', ''),
(11009, 110, 'Harry', ' Rudy', 9, 22, 'CF', 5, 'MOnaco', ''),
(11010, 110, 'Kane', ' Arzani  ', 10, 25, 'AM', 4, 'Melbourne ', ''),
(11011, 110, 'Jamie', 'Cahill', 11, 23, 'AM', 5, 'Hibernian', ''),
(11012, 110, 'Tim', 'Draxler', 12, 24, 'MD', 5, 'Millwall', ''),
(11013, 110, 'Trent', 'Reus', 13, 29, 'AM', 2, 'Juventus', ''),
(11015, 110, 'Michael ', ' Sainsbury  ', 9, 28, 'DM', 2, 'Grasshoppers', ''),
(11016, 110, 'Mesut', 'Arnold ', 16, 23, 'CF', 2, 'Urawa', ''),
(11017, 110, 'Maclaren', ' Henderson ', 17, 26, 'CF', 7, 'Larnaca ', ''),
(11018, 110, 'Apostolos', 'Giannou ', 18, 28, 'CF', 3, 'Urawa', ''),
(11101, 111, 'José', 'Carvallo', 1, 25, 'GK', 0, 'Alianza lima', ''),
(11102, 111, 'Carlos', 'Cáceda', 2, 24, 'GK', 0, 'Melgar', ''),
(11103, 111, 'Christian', 'Ramos', 3, 22, 'SW', 2, 'univeritario', ''),
(11104, 111, 'Alberto', 'Rodríguez', 4, 21, 'SW', 0, 'Sevilla', ''),
(11105, 111, 'Aldo ', 'Corzo', 5, 20, 'SW', 1, 'Juan Aurich', ''),
(11106, 111, 'Luis', 'Advíncula', 6, 28, 'RB', 0, 'delfines ', ''),
(11107, 111, 'Miguel ', 'Araujo ', 7, 29, 'LB', 2, 'univeritario', ''),
(11108, 111, 'Christian', 'Cuevad', 8, 24, 'LB', 1, 'Alianza lima', ''),
(11109, 111, 'William', 'Polo', 9, 30, 'CF', 2, 'palmeiras', ''),
(11110, 111, 'Paolo', ' Hurtado', 10, 21, 'AM', 1, 'Udinese', ''),
(11111, 111, 'Yoshimar ', 'Yotún', 11, 29, 'AM', 2, 'River', ''),
(11112, 111, 'Pedro', 'Aquino', 12, 24, 'MD', 0, 'Melgar', ''),
(11113, 111, 'Cristian', 'Benavente ', 13, 23, 'AM', 5, 'univeritario', ''),
(11114, 111, 'Raúl', 'Ruidíaz ', 14, 24, 'AM', 1, 'mineros', ''),
(11115, 111, 'Renato ', 'Tapia', 9, 27, 'DM', 3, 'villareal', ''),
(11116, 111, 'Daniel', 'Da Silva ', 16, 21, 'CF', 2, 'Villareal', ''),
(11117, 111, 'Jefferson', 'Farfán', 17, 26, 'CF', 4, 'Alianza lima', ''),
(11118, 111, 'Christian', 'Carrillo ', 18, 21, 'CF', 2, 'Copenhague', ''),
(11201, 112, 'Kasper', 'Schmeichel', 1, 24, 'GK', 0, 'Leicester', ''),
(11202, 112, 'Jonas', 'Lossl ', 2, 22, 'GK', 0, 'Huddersfield', ''),
(11203, 112, 'Jesper ', 'Hansen ', 3, 23, 'SW', 2, 'Midtjylland', ''),
(11204, 112, 'Simon', 'Kjaer ', 4, 24, 'SW', 1, 'Sevilla', ''),
(11205, 112, 'Andreas ', 'Christensen', 5, 20, 'SW', 1, 'Totenham', ''),
(11206, 112, 'Frank', 'Jorgensen ', 6, 28, 'RB', 0, 'Borussia ', ''),
(11207, 112, 'Mathias', 'Vestergaard ', 7, 29, 'LB', 2, 'Girona', ''),
(11208, 112, 'Andreas ', 'Bjelland', 8, 24, 'LB', 1, 'Brentford', ''),
(11209, 112, 'William', 'Kvist', 9, 30, 'CF', 2, 'Burdeos', ''),
(11210, 112, 'Riza', 'Durmisi ', 10, 25, 'AM', 1, 'Udinese', ''),
(11211, 112, 'Jens ', 'Stryger', 11, 29, 'AM', 2, 'Juventus', ''),
(11212, 112, 'Wilmarst', 'Ankersen', 12, 24, 'MD', 1, 'Copenhague', ''),
(11213, 112, 'Jonas', 'Knudsen ', 13, 23, 'AM', 5, 'Copenhague', ''),
(11214, 112, 'Joseft', 'Boilesen ', 14, 24, 'AM', 2, 'Wesham', ''),
(11215, 112, 'Henrik ', 'Dalsgaard ', 9, 27, 'DM', 0, 'villareal', ''),
(11216, 112, 'Daniel', 'Boilesen ', 16, 28, 'CF', 3, 'Villareal', ''),
(11217, 112, 'Emile', 'Hojbjerg', 17, 26, 'CF', 6, 'Tottenham', ''),
(11218, 112, 'Christian', 'Eriksen ', 18, 29, 'CF', 3, 'Copenhague', ''),
(11301, 113, 'Wilfredo', 'Caballeero', 1, 28, 'GK', 0, 'Chelsea', ''),
(11302, 113, 'Franco', 'Armani', 2, 24, 'GK', 0, 'River', ''),
(11303, 113, 'Nicolas ', 'Otamendi', 3, 23, 'SW', 2, 'City', ''),
(11304, 113, 'Gabriel', 'Mercado', 4, 27, 'SW', 1, 'Sevilla', ''),
(11305, 113, 'federico', 'Falcio', 5, 20, 'SW', 1, 'Totenham', ''),
(11306, 113, 'MArco ', 'Acuña', 6, 22, 'RB', 0, 'Boca', ''),
(11307, 113, 'Nicolas', 'tagrafico', 7, 20, 'LB', 2, 'Girona', ''),
(11308, 113, 'MArcos', 'Rojo', 8, 25, 'LB', 1, 'Manchester', ''),
(11309, 113, 'luca', 'Biglia', 9, 30, 'CF', 6, 'MOnaco', ''),
(11310, 113, 'Leonel', 'Messi', 10, 25, 'AM', 33, 'Barcelona', ''),
(11311, 113, 'Angel', 'Diamaria', 11, 29, 'AM', 2, 'PSG', ''),
(11312, 113, 'Jabier', 'Macherano', 12, 24, 'MD', 1, 'habei', ''),
(11313, 113, 'Ever', 'Vanegas', 13, 28, 'AM', 5, 'River', ''),
(11314, 113, 'lucas', 'viglia', 14, 24, 'AM', 2, 'benfica', ''),
(11315, 113, 'CArlos', 'Asandi', 9, 28, 'DM', 0, 'villareal', ''),
(11316, 113, 'Eduardo', 'Silva', 16, 27, 'CF', 4, 'Benfica', ''),
(11317, 113, 'Luis', 'Bataglia', 17, 26, 'CF', 6, 'Sevilla', ''),
(11318, 113, 'Maximiliano', 'meza', 18, 27, 'CF', 4, 'Independiente', ''),
(11401, 114, 'Haner', 'Hastai', 1, 28, 'GK', 0, 'Briston', ''),
(11402, 114, 'Runal', 'Alex', 2, 29, 'GK', 0, 'Raberd', ''),
(11403, 114, 'Ari', 'Fred', 3, 23, 'SW', 1, 'city', ''),
(11404, 114, 'Homer', 'Lebin', 4, 24, 'SW', 1, 'rostov', ''),
(11405, 114, 'Holmen', 'Rorns', 5, 20, 'SW', 1, 'manbsd', ''),
(11406, 114, 'Samuel', 'Fransurt', 6, 20, 'RB', 2, 'Value', ''),
(11407, 114, 'Arnole', 'Invic', 7, 20, 'LB', 2, 'Gibol', ''),
(11408, 114, 'Birkin', 'Arons', 8, 25, 'LB', 1, 'PSV', ''),
(11409, 114, 'Arberl', 'Gusmunsonn', 9, 23, 'CF', 7, 'MOnaco', ''),
(11410, 114, 'Jhon', 'berg', 10, 25, 'AM', 9, 'Readin', ''),
(11411, 114, 'Ivin', 'Culson', 11, 29, 'AM', 2, 'Juventus', ''),
(11412, 114, 'Karin', 'Alersos', 12, 24, 'MD', 1, 'Astonvilla', ''),
(11413, 114, 'JDavi', 'Jons', 13, 23, 'AM', 5, 'Roskender', ''),
(11415, 114, 'Gilfin', 'Siginsun', 9, 28, 'DM', 0, 'Everton', ''),
(11416, 114, 'Omar', 'biswierson', 16, 25, 'CF', 0, 'csk', ''),
(11417, 114, 'jon', 'Rukin', 17, 28, 'CF', 9, 'Srwin', ''),
(11418, 114, 'Marcison', 'arbelson', 18, 28, 'CF', 3, 'Caldiffs', ''),
(11501, 115, 'inkekusweskir', 'Hastai', 1, 23, 'GK', 0, 'Enyimba', ''),
(11502, 115, 'francis', 'Uzoho', 2, 39, 'GK', 0, 'Chippa', ''),
(11503, 115, 'Dele', 'Ajiboye', 3, 23, 'SW', 1, 'la coruña', ''),
(11504, 115, 'Homer', 'LAspeyi', 4, 24, 'SW', 3, 'rostov', ''),
(11505, 115, 'Ambullagi', 'Shehu', 5, 20, 'SW', 1, 'Naster', ''),
(11506, 115, 'Chivosied', 'Fransurt', 6, 20, 'RB', 2, 'Nais', ''),
(11507, 115, 'Nidi', 'Argod', 7, 20, 'LB', 2, 'Gibol', ''),
(11508, 115, 'joel', 'Ovio', 8, 25, 'LB', 1, 'torino', ''),
(11509, 115, 'Chelequi', 'Gusmunsonn', 9, 23, 'CF', 4, 'MOnaco', ''),
(11510, 115, 'Lokosa', 'berg', 10, 30, 'AM', 3, 'Kaco', ''),
(11511, 115, 'Asmed', 'musan', 11, 29, 'AM', 2, 'Arsenal', ''),
(11512, 115, 'Kiwobi', 'Agu', 12, 25, 'MD', 3, 'Tianji', ''),
(11513, 115, 'mosuue', 'Jons', 13, 23, 'AM', 5, 'Roskender', ''),
(11515, 115, 'Uche', 'Siginsun', 9, 28, 'DM', 2, 'Everton', ''),
(11516, 115, 'ORamir', 'bisdidi', 16, 34, 'CF', 1, 'csk', ''),
(11517, 115, 'jon', 'Rukin', 17, 28, 'CF', 3, 'porto', ''),
(11518, 115, 'Marcison', 'arbelson', 18, 35, 'CF', 3, 'Hapoel', ''),
(11701, 117, 'Alisson', 'caio', 1, 26, 'GK', 0, 'porto', ''),
(11702, 117, 'Ederson', 'Aleo', 2, 29, 'GK', 0, 'benfica', ''),
(11703, 117, 'MArquihnos', 'Fred', 3, 23, 'SW', 1, 'city', ''),
(11704, 117, 'Thiago', 'Silva', 4, 24, 'SW', 1, 'Bayer', ''),
(11705, 117, 'Rodrigo', 'Miranda', 5, 26, 'SW', 1, 'Atletico', ''),
(11706, 117, 'Samuel', 'caio', 6, 27, 'RB', 2, 'corinthias', ''),
(11707, 117, 'Daniel', 'Alves', 7, 20, 'LB', 2, 'PSG', ''),
(11708, 117, 'MArcelo', 'bohtis', 8, 25, 'LB', 1, 'Real', ''),
(11709, 117, 'felippe', 'luis', 9, 28, 'CF', 7, 'MOnaco', ''),
(11710, 117, 'Paulinho', 'Hauchi', 10, 25, 'AM', 9, 'liberpool', ''),
(11711, 117, 'William', 'Casemiro', 11, 23, 'AM', 2, 'Real', ''),
(11712, 117, 'Luan', 'Alersos', 12, 24, 'MD', 1, 'Astonvilla', ''),
(11713, 117, 'Graviel', 'Jesus', 13, 29, 'AM', 5, 'bayer', ''),
(11715, 117, 'Philippe', 'Couthinho', 9, 28, 'DM', 2, 'Saopablo', ''),
(11716, 117, 'Neimar', 'Junior', 16, 29, 'CF', 9, 'PSG', ''),
(11717, 117, 'Firminio', 'Coutinho', 17, 28, 'CF', 9, 'Barcelona', ''),
(11718, 177, 'Taison', ' filip', 18, 28, 'CF', 3, 'city', ''),
(12101, 121, 'Bernd', 'Leno', 1, 20, 'GK', 0, 'levercusen', ''),
(12102, 121, 'Manue', 'Neuer', 2, 29, 'GK', 0, 'Bayer', ''),
(12103, 121, ' ter ', 'Stegen', 3, 23, 'SW', 1, 'Barcelona', ''),
(12104, 121, 'Jerome ', 'Boateng', 4, 24, 'SW', 1, 'Bayer', ''),
(12105, 121, 'Mats ', 'Hummels', 5, 26, 'SW', 1, 'Bayer', ''),
(12106, 121, 'Mathias', ' Ginter', 6, 27, 'RB', 4, 'Borussia', ''),
(12107, 121, 'Ginter', 'Plattenhard', 7, 20, 'LB', 2, 'chelsi', ''),
(12108, 121, 'MArcelo', 'Plattenhard', 8, 26, 'LB', 1, 'Bayer', ''),
(12109, 121, 'Luis', ' Rudy', 9, 22, 'CF', 5, 'MOnaco', ''),
(12110, 121, 'Thomas', ' Müller ', 10, 25, 'AM', 4, 'liberpool', ''),
(12111, 121, 'Toni ', 'Kroos', 11, 23, 'AM', 5, 'real', ''),
(12112, 121, 'Julian', 'Draxler', 12, 24, 'MD', 5, 'Borussia', ''),
(12113, 121, 'Graviel', 'Reus', 13, 29, 'AM', 2, 'Juventus', ''),
(12115, 121, 'Michael ', 'Goretzka ', 9, 28, 'DM', 2, 'Juventus', ''),
(12116, 121, 'Mesut', 'Ozil ', 16, 23, 'CF', 2, 'Arsenal', ''),
(12117, 121, ' Mario', 'Gómez', 17, 26, 'CF', 7, 'bayer', ''),
(12118, 121, 'Timo', 'Werner', 18, 28, 'CF', 3, 'city', ''),
(12201, 122, 'Jose', 'Ochoa', 1, 20, 'GK', 0, 'Benfica', ''),
(12202, 122, 'Talavera', 'Penedo', 2, 29, 'GK', 0, 'West Ham', ''),
(12203, 122, 'Alex ', 'Rodríguez', 3, 23, 'SW', 1, 'Naciolnal', ''),
(12204, 122, 'Azmahar', 'Corona', 4, 24, 'SW', 1, 'América', ''),
(12205, 122, 'Rodrigo', 'Miranda', 5, 29, 'SW', 1, 'Real Betis', ''),
(12206, 122, 'Samuel', ' Salcedo', 6, 20, 'RB', 2, 'Porto', ''),
(12207, 122, 'Daniel', 'Alves', 7, 20, 'LB', 2, 'Pachuca', ''),
(12208, 122, 'Héctor', 'Murillo', 8, 26, 'LB', 1, 'Benfica', ''),
(12209, 122, 'Javier', ' Hernández', 9, 22, 'CF', 3, 'MOnaco', ''),
(12210, 122, 'Adalberto', 'Ávila', 10, 25, 'AM', 4, 'liberpool', ''),
(12211, 122, 'William', 'Casemiro', 11, 27, 'AM', 2, 'Francisco', ''),
(12212, 122, 'Hugo', 'Peralta', 12, 24, 'MD', 1, 'Tigres', ''),
(12213, 122, 'Graviel', 'Jesus', 13, 29, 'AM', 2, 'Pachuca', ''),
(12215, 122, 'Michael ', ' Reyes', 9, 27, 'DM', 2, 'Sevilla', ''),
(12216, 122, 'Rolando', 'Junior', 16, 25, 'CF', 2, 'Tigres', ''),
(12217, 122, ' Cristian', 'Gómez', 17, 26, 'CF', 0, 'America', ''),
(12218, 122, 'Giovani ', 'Márquez', 18, 25, 'CF', 3, 'América', ''),
(12301, 123, 'Thibaut ', 'Courtois ', 1, 25, 'GK', 0, 'Copenhague', ''),
(12302, 123, 'Koen', 'Gomis', 2, 29, 'GK', 0, 'Swansea', ''),
(12303, 123, 'Simon', 'Khadin', 3, 25, 'SW', 0, 'Tottenham', ''),
(12304, 123, 'SToby', 'kara', 4, 20, 'SW', 1, 'rostov', ''),
(12305, 123, 'Wojciech ', 'bortosk', 5, 37, 'SW', 1, 'Real Sociedad', ''),
(12306, 123, 'Szczesny', 'yousoon', 6, 29, 'RB', 2, 'Hull', ''),
(12307, 123, 'Dedryck', 'Bereszynski ', 7, 20, 'LB', 2, 'Porto', ''),
(12308, 123, 'Youssouf', 'Kindisiaro', 8, 26, 'LB', 1, 'Toulouse', ''),
(12309, 123, 'Lukaku', 'Peszko ', 9, 24, 'CF', 5, 'Hull', ''),
(12310, 123, 'Januzaj', 'Kabasele  ', 10, 25, 'AM', 2, 'Crystal', ''),
(12311, 123, ' Blaszczykowski', 'Tomasz ', 11, 22, 'AM', 2, 'Krasnodar', ''),
(12312, 123, 'Dendoncker', 'Wicler', 12, 24, 'MD', 1, 'Al Ain', ''),
(12313, 123, 'Kompany', 'Dawin', 13, 26, 'AM', 3, 'Celtic', ''),
(12315, 123, 'Tielemans', 'Siginsun', 9, 28, 'DM', 0, 'Everton', ''),
(12316, 123, 'Tielemans  ', 'Grisoki', 16, 25, 'CF', 2, 'Borussia ', ''),
(12317, 123, 'Szymanski', 'RWilczek', 17, 23, 'CF', 3, 'Celtic', ''),
(12318, 123, 'Albin', 'Ekdal', 18, 23, 'CF', 6, 'Celtic', ''),
(12501, 125, 'Thibaut ', 'Courtois ', 1, 25, 'GK', 0, 'Chelsea', ''),
(12502, 125, 'Koen', 'Gomis', 2, 29, 'GK', 0, 'Liverpool', ''),
(12503, 125, 'Simon', 'Khadin', 3, 25, 'SW', 0, 'Tottenham', ''),
(12504, 125, 'SToby', 'kara', 4, 20, 'SW', 1, 'rostov', ''),
(12505, 125, 'Wojciech ', 'bortosk', 5, 37, 'SW', 1, 'Real Sociedad', ''),
(12506, 125, 'Szczesny', 'yousoon', 6, 29, 'RB', 2, 'Dnamo', ''),
(12507, 125, 'Dedryck', 'Bereszynski ', 7, 20, 'LB', 2, 'Porto', ''),
(12508, 125, 'Youssouf', 'Kindisiaro', 8, 20, 'LB', 1, 'PSV', ''),
(12509, 125, 'Lukaku', 'Peszko ', 9, 24, 'CF', 5, 'MOnaco', ''),
(12510, 125, 'Januzaj', 'Kabasele  ', 10, 25, 'AM', 5, 'Crystal', ''),
(12511, 125, ' Blaszczykowski', 'Tomasz ', 11, 29, 'AM', 2, 'BAyer', ''),
(12512, 125, 'Dendoncker', 'Wicler', 12, 24, 'MD', 1, 'Chelsea', ''),
(12513, 125, 'Kompany', 'Dawin', 13, 24, 'AM', 6, 'Chelsea', ''),
(12515, 125, 'Tielemans', 'Siginsun', 9, 28, 'DM', 0, 'Everton', ''),
(12516, 125, 'Tielemans  ', 'Grisoki', 16, 28, 'CF', 5, 'Borussia ', ''),
(12517, 125, 'Szymanski', 'RWilczek', 17, 29, 'CF', 3, 'Manchester', ''),
(12601, 126, 'Jose', 'Calderón', 1, 20, 'GK', 0, 'Plasa', ''),
(12602, 126, 'Jaime', 'Penedo', 2, 29, 'GK', 0, 'cali', ''),
(12603, 126, 'Alex ', 'Rodríguez', 3, 23, 'SW', 1, 'Naciolnal', ''),
(12604, 126, 'Azmahar', 'Silva', 4, 24, 'SW', 1, 'tauro', ''),
(12605, 126, 'Rodrigo', 'Miranda', 5, 26, 'SW', 1, 'Plasa', ''),
(12606, 126, 'Samuel', ' Adolfo', 6, 27, 'RB', 2, 'corrillo', ''),
(12607, 126, 'Daniel', 'Alves', 7, 20, 'LB', 2, 'arabe', ''),
(12608, 126, 'MArcelo', 'Murillo', 8, 26, 'LB', 1, 'panama', ''),
(12609, 126, 'Luis', ' Quintero', 9, 22, 'CF', 3, 'MOnaco', ''),
(12610, 126, 'Adalberto', 'Ávila', 10, 25, 'AM', 4, 'liberpool', ''),
(12611, 126, 'William', 'Casemiro', 11, 23, 'AM', 2, 'Francisco', ''),
(12612, 126, 'Luan', 'Peralta', 12, 24, 'MD', 1, 'Amador', ''),
(12613, 126, 'Graviel', 'Jesus', 13, 29, 'AM', 2, 'union', ''),
(12615, 126, 'Michael ', 'Ovalle', 9, 28, 'DM', 2, 'Saopablo', ''),
(12616, 126, 'Rolando', 'Junior', 16, 23, 'CF', 2, 'santafe', ''),
(12617, 126, ' Cristian', 'Gómez', 17, 26, 'CF', 0, 'America', ''),
(12618, 126, 'Taison', 'Pimentel', 18, 28, 'CF', 3, 'city', ''),
(12701, 127, 'Aymen', 'Hastai', 1, 25, 'GK', 0, 'Al Batin', ''),
(12702, 127, 'Moez ', 'Gomis', 2, 29, 'GK', 0, 'Swansea', ''),
(12703, 127, 'Farouk', 'Khadin', 3, 25, 'SW', 0, 'Al Batin', ''),
(12704, 127, 'Jasam', 'kara', 4, 20, 'SW', 1, 'rostov', ''),
(12705, 127, 'bobolin', 'bortosk', 5, 37, 'SW', 1, 'manbsd', ''),
(12706, 127, 'tomasz', 'yousoon', 6, 29, 'RB', 2, 'Dijon', ''),
(12707, 127, 'safil', 'Alouane', 7, 20, 'LB', 2, 'Chateauroux', ''),
(12708, 127, 'Youssouf', 'Kindisiaro', 8, 20, 'LB', 1, 'Esperance', ''),
(12709, 127, 'Szymon', 'Gusmunsonn', 9, 23, 'CF', 2, 'Chateauroux', ''),
(12710, 127, 'Lukaz', 'berg', 10, 25, 'AM', 4, 'Legia', ''),
(12711, 127, 'Alouaner', 'Wague', 11, 29, 'AM', 2, 'Esperance', ''),
(12712, 127, 'Mohsni', 'Wicler', 12, 24, 'MD', 1, 'Al Batin', ''),
(12713, 127, 'Cheikh', 'Dawin', 13, 23, 'AM', 2, 'Burdeos', ''),
(12715, 127, 'Rybus', 'Siginsun', 9, 28, 'DM', 0, 'Dijon', ''),
(12716, 127, 'Ndoye ', 'Grisoki', 16, 25, 'CF', 5, 'Chateauroux', ''),
(12717, 127, 'jon', 'Oussama', 17, 28, 'CF', 3, 'Birmingham', ''),
(12718, 127, 'Dylan', 'milikn', 18, 25, 'CF', 0, 'Al Batin', ''),
(12801, 128, 'Bernd', ' Butland', 1, 20, 'GK', 0, 'Manchester', ''),
(12802, 128, 'Jordan', 'Pickford', 2, 29, 'GK', 0, 'Manchester', ''),
(12803, 128, 'Stones  ', 'Stegen', 3, 23, 'SW', 1, 'Tottenham', ''),
(12804, 128, 'Jerome ', 'Boateng', 4, 24, 'SW', 1, 'Bayer', ''),
(12805, 128, 'Harry  ', 'Hummels', 5, 26, 'SW', 1, 'Leicester ', ''),
(12806, 128, 'Mathias', ' Ginter', 6, 27, 'RB', 4, 'Borussia', ''),
(12807, 128, 'Ginter', 'Plattenhard', 7, 20, 'LB', 2, 'Tottenham', ''),
(12808, 128, 'MArcelo', 'Plattenhard', 8, 26, 'LB', 1, 'Bayer', ''),
(12809, 128, 'Harry', ' Rudy', 9, 22, 'CF', 5, 'MOnaco', ''),
(12810, 128, 'Kane', ' Phil  ', 10, 25, 'AM', 4, 'liberpool', ''),
(12811, 128, 'Trippie ', 'Cahill', 11, 23, 'AM', 5, 'Tottenham', ''),
(12812, 128, 'Julian', 'Draxler', 12, 24, 'MD', 5, 'Borussia', ''),
(12813, 128, 'Trent', 'Reus', 13, 29, 'AM', 2, 'Juventus', ''),
(12815, 128, 'Michael ', 'Walker  ', 9, 28, 'DM', 2, 'Tottenham', ''),
(12816, 128, 'Mesut', 'Arnold ', 16, 23, 'CF', 2, 'Arsenal', ''),
(12817, 128, ' Mario', ' Henderson ', 17, 26, 'CF', 7, 'Leicester ', ''),
(12818, 128, 'Timo', 'Werner', 18, 28, 'CF', 3, 'city', ''),
(12901, 129, 'Bartosz', 'Bialkowski', 1, 25, 'GK', 0, 'Bialkowski', ''),
(12902, 129, 'Lukasz', 'Gomis', 2, 29, 'GK', 0, 'Swansea', ''),
(12903, 129, 'Shoruski', 'Khadin', 3, 25, 'SW', 0, 'Roma', ''),
(12904, 129, 'Skorupski', 'kara', 4, 20, 'SW', 1, 'rostov', ''),
(12905, 129, 'Wojciech ', 'bortosk', 5, 37, 'SW', 1, 'manbsd', ''),
(12906, 129, 'Szczesny', 'yousoon', 6, 29, 'RB', 2, 'Dnamo', ''),
(12907, 129, 'Kamil', 'Bereszynski ', 7, 20, 'LB', 2, 'Porto', ''),
(12908, 129, 'Youssouf', 'Kindisiaro', 8, 20, 'LB', 1, 'PSV', ''),
(12909, 129, 'Szymon', 'Peszko ', 9, 24, 'CF', 5, 'MOnaco', ''),
(12910, 129, 'Robert', 'Lewandowski ', 10, 25, 'AM', 5, 'Bayern', ''),
(12911, 129, ' Blaszczykowski', 'Tomasz ', 11, 29, 'AM', 2, 'BAyer', ''),
(12912, 129, 'Youssouf', 'Wicler', 12, 24, 'MD', 1, 'Everton', ''),
(12913, 129, 'Cheikh', 'Dawin', 13, 24, 'AM', 6, 'Burdeos', ''),
(12915, 129, 'Rybus', 'Siginsun', 9, 28, 'DM', 0, 'Everton', ''),
(12916, 129, 'Ndoye ', 'Grisoki', 16, 28, 'CF', 5, 'Lechia ', ''),
(12917, 129, 'Szymanski', 'RWilczek', 17, 29, 'CF', 3, 'Birmingham', ''),
(12918, 129, 'Zurkowskir', 'milikn', 18, 30, 'CF', 0, 'Górnik ', ''),
(13001, 130, 'Abdoulaye', 'Hastai', 1, 25, 'GK', 0, 'Upwich', ''),
(13002, 130, 'Alfred', 'Gomis', 2, 29, 'GK', 0, 'Swansea', ''),
(13003, 130, 'Shoruski', 'Khadin', 3, 25, 'SW', 0, 'Roma', ''),
(13004, 130, 'Jasam', 'kara', 4, 20, 'SW', 1, 'rostov', ''),
(13005, 130, 'bobolin', 'bortosk', 5, 37, 'SW', 1, 'manbsd', ''),
(13006, 130, 'tomasz', 'yousoon', 6, 29, 'RB', 2, 'Dnamo', ''),
(13007, 130, 'safil', 'Invic', 7, 20, 'LB', 2, 'Porto', ''),
(13008, 130, 'Youssouf', 'Kindisiaro', 8, 20, 'LB', 1, 'PSV', ''),
(13009, 130, 'Szymon', 'Gusmunsonn', 9, 23, 'CF', 5, 'MOnaco', ''),
(13010, 130, 'Lukaz', 'berg', 10, 25, 'AM', 4, 'Legia', ''),
(13011, 130, 'Rober', 'Wague', 11, 29, 'AM', 2, 'BAyer', ''),
(13012, 130, 'Youssouf', 'Wicler', 12, 24, 'MD', 1, 'Everton', ''),
(13013, 130, 'Cheikh', 'Dawin', 13, 23, 'AM', 6, 'Burdeos', ''),
(13015, 130, 'Rybus', 'Siginsun', 9, 28, 'DM', 0, 'Everton', ''),
(13016, 130, 'Ndoye ', 'Grisoki', 16, 25, 'CF', 5, 'Wolverhampton', ''),
(13017, 130, 'jon', 'RWilczek', 17, 28, 'CF', 3, 'Birmingham', ''),
(13018, 130, 'Sarr', 'milikn', 18, 25, 'CF', 0, 'Dinamo', ''),
(13101, 131, 'David', 'Ospina', 1, 28, 'GK', 0, 'Arsenal', ''),
(13102, 131, 'Camilo', 'Vargas', 2, 24, 'GK', 0, 'Cali', ''),
(13103, 131, 'Yerry', 'Mina', 3, 23, 'SW', 2, 'Barcelona', ''),
(13104, 131, 'Cristian', 'Zapata', 4, 27, 'SW', 1, 'Milan', ''),
(13105, 131, 'Davinson', 'Sanchez', 5, 20, 'SW', 1, 'Totenham', ''),
(13106, 131, 'Frank', 'Fabra', 6, 22, 'RB', 0, 'Boca', ''),
(13107, 131, 'Johan', 'Mojica', 7, 20, 'LB', 2, 'Girona', ''),
(13108, 131, 'Santiago', 'Arias', 8, 25, 'LB', 1, 'PSV', ''),
(13109, 131, 'Rabamel', 'Falcao', 9, 30, 'CF', 6, 'MOnaco', ''),
(13110, 131, 'James', 'Rodriguez', 10, 25, 'AM', 9, 'Bayer', ''),
(13111, 131, 'Juan', 'Cuadrado', 11, 29, 'AM', 2, 'Juventus', ''),
(13112, 131, 'Wilmar', 'Barrios', 12, 24, 'MD', 1, 'Boca', ''),
(13113, 131, 'Juan', 'Quintero', 13, 28, 'AM', 5, 'River', ''),
(13114, 131, 'Jose', 'Izquierdo', 14, 24, 'AM', 2, 'Wesham', ''),
(13115, 131, 'CArlos', 'Sanchez', 9, 28, 'DM', 0, 'villareal', ''),
(13116, 131, 'Carlos', 'BAca', 16, 27, 'CF', 4, 'Villareal', ''),
(13117, 131, 'Luis', 'Muriel', 17, 26, 'CF', 6, 'Sevilla', ''),
(13118, 131, 'Miguel', 'Borja', 18, 27, 'CF', 4, 'Palmeiras', ''),
(13201, 132, 'Eiji ', 'vKawashima', 1, 28, 'GK', 0, 'Dusseldorf', ''),
(13202, 132, 'Masaaki', 'Higashiguchi ', 2, 24, 'GK', 0, 'Dusseldorf', ''),
(13203, 132, 'Yuto', 'Nagatomo', 3, 23, 'SW', 2, 'Mainz', ''),
(13204, 132, 'Tomoaki', 'Makino', 4, 27, 'SW', 1, 'Milan', ''),
(13205, 132, 'Maya', 'Yoshida ', 5, 20, 'SW', 1, 'Totenham', ''),
(13206, 132, 'Gotoku', 'Hiroki', 6, 22, 'RB', 0, 'Leicester', ''),
(13207, 132, 'Johan', 'Sakai', 7, 20, 'LB', 2, 'Girona', ''),
(13208, 132, 'Shoji', 'Shoji', 8, 25, 'LB', 1, 'PSV', ''),
(13209, 132, 'Okazaki', 'Osako', 9, 30, 'CF', 6, 'Dusseldorf', ''),
(13210, 132, 'Ideguchi', 'Kagawa', 10, 25, 'AM', 9, 'Kashim', ''),
(13211, 132, 'Yamaguchi', 'Yamaguchi', 11, 29, 'AM', 2, 'Juventus', ''),
(13212, 132, 'Makoto', 'Inui', 12, 24, 'MD', 1, 'Mainz', ''),
(13213, 132, 'Kento', 'Quintero', 13, 28, 'AM', 5, 'Leonesa', ''),
(13214, 132, 'JMisao', 'Muto', 14, 24, 'AM', 2, 'Wesham', ''),
(13215, 132, 'Gotoku', 'Sakai', 9, 28, 'DM', 0, 'villareal', ''),
(13216, 132, 'Shinji ', ' Okazaki', 16, 27, 'CF', 4, 'Villareal', ''),
(13217, 132, 'Yamaguchi', 'Okazak', 17, 26, 'CF', 6, 'Sevilla', ''),
(13218, 132, 'Yoshinor', 'Muto', 18, 27, 'CF', 4, 'Borussia', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mundiales`
--

CREATE TABLE `mundiales` (
  `MundId` int(10) UNSIGNED NOT NULL COMMENT 'Codigo del Mundial',
  `MundEdicción` varchar(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Ediciom del mundial',
  `Mundano` tinyint(3) UNSIGNED NOT NULL,
  `MundPais` varchar(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Pais del Mundial'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Se almacena la informacion del de los mundiales ';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mundopaisjug`
--

CREATE TABLE `mundopaisjug` (
  `Mpjid` int(10) UNSIGNED NOT NULL COMMENT 'Codigo del jugador del mundial',
  `MpId` int(10) UNSIGNED NOT NULL COMMENT 'CÓDIGO MUNDIAL',
  `MpjNombre` char(50) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nombres del Jugador',
  `MpjEdad` int(10) UNSIGNED NOT NULL COMMENT 'Edad del Jugador',
  `MpjposJuego` int(2) UNSIGNED NOT NULL COMMENT 'Posicion de Juego del Jugador',
  `MpjNumCamiset` int(2) UNSIGNED NOT NULL COMMENT 'Numero Camiseta del Jugador'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Se almacena la informacion del de los jugadores del mundial ';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mundpais`
--

CREATE TABLE `mundpais` (
  `MpId` int(10) UNSIGNED NOT NULL COMMENT 'Codigo del Pais Mundial',
  `PaisId` int(10) UNSIGNED NOT NULL COMMENT 'Codigo del Pais',
  `MundId` int(10) UNSIGNED NOT NULL COMMENT 'Codigo del Mundial',
  `Sedid` int(30) UNSIGNED NOT NULL COMMENT 'Codigo Sede Mundial'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Se almacena la informacion del de los mundiales ';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `SelecId` int(10) UNSIGNED NOT NULL COMMENT 'Codigo del PAIS',
  `SelecNom` varchar(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Nombre del Pais',
  `PaisContinente` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Pais Continente',
  `Bandera` varchar(350) COLLATE utf8_spanish_ci NOT NULL,
  `GolesNum` int(10) NOT NULL,
  `grupo` varchar(2) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Se almacena la informacion del de los mundiales ';

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`SelecId`, `SelecNom`, `PaisContinente`, `Bandera`, `GolesNum`, `grupo`) VALUES
(101, 'Rusia', 'Europa', './src/img/Iconos_paises/Rusia.png', 0, 'A'),
(102, 'Arabia Saudi', 'Asia', './src/img/Iconos_paises/Arabia_saudita.png', 0, 'A'),
(103, 'Egipto', 'Africa', './src/img/Iconos_paises/Egipto.png', 0, 'A'),
(104, 'Uruguay', 'America', './src/img/Iconos_paises/Uruguay.png', 0, 'A'),
(105, 'Portugal', 'Europa', './src/img/Iconos_paises/Portugal.png', 0, 'B'),
(106, 'España', 'Europa', './src/img/Iconos_paises/Espania.png', 0, 'B'),
(107, 'Marruecos', 'Afica', './src/img/Iconos_paises/Marruecos.png', 0, 'B'),
(108, 'Iran', 'Asia', './src/img/Iconos_paises/Iran.png', 0, 'B'),
(109, 'Francia', 'Europa', './src/img/Iconos_paises/Francia.png', 0, 'C'),
(110, 'Australia', 'Oceania', './src/img/Iconos_paises/Australia.png', 0, 'C'),
(111, 'Peru', 'America', './src/img/Iconos_paises/Peru.png', 0, 'C'),
(112, 'Dinamarca', 'Europa', './src/img/Iconos_paises/Dinamarca.png', 0, 'C'),
(113, 'Argentina', 'America', './src/img/Iconos_paises/Argentina.png', 0, 'D'),
(114, 'Islandia', 'Europa', './src/img/Iconos_paises/Islandia.png', 0, 'D'),
(116, 'Nigeria', 'Africa', './src/img/Iconos_paises/Nigeria.png', 0, 'D'),
(117, 'Brasil', 'America', './src/img/Iconos_paises/Brasil.png', 0, 'E'),
(118, 'Suiza', 'Europa', './src/img/Iconos_paises/Suiza.png', 0, 'E'),
(119, 'Costa Rica', 'NAmerica', './src/img/Iconos_paises/Costa_Rica.png', 0, 'E'),
(120, 'Serbia', 'Europa', './src/img/Iconos_paises/Serbia.png', 0, 'E'),
(121, 'Alemania', 'Europa', './src/img/Iconos_paises/Alemania.png', 0, 'F'),
(122, 'Mexico', 'NAmerica', './src/img/Iconos_paises/Mexico.png', 0, 'F'),
(123, 'Suecia', 'Europa', './src/img/Iconos_paises/Suecia.png', 0, 'F'),
(124, 'Corea del sur', 'Asia', './src/img/Iconos_paises/CoreaSur.png', 0, 'F'),
(125, 'Belgica', 'Europa', './src/img/Iconos_paises/Belgica.png', 0, 'G'),
(126, 'Panama', 'NAmerica', './src/img/Iconos_paises/Panama.png', 0, 'G'),
(127, 'Tunez', 'Afica', './src/img/Iconos_paises/Tunez.png', 0, 'G'),
(128, 'Inglaterra', 'Europa', './src/img/Iconos_paises/Inglaterra.png', 0, 'G'),
(129, 'Polonia', 'Europa', './src/img/Iconos_paises/Polonia.png', 0, 'H'),
(130, 'Senegal', 'Africa', './src/img/Iconos_paises/Senegal.png', 0, 'H'),
(131, 'Colombia', 'America', './src/img/Iconos_paises/Colombia.png', 0, 'H'),
(132, 'Japon', 'Asia', './src/img/Iconos_paises/Japon.png', 0, 'H'),
(115, 'Croacia', 'Europa', './src/img/Iconos_paises/Croacia.png', 0, 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `PartidoId` int(10) NOT NULL,
  `SelecId1` int(10) NOT NULL,
  `Goles1` int(2) NOT NULL,
  `SelecId2` int(10) NOT NULL,
  `Goles2` int(2) NOT NULL,
  `PartidoDate` date NOT NULL,
  `PartidoHora` time NOT NULL,
  `SedId` int(10) NOT NULL,
  `EstadioId` int(11) NOT NULL,
  `ArbId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`PartidoId`, `SelecId1`, `Goles1`, `SelecId2`, `Goles2`, `PartidoDate`, `PartidoHora`, `SedId`, `EstadioId`, `ArbId`) VALUES
(801, 101, 0, 102, 0, '2018-06-14', '17:00:00', 10, 1011, 122),
(802, 103, 0, 104, 0, '2018-06-15', '17:00:00', 14, 1410, 1001),
(803, 105, 0, 106, 0, '2018-06-15', '20:00:00', 17, 1710, 1021),
(804, 107, 0, 108, 0, '2018-06-15', '18:00:00', 19, 1910, 1020),
(805, 109, 0, 110, 0, '2018-06-16', '13:00:00', 11, 1110, 1019),
(806, 113, 0, 114, 0, '2018-06-16', '16:00:00', 10, 1010, 1018),
(807, 111, 0, 112, 0, '2018-06-16', '19:00:00', 12, 1210, 1017),
(808, 115, 0, 116, 0, '2018-06-16', '21:00:00', 20, 2010, 1016),
(809, 119, 0, 120, 0, '2018-06-17', '16:00:00', 13, 1310, 1015),
(810, 121, 0, 122, 0, '2018-06-17', '18:00:00', 10, 1011, 1014),
(811, 117, 0, 118, 0, '2018-06-17', '21:00:00', 16, 1610, 1013),
(812, 123, 0, 124, 0, '2018-06-18', '15:00:00', 18, 1810, 1012),
(813, 125, 0, 126, 0, '2018-06-18', '18:00:00', 17, 1710, 1011),
(814, 127, 0, 128, 0, '2018-06-18', '21:00:00', 15, 1510, 1010),
(815, 131, 0, 132, 0, '2018-06-19', '15:00:00', 12, 1210, 1009),
(816, 129, 0, 130, 0, '2018-06-19', '18:00:00', 10, 1010, 1008),
(817, 101, 0, 103, 0, '2018-06-19', '21:00:00', 19, 1910, 1007),
(818, 105, 0, 107, 0, '2018-06-20', '15:00:00', 10, 1011, 1006),
(819, 104, 0, 102, 0, '2018-06-20', '18:00:00', 16, 1610, 1005),
(820, 108, 0, 106, 0, '2018-06-20', '21:00:00', 11, 1110, 1004),
(821, 112, 0, 110, 0, '2018-06-21', '16:00:00', 13, 1310, 1003),
(822, 109, 0, 111, 0, '2018-06-21', '20:00:00', 14, 1410, 1002),
(823, 113, 0, 115, 0, '2018-06-21', '21:00:00', 18, 1810, 1001),
(824, 117, 0, 119, 0, '2018-06-22', '15:00:00', 19, 1910, 1036),
(825, 116, 0, 114, 0, '2018-06-22', '18:00:00', 15, 1510, 1035),
(826, 120, 0, 118, 0, '2018-06-22', '20:00:00', 20, 2010, 1034),
(827, 125, 0, 127, 0, '2018-06-23', '15:00:00', 10, 1010, 1033),
(828, 124, 0, 122, 0, '2018-06-23', '18:00:00', 16, 1610, 1032),
(829, 121, 0, 123, 0, '2018-06-23', '21:00:00', 17, 1710, 1031),
(830, 128, 0, 126, 0, '2018-06-24', '15:00:00', 18, 1810, 1030),
(831, 132, 0, 130, 0, '2018-06-24', '20:00:00', 14, 1410, 1029),
(832, 129, 0, 131, 0, '2018-06-24', '21:00:00', 11, 1110, 1028),
(833, 104, 0, 101, 0, '2018-06-25', '18:00:00', 13, 1310, 1027),
(834, 102, 0, 103, 0, '2018-06-25', '17:00:00', 15, 1510, 1026),
(835, 106, 0, 107, 0, '2018-06-25', '20:00:00', 20, 2010, 1025),
(836, 108, 0, 105, 0, '2018-06-25', '21:00:00', 12, 1210, 1024),
(837, 110, 0, 111, 0, '2018-06-26', '17:00:00', 17, 1710, 1023),
(838, 112, 0, 109, 0, '2018-06-26', '17:00:00', 10, 1011, 1022),
(839, 116, 0, 113, 0, '2018-06-26', '21:00:00', 19, 1910, 1021),
(840, 114, 0, 115, 0, '2018-06-26', '21:00:00', 16, 1610, 1020),
(841, 124, 0, 121, 0, '2018-06-27', '17:00:00', 11, 1110, 1019),
(842, 122, 0, 123, 0, '2018-06-27', '19:00:00', 20, 2010, 1018),
(843, 120, 0, 117, 0, '2018-06-27', '21:00:00', 10, 1010, 1017),
(844, 118, 0, 119, 0, '2018-06-27', '21:00:00', 18, 1810, 1016),
(845, 132, 0, 129, 0, '2018-06-28', '17:00:00', 15, 1510, 1015),
(846, 130, 0, 131, 0, '2018-06-28', '18:00:00', 13, 1310, 1014),
(847, 126, 0, 127, 0, '2018-06-28', '21:00:00', 12, 1210, 1013),
(848, 128, 0, 125, 0, '2018-06-28', '20:00:00', 20, 2010, 1012);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `SedeId` int(10) UNSIGNED NOT NULL COMMENT 'Código Sede',
  `sedinfraestrutura` char(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Informacion Relevante de la Sede',
  `sedtranscomunicacion` char(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Informacion Transporte y Comunicaciones de la sede',
  `sedfuenEmp` char(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Informacion Fuentes de Empleo de la sede',
  `sedServiciosbas` char(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Informacion Servicios Basicos',
  `sedalimentacion` char(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Informacion Gastronomica de la Sede',
  `sedrecreacion` char(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Informacion Relacionada con los sitios de Interes y Recreacion ',
  `sedclima` char(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Informacion Meterologica',
  `sedpoblacion` char(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Informacion Densidad Demografica',
  `Sedcultura` char(30) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Informacion Cultura y Turismo',
  `SedNom` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `SedUrl` varchar(240) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`SedeId`, `sedinfraestrutura`, `sedtranscomunicacion`, `sedfuenEmp`, `sedServiciosbas`, `sedalimentacion`, `sedrecreacion`, `sedclima`, `sedpoblacion`, `Sedcultura`, `SedNom`, `SedUrl`) VALUES
(10, '', '', '', '', 'Seledka pod shuboy', '', '26', '', '', 'Moscu', './src/img/sedes/moscu.jpg'),
(11, '', '', '', '', 'Kystyby', '', '24', '', '', 'Kazán', './src/img/sedes/kazan.jpg'),
(12, '', '', '', '', 'tsebyar shurba', '', '23', '', '', 'Saransk', './src/img/sedes/mordovia.jpg'),
(13, '', '', '', '', 'Kulebjaka (Volga)', '', '28', '', '', 'Samara', './src/img/sedes/samara.jpg'),
(14, '', '', '', '', 'Shangi', '', '26', '', '', 'Ekaterimburgo', './src/img/sedes/ekaterimburgo.jpg'),
(15, '', '', '', '', 'Okroshka', '', '28', '', '', 'Volgogrado', './src/img/sedes/moscu.jpg'),
(16, '', '', '', '', 'Kulitsch', '', '23', '', '', 'Rostov del Don', './src/img/sedes/rostov.jpg'),
(17, '', '', '', '', 'Shashlik', '', '24', '', '', 'Sochi', './src/img/sedes/fisht.jpg'),
(18, '', '', '', '', 'Kudyabliki', '', '27', '', '', 'Nizhny Novgorod', './src/img/sedes/nizhni.jpg'),
(19, '', '', '', '', 'zakuski', '', '20', '', '', 'San Petesburgo', './src/img/sedes/san_petersburgo.jpg'),
(20, '', '', '', '', 'Königsberger Klopse', '', '22', '', '', 'Kaliningrado', './src/img/sedes/kaliningrado.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas`
--

CREATE TABLE `tarjetas` (
  `Tarjid` int(10) UNSIGNED NOT NULL COMMENT 'Codigo de la Tarjeta',
  `ParId` int(10) UNSIGNED NOT NULL COMMENT 'CÓDIGO Partido',
  `JugadorId` int(10) UNSIGNED NOT NULL COMMENT 'Coddigo del Jugador',
  `TipoTarjId` char(20) COLLATE utf8_spanish_ci NOT NULL COMMENT 'ipo Tarjeta ',
  `TarjMinut` int(2) UNSIGNED NOT NULL COMMENT 'Minuto de la Tarjeta',
  `TarjDett` char(60) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Detalle de la Tarjeta'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Se almacena la informacion del de los jugadores del mundial ';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnico`
--

CREATE TABLE `tecnico` (
  `TecnicoId` int(10) NOT NULL,
  `SelecId` int(10) UNSIGNED NOT NULL,
  `TecnicoNom` varchar(20) NOT NULL,
  `TecnicoApe` varchar(20) NOT NULL,
  `TecnicoEdad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tecnico`
--

INSERT INTO `tecnico` (`TecnicoId`, `SelecId`, `TecnicoNom`, `TecnicoApe`, `TecnicoEdad`) VALUES
(10100, 101, 'Stanislav', 'Cherchesov  ', 54),
(10200, 102, 'Juan Antonio ', 'Pizzi', 49),
(10300, 103, 'Hector', 'Cúper', 62),
(10400, 104, 'Óscar', 'Washington Tabárez', 71),
(10500, 105, 'Fernando', 'Santos', 63),
(10600, 106, 'Julen ', 'Lopetegui', 51),
(10700, 107, 'Hervé ', ' Renard ', 49),
(10800, 108, 'Carlos ', 'Queiroz', 65),
(10900, 109, 'Didier', 'Deschamps', 49),
(11000, 110, 'Bert ', 'Van Marwijk ', 66),
(11100, 111, 'Ricardo', 'Gareca', 60),
(11200, 112, 'Åge Fridtjof', 'Hareide', 64),
(11300, 113, 'Jorge', 'Sampaoli  ', 58),
(11400, 114, 'Heimir', 'Hallgrimsson', 50),
(11500, 115, 'Zlatko', 'Dalic ', 51),
(11600, 116, 'Gernot', 'Rohr', 64),
(11700, 117, 'Adenor “Tite”', ' Bacchi ', 57),
(11800, 118, 'Vladimir ', 'Petkovi? ', 54),
(11900, 119, 'Óscar ', 'Ramírez ', 53),
(12000, 120, 'Mladen', 'Krstajic ', 54),
(12100, 121, 'Joachim ', 'Loew ', 58),
(12200, 122, 'Juan Carlos', 'Osorio ', 56),
(12300, 123, 'Janne ', 'Andersson', 55),
(12400, 124, 'Shin ', 'Tae-Yong', 48),
(12500, 125, 'Roberto ', 'Martínez', 44),
(12600, 126, 'Hernán Darío  ', 'Gómez  Jaramillo', 62),
(12700, 127, 'Nabil ', 'Maaloul', 56),
(12800, 128, 'Gareth', 'Southgate ', 48),
(12900, 129, 'Adam ', 'Nawalka ', 60),
(13000, 130, 'Aliou ', 'Cissé  ', 42),
(13100, 131, 'José Néstor ', 'Pékerman Krimen', 68),
(13200, 132, 'Akira ', 'Nishino  ', 63);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arbitros`
--
ALTER TABLE `arbitros`
  ADD PRIMARY KEY (`Arbid`);

--
-- Indices de la tabla `campeones`
--
ALTER TABLE `campeones`
  ADD PRIMARY KEY (`CampId`);

--
-- Indices de la tabla `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`EstadioId`);

--
-- Indices de la tabla `goles`
--
ALTER TABLE `goles`
  ADD PRIMARY KEY (`GolId`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`GrupoId`);

--
-- Indices de la tabla `judador`
--
ALTER TABLE `judador`
  ADD PRIMARY KEY (`JugadorId`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`JugadorId`);

--
-- Indices de la tabla `mundiales`
--
ALTER TABLE `mundiales`
  ADD PRIMARY KEY (`MundId`);

--
-- Indices de la tabla `mundopaisjug`
--
ALTER TABLE `mundopaisjug`
  ADD PRIMARY KEY (`Mpjid`);

--
-- Indices de la tabla `mundpais`
--
ALTER TABLE `mundpais`
  ADD PRIMARY KEY (`MpId`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`SelecId`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`PartidoId`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`SedeId`);

--
-- Indices de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  ADD PRIMARY KEY (`Tarjid`);

--
-- Indices de la tabla `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`TecnicoId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campeones`
--
ALTER TABLE `campeones`
  MODIFY `CampId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Codigo deL CAMPEON';

--
-- AUTO_INCREMENT de la tabla `goles`
--
ALTER TABLE `goles`
  MODIFY `GolId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Codigo del Gol', AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de la tabla `mundiales`
--
ALTER TABLE `mundiales`
  MODIFY `MundId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Codigo del Mundial', AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de la tabla `mundpais`
--
ALTER TABLE `mundpais`
  MODIFY `MpId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Codigo del Pais Mundial', AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `SelecId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Codigo del PAIS', AUTO_INCREMENT=1000;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
