-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-03-2021 a las 15:09:49
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `liroz`
--
CREATE DATABASE IF NOT EXISTS `liroz` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `liroz`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre_cat` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre_cat`, `fecha`) VALUES
(1, 'Cajas de Madera ', '2020-09-29 21:12:54'),
(2, 'Cajas Kraft', '2020-09-24 20:35:28'),
(3, 'Envases de Vidrio', '2020-09-24 20:37:27'),
(4, 'Contenedores Plásticos con Tapa', '2020-09-24 20:37:43'),
(5, 'Contenedores de Poliestireno', '2020-09-24 20:39:17'),
(6, 'Globos', '2020-09-24 20:39:42'),
(7, 'Bebidas', '2020-09-24 20:39:50'),
(13, 'otras', '2021-03-24 22:10:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'John Fredy Bonilla', 1116546916, 'damilan1991@gmail.com', '(314) 419-6766', 'calle 30 12-28 calle 30 12-28', '1991-06-15', 0, '0000-00-00 00:00:00', '2020-10-22 15:13:02'),
(2, 'Carlos Danilo Moncada', 1118643352, 'danimoncada@gmail.com', '(301) 341-6185', 'Calle 24 # 15-28', '1990-03-10', 23, '2020-10-22 10:18:44', '2020-10-22 15:18:44'),
(3, 'Fabian Cely', 1118648630, 'cely123@gmail.com', '(310) 873-2637', 'calle 30 20-58 yopal casanare', '1989-10-20', 21, '2020-10-21 21:14:39', '2020-10-22 02:14:39'),
(4, 'Maria Monica', 1116548759, 'mariacece@gmail.com', '(310) 782-7439', 'Carrera 10 # 20-12 Yopal casanare', '1991-06-15', 24, '2021-03-24 17:12:01', '2021-03-24 22:12:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '1001', 'Caja tipo hexagono grande', 'views/img/products/1001/832.jpg', 13, 8000, 12000, 7, '2020-10-22 02:14:39'),
(2, 1, '1002', 'Caja tipo hexagono mediana', 'views/img/products/1002/911.jpg', 14, 6000, 10000, 6, '2020-10-22 15:12:55'),
(3, 1, '1003', 'Caja  tipo hexagono pequena', 'views/img/products/1003/419.jpg', 15, 4000, 8000, 5, '2020-10-22 02:14:39'),
(4, 1, '1004', 'Caja tipo hielera mediana', 'views/img/products/1004/669.jpg', 20, 8000, 12000, 0, '2020-10-21 20:24:12'),
(5, 1, '1005', 'Caja tipo baul con tapa deslizante grande', 'views/img/products/1005/243.jpg', 15, 10000, 20000, 5, '2020-10-22 15:13:10'),
(6, 1, '1006', 'Caja tipo baul, con tapa deslizante, mediana.', '', 20, 8000, 160000, 0, '2020-10-21 18:31:38'),
(7, 1, '1007', 'Caja cuadrada, mediana', '', 20, 4000, 8000, 4, '2020-10-22 01:51:30'),
(8, 1, '1008', 'Caja tipo canasta, grande.', '', 20, 6000, 12000, 0, '0000-00-00 00:00:00'),
(9, 1, '1009', 'Caja tipo canasta, mediana.', '', 20, 5000, 10000, 0, '0000-00-00 00:00:00'),
(10, 1, '1010', 'Caja vinera, grande.', '', 20, 8000, 16000, 0, '0000-00-00 00:00:00'),
(11, 1, '1011', 'Caja tipo mesa, grande.', '', 19, 7000, 14000, 1, '2020-10-21 18:35:29'),
(12, 1, '1012', 'Caja tipo mesa, mediana', '', 18, 6000, 12000, 2, '2020-10-21 18:35:51'),
(13, 1, '1013', 'Paquete de cubiertos, mediano.', '', 17, 1000, 2000, 3, '2020-10-21 18:36:13'),
(14, 2, '2001', 'Caja domicilio, grande.', '', 20, 800, 1600, 0, '0000-00-00 00:00:00'),
(15, 2, '2002', 'Caja domicilio, peque?a.', '', 15, 400, 800, 5, '2020-10-22 15:10:02'),
(16, 2, '2003', 'Caja tipo ventana ?nica, mediana.', '', 14, 1200, 2200, 6, '2020-10-22 15:18:44'),
(17, 2, '2004', 'Caja tipo doble ventana, peque?a.', '', 19, 900, 2000, 1, '2020-10-21 18:36:43'),
(18, 2, '2005', 'Caja dulcera, grande.', '', 19, 2900, 6000, 1, '2020-10-21 18:37:14'),
(19, 2, '2006', 'Bolsa kraft, mediana.', '', 16, 600, 2000, 4, '2020-10-22 15:18:44'),
(20, 2, '2007', 'Caja cuatro solapas, grande.', '', 17, 5000, 20000, 3, '2020-10-22 15:18:44'),
(21, 2, '2008', 'Vaso para cupcake, grande.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(22, 2, '2009', 'Vaso para cupcake, preque?o..', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(23, 2, '2010', 'Vaso para cupcake color, unico.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(24, 3, '3001', 'Jugo mediano, 250ml.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(25, 3, '3002', 'Jugo grande, 30ml.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(26, 3, '3003', 'Tipo compotero, 130cc.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(27, 3, '3004', 'Tipo bombillo, 250cc.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(28, 3, '3005', 'Tipo mayonesa, 500cc.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(29, 3, '3006', 'Tipo compotero plus, 231cc.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(30, 4, '4001', 'Tipo corazon,4oz.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(31, 4, '4002', 'Redondo postre, 8oz.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(32, 4, '4003', 'Rectangular, 18oz.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(33, 4, '4004', 'Tipo torta, peque?o.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(34, 4, '4005', '4 divisiones, unico.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(35, 4, '4006', 'C1, unico.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(36, 5, '5001', 'Vaso, 8oz.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(37, 5, '5002', 'Bandeja torta, unico.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(38, 5, '5003', 'Capacillos, unico.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(39, 5, '5004', 'Bandeja c17, unico. ', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(40, 6, '6001', 'Te hatsu, grande.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(41, 6, '6002', 'Te hatsu, peque?o.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(42, 6, '6003', 'Cerveza corona, grande.', '', 19, 0, 0, 1, '2021-03-24 22:08:05'),
(45, 7, '7001', 'Cerveza Corona Botella 350ml', 'views/img/products/7001/782.jpg', 5, 3000, 4500, 15, '2021-03-24 22:08:05'),
(46, 13, '13001', 'Insumos', 'views/img/products/default/productos.png', 97, 20000, 28000, 3, '2021-03-24 22:12:01'),
(47, 13, '13002', 'insumos2', 'views/img/products/default/productos.png', 123, 12122, 16970.8, 0, '2021-03-24 22:24:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Llano Software', 'llanosoft', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'SuperUsuario', '', 1, '2021-03-27 15:54:09', '2021-03-27 20:54:09'),
(2, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '2021-03-25 11:11:24', '2021-03-25 16:11:24'),
(3, 'Almacenista', 'alm', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Almacenista', '', 1, '2021-03-24 19:43:47', '2021-03-25 16:11:15'),
(4, 'Vendedor', 'vend', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', '', 1, '2021-03-24 19:42:59', '2021-03-25 16:11:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(28, 10001, 2, 58, '[{\"id\":\"11\",\"descripcion\":\"Caja tipo mesa, grande.\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"14000\",\"total\":\"14000\"}]', 2660, 14000, 16660, 'TC-12356', '2020-01-21 19:35:29'),
(29, 10002, 4, 58, '[{\"id\":\"12\",\"descripcion\":\"Caja tipo mesa, mediana\",\"cantidad\":\"2\",\"stock\":\"18\",\"precio\":\"12000\",\"total\":\"24000\"}]', 4560, 24000, 28560, 'TD-585', '2020-02-21 19:35:51'),
(30, 10002, 3, 58, '[{\"id\":\"13\",\"descripcion\":\"Paquete de cubiertos, mediano.\",\"cantidad\":\"3\",\"stock\":\"17\",\"precio\":\"2000\",\"total\":\"6000\"}]', 1140, 6000, 7140, 'TC-5874898', '2020-03-21 19:36:13'),
(31, 10002, 2, 58, '[{\"id\":\"16\",\"descripcion\":\"Caja tipo ventana ?nica, mediana.\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2200\",\"total\":\"2200\"},{\"id\":\"17\",\"descripcion\":\"Caja tipo doble ventana, peque?a.\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2000\",\"total\":\"2000\"}]', 798, 4200, 4998, 'Efectivo', '2020-04-21 18:36:43'),
(32, 10002, 4, 58, '[{\"id\":\"16\",\"descripcion\":\"Caja tipo ventana ?nica, mediana.\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"2200\",\"total\":\"2200\"},{\"id\":\"18\",\"descripcion\":\"Caja dulcera, grande.\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"6000\",\"total\":\"6000\"},{\"id\":\"19\",\"descripcion\":\"Bolsa kraft, mediana.\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2000\",\"total\":\"2000\"}]', 1938, 10200, 12138, 'TC-965896', '2020-05-21 18:37:14'),
(35, 10004, 3, 58, '[{\"id\":\"45\",\"descripcion\":\"Cerveza Corona Botella 350ml\",\"cantidad\":\"10\",\"stock\":\"9\",\"precio\":\"4500\",\"total\":\"45000\"}]', 45000, 45000, 53550, 'Efectivo', '2020-10-22 15:13:38'),
(36, 10005, 3, 58, '[{\"id\":\"3\",\"descripcion\":\"Caja  tipo hexagono pequena\",\"cantidad\":\"5\",\"stock\":\"15\",\"precio\":\"8000\",\"total\":\"40000\"},{\"id\":\"2\",\"descripcion\":\"Caja tipo hexagono mediana\",\"cantidad\":\"6\",\"stock\":\"13\",\"precio\":\"10000\",\"total\":\"60000\"},{\"id\":\"1\",\"descripcion\":\"Caja tipo hexagono grande\",\"cantidad\":\"7\",\"stock\":\"13\",\"precio\":\"12000\",\"total\":\"84000\"}]', 34960, 184000, 218960, 'TC-34521', '2020-10-22 02:14:39'),
(38, 10007, 4, 58, '[{\"id\":\"5\",\"descripcion\":\"Caja tipo baul con tapa deslizante grande\",\"cantidad\":\"5\",\"stock\":\"10\",\"precio\":\"20000\",\"total\":\"100000\"},{\"id\":\"15\",\"descripcion\":\"Caja domicilio, peque?a.\",\"cantidad\":\"5\",\"stock\":\"15\",\"precio\":\"800\",\"total\":\"4000\"}]', 19760, 104000, 123760, 'TD-125487', '2020-10-22 15:10:02'),
(39, 10008, 2, 69, '[{\"id\":\"16\",\"descripcion\":\"Caja tipo ventana ?nica, mediana.\",\"cantidad\":\"4\",\"stock\":\"14\",\"precio\":\"2200\",\"total\":\"8800\"},{\"id\":\"20\",\"descripcion\":\"Caja cuatro solapas, grande.\",\"cantidad\":\"3\",\"stock\":\"17\",\"precio\":\"20000\",\"total\":\"60000\"},{\"id\":\"19\",\"descripcion\":\"Bolsa kraft, mediana.\",\"cantidad\":\"3\",\"stock\":\"16\",\"precio\":\"2000\",\"total\":\"6000\"}]', 14212, 74800, 89012, 'TC-632563256', '2020-10-22 15:18:44'),
(40, 10009, 4, 4, '[{\"id\":\"45\",\"descripcion\":\"Cerveza Corona Botella 350ml\",\"cantidad\":\"5\",\"stock\":\"5\",\"precio\":\"4500\",\"total\":\"22500\"},{\"id\":\"42\",\"descripcion\":\"Cerveza corona, grande.\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"0\",\"total\":\"0\"}]', 3600, 22500, 26100, 'Efectivo', '2021-03-24 22:08:05'),
(41, 10010, 4, 1, '[{\"id\":\"46\",\"descripcion\":\"Insumos\",\"cantidad\":\"3\",\"stock\":\"97\",\"precio\":\"28000\",\"total\":\"84000\"}]', 0, 84000, 84000, 'Efectivo', '2021-03-24 22:12:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- Base de datos: `llanosoft-licorera`
--
CREATE DATABASE IF NOT EXISTS `llanosoft-licorera` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `llanosoft-licorera`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre_cat` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre_cat`, `fecha`) VALUES
(1, 'AGUAARDIENTE', '2021-03-28 02:34:59'),
(2, 'BRANDY', '2021-03-28 02:34:59'),
(3, 'CERVEZAS', '2021-03-28 02:34:59'),
(4, 'CHAMPAGNE', '2021-03-28 02:34:59'),
(5, 'COGNAC', '2021-03-28 02:34:59'),
(6, 'GINEBRA', '2021-03-28 02:34:59'),
(7, 'LICORES', '2021-03-28 02:34:59'),
(8, 'MEZCAL', '2021-03-28 02:34:59'),
(9, 'RONES', '2021-03-28 02:34:59'),
(10, 'TEQUILAS', '2021-03-28 02:34:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'John Fredy Bonilla', 1116546916, 'damilan1991@gmail.com', '(314) 419-6766', 'calle 30 12-28 calle 30 12-28', '1991-06-15', 0, '0000-00-00 00:00:00', '2021-03-28 03:07:31'),
(2, 'Carlos Danilo Moncada', 1118643352, 'danimoncada@gmail.com', '(301) 341-6185', 'Calle 24 # 15-28', '1990-03-10', 0, '2021-03-11 14:32:31', '2021-03-28 03:07:44'),
(3, 'Fabian Cely', 1118648630, 'cely123@gmail.com', '(310) 873-2637', 'calle 30 20-58 yopal casanare', '1989-10-20', 0, '0000-00-00 00:00:00', '2021-03-28 14:26:38'),
(4, 'Maria Monica', 1116548759, 'mariacece@gmail.com', '(310) 782-7439', 'Carrera 10 # 20-12 Yopal casanare', '1991-06-15', 0, '2021-03-27 16:40:50', '2021-03-28 03:07:57'),
(7, 'Yesid Rincon', 102025421, 'yesid@gmail.com', '(315) 242-5152', 'yopal casanare', '2000-10-30', 0, '0000-00-00 00:00:00', '2020-12-15 19:45:18'),
(8, 'Linda yuyeimy', 9657424, 'linda@gmail.com', '(310) 881-7287', 'cll 33 trans 5 41', '1991-02-11', 0, '0000-00-00 00:00:00', '2020-12-16 13:36:34'),
(9, 'Linda yuyeimy', 9657424, 'linda@gmail.com', '(310) 881-7287', 'cll 33 trans 5 41', '1991-02-11', 0, '0000-00-00 00:00:00', '2020-12-16 14:10:01'),
(10, 'Linda yuyeimy', 9657424, 'linda@gmail.com', '(310) 881-7287', 'cll 33 trans 5 41', '1991-02-11', 0, '2021-03-11 14:35:44', '2021-03-28 03:08:17'),
(11, 'Silvia Juliana', 1222126800, 'silvia@gmail.com', '(314) 521-4585', 'yopal', '2000-01-01', 0, '0000-00-00 00:00:00', '2021-03-28 03:08:22'),
(12, 'juan perez', 1185487896, 'juan@gmail.com', '(313) 348-5698', 'cll 23 54 85 ', '1991-10-12', 0, '0000-00-00 00:00:00', '2021-03-28 03:08:28'),
(13, 'William Velandia ', 1020722444, 'williamvelandia@gmail.com', '(311) 592-1480', 'Bogota DC', '1991-06-15', 0, '0000-00-00 00:00:00', '2021-03-21 00:12:53'),
(14, 'Andres Garcia', 1112564765, 'andre23@gmail.com', '(312) 564-5674', 'cra 32 #26-34', '1987-06-23', 0, '0000-00-00 00:00:00', '2021-03-29 16:16:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '1001', 'Destilado de agave El Compadre 1 75L', 'views/img/products/1001/418.jpg', 107, 100000, 127000, -7, '2021-03-28 11:16:51'),
(2, 1, '1002', 'Destilado de agave El Compadre 1L', 'views/img/products/1002/257.jpg', 106, 50000, 71000, -6, '2021-03-28 11:19:32'),
(3, 1, '1003', 'Destilado de Agave Herencia del Viejo 1Lt', 'views/img/products/1003/931.jpg', 105, 45000, 64000, -5, '2021-03-28 11:19:47'),
(4, 1, '1004', 'Destilado de agave El Compadre 750ML', 'views/img/products/1004/157.jpg', 100, 35000, 54000, 0, '2021-03-28 11:20:26'),
(5, 1, '1005', 'Destilado de agave Rancho Escondido 750ml', 'views/img/products/1005/573.jpg', 100, 32000, 53000, 0, '2021-03-28 11:20:49'),
(6, 2, '2001', 'Brandy Torres 10 anos 700ml', 'views/img/products/2001/275.png', 100, 180000, 229000, 0, '2021-03-28 11:32:44'),
(7, 2, '2002', 'Brandy Torres 5 Solera 700ml', 'views/img/products/2002/166.jpg', 100, 100000, 149000, 0, '2021-03-28 11:33:01'),
(8, 2, '2003', 'Brandy Torres Double Barrel 700ML', 'views/img/products/2003/831.jpg', 100, 238000, 297000, 0, '2021-03-28 11:33:18'),
(9, 2, '2004', 'Brandy Torres Ponche 700ML', 'views/img/products/2004/462.jpg', 100, 110000, 155000, 0, '2021-03-28 11:33:31'),
(10, 2, '2005', 'Brandy Terry Centenario 700ML', 'views/img/products/2005/777.jpg', 100, 240000, 281000, 0, '2021-03-28 11:34:17'),
(11, 2, '2006', 'Brandy Don Pedro Reserva Especial 750ML', 'views/img/products/2006/529.jpg', 101, 94000, 134000, -1, '2021-03-28 11:34:30'),
(12, 2, '2007', 'Brandy Presidente Clasico 200ML', 'views/img/products/2007/961.jpg', 102, 18000, 33000, -2, '2021-03-28 11:34:50'),
(13, 2, '2008', 'Brandy Don Pedro Reserva Especial 200ML', 'views/img/products/2008/201.jpg', 103, 22000, 37000, -3, '2021-03-28 11:35:03'),
(14, 2, '2009', 'Brandy Presidente Clasico 700ML', 'views/img/products/2009/245.jpg', 100, 65000, 105000, 0, '2021-03-28 11:35:22'),
(15, 2, '2010', 'Brandy Torres 20 Edicion Especial 700ML', 'views/img/products/2010/303.jpg', 100, 830000, 928000, 0, '2021-03-28 11:36:05'),
(16, 2, '2011', 'Brandy Presidente Solera 940ML', 'views/img/products/2011/275.jpg', 102, 96000, 126000, -2, '2021-03-28 11:36:22'),
(17, 2, '2012', 'Brandy Torres 15 700ML', 'views/img/products/2012/937.jpg', 101, 295000, 396000, -1, '2021-03-28 11:37:17'),
(18, 2, '2013', 'Brandy Torres Jaime I 700ml', 'views/img/products/2013/323.jpg', 101, 2000000, 2241000, -1, '2021-03-28 11:37:31'),
(19, 2, '2014', 'Brandy Torres Spiced 700ml', 'views/img/products/2014/472.png', 101, 142000, 182000, -1, '2021-03-28 11:37:46'),
(20, 2, '2015', 'Brandy Torres 10 Gran Reserva 1lt', 'views/img/products/2015/934.jpg', 100, 375000, 423000, 0, '2021-03-28 11:38:02'),
(21, 2, '2016', 'Brandy Presidente Clasico 940ml', 'views/img/products/2016/261.jpg', 100, 95000, 132000, 0, '2021-03-28 11:38:22'),
(22, 3, '3001', 'Cerveza Estrella Lata 473ml', 'views/img/products/3001/354.jpg', 100, 12000, 16000, 0, '2021-03-28 11:40:21'),
(23, 3, '3002', 'Cerveza Victoria Laton 473ml', 'views/img/products/3002/325.png', 100, 13000, 18000, 0, '2021-03-28 11:40:35'),
(24, 3, '3003', 'Cerveza Modelo Latin 473ml', 'views/img/products/3003/207.jpg', 100, 13000, 19000, 0, '2021-03-28 11:41:11'),
(25, 3, '3004', 'Cerveza Modelo Especial Lata 355ml', 'views/img/products/3004/542.jpg', 100, 12000, 16000, 0, '2021-03-28 11:41:25'),
(26, 3, '3005', 'Cerveza Barrilito 325ML', 'views/img/products/3005/930.jpg', 100, 8500, 12000, 0, '2021-03-28 11:41:38'),
(27, 3, '3006', 'Cerveza Corona Light Lata 355ML', 'views/img/products/3006/936.jpg', 100, 9500, 14000, 0, '2021-03-28 11:41:51'),
(28, 3, '3007', 'Cerveza Corona Extra Light 473ML', 'views/img/products/3007/829.jpg', 100, 13000, 18000, 0, '2021-03-28 11:42:07'),
(29, 3, '3008', 'Cerveza Michelob Ultra Botella 355ML', 'views/img/products/3008/821.jpg', 100, 13000, 18000, 0, '2021-03-28 11:42:21'),
(30, 3, '3009', 'Cerveza Corona Extra 473ML', 'views/img/products/3009/288.jpg', 100, 13000, 18000, 0, '2021-03-28 11:42:39'),
(31, 3, '3010', 'Cerveza Modelo Premium 12 Pack 355ML', 'views/img/products/3010/268.jpg', 100, 165000, 204000, 0, '2021-03-28 11:42:56'),
(32, 3, '3011', 'Cerveza Corona Light Lata 12 Pzas 355ml', 'views/img/products/3011/596.jpg', 100, 138000, 182000, 0, '2021-03-28 11:43:11'),
(33, 4, '4001', 'Champagne Chandon Delice 750ml', 'views/img/products/4001/663.png', 100, 395000, 448000, 0, '2021-03-28 11:46:38'),
(34, 4, '4002', 'Champagne Moet y Chandon Rose Imperial 750ml', 'views/img/products/4002/922.jpg', 100, 1000000, 1437000, 0, '2021-03-28 11:46:22'),
(35, 4, '4003', 'Champagne Moet y Chandon Brut Imperial 750ml', 'views/img/products/4003/463.jpg', 100, 928000, 1184000, 0, '2021-03-28 11:47:23'),
(36, 4, '4004', 'Champagne Moet y Chandon Rose Imperial Nectar 750ml', 'views/img/products/4004/800.jpg', 100, 1100000, 1535000, 0, '2021-03-28 11:46:59'),
(37, 4, '4005', 'Champagne Moet y Chandon Nectar Imperial 750ml', 'views/img/products/4005/119.jpg', 100, 825000, 1239000, 0, '2021-03-28 11:45:24'),
(38, 4, '4006', 'Champagne Moet y Chandon Ice Imperial 750ml', 'views/img/products/4006/945.jpg', 100, 1125000, 1520000, 0, '2021-03-28 11:45:01'),
(39, 5, '5001', 'Cognac Martell VSOP 700ML  2 Copas', 'views/img/products/5001/990.jpg', 100, 425000, 689000, 0, '2021-03-28 12:56:41'),
(40, 5, '5002', 'Cognac Martell VSOP 700ML', 'views/img/products/5002/440.jpg', 100, 425000, 689000, 0, '2021-03-28 12:57:10'),
(41, 5, '5003', 'Cognac Martell Medaillon VSOP 700ML', 'views/img/products/5003/176.jpg', 100, 425000, 689000, 0, '2021-03-28 12:57:32'),
(42, 5, '5004', 'Cognac Martell VSOP 700ML Martell 350ML', 'views/img/products/5004/967.jpg', 100, 425000, 689000, 0, '2021-03-28 12:57:58'),
(43, 5, '5005', 'Cognac Courvoisier VSOP 700ml', 'views/img/products/5005/590.jpg', 100, 825000, 1115000, 0, '2021-03-28 12:58:20'),
(44, 5, '5006', 'Cognac Courvoisier VS 700ml', 'views/img/products/5006/843.jpg', 100, 325000, 619000, 0, '2021-03-28 12:58:39'),
(45, 5, '5007', 'Cognac Remy Martin VSOP 700ML', 'views/img/products/5007/105.jpg', 110, 723000, 1061000, -10, '2021-03-28 12:58:55'),
(46, 5, '5008', 'Cognac Hennessy XO 700ML', 'views/img/products/5008/109.jpg', 100, 4325000, 5234000, 0, '2021-03-28 12:59:11'),
(47, 5, '5009', 'Cognac Hennessy VSOP 700ml', 'views/img/products/5009/313.jpg', 100, 926000, 1173000, 0, '2021-03-28 12:59:28'),
(48, 5, '5010', 'Cognac Martell VS 700ML', 'views/img/products/5010/921.png', 100, 410000, 578000, 0, '2021-03-28 12:59:46'),
(49, 5, '5011', 'Cognac Martell XO 700ml', 'views/img/products/5011/689.jpg', 100, 3753000, 4685000, 0, '2021-03-28 13:00:02'),
(50, 6, '6001', 'Ginebra Beefeater Pink 700ml  Beefeater 350ml', 'views/img/products/6001/859.png', 100, 325000, 459000, 0, '2021-03-28 13:17:51'),
(51, 6, '6002', 'Ginebra Beefeater Pink 700ml', 'views/img/products/6002/122.jpg', 100, 325000, 459000, 0, '2021-03-28 13:17:34'),
(52, 6, '6003', 'Ginebra Beefeater 750ML', 'views/img/products/6003/113.jpg', 100, 226000, 389000, 0, '2021-03-28 13:17:22'),
(53, 6, '6004', 'Ginebra Beefeater 750ml Beefeater 375ml', 'views/img/products/6004/780.png', 100, 226000, 389000, 0, '2021-03-28 13:17:08'),
(54, 6, '6005', 'Ginebra Roku 700ML', 'views/img/products/6005/833.jpg', 100, 421000, 537000, 0, '2021-03-28 13:16:08'),
(55, 6, '6006', 'Ginebra Larios 700ML', 'views/img/products/6006/668.jpg', 100, 112000, 206000, 0, '2021-03-28 13:15:52'),
(56, 6, '6007', 'Ginebra Hendricks 750ml', 'views/img/products/6007/509.png', 100, 425800, 623000, 0, '2021-03-28 13:15:24'),
(57, 6, '6008', 'Ginebra Oso Negro 1lt', 'views/img/products/6008/371.jpg', 100, 85000, 126000, 0, '2021-03-28 13:15:11'),
(58, 6, '6009', 'Ginebra Bombay Sapphire 750ml', 'views/img/products/6009/645.jpg', 100, 345000, 463000, 0, '2021-03-28 13:14:58'),
(59, 6, '6010', 'Ginebra Tanqueray London Dry Gin 750ml', 'views/img/products/6010/840.jpg', 100, 374200, 476250, 0, '2021-03-28 13:14:44'),
(60, 7, '7001', 'Licor Disaronno de Amaretto 700 ml', 'views/img/products/7001/598.jpg', 100, 286000, 355000, 0, '2021-03-28 13:09:57'),
(61, 7, '7002', 'Licor Baileys Crema 1 LT', 'views/img/products/7002/142.jpg', 100, 249000, 349000, 0, '2021-03-28 13:10:11'),
(62, 7, '7003', 'Licor Baileys Original 700ml', 'views/img/products/7003/345.jpg', 100, 189000, 259000, 0, '2021-03-28 13:10:31'),
(63, 7, '7004', 'Anis Chinchon Dulce LT', 'views/img/products/7004/183.jpg', 100, 200000, 268000, 0, '2021-03-28 13:10:44'),
(64, 7, '7005', 'Licor Hpnotiq 750ml', 'views/img/products/7005/520.jpg', 100, 428900, 649000, 0, '2021-03-28 14:26:38'),
(65, 7, '7006', 'Licor Don Pancho Cafe 1Lt', 'views/img/products/7006/787.jpg', 100, 96000, 145000, 0, '2021-03-28 14:26:38'),
(66, 7, '7007', 'Licor Jagermeister 700ml', 'views/img/products/7007/571.jpg', 100, 312000, 378000, 0, '2021-03-28 13:12:38'),
(67, 7, '7008', 'Licor Kahlua Cafe 1lt', 'views/img/products/7008/437.jpg', 100, 100000, 176000, 0, '2021-03-28 14:26:38'),
(68, 7, '7009', 'Licor 43 750ml', 'views/img/products/7009/858.jpg', 100, 400000, 508000, 0, '2021-03-28 13:13:24'),
(69, 7, '7010', 'Licor Controy de Naranjas 1lt', 'views/img/products/7010/307.jpg', 100, 100500, 168000, 0, '2021-03-28 13:13:41'),
(70, 8, '8001', 'Mezcal Bruxo Receta Inicial 750ML', 'views/img/products/8001/803.jpg', 100, 345000, 486000, 0, '2021-03-28 13:06:59'),
(71, 8, '8002', 'Mezcal Bruxo Pechuga 750ML', 'views/img/products/8002/829.jpg', 100, 495000, 642000, 0, '2021-03-28 13:07:13'),
(72, 8, '8003', 'Mezcal Bruxo Ensamble 750ML', 'views/img/products/8003/101.png', 100, 755000, 974000, 0, '2021-03-28 13:07:28'),
(73, 8, '8004', 'Mezcal Bruxo Espadin 750ML', 'views/img/products/8004/893.jpg', 100, 475000, 545000, 0, '2021-03-28 13:07:54'),
(74, 8, '8005', 'Mezcal Bruxo Barril 750ML', 'views/img/products/8005/208.jpg', 100, 755000, 877050, 0, '2021-03-28 13:08:08'),
(75, 8, '8006', 'Mezcal Fandango Joven 750ML', 'views/img/products/8006/396.jpg', 100, 125000, 191000, 0, '2021-03-28 13:08:20'),
(76, 8, '8007', 'Mezcal Amores Cupreata Joven 750ML', 'views/img/products/8007/497.png', 100, 45000, 694000, 0, '2021-03-28 13:08:39'),
(77, 8, '8008', 'Mezcal Ojo de Tigre Reposado 750ML', 'views/img/products/8008/574.png', 100, 465000, 597000, 0, '2021-03-28 13:08:56'),
(78, 8, '8009', 'Mezcal Amores Espadin Reposado 750ML', 'views/img/products/8009/164.jpg', 100, 554000, 645000, 0, '2021-03-28 13:09:15'),
(79, 8, '8010', 'Mezcal Uniin El Viejo 700ml', 'views/img/products/8010/492.jpg', 100, 625000, 706000, 0, '2021-03-28 13:09:35'),
(80, 8, '8011', 'Mezcal Fandango Reposado 750ml', 'views/img/products/8011/384.jpg', 100, 124000, 191000, 0, '2021-03-28 13:06:32'),
(81, 8, '8012', 'Mezcal Uniin El Joven 700ml', 'views/img/products/8012/198.jpg', 100, 387000, 463000, 0, '2021-03-28 13:06:19'),
(82, 8, '8013', 'Mezcal 400 Conejos Reposado 750ml', 'views/img/products/8013/942.jpg', 100, 456000, 545000, 0, '2021-03-28 13:06:01'),
(83, 8, '8014', 'Mezcal 400 Conejos Joven 750ml', 'views/img/products/8014/492.jpg', 100, 397800, 482500, 0, '2021-03-28 13:05:45'),
(84, 9, '9001', 'Ron Havana Club Anejo Especial 750ml', 'views/img/products/9001/750.png', 100, 185000, 226000, 0, '2021-03-28 11:24:17'),
(85, 9, '9002', 'Ron Havana Club 3 Anos 750ml', 'views/img/products/9002/105.jpg', 100, 112200, 171000, 0, '2021-03-28 11:24:40'),
(86, 9, '9003', 'Ron Havana Anejo 700ml', 'views/img/products/9003/669.jpg', 100, 186000, 226000, 0, '2021-03-28 11:25:11'),
(87, 9, '9004', 'Ron Captain Morgan White 750ML', 'views/img/products/9004/389.jpg', 100, 98500, 153000, 0, '2021-03-28 11:25:27'),
(88, 9, '9005', 'Ron Bacardi Carta Blanca 980ml', 'views/img/products/9005/371.jpg', 100, 165000, 206000, 0, '2021-03-28 11:25:43'),
(89, 9, '9006', 'Ron Bacardi Anejo 1lt', 'views/img/products/9006/657.jpg', 100, 165000, 190000, 0, '2021-03-28 11:26:18'),
(90, 9, '9007', 'Ron Antillano Blanco 1lt', 'views/img/products/9007/994.jpg', 100, 98000, 111500, 0, '2021-03-28 11:26:31'),
(91, 9, '9008', 'Ron Captain Morgan Original 750ml', 'views/img/products/9008/319.jpg', 100, 98000, 123000, 0, '2021-03-28 11:26:44'),
(92, 9, '9009', 'Ron Bacardi Carta Blanca 750ml', 'views/img/products/9009/970.jpg', 100, 98000, 145000, 0, '2021-03-28 11:27:06'),
(93, 9, '9010', 'Ron Appleton State Rum 750ml', 'views/img/products/9010/938.jpg', 100, 185000, 266000, 0, '2021-03-28 11:27:19'),
(94, 9, '9011', 'Ron Bacardi Anejo 200ML', 'views/img/products/9011/450.jpg', 100, 25000, 44000, 0, '2021-03-28 11:27:39'),
(95, 9, '9012', 'Ron Bacardi Solera 1873 LT', 'views/img/products/9012/120.jpg', 100, 186000, 229000, 0, '2021-03-28 11:27:57'),
(96, 9, '9013', 'Ron Bacardi Solera 1873 750ML', 'views/img/products/9013/954.jpg', 100, 189000, 269000, 0, '2021-03-28 11:28:13'),
(97, 9, '9014', 'Ron Flor de Cana Gran Reserva 7 750ML', 'views/img/products/9014/515.jpg', 100, 120000, 195000, 0, '2021-03-28 11:28:51'),
(98, 9, '9015', 'Ron Baraima Blanco 700ML', 'views/img/products/9015/692.jpg', 100, 75000, 99000, 0, '2021-03-28 11:29:05'),
(99, 9, '9016', 'Ron Havana Club 7 Anos 700ML', 'views/img/products/9016/196.jpg', 100, 189000, 289000, 0, '2021-03-29 16:16:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Llano Software', 'llanosoft', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'views/img/users/llanosoft/682.png', 1, '2021-03-30 08:05:03', '2021-03-30 13:05:03'),
(2, 'Gerente', 'PEDROPEREZ', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '2021-03-27 17:57:00', '2021-03-27 22:57:00'),
(3, 'VENDEDOR1', 'PAOLARAMIREZ', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Vendedor', '', 1, '2021-03-20 19:09:27', '2021-03-21 00:09:27'),
(4, 'ALMACENISTA', 'MARIOCALDERON', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Almacenista', '', 1, '2021-03-24 17:26:36', '2021-03-24 22:54:24'),
(5, 'Robinsson Monquira Nuta', 'Robinsson', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', '', 1, '2021-03-26 21:26:52', '2021-03-27 02:26:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_vendedor` (`id_vendedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_vendedor`) REFERENCES `usuarios` (`id`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"liroz\",\"table\":\"usuarios\"},{\"db\":\"liroz\",\"table\":\"categorias\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Volcado de datos para la tabla `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('liroz', 'productos', 'id_categoria', 'liroz', 'categorias', 'id'),
('liroz', 'ventas', 'id_cliente', 'liroz', 'clientes', 'id'),
('liroz', 'ventas', 'id_vendedor', 'liroz', 'usuarios', 'id');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('liroz', 'clientes', 'id'),
('liroz', 'productos', 'codigo'),
('liroz', 'ventas', 'productos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'liroz', 'productos', '{\"sorted_col\":\"`id_categoria` ASC\",\"CREATE_TIME\":\"2020-10-01 15:43:52\"}', '2020-10-22 01:30:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-03-30 13:08:52', '{\"Console\\/Mode\":\"show\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
