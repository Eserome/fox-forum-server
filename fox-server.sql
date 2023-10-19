-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 19-10-2023 a las 06:09:31
-- Versión del servidor: 8.1.0
-- Versión de PHP: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fox-server`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reply`
--

CREATE TABLE `reply` (
  `id` bigint NOT NULL,
  `body` varchar(2048) DEFAULT NULL,
  `id_thread` bigint NOT NULL,
  `id_user` bigint NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `reply`
--

INSERT INTO `reply` (`id`, `body`, `id_thread`, `id_user`, `title`) VALUES
(1, 'eqeqweqe', 1, 6, 'werwerwer'),
(2, 'EEEEEEEEEEEEEEEEEe', 1, 6, 'RRREE'),
(3, 'Superfrieeend', 5, 75, 'truenos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thread`
--

CREATE TABLE `thread` (
  `id` bigint NOT NULL,
  `title` varchar(2048) NOT NULL,
  `id_user` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `thread`
--

INSERT INTO `thread` (`id`, `title`, `id_user`) VALUES
(1, 'Hoooooo', 5),
(2, 'yyyyyyyyyy', 8),
(3, 'Acapiiii', 54),
(4, 'Rotiloo', 61),
(5, 'Sumalaviiii', 51),
(6, 'Xupilooon', 41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `name` varchar(512) NOT NULL,
  `surname` varchar(512) NOT NULL,
  `lastname` varchar(512) NOT NULL,
  `email` varchar(512) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `lastname`, `email`, `username`, `password`, `role`) VALUES
(1, 'Juan', 'Pérez', 'Gómez', 'juan.perez@example.com', 'juanperez123', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(2, 'Juan', 'Pérez', 'Gómez', 'juan.perez@example.com', 'juanperez123', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(3, 'Juan', 'Pérez', 'Gómez', 'juan.perez@example.com', 'juanperez123', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(4, 'name0', 'surname0', 'lastname0', 'email0', 'username0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(5, 'name1', 'surname1', 'lastname1', 'email1', 'username1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(6, 'name2', 'surname2', 'lastname2', 'email2', 'username2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(7, 'name3', 'surname3', 'lastname3', 'email3', 'username3', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(8, 'name4', 'surname4', 'lastname4', 'email4', 'username4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(9, 'name5', 'surname5', 'lastname5', 'email5', 'username5', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(10, 'name6', 'surname6', 'lastname6', 'email6', 'username6', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(11, 'name7', 'surname7', 'lastname7', 'email7', 'username7', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(12, 'name8', 'surname8', 'lastname8', 'email8', 'username8', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(13, 'name9', 'surname9', 'lastname9', 'email9', 'username9', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(14, 'name10', 'surname10', 'lastname10', 'email10', 'username10', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(15, 'name11', 'surname11', 'lastname11', 'email11', 'username11', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(16, 'name12', 'surname12', 'lastname12', 'email12', 'username12', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(17, 'name13', 'surname13', 'lastname13', 'email13', 'username13', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(18, 'name14', 'surname14', 'lastname14', 'email14', 'username14', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(19, 'name15', 'surname15', 'lastname15', 'email15', 'username15', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(20, 'name16', 'surname16', 'lastname16', 'email16', 'username16', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(21, 'name17', 'surname17', 'lastname17', 'email17', 'username17', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(22, 'name18', 'surname18', 'lastname18', 'email18', 'username18', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(23, 'name19', 'surname19', 'lastname19', 'email19', 'username19', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(24, 'name20', 'surname20', 'lastname20', 'email20', 'username20', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(25, 'name21', 'surname21', 'lastname21', 'email21', 'username21', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(26, 'name22', 'surname22', 'lastname22', 'email22', 'username22', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(27, 'name23', 'surname23', 'lastname23', 'email23', 'username23', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(28, 'name24', 'surname24', 'lastname24', 'email24', 'username24', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(29, 'name25', 'surname25', 'lastname25', 'email25', 'username25', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(30, 'name26', 'surname26', 'lastname26', 'email26', 'username26', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(31, 'name27', 'surname27', 'lastname27', 'email27', 'username27', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(32, 'name28', 'surname28', 'lastname28', 'email28', 'username28', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(33, 'name29', 'surname29', 'lastname29', 'email29', 'username29', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(34, 'name30', 'surname30', 'lastname30', 'email30', 'username30', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(35, 'name31', 'surname31', 'lastname31', 'email31', 'username31', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(36, 'name32', 'surname32', 'lastname32', 'email32', 'username32', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(37, 'name33', 'surname33', 'lastname33', 'email33', 'username33', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(38, 'name34', 'surname34', 'lastname34', 'email34', 'username34', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(39, 'name35', 'surname35', 'lastname35', 'email35', 'username35', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(40, 'name36', 'surname36', 'lastname36', 'email36', 'username36', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(41, 'name37', 'surname37', 'lastname37', 'email37', 'username37', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(42, 'name38', 'surname38', 'lastname38', 'email38', 'username38', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(43, 'name39', 'surname39', 'lastname39', 'email39', 'username39', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(44, 'name40', 'surname40', 'lastname40', 'email40', 'username40', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(45, 'name41', 'surname41', 'lastname41', 'email41', 'username41', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(46, 'name42', 'surname42', 'lastname42', 'email42', 'username42', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(47, 'name43', 'surname43', 'lastname43', 'email43', 'username43', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(48, 'name44', 'surname44', 'lastname44', 'email44', 'username44', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(49, 'name45', 'surname45', 'lastname45', 'email45', 'username45', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(50, 'name46', 'surname46', 'lastname46', 'email46', 'username46', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(51, 'name47', 'surname47', 'lastname47', 'email47', 'username47', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(52, 'name48', 'surname48', 'lastname48', 'email48', 'username48', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(53, 'name49', 'surname49', 'lastname49', 'email49', 'username49', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(54, 'name50', 'surname50', 'lastname50', 'email50', 'username50', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(55, 'name51', 'surname51', 'lastname51', 'email51', 'username51', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(56, 'name52', 'surname52', 'lastname52', 'email52', 'username52', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(57, 'name53', 'surname53', 'lastname53', 'email53', 'username53', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(58, 'name54', 'surname54', 'lastname54', 'email54', 'username54', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(59, 'name55', 'surname55', 'lastname55', 'email55', 'username55', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(60, 'name56', 'surname56', 'lastname56', 'email56', 'username56', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(61, 'name57', 'surname57', 'lastname57', 'email57', 'username57', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(62, 'name58', 'surname58', 'lastname58', 'email58', 'username58', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(63, 'name59', 'surname59', 'lastname59', 'email59', 'username59', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(64, 'name60', 'surname60', 'lastname60', 'email60', 'username60', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(65, 'name61', 'surname61', 'lastname61', 'email61', 'username61', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(66, 'name62', 'surname62', 'lastname62', 'email62', 'username62', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(67, 'name63', 'surname63', 'lastname63', 'email63', 'username63', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(68, 'name64', 'surname64', 'lastname64', 'email64', 'username64', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(69, 'name65', 'surname65', 'lastname65', 'email65', 'username65', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(70, 'name66', 'surname66', 'lastname66', 'email66', 'username66', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(71, 'name67', 'surname67', 'lastname67', 'email67', 'username67', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(72, 'name68', 'surname68', 'lastname68', 'email68', 'username68', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(73, 'name69', 'surname69', 'lastname69', 'email69', 'username69', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(74, 'name70', 'surname70', 'lastname70', 'email70', 'username70', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(75, 'name71', 'surname71', 'lastname71', 'email71', 'username71', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(76, 'name72', 'surname72', 'lastname72', 'email72', 'username72', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(77, 'name73', 'surname73', 'lastname73', 'email73', 'username73', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(78, 'name74', 'surname74', 'lastname74', 'email74', 'username74', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(79, 'name75', 'surname75', 'lastname75', 'email75', 'username75', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(80, 'name76', 'surname76', 'lastname76', 'email76', 'username76', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(81, 'name77', 'surname77', 'lastname77', 'email77', 'username77', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(82, 'name78', 'surname78', 'lastname78', 'email78', 'username78', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(83, 'name79', 'surname79', 'lastname79', 'email79', 'username79', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(84, 'name80', 'surname80', 'lastname80', 'email80', 'username80', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(85, 'name81', 'surname81', 'lastname81', 'email81', 'username81', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(86, 'name82', 'surname82', 'lastname82', 'email82', 'username82', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(87, 'name83', 'surname83', 'lastname83', 'email83', 'username83', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(88, 'name84', 'surname84', 'lastname84', 'email84', 'username84', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(89, 'name85', 'surname85', 'lastname85', 'email85', 'username85', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(90, 'name86', 'surname86', 'lastname86', 'email86', 'username86', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(91, 'name87', 'surname87', 'lastname87', 'email87', 'username87', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(92, 'name88', 'surname88', 'lastname88', 'email88', 'username88', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(93, 'name89', 'surname89', 'lastname89', 'email89', 'username89', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(94, 'name90', 'surname90', 'lastname90', 'email90', 'username90', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(95, 'name91', 'surname91', 'lastname91', 'email91', 'username91', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(96, 'name92', 'surname92', 'lastname92', 'email92', 'username92', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(97, 'name93', 'surname93', 'lastname93', 'email93', 'username93', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(98, 'name94', 'surname94', 'lastname94', 'email94', 'username94', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(99, 'name95', 'surname95', 'lastname95', 'email95', 'username95', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(100, 'name96', 'surname96', 'lastname96', 'email96', 'username96', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(101, 'name97', 'surname97', 'lastname97', 'email97', 'username97', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(102, 'name98', 'surname98', 'lastname98', 'email98', 'username98', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(103, 'name99', 'surname99', 'lastname99', 'email99', 'username99', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(104, 'name0', 'surname0', 'lastname0', 'email0', 'username0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(105, 'name1', 'surname1', 'lastname1', 'email1', 'username1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(106, 'name2', 'surname2', 'lastname2', 'email2', 'username2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(107, 'name3', 'surname3', 'lastname3', 'email3', 'username3', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(108, 'name4', 'surname4', 'lastname4', 'email4', 'username4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(109, 'name5', 'surname5', 'lastname5', 'email5', 'username5', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(110, 'name6', 'surname6', 'lastname6', 'email6', 'username6', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(111, 'name7', 'surname7', 'lastname7', 'email7', 'username7', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(112, 'name8', 'surname8', 'lastname8', 'email8', 'username8', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(113, 'name9', 'surname9', 'lastname9', 'email9', 'username9', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(114, 'name10', 'surname10', 'lastname10', 'email10', 'username10', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(115, 'name11', 'surname11', 'lastname11', 'email11', 'username11', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(116, 'name12', 'surname12', 'lastname12', 'email12', 'username12', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(117, 'name13', 'surname13', 'lastname13', 'email13', 'username13', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(118, 'name14', 'surname14', 'lastname14', 'email14', 'username14', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(119, 'name15', 'surname15', 'lastname15', 'email15', 'username15', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(120, 'name16', 'surname16', 'lastname16', 'email16', 'username16', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(121, 'name17', 'surname17', 'lastname17', 'email17', 'username17', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(122, 'name18', 'surname18', 'lastname18', 'email18', 'username18', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1'),
(123, 'name19', 'surname19', 'lastname19', 'email19', 'username19', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', b'1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7o7kiobsjg9bpfvmhd96sync1` (`id_thread`),
  ADD KEY `FKoab9h52gp6y88xb3wtq2lj2va` (`id_user`);

--
-- Indices de la tabla `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKetavylbu4jh8bmyhicmwiyqih` (`id_user`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reply`
--
ALTER TABLE `reply`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `thread`
--
ALTER TABLE `thread`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `FK7o7kiobsjg9bpfvmhd96sync1` FOREIGN KEY (`id_thread`) REFERENCES `thread` (`id`),
  ADD CONSTRAINT `FKoab9h52gp6y88xb3wtq2lj2va` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `thread`
--
ALTER TABLE `thread`
  ADD CONSTRAINT `FKetavylbu4jh8bmyhicmwiyqih` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
