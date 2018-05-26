-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2018 a las 03:31:22
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
(1001, 'AL MIRDASI Fahad', 32, 'Arabia Saudita'),
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
  `GmId` int(10) UNSIGNED NOT NULL COMMENT 'Codigo del Grupo del Mundial',
  `Mpid` int(10) UNSIGNED NOT NULL COMMENT 'Codigo  Mundial del Pais',
  `GmGrupo` int(10) UNSIGNED NOT NULL COMMENT 'Codigo del grupo Mundial'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Se almacena la informacion del de los grupos del mundial ';

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
  `PartId` int(10) UNSIGNED NOT NULL COMMENT 'CÓDIGO Partido',
  `Mundid` int(10) UNSIGNED NOT NULL COMMENT 'Codigo del Munial',
  `PartCiudad` char(20) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Ciudad del Partido ',
  `PartEstadio` char(20) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Estadio del Partido',
  `PartAsistencia` int(10) UNSIGNED NOT NULL COMMENT 'Numero de Asistentes al Partido',
  `PartFecHora` date DEFAULT NULL COMMENT 'Fecha y hora del Partido',
  `PartRonda` char(20) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Ronda de los Partidos',
  `PartResultado` int(10) UNSIGNED NOT NULL COMMENT 'Resultado o Marcador del Partido',
  `Partlocalpais` char(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Equipo Local',
  `PartVisitpais` char(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Equipo Visitante',
  `Arbid` int(10) UNSIGNED NOT NULL COMMENT 'Codigo Arbitro',
  `TipoArbi` char(10) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Tipo Arbitro'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Se almacena la informacion del de los Partidos  del mundial ';

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
  `TecnicoNom` varchar(20) NOT NULL,
  `TecnicoApe` varchar(20) NOT NULL,
  `TecnicoEdad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD PRIMARY KEY (`GmId`);

--
-- Indices de la tabla `judador`
--
ALTER TABLE `judador`
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
  ADD PRIMARY KEY (`PartId`) USING BTREE;

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
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `GmId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Codigo del Grupo del Mundial', AUTO_INCREMENT=1000;

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
