-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2023 a las 13:49:46
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4
CREATE DATABASE laravel;
use laravel;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `information`
--

CREATE TABLE `information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `fecha_nacimiento` varchar(255) NOT NULL,
  `idUsuario` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `information`
--

INSERT INTO `information` (`id`, `direccion`, `telefono`, `fecha_nacimiento`, `idUsuario`, `created_at`, `updated_at`) VALUES
(1, 'la paz', '35346543432', '2000-12-11', 1, NULL, NULL),
(2, 'xochitepec', '2432534643', '2000-02-12', 2, NULL, NULL),
(3, 'civac', '35436464632', '1995-07-13', 3, NULL, NULL),
(4, 'torreon', '5475686364', '1997-07-14', 4, NULL, NULL),
(5, 'chapultepec', '4758654655', '1970-07-05', 5, NULL, NULL),
(6, 'chapultepec', '8643645763', '1987-07-16', 6, NULL, NULL),
(7, 'torreon', '4375453253263', '1974-04-17', 7, NULL, NULL),
(8, 'cmdx', '3654632533', '1989-11-20', 8, NULL, NULL),
(9, 'axochiapan', '35475434236', '2004-01-19', 9, NULL, NULL),
(10, 'temoac', '53465476436', '2002-02-01', 10, NULL, NULL),
(11, 'la pera', '35363232634', '1988-11-02', 11, NULL, NULL),
(12, 'huitzilac', '654325323', '1968-10-11', 12, NULL, NULL),
(13, 'df', '65476543654', '1969-10-05', 13, NULL, NULL),
(14, 'df', '364754765832', '1971-11-04', 14, NULL, NULL),
(15, 'df', '6547687435', '2000-04-05', 15, NULL, NULL),
(16, 'df', '3656843345', '2000-11-06', 16, NULL, NULL),
(17, 'cdmx', '34565776576', '2000-04-17', 17, NULL, NULL),
(18, 'cdmx', '87345876534', '2000-04-19', 18, NULL, NULL),
(19, 'jiutepec', '34567788679', '2003-01-21', 19, NULL, NULL),
(20, 'cuernavaca', '5686756788', '2004-11-05', 20, NULL, NULL),
(21, 'cuernavaca', '6755364789', '2002-01-11', 21, NULL, NULL),
(22, 'jiutepec', '45675364758', '1999-10-09', 22, NULL, NULL),
(23, 'cdmx', '345678765647', '1998-04-10', 23, NULL, NULL),
(24, 'df', '345677544567', '1997-11-08', 24, NULL, NULL),
(25, 'df', '6789876545', '1996-11-19', 25, NULL, NULL),
(26, 'df', '456789876', '2000-10-22', 26, NULL, NULL),
(27, 'df', '4567898765', '2000-01-25', 27, NULL, NULL),
(28, 'civac', '456788765', '2000-10-26', 28, NULL, NULL),
(29, 'civac', '8998587', '2000-04-27', 29, NULL, NULL),
(30, 'civac', '45868564587', '2000-04-28', 30, NULL, NULL),
(31, 'jiutepec', '43758643', '2000-04-29', 31, NULL, NULL),
(32, 'jiutepec', '879884755755', '1975-04-11', 32, NULL, NULL),
(33, 'la paz', '364776698797', '1986-11-10', 33, NULL, NULL),
(34, 'la paz', '4769879876', '1982-04-06', 34, NULL, NULL),
(35, 'morelos', '5769879875', '2000-11-06', 35, NULL, NULL),
(36, 'huitzilac', '587080988765', '2001-04-26', 36, NULL, NULL),
(37, 'df', '57098076576', '2001-04-26', 37, NULL, NULL),
(38, 'df', '587980857575', '2001-02-11', 38, NULL, NULL),
(39, 'df', '57697986575686', '2001-01-27', 39, NULL, NULL),
(40, 'df', '34567978576', '2001-04-27', 40, NULL, NULL),
(41, 'df', '4576987655', '2000-04-29', 41, NULL, NULL),
(42, 'civac', '568789878745', '2000-01-19', 42, NULL, NULL),
(43, 'civac', '567988765', '2001-11-19', 43, NULL, NULL),
(44, 'temoac', '45679098765', '2000-04-18', 44, NULL, NULL),
(45, 'temoac', '3456789098765', '2001-11-18', 45, NULL, NULL),
(46, 'xhochitepec', '456789098765', '2000-04-11', 46, NULL, NULL),
(47, 'xochitepec', '456789876567', '1999-04-14', 47, NULL, NULL),
(48, 'xochitepec', '9876545678678', '1987-04-13', 48, NULL, NULL),
(49, 'temoac', '5678987654', '1987-04-13', 49, NULL, NULL),
(50, 'temoac', '4567898765', '1999-04-12', 50, NULL, NULL),
(51, 'civac', '45678987654', '2002-04-12', 51, NULL, NULL),
(52, 'civac', '87656789', '2002-04-19', 52, NULL, NULL),
(53, 'axochiapan', '456787654', '1987-04-14', 53, NULL, NULL),
(54, 'torreon', '34567987654', '1999-01-14', 54, NULL, NULL),
(55, 'puebla', '34567987654', '2002-02-12', 55, NULL, NULL),
(56, 'puebla', '34567987654', '1987-01-11', 56, NULL, NULL),
(57, 'morelos', '45679098765', '2000-04-01', 57, NULL, NULL),
(58, 'morelos', '456798765', '1999-04-01', 58, NULL, NULL),
(59, 'df', '45679098765', '2002-04-01', 59, NULL, NULL),
(60, 'df', '45679098765', '1999-04-02', 60, NULL, NULL),
(61, 'df', '4567998765', '1987-02-03', 61, NULL, NULL),
(62, 'df', '987654567', '1987-04-17', 62, NULL, NULL),
(63, 'morelos', '98765456756', '2000-04-15', 63, NULL, NULL),
(64, 'civac', '0987654456', '2000-04-15', 64, NULL, NULL),
(65, 'civac', '679098765', '1987-04-15', 65, NULL, NULL),
(66, 'jiutepec', '45679987654', '2000-04-13', 66, NULL, NULL),
(67, 'huitzilac', '098765434567', '1996-04-12', 67, NULL, NULL),
(68, 'acatlipa', '0987654567', '1996-04-13', 68, NULL, NULL),
(69, 'temixco', '456790987654', '1987-04-11', 69, NULL, NULL),
(70, 'la pera', '34567987654', '2000-04-12', 70, NULL, NULL),
(71, 'huitzilac', '45678987654', '2000-04-10', 71, NULL, NULL),
(72, 'tepoztlan', '345679098765', '1996-04-10', 72, NULL, NULL),
(73, 'tepoztlan', '56798765678', '1996-04-11', 73, NULL, NULL),
(74, 'cdmx', '567898765876', '2000-04-10', 74, NULL, NULL),
(75, 'cdmx', '98765445678', '1995-01-10', 75, NULL, NULL),
(76, 'puebla', '98765456789', '1974-04-11', 76, NULL, NULL),
(77, 'puebla', '0987656789', '2000-01-15', 77, NULL, NULL),
(78, 'queretaro', '77724235435', '1995-12-16', 78, NULL, NULL),
(79, 'guanajuato', '242535435346', '1974-04-16', 79, NULL, NULL),
(80, 'guerrero', '24365454242', '2000-04-16', 80, NULL, NULL),
(81, 'rosales', '5678998765', '1974-12-12', 81, NULL, NULL),
(82, 'cuernavaca', '98765445678', '2000-01-12', 82, NULL, NULL),
(83, 'jiutepec', '98765456789', '1965-02-12', 83, NULL, NULL),
(84, 'axochiapan', '09876567890', '2000-04-10', 84, NULL, NULL),
(85, 'tepoztlan', '098765678', '2000-02-10', 85, NULL, NULL),
(86, 'tepozotlan', '09876567890', '1965-04-09', 86, NULL, NULL),
(87, 'ocuituco', '09876556789', '2000-12-09', 87, NULL, NULL),
(88, 'alpuyeca', '9876545678', '1965-04-08', 88, NULL, NULL),
(89, 'xoxocotla', '3456787654', '1974-12-08', 89, NULL, NULL),
(90, 'ocotepec', '8765456788', '1995-01-07', 90, NULL, NULL),
(91, 'ocotepec', '5678876544', '2000-02-07', 91, NULL, NULL),
(92, 'cdmx', '8765456777', '1965-04-06', 92, NULL, NULL),
(93, 'cuernavaca', '234567987654', '1995-02-03', 93, NULL, NULL),
(94, 'jiutepec', '345678876543', '2000-04-03', 94, NULL, NULL),
(95, 'leon ', '76543458567', '1965-01-02', 95, NULL, NULL),
(96, 'guerrero', '34567898765', '1974-12-01', 96, NULL, NULL),
(97, 'guerreo', '457887654', '2000-04-01', 97, NULL, NULL),
(98, 'acapulco', '87654345678', '1995-12-04', 98, NULL, NULL),
(99, 'acapulco', '45679876543', '1974-12-04', 99, NULL, NULL),
(100, 'acapulco', '98765437654', '1965-01-05', 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_10_212811_create_table_user', 1),
(6, '2023_11_10_213840_create_table_information', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Roxana', 'isaac@gmail.com', '52dd277e62680afn214n243545465564', NULL, NULL),
(2, 'Samantha', 'sam@gmail.com', '52dd277e6268064354d4n243545465564', NULL, NULL),
(3, 'Fabiola', 'fabi@gmail.com', '533kjb433nl2k3n5435l4kn3l3445gfdd', NULL, NULL),
(4, 'Fabian', 'fabian@gmail.com', 'snvent3n43ln53254354k43654lkkn4l', NULL, NULL),
(5, 'Jesus Omar', 'jesus@gmail.com', 'n3k5n43n532kn5435n43kn543kn43n4k', NULL, NULL),
(6, 'Norma Beatriz', 'arizmendi.beatriz01@gmail.com', 'fosnvdvo132543645knjn35i43n23n4n', NULL, NULL),
(7, 'Daniel', 'email989354@example.com', '52dd277e62680a9b00e5ac0338ed0941', NULL, NULL),
(8, 'Patricia', 'email668230@example.com', '559c0d6575317fd5b231c7a81faec77e', NULL, NULL),
(9, 'Mauricio', 'email745846@example.com', '884dd6ed5e4fa3dfc179c98bcaedab78', NULL, NULL),
(10, 'Lizeth', 'email625467@example.com', 'c3f31ebf8a3c525d7afb207766b9fcc7', NULL, NULL),
(11, 'Brayan', 'email899568@example.com', '1d0b6176a012df23585a027e00bafd92', NULL, NULL),
(12, 'Jose', 'email77863@example.com', '4d74c4febfb7b6ea5922566274fe4212', NULL, NULL),
(13, 'Martha', 'email940767@example.com', '1161753589d344f3129b322986326110', NULL, NULL),
(14, 'Dexter', 'email159077@example.com', 'c9e1c4bf47d74371025149618d94e591', NULL, NULL),
(15, 'Karina', 'email325511@example.com', '4228c1e8d1a50fa3b885d1b75652d78d', NULL, NULL),
(16, 'Anahi', 'email745836@example.com', '30b0299fc688daf7ffc638a977ee4098', NULL, NULL),
(17, 'Pedro', 'email878126@example.com', '1ebecbc70e5a51f402323146af54e544', NULL, NULL),
(18, 'Linda Sofia', 'email112508@example.com', '40fb3907424301fe3a8a822e9c60b108', NULL, NULL),
(19, 'Arturo', 'email291235@example.com', '19d122970b122bb7755caece8b558235', NULL, NULL),
(20, 'Azul', 'email261112@example.com', 'e9139080bcfb2febb25a2f3115030594', NULL, NULL),
(21, 'Jessica', 'email25647@example.com', 'bd1a68b997865d8820842e4c38bcb3c6', NULL, NULL),
(22, 'Michele', 'email1740@example.com', '846d2c7d5af81de8bb60275ea959b622', NULL, NULL),
(23, 'Sharon', 'email446788@example.com', '3cd84b5301bb1a842a866e78e28c5a88', NULL, NULL),
(24, 'Antonio', 'email696066@example.com', '23baace744f56a2376cabfc368b63f4a', NULL, NULL),
(25, 'Dulce ', 'email621999@example.com', 'bd5f485fa831b179faad989990b44f80', NULL, NULL),
(26, 'Tania', 'email966209@example.com', '94701f65e1c51299f39842361497f5fe', NULL, NULL),
(27, 'Wendy', 'email502782@example.com', 'c0fa43aa7737e2501f1d95341ebb86c7', NULL, NULL),
(28, 'David', 'email134968@example.com', '5179814c53dd696f8612062c41d8d0aa', NULL, NULL),
(29, 'name833024', 'email222362@example.com', 'ec64b81ecf481d67fc1b5b493504ea7d', NULL, NULL),
(30, 'Hugo', 'email144834@example.com', '8c70bbfae53e18c4655d4cf7f9047839', NULL, NULL),
(31, 'Cesar', 'email582955@example.com', '7c1a36627713ce0eb37cb5e1f515e36c', NULL, NULL),
(32, 'Sebastian', 'email725879@example.com', 'b351415273c29fb93c6e5351cfb5a105', NULL, NULL),
(33, 'Yazmin', 'email330586@example.com', 'b72bb620ab79da4c55f95713ed8efb96', NULL, NULL),
(34, 'Charlie', 'email848139@example.com', 'a02d9ce725c5d83a9bb0d4792001357c', NULL, NULL),
(35, 'Marisol', 'email925306@example.com', '10b3a54c2023fa0dfa6212a7ac38f099', NULL, NULL),
(36, 'Regina Morales', 'email124793@example.com', 'ec1b80fe113b804bbb543177fd2934dc', NULL, NULL),
(37, 'Micaela', 'email181@example.com', '86397051fbcf0901c64920604ceffa87', NULL, NULL),
(38, 'Pablo Jose', 'email645085@example.com', '4e498fda77f047a1c6f3ad865f8b50af', NULL, NULL),
(39, 'Tomas', 'email601911@example.com', '94be177547f0aae9aa80b95ec7efe2d1', NULL, NULL),
(40, 'Ricardo', 'email735651@example.com', '5c939bd5c315a31f0535c6308dfbbbb7', NULL, NULL),
(41, 'Emiliano', 'email600526@example.com', 'dcb99ed32d2f120b45020839935fc321', NULL, NULL),
(42, 'Jose Lopez', 'email179551@example.com', '82a9762a3e86a7d0046d5c978a84fe52', NULL, NULL),
(43, 'Harumi', 'email149901@example.com', '6f8f59105024e4b025b8e3ac89b533b6', NULL, NULL),
(44, 'Rufina', 'email144206@example.com', '3bf8c636e575c8f472a43bd184c0201b', NULL, NULL),
(45, 'Yadira', 'email489178@example.com', '1fc71696851c14a7e50b93db9926b46b', NULL, NULL),
(46, 'Axel', 'email240734@example.com', '514f80a0593a46b063979dd34d68f674', NULL, NULL),
(47, 'Johana', 'email50963@example.com', '838dc461e0578098aa30dde02d26238e', NULL, NULL),
(48, 'Tatiana', 'email577257@example.com', '95cfe44586d0d2e076221a9804561b24', NULL, NULL),
(49, 'Maria', 'email804554@example.com', '6474b009133ec75b99a759163ea260bb', NULL, NULL),
(50, 'Florencia', 'email778429@example.com', 'd9909227eb979725af5decb2a12143fe', NULL, NULL),
(51, 'Consuelo', 'email551411@example.com', '6442a6427a2a943ddc4b31ca87938cd3', NULL, NULL),
(52, 'Angela', 'email95317@example.com', 'a52bb78f140fb6c7a1ccfbf8fe67bb5a', NULL, NULL),
(53, 'Itzel', 'email737307@example.com', '223365ec606a6a247be577bbd869a8c6', NULL, NULL),
(54, 'Betzy', 'email411013@example.com', '334d21fc7ff02dbfda3bc013f1d349df', NULL, NULL),
(55, 'Josafath', 'email973780@example.com', '63984db572445717441b5b8bc6a0ab26', NULL, NULL),
(56, 'Manuel', 'email805075@example.com', '1f55f529c64f77669a97ba220fc1591c', NULL, NULL),
(57, 'Alan', 'email114005@example.com', '97b07024abdc9f09a539da206c5c1fcc', NULL, NULL),
(58, 'Rosa', 'email383409@example.com', '20740f422c4839ca2f549020f24caa3e', NULL, NULL),
(59, 'Manuel', 'email594606@example.com', '63b890e1b58ea7b9f515410abba44505', NULL, NULL),
(60, 'Ana Maria', 'email216456@example.com', 'c70bf6536ff35460d682f039623520ea', NULL, NULL),
(61, 'Pablo G', 'email262123@example.com', '28781d604709d2ac06544163d6a7f6e0', NULL, NULL),
(62, 'Margarita', 'email125537@example.com', '56f93cceafb7f596825996cd3a41b42d', NULL, NULL),
(63, 'Max', 'email965638@example.com', 'a00edd4cc3cdb135b823e81742ef6989', NULL, NULL),
(64, 'Brayan Ruiz', 'email861587@example.com', '5a4d756071c45968d6bb003ef3bd719a', NULL, NULL),
(65, 'Andrea', 'email854727@example.com', '666a605bacb3c05d2cf7171310e08b07', NULL, NULL),
(66, 'Sergio', 'email115349@example.com', 'f7fb72f8e48c09da6080f3fb46ddcc91', NULL, NULL),
(67, 'Flor', 'email150344@example.com', 'cf32bcd9b70307e8a2339556f6abaeee', NULL, NULL),
(68, 'Israel', 'email913088@example.com', 'dcb3a7d852d067814b0589013208e5ab', NULL, NULL),
(69, 'Carlos', 'email987823@example.com', '12c6bdd537505a493d422d8298a94d03', NULL, NULL),
(70, 'Beatriz', 'email372514@example.com', 'bd8e4ae9f235f2a54c9dd2c36629a439', NULL, NULL),
(71, 'Victor', 'email129883@example.com', '89522acd7a67951422e151fd6f4c6933', NULL, NULL),
(72, 'Erick', 'email332786@example.com', 'ed1fa5ffc45fd729cc22a0ae4b19c31a', NULL, NULL),
(73, 'Trinidad', 'email116055@example.com', 'c78608170472428352958ab9ca90f7a9', NULL, NULL),
(74, 'Abigail', 'email299178@example.com', 'b2824a01fe397aa276fcb7b991911517', NULL, NULL),
(75, 'Guillermo', 'email800760@example.com', '23392b4d5cccc756068cd28fe0432b9e', NULL, NULL),
(76, 'Arely', 'email983029@example.com', 'e16dc88e8469f984d853ef8f0152a16c', NULL, NULL),
(77, 'Richard', 'email21798@example.com', '7849460ab1ecbd1164c1c2b31dc484fd', NULL, NULL),
(78, 'Alicia', 'email202120@example.com', '9a8aca0392824c812ddfab2595e49fc4', NULL, NULL),
(79, 'Gabriel', 'email581045@example.com', 'ada2ca70282e44b0c8c7cebbc75af8e1', NULL, NULL),
(80, 'Debora', 'email26388@example.com', 'cac863cf98a485e42737bf6e72ee795d', NULL, NULL),
(81, 'Regina', 'email422831@example.com', '691ac89ed276ad27ff8b353880462b16', NULL, NULL),
(82, 'Jose Maria', 'email114033@example.com', '5e699f1f371d08b9b8a095663c06f443', NULL, NULL),
(83, 'Gregorio', 'email706217@example.com', 'ce9c59cbbf93e469a60532329e45f5f3', NULL, NULL),
(84, 'Luis', 'email418502@example.com', '4ca2ffecf338284d63f186161c3b7345', NULL, NULL),
(85, 'Anthon', 'email412306@example.com', '5f1c98be2cc998cc35d4c48e4bd054c8', NULL, NULL),
(86, 'Natividad', 'email684981@example.com', '9e566e0a6c1c7cb0e01114b7339f4ad2', NULL, NULL),
(87, 'Javier', 'email666245@example.com', '6334774bbd1879cad5e659f4153b9755', NULL, NULL),
(88, 'Sandra', 'email805105@example.com', '6acc835292b34c7d208299c422ae39be', NULL, NULL),
(89, 'Luis Antonio', 'email419831@example.com', '63ffd93d6985c547e49bedc3277c997c', NULL, NULL),
(90, 'Gustavo', 'email848699@example.com', '50b7b042ffe943123e64aef95d7a5ebd', NULL, NULL),
(91, 'Oliver', 'email560506@example.com', 'dd9e9fc639ee1d957ea23bec6527223b', NULL, NULL),
(92, 'Victor', 'email925610@example.com', '134311c01654dfa6b2b20929d7a8540a', NULL, NULL),
(93, 'Oscar', 'email915184@example.com', '12ee61e2a685fccdf33138f728c627fb', NULL, NULL),
(94, 'Fabian', 'email223308@example.com', 'dc0cf87a6f73668a1354bbc0b1ba0487', NULL, NULL),
(95, 'Mauricia', 'email154659@example.com', 'b5703e4b92526f9228178cb9f6acb642', NULL, NULL),
(96, 'Patricio Perez', 'email343459@example.com', '8e85dd3d735db2bf81a0126dce5adb5b', NULL, NULL),
(97, 'Brandon', 'email300937@example.com', '1de9a0cc9b76ca1354ac9b9d35625d5b', NULL, NULL),
(98, 'Gabriela', 'email801577@example.com', 'aa967586b53e25331a1c86dfa312ee96', NULL, NULL),
(99, 'Atenea', 'email905@example.com', 'f42cf23e7197c57fc420f92a67ec46cd', NULL, NULL),
(100, 'Horacio', 'email429859@example.com', '8e17a6c71eb5c5815db8d7ac2816789b', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `information_idusuario_foreign` (`idUsuario`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `information`
--
ALTER TABLE `information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `information`
--
ALTER TABLE `information`
  ADD CONSTRAINT `information_idusuario_foreign` FOREIGN KEY (`idUsuario`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
