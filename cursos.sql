-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2019 a las 17:25:35
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cursos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ald`
--

CREATE TABLE `ald` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `message` text COLLATE utf8_spanish_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ald`
--

INSERT INTO `ald` (`id`, `user`, `message`, `date`) VALUES
(1, 0, 'Hola', '2019-04-30 15:03:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archive`
--

CREATE TABLE `archive` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `route` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `size` int(50) NOT NULL,
  `publications` int(11) NOT NULL,
  `filtro` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `archive`
--

INSERT INTO `archive` (`id`, `user`, `route`, `type`, `size`, `publications`, `filtro`, `date`) VALUES
(1, 0, 'ID-1-NAME-0821DB.jpg', 'image/jpeg', 96502, 1, '', '2019-04-23 15:28:18'),
(2, 4, 'ID-3-NAME-6CFB42.jpg', 'image/gif', 40362, 2, '', '2019-04-25 14:46:20'),
(3, 4, 'ID-3-NAME-24319D.jpg', 'image/png', 4900, 3, '', '2019-04-26 09:58:44'),
(4, 1, 'ID-4-NAME-710640.gif', 'image/gif', 69086, 4, '', '2019-04-30 15:51:59'),
(5, 1, 'ID-5-NAME-29F4CD.gif', 'image/jpeg', 96502, 5, '', '2019-04-30 16:14:17'),
(6, 4, 'ID-6-NAME-284128.gif', 'image/jpeg', 2744748, 6, '', '2019-05-03 17:21:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ask`
--

CREATE TABLE `ask` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ask-end`
--

CREATE TABLE `ask-end` (
  `idask` bigint(20) UNSIGNED NOT NULL,
  `ask` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_a` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_b` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_c` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_d` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_e` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `result_a` int(20) NOT NULL,
  `result_b` int(20) NOT NULL,
  `result_c` int(20) NOT NULL,
  `result_d` int(20) NOT NULL,
  `result_e` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ask-end`
--

INSERT INTO `ask-end` (`idask`, `ask`, `option_a`, `option_b`, `option_c`, `option_d`, `option_e`, `result_a`, `result_b`, `result_c`, `result_d`, `result_e`) VALUES
(1, '1-', '', '', '', '', '', 0, 0, 0, 0, 0),
(2, '2-\r\n', '', '', '', '', '', 0, 0, 0, 0, 0),
(3, '3-', '', '', '', '', '', 0, 0, 0, 0, 0),
(4, '4-', '', '', '', '', '', 0, 0, 0, 0, 0),
(5, '5-', '', '', '', '', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data`
--

CREATE TABLE `data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `password_1` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `name` text COLLATE utf8_spanish_ci,
  `type-user` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Alumno',
  `biography` text COLLATE utf8_spanish_ci NOT NULL,
  `avatar` varchar(200) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'default.png',
  `code` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `confirmed` enum('0','1') COLLATE utf8_spanish_ci NOT NULL DEFAULT '0' COMMENT 'Verifico el correo',
  `signup_date` datetime NOT NULL,
  `last_session_start` date DEFAULT NULL,
  `last-end-for-session` date DEFAULT NULL,
  `last_ip` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `data`
--

INSERT INTO `data` (`id`, `username`, `password`, `password_1`, `email`, `name`, `type-user`, `biography`, `avatar`, `code`, `token`, `confirmed`, `signup_date`, `last_session_start`, `last-end-for-session`, `last_ip`) VALUES
(0, 'HeyMoco!', 'dfaf60db53b9ba6541f1e56b121293a0', 'dfaf60db53b9ba6541f1e56b121293a0', 'en2312.h-@outlook.com', 'Enrique Juan De Dios Orozco Alvarez', 'Admin', 'No soy monedita de oro, me enseÃ±aron a ser sincero para que me crean cuando salga el lobo.', 'images/1546247008_delete_this_steam-min.gif', '5cbc8e7c50f86', '5cbf8aac03e1f', '1', '2019-04-21 10:38:36', NULL, NULL, '::1'),
(1, 'En', 'dfaf60db53b9ba6541f1e56b121293a0', '9dcebeb0d347033a20163759274895e0', 'en2312.h@gmail.com', 'Enrique Orozco', 'Alumno', 'Lo sencillo es lo mÃ¡s encantador.', 'images/tenor (4).gif', '5cbde79579ac3', '5cbf88bec66ee', '1', '2019-04-22 11:11:01', NULL, NULL, '::1'),
(2, 'aiwa', 'e10adc3949ba59abbe56e057f20f883e', '', 'sd2312.h-@outlook.com', 'Juana de Arca', 'Alumno', '', 'images/default.png', '', '', '0', '0000-00-00 00:00:00', NULL, NULL, NULL),
(3, 'EmmanuelRodriguez', '25f9e794323b453885f5181f1b624d0b', '', 'emmanuelrodriguez@gmail.com', 'Edgar Emmanuel Rodriguez Ibarra', 'Alumno', '', 'images/default.png', '5cbe11822de8e', '', '0', '2019-04-22 14:09:54', NULL, NULL, '192.168.0.8'),
(4, 'chucho', '1804aa919244f0c173a16e8a4de1f5c8', '', 'chucho_69@gmail.com', 'jesus carrillo', 'Alumno', 'REY ESCORPIÃ“N', 'images/animoji-poop-from-iphone-as-gif.gif', '5cc1cdc21836d', '', '0', '2019-04-25 10:09:54', NULL, NULL, '192.168.0.14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exam`
--

CREATE TABLE `exam` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exam-end`
--

CREATE TABLE `exam-end` (
  `idexam` bigint(20) NOT NULL,
  `option_a` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_b` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_c` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_d` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_e` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `result_a` int(20) NOT NULL,
  `result_b` int(20) NOT NULL,
  `result_c` int(20) NOT NULL,
  `result_d` int(20) NOT NULL,
  `result_e` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otro`
--

CREATE TABLE `otro` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `message` text COLLATE utf8_spanish_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otro1`
--

CREATE TABLE `otro1` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `message` text COLLATE utf8_spanish_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publications`
--

CREATE TABLE `publications` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `descripcions` text COLLATE utf8_spanish_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `publications`
--

INSERT INTO `publications` (`id`, `user`, `descripcions`, `location`, `date`) VALUES
(1, 0, 'Buenas tardes, breaking bad.', 'Estado de Mexico, Coacalco de Berriozabal.', '2019-04-23 15:28:18'),
(3, 4, '', '', '2019-04-26 09:58:43'),
(5, 1, 'Otra prueba', '', '2019-04-30 16:14:17'),
(6, 4, '', '', '2019-05-03 17:21:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question`
--

CREATE TABLE `question` (
  `id` bigint(20) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question-end`
--

CREATE TABLE `question-end` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_a` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_b` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_c` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_d` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `option_e` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `result_a` int(20) NOT NULL,
  `result_b` int(20) NOT NULL,
  `result_c` int(20) NOT NULL,
  `result_d` int(20) NOT NULL,
  `result_e` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text COLLATE utf8_spanish_ci NOT NULL,
  `ask` int(11) NOT NULL DEFAULT '0',
  `ask-2` int(11) NOT NULL DEFAULT '0',
  `ask-3` int(11) NOT NULL DEFAULT '0',
  `ask-4` int(11) NOT NULL DEFAULT '0',
  `ask-5` int(11) NOT NULL DEFAULT '0',
  `ask-6` int(11) NOT NULL DEFAULT '0',
  `exams` int(11) NOT NULL DEFAULT '0',
  `exams-2` int(11) NOT NULL DEFAULT '0',
  `exams-3` int(11) NOT NULL DEFAULT '0',
  `exams-4` int(11) NOT NULL DEFAULT '0',
  `exams-5` int(11) NOT NULL DEFAULT '0',
  `exams-6` int(11) NOT NULL DEFAULT '0',
  `questions` int(11) NOT NULL DEFAULT '0',
  `questions-2` int(11) NOT NULL DEFAULT '0',
  `questions-3` int(11) NOT NULL DEFAULT '0',
  `questions-4` int(11) NOT NULL DEFAULT '0',
  `questions-5` int(11) NOT NULL DEFAULT '0',
  `questions-6` int(11) NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `rating-2` float NOT NULL DEFAULT '0',
  `rating-3` float NOT NULL DEFAULT '0',
  `rating-4` float NOT NULL DEFAULT '0',
  `rating-5` float NOT NULL DEFAULT '0',
  `rating-6` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ratings`
--

INSERT INTO `ratings` (`id`, `username`, `ask`, `ask-2`, `ask-3`, `ask-4`, `ask-5`, `ask-6`, `exams`, `exams-2`, `exams-3`, `exams-4`, `exams-5`, `exams-6`, `questions`, `questions-2`, `questions-3`, `questions-4`, `questions-5`, `questions-6`, `rating`, `rating-2`, `rating-3`, `rating-4`, `rating-5`, `rating-6`) VALUES
(0, 'HeyMoco!', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 'En', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'EmmanuelRodriguez', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'chucho\r\n', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ask` enum('0','1') COLLATE utf8_spanish_ci NOT NULL DEFAULT '0' COMMENT 'verificar aviso',
  `exams` enum('0','1') COLLATE utf8_spanish_ci NOT NULL DEFAULT '0' COMMENT 'verificar aviso',
  `question` enum('0','1') COLLATE utf8_spanish_ci NOT NULL DEFAULT '0' COMMENT 'verificar aviso'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `terms`
--

INSERT INTO `terms` (`id`, `ask`, `exams`, `question`) VALUES
(0, '1', '1', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ald`
--
ALTER TABLE `ald`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ask`
--
ALTER TABLE `ask`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ask-end`
--
ALTER TABLE `ask-end`
  ADD PRIMARY KEY (`idask`);

--
-- Indices de la tabla `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `exam-end`
--
ALTER TABLE `exam-end`
  ADD PRIMARY KEY (`idexam`);

--
-- Indices de la tabla `otro`
--
ALTER TABLE `otro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otro1`
--
ALTER TABLE `otro1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `question-end`
--
ALTER TABLE `question-end`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ald`
--
ALTER TABLE `ald`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `archive`
--
ALTER TABLE `archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ask`
--
ALTER TABLE `ask`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ask-end`
--
ALTER TABLE `ask-end`
  MODIFY `idask` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `data`
--
ALTER TABLE `data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `exam`
--
ALTER TABLE `exam`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `exam-end`
--
ALTER TABLE `exam-end`
  MODIFY `idexam` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `otro`
--
ALTER TABLE `otro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `otro1`
--
ALTER TABLE `otro1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `question`
--
ALTER TABLE `question`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `question-end`
--
ALTER TABLE `question-end`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`id`) REFERENCES `data` (`id`);

--
-- Filtros para la tabla `terms`
--
ALTER TABLE `terms`
  ADD CONSTRAINT `terms_ibfk_1` FOREIGN KEY (`id`) REFERENCES `data` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
