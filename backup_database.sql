-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-11-2011 a las 22:19:19
-- Versión del servidor: 5.1.33
-- Versión de PHP: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_categories`
--

CREATE TABLE IF NOT EXISTS `store_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(50) DEFAULT NULL,
  `cat_desc` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cat_title` (`cat_title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `store_categories`
--

INSERT INTO `store_categories` (`id`, `cat_title`, `cat_desc`) VALUES
(1, 'Valvulas y Accesorios', 'Aqui encontraras las valvulas y accesorios manuales'),
(2, 'Valvulas Automaticas', 'Aca encontraras toda clase de material automatico'),
(3, 'Valvulas de control de flujo', 'Estas ademas de ser automaticas presentan unas caracteristicas sobresalientes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_items`
--

CREATE TABLE IF NOT EXISTS `store_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `item_title` varchar(75) DEFAULT NULL,
  `item_price` float(8,2) DEFAULT NULL,
  `item_desc` text,
  `item_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcar la base de datos para la tabla `store_items`
--

INSERT INTO `store_items` (`id`, `cat_id`, `item_title`, `item_price`, `item_desc`, `item_image`) VALUES
(1, 1, 'TB Series True Union Ball Valves', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VA1.jpg'),
(2, 1, 'TBZ Series ', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VA2.jpg'),
(3, 1, 'CV Series ProFile2 Proportional Control Ball Valves', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VA3.jpg'),
(4, 1, 'LA Series Lateral Three-Way True Union Ball Valves', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VA4.jpg'),
(5, 1, 'QV Series QIC2 Compact Ball Valves', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VA5.jpg'),
(6, 1, 'TBB Series True Union Commercial Ball Valves', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VA6.jpg'),
(7, 1, 'QTA Series True Union Compact Ball Valves', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VA7.jpg'),
(8, 1, 'QVC Series Compact Ball Valves,', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VA8.jpg'),
(9, 1, 'SW Series Swing Check Valves', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VA9.jpg'),
(10, 1, 'TC Series True Union Ball Check Valves', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VA10.jpg'),
(11, 2, 'PCD/PCS Series Pneumatic Actuators', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VAA1.jpg'),
(12, 2, 'PMD/PMS Series Pneumatic Actuators', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VAA2.jpg'),
(13, 2, 'EA Series Automated True Union Ball Valves', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VAA3.jpg'),
(14, 2, 'EAU Series Automated True Union Ball Valves', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VAA4.jpg'),
(15, 2, 'PM Series Automated True Union Ball', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VAA5.jpg'),
(16, 3, 'AR Series Air Release Valves', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VC1.jpg'),
(17, 3, 'SF Series Self-Aligning Bulkhead Fittings', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VC2.jpg'),
(18, 3, 'BVX Series Ready Flanges,', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VC3.jpg'),
(19, 3, 'GG Series Gauge Guards', NULL, 'Los productos de Hayward están orientados a aplicaciones específicas como:\r\n\r\nSistemas de Filtración (Utilizando filtros tipo bolsa para separación en líquidos. Los sistemas pueden ser sencillos ó múltiples)\r\n\r\nSeparación Gas/ Líquido (Remoción de partículas dañinas en el aire y en los gases.)\r\n\r\nVálvulas de plástico y control de flujo (De todos tipos manuales y automáticas para filtros tipo "Strainers" para aplicaciones puras y corrosivas.)\r\n\r\nMedidores de flujo e Instrumentación (Medidores, Sensores, Interruptores de plástico resistentes a la corrosión.)\r\n\r\nFiltros tipo "Strainers" (Remoción de partículas en líquidos, utilizando canastas de acero inoxidable, plásticos resistentes a la corrosión, sistemas sencillos ó tipo duplex, lavables automáticamente.)', 'Imagenes/VC4.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_item_color`
--

CREATE TABLE IF NOT EXISTS `store_item_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `item_color` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Volcar la base de datos para la tabla `store_item_color`
--

INSERT INTO `store_item_color` (`id`, `item_id`, `item_color`) VALUES
(1, 1, 'PVC'),
(2, 1, 'CPVC'),
(3, 2, 'CPVC'),
(4, 3, 'CPVC'),
(5, 3, 'PVC'),
(6, 4, 'WPVC'),
(7, 5, 'WPVC'),
(8, 6, 'WPVC'),
(9, 6, 'PVC'),
(10, 6, 'CVC'),
(11, 7, 'PVC'),
(12, 8, 'PVC'),
(13, 8, 'CPVC'),
(14, 9, 'PVC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_item_size`
--

CREATE TABLE IF NOT EXISTS `store_item_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `item_size` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Volcar la base de datos para la tabla `store_item_size`
--

INSERT INTO `store_item_size` (`id`, `item_id`, `item_size`) VALUES
(1, 1, '1/4 - 3/8'),
(2, 1, '1/2 - 4'),
(3, 1, '6'),
(4, 2, '1/2 - 4'),
(5, 3, '1/2 - 4'),
(6, 4, '1/4 - 3/8'),
(7, 4, '1/2 - 4'),
(8, 4, '6'),
(9, 5, '1/4 - 3/8'),
(10, 5, '6'),
(11, 6, '1/4 - 3/8'),
(12, 6, '6'),
(13, 7, '1/4 - 3/8'),
(14, 7, '1/2 - 4'),
(15, 8, '1/2 - 4'),
(16, 8, '6'),
(17, 9, '6'),
(18, 9, '6  1/2'),
(19, 16, '2-4'),
(20, 16, '4-8'),
(21, 17, '1/2-4'),
(22, 17, '4'),
(23, 18, '4'),
(24, 19, '1/2-2'),
(25, 19, '2-3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_orders`
--

CREATE TABLE IF NOT EXISTS `store_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `order_name` varchar(100) DEFAULT NULL,
  `order_address` varchar(255) DEFAULT NULL,
  `order_city` varchar(50) DEFAULT NULL,
  `order_state` char(2) DEFAULT NULL,
  `order_zip` varchar(10) DEFAULT NULL,
  `order_tel` varchar(25) DEFAULT NULL,
  `order_email` varchar(100) DEFAULT NULL,
  `item_total` float(6,2) DEFAULT NULL,
  `shipping_total` float(6,2) DEFAULT NULL,
  `authorization` varchar(50) DEFAULT NULL,
  `status` enum('Procesado','Pendiente') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `store_orders`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_orders_items`
--

CREATE TABLE IF NOT EXISTS `store_orders_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `sel_item_id` int(11) DEFAULT NULL,
  `sel_item_qty` smallint(6) DEFAULT NULL,
  `sel_item_size` varchar(25) DEFAULT NULL,
  `sel_item_color` varchar(25) DEFAULT NULL,
  `sel_item_price` float(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `store_orders_items`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_shoppertrack`
--

CREATE TABLE IF NOT EXISTS `store_shoppertrack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(32) DEFAULT NULL,
  `sel_item_id` int(11) DEFAULT NULL,
  `sel_item_qty` smallint(6) DEFAULT NULL,
  `sel_item_size` varchar(25) DEFAULT NULL,
  `sel_item_color` varchar(25) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Volcar la base de datos para la tabla `store_shoppertrack`
--

INSERT INTO `store_shoppertrack` (`id`, `session_id`, `sel_item_id`, `sel_item_qty`, `sel_item_size`, `sel_item_color`, `date_added`) VALUES
(1, '989657885ded0a3000e6d2580e66f75f', 3, 7, '', '', '2011-11-08 00:30:10'),
(2, '606f2d42d97a579ff240590297004f95', 1, 1, '6', 'PVC', '2011-11-08 00:39:43'),
(3, 'd5fcf27871dc4f322b37db96ee05d189', 1, 5, '1/4 - 3/8', 'PVC', '2011-11-08 00:43:18'),
(4, 'da191a64c45d078621d71dab1131d3b0', 1, 6, '6', 'PVC', '2011-11-08 00:46:44'),
(5, '915e901308aabf7e3bfab67c29258078', 7, 1, '', '', '2011-11-08 23:30:16'),
(6, '2cdddee8ab452057867d6f48ee559534', 1, 1, '1/2 - 4', 'CPVC', '2011-11-09 00:04:17'),
(7, '2cdddee8ab452057867d6f48ee559534', 1, 1, '1/2 - 4', 'CPVC', '2011-11-09 00:04:36'),
(8, '63fa0ba2b4b7d5dad7c17f01247ae170', 7, 1, '1/4 - 3/8', 'PVC', '2011-11-09 00:16:30'),
(11, '353f7852d2b44b7cf8ad15c29bc7d598', 11, 1, '', '', '2011-11-09 00:44:41'),
(12, '458f9b3e31773557b66a9e3b930c0263', 18, 5, '4', '', '2011-11-09 00:55:01'),
(14, '8802b9bbae16e3c8f57ee35707c6bf99', 13, 4, '', '', '2011-11-09 01:06:20'),
(15, '8802b9bbae16e3c8f57ee35707c6bf99', 3, 1, '1/2 - 4', 'CPVC', '2011-11-09 01:06:20'),
(16, '1d80b6727532b697622d2101a45e1092', 14, 5, '', '', '2011-11-09 01:16:16'),
(17, 'fb5dceb765609d4a7b13694125ea60f2', 7, 7, '1/2 - 4', 'PVC', '2011-11-09 01:21:37'),
(18, '4b561d7bdec1f4a2a0add4ba26a02747', 1, 1, '1/2 - 4', 'CPVC', '2011-11-09 07:54:32'),
(19, '28b56d76afbf8d6707cd62e664112438', 16, 1, '2-4', '', '2011-11-09 07:57:44'),
(20, 'c93712e14dd3467c80fc2171b3924099', 12, 1, '', '', '2011-11-09 22:40:34'),
(21, 'c93712e14dd3467c80fc2171b3924099', 18, 1, '4', '', '2011-11-09 22:40:55'),
(22, '24bbfca037fa182c4d406d9027710e3e', 12, 1, '', '', '2011-11-10 15:49:44'),
(23, '48afba3b24115de87de1d731097fadd0', 19, 1, '1/2-2', '', '2011-11-10 15:50:47'),
(24, 'f05d4fe5bfa475f8a4b8c5dd06ee043b', 7, 5, '1/4 - 3/8', 'PVC', '2011-11-10 15:54:23'),
(25, 'b654e5d709264ea30bee585217e189fc', 14, 1, '', '', '2011-11-10 18:02:15'),
(26, 'b654e5d709264ea30bee585217e189fc', 13, 1, '', '', '2011-11-10 18:14:06'),
(27, 'b654e5d709264ea30bee585217e189fc', 19, 1, '1/2-2', '', '2011-11-10 18:14:28'),
(28, 'b654e5d709264ea30bee585217e189fc', 4, 1, '1/2 - 4', 'WPVC', '2011-11-10 18:14:48'),
(29, '102e0375752d9682ce13d10ef778ccd9', 13, 5, '', '', '2011-11-10 18:15:38'),
(33, '44ab11006125fb333db2dd023b9e6582', 8, 1, '6', 'PVC', '2011-11-10 23:48:12'),
(34, '44ab11006125fb333db2dd023b9e6582', 19, 1, '1/2-2', '', '2011-11-10 23:48:22'),
(35, '44ab11006125fb333db2dd023b9e6582', 15, 1, '', '', '2011-11-10 23:48:30'),
(36, '44ab11006125fb333db2dd023b9e6582', 19, 1, '1/2-2', '', '2011-11-10 23:48:39');
