-- CREATE DATABASE angularcode_products;


USE angularcode_products;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `angularcode_products`
--

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--
DROP TABLE IF EXISTS `usuario`;

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `puntos` int(11) NOT NULL, 
  `experiencia` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100;

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `email`, `puntos`, `experiencia`) VALUES
('138', 'Pedro', 'Aramusk', 'pedroaramusk@gmail.com', 100, 200),
('438', 'Pablo', 'Temple', 'pablotemple@hotmail.com', 1000, 500);

DROP TABLE IF EXISTS `local`;

CREATE TABLE IF NOT EXISTS `local` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `numero` int(11) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10;

INSERT INTO `local` ( `id`, `nombre`, `calle`, `numero`, `latitud`, `longitud`, `tipo`) VALUES
('1', 'Don Anselmo', 'Don Anselmo Aita', '1083', '10', '20', 1),
('2', 'Pasteur', 'Pasteur', '706', '10', '20', 1),
('3', 'Paraguay', 'Paraguay', '1448', '10', '20', 1);

DROP TABLE IF EXISTS `beneficio`;

CREATE TABLE IF NOT EXISTS `beneficio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `puntos` int(11) NOT NULL,
  `experiencia` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20;

-- 1 evento
-- 2 receta
-- 3 maridaje
-- 4 degustacion
-- 5 nuevo local
INSERT INTO `beneficio` ( `id`, `tipo`, `nombre`, `descripcion`, `puntos`, `experiencia`) VALUES
(10, 1, 'Nueva cerveza', 'Veni a conocer nuestra nueva Pale Ale', 0, 200),
(11, 2, 'Cocción de Porter', 'Enterate como Patagonia desarrolla su cerveza Premium', 0, 2000),
(12, 3, 'Acompañamiento de mariscos', 'Te contamos con que Patagonia acompañar los mejores mariscos', 0, 500),
(13, 4, 'Nueva Honey Patagonia', 'Veni a descubrir la Honey de la montaña', 0, 1000),
(14, 5, 'Nuvo local Palermo', 'Te abrimos las puertas de nuestro nuevo local', 0, 5000);

DROP TABLE IF EXISTS `trivia`;

CREATE TABLE IF NOT EXISTS `trivia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `pregunta` varchar(100) NOT NULL,
  `respuesta` varchar(100) NOT NULL,
  `experiencia` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10;

INSERT INTO `trivia` ( `id`, `nombre`, `pregunta`, `respuesta`, `experiencia`) VALUES
('1', 'Coccion Porter', 'Tiempo de coccion Porter?', '90 minutos', 1083),
('2', 'Temperatura Porter', 'Temperatura levado Porter?', '76-78 C', 2083),
('3', 'Maltas Porter', 'Malta predominante en la Porter?', 'Pilsen', 1083);

DROP TABLE IF EXISTS `review`;

CREATE TABLE IF NOT EXISTS `review` (
  `id_usuario` int NOT NULL,
  `id_local` int NOT NULL,
  `texto` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

INSERT INTO `review` ( `id_usuario`, `id_local`, `texto`) VALUES
(138, 1, '90 minutos'),
(438, 2, '90 minutos');

DROP TABLE IF EXISTS `checking`;

CREATE TABLE IF NOT EXISTS `checking` (
  `id_usuario` int NOT NULL,
  `id_local` int NOT NULL,
  `dia_hora` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

INSERT INTO `checking` ( `id_usuario`, `id_local`, `dia_hora`) VALUES
(138, 1, NOW()),
(138, 3, NOW()),
(138, 1, NOW()),
(438, 2, NOW());

DROP TABLE IF EXISTS `tip`;

CREATE TABLE IF NOT EXISTS `tip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` int NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10;

INSERT INTO `tip` ( `id`, `nombre`, `descripcion`) VALUES
(1, "Sales para porter", "Sulfato de calcio, cloruro de calcio, y sal comun"),
(2, "Variedades Patagonia", "Bohemian Pilsener, Amber Lager, Kune, Weise");
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
