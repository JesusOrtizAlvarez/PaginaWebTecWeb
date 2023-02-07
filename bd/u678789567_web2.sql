-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-12-2021 a las 10:26:17
-- Versión del servidor: 10.5.12-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u678789567_web2`
--
CREATE DATABASE IF NOT EXISTS `u678789567_web2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `u678789567_web2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `Productos_idProductos` int(11) NOT NULL,
  `pedido_idpedidos` int(11) NOT NULL,
  `numUnidades` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategorias` int(11) NOT NULL,
  `nombreCategoria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategorias`, `nombreCategoria`) VALUES
(1, 'Piezas de motor'),
(2, 'Filtros y aceite'),
(3, 'Dirección - Suspensión - Tren'),
(4, 'Frenado'),
(5, 'Ópticas / Faros / Bombillas'),
(6, 'Arranque y carga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `email`, `comment`) VALUES
(10, 'vaf215@inlumine.ual.es', 'Entrega rápida y producto de gran calidad.\r\nMuy recomendable '),
(11, 'joselu69@gmail.com', 'Rápido y el mejor precio que encontré con diferencia'),
(12, 'pepemarmoles@gmail.com', 'Servicio muy correcto y gran calidad de los productos. \r\nVolveré a comprar sin duda'),
(14, 'pacopo13@gmail.com', 'Muy contento con el trato recibido, personal muy profesional.'),
(15, 'marsobia24@gmail.com', 'Muy contenta con el trato recibido'),
(22, 'probando@gmail.com', 'Probando a subir un comentario '),
(487, 'pepicoeldelospalotes@gmail.com', ' hola muy buenas, super contento con el servicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta`
--

CREATE TABLE `consulta` (
  `idConsulta` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consulta` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `consulta`
--

INSERT INTO `consulta` (`idConsulta`, `nombre`, `correo`, `consulta`) VALUES
(1, 'jesus', 'jesuscolle@gmail.com', 'hola q haces'),
(18, 'Jesus Ortiz Alvarez', 'jose@gmail.com', 'Pagina muy chula\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `idDireccion` int(11) NOT NULL,
  `calleDireccion` varchar(45) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `codigoPostal` int(11) DEFAULT NULL,
  `ciudadDireccion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`idDireccion`, `calleDireccion`, `numero`, `codigoPostal`, `ciudadDireccion`) VALUES
(1, 'Calle Calzada de Castro', 42, 4006, 'almeria'),
(2, 'Calle Cabo de Gata', 13, 4150, 'almeria'),
(3, 'Calle Gloria', 10, 4008, 'almeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial de compras`
--

CREATE TABLE `historial de compras` (
  `usuario_persona_idpersona` int(11) DEFAULT NULL,
  `pedido_idPedido` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletter`
--

CREATE TABLE `newsletter` (
  `idNewsletter` int(11) NOT NULL,
  `correo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `newsletter`
--

INSERT INTO `newsletter` (`idNewsletter`, `correo`) VALUES
(1, 'jesus@gmail.com'),
(2, 'pepa'),
(3, 'ramon@gmail.com'),
(4, 'jesus@gmail.com'),
(5, 'jesus@gmail.com'),
(6, 'jesus@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedidos` int(11) NOT NULL,
  `fechaPedido` date DEFAULT NULL,
  `importeTotal` int(11) DEFAULT NULL,
  `pagado` tinyint(4) DEFAULT NULL,
  `direccion_iddireccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProductos` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `referencias` text DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `fabricante` text DEFAULT NULL,
  `imagen` varchar(2000) DEFAULT NULL,
  `subCategoria_idSubCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProductos`, `nombre`, `precio`, `descripcion`, `referencias`, `marca`, `fabricante`, `imagen`, `subCategoria_idSubCategoria`) VALUES
(1, 'GATES - KP15416XS', 95, 'Hay que saber: Incluido:Correa de distribuciónIncluido: Polea tensora, correa distribuciónIncluido:Bomba de aguaReferencia de las herramientas recomendadas:GAT4386Vendido con:Correa de distribución - 5416XSGama Fabricante:PowerGrip®Número de dientes:143Color:NegroMaterial:Fibra de vidrio, Caucho hidrógeno nitrilo butadienoAncho:26 mmLongitud:1144 mmDivisión dientes:8 mmCorrea de distribución - 5417XSGama Fabricante:PowerGrip®Número de dientes:68Color:NegroMaterial:Fibra de vidrio, Caucho hidrógeno nitrilo butadienoAncho:23 mmLongitud:544 mmDivisión dientes:8 mmPolea tensora, correa distribución - T41169Gama Fabricante:PowerGrip®Diámetro exterior:55 mmAncho:32 mmSuperficie:LisoBomba de agua', '', 'GATES', 'GATES', 'img/GATES-KP15416XS.jpg', 1),
(2, 'SKF - VKMC 02540', 238, 'Hay que saber:\r\nIncluido:\r\nPolea inversión/guía, correa distribución\r\nIncluido:\r\nCorrea de distribución\r\nIncluido:\r\nBomba de agua\r\nIncluido:\r\nPolea tensora, correa distribución\r\nVendido con:\r\nPolea inversión/guía, correa distribución - VKM 22540\r\nAncho:\r\n34 mm\r\nDiámetro:\r\n68 mm\r\nKit de distribución - VKMA 02540\r\nCorreas:\r\nCon perfil de dientes trpezoidal\r\nAncho de cinta:\r\n18 mm\r\nCorrea de distribución\r\nDent, quantité:\r\n185\r\nBomba de agua - VKPC 82540\r\nModelo bomba agua:\r\nPara accionamiento de correa poli V\r\nPolea tensora, correa distribución - VKM 12541\r\nAncho:\r\n31 mm\r\nDiámetro:\r\n60,25 mm\r\nAccionamiento rodillo tensor:\r\nAutomático\r\nBomba de agua', 'Otras referencias del producto:\r\n\r\nSKF : VKMA 02540, VKPC 82540\r\nEquivalente a estas referencias constructor:\r\n\r\nALFA ROMEO : 55198357, 60813203, 60603056, 55198358, 55192899, 55191536, 60674528, 60813311, 60668487, 60616799, 60813312, 55192898\r\nLANCIA : 60813203, 60813311, 60813312, 60603056, 60674528, 60616799\r\nEquivalente a estas referencias fabricante:\r\n\r\nHEPU : PK10290', 'SKF', 'SKF', 'img/SKF - VKMC 02540.jpg', 1),
(3, 'GATES - KP25612XS-2', 223, 'Hay que saber:\r\nIncluido:\r\nCorrea de distribución\r\nIncluido:\r\nPolea tensora, correa distribución\r\nIncluido:\r\nPolea inversión/guía, correa distribución\r\nIncluido:\r\nBomba de agua\r\nReferencia de las herramientas recomendadas:\r\nGAT0001\r\nVendido con:\r\nCorrea de distribución - 5612XS\r\nGama Fabricante:\r\nPowerGrip®\r\nNúmero de dientes:\r\n281\r\nColor:\r\nNegro\r\nMaterial:\r\nFibra de vidrio, Caucho hidrógeno nitrilo butadieno\r\nAncho:\r\n30 mm\r\nLongitud:\r\n2248 mm\r\nDivisión dientes:\r\n8 mm\r\nPolea tensora, correa distribución - T43137\r\nGama Fabricante:\r\nPowerGrip®\r\nDiámetro exterior:\r\n60 mm\r\nAncho:\r\n34 mm\r\nSuperficie:\r\nLiso\r\nPolea inversión/guía, correa distribución - T42039\r\nGama Fabricante:\r\nPowerGrip®\r\nMaterial:\r\nMetal\r\nDiámetro exterior:\r\n60 mm\r\nDiám. interior:\r\n10,5 mm\r\nAncho:\r\n35 mm\r\nSuperficie:\r\nLiso\r\nPolea inversión/guía, correa distribución - T42024\r\nGama Fabricante:\r\nPowerGrip®\r\nMaterial:\r\nMetal\r\nDiámetro exterior:\r\n60 mm\r\nDiám. interior:\r\n10,5 mm\r\nAncho:\r\n35 mm\r\nSuperficie:\r\nLiso\r\nBomba de agua', 'Otras referencias del producto:\r\n\r\nGATES : 5612XS, GAT0001, T41239, T42024, T42039, T43137, WP0114\r\nEquivalente a estas referencias fabricante:\r\n\r\nSKF : VKMC 98115-4', 'GATES', 'GATES', 'img/GATES - KP25612XS-2.jpg', 1),
(4, 'VALEO - 614532', 113, 'Hay que saber:\r\nIncluido:\r\nBomba de agua\r\nIncluido:\r\nRodillo enrollador de correa distribución\r\nIncluido:\r\nRodillo tensor de correa distribución\r\nCant. correas:\r\n1\r\nNúmero de poleas:\r\n1\r\nAncho 1:\r\n25,4 mm\r\nVendido con:\r\nCarcasa, termostato\r\nBomba de agua - 506719\r\nPeso:\r\n0,86 kg\r\nCantidad de dientes:\r\n19\r\nPolea, bomba de agua\r\nBomba de agua\r\n', 'Equivalente a estas referencias constructor:\r\n\r\nCITROËN : 1609524480\r\nFIAT : 71771588\r\nLANCIA : 71771588\r\nPEUGEOT : 1609524480\r\nEquivalente a estas referencias fabricante:\r\n\r\nAIRTEX : WPK169003, WPK-169003\r\nDAYCO : KTBWP4920', 'VALEO', 'VALEO', 'img/VALEO - 614532.jpg', 1),
(5, 'QUINTON HAZELL - QTH943K', 32, 'Hay que saber:\r\nTemperatura de apertura:\r\n88 °C\r\nTipo de cárter/carcasa:\r\nCaja de plástico', 'Equivalente a estas referencias constructor:\r\n\r\nALFAROME/FIAT/LANCI : 9659248080\r\nCITROËN/PEUGEOT : 1336 Z3\r\nFORD : 6C1Q-8A586-AC, 1372334\r\nEquivalente a estas referencias fabricante:\r\n\r\nTRICLO : 468735', 'QUINTON HAZELL', 'QUINTON HAZELL', 'img/QUINTON HAZELL - QTH943K.jpg', 2),
(6, 'VALEO - 819884', 12, 'Hay que saber:\r\nTemperatura de apertura:\r\n81 °C\r\nTubo Ø:\r\n54 mm\r\nPaís de producción:\r\nFrancia', 'Equivalente a estas referencias constructor:\r\n\r\nMITSUBISHI : 15440985, 273052, 273952, 1544098\r\nEquivalente a estas referencias fabricante:\r\n\r\nBEHR HELLA SERVICE : 114581\r\nCALORSTAT by Vernet : TH1515.81J, TH151581J, 151581J\r\nDELPHI : TMS1213\r\nFACET : 78217', 'VALEO', 'VALEO', 'img/VALEO - 819884.jpg', 2),
(7, 'GATES - TH20175G1', 57, 'Hay que saber:\r\nTemperatura de apertura:\r\n75 °C\r\nTipo de cárter/carcasa:\r\nCon carcasa (cárter)', 'Equivalente a estas referencias constructor:\r\n\r\nFIAT : 46432896\r\nSTANDARD AUTOMOBILE : 75656\r\nEquivalente a estas referencias fabricante:\r\n\r\nBEHR : C.719.75, TI 106 75, 6.455.75\r\nBGA : CT5026\r\nCALORSTAT by Vernet : 6555.75J, 6555.75, TH6555.75J\r\nFACET : 7.8158, 580 158, 1.880.158\r\nFAE : 5340575\r\nFIRST LINE : FTK227, FTS359.75\r\nINTERMOTOR : 75656\r\nMAHLE : 6.455.75, C.719.75, TI 106 75\r\nQUINTON HAZELL : QTH545K\r\nTRISCAN : 8620 16975\r\nVALEO : 820451', 'GATES', 'GATES', 'img/GATES - TH20175G1.jpg', 2),
(8, 'GATES - TH06582G1', 46, 'Hay que saber:\r\nTemperatura de apertura:\r\n82 °C\r\nTipo de cárter/carcasa:\r\nSin carcasa (cárter)', 'Equivalente a estas referencias constructor:\r\n\r\nBMW : 11531729841, 11531729720\r\nEquivalente a estas referencias fabricante:\r\n\r\nBEHR : 2.396.85, TX 36 80D, 2.396.80.346, TX 36 85D, 2.396.80, 2.396.85.346\r\nBGA : CT5112\r\nBorgWarner (Wahler) : 4516.85D, 4516.85\r\nCALORSTAT by Vernet : 6497.85, TH6497.85J, 6497.85J\r\nFAE : 5342480\r\nFEBI BILSTEIN : 26311\r\nFIRST LINE : FTS325.85, FTS260.85, FTS213.85\r\nMAHLE : TX 36 85D, 2.396.85.346, 2.396.80, 2.396.85, 2.396.80.346, TX 36 80D\r\nMOTORAD : 537-85, 288-82\r\nQUINTON HAZELL : QTH424, QTH511K\r\nSWAG : 20 92 6311\r\nTRISCAN : 8620 9785\r\nVALEO : 820423', 'GATES', 'GATES', 'img/GATES - TH06582G1.jpg', 2),
(9, 'METZGER - 0870157', 267, 'Hay que saber:\r\nEstado de la pieza:\r\nReacondicionada\r\nCompletamente reacondicionado:\r\nSi\r\nPreparación del combustible:\r\nCommon Rail (CR)\r\nNº art. de accesorio recomendado:\r\n0873012, 2324096\r\nGarantía:\r\n2 años de garantía\r\nVendido sin:\r\nJunta', 'Equivalente a estas referencias constructor:\r\n\r\nGENERAL MOTORS : 25183186, 25195089\r\nOPEL : 48 02 157\r\nEquivalente a estas referencias fabricante:\r\n\r\nDELPHI : 28264951-DNR, 28264951\r\nWILMINK GROUP : WG1769778', 'METZGER', 'METZGER', 'img/METZGER - 0870157.jpg', 3),
(10, 'BOSCH - 0 986 435 402', 217, 'Hay que saber:\r\nEstado de la pieza:\r\nReacondicionada\r\nCon pieza de intercambio:\r\nSi\r\nPreparación del combustible:\r\nCommon Rail (CR)\r\nVendido sin:\r\nJunta', 'Otras referencias del producto:\r\n\r\nBOSCH : BX-CRI3\r\nEquivalente a estas referencias constructor:\r\n\r\nCHRYSLER : KRX042029AA, 68042 029AA\r\nDODGE : 68042029AA\r\nJEEP : 68042029AA\r\nVM : 15 06 2058F\r\nEquivalente a estas referencias fabricante:\r\n\r\nBOSCH : 0 445 115 067, 0 445 115 049', 'BOSCH', 'BOSCH', 'img/BOSCH - 0 986 435 402.jpg', 3),
(11, 'BOSCH - 0 986 435 122', 172, 'Hay que saber:\r\nEstado de la pieza:\r\nReacondicionada\r\nCon pieza de intercambio:\r\nSi\r\nPreparación del combustible:\r\nCommon Rail (CR)\r\nVendido sin:\r\nJunta', 'Otras referencias del producto:\r\n\r\nBOSCH : BX-CRI2\r\nEquivalente a estas referencias constructor:\r\n\r\nCITROËN : 96 596 666, 1980 H2\r\nCITROËN/PEUGEOT : 96 556 06680, 16 098 49280\r\nFORD : 1347283, 1566431, RM3M5Q 9F593 HD, 3M5Q 9F593 HD, 1477146, 3M5Q 9F593 HB\r\nMAZDA : Y605-13H50-B\r\nPEUGEOT : 96 596 666, 1980 H2\r\nSUZUKI : 15310 69K00 000, 15310-69K00\r\nEquivalente a estas referencias fabricante:\r\n\r\nBOSCH : 0 445 110 239', 'BOSCH ', 'BOSCH ', 'img/BOSCH - 0 986 435 122.jpg', 3),
(12, 'METZGER - 0870061', 244, 'Hay que saber:\r\nEstado de la pieza:\r\nReacondicionada\r\nCompletamente reacondicionado:\r\nSi\r\nPreparación del combustible:\r\nCommon Rail (CR)\r\nNº art. de accesorio recomendado:\r\n0873012\r\nGarantía:\r\n2 años de garantía\r\nVendido sin:\r\nJunta', 'Equivalente a estas referencias constructor:\r\n\r\nBMW : 13 53 7 790 093, 13 53 7 793 836, 7 790 092, 13 53 7 794 334\r\nEquivalente a estas referencias fabricante:\r\n\r\nBOSCH : 0 986 435 091, 0 445 110 216\r\nINTERMOTOR : DI490, 87175\r\nLAUBER : 41.0216\r\nTEAMEC : 810 111\r\nTRUCK TEQ : 08.13.016\r\nVEGE : 02164910, 02165010', 'METZGER', 'METZGER', 'img/METZGER - 0870061.jpg', 3),
(13, 'NGK - 96372', 48, 'Para vehículo con:\r\nLlave para bujía/tamaño:\r\n14 mm\r\nHay que saber:\r\nCantidad:\r\n1', 'Equivalente a estas referencias constructor:\r\n\r\nABARTH : 31 02 35\r\nALFA ROMEO : 31 02 35\r\nFERRARI : 31 02 35\r\nFIAT : 31 02 35\r\nLANCIA : 31 02 35\r\nMASERATI : 31 02 35', 'NGK', 'NGK', 'img/NGK - 96372.jpg', 4),
(14, 'BERU - Z45', 6, 'Para vehículo con:\r\nLlave para bujía/tamaño:\r\n16 mm\r\nHay que saber:\r\nCantidad:\r\n1\r\nPar de apriete:\r\nHasta 30 Nm, A partir de 20 Nm\r\nCodo:\r\n14 FR-5 DTU\r\nSeparación de electrodos:\r\n0,7 mm\r\nTécnica conexión:\r\nSAE/M4', 'Otras referencias del producto:\r\n\r\nBERU : 0002345704, 14 FR-5 DTU, Z 45\r\nEquivalente a estas referencias constructor:\r\n\r\nPORSCHE : 999 170 183 90, 999 170 182 90\r\nRENAULT : 77 00 260 637\r\nEquivalente a estas referencias fabricante:\r\n\r\nACDelco : R 2603\r\nBOSCH : 0 242 245 539, FR 5 DTC\r\nDENSO : K22PBR-S\r\nEYQUEM : RFC 82 LS 3\r\nNGK : BCPR7ET, 2164, BCPR 7 ET', 'BERU', 'BERU', 'img/BERU - Z45.jpg', 4),
(15, 'BOSCH - 0 242 145 552', 16, 'Para vehículo con:\r\nLlave para bujía/tamaño:\r\n14 mm\r\nHay que saber:\r\nCantidad:\r\n1\r\nPar de apriete:\r\n23 Nm\r\nSeparación de electrodos:\r\n0,7 mm\r\nTécnica conexión:\r\nNapf\r\nNúmero de polos:\r\n1', 'Otras referencias del producto:\r\n\r\nBOSCH : ZR 5 NPP 332 SBP\r\nEquivalente a estas referencias constructor:\r\n\r\nPORSCHE : 999 170 154 90\r\nVW : 999 170 154 90, 0PB 905 612\r\nEquivalente a estas referencias fabricante:\r\n\r\nBOSCH : ZR5NPP332SPB, ZR5NPP332SBP', 'BOSCH', 'BOSCH', 'img/BOSCH - 0 242 145 552.jpg', 4),
(16, 'MANN-FILTER - W 940/21', 6, 'Hay que saber:\r\nTipo:\r\nAtornillado\r\nReferencia de las herramientas recomendadas:\r\nLS 9\r\nDiámetro exterior:\r\n71 / 93 mm\r\nDiám. interior:\r\n62 mm\r\nAltura:\r\n142 mm', 'Equivalente a estas referencias constructor:\r\n\r\nFIAT : 4506839, 4121392, 4523873, 1354823, 4119015\r\nFORD : A 720 X 6714 CA, 5013 148, 5009 232\r\nGENERAL MOTORS : 93156390, 7984655, 9975153, 93156952, 93156304\r\nOPEL : 650362, VOF14, 3448992, 650372, 3448991\r\nVAUXHALL : 93156304, 93156952, 7984655, VOF14\r\nEquivalente a estas referencias fabricante:\r\n\r\nACDelco : X 101, X 4089 E, X 14\r\nALCO FILTER : SP-916\r\nARMAFILT : O-93/140.6\r\nBALDWIN : B118\r\nBOMAG : 05821206\r\nBOSCH : 0 451 203 005, 9 457 282 230, 0 451 203 176-30N, 0 451 203 176\r\nCHAMP : LS 190\r\nCHAMPION : C 153\r\nCLEAN FILTERS : DO 225/C\r\nCOOPERS : Z 81\r\nCROSLAND : 630\r\nCoopersFiaam : FT4702A, FA4403, FT4765\r\nDELPHI : FX0017\r\nDONALDSON : P557780\r\nELOFIC : EXL-228\r\nFIL FILTER : ZP 3014 A\r\nFILTRON : OP 531\r\nFLEETGUARD : LF3324\r\nFRAD : 22.39.08/110\r\nFRAM : PH4825\r\nGIF : GL 515\r\nHENGST FILTER : H17W08\r\nINGERSOLL-RAND : 54416417\r\nKNECHT : FO 371/10, AW 78\r\nLAUTRETTE : ELH 4141\r\nMAHLE FILTER : OC 33\r\nMISFAT : Z102C, Z211\r\nMONARK : 30 758 005\r\nMotorcraft : EFL 077\r\nP.B.R. : BC-1336, BC-1160\r\nPURFLUX : LS415\r\nPUROLATOR : L 37031, L 30119, L 37225, L 38258, PC 225, L 39001\r\nSCT - MANNOL : SM 135\r\nSOFIMA : S 3103 R\r\nTECNOCAR : R65\r\nTEHO : 4071, OK 71\r\nTJ FILTERS : FB 2093\r\nUFI : 23.102.03\r\nWOODGATE : WGL3311', 'MANN-FILTER', 'MANN-FILTER', 'img/MANN-FILTER - W 940 21.jpg', 5),
(17, 'UFI FILTERS SPA - 23.124.00', 7, 'Hay que saber:\r\nTipo:\r\nAtornillado\r\nDiámetro exterior:\r\n72 / 108 / 110 mm\r\nDiám. interior:\r\n62 mm\r\nAltura:\r\n113 mm\r\nPresión de apertura de la válvula de derivación:\r\n1,2 bar', 'Equivalente a estas referencias constructor:\r\n\r\nALFA ROMEO : 60521128, 102102\r\nFIAT : 4181058, 4236942, 4434793, 46805829, 71736164, 4371582, 4290372, 0060521128, 4209394, 4363010, 4267978, 4135559, 4189485, 4356575, 43944630, 4176610, 4243301, 4209314, 60521128, 4381608, 4434794\r\nFORD : CONN-B951-B, CONN-6708-A, B9NN-6714-A, C5NN-6714-A, C3NN-6714-A, C5NN-6714-B, B8NN-6714-A, 1814346, D9NN-6714-DA, A700X-6714-MA, C7NN-6714-A, C9NN-6714-A\r\nMASSEY FERGUSON : 1015511M91, 1015511M91\r\nZETOR : 04415540, 4415540, 04415540\r\nEquivalente a estas referencias fabricante:\r\n\r\nACDelco : PF6, X66\r\nALCO FILTER : SP906\r\nBECK/ARNLEY : 0418889, 418889\r\nBOSCH : 9450732009\r\nCLEAN FILTERS : DO224\r\nCOOPERS : AZL130, LSF5102\r\nCROSLAND FILTERS : 2043\r\nCoopersFiaam : FT4781, FT4627, FT4803\r\nDONALDSON : P50-2077\r\nDONIT FILTER : 43.10.18\r\nFISPA : FOE012, FOE036\r\nFRAM : PH2807-1, PH7, PH2853\r\nKNECHT : OC133, OC17\r\nMANITOU : 136163\r\nMANN-FILTER : W11007, W1130\r\nMECAFILTER : ELH4124, ELH4069\r\nMISFAT : Z124\r\nMONARK : 30758070, 030758070\r\nMOTAQUIP : VFL175, VFL150\r\nMotorcraft : EFL78, EFL371\r\nPURFLUX : LS775\r\nSOFIMA : S 4600 R\r\nSPERRY NEW HOLLAND : 81814346\r\nSogefiPro : FT4627, FT4781, FT4803\r\nTECNOCAR : R64\r\nUNICO FILTER : LI10115', 'UFI FILTERS SPA', 'UFI FILTERS SPA', 'img/UFI FILTERS SPA - 2312400.jpg', 5),
(18, 'QUINTON HAZELL - QFL0027', 19, 'Hay que saber:\r\nTipo:\r\nAtornillado\r\nGama Fabricante:\r\nTJ Filters\r\nDiámetro exterior:\r\n138 mm\r\nAltura:\r\n92,4 mm', 'Equivalente a estas referencias constructor:\r\n\r\nGENERAL MOTORS : 9054118800123, MS054102, 905411880018\r\nNISSAN : 152086S300, 152086S3000\r\nVAG : 062115561A\r\nVW : 062115561, 062115561A, 62115561\r\nEquivalente a estas referencias fabricante:\r\n\r\nFILTRON : OP 574/2\r\nMANN-FILTER : W 1323\r\nWIX FILTERS : WL7414', 'QUINTON HAZELL', 'QUINTON HAZELL', 'img/QUINTON HAZELL - QFL0027.jpg', 5),
(19, 'PURFLUX - LS571', 8, 'Hay que saber:\r\nTipo:\r\nAtornillado\r\nDiámetro exterior:\r\n86 mm\r\nAltura:\r\n74 mm', 'Equivalente a estas referencias constructor:\r\n\r\nFORD : 5027151\r\nPEUGEOT : MLS000571, 1109G1\r\nRENAULT : 7700854776\r\nEquivalente a estas referencias fabricante:\r\n\r\nALCO (ZYPERN) : SP946\r\nBALDWIN : B307\r\nBOSCH : P3216, BOF3216, 451103216, 0451103216\r\nCHAMP : LS15\r\nCHAMPION : F103, F103/606\r\nCLEAN FILTERS : FO9410, DO832, DO920\r\nCOOPERS : Z1111\r\nCROSLAND : 7000, 2092\r\nDELPHI : FX0144\r\nFILTRON : OP565, OP643/2\r\nFRAM : PH5911, PH5230\r\nMAHLE FILTER : CV542, OC135\r\nMANN-FILTER : W914/17, W813/6\r\nMECAFILTER : ELH4156\r\nPURFLUX : LS793\r\nPUROLATOR : L17824\r\nSogefiPro : FT5409, FT5165\r\nTECNOCAR : R22\r\nTEHO : 4127\r\nUNIPART : GFE322, GFE394', 'PURFLUX ', 'PURFLUX ', 'img/PURFLUX - LS571.jpg', 5),
(20, 'TOTAL - QUARTZ INEO FIRST 0W-30 - ref. 214178', 48, 'Hay que saber:\r\nIndice de viscosidad:\r\n0W30\r\nCapacidad (litros):\r\n5 L\r\nGama OEM:\r\nQUARTZ INEO FIRST 0W-30\r\nEspecificación:\r\nACEA C1/C2', 'Equivalente a estas referencias constructor:\r\n\r\nPEUGEOT : PSA B71 2312', 'TOTAL', 'TOTAL', 'img/TOTAL - QUARTZ INEO FIRST 0W-30.jpg', 6),
(21, 'ELF - EVOLUTION FULLTECH C4 5W30 - ref. 213919', 48, 'Hay que saber:\r\nIndice de viscosidad:\r\n5W30\r\nCapacidad (litros):\r\n5 L\r\nGama OEM:\r\nEVOLUTION FULLTECH C4 5W30\r\nPara motorización:\r\nDiesel\r\nEspecificación:\r\nACEA C4', 'Equivalente a estas referencias constructor:\r\n\r\nRENAULT : RN 0720', 'ELF', 'ELF', 'img/ELF.jpg', 6),
(22, 'MOBIL - Mobil 1 Extended Life 10W60 - ref. 152109', 57, 'Hay que saber:\r\nIndice de viscosidad:\r\n10W60\r\nCapacidad (litros):\r\n5 L\r\nGama OEM:\r\nMobil 1 Extended Life 10W60\r\nPara motorización:\r\nGasolina y Diesel\r\nEspecificación:\r\nVW 501 01 / 505 00, API SN / SM / SL, CF, ACEA A3/B3, A3/B4, MB-Approval 229.1', 'Otras referencias del producto:\r\n\r\nMOBIL : 10W60\r\nEquivalente a estas referencias constructor:\r\n\r\nAUDI : VW 505 00, VW 501 01\r\nMERCEDES-BENZ : MB 229.1\r\nSEAT : VW 501 01, VW 505 00\r\nSKODA : VW 501 01, VW 505 00\r\nVW : VW 505 00, VW 501 01', 'MOBIL', 'MOBIL', 'img/MOBIL.jpg', 6),
(23, 'MANN-FILTER - LS 11', 22, 'Hay que saber:\r\nDiám. interior:\r\n108 mm\r\nCantidad de aristas:\r\n15\r\nPara sistema:\r\nFiltro de combustible', 'Equivalente a estas referencias constructor:\r\n\r\nRENAULT TRUCKS : 50 21 133 848\r\nEquivalente a estas referencias fabricante:\r\n\r\nBOSCH : 1 450 516 006\r\nPUROLATOR : SK 22', 'MANN-FILTER', 'MANN-FILTER', 'img/MANN-FILTER - LS 11.jpg', 7),
(24, 'CLAS - HU 2234', 31, 'Hay que saber:\r\nPara el sistema:\r\nFiltro combustible\r\nCantidad de caras:\r\n6\r\nDiámetro:\r\n96\r\nMarca:\r\nRenault\r\nPara sistema:\r\nFiltro de combustible', 'Huellas dactilares: Hembra hexagonal\r\n\r\nModelos:\r\n\r\nRenault : Clio, Mégane, Modus, Kangoo, Scenic...\r\n\r\nMotores: 1.5-1.9-2.2 DCI', 'CLAS', 'CLAS', 'img/CLAS.jpg', 7),
(25, 'MANN-FILTER - LS 7/2', 22, 'Hay que saber:\r\nDiám. interior:\r\n76 mm\r\nNúmero de canales:\r\n6\r\nPara sistema:\r\nFiltro de combustible', 'Equivalente a estas referencias fabricante:\r\n\r\nBOSCH : 1 450 516 005\r\nPURFLUX : F76L, F76C, OUT76C', 'MANN-FILTER', 'MANN-FILTER', 'img/MANN-FILTER - LS 72.jpg', 7),
(26, 'FEBI BILSTEIN - 100513', 4, 'Hay que saber:\r\nColor:\r\nNegro\r\nMaterial:\r\nCaucho poliacrílico (ACM)', 'Equivalente a estas referencias constructor:\r\n\r\nBMW : 11 42 1 719 855\r\nEquivalente a estas referencias fabricante:\r\n\r\nAJUSA : 00579900\r\nBBR Automotive : 003-30-11589\r\nELRING : 816.965\r\nELWIS ROYAL : 7015497\r\nGOETZE : 50-026701-00\r\nOSSCA : 20522\r\nSTELLOX : 11-25407-SX\r\nSWAG : 20 10 0513\r\nTOPRAN : 503 031\r\nTRUCKTEC AUTOMOTIVE : 08.10.132\r\nWILMINK GROUP : WG1724228, WG1195216, WG1737410, WG1751113', 'FEBI BILSTEIN', 'FEBI BILSTEIN', 'img/FEBI BILSTEIN - 100513.jpg', 8),
(27, 'ELRING - 473.830', 10, 'Hay que saber:\r\nCantidad:\r\n1', 'Equivalente a estas referencias constructor:\r\n\r\nCITROËN : 16 135 719 80, 1103.P9\r\nDS : 1103.P9, 16 135 719 80\r\nMINI : 11 42 8 643 758\r\nOPEL : 3557940\r\nPEUGEOT : 16 135 719 80, 1103.P9', 'ELRING', 'ELRING', 'img/ELRING - 473830.jpg', 8),
(28, 'AJUSA - 01059300', 6, 'Hay que saber:\r\nLongitud:\r\n66 mm\r\nPeso [g]:\r\n4,44\r\nAncho:\r\n66 mm', 'Equivalente a estas referencias constructor:\r\n\r\nCITROËN : 1103.J7', 'AJUSA', 'AJUSA', 'img/AJUSA.jpg', 8),
(29, 'ELRING - 235.920', 13, 'Hay que saber:\r\nCantidad:\r\n1', 'Equivalente a estas referencias constructor:\r\n\r\nAUDI : 03L 198 441\r\nCUPRA : 03L 198 441\r\nSEAT : 03L 198 441\r\nSKODA : 03L 198 441\r\nVW : 03L 198 441', 'ELRING', 'ELRING', 'img/ELRING - 235920.jpg', 8),
(30, 'BILSTEIN - - ref. 46-258205', 1073, 'Hay que saber:\r\nContiene:\r\n1 paquete de 4 artículos\r\nVersión:\r\nSport\r\nCantidad:\r\n4\r\nSistema de amortiguadores:\r\nMonotubo\r\nVendido con:\r\nAmortiguador\r\nTecnología:\r\nGas', 'Equivalente a estas referencias fabricante:\r\n\r\nEIBACH : E90-20-031-11-22', 'BILSTEIN', 'BILSTEIN', 'img/BILSTEIN - - ref. 46-258205.jpg', 9),
(31, 'METZGER - 123210323', 444, 'Hay que saber:\r\nGama Fabricante:\r\nST châssis sport\r\nTipo de registro:\r\nCon certificado TÜV (ITV)\r\nCantidad:\r\n4\r\nVendido con:\r\nAmortiguador\r\nTecnología:\r\nAceite', 'Otras referencias del producto:\r\n\r\nMETZGER : 23210323', 'METZGER', 'METZGER', 'img/METZGER - 123210323.jpg', 9),
(32, 'BILSTEIN - - ref. 46-188922', 941, 'Hay que saber:\r\nContiene:\r\n1 paquete de 4 artículos\r\nVersión:\r\nSport\r\nCantidad:\r\n4\r\nSistema de amortiguadores:\r\nMonotubo\r\nVendido con:\r\nAmortiguador\r\nTecnología:\r\nGas', 'Equivalente a estas referencias fabricante:\r\n\r\nEHRENREICH : E90-65-001-07-22\r\nEIBACH : E90-65-001-07-22', 'BILSTEIN', 'BILSTEIN', 'img/BILSTEIN - - ref. 46-188922.jpg', 9),
(33, 'BILSTEIN - - ref. 46-183095', 1043, 'Hay que saber:\r\nContiene:\r\n1 paquete de 4 artículos\r\nVersión:\r\nSport\r\nCantidad:\r\n4\r\nSistema de amortiguadores:\r\nMonotubo\r\nDiám. exterior tubo amortiguador:\r\n50 mm\r\nVendido con:\r\nAmortiguador\r\nTecnología:\r\nGas', 'Equivalente a estas referencias fabricante:\r\n\r\nEHRENREICH : E90-15-007-03-22\r\nEIBACH : E90-15-007-03-22', 'BILSTEIN', 'BILSTEIN', 'img/BILSTEIN - - ref. 46-183095.jpg', 9),
(34, 'MAPCO - 53871', 425, 'Para vehículo con:\r\nPosición:\r\nDelante, derecha, izquierda\r\nHay que saber:\r\nTipo:\r\nBrazo\r\nUnidad de cantidad:\r\nKit\r\nDirección:\r\nCon cabezas de barra de acoplamiento', 'Equivalente a estas referencias fabricante:\r\n\r\nMAPCO : 51890, 52868, 52872, 51889, 52806HPS, 52871', 'MAPCO', 'MAPCO', 'img/MAPCO - 53871.jpg', 10),
(35, 'MAPCO - 59818HPS', 210, 'Para vehículo con:\r\nPosición:\r\nDelante, derecha, izquierda\r\nHay que saber:\r\nTipo:\r\nBrazo\r\nVersión reforzada:\r\nSi\r\nUnidad de cantidad:\r\nKit', 'Equivalente a estas referencias fabricante:\r\n\r\nPEX : 12.09.088', 'MAPCO', 'MAPCO', 'img/MAPCO - 59818HPS.jpg', 10),
(36, 'MAPCO - 53759', 138, 'Para vehículo con:\r\nPosición de montaje específica:\r\nInferior\r\nPosición:\r\nDelante, derecha, izquierda\r\nHay que saber:\r\nTipo:\r\nBrazo', 'Equivalente a estas referencias constructor:\r\n\r\nFORD : 94 FB 3042CA, 6 645 155, 94 FB 3042CB, 1 054 984, 94 FB 3051CA, 94 FB 305CB, 7 152 279, 7 152 276, 1 054 985, 6 645 157\r\nEquivalente a estas referencias fabricante:\r\n\r\nMAPCO : 19756/5, 19755/5', 'MAPCO', 'MAPCO', 'img/MAPCO - 53759.jpg', 10),
(37, 'MAPCO - 53836/1', 450, 'Para vehículo con:\r\nPosición de montaje específica:\r\nInferior, superior\r\nPosición:\r\nDelante\r\nHay que saber:\r\nTipo:\r\nBrazo\r\nUnidad de cantidad:\r\nKit', 'Equivalente a estas referencias fabricante:\r\n\r\nMAPCO : 53835/1, 51882', 'MAPCO', 'MAPCO', 'img/MAPCO - 538361.jpg', 10),
(38, 'RCA France - L900AN', 130, 'Para vehículo con:\r\nPosición:\r\nDelante, derecha\r\nHay que saber:\r\nGama Fabricante:\r\nTRANSMISSION NEUVE GARANTIE 5 ANS\r\nLongitud:\r\n980 mm\r\nDentado exterior, lado de diferencial:\r\n25\r\nGarantía:\r\n5 años', 'Equivalente a estas referencias constructor:\r\n\r\nFIAT / LANCIA : 71787061, 46307521, 71787063\r\nEquivalente a estas referencias fabricante:\r\n\r\nCEVAM : 5881\r\nEAI : T58346\r\nSNRA : L2281', 'RCA France', 'RCA France', 'img/RCA France - L900AN.jpg', 11),
(39, 'SNRA - B1252', 245, 'Hay que saber:\r\nLongitud:\r\n549 mm\r\nDiámetro 1:\r\n86 mm\r\nDentado exterior, lado de diferencial:\r\n37\r\nDiámetro 2:\r\n77 mm', 'Equivalente a estas referencias constructor:\r\n\r\nBMW : 31608643373, BM290L', 'SNRA', 'SNRA', 'img/SNRA - B1252.jpg', 11),
(40, 'DA SILVA S.A.S. - 2223T', 144, 'Para vehículo con:\r\nVehículo/con ABS:\r\nNo\r\nHay que saber:\r\nGama Fabricante:\r\nDA SILVA\r\nEstado de la pieza:\r\nReacondicionada\r\nDiámetro exterior:\r\n119 mm\r\nLongitud:\r\n580 mm\r\nDiámetro de la rótula lado transmisión:\r\n82 mm\r\nDiámetro de la rótula lado rueda:\r\n98 mm', 'Equivalente a estas referencias constructor:\r\n\r\nAUDI : 1K0407454MX, 5Q0407452X, 5K0407452BX, 5K0407272H, 5Q0407762GX, 5Q0407272K, 5Q0407452GX, 1K0 407 272 EL, 5Q0407272EQ, 1K0407454LV\r\nVW : 3C0407452HX, 5Q0 407 762 MX, 5Q0 407 272 BL, 5Q0 407 452 AX, 5Q0 407 272 ER, 3C0407452EX, 3C0407272L, 1K0407272JF, 3C0407272BD\r\nEquivalente a estas referencias fabricante:\r\n\r\nDEPA : 3371900', 'DA SILVA S.A.S.', 'DA SILVA S.A.S.', 'img/DA SILVA S.A.S. - 2223T.jpg', 11),
(41, 'RCA France - SU280AN', 119, 'Para vehículo con:\r\nPosición:\r\nDelante, izquierda\r\nVehículo/con ABS:\r\nSi\r\nHay que saber:\r\nGama Fabricante:\r\nTRANSMISSION NEUVE GARANTIE 5 ANS\r\nLongitud:\r\n635 mm\r\nDentado exterior, lado de diferencial:\r\n22\r\nGarantía:\r\n5 años', 'Equivalente a estas referencias constructor:\r\n\r\nSUZUKI : 4410263J30\r\nEquivalente a estas referencias fabricante:\r\n\r\nASHIKA : 62-08-831\r\nGSP : 257004\r\nINTERPARTS : OJ-0734\r\nNIPPARTS : J2828120\r\nURW : 21-07057', 'RCA France', 'RCA France', 'img/RCA France - SU280AN.jpg', 11),
(42, 'TRW - JTE1178', 26, 'Para vehículo con:\r\nPosición:\r\nDelante, derecha, izquierda\r\nHay que saber:\r\nLongitud:\r\n105 mm\r\nRosca interior [mm]:\r\nM16x1,5\r\nRosca exterior:\r\nM12x1,5\r\nMedida cónica:\r\n20 mm', 'Equivalente a estas referencias constructor:\r\n\r\nLAND ROVER : QJB500040\r\nEquivalente a estas referencias fabricante:\r\n\r\nA.B.S. : 230786\r\nASHIKA : 1110LL016\r\nBENDIX : 040588B\r\nBORG & BECK : BTR5466\r\nDELPHI : TA2452\r\nFAI AutoParts : SS2803\r\nFEBI BILSTEIN : 37800\r\nFIRST LINE : FTR5466\r\nJAPANPARTS : TIL016\r\nJAPKO : 111L016\r\nLEMFÖRDER : 3392701, 33927, 33927 01\r\nMAPCO : 51689\r\nMEYLE : 53-16 020 0008, 53160200008\r\nMONROE : L17122\r\nMOOG : LRES7043, LR-ES-7043\r\nNK : 5034002\r\nOPTIMAL : G11336, G1-1336\r\nQUINTON HAZELL : QR3634S\r\nRTS : 9101606\r\nSIDEM : 50566, 65137\r\nTALOSA : 4201379\r\nTRISCAN : 850017122\r\nVEMA : 26123', 'TRW', 'TRW', 'img/TRW - JTE1178.jpg', 12),
(43, 'MOOG - BE-ES-0705', 11, 'Para vehículo con:\r\nPosición de montaje específica:\r\nExterior\r\nPosición:\r\nDelante, derecha, izquierda\r\nHay que saber:\r\nLongitud 1:\r\n76 mm\r\nLongitud 2:\r\n22 mm\r\nForma:\r\nDerecha\r\nLong. de embalaje:\r\n13 cm\r\nEmbalaje:\r\nLata\r\nRosca 1:\r\nR 5/8X18H\r\nDiámetro 1:\r\n17,7 mm\r\nAltura del embalaje:\r\n6,5 cm\r\nAncho de embalaje:\r\n8,5 cm\r\nRosca 2:\r\nM14X1.5', 'Equivalente a estas referencias constructor:\r\n\r\nVAUXHALL : 8845298\r\nEquivalente a estas referencias fabricante:\r\n\r\nDELPHI : TA674\r\nFIRST LINE : FTR4039\r\nOCAP : 0280787\r\nQUINTON HAZELL : QR1379S\r\nRTS : 91-05701\r\nSIDEM : 16237\r\nSPIDAN : 44741', 'MOOG', 'MOOG', 'img/MOOG - BE-ES-0705.jpg', 12),
(44, 'RTS S.A. - 91-90441-010', 11, 'Para vehículo con:\r\nPosición:\r\nDelante, derecha, izquierda\r\nHay que saber:\r\nLongitud:\r\n91,5 mm\r\nRosca exterior 1:\r\nM14x1,5\r\nRosca exterior 2:\r\nM10x1,25', 'Equivalente a estas referencias constructor:\r\n\r\nDACIA : 485201091R\r\nRENAULT : 485201091R\r\nEquivalente a estas referencias fabricante:\r\n\r\nCECAUTO : 81-80441-010\r\nSERCA : 289190441010', 'RTS S.A.', 'RTS S.A.', 'img/RTS S.A. - 91-90441-010.jpg', 12),
(45, 'DELPHI - TA2380', 40, 'Hay que saber:\r\nLongitud:\r\n135 mm\r\nMedida de rosca:\r\nM14x1.5\r\nMedida cónica:\r\n13 mm\r\nAncho:\r\n40 mm\r\nAltura:\r\n80 mm', 'Equivalente a estas referencias constructor:\r\n\r\nCHRYSLER : 5274470\r\nEquivalente a estas referencias fabricante:\r\n\r\nA.B.S. : 230621\r\nAYD : A01-1021, 91CR00964\r\nFLENNOR : FL0910-B\r\nKAGER : 43-0913\r\nMONROE : L0010\r\nMOOG : ES3008RL\r\nOPTIMAL : G1-1021\r\nRTS : 91-13008\r\nSIDEM : 91030\r\nSPIDAN : 57643\r\nTRISCAN : 8500 803008', 'DELPHI', 'DELPHI', 'img/DELPHI - TA2380.jpg', 12),
(46, 'BOSCH - 0 986 424 502', 29, 'Para vehículo con:\r\nPinza de freno/montaje de origen:\r\nAte Teves\r\nHay que saber:\r\nCantidad:\r\n4\r\nGama:\r\nOrigen\r\nMaterial:\r\nMetal sinterizado\r\nEspesor:\r\n14,3 mm\r\nVendido con:\r\nJuego de 4 pastillas de freno\r\nLongitud:\r\n141,8 mm\r\nAltura:\r\n48,1 mm\r\nJuego de 4 pastillas de freno\r\nLongitud:\r\n147,3 mm\r\nAltura:\r\n50,8 mm', 'Otras referencias del producto:\r\n\r\nBOSCH : 23 394, 7569D694, 90R-010217/002, BP263, E9 90R - 02A1080/0807\r\nEquivalente a estas referencias constructor:\r\n\r\nVW : 6E0 698 151\r\nEquivalente a estas referencias fabricante:\r\n\r\nATE : 607177, 13 0460 7177 2\r\nBENDIX : 573040B\r\nBREMBO : P 85 055\r\nDELPHI : LP1675\r\nFERODO : FDB1517\r\nGIRLING : 6113752\r\nHELLA : 8DB 355 008-481\r\nICER : 181373\r\nJURID : 573040J\r\nLPR : 05P776\r\nLUCAS ELECTRICAL : GDB1375, 6113752\r\nMINTEX : MDB2057\r\nPAGID : T 1156\r\nQUINTON HAZELL : BP1224\r\nREMSA : 718.00\r\nROADHOUSE : 2718.00\r\nTEXTAR : 2339402, 23394 145 0 5\r\nTRUSTING : 3540\r\nTRW : GDB1375\r\nVALEO : 301735', 'BOSCH', 'BOSCH', 'img/BOSCH - 0 986 424 502.jpg', 13),
(47, 'Blue Print - ADA104242', 34, 'Para vehículo con:\r\nPosición:\r\nDelante\r\nHay que saber:\r\nCantidad:\r\n4\r\nGama:\r\nOrigen\r\nEspesor:\r\n18 mm\r\nLongitud:\r\n184 mm\r\nAltura:\r\n64 mm', 'Equivalente a estas referencias constructor:\r\n\r\nCADILLAC : 25910431 SK1, 89059119\r\nEquivalente a estas referencias fabricante:\r\n\r\nABE : C1Y049ABE\r\nASHUKI by Palidium : US104242\r\nASIMCO : KD6340\r\nASVA : AKD-0957\r\nFIT : FP1092\r\nNiBK : PN0400\r\nRUVILLE : D10927997\r\nSTELLOX : 000 695-SX, 000 695B-SX\r\nZEKKERT : BS-2131', 'Blue Print', 'Blue Print', 'img/Blue Print - ADA104242.jpg', 13),
(48, 'FERODO - FDB1633', 40, 'Para vehículo con:\r\nPinza de freno/montaje de origen:\r\nKelsey Hayes\r\nHay que saber:\r\nCantidad:\r\n4\r\nVentajas producto:\r\nIndicador de desgaste\r\nGama:\r\nOrigen\r\nN° tarifa aduana:\r\n87083091\r\nLong. de embalaje:\r\n16,6 cm\r\nAltura del embalaje:\r\n4,8 cm\r\nAncho de embalaje:\r\n13 cm\r\nEspesor:\r\n14,5 mm\r\nVendido con:\r\nJuego de 4 pastillas de freno\r\nLongitud:\r\n142 mm\r\nAltura:\r\n48 mm\r\nJuego de 4 pastillas de freno\r\nLongitud:\r\n147 mm\r\nAltura:\r\n50 mm', 'Otras referencias del producto:\r\n\r\nFERODO : 23394, 23395, 23824\r\nEquivalente a estas referencias constructor:\r\n\r\nAUDI : 8Z0 698 151, 8Z0698151\r\nFIAT : 8Z0698151\r\nEquivalente a estas referencias fabricante:\r\n\r\nACDelco : AC687881D\r\nAPEC braking : PAD1265\r\nATE : 13046071782, 13.0460-7178.2\r\nBENDIX : 573126B\r\nBOSCH : 0986424632, 0 986 424 632\r\nBREMBO : P 85 063, P85063\r\nDELPHI : LP1736\r\nFEBI BILSTEIN : 16620\r\nFTE : BL1693A2\r\nGIRLING : 6114745\r\nJURID : 573126J\r\nLPR : 05P972\r\nMAGNETI MARELLI : 363700201204\r\nMINTEX : MDB2146\r\nNECTO : FD7084A\r\nOPTIMAL : 71811\r\nPAGID : T1204\r\nREMSA : 0718.11\r\nROADHOUSE : 2718.11\r\nTEXTAR : 23395 14505, 2339514505T4047, 2339514505, 2339502\r\nTRW : GDB1474\r\nVALEO : 301734, 598734\r\nWOKING : P6183.11\r\nZIMMERMANN : 23395.145.2', 'FERODO', 'FERODO', 'img/FERODO - FDB1633.jpg', 13),
(49, 'BREMBO - P 50 142', 110, 'Para vehículo con:\r\nPinza de freno/montaje de origen:\r\nBrembo\r\nHay que saber:\r\nCantidad:\r\n4\r\nGama:\r\nOrigen\r\nPreparado para indicador desgaste:\r\nSi\r\nEspesor:\r\n17 mm\r\nLongitud:\r\n189 mm\r\nAltura:\r\n93 mm', 'Equivalente a estas referencias constructor:\r\n\r\nMERCEDES-BENZ : A0074207620, A0064207720, A0074208920, A0054206620, A0044208420, 0054203320, A0074204520, 0044209520, 0064206720, A0044209520, 0084203020, 0074206520, 0044207620, 0074200820, 0054208920, A0064208720, A0054203320, 0084201020, A0074202720, 0074203920, A0074206520, A0064206720, 0064208720, A0044207620, A0004204000, 0074207620, 0074204520, 0064202920, A0064202920, 0064207720, 0074205320, A0044208920, 0044208920, 0074200120, A0074205920, 0074202720, A0054201120, 0054201120, A0074205320, 0074205920, A0084203020, A0084201020, A0074200120, 0004204000, A0074203920, A0074200820, A0054208920, 0074208920, 0054206620', 'BREMBO', 'BREMBO', 'img/BREMBO - P 50 142.jpg', 13),
(50, 'BREMBO - 09.A541.11', 91, 'Hay que saber:\r\nContiene:\r\n1 paquete de 2 artículos\r\nDiámetro:\r\n324 mm\r\nCantidad:\r\n2\r\nVentajas producto:\r\nTratamiento anticorrosión, alto contenido en carbono\r\nTipo:\r\nVentilado\r\nGama:\r\nOrigen\r\nCantidad taladros:\r\n5\r\nDiámetro de centrado:\r\n75 mm\r\nPar de apriete:\r\n140 Nm\r\nEspesor mínimo:\r\n18,4 mm\r\nAltura:\r\n80 mm\r\nEspesor:\r\n20 mm\r\nVendido con:\r\nTornillo, disco de freno', 'Equivalente a estas referencias constructor:\r\n\r\nBMW : 34216756849\r\nEquivalente a estas referencias fabricante:\r\n\r\nATE : 24012001911, 24112001911\r\nBENDIX : 562355B\r\nBOSCH : 0986AB6415, 0986479350\r\nBrake ENGINEERING : DI956475\r\nDELPHI : BG3999\r\nFERODO : DDF1583\r\nJURID : 562355J\r\nPAGID : 54463\r\nTEXTAR : 92146303, 92146300\r\nTRW : DF4299\r\nZIMMERMANN : 150344320\r\nsbs : 17476, 1815201510', 'BREMBO', 'BREMBO', 'img/BREMBO - 09.A541.11.jpg', 14),
(51, 'ATE - 24.0124-0212.1', 106, 'Hay que saber:\r\nContiene:\r\n2 paquetes de 1 artículo\r\nDiámetro:\r\n320 mm\r\nCantidad:\r\n2\r\nVentajas producto:\r\nTratamiento anticorrosión\r\nTipo:\r\nVentilado\r\nGama:\r\nOrigen\r\nCantidad taladros:\r\n5\r\nProcesamiento:\r\nAleado/alt. carburado\r\nDiámetro de centrado:\r\n67 mm\r\nDiám. interior:\r\n180 mm\r\nTaladro Ø:\r\n15,2 mm\r\nEspesor mínimo:\r\n21,4 mm\r\nCorona de agujeros - Ø:\r\n112 mm\r\nAltura:\r\n58,2 mm\r\nHomologación:\r\nE1 90R-02C0296/1057\r\nEspesor:\r\n24 mm\r\nVendido con:\r\nTornillo, disco de freno', 'Otras referencias del producto:\r\n\r\nATE : 424212\r\nEquivalente a estas referencias constructor:\r\n\r\nMERCEDES-BENZ : A 221 423 10 12, 221 423 10 12, A 221 423 04 12, 221 423 04 12\r\nEquivalente a estas referencias fabricante:\r\n\r\nBENDIX : 562568BC\r\nBREMBO : 09.A818.11\r\nCAR : 142.1372\r\nDELPHI : BG4144\r\nFEBI BILSTEIN : 26405\r\nFERODO : DDF1771C\r\nHELLA : 8DD 355 113-991\r\nHELLA PAGID : 8DD 355 113-991\r\nPAGID : 54607PRO\r\nQUINTON HAZELL : BDC5640\r\nTRW : DF4916S\r\nZIMMERMANN : 400.3661.20, 400.3661.50', 'ATE', 'ATE', 'img/ATE - 24.0124-0212.1.jpg', 14),
(52, 'Blue Print - ADA104338', 96, 'Para vehículo con:\r\nPosición:\r\nTrasero\r\nHay que saber:\r\nContiene:\r\n1 paquete de 2 artículos\r\nDiámetro:\r\n312 mm\r\nCantidad:\r\n2\r\nVentajas producto:\r\nTratamiento anticorrosión\r\nTipo:\r\nMacizo\r\nCantidad taladros:\r\n6\r\nDiámetro de centrado:\r\n101 mm\r\nEspesor:\r\n66 mm\r\nEspesor mínimo:\r\n10,5 mm\r\nCorona de agujeros - Ø:\r\n139,7 mm\r\nPeso:\r\n6,75 kg\r\nCantidad de agujeros de fijación:\r\n2\r\nEspesor:\r\n12 mm', 'Equivalente a estas referencias constructor:\r\n\r\nHUMMER : 15111376\r\nEquivalente a estas referencias fabricante:\r\n\r\nA.B.S. : 17879\r\nASHIKA : 61-00-004\r\nBOSCH : F 026 A09 624, 0 986 AB5 713\r\nJAPANPARTS : DP-004\r\nJAPKO : 61004\r\nKAISHIN : CBR371\r\nMAXGEAR : 19-3174\r\nMDR : MRD-2004\r\nPEMEBLA : JAPDP-004\r\nSTELLOX : 6020-1939-SX\r\nZEKKERT : BS-5818', 'Blue Print', 'Blue Print', 'img/Blue Print - ADA104338.jpg', 14),
(53, 'BREMBO - 09.C502.11', 106, 'Hay que saber:\r\nContiene:\r\n2 paquetes de 1 artículo\r\nDiámetro:\r\n330 mm\r\nCantidad:\r\n2\r\nPerfil:\r\nPerforado\r\nVentajas producto:\r\nTratamiento anticorrosión, alto contenido en carbono\r\nTipo:\r\nVentilado\r\nGama:\r\nOrigen\r\nCantidad taladros:\r\n5\r\nDiámetro de centrado:\r\n67 mm\r\nEspesor mínimo:\r\n24 mm\r\nAltura:\r\n68 mm\r\nEspesor:\r\n26 mm\r\nVendido con:\r\nTornillo, disco de freno', 'Equivalente a estas referencias constructor:\r\n\r\nMERCEDES-BENZ : 2114231012, 2114231112, A2114231012, A2114231112', 'BREMBO', 'BREMBO', 'img/BREMBO.jpg', 14),
(54, 'TRW - BHP211E', 71, 'Para vehículo con:\r\nMontaje/montaje de origen:\r\nKasco\r\nHay que saber:\r\nTipo de pinza de freno:\r\nPinza de freno (1émbolo)\r\nEstado de la pieza:\r\nReacondicionada\r\nCon pieza de intercambio:\r\nSi\r\nMaterial:\r\nFundicion\r\nDiamétro del pistón:\r\n30 mm\r\nReferencia artículo par:\r\nBHP210E\r\nCantidad:\r\n1\r\nTipo de montaje:\r\nFlotante', 'Equivalente a estas referencias constructor:\r\n\r\nHYUNDAI : 58400-1G300\r\nKIA : 58400-1G300\r\nEquivalente a estas referencias fabricante:\r\n\r\nAPEC braking : RCA536\r\nBLUE PRINT : ADG04564\r\nBOSCH : 0986135225, 0 986 135 225\r\nBREMBO : F30087\r\nBUDWEG CALIPER : 343629\r\nBrake ENGINEERING : CA2577R\r\nDELCO REMY : DC73629\r\nFTE : RX309855A0\r\nGIRLING : 7104211\r\nHERTH+BUSS JAKOPARTS : J3220511\r\nNK : 213552\r\nSPIDAN : 403629\r\nTEXTAR : 38210700\r\nTRISCAN : 8170343629', 'TRW', 'TRW', 'img/TRW - BHP211E.jpg', 15),
(55, 'ATE - 13.2381-9997.2', 289, 'Para vehículo con:\r\nMontaje/montaje de origen:\r\nAte Teves\r\nHay que saber:\r\nTipo de pinza de freno:\r\nMontura fija (2 émbolos)\r\nDiamétro del pistón:\r\n38 mm\r\nReferencia artículo par:\r\n13.2381-9996.2\r\nNº art. de accesorio recomendado:\r\n13.0441-3801.2\r\nCantidad:\r\n1\r\nReferencias', 'Otras referencias del producto:\r\n\r\nATE : 210040\r\nEquivalente a estas referencias constructor:\r\n\r\nPORSCHE : 901 399 500 52, 901 352 986 10, 911 352 908 00\r\nEquivalente a estas referencias fabricante:\r\n\r\nBUDWEG CALIPER : 341119\r\nHELLA : 8AN 355 440-561\r\nHELLA PAGID : 8AN 355 440-561\r\nJAPCAR : 199093\r\nNK : 215602\r\nQUINTON HAZELL : QBS4706\r\nTEXTAR : 38134600', 'ATE', 'ATE', 'img/ATE - 13.2381-9997.2.jpg', 15),
(56, 'ERA Benelux N.V. - BC50497', 89, 'Para vehículo con:\r\nPosición:\r\nTrasero, derecha\r\nMontaje/montaje de origen:\r\nAte Teves\r\nHay que saber:\r\nTipo de pinza de freno:\r\nPinza de freno (2 émbolos)\r\nEstado de la pieza:\r\nReacondicionada\r\nDiamétro del pistón:\r\n38 mm', 'Equivalente a estas referencias constructor:\r\n\r\nALFAROME/FIAT/LANCI : 10526.26004.01, 10548.26004.01\r\nEquivalente a estas referencias fabricante:\r\n\r\nBUDWEG CALIPER : 34497', 'ERA Benelux N.V.', 'ERA Benelux N.V.', 'img/ERA Benelux N.V. - BC50497.jpg', 15),
(57, 'METZGER - 6250624', 70, 'Para vehículo con:\r\nPosición:\r\nTrasero, derecha\r\nMontaje/montaje de origen:\r\nAkebono\r\nHay que saber:\r\nEstado de la pieza:\r\nReacondicionada\r\nPara pistón - Ø:\r\n35 mm\r\nReferencia artículo par:\r\n6250623\r\nDiámetro del pistón de pinza de freno:\r\n35\r\nColor:\r\nGris\r\nTipo de montaje:\r\nFlotante', 'Otras referencias del producto:\r\n\r\nMETZGER : 6250624\r\nEquivalente a estas referencias constructor:\r\n\r\nNISSAN : 440018H30A, 440018H300\r\nEquivalente a estas referencias fabricante:\r\n\r\nAPEC braking : RCA248\r\nBENDIX : 694762B\r\nBLUE PRINT : ADN14552\r\nBOSCH : 0 986 135 040\r\nBREMBO : F 56 113\r\nBUDWEG CALIPER : 343203\r\nBrake ENGINEERING : CA2487R\r\nDELCO REMY : DC73203\r\nDRI : 4275000\r\nELSTOCK : 87-0705\r\nFERODO : FCL694762\r\nFTE : RX359810A0\r\nHELLA PAGID : 8AC 355 381-821\r\nHERTH+BUSS JAKOPARTS : J3221043\r\nJURID : 694762J\r\nNIPPARTS : J3221043\r\nNK : 2122138\r\nPAGID : 76756\r\nTEXTAR : 38092000\r\nTRISCAN : 8170343203\r\nTRW : BCN861, BHN1123E\r\nZIMMERMANN : 200.4.50015\r\nsbs : 13012122138', 'METZGER', 'METZGER', 'img/METZGER - 6250624.jpg', 15),
(58, 'BREMBO - K 06 005', 72, 'Para vehículo con:\r\nSistema de frenado/montaje de origen:\r\nLucas/Girling/TRW\r\nHay que saber:\r\nGama Fabricante:\r\nKIT & FIT\r\nAncho:\r\n42 mm\r\nTaladro Ø:\r\n21 mm\r\nTipo de montaje:\r\nPremontado\r\nAjustamiento:\r\nCon reajuste automático\r\nDiámetro:\r\n229 mm\r\nGama:\r\nOrigen\r\nVentajas producto:\r\nPremontado', 'Equivalente a estas referencias constructor:\r\n\r\nBMW : BMWKF02, BMWKFS02\r\nEquivalente a estas referencias fabricante:\r\n\r\nCIFAM : 151149\r\nDELPHI : KP753\r\nFERODO : FMK585\r\nGIRLING : 5315511\r\nLPR : OEK027\r\nMETELLI : 510149\r\nMGA : PM725543\r\nREMSA : SPK302700\r\nROADHOUSE : SPK302700\r\nSAMKO : KEG027\r\nTRUSTING : 6031\r\nTRW : GSK1551\r\nWOKING : SPK302700\r\nfri.tech. : 16031', 'BREMBO', 'BREMBO', 'img/BREMBO - K 06 005.jpg', 16),
(59, 'VALEO - 554557', 83, 'Para vehículo con:\r\nPosición:\r\nTrasero\r\nSistema de frenado/montaje de origen:\r\nLucas/Girling/TRW\r\nTambor de freno/diámetro:\r\n180 mm\r\nHay que saber:\r\nTipo de montaje:\r\nPremontado\r\nArtículo complementario/Información complementaria:\r\nCon cilindro de freno de rueda\r\nDiámetro del cilindro del pistón:\r\n20,6 mm\r\nAncho:\r\n40 mm\r\nPaís de producción:\r\nFrancia\r\nGama:\r\nOrigen\r\nVentajas producto:\r\nPremontado', 'Otras referencias del producto:\r\n\r\nVALEO : K62\r\nEquivalente a estas referencias constructor:\r\n\r\nPEUGEOT : 4241-9E, 42419E, 4241-2R\r\nEquivalente a estas referencias fabricante:\r\n\r\nATE : 03.0520-3120.3, 03052031203, 3052031203\r\nBENDIX : 381252B\r\nBOSCH : 0204114534, 204114534, 0 204 114 534\r\nBREMBO : K61053\r\nFTE : TK2019\r\nLPR : OEK347\r\nLUCAS ELECTRICAL : 5312431\r\nROULUNDS : 685431\r\nROULUNDS RUBBER : 685431\r\nTRUSTING : 6113\r\nTRW : GSK1035, GSK1243', 'VALEO', 'VALEO', 'img/VALEO - 554557.jpg', 16),
(60, 'TRW - BK1003', 59, 'Hay que saber:\r\nIncluido:\r\nBombín de freno de rueda\r\nGama Fabricante:\r\nBrake Kit\r\nArtículo complementario/Información complementaria:\r\nCon cilindro de freno de rueda\r\nAncho:\r\n42 mm\r\nDiamétro del pistón:\r\n22,2 mm\r\nGama:\r\nOrigen\r\nVendido con:\r\nBombín de freno de rueda - BWH153\r\nMaterial:\r\nFundicion\r\nRestricción de fabricante:\r\nBendix\r\nDiámetro:\r\n22,2 mm', 'Equivalente a estas referencias constructor:\r\n\r\nRENAULT : 77 01 203 440, RENAKFS023, 77 01 202 593\r\nEquivalente a estas referencias fabricante:\r\n\r\nABEX : H2017\r\nATE : 03.0420-4522.3, 3042045223, 03042045223\r\nBENDIX : B334012, 391012B\r\nBREMBO : H68010\r\nFERODO : KDF062\r\nGIRLING : 5210033\r\nVALEO : 553019', 'TRW', 'TRW', 'img/TRW - BK1003.jpg', 16),
(61, 'BOSCH - 0 204 114 638', 90, 'Hay que saber:\r\nGama Fabricante:\r\nKIT SUPERPRO\r\nTipo de montaje:\r\nPremontado\r\nAjustamiento:\r\nCon reajuste automático\r\nDiámetro interior del tambor de freno:\r\n203,2 mm\r\nAncho:\r\n38 mm\r\nDiamétro del pistón:\r\n20,64 mm\r\nGama:\r\nOrigen\r\nVentajas producto:\r\nPremontado', 'Otras referencias del producto:\r\n\r\nBOSCH : KS638\r\nEquivalente a estas referencias constructor:\r\n\r\nTOYOTA : TOYOKF27, TOYOKFS27\r\nEquivalente a estas referencias fabricante:\r\n\r\nATE : 03.0520-8420.3\r\nGIRLING : GSK 1913\r\nHELLA : 8DB 355 003-451\r\nLUCAS ELECTRICAL : GSK 1913', 'BOSCH', 'BOSCH', 'img/BOSCH - 0 204 114 638.jpg', 16),
(62, 'HELLA - 1ZS 010 130-611', 608, 'Para vehículo con:\r\nLado del conductor en el vehículo:\r\nIzquierda\r\nBombilla/tecnología:\r\nXenón\r\nLuz diurna/tecnología:\r\nLED\r\nTipo de bombilla:\r\nD1S, H7, PY24W\r\nHay que saber:\r\nLado:\r\nIzquierda\r\nTecnología:\r\nBi-xenon, direccional, Halógena, xenón\r\nIncluido:\r\nPiloto intermitente\r\nIncluido:\r\nElemento de regulación, regulación del alcance de faros\r\nTensión:\r\n12 V\r\nHomologación:\r\nCCC, ECE\r\nReferencia artículo par:\r\n1ZS 010 130-621\r\n¡Requiere montaje/desmontaje por personal especializado!:\r\nSi\r\nVendido con:\r\nPiloto intermitente\r\nTecnología:\r\nLED\r\nÓptica de faro, faro de carretera\r\nElemento de regulación, regulación del alcance de faros', 'Otras referencias del producto:\r\n\r\nHELLA : E1 2777, E1 2778\r\nEquivalente a estas referencias constructor:\r\n\r\nBMW : 7 262 723 9, 7262723-09, 7 262 723-11, 7 262 723, 63 12 7 262 723, 7 262 723-08, 7 262 723-10\r\nEquivalente a estas referencias fabricante:\r\n\r\nHELLA : 010 130-611, 1ZS 010 130-615, 010 130-615', 'HELLA', 'HELLA', 'img/HELLA - 1ZS 010 130-611.jpg', 17),
(63, 'MAGNETI MARELLI - 710301218204', 121, 'Para vehículo con:\r\nLado del conductor en el vehículo:\r\nIzquierda\r\nBombilla/tecnología:\r\nHalógena\r\nTipo de bombilla:\r\nH7\r\nVehículo con corrector de alcance lumínico:\r\nSi\r\nHay que saber:\r\nLado:\r\nDerecha\r\nTecnología:\r\nHalógena\r\nIncluido:\r\nElemento de regulación, regulación del alcance de faros\r\nReferencia artículo par:\r\n710301218203\r\nTipo de lámpara:\r\n2 x H7\r\nVendido con:\r\nElemento de regulación, regulación del alcance de faros\r\nTipo de servicio:\r\nEléctrico', 'Otras referencias del producto:\r\n\r\nMAGNETI MARELLI : LPM241\r\nEquivalente a estas referencias constructor:\r\n\r\nBMW : 7198730, 63127198730\r\nEquivalente a estas referencias fabricante:\r\n\r\nBOSCH : 0 301 218 204, 0301218202, 0301218204, 0 301 218 202\r\nHELLA : 1ER 010 068-081', 'MAGNETI MARELLI', 'MAGNETI MARELLI', 'img/MAGNETI MARELLI - 710301218204.jpg', 17),
(65, 'NIPPON PIECES SERVICES - N675N41', 76, 'Hay que saber:\r\nLado:\r\nDerecha\r\nEspecificación:\r\nH4,W21W,W5W', 'Equivalente a estas referencias constructor:\r\n\r\nNISSAN : 26010VK41B, 260102TV3A, 26010VK426, B6010VK41B, 26010VK41C\r\nEquivalente a estas referencias fabricante:\r\n\r\nDEPO : 215-1189R-LD-EM\r\nNPS : ND222-63222, 1346964, 26010VK426', 'NIPPON PIECES SERVICES', 'NIPPON PIECES SERVICES', 'img/NIPPON PIECES SERVICES - N675N41.jpg', 17),
(66, 'HELLA - 1 ✕ HIR2 STANDARD - 8GH 009 319-001', 22, 'Para vehículo con:\r\nFaro delantero/tecnología:\r\nHalógena\r\no para vehículo con:\r\nEmplazamiento:\r\nFaro delantero\r\nHay que saber:\r\nTipo de bombilla:\r\nHIR2\r\nPotencia [W]:\r\n55 W\r\nCantidad:\r\n1\r\nTecnología:\r\nHalógena\r\nColor:\r\nBlanco\r\nTensión:\r\n12 V\r\nEmbalaje:\r\nLata\r\nTipo de portalámpara:\r\nPX20d\r\nTipo de luces:\r\nHalógena\r\nGama Fabricante:\r\nSTANDARD\r\n¡Requiere montaje/desmontaje por personal especializado!:\r\nSi', 'Otras referencias del producto:\r\n\r\nHELLA : HIR2\r\nEquivalente a estas referencias fabricante:\r\n\r\nHELLA : 009 319-001', 'HELLA', 'HELLA', 'img/HELLA - 1 ✕ HIR2 STANDARD - 8GH 009 319-001.jpg', 18),
(67, 'PHILIPS - 1 ✕ HB4 WHITEVISION - 9006WHVB1', 17, 'Para vehículo con:\r\nEmplazamiento:\r\nFaro luz de carretera\r\nHay que saber:\r\nPotencia [W]:\r\n51 W\r\nTipo de bombilla:\r\nHB4\r\nTecnología:\r\nHalógena\r\nCantidad:\r\n1\r\nEmbalaje:\r\nPapel de borbuja\r\nTensión:\r\n12 V\r\nTipo de portalámpara:\r\nP22d\r\nGama Fabricante:\r\nWHITEVISION', 'Otras referencias del producto:\r\n\r\nPHILIPS : GOC 37473530, HB4\r\nEquivalente a estas referencias constructor:\r\n\r\nAUDI : N 101 300 01, 1J0 411 315 J\r\nBMW : 63 12 1 382 496, 6321 6926 916, 6321 7160 786, 1 382 496\r\nBMW (BRILLIANCE) : 1 382 496, 63 12 1 382 496\r\nMERCEDES-BENZ : 000000 000069, N000000 000069\r\nSEAT : N 101 300 01, 1J0 411 315 J\r\nSKODA : 1J0 411 315 J, N 101 300 01\r\nVW : 1J0 411 315 J, N 101 300 01', 'PHILIPS', 'PHILIPS', 'img/PHILIPS - 1 ✕ HB4 WHITEVISION - 9006WHVB1.jpg', 18),
(68, 'BOSCH - HB3 Pure Light WS - 1 987 302 152', 13, 'Hay que saber:\r\nTipo de bombilla:\r\nHB3\r\nTecnología:\r\nHalógena\r\nGama Fabricante:\r\nPure Light WS\r\nTensión:\r\n12 V\r\nCapacidad nominal [W]:\r\n60\r\nTipo de portalámpara:\r\nP20d', 'Otras referencias del producto:\r\n\r\nBOSCH : 12V 60W HB3 PURE LIGHT, Blister 1pcs - 1 987 301 062, HB3\r\nEquivalente a estas referencias fabricante:\r\n\r\nOSRAM : 9005\r\nPHILIPS : 9005\r\nTUNGSRAM : 9005, 53060U', 'BOSCH', 'BOSCH', 'img/BOSCH - HB3 Pure Light WS - 1 987 302 152.jpg', 18),
(69, 'OSRAM - 1 ✕ H8 ORIGINAL - 64212', 40, 'Hay que saber:\r\nTipo de bombilla:\r\nH8\r\nTecnología:\r\nHalógena\r\nCantidad:\r\n1\r\nGama Fabricante:\r\nORIGINAL\r\nTensión:\r\n12 V\r\nCapacidad nominal [W]:\r\n35\r\nTipo de portalámpara:\r\nPGJ19-1', 'Otras referencias del producto:\r\n\r\nOSRAM : H8', 'OSRAM', 'OSRAM', 'img/OSRAM - 1 ✕ H8 ORIGINAL - 64212.jpg', 18),
(70, 'LUCAS - Standard - LLB383', 7, 'Hay que saber:\r\nColor:\r\nRojo\r\nGama Fabricante:\r\nStandard\r\nTensión:\r\n12 V\r\nCapacidad nominal [W]:\r\n21/5\r\nTipo de portalámpara:\r\nBaW15d S25\r\nVersión:\r\nSingle Box\r\nColor de lámpara:\r\nRojo', 'Equivalente a estas referencias fabricante:\r\n\r\nRING : RB383', 'LUCAS', 'LUCAS', 'img/LUCAS - Standard - LLB383.jpg', 19),
(71, 'PHILIPS - 2 ✕ W21W VISION - 12065B2', 8, 'Hay que saber:\r\nColor:\r\nAmarillo\r\nPotencia [W]:\r\n21 W\r\nTipo de bombilla:\r\nW21W\r\nCantidad:\r\n2\r\nTensión:\r\n12 V\r\nTipo de portalámpara:\r\nW3x16d\r\nEmbalaje:\r\nPapel de borbuja\r\nGama Fabricante:\r\nVISION', 'Otras referencias del producto:\r\n\r\nPHILIPS : 70146330, W21W\r\nEquivalente a estas referencias constructor:\r\n\r\nVW : YY04500889200', 'PHILIPS', 'PHILIPS', 'img/PHILIPS - 2 ✕ W21W VISION - 12065B2.jpg', 19),
(72, 'BOSCH - W16W Pure Light BL - 1 987 301 049', 2, 'Hay que saber:\r\nTipo de bombilla:\r\nW16W\r\nGama Fabricante:\r\nPure Light BL\r\nTensión:\r\n12 V\r\nCapacidad nominal [W]:\r\n16\r\nTipo de portalámpara:\r\nW2,1x9,5d', 'Otras referencias del producto:\r\n\r\nBOSCH : 12V 16W W16W PURE LIGHT, E1 2NK, W16W (W2,1x9,5d)\r\nEquivalente a estas referencias fabricante:\r\n\r\nHELLA : 8GA 008 246-001\r\nOSRAM : 921\r\nPHILIPS : 12067\r\nTUNGSRAM : 921', 'BOSCH', 'BOSCH', 'img/BOSCH - W16W Pure Light BL - 1 987 301 049.jpg', 19),
(73, 'OSRAM - 2 ✕ W16W ORIGINAL - 921-02B', 7, 'Hay que saber:\r\nColor:\r\nAmarillo\r\nTipo de bombilla:\r\nW16W\r\nCantidad:\r\n2\r\nGama Fabricante:\r\nORIGINAL\r\nRecibirás:\r\nDos bombillas\r\nTensión:\r\n12 V\r\nCapacidad nominal [W]:\r\n16\r\nTipo de portalámpara:\r\nW2,1x9,5d', 'Otras referencias del producto:\r\n\r\nOSRAM : W16W\r\nEquivalente a estas referencias fabricante:\r\n\r\nBOSCH : 1 987 301 049\r\nPHILIPS : 12067B2', 'OSRAM', 'OSRAM', 'img/OSRAM - 2 ✕ W16W ORIGINAL - 921-02B.jpg', 19),
(74, 'PHILIPS - ULTINON PRO9000 - H7 - ref. 00720931', 106, 'Hay que saber:\r\nVoltaje:\r\n24 / 12\r\nUso:\r\nStrictamente reservado para uso en circuitos o rally\r\nTemperatura del color:\r\n5800\r\nHomologación ECE:\r\nNo\r\nUso:\r\nLuz larga, Luz corta\r\nBase:\r\nPX26d\r\nPotencia[W]:\r\n18\r\nCantidad por paquete:\r\n2\r\nIntensidad luminosa [Lumens]:\r\n1500\r\nVida útil:\r\nHasta 5000 horas\r\nTipo de bombilla:\r\nH7', 'Las Philips Ultinon Pro9000 establecen un nuevo estándar en lo referente a lámparas LED Retrofit. Ofrecen una luz más blanca hasta un 250 % más brillante* que garantiza un rendimiento óptimo y un diseño compacto para una instalación sencilla en la mayoría de vehículos.\r\n\r\n*Comparado con el estándar legal mínimo para lámparas halógenas.\r\n\r\nAvisos legales :\r\n\r\n- No está homologado y aprobado por la ECE. No se puede utilizar en las carreteras públicas de Europa. Estrictamente para uso en pista y rally.\r\n\r\n- Es su responsabilidad de utilizar las bombillas LED retrofit de acuerdo con los requisitos legales aplicables localmente.', 'PHILIPS', 'PHILIPS', 'img/PHILIPS - ULTINON PRO9000 - H7 - ref. 00720931.jpg', 20);
INSERT INTO `productos` (`idProductos`, `nombre`, `precio`, `descripcion`, `referencias`, `marca`, `fabricante`, `imagen`, `subCategoria_idSubCategoria`) VALUES
(75, 'PHILIPS - ULTINON PRO5000 - H7 - ref. 00784131', 78, 'Hay que saber:\r\nVoltaje:\r\n24 / 12\r\nUso:\r\nStrictamente reservado para uso en circuitos o rally\r\nTemperatura del color:\r\n5800\r\nHomologación ECE:\r\nNo\r\nUso:\r\nLuz larga, Luz corta\r\nBase:\r\nPX26d\r\nPotencia[W]:\r\n15\r\nCantidad por paquete:\r\n2\r\nIntensidad luminosa [Lumens]:\r\n1200\r\nVida útil:\r\nHasta 3000 horas\r\nTipo de bombilla:\r\nH7', 'Con la tecnología SafeBeam, las lámparas para luces principales LED Philips Ultinon Pro5000 aumentan la visibilidad hasta en un 160 %*. Cuando hayas experimentado este efecto de luz natural, no querrás saber nada sobre otras luces principales que no sean LED. Cuanto mejor veas, mejor rendirás y cuanto más rápido reacciones, más seguridad tendrás. Así que di adiós a la oscuridad, elige Philips y comienza a conducir de noche con mayor confianza y control.\r\n\r\n*Comparado con el estándar legal mínimo para lámparas halógenas.\r\n\r\nAvisos legales :\r\n\r\n- No está homologado y aprobado por la ECE. No se puede utilizar en las carreteras públicas de Europa. Estrictamente para uso en pista y rally.\r\n\r\n- Es su responsabilidad de utilizar las bombillas LED retrofit de acuerdo con los requisitos legales aplicables localmente.', 'PHILIPS', 'PHILIPS', 'img/PHILIPS - ULTINON PRO5000 - H7 - ref. 00784131.jpg', 20),
(76, 'PHILIPS - ULTINON PRO9000 - H4 - ref. 00718631', 106, 'Hay que saber:\r\nVoltaje:\r\n24 / 12\r\nUso:\r\nStrictamente reservado para uso en circuitos o rally\r\nTemperatura del color:\r\n5800\r\nHomologación ECE:\r\nNo\r\nUso:\r\nLuz larga, Luz corta\r\nBase:\r\nP43t\r\nPotencia[W]:\r\n18\r\nCantidad por paquete:\r\n2\r\nIntensidad luminosa [Lumens]:\r\n1000,15\r\nVida útil:\r\nHasta 5000 horas\r\nTipo de bombilla:\r\nH4', 'Las Philips Ultinon Pro9000 establecen un nuevo estándar en lo referente a\r\n\r\nlámparas LED Retrofit. Ofrecen una luz más blanca hasta un 250 % más brillante*\r\n\r\nque garantiza un rendimiento óptimo y un diseño compacto para una instalación\r\n\r\nsencilla en la mayoría de vehículos.\r\n\r\n*Comparado con el estándar legal mínimo para lámparas halógenas.\r\n\r\nAvisos legales :\r\n\r\n- No está homologado y aprobado por la ECE. No se puede utilizar en las carreteras públicas de Europa. Estrictamente para uso en pista y rally.\r\n\r\n- Es su responsabilidad de utilizar las bombillas LED retrofit de acuerdo con los requisitos legales aplicables localmente.', 'PHILIPS', 'PHILIPS', 'img/PHILIPS - ULTI.jpg', 20),
(77, 'YUASA - 110 Ah - ref. YBX3642', 141, 'Hay que saber:\r\nTensión:\r\n12 V\r\nCapacidad de almacenamiento:\r\n110 Ah\r\nGama:\r\nPremium\r\nAltura:\r\n240 mm\r\nPeso, lleno:\r\n25 kg\r\nCorriente de prueba en frío, NE [A]:\r\n925 A\r\nAncho:\r\n173 mm\r\nEsquema de bornes:\r\n9\r\nGama Fabricante:\r\nSuper Heavy Duty Battery\r\nTécnica conexión:\r\nT1\r\nTalón de sujeción:\r\nN\r\nLongitud:\r\n329 mm\r\nTipo de bandeja:\r\nGR31', 'Equivalente a estas referencias constructor:\r\n\r\nLAND ROVER : YGD100860\r\nEquivalente a estas referencias fabricante:\r\n\r\nCASE IH : BMF31GW, BMF31TW, BMF31G\r\nJOHN DEERE : TY25879', 'YUASA', 'YUASA', 'img/YUASA - 110 Ah - ref. YBX3642.jpg', 21),
(78, 'TUDOR - 120 Ah - ref. TF1202', 163, 'Hay que saber:\r\nTensión:\r\n12 V\r\nGama:\r\nPerformance\r\nCapacidad de almacenamiento:\r\n120\r\nAltura:\r\n235 mm\r\nCorriente de prueba en frío, NE [A]:\r\n870 A\r\nAncho:\r\n175 mm\r\nEsquema de bornes:\r\n0\r\nTalón de sujeción:\r\nB1\r\nLongitud:\r\n349 mm\r\nTipo de bandeja:\r\nD02', 'Otras referencias del producto:\r\n\r\nTUDOR : 596015060, 610047068', 'TUDOR', 'TUDOR', 'img/TUDOR - 120 Ah - ref. TF1202.jpg', 21),
(79, 'VARTA - 95 Ah - ref. 5954040833132', 121, 'Hay que saber:\r\nTensión:\r\n12 V\r\nCapacidad de almacenamiento:\r\n95 Ah\r\nLado del polo positivo:\r\nDerecha\r\nGama:\r\nPremium\r\nCorriente de prueba en frío, NE [A]:\r\n830 A\r\nStart and Stop:\r\nNo\r\nTalón de sujeción:\r\nB01\r\nLongitud:\r\n306 mm\r\nTipo de terminal:\r\nEstándar cónico\r\nVentajas producto:\r\nSin indicador visual de carga\r\nAncho:\r\n173\r\nAltura:\r\n225\r\nTipo de bandeja:\r\nD31', 'Otras referencias del producto:\r\n\r\nVARTA : 335, 533103, 595404083, G7\r\nEquivalente a estas referencias constructor:\r\n\r\nCITROËN : E364048, 5600TG, 5600SR\r\nDAF : 1527894\r\nFORD : ME8U2JP10655OA, HAMJ10655WAA, ME8U2JP-10655-OA, ME8U2J-10655-OA, 2130442, ME8U2J10655OA\r\nGREAT WALL : 3703100XP00XA, 3703100P00B1, 3703100AKZ16A, 3703100-P00B1, 3703100-XP00XA, 3703100-AKZ16A\r\nHYUNDAI : 371102P720, 371102E200, 3711026100, DP370APU090CH0U, 371103K300, LP370APE090SK0, 3711026101, 37110-D7900, 37110H1720, 371100Z900, DP370APU100CH0U, 37110D7900, 371102G900\r\nMERCEDES-BENZ : A0045417501, 0045417501\r\nMITSUBISHI : 8201A279, 8201A034, MZ690095, 95D31L, 8201A278, MZ690091\r\nPEUGEOT : E364048, 5600TG, 5600SQ\r\nSUZUKI : 3361060032BMF, 33610-60032-BMF\r\nTOYOTA : 28800-YZZAJ, 28800-YZZAY, 288000L320, 28800-0L320, 28800-YZZDA, 28800YZZAY, 28800YZZAJ, 28800YZZJE, 28800YZZDA, 2880036150, 28800-YZZJE\r\nEquivalente a estas referencias fabricante:\r\n\r\nBANNER : 59504, P9504, P10032\r\nBOBCAT : 6649716\r\nBOSCH : S4028, 0092S40280\r\nCLAAS : 0001779050\r\nEXIDE : EB954, EA954\r\nFENDT : X991451000440, X991451000060\r\nYUASA : YBX5335, YBX3335', 'VARTA', 'VARTA', 'img/VARTA - 95 Ah - ref. 5954040833132.jpg', 21),
(80, 'FULMEN - 50 Ah - ref. FK508', 239, 'Hay que saber:\r\nTensión:\r\n12 V\r\nCapacidad de almacenamiento:\r\n50 Ah\r\nLado del polo positivo:\r\nIzquierda\r\nGama:\r\nStart and Stop AGM\r\nCorriente de prueba en frío, NE [A]:\r\n800 A\r\nLongitud:\r\n260 mm\r\nStart and Stop:\r\nSi\r\nTipo de terminal:\r\nEstándar cónico\r\nVentajas producto:\r\nSin indicador visual de carga\r\nAncho:\r\n173\r\nAltura:\r\n206\r\nTalón de sujeción:\r\nB00\r\nTipo de bandeja:\r\nG34', 'Otras referencias del producto:\r\n\r\nFULMEN : 027AGM', 'FULMEN', 'FULMEN', 'img/FULMEN - 50 Ah - ref. FK508.jpg', 21),
(108, 'ALANKO - 10443765', 135, 'Hay que saber:\r\nIntensidad de carga:\r\n120 A\r\nIncluido:\r\nRueda libre del alternador\r\nSentido de giro:\r\nHorario\r\nCantidad:\r\n1\r\nTensión:\r\nDe 12 a 14,7 V\r\nDesembragable:\r\nNo\r\nVendido con:\r\nRueda libre del alternador\r\nDiámetro:\r\n58 mm\r\nRainure, quantité:\r\n6', 'Otras referencias del producto:\r\n\r\nALANKO : 443765\r\nEquivalente a estas referencias constructor:\r\n\r\nHYUNDAI : 37300-37800, 3730037800\r\nKIA : 3730037800\r\nEquivalente a estas referencias fabricante:\r\n\r\nALANKO : 443765\r\nAUTOELECTRO : AEK2981\r\nBOSCH : 0986UR0141\r\nBV PSH : 155526120, 155.526.120.365, 11188, 155.526.120.120, 155.526.120, 155.526.120.415\r\nDELCO REMY : DRA0417\r\nDRI : 2261921202\r\nEDR : 930417\r\nELSTOCK : 28-5599, 285599\r\nEUROTEC : 12060905\r\nFRIESEN : 9090541, 9090541F\r\nHELLA : 8EL738212511\r\nHOLGER CRISTIANSEN : HJA1903IR, JA1903IR\r\nLUCAS : LRA02985\r\nLUCAS ELECTRICAL : LRA02985\r\nRE-EX : AL2207\r\nREMY : DRA0417\r\nSPIDAN : 6354SP\r\nVALEO : 2655424, A0002655424, 2655524\r\nWAI : 11188N', 'ALANKO', 'ALANKO', 'img/ALANKO - 10443765.jpg', 22),
(109, 'VALEO - 440644', 185, 'Hay que saber:\r\nIntensidad de carga:\r\n100 A\r\nGama Fabricante:\r\nVALEO RE-GEN REMANUFACTURED\r\nEstado de la pieza:\r\nReacondicionada\r\nSentido de giro:\r\nHorario\r\nTensión:\r\nDe 12 a 14,7 V\r\nPosición/Grado:\r\nL/R', 'Equivalente a estas referencias constructor:\r\n\r\nOPEL : 1202197, 1202199\r\nVAUXHALL : 95515956, 13284408, 13284409', 'VALEO', 'VALEO', 'img/VALEO - 440644.jpg', 22),
(110, 'BOSCH - 0 986 045 751', 155, 'Hay que saber:\r\nIntensidad de carga:\r\n70 A\r\nIncluido:\r\nRueda libre del alternador\r\nTensión:\r\nDe 12 a 14,7 V\r\nSentido de giro:\r\nHorario\r\nEstado de la pieza:\r\nReacondicionada\r\nTipo de sujeción:\r\nBrazo giratorio simple\r\nModelo de alternador:\r\nBomba de vacío no incluida\r\nDistancia polea a alternador:\r\n90 mm\r\nPinza:\r\nB+(M6),L,IG\r\nVendido con:\r\nRueda libre del alternador\r\nPerfil:\r\nNervada\r\nDiámetro:\r\n55 mm\r\nRainure, quantité:\r\n4', 'Otras referencias del producto:\r\n\r\nBOSCH : 4575\r\nEquivalente a estas referencias constructor:\r\n\r\nMITSUBISHI : A5 TA 6891A, A 5 T A6191, A 5 T A6891, A005 TA 6891A, A 5 TA 6191 ZE, A 005 T A6891, A 005 TA 6191 ZE, A 005 T A6191, A 5 TA 6191 ZC, A 005 TA 6191 ZC\r\nSUZUKI : 31400-60G11, 31400 75F50 000, 31400 66D10 000, 31400-60G13, 31400 60G11 000, 31400-83E00, 31400-M79G00, 31400 60G10 000, 31400 60G12 000, 31400-75FD5, 31400 79G00 000, 31400-60G12, 31400 83E00 000, 31400-75F50, 31400-66D10, 31400-79G00, 31400 60G13 000, 31400-60G10\r\nEquivalente a estas referencias fabricante:\r\n\r\nBOSCH : 0 986 045 791\r\nDELCO REMY : DRA 3926\r\nDENSO : 102211-5280, 101211-0723, 102211-5610, 101211-0722, 102211-5020, 102211-5160, 102211-5161, 102211-5021, 101211-0550\r\nHC-PARTS : JA 1293 IR\r\nHELLA : 8EL 737 473-001\r\nLUCAS ELECTRICAL : LRA 1739, LRA01896, LRA 1896, LRA01739, LRA01836, LRA 1836', 'BOSCH', 'BOSCH', 'img/BOSCH - 0 986 045 751.jpg', 22),
(111, 'ELSTOCK - 28-1738', 140, 'Para vehículo con:\r\nPolea del alternador/diámetro:\r\n68 mm\r\nHay que saber:\r\nIntensidad de carga:\r\n85 A\r\nEstado de la pieza:\r\nReacondicionada\r\nTensión:\r\nDe 12 a 14,7 V\r\nModelo red de a bordo:\r\nPara vehículos con red de a bordo 12V\r\nTaladro Ø 1:\r\n10 mm', 'Equivalente a estas referencias constructor:\r\n\r\nALFA ROMEO : 195320506002, 605130630, 605134440\r\nFIAT : 60513444, 60875920, 60875921, 60513063\r\nEquivalente a estas referencias fabricante:\r\n\r\nAUTOELECTRO : AEC0839\r\nBOSCH : 0120484006, 0120484010, 0120484014, 0120484005, 0986038110, 0120484004\r\nDELCO REMY : DRA8110\r\nDRI : 210105852, 210116852\r\nDRI-Exchange : 210116852\r\nEUROTEC : 12038110EU\r\nFRIESEN : 9038110\r\nHELLA : 8EL731700-001\r\nHOLGER CRISTIANSEN : CA839IR\r\nLUCAS ELECTRICAL : LRA01354, LRA1354\r\nRE-EX : AL3902\r\nSPIDAN : 0002596\r\nVALEO : 437833', 'ELSTOCK', 'ELSTOCK', 'img/ELSTOCK - 28-1738.jpg', 22),
(112, 'LUCAS - LRS01533', 245, 'Hay que saber:\r\nPotencia [KW]:\r\n2,2 kw\r\nLongitud 1:\r\n200 mm\r\nLongitud 3:\r\n25 mm\r\nTensión:\r\n12 V\r\nLongitud 2:\r\n43 mm\r\nDiámetro:\r\n88 mm\r\nCantidad de dientes:\r\n11\r\nSentido de giro:\r\nAnti-horario\r\nEstado de la pieza:\r\nReacondicionada\r\nCant. taladros roscados:\r\n0\r\nID del modelo de conector:\r\nPlug\r\nPinza:\r\nM8', 'Equivalente a estas referencias constructor:\r\n\r\nKIA : OK60A-18400, OK601-18400\r\nEquivalente a estas referencias fabricante:\r\n\r\nDELCO REMY : DRS3925\r\nDRI : 324033112\r\nDRI-Exchange : 324033112\r\nELSTOCK : 25-3015\r\nEUROTEC : 11040711\r\nFRIESEN : 8070301\r\nLUCAS ELECTRICAL : LRS1533\r\nMANDO : MG122565, MG122423\r\nPOONG SUNG : 03111-4010, 03111-4200\r\nRE-EX : ST1942', 'LUCAS', 'LUCAS', 'img/LUCAS - LRS01533.jpg', 23),
(113, 'ALANKO - 10438157', 92, 'Hay que saber:\r\nCantidad:\r\n1\r\nPotencia [KW]:\r\n2 kw\r\nEstado de la pieza:\r\nNueva\r\nCon pieza de intercambio:\r\nNo\r\nSentido de giro:\r\nHorario\r\nTensión:\r\n12 V\r\nCantidad de dientes:\r\n9', 'Equivalente a estas referencias constructor:\r\n\r\nMITSUBISHI : M1T30671, M001T30671ZCKD, M001T30671ZC, M001T30671, 233001CA0A\r\nNISSAN : 233001CA0CRE, 233001CA0C, 233001CA0B', 'ALANKO', 'ALANKO', 'img/ALANKO - 10438157', 23),
(114, 'LUCAS - LRS00808', 94, 'Hay que saber:\r\nPotencia [KW]:\r\n1,5 kw\r\nLongitud 1:\r\n197 mm\r\nLongitud 3:\r\n22,5 mm\r\nTensión:\r\n12 V\r\nLongitud 2:\r\n25,5 mm\r\nDiámetro:\r\n76 mm\r\nCantidad de dientes:\r\n9\r\nSentido de giro:\r\nHorario\r\nEstado de la pieza:\r\nReacondicionada\r\nCant. taladros roscados:\r\n0\r\nID del modelo de conector:\r\nPlug\r\nPinza:\r\nM8', 'Equivalente a estas referencias constructor:\r\n\r\nBMW : 12411272150, 12411271749, 12411352502, 12411717174, 12411720635, 12411352504\r\nEquivalente a estas referencias fabricante:\r\n\r\nAUTOELECTRO : AES8108\r\nBOSCH : 0001314045, 0986010871, 0001311042, 0001314025, 9000692010, 0001314032, 0001314043, 0986010870\r\nDELCO REMY : DRS0870\r\nDRI : 315104092\r\nDRI-Exchange : 315104092\r\nELSTOCK : 26-0392\r\nEUROTEC : 11010870EU\r\nFRIESEN : 8015620\r\nHELLA : 8EA725972-001\r\nHOLGER CRISTIANSEN : 111052, CS119\r\nLUCAS ELECTRICAL : LRS808\r\nRE-EX : ST0931\r\nSPIDAN : 0001130\r\nVALEO : 455681, VS352', 'LUCAS', 'LUCAS', 'img/LUCAS - LRS00808.jpg', 23),
(115, 'VALEO - 438298', 191, 'Para vehículo con:\r\nVehículos/con start and stop:\r\nSi\r\nHay que saber:\r\nPotencia [KW]:\r\n1,2 kw\r\nTensión:\r\n12 V\r\nCantidad de dientes:\r\n11\r\nSentido de giro:\r\nHorario\r\nEstado de la pieza:\r\nNueva\r\nCant. taladros roscados:\r\n1\r\nCon pieza de intercambio:\r\nNo\r\nPosición/Grado:\r\nR 35\r\nPinza:\r\nNO\r\nPaís de producción:\r\nFrancia', 'Equivalente a estas referencias constructor:\r\n\r\nFORD : CV6T11000GD, CV6T11000GB, 1890321, CV6T-11000-GB, CV6T-11000-GD, 1805306, CV6T11000GA, 1762340, CV6T-11000-GA, 2197568\r\nFORD (CHANGAN) : CV6T11000GF\r\nEquivalente a estas referencias fabricante:\r\n\r\nVALEO : 458705, ESW10E40', 'VALEO', 'VALEO', 'img/VALEO - 438298.jpg', 23),
(116, 'KS TOOLS - - ref. 550.1735', 62, 'Hay que saber:\r\nTipo de vehículo:\r\nMoto\r\nVoltaje de entrada:\r\n220 / 240\r\nTensión de salida [V]:\r\n12', 'Cargador de baterías inteligente de 12V - 6V / 4A\r\n\r\nDimensiones: Ancho mm: 165,5 B mm: Alto 74,4 mm: 40,1\r\n\r\nDiseñado para un uso permanente incluso para la batería integrada\r\n\r\nPermite regenerar e incluso conservar las baterías descargadas\r\n\r\nAdecuado para baterías de plomo, gel, alphaline, AGM,VRLA\r\n\r\nProtección contra sobretensión o inversión de polos\r\n\r\nProtección contra salpicaduras de líquidos según IP44\r\n\r\nCarga automática a 9 ciclos\r\n\r\nMantenimiento de la carga por pulsos\r\n\r\nProtección contra salpicaduras de líquidos según IP44\r\n\r\nSe suministra con 3 cables de conexión (encendedor, ojales M6 y pinzas cocodrilo)\r\n\r\nConector para los diferentes cables de conexión\r\n\r\nPantalla LED\r\n\r\nCarcasa de polietileno resistente a los golpes', 'KS TOOLS', 'KS TOOLS', 'img/KS TOOLS - - ref. 550.1735.jpg', 24),
(117, 'BOSCH - C3 - ref. 0 189 999 03M', 71, 'Hay que saber:\r\nCorriente de salida [A]:\r\n3,8 / 0,8\r\nVoltaje de entrada:\r\n220 V\r\nTipo de vehículo:\r\nMoto\r\nTensión de salida [V]:\r\n12 / 6\r\nAltura:\r\n55 mm\r\nCapacidad bateria:\r\n120 Ah\r\nPeso:\r\n0,95 kg\r\nLongitud [mm]:\r\n185 mm\r\nAncho:\r\n81 mm\r\nCorriente de carga eficaz:\r\n3,8 A', 'Cargador de baterías Bosch C3 para baterías estándar de plomo-ácido, Start / Stop EFB y AGM, baterías GEL - 018999903M\r\n\r\nCARGADOR BOSCH C3 6V/12V 3,8A\r\n\r\n- Cómodo y eficaz para recargar sus baterías: el cargador de batería Bosch C3 para baterías de automóvil de 12 V y baterías de motocicleta de 6 V y 12 V detecta automáticamente el tipo de batería y el estado de carga correcto.\r\n\r\n- Este cargador está diseñado para cargar baterías de plomo y ácido de coches, vehículos comerciales, motos y otros vehículos similares (quads, caravanas, etc..).\r\n\r\nCARACTERÍSTICAS:\r\n\r\n- Carga completamente automática: control inteligente gracias a un microprocesador interno que comprueba el nivel y la calidad de la carga.\r\n\r\n- Máxima seguridad: protección ante sobrecalentamientos, chispas y polaridad inversa. En caso de anomalías, el cargador se apaga automáticamente.\r\n\r\n- Protección IP65: protección ante polvo y ante chorros de agua procedentes de todas direcciones.\r\n\r\nFUNCIONES IMPORTANTES:\r\n\r\n- Carga de impulso: este modo se activa automáticamente en baja tensión y permite obtener cargas más óptimas.\r\n\r\n- Carga de mantenimiento: se activa automáticamente cuando se carga la batería, manteniendo un nivel de carga óptimo.\r\n\r\n- Función de memoria: en caso de fallo en la alimentación o en la batería, el cargador le permite guardar la última configuración y retoma el modo de carga cuando se restablece la conexión.\r\n\r\n- Cable conector: una pieza que se puede dejar permanentemente conectada a la batería a la que no se puede acceder gracias al conector.\r\n\r\nMODOS DE CARGA:\r\n\r\n- Modo 1: 6V - baterías de moto <14Ah (7.2V / 0.8A)\r\n\r\n- Modo 2: 12V - baterías de moto <14Ah (14,4 V / 0.8A)\r\n\r\n- Modo 3: 12V - baterías de automóvil> 14Ah (14.4V / 3.8A)\r\n\r\n- Modo 4: 12V - baterías automóvil> 14Ah, AGM\r\n\r\no carga de invierno (14.7V / 3.8A)\r\n\r\nESPECIFICACIONES DEL CARGADOR:\r\n\r\n- Tipo de batería: Ácido y plomo, EFB, GEL o AGM\r\n\r\n- Tensión de entrada: 230 V / 50 Hz\r\n\r\n- Tensión de salida: 6 V / 12 V\r\n\r\n- Corriente de salida: 0,8 A / 3,8 A\r\n\r\n- Temperatura ambiente: de 0 a +40°C\r\n\r\n- Dimensiones: 185 x 81 x 55 mm\r\n\r\nCONTENIDO:\r\n\r\n- 1 cargador de baterías C3\r\n\r\n- 2 pinzas de batería (1 rojo, 1 negro)\r\n\r\n- 1 cable de carga con 2 terminales anulares y conector enchufable rápido\r\n\r\n- 1 fijación por gancho\r\n\r\n- 1 instrucciones de uso', 'BOSCH', 'BOSCH', 'img/BOSCH - C3 - ref. 0 189 999 03M.jpg', 24),
(118, 'RING - - ref. RESC804FR', 30, 'Hay que saber:\r\nCorriente de salida [A]:\r\n4 / 2\r\nVoltaje de entrada:\r\n220 / 240\r\nTipo de vehículo:\r\nMoto\r\nTensión de salida [V]:\r\n6 / 12\r\nAncho:\r\n11\r\nLongitud:\r\n22\r\nAltura:\r\n11\r\nGarantía [años]:\r\n2\r\nStart and Stop:\r\nSi\r\nProtección contra inversión de polaridad:\r\nSí\r\nPeso [g]:\r\n350\r\nPotección contra cortocircuito:\r\nSí\r\nPantalla:\r\nSi\r\nFunción de carga de compensación:\r\nSí\r\nIndicación pantalla:\r\nLCD', 'CARGADOR INTELIGENTE DE BATERÍAS + MANTENIMIENTO DE CARGA 4A 6/12V ANILLO', 'RING', 'RING', 'img/RING - - ref. RESC804FR.jpg', 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `idSubCategoria` int(11) NOT NULL,
  `nombreSubCategoria` varchar(200) NOT NULL,
  `categorias_idcategorias1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`idSubCategoria`, `nombreSubCategoria`, `categorias_idcategorias1`) VALUES
(1, 'Correas', 1),
(2, 'Refrigeración de motor', 1),
(3, 'Inyección y carburación', 1),
(4, 'Bujías y piezas de encendido', 1),
(5, 'Filtro', 2),
(6, 'Aceite / Accesorios purga', 2),
(7, 'Herramientas para cambio de aceite', 2),
(8, 'Otras piezas de filtración', 2),
(9, 'Amortiguadores', 3),
(10, 'Suspensión de Ejes', 3),
(11, 'Transmisión', 3),
(12, 'Rótulas/ Dirección', 3),
(13, 'Pastillas de freno', 4),
(14, 'Discos de freno', 4),
(15, 'Hidráulica', 4),
(16, 'Frenos de tambor', 4),
(17, 'Ópticas y faros', 5),
(18, 'Bombillas, Faros delanteros', 5),
(19, 'Bombillas LED, Faros traseros', 5),
(20, 'Bombillas LED Retrofit', 5),
(21, 'Baterías', 6),
(22, 'Alternadores', 6),
(23, 'Motores de arranque', 6),
(24, 'Herramientas para baterías', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblDetalleVenta`
--

CREATE TABLE `tblDetalleVenta` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(20,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `RECIBIDO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tblDetalleVenta`
--

INSERT INTO `tblDetalleVenta` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `RECIBIDO`) VALUES
(1, 1, 55, '100.00', 1, 0),
(2, 8, 5, '32.00', 1, 0),
(3, 8, 4, '113.00', 1, 0),
(4, 8, 3, '223.00', 1, 0),
(5, 9, 3, '223.00', 1, 0),
(6, 10, 3, '223.00', 1, 0),
(7, 11, 3, '223.00', 1, 0),
(8, 12, 3, '223.00', 1, 0),
(9, 13, 3, '223.00', 1, 0),
(10, 14, 3, '223.00', 1, 0),
(11, 14, 2, '238.00', 1, 0),
(12, 15, 3, '223.00', 1, 0),
(13, 15, 2, '238.00', 1, 0),
(14, 16, 3, '223.00', 1, 0),
(15, 16, 2, '238.00', 1, 0),
(16, 17, 3, '223.00', 1, 0),
(17, 17, 2, '238.00', 1, 0),
(18, 18, 3, '223.00', 1, 0),
(19, 18, 2, '238.00', 1, 0),
(20, 19, 3, '223.00', 1, 0),
(21, 19, 2, '238.00', 1, 0),
(22, 20, 3, '223.00', 1, 0),
(23, 20, 2, '238.00', 1, 0),
(24, 21, 7, '57.00', 1, 0),
(25, 22, 3, '223.00', 1, 0),
(26, 22, 2, '238.00', 1, 0),
(27, 23, 3, '223.00', 1, 0),
(28, 23, 2, '238.00', 1, 0),
(29, 24, 3, '223.00', 1, 0),
(30, 24, 2, '238.00', 1, 0),
(31, 25, 3, '223.00', 1, 0),
(32, 26, 1, '94.00', 1, 0),
(33, 27, 67, '17.00', 1, 0),
(34, 28, 17, '7.00', 1, 0),
(35, 29, 17, '7.00', 1, 0),
(36, 30, 6, '12.00', 1, 0),
(37, 30, 5, '32.00', 1, 0),
(38, 31, 10, '217.00', 1, 0),
(39, 31, 11, '172.00', 1, 0),
(40, 32, 35, '210.00', 1, 0),
(41, 32, 11, '172.00', 1, 0),
(42, 33, 34, '425.00', 1, 0),
(43, 34, 1, '95.00', 1, 0),
(44, 34, 2, '238.00', 1, 0),
(45, 35, 2, '238.00', 1, 0),
(46, 35, 2, '238.00', 1, 0),
(47, 36, 23, '22.00', 1, 0),
(48, 37, 23, '22.00', 1, 0),
(49, 38, 31, '444.00', 1, 0),
(50, 39, 17, '7.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblVentas`
--

CREATE TABLE `tblVentas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PaypalDatos` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` decimal(60,2) NOT NULL,
  `Status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tblVentas`
--

INSERT INTO `tblVentas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `Status`, `usuario_idUsuario`) VALUES
(1, '123456789', '', '2021-12-16 16:21:19', 'davidn.h6@gmail.com', '700.00', 'pendiente', 20),
(2, '123456789', '', '2021-12-16 16:21:19', 'davidn.h6@gmail.com', '700.00', 'pendiente', 20),
(3, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 15:36:44', 'asdasdasd@gmail.com', '270.00', 'pagado', 21),
(4, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 15:43:53', 'davidn.h6@gmail.com', '493.00', 'pendiente', 20),
(5, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 15:44:06', 'deferas@gmail.com', '493.00', 'pendiente', 0),
(6, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:00:30', 'vamosvamos@gmail.com', '493.00', 'pendiente', 0),
(7, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:01:21', 'asdasd@gmail.com', '368.00', 'pendiente', 0),
(8, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:03:20', 'asdasd@gmail.com', '368.00', 'pendiente', 0),
(9, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:15:46', 'asdasdasdg@gmail.com', '223.00', 'pendiente', 0),
(10, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:19:05', 'asdasdasdg@gmail.com', '223.00', 'pendiente', 0),
(11, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:19:55', 'davidn.h6@gmail.com', '223.00', 'pagado', 20),
(12, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:25:33', 'asdasdasdg@gmail.com', '223.00', 'pendiente', 0),
(13, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:25:42', 'asdasdasdg@gmail.com', '223.00', 'pendiente', 0),
(14, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:39:59', 'jesus@gmail.com', '461.00', 'pagado', 21),
(15, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:42:17', 'sdad@gmail.com', '461.00', 'pendiente', 0),
(16, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:42:47', 'sdad@gmail.com', '461.00', 'pendiente', 0),
(17, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:43:27', 'sdad@gmail.com', '461.00', 'pendiente', 0),
(18, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:43:43', 'sdad@gmail.com', '461.00', 'pendiente', 0),
(19, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:44:29', 'sdad@gmail.com', '461.00', 'pendiente', 0),
(20, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:44:35', 'jesus@gmail.com', '461.00', 'devuelto', 21),
(21, 'bd5671f2ba8bb3d233b16d4ffbbe522f', '', '2021-12-16 16:45:39', 'asdfasd@asd', '57.00', 'pendiente', 0),
(22, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:48:29', 'davidn.h6@gmail.com', '461.00', 'devuelto', 20),
(23, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:49:58', 'sdad@gmail.com', '461.00', 'pendiente', 0),
(24, '714be0eee6563b8447d079fca3ab58f3', '', '2021-12-16 16:50:13', 'sdad@gmail.com', '461.00', 'pendiente', 0),
(25, '1b472bfcd474902d3fb803bf6667c638', '', '2021-12-17 11:07:43', 'jesus@gmail.com', '223.00', 'pendiente', 21),
(26, '1b472bfcd474902d3fb803bf6667c638', '', '2021-12-18 17:43:00', 'asdasd@gmail.com', '94.00', 'pendiente', 0),
(27, '1b472bfcd474902d3fb803bf6667c638', '', '2021-12-19 13:04:41', 'dnh639@inlumine.ual.es', '17.00', 'pendiente', 0),
(28, '1b472bfcd474902d3fb803bf6667c638', '', '2021-12-19 18:51:43', 'elpeos@gmail.com', '7.00', 'pendiente', 0),
(29, '1b472bfcd474902d3fb803bf6667c638', '', '2021-12-19 18:58:40', 'dnh639@inlumine.ual.es', '7.00', 'pendiente', 0),
(30, '1b472bfcd474902d3fb803bf6667c638', '', '2021-12-19 23:02:21', 'probando@gmail.com', '44.00', 'pendiente', 0),
(31, '1b472bfcd474902d3fb803bf6667c638', '', '2021-12-19 23:11:57', 'fdgdfgd@gmail.com', '389.00', 'pendiente', 0),
(32, '1b472bfcd474902d3fb803bf6667c638', '', '2021-12-19 23:46:29', 'funcionaporfavor@gmail.com', '382.00', 'pendiente', 0),
(33, '1b472bfcd474902d3fb803bf6667c638', '', '2021-12-20 01:51:38', 'davidn.h6@gmail.com', '425.00', 'pendiente', 0),
(34, '1b472bfcd474902d3fb803bf6667c638', '', '2021-12-20 11:05:54', 'davidn.h6@gmail.com', '333.00', 'pendiente', 0),
(35, '825bc3c6e2feaafcf6de40eb79e73c28', '', '2021-12-20 11:28:19', 'daniaaaa@hahasha.com', '476.00', 'pendiente', 0),
(36, '6ab5f04902124d65037f03326ddf7a6c', '', '2021-12-20 12:03:23', 'probando@gmail.com', '22.00', 'pendiente', 0),
(37, '6ab5f04902124d65037f03326ddf7a6c', '', '2021-12-20 12:04:22', 'probando@gmail.com', '22.00', 'pendiente', 0),
(38, 'dd9e4aba8f4d4088fe60f146c428416b', '', '2021-12-21 10:26:17', 'jesus@gmail.com', '444.00', 'pendiente', 0),
(39, '95ac1c586a7b4c668ca21ac2d7dc4490', '', '2021-12-27 11:13:58', 'll@gmail.com', '7.00', 'pendiente', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `numTelefono` int(11) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `DNI` varchar(45) DEFAULT NULL,
  `direccion` varchar(200) NOT NULL,
  `codigoPostal` int(11) NOT NULL,
  `esAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `correo`, `contraseña`, `numTelefono`, `nombre`, `DNI`, `direccion`, `codigoPostal`, `esAdmin`) VALUES
(30, '', '', 0, '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_direccion`
--

CREATE TABLE `usuario_direccion` (
  `usuario_idUsuario` int(11) NOT NULL,
  `direccion_idDireccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_direccion`
--

INSERT INTO `usuario_direccion` (`usuario_idUsuario`, `direccion_idDireccion`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD KEY `fk_carrito_Productos1_idx` (`Productos_idProductos`),
  ADD KEY `fk_carrito_pedido1_idx` (`pedido_idpedidos`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategorias`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`idConsulta`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD UNIQUE KEY `idDireccion` (`idDireccion`) USING BTREE;

--
-- Indices de la tabla `historial de compras`
--
ALTER TABLE `historial de compras`
  ADD KEY `idPersona_idx` (`usuario_persona_idpersona`),
  ADD KEY `idPedido_idx` (`pedido_idPedido`);

--
-- Indices de la tabla `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`idNewsletter`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedidos`),
  ADD KEY `fk_pedidos_direccion1_idx` (`direccion_iddireccion`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProductos`),
  ADD KEY `fk_Productos_categorias_idx` (`subCategoria_idSubCategoria`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`idSubCategoria`),
  ADD KEY `fk_subcategorias_categorias1_idx` (`categorias_idcategorias1`);

--
-- Indices de la tabla `tblDetalleVenta`
--
ALTER TABLE `tblDetalleVenta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `tblVentas`
--
ALTER TABLE `tblVentas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_idUsuario` (`usuario_idUsuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `usuario_direccion`
--
ALTER TABLE `usuario_direccion`
  ADD KEY `fk_idUsuario` (`usuario_idUsuario`),
  ADD KEY `fk_idDireccion` (`direccion_idDireccion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategorias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT de la tabla `consulta`
--
ALTER TABLE `consulta`
  MODIFY `idConsulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `idDireccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `idNewsletter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedidos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `idSubCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `tblDetalleVenta`
--
ALTER TABLE `tblDetalleVenta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `tblVentas`
--
ALTER TABLE `tblVentas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `fk_carrito_Productos1` FOREIGN KEY (`Productos_idProductos`) REFERENCES `productos` (`idProductos`),
  ADD CONSTRAINT `fk_carrito_pedido1` FOREIGN KEY (`pedido_idpedidos`) REFERENCES `pedido` (`idpedidos`);

--
-- Filtros para la tabla `historial de compras`
--
ALTER TABLE `historial de compras`
  ADD CONSTRAINT `idPedido` FOREIGN KEY (`pedido_idPedido`) REFERENCES `pedido` (`idpedidos`),
  ADD CONSTRAINT `idPersona` FOREIGN KEY (`usuario_persona_idpersona`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_pedidos_direccion1` FOREIGN KEY (`direccion_iddireccion`) REFERENCES `direccion` (`idDireccion`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_Productos_categorias` FOREIGN KEY (`subCategoria_idSubCategoria`) REFERENCES `subcategorias` (`idSubCategoria`);

--
-- Filtros para la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD CONSTRAINT `fk_subcategorias_categorias` FOREIGN KEY (`categorias_idcategorias1`) REFERENCES `categorias` (`idcategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tblDetalleVenta`
--
ALTER TABLE `tblDetalleVenta`
  ADD CONSTRAINT `tblDetalleVenta_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `tblVentas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblDetalleVenta_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `productos` (`idProductos`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
