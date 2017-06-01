-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2017 a las 12:20:22
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `busquedaautosuggest`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id_ciud` int(11) NOT NULL,
  `nombre_ciud` varchar(50) NOT NULL,
  `FK_prov` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciud`, `nombre_ciud`, `FK_prov`) VALUES
(6, 'Vitoria-Gasteiz', 1),
(7, 'Laudio/Llodio', 1),
(8, 'Amurrio', 1),
(9, 'Salvatierra/Agurain', 1),
(10, 'Oyon-Oion', 1),
(11, 'Albacete', 2),
(12, 'Hellin', 2),
(13, 'Villarrobledo', 2),
(14, 'Almansa', 2),
(15, 'La Roda', 2),
(16, 'Alicante', 3),
(17, 'Elche', 3),
(18, 'Torrevieja', 3),
(19, 'Orihuela', 3),
(20, 'Benidorm', 3),
(21, 'Almeria', 4),
(22, 'El Ejido', 4),
(23, 'Roquetas de Mar', 4),
(24, 'Nijar', 4),
(25, 'Adra', 4),
(26, 'Gijon', 5),
(27, 'Oviedo', 5),
(28, 'Aviles', 5),
(29, 'Siero', 5),
(30, 'Langreo', 5),
(31, 'Avila', 6),
(32, 'Arevalo', 6),
(33, 'Arenas de San Pedro', 6),
(34, 'Las Navas del Marques', 6),
(35, 'Candeleda', 6),
(36, 'Badajoz', 7),
(37, 'Merida', 7),
(38, 'Don Benito', 7),
(39, 'Almendralejo', 7),
(40, 'Villanueva de la Serna', 7),
(41, 'Barcelona', 8),
(42, 'L\'Hospitalet de Llobregat', 8),
(43, 'Badalona', 8),
(44, 'Terrassa', 8),
(45, 'Sabadell', 8),
(46, 'Burgos', 9),
(47, 'Miranda de Ebro', 9),
(48, 'Aranda de Duero', 9),
(49, 'Briviesca', 9),
(50, 'Medina de Pomar', 9),
(51, 'Caceres', 10),
(52, 'Plasencia', 10),
(53, 'Navalmoral de la Mata', 10),
(54, 'Coria', 10),
(55, 'Miajadas', 10),
(61, 'Jerez de la Frontera', 11),
(62, 'Cadiz', 11),
(63, 'Algeciras', 11),
(64, ' San Fernando', 11),
(65, 'El Puerto de Santa Maria', 11),
(66, 'Santander', 12),
(67, 'Torrelavega', 12),
(68, 'Camargo', 12),
(69, 'Castro-Urdiales', 12),
(70, 'Pielagos', 12),
(71, 'Castellon de la Plana', 13),
(72, 'Vila-real', 13),
(73, 'Burriana', 13),
(74, 'La Vall d\'Uixo', 13),
(75, 'Vinaros', 13),
(76, 'Ciudad Real', 14),
(77, 'Puertollano', 14),
(78, 'Tomelloso', 14),
(79, 'Alcazar de San Juan', 14),
(80, 'Valdepeñas', 14),
(81, 'Cordoba', 15),
(82, 'Lucena', 15),
(83, 'Puente Genil', 15),
(84, 'Montilla', 15),
(85, 'Priego de Cordoba', 15),
(86, 'A Coruña', 16),
(87, 'Santiago de Compostela', 16),
(88, 'Ferrol', 16),
(89, 'Narón', 16),
(90, 'Oleiros', 16),
(91, 'Cuenca', 17),
(92, 'Tarancon', 17),
(93, 'Quintanar del Rey', 17),
(94, 'Las Pedroñeras', 17),
(95, 'San Clemente', 17),
(96, 'Girona', 18),
(97, 'Figueres', 18),
(98, 'Blanes', 18),
(99, 'Lloret de Mar', 18),
(100, 'Olot', 18),
(101, 'Granada', 19),
(102, 'Motril', 19),
(103, 'Almuñecar', 19),
(104, 'Baza', 19),
(105, 'Loja', 19),
(106, 'Guadalajara', 20),
(107, 'Azuqueca de Henares', 20),
(108, 'Alovera', 20),
(109, 'El Casar', 20),
(110, 'Cabanillas de Campo', 20),
(111, 'Donostia-San Sebastián', 21),
(112, 'Irun', 21),
(113, 'Errenteria', 21),
(114, 'Eibar', 21),
(115, 'Zarautz', 21),
(116, 'Huelva', 22),
(117, 'Lepe', 22),
(118, 'Almonte', 22),
(119, 'Isla Cristina', 22),
(120, 'Ayamonte', 22),
(121, 'Huesca', 23),
(122, 'Monzon', 23),
(123, 'Barbastro', 23),
(124, 'Fraga', 23),
(125, 'Jaca', 23),
(126, 'Jaen', 25),
(127, 'Linares', 25),
(128, 'Andujar', 25),
(129, 'Ubeda', 25),
(130, 'Martos', 25),
(131, 'Leon', 26),
(132, 'Ponferrada', 26),
(133, 'San Andres de Rabanedo', 26),
(134, 'Villaquilambre', 26),
(135, 'Astorga', 26),
(136, 'Lleida', 27),
(137, 'Balaguer', 27),
(138, 'Tarrega', 27),
(139, 'Mollerussa', 27),
(140, 'La Seu d\'Urgell', 27),
(141, 'Lugo', 28),
(142, 'Monforte de Lemos', 28),
(143, 'Viveiro', 28),
(144, 'Vilalba', 28),
(145, 'Sarria', 28),
(146, 'Madrid', 29),
(147, 'Mostoles', 29),
(148, 'Alcala de Henares', 29),
(149, 'Fuenlabrada', 29),
(150, 'Leganes', 29),
(256, 'Malaga', 30),
(257, 'Marbella', 30),
(258, 'Velez-Malaga', 30),
(259, 'Fuengirola', 30),
(260, 'Mijas', 30),
(361, 'Murcia', 31),
(362, 'Cartagena', 31),
(363, 'Lorca', 31),
(364, 'Molina de Segura', 31),
(365, 'Alcantarilla', 31),
(366, 'Pamplona/Iruña', 32),
(367, 'Tudela', 32),
(368, 'Barañain', 32),
(369, 'Burlada/Burlata', 32),
(370, 'Estrella/Lizarra', 32),
(371, 'Ourense', 33),
(372, 'Verin', 33),
(373, 'O Barco de Valdeorras', 33),
(374, 'O Carballiño', 33),
(375, 'Xinzo de Limia', 33),
(376, 'Palencia', 34),
(377, 'Guardo', 34),
(378, 'Aguilar de Campoo', 34),
(379, 'Venta de Baños', 34),
(380, 'Villamuriel de Cerrato', 34),
(381, 'Vigo', 36),
(382, 'Pontevedra', 36),
(383, 'Vilagarcia de Arousa', 36),
(384, 'Redondela', 36),
(385, 'Marin', 36),
(386, 'Logroño', 37),
(387, 'Calahorra', 37),
(388, 'Arnedo', 37),
(389, 'Haro', 37),
(390, 'Alfaro', 37),
(391, 'Salamanca', 38),
(392, 'Bejar', 38),
(393, 'Santa Marta de Tormes', 38),
(394, 'Ciudad Rodrigo', 38),
(395, 'Peñaranda de Bracamonte', 38),
(396, 'Segovia', 39),
(397, 'Cuellar', 39),
(398, 'El Espinar', 39),
(399, 'San Ildefonso', 39),
(400, 'Cantalejo', 39),
(461, 'Sevilla', 40),
(462, 'Dos Hermanas', 40),
(463, 'Alcala de Guadaira', 40),
(464, 'Utrera', 40),
(465, 'Ecija', 40),
(466, 'Soria', 41),
(467, 'Almazan', 41),
(468, 'Burgo de Osma - Ciudad de Osma', 41),
(469, 'Olvega', 41),
(470, 'San Esteban de Gormaz', 41),
(471, 'Tarragona', 42),
(472, 'Reus', 42),
(473, 'Tortosa', 42),
(474, 'El Vendrell', 42),
(475, 'Cambrils', 42),
(476, 'Teruel', 44),
(477, 'Alcañiz', 44),
(478, 'Andorra', 44),
(479, 'Calamocha', 44),
(480, 'Calanda', 44),
(481, 'Talavera de la Reina', 45),
(482, 'Toledo', 45),
(483, 'Illescas', 45),
(484, 'Seseña', 45),
(485, 'Torrijos', 45),
(486, 'Valencia', 46),
(487, 'Gandia', 46),
(488, 'Torrent', 46),
(489, 'Sagunto/Sagunt', 46),
(490, 'Paterna', 46),
(491, 'Valladolid', 47),
(492, 'Laguna de Duero', 47),
(493, 'Madina del Campo', 47),
(494, 'Arroyo de la Encomienda', 47),
(495, 'Tordesillas', 47),
(496, 'Bilbao', 48),
(497, 'Barakaldo', 48),
(498, 'Getxo', 48),
(499, 'Portugalete', 48),
(500, 'Santurtzi', 48),
(501, 'Zamora', 49),
(502, 'Benavente', 49),
(503, 'Toro', 49),
(504, 'Morales del Vino', 49),
(505, 'Fuentesauco', 49),
(506, 'Zaragoza', 50),
(507, 'Calatayud', 50),
(508, 'Ejea de los Caballeros', 50),
(509, 'Utebo', 50),
(510, 'Tarazona', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id_prov` int(11) NOT NULL,
  `nombre_prov` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id_prov`, `nombre_prov`) VALUES
(1, 'Alava'),
(2, 'Albacete'),
(3, 'Alicante'),
(4, 'Almeria'),
(5, 'Asturias'),
(6, 'Avila'),
(7, 'Badajoz'),
(8, 'Barcelona'),
(9, 'Burgos'),
(10, 'Caceres'),
(11, 'Cadiz'),
(12, 'Cantabria'),
(13, 'Castellon'),
(14, 'Ciudad Real'),
(15, 'Cordoba'),
(16, 'La Coruña'),
(17, 'Cuenca'),
(18, 'Gerona'),
(19, 'Granada'),
(20, 'Guadalajara'),
(21, 'Guipuzcoa'),
(22, 'Huelva'),
(23, 'Huesca'),
(25, 'Jaen'),
(26, 'Leon'),
(27, 'Lerida'),
(28, 'Lugo'),
(29, 'Comunidad de Madrid'),
(30, 'Malaga'),
(31, 'Region de Murcia'),
(32, 'Navarra'),
(33, 'Orense'),
(34, 'Palencia'),
(36, 'Pontevedra'),
(37, 'La Rioja'),
(38, 'Salamanca'),
(39, 'Segovia'),
(40, 'Sevilla'),
(41, 'Soria'),
(42, 'Tarragona'),
(44, 'Teruel'),
(45, 'Toledo'),
(46, 'Valencia'),
(47, 'Valladolid'),
(48, 'Vizcaya'),
(49, 'Zamora'),
(50, 'Zaragoza');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id_ciud`),
  ADD KEY `FK_prov` (`FK_prov`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id_prov`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id_ciud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;
--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`FK_prov`) REFERENCES `provincias` (`id_prov`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
