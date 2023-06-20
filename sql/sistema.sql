-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2023 a las 18:48:34
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
-- Base de datos: `sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `captura`
--

CREATE TABLE `captura` (
  `folio` int(11) NOT NULL,
  `IDCapturador` varchar(255) NOT NULL,
  `tipoCaptura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conceptos`
--

CREATE TABLE `conceptos` (
  `folio` int(11) NOT NULL,
  `clave` char(6) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `unidad` int(11) NOT NULL,
  `precioUni` int(11) NOT NULL,
  `importe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estimacion`
--

CREATE TABLE `estimacion` (
  `folio` int(11) NOT NULL,
  `rfc` varchar(255) NOT NULL,
  `razSoc` varchar(255) NOT NULL,
  `impCon` int(11) NOT NULL,
  `impEsAn` int(11) NOT NULL,
  `impEsAc` int(11) NOT NULL,
  `saldoEstimado` int(11) NOT NULL,
  `impAnt` int(11) NOT NULL,
  `impAmAn` int(11) NOT NULL,
  `ImpAmAct` int(11) NOT NULL,
  `ImpAmAcAct` int(11) NOT NULL,
  `saldoEstimadoAnt` int(11) NOT NULL,
  `impuestoEstimado` int(11) NOT NULL,
  `amorAnt` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `IVA` int(11) NOT NULL,
  `retencion` int(11) NOT NULL,
  `Cant_Unit` int(11) NOT NULL,
  `nvAprovacion` int(11) NOT NULL,
  `Mes` int(11) NOT NULL,
  `importe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotografia`
--

CREATE TABLE `fotografia` (
  `clave` varchar(255) NOT NULL,
  `folioReporte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `IDUser` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `minutas`
--

CREATE TABLE `minutas` (
  `folio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perdir`
--

CREATE TABLE `perdir` (
  `IDUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `folio` int(11) NOT NULL,
  `nivelUrg` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residente`
--

CREATE TABLE `residente` (
  `IDUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `superintendente`
--

CREATE TABLE `superintendente` (
  `IDUser` varchar(255) NOT NULL,
  `FrenteObra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supervisor`
--

CREATE TABLE `supervisor` (
  `IDUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDUser` varchar(255) NOT NULL,
  `userType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `captura`
--
ALTER TABLE `captura`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `FKCap` (`IDCapturador`);

--
-- Indices de la tabla `conceptos`
--
ALTER TABLE `conceptos`
  ADD PRIMARY KEY (`folio`,`clave`);

--
-- Indices de la tabla `estimacion`
--
ALTER TABLE `estimacion`
  ADD PRIMARY KEY (`folio`);

--
-- Indices de la tabla `fotografia`
--
ALTER TABLE `fotografia`
  ADD PRIMARY KEY (`clave`),
  ADD KEY `FKFot` (`folioReporte`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`IDUser`);

--
-- Indices de la tabla `minutas`
--
ALTER TABLE `minutas`
  ADD PRIMARY KEY (`folio`);

--
-- Indices de la tabla `perdir`
--
ALTER TABLE `perdir`
  ADD PRIMARY KEY (`IDUser`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`folio`);

--
-- Indices de la tabla `residente`
--
ALTER TABLE `residente`
  ADD PRIMARY KEY (`IDUser`);

--
-- Indices de la tabla `superintendente`
--
ALTER TABLE `superintendente`
  ADD PRIMARY KEY (`IDUser`);

--
-- Indices de la tabla `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`IDUser`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDUser`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `captura`
--
ALTER TABLE `captura`
  ADD CONSTRAINT `FKCap` FOREIGN KEY (`IDCapturador`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `conceptos`
--
ALTER TABLE `conceptos`
  ADD CONSTRAINT `FKCon` FOREIGN KEY (`folio`) REFERENCES `captura` (`folio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estimacion`
--
ALTER TABLE `estimacion`
  ADD CONSTRAINT `FKEst` FOREIGN KEY (`folio`) REFERENCES `captura` (`folio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fotografia`
--
ALTER TABLE `fotografia`
  ADD CONSTRAINT `FKFot` FOREIGN KEY (`folioReporte`) REFERENCES `reporte` (`folio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `FKLog` FOREIGN KEY (`IDUser`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `minutas`
--
ALTER TABLE `minutas`
  ADD CONSTRAINT `FKMin` FOREIGN KEY (`folio`) REFERENCES `captura` (`folio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perdir`
--
ALTER TABLE `perdir`
  ADD CONSTRAINT `FKPD` FOREIGN KEY (`IDUser`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `FKRep` FOREIGN KEY (`folio`) REFERENCES `captura` (`folio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `residente`
--
ALTER TABLE `residente`
  ADD CONSTRAINT `FKRes` FOREIGN KEY (`IDUser`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `superintendente`
--
ALTER TABLE `superintendente`
  ADD CONSTRAINT `FKSupIn` FOREIGN KEY (`IDUser`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `supervisor`
--
ALTER TABLE `supervisor`
  ADD CONSTRAINT `FKSupvis` FOREIGN KEY (`IDUser`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
