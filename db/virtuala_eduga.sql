-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 31, 2015 at 04:19 PM
-- Server version: 5.1.73-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `virtuala_edugadev`
--

-- --------------------------------------------------------

--
-- Table structure for table `actividades_barra`
--

CREATE TABLE IF NOT EXISTS `actividades_barra` (
  `id_actividades_barra` int(20) NOT NULL AUTO_INCREMENT,
  `id_modulos` int(20) NOT NULL,
  `id_tipo_actividades` int(20) NOT NULL,
  `id_actividades` int(20) NOT NULL DEFAULT '0',
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_actividades_barra`),
  KEY `id_tipo_actividades` (`id_tipo_actividades`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_modulos` (`id_modulos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `actividades_barra`
--

INSERT INTO `actividades_barra` (`id_actividades_barra`, `id_modulos`, `id_tipo_actividades`, `id_actividades`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(101, 22, 1, 54, 1, '2015-01-30 03:38:43', '2015-01-30 03:39:42', 1, 1, 2),
(102, 22, 2, 69, 1, '2015-01-30 03:39:36', '2015-01-30 03:49:04', 1, 1, 1),
(103, 22, 1, 55, 1, '2015-01-30 03:43:49', '2015-01-30 03:51:46', 1, 1, 103),
(104, 22, 1, 56, 1, '2015-01-30 03:45:27', '2015-01-30 03:53:00', 1, 1, 104),
(105, 22, 3, 34, 1, '2015-01-30 03:46:16', '2015-01-30 03:48:54', 1, 1, 105);

-- --------------------------------------------------------

--
-- Table structure for table `actividades_evaluacion`
--

CREATE TABLE IF NOT EXISTS `actividades_evaluacion` (
  `id_actividades_evaluacion` int(20) NOT NULL AUTO_INCREMENT,
  `id_modulos` int(20) NOT NULL,
  `nombre_actividad` varchar(254) NOT NULL,
  `descripcion_actividad` text NOT NULL,
  `id_logros` int(20) NOT NULL DEFAULT '0',
  `id_tipo_planes` int(20) NOT NULL,
  `id_competencias` int(20) NOT NULL,
  `num_oportunidades` varchar(200) DEFAULT NULL,
  `variables_pregunta` text NOT NULL,
  `oportunidades` int(10) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_actividades_evaluacion`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_modulos` (`id_modulos`),
  KEY `id_tipo_planes` (`id_tipo_planes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `actividades_evaluacion`
--

INSERT INTO `actividades_evaluacion` (`id_actividades_evaluacion`, `id_modulos`, `nombre_actividad`, `descripcion_actividad`, `id_logros`, `id_tipo_planes`, `id_competencias`, `num_oportunidades`, `variables_pregunta`, `oportunidades`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(34, 22, 'Torneo de desempeño', 'descripcion', 0, 1, 0, 'ilimitatu', '{"2":{"pregunta":"\\u00bfQu\\u00e9 es gamification?","tipo_pregunta":"1","id_competencias":"","variables_respuesta":"[{\\"opcion\\":\\"Una nueva moda\\",\\"retroalimentacion\\":\\"Lo puedes seguir intentando\\",\\"correcta\\":\\"0\\"},{\\"opcion\\":\\"Uso de elementos de videojuegos en la educaci\\\\u00f3n\\",\\"retroalimentacion\\":\\"\\\\u00a1Muy bien! =D\\",\\"correcta\\":\\"1\\"},{\\"opcion\\":\\"Un estilo musical\\",\\"retroalimentacion\\":\\"Lo puedes seguir intentando\\",\\"correcta\\":\\"0\\"}]"},"1":{"pregunta":"\\u00bfC\\u00f3mo puedes aplicar el e-Learning, b-Learning y Gamification?","tipo_pregunta":"4","id_competencias":"","variables_respuesta":"[{\\"id_texto\\":null,\\"texto\\":\\"Describe un caso real en el que lo aplicar\\\\u00edas\\",\\"retroalimentacion\\":\\"Estaremos felices de leer tu creativa respuesta.\\"}]"}}', 0, 1, '2015-01-30 03:46:16', '2015-01-30 03:48:54', 1, 1, 34);

-- --------------------------------------------------------

--
-- Table structure for table `actividades_evaluacion_oportunidades`
--

CREATE TABLE IF NOT EXISTS `actividades_evaluacion_oportunidades` (
  `id_actividades_evaluacion_oportunidades` int(20) NOT NULL AUTO_INCREMENT,
  `id_usuarios` int(20) NOT NULL,
  `id_actividades_evaluacion` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_actividades_evaluacion_oportunidades`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_actividades_evaluacion` (`id_actividades_evaluacion`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `actividades_foro`
--

CREATE TABLE IF NOT EXISTS `actividades_foro` (
  `id_actividades_foro` int(20) NOT NULL AUTO_INCREMENT,
  `id_modulos` int(20) NOT NULL,
  `nombre_actividad` varchar(254) NOT NULL,
  `descripcion_actividad` text NOT NULL,
  `id_logros` int(20) NOT NULL,
  `id_tipo_planes` int(20) NOT NULL DEFAULT '1',
  `contenido_foro` text NOT NULL,
  `foto` mediumtext NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_actividades_foro`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_modulos` (`id_modulos`),
  KEY `id_tipo_planes` (`id_tipo_planes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `actividades_foro`
--

INSERT INTO `actividades_foro` (`id_actividades_foro`, `id_modulos`, `nombre_actividad`, `descripcion_actividad`, `id_logros`, `id_tipo_planes`, `contenido_foro`, `foto`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(69, 22, 'Bienvenido', 'descripcion', 5, 1, '¡Hola!, nos gustaría que te presentaras y nos dejaras saber ¿Por qué estas interesado en el e-Learning?', '', 1, '2015-01-30 03:39:36', '2015-01-30 03:49:04', 1, 1, 69);

-- --------------------------------------------------------

--
-- Table structure for table `actividades_foro_megusta`
--

CREATE TABLE IF NOT EXISTS `actividades_foro_megusta` (
  `id_actividades_foro_megusta` int(20) NOT NULL AUTO_INCREMENT,
  `id_cursos` int(20) NOT NULL,
  `id_modulos` int(20) NOT NULL,
  `id_actividades` int(20) NOT NULL,
  `id_actividades_foro_mensajes` int(20) NOT NULL,
  `id_usuarios` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_actividades_foro_megusta`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_modulos` (`id_modulos`),
  KEY `id_actividades` (`id_actividades`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `actividades_foro_mensajes`
--

CREATE TABLE IF NOT EXISTS `actividades_foro_mensajes` (
  `id_actividades_foro_mensajes` int(20) NOT NULL AUTO_INCREMENT,
  `id_actividades_foro` int(20) NOT NULL,
  `mensaje` text NOT NULL,
  `id_estados` int(11) NOT NULL,
  `fecha_modificado` timestamp NULL DEFAULT NULL,
  `fecha_creado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_actividades_foro_mensajes`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_actividades_foro` (`id_actividades_foro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

-- --------------------------------------------------------

--
-- Table structure for table `actividades_foro_usuarios`
--

CREATE TABLE IF NOT EXISTS `actividades_foro_usuarios` (
  `id_actividades_foro_usuarios` int(11) NOT NULL AUTO_INCREMENT,
  `if_foro` int(20) NOT NULL,
  `id_actividades_foro` int(20) NOT NULL DEFAULT '0',
  `id_actividades_barra` int(20) DEFAULT '0',
  `id_usuarios` int(20) NOT NULL,
  `id_cursos` int(20) NOT NULL,
  `id_modulos` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_actividades_foro_usuarios`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_modulos` (`id_modulos`),
  KEY `id_estados` (`id_estados`),
  KEY `id_actividades_barra` (`id_actividades_barra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `actividades_respuestas_usuario`
--

CREATE TABLE IF NOT EXISTS `actividades_respuestas_usuario` (
  `id_actividades_respuestas_usuario` int(20) NOT NULL AUTO_INCREMENT,
  `id_cursos` int(20) NOT NULL,
  `id_modulos` int(20) NOT NULL,
  `id_actividades_barra` int(20) NOT NULL,
  `id_actividades` int(20) NOT NULL,
  `id_usuarios` int(20) NOT NULL,
  `respuestas` text NOT NULL,
  `tipo_pregunta` int(20) NOT NULL DEFAULT '0',
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  PRIMARY KEY (`id_actividades_respuestas_usuario`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_modulos` (`id_modulos`),
  KEY `id_actividades_barra` (`id_actividades_barra`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY ` id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=146 ;

-- --------------------------------------------------------

--
-- Table structure for table `actividades_videos`
--

CREATE TABLE IF NOT EXISTS `actividades_videos` (
  `id_actividades_videos` int(20) NOT NULL AUTO_INCREMENT,
  `id_modulos` int(20) NOT NULL,
  `nombre_actividad` varchar(254) NOT NULL,
  `descripcion_actividad` text NOT NULL,
  `id_logros` int(20) NOT NULL,
  `id_tipo_planes` int(20) NOT NULL DEFAULT '1',
  `url_video` varchar(254) NOT NULL,
  `pregunta` varchar(254) NOT NULL,
  `tipo_pregunta` varchar(200) NOT NULL,
  `variables_pregunta` text NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_actividades_videos`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_modulos` (`id_modulos`),
  KEY `id_tipo_planes` (`id_tipo_planes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `actividades_videos`
--

INSERT INTO `actividades_videos` (`id_actividades_videos`, `id_modulos`, `nombre_actividad`, `descripcion_actividad`, `id_logros`, `id_tipo_planes`, `url_video`, `pregunta`, `tipo_pregunta`, `variables_pregunta`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(54, 22, '¿Qué es una plataforma LMS?', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=hCHyFfwlTjA', '¿Conoces alguna plataforma LMS? ¿Cuál?', '4', '', 1, '2015-01-30 03:38:43', '2015-01-30 03:38:43', 1, 1, 54),
(55, 22, '¿Qué es b-Learning?', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=Qz7iXPqilzU', '¿Cuál es la diferencia entre e-Learning y b-Learning?', '1', '[{"posible_respuesta":"e-Learning fue creado en Europa y b-Learning en Estados unidos","retroalimentacion":"No es la respuesta correcta, e-Learning es 100% virtual y b-Learning combina la educaci\\u00f3n tradicional y virtual.","correcta":"0"},{"posible_respuesta":"e-Learning es 100% virtual y b-Learning es combinado","retroalimentacion":"\\u00a1Muy bien! :)","correcta":"1"},{"posible_respuesta":"e-Learning es antiguo y b-Learning moderno","retroalimentacion":"No es la respuesta correcta, e-Learning es 100% virtual y b-Learning combina la educaci\\u00f3n tradicional y virtual.","correcta":"0"}]', 1, '2015-01-30 03:43:49', '2015-01-30 03:51:46', 1, 1, 55),
(56, 22, '¿Qué es gamification?', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=8PChsrkqGTk', '¿Gamification es lo mismo que videojuegos?', '1', '[{"posible_respuesta":"Si","retroalimentacion":"No es correcto, gamification usa elementos de los videojuegos como los puntos, misiones, etc., pero son diferentes.","correcta":"0"},{"posible_respuesta":"No","retroalimentacion":"\\u00a1Muy bien!, gamification usa elementos de los videojuegos como los puntos, misiones, etc., pero son diferentes.","correcta":"1"}]', 1, '2015-01-30 03:45:27', '2015-01-30 03:53:00', 1, 1, 56);

-- --------------------------------------------------------

--
-- Table structure for table `actividades_videos_usuarios`
--

CREATE TABLE IF NOT EXISTS `actividades_videos_usuarios` (
  `id_actividades_videos_usuarios` int(20) NOT NULL AUTO_INCREMENT,
  `id_actividades_videos` int(20) NOT NULL,
  `id_usuarios` int(20) NOT NULL,
  `id_cursos` int(20) NOT NULL,
  `id_modulos` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `fecha_modificado` timestamp NULL DEFAULT NULL,
  `fecha_creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_actividades_videos_usuarios`),
  KEY `id_actividades_videos` (`id_actividades_videos`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `calificaciones`
--

CREATE TABLE IF NOT EXISTS `calificaciones` (
  `id_calificaciones` int(20) NOT NULL AUTO_INCREMENT,
  `id_usuarios` int(20) NOT NULL,
  `id_cursos` int(20) NOT NULL,
  `id_actividades_barra` int(20) NOT NULL,
  `id_actividades` int(20) NOT NULL,
  `pregunta` varchar(254) NOT NULL,
  `respuesta` varchar(254) NOT NULL,
  `key_texto` text NOT NULL,
  `estado_respuesta` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_calificaciones`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_actividades_barra` (`id_actividades_barra`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `categorias_modulos_app`
--

CREATE TABLE IF NOT EXISTS `categorias_modulos_app` (
  `id_categorias_modulos_app` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `icono` varchar(200) NOT NULL,
  `id_estados` int(11) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_categorias_modulos_app`),
  KEY `id_estados` (`id_estados`),
  KEY `id_estados_2` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='categorias_modulos_app de usuario' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `categorias_modulos_app`
--

INSERT INTO `categorias_modulos_app` (`id_categorias_modulos_app`, `nombre`, `descripcion`, `icono`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(1, 'Contenidos web', 'Categoria modulos contenidos web', 'fa-file-o', 1, '2014-08-16 18:13:03', '2014-08-16 18:27:34', 1, 1, 1),
(2, 'Usuarios', 'Categoria modulo Usuarios', 'fa-users', 1, '2014-08-16 18:13:43', '2014-08-16 18:27:50', 1, 1, 2),
(3, 'Cursos', 'Categoria modulos cursos', 'fa-file-o', 1, '2014-08-16 18:14:05', '2014-08-16 18:28:04', 1, 1, 3),
(4, 'Sistema', 'Categoria modulos sistema', 'fa-file-o', 1, '2014-08-16 18:14:29', '2014-08-16 18:28:06', 1, 1, 4),
(5, 'Personalización', 'Categoria Personalización para cambiar ciertos aspectos del sistemas', 'fa-wrench', 1, '2014-08-29 04:45:19', '2014-08-29 04:49:12', 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `categoria_cursos`
--

CREATE TABLE IF NOT EXISTS `categoria_cursos` (
  `id_categoria_cursos` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(254) NOT NULL,
  `Descripcion` text NOT NULL,
  `id_estados` int(11) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(11) NOT NULL,
  `id_usuario_modificado` int(11) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_categoria_cursos`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `categoria_cursos`
--

INSERT INTO `categoria_cursos` (`id_categoria_cursos`, `nombre`, `Descripcion`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(7, 'Categoría Demo', 'Esta es la descripción de una categoría Demo.', 1, '2015-01-30 03:01:11', '2015-01-30 03:01:11', 1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `certificados`
--

CREATE TABLE IF NOT EXISTS `certificados` (
  `id_certificados` int(20) NOT NULL AUTO_INCREMENT,
  `id_usuarios` int(20) NOT NULL,
  `id_cursos` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_certificados`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_usuario_creado` (`id_usuario_creado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Table structure for table `ciudades`
--

CREATE TABLE IF NOT EXISTS `ciudades` (
  `idCiudad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `idDepartamento` int(11) NOT NULL,
  `id_estados` int(1) NOT NULL,
  PRIMARY KEY (`idCiudad`),
  KEY `idDepartamento` (`idDepartamento`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=199 ;

--
-- Dumping data for table `ciudades`
--

INSERT INTO `ciudades` (`idCiudad`, `nombre`, `idDepartamento`, `id_estados`) VALUES
(1, 'Bello', 1, 1),
(2, 'Caldas', 1, 1),
(3, 'Copacabana', 1, 1),
(4, 'Envigado', 1, 1),
(5, 'Guarne', 1, 1),
(6, 'Itagui', 1, 1),
(7, 'La Ceja', 1, 1),
(8, 'La Estrella', 1, 1),
(9, 'La Tablaza', 1, 1),
(10, 'Marinilla', 1, 1),
(11, 'Medellín', 1, 1),
(12, 'Rionegro', 1, 1),
(13, 'Sabaneta', 1, 1),
(14, 'San Antonio de Prado', 1, 1),
(15, 'San Cristóbal', 1, 1),
(16, 'Caucasia', 1, 1),
(17, 'Barranquilla', 2, 1),
(18, 'Malambo', 2, 1),
(19, 'Puerto Colombia', 2, 1),
(20, 'Soledad', 2, 1),
(21, 'Arjona', 3, 1),
(22, 'Bayunca', 3, 1),
(23, 'Carmen de Bolívar', 3, 1),
(24, 'Cartagena', 3, 1),
(25, 'Turbaco', 3, 1),
(26, 'Arcabuco', 4, 1),
(27, 'Belencito', 4, 1),
(28, 'Chiquinquirá', 4, 1),
(29, 'Combita', 4, 1),
(30, 'Cucaita', 4, 1),
(31, 'Duitama', 4, 1),
(32, 'Mongui', 4, 1),
(33, 'Nobsa', 4, 1),
(34, 'Paipa', 4, 1),
(35, 'Puerto Boyacá', 4, 1),
(36, 'Ráquira', 4, 1),
(37, 'Samaca', 4, 1),
(38, 'Santa Rosa de Viterbo', 4, 1),
(39, 'Sogamoso', 4, 1),
(40, 'Sutamerchán', 4, 1),
(41, 'Tibasosa', 4, 1),
(42, 'Tinjaca', 4, 1),
(43, 'Tunja', 4, 1),
(44, 'Ventaquemada', 4, 1),
(45, 'Villa de Leiva', 4, 1),
(46, 'La Dorada', 5, 1),
(47, 'Manizales', 5, 1),
(48, 'Villamaria', 5, 1),
(49, 'Caloto', 6, 1),
(50, 'Ortigal', 6, 1),
(51, 'Piendamo', 6, 1),
(52, 'Popayán', 6, 1),
(53, 'Puerto Tejada', 6, 1),
(54, 'Santander Quilichao', 6, 1),
(55, 'Tunia', 6, 1),
(56, 'Villarica', 6, 1),
(57, 'Valledupar', 7, 1),
(58, 'Cerete', 8, 1),
(59, 'Montería', 8, 1),
(60, 'Planeta Rica', 8, 1),
(61, 'Alban', 9, 1),
(62, 'Bogotá', 9, 1),
(63, 'Bojaca', 9, 1),
(64, 'Bosa', 9, 1),
(65, 'Briceño', 9, 1),
(66, 'Cajicá', 9, 1),
(67, 'Chía', 9, 1),
(68, 'Chinauta', 9, 1),
(69, 'Choconta', 9, 1),
(70, 'Cota', 9, 1),
(71, 'El Muña', 9, 1),
(72, 'El Rosal', 9, 1),
(73, 'Engativá', 9, 1),
(74, 'Facatativa', 9, 1),
(75, 'Fontibón', 9, 1),
(76, 'Funza', 9, 1),
(77, 'Fusagasuga', 9, 1),
(78, 'Gachancipá', 9, 1),
(79, 'Girardot', 9, 1),
(80, 'Guaduas', 9, 1),
(81, 'Guayavetal', 9, 1),
(82, 'La Calera', 9, 1),
(83, 'La Caro', 9, 1),
(84, 'Madrid', 9, 1),
(85, 'Mosquera', 9, 1),
(86, 'Nemocón', 9, 1),
(87, 'Puente Piedra', 9, 1),
(88, 'Puente Quetame', 9, 1),
(89, 'Puerto Bogotá', 9, 1),
(90, 'Puerto Salgar', 9, 1),
(91, 'Quetame', 9, 1),
(92, 'Sasaima', 9, 1),
(93, 'Sesquile', 9, 1),
(94, 'Sibaté', 9, 1),
(95, 'Silvania', 9, 1),
(96, 'Simijaca', 9, 1),
(97, 'Soacha', 9, 1),
(98, 'Sopo', 9, 1),
(99, 'Suba', 9, 1),
(100, 'Subachoque', 9, 1),
(101, 'Susa', 9, 1),
(102, 'Tabio', 9, 1),
(103, 'Tenjo', 9, 1),
(104, 'Tocancipa', 9, 1),
(105, 'Ubaté', 9, 1),
(106, 'Usaquén', 9, 1),
(107, 'Usme', 9, 1),
(108, 'Villapinzón', 9, 1),
(109, 'Villeta', 9, 1),
(110, 'Zipaquirá', 9, 1),
(111, 'Maicao', 10, 1),
(112, 'Riohacha', 10, 1),
(113, 'Aipe', 11, 1),
(114, 'Neiva', 11, 1),
(115, 'Cienaga', 12, 1),
(116, 'Gaira', 12, 1),
(117, 'Rodadero', 12, 1),
(118, 'Santa Marta', 12, 1),
(119, 'Taganga', 12, 1),
(120, 'Villavicencio', 13, 1),
(121, 'Ipiales', 14, 1),
(122, 'Pasto', 14, 1),
(123, 'Cúcuta', 15, 1),
(124, 'El Zulia', 15, 1),
(125, 'La Parada', 15, 1),
(126, 'Los Patios', 15, 1),
(127, 'Villa del Rosario', 15, 1),
(128, 'Armenia', 16, 1),
(129, 'Calarcá', 16, 1),
(130, 'Circasia', 16, 1),
(131, 'La Tebaida', 16, 1),
(132, 'Montenegro', 16, 1),
(133, 'Quimbaya', 16, 1),
(134, 'Dosquebradas', 17, 1),
(135, 'Pereira', 17, 1),
(136, 'Aratoca', 18, 1),
(137, 'Barbosa', 18, 1),
(138, 'Bucaramanga', 18, 1),
(139, 'Floridablanca', 18, 1),
(140, 'Girón', 18, 1),
(141, 'Lebrija', 18, 1),
(142, 'Oiba', 18, 1),
(143, 'Piedecuesta', 18, 1),
(144, 'Pinchote', 18, 1),
(145, 'San Gil', 18, 1),
(146, 'Socorro', 18, 1),
(147, 'Sincelejo', 19, 1),
(148, 'Armero', 20, 1),
(149, 'Buenos Aires', 20, 1),
(150, 'Castilla', 20, 1),
(151, 'Espinal', 20, 1),
(152, 'Flandes', 20, 1),
(153, 'Guamo', 20, 1),
(154, 'Honda', 20, 1),
(155, 'Ibagué', 20, 1),
(156, 'Mariquita', 20, 1),
(157, 'Melgar', 20, 1),
(158, 'Natagaima', 20, 1),
(159, 'Payande', 20, 1),
(160, 'Purificación', 20, 1),
(161, 'Saldaña', 20, 1),
(162, 'Tolemaida', 20, 1),
(163, 'Amaime', 21, 1),
(164, 'Andalucía', 21, 1),
(165, 'Buenaventura', 21, 1),
(166, 'Buga', 21, 1),
(167, 'Buga La Grande', 21, 1),
(168, 'Caicedonia', 21, 1),
(169, 'Cali', 21, 1),
(170, 'Candelaria', 21, 1),
(171, 'Cartago', 21, 1),
(172, 'Cavasa', 21, 1),
(173, 'Costa Rica', 21, 1),
(174, 'Dagua', 21, 1),
(175, 'El Carmelo', 21, 1),
(176, 'El Cerrito', 21, 1),
(177, 'El Placer', 21, 1),
(178, 'Florida', 21, 1),
(179, 'Ginebra', 21, 1),
(180, 'Guacarí', 21, 1),
(181, 'Jamundi', 21, 1),
(182, 'La Paila', 21, 1),
(183, 'La Unión', 21, 1),
(184, 'La Victoria', 21, 1),
(185, 'Loboguerrero', 21, 1),
(186, 'Palmira', 21, 1),
(187, 'Pradera', 21, 1),
(188, 'Roldanillo', 21, 1),
(189, 'Rozo', 21, 1),
(190, 'San Pedro', 21, 1),
(191, 'Sevilla', 21, 1),
(192, 'Sonso', 21, 1),
(193, 'Tulúa', 21, 1),
(194, 'Vijes', 21, 1),
(195, 'Villa Gorgona', 21, 1),
(196, 'Yotoco', 21, 1),
(197, 'Yumbo', 21, 1),
(198, 'Zarzal', 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `competencias`
--

CREATE TABLE IF NOT EXISTS `competencias` (
  `id_competencias` int(11) NOT NULL AUTO_INCREMENT,
  `id_cursos` int(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `id_estados` int(11) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_competencias`),
  KEY `id_estados` (`id_estados`),
  KEY `id_estados_2` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='competencias de usuario' AUTO_INCREMENT=18 ;

--
-- Dumping data for table `competencias`
--

INSERT INTO `competencias` (`id_competencias`, `id_cursos`, `nombre`, `descripcion`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(8, 4, 'Salud', 'Es muy fuerte !!!!!', 1, '2014-08-26 05:52:46', '2014-09-20 18:21:39', 1, 1, 2),
(10, 4, 'Bienestar', 'uff una compe dura', 1, '2014-08-26 05:53:59', '2014-09-20 18:21:39', 1, 1, 1),
(11, 11, 'compe 2', 'uffff', 1, '2014-08-26 06:03:59', '2014-08-26 06:04:03', 1, 1, 11),
(12, 11, 'nuevo', 'wdfdcvdfv', 1, '2014-08-26 06:04:09', '2014-08-26 06:04:18', 1, 1, 12),
(13, 11, 'sdcc', 'scds', 0, '2014-08-26 06:04:25', '2014-08-25 23:04:25', 1, 1, 13),
(14, 14, 'Fuerza', 'Esto es una competencia #1', 1, '2014-12-02 20:22:59', '2014-12-02 20:29:00', 1, 1, 14),
(15, 14, 'Inteligencia', 'Esto es la Competencia #2', 1, '2014-12-02 20:23:18', '2014-12-02 20:29:10', 1, 1, 15),
(16, 14, 'Amor', 'Esto es una competencia Competencia #3', 1, '2014-12-02 20:23:35', '2014-12-09 21:55:25', 1, 1, 16),
(17, 14, 'Final', 'Final', 1, '2014-12-09 22:45:47', '2014-12-09 22:45:47', 1, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `contenidos`
--

CREATE TABLE IF NOT EXISTS `contenidos` (
  `id_contenidos` int(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(254) NOT NULL,
  `descripcion` text NOT NULL,
  `foto` mediumtext NOT NULL,
  `contenido` text NOT NULL,
  `url_personalizado` text NOT NULL,
  `id_estados` int(20) NOT NULL,
  `habilitar_en_footer` int(2) NOT NULL,
  `orden` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  PRIMARY KEY (`id_contenidos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `contenidos`
--

INSERT INTO `contenidos` (`id_contenidos`, `titulo`, `descripcion`, `foto`, `contenido`, `url_personalizado`, `id_estados`, `habilitar_en_footer`, `orden`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`) VALUES
(5, 'Nosotros', 'Virtualab', '87477c73f5524f7014eff327b2eb811d.png', '<h2 style="font-family: Arial, Verdana; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal;"><font face="Verdana" size="2">VIRTUALAB</font></h2><div style="font-size: 10pt;"><p class="p1" style="text-align: justify;">Somos una compañía Colombiana fundada en el año 2012, desde nuestros inicios hemos tenido un sueño: lograr que la educación sea divertida, amigable e interactiva.</p><p class="p1" style="text-align: justify;">Todas nuestras soluciones las realizamos con innovación, amor y pasión por la enseñanza, por eso compañías como KPMG, UNE, Ministerio de Transporte, SENA, Secretaría de Salud, entre otras han confiado en nuestras soluciones.</p><p class="p1" style="text-align: justify;">Aquí es donde la magia ocurre y donde estamos convencidos que los seres humanos por naturaleza queremos aprender cosas nuevas, nuestra misión es lograrlo de tal manera que te guste hacerlo y no te aburras mientras lo haces.</p><p style="margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\n\n\n\n\n\n\n\n\n\n\n</p><p class="p2" style="text-align: center;"><b>¡Bienvenido al #VirtualTeam!</b></p></div>', '', 1, 1, 5, '2014-08-05 03:36:44', '2015-01-30 04:04:10', 1, 1),
(6, 'Términos y condiciones', 'Términos y condiciones', '', '<p class="p1" style="text-align: center;"><b>TÉRMINOS Y CONDICIONES</b></p><p class="p1" style="text-align: justify;"><b><br></b></p><p class="p1" style="font-weight: normal; text-align: justify;">Este documento (en adelante la “<span class="s1">Política de Privacidad</span>”) primordialmente establece la forma en que nosotros, es decir, el portal w<span class="s2">ww.virtualab.co</span>&nbsp;(“VIRTUALAB S.A.S.” de ahora en adelante el SITIO) recogemos, almacenamos, damos tratamiento, manejamos, administramos, transferimos, transmitimos y/o compartimos la información, sea de naturaleza personal o no, que Usted (también el “<span class="s1">Usuario</span>”) suministra o provee cuando ingresa a nuestro sitio web, al sitio móvil o cualquier otra plataforma digital, medio o canal que se desarrolle en el futuro por VIRTUALAB S.A.S. (el “<span class="s1">Sitio</span>”), o de cualquier forma utiliza nuestro Sitio, nuestra plataforma, el contenido, las aplicaciones y/o los demás servicios que ofrecemos en EL SITIO<span style="font-size: 13.3333330154419px;">.</span>&nbsp;(conjuntamente los “<span class="s1">Servicios</span>”).</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">La información que sobre el Usuario recogemos, almacenamos, manejamos, administramos, transferimos, transmitimos y/o compartimos puede o no ser de naturaleza personal, puede o no ser de carácter privado, e incluso puede ser información o datos protegidos por las leyes aplicables sobre protección de datos personales. Esta información, cualquiera sea su naturaleza, se denominará conjuntamente, para efectos de esta Política de Privacidad, “<span class="s1">Información Personal</span>”.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Cualquiera sea la naturaleza de la información, su tratamiento, manejo, almacenamiento, transferencia, transmisión y/o administración por parte de&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span><span style="font-size: 13.3333330154419px;">.</span>, respetará las normas aplicables sobre protección de datos personales. Cuando en esta Política de Privacidad se haga referencia a “nosotros”, se hace referencia a&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span><span style="font-size: 13.3333330154419px;">.</span>&nbsp;El Servicio no está disponible para menores de dieciocho (18) años.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">A través de la aceptación de esta Política de Privacidad, el Usuario de manera expresa, previa, consciente e informada, autoriza a&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;y a cualquiera otra persona jurídica y/o natural que haga uso en cualquier forma de la base de datos donde reposa la información del Usuario, a recolectar dicha información, almacenarla, manejarla, darle tratamiento, transferirla, transmitirla, comercializarla y/o publicarla, de acuerdo con lo señalado en esta Política de Privacidad.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Derechos, deberes y responsabilidades de los Usuarios</span></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario, como propietario o titular de la Información Personal, o como sujeto al que hace referencia dicha información, tendrá los derechos que las respectivas legislaciones aplicables les otorguen. En Colombia, los Usuarios (titulares de la Información Personal), tendrán los derechos establecidos en la Ley 1581 de 2012, y en la Ley 1266 de 2008, y en cualquier otra norma que las modifique, sustituya o complemente, en particular pero sin limitarse al Decreto 1377 de 2013, como los derechos al acceso, revocación, supresión, actualización, rectificación, corrección, cancelación y oposición de sus datos personales e Información Personal.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario, como titular de la Información Personal, podrá facultativamente decidir si suministra o no información a&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span><span style="font-size: 13.3333330154419px;">&nbsp;</span>y qué clase de información suministra a&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;En todo caso, para que el Usuario se pueda registrar y acceder a los Servicios, y para que nosotros podamos prestar los Servicios, el Usuario deberá proveer cierta información mínima contenida y exigida en el Sitio, diferente de los Datos Sensibles (como éste término se define adelante). El acceso al Sitio y el uso de los Servicios supone la voluntariedad del Usuario a suministrar dicha información.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario será responsable por la veracidad, autenticidad, oportunidad y fidedignidad de la Información Personal, por lo que nos reservamos el derecho a excluir de los Servicios registrados a todo Usuario que haya facilitado datos falsos, sin perjuicio de las demás acciones que procedan en Derecho.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Autorización Expresa</span></p><p class="p1" style="font-weight: normal; text-align: justify;">Una vez suministrada o proporcionada la Información Personal en los términos y forma descritos en esta Política de Privacidad, el Usuario autoriza expresamente a&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span><span style="font-size: 10pt;">&nbsp;para recolectar, almacenar, comunicar, tratar, compartir, transferir, transmitir y/o publicar la Información Personal del Usuario, y autoriza expresamente a los terceros que accedan a los Servicios para acceder, consultar y revisar la Información Personal. Por lo anterior, se considerarán autorizados para acceder, consultar y revisar la Información Personal, todos los terceros que puedan consultar el perfil de usuario del Usuario y demás Información Personal suministrada por éste a través de los Servicios.</span></p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Datos Sensibles</span></p><p class="p1" style="font-weight: normal; text-align: justify;">Se entiende por “<span class="s1">Datos Sensibles</span>” aquellos que afectan la intimidad del Usuario o cuyo uso indebido puede generar su discriminación, tales como aquellos que revelen el origen racial o étnico, la orientación política, las convicciones religiosas o filosóficas, la pertenencia a sindicatos, organizaciones sociales, de derechos humanos o que promueva intereses de cualquier partido político o que garanticen los derechos y garantías de partidos políticos de oposición así como los datos relativos a la salud, a la vida sexual y los datos biométricos.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario no estará obligado a suministrar la información relacionada con Datos Sensibles, ni la prestación de los Servicios estará condicionada a que el Usuario suministre Datos Sensibles.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Los Datos Sensibles, junto con la información bancaria y financiera del Usuario, y su clave y contraseña serán consideradas en esta Política de Privacidad, como “Información Privada” o información que no tiene el carácter de pública.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">No se considerarán Datos Sensibles para efectos de esta Política de Privacidad los que tengan relación con los “intereses” del Usuario (como actividades, aficiones, hobbies, entretenimiento, deportes, etc.), y el Usuario autoriza a&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;para hacerlos públicos y darles el tratamiento de cualquier otra información pública estipulado en este documento.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Recolección y Almacenamiento de Datos Personales y otra información</span></p><p class="p1" style="font-weight: normal; text-align: justify;">La Información Personal que en&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;recogemos y almacenamos es toda aquella información o datos que el Usuario nos proporciona e ingresa a través de los Servicios o de cualquier otra manera. La Información Personal recopilada puede incluir, respecto al Usuario, entre otros, su nombre, edad, genero, documento de identificación, dirección de email, dirección IP, número de teléfono, cumpleaños, nombres de usuario de Twitter y/o Facebook, información de uso con respecto a la forma como utiliza los Servicios, la información del navegador y del sistema operativo, y horas y fechas de acceso a los Servicios. Cuando el Usuario utiliza los Servicios, nosotros (<span style="font-size: 13.3333330154419px;">EL SITIO</span>) recibimos automáticamente la ubicación del Usuario.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">La Información Personal que nos proporciona el Usuario se utiliza para fines tales como (i) permitirle al Usuario configurar una Cuenta y un perfil de usuario que pueden utilizarse para interactuar con&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>, (ii) permitirnos mejorar el contenido de los Servicios, (iii) permitirnos personalizar el contenido que el Usuario ve, (iv) permitirnos comunicarnos con el Usuario para ofrecerle promociones y nuevas funciones, tanto de&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;como de terceros y aliados, (v) que nuestros socios, terceros y aliados comerciales puedan ofrecer sus productos y servicios y (vi) permitirnos configurar una base de datos que pueda ser objeto de comercialización u otro negocios jurídicos, a título oneroso o gratuito. También podemos recurrir a la Información Personal a fin de adaptar los Servicios de nuestra comunidad a sus necesidades, investigar la eficacia de nuestra red y Servicios y desarrollar nuevas herramientas para la comunidad.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Cuando el Usuario utiliza los Servicios, nosotros recibimos y registramos automáticamente en nuestro servidor información sobre su navegador o plataforma móvil, incluida su ubicación, dirección IP, información de cookies y la página que solicitó. Tratamos esta información como datos no personales, excepto cuando estamos obligados a hacerlo de otro modo según la legislación aplicable. A menos que se indique lo contrario en esta Política de Privacidad,&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;solo utiliza estos datos en forma global. Podremos proporcionar información global a nuestros socios sobre cómo nuestros Usuarios, colectivamente, utilizan nuestros Servicios, para que nuestros socios también puedan comprender con qué frecuencia las personas utilizan sus servicios y nuestros Servicios.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Nosotros recibimos y almacenamos información de terceros que interactúan de alguna manera con los Servicios o que nos proporcionan servicios en relación con los Servicios. Además, el Usuario podrá optar por usar aplicaciones adicionales, externas y/o compatibles con&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>, que comparten la Información Personal, datos personales, actividades y/o contenidos con&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>. Es necesario que el Usuario lea y revise las políticas de privacidad de dichas aplicaciones para entender qué información comparten. La existencia de esas aplicaciones adicionales, externas y/o compatibles no implica en ningún caso la existencia de relaciones entre&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;y el propietario del lugar web con el que se establezca, ni la aceptación y aprobación de sus contenidos o servicios.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-size: 13.3333330154419px;">EL SITIO&nbsp;</span>excluye toda responsabilidad en los sitios enlazados desde el Sitio y no pueden controlar y no controlan que entre ellos aparezcan sitios de Internet cuyos contenidos puedan resultar ilícitos, ilegales, contrarios a la moral o a las buenas costumbres o inapropiados. El Usuario, por tanto, debe extremar la prudencia en la valoración y utilización de la información, contenidos y servicios existentes en los sitios enlazados.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Manejo y tratamiento de la información</span></p><p class="p1" style="font-weight: normal; text-align: justify;">La Información Personal sobre nuestros Usuarios es una parte integral de nuestro negocio.&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;podrá compartir su Información Personal sólo de la manera que se describe en esta Política de Privacidad.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Nosotros no estamos en la obligación de conservar una copia, en ningún medio o formato, de la Información Personal, o cualquier otro tipo de información que suministre el Usuario, salvo de la autorización expresa, previa e informada que Usted nos ha entregado sobre su conocimiento y aceptación de la presente Política de Privacidad y del tratamiento de sus datos e Información Personal. El Usuario es responsable por la conservación de la versión original de la Información Personal y demás datos que nos suministre.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Además, el uso de apps de terceros desarrolladas con nuestra API está sujeto a las condiciones de uso y políticas de privacidad de los desarrolladores de dichas apps. Cierta Información Personal podrá estar a disposición de desarrolladores de terceros si el Usuario utiliza estas apps de terceros. Debe revisar las políticas de las apps y los sitios web de terceros para asegurarse de que se siente cómodo con la forma en que usan y divulgan la información que usted comparte con ellos. Nosotros no garantizamos que ellos sigan nuestras reglas o nuestra Política de Privacidad, ni respondemos por el uso que le otorguen a la Información Personal.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">A veces requerimos bienes y servicios de terceras personas, naturales o jurídicas, para desarrollar nuestra actividad empresarial. En algunos casos requerimos suministrar o compartir la Información Personal del Usuario con ellos para que nos puedan prestar los servicios y suministrar los bienes de manera correcta. En todo caso, esas personas no tienen derecho a utilizar la Información Personal que compartimos con ellos más allá de lo necesario para ayudarnos, y proporcionan un nivel comparable de protección respecto a su Información Personal.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Si&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;o su operación o activos fuesen adquiridos por un tercero, o en el hipotético caso de que&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;dé por terminada su actividad o entre en procesos de reestructuración empresarial, la Información Personal del Usuario será uno de los activos que serán transferidos al tercero o adquiridos por éste.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Podremos divulgar Información Personal cuando creamos de buena fe que dicha divulgación es necesaria para cumplir con la ley –incluidas las leyes ajenas al país de residencia del Usuario–, hacer cumplir o aplicar nuestras condiciones de uso y otros acuerdos, o proteger los derechos, propiedad o seguridad de&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>, de nuestros empleados, nuestros Usuarios u otros. Esto incluye el intercambio de información con otras empresas y organizaciones (incluso fuera del país de residencia del Usuario) para la protección contra el fraude y la reducción del riesgo crediticio.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Mediante la aceptación de esta Política de Privacidad, el Usuario autoriza de manera informada, consciente, previa y expresa, que los datos e Información Personal que suministra a&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;puedan ser Transferidos y Transmitidos (como estos conceptos se definen legalmente) a título gratuito u oneroso a otros operadores, responsables, encargados, fuentes y/o usuarios de bases de datos con el fin de concretar cualquier tipo de negocio jurídico sobre dicha información y/o reportar tal información a centrales de riesgo.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Comunicaciones por correo electrónico</span></p><p class="p1" style="font-weight: normal; text-align: justify;">Si el Usuario no quiere recibir correo electrónicos comerciales u otro tipo de correo de nuestra parte, el Usuario podrá indicar su preferencia durante el proceso de registro o enviando un mail a&nbsp;<a href="mailto:contacto@virtualab.co"><span class="s2">contacto@virtualab.co</span></a>&nbsp;haciendo la solicitud.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Tenga en cuenta que si no desea recibir avisos legales de parte nuestra, como por ejemplo avisos relativos a esta Política de Privacidad, dichos avisos legales igualmente regirán el uso de los Servicios y el Usuario es responsable de revisar si se han hecho cambios en dichos avisos legales o en la vigencia de los contenidos legales.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Protección de la Información Personal</span></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;se compromete al cumplimiento de su obligación de secreto de los datos de carácter personal que sean Información Privada (es decir que no tengan la naturaleza de pública), y de su deber de tratarlos con confidencialidad, y asume, a estos efectos, las medidas de índole técnica, organizativa y de seguridad necesarias para evitar su alteración, pérdida, tratamiento o acceso no autorizado. La Información Personal de la cuenta de&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;de cada Usuario está protegida por una contraseña para su privacidad y seguridad. El Usuario debe evitar el acceso no autorizado a su cuenta e Información Personal seleccionando y protegiendo la contraseña de forma adecuada y limitando el acceso a su computadora y navegador cerrando la sesión al finalizar el acceso a su cuenta.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;se esfuerza por proteger la Información Privada y demás información y datos del Usuario para asegurarse de que la Información Privada de la cuenta del Usuario se mantenga privada. Sin embargo,&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;no puede garantizar la seguridad de la Información Personal y demás información de la cuenta del Usuario. El ingreso o uso no autorizados, los fallos de hardware o software y otros factores, podrían comprometer la seguridad de la Información Personal del Usuario en cualquier momento.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Los Servicios pueden contener enlaces a otros sitios.&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO&nbsp;</span>no es responsable de las políticas de privacidad y/o prácticas de otros sitios. Cuando el Usuario utiliza enlaces a otros sitios, el Usuario es responsable de leer la política de privacidad que aparece en ese sitio. Esta Política de Privacidad sólo rige para la información recogida en el Servicio.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Transferencia de Información a otros países</span></p><p class="p1" style="font-weight: normal; text-align: justify;">Como quiera que la Información Personal del Usuario está disponible en la red, puede ser consultada en cualquier parte del mundo. El Usuario autoriza expresamente a&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;para transferir la Información Personal y cualquier otro tipo de datos a terceros países y mediante la aceptación de esta Política de Privacidad, de manera expresa, previa, consciente e informada autoriza la transferencia de la Información Personal fuera del país de origen del Usuario lo que puede implicar que rijan normas de protección de datos distintas a las del país de origen del Usuario.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Información Personal a la que el Usuario puede acceder</span></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;permite al Usuario acceder a la siguiente información sobre el respectivo Usuario, con el fin de consultar, visualizar, actualizar, corregir e incluso rectificar la Información Personal (o cualquier tipo de información) y asegurar que sea precisa y esté completa. El Usuario puede acceder a esta Información Personal en el sitio web de&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;visitando la página del perfil de usuario. Este listado, meramente ilustrativo, puede cambiar a medida que cambien y evolucionen los Servicios.</p><p class="p2" style="font-weight: normal; text-align: justify;"><span class="s3">·</span><span class="s4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Contraseña</p><p class="p2" style="font-weight: normal; text-align: justify;"><span class="s3">·</span><span class="s4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Dirección de email</p><p class="p2" style="font-weight: normal; text-align: justify;"><span class="s3">·</span><span class="s4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>Información básica (por ejemplo, nombre, apellido, cédula, ubicación, foto, entre otros)</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Eliminación de cuenta y/o de la Información Personal</span></p><p class="p1" style="font-weight: normal; text-align: justify;">Si el Usuario decide eliminar o cerrar su cuenta en&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO&nbsp;</span>puede hacerlo enviando un correo electrónico a la dirección&nbsp;<a href="mailto:info@virtualab.co"><span class="s2">contacto@virtualab.co</span></a>manifestando tal intención. Si el Usuario elimina su cuenta, su perfil y demás Información Personal, serán eliminados del Sitio y de los servidores de&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>, y en consecuencia el Usuario perderá todos los privilegios derivados del registro. Debido a la forma en que administramos&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>, esta eliminación podría no ser inmediata y podrían quedar copias residuales de la información de su perfil o mensajes en los medios de copia de seguridad por un máximo de noventa (90) días.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Incluso después de eliminar la información de la cuenta o perfil del Usuario, pueden permanecer copias de esa información visibles en otros lugares, en la medida en que haya sido compartida con otras personas, haya sido distribuida de alguna manera conforme a la configuración de privacidad del Usuario. La información eliminada o borrada puede permanecer en los medios de copia de seguridad por hasta noventa (90) días antes de ser eliminada de nuestros servidores.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario será libre de revocar, en cualquier tiempo, la autorización expresamente otorgada a&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;y a terceros en los términos descritos en esta Política de Privacidad. Para el efecto, podrá modificar en cualquier tiempo la Información Personal que desee. Si la revocación abarca toda la Información Personal, o involucra la eliminación de parte de la Información Personal, ello implicará un cierre de la cuenta en los términos descritos.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Cambios en la Política de Privacidad</span></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;podrá modificar esta Política de Privacidad de vez en cuando. El uso y tratamiento de la Información Personal estará regido por la Política de Privacidad vigente al momento del uso y tratamiento. Si hacemos cambios materiales en la forma en que usamos la Información Personal y demás datos, notificaremos al Usuario publicando un aviso en nuestro Sitio o enviándole un email, y tal notificación tendrá lugar antes o más tardar en el momento de la implementación de las nuevas políticas. Los Usuarios están obligados y quedarán sujetos por los cambios en la Política de Privacidad al usar los Servicios después de que dichos cambios hayan sido publicados en el Sitio.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Procedimiento y Trámite de Consultas y Reclamos:</span></p><p class="p1" style="font-weight: normal; text-align: justify;">De acuerdo a los artículos 14 y 15 de la Ley 1581 de 2012, con el objetivo de garantizar la ejecución de tal derecho, las Consultas y/o Reclamos que el Usuario desee elevar a&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;se surtirán por medio del siguiente trámite:</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Consultas:</span></p><p class="p1" style="font-weight: normal; text-align: justify;">Los Usuarios o sus causahabientes podrán consultar la Información Personal que respecto del Usuario se utilice en el Sitio. De ser necesario, y en la medida en que no conste tal información en la Cuenta del Usuario, la consulta se elevará por escrito al correo electrónico&nbsp;<a href="mailto:info@virtualab.co"><span class="s2">contacto@virtualab.co</span></a>&nbsp;&nbsp;</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">La consulta será atendida en un término máximo de diez (10) días hábiles contados a partir de la fecha de recibo de la misma. Cuando no fuere posible atender la consulta dentro de dicho término, se informará al interesado, expresando los motivos de la demora y señalando la fecha en que se atenderá su consulta, la cual en ningún caso podrá superar los cinco (5) días hábiles siguientes al vencimiento del primer término.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Reclamos:</span></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario o sus causahabientes que consideren que la información que repose en el Sitio debe ser objeto de corrección, actualización o supresión, cuando adviertan el presunto incumplimiento de cualquiera de los deberes contenidos en las leyes aplicables, o cuando pretendan revocar la autorización otorgada por medio del presente documento, podrán presentar un reclamo ante&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>, el cual será tramitado bajo las siguientes reglas:</p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-size: 10pt;">1. El reclamo se formulará mediante solicitud escrita dirigida al correo electrónico&nbsp;</span><a href="mailto:info@virtualab.co" style="font-size: 10pt;"><span class="s2">contacto@virtualab.co</span></a><span style="font-size: 10pt;">, con la identificación del Usuario, la descripción de los hechos que dan lugar al reclamo, la dirección, y acompañando los documentos que se quiera hacer valer. Si el reclamo resulta incompleto, se requerirá al interesado dentro de los cinco (5) días siguientes a la recepción del reclamo para que subsane las fallas. Transcurridos dos (2) meses desde la fecha del requerimiento, sin que el solicitante presente la información requerida, se entenderá que ha desistido del reclamo.</span></p><p class="p1" style="font-weight: normal; text-align: justify;">En caso de que quien reciba el reclamo no sea competente para resolverlo, dará traslado a quien corresponda en un término máximo de <span class="Apple-tab-span" style="white-space:pre">	</span>dos (2) días hábiles e informará de la situación al interesado.</p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-size: 10pt;">2. Una vez recibido el reclamo completo, se incluirá en el Sitio, donde reposa la información, una leyenda que diga “reclamo en trámite” y el motivo del mismo, en un término no mayor a dos (2) días hábiles. Dicha leyenda deberá mantenerse hasta que el reclamo sea decidido.</span></p><p class="p1" style="font-weight: normal; text-align: justify;">3. El término máximo para atender el reclamo será de quince (15) días hábiles contados a partir del día siguiente a la fecha de su recibo. Cuando no fuere posible atender el reclamo dentro de dicho término, se informará al interesado los motivos de la demora y la fecha en que se atenderá su reclamo, la cual en ningún caso podrá superar los ocho (8) días hábiles siguientes al vencimiento del primer término.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario o sus causahabientes sólo podrá elevar queja ante la Superintendencia de Industria y Comercio una vez haya agotado el trámite de consulta o reclamo ante el Responsable del Tratamiento o Encargado del Tratamiento.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Persona o área encargada</span></p><p class="p1" style="font-weight: normal; text-align: justify;">La recepción y atención de las consultas y los reclamos que el Usuario desee elevar ante&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;estará a cargo del editor en jefe y/o director. Así, ante esta área o persona el Usuario puede ejercer sus derechos a conocer, actualizar, rectificar y suprimir el dato y revocar la autorización.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Entrada y período de vigencia:</span></p><p class="p1" style="font-weight: normal; text-align: justify;">La presente Política de Privacidad entra en vigencia a partir del día 30 de Octubre de 2014, y estará vigente hasta que la misma se modifique expresamente por&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>, y/o hasta que se cierre el Sitio.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Información y requerimientos</span></p><p class="MsoNormal" style="font-weight: normal; text-align: justify; line-height: 18pt; vertical-align: middle;">\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p><p class="p3" style="font-weight: normal; text-align: justify;">El administrador de los Servicios es la sociedad&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>, identificada con NIT No. 900.531.561-3 Si el Usuario tiene preguntas o inquietudes respecto de la privacidad al utilizar los Servicios, o desea comunicarse con&nbsp;<span style="font-size: 13.3333330154419px;">EL SITIO</span>&nbsp;en relación o con ocasión de la recolección, manejo, administración y tratamiento de la Información Personal, se puede comunicar vía correo electrónico a la siguiente dirección:&nbsp;<a href="mailto:info@virtualab.co"><span class="s2">contacto@virtualab.co</span></a>, al teléfono (571) 309 3586 en Bogotá Colombia. Los mensajes serán atendidos a la mayor brevedad posible.</p><h2 style="font-weight: normal; font-style: normal;"></h2>', '', 1, 0, 6, '2014-09-24 19:27:44', '2015-01-30 04:11:02', 1, 1),
(7, 'Soporte', 'Soporte', '', 'Soporte', 'mailto:contacto@virtualab.co', 1, 0, 7, '2014-10-30 20:29:05', '2015-01-30 02:31:13', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `id_cursos` int(20) NOT NULL AUTO_INCREMENT,
  `id_categoria_cursos` int(20) NOT NULL,
  `titulo` varchar(254) NOT NULL,
  `descripcion` text NOT NULL,
  `foto` mediumtext NOT NULL,
  `video` varchar(254) NOT NULL,
  `contenido` text NOT NULL,
  `url_personalizado` text NOT NULL,
  `objetivos_aprendizaje` text NOT NULL,
  `prerrequisitos` text NOT NULL,
  `instructores_asignados` text NOT NULL,
  `destacar` int(2) NOT NULL,
  `id_tipo_planes` int(20) NOT NULL DEFAULT '1',
  `valor` int(20) NOT NULL,
  `url_clase_en_vivo` text NOT NULL,
  `codigo_clase` text NOT NULL,
  `id_estados` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  PRIMARY KEY (`id_cursos`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_categoria_cursos` (`id_categoria_cursos`),
  KEY `id_categoria_cursos_2` (`id_categoria_cursos`),
  KEY `id_tipo_planes` (`id_tipo_planes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `id_categoria_cursos`, `titulo`, `descripcion`, `foto`, `video`, `contenido`, `url_personalizado`, `objetivos_aprendizaje`, `prerrequisitos`, `instructores_asignados`, `destacar`, `id_tipo_planes`, `valor`, `url_clase_en_vivo`, `codigo_clase`, `id_estados`, `orden`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`) VALUES
(16, 7, '¿Qué es e-Learning?', 'Esta es la descripción de un curso Demo.', '8e01425e86335095a15249852d7ddc4a.jpg', 'https://www.youtube.com/watch?v=padvlTO9xGg', 'Aprenderás que es el e-Learning y varios tips que te ayudarán a convertirte en un experto.', '', '', 'Tener ganas de aprender sobre recursos tecnológicos en la educación.', '["97"]', 1, 1, 0, '', '', 1, 16, '2015-01-30 03:07:02', '2015-01-30 03:07:02', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cursos_asignados`
--

CREATE TABLE IF NOT EXISTS `cursos_asignados` (
  `id_cursos_asignados` int(20) NOT NULL AUTO_INCREMENT,
  `id_usuarios` int(20) NOT NULL,
  `id_cursos` int(20) NOT NULL,
  `id_estatus` int(20) NOT NULL,
  `id_tipo_planes` int(20) NOT NULL,
  `finalizado` int(1) NOT NULL DEFAULT '0',
  `posicion_modulo` int(20) NOT NULL,
  `posicion_actividad_barra` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_entrado` timestamp NULL DEFAULT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_cursos_asignados`),
  KEY `id_estatus` (`id_estatus`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_estatus_2` (`id_estatus`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_tipo_planes` (`id_tipo_planes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `cursos_asignados`
--

INSERT INTO `cursos_asignados` (`id_cursos_asignados`, `id_usuarios`, `id_cursos`, `id_estatus`, `id_tipo_planes`, `finalizado`, `posicion_modulo`, `posicion_actividad_barra`, `id_estados`, `id_usuario_creado`, `id_usuario_modificado`, `fecha_modificado`, `fecha_creado`, `fecha_entrado`, `orden`) VALUES
(146, 99, 16, 5, 2, 0, 0, 0, 1, 1, 1, '2015-01-30 04:42:56', '2015-01-30 04:42:42', NULL, 146);

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` (`idDepartamento`, `nombre`) VALUES
(1, 'Antioquia'),
(2, 'Atlántico'),
(3, 'Bolívar'),
(4, 'Boyacá'),
(5, 'Caldas'),
(6, 'Cauca'),
(7, 'Cesar'),
(8, 'Córdoba'),
(9, 'Cundinamarca'),
(10, 'Guajira'),
(11, 'Huila'),
(12, 'Magdalena'),
(13, 'Meta'),
(14, 'Nariño'),
(15, 'Norte de Santander'),
(16, 'Quindío'),
(17, 'Risaralda'),
(18, 'Santander'),
(19, 'Sucre'),
(20, 'Tolima'),
(21, 'Valle del Cauca');

-- --------------------------------------------------------

--
-- Table structure for table `descargables`
--

CREATE TABLE IF NOT EXISTS `descargables` (
  `id_descargables` int(20) NOT NULL AUTO_INCREMENT,
  `id_modulos` int(20) NOT NULL,
  `nombre_descargable` varchar(254) NOT NULL,
  `descripcion_descargable` text NOT NULL,
  `archivo` varchar(254) NOT NULL,
  `id_estados` int(20) NOT NULL DEFAULT '1',
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_descargables`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_estados_2` (`id_estados`),
  KEY `id_cursos` (`id_modulos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `diccionario`
--

CREATE TABLE IF NOT EXISTS `diccionario` (
  `id_diccionario` int(20) NOT NULL AUTO_INCREMENT,
  `singular` varchar(254) NOT NULL,
  `plural` varchar(200) NOT NULL,
  `llave` varchar(100) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_diccionario`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `diccionario`
--

INSERT INTO `diccionario` (`id_diccionario`, `singular`, `plural`, `llave`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(1, 'Profesor', 'Profesores', '{docente}', 1, '2014-08-23 21:04:20', '2015-01-30 02:57:34', 1, 1, 1),
(2, 'Estudiante', 'Estudiantes', '{estudiante}', 1, '2014-08-23 21:04:33', '2015-01-30 02:57:42', 1, 1, 2),
(3, 'Módulo', 'Módulos', '{modulo}', 1, '2014-08-23 21:04:58', '2014-08-23 17:04:21', 1, 1, 3),
(4, 'Actividad', 'Actividades', '{actividades}', 1, '2014-08-23 21:05:10', '2014-09-13 15:08:30', 1, 1, 4),
(5, 'Evaluación', 'Evaluaciones', '{evaluaciones}', 1, '2014-08-23 21:05:32', '2014-08-23 21:12:15', 1, 1, 5),
(6, 'Pagina de aterrizaje', 'Paginas de aterrizaje', '{landings}', 1, '2014-09-16 19:11:34', '2014-09-16 19:11:34', 1, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `encuestas`
--

CREATE TABLE IF NOT EXISTS `encuestas` (
  `id_encuestas` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(254) NOT NULL,
  `descripcion` text NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha_modificado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_encuestas`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `encuestas`
--

INSERT INTO `encuestas` (`id_encuestas`, `nombre`, `descripcion`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(2, ' ENCUESTA DE SATISFACCIÓN', ' ENCUESTA DE SATISFACCIÓN al finalizar un curso', 1, '2014-12-05 23:14:35', '2014-12-05 22:53:33', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `encuestas_detalle`
--

CREATE TABLE IF NOT EXISTS `encuestas_detalle` (
  `id_encuestas_detalle` int(20) NOT NULL AUTO_INCREMENT,
  `id_encuestas` int(20) NOT NULL,
  `pregunta` varchar(254) NOT NULL,
  `variables_pregunta` text NOT NULL,
  `tipo_pregunta` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha_modificado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_encuestas_detalle`),
  KEY `id_encuestas` (`id_encuestas`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `encuestas_detalle`
--

INSERT INTO `encuestas_detalle` (`id_encuestas_detalle`, `id_encuestas`, `pregunta`, `variables_pregunta`, `tipo_pregunta`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(9, 2, 'Que tal te pareció el curso?', '["Excelente","Bueno","Malo"]', 1, 1, '2014-12-06 15:40:30', '2014-12-05 23:11:52', 1, 1, 2),
(10, 2, 'Como calificas el curso?', '["Me gusta","No me gusta"]', 2, 1, '2014-12-06 15:40:27', '2014-12-05 23:13:24', 1, 1, 1),
(11, 2, 'Describe como te pareció el curso', '', 3, 1, '2014-12-06 15:40:30', '2014-12-05 23:13:43', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `encuestas_respuestas`
--

CREATE TABLE IF NOT EXISTS `encuestas_respuestas` (
  `id_encuestas_respuestas` int(20) NOT NULL AUTO_INCREMENT,
  `id_encuestas_detalle` int(20) NOT NULL,
  `id_encuestas` int(20) NOT NULL,
  `respuesta` text NOT NULL,
  `id_usuarios` int(20) NOT NULL,
  `id_cursos` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_encuestas_respuestas`),
  KEY `	id_encuestas_detalle` (`id_encuestas_detalle`),
  KEY `id_encuestas` (`id_encuestas`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_usuario_creado_2` (`id_usuario_creado`),
  KEY `id_usuario_modificado_2` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

-- --------------------------------------------------------

--
-- Table structure for table `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `id_estados` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `descripcion` mediumtext NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  PRIMARY KEY (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Estados disponibles en el sistema' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `estados`
--

INSERT INTO `estados` (`id_estados`, `nombre`, `descripcion`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`) VALUES
(0, 'Inactivo', 'Estado inactivo del sistema', '2014-07-23 22:33:53', '2014-07-23 22:33:59', 1, 1),
(1, 'Activo', 'Estado activo en el sistema', '2014-07-21 21:23:33', '2014-07-21 21:24:27', 1, 1),
(2, 'Realizado', 'Estado utilizado para la opcion de actividades realizadas y evaluacion calificada', '2014-07-21 21:23:33', '2014-09-10 22:38:30', 1, 1),
(4, 'Sin realizar', 'Estado utlizado para el docente en lisar actividades de estudiantes y saber que ha realizado y que no ha realizado actividades.', '2014-09-10 22:37:39', '2014-09-29 22:17:44', 1, 1),
(5, 'Por calificar', 'Estado para las evaluaciones en rol docente', '2014-09-10 22:38:10', '2014-09-29 22:17:48', 1, 1),
(6, 'Finalizado', 'Cuando un estudiante ha finalizado un curso (esto es para dar posibilidad de inscribirte otros estudiantes y tenerlos activos en el curso)', '2014-09-13 15:22:55', '2014-09-29 22:17:52', 1, 1),
(7, 'Utilizado', 'Estado para las cajas sorpresas cuando es utilizado un premio y de esa forma no volverlo a utilizar', '2014-09-29 22:17:33', '2014-09-29 22:17:33', 1, 1),
(8, 'No leido', 'Estado de no leido para las notificaciones', '2014-10-01 20:05:37', '2014-10-01 20:05:37', 1, 1),
(9, 'Respondido', 'Estado leido para las notificaciones', '2014-10-01 20:05:59', '2014-10-28 20:06:22', 1, 1),
(10, 'No utilizado', 'Estado para la caja sorpresa si no ha utilizado la oportunidad de crear un foro puntualmente', '2014-10-02 20:09:15', '2014-10-02 20:09:15', 1, 1),
(11, 'Para premios', 'Estado para los modulos donde se debe almacenar las actividades de videos premium de caja sorpresa', '2014-10-02 21:55:35', '2014-10-02 21:59:45', 1, 1),
(12, 'Calificado', 'Estado para calificar las preguntas tipo texto', '2014-10-16 21:03:43', '2014-10-16 21:03:43', 1, 1),
(13, 'Eliminado', 'Estado de eliminado para los mensajes del modelo inbox', '2014-10-22 22:45:09', '2014-10-22 22:45:09', 1, 1),
(14, 'Pagado', 'Estado para los pagos que se realicen del curso', '2014-10-23 22:37:14', '2014-10-23 22:37:14', 1, 1),
(15, 'No leido', 'Estado no leido para las notificaciones', '2014-10-28 21:07:45', '2014-10-28 21:07:45', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `estatus`
--

CREATE TABLE IF NOT EXISTS `estatus` (
  `id_estatus` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `Descripcion` text NOT NULL,
  `minimo_puntos` int(20) NOT NULL,
  `id_estados` int(11) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_estatus`),
  KEY `id_estados` (`id_estados`),
  KEY `id_estados_2` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='estatus de usuario' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `estatus`
--

INSERT INTO `estatus` (`id_estatus`, `nombre`, `Descripcion`, `minimo_puntos`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(1, 'Sistema', 'Estatus de sistema solo para el administrador y master', 0, 1, '2014-09-02 22:05:03', '2014-09-02 22:05:19', 1, 1, 1),
(5, 'Nuevo', 'Estatus de Nuevo', 0, 1, '2014-07-26 03:18:51', '2014-08-05 05:31:54', 1, 1, 2),
(6, 'Experto', 'Estatus de Experto', 50, 1, '2014-07-26 03:19:04', '2014-09-17 20:31:35', 1, 1, 3),
(7, 'Campeon', 'Estatus de Campeon', 100, 1, '2014-07-26 03:19:16', '2014-09-17 20:31:45', 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `landings`
--

CREATE TABLE IF NOT EXISTS `landings` (
  `id_landings` int(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(254) NOT NULL,
  `descripcion` text NOT NULL,
  `foto` mediumtext NOT NULL,
  `url_video` varchar(254) NOT NULL,
  `contenido` text NOT NULL,
  `id_estados` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  PRIMARY KEY (`id_landings`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_estados` (`id_estados`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `landings`
--

INSERT INTO `landings` (`id_landings`, `titulo`, `descripcion`, `foto`, `url_video`, `contenido`, `id_estados`, `orden`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`) VALUES
(8, 'Ejemplo landing', 'Éste es un ejemplo de una landing', 'edc25f887906cfb295256dc9d1055976.png', '', '<font size="2">Éste es el ejemplo de contenido de landing</font>', 1, 8, '2014-09-16 20:33:39', '2015-01-30 02:39:01', 1, 1),
(9, 'Ejemplo landing video', 'Éste es un ejemplo de landing con video', '', 'https://www.youtube.com/watch?v=padvlTO9xGg', 'Éste es el ejemplo de contenido de una landing.', 1, 9, '2015-01-30 02:40:34', '2015-01-30 02:40:34', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `landings_usuarios`
--

CREATE TABLE IF NOT EXISTS `landings_usuarios` (
  `id_landings_usuarios` int(20) NOT NULL AUTO_INCREMENT,
  `id_landings` int(20) NOT NULL,
  `nombres` varchar(254) NOT NULL,
  `apellidos` varchar(254) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `telefono` varchar(254) NOT NULL,
  `recibir_ofertas` int(2) NOT NULL DEFAULT '0',
  `id_estados` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  PRIMARY KEY (`id_landings_usuarios`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_estados` (`id_estados`),
  KEY `id_estados_2` (`id_estados`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `landings_usuarios`
--

INSERT INTO `landings_usuarios` (`id_landings_usuarios`, `id_landings`, `nombres`, `apellidos`, `correo`, `telefono`, `recibir_ofertas`, `id_estados`, `orden`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`) VALUES
(1, 6, 'Edwin', 'Garzon', 'gauriel@msn.com', '1234567', 0, 1, 1, '2014-10-21 21:26:01', '2014-10-21 21:26:01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `logros`
--

CREATE TABLE IF NOT EXISTS `logros` (
  `id_logros` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `foto` mediumtext NOT NULL,
  `Descripcion` text NOT NULL,
  `id_estados` int(11) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_logros`),
  KEY `id_estados` (`id_estados`),
  KEY `id_estados_2` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Logros del sistema' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `logros`
--

INSERT INTO `logros` (`id_logros`, `nombre`, `foto`, `Descripcion`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(5, 'Astuto', '8edb664384f18ffbc13118a91207f3b5.png', 'Eres el usuario más astuto de Eduga.', 1, '2014-10-08 19:40:25', '2015-01-30 03:40:09', 1, 1, 5),
(6, 'Guerrero', 'fa2a948ffb12d20268eac5a5e3564d56.png', 'Tienes coraje y ganas para salir adelante en la vida.', 1, '2014-10-08 22:31:03', '2015-01-30 03:40:49', 1, 1, 6),
(7, 'Buena suerte', 'bd98e81c41c212dd812b8b3c90517b2b.png', '¡Definitivamente eres una persona con muy buena suerte!', 1, '2014-10-08 22:40:28', '2015-01-30 03:40:31', 1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `logros_usuarios`
--

CREATE TABLE IF NOT EXISTS `logros_usuarios` (
  `id_logros_usuarios` int(20) NOT NULL AUTO_INCREMENT,
  `id_cursos` int(20) NOT NULL,
  `id_modulos` int(20) NOT NULL,
  `id_logros` int(20) NOT NULL,
  `id_usuarios` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_logros_usuarios`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_logros` (`id_logros`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_modulos` (`id_modulos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

-- --------------------------------------------------------

--
-- Table structure for table `mensajes`
--

CREATE TABLE IF NOT EXISTS `mensajes` (
  `id_mensajes` int(20) NOT NULL AUTO_INCREMENT,
  `id_mensajes_parent` int(20) NOT NULL DEFAULT '0',
  `mensaje` text NOT NULL,
  `id_usuarios` int(20) NOT NULL,
  `id_cursos` int(20) NOT NULL,
  `id_modulos` int(20) NOT NULL,
  `id_actividades_barra` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_mensajes`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

-- --------------------------------------------------------

--
-- Table structure for table `modulos`
--

CREATE TABLE IF NOT EXISTS `modulos` (
  `id_modulos` int(11) NOT NULL AUTO_INCREMENT,
  `id_cursos` int(20) NOT NULL,
  `nombre_modulo` varchar(200) NOT NULL,
  `introduccion_modulo` text NOT NULL,
  `contenido_modulo` text NOT NULL,
  `foto` mediumtext NOT NULL,
  `id_estados` int(11) NOT NULL,
  `id_tipo_planes` int(1) NOT NULL DEFAULT '1',
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_modulos`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado_2` (`id_usuario_creado`),
  KEY `id_usuario_modificado_2` (`id_usuario_modificado`),
  KEY `id_tipo_planes` (`id_tipo_planes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Modulos instalados' AUTO_INCREMENT=25 ;

--
-- Dumping data for table `modulos`
--

INSERT INTO `modulos` (`id_modulos`, `id_cursos`, `nombre_modulo`, `introduccion_modulo`, `contenido_modulo`, `foto`, `id_estados`, `id_tipo_planes`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(22, 16, 'Básico', 'Principios del e-Learning', '0', '', 1, 1, '2015-01-30 03:36:00', '2015-01-30 03:36:26', 1, 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `modulos_app`
--

CREATE TABLE IF NOT EXISTS `modulos_app` (
  `id_modulos_app` int(11) NOT NULL AUTO_INCREMENT,
  `id_categorias_modulos_app` int(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `llave` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `carpeta` varchar(254) NOT NULL,
  `id_estados` int(11) NOT NULL,
  `mostrar` int(2) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_modulos_app`),
  KEY `id_estados` (`id_estados`),
  KEY `id_estados_2` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `  id_categorias_modulos_app` (`id_categorias_modulos_app`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='modulos_app de usuario' AUTO_INCREMENT=34 ;

--
-- Dumping data for table `modulos_app`
--

INSERT INTO `modulos_app` (`id_modulos_app`, `id_categorias_modulos_app`, `nombre`, `llave`, `descripcion`, `carpeta`, `id_estados`, `mostrar`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(1, 1, 'Contenidos', '', 'Modulo contenidos para la web', 'contenidos', 1, 1, '2014-08-16 18:11:22', '2014-08-25 19:01:04', 1, 1, 1),
(2, 1, 'Noticias', '', 'Modulo noticias', 'noticias', 1, 1, '2014-08-16 18:11:51', '2014-08-25 19:01:05', 1, 1, 2),
(3, 2, 'Masters y administradores', '', 'Modulo masters y administradores', 'usuarios', 1, 1, '2014-08-16 18:18:05', '2014-08-19 20:14:53', 1, 1, 3),
(4, 2, 'Instructores', '{docente}', 'Modulo instructores', 'instructores', 1, 1, '2014-08-16 18:18:49', '2014-08-23 14:20:22', 1, 1, 4),
(5, 2, 'Aprendices', '{estudiante}', 'Modulo aprendices', 'aprendices', 1, 1, '2014-08-16 18:20:16', '2014-08-23 14:20:14', 1, 1, 5),
(6, 2, 'Lista de roles', '', 'Modulo de roles', 'roles', 1, 1, '2014-08-16 18:21:02', '2014-08-19 19:35:48', 1, 1, 6),
(7, 3, 'Categoria cursos', '', 'Modulo categoria cursos', 'categoria_cursos', 1, 1, '2014-08-16 18:21:32', '2014-08-19 19:35:49', 1, 1, 7),
(8, 3, 'Lista de cursos', '', 'Modulo lista de cursos', 'cursos', 1, 1, '2014-08-16 18:22:23', '2014-08-19 19:35:51', 1, 1, 8),
(9, 4, 'Configuración', '', 'Modulo configuracion', 'configuracion', 1, 1, '2014-08-16 18:22:59', '2014-08-19 19:35:53', 1, 1, 9),
(10, 4, 'Lista de estatus', '', 'Modulo estatus', 'estatus', 1, 1, '2014-08-16 18:23:37', '2014-08-19 19:35:54', 1, 1, 10),
(11, 4, 'Tipo de planes', '', 'Modulo tipo de planes', 'tipo_planes', 1, 1, '2014-08-16 18:24:05', '2014-08-19 19:35:56', 1, 1, 11),
(12, 4, 'Logros', '', 'Modulo logros', 'logros', 1, 1, '2014-08-16 18:24:27', '2014-08-19 19:35:57', 1, 1, 12),
(13, 4, 'Permisos', '', 'Modulo permisos', 'permisos', 1, 1, '0000-00-00 00:00:00', '2014-08-19 19:35:59', 1, 1, 13),
(14, 3, 'Actividades', '{actividades}', 'Modulo actividades', 'actividades', 1, 0, NULL, '2014-08-23 14:20:49', 1, 1, 14),
(15, 3, 'Competencias', '', 'Modulo compentencias', 'competencias', 1, 0, NULL, '2014-08-25 22:16:57', 1, 1, 15),
(17, 3, 'Descargables', '', 'Modulo descargables', 'descargables', 1, 0, NULL, '2014-12-04 21:16:53', 1, 1, 16),
(18, 3, 'Modulos', '{modulo}', 'Modulo Modulos', 'modulos', 1, 0, NULL, '2014-12-04 21:16:53', 1, 1, 17),
(19, 4, 'Configuracion', '', 'Modulo configuracion', 'configuracion', 1, 1, NULL, '2014-12-04 21:16:54', 1, 1, 18),
(20, 1, 'Pagina inicio', '', 'modulo pagina inicio', 'pagina_inicio', 1, 1, NULL, '2014-12-04 21:16:54', 1, 1, 19),
(21, 4, 'Diccionario', '', 'Modulo diccionario para las palabras administrables del sistema', 'diccionario', 1, 1, '2014-08-23 05:00:00', '2014-12-04 21:16:54', 1, 1, 20),
(22, 4, 'Modulos app', '', 'Modulos app instalados del sistema', 'modulos_app', 1, 1, NULL, '2014-12-04 21:16:54', 1, 1, 21),
(25, 4, 'Categorias Modulos app', '', 'Modulo Categorias Modulos app', 'categorias_modulos_app', 1, 1, NULL, '2014-12-04 21:16:54', 1, 1, 22),
(26, 5, 'Personalización General', '', 'Personalizacion General del sistema', 'personalizacion_general', 1, 1, '2014-08-29 05:07:34', '2014-12-04 21:16:54', 1, 1, 23),
(27, 1, 'Landing Pages', '{landings}', 'Modulo para crear landing Pages', 'landings', 1, 1, '2014-09-16 19:07:50', '2014-12-04 21:16:54', 1, 1, 24),
(28, 4, 'recompensas_aleatorias', '', 'Modulo de recompensas aleatorias para la caja sorpresa', 'recompensas_aleatorias', 1, 1, '2014-09-26 22:00:02', '2014-12-04 21:16:54', 1, 1, 25),
(29, 3, 'Preguntas', '', 'Modulo preguntas para mensajes a docentes', 'mensajes', 1, 1, '2014-10-20 23:23:24', '2014-12-04 21:16:54', 1, 1, 26),
(30, 4, 'Pagos realizados', '', 'Modulo de pagos realizados de los cursos', 'pagos_realizados', 1, 1, '2014-10-23 22:32:28', '2014-12-04 21:16:54', 1, 1, 27),
(31, 3, 'Notificaciones', '', 'Modulo notificaciones', 'notificaciones', 1, 0, '2014-10-28 20:09:32', '2014-12-09 19:49:05', 1, 1, 28),
(32, 3, 'Calificaciones', '', 'Modulo calificaciones para el docente', 'calificaciones', 1, 0, '2014-10-29 18:59:34', '2014-12-04 21:29:25', 1, 1, 30),
(33, 3, 'Encuestas', '', 'Modulo encuestas que se realizan al terminar un curso', 'encuestas', 1, 1, '2014-12-04 21:15:50', '2014-12-04 21:47:52', 1, 1, 29);

-- --------------------------------------------------------

--
-- Table structure for table `modulos_vistos`
--

CREATE TABLE IF NOT EXISTS `modulos_vistos` (
  `id_modulos_vistos` int(20) NOT NULL AUTO_INCREMENT,
  `id_cursos` int(20) NOT NULL,
  `id_modulos` int(20) NOT NULL,
  `id_actividades` int(20) NOT NULL,
  `id_usuarios` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  PRIMARY KEY (`id_modulos_vistos`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_modulos` (`id_modulos`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_actividades` (`id_actividades`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=350 ;

-- --------------------------------------------------------

--
-- Table structure for table `motivos`
--

CREATE TABLE IF NOT EXISTS `motivos` (
  `id_motivos` int(20) NOT NULL AUTO_INCREMENT,
  `motivo` text NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_motivos`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `motivos`
--

INSERT INTO `motivos` (`id_motivos`, `motivo`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(1, 'Gana puntos por inscribirse al primer curso', 1, '2014-09-17 21:39:51', '2014-09-17 21:53:27', 1, 1, 1),
(2, 'Gana puntos por actividad', 1, '2014-09-17 21:39:51', '2014-09-18 22:42:25', 1, 1, 2),
(3, 'Motivo de si es primera actividad realizada en el curso', 1, '2014-09-22 05:00:00', '2014-09-22 21:39:48', 1, 1, 3),
(4, 'Motivo si tuvo el 5% de me encanta al mensaje del foro', 1, '2014-09-30 19:44:44', '2014-09-30 19:44:50', 1, 1, 4),
(5, 'Motivo si tuvo el 10% de me encanta al mensaje del foro', 1, '2014-09-30 19:45:08', '2014-09-30 19:45:08', 1, 1, 5),
(6, 'Motivo si tuvo el 15% de me encanta al mensaje del foro', 1, '2014-09-30 19:45:38', '2014-09-30 19:45:38', 1, 1, 6),
(7, 'Motivo por compartir en facebook', 1, '2014-10-01 23:02:45', '2014-10-01 23:07:52', 1, 1, 7),
(8, 'Motivo por compartir en twitter', 1, '2014-10-01 23:08:58', '2014-10-01 23:09:03', 1, 1, 8),
(9, 'Motivo ganar puntos al finalizar el modulo.', 1, '2014-10-02 19:29:52', '2014-10-02 19:29:57', 1, 1, 9),
(10, 'Motivo por ganar puntos en premio sorpresa', 1, '2014-10-10 20:11:57', '2014-10-10 20:12:03', 1, 1, 10),
(11, 'Ganó puntos por terminar el curso completo (Version estandar)', 1, '2014-10-18 13:51:40', '2014-10-18 13:51:47', 1, 1, 11),
(12, 'Resta puntos por falta de actividad en el curso', 1, '2014-10-18 15:41:56', '2014-10-18 15:42:02', 1, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
  `id_noticias` int(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(254) NOT NULL,
  `descripcion` text NOT NULL,
  `foto` mediumtext NOT NULL,
  `contenido` text NOT NULL,
  `id_estados` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  PRIMARY KEY (`id_noticias`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `noticias`
--

INSERT INTO `noticias` (`id_noticias`, `titulo`, `descripcion`, `foto`, `contenido`, `id_estados`, `orden`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`) VALUES
(2, 'Noticia demostracion2', 'Esto es una pequeña descripcion', '', 'Contenido demo demo Contenido demo demo Contenido demo demo Contenido demo demo ', 1, 2, '2014-07-22 22:31:36', '2014-07-24 22:44:28', 1, 1),
(3, 'Noticia demostracion3', 'Esto es una pequeña descripcion', '2d86a82506fe8606ff772078b1f56ca3.png', '<span style="color: rgb(255, 0, 0);"><span style="font-weight: bold;">sssss</span><span>  </span></span><br>', 1, 1, '2014-07-22 22:31:46', '2014-08-05 03:31:51', 1, 1),
(5, 'curso 2', 'erfer', '05caffb73feb0fa0fb33dd2917f2da62.jpg', 'weff', 1, 5, '2014-07-27 00:22:42', '2014-07-26 17:22:42', 1, 1),
(6, 'Noticia demostracion3', 'Esto es una pequeña descripcion', 'bf6d369421088c82d2a839927b122b87.jpg', 'Contenido demo demo Contenido demo demo Contenido demo demo Contenido demo demo ', 1, 6, '2014-08-05 03:03:23', '2014-08-04 20:03:23', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notificaciones`
--

CREATE TABLE IF NOT EXISTS `notificaciones` (
  `id_notificaciones` int(20) NOT NULL AUTO_INCREMENT,
  `id_usuarios` int(20) NOT NULL,
  `id_cursos` int(20) NOT NULL,
  `id_modulos` int(20) NOT NULL,
  `id_actividades_barra` int(20) NOT NULL,
  `mensaje` text NOT NULL,
  `variable_extra` text,
  `id_estados` int(20) NOT NULL,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) DEFAULT NULL,
  `fecha_modificado` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha_creado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_notificaciones`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_actividades_barra` (`id_actividades_barra`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_modulos` (`id_modulos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=468 ;

-- --------------------------------------------------------

--
-- Table structure for table `pagina_inicio`
--

CREATE TABLE IF NOT EXISTS `pagina_inicio` (
  `id_pagina_inicio` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(254) NOT NULL,
  `descripcion` text NOT NULL,
  `keywords` text NOT NULL,
  `slogan` text NOT NULL,
  `foto_banner` text NOT NULL,
  `cajas` text NOT NULL,
  `ver_cursos` text NOT NULL,
  `titulo_registrate` varchar(254) NOT NULL,
  `titulo_testimonios` text NOT NULL,
  `titulo_destacados` text NOT NULL,
  `descripcion_destacados` text NOT NULL,
  `planes` text NOT NULL,
  `testimonios` text NOT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_modificado` int(20) NOT NULL,
  PRIMARY KEY (`id_pagina_inicio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pagina_inicio`
--

INSERT INTO `pagina_inicio` (`id_pagina_inicio`, `titulo`, `descripcion`, `keywords`, `slogan`, `foto_banner`, `cajas`, `ver_cursos`, `titulo_registrate`, `titulo_testimonios`, `titulo_destacados`, `descripcion_destacados`, `planes`, `testimonios`, `fecha_modificado`, `id_usuario_modificado`) VALUES
(1, 'Home', '¡Plataforma educativa e-Learning donde el aprendizaje es divertido, amigable e interactivo!', 'educación virtual, e-learning, plataforma lms, plataforma educativa, educación interactiva, educación divertida', '¡Plataforma educativa e-Learning donde el aprendizaje es divertido, amigable e interactivo!', 'fcb39dbd33d91034ddbc093d4400295e.jpg', '{"titulos":"[{\\"atributo_titulo1\\":\\"Gamification\\"},{\\"atributo_titulo2\\":\\"Multidispositivo\\"},{\\"atributo_titulo3\\":\\"Reportes de aprendizaje\\"}]","contenidos":"[{\\"atributo_contenido1\\":\\"Aprende por medio de puntos, logros, estatus, premios y muchas mas sorpresas.\\"},{\\"atributo_contenido2\\":\\"Accede a tus cursos desde tu smartphone, tablet o computador.\\"},{\\"atributo_contenido3\\":\\"Conocer\\\\u00e1s las calificaciones y cumplimiento de objetivos de tus estudiantes.\\"}]","atributo_fotos":"[{\\"atributo_foto1\\":\\"72efb99cdbf95c16ad0a669388de3561.png\\"},{\\"atributo_foto2\\":\\"79fa17b2cde14b8b2ae1e3ff321f62f7.png\\"},{\\"atributo_foto3\\":\\"1fdcb0a62c276327fc18e4d7bf7ee23d.png\\"}]"}', '{"boton_nombre":"PRUEBA EL DEMO","boton_url":"\\/cursos"}', '¡Prueba el Demo!', '{"titulo_testimonios":"Premios y Reconocimientos","des_testimonios":"+10.000 aprendices en Am\\u00e9rica Latina"}', 'Ejemplo de cursos', '¡Disfruta instantáneamente de éste curso que tenemos para ti!', '{"planes_valores":"[\\"e-Learning\\",\\"Personalizada\\"]","lineas1":"[\\"Clases en vivo con hangouts\\",\\"Contenidos de alta calidad\\"]","lineas2":"[\\"Videojuegos\\",\\"Videos con expertos\\"]","lineas3":"[\\"Reportes de aprendizaje\\",\\"Respuesta a todas tus preguntas\\"]","lineas4":"[\\"Certificados autom\\\\u00e1ticos\\",\\"Mensajes directos\\"]","id_planes":"[\\"2\\",\\"1\\"]","urls":"[\\"\\\\\\/cursos\\",\\"\\\\\\/cursos\\"]"}', '{"nombres_completos":"[{\\"testi_nombres_completos1\\":\\"Innpulsa\\"},{\\"testi_nombres_completos2\\":\\"Universidad EAN\\"},{\\"testi_nombres_completos3\\":\\"Capital Semilla\\"}]","profesion":"[{\\"testi_profesion1\\":\\"Aceleraci\\\\u00f3n Argentina\\"},{\\"testi_profesion2\\":\\"Entrepreneurship\\"},{\\"testi_profesion3\\":\\"1er puesto\\"}]","texto_testimonio":"[{\\"txt_testimonio1\\":\\"De 110 proyectos fuimos elegidos para recibir una aceleraci\\\\u00f3n en negocios digitales por NXTL labs en Argentina.\\"},{\\"txt_testimonio2\\":\\"Emprendedores del a\\\\u00f1o por nuestro esfuerzo e innovaci\\\\u00f3n en la educaci\\\\u00f3n.\\"},{\\"txt_testimonio3\\":\\"De 350 proyectos ocupamos el puesto #1 por lograr que la educaci\\\\u00f3n sea divertida y entretenida.\\"}]","testi_fotos":"[{\\"testi_foto1\\":\\"2a6d6fcd4985b48b19f000d97fd30b5a.png\\"},{\\"testi_foto2\\":\\"5599c942328084dd2bf827d0478c2542.png\\"},{\\"testi_foto3\\":\\"4e9e6a1eaede3746a5cde9309b82329e.png\\"}]"}', '2015-01-30 03:33:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagos_realizados`
--

CREATE TABLE IF NOT EXISTS `pagos_realizados` (
  `id_pagos_realizados` int(20) NOT NULL AUTO_INCREMENT,
  `id_usuarios` int(20) NOT NULL,
  `id_cursos` int(20) NOT NULL,
  `valor` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_pagos_realizados`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_creado_2` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
  `id_permisos` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulos_app` int(20) NOT NULL,
  `id_roles` text NOT NULL,
  `id_estados` int(11) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_permisos`),
  KEY `id_estados` (`id_estados`),
  KEY `id_estados_2` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_modulos` (`id_modulos_app`),
  KEY `id_modulos_app` (`id_modulos_app`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='permisos de usuario' AUTO_INCREMENT=33 ;

--
-- Dumping data for table `permisos`
--

INSERT INTO `permisos` (`id_permisos`, `id_modulos_app`, `id_roles`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(2, 2, '["1"]', 1, '2014-08-20 03:51:45', '2015-01-30 02:53:07', 1, 1, 7),
(3, 3, '["1"]', 1, '2014-08-20 03:51:53', '2015-01-30 04:48:28', 1, 1, 16),
(4, 4, '["1","4"]', 1, '2014-08-20 03:51:58', '2014-08-20 22:05:17', 1, 1, 11),
(5, 5, '["1"]', 1, '2014-08-20 03:52:04', '2015-01-30 04:45:52', 1, 1, 2),
(6, 6, '["1"]', 1, '2014-08-20 03:52:10', '2015-01-30 04:48:17', 1, 1, 15),
(7, 7, '["1","4"]', 1, '2014-08-20 03:52:20', '2014-08-19 21:20:23', 1, 1, 3),
(8, 8, '["1","2","4"]', 1, '2014-08-20 03:52:27', '2014-11-26 20:23:51', 1, 1, 8),
(10, 10, '["1"]', 1, '2014-08-20 03:52:39', '2015-01-30 04:46:35', 1, 1, 10),
(11, 11, '["1"]', 1, '2014-08-20 03:52:46', '2015-01-30 04:48:37', 1, 1, 17),
(12, 12, '["1","2","4"]', 1, '2014-08-20 03:52:52', '2015-01-30 04:47:26', 1, 1, 12),
(13, 13, '["1"]', 1, '2014-08-20 03:52:58', '2015-01-30 04:47:55', 1, 1, 14),
(14, 14, '["1","2","4"]', 1, '2014-08-20 03:53:24', '2014-09-10 22:13:37', 1, 1, 1),
(15, 15, '["1","4"]', 1, '2014-08-20 03:53:31', '2014-08-19 21:20:27', 1, 1, 4),
(17, 17, '["1","2"]', 1, '2014-08-20 04:13:06', '2014-09-10 22:13:44', 1, 1, 9),
(18, 18, '["1","2","4"]', 1, '2014-08-20 04:14:09', '2014-08-23 05:50:15', 1, 1, 13),
(19, 19, '["1"]', 0, '2014-08-20 04:22:29', '2015-01-30 04:49:20', 1, 1, 18),
(20, 20, '["1"]', 1, '2014-08-21 05:04:36', '2014-08-22 02:28:14', 1, 1, 5),
(21, 1, '["1"]', 1, '2014-08-22 02:33:44', '2014-08-21 19:33:44', 1, 1, 21),
(22, 21, '["1"]', 1, '2014-08-23 20:57:15', '2014-08-23 13:57:15', 1, 1, 22),
(23, 22, '["1"]', 1, '2014-08-24 00:47:58', '2014-08-24 00:48:44', 1, 1, 23),
(24, 25, '["1"]', 1, '2014-08-29 04:38:19', '2014-08-28 21:38:19', 1, 1, 24),
(25, 26, '["1"]', 1, '2014-08-29 05:08:21', '2014-08-28 22:08:21', 1, 1, 25),
(26, 27, '["1","4"]', 1, '2014-09-16 19:08:13', '2014-09-16 19:09:32', 1, 1, 26),
(27, 28, '["1"]', 1, '2014-09-26 22:00:16', '2015-01-30 04:50:14', 1, 1, 27),
(28, 29, '["1","2"]', 1, '2014-10-20 23:23:56', '2014-10-20 23:23:56', 1, 1, 28),
(29, 30, '["1","4"]', 1, '2014-10-23 22:32:38', '2014-10-23 22:32:39', 1, 1, 29),
(30, 31, '["1","2","4"]', 1, '2014-10-28 20:10:11', '2014-10-28 20:10:11', 1, 1, 30),
(31, 32, '["1","2","4"]', 1, '2014-10-29 18:59:47', '2014-11-27 22:00:08', 1, 1, 31),
(32, 33, '["1","4"]', 1, '2014-12-04 21:16:11', '2014-12-04 21:19:17', 1, 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `personalizacion_general`
--

CREATE TABLE IF NOT EXISTS `personalizacion_general` (
  `id_personalizacion_general` int(20) NOT NULL AUTO_INCREMENT,
  `nombre_sistema` varchar(254) NOT NULL,
  `nombre_contacto` varchar(254) NOT NULL,
  `correo_contacto` varchar(254) NOT NULL,
  `base_url` varchar(200) NOT NULL,
  `descripcion_sistema` text NOT NULL,
  `keywords_sistema` text NOT NULL,
  `logo` varchar(254) NOT NULL,
  `image_footer` varchar(254) NOT NULL,
  `fuente_general` varchar(100) NOT NULL,
  `colores_sistema1` varchar(100) NOT NULL,
  `colores_sistema2` varchar(100) NOT NULL,
  `colores_sistema3` varchar(100) NOT NULL,
  `colores_sistema4` varchar(100) NOT NULL,
  `facebook_sistema` varchar(254) NOT NULL,
  `twitter_sistema` varchar(254) NOT NULL,
  `copyright_nombre` varchar(254) NOT NULL,
  `copyright_url` varchar(254) NOT NULL,
  `info_contacto` text NOT NULL,
  `certificado_texto1` text NOT NULL,
  `certificado_texto2` text NOT NULL,
  `certificado_texto3` text NOT NULL,
  `certificado_footer` text NOT NULL,
  `certificado_logo` text NOT NULL,
  `google_analytics` text NOT NULL,
  PRIMARY KEY (`id_personalizacion_general`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `personalizacion_general`
--

INSERT INTO `personalizacion_general` (`id_personalizacion_general`, `nombre_sistema`, `nombre_contacto`, `correo_contacto`, `base_url`, `descripcion_sistema`, `keywords_sistema`, `logo`, `image_footer`, `fuente_general`, `colores_sistema1`, `colores_sistema2`, `colores_sistema3`, `colores_sistema4`, `facebook_sistema`, `twitter_sistema`, `copyright_nombre`, `copyright_url`, `info_contacto`, `certificado_texto1`, `certificado_texto2`, `certificado_texto3`, `certificado_footer`, `certificado_logo`, `google_analytics`) VALUES
(1, 'EDUGA', 'EDUGA | Virtualab', 'contacto@virtualab.co', 'http://plataforma.virtualab.co', '¡Plataforma educativa e-Learning donde el aprendizaje es divertido, amigable e interactivo!', 'e-Learning, plataforma educativa,', '8e8757ee3fc46751c0c282c8c277d963.png', '', 'Open Sans', '#a03110', '#c54825', '#a03110', '0', 'http://www.facebook.com/virtualab', 'http://www.twitter.com/virtualab_', 'Virtualab', 'http://www.virtualab.co', 'Bogotá - Colombia\ncontacto@virtualab.co', '<b>VIRTUALAB S.A.S.</b>', 'NIT 900.531.561-3', 'Certifica la asistencia online y aprobación del curso', '', '', '<script>\n  (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n  })(window,document,''script'',''//www.google-analytics.com/analytics.js'',''ga'');\n\n  ga(''create'', ''UA-57138643-1'', ''auto'');\n  ga(''send'', ''pageview'');\n\n</script>');

-- --------------------------------------------------------

--
-- Table structure for table `programacion_envio`
--

CREATE TABLE IF NOT EXISTS `programacion_envio` (
  `id_programacion_envio` int(11) NOT NULL AUTO_INCREMENT,
  `curso` varchar(254) NOT NULL,
  `mensaje` text NOT NULL,
  `id_usuarios` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_envio` varchar(254) NOT NULL,
  `hora_envio` varchar(254) NOT NULL,
  `id_cursos` int(20) NOT NULL,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_programacion_envio`),
  UNIQUE KEY `id_cursos_2` (`id_cursos`),
  KEY `id_cursos` (`id_cursos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `puntaje`
--

CREATE TABLE IF NOT EXISTS `puntaje` (
  `id_puntaje` int(20) NOT NULL AUTO_INCREMENT,
  `id_cursos` int(20) NOT NULL,
  `id_modulos` int(20) NOT NULL,
  `id_actividades_barra` int(20) NOT NULL,
  `variable_extra` text,
  `id_usuarios` int(20) NOT NULL,
  `puntaje` int(20) NOT NULL,
  `id_motivos` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  PRIMARY KEY (`id_puntaje`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_modulos` (`id_modulos`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `puntaje` (`puntaje`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_estados` (`id_estados`),
  KEY `id_motivos` (`id_motivos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=454 ;

-- --------------------------------------------------------

--
-- Table structure for table `recompensas_aleatorias`
--

CREATE TABLE IF NOT EXISTS `recompensas_aleatorias` (
  `id_recompensas_aleatorias` int(20) NOT NULL AUTO_INCREMENT,
  `puntos` int(20) NOT NULL,
  `id_actividades_videos` int(20) NOT NULL,
  `if_foro` int(1) NOT NULL,
  `id_logros` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_recompensas_aleatorias`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `recompensas_aleatorias`
--

INSERT INTO `recompensas_aleatorias` (`id_recompensas_aleatorias`, `puntos`, `id_actividades_videos`, `if_foro`, `id_logros`, `id_estados`, `id_usuario_creado`, `id_usuario_modificado`, `fecha_creado`, `fecha_modificado`, `orden`) VALUES
(1, 26, 0, 0, 0, 0, 1, 1, '2014-09-29 20:49:14', '2014-10-18 20:50:55', 1),
(5, 6, 0, 0, 0, 0, 1, 1, '2014-09-29 21:12:16', '2014-10-18 20:51:03', 5),
(7, 3, 0, 0, 0, 0, 1, 1, '2014-09-29 21:28:02', '2014-11-15 22:12:10', 7),
(8, 0, 0, 0, 7, 1, 1, 1, '2014-10-10 23:11:31', '2014-10-10 23:11:31', 8),
(10, 0, 39, 0, 0, 0, 79, 1, '2014-11-27 20:40:51', '2014-12-08 16:17:59', 10),
(11, 0, 0, 1, 0, 0, 79, 1, '2014-11-27 20:40:58', '2014-12-08 16:18:08', 11);

-- --------------------------------------------------------

--
-- Table structure for table `recompensas_aleatorias_usuarios`
--

CREATE TABLE IF NOT EXISTS `recompensas_aleatorias_usuarios` (
  `id_recompensas_aleatorias_usuarios` int(20) NOT NULL AUTO_INCREMENT,
  `id_recompensas_aleatorias` int(20) NOT NULL,
  `id_usuarios` int(20) NOT NULL,
  `id_cursos` int(20) NOT NULL,
  `id_modulos` int(20) NOT NULL,
  `id_tipos_premio` int(20) NOT NULL,
  `valor` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_recompensas_aleatorias_usuarios`),
  KEY `id_usuarios` (`id_usuarios`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_cursos` (`id_cursos`),
  KEY `id_modulos` (`id_modulos`),
  KEY `id_tipos_premio` (`id_tipos_premio`),
  KEY ` id_recompensas_aleatorias` (`id_recompensas_aleatorias`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id_roles` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `Descripcion` text NOT NULL,
  `tabla` varchar(200) NOT NULL,
  `id_estados` int(11) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_roles`),
  KEY `id_estados` (`id_estados`),
  KEY `id_estados_2` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Roles de usuario' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id_roles`, `nombre`, `Descripcion`, `tabla`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(1, 'Master', 'Master con acceso todo al sistema', 'usuarios', 1, '2014-07-21 21:18:40', '2014-08-02 17:32:53', 1, 1, 1),
(2, 'Profesor', 'Rol de docente', 'instructores', 1, '2014-07-26 02:44:00', '2014-08-23 22:11:24', 1, 1, 3),
(3, 'Estudiante', 'Aprendiz del sistema', 'aprendices', 1, '2014-07-26 02:44:37', '2014-08-23 22:11:50', 1, 1, 4),
(4, 'Administrador', 'Administrador del sistema por parte del cliente.', 'usuarios', 1, '2014-08-03 00:25:16', '2014-08-02 17:33:13', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tipos_premio`
--

CREATE TABLE IF NOT EXISTS `tipos_premio` (
  `id_tipos_premio` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_tipos_premio`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tipos_premio`
--

INSERT INTO `tipos_premio` (`id_tipos_premio`, `nombre`, `id_estados`, `id_usuario_creado`, `id_usuario_modificado`, `fecha_creado`, `fecha_modificado`, `orden`) VALUES
(1, 'premio de Puntos', 1, 1, 1, '2014-09-29 22:31:33', '2014-09-29 22:31:33', 1),
(2, 'Premio video', 1, 1, 1, '2014-09-29 22:31:33', '2014-09-29 22:31:33', 2),
(3, 'Premio foro', 1, 1, 1, '2014-09-29 22:32:18', '2014-09-29 22:32:18', 3),
(4, 'Premio logro', 1, 1, 1, '2014-09-29 22:32:18', '2014-09-29 22:32:18', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_actividades`
--

CREATE TABLE IF NOT EXISTS `tipo_actividades` (
  `id_tipo_actividades` int(20) NOT NULL AUTO_INCREMENT,
  `nombre_tipo_actividades` varchar(254) NOT NULL,
  `descripcion_tipo_actividades` text NOT NULL,
  `tabla_actividad` varchar(200) NOT NULL,
  `id_estados` int(5) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_tipo_actividades`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tipo_actividades`
--

INSERT INTO `tipo_actividades` (`id_tipo_actividades`, `nombre_tipo_actividades`, `descripcion_tipo_actividades`, `tabla_actividad`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(1, 'Video', 'Esta actividad es poner un video adicional en cualquier modulo dospinible del curso', 'actividades_videos', 1, '2014-07-29 20:52:18', '2014-07-31 19:17:51', 1, 1, 2),
(2, 'Foro', 'Esta actividad es para generar un tema en el foro.', 'actividades_foro', 1, '2014-07-29 20:54:11', '2014-07-31 19:17:54', 1, 1, 1),
(3, 'Evaluacion', 'Esta actividad es para generar una evaluacion en cada modulo al terminar.', 'actividades_evaluacion', 1, '2014-07-29 20:54:41', '2014-07-30 19:07:55', 1, 1, 3),
(4, 'Clases en vivo', 'Esta actividad es para programar una clase en vivo.', 'clases_en_vivo', 0, '2014-07-29 20:55:12', '2014-10-31 01:34:03', 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_planes`
--

CREATE TABLE IF NOT EXISTS `tipo_planes` (
  `id_tipo_planes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `Descripcion` mediumtext NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `id_estados` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_tipo_planes`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_estados` (`id_estados`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='tipo_planes disponibles en el sistema' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tipo_planes`
--

INSERT INTO `tipo_planes` (`id_tipo_planes`, `nombre`, `Descripcion`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `id_estados`, `orden`) VALUES
(1, 'Interactividad', 'Plan Estándar del sistema', '2014-07-22 02:23:33', '2015-01-30 03:30:16', 1, 1, 1, 2),
(2, 'Innovación', 'Plan Premium de pago', '2014-07-24 03:33:53', '2015-01-30 03:30:06', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuarios` int(20) NOT NULL AUTO_INCREMENT COMMENT 'Id de usuario',
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(254) NOT NULL,
  `profesion` varchar(254) NOT NULL,
  `ciudad` varchar(254) NOT NULL,
  `id_tipo_planes` int(20) NOT NULL,
  `foto` mediumtext NOT NULL,
  `correo` varchar(200) NOT NULL,
  `contrasena` text NOT NULL,
  `identificacion` varchar(200) DEFAULT NULL,
  `resumen_de_perfil` text NOT NULL,
  `user_social_key` text NOT NULL,
  `id_roles` int(11) NOT NULL,
  `id_estatus` int(20) DEFAULT '5',
  `id_estados` int(11) NOT NULL,
  `mostrar_tutorial` int(1) NOT NULL,
  `cambiar_info` int(2) NOT NULL,
  `fecha_creado` timestamp NULL DEFAULT NULL,
  `fecha_modificado` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario_creado` int(20) NOT NULL,
  `id_usuario_modificado` int(20) NOT NULL,
  `orden` int(20) NOT NULL,
  PRIMARY KEY (`id_usuarios`),
  UNIQUE KEY `correo` (`correo`),
  KEY `id_roles` (`id_roles`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_usuario_creado_2` (`id_usuario_creado`),
  KEY `id_usuario_modificado_2` (`id_usuario_modificado`),
  KEY `id_tipo_planes` (`id_tipo_planes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Tablas de usuarios del sistema' AUTO_INCREMENT=100 ;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombres`, `apellidos`, `profesion`, `ciudad`, `id_tipo_planes`, `foto`, `correo`, `contrasena`, `identificacion`, `resumen_de_perfil`, `user_social_key`, `id_roles`, `id_estatus`, `id_estados`, `mostrar_tutorial`, `cambiar_info`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(1, 'Master', 'Eduga', '', '', 0, '26fe4b5543ce44254c5ae8b18599239e.png', 'contacto@virtualab.co', '16bc002dc2019b1e88428c01ee113176d88b44d3', '900531561', 'Master EDUGA', '', 1, 0, 1, 0, 0, '2014-07-21 21:14:51', '2015-01-30 06:31:28', 1, 1, 2),
(96, 'Administrador ', 'Eduga', '', '', 0, '5fc73fe093b826976448c63c61ce9c72.png', 'administrador@virtualab.co', 'a0f9d70da9e377abb2212405dabddd0239e23d41', '9005315613', 'Administrador Eduga.', '', 4, 5, 1, 0, 0, '2015-01-30 02:57:02', '2015-01-30 04:52:02', 1, 1, 96),
(97, 'Profesor', 'Demo', 'Profesión Demo', '', 0, '6e94acda883c6a627d757f85368bc662.png', 'profesor@virtualab.co', '946ec7b3c684e4fa27014effdeaf2f437665d770', '9005315611', 'Éste es un resumen de perfil Demo.', '', 2, 5, 1, 0, 0, '2015-01-30 02:59:14', '2015-01-30 02:59:14', 1, 1, 97),
(99, 'Estudiante Premium', 'Demo', '', '', 1, '28878f3814e9249e4e051ddf480140d7.png', 'estudiante@virtualab.co', '7c75b03a89a2a19f2c3e83af3ff0025d3045f7be', '9005315612', 'Soy una estudiante Premium.', '', 3, 5, 1, 0, 0, '2015-01-30 04:42:42', '2015-01-30 04:42:42', 1, 1, 99);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actividades_barra`
--
ALTER TABLE `actividades_barra`
  ADD CONSTRAINT `actividades_barra_ibfk_1` FOREIGN KEY (`id_tipo_actividades`) REFERENCES `tipo_actividades` (`id_tipo_actividades`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_barra_ibfk_2` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_barra_ibfk_3` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_barra_ibfk_4` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_barra_ibfk_5` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `actividades_evaluacion`
--
ALTER TABLE `actividades_evaluacion`
  ADD CONSTRAINT `actividades_evaluacion_ibfk_2` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_evaluacion_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_evaluacion_ibfk_4` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_evaluacion_ibfk_5` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_evaluacion_ibfk_6` FOREIGN KEY (`id_tipo_planes`) REFERENCES `tipo_planes` (`id_tipo_planes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `actividades_evaluacion_oportunidades`
--
ALTER TABLE `actividades_evaluacion_oportunidades`
  ADD CONSTRAINT `actividades_evaluacion_oportunidades_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_evaluacion_oportunidades_ibfk_2` FOREIGN KEY (`id_actividades_evaluacion`) REFERENCES `actividades_evaluacion` (`id_actividades_evaluacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_evaluacion_oportunidades_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_evaluacion_oportunidades_ibfk_4` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_evaluacion_oportunidades_ibfk_5` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `actividades_foro`
--
ALTER TABLE `actividades_foro`
  ADD CONSTRAINT `actividades_foro_ibfk_2` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_ibfk_4` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_ibfk_5` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_ibfk_6` FOREIGN KEY (`id_tipo_planes`) REFERENCES `tipo_planes` (`id_tipo_planes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `actividades_foro_megusta`
--
ALTER TABLE `actividades_foro_megusta`
  ADD CONSTRAINT `actividades_foro_megusta_ibfk_1` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_megusta_ibfk_2` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_megusta_ibfk_3` FOREIGN KEY (`id_actividades`) REFERENCES `actividades_barra` (`id_actividades_barra`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_megusta_ibfk_4` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_megusta_ibfk_5` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_megusta_ibfk_6` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `actividades_foro_mensajes`
--
ALTER TABLE `actividades_foro_mensajes`
  ADD CONSTRAINT `actividades_foro_mensajes_ibfk_1` FOREIGN KEY (`id_actividades_foro`) REFERENCES `actividades_foro` (`id_actividades_foro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_mensajes_ibfk_2` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_mensajes_ibfk_3` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_mensajes_ibfk_4` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `actividades_foro_usuarios`
--
ALTER TABLE `actividades_foro_usuarios`
  ADD CONSTRAINT `actividades_foro_usuarios_ibfk_2` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_usuarios_ibfk_3` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_usuarios_ibfk_4` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_usuarios_ibfk_5` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_foro_usuarios_ibfk_7` FOREIGN KEY (`id_actividades_barra`) REFERENCES `actividades_barra` (`id_actividades_barra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `actividades_respuestas_usuario`
--
ALTER TABLE `actividades_respuestas_usuario`
  ADD CONSTRAINT `actividades_respuestas_usuario_ibfk_1` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_respuestas_usuario_ibfk_2` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_respuestas_usuario_ibfk_3` FOREIGN KEY (`id_actividades_barra`) REFERENCES `actividades_barra` (`id_actividades_barra`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_respuestas_usuario_ibfk_4` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_respuestas_usuario_ibfk_5` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_respuestas_usuario_ibfk_6` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_respuestas_usuario_ibfk_7` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `actividades_videos`
--
ALTER TABLE `actividades_videos`
  ADD CONSTRAINT `actividades_videos_ibfk_2` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_videos_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_videos_ibfk_4` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_videos_ibfk_5` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_videos_ibfk_6` FOREIGN KEY (`id_tipo_planes`) REFERENCES `tipo_planes` (`id_tipo_planes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `actividades_videos_usuarios`
--
ALTER TABLE `actividades_videos_usuarios`
  ADD CONSTRAINT `actividades_videos_usuarios_ibfk_1` FOREIGN KEY (`id_actividades_videos`) REFERENCES `actividades_videos` (`id_actividades_videos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_videos_usuarios_ibfk_2` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_videos_usuarios_ibfk_3` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_videos_usuarios_ibfk_4` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_videos_usuarios_ibfk_5` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actividades_videos_usuarios_ibfk_6` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_3` FOREIGN KEY (`id_actividades_barra`) REFERENCES `actividades_barra` (`id_actividades_barra`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_4` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_5` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_6` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categorias_modulos_app`
--
ALTER TABLE `categorias_modulos_app`
  ADD CONSTRAINT `categorias_modulos_app_ibfk_1` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categorias_modulos_app_ibfk_2` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categorias_modulos_app_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categoria_cursos`
--
ALTER TABLE `categoria_cursos`
  ADD CONSTRAINT `categoria_cursos_ibfk_1` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categoria_cursos_ibfk_2` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categoria_cursos_ibfk_3` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `certificados`
--
ALTER TABLE `certificados`
  ADD CONSTRAINT `certificados_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `certificados_ibfk_2` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `certificados_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `certificados_ibfk_4` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `certificados_ibfk_5` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `competencias`
--
ALTER TABLE `competencias`
  ADD CONSTRAINT `competencias_ibfk_1` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `competencias_ibfk_2` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `competencias_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_ibfk_2` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_ibfk_3` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_ibfk_4` FOREIGN KEY (`id_categoria_cursos`) REFERENCES `categoria_cursos` (`id_categoria_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_ibfk_5` FOREIGN KEY (`id_tipo_planes`) REFERENCES `tipo_planes` (`id_tipo_planes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cursos_asignados`
--
ALTER TABLE `cursos_asignados`
  ADD CONSTRAINT `cursos_asignados_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_asignados_ibfk_2` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_asignados_ibfk_3` FOREIGN KEY (`id_estatus`) REFERENCES `estatus` (`id_estatus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_asignados_ibfk_4` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_asignados_ibfk_5` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_asignados_ibfk_6` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cursos_asignados_ibfk_7` FOREIGN KEY (`id_tipo_planes`) REFERENCES `tipo_planes` (`id_tipo_planes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `descargables`
--
ALTER TABLE `descargables`
  ADD CONSTRAINT `descargables_ibfk_1` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `descargables_ibfk_2` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `descargables_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `descargables_ibfk_4` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diccionario`
--
ALTER TABLE `diccionario`
  ADD CONSTRAINT `diccionario_ibfk_1` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diccionario_ibfk_2` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diccionario_ibfk_3` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `encuestas`
--
ALTER TABLE `encuestas`
  ADD CONSTRAINT `encuestas_ibfk_1` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `encuestas_ibfk_2` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `encuestas_detalle`
--
ALTER TABLE `encuestas_detalle`
  ADD CONSTRAINT `encuestas_detalle_ibfk_1` FOREIGN KEY (`id_encuestas`) REFERENCES `encuestas` (`id_encuestas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `encuestas_detalle_ibfk_2` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `encuestas_detalle_ibfk_3` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `encuestas_respuestas`
--
ALTER TABLE `encuestas_respuestas`
  ADD CONSTRAINT `encuestas_respuestas_ibfk_2` FOREIGN KEY (`id_encuestas`) REFERENCES `encuestas` (`id_encuestas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `encuestas_respuestas_ibfk_3` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `encuestas_respuestas_ibfk_4` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `encuestas_respuestas_ibfk_5` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `encuestas_respuestas_ibfk_6` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `encuestas_respuestas_ibfk_7` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `encuestas_respuestas_ibfk_8` FOREIGN KEY (`id_encuestas_detalle`) REFERENCES `encuestas_detalle` (`id_encuestas_detalle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `estados`
--
ALTER TABLE `estados`
  ADD CONSTRAINT `estados_ibfk_1` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `estados_ibfk_2` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `estatus`
--
ALTER TABLE `estatus`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `status_ibfk_2` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `status_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `landings`
--
ALTER TABLE `landings`
  ADD CONSTRAINT `landings_ibfk_1` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `landings_ibfk_2` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `landings_ibfk_3` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `landings_usuarios`
--
ALTER TABLE `landings_usuarios`
  ADD CONSTRAINT `landings_usuarios_ibfk_1` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `landings_usuarios_ibfk_2` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `landings_usuarios_ibfk_3` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logros`
--
ALTER TABLE `logros`
  ADD CONSTRAINT `logros_ibfk_1` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logros_ibfk_2` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logros_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logros_usuarios`
--
ALTER TABLE `logros_usuarios`
  ADD CONSTRAINT `logros_usuarios_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logros_usuarios_ibfk_2` FOREIGN KEY (`id_logros`) REFERENCES `logros` (`id_logros`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logros_usuarios_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logros_usuarios_ibfk_4` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logros_usuarios_ibfk_5` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logros_usuarios_ibfk_6` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logros_usuarios_ibfk_7` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mensajes_ibfk_2` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mensajes_ibfk_3` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mensajes_ibfk_4` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modulos`
--
ALTER TABLE `modulos`
  ADD CONSTRAINT `modulos_ibfk_1` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_ibfk_2` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_ibfk_3` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_ibfk_4` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_ibfk_5` FOREIGN KEY (`id_tipo_planes`) REFERENCES `tipo_planes` (`id_tipo_planes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modulos_app`
--
ALTER TABLE `modulos_app`
  ADD CONSTRAINT `modulos_app_ibfk_1` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_app_ibfk_2` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_app_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_app_ibfk_4` FOREIGN KEY (`id_categorias_modulos_app`) REFERENCES `categorias_modulos_app` (`id_categorias_modulos_app`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modulos_vistos`
--
ALTER TABLE `modulos_vistos`
  ADD CONSTRAINT `modulos_vistos_ibfk_1` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_vistos_ibfk_2` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_vistos_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_vistos_ibfk_4` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_vistos_ibfk_5` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_vistos_ibfk_6` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modulos_vistos_ibfk_7` FOREIGN KEY (`id_actividades`) REFERENCES `actividades_barra` (`id_actividades_barra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `motivos`
--
ALTER TABLE `motivos`
  ADD CONSTRAINT `motivos_ibfk_1` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `motivos_ibfk_2` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `motivos_ibfk_3` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticias_ibfk_2` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticias_ibfk_3` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notificaciones_ibfk_2` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notificaciones_ibfk_3` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notificaciones_ibfk_4` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notificaciones_ibfk_5` FOREIGN KEY (`id_actividades_barra`) REFERENCES `actividades_barra` (`id_actividades_barra`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notificaciones_ibfk_6` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notificaciones_ibfk_7` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pagos_realizados`
--
ALTER TABLE `pagos_realizados`
  ADD CONSTRAINT `pagos_realizados_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pagos_realizados_ibfk_2` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pagos_realizados_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pagos_realizados_ibfk_4` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pagos_realizados_ibfk_5` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_5` FOREIGN KEY (`id_modulos_app`) REFERENCES `modulos_app` (`id_modulos_app`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `programacion_envio`
--
ALTER TABLE `programacion_envio`
  ADD CONSTRAINT `programacion_envio_ibfk_1` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `puntaje`
--
ALTER TABLE `puntaje`
  ADD CONSTRAINT `puntaje_ibfk_1` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `puntaje_ibfk_2` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `puntaje_ibfk_3` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `puntaje_ibfk_4` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `puntaje_ibfk_5` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `puntaje_ibfk_6` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `puntaje_ibfk_7` FOREIGN KEY (`id_motivos`) REFERENCES `motivos` (`id_motivos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recompensas_aleatorias_usuarios`
--
ALTER TABLE `recompensas_aleatorias_usuarios`
  ADD CONSTRAINT `recompensas_aleatorias_usuarios_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recompensas_aleatorias_usuarios_ibfk_2` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recompensas_aleatorias_usuarios_ibfk_3` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recompensas_aleatorias_usuarios_ibfk_4` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recompensas_aleatorias_usuarios_ibfk_5` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recompensas_aleatorias_usuarios_ibfk_6` FOREIGN KEY (`id_modulos`) REFERENCES `modulos` (`id_modulos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recompensas_aleatorias_usuarios_ibfk_7` FOREIGN KEY (`id_tipos_premio`) REFERENCES `tipos_premio` (`id_tipos_premio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recompensas_aleatorias_usuarios_ibfk_8` FOREIGN KEY (`id_recompensas_aleatorias`) REFERENCES `recompensas_aleatorias` (`id_recompensas_aleatorias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `roles_ibfk_2` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `roles_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tipos_premio`
--
ALTER TABLE `tipos_premio`
  ADD CONSTRAINT `tipos_premio_ibfk_1` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tipos_premio_ibfk_2` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tipos_premio_ibfk_3` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tipo_actividades`
--
ALTER TABLE `tipo_actividades`
  ADD CONSTRAINT `tipo_actividades_ibfk_1` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tipo_actividades_ibfk_2` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tipo_actividades_ibfk_3` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tipo_planes`
--
ALTER TABLE `tipo_planes`
  ADD CONSTRAINT `tipo_planes_ibfk_1` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tipo_planes_ibfk_2` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tipo_planes_ibfk_3` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_roles`) REFERENCES `roles` (`id_roles`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`id_usuario_creado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_ibfk_4` FOREIGN KEY (`id_usuario_modificado`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
