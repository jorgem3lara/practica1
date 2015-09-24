-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2014 a las 06:12:11
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `conta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE IF NOT EXISTS `cuenta` (
  `codigo_mayor` int(11) NOT NULL,
  `nombre_cuenta` varchar(60) NOT NULL,
  `descripcion` varchar(75) DEFAULT NULL,
  `tipo_cuenta` int(11) DEFAULT NULL,
  `er` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`codigo_mayor`, `nombre_cuenta`, `descripcion`, `tipo_cuenta`, `er`) VALUES
(1101, 'Caja General', 'Corriente', 1, 1),
(1102, 'Caja Chica', 'Corriente', 1, 1),
(1103, 'Bancos', 'Corriente', 1, 1),
(1104, 'Inventario de Mercaderia', 'Corriente', 1, 1),
(1105, 'Inventario de Materiales y Suministros', 'Corriente', 1, 1),
(1106, 'Cuentas por Cobrar', 'Corriente', 1, 1),
(1107, 'Inversiones Temporales', 'Corriente', 1, 1),
(1108, 'Cuenta Personal', 'Corriente', 1, 1),
(1109, 'Estimacion para cuentas incobrables', 'Corriente', 1, 1),
(1110, 'Documentos por cobrar a corto plazo', 'Corriente', 1, 1),
(1111, 'Pago a cuentas impuesto sobre la renta', 'Corriente', 1, 1),
(1112, 'IVA - Credito Fiscal', 'Corriente', 1, 1),
(1113, 'Pagos por anticipado', 'Corriente', 1, 1),
(1201, 'Bienes muebles', 'Corriente', 1, 0),
(1202, 'Bienes inmuebles', 'No corriente', 1, 1),
(1203, 'Depreciacion acumulada', 'No corriente', 1, 1),
(1204, 'Cuentas por cobrar a largo plazo', 'No corriente', 1, 1),
(1205, 'Propiedades de inversion', 'No corriente', 1, 1),
(1206, 'Intangibles', 'No corriente', 1, 1),
(1207, 'Inversiones de largo plazo', 'No corriente', 1, 1),
(2101, 'Proveedores', 'Corriente', 2, 1),
(2102, 'Acreedores Varios', 'Corriente', 2, 1),
(2103, 'Documentos por pagar a corto plazo', 'Corriente', 2, 1),
(2104, 'Provisiones', 'Corriente', 2, 1),
(2105, 'Retenciones por pagar', 'Corriente', 1, 1),
(2106, 'Dividendos por pagar', 'Corriente', 2, 1),
(2107, 'IVA - Debito Fiscal', 'Corriente', 1, 1),
(2108, 'Cobros anticipados', 'Corriente', 2, 1),
(2201, 'Documentos por pagar a largo plazo', 'No corriente', 2, 1),
(2202, 'Prestamos Bancarios', 'No corriente', 2, 1),
(2203, 'Obligaciones laborales', 'No corriente', 2, 1),
(3101, 'Capital social', 'Capital', 3, 1),
(3102, 'Capital liquido', 'Capital', 3, 1),
(3201, 'Reserva legal', 'Reserva', 3, 1),
(3202, 'Reserva laboral', 'Reserva', 3, 1),
(3203, 'Reserva para revaluaciones', 'Reserva', 3, 1),
(3301, 'Utilidades acumuladas', 'Utilidades', 3, 1),
(3302, 'Utilidad del ejercicio', 'Utilidades', 3, 1),
(3401, 'Perdidas del ejercicio', 'Perdidas', 3, 1),
(4101, 'Costos de ventas', 'Operacion', 4, 1),
(4102, 'Compras de mercaderias', 'Operacion', 4, 1),
(4103, 'Gastos de compra', 'Operacion', 4, 1),
(4104, 'Rebajas y devoluciones sobre ventas', 'Operacion', 4, 1),
(4105, 'Gastos de ventas', 'Operacion', 4, 1),
(4108, 'Gastos por servicios', 'Financieros', 4, 1),
(4201, 'Otros gastos', 'No operacionales', 4, 1),
(5101, 'Ventas', 'Operacion', 5, 1),
(5102, 'Exportaciones', 'Operacion', 5, 1),
(5103, 'Devoluciones y rebajas sobre compras', 'Operacion', 5, 1),
(5104, 'Productos financieros', 'Operacion', 5, 1),
(5105, 'Ingresos por servicios', 'Operacion', 5, 1),
(5201, 'Otros ingresos', 'No Operacionales', 5, 1),
(6101, 'Perdidas y ganancias', 'Liquidadora', 6, 1),
(110301, 'Cuentas Corrientes', 'Corriente', 1, 1),
(110302, 'Cuentas de Ahorro', 'Corriente', 1, 1),
(110303, 'Deposito a Plazo', 'Corriente', 1, 1),
(110506, 'Vacaciones', 'Operacion', 4, 1),
(110601, 'Clientes', 'Corriente', 1, 1),
(110602, 'Deudores varios', 'Corriente\r\n', 1, 1),
(110603, 'Empleados', 'Corriente', 1, 1),
(110604, 'Accionistas', 'Corriente', 1, 1),
(111301, 'Primas de seguros', 'Corriente', 1, 1),
(111302, 'Alquileres', 'Corriente', 1, 1),
(111303, 'Papeleria y Utiles', 'Corriente', 1, 1),
(111304, 'Publicidad y propaganda', 'Corriente', 1, 1),
(111305, 'Proveedores', 'Corriente', 1, 1),
(120101, 'Mobiliario y Equipo', 'No corriente', 1, 1),
(120102, 'Equipo de transporte', 'No corriente', 1, 1),
(120103, 'Maquinaria', 'No corriente', 1, 1),
(120104, 'Herramientas y accesorios', 'No corriente', 1, 1),
(120201, 'Terrenos', 'No corriente', 1, 1),
(120202, 'Edificios', 'No corriente', 1, 1),
(120301, 'Mobiliario y Equipo', 'No corriente', 1, 1),
(120302, 'Equipo de transporte', 'No corriente', 1, 1),
(120303, 'Maquinaria', 'No corriente', 1, 1),
(120304, 'Herramientas', 'No corriente', 1, 1),
(120305, 'Edificios e instalaciones', 'No corriente', 1, 1),
(120601, 'Patentes', 'No corriente', 1, 1),
(120602, 'Marcas', 'No corriente', 1, 1),
(120603, 'Franquicias', 'No corriente', 1, 1),
(120604, 'Derechos intelectuales de autor', 'No corriente', 1, 1),
(120605, 'Programas y sistemas', 'No corriente', 1, 1),
(210101, 'Locales', 'Corriente', 2, 1),
(210102, 'Extranjeros', 'Corriente', 2, 1),
(210401, 'Sueldos por pagar', 'Corriente', 2, 1),
(210402, 'Cuotas patronales por pagar', 'Corriente', 2, 1),
(210403, 'Servicios basicos por pagar', 'Corriente', 1, 1),
(210404, 'Impuestos por pagar', 'Corriente', 1, 1),
(210501, 'ISSS empleados', 'Corriente', 2, 1),
(210502, 'AFP empleados', 'Corriente', 2, 1),
(210503, 'Impuestos sobre la renta empleados', 'Corriente', 2, 1),
(210504, 'Impuestos sobre la renta a terceros', 'Corriente', 2, 1),
(310101, 'Capital social pagado', 'Capital', 3, 1),
(310102, 'Capital social no pagado', 'Capital', 3, 1),
(410501, 'Sueldos y salarios', 'Operacion', 4, 1),
(410502, 'Horas extras', 'Operacion', 4, 1),
(410503, 'Comisiones', 'Operacion', 4, 1),
(410504, 'ISSS e Insaford cuota patronal', 'Operacion', 4, 1),
(410505, 'Pensiones cuota patronal', 'Operacion', 4, 1),
(410507, 'Aguinaldos', 'Operacion', 4, 1),
(410508, 'Indemnizaciones', 'Operacion', 4, 1),
(410509, 'Entrenamiento y capacitaciones', 'Operacion', 4, 1),
(410510, 'Papeleria y Utiles', 'Operacion', 4, 1),
(410511, 'Energia electrica', 'Operacion', 4, 1),
(410512, 'Agua potable', 'Operacion', 4, 1),
(410513, 'Telefono', 'Operacion', 4, 1),
(410514, 'Alquileres', 'Operacion', 4, 1),
(410515, 'Mercadeo, publicidad y propaganda', 'Operacion', 4, 1),
(410516, 'Seguros', 'Operacion', 4, 1),
(410517, 'Mantenimiento', 'Operacion', 4, 1),
(410518, 'Depreciasiones', 'Operacion', 4, 1),
(410519, 'Combustible y lubricantes', 'Operacion', 4, 1),
(410520, 'Fletes y acarreos', 'Operacion', 4, 1),
(410521, 'Atenciones a clientes', 'Operacion', 4, 1),
(410522, 'Atenciones al personal', 'Operacion', 4, 1),
(410523, 'Gastos de presentacion', 'Operacion', 4, 1),
(410524, 'Viaticos', 'Operacion', 4, 1),
(410525, 'Vigilancia y seguridad', 'Operacion', 4, 1),
(410526, 'Cuentas incobrables', 'Operacion', 4, 1),
(410527, 'Amortizacion intangibles', 'Operacion', 4, 1),
(410528, 'Material de empaque', 'Operacion', 4, 1),
(410529, 'Honorarios', 'Operacion', 4, 1),
(410530, 'Otros', 'Operacion', 4, 1),
(410601, 'Gastos de organizacion e instalacion', 'Administracion', 4, 1),
(410602, 'Sueldos y salarios', 'Administracion', 4, 1),
(410603, 'Horas extras', 'Administracion', 4, 1),
(410604, 'Bonificaciones', 'Administracion', 4, 1),
(410605, 'ISSS e Insaford cuota patronal', 'Administracion', 4, 1),
(410606, 'Pensiones cuota patronal', 'Administracion', 4, 1),
(410607, 'Vacaciones', 'Administracion', 4, 1),
(410608, 'Aguinaldos', 'Administracion', 4, 1),
(410609, 'Indemnizaciones', 'Administracion', 4, 1),
(410610, 'Honorarios profesionales', 'Administracion', 4, 1),
(410611, 'Entrenamiento y capacitaciones', 'Administracion', 4, 1),
(410612, 'Papeleria y Utiles', 'Administracion', 4, 1),
(410613, 'Energia electrica', 'Administracion', 4, 1),
(410614, 'Agua potable', 'Administracion', 4, 1),
(410615, 'Telefono', 'Administracion', 4, 1),
(410616, 'Matriculas', 'Administracion', 4, 1),
(410617, 'Alquileres', 'Administracion', 4, 1),
(410618, 'Seguros', 'Administracion', 4, 1),
(410619, 'Mantenimiento', 'Administracion', 4, 1),
(410620, 'Depreciasiones', 'Administracion', 4, 1),
(410621, 'Combustible y lubricantes', 'Administracion', 4, 1),
(410622, 'Atenciones al personal', 'Administracion', 4, 1),
(410623, 'Gastos de presentacion', 'Administracion', 4, 1),
(410624, 'Viaticos', 'Administracion', 4, 1),
(410625, 'Impuestos municipales', 'Administracion', 4, 1),
(410626, 'Cuotas y suscripciones', 'Administracion', 4, 1),
(410627, 'Vigilancia y seguridad', 'Administracion', 4, 1),
(410628, 'Donaciones', 'Administracion', 4, 1),
(410629, 'Otros', 'Administracion', 4, 1),
(410701, 'Intereses', 'Financieros', 4, 1),
(410702, 'Comisiones', 'Financieros', 4, 1),
(410703, 'Diferencias en cambios de moneda extranjera', 'Financieros', 4, 1),
(410704, 'Faltante en caja', 'Financieros', 4, 1),
(410705, 'Perdida en venta de activo fijo', 'Financieros', 4, 1),
(410706, 'Descuento por pronto pago', 'Financieros', 4, 1),
(510101, 'Al contado', 'Operacion', 5, 1),
(510102, 'Al credito', 'Operacion', 5, 1),
(510401, 'Intereses ganados', 'Operacion', 5, 1),
(510402, 'Diferencias en cambios de moneda extranjera', 'Operacion', 5, 1),
(510403, 'Sobrantes de caja', 'Operacion', 5, 1),
(510404, 'Ganancia en venta de activos fijos', 'Operacion', 5, 1),
(510405, 'Descuento por pronto pago', 'Operacion', 5, 1),
(11030101, 'Banco Citi', 'Corriente', 1, 1),
(11030102, 'Banco Agricola', 'Corriente', 1, 1),
(11030103, 'Banco HSBC', 'Corriente', 1, 1),
(11030201, 'Banco Citi', 'Corriente', 1, 1),
(11030202, 'Banco Agricola', 'Corriente', 1, 1),
(11030203, 'Banco HSBC', 'Corriente', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_libro_diario`
--

CREATE TABLE IF NOT EXISTS `detalle_libro_diario` (
  `id_movimiento` int(11) NOT NULL,
  `cuenta` int(11) NOT NULL,
  `deber` decimal(12,2) DEFAULT NULL,
  `haber` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_diario`
--

CREATE TABLE IF NOT EXISTS `libro_diario` (
`id_movimiento` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `mes` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `partida` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuenta`
--

CREATE TABLE IF NOT EXISTS `tipo_cuenta` (
`id_tipo_cuenta` int(11) NOT NULL,
  `nombre_tipo_cuenta` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tipo_cuenta`
--

INSERT INTO `tipo_cuenta` (`id_tipo_cuenta`, `nombre_tipo_cuenta`) VALUES
(1, 'Activo'),
(2, 'Pasivo'),
(3, 'Capital'),
(4, 'Costos y Gastos'),
(5, 'Ingresos'),
(6, 'Cuenta de Cierre');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
 ADD PRIMARY KEY (`codigo_mayor`), ADD UNIQUE KEY `codigo_mayor` (`codigo_mayor`), ADD KEY `tipo_cuenta` (`tipo_cuenta`);

--
-- Indices de la tabla `detalle_libro_diario`
--
ALTER TABLE `detalle_libro_diario`
 ADD KEY `id_movimiento` (`id_movimiento`), ADD KEY `cuenta` (`cuenta`);

--
-- Indices de la tabla `libro_diario`
--
ALTER TABLE `libro_diario`
 ADD PRIMARY KEY (`id_movimiento`), ADD UNIQUE KEY `id_movimiento` (`id_movimiento`);

--
-- Indices de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
 ADD PRIMARY KEY (`id_tipo_cuenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libro_diario`
--
ALTER TABLE `libro_diario`
MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
MODIFY `id_tipo_cuenta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
ADD CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`tipo_cuenta`) REFERENCES `tipo_cuenta` (`id_tipo_cuenta`) ON DELETE SET NULL;

--
-- Filtros para la tabla `detalle_libro_diario`
--
ALTER TABLE `detalle_libro_diario`
ADD CONSTRAINT `detalle_libro_diario_ibfk_1` FOREIGN KEY (`id_movimiento`) REFERENCES `libro_diario` (`id_movimiento`) ON DELETE CASCADE,
ADD CONSTRAINT `detalle_libro_diario_ibfk_2` FOREIGN KEY (`cuenta`) REFERENCES `cuenta` (`codigo_mayor`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
