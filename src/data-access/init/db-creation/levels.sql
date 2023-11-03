-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2023 a las 00:54:25
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clash_of_code`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `label` text NOT NULL,
  `structure` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`structure`)),
  `perfect_steps` int(11) NOT NULL,
  `dialogs` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `levels`
--

INSERT INTO `levels` (`id`, `level`, `label`, `structure`, `perfect_steps`, `dialogs`) VALUES
(51, 1, 'LEVEL_1', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":0,\"type\":\"finish\"}]}', 7, NULL),
(52, 2, 'JUMP', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":2,\"positionY\":0,\"type\":\"jump\"},{\"positionX\":3,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":4,\"positionY\":0,\"type\":\"finish\"}]}', 4, '¡Ten cuidado! Hay Pinches en el suelo. Investiga con cual acción podrías saltarlo.'),
(53, 3, 'SACAR', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"amount\":5,\"positionX\":2,\"positionY\":0,\"type\":\"ball\"},{\"positionX\":3,\"positionY\":0,\"type\":\"finish\"}]}', 3, 'Hay bolitas en el suelo. Intenta recogerlas todas o perderás'),
(54, 4, 'IF_PINCHE', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":2,\"positionY\":0,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":0,\"type\":\"finish\"}]}', 3, 'La celda con \"?\" es una celda condicional. Investiga que acción podría ayudarte a superarla'),
(55, 5, 'CELDA_IF_BALL', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"subtype\":\"balls\",\"type\":\"if\",\"value\":5},{\"positionX\":3,\"positionY\":0,\"type\":\"finish\"}]}', 3, 'OTra celda condicional. Presta atención a que la condición es distinta.'),
(56, 6, 'CELDA_FOR', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":2,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":4,\"positionY\":0,\"type\":\"finish\"}]}', 4, 'Hay muchas celdas repetidas, Descubre una nueva acción que te ayude a evitar repetir la misma acción repetidas veces.'),
(57, 7, 'NIVEL_COMPLETO', '{\"elements\":[{\"positionX\":0,\"positionY\":0,\"type\":\"start\"},{\"positionX\":1,\"positionY\":0,\"type\":\"movement\"},{\"positionX\":1,\"positionY\":-1,\"type\":\"movement\"},{\"positionX\":1,\"positionY\":1,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":2,\"positionY\":-1,\"type\":\"jump\"},{\"positionX\":2,\"positionY\":1,\"subtype\":\"spikes\",\"type\":\"if\",\"value\":0},{\"positionX\":3,\"positionY\":1,\"type\":\"movement\"},{\"positionX\":3,\"positionY\":2,\"subtype\":\"balls\",\"type\":\"if\",\"value\":5},{\"positionX\":4,\"positionY\":2,\"type\":\"movement\"},{\"positionX\":5,\"positionY\":2,\"type\":\"movement\"},{\"direction\":\"up\",\"positionX\":5,\"positionY\":1,\"type\":\"jump\"},{\"direction\":\"up\",\"positionX\":3,\"positionY\":-1,\"type\":\"jump\"},{\"direction\":\"up\",\"positionX\":4,\"positionY\":-1,\"type\":\"jump\"},{\"positionX\":5,\"positionY\":-1,\"type\":\"movement\"},{\"amount\":5,\"positionX\":5,\"positionY\":0,\"type\":\"ball\"},{\"amount\":5,\"positionX\":6,\"positionY\":-1,\"type\":\"ball\"},{\"amount\":5,\"positionX\":7,\"positionY\":-1,\"type\":\"ball\"},{\"positionX\":8,\"positionY\":-1,\"type\":\"finish\"}]}', 9, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
