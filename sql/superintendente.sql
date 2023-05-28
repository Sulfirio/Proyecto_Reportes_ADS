-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2023 a las 06:49:32
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
-- Base de datos: `admin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `superintendente`
--

CREATE TABLE `superintendente` (
  `IDUser` varchar(255) NOT NULL,
  `frenteObra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `superintendente`
--

INSERT INTO `superintendente` (`IDUser`, `frenteObra`) VALUES
('UserC', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `superintendente`
--
ALTER TABLE `superintendente`
  ADD PRIMARY KEY (`IDUser`),
  ADD KEY `FK2_SI` (`frenteObra`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `superintendente`
--
ALTER TABLE `superintendente`
  ADD CONSTRAINT `FK2_SI` FOREIGN KEY (`frenteObra`) REFERENCES `frenteobra` (`idFrente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKSupIn` FOREIGN KEY (`IDUser`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
