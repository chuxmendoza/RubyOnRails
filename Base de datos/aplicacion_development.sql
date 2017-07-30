-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2017 a las 23:08:47
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aplicacion_development`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2017-07-29 08:48:29', '2017-07-29 08:48:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Sony', '2017-07-29 17:21:09', '2017-07-30 06:59:20'),
(2, 'Samsung', '2017-07-29 18:36:42', '2017-07-29 18:36:42'),
(6, 'HP', '2017-07-29 20:31:58', '2017-07-29 20:31:58'),
(7, 'Huawei', '2017-07-30 16:49:43', '2017-07-30 16:50:11'),
(8, 'piojl', '2017-07-30 20:10:10', '2017-07-30 20:10:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `descripcion` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `marca_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `created_at`, `updated_at`, `marca_id`) VALUES
(1, 'Smart TV', 50.5, '4K HDR Processor X1™ Extreme para un realismo definitivo\r\nContraste sin precedentes con Backlight Master Drive™\r\nIncreíble contraste con X-tended Dynamic Range™ PRO\r\nAmplia gama de colores con TRILUMINOS Display', '2017-07-29 17:25:07', '2017-07-30 19:57:33', 1),
(3, 'Galaxy S4', 10.95, 'El Samsung Galaxy S4 mide 69.8 mm de ancho, 136.6 mm de alto y 7.9 mm de grosor. También es importante el peso, que en el caso de este modelo es de 130 g', '2017-07-29 18:38:53', '2017-07-30 19:57:05', 2),
(4, 'Laptop', 100, 'Afronte todas sus tareas diarias con una laptop accesible equipada con todos los recursos que necesita. Obtenga toda la potencia que desea con confianza en un nombre de reconocido como HP. Windows 10 Home u otros sistemas operativos disponibles.', '2017-07-29 22:26:30', '2017-07-29 23:01:57', 6),
(5, 'Ps4', 95, 'Consola de videojuegos', '2017-07-30 19:53:44', '2017-07-30 19:53:44', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20170729085445'),
('20170729085546'),
('20170729090245');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
