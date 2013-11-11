-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Servidor: 127.10.73.130:3306
-- Tiempo de generación: 20-10-2013 a las 12:31:51
-- Versión del servidor: 5.1.69
-- Versión de PHP: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `periodico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE IF NOT EXISTS `comentario` (
  `usuario` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `atajoNoticia` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cuerpo_comentario` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`usuario`,`atajoNoticia`,`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`usuario`, `atajoNoticia`, `fecha`, `cuerpo_comentario`) VALUES
('admin', '/~x76419942/NewsForDummiesII/Noticias/Portada/Juez_Ruz_imputa_donantes_PP.php', '2013-06-12 09:56:10', 'Todos chorizos'),
('Sergio', '/~x76419942/NewsForDummiesII/Noticias/Auxiliar/auxiliarNoticias.php', '2013-06-12 10:12:19', 'hola'),
('Sergio', '/~x76419942/NewsForDummiesII/Noticias/Portada/google_pone_a_trabajar.php', '2013-06-12 11:02:09', 'Que guay!'),
('Sergio', '/~x76419942/NewsForDummiesII/Noticias/Portada/Juez_Ruz_imputa_donantes_PP.php', '2013-06-11 23:25:47', 'Buen artículo'),
('Sergio', '/~x76419942/NewsForDummiesII/Noticias/Portada/Juez_Ruz_imputa_donantes_PP.php', '2013-06-12 10:19:31', 'HOLA'),
('Sergio', '/~x76419942/NewsForDummiesII/Noticias/Portada/Juez_Ruz_imputa_donantes_PP.php', '2013-06-12 10:23:21', 'hola que tal '),
('sergio', '/~x76419942/NewsForDummiesII/Noticias/Portada/Juez_Ruz_imputa_donantes_PP.php', '2013-06-12 10:42:06', 'hola'),
('Sergio', '/~x76419942/NewsForDummiesII/Noticias/Portada/Juez_Ruz_imputa_donantes_PP.php', '2013-06-14 20:35:11', 'hola'),
('sergio', '/~x76419942/NewsForDummiesII/Noticias/Portada/Juez_Ruz_imputa_donantes_PP.php', '2013-06-15 11:56:20', 'hola'),
('Sergio', '/~x76419942/NewsForDummiesII/Noticias/Portada/Juez_Ruz_imputa_donantes_PP.php', '2013-06-18 10:06:00', 'prueba final'),
('Sergio', '/~x76419942/NewsForDummiesII/Noticias/Portada/Ministro_Educacion_aleman_tira_ordenadores_virus.php', '2013-06-12 11:01:55', 'buen artÃ­culo'),
('Sergio', '/~x76419942/NewsForDummiesII/Noticias/Portada/napolitano_acepta_presidente_italia.php', '2013-06-12 10:54:43', 'Hola'),
('Sergio', '/~x76419942/NewsForDummiesII/Noticias/Portada/padre_atentado_boston_trampa.php', '2013-06-12 11:01:40', 'buen artÃ­culo'),
('Sergio', '/~x76419942/NewsForDummiesII/Noticias/Portada/sindicatos_reclaman_cambio_politica_economica.php', '2013-06-12 11:01:27', 'buen artÃ­culo'),
('Sergio', '/~x76419942/PeriodicoII/Noticias/Portada/Juez_Ruz_imputa_donantes_PP.php', '2013-06-27 09:45:46', 'asdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE IF NOT EXISTS `noticia` (
  `nombre` text COLLATE utf8_spanish2_ci NOT NULL,
  `cuerpo` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`nombre`, `cuerpo`, `id`, `fecha`) VALUES
('ProtecciÃ³n de Datos estudia sancionar a Google por su polÃ­tica de privacidad ', 'Ha constatado la existencia de varios indicios de infracciÃ³n. Google defiende que su polÃ­tica "respeta la ley europea". La multa por cada una de las seis infracciones podrÃ­a ascender a 300.000 euros.\r\n\r\n', 21, '2013-06-20 22:20:43'),
('asdf', 'asdf asdf as ', 22, '2013-06-27 09:41:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `nombreUsuario` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `primer_apellido` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `segundo_apellido` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`nombreUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombreUsuario`, `password`, `nombre`, `primer_apellido`, `segundo_apellido`, `fecha_nacimiento`, `telefono`, `email`) VALUES
('00000000000000', '00000000', '00', '0000', '', '1995-01-08', 0, 'perico@gmail.com'),
('22222222', 'ho00ho00', '222222222222', '2222222', '', '1995-01-23', 690000000, 'sdfasdf@gmail.com'),
('76575756', 'ho00ho00', 'HOLA', 'hoal', '', '1995-01-10', 678888888, 'sergiogamarra91@gmail.com'),
('91', 'se91se91', 'Sergio', 'MuÃ±oz', '', '1995-01-10', 0, 'sergiogamarra91@gmail.com'),
('admin', 'admin', 'Sergio', 'Muñoz', NULL, '2013-06-11', NULL, NULL),
('algo', 'al92al92', 'Sergio', 'andres', '', '1995-01-18', 0, 'sergiogamarra91@gma'),
('hola', 'ho90ho90', 'hola', 'hola', 'hola', '1992-05-23', 680000000, 'hola@gmail.com'),
('hola00', 'ho00la00', 'hola', 'hola', '', '1995-01-18', 0, 'hola@hola.com'),
('hola000000', 'holahola', '1', '1', '', '1995-01-10', 0, '1@1.com'),
('hola2', 'ho01ho02', 'hola', 'hola', 'hola', '0000-00-00', 699000000, 'hola@gmilio.com'),
('holahola', 'holahola', 'holahola', 'holahola', '', '1995-01-17', 0, 'hola@gmail.com'),
('juanma', 'ab12cd34', 'Juanma', 'Fernandez', 'Luna', '2013-06-04', 698000000, 'juanma@decsai.ugr.es'),
('lo', 'lo00lo00', 'Dasfda', 'addea', '', '1995-01-11', 0, 'sergiogamarra91@gmail.com'),
('perico', 'pe92pe92', 'Perico', 'Los', 'Palotes', '1992-05-23', 687998877, 'perico@gmail.com'),
('prueba', 'pu92pu92', 'Prueba1', 'prueba', '', '1995-01-17', 0, 'perico@gmail.com'),
('se', 'se91se91', 'Sergio', 'MuÃ±oz', '', '1995-01-09', 0, 'sergiogamarra91@gmail.com'),
('Sergio', 'sergio', 'sergio', 'muñoz', NULL, '2013-06-12', NULL, NULL),
('Smg', 'SE91SE91', 'Sergio', 'MuÃ±oz', 'Gamarra', '0000-00-00', 678888888, 'sergiogamarra91@gmail.com'),
('victoria', 'vi92vi92', 'Victoria', 'Camarero', '', '1992-10-30', 0, 'hola@gmail.com');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`nombreUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
