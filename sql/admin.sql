-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2023 a las 21:17:59
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
-- Estructura de tabla para la tabla `conceptos`
--

CREATE TABLE `conceptos` (
  `clave` int(6) NOT NULL,
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
(1101, 'Concreto', 'Material compuesto que se utiliza en el ámbito de la construcción, formado fundamentalmente por un aglomerante al que se añade partículas o fragmentos de un agregado, agua y aditivos específicos.', 4, 100, 400),
(1102, 'Vigas de Acero', 'Elementos estructurales horizontales que brindan soporte vertical en las construcciones', 5, 100, 500),
(1103, 'Cemento', 'Polvo fino y suave que se utiliza como conglomerante debido a que se endurece después de estar en contacto con el agua', 8, 50, 400),
(1104, 'Albañileria', 'Dala intermedia de concreto F\,c=250Kg/cm² TMA 19 mm. sección\r\n15x20 cm. acabado común, armado con 4 varillas del # 3 y estribos\r\ndel #2 a cada 20 cm. Incluye: suministro de materiales, desperdicios,\r\ncimbrado, colado, vibrado, descimbrado, acarreos, cruce', 1, 800, 800),
(1105, 'Instalación Eléctrica', 'Conjunto de elementos y circuitos eléctricos que permiten la distribución y uso de la energía eléctrica en la construcción.', 1, 1200, 1200),
(1106, 'Pintura', 'Capa de material líquido que se aplica sobre superficies para proteger, decorar o brindar un acabado estético.', 7, 80, 560),
(1107, 'Ladrillos', 'Bloques de arcilla u otro material similar utilizado en la construcción para la creación de muros, paredes y estructuras.', 6, 10, 60),
(1108, 'Herramientas', 'Instrumentos utilizados en la construcción para llevar a cabo diferentes tareas, como martillos, sierras, taladros, etc.', 9, 200, 200),
(1109, 'Carpintería', 'Trabajo de construcción y reparación de estructuras y elementos de madera, como puertas, ventanas, escaleras, entre otros.', 5, 150, 750),
(1110, 'Acero de Refuerzo', 'Barras de acero utilizadas para reforzar estructuras de concreto y aumentar su resistencia mecánica.', 3, 150, 450),
(1111, 'Impermeabilización', 'Proceso de aplicación de materiales o productos que evitan el paso del agua y protegen las superficies de la construcción contra filtraciones.', 2, 500, 1000),
(1112, 'Azulejos', 'Piezas cerámicas utilizadas para revestir paredes y pisos en áreas como baños, cocinas y áreas de trabajo.', 10, 30, 300),
(1113, 'Plomería', 'Instalación de tuberías, válvulas y accesorios para el suministro de agua y el sistema de drenaje en la construcción.', 5, 200, 1000),
(1114, 'Vidrios', 'Paneles transparentes o translúcidos utilizados en ventanas y puertas para permitir la entrada de luz natural.', 11, 80, 800),
(1115, 'Pisos de Madera', 'Revestimiento de suelos con tablas o parquet de madera, utilizado para brindar calidez y belleza estética.', 12, 250, 2500),
(1116, 'Techos de Zinc', 'Cubiertas de zinc utilizadas para proteger el interior de la construcción de la lluvia y otros elementos climáticos.', 13, 300, 3000),
(1117, 'Vallas de Seguridad', 'Barreras temporales utilizadas para delimitar y proteger áreas de trabajo en la construcción.', 14, 50, 250),
(1118, 'Aire Acondicionado', 'Sistema de climatización que proporciona aire fresco y control de temperatura en el interior de la construcción.', 1, 2000, 2000),
(1119, 'Elevadores', 'Dispositivos de transporte vertical utilizados para mover personas o carga entre diferentes niveles de la construcción.', 19, 3000, 3000),
(1120, 'Demolición', 'Proceso de destrucción controlada de estructuras existentes para dar paso a una nueva construcción.', 15, 1500, 1500),
(1121, 'Cerámica', 'Material utilizado para revestir paredes y pisos en áreas como baños, cocinas y áreas de trabajo.', 10, 40, 400),
(1122, 'Sistemas contra Incendios', 'Instalación de equipos y sistemas para detectar y extinguir incendios en la construcción.', 16, 1000, 1000),
(1123, 'Máquinas y Equipos', 'Maquinaria y herramientas utilizadas en la construcción, como grúas, excavadoras, compresores, etc.', 17, 500, 500),
(1124, 'Sistemas de Seguridad', 'Instalación de dispositivos de seguridad, como cámaras de vigilancia y sistemas de alarma, para proteger la construcción.', 18, 800, 800),
(1125, 'Sistemas de Iluminación', 'Instalación de sistemas de iluminación artificial en la construcción, incluyendo luminarias y cableado eléctrico.', 19, 300, 3000),
(1126, 'Carpeta Asfáltica', 'Capa de asfalto aplicada sobre la superficie de las vías de acceso o estacionamientos en la construcción.', 20, 200, 2000),
(1127, 'Drenaje Pluvial', 'Sistema de canalización y desalojo del agua de lluvia en la construcción, incluyendo tuberías y sumideros.', 5, 400, 4000),
(1128, 'Barandillas', 'Elementos de protección utilizados en balcones, escaleras y pasarelas para evitar caídas en la construcción.', 21, 150, 1500),
(1129, 'Pintura Impermeabilizante', 'Recubrimiento especializado utilizado para impermeabilizar superficies y proteger contra la humedad en la construcción.', 7, 120, 1200),
(1130, 'Mampostería', 'Construcción de muros y paredes utilizando bloques, ladrillos u otros materiales similares en la construcción.', 22, 80, 800),
(1131, 'Cableado Estructurado', 'Instalación de cables de red y sistemas de comunicación en la construcción para permitir la conectividad.', 1, 500, 5000),
(1132, 'Instalaciones Sanitarias', 'Sistema de tuberías y accesorios para el suministro de agua potable y desagüe en la construcción.', 5, 250, 2500),
(1133, 'Sistema de Energía Solar', 'Instalación de paneles solares y sistemas de generación de energía solar en la construcción.', 23, 3000, 3000),
(1134, 'Sistema de Riego', 'Instalación de tuberías y dispositivos para el riego de áreas verdes y jardines en la construcción.', 24, 400, 4000);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `folio` int(11) NOT NULL,
  `IDCapturador` varchar(255) NOT NULL,
  `tipoCaptura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`folio`, `IDCapturador`, `tipoCaptura`) VALUES
(1103, 'UserA', 1),
(1104, 'UserB', 2),
(1105, 'UserC', 3),
(1106, 'UserD', 4),
(1107, 'UserE', 5),
(1108, 'UserF', 6),
(1109, 'UserG', 7),
(1110, 'UserH', 8),
(1111, 'UserI', 9),
(1112, 'UserJ', 10),
(1113, 'UserK', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idCon` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `RFC` varchar(255) NOT NULL,
  `frenteobra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idCon`, `nombre`, `RFC`, `frenteobra`) VALUES
(1, 'Raul Perez Mireida', 'VLPV130111ZA3', 1),
(2, 'Carlos Gómez Construcciones', 'CGC190508HGA', 2),
(3, 'Constructora Torres', 'COT2104151A1', 3),
(4, 'Inversiones López', 'INV20062023JA', 4),
(5, 'Martínez y Asociados', 'MYA211105KG3', 5),
(6, 'Construcciones ABC', 'CAB2010012A9', 6),
(7, 'Gómez y Cía.', 'GCM190715HV4', 7),
(8, 'Constructora Moderna', 'COM210320MG1', 8),
(9, 'Inversiones Silva', 'INS220415MN9', 9),
(10, 'Torres Hermanos', 'THC2009233B8', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estimacion`
--

CREATE TABLE `estimacion` (
  `idEstimacion` int(11) NOT NULL,
  `claveConcepto` int(6) NOT NULL,
  `idEstimador` varchar(255) NOT NULL,
  `noFrenteObra` int(11) NOT NULL,
  `razSoc` varchar(255) NOT NULL,
  `justificacion` varchar(20) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `IVA` int(11) NOT NULL,
  `retencion` int(11) NOT NULL,
  `Cant_Unit` int(11) NOT NULL,
  `nvAprovacion` int(11) NOT NULL,
  `Mes` varchar(11) NOT NULL,
  `Importe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estimacion`
--

INSERT INTO `estimacion` (`idEstimacion`, `claveConcepto`, `idEstimador`, `noFrenteObra`, `razSoc`, `justificacion`, `subtotal`, `IVA`, `retencion`, `Cant_Unit`, `nvAprovacion`, `MES`, `Importe`) VALUES
(1, 1101, 'UserA', 1, 'Compra concreto', '-------', 1000, 1000, 10, 10, 'Aprobado', 'Enero', 11000),
(1, 1104, 'UserA', 1, 'Albañileria', '---', 1000, 1000, 10, 10, 'Aprobado', 'Enero', 10000),
(2, 1101, 'UserA', 2, 'Compra concreto', '----', 1000, 1000, 10, 10, 'Aprobado', 'Febrero', 11000),
(2, 1103, 'UserA', 2, 'Compra cemento', '----', 1000, 1000, 10, 10, 'Aprobado', 'Febrero', 10000),
(3, 1102, 'UserA', 1, 'Compra Vigas de Acero', '---', 2000, 2000, 20, 20, 'Aprobado', 'Enero', 22000),
(3, 1120, 'UserA', 1, 'Carpeta Asfáltica', '---', 1500, 1500, 15, 15, 'Aprobado', 'Enero', 16500),
(4, 1112, 'UserA', 2, 'Azulejos', '---', 800, 800, 8, 8, 'Aprobado', 'Febrero', 8800),
(4, 1130, 'UserA', 2, 'Mampostería', '---', 1200, 1200, 12, 12, 'Aprobado', 'Febrero', 13200),
(5, 1107, 'UserA', 3, 'Ladrillos', '---', 500, 500, 5, 5, 'Aprobado', 'Marzo', 5500),
(5, 1116, 'UserA', 3, 'Techos de Zinc', '---', 2500, 2500, 25, 25, 'Aprobado', 'Marzo', 27500),
(6, 1126, 'UserA', 4, 'Carpeta Asfáltica', '---', 3000, 3000, 30, 30, 'Aprobado', 'Abril', 33000),
(6, 1133, 'UserA', 4, 'Sistema de Energía Solar', '---', 5000, 5000, 50, 50, 'Aprobado', 'Abril', 55000),
(7, 1105, 'UserA', 5, 'Instalación Eléctrica', '---', 1500, 1500, 15, 15, 'Aprobado', 'Mayo', 16500),
(7, 1134, 'UserA', 5, 'Sistema de Riego', '---', 4000, 4000, 40, 40, 'Aprobado', 'Mayo', 44000);


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
  `idFrente` int(11) NOT NULL,
  `NombreObra` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `frenteobra`
--

INSERT INTO `frenteobra` (`idFrente`, `NombreObra`) VALUES
(1, 'Obra1'),
(2, 'Obra2'),
(3, 'Obra3'),
(4, 'Obra4'),
(5, 'Obra5'),
(6, 'Obra6'),
(7, 'Obra7'),
(8, 'Obra8'),
(9, 'Obra9'),
(10, 'Obra10');
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
('UserD', 'ASSSSSSSSSS'),
('UserE', 'Sol1234'),
('UserF', 'Mariposa45'),
('UserG', 'CafecitoAmor'),
('UserH', 'Futbolero78'),
('UserI', 'Arcoiris2023'),
('UserJ', 'ChocolateDelicia'),
('UserK', 'Guitarrista12'),
('UserL', 'Playa567'),
('UserM', 'Aventura2023'),
('UserN', 'AmantePizza21'),
('UserO', 'AmanteLibros23'),
('UserP', 'EstrellaFutbol10'),
('UserQ', 'LaMusicaEsVida'),
('UserR', 'Girasol567'),
('UserS', 'Cinefilo123'),
('UserT', 'BailarSiempre'),
('UserU', 'Viajero2023'),
('UserV', 'AmanteNaturaleza'),
('UserW', 'AdictoFitness'),
('UserX', 'AlmaArtistica');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `minutas`
--

CREATE TABLE `minutas` (
  `folio` int(11) NOT NULL,
  `idCapturador` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `minutas`
--

INSERT INTO `minutas` (`folio`, `idCapturador`) VALUES
(1103, 'UserA'),
(1104, 'UserB'),
(1105, 'UserC'),
(1106, 'UserD'),
(1107, 'UserE'),
(1108, 'UserF'),
(1109, 'UserG'),
(1110, 'UserH'),
(1111, 'UserI'),
(1112, 'UserJ'),
(1113, 'UserK');


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
  `nivelUrg` char(2) NOT NULL,
  `aprobado` tinyint(1) NOT NULL,
  `frenteObra`  int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reporte`
--

INSERT INTO `reporte` (`folio`, `nivelUrg`, `aprobado`) VALUES
(1101, '2', 1),
(1102, '3', 1),
(1103, '1', 0),
(1104, '1', 0),
(1105, '1', 0),
(1106, '1', 0),
(1107, '1', 0),
(1108, '1', 0),
(1109, '2', 1),
(1110, '3', 1),
(1111, '2', 1),
(1112, '1', 0),
(1113, '2', 0),
(1114, '1', 0),
(1115, '3', 1),
(1116, '2', 1),
(1117, '1', 0),
(1118, '1', 0),
(1119, '3', 1),
(1120, '2', 1),
(1121, '1', 0),
(1122, '2', 1),
(1123, '1', 0),
(1124, '1', 0),
(1125, '2', 1),
(1126, '3', 1),
(1127, '1', 0),
(1128, '3', 1),
(1129, '1', 0),
(1130, '2', 1),
(1131, '1', 0),
(1132, '3', 1),
(1133, '1', 0),
(1134, '2', 1);

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
  `IDUser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `superintendente`
--

INSERT INTO `superintendente` (`IDUser`) VALUES
('UserC');

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
('UserB', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDUser` varchar(255) NOT NULL,
  `userType` int(1) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `RFC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDUser`, `userType`, `nombre`, `RFC`) VALUES
('UserA', 1, 'Raul', 'WQSL471113DV0'),
('UserB', 2, 'Maurico', 'VMMT700123PM0'),
('UserC', 3, 'Lilia', 'OMTB200406UG2'),
('UserD', 4, 'Saul', 'LHIV480321BG6'),
('UserE', 1, 'Alejandra', 'RZAP550912HY9'),
('UserF', 2, 'Carlos', 'COTM800527IY0'),
('UserG', 3, 'Ana', 'HOAN910629FV3'),
('UserH', 4, 'Pedro', 'LOPM750218SJ1'),
('UserI', 1, 'Laura', 'MAOL880702DG5'),
('UserJ', 2, 'Juan', 'HUJU910420HU8'),
('UserK', 3, 'María', 'OAMG861205RG4'),
('UserL', 4, 'Roberto', 'ROFR900703BK7'),
('UserM', 1, 'Sofía', 'GOSM930410MT6'),
('UserN', 2, 'Javier', 'MEJA850816EJ9'),
('UserO', 1, 'Fernanda', 'GOFE910527HG1'),
('UserP', 2, 'Eduardo', 'MAED870210GT3'),
('UserQ', 3, 'Ricardo', 'NARO880305XH6'),
('UserR', 4, 'Silvia', 'PASL840920TQ2'),
('UserS', 1, 'Daniel', 'REDA930713IS4'),
('UserT', 2, 'Adriana', 'TRAD900630RE1'),
('UserU', 3, 'Gabriel', 'VAGG960815NJ9'),
('UserV', 4, 'Martha', 'ZAMM850123KJ7'),
('UserW', 1, 'Francisco', 'COFR820624MS0'),
('UserX', 2, 'Patricia', 'LOPA910402CV4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conceptos`
--
ALTER TABLE `conceptos`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `FKCap` (`IDCapturador`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idCon`),
  ADD UNIQUE KEY `frenteobra` (`frenteobra`);

--
-- Indices de la tabla `estimacion`
--
ALTER TABLE `estimacion`
  ADD PRIMARY KEY (`idEstimacion`,`claveConcepto`),
  ADD KEY `FKEst1` (`claveConcepto`);

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
  ADD PRIMARY KEY (`folio`),
  ADD KEY `FKMin1` (`idCapturador`);

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
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `FKCap` FOREIGN KEY (`IDCapturador`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estimacion`
--
ALTER TABLE `estimacion`
  ADD CONSTRAINT `FKEst1` FOREIGN KEY (`claveConcepto`) REFERENCES `conceptos` (`clave`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `FKMin` FOREIGN KEY (`folio`) REFERENCES `documento` (`folio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKMin1` FOREIGN KEY (`idCapturador`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perdir`
--
ALTER TABLE `perdir`
  ADD CONSTRAINT `FKPD` FOREIGN KEY (`IDUser`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `FK2_S` FOREIGN KEY (`frenteObra`) REFERENCES `frenteobra` (`idFrente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKSupvis` FOREIGN KEY (`IDUser`) REFERENCES `usuario` (`IDUser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
