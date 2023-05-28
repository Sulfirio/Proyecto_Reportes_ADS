-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2023 a las 07:00:28
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
-- Estructura de tabla para la tabla `captura`
--

CREATE TABLE `captura` (
  `folio` int(11) NOT NULL,
  `IDCapturador` varchar(255) NOT NULL,
  `tipoCaptura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `captura`
--

INSERT INTO `captura` (`folio`, `IDCapturador`, `tipoCaptura`) VALUES
(1101, 'UserA', 2),
(1102, 'UserA', 1),
(1103, 'UserD', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conceptos`
--

CREATE TABLE `conceptos` (
  `clave` char(6) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `unidad` int(11) NOT NULL,
  `precioUni` int(11) NOT NULL,
  `importe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `conceptos`
--

INSERT INTO `conceptos` (`clave`, `nombre`, `descripcion`, `unidad`, `precioUni`, `importe`) VALUES
('1101', 'Concreto', 'Material compuesto que se utiliza en el ámbito de la construcción, formado fundamentalmente por un aglomerante al que se añade partículas o fragmentos de un agregado, agua y aditivos específicos.', 4, 100, 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estimacion`
--

CREATE TABLE `estimacion` (
  `idEstimacion` int(11) NOT NULL,
  `rfc` varchar(255) NOT NULL,
  `razSoc` varchar(255) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `IVA` int(11) NOT NULL,
  `retencion` int(11) NOT NULL,
  `neto` int(11) NOT NULL,
  `noFrenteObra` int(11) NOT NULL,
  `justificacion` varchar(20) NOT NULL,
  `claveConcepto` int(11) NOT NULL,
  `idEstimador` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estimacion`
--

INSERT INTO `estimacion` (`idEstimacion`, `rfc`, `razSoc`, `subtotal`, `IVA`, `retencion`, `neto`, `noFrenteObra`, `justificacion`, `claveConcepto`, `idEstimador`) VALUES
(1, 'ASDF66777', 'Compra concetro', 1000, 1000, 10, 10, 1, 'Default', 1101, 'UserA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotografia`
--

CREATE TABLE `fotografia` (
  `clave` varchar(255) NOT NULL,
  `folioReporte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fotografia`
--

INSERT INTO `fotografia` (`clave`, `folioReporte`) VALUES
('ABS455', 1102);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frenteobra`
--

CREATE TABLE `frenteobra` (
  `idFrente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `frenteobra`
--

INSERT INTO `frenteobra` (`idFrente`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `IDUser` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`IDUser`, `password`) VALUES
('UserA', 'pascual'),
('UserB', 'Seraph'),
('UserC', 'ACDSD123'),
('UserD', 'ASSSSSSSSSS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `minutas`
--

CREATE TABLE `minutas` (
  `folio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `minutas`
--

INSERT INTO `minutas` (`folio`) VALUES
(1103);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perdir`
--

CREATE TABLE `perdir` (
  `IDUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perdir`
--

INSERT INTO `perdir` (`IDUser`) VALUES
('UserD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `folio` int(11) NOT NULL,
  `nivelUrg` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reporte`
--

INSERT INTO `reporte` (`folio`, `nivelUrg`) VALUES
(1101, '2'),
(1102, '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residente`
--

CREATE TABLE `residente` (
  `IDUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `residente`
--

INSERT INTO `residente` (`IDUser`) VALUES
('UserA');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supervisor`
--

CREATE TABLE `supervisor` (
  `IDUser` varchar(255) NOT NULL,
  `frenteObra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `supervisor`
--

INSERT INTO `supervisor` (`IDUser`, `frenteObra`) VALUES
('UserB', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDUser` varchar(255) NOT NULL,
  `userType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDUser`, `userType`) VALUES
('UserA', 1),
('UserB', 2),
('UserC', 3),
('UserD', 4);

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
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `estimacion`
--
ALTER TABLE `estimacion`
  ADD PRIMARY KEY (`idEstimacion`);

--
-- Indices de la tabla `fotografia`
--
ALTER TABLE `fotografia`
  ADD PRIMARY KEY (`clave`),
  ADD KEY `FKFot` (`folioReporte`);

--
-- Indices de la tabla `frenteobra`
--
ALTER TABLE `frenteobra`
  ADD PRIMARY KEY (`idFrente`);

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
  ADD PRIMARY KEY (`IDUser`),
  ADD KEY `FK2_SI` (`frenteObra`);

--
-- Indices de la tabla `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`IDUser`),
  ADD KEY `FK2_S` (`frenteObra`);

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
  ADD CONSTRAINT `FK2_SI` FOREIGN KEY (`frenteObra`) REFERENCES `frenteobra` (`idFrente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKSupIn` FOREIGN KEY (`IDUser`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `supervisor`
--
ALTER TABLE `supervisor`
  ADD CONSTRAINT `FK2_S` FOREIGN KEY (`frenteObra`) REFERENCES `frenteobra` (`idFrente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKSupvis` FOREIGN KEY (`IDUser`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
