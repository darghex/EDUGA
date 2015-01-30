-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 16, 2015 at 07:56 PM
-- Server version: 5.1.73-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `virtuala_platafo`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `actividades_barra`
--

INSERT INTO `actividades_barra` (`id_actividades_barra`, `id_modulos`, `id_tipo_actividades`, `id_actividades`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(71, 14, 1, 39, 1, '2014-10-30 22:45:58', '2014-12-03 19:52:47', 1, 1, 5),
(72, 14, 1, 40, 1, '2014-10-30 22:52:06', '2014-12-03 19:52:47', 1, 1, 6),
(73, 15, 1, 41, 1, '2014-10-30 22:56:44', '2014-10-30 23:22:53', 1, 1, 73),
(74, 15, 1, 42, 0, '2014-10-30 22:57:29', '2014-10-31 14:05:28', 1, 1, 74),
(77, 16, 1, 45, 1, '2014-10-30 23:08:09', '2014-10-30 23:26:25', 1, 1, 77),
(78, 16, 1, 46, 1, '2014-10-30 23:08:43', '2014-10-30 23:26:54', 1, 1, 78),
(83, 14, 2, 63, 1, '2014-10-31 00:26:41', '2014-12-03 19:52:48', 44, 44, 3),
(84, 14, 3, 30, 1, '2014-10-31 00:42:26', '2014-12-09 21:54:23', 1, 1, 1),
(88, 18, 1, 50, 1, '2014-11-19 19:59:16', '2014-11-19 20:34:23', 1, 1, 2),
(89, 18, 1, 51, 1, '2014-11-19 20:00:01', '2014-11-19 20:34:23', 1, 1, 3),
(90, 18, 1, 52, 1, '2014-11-19 20:00:40', '2014-11-19 20:34:23', 1, 1, 4),
(91, 18, 1, 53, 1, '2014-11-19 20:25:03', '2014-11-19 20:34:23', 1, 1, 1),
(92, 14, 2, 65, 1, '2014-11-26 19:19:51', '2014-12-03 19:52:47', 44, 44, 4),
(96, 17, 2, 67, 1, '2014-11-27 22:04:26', '2014-11-27 22:04:27', 1, 1, 96),
(97, 14, 3, 31, 1, '2014-12-03 19:47:16', '2014-12-09 21:54:30', 1, 1, 2),
(98, 16, 3, 32, 1, '2014-12-09 22:38:26', '2014-12-09 22:38:26', 1, 1, 98),
(99, 15, 3, 33, 1, '2014-12-09 22:47:04', '2014-12-09 22:47:04', 1, 1, 99),
(100, 21, 2, 68, 1, '2014-12-09 23:03:28', '2014-12-09 23:03:28', 1, 1, 100);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `actividades_evaluacion`
--

INSERT INTO `actividades_evaluacion` (`id_actividades_evaluacion`, `id_modulos`, `nombre_actividad`, `descripcion_actividad`, `id_logros`, `id_tipo_planes`, `id_competencias`, `num_oportunidades`, `variables_pregunta`, `oportunidades`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(30, 14, 'Evaluacion #1', 'descripcion', 0, 1, 0, 'ilimitatu', '{"1":{"pregunta":"Sabes \\u00bfPara qu\\u00e9 haces lo que haces en tu vida?","tipo_pregunta":"4","id_competencias":"14","variables_respuesta":"[{\\"id_texto\\":\\"MC4yNjMxNDIwMCAxNDE2OTQ1Mzg4MTg3MjY=\\",\\"texto\\":\\"Escribe tu respuesta\\",\\"retroalimentacion\\":\\"Todo en la vida tiene una raz\\\\u00f3n de ser.\\"}]"},"2":{"pregunta":"\\u00bfQuieres disfrutar de tu conciencia a la medida?","tipo_pregunta":"1","id_competencias":"15","variables_respuesta":"[{\\"opcion\\":\\"Si\\",\\"retroalimentacion\\":\\"Te felicito, vamos a lograrlo en este curso.\\",\\"correcta\\":\\"1\\"},{\\"opcion\\":\\"No\\",\\"retroalimentacion\\":\\"Tu eres el \\\\u00fanico due\\\\u00f1o de las riendas de tu vida.\\",\\"correcta\\":\\"0\\"}]"},"3":{"pregunta":"Califique ps!","tipo_pregunta":"4","id_competencias":"","variables_respuesta":"[{\\"id_texto\\":\\"MC43Mzk0MDQwMCAxNDE3NTUxOTI0MjQ3NDY=\\",\\"texto\\":\\"Como le parece esto?\\",\\"retroalimentacion\\":\\"UFFF!!\\"}]"}}', 0, 1, '2014-10-31 00:42:26', '2014-12-09 21:54:23', 1, 1, 30),
(31, 14, 'Evaluacion #2', 'descripcion', 0, 1, 0, 'ilimitatu', '{"1":{"pregunta":"prueba 1","tipo_pregunta":"1","id_competencias":"16","variables_respuesta":"[{\\"opcion\\":\\"ertter\\",\\"retroalimentacion\\":\\"ggtrgtggtg\\",\\"correcta\\":\\"1\\"},{\\"opcion\\":\\"hhhhhhhh\\",\\"retroalimentacion\\":\\"yyyyyyyyy\\",\\"correcta\\":\\"0\\"},{\\"opcion\\":\\"fcvvb\\",\\"retroalimentacion\\":\\"ioiioioioii\\",\\"correcta\\":\\"0\\"}]"},"2":{"pregunta":"65656565656","tipo_pregunta":"2","id_competencias":"14","variables_respuesta":"[{\\"opcion\\":\\"Opcion 1\\",\\"retroalimentacion\\":\\"\\",\\"correcta\\":\\"1\\"},{\\"opcion\\":\\"Opcion 2rg\\",\\"retroalimentacion\\":\\"erfrrgfr\\",\\"correcta\\":\\"0\\"}]"},"3":{"pregunta":"yyyyyyyyyyyyy","tipo_pregunta":"4","id_competencias":"","variables_respuesta":"[{\\"id_texto\\":null,\\"texto\\":\\"tyy\\",\\"retroalimentacion\\":\\"yty\\"}]"},"4":{"pregunta":"gggggg","tipo_pregunta":"1","id_competencias":"14","variables_respuesta":"[{\\"opcion\\":\\"t655656\\",\\"retroalimentacion\\":\\"gtrgtg\\",\\"correcta\\":\\"1\\"},{\\"opcion\\":\\"tgrgr\\",\\"retroalimentacion\\":\\"gtrgtrgrtgt\\",\\"correcta\\":\\"0\\"}]"},"5":{"pregunta":"fvfvfvgfbg","tipo_pregunta":"4","id_competencias":"15","variables_respuesta":"[{\\"id_texto\\":null,\\"texto\\":\\"rgggr\\",\\"retroalimentacion\\":\\"grgrgrg\\"}]"},"6":{"pregunta":"ferfref","tipo_pregunta":"1","id_competencias":"15","variables_respuesta":"[{\\"opcion\\":\\"frff\\",\\"retroalimentacion\\":\\"rfrfr\\",\\"correcta\\":\\"0\\"},{\\"opcion\\":\\"jjjjjjjjjjjjjjj\\",\\"retroalimentacion\\":\\"jjjjjyjuyjuj\\",\\"correcta\\":\\"1\\"}]"}}', 0, 1, '2014-12-03 19:47:16', '2014-12-09 21:54:30', 1, 1, 31),
(32, 16, 'Evaluacion #3', 'descripcion', 0, 1, 0, 'ilimitatu', '{"1":{"pregunta":"pregunta 1","tipo_pregunta":"1","id_competencias":"16","variables_respuesta":"[{\\"opcion\\":\\"esta es la correcta\\",\\"retroalimentacion\\":\\"bien\\",\\"correcta\\":\\"1\\"},{\\"opcion\\":\\"mal!\\",\\"retroalimentacion\\":\\"mal!!!dvfd\\",\\"correcta\\":\\"0\\"},{\\"opcion\\":\\"\\",\\"retroalimentacion\\":\\"\\",\\"correcta\\":\\"0\\"}]"},"2":{"pregunta":"campo de tx","tipo_pregunta":"4","id_competencias":"16","variables_respuesta":"[{\\"id_texto\\":null,\\"texto\\":\\"campo de tx\\",\\"retroalimentacion\\":\\"campo de tx\\"}]"},"3":{"pregunta":"elige ya!","tipo_pregunta":"2","id_competencias":"16","variables_respuesta":"[{\\"opcion\\":\\"Opcion 1\\",\\"retroalimentacion\\":\\"\\",\\"correcta\\":\\"1\\"},{\\"opcion\\":\\"Opcion 2\\",\\"retroalimentacion\\":\\"\\",\\"correcta\\":\\"0\\"}]"}}', 0, 1, '2014-12-09 22:38:26', '2014-12-09 22:39:33', 1, 1, 32),
(33, 15, 'Evaluacion #4', 'descripcion', 0, 1, 0, 'ilimitatu', '{"1":{"pregunta":"qweddwdwe","tipo_pregunta":"4","id_competencias":"17","variables_respuesta":"[{\\"id_texto\\":\\"MC44OTQ3MzEwMCAxNDE4MTY1Mjk0MTY4MzM1MDg2OQ==\\",\\"texto\\":\\"\\",\\"retroalimentacion\\":\\"\\"}]"},"2":{"pregunta":"dwedw","tipo_pregunta":"1","id_competencias":"17","variables_respuesta":"[{\\"opcion\\":\\"wedew\\",\\"retroalimentacion\\":\\"dewdwed\\",\\"correcta\\":\\"1\\"},{\\"opcion\\":\\"wedwede\\",\\"retroalimentacion\\":\\"dewdede\\",\\"correcta\\":\\"0\\"}]"},"3":{"pregunta":"rtertertertrtr","tipo_pregunta":"2","id_competencias":"17","variables_respuesta":"[{\\"opcion\\":\\"dwedwedwe\\",\\"retroalimentacion\\":\\"wedwed\\",\\"correcta\\":\\"1\\"},{\\"opcion\\":\\"Opcion 2\\",\\"retroalimentacion\\":\\"dedewdew\\",\\"correcta\\":\\"0\\"}]"}}', 0, 1, '2014-12-09 22:47:04', '2014-12-09 22:51:40', 1, 1, 33);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `actividades_foro`
--

INSERT INTO `actividades_foro` (`id_actividades_foro`, `id_modulos`, `nombre_actividad`, `descripcion_actividad`, `id_logros`, `id_tipo_planes`, `contenido_foro`, `foto`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(63, 14, 'Discusión', 'descripcion', 0, 1, 'Felicitaciones, ya has dado un gran paso en este proceso de aprendizaje y desarrollo personal, por este motivo te invitamos para que ingreses y participes en el foro de discusión del módulo y nos cuentes como ha sido esta experiencia y nos digas  3 aprendizajes que te ha dejado.', '', 1, '2014-10-31 00:26:41', '2014-11-18 22:54:37', 44, 44, 63),
(65, 14, 'prueba #1', 'descripcion', 0, 1, 'demo demo demo demo demo demo demo demo ', '', 1, '2014-11-26 19:19:51', '2014-11-26 19:19:51', 44, 44, 65),
(67, 17, 'Foro prueba', 'descripcion', 0, 1, 'fefefeffe errgrt erergr ', '', 1, '2014-11-27 22:04:26', '2014-11-27 22:04:26', 1, 1, 67),
(68, 21, 'foro final', 'descripcion', 0, 1, 'foro finalforo finalforo finalforo finalforo finalforo final', '', 1, '2014-12-09 23:03:28', '2014-12-09 23:03:28', 1, 1, 68);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `actividades_foro_megusta`
--

INSERT INTO `actividades_foro_megusta` (`id_actividades_foro_megusta`, `id_cursos`, `id_modulos`, `id_actividades`, `id_actividades_foro_mensajes`, `id_usuarios`, `id_estados`, `id_usuario_creado`, `id_usuario_modificado`, `fecha_creado`, `fecha_modificado`, `orden`) VALUES
(3, 14, 14, 83, 0, 44, 1, 43, 43, '2014-10-31 00:36:17', '2014-10-31 00:36:17', 3),
(4, 14, 14, 83, 1, 43, 1, 43, 43, '2014-10-31 00:37:49', '2014-10-31 00:37:49', 4),
(5, 14, 14, 83, 15, 43, 1, 43, 43, '2014-10-31 04:39:58', '2014-10-31 04:39:58', 5),
(6, 14, 14, 83, 18, 50, 1, 50, 50, '2014-10-31 14:34:36', '2014-10-31 14:34:36', 6),
(8, 14, 14, 83, 18, 50, 1, 53, 53, '2014-10-31 17:22:07', '2014-10-31 17:22:07', 8);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `actividades_foro_mensajes`
--

INSERT INTO `actividades_foro_mensajes` (`id_actividades_foro_mensajes`, `id_actividades_foro`, `mensaje`, `id_estados`, `fecha_modificado`, `fecha_creado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(14, 63, 'Me parece súper interesante!!\n\nMis aprendizajes han sido:\n1 ser feliz en la vida, 2 que todo lo que nos proponemos lo podemos lograr y 3 el poder de la mente define nuestro destino', 1, '2014-10-31 04:39:34', '2014-10-31 04:39:34', 43, 43, 0),
(15, 63, 'Me parece súper interesante!!\n\nMis aprendizajes han sido:\n1 ser feliz en la vida, 2 que todo lo que nos proponemos lo podemos lograr y 3 el poder de la mente define nuestro destino', 1, '2014-10-31 04:39:41', '2014-10-31 04:39:41', 43, 43, 1),
(16, 63, 'se debe amar lo que se hace', 1, '2014-10-31 12:22:59', '2014-10-31 12:22:59', 49, 49, 0),
(17, 63, 'No se trata solo de llegar a un objetivo si no tambien de disfrutar el camino para llegar al objetivo', 1, '2014-10-31 13:48:58', '2014-10-31 13:48:58', 50, 50, 0),
(18, 63, 'No se trata solo de llegar a un objetivo si no tambien de disfrutar el camino para llegar al objetivo', 1, '2014-10-31 13:49:03', '2014-10-31 13:49:03', 50, 50, 2),
(19, 63, 'No se trata solo de llegar a un objetivo si no tambien de disfrutar el camino para llegar al objetivo', 1, '2014-10-31 13:49:04', '2014-10-31 13:49:04', 50, 50, 0),
(20, 63, 'la mente siempre esta trabajando, por eso debemos cuidar nuestros pensamientos\n', 1, '2014-10-31 15:29:11', '2014-10-31 15:29:11', 51, 51, 0),
(21, 63, 'la mente siempre esta trabajando, por eso debemos cuidar nuestros pensamientos\n', 1, '2014-10-31 15:29:16', '2014-10-31 15:29:16', 51, 51, 0),
(22, 63, 'la mente siempre esta trabajando, por eso debemos cuidar nuestros pensamientos\n', 1, '2014-10-31 15:29:16', '2014-10-31 15:29:16', 51, 51, 0),
(23, 63, 'La felicidad es la mejor meta.', 1, '2014-10-31 16:56:38', '2014-10-31 16:56:38', 53, 53, 0),
(24, 63, 'disfrutar cada momento ', 1, '2014-11-01 17:00:59', '2014-11-01 17:00:59', 55, 55, 0),
(39, 68, 'mensajeeee', 1, '2014-12-09 23:03:55', '2014-12-09 23:03:55', 79, 79, 0),
(40, 68, 'Sjsjd', 1, '2014-12-09 23:15:56', '2014-12-09 23:15:56', 81, 81, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=138 ;

--
-- Dumping data for table `actividades_respuestas_usuario`
--

INSERT INTO `actividades_respuestas_usuario` (`id_actividades_respuestas_usuario`, `id_cursos`, `id_modulos`, `id_actividades_barra`, `id_actividades`, `id_usuarios`, `respuestas`, `tipo_pregunta`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`) VALUES
(99, 14, 14, 71, 39, 74, '"rgrg"', 4, 1, '2014-11-25 20:30:34', '2014-11-25 20:30:34', 74, 74),
(100, 14, 14, 72, 40, 74, '"ergt"', 4, 1, '2014-11-25 20:31:19', '2014-11-25 20:31:19', 74, 74),
(101, 14, 14, 84, 30, 74, '[{"pregunta":"Sabes \\u00bfPara qu\\u00e9 haces lo que haces en tu vida?","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"Escribe tu respuesta","retroalimentacion":"Todo en la vida tiene una raz\\u00f3n de ser.","respuesta":"yafunciona!","id_texto":"MC4yNjMxNDIwMCAxNDE2OTQ1Mzg4MTg3MjY="}]},{"pregunta":"\\u00bfQuieres disfrutar de tu conciencia a la medida?","id_competencias":"","tipo_pregunta":"1","variables_respuesta":[{"opcion":"Si","retroalimentacion":"Te felicito, vamos a lograrlo en este curso.","correcta":"1","seleccionada":"1"},{"opcion":"No","retroalimentacion":"Tu eres el \\u00fanico due\\u00f1o de las riendas de tu vida.","correcta":"0","seleccionada":"0"}]}]', 0, 1, '2014-11-25 20:31:27', '2014-11-25 20:31:27', 74, 74),
(102, 14, 14, 71, 39, 75, '"weer"', 4, 1, '2014-11-25 20:38:35', '2014-11-25 20:38:35', 75, 75),
(103, 14, 14, 72, 40, 75, '"fr"', 4, 1, '2014-11-25 20:38:59', '2014-11-25 20:38:59', 75, 75),
(104, 14, 14, 84, 30, 75, '[{"pregunta":"Sabes \\u00bfPara qu\\u00e9 haces lo que haces en tu vida?","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"Escribe tu respuesta","retroalimentacion":"Todo en la vida tiene una raz\\u00f3n de ser.","respuesta":"funciona perfecto!","id_texto":"MC4yNjMxNDIwMCAxNDE2OTQ1Mzg4MTg3MjY="}]},{"pregunta":"\\u00bfQuieres disfrutar de tu conciencia a la medida?","id_competencias":"","tipo_pregunta":"1","variables_respuesta":[{"opcion":"Si","retroalimentacion":"Te felicito, vamos a lograrlo en este curso.","correcta":"1","seleccionada":"1"},{"opcion":"No","retroalimentacion":"Tu eres el \\u00fanico due\\u00f1o de las riendas de tu vida.","correcta":"0","seleccionada":"0"}]},{"pregunta":"Califique ps!","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"Como le parece esto?","retroalimentacion":"UFFF!!","respuesta":"super excelentisimo!","id_texto":""}]}]', 0, 1, '2014-11-25 20:39:20', '2014-11-25 20:39:20', 75, 75),
(105, 14, 14, 84, 30, 67, '[{"pregunta":"Sabes \\u00bfPara qu\\u00e9 haces lo que haces en tu vida?","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"Escribe tu respuesta","retroalimentacion":"Todo en la vida tiene una raz\\u00f3n de ser.","respuesta":"wee","id_texto":"MC4yNjMxNDIwMCAxNDE2OTQ1Mzg4MTg3MjY="}]},{"pregunta":"\\u00bfQuieres disfrutar de tu conciencia a la medida?","id_competencias":"","tipo_pregunta":"1","variables_respuesta":[{"opcion":"Si","retroalimentacion":"Te felicito, vamos a lograrlo en este curso.","correcta":"1","seleccionada":"1"},{"opcion":"No","retroalimentacion":"Tu eres el \\u00fanico due\\u00f1o de las riendas de tu vida.","correcta":"0","seleccionada":"0"}]},{"pregunta":"Califique ps!","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"Como le parece esto?","retroalimentacion":"UFFF!!","respuesta":"uuuu","id_texto":""}]}]', 0, 1, '2014-11-25 20:58:28', '2014-11-25 20:58:28', 67, 67),
(107, 14, 14, 71, 39, 76, '"dfdgf"', 4, 1, '2014-11-26 20:04:32', '2014-11-26 20:04:32', 76, 76),
(108, 14, 14, 72, 40, 76, '"ergfrg"', 4, 1, '2014-11-26 20:04:52', '2014-11-26 20:04:52', 76, 76),
(109, 14, 14, 84, 30, 76, '[{"pregunta":"Sabes \\u00bfPara qu\\u00e9 haces lo que haces en tu vida?","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"Escribe tu respuesta","retroalimentacion":"Todo en la vida tiene una raz\\u00f3n de ser.","respuesta":"rgrg","id_texto":"MC4yNjMxNDIwMCAxNDE2OTQ1Mzg4MTg3MjY="}]},{"pregunta":"\\u00bfQuieres disfrutar de tu conciencia a la medida?","id_competencias":"","tipo_pregunta":"1","variables_respuesta":[{"opcion":"Si","retroalimentacion":"Te felicito, vamos a lograrlo en este curso.","correcta":"1","seleccionada":"0"},{"opcion":"No","retroalimentacion":"Tu eres el \\u00fanico due\\u00f1o de las riendas de tu vida.","correcta":"0","seleccionada":"1"}]},{"pregunta":"Califique ps!","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"Como le parece esto?","retroalimentacion":"UFFF!!","respuesta":"erfr","id_texto":""}]}]', 0, 1, '2014-11-26 20:05:01', '2014-11-26 20:05:01', 76, 76),
(117, 14, 14, 84, 30, 43, '[{"pregunta":"Sabes \\u00bfPara qu\\u00e9 haces lo que haces en tu vida?","id_competencias":"14","tipo_pregunta":"4","variables_respuesta":[{"texto":"Escribe tu respuesta","retroalimentacion":"Todo en la vida tiene una raz\\u00f3n de ser.","respuesta":"wqwqwqwqwq","id_texto":"MC4yNjMxNDIwMCAxNDE2OTQ1Mzg4MTg3MjY="}]},{"pregunta":"\\u00bfQuieres disfrutar de tu conciencia a la medida?","id_competencias":"15","tipo_pregunta":"1","variables_respuesta":[{"opcion":"Si","retroalimentacion":"Te felicito, vamos a lograrlo en este curso.","correcta":"1","seleccionada":"0"},{"opcion":"No","retroalimentacion":"Tu eres el \\u00fanico due\\u00f1o de las riendas de tu vida.","correcta":"0","seleccionada":"1"}]},{"pregunta":"Califique ps!","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"Como le parece esto?","retroalimentacion":"UFFF!!","respuesta":"fgvgrgr","id_texto":"MC43Mzk0MDQwMCAxNDE3NTUxOTI0MjQ3NDY="}]}]', 0, 1, '2014-12-03 22:34:38', '2014-12-03 22:34:38', 43, 43),
(118, 14, 14, 97, 31, 43, '[{"pregunta":"prueba 1","id_competencias":"16","tipo_pregunta":"1","variables_respuesta":[{"opcion":"ertter","retroalimentacion":"ggtrgtggtg","correcta":"1","seleccionada":"1"},{"opcion":"hhhhhhhh","retroalimentacion":"yyyyyyyyy","correcta":"0","seleccionada":"0"},{"opcion":"fcvvb","retroalimentacion":"ioiioioioii","correcta":"0","seleccionada":"0"}]},{"pregunta":"65656565656","id_competencias":"14","tipo_pregunta":"2","variables_respuesta":[{"opcion":"opcion-1","retroalimentacion":"","correcta":"1","seleccionada":"1"},{"opcion":"opcion-2rg","retroalimentacion":"erfrrgfr","correcta":"0","seleccionada":"0"}]},{"pregunta":"yyyyyyyyyyyyy","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"tyy","retroalimentacion":"yty","respuesta":"efr","id_texto":""}]},{"pregunta":"gggggg","id_competencias":"14","tipo_pregunta":"1","variables_respuesta":[{"opcion":"t655656","retroalimentacion":"gtrgtg","correcta":"1","seleccionada":"0"},{"opcion":"tgrgr","retroalimentacion":"gtrgtrgrtgt","correcta":"0","seleccionada":"1"}]},{"pregunta":"fvfvfvgfbg","id_competencias":"15","tipo_pregunta":"4","variables_respuesta":[{"texto":"rgggr","retroalimentacion":"grgrgrg","respuesta":"erfrferfre","id_texto":""}]},{"pregunta":"ferfref","id_competencias":"15","tipo_pregunta":"1","variables_respuesta":[{"opcion":"frff","retroalimentacion":"rfrfr","correcta":"0","seleccionada":"1"},{"opcion":"jjjjjjjjjjjjjjj","retroalimentacion":"jjjjjyjuyjuj","correcta":"1","seleccionada":"0"}]}]', 0, 1, '2014-12-03 22:35:28', '2014-12-03 22:35:28', 43, 43),
(120, 14, 14, 84, 30, 77, '[{"pregunta":"Sabes \\u00bfPara qu\\u00e9 haces lo que haces en tu vida?","id_competencias":"14","tipo_pregunta":"4","variables_respuesta":[{"texto":"Escribe tu respuesta","retroalimentacion":"Todo en la vida tiene una raz\\u00f3n de ser.","respuesta":"cdccd","id_texto":"MC4yNjMxNDIwMCAxNDE2OTQ1Mzg4MTg3MjY="}]},{"pregunta":"\\u00bfQuieres disfrutar de tu conciencia a la medida?","id_competencias":"15","tipo_pregunta":"1","variables_respuesta":[{"opcion":"Si","retroalimentacion":"Te felicito, vamos a lograrlo en este curso.","correcta":"1","seleccionada":"1"},{"opcion":"No","retroalimentacion":"Tu eres el \\u00fanico due\\u00f1o de las riendas de tu vida.","correcta":"0","seleccionada":"0"}]},{"pregunta":"Califique ps!","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"Como le parece esto?","retroalimentacion":"UFFF!!","respuesta":"dddcd","id_texto":"MC43Mzk0MDQwMCAxNDE3NTUxOTI0MjQ3NDY="}]}]', 0, 1, '2014-12-08 16:52:23', '2014-12-08 16:52:23', 77, 77),
(121, 14, 14, 97, 31, 77, '[{"pregunta":"prueba 1","id_competencias":"16","tipo_pregunta":"1","variables_respuesta":[{"opcion":"ertter","retroalimentacion":"ggtrgtggtg","correcta":"1","seleccionada":"0"},{"opcion":"hhhhhhhh","retroalimentacion":"yyyyyyyyy","correcta":"0","seleccionada":"1"},{"opcion":"fcvvb","retroalimentacion":"ioiioioioii","correcta":"0","seleccionada":"0"}]},{"pregunta":"65656565656","id_competencias":"14","tipo_pregunta":"2","variables_respuesta":[{"opcion":"opcion-1","retroalimentacion":"","correcta":"1","seleccionada":"1"},{"opcion":"opcion-2rg","retroalimentacion":"erfrrgfr","correcta":"0","seleccionada":"0"}]},{"pregunta":"yyyyyyyyyyyyy","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"tyy","retroalimentacion":"yty","respuesta":"ss","id_texto":""}]},{"pregunta":"gggggg","id_competencias":"14","tipo_pregunta":"1","variables_respuesta":[{"opcion":"t655656","retroalimentacion":"gtrgtg","correcta":"1","seleccionada":"0"},{"opcion":"tgrgr","retroalimentacion":"gtrgtrgrtgt","correcta":"0","seleccionada":"1"}]},{"pregunta":"fvfvfvgfbg","id_competencias":"15","tipo_pregunta":"4","variables_respuesta":[{"texto":"rgggr","retroalimentacion":"grgrgrg","respuesta":"sffre","id_texto":""}]},{"pregunta":"ferfref","id_competencias":"15","tipo_pregunta":"1","variables_respuesta":[{"opcion":"frff","retroalimentacion":"rfrfr","correcta":"0","seleccionada":"1"},{"opcion":"jjjjjjjjjjjjjjj","retroalimentacion":"jjjjjyjuyjuj","correcta":"1","seleccionada":"0"}]}]', 0, 1, '2014-12-08 16:53:03', '2014-12-08 16:53:03', 77, 77),
(122, 14, 14, 71, 39, 77, '"ss"', 4, 1, '2014-12-08 16:55:09', '2014-12-08 16:55:09', 77, 77),
(123, 14, 14, 72, 40, 77, '"sdsds"', 4, 1, '2014-12-08 16:56:04', '2014-12-08 16:56:04', 77, 77),
(124, 14, 14, 84, 30, 79, '[{"pregunta":"Sabes \\u00bfPara qu\\u00e9 haces lo que haces en tu vida?","id_competencias":"14","tipo_pregunta":"4","variables_respuesta":[{"texto":"Escribe tu respuesta","retroalimentacion":"Todo en la vida tiene una raz\\u00f3n de ser.","respuesta":"Wsww","id_texto":"MC4yNjMxNDIwMCAxNDE2OTQ1Mzg4MTg3MjY="}]},{"pregunta":"\\u00bfQuieres disfrutar de tu conciencia a la medida?","id_competencias":"15","tipo_pregunta":"1","variables_respuesta":[{"opcion":"Si","retroalimentacion":"Te felicito, vamos a lograrlo en este curso.","correcta":"1","seleccionada":"1"},{"opcion":"No","retroalimentacion":"Tu eres el \\u00fanico due\\u00f1o de las riendas de tu vida.","correcta":"0","seleccionada":"0"}]},{"pregunta":"Califique ps!","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"Como le parece esto?","retroalimentacion":"UFFF!!","respuesta":"Gggg","id_texto":"MC43Mzk0MDQwMCAxNDE3NTUxOTI0MjQ3NDY="}]}]', 0, 1, '2014-12-09 20:49:10', '2014-12-09 20:49:10', 79, 79),
(125, 14, 14, 97, 31, 79, '[{"pregunta":"prueba 1","id_competencias":"16","tipo_pregunta":"1","variables_respuesta":[{"opcion":"ertter","retroalimentacion":"ggtrgtggtg","correcta":"1","seleccionada":"1"},{"opcion":"hhhhhhhh","retroalimentacion":"yyyyyyyyy","correcta":"0","seleccionada":"0"},{"opcion":"fcvvb","retroalimentacion":"ioiioioioii","correcta":"0","seleccionada":"0"}]},{"pregunta":"65656565656","id_competencias":"14","tipo_pregunta":"2","variables_respuesta":[{"opcion":"opcion-1","retroalimentacion":"","correcta":"1","seleccionada":"0"},{"opcion":"opcion-2rg","retroalimentacion":"erfrrgfr","correcta":"0","seleccionada":"1"}]},{"pregunta":"yyyyyyyyyyyyy","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"tyy","retroalimentacion":"yty","respuesta":"Uvyvyv","id_texto":""}]},{"pregunta":"gggggg","id_competencias":"14","tipo_pregunta":"1","variables_respuesta":[{"opcion":"t655656","retroalimentacion":"gtrgtg","correcta":"1","seleccionada":"0"},{"opcion":"tgrgr","retroalimentacion":"gtrgtrgrtgt","correcta":"0","seleccionada":"1"}]},{"pregunta":"fvfvfvgfbg","id_competencias":"15","tipo_pregunta":"4","variables_respuesta":[{"texto":"rgggr","retroalimentacion":"grgrgrg","respuesta":"Uvvy","id_texto":""}]},{"pregunta":"ferfref","id_competencias":"15","tipo_pregunta":"1","variables_respuesta":[{"opcion":"frff","retroalimentacion":"rfrfr","correcta":"0","seleccionada":"0"},{"opcion":"jjjjjjjjjjjjjjj","retroalimentacion":"jjjjjyjuyjuj","correcta":"1","seleccionada":"1"}]}]', 0, 1, '2014-12-09 20:50:34', '2014-12-09 20:50:34', 79, 79),
(126, 14, 14, 71, 39, 79, '"Ubu"', 4, 1, '2014-12-09 20:51:16', '2014-12-09 20:51:16', 79, 79),
(127, 14, 14, 72, 40, 79, '"Uvuvy"', 4, 1, '2014-12-09 20:51:38', '2014-12-09 20:51:38', 79, 79),
(128, 14, 14, 84, 30, 78, '[{"pregunta":"Sabes \\u00bfPara qu\\u00e9 haces lo que haces en tu vida?","id_competencias":"14","tipo_pregunta":"4","variables_respuesta":[{"texto":"Escribe tu respuesta","retroalimentacion":"Todo en la vida tiene una raz\\u00f3n de ser.","respuesta":"4564565","id_texto":"MC4yNjMxNDIwMCAxNDE2OTQ1Mzg4MTg3MjY="}]},{"pregunta":"\\u00bfQuieres disfrutar de tu conciencia a la medida?","id_competencias":"15","tipo_pregunta":"1","variables_respuesta":[{"opcion":"Si","retroalimentacion":"Te felicito, vamos a lograrlo en este curso.","correcta":"1","seleccionada":"1"},{"opcion":"No","retroalimentacion":"Tu eres el \\u00fanico due\\u00f1o de las riendas de tu vida.","correcta":"0","seleccionada":"0"}]},{"pregunta":"Califique ps!","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"Como le parece esto?","retroalimentacion":"UFFF!!","respuesta":"wefeferfe","id_texto":"MC43Mzk0MDQwMCAxNDE3NTUxOTI0MjQ3NDY="}]}]', 0, 1, '2014-12-09 22:30:19', '2014-12-09 22:30:19', 78, 78),
(129, 14, 14, 97, 31, 78, '[{"pregunta":"prueba 1","id_competencias":"16","tipo_pregunta":"1","variables_respuesta":[{"opcion":"ertter","retroalimentacion":"ggtrgtggtg","correcta":"1","seleccionada":"0"},{"opcion":"hhhhhhhh","retroalimentacion":"yyyyyyyyy","correcta":"0","seleccionada":"0"},{"opcion":"fcvvb","retroalimentacion":"ioiioioioii","correcta":"0","seleccionada":"1"}]},{"pregunta":"65656565656","id_competencias":"14","tipo_pregunta":"2","variables_respuesta":[{"opcion":"opcion-1","retroalimentacion":"","correcta":"1","seleccionada":"0"},{"opcion":"opcion-2rg","retroalimentacion":"erfrrgfr","correcta":"0","seleccionada":"1"}]},{"pregunta":"yyyyyyyyyyyyy","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"tyy","retroalimentacion":"yty","respuesta":"grgg","id_texto":""}]},{"pregunta":"gggggg","id_competencias":"14","tipo_pregunta":"1","variables_respuesta":[{"opcion":"t655656","retroalimentacion":"gtrgtg","correcta":"1","seleccionada":"0"},{"opcion":"tgrgr","retroalimentacion":"gtrgtrgrtgt","correcta":"0","seleccionada":"1"}]},{"pregunta":"fvfvfvgfbg","id_competencias":"15","tipo_pregunta":"4","variables_respuesta":[{"texto":"rgggr","retroalimentacion":"grgrgrg","respuesta":"efefef","id_texto":""}]},{"pregunta":"ferfref","id_competencias":"15","tipo_pregunta":"1","variables_respuesta":[{"opcion":"frff","retroalimentacion":"rfrfr","correcta":"0","seleccionada":"1"},{"opcion":"jjjjjjjjjjjjjjj","retroalimentacion":"jjjjjyjuyjuj","correcta":"1","seleccionada":"0"}]}]', 0, 1, '2014-12-09 22:31:55', '2014-12-09 22:31:55', 78, 78),
(130, 14, 14, 71, 39, 78, '"wefre"', 4, 1, '2014-12-09 22:39:59', '2014-12-09 22:39:59', 78, 78),
(131, 14, 14, 72, 40, 78, '"gdf"', 4, 1, '2014-12-09 22:40:19', '2014-12-09 22:40:19', 78, 78),
(132, 14, 16, 98, 32, 78, '[{"pregunta":"pregunta 1","id_competencias":"16","tipo_pregunta":"1","variables_respuesta":[{"opcion":"esta es la correcta","retroalimentacion":"bien","correcta":"1","seleccionada":"1"},{"opcion":"mal!","retroalimentacion":"mal!!!dvfd","correcta":"0","seleccionada":"0"},{"opcion":"","retroalimentacion":"","correcta":"0","seleccionada":"0"}]},{"pregunta":"campo de tx","id_competencias":"16","tipo_pregunta":"4","variables_respuesta":[{"texto":"campo de tx","retroalimentacion":"campo de tx","respuesta":"rttertr","id_texto":""}]},{"pregunta":"elige ya!","id_competencias":"16","tipo_pregunta":"2","variables_respuesta":[{"opcion":"opcion-1","retroalimentacion":"","correcta":"1","seleccionada":"0"},{"opcion":"opcion-2","retroalimentacion":"","correcta":"0","seleccionada":"1"}]}]', 0, 1, '2014-12-09 22:44:41', '2014-12-09 22:44:41', 78, 78),
(133, 14, 15, 99, 33, 78, '[{"pregunta":"qweddwdwe","id_competencias":"17","tipo_pregunta":"4","variables_respuesta":[{"texto":"","retroalimentacion":"","respuesta":"rgfergrgtrg","id_texto":"MC44OTQ3MzEwMCAxNDE4MTY1Mjk0MTY4MzM1MDg2OQ=="}]},{"pregunta":"dwedw","id_competencias":"17","tipo_pregunta":"1","variables_respuesta":[{"opcion":"wedew","retroalimentacion":"dewdwed","correcta":"1","seleccionada":"1"},{"opcion":"wedwede","retroalimentacion":"dewdede","correcta":"0","seleccionada":"0"}]},{"pregunta":"rtertertertrtr","id_competencias":"17","tipo_pregunta":"2","variables_respuesta":[{"opcion":"dwedwedwe","retroalimentacion":"wedwed","correcta":"1","seleccionada":"1"},{"opcion":"opcion-2","retroalimentacion":"dedewdew","correcta":"0","seleccionada":"0"}]}]', 0, 1, '2014-12-09 22:49:22', '2014-12-09 22:53:27', 78, 78),
(134, 14, 16, 98, 32, 79, '[{"pregunta":"pregunta 1","id_competencias":"16","tipo_pregunta":"1","variables_respuesta":[{"opcion":"esta es la correcta","retroalimentacion":"bien","correcta":"1","seleccionada":"1"},{"opcion":"mal!","retroalimentacion":"mal!!!dvfd","correcta":"0","seleccionada":"0"},{"opcion":"","retroalimentacion":"","correcta":"0","seleccionada":"0"}]},{"pregunta":"campo de tx","id_competencias":"16","tipo_pregunta":"4","variables_respuesta":[{"texto":"campo de tx","retroalimentacion":"campo de tx","respuesta":"grrgtrg","id_texto":""}]},{"pregunta":"elige ya!","id_competencias":"16","tipo_pregunta":"2","variables_respuesta":[{"opcion":"opcion-1","retroalimentacion":"","correcta":"1","seleccionada":"1"},{"opcion":"opcion-2","retroalimentacion":"","correcta":"0","seleccionada":"0"}]}]', 0, 1, '2014-12-09 22:55:43', '2014-12-09 22:55:43', 79, 79),
(135, 14, 15, 99, 33, 79, '[{"pregunta":"qweddwdwe","id_competencias":"17","tipo_pregunta":"4","variables_respuesta":[{"texto":"","retroalimentacion":"","respuesta":"ewffwfe","id_texto":"MC44OTQ3MzEwMCAxNDE4MTY1Mjk0MTY4MzM1MDg2OQ=="}]},{"pregunta":"dwedw","id_competencias":"17","tipo_pregunta":"1","variables_respuesta":[{"opcion":"wedew","retroalimentacion":"dewdwed","correcta":"1","seleccionada":"1"},{"opcion":"wedwede","retroalimentacion":"dewdede","correcta":"0","seleccionada":"0"}]},{"pregunta":"rtertertertrtr","id_competencias":"17","tipo_pregunta":"2","variables_respuesta":[{"opcion":"dwedwedwe","retroalimentacion":"wedwed","correcta":"1","seleccionada":"1"},{"opcion":"opcion-2","retroalimentacion":"dedewdew","correcta":"0","seleccionada":"0"}]}]', 0, 1, '2014-12-09 22:56:02', '2014-12-09 22:56:02', 79, 79),
(136, 14, 14, 84, 30, 81, '[{"pregunta":"Sabes \\u00bfPara qu\\u00e9 haces lo que haces en tu vida?","id_competencias":"14","tipo_pregunta":"4","variables_respuesta":[{"texto":"Escribe tu respuesta","retroalimentacion":"Todo en la vida tiene una raz\\u00f3n de ser.","respuesta":"Gnffjfj","id_texto":"MC4yNjMxNDIwMCAxNDE2OTQ1Mzg4MTg3MjY="}]},{"pregunta":"\\u00bfQuieres disfrutar de tu conciencia a la medida?","id_competencias":"15","tipo_pregunta":"1","variables_respuesta":[{"opcion":"Si","retroalimentacion":"Te felicito, vamos a lograrlo en este curso.","correcta":"1","seleccionada":"1"},{"opcion":"No","retroalimentacion":"Tu eres el \\u00fanico due\\u00f1o de las riendas de tu vida.","correcta":"0","seleccionada":"0"}]},{"pregunta":"Califique ps!","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"Como le parece esto?","retroalimentacion":"UFFF!!","respuesta":"Gbfbfb","id_texto":"MC43Mzk0MDQwMCAxNDE3NTUxOTI0MjQ3NDY="}]}]', 0, 1, '2014-12-09 23:18:58', '2014-12-09 23:18:58', 81, 81),
(137, 14, 14, 97, 31, 81, '[{"pregunta":"prueba 1","id_competencias":"16","tipo_pregunta":"1","variables_respuesta":[{"opcion":"ertter","retroalimentacion":"ggtrgtggtg","correcta":"1","seleccionada":"0"},{"opcion":"hhhhhhhh","retroalimentacion":"yyyyyyyyy","correcta":"0","seleccionada":"1"},{"opcion":"fcvvb","retroalimentacion":"ioiioioioii","correcta":"0","seleccionada":"0"}]},{"pregunta":"65656565656","id_competencias":"14","tipo_pregunta":"2","variables_respuesta":[{"opcion":"opcion-1","retroalimentacion":"","correcta":"1","seleccionada":"1"},{"opcion":"opcion-2rg","retroalimentacion":"erfrrgfr","correcta":"0","seleccionada":"0"}]},{"pregunta":"yyyyyyyyyyyyy","id_competencias":"","tipo_pregunta":"4","variables_respuesta":[{"texto":"tyy","retroalimentacion":"yty","respuesta":"Hola jorge yo ","id_texto":""}]},{"pregunta":"gggggg","id_competencias":"14","tipo_pregunta":"1","variables_respuesta":[{"opcion":"t655656","retroalimentacion":"gtrgtg","correcta":"1","seleccionada":"1"},{"opcion":"tgrgr","retroalimentacion":"gtrgtrgrtgt","correcta":"0","seleccionada":"0"}]},{"pregunta":"fvfvfvgfbg","id_competencias":"15","tipo_pregunta":"4","variables_respuesta":[{"texto":"rgggr","retroalimentacion":"grgrgrg","respuesta":"Hvyvy","id_texto":""}]},{"pregunta":"ferfref","id_competencias":"15","tipo_pregunta":"1","variables_respuesta":[{"opcion":"frff","retroalimentacion":"rfrfr","correcta":"0","seleccionada":"1"},{"opcion":"jjjjjjjjjjjjjjj","retroalimentacion":"jjjjjyjuyjuj","correcta":"1","seleccionada":"0"}]}]', 0, 1, '2014-12-09 23:19:44', '2014-12-09 23:19:44', 81, 81);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `actividades_videos`
--

INSERT INTO `actividades_videos` (`id_actividades_videos`, `id_modulos`, `nombre_actividad`, `descripcion_actividad`, `id_logros`, `id_tipo_planes`, `url_video`, `pregunta`, `tipo_pregunta`, `variables_pregunta`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(39, 14, 'Video 1', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=c8rlni6CX4s', '¿Cuál es la razón más profunda por lo que haces lo que haces?', '4', '', 1, '2014-10-30 22:45:58', '2014-10-30 23:49:09', 1, 1, 39),
(40, 14, 'Video 2', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=k0KqNBHo0Fc', '¿Qué es lo que realmente quieres lograr en este entrenamiento? Específicamente ¿cuál es el resultado?', '4', '', 1, '2014-10-30 22:52:06', '2014-10-30 23:51:45', 1, 1, 40),
(41, 15, 'Video 1', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=l02cLOUOCq4', '', '0', '', 1, '2014-10-30 22:56:44', '2014-10-30 23:22:53', 1, 1, 41),
(42, 15, 'Video 2', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=GzBYdnbTuiE', '', '0', '', 0, '2014-10-30 22:57:29', '2014-10-31 14:05:28', 1, 1, 42),
(45, 16, 'Video 1', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=QkDJwapPGpw', '', '0', '', 1, '2014-10-30 23:08:09', '2014-10-30 23:26:25', 1, 1, 45),
(46, 16, 'Video 2', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=xKlGUx4ofbE', '', '0', '', 1, '2014-10-30 23:08:43', '2014-10-30 23:26:54', 1, 1, 46),
(50, 18, 'Liderazgo y Estrategia 1', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=gEFBjIWmlQg', '', '0', '', 1, '2014-11-19 19:59:16', '2014-11-19 19:59:16', 1, 1, 50),
(51, 18, 'Liderazgo y Estrategia 2', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=zN9yivW9w2c', '', '0', '', 1, '2014-11-19 20:00:01', '2014-11-19 20:00:01', 1, 1, 51),
(52, 18, 'Liderazgo y Estrategia 3', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=YSrQaMYVMVc', '', '0', '', 1, '2014-11-19 20:00:40', '2014-11-19 20:00:40', 1, 1, 52),
(53, 18, 'Comercial Escala', 'descripcion', 0, 1, 'https://www.youtube.com/watch?v=crUQ3WuHgyA&feature=youtu.be', '', '0', '', 1, '2014-11-19 20:25:03', '2014-11-19 20:25:03', 1, 1, 53);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `categoria_cursos`
--

INSERT INTO `categoria_cursos` (`id_categoria_cursos`, `nombre`, `Descripcion`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(3, 'Seguridad informatica', 'Todo lo relacionado con la seguridad en la informacion', 1, '2014-07-27 00:04:27', '2014-07-26 17:17:29', 1, 1, 3),
(6, 'Curso Online', 'Cursos Online en Campus Escala', 1, '2014-10-30 18:49:44', '2014-10-30 23:39:44', 1, 1, 6);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `certificados`
--

INSERT INTO `certificados` (`id_certificados`, `id_usuarios`, `id_cursos`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(1, 48, 14, 1, '2014-10-31 02:42:26', '2014-10-31 02:42:26', 48, 48, 1),
(2, 49, 14, 1, '2014-10-31 13:06:42', '2014-10-31 13:06:42', 49, 49, 2),
(3, 50, 14, 1, '2014-10-31 15:54:01', '2014-10-31 15:54:01', 50, 50, 3),
(9, 76, 14, 1, '2014-11-26 20:32:32', '2014-11-26 20:32:32', 76, 76, 9),
(10, 78, 14, 1, '2014-12-15 21:36:34', '2014-12-15 21:36:34', 78, 78, 10);

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
(5, 'Nosotros', 'ESCALA, El camino para ascender.', '287a5ce0f4cba207f874a03e1ab5d002.jpg', '<h2 style="font-family: Arial, Verdana; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal;"><font face="Verdana" size="2">ESCALA</font></h2><div style="font-size: 10pt;"><p class="p1" style="text-align: justify;">La Escuela de Capacitación Laboral (Escala), es una institución de educación para el trabajo y el desarrollo humano especializado, por eso ofrecemos soluciones efectivas de capacitación, formación, desarrollo personal&nbsp; y organizacional en el ámbito nacional e internacional en diferentes áreas.</p><p class="p1" style="text-align: justify;"><br></p><p class="p1" style="text-align: justify;">Nuestra experiencia como entidad facilitadora se deriva de los diecisiete años de gestión y la oportunidad de servir a&nbsp; personas en diferentes programas. Una organización comprometida con el desarrollo, la innovación y el aprendizaje constante, sabemos que es el camino para ascender y ser competitivos.</p><p class="p1" style="text-align: justify;"><br></p><p class="p1" style="text-align: justify;">Nuestra&nbsp; organización está conformada por líderes dispuestos a liberar el gran potencial de jóvenes, profesionales y&nbsp; ejecutivos integrales, para&nbsp; lograr construir un tejido social responsable y una&nbsp; cultura organizacional enfocada hacia el logro de metas y objetivos.</p><p style="margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\n\n\n\n\n\n\n\n\n\n\n</p><p class="p2" style="text-align: center;"><b>¡Bienvenidos a Escala, nuestra principal labor es servirle!</b></p></div>', '', 1, 1, 5, '2014-08-05 03:36:44', '2014-10-31 01:30:36', 1, 1),
(6, 'Términos y condiciones', 'Términos y condiciones', '', '<p class="p1" style="text-align: center;"><b>TÉRMINOS Y CONDICIONES</b></p><p class="p1" style="text-align: justify;"><b><br></b></p><p class="p1" style="font-weight: normal; text-align: justify;">Este documento (en adelante la “<span class="s1">Política de Privacidad</span>”) primordialmente establece la forma en que nosotros, es decir, el portal <a href="http://www.campusescala.com/"><span class="s2">www.campusescala.com</span></a> (“<span class="s1">ESCALA LTDA</span>”) recogemos, almacenamos, damos tratamiento, manejamos, administramos, transferimos, transmitimos y/o compartimos la información, sea de naturaleza personal o no, que Usted (también el “<span class="s1">Usuario</span>”) suministra o provee cuando ingresa a nuestro sitio web, al sitio móvil o cualquier otra plataforma digital, medio o canal que se desarrolle en el futuro por ESCALA LTDA (el “<span class="s1">Sitio</span>”), o de cualquier forma utiliza nuestro Sitio, nuestra plataforma, el contenido, las aplicaciones y/o los demás servicios que ofrecemos en ESCALA LTDA (conjuntamente los “<span class="s1">Servicios</span>”).</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">La información que sobre el Usuario recogemos, almacenamos, manejamos, administramos, transferimos, transmitimos y/o compartimos puede o no ser de naturaleza personal, puede o no ser de carácter privado, e incluso puede ser información o datos protegidos por las leyes aplicables sobre protección de datos personales. Esta información, cualquiera sea su naturaleza, se denominará conjuntamente, para efectos de esta Política de Privacidad, “<span class="s1">Información Personal</span>”.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Cualquiera sea la naturaleza de la información, su tratamiento, manejo, almacenamiento, transferencia, transmisión y/o administración por parte de ESCALA LTDA, respetará las normas aplicables sobre protección de datos personales. Cuando en esta Política de Privacidad se haga referencia a “nosotros”, se hace referencia a ESCALA LTDA. El Servicio no está disponible para menores de dieciocho (18) años.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">A través de la aceptación de esta Política de Privacidad, el Usuario de manera expresa, previa, consciente e informada, autoriza a ESCALA LTDA y a cualquiera otra persona jurídica y/o natural que haga uso en cualquier forma de la base de datos donde reposa la información del Usuario, a recolectar dicha información, almacenarla, manejarla, darle tratamiento, transferirla, transmitirla, comercializarla y/o publicarla, de acuerdo con lo señalado en esta Política de Privacidad.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Derechos, deberes y responsabilidades de los Usuarios</span></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario, como propietario o titular de la Información Personal, o como sujeto al que hace referencia dicha información, tendrá los derechos que las respectivas legislaciones aplicables les otorguen. En Colombia, los Usuarios (titulares de la Información Personal), tendrán los derechos establecidos en la Ley 1581 de 2012, y en la Ley 1266 de 2008, y en cualquier otra norma que las modifique, sustituya o complemente, en particular pero sin limitarse al Decreto 1377 de 2013, como los derechos al acceso, revocación, supresión, actualización, rectificación, corrección, cancelación y oposición de sus datos personales e Información Personal.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario, como titular de la Información Personal, podrá facultativamente decidir si suministra o no información a ESCALA LTDA, y qué clase de información suministra a ESCALA LTDA. En todo caso, para que el Usuario se pueda registrar y acceder a los Servicios, y para que nosotros podamos prestar los Servicios, el Usuario deberá proveer cierta información mínima contenida y exigida en el Sitio, diferente de los Datos Sensibles (como éste término se define adelante). El acceso al Sitio y el uso de los Servicios supone la voluntariedad del Usuario a suministrar dicha información.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario será responsable por la veracidad, autenticidad, oportunidad y fidedignidad de la Información Personal, por lo que nos reservamos el derecho a excluir de los Servicios registrados a todo Usuario que haya facilitado datos falsos, sin perjuicio de las demás acciones que procedan en Derecho.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Autorización Expresa</span></p><p class="p1" style="font-weight: normal; text-align: justify;">Una vez suministrada o proporcionada la Información Personal en los términos y forma descritos en esta Política de Privacidad, el Usuario autoriza expresamente a ESCALA LTDA para recolectar, almacenar, comunicar, tratar, compartir, transferir, transmitir y/o publicar la Información Personal del Usuario, y autoriza expresamente a los terceros que accedan a los Servicios para acceder, consultar y revisar la Información Personal. Por lo anterior, se considerarán autorizados para acceder, consultar y revisar la Información Personal, todos los terceros que puedan consultar el perfil de usuario del Usuario y demás Información Personal suministrada por éste a través de los Servicios.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Datos Sensibles</span></p><p class="p1" style="font-weight: normal; text-align: justify;">Se entiende por “<span class="s1">Datos Sensibles</span>” aquellos que afectan la intimidad del Usuario o cuyo uso indebido puede generar su discriminación, tales como aquellos que revelen el origen racial o étnico, la orientación política, las convicciones religiosas o filosóficas, la pertenencia a sindicatos, organizaciones sociales, de derechos humanos o que promueva intereses de cualquier partido político o que garanticen los derechos y garantías de partidos políticos de oposición así como los datos relativos a la salud, a la vida sexual y los datos biométricos.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario no estará obligado a suministrar la información relacionada con Datos Sensibles, ni la prestación de los Servicios estará condicionada a que el Usuario suministre Datos Sensibles.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Los Datos Sensibles, junto con la información bancaria y financiera del Usuario, y su clave y contraseña serán consideradas en esta Política de Privacidad, como “Información Privada” o información que no tiene el carácter de pública.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">No se considerarán Datos Sensibles para efectos de esta Política de Privacidad los que tengan relación con los “intereses” del Usuario (como actividades, aficiones, hobbies, entretenimiento, deportes, etc.), y el Usuario autoriza a ESCALA LTDA para hacerlos públicos y darles el tratamiento de cualquier otra información pública estipulado en este documento.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Recolección y Almacenamiento de Datos Personales y otra información</span></p><p class="p1" style="font-weight: normal; text-align: justify;">La Información Personal que en ESCALA LTDA recogemos y almacenamos es toda aquella información o datos que el Usuario nos proporciona e ingresa a través de los Servicios o de cualquier otra manera. La Información Personal recopilada puede incluir, respecto al Usuario, entre otros, su nombre, edad, genero, documento de identificación, dirección de email, dirección IP, número de teléfono, cumpleaños, nombres de usuario de Twitter y/o Facebook, información de uso con respecto a la forma como utiliza los Servicios, la información del navegador y del sistema operativo, y horas y fechas de acceso a los Servicios. Cuando el Usuario utiliza los Servicios, nosotros (ESCALA LTDA) recibimos automáticamente la ubicación del Usuario.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">La Información Personal que nos proporciona el Usuario se utiliza para fines tales como (i) permitirle al Usuario configurar una Cuenta y un perfil de usuario que pueden utilizarse para interactuar con ESCALA LTDA, (ii) permitirnos mejorar el contenido de los Servicios, (iii) permitirnos personalizar el contenido que el Usuario ve, (iv) permitirnos comunicarnos con el Usuario para ofrecerle promociones y nuevas funciones, tanto de ESCALA LTDA como de terceros y aliados, (v) que nuestros socios, terceros y aliados comerciales puedan ofrecer sus productos y servicios y (vi) permitirnos configurar una base de datos que pueda ser objeto de comercialización u otro negocios jurídicos, a título oneroso o gratuito. También podemos recurrir a la Información Personal a fin de adaptar los Servicios de nuestra comunidad a sus necesidades, investigar la eficacia de nuestra red y Servicios y desarrollar nuevas herramientas para la comunidad.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Cuando el Usuario utiliza los Servicios, nosotros recibimos y registramos automáticamente en nuestro servidor información sobre su navegador o plataforma móvil, incluida su ubicación, dirección IP, información de cookies y la página que solicitó. Tratamos esta información como datos no personales, excepto cuando estamos obligados a hacerlo de otro modo según la legislación aplicable. A menos que se indique lo contrario en esta Política de Privacidad, ESCALA LTDA solo utiliza estos datos en forma global. Podremos proporcionar información global a nuestros socios sobre cómo nuestros Usuarios, colectivamente, utilizan nuestros Servicios, para que nuestros socios también puedan comprender con qué frecuencia las personas utilizan sus servicios y nuestros Servicios.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Nosotros recibimos y almacenamos información de terceros que interactúan de alguna manera con los Servicios o que nos proporcionan servicios en relación con los Servicios. Además, el Usuario podrá optar por usar aplicaciones adicionales, externas y/o compatibles con ESCALA LTDA, que comparten la Información Personal, datos personales, actividades y/o contenidos con ESCALA LTDA. Es necesario que el Usuario lea y revise las políticas de privacidad de dichas aplicaciones para entender qué información comparten. La existencia de esas aplicaciones adicionales, externas y/o compatibles no implica en ningún caso la existencia de relaciones entre ESCALA LTDA y el propietario del lugar web con el que se establezca, ni la aceptación y aprobación de sus contenidos o servicios.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">ESCALA LTDA excluye toda responsabilidad en los sitios enlazados desde el Sitio y no pueden controlar y no controlan que entre ellos aparezcan sitios de Internet cuyos contenidos puedan resultar ilícitos, ilegales, contrarios a la moral o a las buenas costumbres o inapropiados. El Usuario, por tanto, debe extremar la prudencia en la valoración y utilización de la información, contenidos y servicios existentes en los sitios enlazados.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Manejo y tratamiento de la información</span></p><p class="p1" style="font-weight: normal; text-align: justify;">La Información Personal sobre nuestros Usuarios es una parte integral de nuestro negocio. ESCALA LTDA podrá compartir su Información Personal sólo de la manera que se describe en esta Política de Privacidad.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Nosotros no estamos en la obligación de conservar una copia, en ningún medio o formato, de la Información Personal, o cualquier otro tipo de información que suministre el Usuario, salvo de la autorización expresa, previa e informada que Usted nos ha entregado sobre su conocimiento y aceptación de la presente Política de Privacidad y del tratamiento de sus datos e Información Personal. El Usuario es responsable por la conservación de la versión original de la Información Personal y demás datos que nos suministre.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Además, el uso de apps de terceros desarrolladas con nuestra API está sujeto a las condiciones de uso y políticas de privacidad de los desarrolladores de dichas apps. Cierta Información Personal podrá estar a disposición de desarrolladores de terceros si el Usuario utiliza estas apps de terceros. Debe revisar las políticas de las apps y los sitios web de terceros para asegurarse de que se siente cómodo con la forma en que usan y divulgan la información que usted comparte con ellos. Nosotros no garantizamos que ellos sigan nuestras reglas o nuestra Política de Privacidad, ni respondemos por el uso que le otorguen a la Información Personal.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">A veces requerimos bienes y servicios de terceras personas, naturales o jurídicas, para desarrollar nuestra actividad empresarial. En algunos casos requerimos suministrar o compartir la Información Personal del Usuario con ellos para que nos puedan prestar los servicios y suministrar los bienes de manera correcta. En todo caso, esas personas no tienen derecho a utilizar la Información Personal que compartimos con ellos más allá de lo necesario para ayudarnos, y proporcionan un nivel comparable de protección respecto a su Información Personal.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Si ESCALA LTDA o su operación o activos fuesen adquiridos por un tercero, o en el hipotético caso de que ESCALA LTDA dé por terminada su actividad o entre en procesos de reestructuración empresarial, la Información Personal del Usuario será uno de los activos que serán transferidos al tercero o adquiridos por éste.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Podremos divulgar Información Personal cuando creamos de buena fe que dicha divulgación es necesaria para cumplir con la ley –incluidas las leyes ajenas al país de residencia del Usuario–, hacer cumplir o aplicar nuestras condiciones de uso y otros acuerdos, o proteger los derechos, propiedad o seguridad de ESCALA LTDA, de nuestros empleados, nuestros Usuarios u otros. Esto incluye el intercambio de información con otras empresas y organizaciones (incluso fuera del país de residencia del Usuario) para la protección contra el fraude y la reducción del riesgo crediticio.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Mediante la aceptación de esta Política de Privacidad, el Usuario autoriza de manera informada, consciente, previa y expresa, que los datos e Información Personal que suministra a ESCALA LTDA puedan ser Trasferidos y Transmitidos (como estos conceptos se definen legalmente) a título gratuito u oneroso a otros operadores, responsables, encargados, fuentes y/o usuarios de bases de datos con el fin de concretar cualquier tipo de negocio jurídico sobre dicha información y/o reportar tal información a centrales de riesgo.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Comunicaciones por correo electrónico</span></p><p class="p1" style="font-weight: normal; text-align: justify;">Si el Usuario no quiere recibir correo electrónicos comerciales u otro tipo de correo de nuestra parte, el Usuario podrá indicar su preferencia durante el proceso de registro o enviando un mail a <a href="mailto:contacto@virtualab.co"><span class="s2">info@virtualab.co</span></a> haciendo la solicitud.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Tenga en cuenta que si no desea recibir avisos legales de parte nuestra, como por ejemplo avisos relativos a esta Política de Privacidad, dichos avisos legales igualmente regirán el uso de los Servicios y el Usuario es responsable de revisar si se han hecho cambios en dichos avisos legales o en la vigencia de los contenidos legales.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Protección de la Información Personal</span></p><p class="p1" style="font-weight: normal; text-align: justify;">ESCALA LTDA se compromete al cumplimiento de su obligación de secreto de los datos de carácter personal que sean Información Privada (es decir que no tengan la naturaleza de pública), y de su deber de tratarlos con confidencialidad, y asume, a estos efectos, las medidas de índole técnica, organizativa y de seguridad necesarias para evitar su alteración, pérdida, tratamiento o acceso no autorizado. La Información Personal de la cuenta de ESCALA LTDA de cada Usuario está protegida por una contraseña para su privacidad y seguridad. El Usuario debe evitar el acceso no autorizado a su cuenta e Información Personal seleccionando y protegiendo la contraseña de forma adecuada y limitando el acceso a su computadora y navegador cerrando la sesión al finalizar el acceso a su cuenta.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">ESCALA LTDA se esfuerza por proteger la Información Privada y demás información y datos del Usuario para asegurarse de que la Información Privada de la cuenta del Usuario se mantenga privada. Sin embargo, ESCALA LTDA no puede garantizar la seguridad de la Información Personal y demás información de la cuenta del Usuario. El ingreso o uso no autorizados, los fallos de hardware o software y otros factores, podrían comprometer la seguridad de la Información Personal del Usuario en cualquier momento.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Los Servicios pueden contener enlaces a otros sitios. ESCALA LTDA no es responsable de las políticas de privacidad y/o prácticas de otros sitios. Cuando el Usuario utiliza enlaces a otros sitios, el Usuario es responsable de leer la política de privacidad que aparece en ese sitio. Esta Política de Privacidad sólo rige para la información recogida en el Servicio.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Transferencia de Información a otros países</span></p><p class="p1" style="font-weight: normal; text-align: justify;">Como quiera que la Información Personal del Usuario está disponible en la red, puede ser consultada en cualquier parte del mundo. El Usuario autoriza expresamente a ESCALA LTDA para transferir la Información Personal y cualquier otro tipo de datos a terceros países y mediante la aceptación de esta Política de Privacidad, de manera expresa, previa, consciente e informada autoriza la transferencia de la Información Personal fuera del país de origen del Usuario lo que puede implicar que rijan normas de protección de datos distintas a las del país de origen del Usuario.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Información Personal a la que el Usuario puede acceder</span></p><p class="p1" style="font-weight: normal; text-align: justify;">ESCALA LTDA permite al Usuario acceder a la siguiente información sobre el respectivo Usuario, con el fin de consultar, visualizar, actualizar, corregir e incluso rectificar la Información Personal (o cualquier tipo de información) y asegurar que sea precisa y esté completa. El Usuario puede acceder a esta Información Personal en el sitio web de ESCALA LTDA visitando la página del perfil de usuario. Este listado, meramente ilustrativo, puede cambiar a medida que cambien y evolucionen los Servicios.</p><p class="p2" style="font-weight: normal; text-align: justify;"><span class="s3">·</span><span class="s4">         </span>Contraseña</p><p class="p2" style="font-weight: normal; text-align: justify;"><span class="s3">·</span><span class="s4">         </span>Dirección de email</p><p class="p2" style="font-weight: normal; text-align: justify;"><span class="s3">·</span><span class="s4">         </span>Información básica (por ejemplo, nombre, apellido, cédula, ubicación, foto, entre otros)</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Eliminación de cuenta y/o de la Información Personal</span></p><p class="p1" style="font-weight: normal; text-align: justify;">Si el Usuario decide eliminar o cerrar su cuenta en ESCALA LTDA, puede hacerlo enviando un correo electrónico a la dirección <a href="mailto:info@virtualab.co"><span class="s2">info@virtualab.co</span></a>manifestando tal intención. Si el Usuario elimina su cuenta, su perfil y demás Información Personal, serán eliminados del Sitio y de los servidores de ESCALA LTDA, y en consecuencia el Usuario perderá todos los privilegios derivados del registro. Debido a la forma en que administramos ESCALA LTDA, esta eliminación podría no ser inmediata y podrían quedar copias residuales de la información de su perfil o mensajes en los medios de copia de seguridad por un máximo de noventa (90) días.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">Incluso después de eliminar la información de la cuenta o perfil del Usuario, pueden permanecer copias de esa información visibles en otros lugares, en la medida en que haya sido compartida con otras personas, haya sido distribuida de alguna manera conforme a la configuración de privacidad del Usuario. La información eliminada o borrada puede permanecer en los medios de copia de seguridad por hasta noventa (90) días antes de ser eliminada de nuestros servidores.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario será libre de revocar, en cualquier tiempo, la autorización expresamente otorgada a ESCALA LTDA y a terceros en los términos descritos en esta Política de Privacidad. Para el efecto, podrá modificar en cualquier tiempo la Información Personal que desee. Si la revocación abarca toda la Información Personal, o involucra la eliminación de parte de la Información Personal, ello implicará un cierre de la cuenta en los términos descritos.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Cambios en la Política de Privacidad</span></p><p class="p1" style="font-weight: normal; text-align: justify;">ESCALA LTDA podrá modificar esta Política de Privacidad de vez en cuando. El uso y tratamiento de la Información Personal estará regido por la Política de Privacidad vigente al momento del uso y tratamiento. Si hacemos cambios materiales en la forma en que usamos la Información Personal y demás datos, notificaremos al Usuario publicando un aviso en nuestro Sitio o enviándole un email, y tal notificación tendrá lugar antes o más tardar en el momento de la implementación de las nuevas políticas. Los Usuarios están obligados y quedarán sujetos por los cambios en la Política de Privacidad al usar los Servicios después de que dichos cambios hayan sido publicados en el Sitio.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Procedimiento y Trámite de Consultas y Reclamos:</span></p><p class="p1" style="font-weight: normal; text-align: justify;">De acuerdo a los artículos 14 y 15 de la Ley 1581 de 2012, con el objetivo de garantizar la ejecución de tal derecho, las Consultas y/o Reclamos que el Usuario desee elevar a ESCALA LTDA se surtirán por medio del siguiente trámite:</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Consultas:</span></p><p class="p1" style="font-weight: normal; text-align: justify;">Los Usuarios o sus causahabientes podrán consultar la Información Personal que respecto del Usuario se utilice en el Sitio. De ser necesario, y en la medida en que no conste tal información en la Cuenta del Usuario, la consulta se elevará por escrito al correo electrónico <a href="mailto:info@virtualab.co"><span class="s2">info@virtualab.co</span></a>  </p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">La consulta será atendida en un término máximo de diez (10) días hábiles contados a partir de la fecha de recibo de la misma. Cuando no fuere posible atender la consulta dentro de dicho término, se informará al interesado, expresando los motivos de la demora y señalando la fecha en que se atenderá su consulta, la cual en ningún caso podrá superar los cinco (5) días hábiles siguientes al vencimiento del primer término.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Reclamos:</span></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario o sus causahabientes que consideren que la información que repose en el Sitio debe ser objeto de corrección, actualización o supresión, cuando adviertan el presunto incumplimiento de cualquiera de los deberes contenidos en las leyes aplicables, o cuando pretendan revocar la autorización otorgada por medio del presente documento, podrán presentar un reclamo ante ESCALA LTDA, el cual será tramitado bajo las siguientes reglas:</p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-size: 10pt;">1. El reclamo se formulará mediante solicitud escrita dirigida al correo electrónico </span><a href="mailto:info@virtualab.co" style="font-size: 10pt;"><span class="s2">info@virtualab.co</span></a><span style="font-size: 10pt;">, con la identificación del Usuario, la descripción de los hechos que dan lugar al reclamo, la dirección, y acompañando los documentos que se quiera hacer valer. Si el reclamo resulta incompleto, se requerirá al interesado dentro de los cinco (5) días siguientes a la recepción del reclamo para que subsane las fallas. Transcurridos dos (2) meses desde la fecha del requerimiento, sin que el solicitante presente la información requerida, se entenderá que ha desistido del reclamo.</span></p><p class="p1" style="font-weight: normal; text-align: justify;">En caso de que quien reciba el reclamo no sea competente pararesolverlo, dará traslado a quien corresponda en un término máximo de <span class="Apple-tab-span" style="white-space:pre">	</span>dos (2) días hábiles e informará de la situación al interesado.</p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-size: 10pt;">2. Una vez recibido el reclamo completo, se incluirá en el Sitio, donde reposa la información, una leyenda que diga “reclamo en trámite” y el motivo del mismo, en un término no mayor a dos (2) días hábiles. Dicha leyenda deberá mantenerse hasta que el reclamo sea decidido.</span></p><p class="p1" style="font-weight: normal; text-align: justify;">3. El término máximo para atender el reclamo será de quince (15) días hábiles contados a partir del día siguiente a la fecha de su recibo. Cuando no fuere posible atender el reclamo dentro de dicho término, se informará al interesado los motivos de la demora y la fecha en que se atenderá su reclamo, la cual en ningún caso podrá superar los ocho (8) días hábiles siguientes al vencimiento del primer término.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;">El Usuario o sus causahabientes sólo podrá elevar queja ante la Superintendencia de Industria y Comercio una vez haya agotado el trámite de consulta o reclamo ante el Responsable del Tratamiento o Encargado del Tratamiento.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Persona o área encargada</span></p><p class="p1" style="font-weight: normal; text-align: justify;">La recepción y atención de las consultas y los reclamos que el Usuario desee elevar ante ESCALA LTDA estará a cargo del editor en jefe y/o director. Así, ante esta área o persona el Usuario puede ejercer sus derechos a conocer, actualizar, rectificar y suprimir el dato y revocar la autorización.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Entrada y período de vigencia:</span></p><p class="p1" style="font-weight: normal; text-align: justify;">La presente Política de Privacidad entra en vigencia a partir del día 30 de Octubre de 2014, y estará vigente hasta que la misma se modifique expresamente por ESCALA LTDA, y/o hasta que se cierre el Sitio.</p><p class="p1" style="font-weight: normal; text-align: justify;"><br></p><p class="p1" style="font-weight: normal; text-align: justify;"><span style="font-weight: bold;">Información y requerimientos</span></p><p class="MsoNormal" style="font-weight: normal; text-align: justify; line-height: 18pt; vertical-align: middle;">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class="p3" style="font-weight: normal; text-align: justify;">El administrador de los Servicios es la sociedad ESCALA LTDA, identificada con NIT No. 811.007.550-3 Si el Usuario tiene preguntas o inquietudes respecto de la privacidad al utilizar los Servicios, o desea comunicarse con ESCALA LTDA en relación o con ocasión de la recolección, manejo, administración y tratamiento de la Información Personal, se puede comunicar vía correo electrónico a la siguiente dirección: <a href="mailto:info@virtualab.co"><span class="s2">info@virtualab.co</span></a>, al teléfono (574) 444 6643 en Medellín Colombia. Los mensajes serán atendidos a la mayor brevedad posible.</p><h2 style="font-weight: normal; font-style: normal;"></h2>', '', 1, 0, 6, '2014-09-24 19:27:44', '2014-11-14 19:33:33', 1, 1),
(7, 'Soporte', 'Soporte', '', 'Soporte', 'http://www.google.com.co', 1, 0, 7, '2014-10-30 20:29:05', '2014-10-30 21:29:05', 1, 1),
(8, '656', '56546', '', '5645', '', 1, 0, 8, '2014-11-27 20:06:57', '2014-11-27 20:06:57', 79, 79);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `id_categoria_cursos`, `titulo`, `descripcion`, `foto`, `video`, `contenido`, `url_personalizado`, `objetivos_aprendizaje`, `prerrequisitos`, `instructores_asignados`, `destacar`, `id_tipo_planes`, `valor`, `url_clase_en_vivo`, `codigo_clase`, `id_estados`, `orden`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`) VALUES
(14, 6, 'Retándome', '¡Una experiencia de aprendizaje online que potencializará tus capacidades para el éxito integral!', 'be8d3728d88e9ae9d528699f46d36a18.jpg', 'https://www.youtube.com/watch?v=SU48fj5xFTE', 'Esta experiencia liberará tu potencial\n\n1. Vas a disfrutar, vivenciar y concluir.\n2. Depende de ti, nosotros te guiaremos.\n3. Vas a tomar una decisión de vida.', '', '<br>', 'Tener una meta u objetivo en la vida.', '["44"]', 1, 1, 30000, 'http://www.google.com.co', '', 1, 14, '2014-10-30 19:28:51', '2014-11-26 22:16:23', 1, 1),
(15, 6, 'Conoce a Escala', 'El camino para ascender.', 'cafe431b80054f2351163c872b96600d.png', 'https://www.youtube.com/watch?v=crUQ3WuHgyA&feature=youtu.be', 'Presentación comercial Escala.', '', '', 'Escala, el camino para ascender.', '["44"]', 1, 1, 12000, 'http://www.google.com', '', 1, 15, '2014-11-19 19:50:04', '2014-11-28 21:15:21', 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `cursos_asignados`
--

INSERT INTO `cursos_asignados` (`id_cursos_asignados`, `id_usuarios`, `id_cursos`, `id_estatus`, `id_tipo_planes`, `finalizado`, `posicion_modulo`, `posicion_actividad_barra`, `id_estados`, `id_usuario_creado`, `id_usuario_modificado`, `fecha_modificado`, `fecha_creado`, `fecha_entrado`, `orden`) VALUES
(71, 43, 14, 6, 1, 0, 14, 97, 1, 43, 43, '2014-12-22 20:00:05', '2014-10-30 23:14:03', '2014-12-22 19:16:40', 71),
(76, 37, 14, 5, 1, 0, 0, 0, 1, 37, 37, '2014-10-31 02:48:16', '2014-10-31 01:48:16', '2014-10-31 01:48:16', 76),
(77, 48, 14, 5, 2, 1, 0, 0, 1, 48, 48, '2014-10-31 04:02:17', '2014-10-31 02:28:08', '2014-10-31 03:02:17', 77),
(80, 49, 14, 6, 2, 1, 0, 0, 1, 49, 49, '2014-10-31 13:14:10', '2014-10-31 12:19:10', '2014-10-31 13:13:58', 80),
(81, 50, 14, 6, 2, 1, 14, 71, 1, 50, 50, '2014-11-21 18:45:30', '2014-10-31 13:32:43', '2014-11-21 18:41:25', 81),
(82, 51, 14, 5, 1, 0, 0, 0, 1, 51, 51, '2014-10-31 16:48:39', '2014-10-31 15:21:25', '2014-10-31 15:48:39', 82),
(83, 53, 14, 6, 1, 0, 0, 0, 1, 53, 53, '2014-10-31 17:34:12', '2014-10-31 16:52:33', '2014-10-31 17:33:37', 83),
(85, 55, 14, 5, 1, 0, 14, 83, 1, 55, 55, '2014-11-11 19:52:32', '2014-11-01 16:56:14', '2014-11-11 19:52:32', 85),
(96, 67, 14, 5, 2, 0, 14, 84, 1, 67, 67, '2014-11-25 20:58:18', '2014-11-17 18:07:14', '2014-11-25 20:58:09', 96),
(98, 43, 15, 5, 1, 0, 18, 88, 1, 43, 43, '2014-11-20 22:01:21', '2014-11-19 20:22:29', '2014-11-20 22:01:21', 98),
(102, 50, 15, 5, 1, 0, 0, 0, 1, 50, 50, '2014-11-20 20:09:13', '2014-11-20 20:09:08', '2014-11-20 20:09:13', 102),
(104, 71, 15, 5, 1, 0, 18, 90, 1, 71, 71, '2014-11-21 21:45:34', '2014-11-21 21:42:15', '2014-11-21 21:45:34', 104),
(120, 73, 15, 5, 1, 0, 18, 90, 1, 73, 73, '2014-11-21 22:52:27', '2014-11-21 22:49:46', '2014-11-21 22:49:49', 120),
(127, 74, 14, 5, 2, 0, 14, 84, 1, 74, 74, '2014-11-25 20:31:20', '2014-11-25 20:29:48', '2014-11-25 20:30:18', 127),
(128, 75, 14, 5, 2, 0, 14, 84, 1, 75, 75, '2014-11-25 20:39:55', '2014-11-25 20:38:03', '2014-11-25 20:39:55', 128),
(129, 75, 15, 5, 1, 0, 18, 90, 1, 75, 75, '2014-11-26 20:01:14', '2014-11-26 20:00:13', '2014-11-26 20:00:17', 129),
(130, 76, 14, 6, 1, 1, 14, 83, 1, 76, 76, '2014-11-26 23:11:21', '2014-11-26 20:04:16', '2014-11-26 23:11:13', 130),
(131, 77, 14, 6, 1, 0, 15, 85, 1, 77, 77, '2014-12-08 22:01:51', '2014-12-08 16:43:41', '2014-12-08 22:01:50', 131),
(132, 79, 14, 7, 1, 0, 15, 99, 1, 79, 79, '2014-12-11 05:21:29', '2014-12-09 20:48:34', '2014-12-11 05:21:29', 132),
(133, 78, 15, 5, 1, 0, 18, 90, 1, 78, 78, '2014-12-15 21:39:03', '2014-12-09 21:46:14', '2014-12-15 21:39:03', 133),
(134, 38, 14, 5, 1, 0, 0, 0, 1, 1, 1, '2014-12-09 22:05:00', '2014-12-09 22:05:00', NULL, 134),
(135, 38, 15, 5, 1, 0, 0, 0, 1, 1, 1, '2014-12-09 22:05:00', '2014-12-09 22:05:00', NULL, 135),
(136, 78, 14, 6, 2, 1, 15, 99, 1, 78, 78, '2014-12-15 21:36:32', '2014-12-09 22:28:17', '2014-12-15 21:36:31', 136),
(137, 81, 14, 5, 1, 0, 14, 97, 1, 81, 81, '2014-12-15 00:05:22', '2014-12-09 23:14:08', '2014-12-15 00:05:22', 137),
(138, 81, 14, 5, 1, 0, 14, 97, 1, 81, 81, '2014-12-15 00:05:22', '2014-12-09 23:15:37', '2014-12-15 00:05:22', 138),
(139, 86, 14, 5, 1, 0, 0, 0, 1, 86, 86, '2014-12-17 18:38:26', '2014-12-17 18:37:58', '2014-12-17 18:38:26', 139);

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
(1, 'Facilitador', 'Facilitadores', '{docente}', 1, '2014-08-23 21:04:20', '2014-09-10 22:17:09', 1, 1, 1),
(2, 'Aprendiz', 'Aprendices', '{estudiante}', 1, '2014-08-23 21:04:33', '2014-10-28 22:35:51', 1, 1, 2),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `encuestas_respuestas`
--

INSERT INTO `encuestas_respuestas` (`id_encuestas_respuestas`, `id_encuestas_detalle`, `id_encuestas`, `respuesta`, `id_usuarios`, `id_cursos`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(24, 10, 2, 'No me gusta', 79, 14, 1, '2014-12-09 21:06:16', '2014-12-09 21:06:16', 79, 79, 24),
(25, 9, 2, 'Excelente', 79, 14, 1, '2014-12-09 21:06:16', '2014-12-09 21:06:16', 79, 79, 25),
(26, 11, 2, 'Buen', 79, 14, 1, '2014-12-09 21:06:16', '2014-12-09 21:06:16', 79, 79, 26),
(27, 10, 2, 'No me gusta', 78, 14, 1, '2014-12-12 00:53:15', '2014-12-12 00:53:16', 78, 78, 27),
(28, 9, 2, 'Excelente', 78, 14, 1, '2014-12-12 00:53:16', '2014-12-12 00:53:16', 78, 78, 28),
(29, 11, 2, 'reertre', 78, 14, 1, '2014-12-12 00:53:16', '2014-12-12 00:53:16', 78, 78, 29),
(30, 10, 2, 'No me gusta', 78, 15, 1, '2014-12-15 21:38:49', '2014-12-15 21:38:49', 78, 78, 30),
(31, 9, 2, 'Bueno', 78, 15, 1, '2014-12-15 21:38:49', '2014-12-15 21:38:49', 78, 78, 31),
(32, 11, 2, 'prueba', 78, 15, 1, '2014-12-15 21:38:49', '2014-12-15 21:38:49', 78, 78, 32);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `landings`
--

INSERT INTO `landings` (`id_landings`, `titulo`, `descripcion`, `foto`, `url_video`, `contenido`, `id_estados`, `orden`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`) VALUES
(6, 'Inscríbete ya y tienes una sorpresa!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '0e2612903ff21eaa403d7955488fe36b.png', 'https://www.youtube.com/watch?v=tpaC9jvMN6w', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates \r\nillum nemo vitae molestias itaque sit eveniet soluta natus consequuntur \r\neum labore.</p>', 1, 6, '2014-09-16 19:25:06', '2014-09-16 19:44:41', 1, 1),
(7, 'Nuevo video de promoción!', 'texto demo texto demo texto demo texto demo texto demo texto demo texto demo texto demo texto demo', '', 'http://www.youtube.com/watch?v=nlT6GResIyk', '<span style="background-color: rgb(255, 255, 0);">texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;</span><div><span style="background-color: rgb(0, 0, 153);">texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto</span></div><div><span style="background-color: rgb(255, 0, 0);">demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;</span></div><div><span style="background-color: rgb(255, 0, 0);">demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;texto demo&nbsp;</span></div>', 1, 7, '2014-09-16 20:32:18', '2014-09-16 20:33:13', 1, 1),
(8, 'ahora con imagen!', 'sfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefer', 'edc25f887906cfb295256dc9d1055976.png', '', '<font face="Arial, Verdana" size="2">sfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef sefersfsef&nbsp;</font>', 1, 8, '2014-09-16 20:33:39', '2014-09-16 20:35:41', 1, 1);

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
(5, 'el usuario astuto', '8edb664384f18ffbc13118a91207f3b5.png', 'El premio que se gana al ver un video que yo le asigné ', 1, '2014-10-08 19:40:25', '2014-11-26 21:54:22', 1, 1, 5),
(6, 'el usuario guerrero', 'fa2a948ffb12d20268eac5a5e3564d56.png', 'Premio a la primera actividad del curso.', 1, '2014-10-08 22:31:03', '2014-10-08 22:31:17', 1, 1, 6),
(7, 'la buena suerte', 'bd98e81c41c212dd812b8b3c90517b2b.png', 'Logro de la buena suerte, para la caja sorpresaw', 1, '2014-10-08 22:40:28', '2014-11-22 21:18:31', 1, 1, 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `logros_usuarios`
--

INSERT INTO `logros_usuarios` (`id_logros_usuarios`, `id_cursos`, `id_modulos`, `id_logros`, `id_usuarios`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(23, 14, 15, 7, 43, 7, '2014-10-31 00:04:51', '2014-10-31 01:04:51', 43, 43, 23),
(24, 14, 15, 7, 48, 7, '2014-10-31 02:35:15', '2014-10-31 03:35:15', 48, 48, 24),
(25, 14, 14, 7, 49, 7, '2014-10-31 12:37:02', '2014-10-31 13:37:02', 49, 49, 25),
(26, 14, 14, 7, 53, 7, '2014-10-31 17:06:04', '2014-10-31 18:06:04', 53, 53, 26),
(27, 14, 14, 7, 55, 7, '2014-11-01 17:10:16', '2014-11-01 18:10:16', 55, 55, 27),
(32, 14, 14, 7, 76, 7, '2014-11-26 20:05:21', '2014-11-26 20:05:21', 76, 76, 32),
(33, 14, 15, 7, 76, 7, '2014-11-26 20:07:28', '2014-11-26 20:07:28', 76, 76, 33),
(34, 14, 14, 7, 76, 7, '2014-11-26 20:08:11', '2014-11-26 20:08:11', 76, 76, 34),
(35, 14, 15, 7, 76, 7, '2014-11-26 20:09:19', '2014-11-26 20:09:19', 76, 76, 35),
(38, 14, 14, 7, 77, 7, '2014-12-08 16:56:10', '2014-12-08 16:56:10', 77, 77, 38),
(39, 14, 14, 7, 79, 7, '2014-12-09 20:51:42', '2014-12-09 20:51:42', 79, 79, 39),
(40, 14, 14, 7, 78, 7, '2014-12-09 22:40:24', '2014-12-09 22:40:25', 78, 78, 40),
(41, 14, 21, 7, 81, 7, '2014-12-09 23:16:07', '2014-12-09 23:16:07', 81, 81, 41),
(42, 15, 18, 7, 78, 7, '2014-12-12 01:14:33', '2014-12-12 01:14:33', 78, 78, 42);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `mensajes`
--

INSERT INTO `mensajes` (`id_mensajes`, `id_mensajes_parent`, `mensaje`, `id_usuarios`, `id_cursos`, `id_modulos`, `id_actividades_barra`, `id_estados`, `id_usuario_creado`, `id_usuario_modificado`, `fecha_creado`, `fecha_modificado`, `orden`) VALUES
(1, 0, 'Buenos dias, como podria yo ver el curso?', 44, 14, 14, 71, 8, 48, 48, '2014-10-31 02:32:01', '2014-10-31 03:32:01', 1),
(2, 0, 'Probando....', 44, 14, 14, 71, 8, 48, 48, '2014-10-31 02:32:27', '2014-10-31 03:32:27', 2),
(10, 0, 'wdwewe', 76, 14, 0, 0, 8, 44, 44, '2014-11-26 20:56:07', '2014-11-26 20:56:07', 10),
(11, 0, 'mensaje masivo de pruebaaa!!! funcionando a la perfeccion!', 43, 14, 14, 71, 8, 44, 44, '2014-12-08 15:02:10', '2014-12-08 15:02:10', 11),
(13, 0, 'mensaje masivo de pruebaaa!!! funcionando a la perfeccion!', 37, 14, 14, 71, 8, 44, 44, '2014-12-08 15:02:10', '2014-12-08 15:02:10', 13),
(14, 0, 'mensaje masivo de pruebaaa!!! funcionando a la perfeccion!', 48, 14, 14, 71, 8, 44, 44, '2014-12-08 15:02:10', '2014-12-08 15:02:10', 14),
(15, 0, 'mensaje masivo de pruebaaa!!! funcionando a la perfeccion!', 49, 14, 14, 71, 8, 44, 44, '2014-12-08 15:02:10', '2014-12-08 15:02:10', 15),
(16, 0, 'mensaje masivo de pruebaaa!!! funcionando a la perfeccion!', 50, 14, 14, 71, 8, 44, 44, '2014-12-08 15:02:10', '2014-12-08 15:02:11', 16),
(17, 0, 'mensaje masivo de pruebaaa!!! funcionando a la perfeccion!', 51, 14, 14, 71, 8, 44, 44, '2014-12-08 15:02:11', '2014-12-08 15:02:11', 17),
(18, 0, 'mensaje masivo de pruebaaa!!! funcionando a la perfeccion!', 55, 14, 14, 71, 8, 44, 44, '2014-12-08 15:02:11', '2014-12-08 15:02:11', 18),
(23, 0, 'mensaje masivo de pruebaaa!!! funcionando a la perfeccion!', 67, 14, 14, 71, 8, 44, 44, '2014-12-08 15:02:11', '2014-12-08 15:02:11', 23),
(25, 0, 'mensaje masivo de pruebaaa!!! funcionando a la perfeccion!', 74, 14, 14, 71, 8, 44, 44, '2014-12-08 15:02:11', '2014-12-08 15:02:11', 25),
(26, 0, 'mensaje masivo de pruebaaa!!! funcionando a la perfeccion!', 75, 14, 14, 71, 8, 44, 44, '2014-12-08 15:02:11', '2014-12-08 15:02:11', 26),
(27, 0, 'mensaje masivo de pruebaaa!!! funcionando a la perfeccion!', 76, 14, 14, 71, 8, 44, 44, '2014-12-08 15:02:11', '2014-12-08 15:02:11', 27),
(28, 0, 'Hola a Todos!', 43, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 28),
(29, 0, 'Hola a Todos!', 37, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 29),
(30, 0, 'Hola a Todos!', 48, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 30),
(31, 0, 'Hola a Todos!', 49, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 31),
(32, 0, 'Hola a Todos!', 50, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 32),
(33, 0, 'Hola a Todos!', 51, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 33),
(34, 0, 'Hola a Todos!', 55, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 34),
(35, 0, 'Hola a Todos!', 67, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 35),
(36, 0, 'Hola a Todos!', 74, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 36),
(37, 0, 'Hola a Todos!', 75, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 37),
(38, 0, 'Hola a Todos!', 76, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 38),
(39, 0, 'Hola a Todos!', 77, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 39),
(40, 0, 'Hola a Todos!', 79, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 40),
(41, 0, 'Hola a Todos!', 38, 14, 14, 71, 8, 44, 44, '2014-12-09 22:08:28', '2014-12-09 22:08:28', 41),
(42, 0, 'Mensaje nuevo!!!', 43, 15, 18, 88, 8, 44, 44, '2014-12-09 22:08:54', '2014-12-09 22:08:55', 42),
(43, 0, 'Mensaje nuevo!!!', 50, 15, 18, 88, 8, 44, 44, '2014-12-09 22:08:55', '2014-12-09 22:08:55', 43),
(44, 0, 'Mensaje nuevo!!!', 71, 15, 18, 88, 8, 44, 44, '2014-12-09 22:08:55', '2014-12-09 22:08:55', 44),
(45, 0, 'Mensaje nuevo!!!', 73, 15, 18, 88, 8, 44, 44, '2014-12-09 22:08:55', '2014-12-09 22:08:55', 45),
(46, 0, 'Mensaje nuevo!!!', 75, 15, 18, 88, 8, 44, 44, '2014-12-09 22:08:55', '2014-12-09 22:08:55', 46),
(48, 0, 'Mensaje nuevo!!!', 38, 15, 18, 88, 8, 44, 44, '2014-12-09 22:08:55', '2014-12-09 22:08:55', 48);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Modulos instalados' AUTO_INCREMENT=22 ;

--
-- Dumping data for table `modulos`
--

INSERT INTO `modulos` (`id_modulos`, `id_cursos`, `nombre_modulo`, `introduccion_modulo`, `contenido_modulo`, `foto`, `id_estados`, `id_tipo_planes`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(14, 14, 'Edificando conciencia y generando resultados', 'En este módulo iniciarás tu proceso de entrenamiento personal.', '0', '', 1, 1, '2014-10-30 21:03:23', '2014-12-09 23:03:12', 1, 1, 2),
(15, 14, 'La mente es la clave', 'Segundo módulo', '0', '', 1, 1, '2014-10-30 21:06:08', '2014-12-09 23:03:12', 1, 1, 5),
(16, 14, 'Influencia de adentro hacia afuera', 'Tercer módulo', '0', '', 1, 1, '2014-10-30 21:52:17', '2014-12-09 23:03:12', 1, 1, 3),
(17, 14, 'Conciencia en práctica', 'Cuarto módulo', '0', '', 1, 1, '2014-10-30 21:52:39', '2014-12-09 23:03:12', 1, 1, 6),
(18, 15, 'Conociendo a Escala', 'Conociendo a Escala', '0', '', 1, 1, '2014-11-19 19:58:10', '2014-11-28 20:20:12', 1, 1, 2),
(19, 14, 'Modulo premios', 'Esto debe estar siempre en todos los cursos!', '0', '', 11, 1, '2014-12-07 17:52:14', '2014-12-09 23:03:12', 1, 1, 7),
(20, 14, 'Modulo sin nada', 'Modulo sin nada', '0', '', 1, 1, '2014-12-09 22:40:59', '2014-12-09 23:03:12', 1, 1, 4),
(21, 14, 'Modulo final', 'Modulo final', '0', '', 1, 1, '2014-12-09 23:03:06', '2014-12-09 23:03:12', 1, 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=338 ;

--
-- Dumping data for table `modulos_vistos`
--

INSERT INTO `modulos_vistos` (`id_modulos_vistos`, `id_cursos`, `id_modulos`, `id_actividades`, `id_usuarios`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`) VALUES
(100, 14, 14, 71, 43, 2, '2014-10-30 23:14:20', '2014-10-30 23:14:20', 43, 43),
(101, 14, 14, 72, 43, 2, '2014-10-30 23:50:15', '2014-10-30 23:50:15', 43, 43),
(102, 14, 14, 71, 38, 2, '2014-10-30 23:58:01', '2014-10-30 23:58:01', 38, 38),
(103, 14, 15, 73, 43, 2, '2014-10-30 23:58:52', '2014-10-30 23:58:52', 43, 43),
(104, 14, 15, 74, 43, 2, '2014-10-30 23:59:49', '2014-10-30 23:59:49', 43, 43),
(108, 14, 16, 77, 43, 2, '2014-10-31 00:05:06', '2014-10-31 00:05:06', 43, 43),
(113, 14, 14, 83, 43, 2, '2014-10-31 00:36:11', '2014-10-31 00:36:11', 43, 43),
(114, 14, 14, 84, 43, 2, '2014-10-31 00:47:06', '2014-10-31 00:47:06', 43, 43),
(116, 14, 14, 71, 48, 2, '2014-10-31 02:28:14', '2014-10-31 02:28:14', 48, 48),
(117, 14, 14, 83, 48, 2, '2014-10-31 02:33:14', '2014-10-31 02:33:14', 48, 48),
(118, 14, 14, 72, 48, 2, '2014-10-31 02:33:26', '2014-10-31 02:33:26', 48, 48),
(119, 14, 14, 84, 48, 2, '2014-10-31 02:33:51', '2014-10-31 02:33:51', 48, 48),
(120, 14, 15, 73, 48, 2, '2014-10-31 02:34:16', '2014-10-31 02:34:16', 48, 48),
(121, 14, 15, 74, 48, 2, '2014-10-31 02:34:37', '2014-10-31 02:34:37', 48, 48),
(124, 14, 14, 71, 49, 2, '2014-10-31 12:19:59', '2014-10-31 12:19:59', 49, 49),
(125, 14, 14, 83, 49, 2, '2014-10-31 12:22:22', '2014-10-31 12:22:22', 49, 49),
(126, 14, 14, 72, 49, 2, '2014-10-31 12:23:13', '2014-10-31 12:23:13', 49, 49),
(127, 14, 14, 84, 49, 2, '2014-10-31 12:35:35', '2014-10-31 12:35:35', 49, 49),
(128, 14, 15, 73, 49, 2, '2014-10-31 12:37:15', '2014-10-31 12:37:15', 49, 49),
(129, 14, 15, 74, 49, 2, '2014-10-31 12:45:01', '2014-10-31 12:45:01', 49, 49),
(132, 14, 14, 71, 50, 2, '2014-10-31 13:33:29', '2014-10-31 13:33:29', 50, 50),
(133, 14, 14, 83, 50, 2, '2014-10-31 13:45:36', '2014-10-31 13:45:36', 50, 50),
(134, 14, 14, 72, 50, 2, '2014-10-31 13:49:24', '2014-10-31 13:49:24', 50, 50),
(135, 14, 14, 84, 50, 2, '2014-10-31 13:57:26', '2014-10-31 13:57:26', 50, 50),
(136, 14, 15, 73, 50, 2, '2014-10-31 13:58:08', '2014-10-31 13:58:08', 50, 50),
(137, 14, 15, 74, 50, 2, '2014-10-31 14:05:42', '2014-10-31 14:05:42', 50, 50),
(139, 14, 14, 71, 51, 2, '2014-10-31 15:25:02', '2014-10-31 15:25:02', 51, 51),
(140, 14, 14, 83, 51, 2, '2014-10-31 15:28:29', '2014-10-31 15:28:29', 51, 51),
(141, 14, 14, 72, 51, 2, '2014-10-31 15:29:46', '2014-10-31 15:29:46', 51, 51),
(142, 14, 14, 84, 51, 2, '2014-10-31 15:37:48', '2014-10-31 15:37:48', 51, 51),
(143, 14, 15, 73, 51, 2, '2014-10-31 15:48:39', '2014-10-31 15:48:39', 51, 51),
(144, 14, 14, 71, 53, 2, '2014-10-31 16:52:46', '2014-10-31 16:52:46', 53, 53),
(145, 14, 14, 83, 53, 2, '2014-10-31 16:55:55', '2014-10-31 16:55:55', 53, 53),
(146, 14, 14, 72, 53, 2, '2014-10-31 16:56:47', '2014-10-31 16:56:47', 53, 53),
(147, 14, 14, 84, 53, 2, '2014-10-31 17:05:05', '2014-10-31 17:05:05', 53, 53),
(148, 14, 15, 73, 53, 2, '2014-10-31 17:06:20', '2014-10-31 17:06:20', 53, 53),
(150, 14, 14, 71, 55, 2, '2014-11-01 16:56:58', '2014-11-01 16:56:58', 55, 55),
(151, 14, 14, 83, 55, 2, '2014-11-01 16:59:24', '2014-11-01 16:59:24', 55, 55),
(152, 14, 14, 72, 55, 2, '2014-11-01 17:01:09', '2014-11-01 17:01:09', 55, 55),
(153, 14, 14, 84, 55, 2, '2014-11-01 17:09:31', '2014-11-01 17:09:31', 55, 55),
(154, 14, 15, 73, 55, 2, '2014-11-01 17:10:20', '2014-11-01 17:10:20', 55, 55),
(195, 14, 14, 71, 67, 2, '2014-11-17 18:07:19', '2014-11-17 18:07:19', 67, 67),
(196, 14, 14, 83, 67, 2, '2014-11-17 18:07:49', '2014-11-17 18:07:49', 67, 67),
(197, 14, 14, 72, 67, 2, '2014-11-17 18:08:21', '2014-11-17 18:08:21', 67, 67),
(198, 14, 14, 84, 67, 2, '2014-11-17 20:25:51', '2014-11-17 20:25:51', 67, 67),
(200, 15, 18, 88, 43, 2, '2014-11-19 20:22:30', '2014-11-19 20:22:30', 43, 43),
(208, 15, 18, 91, 50, 2, '2014-11-20 20:09:13', '2014-11-20 20:09:13', 50, 50),
(209, 15, 18, 91, 43, 2, '2014-11-20 22:01:21', '2014-11-20 22:01:21', 43, 43),
(217, 15, 18, 91, 71, 2, '2014-11-21 21:42:19', '2014-11-21 21:42:19', 71, 71),
(218, 15, 18, 88, 71, 2, '2014-11-21 21:42:56', '2014-11-21 21:42:56', 71, 71),
(219, 15, 18, 89, 71, 2, '2014-11-21 21:43:29', '2014-11-21 21:43:29', 71, 71),
(220, 15, 18, 90, 71, 2, '2014-11-21 21:44:10', '2014-11-21 21:44:10', 71, 71),
(236, 15, 18, 91, 73, 2, '2014-11-21 22:49:49', '2014-11-21 22:49:49', 73, 73),
(237, 15, 18, 88, 73, 2, '2014-11-21 22:50:56', '2014-11-21 22:50:56', 73, 73),
(238, 15, 18, 89, 73, 2, '2014-11-21 22:51:18', '2014-11-21 22:51:18', 73, 73),
(239, 15, 18, 90, 73, 2, '2014-11-21 22:52:27', '2014-11-21 22:52:27', 73, 73),
(243, 14, 14, 71, 74, 2, '2014-11-25 20:29:53', '2014-11-25 20:29:53', 74, 74),
(244, 14, 14, 83, 74, 2, '2014-11-25 20:30:37', '2014-11-25 20:30:37', 74, 74),
(245, 14, 14, 72, 74, 2, '2014-11-25 20:31:04', '2014-11-25 20:31:04', 74, 74),
(246, 14, 14, 84, 74, 2, '2014-11-25 20:31:20', '2014-11-25 20:31:20', 74, 74),
(247, 14, 14, 71, 75, 2, '2014-11-25 20:38:08', '2014-11-25 20:38:08', 75, 75),
(248, 14, 14, 83, 75, 2, '2014-11-25 20:38:38', '2014-11-25 20:38:38', 75, 75),
(249, 14, 14, 72, 75, 2, '2014-11-25 20:38:39', '2014-11-25 20:38:39', 75, 75),
(250, 14, 14, 84, 75, 2, '2014-11-25 20:39:00', '2014-11-25 20:39:00', 75, 75),
(252, 15, 18, 91, 75, 2, '2014-11-26 20:00:17', '2014-11-26 20:00:17', 75, 75),
(253, 15, 18, 88, 75, 2, '2014-11-26 20:00:34', '2014-11-26 20:00:34', 75, 75),
(254, 15, 18, 89, 75, 2, '2014-11-26 20:00:53', '2014-11-26 20:00:53', 75, 75),
(255, 15, 18, 90, 75, 2, '2014-11-26 20:01:14', '2014-11-26 20:01:14', 75, 75),
(256, 14, 14, 71, 76, 2, '2014-11-26 20:04:19', '2014-11-26 20:04:19', 76, 76),
(257, 14, 14, 83, 76, 2, '2014-11-26 20:04:39', '2014-11-26 20:04:39', 76, 76),
(258, 14, 14, 72, 76, 2, '2014-11-26 20:04:43', '2014-11-26 20:04:43', 76, 76),
(259, 14, 14, 84, 76, 2, '2014-11-26 20:04:56', '2014-11-26 20:04:56', 76, 76),
(260, 14, 14, 92, 76, 2, '2014-11-26 20:05:18', '2014-11-26 20:05:18', 76, 76),
(261, 14, 15, 73, 76, 2, '2014-11-26 20:05:26', '2014-11-26 20:05:26', 76, 76),
(266, 14, 16, 77, 76, 2, '2014-11-26 22:52:12', '2014-11-26 22:52:12', 76, 76),
(276, 14, 14, 97, 43, 2, '2014-12-03 19:52:54', '2014-12-03 19:52:54', 43, 43),
(283, 14, 14, 84, 77, 2, '2014-12-08 16:52:10', '2014-12-08 16:52:10', 77, 77),
(284, 14, 14, 97, 77, 2, '2014-12-08 16:52:44', '2014-12-08 16:52:44', 77, 77),
(285, 14, 14, 83, 77, 2, '2014-12-08 16:53:15', '2014-12-08 16:53:15', 77, 77),
(286, 14, 14, 92, 77, 2, '2014-12-08 16:54:48', '2014-12-08 16:54:48', 77, 77),
(287, 14, 14, 71, 77, 2, '2014-12-08 16:54:52', '2014-12-08 16:54:52', 77, 77),
(288, 14, 14, 72, 77, 2, '2014-12-08 16:55:12', '2014-12-08 16:55:12', 77, 77),
(289, 14, 16, 77, 77, 2, '2014-12-08 16:56:19', '2014-12-08 16:56:19', 77, 77),
(290, 14, 16, 78, 77, 2, '2014-12-08 16:56:55', '2014-12-08 16:56:55', 77, 77),
(294, 14, 15, 73, 77, 2, '2014-12-08 17:23:29', '2014-12-08 17:23:29', 77, 77),
(297, 14, 17, 96, 77, 2, '2014-12-08 17:24:31', '2014-12-08 17:24:31', 77, 77),
(298, 14, 14, 84, 79, 2, '2014-12-09 20:48:38', '2014-12-09 20:48:38', 79, 79),
(299, 14, 14, 97, 79, 2, '2014-12-09 20:50:19', '2014-12-09 20:50:19', 79, 79),
(300, 14, 14, 83, 79, 2, '2014-12-09 20:50:46', '2014-12-09 20:50:46', 79, 79),
(301, 14, 14, 92, 79, 2, '2014-12-09 20:50:54', '2014-12-09 20:50:54', 79, 79),
(302, 14, 14, 71, 79, 2, '2014-12-09 20:51:00', '2014-12-09 20:51:00', 79, 79),
(303, 14, 14, 72, 79, 2, '2014-12-09 20:51:23', '2014-12-09 20:51:23', 79, 79),
(304, 14, 16, 77, 79, 2, '2014-12-09 20:51:57', '2014-12-09 20:51:57', 79, 79),
(305, 14, 16, 78, 79, 2, '2014-12-09 20:53:05', '2014-12-09 20:53:05', 79, 79),
(309, 14, 15, 73, 79, 2, '2014-12-09 21:04:45', '2014-12-09 21:04:45', 79, 79),
(312, 14, 17, 96, 79, 2, '2014-12-09 21:05:40', '2014-12-09 21:05:40', 79, 79),
(313, 15, 18, 91, 78, 2, '2014-12-09 21:46:19', '2014-12-09 21:46:19', 78, 78),
(314, 14, 14, 84, 78, 2, '2014-12-09 22:25:49', '2014-12-09 22:25:49', 78, 78),
(315, 14, 14, 97, 78, 2, '2014-12-09 22:30:43', '2014-12-09 22:30:43', 78, 78),
(316, 14, 14, 83, 78, 2, '2014-12-09 22:39:45', '2014-12-09 22:39:45', 78, 78),
(317, 14, 14, 92, 78, 2, '2014-12-09 22:39:49', '2014-12-09 22:39:49', 78, 78),
(318, 14, 14, 71, 78, 2, '2014-12-09 22:39:51', '2014-12-09 22:39:51', 78, 78),
(319, 14, 14, 72, 78, 2, '2014-12-09 22:40:03', '2014-12-09 22:40:03', 78, 78),
(320, 14, 16, 77, 78, 2, '2014-12-09 22:40:34', '2014-12-09 22:40:34', 78, 78),
(321, 14, 16, 78, 78, 2, '2014-12-09 22:41:31', '2014-12-09 22:41:31', 78, 78),
(322, 14, 16, 98, 78, 2, '2014-12-09 22:43:44', '2014-12-09 22:43:44', 78, 78),
(323, 14, 15, 73, 78, 2, '2014-12-09 22:48:52', '2014-12-09 22:48:52', 78, 78),
(324, 14, 15, 99, 78, 2, '2014-12-09 22:49:04', '2014-12-09 22:49:04', 78, 78),
(325, 14, 16, 98, 79, 2, '2014-12-09 22:55:38', '2014-12-09 22:55:38', 79, 79),
(326, 14, 15, 99, 79, 2, '2014-12-09 22:55:57', '2014-12-09 22:55:57', 79, 79),
(327, 14, 21, 100, 79, 2, '2014-12-09 23:03:41', '2014-12-09 23:03:41', 79, 79),
(328, 14, 21, 100, 81, 2, '2014-12-09 23:14:13', '2014-12-09 23:14:13', 81, 81),
(329, 14, 14, 84, 81, 2, '2014-12-09 23:16:08', '2014-12-09 23:16:08', 81, 81),
(330, 14, 14, 97, 81, 2, '2014-12-09 23:19:07', '2014-12-09 23:19:07', 81, 81),
(331, 14, 21, 100, 78, 2, '2014-12-11 23:22:04', '2014-12-11 23:22:04', 78, 78),
(332, 14, 17, 96, 78, 2, '2014-12-11 23:22:45', '2014-12-11 23:22:45', 78, 78),
(333, 15, 18, 88, 78, 2, '2014-12-12 01:08:56', '2014-12-12 01:08:56', 78, 78),
(334, 15, 18, 89, 78, 2, '2014-12-12 01:11:02', '2014-12-12 01:11:02', 78, 78),
(335, 15, 18, 90, 78, 2, '2014-12-12 01:13:26', '2014-12-12 01:13:26', 78, 78),
(336, 14, 21, 100, 86, 2, '2014-12-17 18:38:01', '2014-12-17 18:38:01', 86, 86),
(337, 14, 21, 100, 43, 2, '2014-12-22 19:15:40', '2014-12-22 19:15:40', 43, 43);

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

--
-- Dumping data for table `notificaciones`
--

INSERT INTO `notificaciones` (`id_notificaciones`, `id_usuarios`, `id_cursos`, `id_modulos`, `id_actividades_barra`, `mensaje`, `variable_extra`, `id_estados`, `id_usuario_creado`, `id_usuario_modificado`, `fecha_modificado`, `fecha_creado`, `orden`) VALUES
(357, 43, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 43, 43, '2014-11-24 22:05:55', '2014-11-24 22:05:55', 357),
(359, 37, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 37, 37, '2014-11-24 22:05:56', '2014-11-24 22:05:55', 359),
(360, 48, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 48, 48, '2014-11-24 22:05:56', '2014-11-24 22:05:56', 360),
(361, 49, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 49, 49, '2014-11-24 22:05:56', '2014-11-24 22:05:56', 361),
(362, 50, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 50, 50, '2014-11-24 22:05:56', '2014-11-24 22:05:56', 362),
(363, 51, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 51, 51, '2014-11-24 22:05:56', '2014-11-24 22:05:56', 363),
(364, 53, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 53, 53, '2014-11-24 22:05:56', '2014-11-24 22:05:56', 364),
(365, 55, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 55, 55, '2014-11-24 22:05:56', '2014-11-24 22:05:56', 365),
(370, 67, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 67, 67, '2014-11-24 22:05:56', '2014-11-24 22:05:56', 370),
(372, 43, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>20:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 43, 43, '2014-11-24 22:07:05', '2014-11-24 22:07:05', 372),
(374, 37, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>20:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 37, 37, '2014-11-24 22:07:05', '2014-11-24 22:07:05', 374),
(375, 48, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>20:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 48, 48, '2014-11-24 22:07:06', '2014-11-24 22:07:06', 375),
(376, 49, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>20:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 49, 49, '2014-11-24 22:07:06', '2014-11-24 22:07:06', 376),
(377, 50, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>20:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 50, 50, '2014-11-24 22:07:06', '2014-11-24 22:07:06', 377),
(378, 51, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>20:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 51, 51, '2014-11-24 22:07:06', '2014-11-24 22:07:06', 378),
(379, 53, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>20:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 53, 53, '2014-11-24 22:07:07', '2014-11-24 22:07:07', 379),
(380, 55, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>20:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 55, 55, '2014-11-24 22:07:07', '2014-11-24 22:07:07', 380),
(385, 67, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>20:09:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 67, 67, '2014-11-24 22:07:07', '2014-11-24 22:07:07', 385),
(387, 43, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:15:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 43, 43, '2014-11-24 22:12:32', '2014-11-24 22:12:32', 387),
(389, 37, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:15:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 37, 37, '2014-11-24 22:12:32', '2014-11-24 22:12:32', 389),
(390, 48, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:15:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 48, 48, '2014-11-24 22:12:32', '2014-11-24 22:12:32', 390),
(391, 49, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:15:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 49, 49, '2014-11-24 22:12:32', '2014-11-24 22:12:32', 391),
(392, 50, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:15:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 50, 50, '2014-11-24 22:12:33', '2014-11-24 22:12:32', 392),
(393, 51, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:15:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 51, 51, '2014-11-24 22:12:33', '2014-11-24 22:12:33', 393),
(394, 53, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:15:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 53, 53, '2014-11-24 22:12:33', '2014-11-24 22:12:33', 394),
(395, 55, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:15:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 55, 55, '2014-11-24 22:12:33', '2014-11-24 22:12:33', 395),
(400, 67, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>17:15:40</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 67, 67, '2014-11-24 22:12:33', '2014-11-24 22:12:33', 400),
(404, 74, 14, 14, 84, 'Tu Facilitador ha calificado como Correcta la pregunta ''Sabes ¿Para qué haces lo que haces en tu vida?'' de la actividad Torneo de desempeño', NULL, 8, 44, 44, '2014-11-25 20:31:47', '2014-11-25 20:31:46', 404),
(405, 74, 14, 14, 84, 'Tu Facilitador ha calificado como Correcta la pregunta ''Sabes ¿Para qué haces lo que haces en tu vida?'' de la actividad Torneo de desempeño', NULL, 8, 44, 44, '2014-11-25 20:33:15', '2014-11-25 20:33:15', 405),
(406, 75, 14, 14, 84, 'Tu Facilitador ha calificado como Correcta la pregunta ''Sabes ¿Para qué haces lo que haces en tu vida?'' de la actividad Torneo de desempeño', NULL, 8, 44, 44, '2014-11-25 20:39:51', '2014-11-25 20:39:50', 406),
(407, 75, 14, 14, 84, 'Tu Facilitador ha calificado como Incorrecta la pregunta ''Califique ps!'' de la actividad Torneo de desempeño', NULL, 8, 44, 44, '2014-11-25 20:39:51', '2014-11-25 20:39:51', 407),
(408, 67, 14, 14, 84, 'Tu Facilitador ha calificado como Correcta la pregunta ''Sabes ¿Para qué haces lo que haces en tu vida?'' de la actividad Torneo de desempeño', NULL, 8, 44, 44, '2014-11-25 21:13:46', '2014-11-25 21:13:46', 408),
(409, 67, 14, 14, 84, 'Tu Facilitador ha calificado como Correcta la pregunta ''Califique ps!'' de la actividad Torneo de desempeño', NULL, 8, 44, 44, '2014-11-25 21:13:47', '2014-11-25 21:13:47', 409),
(412, 76, 14, 14, 84, 'Tu Facilitador ha calificado como Incorrecta la pregunta ''Sabes ¿Para qué haces lo que haces en tu vida?'' de la actividad Torneo de desempeño', NULL, 8, 44, 44, '2014-11-26 20:16:57', '2014-11-26 20:16:57', 412),
(413, 76, 14, 14, 84, 'Tu Facilitador ha calificado como Correcta la pregunta ''Califique ps!'' de la actividad Torneo de desempeño', NULL, 8, 44, 44, '2014-11-26 20:16:58', '2014-11-26 20:16:57', 413),
(414, 43, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 43, 43, '2014-11-26 21:06:23', '2014-11-26 21:06:23', 414),
(416, 37, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 37, 37, '2014-11-26 21:06:23', '2014-11-26 21:06:23', 416),
(417, 48, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 48, 48, '2014-11-26 21:06:23', '2014-11-26 21:06:23', 417),
(418, 49, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 49, 49, '2014-11-26 21:06:23', '2014-11-26 21:06:23', 418),
(419, 50, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 50, 50, '2014-11-26 21:06:24', '2014-11-26 21:06:23', 419),
(420, 51, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 51, 51, '2014-11-26 21:06:24', '2014-11-26 21:06:24', 420),
(421, 53, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 53, 53, '2014-11-26 21:06:24', '2014-11-26 21:06:24', 421),
(422, 55, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 55, 55, '2014-11-26 21:06:24', '2014-11-26 21:06:24', 422),
(427, 67, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 67, 67, '2014-11-26 21:06:24', '2014-11-26 21:06:24', 427),
(429, 74, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 74, 74, '2014-11-26 21:06:24', '2014-11-26 21:06:24', 429),
(430, 75, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 75, 75, '2014-11-26 21:06:24', '2014-11-26 21:06:24', 430),
(431, 76, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>24</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 76, 76, '2014-11-26 21:06:24', '2014-11-26 21:06:24', 431),
(432, 43, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 43, 43, '2014-11-26 21:11:22', '2014-11-26 21:11:22', 432),
(434, 37, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 37, 37, '2014-11-26 21:11:22', '2014-11-26 21:11:22', 434),
(435, 48, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 48, 48, '2014-11-26 21:11:22', '2014-11-26 21:11:22', 435),
(436, 49, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 49, 49, '2014-11-26 21:11:22', '2014-11-26 21:11:22', 436),
(437, 50, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 50, 50, '2014-11-26 21:11:22', '2014-11-26 21:11:22', 437),
(438, 51, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 51, 51, '2014-11-26 21:11:22', '2014-11-26 21:11:22', 438),
(439, 53, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 53, 53, '2014-11-26 21:11:22', '2014-11-26 21:11:22', 439),
(440, 55, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 55, 55, '2014-11-26 21:11:22', '2014-11-26 21:11:22', 440),
(445, 67, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 67, 67, '2014-11-26 21:11:23', '2014-11-26 21:11:23', 445),
(447, 74, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 74, 74, '2014-11-26 21:11:23', '2014-11-26 21:11:23', 447),
(448, 75, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 75, 75, '2014-11-26 21:11:23', '2014-11-26 21:11:23', 448),
(449, 76, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 76, 76, '2014-11-26 21:11:23', '2014-11-26 21:11:23', 449),
(450, 43, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 43, 43, '2014-11-26 22:16:23', '2014-11-26 22:16:23', 450),
(452, 37, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 37, 37, '2014-11-26 22:16:23', '2014-11-26 22:16:23', 452),
(453, 48, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 48, 48, '2014-11-26 22:16:24', '2014-11-26 22:16:23', 453),
(454, 49, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 49, 49, '2014-11-26 22:16:24', '2014-11-26 22:16:24', 454),
(455, 50, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 50, 50, '2014-11-26 22:16:24', '2014-11-26 22:16:24', 455),
(456, 51, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 51, 51, '2014-11-26 22:16:24', '2014-11-26 22:16:24', 456),
(457, 53, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 53, 53, '2014-11-26 22:16:24', '2014-11-26 22:16:24', 457),
(458, 55, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 55, 55, '2014-11-26 22:16:24', '2014-11-26 22:16:24', 458),
(463, 67, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 67, 67, '2014-11-26 22:16:25', '2014-11-26 22:16:25', 463),
(465, 74, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 74, 74, '2014-11-26 22:16:25', '2014-11-26 22:16:25', 465),
(466, 75, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 75, 75, '2014-11-26 22:16:25', '2014-11-26 22:16:25', 466),
(467, 76, 14, 14, 71, 'Clase en vivo programada: el próximo <b><b>26</b> de <b>Noviembre</b> de 2014</b> a las <b>16:09</b> tendrás clase de iframe Code Enya – Curso: Retándome', NULL, 8, 76, 76, '2014-11-26 22:16:25', '2014-11-26 22:16:25', 467);

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
(1, 'Liderazgo Onlines', '¡Una experiencia de aprendizaje online que potencializará tus capacidades para el éxito integral!', '¡Una experiencia de aprendizaje online que potencializará tus capacidades para el éxito integral!', '¡Una experiencia de aprendizaje online que potencializará tus capacidades para el éxito integral! ', '7cacd4a1f02ed0771de66dca25286f63.jpg', '{"titulos":"[{\\"atributo_titulo1\\":\\"Contenidos de alta calidad\\"},{\\"atributo_titulo2\\":\\"Aprende a tu ritmo\\"},{\\"atributo_titulo3\\":\\"Certificamos tus habilidades\\"}]","contenidos":"[{\\"atributo_contenido1\\":\\"Recibe clases en vivo, gu\\\\u00edas y contenidos desarrollados por facilitadores expertos y reconocidos.\\"},{\\"atributo_contenido2\\":\\"Accede a tus cursos en cualquier momento del d\\\\u00eda, desde tu computador, tableta o smartphone.\\"},{\\"atributo_contenido3\\":\\"Recibir\\\\u00e1s un certificado avalado por miembros de la ICL.\\"}]","atributo_fotos":"[{\\"atributo_foto1\\":\\"a664a37b626fa0a5f528035f3223721c.png\\"},{\\"atributo_foto2\\":\\"a31baf9ee0984de828035f2d1b56f1b9.png\\"},{\\"atributo_foto3\\":\\"234a8e4dcbbe87650910726a413462c2.png\\"}]"}', '{"boton_nombre":"Ver cursos","boton_url":"\\/cursos"}', '¡Regístrate!', '{"titulo_testimonios":"+8 pa\\u00edses +1000 profesionales certificados","des_testimonios":"Ellos han estudiado en Campus Escala y estos son sus comentarios tras haber vivido nuestra experiencia de aprendizaje."}', 'Cursos destacados', '¡Disfruta instantáneamente de estos y más cursos que tenemos para ti!', '{"planes_valores":"[\\"15USD\\\\\\/curso\\",\\"Gratis\\",\\"\\"]","lineas1":"[\\"Clases en vivo con facilitadores\\",\\"Contenidos de alta calidad\\",\\"\\"]","lineas2":"[\\"Respuesta a todas tus preguntas\\",\\"Videos con expertos\\",\\"\\"]","lineas3":"[\\"Acceso a contenido exclusivo\\",\\"\\",\\"\\"]","lineas4":"[\\"Certificado de competencias \\",\\"\\",\\"\\"]","id_planes":"[\\"2\\",\\"1\\",\\"3\\"]","urls":"[\\"\\\\\\/cursos\\\\\\/detalle\\\\\\/14\\\\\\/retandome.html\\",\\"\\\\\\/cursos\\\\\\/detalle\\\\\\/14\\\\\\/retandome.html\\",\\"\\"]"}', '{"nombres_completos":"[{\\"testi_nombres_completos1\\":\\"Sebastian A. Rodriguez \\"},{\\"testi_nombres_completos2\\":\\"Claudia Ariza\\"},{\\"testi_nombres_completos3\\":\\"Adriana Lalinde\\"}]","profesion":"[{\\"testi_profesion1\\":\\"Ingeniero de sistemas\\"},{\\"testi_profesion2\\":\\"Consultora en innovaci\\\\u00f3n\\"},{\\"testi_profesion3\\":\\"Master en Marketing\\"}]","texto_testimonio":"[{\\"txt_testimonio1\\":\\"Decid\\\\u00ed hacer el curso de Liderazgo integral y en 2 meses mi vida profesional ha evolucionado como nunca antes.\\"},{\\"txt_testimonio2\\":\\"Describir\\\\u00eda a Escala como el lugar que me permiti\\\\u00f3 descubrir mis capacidades y potencializarlas al m\\\\u00e1ximo.\\"},{\\"txt_testimonio3\\":\\"Soy gerente comercial de una reconocida multinacional y en Escala superaron mis expectativas de desarrollo profesional y ejecutivo.\\"}]","testi_fotos":"[{\\"testi_foto1\\":\\"85f50ee3f01df303d9d7ad4b677261c9.png\\"},{\\"testi_foto2\\":\\"d5b29036a54199850f8171d1518ccb10.png\\"},{\\"testi_foto3\\":\\"9b96bc7b94ab53b9681fea72c4bfb388.png\\"}]"}', '2014-11-27 20:41:52', 79);

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

--
-- Dumping data for table `pagos_realizados`
--

INSERT INTO `pagos_realizados` (`id_pagos_realizados`, `id_usuarios`, `id_cursos`, `valor`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(5, 78, 14, 30000, 14, '2014-12-09 22:28:17', '2014-12-09 22:28:17', 78, 78, 5);

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
(2, 2, '["1"]', 1, '2014-08-20 03:51:45', '2014-08-22 02:27:54', 1, 1, 7),
(3, 3, '["1","4"]', 1, '2014-08-20 03:51:53', '2014-08-20 22:05:13', 1, 1, 16),
(4, 4, '["1","4"]', 1, '2014-08-20 03:51:58', '2014-08-20 22:05:17', 1, 1, 11),
(5, 5, '["1","4"]', 1, '2014-08-20 03:52:04', '2014-08-19 21:20:19', 1, 1, 2),
(6, 6, '["1","4"]', 1, '2014-08-20 03:52:10', '2014-08-20 22:05:13', 1, 1, 15),
(7, 7, '["1","4"]', 1, '2014-08-20 03:52:20', '2014-08-19 21:20:23', 1, 1, 3),
(8, 8, '["1","2","4"]', 1, '2014-08-20 03:52:27', '2014-11-26 20:23:51', 1, 1, 8),
(10, 10, '["1","4"]', 1, '2014-08-20 03:52:39', '2014-08-20 22:05:17', 1, 1, 10),
(11, 11, '["1","4"]', 1, '2014-08-20 03:52:46', '2014-08-20 22:05:13', 1, 1, 17),
(12, 12, '["1","4"]', 1, '2014-08-20 03:52:52', '2014-08-20 22:05:17', 1, 1, 12),
(13, 13, '["1","4"]', 1, '2014-08-20 03:52:58', '2014-09-10 22:10:53', 1, 1, 14),
(14, 14, '["1","2","4"]', 1, '2014-08-20 03:53:24', '2014-09-10 22:13:37', 1, 1, 1),
(15, 15, '["1","4"]', 1, '2014-08-20 03:53:31', '2014-08-19 21:20:27', 1, 1, 4),
(17, 17, '["1","2"]', 1, '2014-08-20 04:13:06', '2014-09-10 22:13:44', 1, 1, 9),
(18, 18, '["1","2","4"]', 1, '2014-08-20 04:14:09', '2014-08-23 05:50:15', 1, 1, 13),
(19, 19, '["1","4"]', 0, '2014-08-20 04:22:29', '2014-08-20 22:05:13', 1, 1, 18),
(20, 20, '["1"]', 1, '2014-08-21 05:04:36', '2014-08-22 02:28:14', 1, 1, 5),
(21, 1, '["1"]', 1, '2014-08-22 02:33:44', '2014-08-21 19:33:44', 1, 1, 21),
(22, 21, '["1"]', 1, '2014-08-23 20:57:15', '2014-08-23 13:57:15', 1, 1, 22),
(23, 22, '["1"]', 1, '2014-08-24 00:47:58', '2014-08-24 00:48:44', 1, 1, 23),
(24, 25, '["1"]', 1, '2014-08-29 04:38:19', '2014-08-28 21:38:19', 1, 1, 24),
(25, 26, '["1"]', 1, '2014-08-29 05:08:21', '2014-08-28 22:08:21', 1, 1, 25),
(26, 27, '["1","4"]', 1, '2014-09-16 19:08:13', '2014-09-16 19:09:32', 1, 1, 26),
(27, 28, '["1","4"]', 1, '2014-09-26 22:00:16', '2014-09-26 22:00:16', 1, 1, 27),
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
(1, 'Campus Escalas', 'Escala', 'edwin.garzon@virtualab.co', 'http://plataforma.virtualab.co', '¡Una experiencia de aprendizaje online que potencializará tus capacidades para el éxito integral!', 'keyword,keyword', '785e4f5ebe18fddcc642620b2dd59b8a.png', '', 'Bangers', '#96bf04', '#7416f0', '#2c2cbf', '0', 'http://www.facebook.com/EscalaEscuela', 'http://www.twitter.com/escala_', 'Virtualab', 'http://www.virtualab.co', 'Medellín – Colombia\nDirección: Cra 42 # 48 – 72\nPBX: (4) 444 66 43 – Teléfono móvil: 311 382 11 05', 'La escuela de capacitación laboral <b>ESCALA</b>', 'Licencia de funcionamiento según resolución No 000987, 31 de julio de 1997,\nexpedida por la Secretaría de Educación Municipal de Medellín', 'Certifica la asistencia y participación al programa de', '', '', '<script>\n  (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n  })(window,document,''script'',''//www.google-analytics.com/analytics.js'',''ga'');\n\n  ga(''create'', ''UA-57138643-1'', ''auto'');\n  ga(''send'', ''pageview'');\n\n</script>');

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

--
-- Dumping data for table `programacion_envio`
--

INSERT INTO `programacion_envio` (`id_programacion_envio`, `curso`, `mensaje`, `id_usuarios`, `id_estados`, `fecha_envio`, `hora_envio`, `id_cursos`, `id_usuario_creado`, `id_usuario_modificado`, `fecha_modificado`, `fecha_creado`, `orden`) VALUES
(9, 'Retándome', 'iframe Code Enya', 44, 1, '2014-11-26', '16:09', 14, 44, 44, '2014-11-26 22:16:25', '2014-11-26 22:16:25', 9);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=436 ;

--
-- Dumping data for table `puntaje`
--

INSERT INTO `puntaje` (`id_puntaje`, `id_cursos`, `id_modulos`, `id_actividades_barra`, `variable_extra`, `id_usuarios`, `puntaje`, `id_motivos`, `id_estados`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`) VALUES
(114, 14, 14, 0, NULL, 43, 10, 1, 1, '2014-10-30 23:14:20', '2014-10-30 23:14:20', 43, 43),
(115, 14, 14, 71, NULL, 43, 1, 2, 1, '2014-10-30 23:50:06', '2014-10-30 23:50:06', 43, 43),
(116, 14, 14, 71, NULL, 43, 10, 3, 1, '2014-10-30 23:50:09', '2014-10-30 23:50:09', 43, 43),
(117, 14, 14, 72, NULL, 43, 1, 2, 1, '2014-10-30 23:55:20', '2014-10-30 23:55:20', 43, 43),
(118, 14, 14, 0, NULL, 43, 3, 10, 1, '2014-10-30 23:55:25', '2014-10-30 23:55:25', 43, 43),
(119, 14, 14, 0, NULL, 43, 5, 9, 1, '2014-10-30 23:55:25', '2014-10-30 23:55:25', 43, 43),
(120, 14, 15, 73, NULL, 43, 1, 2, 1, '2014-10-30 23:59:42', '2014-10-30 23:59:42', 43, 43),
(121, 14, 15, 74, NULL, 43, 1, 2, 1, '2014-10-31 00:01:02', '2014-10-31 00:01:02', 43, 43),
(122, 14, 15, 75, NULL, 43, 1, 2, 1, '2014-10-31 00:03:17', '2014-10-31 00:03:17', 43, 43),
(123, 14, 15, 76, NULL, 43, 1, 2, 1, '2014-10-31 00:04:46', '2014-10-31 00:04:46', 43, 43),
(125, 14, 15, 0, NULL, 43, 5, 9, 1, '2014-10-31 00:04:51', '2014-10-31 00:04:51', 43, 43),
(129, 14, 14, 83, '1', 43, 10, 6, 1, '2014-10-31 00:37:49', '2014-10-31 00:37:49', 43, 43),
(130, 14, 14, 0, NULL, 48, 10, 1, 1, '2014-10-31 02:28:14', '2014-10-31 02:28:14', 48, 48),
(131, 14, 14, 71, NULL, 48, 1, 2, 1, '2014-10-31 02:31:36', '2014-10-31 02:31:36', 48, 48),
(132, 14, 14, 71, NULL, 48, 10, 3, 1, '2014-10-31 02:31:38', '2014-10-31 02:31:38', 48, 48),
(133, 14, 14, 72, NULL, 48, 1, 2, 1, '2014-10-31 02:33:48', '2014-10-31 02:33:48', 48, 48),
(134, 14, 14, 84, NULL, 48, 10, 2, 1, '2014-10-31 02:34:02', '2014-10-31 02:34:02', 48, 48),
(135, 14, 14, 0, NULL, 48, 3, 10, 1, '2014-10-31 02:34:09', '2014-10-31 02:34:09', 48, 48),
(136, 14, 14, 0, NULL, 48, 5, 9, 1, '2014-10-31 02:34:09', '2014-10-31 02:34:09', 48, 48),
(137, 14, 15, 73, NULL, 48, 1, 2, 1, '2014-10-31 02:34:34', '2014-10-31 02:34:34', 48, 48),
(138, 14, 15, 74, NULL, 48, 1, 2, 1, '2014-10-31 02:34:47', '2014-10-31 02:34:47', 48, 48),
(139, 14, 15, 75, NULL, 48, 1, 2, 1, '2014-10-31 02:35:01', '2014-10-31 02:35:01', 48, 48),
(140, 14, 15, 76, NULL, 48, 1, 2, 1, '2014-10-31 02:35:13', '2014-10-31 02:35:13', 48, 48),
(141, 14, 15, 0, NULL, 48, 5, 9, 1, '2014-10-31 02:35:15', '2014-10-31 02:35:15', 48, 48),
(142, 14, 14, 83, '15', 43, 10, 6, 1, '2014-10-31 04:39:58', '2014-10-31 04:39:58', 43, 43),
(143, 14, 15, 0, NULL, 43, 20, 11, 1, '2014-10-31 04:48:39', '2014-10-31 04:48:39', 43, 43),
(144, 14, 14, 0, NULL, 49, 10, 1, 1, '2014-10-31 12:19:59', '2014-10-31 12:19:59', 49, 49),
(145, 14, 14, 71, NULL, 49, 1, 2, 1, '2014-10-31 12:21:34', '2014-10-31 12:21:34', 49, 49),
(146, 14, 14, 71, NULL, 49, 10, 3, 1, '2014-10-31 12:22:08', '2014-10-31 12:22:08', 49, 49),
(147, 14, 14, 72, NULL, 49, 1, 2, 1, '2014-10-31 12:30:40', '2014-10-31 12:30:40', 49, 49),
(148, 14, 14, 0, NULL, 49, 5, 9, 1, '2014-10-31 12:37:02', '2014-10-31 12:37:02', 49, 49),
(149, 14, 15, 73, NULL, 49, 1, 2, 1, '2014-10-31 12:39:26', '2014-10-31 12:39:26', 49, 49),
(150, 14, 15, 74, NULL, 49, 1, 2, 1, '2014-10-31 12:53:36', '2014-10-31 12:53:36', 49, 49),
(151, 14, 15, 75, NULL, 49, 1, 2, 1, '2014-10-31 12:58:51', '2014-10-31 12:58:51', 49, 49),
(152, 14, 15, 0, NULL, 49, 3, 10, 1, '2014-10-31 13:01:04', '2014-10-31 13:01:04', 49, 49),
(153, 14, 15, 0, NULL, 49, 5, 9, 1, '2014-10-31 13:01:04', '2014-10-31 13:01:04', 49, 49),
(154, 14, 15, 0, NULL, 49, 20, 11, 1, '2014-10-31 13:01:32', '2014-10-31 13:01:32', 49, 49),
(155, 14, 14, 0, NULL, 50, 10, 1, 1, '2014-10-31 13:33:29', '2014-10-31 13:33:29', 50, 50),
(156, 14, 14, 71, NULL, 50, 1, 2, 1, '2014-10-31 13:41:08', '2014-10-31 13:41:08', 50, 50),
(157, 14, 14, 71, NULL, 50, 10, 3, 1, '2014-10-31 13:45:36', '2014-10-31 13:45:36', 50, 50),
(158, 14, 14, 72, NULL, 50, 1, 2, 1, '2014-10-31 13:57:07', '2014-10-31 13:57:07', 50, 50),
(159, 14, 14, 0, NULL, 50, 3, 10, 1, '2014-10-31 13:57:55', '2014-10-31 13:57:55', 50, 50),
(160, 14, 14, 0, NULL, 50, 5, 9, 1, '2014-10-31 13:57:55', '2014-10-31 13:57:55', 50, 50),
(161, 14, 15, 73, NULL, 50, 1, 2, 1, '2014-10-31 14:05:13', '2014-10-31 14:05:13', 50, 50),
(162, 14, 15, 76, NULL, 50, 1, 2, 1, '2014-10-31 14:15:03', '2014-10-31 14:15:03', 50, 50),
(163, 14, 15, 0, NULL, 50, 3, 10, 1, '2014-10-31 14:15:11', '2014-10-31 14:15:11', 50, 50),
(164, 14, 15, 0, NULL, 50, 5, 9, 1, '2014-10-31 14:15:11', '2014-10-31 14:15:11', 50, 50),
(165, 14, 14, 83, '18', 50, 10, 6, 1, '2014-10-31 14:34:36', '2014-10-31 16:56:41', 50, 50),
(166, 14, 14, 0, NULL, 51, 10, 1, 1, '2014-10-31 15:25:01', '2014-10-31 15:25:01', 51, 51),
(167, 14, 14, 71, NULL, 51, 1, 2, 1, '2014-10-31 15:28:15', '2014-10-31 15:28:15', 51, 51),
(168, 14, 14, 71, NULL, 51, 10, 3, 1, '2014-10-31 15:28:20', '2014-10-31 15:28:20', 51, 51),
(169, 14, 14, 72, NULL, 51, 1, 2, 1, '2014-10-31 15:37:40', '2014-10-31 15:37:40', 51, 51),
(170, 14, 14, 0, NULL, 51, 3, 10, 1, '2014-10-31 15:44:52', '2014-10-31 15:44:52', 51, 51),
(171, 14, 14, 0, NULL, 51, 5, 9, 1, '2014-10-31 15:44:52', '2014-10-31 15:44:52', 51, 51),
(172, 14, 14, 0, NULL, 53, 10, 1, 1, '2014-10-31 16:52:46', '2014-10-31 16:52:46', 53, 53),
(173, 14, 14, 71, NULL, 53, 1, 2, 1, '2014-10-31 16:55:36', '2014-10-31 16:55:36', 53, 53),
(174, 14, 14, 71, NULL, 53, 10, 3, 1, '2014-10-31 16:55:45', '2014-10-31 16:55:45', 53, 53),
(175, 14, 14, 72, NULL, 53, 1, 2, 1, '2014-10-31 17:05:03', '2014-10-31 17:05:03', 53, 53),
(176, 14, 14, 0, NULL, 53, 5, 9, 1, '2014-10-31 17:06:04', '2014-10-31 17:06:04', 53, 53),
(177, 14, 15, 73, NULL, 53, 1, 2, 1, '2014-10-31 17:13:21', '2014-10-31 17:13:21', 53, 53),
(178, 14, 15, 76, NULL, 53, 1, 2, 1, '2014-10-31 17:13:43', '2014-10-31 17:13:43', 53, 53),
(179, 14, 15, 0, NULL, 53, 3, 10, 1, '2014-10-31 17:13:48', '2014-10-31 17:13:48', 53, 53),
(180, 14, 15, 0, NULL, 53, 5, 9, 1, '2014-10-31 17:13:48', '2014-10-31 17:13:48', 53, 53),
(181, 14, 15, 0, NULL, 53, 2, 7, 1, '2014-10-31 17:13:55', '2014-10-31 17:13:55', 53, 53),
(182, 14, 15, 0, NULL, 53, 2, 8, 1, '2014-10-31 17:13:56', '2014-10-31 17:13:56', 53, 53),
(183, 14, 15, 0, NULL, 53, 20, 11, 1, '2014-10-31 17:14:11', '2014-10-31 17:14:11', 53, 53),
(184, 14, 14, 0, NULL, 55, 10, 1, 1, '2014-11-01 16:56:58', '2014-11-01 16:56:58', 55, 55),
(185, 14, 14, 71, NULL, 55, 1, 2, 1, '2014-11-01 16:59:09', '2014-11-01 16:59:09', 55, 55),
(186, 14, 14, 71, NULL, 55, 10, 3, 1, '2014-11-01 16:59:14', '2014-11-01 16:59:14', 55, 55),
(187, 14, 14, 72, NULL, 55, 1, 2, 1, '2014-11-01 17:09:22', '2014-11-01 17:09:22', 55, 55),
(188, 14, 14, 0, NULL, 55, 5, 9, 1, '2014-11-01 17:10:16', '2014-11-01 17:10:16', 55, 55),
(201, 14, 14, 71, NULL, 55, 0, 12, 1, '2014-11-11 19:42:29', '2014-11-11 19:42:29', 55, 55),
(237, 14, 14, 71, NULL, 43, -16, 12, 1, '2014-11-16 23:30:58', '2014-12-03 19:42:10', 43, 43),
(245, 14, 14, 84, NULL, 50, 5, 2, 1, '2014-11-17 18:02:18', '2014-11-17 18:02:18', 50, 50),
(246, 14, 14, 0, NULL, 67, 10, 1, 1, '2014-11-17 18:07:19', '2014-11-17 18:07:19', 67, 67),
(247, 14, 14, 71, NULL, 67, 1, 2, 1, '2014-11-17 18:07:45', '2014-11-17 18:07:45', 67, 67),
(248, 14, 14, 71, NULL, 67, 10, 3, 1, '2014-11-17 18:07:46', '2014-11-17 18:07:46', 67, 67),
(249, 14, 14, 72, NULL, 67, 1, 2, 1, '2014-11-17 20:25:49', '2014-11-17 20:25:49', 67, 67),
(250, 14, 14, 84, NULL, 67, 10, 2, 1, '2014-11-17 20:41:39', '2014-11-25 20:58:28', 67, 67),
(277, 15, 18, 0, NULL, 71, 10, 1, 1, '2014-11-21 21:42:19', '2014-11-21 21:42:19', 71, 71),
(278, 15, 18, 91, NULL, 71, 1, 2, 1, '2014-11-21 21:42:53', '2014-11-21 21:42:53', 71, 71),
(279, 15, 18, 91, NULL, 71, 10, 3, 1, '2014-11-21 21:42:54', '2014-11-21 21:42:54', 71, 71),
(280, 15, 18, 88, NULL, 71, 1, 2, 1, '2014-11-21 21:43:27', '2014-11-21 21:43:27', 71, 71),
(281, 15, 18, 89, NULL, 71, 1, 2, 1, '2014-11-21 21:44:06', '2014-11-21 21:44:06', 71, 71),
(282, 15, 18, 90, NULL, 71, 1, 2, 1, '2014-11-21 21:44:45', '2014-11-21 21:44:45', 71, 71),
(283, 15, 18, 0, NULL, 71, 5, 9, 1, '2014-11-21 21:44:49', '2014-11-21 21:44:49', 71, 71),
(284, 15, 18, 0, NULL, 71, 20, 11, 1, '2014-11-21 21:44:50', '2014-11-21 21:44:50', 71, 71),
(309, 15, 18, 0, NULL, 73, 10, 1, 1, '2014-11-21 22:49:49', '2014-11-21 22:49:49', 73, 73),
(310, 15, 18, 91, NULL, 73, 1, 2, 1, '2014-11-21 22:50:42', '2014-11-21 22:50:42', 73, 73),
(311, 15, 18, 91, NULL, 73, 10, 3, 1, '2014-11-21 22:50:46', '2014-11-21 22:50:46', 73, 73),
(312, 15, 18, 88, NULL, 73, 1, 2, 1, '2014-11-21 22:51:08', '2014-11-21 22:51:08', 73, 73),
(313, 15, 18, 89, NULL, 73, 1, 2, 1, '2014-11-21 22:52:01', '2014-11-21 22:52:01', 73, 73),
(314, 15, 18, 90, NULL, 73, 1, 2, 1, '2014-11-21 22:52:43', '2014-11-21 22:52:43', 73, 73),
(315, 15, 18, 0, NULL, 73, 5, 9, 1, '2014-11-21 22:52:48', '2014-11-21 22:52:48', 73, 73),
(316, 15, 18, 0, NULL, 73, 20, 11, 1, '2014-11-21 22:52:54', '2014-11-21 22:52:54', 73, 73),
(320, 14, 14, 0, NULL, 74, 10, 1, 1, '2014-11-25 20:29:53', '2014-11-25 20:29:53', 74, 74),
(321, 14, 14, 71, NULL, 74, 1, 2, 1, '2014-11-25 20:30:34', '2014-11-25 20:30:34', 74, 74),
(322, 14, 14, 71, NULL, 74, 10, 3, 1, '2014-11-25 20:30:35', '2014-11-25 20:30:35', 74, 74),
(323, 14, 14, 72, NULL, 74, 1, 2, 1, '2014-11-25 20:31:19', '2014-11-25 20:31:19', 74, 74),
(324, 14, 14, 84, NULL, 74, 10, 2, 1, '2014-11-25 20:31:27', '2014-11-25 20:31:27', 74, 74),
(325, 14, 14, 0, NULL, 75, 10, 1, 1, '2014-11-25 20:38:08', '2014-11-25 20:38:08', 75, 75),
(326, 14, 14, 71, NULL, 75, 1, 2, 1, '2014-11-25 20:38:35', '2014-11-25 20:38:35', 75, 75),
(327, 14, 14, 71, NULL, 75, 10, 3, 1, '2014-11-25 20:38:36', '2014-11-25 20:38:36', 75, 75),
(328, 14, 14, 72, NULL, 75, 1, 2, 1, '2014-11-25 20:38:59', '2014-11-25 20:38:59', 75, 75),
(329, 14, 14, 84, NULL, 75, 10, 2, 1, '2014-11-25 20:39:20', '2014-11-25 20:39:20', 75, 75),
(330, 14, 14, 71, NULL, 67, -4, 12, 1, '2014-11-25 20:58:09', '2014-11-25 20:58:09', 67, 67),
(335, 15, 18, 91, NULL, 75, 1, 2, 1, '2014-11-26 20:00:29', '2014-11-26 20:00:29', 75, 75),
(336, 15, 18, 91, NULL, 75, 10, 3, 1, '2014-11-26 20:00:30', '2014-11-26 20:00:30', 75, 75),
(337, 15, 18, 88, NULL, 75, 1, 2, 1, '2014-11-26 20:00:49', '2014-11-26 20:00:49', 75, 75),
(338, 15, 18, 89, NULL, 75, 1, 2, 1, '2014-11-26 20:01:07', '2014-11-26 20:01:07', 75, 75),
(339, 15, 18, 90, NULL, 75, 1, 2, 1, '2014-11-26 20:01:26', '2014-11-26 20:01:26', 75, 75),
(340, 15, 18, 0, NULL, 75, 5, 9, 1, '2014-11-26 20:01:30', '2014-11-26 20:01:30', 75, 75),
(341, 15, 18, 0, NULL, 75, 20, 11, 1, '2014-11-26 20:01:33', '2014-11-26 20:01:33', 75, 75),
(342, 14, 14, 0, NULL, 76, 10, 1, 1, '2014-11-26 20:04:19', '2014-11-26 20:04:19', 76, 76),
(343, 14, 14, 71, NULL, 76, 1, 2, 1, '2014-11-26 20:04:32', '2014-11-26 20:04:32', 76, 76),
(344, 14, 14, 71, NULL, 76, 10, 3, 1, '2014-11-26 20:04:36', '2014-11-26 20:04:36', 76, 76),
(345, 14, 14, 72, NULL, 76, 1, 2, 1, '2014-11-26 20:04:52', '2014-11-26 20:04:52', 76, 76),
(346, 14, 14, 84, NULL, 76, 7, 2, 1, '2014-11-26 20:05:01', '2014-11-26 20:05:01', 76, 76),
(347, 14, 14, 0, NULL, 76, 5, 9, 1, '2014-11-26 20:05:22', '2014-11-26 20:05:22', 76, 76),
(348, 14, 15, 73, NULL, 76, 1, 2, 1, '2014-11-26 20:05:50', '2014-11-26 20:05:50', 76, 76),
(349, 14, 15, 76, NULL, 76, 1, 2, 1, '2014-11-26 20:05:59', '2014-11-26 20:05:59', 76, 76),
(350, 14, 15, 0, NULL, 76, 5, 9, 1, '2014-11-26 20:06:06', '2014-11-26 20:06:06', 76, 76),
(351, 14, 15, 0, NULL, 76, 20, 11, 1, '2014-11-26 20:06:11', '2014-11-26 20:06:11', 76, 76),
(364, 14, 14, 84, NULL, 43, 7, 2, 1, '2014-12-03 22:34:38', '2014-12-03 22:34:38', 43, 43),
(365, 14, 14, 97, NULL, 43, 7, 2, 1, '2014-12-03 22:35:28', '2014-12-03 22:35:28', 43, 43),
(372, 14, 14, 0, NULL, 77, 10, 1, 1, '2014-12-08 16:43:47', '2014-12-08 16:43:47', 77, 77),
(373, 14, 14, 84, NULL, 77, 10, 2, 1, '2014-12-08 16:44:03', '2014-12-08 16:52:23', 77, 77),
(375, 14, 14, 84, NULL, 77, 10, 3, 1, '2014-12-08 16:52:44', '2014-12-08 16:52:44', 77, 77),
(376, 14, 14, 97, NULL, 77, 5, 2, 1, '2014-12-08 16:53:03', '2014-12-08 16:53:03', 77, 77),
(377, 14, 14, 71, NULL, 77, 1, 2, 1, '2014-12-08 16:55:09', '2014-12-08 16:55:09', 77, 77),
(378, 14, 14, 72, NULL, 77, 1, 2, 1, '2014-12-08 16:56:04', '2014-12-08 16:56:04', 77, 77),
(379, 14, 14, 0, NULL, 77, 5, 9, 1, '2014-12-08 16:56:10', '2014-12-08 16:56:10', 77, 77),
(380, 14, 16, 77, NULL, 77, 1, 2, 1, '2014-12-08 16:56:35', '2014-12-08 16:56:35', 77, 77),
(381, 14, 16, 78, NULL, 77, 1, 2, 1, '2014-12-08 16:57:07', '2014-12-08 16:57:07', 77, 77),
(382, 14, 16, 79, NULL, 77, 1, 2, 1, '2014-12-08 16:57:25', '2014-12-08 16:57:25', 77, 77),
(383, 14, 16, 80, NULL, 77, 1, 2, 1, '2014-12-08 17:00:27', '2014-12-08 17:00:27', 77, 77),
(384, 14, 16, 81, NULL, 77, 1, 2, 1, '2014-12-08 17:00:51', '2014-12-08 17:00:51', 77, 77),
(385, 14, 16, 0, NULL, 77, 5, 9, 1, '2014-12-08 17:21:42', '2014-12-08 17:21:42', 77, 77),
(386, 14, 15, 73, NULL, 77, 1, 2, 1, '2014-12-08 17:24:10', '2014-12-08 17:24:10', 77, 77),
(387, 14, 15, 76, NULL, 77, 1, 2, 1, '2014-12-08 17:24:22', '2014-12-08 17:24:22', 77, 77),
(388, 14, 15, 0, NULL, 77, 5, 9, 1, '2014-12-08 17:24:31', '2014-12-08 17:24:31', 77, 77),
(389, 14, 14, 0, NULL, 79, 10, 1, 1, '2014-12-09 20:48:38', '2014-12-09 20:48:38', 79, 79),
(390, 14, 14, 84, NULL, 79, 10, 2, 1, '2014-12-09 20:49:10', '2014-12-09 20:49:10', 79, 79),
(391, 14, 14, 97, NULL, 79, 7, 2, 1, '2014-12-09 20:50:34', '2014-12-09 20:50:34', 79, 79),
(392, 14, 14, 97, NULL, 79, 10, 3, 1, '2014-12-09 20:50:46', '2014-12-09 20:50:46', 79, 79),
(393, 14, 14, 71, NULL, 79, 1, 2, 1, '2014-12-09 20:51:16', '2014-12-09 20:51:16', 79, 79),
(394, 14, 14, 72, NULL, 79, 1, 2, 1, '2014-12-09 20:51:38', '2014-12-09 20:51:38', 79, 79),
(395, 14, 14, 0, NULL, 79, 5, 9, 1, '2014-12-09 20:51:43', '2014-12-09 20:51:43', 79, 79),
(396, 14, 16, 77, NULL, 79, 1, 2, 1, '2014-12-09 20:52:49', '2014-12-09 20:52:49', 79, 79),
(397, 14, 16, 78, NULL, 79, 1, 2, 1, '2014-12-09 20:53:31', '2014-12-09 20:53:31', 79, 79),
(398, 14, 16, 79, NULL, 79, 1, 2, 1, '2014-12-09 20:53:53', '2014-12-09 20:53:53', 79, 79),
(399, 14, 16, 80, NULL, 79, 1, 2, 1, '2014-12-09 20:54:11', '2014-12-09 20:54:11', 79, 79),
(400, 14, 16, 0, NULL, 79, 5, 9, 1, '2014-12-09 21:04:45', '2014-12-09 21:04:45', 79, 79),
(401, 14, 15, 73, NULL, 79, 1, 2, 1, '2014-12-09 21:05:12', '2014-12-09 21:05:12', 79, 79),
(402, 14, 15, 76, NULL, 79, 1, 2, 1, '2014-12-09 21:05:27', '2014-12-09 21:05:27', 79, 79),
(403, 14, 15, 0, NULL, 79, 5, 9, 1, '2014-12-09 21:05:40', '2014-12-09 21:05:40', 79, 79),
(404, 14, 17, 0, NULL, 79, 5, 9, 1, '2014-12-09 21:05:51', '2014-12-09 21:05:51', 79, 79),
(405, 14, 17, 0, NULL, 79, 20, 11, 1, '2014-12-09 21:05:51', '2014-12-09 21:05:51', 79, 79),
(406, 15, 18, 0, NULL, 78, 10, 1, 1, '2014-12-09 21:46:19', '2014-12-09 21:46:19', 78, 78),
(407, 15, 18, 91, NULL, 78, 1, 2, 1, '2014-12-09 21:49:39', '2014-12-09 21:49:39', 78, 78),
(408, 15, 18, 91, NULL, 78, 10, 3, 1, '2014-12-09 21:49:42', '2014-12-09 21:49:42', 78, 78),
(409, 14, 14, 84, NULL, 78, 10, 2, 1, '2014-12-09 22:30:19', '2014-12-09 22:30:19', 78, 78),
(410, 14, 14, 84, NULL, 78, 10, 3, 1, '2014-12-09 22:30:42', '2014-12-09 22:30:42', 78, 78),
(411, 14, 14, 97, NULL, 78, 3, 2, 1, '2014-12-09 22:31:55', '2014-12-09 22:31:55', 78, 78),
(412, 14, 14, 71, NULL, 78, 1, 2, 1, '2014-12-09 22:39:59', '2014-12-09 22:39:59', 78, 78),
(413, 14, 14, 72, NULL, 78, 1, 2, 1, '2014-12-09 22:40:19', '2014-12-09 22:40:19', 78, 78),
(414, 14, 14, 0, NULL, 78, 5, 9, 1, '2014-12-09 22:40:25', '2014-12-09 22:40:25', 78, 78),
(415, 14, 16, 77, NULL, 78, 1, 2, 1, '2014-12-09 22:41:20', '2014-12-09 22:41:20', 78, 78),
(416, 14, 16, 78, NULL, 78, 1, 2, 1, '2014-12-09 22:43:41', '2014-12-09 22:43:41', 78, 78),
(417, 14, 16, 98, NULL, 78, 7, 2, 1, '2014-12-09 22:44:40', '2014-12-09 22:44:40', 78, 78),
(418, 14, 16, 0, NULL, 78, 5, 9, 1, '2014-12-09 22:48:52', '2014-12-09 22:48:52', 78, 78),
(419, 14, 15, 73, NULL, 78, 1, 2, 1, '2014-12-09 22:49:02', '2014-12-09 22:49:02', 78, 78),
(420, 14, 15, 99, NULL, 78, 10, 2, 1, '2014-12-09 22:49:22', '2014-12-09 22:53:27', 78, 78),
(421, 14, 16, 98, NULL, 79, 10, 2, 1, '2014-12-09 22:55:43', '2014-12-09 22:55:43', 79, 79),
(422, 14, 15, 99, NULL, 79, 10, 2, 1, '2014-12-09 22:56:02', '2014-12-09 22:56:02', 79, 79),
(423, 14, 21, 0, NULL, 81, 10, 1, 1, '2014-12-09 23:14:13', '2014-12-09 23:14:13', 81, 81),
(424, 14, 21, 0, NULL, 81, 5, 9, 1, '2014-12-09 23:16:07', '2014-12-09 23:16:07', 81, 81),
(425, 14, 14, 84, NULL, 81, 10, 2, 1, '2014-12-09 23:18:58', '2014-12-09 23:18:58', 81, 81),
(426, 14, 14, 97, NULL, 81, 7, 2, 1, '2014-12-09 23:19:44', '2014-12-09 23:19:44', 81, 81),
(427, 14, 15, 0, NULL, 78, 5, 9, 1, '2014-12-11 23:22:45', '2014-12-11 23:22:45', 78, 78),
(428, 14, 17, 0, NULL, 78, 5, 9, 1, '2014-12-11 23:44:29', '2014-12-11 23:44:29', 78, 78),
(429, 15, 18, 88, NULL, 78, 1, 2, 1, '2014-12-12 01:10:58', '2014-12-12 01:10:58', 78, 78),
(430, 15, 18, 89, NULL, 78, 1, 2, 1, '2014-12-12 01:13:22', '2014-12-12 01:13:22', 78, 78),
(431, 15, 18, 90, NULL, 78, 1, 2, 1, '2014-12-12 01:14:28', '2014-12-12 01:14:28', 78, 78),
(432, 15, 18, 0, NULL, 78, 5, 9, 1, '2014-12-12 01:14:33', '2014-12-12 01:14:33', 78, 78),
(433, 15, 18, 0, NULL, 78, 20, 11, 1, '2014-12-12 01:14:41', '2014-12-12 01:14:41', 78, 78),
(434, 14, 21, 0, NULL, 86, 10, 1, 1, '2014-12-17 18:38:01', '2014-12-17 18:38:01', 86, 86),
(435, 14, 21, 100, NULL, 43, -26, 12, 1, '2014-12-22 19:15:40', '2014-12-22 19:15:40', 43, 43);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `recompensas_aleatorias_usuarios`
--

INSERT INTO `recompensas_aleatorias_usuarios` (`id_recompensas_aleatorias_usuarios`, `id_recompensas_aleatorias`, `id_usuarios`, `id_cursos`, `id_modulos`, `id_tipos_premio`, `valor`, `id_estados`, `id_usuario_creado`, `id_usuario_modificado`, `fecha_creado`, `fecha_modificado`, `orden`) VALUES
(36, 8, 76, 14, 15, 4, 7, 7, 76, 76, '2014-11-26 20:09:19', '2014-11-26 20:09:19', 36),
(43, 8, 77, 14, 14, 4, 7, 7, 77, 77, '2014-12-08 16:56:10', '2014-12-08 16:56:10', 43),
(44, 8, 79, 14, 14, 4, 7, 7, 79, 79, '2014-12-09 20:51:42', '2014-12-09 20:51:43', 44),
(45, 8, 78, 14, 14, 4, 7, 7, 78, 78, '2014-12-09 22:40:24', '2014-12-09 22:40:25', 45),
(46, 8, 81, 14, 21, 4, 7, 7, 81, 81, '2014-12-09 23:16:07', '2014-12-09 23:16:07', 46),
(47, 8, 78, 15, 18, 4, 7, 7, 78, 78, '2014-12-12 01:14:33', '2014-12-12 01:14:33', 47);

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
(1, 'Estándar', 'Plan Estándar del sistema', '2014-07-22 02:23:33', '2014-10-30 23:21:06', 1, 1, 1, 2),
(2, 'Premium', 'Plan Premium de pago', '2014-07-24 03:33:53', '2014-10-30 23:21:06', 1, 1, 1, 1);

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
  UNIQUE KEY `identificacion` (`identificacion`),
  KEY `id_roles` (`id_roles`),
  KEY `id_estados` (`id_estados`),
  KEY `id_usuario_creado` (`id_usuario_creado`),
  KEY `id_usuario_modificado` (`id_usuario_modificado`),
  KEY `id_usuario_creado_2` (`id_usuario_creado`),
  KEY `id_usuario_modificado_2` (`id_usuario_modificado`),
  KEY `id_tipo_planes` (`id_tipo_planes`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Tablas de usuarios del sistema' AUTO_INCREMENT=87 ;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombres`, `apellidos`, `profesion`, `ciudad`, `id_tipo_planes`, `foto`, `correo`, `contrasena`, `identificacion`, `resumen_de_perfil`, `user_social_key`, `id_roles`, `id_estatus`, `id_estados`, `mostrar_tutorial`, `cambiar_info`, `fecha_creado`, `fecha_modificado`, `id_usuario_creado`, `id_usuario_modificado`, `orden`) VALUES
(1, 'Edwin', 'Garzon', '', '', 0, 'c969115f5cb745b65e7f3455f18a2c44.jpeg', 'edwin.garzon@virtualab.co', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', '45454545', 'Soy ingeniero en sistemas programador websss', '', 1, 0, 1, 0, 0, '2014-07-21 21:14:51', '2014-12-11 04:09:58', 1, 1, 2),
(8, 'Camilo', 'Loveras', 'ING de sistemas experto en liderazgo2', '', 0, '6f4ab9f46a1f2fe0e298685c25d190f2.jpg', 'instructor@demo.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', '1234567890', 'cddcssd', '', 2, 0, 1, 0, 0, '2014-08-20 05:28:53', '2014-12-11 04:10:17', 1, 1, 8),
(35, 'Estudiante8', 'Demo8w', '', '', 1, '31b4bd2c51481049a4728f75f719d86a.jpg', 'demo8@demo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '8', 'xxx', '', 3, 5, 1, 0, 0, '2014-09-30 19:29:18', '2014-12-13 23:11:32', 1, 1, 35),
(36, 'Estudiante9', 'Demo9', '', '', 1, '665d65fbf5923fa3d696817246bf25de.jpg', 'demo9@demo.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', '9', 'xxx', '', 3, 5, 1, 0, 0, '2014-09-30 19:29:50', '2014-10-15 23:24:52', 1, 1, 36),
(37, 'Estudiante10', 'Demo10', '', '', 1, 'cd855e781d7fa3a7a51676ccc07dae57.jpg', 'demo10@demo.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', '10', 'xxx', '', 3, 5, 1, 0, 0, '2014-09-30 19:30:25', '2014-10-15 23:24:56', 1, 1, 37),
(38, 'Edwinx1', 'Garzonx1', '', 'Bogotá', 1, 'a578f2f2b2b578a89cbb24a90ac30092.png', 'demox1@demo.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', '112233445566', '', '', 3, 5, 1, 1, 0, '2014-10-14 19:37:18', '2014-12-11 03:26:15', 1, 1, 38),
(39, 'demo', 'demo', '', 'Bogotá', 1, '', 'demox2@demo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '12233445566', '', '', 3, 5, 1, 0, 0, '2014-10-16 19:51:29', '2014-10-16 19:54:17', 1, 1, 39),
(40, 'borrar', 'borrar', '', '', 1, '', 'borrar@demo.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 1, 0, '2014-10-17 19:08:37', '2014-10-17 19:48:12', 1, 1, 40),
(41, 'prueba1', 'prueba1', '', '', 1, '', 'prueba1@demo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, '', '', 3, 5, 1, 1, 0, '2014-10-21 20:30:26', '2014-10-21 21:12:01', 1, 1, 41),
(42, 'nombre2', 'apellido2', 'super docente', '', 0, '2381edfa20f1d2d3720a0c973191b789.png', 'instructor2@demo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '123456789', 'wwww perfil resument!!!!', '', 2, 5, 1, 0, 0, '2014-10-24 22:28:15', '2014-10-24 22:28:15', 1, 1, 42),
(43, 'Juan Camilo', 'Lovera Peña', '', 'Bogotá', 1, '22b898ba485a419c9e5bfcc4aa470b8f.jpg', 'jcamilo.lovera@gmail.com', '68fef42a2375293e3a11402c165ddabf72bde6ed', '1032438159', '', '22b898ba485a419c9e5bfcc4aa470b8f', 3, 5, 1, 1, 0, '2014-10-30 23:13:48', '2014-12-14 23:59:09', 1, 1, 43),
(44, 'Diego Alejandro', 'Gómez Zuluaga', '@AlejandroCoach', '', 0, '8ac4847e4663a6c5aab08522666149d5.jpg', 'direccion@escala.edu.co', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', '1128274706', 'Reconocido entre los Líderes Coach más jóvenes de Latinoamérica. Consultor en Liderazgo y Estrategia - Director Ejecutivo de Escala.', '', 2, 5, 1, 0, 0, '2014-10-30 23:37:15', '2014-11-19 19:50:10', 1, 1, 44),
(45, 'pal', 'pal', '', '', 1, '', 'pal@demo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, '', '', 3, 5, 0, 0, 0, '2014-10-31 02:00:27', '2014-10-31 03:00:27', 1, 1, 45),
(48, 'gauriel', 'gauss', '', 'Bogotá', 1, 'c51127bec8f470ba6557c32141d9900c.jpg', 'gauriesl@gmail.com', '72dd61c2e3ba1d5b83650107bfd13bb181048cb4', '10304564565', '', '', 3, 5, 1, 1, 0, '2014-10-31 02:15:34', '2014-11-08 15:34:45', 1, 1, 48),
(49, 'Carolina', 'Mora Pedraza', '', 'Bogotá', 2, '', 'carolina.mora@virtualab.co', '090034c28065144fb857388de502007a83ff9b99', '52.879.675', '', '', 3, 5, 1, 1, 0, '2014-10-31 12:16:36', '2014-10-31 14:06:11', 1, 1, 49),
(50, 'Andres Mauricio', 'Jaramillo Ocampo', '', 'Bogotá', 1, 'a06d437c04d5145f90dd08ad33eccacc.jpg', 'andressm9@hotmail.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', '1022365445', '', 'a06d437c04d5145f90dd08ad33eccacc', 3, 5, 1, 1, 0, '2014-10-31 13:28:12', '2014-11-17 18:01:18', 1, 1, 50),
(51, 'rosa ', 'garzon', '', '', 1, '', 'maria.marin@virtualab.co', 'b333dcfd2f1e6784a92abe1b5f3ce96890f15b2e', NULL, '', '', 3, 5, 1, 1, 0, '2014-10-31 15:16:48', '2014-10-31 16:24:01', 1, 1, 51),
(52, 'Mateo', 'Arias', '', '', 1, '', 'mateo.arias@virtualab.co', '28ff1321417fcd33797248d1114d0fe7ec1d8f77', NULL, '', '', 3, 5, 0, 0, 0, '2014-10-31 16:44:49', '2014-10-31 17:44:49', 1, 1, 52),
(53, 'Mateo', 'Arias', '', 'Bogota', 1, 'e5daeebc10dd79c1fd3b1dfb707a65be.jpg', 'piritoca2@gmail.com', '', '1016030797', '', 'e5daeebc10dd79c1fd3b1dfb707a65be', 3, 5, 0, 1, 0, '2014-10-31 16:49:25', '2014-10-31 17:52:42', 1, 1, 53),
(54, 'Maria ', 'Fuentes', '', '', 1, '', 'male_fuentes@yahoo.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 0, 0, '2014-11-01 16:45:58', '2014-11-11 19:41:24', 1, 1, 54),
(55, 'Maria', 'Fuentes', '', 'Bogotá', 1, '98de00eb9d9d6aab93652cb030fe9246.jpg', 'malefuentes542@hotmail.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', '1020754651', '', '', 3, 5, 1, 1, 0, '2014-11-01 16:47:44', '2014-11-11 19:41:57', 1, 1, 55),
(58, 'demo11', 'demo11', '', '', 1, '', 'demo11@demo.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 0, 0, 0, '2014-11-06 21:31:50', '2014-11-06 21:31:50', 1, 1, 58),
(67, 'premium', 'premium2', '', '', 1, '', 'premium@demo.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 0, 0, '2014-11-17 18:04:53', '2014-11-17 18:05:54', 1, 1, 67),
(68, 'Edwin', 'Garzon', '', '', 1, '', 'gauriel@gmail.com', '72dd61c2e3ba1d5b83650107bfd13bb181048cb4', NULL, '', '', 3, 5, 0, 0, 0, '2014-11-18 23:14:23', '2014-11-18 23:14:23', 1, 1, 68),
(69, 'Diego Alejandro ', 'Gómez Zuluaga', '', '', 1, '', 'dalejandrogomez@gmail.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 0, 0, '2014-11-19 20:09:16', '2014-11-21 22:31:26', 1, 1, 69),
(71, 'Edwin', 'Gatzon', '', '', 1, '', 'gauriel@msn.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 0, 0, '2014-11-21 21:02:17', '2014-11-21 21:03:42', 1, 1, 71),
(73, 'final', 'final', '', '', 1, '', 'final@final.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '4534', '', '', 3, 5, 1, 0, 0, '2014-11-21 22:47:16', '2014-11-21 22:48:33', 1, 1, 73),
(74, 'evaluacion', 'evaluacion', '', '', 1, '', 'evaluacion@evaluacion.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 0, 0, '2014-11-25 20:15:55', '2014-11-25 20:17:43', 1, 1, 74),
(75, 'evaluacon2', 'evaluacion2', '', '', 1, '', 'evaluacion2@evaluacion2.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 0, 0, '2014-11-25 20:34:35', '2014-11-25 20:37:27', 1, 1, 75),
(76, 'eval', 'eval', '', '', 1, '', 'eva@eva.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 0, 0, '2014-11-26 20:02:28', '2014-11-26 20:03:23', 1, 1, 76),
(77, 'Demo12', 'Demo12', '', '', 1, '', 'demo12@demo.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', '1234567677', '', '', 3, 5, 1, 0, 0, '2014-12-08 16:25:00', '2014-12-08 16:30:07', 1, 1, 77),
(78, 'dumy2', 'dumy2', '', '', 1, '', 'dumy2@dumy.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 0, 0, '2014-12-09 20:27:23', '2014-12-09 20:45:17', 1, 1, 78),
(79, 'dumy', 'dumy', '', '', 1, '', 'dumy@dumy.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 0, 0, '2014-12-09 20:27:23', '2014-12-09 20:45:17', 1, 1, 78),
(80, 'dumy3', 'dumy3', '', '', 1, '', 'dumy3@dumy.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 0, 0, '2014-12-09 20:27:23', '2014-12-09 20:45:17', 1, 1, 78),
(81, 'dumy4', 'dumy4', '', '', 1, '', 'dumy4@dumy.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 0, 0, '2014-12-09 20:27:23', '2014-12-09 20:45:17', 1, 1, 78),
(82, 'dumy5', 'dumy5', '', '', 1, '', 'dumy5@dumy.com', '284396495b0f2bc05d7e6b14df0ee9a86a11983b', NULL, '', '', 3, 5, 1, 0, 0, '2014-12-09 20:27:23', '2014-12-09 20:45:17', 1, 1, 78),
(83, 'admin', 'admin', '', '', 0, '', 'admin@admin.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '3454', '43534', '', 1, 5, 1, 0, 0, '2014-12-09 22:05:42', '2014-12-09 22:05:42', 1, 1, 83),
(84, 'Malu', 'Virtualab', '', '', 1, '98ff67bd7f9a646da5c89ea2cd94e745.jpg', '', '', '', '', '98ff67bd7f9a646da5c89ea2cd94e745', 3, 5, 0, 0, 0, '2014-12-15 20:16:48', '2014-12-15 20:16:48', 1, 1, 84),
(85, 'Juan Pablo', 'Cortes', '', '', 1, '', 'info@juanpablocortes.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, '', '', 3, 5, 0, 0, 0, '2014-12-17 18:36:47', '2014-12-17 18:36:47', 1, 1, 85),
(86, 'Juan Pablo', 'Cortes', '', '', 1, '', 'jcsolucionesweb@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, '', '', 3, 5, 1, 0, 0, '2014-12-17 18:37:13', '2014-12-17 18:37:31', 1, 1, 86);

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
