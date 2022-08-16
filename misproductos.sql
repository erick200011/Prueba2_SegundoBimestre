-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2022 a las 08:19:03
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `misproductos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ProductoID` int(11) NOT NULL,
  `PNombre` varchar(250) NOT NULL,
  `PCiudad` varchar(250) NOT NULL,
  `PPrecio` float NOT NULL,
  `PCantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ProductoID`, `PNombre`, `PCiudad`, `PPrecio`, `PCantidad`) VALUES
(1, 'Adidas', 'Quito', 1, 10),
(2, 'Hamburguesas', 'Quito', 1.5, 100),
(3, 'aceite de girasol', 'Quito', 1.7, 99),
(4, 'aceite de maíz', 'Quito', 1.56, 74),
(5, 'aceite mezcla', 'Quito', 2, 47),
(6, 'arroz blanco', 'Quito', 56, 50),
(7, ' azúcar', 'Quito', 40, 200),
(8, 'edulcorante', 'Quito', 20, 150),
(9, 'mayonesa', 'Quito', 32.5, 300),
(10, 'mostaza', 'Quito', 27.54, 200),
(11, 'sal', 'Quito', 10.36, 196),
(12, 'vinagre', 'Quito', 15.63, 124),
(13, 'atún', 'Quito', 23.56, 123),
(14, 'tomates', 'Quito', 35.6, 125),
(15, 'vegetales', 'Quito', 45.3, 147),
(16, 'dulce light', 'Quito', 58.63, 159),
(17, 'mermelada', 'Quito', 89.2, 124),
(18, 'harina de maíz', 'Quito', 45.21, 148),
(19, 'harina de trigo', 'Quito', 53.62, 193),
(20, 'huevos', 'Quito', 25.6, 50),
(21, 'café instantáneo', 'Quito', 75.3, 60),
(22, 'café molido', 'Quito', 25.65, 70),
(23, 'mate cocido', 'Quito', 85.21, 80),
(24, ' té', 'Quito', 21.5, 90),
(25, 'leche descremada', 'Quito', 41.25, 100),
(26, 'leche entera', 'Quito', 53.14, 110),
(27, 'pan de molde', 'Quito', 25.36, 120),
(28, 'pan francés', 'Quito', 75.36, 130),
(29, 'pan rallado', 'Quito', 12.45, 140),
(30, 'fideos guiseros', 'Quito', 36.56, 150),
(31, 'fideos largos', 'Quito', 45.62, 160),
(32, 'fideos soperos', 'Quito', 56.23, 170),
(33, 'Pañales extra extra grandes', 'Quito', 58.69, 180),
(34, 'pañales extra grandes', 'Quito', 72.5, 190),
(35, 'pañales grandes', 'Quito', 52.23, 200),
(36, 'pañales medianos', 'Quito', 53.6, 10),
(37, ' pañales pequeños', 'Quito', 23.55, 20),
(38, 'pañales recién nacidos', 'Quito', 56.2, 30),
(39, ' fernet', 'Quito', 36.2, 40),
(40, 'cerveza en botella', 'Quito', 56.2, 50),
(41, 'cerveza en lata', 'Quito', 45.32, 60),
(42, 'agua gasificada', 'Quito', 59.74, 70),
(43, 'agua sin gas', 'Quito', 56.2, 80),
(44, 'gaseosas cola', 'Quito', 78.1, 90),
(45, 'gaseosas lima limón', 'Quito', 75.1, 100),
(46, 'gaseosas naranja', 'Quito', 12.35, 110),
(47, 'gaseosas pomelo', 'Quito', 23.15, 120),
(48, 'gaseosas tónica', 'Quito', 56.2, 130),
(49, 'gaseosas juego en polvo', 'Quito', 74.5, 140),
(50, 'salchichas', 'Quito', 32.2, 150),
(51, ' jamón cocido', 'Quito', 12.36, 150),
(52, 'paleta', 'Quito', 36.12, 160),
(53, 'paté y picadillo de carne', 'Quito', 61.32, 170),
(54, 'Galletitas de chocolate', 'Quito', 31.62, 180),
(55, 'galletitas obleas', 'Quito', 23.12, 190),
(56, 'galletitas secas', 'Quito', 31.22, 200),
(57, 'galletitas surtidas', 'Quito', 31.22, 200),
(58, 'galletitas saladas regulares', 'Quito', 31.22, 200),
(59, 'crema de leche', 'Quito', 31.22, 200),
(60, 'dulce de leche tradicional', 'Quito', 31.22, 200),
(61, 'leche descremada', 'Quito', 31.22, 200),
(62, 'leche entera', 'Quito', 31.22, 200),
(63, 'leche en polvo', 'Quito', 31.22, 200),
(64, 'manteca', 'Quito', 31.22, 200),
(65, 'mantecaflanes', 'Quito', 31.22, 200),
(66, ' flanes light', 'Quito', 31.22, 200),
(67, 'postre light', 'Quito', 31.22, 200),
(68, ' queso entero duro', 'Quito', 31.22, 200),
(69, 'queso entero blando', 'Quito', 31.22, 200),
(70, 'queso untable', 'Quito', 31.22, 200),
(71, 'queso rallado', 'Quito', 31.22, 200),
(72, 'queso sin sal', 'Quito', 31.22, 200),
(73, 'Yogurt descremado bebible', 'GYE', 31.22, 200),
(74, 'yogurt descremado con cereales y frutas', 'GYE', 31.22, 200),
(75, 'yogurt descremado firme y batido', 'GYE', 31.22, 200),
(76, 'yogurt entero bebible', 'GYE', 31.22, 200),
(77, 'yogurt entero con cereales y frutas', 'GYE', 31.22, 200),
(78, 'yogurt entero firme y batido', 'GYE', 31.22, 200),
(79, 'repelentes', 'GYE', 31.22, 200),
(80, 'lavandinas', 'GYE', 31.22, 200),
(81, 'lavavajillas', 'GYE', 56.1, 50),
(82, 'limpiador de piso', 'GYE', 56.1, 50),
(83, 'papel higiénico', 'GYE', 56.1, 50),
(84, 'rollo de cocina', 'GYE', 56.1, 50),
(85, ' jabón en pan', 'GYE', 56.1, 50),
(86, 'jabón en polvo', 'GYE', 56.1, 50),
(87, ' jabón líquido', 'GYE', 56.1, 50),
(88, 'suavizante para la ropa', 'GYE', 56.1, 50),
(89, 'tapa de empanadas', 'GYE', 56.1, 50),
(90, 'tapa de tartas', 'GYE', 56.1, 50),
(91, 'crema enguaje', 'Napo', 23.99, 50),
(92, 'champú', 'Napo', 23.99, 50),
(93, 'desodorante femenino', 'Napo', 23.99, 50),
(94, 'desodorante masculino', 'Napo', 23.99, 50),
(95, ' alcohol fino', 'Napo', 23.99, 50),
(96, 'crema dental', 'Napo', 23.99, 50),
(97, 'protectores diarios femenino', 'Napo', 23.99, 50),
(98, 'tampones', 'Napo', 23.99, 50),
(99, 'toallas higiénicas', 'Napo', 23.99, 50),
(100, 'Miel', 'Napo', 100, 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `Email` varchar(200) NOT NULL,
  `Contraseña` varchar(200) NOT NULL,
  `IDUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`Email`, `Contraseña`, `IDUser`) VALUES
('erickPalomo@Poo.com', '12345', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ProductoID`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDUser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ProductoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `IDUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
