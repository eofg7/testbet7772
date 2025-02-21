-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 12/07/2024 às 07:14
-- Versão do servidor: 8.0.37-0ubuntu0.22.04.3
-- Versão do PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `chinesa`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_histories`
--

CREATE TABLE `affiliate_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `inviter` int UNSIGNED NOT NULL,
  `commission` decimal(20,2) NOT NULL DEFAULT '0.00',
  `commission_type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deposited` tinyint DEFAULT '0',
  `deposited_amount` decimal(10,2) DEFAULT '0.00',
  `losses` bigint DEFAULT '0',
  `losses_amount` decimal(10,2) DEFAULT '0.00',
  `commission_paid` decimal(10,2) DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receita` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_withdraws`
--

CREATE TABLE `affiliate_withdraws` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `proof` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `pix_key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pix_type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_general_ci,
  `currency` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `symbol` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'home',
  `description` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `banners`
--

INSERT INTO `banners` (`id`, `link`, `image`, `type`, `description`, `created_at`, `updated_at`) VALUES
(17, '#', '01J1D4EBRJG46BVR33TA43YB61.webp', 'home', '...', '2024-04-07 16:29:27', '2024-06-27 15:18:52'),
(18, '#', '01J1D4ESJ2F50MM159PJDVCRXM.webp', 'home', '....', '2024-04-07 16:30:46', '2024-06-27 15:19:07'),
(15, '#', '01J2JVFXVV4FZZ9MGJ5H66P0VR.png', 'carousel', NULL, '2024-04-06 01:58:25', '2024-07-12 07:53:35'),
(8, '#', '01J2JVG90MY20XCKQPQQ2SERRH.png', 'carousel', NULL, '2024-01-13 18:41:09', '2024-07-12 07:53:46'),
(16, '#', '01J1D4DECNQNW8E8TETGZSPF9H.webp', 'home', '...', '2024-04-06 02:03:23', '2024-06-27 15:18:22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `baus`
--

CREATE TABLE `baus` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `bau_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `caminho` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dataS` timestamp NULL DEFAULT NULL,
  `aberto_em` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Populares', 'Populares', 'pupulares.png', 'Populares', '2023-11-13 14:59:07', '2024-07-12 02:00:23'),
(2, 'PGSoft', 'PGSoft', 'pgsot.png', 'PGSoft', '2023-12-24 12:06:46', '2024-07-12 02:07:16'),
(3, 'Pragmatic', 'Pragmatic', 'pragmatic.png', 'Pragmatic', '2023-12-24 12:12:36', '2024-07-12 01:59:20'),
(4, 'Slots Games', 'Popular', 'slotsgames.png', 'slot', '2023-12-24 12:19:42', '2024-07-12 01:59:40'),
(5, 'Ao vivo', 'Roletas', 'live.png', 'Live', '2023-12-24 20:03:48', '2024-07-12 02:00:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `category_game`
--

CREATE TABLE `category_game` (
  `category_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `symbol` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2023-11-07 18:01:38', NULL),
(2, 'Dollars', 'USD', '$', '2023-11-07 18:01:38', NULL),
(3, 'Afghanis', 'AFN', '؋', '2023-11-07 18:01:38', NULL),
(4, 'Pesos', 'ARS', '$', '2023-11-07 18:01:38', NULL),
(5, 'Guilders', 'AWG', 'ƒ', '2023-11-07 18:01:38', NULL),
(6, 'Dollars', 'AUD', '$', '2023-11-07 18:01:38', NULL),
(7, 'New Manats', 'AZN', 'ман', '2023-11-07 18:01:38', NULL),
(8, 'Dollars', 'BSD', '$', '2023-11-07 18:01:38', NULL),
(9, 'Dollars', 'BBD', '$', '2023-11-07 18:01:38', NULL),
(10, 'Rubles', 'BYR', 'p.', '2023-11-07 18:01:38', NULL),
(11, 'Euro', 'EUR', '€', '2023-11-07 18:01:38', NULL),
(12, 'Dollars', 'BZD', 'BZ$', '2023-11-07 18:01:38', NULL),
(13, 'Dollars', 'BMD', '$', '2023-11-07 18:01:38', NULL),
(14, 'Bolivianos', 'BOB', '$b', '2023-11-07 18:01:38', NULL),
(15, 'Convertible Marka', 'BAM', 'KM', '2023-11-07 18:01:38', NULL),
(16, 'Pula', 'BWP', 'P', '2023-11-07 18:01:38', NULL),
(17, 'Leva', 'BGN', 'лв', '2023-11-07 18:01:38', NULL),
(18, 'Reais', 'BRL', 'R$', '2023-11-07 18:01:38', NULL),
(19, 'Pounds', 'GBP', '£', '2023-11-07 18:01:38', NULL),
(20, 'Dollars', 'BND', '$', '2023-11-07 18:01:38', NULL),
(21, 'Riels', 'KHR', '៛', '2023-11-07 18:01:38', NULL),
(22, 'Dollars', 'CAD', '$', '2023-11-07 18:01:38', NULL),
(23, 'Dollars', 'KYD', '$', '2023-11-07 18:01:38', NULL),
(24, 'Pesos', 'CLP', '$', '2023-11-07 18:01:38', NULL),
(25, 'Yuan Renminbi', 'CNY', '¥', '2023-11-07 18:01:38', NULL),
(26, 'Pesos', 'COP', '$', '2023-11-07 18:01:38', NULL),
(27, 'Colón', 'CRC', '₡', '2023-11-07 18:01:38', NULL),
(28, 'Kuna', 'HRK', 'kn', '2023-11-07 18:01:38', NULL),
(29, 'Pesos', 'CUP', '₱', '2023-11-07 18:01:38', NULL),
(30, 'Koruny', 'CZK', 'Kč', '2023-11-07 18:01:38', NULL),
(31, 'Kroner', 'DKK', 'kr', '2023-11-07 18:01:38', NULL),
(32, 'Pesos', 'DOP', 'RD$', '2023-11-07 18:01:38', NULL),
(33, 'Dollars', 'XCD', '$', '2023-11-07 18:01:38', NULL),
(34, 'Pounds', 'EGP', '£', '2023-11-07 18:01:38', NULL),
(35, 'Colones', 'SVC', '$', '2023-11-07 18:01:38', NULL),
(36, 'Pounds', 'FKP', '£', '2023-11-07 18:01:38', NULL),
(37, 'Dollars', 'FJD', '$', '2023-11-07 18:01:38', NULL),
(38, 'Cedis', 'GHC', '¢', '2023-11-07 18:01:38', NULL),
(39, 'Pounds', 'GIP', '£', '2023-11-07 18:01:38', NULL),
(40, 'Quetzales', 'GTQ', 'Q', '2023-11-07 18:01:38', NULL),
(41, 'Pounds', 'GGP', '£', '2023-11-07 18:01:38', NULL),
(42, 'Dollars', 'GYD', '$', '2023-11-07 18:01:38', NULL),
(43, 'Lempiras', 'HNL', 'L', '2023-11-07 18:01:38', NULL),
(44, 'Dollars', 'HKD', '$', '2023-11-07 18:01:38', NULL),
(45, 'Forint', 'HUF', 'Ft', '2023-11-07 18:01:38', NULL),
(46, 'Kronur', 'ISK', 'kr', '2023-11-07 18:01:38', NULL),
(47, 'Rupees', 'INR', 'Rp', '2023-11-07 18:01:38', NULL),
(48, 'Rupiahs', 'IDR', 'Rp', '2023-11-07 18:01:38', NULL),
(49, 'Rials', 'IRR', '﷼', '2023-11-07 18:01:38', NULL),
(50, 'Pounds', 'IMP', '£', '2023-11-07 18:01:38', NULL),
(51, 'New Shekels', 'ILS', '₪', '2023-11-07 18:01:38', NULL),
(52, 'Dollars', 'JMD', 'J$', '2023-11-07 18:01:38', NULL),
(53, 'Yen', 'JPY', '¥', '2023-11-07 18:01:38', NULL),
(54, 'Pounds', 'JEP', '£', '2023-11-07 18:01:38', NULL),
(55, 'Tenge', 'KZT', 'лв', '2023-11-07 18:01:38', NULL),
(56, 'Won', 'KPW', '₩', '2023-11-07 18:01:38', NULL),
(57, 'Won', 'KRW', '₩', '2023-11-07 18:01:38', NULL),
(58, 'Soms', 'KGS', 'лв', '2023-11-07 18:01:38', NULL),
(59, 'Kips', 'LAK', '₭', '2023-11-07 18:01:38', NULL),
(60, 'Lati', 'LVL', 'Ls', '2023-11-07 18:01:38', NULL),
(61, 'Pounds', 'LBP', '£', '2023-11-07 18:01:38', NULL),
(62, 'Dollars', 'LRD', '$', '2023-11-07 18:01:38', NULL),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2023-11-07 18:01:38', NULL),
(64, 'Litai', 'LTL', 'Lt', '2023-11-07 18:01:38', NULL),
(65, 'Denars', 'MKD', 'ден', '2023-11-07 18:01:38', NULL),
(66, 'Ringgits', 'MYR', 'RM', '2023-11-07 18:01:38', NULL),
(67, 'Rupees', 'MUR', '₨', '2023-11-07 18:01:38', NULL),
(68, 'Pesos', 'MXN', '$', '2023-11-07 18:01:38', NULL),
(69, 'Tugriks', 'MNT', '₮', '2023-11-07 18:01:38', NULL),
(70, 'Meticais', 'MZN', 'MT', '2023-11-07 18:01:38', NULL),
(71, 'Dollars', 'NAD', '$', '2023-11-07 18:01:38', NULL),
(72, 'Rupees', 'NPR', '₨', '2023-11-07 18:01:38', NULL),
(73, 'Guilders', 'ANG', 'ƒ', '2023-11-07 18:01:38', NULL),
(74, 'Dollars', 'NZD', '$', '2023-11-07 18:01:38', NULL),
(75, 'Cordobas', 'NIO', 'C$', '2023-11-07 18:01:38', NULL),
(76, 'Nairas', 'NGN', '₦', '2023-11-07 18:01:38', NULL),
(77, 'Krone', 'NOK', 'kr', '2023-11-07 18:01:38', NULL),
(78, 'Rials', 'OMR', '﷼', '2023-11-07 18:01:38', NULL),
(79, 'Rupees', 'PKR', '₨', '2023-11-07 18:01:38', NULL),
(80, 'Balboa', 'PAB', 'B/.', '2023-11-07 18:01:38', NULL),
(81, 'Guarani', 'PYG', 'Gs', '2023-11-07 18:01:38', NULL),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2023-11-07 18:01:38', NULL),
(83, 'Pesos', 'PHP', 'Php', '2023-11-07 18:01:38', NULL),
(84, 'Zlotych', 'PLN', 'zł', '2023-11-07 18:01:38', NULL),
(85, 'Rials', 'QAR', '﷼', '2023-11-07 18:01:38', NULL),
(86, 'New Lei', 'RON', 'lei', '2023-11-07 18:01:38', NULL),
(87, 'Rubles', 'RUB', 'руб', '2023-11-07 18:01:38', NULL),
(88, 'Pounds', 'SHP', '£', '2023-11-07 18:01:38', NULL),
(89, 'Riyals', 'SAR', '﷼', '2023-11-07 18:01:38', NULL),
(90, 'Dinars', 'RSD', 'Дин.', '2023-11-07 18:01:38', NULL),
(91, 'Rupees', 'SCR', '₨', '2023-11-07 18:01:38', NULL),
(92, 'Dollars', 'SGD', '$', '2023-11-07 18:01:38', NULL),
(93, 'Dollars', 'SBD', '$', '2023-11-07 18:01:38', NULL),
(94, 'Shillings', 'SOS', 'S', '2023-11-07 18:01:38', NULL),
(95, 'Rand', 'ZAR', 'R', '2023-11-07 18:01:38', NULL),
(96, 'Rupees', 'LKR', '₨', '2023-11-07 18:01:38', NULL),
(97, 'Kronor', 'SEK', 'kr', '2023-11-07 18:01:38', NULL),
(98, 'Dollars', 'SRD', '$', '2023-11-07 18:01:38', NULL),
(99, 'Pounds', 'SYP', '£', '2023-11-07 18:01:38', NULL),
(100, 'New Dollars', 'TWD', 'NT$', '2023-11-07 18:01:38', NULL),
(101, 'Baht', 'THB', '฿', '2023-11-07 18:01:38', NULL),
(102, 'Dollars', 'TTD', 'TT$', '2023-11-07 18:01:38', NULL),
(103, 'Lira', 'TRY', '₺', '2023-11-07 18:01:38', NULL),
(104, 'Liras', 'TRL', '£', '2023-11-07 18:01:38', NULL),
(105, 'Dollars', 'TVD', '$', '2023-11-07 18:01:38', NULL),
(106, 'Hryvnia', 'UAH', '₴', '2023-11-07 18:01:38', NULL),
(107, 'Pesos', 'UYU', '$U', '2023-11-07 18:01:38', NULL),
(108, 'Sums', 'UZS', 'лв', '2023-11-07 18:01:38', NULL),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2023-11-07 18:01:38', NULL),
(110, 'Dong', 'VND', '₫', '2023-11-07 18:01:38', NULL),
(111, 'Rials', 'YER', '﷼', '2023-11-07 18:01:38', NULL),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2023-11-07 18:01:38', NULL),
(113, 'Rupees', 'INR', '₹', '2023-11-07 18:01:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `currency_alloweds`
--

CREATE TABLE `currency_alloweds` (
  `id` bigint UNSIGNED NOT NULL,
  `currency_id` bigint UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `custom_layouts`
--

CREATE TABLE `custom_layouts` (
  `id` bigint UNSIGNED NOT NULL,
  `font_family_default` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_color` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#0073D2',
  `primary_opacity_color` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `secundary_color` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#084375',
  `gray_dark_color` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#3b3b3b',
  `gray_light_color` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#c9c9c9',
  `gray_medium_color` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#676767',
  `gray_over_color` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#1A1C20',
  `title_color` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#ffffff',
  `text_color` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#98A7B5',
  `sub_text_color` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#656E78',
  `placeholder_color` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#4D565E',
  `background_color` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#24262B',
  `background_base` varchar(20) COLLATE utf8mb4_general_ci DEFAULT '#ECEFF1',
  `background_base_dark` varchar(20) COLLATE utf8mb4_general_ci DEFAULT '#24262B',
  `carousel_banners` varchar(20) COLLATE utf8mb4_general_ci DEFAULT '#1E2024',
  `carousel_banners_dark` varchar(20) COLLATE utf8mb4_general_ci DEFAULT '#1E2024',
  `sidebar_color` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sidebar_color_dark` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `navtop_color` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `navtop_color_dark` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `side_menu` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `side_menu_dark` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `input_primary` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `input_primary_dark` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `footer_color` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `footer_color_dark` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_color` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_color_dark` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `border_radius` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '.25rem',
  `custom_css` text COLLATE utf8mb4_general_ci,
  `custom_js` text COLLATE utf8mb4_general_ci,
  `custom_header` longtext COLLATE utf8mb4_general_ci,
  `custom_body` longtext COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telegram` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `whastapp` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `custom_layouts`
--

INSERT INTO `custom_layouts` (`id`, `font_family_default`, `primary_color`, `primary_opacity_color`, `secundary_color`, `gray_dark_color`, `gray_light_color`, `gray_medium_color`, `gray_over_color`, `title_color`, `text_color`, `sub_text_color`, `placeholder_color`, `background_color`, `background_base`, `background_base_dark`, `carousel_banners`, `carousel_banners_dark`, `sidebar_color`, `sidebar_color_dark`, `navtop_color`, `navtop_color_dark`, `side_menu`, `side_menu_dark`, `input_primary`, `input_primary_dark`, `footer_color`, `footer_color_dark`, `card_color`, `card_color_dark`, `border_radius`, `custom_css`, `custom_js`, `custom_header`, `custom_body`, `created_at`, `updated_at`, `instagram`, `facebook`, `telegram`, `twitter`, `whastapp`, `youtube`) VALUES
(1, '\'Roboto Condensed\', sans-serif', '#5a2394', '#bd32cc', '#de8bff', '#3b3b3b', '#efefef', '#d4d4d4', '#191A1E', '#ffffff', '#98A7B5', '#656E78', '#4D565E', '#4030b8', '#6b32a8', '#6b32a8', '#dbdbdb', '#93727200', '#0f1923', '#30b878', '#ffffff0e', '#0f1923', '#dbdbdb', '#0f1923', '#ffffff', '#ffffff', '#919191', '#0f1923', '#ababab', '#1E2024', '.25rem', '\n', '<div class=\"w-full relative\">\n    <div class=\"text-[var(--theme-text-color)] font-bold my-[20px] text-[22px] w-full min-h-[24px] text-center leading-[1.3]\">\n        <span class=\"w-full -mb-[2.58824px] pb-[-2.58824px] text-[22px] inline-block leading-[0] overflow-hidden\">\n            <span class=\"text-[14.9067px] sm:text-[22px] inline-block w-full\">\n                <span class=\"leading-[1.2] [overflow:initial] text-center overflow-ellipsis align-middle\" style=\"-webkit-line-clamp: 5;\">\n                    🎁 Venha se Divertir no maior site do Brasil\n                </span>\n            </span>\n        </span>\n    </div>\n    <div class=\"text-[var(--theme-text-color)] pb-[20px] sm:pb-0 sm:h-[405px] text-[14px] leading-[1.56] text-left w-full\">\n        <div class=\"w-full h-full px-[30px]\">\n            <div class=\"sm:h-full overflow-x-hidden overflow-y-scroll [scrollbar-width:none]\">\n                <div class=\"my-scrollbar-content\">\n                    <div class=\"D4IXpi08hh8lVGgzIBUz\">\n                        <div>\n                            <p class=\"mb-0\">\n                                ✈️Clique no canal:\n                                <a href=\"https://t.me/+dFr8-1AmUz5hZDc5\" target=\"_blank\" rel=\"noopener\">\n                                    <span style=\"color: #ffeb00;\">Telegram</span>\n                                </a>\n                                <br>📲Baixe o site oficial do APP:\n                                <a href=\"https://t.me/+dFr8-1AmUz5hZDc5\" target=\"_blank\" rel=\"noopener\">\n                                    <span style=\"color: #ffeb00;\">Daanrox​​.com</span>\n                                </a>\n                                <br>❤️Convide amigos e ganhe\n                                <span style=\"color: #ffeb00;\">10 mil</span>\n                                reais por dia não é sonho❤️\n                                <br>🎁Bônus de primeiro depósito para novos usuários\n                                <span style=\"color: #ffeb00;\">10%</span>\n                                <br>🎁 Bônus convite:\n                                <span style=\"color: #ffeb00;\">R$ 10</span>\n                                por pessoa\n                                <br>🎁 Convide amigos, compartilhe e ganhe dinheiro! Comissão\n                                <span style=\"color: #ffeb00;\"> até 2%</span>\n                                <br>🎁 Recompensas e privilégios de associação VIP de até\n                                <span style=\"color: #ffeb00;\">R$ 777.777</span>\n                                <br>👉 Passos: Visitar → Eventos/Promoções → Recomendar amigos → Receber/Receber\n                            </p>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n\n\n\n', '', '<a href=\"https://t.me/+dFr8-1AmUz5hZDc5\" target=\"_blank\" class=\"float1\" id=\"float1\">\n  <img class=\"icon\" src=\"https://wordpress-731680-3807664.cloudwaysapps.com/wp-content/uploads/2024/04/ActiveImg7532580654847733-1.gif\"/>\n</a>\n<button class=\"close-btn\" onclick=\"hideFloat1()\"><i class=\"fa-regular fa-circle-xmark\"></i></button>\n\n<style>\n  :root {\n    --icon-color: #fff;\n    --icon-hover: #fff;\n    --background-color: #0060ff;\n    --background-hover: #0044b3;\n  }\n\n  .icon {\n    width: 110px;\n    height: 110px;\n    transform: scale(0.6) translate(15%, 28%);\n  }\n\n  .float1 {\n    position: fixed;\n    cursor: pointer;\n    width: 110px;\n    height: 110px;\n    bottom: 140px;\n    right: 0px;\n    transition: 1s;\n    z-index: 9000;\n  }\n\n  .close-btn {\n    position: fixed;\n    bottom: 200px; /* Ajuste conforme necessário */\n    right: 10px; /* Ajuste conforme necessário */\n    width: 20px;\n    height: 20px;\n   background-color: var(--ci-primary-color);\n    color: var(--ci-secundary-color);\n    border: none;\n    border-radius: 50%;\n    cursor: pointer;\n    z-index: 9001; /* Um nível acima da float2 */\n  }\n\n  .close-btn:hover {\n    background-color: var(--background-hover);\n  }\n\n  @keyframes pulse {\n    0% {\n      -webkit-box-shadow: 0 0 0 0 rgba(0, 96, 255, 1);\n    }\n\n    70% {\n      -webkit-box-shadow: 0 0 0 20px rgba(0, 96, 255, 0);\n    }\n\n    100% {\n      -webkit-box-shadow: 0 0 0 0 rgba(0, 96, 255, 0);\n    }\n  }\n\n\n</style>\n\n<script>\n  function hideFloat1() {\n    document.getElementById(\'float1\').style.display = \'none\';\n    document.querySelector(\'.close-btn\').style.display = \'none\';\n  }\n</script>\n\n<a href=\"/home/agents\" class=\"float2\" id=\"float2\">\n  <img class=\"icon\" src=\"/storage/rox/rox_gif_post.gif\"/>\n</a>\n<button class=\"close-btn2\" onclick=\"hideFloat2()\"><i class=\"fa-regular fa-circle-xmark\"></i></button>\n\n<style>\n  :root {\n    --icon-color: #fff;\n    --icon-hover: #fff;\n    --background-color: #0060ff;\n    --background-hover: #0044b3;\n  }\n\n \n  .float2 {\n    position: fixed;\n    cursor: pointer;\n    width: 110px;\n    height: 110px;\n    bottom: 230px;\n    right: 5px;\n    transition: 1s;\n    z-index: 9000;\n  }\n\n  .close-btn2 {\n    position: fixed;\n    bottom: 280px; /* Ajuste conforme necessário */\n    right: 10px; /* Ajuste conforme necessário */\n    width: 20px;\n    height: 20px;\n    background-color: var(--ci-primary-color);\n    color: var(--ci-secundary-color);\n    border: none;\n    border-radius: 50%;\n    cursor: pointer;\n    z-index: 9001; /* Um nível acima da float2 */\n  }\n\n  .close-btn2:hover {\n    background-color: var(--background-hover);\n  }\n\n\n\n\n</style>\n\n<script>\n  function hideFloat2() {\n    document.getElementById(\'float2\').style.display = \'none\';\n    document.querySelector(\'.close-btn2\').style.display = \'none\';\n  }\n</script>', '2024-01-01 14:36:03', '2024-07-12 07:55:14', 'https://golden.braboscode.com/#', 'https://golden.braboscode.com/#', 'https://golden.braboscode.com/#', 'https://golden.braboscode.com/#', 'https://golden.braboscode.com/#', 'https://golden.braboscode.com/#');

-- --------------------------------------------------------

--
-- Estrutura para tabela `debug`
--

CREATE TABLE `debug` (
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `debug`
--

INSERT INTO `debug` (`text`) VALUES
('\"PlaceBet: 914806915\"'),
('\"PlaceBet: 914806915\"'),
('\"AwardWinnings: 914806915\"'),
('\"PlaceBet: 914806916\"'),
('\"AwardWinnings: 914806916\"'),
('\"PlaceBet: 914806916\"'),
('\"PlaceBet: 914806917\"'),
('\"PlaceBet: 914806918\"'),
('\"AwardWinnings: 914806918\"'),
('\"PlaceBet: 914806918\"'),
('\"PlaceBet: 914806919\"'),
('\"AwardWinnings: 914806919\"'),
('\"AwardWinnings: 914806919\"'),
('\"PlaceBet: 914806920\"'),
('\"PlaceBet: 914806921\"'),
('\"AwardWinnings: 914806921\"'),
('\"PlaceBet: 535367\"'),
('\"PlaceBet: 154646\"'),
('\"PlaceBet: 914806922\"'),
('\"PlaceBet: 914806923\"'),
('\"PlaceBet: 914806924\"'),
('\"AwardWinnings: 914806924\"'),
('{\"idTransaction\":\"875dcfac-f963-4a70-90ef-ad3c357d3f7b\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"value\":150,\"destinationName\":\"Julia Ayumi Imada De Lima\",\"destinationTaxId\":\"***.373.478-**\",\"destinationBank\":\"PICPAY\"}'),
('{\"idTransaction\":\"1979e952-67cb-4924-a463-b79e2716804b\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"value\":177,\"destinationName\":\"Anne Ferreira\",\"destinationTaxId\":\"***.916.418-**\",\"destinationBank\":\"NUBANK\"}'),
('{\"idTransaction\":\"ec707f26-d5b9-4d0b-85cf-56a4d518144b\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"value\":181,\"destinationName\":\"Anne Ferreira\",\"destinationTaxId\":\"***.916.418-**\",\"destinationBank\":\"NUBANK\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `proof` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `currency` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `symbol` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `deposits`
--

INSERT INTO `deposits` (`id`, `payment_id`, `user_id`, `amount`, `type`, `proof`, `status`, `currency`, `symbol`, `created_at`, `updated_at`) VALUES
(177, '40568626-fecb-4afd-b9f2-fc8d244132da', 1, 30.00, 'pix', NULL, 0, 'BRL', 'R$', '2024-07-12 07:58:20', '2024-07-12 07:58:20'),
(178, '2f5d60d1-6874-4c84-930e-a1011f135694', 1, 30.00, 'pix', NULL, 0, 'BRL', 'R$', '2024-07-12 08:13:30', '2024-07-12 08:13:30');

-- --------------------------------------------------------

--
-- Estrutura para tabela `digito_pay_payments`
--

CREATE TABLE `digito_pay_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `withdrawal_id` int UNSIGNED NOT NULL,
  `pix_key` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `pix_type` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `observation` text COLLATE utf8mb4_general_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `connection` text COLLATE utf8mb4_general_ci NOT NULL,
  `queue` text COLLATE utf8mb4_general_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `games`
--

CREATE TABLE `games` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_id` int UNSIGNED NOT NULL,
  `game_server_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `game_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `game_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `game_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `game_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cover` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `technology` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `has_lobby` tinyint NOT NULL DEFAULT '0',
  `is_mobile` tinyint NOT NULL DEFAULT '0',
  `has_freespins` tinyint NOT NULL DEFAULT '0',
  `has_tables` tinyint NOT NULL DEFAULT '0',
  `only_demo` tinyint DEFAULT '0',
  `rtp` bigint NOT NULL DEFAULT '75',
  `distribution` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `is_featured` tinyint DEFAULT '0',
  `show_home` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `games`
--

INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '126', 'Fortune Tiger', '126', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/126.png', '1', 'html5', 0, 0, 0, 0, 1, 89, 'play_fiver', 186, 1, 1, '2024-05-27 07:25:59', '2024-07-12 08:10:03'),
(2, 1, NULL, '98', 'Fortune OX', '98', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/98.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(3, 1, NULL, '1695365', 'Fortune Dragon', '1695365', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/1695365.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 34, 1, 1, '2024-05-27 07:25:59', '2024-07-12 08:13:52'),
(4, 1, NULL, '1543462', 'Fortune Rabbit', '1543462', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/1543462.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 19, 1, 1, '2024-05-27 07:25:59', '2024-07-12 08:13:27'),
(5, 1, NULL, '68', 'Fortune Mouse', '68', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/68.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 3, 1, 1, '2024-05-27 07:25:59', '2024-06-22 23:27:11'),
(6, 1, NULL, '69', 'Bikini Paradise', '69', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/69.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:30:47'),
(7, 13, NULL, '656', 'Aviator', '656', 'slot', NULL, 'PROVEDOR/SPRIBE/89.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 4, 1, 1, '2024-05-27 07:25:59', '2024-06-22 23:31:36'),
(8, 1, NULL, '48', 'Double Fortune', '48', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/48.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(9, 1, NULL, '63', 'Dragon Tiger Luck', '63', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/63.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 1, 1, '2024-05-27 07:25:59', '2024-06-22 23:30:51'),
(10, 1, NULL, '42', 'Ganesha Gold', '42', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/42.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:30:54'),
(11, 1, NULL, '40', 'Jungle Delight', '40', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/40.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:30:58'),
(12, 2, NULL, 'vs243mwarrior', 'Monkey Warrior', 'vs243mwarrior', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243mwarrior.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 4, 0, 1, '2024-05-27 07:25:59', '2024-05-28 19:48:43'),
(13, 2, NULL, 'vs20doghouse', 'The Dog House', 'vs20doghouse', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20doghouse.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(14, 2, NULL, 'vs40pirate', 'Pirate Gold', 'vs40pirate', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40pirate.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(15, 2, NULL, 'vs20rhino', 'Great Rhino', 'vs20rhino', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20rhino.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(16, 2, NULL, 'vs25pandagold', 'Panda Fortune', 'vs25pandagold', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25pandagold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(17, 2, NULL, 'vs4096bufking', 'Buffalo King', 'vs4096bufking', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs4096bufking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(18, 2, NULL, 'vs25pyramid', 'Pyramid King', 'vs25pyramid', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25pyramid.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(19, 2, NULL, 'vs5ultrab', 'Ultra Burn', 'vs5ultrab', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5ultrab.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(20, 2, NULL, 'vs5ultra', 'Ultra Hold and Spin', 'vs5ultra', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5ultra.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(21, 2, NULL, 'vs25jokerking', 'Joker King', 'vs25jokerking', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25jokerking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(22, 2, NULL, 'vs10returndead', 'Return of the Dead', 'vs10returndead', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10returndead.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(23, 2, NULL, 'vs10madame', 'Madame Destiny', 'vs10madame', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10madame.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(24, 2, NULL, 'vs15diamond', 'Diamond Strike', 'vs15diamond', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs15diamond.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(25, 2, NULL, 'vs25aztecking', 'Aztec King', 'vs25aztecking', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25aztecking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(26, 2, NULL, 'vs25wildspells', 'Wild Spells', 'vs25wildspells', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25wildspells.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(27, 2, NULL, 'vs10bbbonanza', 'Big Bass Bonanza', 'vs10bbbonanza', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10bbbonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:30:38'),
(28, 2, NULL, 'vs10cowgold', 'Cowboys Gold', 'vs10cowgold', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10cowgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(29, 2, NULL, 'vs25tigerwar', 'The Tiger Warrior', 'vs25tigerwar', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25tigerwar.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(30, 2, NULL, 'vs25mustang', 'Mustang Gold', 'vs25mustang', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25mustang.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(31, 2, NULL, 'vs25hotfiesta', 'Hotfiesta', 'vs25hotfiesta', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25hotfiesta.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-05-30 20:22:00'),
(32, 2, NULL, 'vs243dancingpar', 'Dance Party', 'vs243dancingpar', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243dancingpar.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(33, 2, NULL, 'vs576treasures', 'Wild Wild Riches', 'vs576treasures', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs576treasures.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(34, 2, NULL, 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'vs20hburnhs', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20hburnhs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(35, 2, NULL, 'vs20emptybank', 'Empty the Bank', 'vs20emptybank', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20emptybank.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(36, 2, NULL, 'vs20midas', 'The Hand of Midas', 'vs20midas', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20midas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(37, 2, NULL, 'vs20olympgate', 'Gates of Olympus', 'vs20olympgate', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20olympgate.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(38, 2, NULL, 'vswayslight', 'Lucky Lightning', 'vswayslight', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayslight.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(39, 2, NULL, 'vs20vegasmagic', 'Vegas Magic', 'vs20vegasmagic', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20vegasmagic.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(40, 2, NULL, 'vs20fruitparty', 'Fruit Party', 'vs20fruitparty', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20fruitparty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(41, 2, NULL, 'vs20fparty2', 'Fruit Party 2', 'vs20fparty2', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20fparty2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(42, 2, NULL, 'vswaysdogs', 'The Dog House Megaways', 'vswaysdogs', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysdogs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(43, 2, NULL, 'vs50juicyfr', 'Juicy Fruits', 'vs50juicyfr', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs50juicyfr.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(44, 2, NULL, 'vs25pandatemple', 'Panda Fortune 2', 'vs25pandatemple', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25pandatemple.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(45, 2, NULL, 'vswaysbufking', 'Buffalo King Megaways', 'vswaysbufking', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysbufking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(46, 2, NULL, 'vs40wildwest', 'Wild West Gold', 'vs40wildwest', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40wildwest.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(47, 2, NULL, 'vs20chickdrop', 'Chicken Drop', 'vs20chickdrop', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20chickdrop.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(48, 2, NULL, 'vs40spartaking', 'Spartan King', 'vs40spartaking', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40spartaking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(49, 2, NULL, 'vswaysrhino', 'Great Rhino Megaways', 'vswaysrhino', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysrhino.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(50, 2, NULL, 'vs20sbxmas', 'Sweet Bonanza Xmas', 'vs20sbxmas', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20sbxmas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(51, 2, NULL, 'vs10fruity2', 'Extra Juicy', 'vs10fruity2', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10fruity2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(52, 2, NULL, 'vs10egypt', 'Ancient Egypt', 'vs10egypt', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10egypt.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(53, 2, NULL, 'vs5drhs', 'Dragon Hot Hold and Spin', 'vs5drhs', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5drhs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(54, 2, NULL, 'vs12bbb', 'Bigger Bass Bonanza', 'vs12bbb', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs12bbb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:30:42'),
(55, 2, NULL, 'vs20tweethouse', 'The Tweety House', 'vs20tweethouse', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20tweethouse.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(56, 2, NULL, 'vswayslions', '5 Lions Megaways', 'vswayslions', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayslions.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(57, 2, NULL, 'vswayssamurai', 'Rise of Samurai Megaways', 'vswayssamurai', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayssamurai.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(58, 2, NULL, 'vs50pixie', 'Pixie Wings', 'vs50pixie', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs50pixie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(59, 2, NULL, 'vs10floatdrg', 'Floating Dragon', 'vs10floatdrg', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10floatdrg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(60, 2, NULL, 'vs20fruitsw', 'Sweet Bonanza', 'vs20fruitsw', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20fruitsw.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(61, 2, NULL, 'vs20rhinoluxe', 'Great Rhino Deluxe', 'vs20rhinoluxe', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20rhinoluxe.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(62, 2, NULL, 'vswaysmadame', 'Madame Destiny Megaways', 'vswaysmadame', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysmadame.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(63, 2, NULL, 'vs1024temuj', 'Temujin Treasures', 'vs1024temuj', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1024temuj.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(64, 2, NULL, 'vs40pirgold', 'Pirate Gold Deluxe', 'vs40pirgold', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40pirgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(65, 2, NULL, 'vs25mmouse', 'Money Mouse', 'vs25mmouse', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25mmouse.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(66, 2, NULL, 'vs10threestar', 'Three Star Fortune', 'vs10threestar', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10threestar.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(67, 2, NULL, 'vs1ball', 'Lucky Dragon Ball', 'vs1ball', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1ball.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(68, 2, NULL, 'vs243lionsgold', '5 Lions', 'vs243lionsgold', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243lionsgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(69, 2, NULL, 'vs10egyptcls', 'Ancient Egypt Classic', 'vs10egyptcls', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10egyptcls.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(70, 2, NULL, 'vs25davinci', 'Da Vinci Treasure', 'vs25davinci', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25davinci.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(71, 2, NULL, 'vs7776secrets', 'Aztec Treasure', 'vs7776secrets', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs7776secrets.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(72, 2, NULL, 'vs25wolfgold', 'Wolf Gold', 'vs25wolfgold', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25wolfgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(73, 2, NULL, 'vs50safariking', 'Safari King', 'vs50safariking', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs50safariking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(74, 2, NULL, 'vs25peking', 'Peking Luck', 'vs25peking', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25peking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(75, 2, NULL, 'vs25asgard', 'Asgard', 'vs25asgard', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25asgard.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(76, 2, NULL, 'vs25vegas', 'Vegas Nights', 'vs25vegas', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25vegas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(77, 2, NULL, 'vs25scarabqueen', 'John Hunter and the Tomb of the Scarab Queen', 'vs25scarabqueen', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25scarabqueen.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(78, 2, NULL, 'vs20starlight', 'Starlight Princess', 'vs20starlight', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20starlight.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(79, 2, NULL, 'vs10bookoftut', 'John Hunter and the Book of Tut', 'vs10bookoftut', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10bookoftut.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(80, 2, NULL, 'vs9piggybank', 'Piggy Bank Bills', 'vs9piggybank', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs9piggybank.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(81, 2, NULL, 'vs5drmystery', 'Dragon Kingdom Mystery', 'vs5drmystery', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5drmystery.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(82, 2, NULL, 'vs20eightdragons', 'Eight Dragons', 'vs20eightdragons', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20eightdragons.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(83, 2, NULL, 'vs1024lionsd', '5 Lions Dance', 'vs1024lionsd', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1024lionsd.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(84, 2, NULL, 'vs25rio', 'Heart of Rio', 'vs25rio', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25rio.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(85, 2, NULL, 'vs10nudgeit', 'Rise of Giza PowerNudge', 'vs10nudgeit', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10nudgeit.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(86, 2, NULL, 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'vs10bxmasbnza', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10bxmasbnza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(87, 2, NULL, 'vs20santawonder', 'Santa s Wonderland', 'vs20santawonder', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20santawonder.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(88, 2, NULL, 'vs10bblpop', 'Bubble Pop', 'vs10bblpop', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10bblpop.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(89, 2, NULL, 'vs25btygold', 'Bounty Gold', 'vs25btygold', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25btygold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(90, 2, NULL, 'vs88hockattack', 'Hockey Attack(tm)', 'vs88hockattack', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs88hockattack.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(91, 2, NULL, 'vswaysbbb', 'Big Bass Bonanza Megaways(tm)', 'vswaysbbb', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysbbb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(92, 2, NULL, 'vs10bookfallen', 'Book of the Fallen', 'vs10bookfallen', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10bookfallen.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(93, 2, NULL, 'vs40bigjuan', 'Big Juan', 'vs40bigjuan', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40bigjuan.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(94, 2, NULL, 'vs20bermuda', 'John Hunter and the Quest for Bermuda Riches', 'vs20bermuda', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20bermuda.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(95, 2, NULL, 'vs10starpirate', 'Star Pirates Code', 'vs10starpirate', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10starpirate.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(96, 2, NULL, 'vswayswest', 'Mystic Chief', 'vswayswest', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayswest.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(97, 2, NULL, 'vs20daydead', 'Day of Dead', 'vs20daydead', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20daydead.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(98, 2, NULL, 'vs20candvil', 'Candy Village', 'vs20candvil', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20candvil.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(99, 2, NULL, 'vs20wildboost', 'Wild Booster', 'vs20wildboost', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20wildboost.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(100, 2, NULL, 'vswayshammthor', 'Power of Thor Megaways', 'vswayshammthor', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayshammthor.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-05-28 20:39:20'),
(101, 2, NULL, 'vs243lions', '5 Lions', 'vs243lions', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243lions.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(102, 2, NULL, 'vs5super7', 'Super 7s', 'vs5super7', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5super7.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(103, 2, NULL, 'vs1masterjoker', 'Master Joker', 'vs1masterjoker', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1masterjoker.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 2, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:12:39'),
(104, 2, NULL, 'vs20kraken', 'Release the Kraken', 'vs20kraken', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20kraken.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(105, 2, NULL, 'vs10firestrike', 'Fire Strike', 'vs10firestrike', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10firestrike.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(106, 2, NULL, 'vs243fortune', 'Caishen s Gold', 'vs243fortune', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(107, 2, NULL, 'vs20aladdinsorc', 'Aladdin and the Sorcerrer', 'vs20aladdinsorc', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20aladdinsorc.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(108, 2, NULL, 'vs243fortseren', 'Greek Gods', 'vs243fortseren', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243fortseren.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(109, 2, NULL, 'vs25chilli', 'Chilli Heat', 'vs25chilli', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25chilli.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(110, 2, NULL, 'vs8magicjourn', 'Magic Journey', 'vs8magicjourn', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs8magicjourn.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(111, 2, NULL, 'vs20leprexmas', 'Leprechaun Carol', 'vs20leprexmas', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20leprexmas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(112, 2, NULL, 'vs7pigs', '7 Piggies', 'vs7pigs', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs7pigs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(113, 2, NULL, 'vs243caishien', 'Caishen s Cash', 'vs243caishien', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243caishien.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(114, 2, NULL, 'vs5joker', 'Joker s Jewels', 'vs5joker', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5joker.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(115, 2, NULL, 'vs25gladiator', 'Wild Gladiator', 'vs25gladiator', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25gladiator.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(116, 2, NULL, 'vs25goldpig', 'Golden Pig', 'vs25goldpig', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25goldpig.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(117, 2, NULL, 'vs25goldrush', 'Gold Rush', 'vs25goldrush', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25goldrush.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(118, 2, NULL, 'vs25dragonkingdom', 'Dragon Kingdom', 'vs25dragonkingdom', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25dragonkingdom.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(119, 2, NULL, 'vs1dragon8', '888 Dragons', 'vs1dragon8', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1dragon8.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(120, 2, NULL, 'vs5aztecgems', 'Aztec Gems', 'vs5aztecgems', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5aztecgems.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(121, 2, NULL, 'vs20hercpeg', 'Hercules and Pegasus', 'vs20hercpeg', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20hercpeg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(122, 2, NULL, 'vs7fire88', 'Fire 88', 'vs7fire88', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs7fire88.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(123, 2, NULL, 'vs20honey', 'Honey Honey Honey', 'vs20honey', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20honey.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(124, 2, NULL, 'vs25safari', 'Hot Safari', 'vs25safari', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25safari.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(125, 2, NULL, 'vs25journey', 'Journey to the West', 'vs25journey', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25journey.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(126, 2, NULL, 'vs20chicken', 'The Great Chicken Escape', 'vs20chicken', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20chicken.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(127, 2, NULL, 'vs1fortunetree', 'Tree of Riches', 'vs1fortunetree', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1fortunetree.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(128, 2, NULL, 'vs20wildpix', 'Wild Pixies', 'vs20wildpix', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20wildpix.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(129, 2, NULL, 'vs15fairytale', 'Fairytale Fortune', 'vs15fairytale', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs15fairytale.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(130, 2, NULL, 'vs20santa', 'Santa', 'vs20santa', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20santa.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(131, 2, NULL, 'vs10vampwolf', 'Vampires vs Wolves', 'vs10vampwolf', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10vampwolf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(132, 2, NULL, 'vs50aladdin', '3 Genie Wishes', 'vs50aladdin', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs50aladdin.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(133, 2, NULL, 'vs50hercules', 'Hercules Son of Zeus', 'vs50hercules', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs50hercules.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(134, 2, NULL, 'vs7776aztec', 'Aztec Bonanza', 'vs7776aztec', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs7776aztec.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(135, 2, NULL, 'vs5trdragons', 'Triple Dragons', 'vs5trdragons', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5trdragons.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(136, 2, NULL, 'vs40madwheel', 'The Wild Machine', 'vs40madwheel', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40madwheel.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(137, 2, NULL, 'vs25newyear', 'Lucky New Year', 'vs25newyear', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25newyear.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(138, 2, NULL, 'vs40frrainbow', 'Fruit Rainbow', 'vs40frrainbow', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40frrainbow.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(139, 2, NULL, 'vs50kingkong', 'Mighty Kong', 'vs50kingkong', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs50kingkong.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(140, 2, NULL, 'vs20godiva', 'Lady Godiva', 'vs20godiva', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20godiva.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(141, 2, NULL, 'vs9madmonkey', 'Monkey Madness', 'vs9madmonkey', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs9madmonkey.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(142, 2, NULL, 'vs1tigers', 'Triple Tigers', 'vs1tigers', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1tigers.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(143, 2, NULL, 'vs9chen', 'Master Chen s Fortune', 'vs9chen', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs9chen.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(144, 2, NULL, 'vs5hotburn', 'Hot to burn', 'vs5hotburn', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5hotburn.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(145, 2, NULL, 'vs25dwarves_new', 'Dwarven Gold Deluxe', 'vs25dwarves_new', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25dwarves_new.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(146, 2, NULL, 'vs25sea', 'Great Reef', 'vs25sea', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25sea.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(147, 2, NULL, 'vs20leprechaun', 'Leprechaun Song', 'vs20leprechaun', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20leprechaun.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(148, 2, NULL, 'vs7monkeys', '7 Monkeys', 'vs7monkeys', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs7monkeys.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(149, 2, NULL, 'vs50chinesecharms', 'Lucky Dragons', 'vs50chinesecharms', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs50chinesecharms.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(150, 2, NULL, 'vs18mashang', 'Treasure Horse', 'vs18mashang', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs18mashang.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(151, 2, NULL, 'vs5spjoker', 'Super Joker', 'vs5spjoker', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5spjoker.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(152, 2, NULL, 'vs20egypttrs', 'Egyptian Fortunes', 'vs20egypttrs', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20egypttrs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(153, 2, NULL, 'vs25queenofgold', 'Queen of Gold', 'vs25queenofgold', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25queenofgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(154, 2, NULL, 'vs9hotroll', 'Hot Chilli', 'vs9hotroll', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs9hotroll.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(155, 2, NULL, 'vs4096jurassic', 'Jurassic Giants', 'vs4096jurassic', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs4096jurassic.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(156, 2, NULL, 'vs3train', 'Gold Train', 'vs3train', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs3train.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(157, 2, NULL, 'vs40beowulf', 'Beowulf', 'vs40beowulf', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40beowulf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(158, 2, NULL, 'vs20bl', 'Busy Bees', 'vs20bl', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20bl.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(159, 2, NULL, 'vs1money', 'Money Money Money', 'vs1money', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1money.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(160, 2, NULL, 'vs1600drago', 'Drago - Jewels of Fortune', 'vs1600drago', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1600drago.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(161, 2, NULL, 'vs1fufufu', 'Fu Fu Fu', 'vs1fufufu', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1fufufu.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(162, 2, NULL, 'vs40streetracer', 'Street Racer', 'vs40streetracer', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40streetracer.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(163, 2, NULL, 'vs9aztecgemsdx', 'Aztec Gems Deluxe', 'vs9aztecgemsdx', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs9aztecgemsdx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(164, 2, NULL, 'vs20gorilla', 'Jungle Gorilla', 'vs20gorilla', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20gorilla.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(165, 2, NULL, 'vswayswerewolf', 'Curse of the Werewolf Megaways', 'vswayswerewolf', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayswerewolf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(166, 2, NULL, 'vswayshive', 'Star Bounty', 'vswayshive', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayshive.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(167, 2, NULL, 'vs25samurai', 'Rise of Samurai', 'vs25samurai', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25samurai.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(168, 2, NULL, 'vs25walker', 'Wild Walker', 'vs25walker', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25walker.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(169, 2, NULL, 'vs20goldfever', 'Gems Bonanza', 'vs20goldfever', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20goldfever.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(170, 2, NULL, 'vs25bkofkngdm', 'Book of Kingdoms', 'vs25bkofkngdm', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25bkofkngdm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(171, 2, NULL, 'vs10goldfish', 'Fishin Reels', 'vs10goldfish', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10goldfish.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(172, 2, NULL, 'vs1024dtiger', 'The Dragon Tiger', 'vs1024dtiger', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1024dtiger.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(173, 2, NULL, 'vs20xmascarol', 'Christmas Carol Megaways', 'vs20xmascarol', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20xmascarol.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(174, 2, NULL, 'vs10mayangods', 'John Hunter and the Mayan Gods', 'vs10mayangods', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10mayangods.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(175, 2, NULL, 'vs20bonzgold', 'Bonanza Gold', 'vs20bonzgold', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20bonzgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(176, 2, NULL, 'vs40voodoo', 'Voodoo Magic', 'vs40voodoo', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40voodoo.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(177, 2, NULL, 'vs25gldox', 'Golden Ox', 'vs25gldox', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25gldox.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(178, 2, NULL, 'vs10wildtut', 'Mysterious Egypt', 'vs10wildtut', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10wildtut.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(179, 2, NULL, 'vs10eyestorm', 'Eye of the Storm', 'vs10eyestorm', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10eyestorm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(180, 2, NULL, 'vs117649starz', 'Starz Megaways', 'vs117649starz', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs117649starz.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(181, 2, NULL, 'vs10amm', 'The Amazing Money Machine', 'vs10amm', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10amm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(182, 2, NULL, 'vs20magicpot', 'The Magic Cauldron - Enchanted Brew', 'vs20magicpot', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20magicpot.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(183, 2, NULL, 'vswayselements', 'Elemental Gems Megaways', 'vswayselements', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayselements.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(184, 2, NULL, 'vswayschilheat', 'Chilli Heat Megaways', 'vswayschilheat', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayschilheat.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(185, 2, NULL, 'vs10luckcharm', 'Lucky Grace And Charm', 'vs10luckcharm', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10luckcharm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(186, 2, NULL, 'vswaysaztecking', 'Aztec King Megaways', 'vswaysaztecking', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysaztecking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(187, 2, NULL, 'vs20phoenixf', 'Phoenix Forge', 'vs20phoenixf', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20phoenixf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(188, 2, NULL, 'vs576hokkwolf', 'Hokkaido Wolf', 'vs576hokkwolf', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs576hokkwolf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(189, 2, NULL, 'vs20trsbox', 'Treasure Wild', 'vs20trsbox', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20trsbox.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(190, 2, NULL, 'vs243chargebull', 'Raging Bull', 'vs243chargebull', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243chargebull.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(191, 2, NULL, 'vswaysbankbonz', 'Cash Bonanza', 'vswaysbankbonz', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysbankbonz.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(192, 2, NULL, 'vs20pbonanza', 'Pyramid Bonanza', 'vs20pbonanza', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20pbonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(193, 2, NULL, 'vs243empcaishen', 'Emperor Caishen', 'vs243empcaishen', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243empcaishen.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(194, 2, NULL, 'vs25tigeryear', 'New Year Tiger Treasures (tm)', 'vs25tigeryear', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25tigeryear.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(195, 2, NULL, 'vs20amuleteg', 'Fortune of Giza(tm)', 'vs20amuleteg', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20amuleteg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(196, 2, NULL, 'vs10runes', 'Gates of Valhalla(tm)', 'vs10runes', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10runes.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(197, 2, NULL, 'vs25goldparty', 'Gold Party(r)', 'vs25goldparty', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25goldparty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(198, 2, NULL, 'vswaysxjuicy', 'Extra Juicy Megaways(tm)', 'vswaysxjuicy', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysxjuicy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(199, 2, NULL, 'vs40wanderw', 'Wild Depths(tm)', 'vs40wanderw', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40wanderw.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(200, 2, NULL, 'vs4096magician', 'Magician s Secrets(tm)', 'vs4096magician', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs4096magician.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(201, 2, NULL, 'vs20smugcove', 'Smugglers Cove(tm)', 'vs20smugcove', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20smugcove.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(202, 2, NULL, 'vswayscryscav', 'Crystal Caverns Megaways(tm)', 'vswayscryscav', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayscryscav.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(203, 2, NULL, 'vs20superx', 'Super X(tm)', 'vs20superx', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20superx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(204, 2, NULL, 'vs20rockvegas', 'Rock Vegas Mega Hold e Spin', 'vs20rockvegas', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20rockvegas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(205, 2, NULL, 'vs25copsrobbers', 'Cash Patrol', 'vs25copsrobbers', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25copsrobbers.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(206, 2, NULL, 'vs20colcashzone', 'Colossal Cash Zone', 'vs20colcashzone', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20colcashzone.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(207, 2, NULL, 'vs20ultim5', 'The Ultimate 5', 'vs20ultim5', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20ultim5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(208, 2, NULL, 'vs20bchprty', 'Wild Beach Party', 'vs20bchprty', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20bchprty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(209, 2, NULL, 'vs10bookazteck', 'Book of Aztec King', 'vs10bookazteck', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10bookazteck.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(210, 2, NULL, 'vs50mightra', 'Might of Ra', 'vs50mightra', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs50mightra.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(211, 2, NULL, 'vs25bullfiesta', 'Bull Fiesta', 'vs25bullfiesta', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25bullfiesta.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(212, 2, NULL, 'vs20rainbowg', 'Rainbow Gold', 'vs20rainbowg', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20rainbowg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(213, 2, NULL, 'vs10tictac', 'Tic Tac Take', 'vs10tictac', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10tictac.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(214, 2, NULL, 'vs243discolady', 'Disco Lady', 'vs243discolady', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243discolady.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(215, 2, NULL, 'vs243queenie', 'Queenie', 'vs243queenie', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243queenie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(216, 2, NULL, 'vs20farmfest', 'Barn Festival', 'vs20farmfest', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20farmfest.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(217, 2, NULL, 'vs10chkchase', 'Chicken Chase', 'vs10chkchase', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10chkchase.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(218, 2, NULL, 'vswayswildwest', 'Wild West Gold Megaways', 'vswayswildwest', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayswildwest.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(219, 2, NULL, 'vs20mustanggld2', 'Clover Gold', 'vs20mustanggld2', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20mustanggld2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(220, 2, NULL, 'vs20drtgold', 'Drill That Gold', 'vs20drtgold', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20drtgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(221, 2, NULL, 'vs10spiritadv', 'Spirit of Adventure', 'vs10spiritadv', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10spiritadv.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(222, 2, NULL, 'vs10firestrike2', 'Fire Strike 2', 'vs10firestrike2', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10firestrike2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(223, 2, NULL, 'vs40cleoeye', 'Eye of Cleopatra', 'vs40cleoeye', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40cleoeye.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(224, 2, NULL, 'vs20gobnudge', 'Goblin Heist Powernudge', 'vs20gobnudge', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20gobnudge.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(225, 2, NULL, 'vs20stickysymbol', 'The Great Stick-up', 'vs20stickysymbol', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20stickysymbol.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(226, 2, NULL, 'vswayszombcarn', 'Zombie Carnival', 'vswayszombcarn', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayszombcarn.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(227, 2, NULL, 'vs50northgard', 'North Guardians', 'vs50northgard', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs50northgard.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(228, 2, NULL, 'vs20sugarrush', 'Sugar Rush', 'vs20sugarrush', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20sugarrush.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(229, 2, NULL, 'vs20cleocatra', 'Cleocatra', 'vs20cleocatra', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20cleocatra.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(230, 2, NULL, 'vs5littlegem', 'Little Gem Hold and Spin', 'vs5littlegem', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5littlegem.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(231, 2, NULL, 'vs10egrich', 'Queen of Gods', 'vs10egrich', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10egrich.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(232, 2, NULL, 'vs243koipond', 'Koi Pond', 'vs243koipond', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243koipond.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(233, 2, NULL, 'vs40samurai3', 'Rise of Samurai 3', 'vs40samurai3', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40samurai3.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(234, 2, NULL, 'vs40cosmiccash', 'Cosmic Cash', 'vs40cosmiccash', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40cosmiccash.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(235, 2, NULL, 'vs25bomb', 'Bomb Bonanza', 'vs25bomb', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25bomb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(236, 2, NULL, 'vs1024mahjpanda', 'Mahjong Panda', 'vs1024mahjpanda', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1024mahjpanda.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(237, 2, NULL, 'vs10coffee', 'Coffee Wild', 'vs10coffee', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10coffee.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(238, 2, NULL, 'vs100sh', 'Shining Hot 100', 'vs100sh', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs100sh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(239, 2, NULL, 'vs20sh', 'Shining Hot 20', 'vs20sh', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20sh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(240, 2, NULL, 'vs40sh', 'Shining Hot 40', 'vs40sh', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40sh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(241, 2, NULL, 'vs5sh', 'Shining Hot 5', 'vs5sh', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5sh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(242, 2, NULL, 'vswaysjkrdrop', 'Tropical Tiki', 'vswaysjkrdrop', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysjkrdrop.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(243, 2, NULL, 'vs243ckemp', 'Cheeky Emperor', 'vs243ckemp', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243ckemp.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(244, 2, NULL, 'vs40hotburnx', 'Hot To Burn Extreme', 'vs40hotburnx', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40hotburnx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(246, 2, NULL, 'vs20octobeer', 'Octobeer Fortunes', 'vs20octobeer', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20octobeer.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(247, 2, NULL, 'vs10txbigbass', 'Big Bass Splash', 'vs10txbigbass', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10txbigbass.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(248, 2, NULL, 'vs100firehot', 'Fire Hot 100', 'vs100firehot', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs100firehot.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(249, 2, NULL, 'vs20fh', 'Fire Hot 20', 'vs20fh', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20fh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(250, 2, NULL, 'vs40firehot', 'Fire Hot 40', 'vs40firehot', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40firehot.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(251, 2, NULL, 'vs5firehot', 'Fire Hot 5', 'vs5firehot', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5firehot.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(252, 2, NULL, 'vs20wolfie', 'Greedy Wolf', 'vs20wolfie', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20wolfie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(253, 2, NULL, 'vs20underground', 'Down the Rails', 'vs20underground', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20underground.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(254, 2, NULL, 'vs10mmm', 'Magic Money Maze', 'vs10mmm', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10mmm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(255, 2, NULL, 'vswaysfltdrg', 'Floating Dragon Hold e Spin Megaways', 'vswaysfltdrg', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysfltdrg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(256, 2, NULL, 'vs20trswild2', 'Black Bull', 'vs20trswild2', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20trswild2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(257, 2, NULL, 'vswaysstrwild', 'Candy Stars', 'vswaysstrwild', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysstrwild.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(258, 2, NULL, 'vs10crownfire', 'Crown of Fire', 'vs10crownfire', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10crownfire.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(259, 2, NULL, 'vs20muertos', 'Muertos Multiplier Megaways', 'vs20muertos', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20muertos.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 18, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:07:26'),
(260, 2, NULL, 'vswayslofhero', 'Legend of Heroes', 'vswayslofhero', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayslofhero.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(261, 2, NULL, 'vs5strh', 'Striking Hot 5', 'vs5strh', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5strh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(262, 2, NULL, 'vs10snakeeyes', 'Snakes e Ladders - Snake Eyes', 'vs10snakeeyes', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10snakeeyes.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(263, 2, NULL, 'vswaysbook', 'Book of Golden Sands', 'vswaysbook', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysbook.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(264, 2, NULL, 'vs20mparty', 'Wild Hop and Drop', 'vs20mparty', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20mparty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(265, 2, NULL, 'vs20swordofares', 'Sword of Ares', 'vs20swordofares', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20swordofares.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(266, 2, NULL, 'vswaysfrywld', 'Spin e Score Megaways', 'vswaysfrywld', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysfrywld.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(267, 2, NULL, 'vswaysconcoll', 'Sweet PowerNudge(tm)', 'vswaysconcoll', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysconcoll.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(268, 2, NULL, 'vs20lcount', 'Gems of Serengeti(tm)', 'vs20lcount', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20lcount.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(269, 2, NULL, 'vs20sparta', 'Shield of Sparta', 'vs20sparta', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20sparta.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(270, 2, NULL, 'vs10bbkir', 'Big Bass Bonanza Keeping it Reel', 'vs10bbkir', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10bbkir.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(271, 2, NULL, 'vswayspizza', 'Pizza Pizza Pizza', 'vswayspizza', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayspizza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(272, 2, NULL, 'vs20dugems', 'Hot Pepper(tm)', 'vs20dugems', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20dugems.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(273, 2, NULL, 'vs20clspwrndg', 'Sweet PowerNudge', 'vs20clspwrndg', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20clspwrndg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(274, 2, NULL, 'vswaysfuryodin', 'Fury of Odin Megaways(tm)', 'vswaysfuryodin', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysfuryodin.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(275, 2, NULL, 'vs20sugarcoins', 'Viking Forge', 'vs20sugarcoins', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20sugarcoins.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(276, 2, NULL, 'vs20olympgrace', 'Grace of Ebisu', 'vs20olympgrace', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20olympgrace.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(277, 2, NULL, 'vs20starlightx', 'Starlight Princess 1000', 'vs20starlightx', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20starlightx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(278, 2, NULL, 'vswaysmoneyman', 'The Money Men Megaways', 'vswaysmoneyman', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysmoneyman.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(279, 2, NULL, 'vs40demonpots', 'Demon Pots', 'vs40demonpots', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40demonpots.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(280, 2, NULL, 'vswaystut', 'John Hunter and the Book of Tut Megaways', 'vswaystut', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaystut.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(281, 2, NULL, 'vs10gdchalleng', '8 Golden Dragon Challenge', 'vs10gdchalleng', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10gdchalleng.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(282, 2, NULL, 'vs20yisunshin', 'Yi Sun Shin', 'vs20yisunshin', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20yisunshin.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(283, 2, NULL, 'vs20candyblitz', 'Candy Blitz', 'vs20candyblitz', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20candyblitz.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(284, 2, NULL, 'vswaysstrlght', 'Fortunes of Aztec', 'vswaysstrlght', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysstrlght.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(285, 2, NULL, 'vs40infwild', 'Infective Wild', 'vs40infwild', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40infwild.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(286, 2, NULL, 'vs20gravity', 'Gravity Bonanza', 'vs20gravity', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20gravity.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(287, 2, NULL, 'vs40rainbowr', 'Rainbow Reels', 'vs40rainbowr', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs40rainbowr.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(288, 2, NULL, 'vs20bnnzdice', 'Sweet Bonanza Dice', 'vs20bnnzdice', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20bnnzdice.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 6, 0, 1, '2024-05-27 07:25:59', '2024-05-28 20:47:19'),
(289, 2, NULL, 'vs10bhallbnza', 'Big Bass Halloween', 'vs10bhallbnza', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10bhallbnza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(290, 2, NULL, 'vswaysraghex', 'Tundra s Fortune', 'vswaysraghex', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysraghex.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(291, 2, NULL, 'vs20maskgame', 'Cash Chips', 'vs20maskgame', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20maskgame.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(292, 2, NULL, 'vs5gemstone', 'Gemstone', 'vs5gemstone', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs5gemstone.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(293, 2, NULL, 'vs1024mahjwins', 'Mahjong Wins', 'vs1024mahjwins', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1024mahjwins.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(294, 2, NULL, 'vs20procount', 'Wisdom of Athena', 'vs20procount', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20procount.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(295, 2, NULL, 'vs20forge', 'Forge of Olympus', 'vs20forge', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20forge.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(296, 2, NULL, 'vswaysbbhas', 'Big Bass Hold e Spinner Megaways', 'vswaysbbhas', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysbbhas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(297, 2, NULL, 'vs20earthquake', 'Cyclops Smash', 'vs20earthquake', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20earthquake.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(298, 2, NULL, 'vs20saiman', 'Saiyan Mania', 'vs20saiman', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20saiman.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(299, 2, NULL, 'vs20piggybank', 'Piggy Bankers', 'vs20piggybank', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20piggybank.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(300, 2, NULL, 'vs20lvlup', 'Pub Kings', 'vs20lvlup', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20lvlup.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(301, 2, NULL, 'vs10trail', 'Mustang Trail', 'vs10trail', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10trail.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(302, 2, NULL, 'vs20supermania', 'Supermania', 'vs20supermania', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20supermania.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(303, 2, NULL, 'vs50dmdcascade', 'Diamond Cascade', 'vs50dmdcascade', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs50dmdcascade.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(304, 2, NULL, 'vs20lobcrab', 'Lobster Bob s Crazy Crab Shack', 'vs20lobcrab', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20lobcrab.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(305, 2, NULL, 'vs20wildparty', '3 Buzzing Wilds', 'vs20wildparty', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20wildparty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(306, 2, NULL, 'vs20doghousemh', 'The Dog House Multihold', 'vs20doghousemh', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20doghousemh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(307, 2, NULL, 'vs20splmystery', 'Spellbinding Mystery', 'vs20splmystery', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20splmystery.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(308, 2, NULL, 'vs20cashmachine', 'Cash Box', 'vs20cashmachine', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20cashmachine.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(309, 2, NULL, 'vs50jucier', 'Sky Bounty', 'vs50jucier', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs50jucier.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(310, 2, NULL, 'vs243nudge4gold', 'Hellvis Wild', 'vs243nudge4gold', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs243nudge4gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(311, 2, NULL, 'vs25jokrace', 'Joker Race', 'vs25jokrace', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25jokrace.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(312, 2, NULL, 'vs20hstgldngt', 'Heist for the Golden Nuggets', 'vs20hstgldngt', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20hstgldngt.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(313, 2, NULL, 'vs20beefed', 'Fat Panda', 'vs20beefed', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20beefed.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(314, 2, NULL, 'vs20jewelparty', 'Jewel Rush', 'vs20jewelparty', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20jewelparty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(315, 2, NULL, 'vs9outlaw', 'Pirates Pub', 'vs9outlaw', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs9outlaw.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(316, 2, NULL, 'vswaysfrbugs', 'Frogs e Bugs', 'vswaysfrbugs', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysfrbugs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(317, 2, NULL, 'vs20lampinf', 'Lamp Of Infinity', 'vs20lampinf', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20lampinf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(318, 2, NULL, 'vs4096robber', 'Robber Strike', 'vs4096robber', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs4096robber.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(319, 2, NULL, 'vs10fdrasbf', 'Floating Dragon - Dragon Boat Festival', 'vs10fdrasbf', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10fdrasbf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(320, 2, NULL, 'vs20clustwild', 'Sticky Bees', 'vs20clustwild', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20clustwild.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(321, 2, NULL, 'vs25spotz', 'Knight Hot Spotz', 'vs25spotz', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25spotz.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(322, 2, NULL, 'vs20excalibur', 'Excalibur Unleashed', 'vs20excalibur', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20excalibur.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(323, 2, NULL, 'vs20stickywild', 'Wild Bison Charge', 'vs20stickywild', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20stickywild.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(324, 2, NULL, 'vs25holiday', 'Holiday Ride', 'vs25holiday', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25holiday.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(325, 2, NULL, 'vs20mvwild', 'Jasmine Dreams', 'vs20mvwild', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20mvwild.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(326, 2, NULL, 'vs10kingofdth', 'Kingdom of the Dead', 'vs10kingofdth', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10kingofdth.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(327, 2, NULL, 'vswaysultrcoin', 'Cowboy Coins', 'vswaysultrcoin', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysultrcoin.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(328, 2, NULL, 'vs10gizagods', 'Gods of Giza', 'vs10gizagods', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10gizagods.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(329, 2, NULL, 'vswaysrsm', 'Wild Celebrity Bus Megaways', 'vswaysrsm', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysrsm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(330, 2, NULL, 'vswaysmonkey', '3 Dancing Monkeys', 'vswaysmonkey', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysmonkey.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(331, 2, NULL, 'vs20hotzone', 'African Elephant', 'vs20hotzone', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20hotzone.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(332, 2, NULL, 'vs10bbhas', 'Big Bass - Hold e Spinner', 'vs10bbhas', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10bbhas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(333, 2, NULL, 'vs1024moonsh', 'Moonshot', 'vs1024moonsh', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs1024moonsh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(334, 2, NULL, 'vswaysredqueen', 'The Red Queen', 'vswaysredqueen', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysredqueen.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(335, 2, NULL, 'vs20framazon', 'Fruits of the Amazon', 'vs20framazon', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20framazon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(336, 2, NULL, 'vs20sknights', 'The Knight King', 'vs20sknights', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20sknights.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(337, 2, NULL, 'vs20goldclust', 'Rabbit Garden', 'vs20goldclust', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20goldclust.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(338, 2, NULL, 'vswaysmorient', 'Mystery of the Orient', 'vswaysmorient', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysmorient.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(339, 2, NULL, 'vs10powerlines', 'Peak Power', 'vs10powerlines', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10powerlines.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(340, 2, NULL, 'vs12tropicana', 'Club Tropicana', 'vs12tropicana', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs12tropicana.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(341, 2, NULL, 'vs25archer', 'Fire Archer', 'vs25archer', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25archer.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(342, 2, NULL, 'vs20gatotfury', 'Gatot Kaca s Fury', 'vs20gatotfury', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20gatotfury.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(343, 2, NULL, 'vs20mochimon', 'Mochimon', 'vs20mochimon', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20mochimon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(344, 2, NULL, 'vs10fisheye', 'Fish Eye', 'vs10fisheye', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs10fisheye.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(345, 2, NULL, 'vs20superlanche', 'Monster Superlanche', 'vs20superlanche', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs20superlanche.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(346, 2, NULL, 'vswaysftropics', 'Frozen Tropics', 'vswaysftropics', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysftropics.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(347, 2, NULL, 'vswaysincwnd', 'Gold Oasis', 'vswaysincwnd', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswaysincwnd.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(348, 2, NULL, 'vs25spgldways', 'Secret City Gold', 'vs25spgldways', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vs25spgldways.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(349, 2, NULL, 'vswayswwhex', 'Wild Wild Bananas', 'vswayswwhex', 'Pragmatic', NULL, 'PROVEDOR/PRAGMATIC/vswayswwhex.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(350, 3, NULL, 'SGReturnToTheFeature', 'Return to the Future', 'SGReturnToTheFeature', 'slot', NULL, 'PROVEDOR/HABANERO/SGReturnToTheFeature.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(351, 3, NULL, 'SGTabernaDeLosMuertosUltra', 'Tevena de los Muirtos Ultra', 'SGTabernaDeLosMuertosUltra', 'slot', NULL, 'PROVEDOR/HABANERO/SGTabernaDeLosMuertosUltra.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:13:32'),
(352, 3, NULL, 'SGTotemTowers', 'Totem towers', 'SGTotemTowers', 'slot', NULL, 'PROVEDOR/HABANERO/SGTotemTowers.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(353, 3, NULL, 'SGChristmasGiftRush', 'Christmas Kipoot Rush', 'SGChristmasGiftRush', 'slot', NULL, 'PROVEDOR/HABANERO/SGChristmasGiftRush.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(354, 3, NULL, 'SGOrbsOfAtlantis', 'Overs of Atlantis', 'SGOrbsOfAtlantis', 'slot', NULL, 'PROVEDOR/HABANERO/SGOrbsOfAtlantis.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(355, 3, NULL, 'SGBeforeTimeRunsOut', 'Before Time Runner Out', 'SGBeforeTimeRunsOut', 'slot', NULL, 'PROVEDOR/HABANERO/SGBeforeTimeRunsOut.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(356, 3, NULL, 'SGTechnoTumble', 'Techno tumble', 'SGTechnoTumble', 'slot', NULL, 'PROVEDOR/HABANERO/SGTechnoTumble.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(358, 3, NULL, 'SGHappyApe', 'Happy ape', 'SGHappyApe', 'slot', NULL, 'PROVEDOR/HABANERO/SGHappyApe.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(359, 3, NULL, 'SGTabernaDeLosMuertos', 'Tevena di los Muertos', 'SGTabernaDeLosMuertos', 'slot', NULL, 'PROVEDOR/HABANERO/SGTabernaDeLosMuertos.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(360, 3, NULL, 'SGNaughtySanta', 'Notty Santa', 'SGNaughtySanta', 'slot', NULL, 'PROVEDOR/HABANERO/SGNaughtySanta.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(361, 3, NULL, 'SGFaCaiShenDeluxe', 'Pakai Sen Deluxe', 'SGFaCaiShenDeluxe', 'slot', NULL, 'PROVEDOR/HABANERO/SGFaCaiShenDeluxe.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(362, 3, NULL, 'SGHeySushi', 'Hey sushi', 'SGHeySushi', 'slot', NULL, 'PROVEDOR/HABANERO/SGHeySushi.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(363, 3, NULL, 'SGKnockoutFootballRush', 'Knockout football rush', 'SGKnockoutFootballRush', 'slot', NULL, 'PROVEDOR/HABANERO/SGKnockoutFootballRush.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(364, 3, NULL, 'SGColossalGems', 'Closal Gems', 'SGColossalGems', 'slot', NULL, 'PROVEDOR/HABANERO/SGColossalGems.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(365, 3, NULL, 'SGHotHotHalloween', 'hot hot halloween', 'SGHotHotHalloween', 'slot', NULL, 'PROVEDOR/HABANERO/SGHotHotHalloween.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(366, 3, NULL, 'SGLuckyFortuneCat', 'Lucky fortune cat', 'SGLuckyFortuneCat', 'slot', NULL, 'PROVEDOR/HABANERO/SGLuckyFortuneCat.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(367, 3, NULL, 'SGHotHotFruit', 'hot hot fruit', 'SGHotHotFruit', 'slot', NULL, 'PROVEDOR/HABANERO/SGHotHotFruit.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(368, 3, NULL, 'SGMountMazuma', 'Mount Majuma', 'SGMountMazuma', 'slot', NULL, 'PROVEDOR/HABANERO/SGMountMazuma.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(369, 3, NULL, 'SGWildTrucks', 'Wild Trucks', 'SGWildTrucks', 'slot', NULL, 'PROVEDOR/HABANERO/SGWildTrucks.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(370, 3, NULL, 'SGLuckyLucky', 'Lucky Lucky', 'SGLuckyLucky', 'slot', NULL, 'PROVEDOR/HABANERO/SGLuckyLucky.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(371, 3, NULL, 'SGKnockoutFootball', 'Knockout football', 'SGKnockoutFootball', 'slot', NULL, 'PROVEDOR/HABANERO/SGKnockoutFootball.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(372, 3, NULL, 'SGJump', 'Jump!', 'SGJump', 'slot', NULL, 'PROVEDOR/HABANERO/SGJump.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(373, 3, NULL, 'SGPumpkinPatch', 'Pumpkin patch', 'SGPumpkinPatch', 'slot', NULL, 'PROVEDOR/HABANERO/SGPumpkinPatch.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:03:54'),
(374, 3, NULL, 'SGWaysOfFortune', 'Way of Fortune', 'SGWaysOfFortune', 'slot', NULL, 'PROVEDOR/HABANERO/SGWaysOfFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(375, 3, NULL, 'SGFourDivineBeasts', 'For Devine Beasts', 'SGFourDivineBeasts', 'slot', NULL, 'PROVEDOR/HABANERO/SGFourDivineBeasts.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(376, 3, NULL, 'SGPandaPanda', 'Panda panda', 'SGPandaPanda', 'slot', NULL, 'PROVEDOR/HABANERO/SGPandaPanda.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(377, 3, NULL, 'SGOceansCall', 'Ocean s Call', 'SGOceansCall', 'slot', NULL, 'PROVEDOR/HABANERO/SGOceansCall.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(378, 3, NULL, 'SGScruffyScallywags', 'Scruffy Skellywex', 'SGScruffyScallywags', 'slot', NULL, 'PROVEDOR/HABANERO/SGScruffyScallywags.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(379, 3, NULL, 'SGNuwa', 'Nuwa', 'SGNuwa', 'slot', NULL, 'PROVEDOR/HABANERO/SGNuwa.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(380, 3, NULL, 'SGTheKoiGate', 'Koi gate', 'SGTheKoiGate', 'slot', NULL, 'PROVEDOR/HABANERO/SGTheKoiGate.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(381, 3, NULL, 'SGFaCaiShen', 'Pacaishen', 'SGFaCaiShen', 'slot', NULL, 'PROVEDOR/HABANERO/SGFaCaiShen.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(382, 3, NULL, 'SG12Zodiacs', '12 zodiacs', 'SG12Zodiacs', 'slot', NULL, 'PROVEDOR/HABANERO/SG12Zodiacs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(383, 3, NULL, 'SGFireRooster', 'Fire rooster', 'SGFireRooster', 'slot', NULL, 'PROVEDOR/HABANERO/SGFireRooster.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(384, 3, NULL, 'SGFenghuang', 'Phoenix', 'SGFenghuang', 'slot', NULL, 'PROVEDOR/HABANERO/SGFenghuang.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(385, 3, NULL, 'SGBirdOfThunder', 'Bird of Thunder', 'SGBirdOfThunder', 'slot', NULL, 'PROVEDOR/HABANERO/SGBirdOfThunder.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(386, 3, NULL, 'SGTheDeadEscape', 'The Dead Escape', 'SGTheDeadEscape', 'slot', NULL, 'PROVEDOR/HABANERO/SGTheDeadEscape.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(387, 3, NULL, 'SGBombsAway', 'Bombs Away', 'SGBombsAway', 'slot', NULL, 'PROVEDOR/HABANERO/SGBombsAway.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(388, 3, NULL, 'SGGoldRush', 'Gold rush', 'SGGoldRush', 'slot', NULL, 'PROVEDOR/HABANERO/SGGoldRush.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(389, 3, NULL, 'SGRuffledUp', 'Ruffled up', 'SGRuffledUp', 'slot', NULL, 'PROVEDOR/HABANERO/SGRuffledUp.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(390, 3, NULL, 'SGRomanEmpire', 'Roman empire', 'SGRomanEmpire', 'slot', NULL, 'PROVEDOR/HABANERO/SGRomanEmpire.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(391, 3, NULL, 'SGCoyoteCrash', 'Coyote crash', 'SGCoyoteCrash', 'slot', NULL, 'PROVEDOR/HABANERO/SGCoyoteCrash.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(392, 3, NULL, 'SGWickedWitch', 'Wickt Location', 'SGWickedWitch', 'slot', NULL, 'PROVEDOR/HABANERO/SGWickedWitch.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(393, 3, NULL, 'SGDragonsThrone', 'Dragon s Throne', 'SGDragonsThrone', 'slot', NULL, 'PROVEDOR/HABANERO/SGDragonsThrone.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(394, 3, NULL, 'SGBuggyBonus', 'Buggy bonus', 'SGBuggyBonus', 'slot', NULL, 'PROVEDOR/HABANERO/SGBuggyBonus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(395, 3, NULL, 'SGGlamRock', 'Glam rock', 'SGGlamRock', 'slot', NULL, 'PROVEDOR/HABANERO/SGGlamRock.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(396, 3, NULL, 'SGSuperTwister', 'Super twister', 'SGSuperTwister', 'slot', NULL, 'PROVEDOR/HABANERO/SGSuperTwister.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(398, 3, NULL, 'SGTreasureTomb', 'Treasure Tomb', 'SGTreasureTomb', 'slot', NULL, 'PROVEDOR/HABANERO/SGTreasureTomb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(399, 3, NULL, 'SGJugglenaut', 'Jugglenut', 'SGJugglenaut', 'slot', NULL, 'PROVEDOR/HABANERO/SGJugglenaut.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(400, 3, NULL, 'SGGalacticCash', 'Glactic Cash', 'SGGalacticCash', 'slot', NULL, 'PROVEDOR/HABANERO/SGGalacticCash.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(401, 3, NULL, 'SGZeus2', 'Zeus 2', 'SGZeus2', 'slot', NULL, 'PROVEDOR/HABANERO/SGZeus2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(402, 3, NULL, 'SGTheDragonCastle', 'Dragon castle', 'SGTheDragonCastle', 'slot', NULL, 'PROVEDOR/HABANERO/SGTheDragonCastle.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(403, 3, NULL, 'SGKingTutsTomb', 'King Teeth Tomb', 'SGKingTutsTomb', 'slot', NULL, 'PROVEDOR/HABANERO/SGKingTutsTomb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(404, 3, NULL, 'SGCarnivalCash', 'Carnival cash', 'SGCarnivalCash', 'slot', NULL, 'PROVEDOR/HABANERO/SGCarnivalCash.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(405, 3, NULL, 'SGTreasureDiver', 'Treasure diver', 'SGTreasureDiver', 'slot', NULL, 'PROVEDOR/HABANERO/SGTreasureDiver.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(406, 3, NULL, 'SGLittleGreenMoney', 'Little Green Money', 'SGLittleGreenMoney', 'slot', NULL, 'PROVEDOR/HABANERO/SGLittleGreenMoney.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(407, 3, NULL, 'SGMonsterMashCash', 'Monster Mash Cash', 'SGMonsterMashCash', 'slot', NULL, 'PROVEDOR/HABANERO/SGMonsterMashCash.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(408, 3, NULL, 'SGShaolinFortunes100', 'Xiaolin Fortune 100', 'SGShaolinFortunes100', 'slot', NULL, 'PROVEDOR/HABANERO/SGShaolinFortunes100.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(409, 3, NULL, 'SGShaolinFortunes243', 'Xiaolin Fortune', 'SGShaolinFortunes243', 'slot', NULL, 'PROVEDOR/HABANERO/SGShaolinFortunes243.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(410, 3, NULL, 'SGWeirdScience', 'Weird Science', 'SGWeirdScience', 'slot', NULL, 'PROVEDOR/HABANERO/SGWeirdScience.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(411, 3, NULL, 'SGBlackbeardsBounty', 'Blackbeards Bounty', 'SGBlackbeardsBounty', 'slot', NULL, 'PROVEDOR/HABANERO/SGBlackbeardsBounty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(412, 3, NULL, 'SGDrFeelgood', 'Dr. Feelgood', 'SGDrFeelgood', 'slot', NULL, 'PROVEDOR/HABANERO/SGDrFeelgood.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(413, 3, NULL, 'SGVikingsPlunder', 'Vikings plunder', 'SGVikingsPlunder', 'slot', NULL, 'PROVEDOR/HABANERO/SGVikingsPlunder.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(414, 3, NULL, 'SGDoubleODollars', 'Double O Dollars', 'SGDoubleODollars', 'slot', NULL, 'PROVEDOR/HABANERO/SGDoubleODollars.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(415, 3, NULL, 'SGSpaceFortune', 'Space fortune', 'SGSpaceFortune', 'slot', NULL, 'PROVEDOR/HABANERO/SGSpaceFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(416, 3, NULL, 'SGPamperMe', 'Pamper me', 'SGPamperMe', 'slot', NULL, 'PROVEDOR/HABANERO/SGPamperMe.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(417, 3, NULL, 'SGZeus', 'Zeus', 'SGZeus', 'slot', NULL, 'PROVEDOR/HABANERO/SGZeus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:01:40'),
(420, 3, NULL, 'SGEgyptianDreams', 'Egyptian Dreams', 'SGEgyptianDreams', 'slot', NULL, 'PROVEDOR/HABANERO/SGEgyptianDreams.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(421, 3, NULL, 'SGBarnstormerBucks', 'Barnstormer Bucks', 'SGBarnstormerBucks', 'slot', NULL, 'PROVEDOR/HABANERO/SGBarnstormerBucks.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(422, 3, NULL, 'SGSuperStrike', 'Super strike', 'SGSuperStrike', 'slot', NULL, 'PROVEDOR/HABANERO/SGSuperStrike.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(423, 3, NULL, 'SGJungleRumble', 'Jungle rumble', 'SGJungleRumble', 'slot', NULL, 'PROVEDOR/HABANERO/SGJungleRumble.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(424, 3, NULL, 'SGArcticWonders', 'Arctic Wonders', 'SGArcticWonders', 'slot', NULL, 'PROVEDOR/HABANERO/SGArcticWonders.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:01:23'),
(425, 3, NULL, 'SGTowerOfPizza', 'Tower of Pizza', 'SGTowerOfPizza', 'slot', NULL, 'PROVEDOR/HABANERO/SGTowerOfPizza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(426, 3, NULL, 'SGMummyMoney', 'Mummy money', 'SGMummyMoney', 'slot', NULL, 'PROVEDOR/HABANERO/SGMummyMoney.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:03:23'),
(427, 3, NULL, 'SGBikiniIsland', 'bikini island', 'SGBikiniIsland', 'slot', NULL, 'PROVEDOR/HABANERO/SGBikiniIsland.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(428, 3, NULL, 'SGQueenOfQueens1024', 'Queen of Queens II', 'SGQueenOfQueens1024', 'slot', NULL, 'PROVEDOR/HABANERO/SGQueenOfQueens1024.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(429, 3, NULL, 'SGDragonsRealm', 'Dragon s Realm', 'SGDragonsRealm', 'slot', NULL, 'PROVEDOR/HABANERO/SGDragonsRealm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(430, 3, NULL, 'SGAllForOne', 'All for one', 'SGAllForOne', 'slot', NULL, 'PROVEDOR/HABANERO/SGAllForOne.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(431, 3, NULL, 'SGFlyingHigh', 'Flying high', 'SGFlyingHigh', 'slot', NULL, 'PROVEDOR/HABANERO/SGFlyingHigh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(432, 3, NULL, 'SGMrBling', 'Mr. Bling', 'SGMrBling', 'slot', NULL, 'PROVEDOR/HABANERO/SGMrBling.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(433, 3, NULL, 'SGMysticFortune', 'Mystic Fortune', 'SGMysticFortune', 'slot', NULL, 'PROVEDOR/HABANERO/SGMysticFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(437, 3, NULL, 'SGQueenOfQueens243', 'Queen of queens', 'SGQueenOfQueens243', 'slot', NULL, 'PROVEDOR/HABANERO/SGQueenOfQueens243.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(439, 3, NULL, 'SGGrapeEscape', 'The Graph Escape', 'SGGrapeEscape', 'slot', NULL, 'PROVEDOR/HABANERO/SGGrapeEscape.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(440, 3, NULL, 'SGGoldenUnicorn', 'Golden unicorn', 'SGGoldenUnicorn', 'slot', NULL, 'PROVEDOR/HABANERO/SGGoldenUnicorn.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(441, 3, NULL, 'SGFrontierFortunes', 'Frontier Fortune', 'SGFrontierFortunes', 'slot', NULL, 'PROVEDOR/HABANERO/SGFrontierFortunes.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(442, 3, NULL, 'SGIndianCashCatcher', 'Indian Cash Catcher', 'SGIndianCashCatcher', 'slot', NULL, 'PROVEDOR/HABANERO/SGIndianCashCatcher.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(443, 3, NULL, 'SGSkysTheLimit', 'Skys the Limit', 'SGSkysTheLimit', 'slot', NULL, 'PROVEDOR/HABANERO/SGSkysTheLimit.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:02:56'),
(444, 3, NULL, 'SGTheBigDeal', 'The Big Deal', 'SGTheBigDeal', 'slot', NULL, 'PROVEDOR/HABANERO/SGTheBigDeal.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(445, 3, NULL, 'SGCashosaurus', 'Cashosaurus', 'SGCashosaurus', 'slot', NULL, 'PROVEDOR/HABANERO/SGCashosaurus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(446, 3, NULL, 'SGDiscoFunk', 'Disco funk', 'SGDiscoFunk', 'slot', NULL, 'PROVEDOR/HABANERO/SGDiscoFunk.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(447, 3, NULL, 'SGCalaverasExplosivas', 'Calaveras Explociba', 'SGCalaverasExplosivas', 'slot', NULL, 'PROVEDOR/HABANERO/SGCalaverasExplosivas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(449, 3, NULL, 'SGNineTails', 'Nine Tales', 'SGNineTails', 'slot', NULL, 'PROVEDOR/HABANERO/SGNineTails.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(450, 3, NULL, 'SGMysticFortuneDeluxe', 'Mystic Fortune Deluxe', 'SGMysticFortuneDeluxe', 'slot', NULL, 'PROVEDOR/HABANERO/SGMysticFortuneDeluxe.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(451, 3, NULL, 'SGLuckyDurian', 'Lucky durian', 'SGLuckyDurian', 'slot', NULL, 'PROVEDOR/HABANERO/SGLuckyDurian.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(452, 3, NULL, 'SGDiscoBeats', 'Disco beat', 'SGDiscoBeats', 'slot', NULL, 'PROVEDOR/HABANERO/SGDiscoBeats.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(453, 3, NULL, 'SGLanternLuck', 'Lantern lucky', 'SGLanternLuck', 'slot', NULL, 'PROVEDOR/HABANERO/SGLanternLuck.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(454, 3, NULL, 'SGBombRunner', 'Boom runner', 'SGBombRunner', 'slot', NULL, 'PROVEDOR/HABANERO/SGBombRunner.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(455, 4, NULL, 'sun_of_egypt', 'SUN OF EGYPT', 'sun_of_egypt', 'slot', NULL, 'PROVEDOR/BOOONGO/sun_of_egypt.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(456, 4, NULL, 'sun_of_egypt_2', 'SUN OF EGYPT 2', 'sun_of_egypt_2', 'slot', NULL, 'PROVEDOR/BOOONGO/sun_of_egypt_2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(457, 4, NULL, 'happy_fish', 'HAPPY FISH', 'happy_fish', 'slot', NULL, 'PROVEDOR/BOOONGO/happy_fish.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:50:42'),
(458, 4, NULL, 'queen_of_the_sun', 'QUEEN OF THE SUN', 'queen_of_the_sun', 'slot', NULL, 'PROVEDOR/BOOONGO/queen_of_the_sun.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(459, 4, NULL, 'tiger_jungle', 'TIGER JUNGLE', 'tiger_jungle', 'slot', NULL, 'PROVEDOR/BOOONGO/tiger_jungle.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(460, 4, NULL, 'black_wolf', 'BLACK WOLF', 'black_wolf', 'slot', NULL, 'PROVEDOR/BOOONGO/black_wolf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(461, 4, NULL, 'hit_the_gold', 'HIT THE GOLD', 'hit_the_gold', 'slot', NULL, 'PROVEDOR/BOOONGO/hit_the_gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(462, 4, NULL, 'candy_boom', 'CANDY BOOM', 'candy_boom', 'slot', NULL, 'PROVEDOR/BOOONGO/candy_boom.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(463, 4, NULL, 'scarab_riches', 'SCARAB RICHES', 'scarab_riches', 'slot', NULL, 'PROVEDOR/BOOONGO/scarab_riches.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(464, 4, NULL, 'golden_dancing_lion', 'GOLDEN DANCING LION', 'golden_dancing_lion', 'slot', NULL, 'PROVEDOR/BOOONGO/golden_dancing_lion.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(465, 4, NULL, 'dragon_pearls', 'DRAGON PEARLS', 'dragon_pearls', 'slot', NULL, 'PROVEDOR/BOOONGO/dragon_pearls.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(466, 4, NULL, '3_coins', '3 COINS', '3_coins', 'slot', NULL, 'PROVEDOR/BOOONGO/3_coins.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(467, 4, NULL, 'super_rich_god', 'SUPER RICH GOD', 'super_rich_god', 'slot', NULL, 'PROVEDOR/BOOONGO/super_rich_god.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(468, 4, NULL, '15_dragon_pearls', '15 DRAGON PEARLS', '15_dragon_pearls', 'slot', NULL, 'PROVEDOR/BOOONGO/15_dragon_pearls.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(469, 4, NULL, 'aztec_sun', 'AZTEC SUN', 'aztec_sun', 'slot', NULL, 'PROVEDOR/BOOONGO/aztec_sun.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(470, 4, NULL, 'scarab_temple', 'SCARAB TEMPLE', 'scarab_temple', 'slot', NULL, 'PROVEDOR/BOOONGO/scarab_temple.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(471, 4, NULL, 'gods_temple_deluxe', 'GODS TEMPLE DELUXE', 'gods_temple_deluxe', 'slot', NULL, 'PROVEDOR/BOOONGO/gods_temple_deluxe.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(472, 4, NULL, 'book_of_sun', 'BOOK OF SUN', 'book_of_sun', 'slot', NULL, 'PROVEDOR/BOOONGO/book_of_sun.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(473, 4, NULL, '777_gems', '777 GEMS', '777_gems', 'slot', NULL, 'PROVEDOR/BOOONGO/777_gems.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(474, 4, NULL, 'book_of_sun_multichance', 'BOOK OF SUN MULTICHANCE', 'book_of_sun_multichance', 'slot', NULL, 'PROVEDOR/BOOONGO/book_of_sun_multichance.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(475, 4, NULL, 'olympian_gods', 'OLYMPIAN GODS', 'olympian_gods', 'slot', NULL, 'PROVEDOR/BOOONGO/olympian_gods.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(476, 4, NULL, '777_gems_respin', '777 GEMS RESPIN', '777_gems_respin', 'slot', NULL, 'PROVEDOR/BOOONGO/777_gems_respin.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(477, 4, NULL, 'tigers_gold', 'TIGERS GOLD', 'tigers_gold', 'slot', NULL, 'PROVEDOR/BOOONGO/tigers_gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(478, 4, NULL, 'moon_sisters', 'MOON SISTERS', 'moon_sisters', 'slot', NULL, 'PROVEDOR/BOOONGO/moon_sisters.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(479, 4, NULL, 'book_of_sun_choice', 'BOOK OF SUN CHOICE', 'book_of_sun_choice', 'slot', NULL, 'PROVEDOR/BOOONGO/book_of_sun_choice.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(480, 4, NULL, 'super_marble', 'SUPER MARBLE', 'super_marble', 'slot', NULL, 'PROVEDOR/BOOONGO/super_marble.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(481, 4, NULL, 'buddha_fortune', 'BUDDHA FORTUNE', 'buddha_fortune', 'slot', NULL, 'PROVEDOR/BOOONGO/buddha_fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(482, 4, NULL, 'great_panda', 'GREAT PANDA', 'great_panda', 'slot', NULL, 'PROVEDOR/BOOONGO/great_panda.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:51:25'),
(483, 4, NULL, '15_golden_eggs', '15 GOLDEN EGGS', '15_golden_eggs', 'slot', NULL, 'PROVEDOR/BOOONGO/15_golden_eggs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:52:12'),
(484, 4, NULL, 'thunder_of_olympus', 'THUNDER OF OLYMPUS', 'thunder_of_olympus', 'slot', NULL, 'PROVEDOR/BOOONGO/thunder_of_olympus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(485, 4, NULL, 'eye_of_gold', 'EYE OF GOLD', 'eye_of_gold', 'slot', NULL, 'PROVEDOR/BOOONGO/eye_of_gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(486, 4, NULL, 'tiger_stone', 'TIGER STONE', 'tiger_stone', 'slot', NULL, 'PROVEDOR/BOOONGO/tiger_stone.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(487, 4, NULL, 'magic_apple', 'MAGIC APPLE', 'magic_apple', 'slot', NULL, 'PROVEDOR/BOOONGO/magic_apple.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(488, 4, NULL, 'wolf_saga', 'WOLF SAGA', 'wolf_saga', 'slot', NULL, 'PROVEDOR/BOOONGO/wolf_saga.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(489, 4, NULL, 'magic_ball', 'MAGIC BALL', 'magic_ball', 'slot', NULL, 'PROVEDOR/BOOONGO/magic_ball.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(490, 4, NULL, 'scarab_boost', 'SCARAB BOOST', 'scarab_boost', 'slot', NULL, 'PROVEDOR/BOOONGO/scarab_boost.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(491, 4, NULL, 'wukong', 'WUKONG', 'wukong', 'slot', NULL, 'PROVEDOR/BOOONGO/wukong.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(492, 4, NULL, 'pearl_diver', 'PEARL DIVER', 'pearl_diver', 'slot', NULL, 'PROVEDOR/BOOONGO/pearl_diver.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(493, 4, NULL, '3_coins_egypt', '3 COINS EGYPT', '3_coins_egypt', 'slot', NULL, 'PROVEDOR/BOOONGO/3_coins_egypt.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(494, 4, NULL, 'ganesha_boost', 'GANESHA BOOST', 'ganesha_boost', 'slot', NULL, 'PROVEDOR/BOOONGO/ganesha_boost.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(495, 4, NULL, 'wolf_night', 'WOLF NIGHT', 'wolf_night', 'slot', NULL, 'PROVEDOR/BOOONGO/wolf_night.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(496, 4, NULL, 'book_of_wizard', 'BOOK OF WIZARD', 'book_of_wizard', 'slot', NULL, 'PROVEDOR/BOOONGO/book_of_wizard.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(497, 4, NULL, 'lord_fortune_2', 'LORD FORTUNE 2', 'lord_fortune_2', 'slot', NULL, 'PROVEDOR/BOOONGO/lord_fortune_2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:51:42'),
(498, 4, NULL, 'gold_express', 'GOLD EXPRESS', 'gold_express', 'slot', NULL, 'PROVEDOR/BOOONGO/gold_express.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:52:03'),
(499, 4, NULL, 'book_of_wizard_crystal', 'BOOK OF WIZARD CRYSTAL', 'book_of_wizard_crystal', 'slot', NULL, 'PROVEDOR/BOOONGO/book_of_wizard_crystal.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(500, 4, NULL, 'pearl_diver_2', 'PEARL DIVER 2', 'pearl_diver_2', 'slot', NULL, 'PROVEDOR/BOOONGO/pearl_diver_2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(501, 4, NULL, 'sun_of_egypt_3', 'SUN OF EGYPT 3', 'sun_of_egypt_3', 'slot', NULL, 'PROVEDOR/BOOONGO/sun_of_egypt_3.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(502, 4, NULL, 'caishen_wealth', 'CAISHEN WEALTH', 'caishen_wealth', 'slot', NULL, 'PROVEDOR/BOOONGO/caishen_wealth.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(503, 4, NULL, 'aztec_fire', 'AZTEC FIRE', 'aztec_fire', 'slot', NULL, 'PROVEDOR/BOOONGO/aztec_fire.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:51:13'),
(504, 5, NULL, 'hand_of_gold', 'HAND OF GOLD', 'hand_of_gold', 'slot', NULL, 'PROVEDOR/PLAYSON/hand_of_gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(505, 5, NULL, 'legend_of_cleopatra', 'LEGEND OF CLEOPATRA', 'legend_of_cleopatra', 'slot', NULL, 'PROVEDOR/PLAYSON/legend_of_cleopatra.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 3, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:10:49'),
(506, 5, NULL, '40_joker_staxx', '40 JOKER STAXX', '40_joker_staxx', 'slot', NULL, 'PROVEDOR/PLAYSON/40_joker_staxx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:05:43'),
(507, 5, NULL, 'burning_wins', 'BURNING WINS', 'burning_wins', 'slot', NULL, 'PROVEDOR/PLAYSON/burning_wins.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:05:36'),
(508, 5, NULL, 'book_of_gold', 'BOOK OF GOLD', 'book_of_gold', 'slot', NULL, 'PROVEDOR/PLAYSON/book_of_gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:11:11'),
(509, 5, NULL, '100_joker_staxx', '100 JOKER STAXX', '100_joker_staxx', 'slot', NULL, 'PROVEDOR/PLAYSON/100_joker_staxx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(510, 5, NULL, 'book_of_gold_classic', 'BOOK OF GOLD CLASSIC', 'book_of_gold_classic', 'slot', NULL, 'PROVEDOR/PLAYSON/book_of_gold_classic.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:05:40'),
(511, 5, NULL, 'buffalo_xmas', 'BUFFALO XMAS', 'buffalo_xmas', 'slot', NULL, 'PROVEDOR/PLAYSON/buffalo_xmas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:05:41'),
(512, 6, NULL, '67', 'Golden eggs', '67', 'slot', NULL, 'PROVEDOR/CQ9/67.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(513, 6, NULL, '161', 'Hercules', '161', 'slot', NULL, 'PROVEDOR/CQ9/161.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(514, 6, NULL, '16', 'Super 5', '16', 'slot', NULL, 'PROVEDOR/CQ9/16.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(515, 6, NULL, '72', 'Happy Rich Year', '72', 'slot', NULL, 'PROVEDOR/CQ9/72.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(516, 6, NULL, '1', 'Fruit King', '1', 'slot', NULL, 'PROVEDOR/CQ9/1.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(517, 6, NULL, '163', 'Neja Advent', '163', 'slot', NULL, 'PROVEDOR/CQ9/163.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(518, 6, NULL, '26', '777', '26', 'slot', NULL, 'PROVEDOR/CQ9/26.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(519, 6, NULL, '50', 'Good fortune', '50', 'slot', NULL, 'PROVEDOR/CQ9/50.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(520, 6, NULL, '31', 'God of war', '31', 'slot', NULL, 'PROVEDOR/CQ9/31.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(521, 6, NULL, '64', 'Zeus', '64', 'slot', NULL, 'PROVEDOR/CQ9/64.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(522, 6, NULL, '69', 'Pasaycen', '69', 'slot', NULL, 'PROVEDOR/CQ9/69.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(523, 6, NULL, '89', 'Thor', '89', 'slot', NULL, 'PROVEDOR/CQ9/89.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:53:28'),
(524, 6, NULL, '46', 'Wolf moon', '46', 'slot', NULL, 'PROVEDOR/CQ9/46.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(525, 6, NULL, '139', 'Fire chibi', '139', 'slot', NULL, 'PROVEDOR/CQ9/139.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(526, 6, NULL, '15', 'Gu Gu Gu', '15', 'slot', NULL, 'PROVEDOR/CQ9/15.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(527, 6, NULL, '140', 'Fire Chibi 2', '140', 'slot', NULL, 'PROVEDOR/CQ9/140.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(528, 6, NULL, '8', 'So Sweet', '8', 'slot', NULL, 'PROVEDOR/CQ9/8.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:53:06'),
(529, 6, NULL, '147', 'Flower fortune', '147', 'slot', NULL, 'PROVEDOR/CQ9/147.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(530, 6, NULL, '113', 'Flying Kai Shen', '113', 'slot', NULL, 'PROVEDOR/CQ9/113.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(531, 6, NULL, '58', 'Gu Gu Gu 2', '58', 'slot', NULL, 'PROVEDOR/CQ9/58.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(532, 6, NULL, '128', 'Wheel money', '128', 'slot', NULL, 'PROVEDOR/CQ9/128.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(533, 6, NULL, '5', 'Mr Rich', '5', 'slot', NULL, 'PROVEDOR/CQ9/5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(534, 6, NULL, '180', 'Gu Gu Gu 3', '180', 'slot', NULL, 'PROVEDOR/CQ9/180.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:53:39'),
(535, 6, NULL, '118', 'SkullSkull', '118', 'slot', NULL, 'PROVEDOR/CQ9/118.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(536, 6, NULL, '148', 'Fortune totem', '148', 'slot', NULL, 'PROVEDOR/CQ9/148.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(537, 6, NULL, '144', 'Diamond treasure', '144', 'slot', NULL, 'PROVEDOR/CQ9/144.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(538, 6, NULL, '19', 'Hot spin', '19', 'slot', NULL, 'PROVEDOR/CQ9/19.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:53:19'),
(539, 6, NULL, '112', 'Pyramid radar', '112', 'slot', NULL, 'PROVEDOR/CQ9/112.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(540, 6, NULL, '160', 'Pa Kai Shen2', '160', 'slot', NULL, 'PROVEDOR/CQ9/160.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(542, 6, NULL, '47', 'Pharaoh gold', '47', 'slot', NULL, 'PROVEDOR/CQ9/47.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:54:22'),
(543, 6, NULL, '13', 'Sakura legend', '13', 'slot', NULL, 'PROVEDOR/CQ9/13.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(544, 6, NULL, '34', 'Gopher s War', '34', 'slot', NULL, 'PROVEDOR/CQ9/34.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(545, 6, NULL, '59', 'Summer mood', '59', 'slot', NULL, 'PROVEDOR/CQ9/59.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(547, 6, NULL, '95', 'Football boots', '95', 'slot', NULL, 'PROVEDOR/CQ9/95.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(548, 6, NULL, '57', 'The Beast War', '57', 'slot', NULL, 'PROVEDOR/CQ9/57.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(549, 6, NULL, '17', 'Great lion', '17', 'slot', NULL, 'PROVEDOR/CQ9/17.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(550, 6, NULL, '20', '888', '20', 'slot', NULL, 'PROVEDOR/CQ9/20.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(551, 6, NULL, '182', 'Thor 2', '182', 'slot', NULL, 'PROVEDOR/CQ9/182.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(552, 6, NULL, '66', 'Fire 777', '66', 'slot', NULL, 'PROVEDOR/CQ9/66.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(553, 6, NULL, '2', 'God of Chess', '2', 'slot', NULL, 'PROVEDOR/CQ9/2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(554, 6, NULL, '21', 'Big wolf', '21', 'slot', NULL, 'PROVEDOR/CQ9/21.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(555, 6, NULL, '197', 'Dragon s Treasure', '197', 'slot', NULL, 'PROVEDOR/CQ9/197.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:54:20'),
(556, 6, NULL, '208', 'Money tree', '208', 'slot', NULL, 'PROVEDOR/CQ9/208.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(557, 6, NULL, '212', 'Burning Si-Yow', '212', 'slot', NULL, 'PROVEDOR/CQ9/212.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(558, 6, NULL, '214', 'Ninja raccoon', '214', 'slot', NULL, 'PROVEDOR/CQ9/214.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(559, 6, NULL, '218', 'Dollar night', '218', 'slot', NULL, 'PROVEDOR/CQ9/218.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(560, 7, NULL, 'greatwall', 'The Great Wall Treasure', 'greatwall', 'slot', NULL, 'PROVEDOR/EVOPLAY/greatwall.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(561, 7, NULL, 'chinesenewyear', 'Chinese New Year', 'chinesenewyear', 'slot', NULL, 'PROVEDOR/EVOPLAY/chinesenewyear.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(562, 7, NULL, 'jewellerystore', 'Jewelry store', 'jewellerystore', 'slot', NULL, 'PROVEDOR/EVOPLAY/jewellerystore.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(563, 7, NULL, 'redcliff', 'Red cliff', 'redcliff', 'slot', NULL, 'PROVEDOR/EVOPLAY/redcliff.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(564, 7, NULL, 'ElvenPrincesses', 'Elven Princess', 'ElvenPrincesses', 'slot', NULL, 'PROVEDOR/EVOPLAY/ElvenPrincesses.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(565, 7, NULL, 'robinzon', 'Robinson', 'robinzon', 'slot', NULL, 'PROVEDOR/EVOPLAY/robinzon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(566, 7, NULL, 'aeronauts', 'Aeronauts', 'aeronauts', 'slot', NULL, 'PROVEDOR/EVOPLAY/aeronauts.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(567, 7, NULL, 'monsterlab', 'Monster rap', 'monsterlab', 'slot', NULL, 'PROVEDOR/EVOPLAY/monsterlab.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(568, 7, NULL, 'TriptotheFuture', 'Trip to the Future', 'TriptotheFuture', 'slot', NULL, 'PROVEDOR/EVOPLAY/TriptotheFuture.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(569, 7, NULL, 'NukeWorld', 'Nook World', 'NukeWorld', 'slot', NULL, 'PROVEDOR/EVOPLAY/NukeWorld.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(570, 7, NULL, 'legendofkaan', 'Legend of Khan', 'legendofkaan', 'slot', NULL, 'PROVEDOR/EVOPLAY/legendofkaan.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(571, 7, NULL, 'LivingTales', 'Night of the Living Tales', 'LivingTales', 'slot', NULL, 'PROVEDOR/EVOPLAY/LivingTales.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(572, 7, NULL, 'IceMania', 'Ice mania', 'IceMania', 'slot', NULL, 'PROVEDOR/EVOPLAY/IceMania.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:58:16'),
(573, 7, NULL, 'ValleyOfDreams', 'Valley of Dreams', 'ValleyOfDreams', 'slot', NULL, 'PROVEDOR/EVOPLAY/ValleyOfDreams.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(574, 7, NULL, 'FruitNova', 'Fruit Nova', 'FruitNova', 'slot', NULL, 'PROVEDOR/EVOPLAY/FruitNova.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(575, 7, NULL, 'TreeOfLight', 'Tree of light', 'TreeOfLight', 'slot', NULL, 'PROVEDOR/EVOPLAY/TreeOfLight.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(576, 7, NULL, 'TempleOfDead', 'Temple of the dead', 'TempleOfDead', 'slot', NULL, 'PROVEDOR/EVOPLAY/TempleOfDead.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(577, 7, NULL, 'RunesOfDestiny', 'Runes of Destiny', 'RunesOfDestiny', 'slot', NULL, 'PROVEDOR/EVOPLAY/RunesOfDestiny.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(578, 7, NULL, 'EllensFortune', 'Ellen Fortune', 'EllensFortune', 'slot', NULL, 'PROVEDOR/EVOPLAY/EllensFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(579, 7, NULL, 'UnlimitedWishes', 'Unlimited Wishes', 'UnlimitedWishes', 'slot', NULL, 'PROVEDOR/EVOPLAY/UnlimitedWishes.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(580, 7, NULL, 'FoodFeast', 'Food fist', 'FoodFeast', 'slot', NULL, 'PROVEDOR/EVOPLAY/FoodFeast.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:58:37'),
(581, 7, NULL, 'EpicLegends', 'Epic legends', 'EpicLegends', 'slot', NULL, 'PROVEDOR/EVOPLAY/EpicLegends.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(582, 7, NULL, 'SweetSugar', 'Sweet sugar', 'SweetSugar', 'slot', NULL, 'PROVEDOR/EVOPLAY/SweetSugar.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(583, 7, NULL, 'CycleofLuck', 'Cycle of Luck', 'CycleofLuck', 'slot', NULL, 'PROVEDOR/EVOPLAY/CycleofLuck.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:57:54'),
(584, 7, NULL, 'GangsterNight', 'Gangster night', 'GangsterNight', 'slot', NULL, 'PROVEDOR/EVOPLAY/GangsterNight.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(585, 7, NULL, 'GoldOfSirens', 'Gold of sirens', 'GoldOfSirens', 'slot', NULL, 'PROVEDOR/EVOPLAY/GoldOfSirens.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:58:09'),
(586, 7, NULL, 'BloodyBrilliant', 'Bloody brilliant', 'BloodyBrilliant', 'slot', NULL, 'PROVEDOR/EVOPLAY/BloodyBrilliant.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(587, 7, NULL, 'TempleOfDeadBonusBuy', 'Temple of the Dead BB', 'TempleOfDeadBonusBuy', 'slot', NULL, 'PROVEDOR/EVOPLAY/TempleOfDeadBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(588, 7, NULL, 'ShadowOfLuxor', 'Shadow of Luxor', 'ShadowOfLuxor', 'slot', NULL, 'PROVEDOR/EVOPLAY/ShadowOfLuxor.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(589, 7, NULL, 'CycleofLuckBonusBuy', 'Cycle of Luck BB', 'CycleofLuckBonusBuy', 'slot', NULL, 'PROVEDOR/EVOPLAY/CycleofLuckBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(590, 7, NULL, 'AnubisMoon', 'Anubis moon', 'AnubisMoon', 'slot', NULL, 'PROVEDOR/EVOPLAY/AnubisMoon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(591, 7, NULL, 'FruitDisco', 'Fruit disco', 'FruitDisco', 'slot', NULL, 'PROVEDOR/EVOPLAY/FruitDisco.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:17:20'),
(592, 7, NULL, 'FruitSuperNova30', 'Fruit Super Nova 30', 'FruitSuperNova30', 'slot', NULL, 'PROVEDOR/EVOPLAY/FruitSuperNova30.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(593, 7, NULL, 'CurseOfThePharaoh', 'Curse of the Pharaoh', 'CurseOfThePharaoh', 'slot', NULL, 'PROVEDOR/EVOPLAY/CurseOfThePharaoh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(594, 7, NULL, 'GoldOfSirensBonusBuy', 'Gold of Sirens BB', 'GoldOfSirensBonusBuy', 'slot', NULL, 'PROVEDOR/EVOPLAY/GoldOfSirensBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(595, 7, NULL, 'FruitSuperNova60', 'Fruit Super Nova 60', 'FruitSuperNova60', 'slot', NULL, 'PROVEDOR/EVOPLAY/FruitSuperNova60.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(596, 7, NULL, 'CurseofthePharaohBonusBuy', 'Curse of the Pharaoh BB', 'CurseofthePharaohBonusBuy', 'slot', NULL, 'PROVEDOR/EVOPLAY/CurseofthePharaohBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(597, 7, NULL, 'FruitSuperNova100', 'Fruit Super Nova 100', 'FruitSuperNova100', 'slot', NULL, 'PROVEDOR/EVOPLAY/FruitSuperNova100.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(599, 7, NULL, 'FruitSuperNova80', 'Whoft Super Nova 80', 'FruitSuperNova80', 'slot', NULL, 'PROVEDOR/EVOPLAY/FruitSuperNova80.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(600, 7, NULL, 'DragonsTavern', 'Dragons Tavern', 'DragonsTavern', 'slot', NULL, 'PROVEDOR/EVOPLAY/DragonsTavern.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(601, 7, NULL, 'ChristmasReachBonusBuy', 'Christmas Riti BB', 'ChristmasReachBonusBuy', 'slot', NULL, 'PROVEDOR/EVOPLAY/ChristmasReachBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(602, 7, NULL, 'WildOverlords', 'Wild overlord', 'WildOverlords', 'slot', NULL, 'PROVEDOR/EVOPLAY/WildOverlords.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(603, 7, NULL, 'DragonsTavernBonusBuy', 'Dragons Tavern BB', 'DragonsTavernBonusBuy', 'slot', NULL, 'PROVEDOR/EVOPLAY/DragonsTavernBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(604, 7, NULL, 'BudaiReels', 'Budai reels', 'BudaiReels', 'slot', NULL, 'PROVEDOR/EVOPLAY/BudaiReels.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(605, 7, NULL, 'BudaiReelsBonusBuy', 'Budai Lils BB', 'BudaiReelsBonusBuy', 'slot', NULL, 'PROVEDOR/EVOPLAY/BudaiReelsBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(606, 7, NULL, 'MoneyMinter', 'Money minter', 'MoneyMinter', 'slot', NULL, 'PROVEDOR/EVOPLAY/MoneyMinter.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(609, 7, NULL, 'TheGreatestCatch', 'The Greatest Catch', 'TheGreatestCatch', 'slot', NULL, 'PROVEDOR/EVOPLAY/TheGreatestCatch.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(611, 7, NULL, 'TreeOfLightBB', 'Tree of Light BB', 'TreeOfLightBB', 'slot', NULL, 'PROVEDOR/EVOPLAY/TreeOfLightBB.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(612, 7, NULL, 'WolfHiding', 'Wolf Hiding', 'WolfHiding', 'slot', NULL, 'PROVEDOR/EVOPLAY/WolfHiding.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(613, 7, NULL, 'CaminoDeChili', 'Camino de Chili', 'CaminoDeChili', 'slot', NULL, 'PROVEDOR/EVOPLAY/CaminoDeChili.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(614, 7, NULL, 'CandyDreamsSweetPlanet', 'candy dreams', 'CandyDreamsSweetPlanet', 'slot', NULL, 'PROVEDOR/EVOPLAY/CandyDreamsSweetPlanet.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:16:07'),
(615, 7, NULL, 'WildOverlordsBonusBuy', 'Wild Overlord BB', 'WildOverlordsBonusBuy', 'slot', NULL, 'PROVEDOR/EVOPLAY/WildOverlordsBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(616, 7, NULL, 'TempleOfThunder', 'Temple of Thunder', 'TempleOfThunder', 'slot', NULL, 'PROVEDOR/EVOPLAY/TempleOfThunder.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(617, 8, NULL, 'WildTriads', 'WildTriads', 'WildTriads', 'slot', NULL, 'PROVEDOR/TOPTREND/WildTriads.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(618, 8, NULL, 'GoldenDragon', 'Golden Dragon', 'GoldenDragon', 'slot', NULL, 'PROVEDOR/TOPTREND/GoldenDragon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 19:55:10'),
(619, 8, NULL, 'ReelsOfFortune', 'Reels Of Fortune', 'ReelsOfFortune', 'slot', NULL, 'PROVEDOR/TOPTREND/ReelsOfFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(620, 8, NULL, 'GoldenAmazon', 'Golden Amazon', 'GoldenAmazon', 'slot', NULL, 'PROVEDOR/TOPTREND/GoldenAmazon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(621, 8, NULL, 'MonkeyLuck', 'MonkeyLuck', 'MonkeyLuck', 'slot', NULL, 'PROVEDOR/TOPTREND/MonkeyLuck.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(622, 8, NULL, 'LeagueOfChampions', 'League Of Champions', 'LeagueOfChampions', 'slot', NULL, 'PROVEDOR/TOPTREND/LeagueOfChampions.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(623, 8, NULL, 'MadMonkeyH5', 'MadMonkey', 'MadMonkeyH5', 'slot', NULL, 'PROVEDOR/TOPTREND/MadMonkeyH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(624, 8, NULL, 'DynastyEmpire', 'Dynasty Empire', 'DynastyEmpire', 'slot', NULL, 'PROVEDOR/TOPTREND/DynastyEmpire.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 19:55:34'),
(625, 8, NULL, 'SuperKids', 'SuperKids', 'SuperKids', 'slot', NULL, 'PROVEDOR/TOPTREND/SuperKids.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(626, 8, NULL, 'HotVolcanoH5', 'HotVolcano', 'HotVolcanoH5', 'slot', NULL, 'PROVEDOR/TOPTREND/HotVolcanoH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(627, 8, NULL, 'Huluwa', 'Huluwa', 'Huluwa', 'slot', NULL, 'PROVEDOR/TOPTREND/Huluwa.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(628, 8, NULL, 'LegendOfLinkH5', 'LegendOfLink', 'LegendOfLinkH5', 'slot', NULL, 'PROVEDOR/TOPTREND/LegendOfLinkH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(629, 8, NULL, 'DetectiveBlackCat', 'DetectiveBlackCat', 'DetectiveBlackCat', 'slot', NULL, 'PROVEDOR/TOPTREND/DetectiveBlackCat.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(630, 8, NULL, 'ChilliGoldH5', 'Chilli Gold', 'ChilliGoldH5', 'slot', NULL, 'PROVEDOR/TOPTREND/ChilliGoldH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(631, 8, NULL, 'SilverLionH5', 'Silver Lion', 'SilverLionH5', 'slot', NULL, 'PROVEDOR/TOPTREND/SilverLionH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(632, 8, NULL, 'ThunderingZeus', 'ThunderingZeus', 'ThunderingZeus', 'slot', NULL, 'PROVEDOR/TOPTREND/ThunderingZeus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-05-31 13:52:06'),
(633, 8, NULL, 'DragonPalaceH5', 'Dragon Palace', 'DragonPalaceH5', 'slot', NULL, 'PROVEDOR/TOPTREND/DragonPalaceH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(634, 8, NULL, 'MadMonkey2', 'MadMonkey', 'MadMonkey2', 'slot', NULL, 'PROVEDOR/TOPTREND/MadMonkey2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(635, 8, NULL, 'MedusaCurse', 'Medusa Curse', 'MedusaCurse', 'slot', NULL, 'PROVEDOR/TOPTREND/MedusaCurse.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(636, 8, NULL, 'BattleHeroes', 'Battle Heroes', 'BattleHeroes', 'slot', NULL, 'PROVEDOR/TOPTREND/BattleHeroes.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(637, 8, NULL, 'NeptunesGoldH5', 'Neptunes Gold', 'NeptunesGoldH5', 'slot', NULL, 'PROVEDOR/TOPTREND/NeptunesGoldH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(638, 8, NULL, 'HeroesNeverDie', 'Heroes Never Die', 'HeroesNeverDie', 'slot', NULL, 'PROVEDOR/TOPTREND/HeroesNeverDie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(639, 8, NULL, 'WildWildWitch', 'Wild Wild Witch', 'WildWildWitch', 'slot', NULL, 'PROVEDOR/TOPTREND/WildWildWitch.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(640, 8, NULL, 'WildKartRacers', 'Wild Kart Racers', 'WildKartRacers', 'slot', NULL, 'PROVEDOR/TOPTREND/WildKartRacers.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 2, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:08:40'),
(641, 8, NULL, 'KingDinosaur', 'KingDinosaur', 'KingDinosaur', 'slot', NULL, 'PROVEDOR/TOPTREND/KingDinosaur.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:09:30'),
(642, 8, NULL, 'GoldenGenie', 'GoldenGenie', 'GoldenGenie', 'slot', NULL, 'PROVEDOR/TOPTREND/GoldenGenie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(643, 8, NULL, 'UltimateFighter', 'UltimateFighter', 'UltimateFighter', 'slot', NULL, 'PROVEDOR/TOPTREND/UltimateFighter.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(644, 8, NULL, 'EverlastingSpins', 'EverlastingSpins', 'EverlastingSpins', 'slot', NULL, 'PROVEDOR/TOPTREND/EverlastingSpins.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(645, 8, NULL, 'Zoomania', 'Zoomania', 'Zoomania', 'slot', NULL, 'PROVEDOR/TOPTREND/Zoomania.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(646, 8, NULL, 'LaserCats', 'Laser Cats', 'LaserCats', 'slot', NULL, 'PROVEDOR/TOPTREND/LaserCats.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(647, 8, NULL, 'DiamondFortune', 'DiamondFortune', 'DiamondFortune', 'slot', NULL, 'PROVEDOR/TOPTREND/DiamondFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 5, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:08:00'),
(648, 8, NULL, 'GoldenClaw', 'GoldenClaw', 'GoldenClaw', 'slot', NULL, 'PROVEDOR/TOPTREND/GoldenClaw.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(649, 8, NULL, 'PandaWarrior', 'PandaWarrior', 'PandaWarrior', 'slot', NULL, 'PROVEDOR/TOPTREND/PandaWarrior.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(650, 8, NULL, 'RoyalGoldenDragon', 'RoyalGoldenDragon', 'RoyalGoldenDragon', 'slot', NULL, 'PROVEDOR/TOPTREND/RoyalGoldenDragon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(651, 8, NULL, 'MegaMaya', 'MegaMaya', 'MegaMaya', 'slot', NULL, 'PROVEDOR/TOPTREND/MegaMaya.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(652, 8, NULL, 'MegaPhoenix', 'MegaPhoenix', 'MegaPhoenix', 'slot', NULL, 'PROVEDOR/TOPTREND/MegaPhoenix.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(653, 8, NULL, 'DolphinGoldH5', 'DolphinGold', 'DolphinGoldH5', 'slot', NULL, 'PROVEDOR/TOPTREND/DolphinGoldH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(654, 8, NULL, 'DragonKingH5', 'DragonKing', 'DragonKingH5', 'slot', NULL, 'PROVEDOR/TOPTREND/DragonKingH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(655, 8, NULL, 'LuckyPandaH5', 'LuckyPanda', 'LuckyPandaH5', 'slot', NULL, 'PROVEDOR/TOPTREND/LuckyPandaH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(656, 9, NULL, 'btball5x20', 'Crazy Basketball', 'btball5x20', 'slot', NULL, 'PROVEDOR/DREAMTECH/btball5x20.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(657, 9, NULL, 'dnp', 'DragonPhoenix Prosper', 'dnp', 'slot', NULL, 'PROVEDOR/DREAMTECH/dnp.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(658, 9, NULL, 'crystal', 'Glory of Heroes', 'crystal', 'slot', NULL, 'PROVEDOR/DREAMTECH/crystal.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(659, 9, NULL, 'fls', 'FULUSHOU', 'fls', 'slot', NULL, 'PROVEDOR/DREAMTECH/fls.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(660, 9, NULL, 'fourss', 'Four Holy Beasts', 'fourss', 'slot', NULL, 'PROVEDOR/DREAMTECH/fourss.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(661, 9, NULL, 'casino', '3D Slot', 'casino', 'slot', NULL, 'PROVEDOR/DREAMTECH/casino.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(662, 9, NULL, 'crazy5x243', 'Crazy GO GO GO', 'crazy5x243', 'slot', NULL, 'PROVEDOR/DREAMTECH/crazy5x243.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(663, 9, NULL, 'rocknight', 'RocknRoll Night', 'rocknight', 'slot', NULL, 'PROVEDOR/DREAMTECH/rocknight.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(664, 9, NULL, 'bluesea', 'Blue Sea', 'bluesea', 'slot', NULL, 'PROVEDOR/DREAMTECH/bluesea.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(665, 9, NULL, 'circus', 'Crazy Circus', 'circus', 'slot', NULL, 'PROVEDOR/DREAMTECH/circus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(666, 9, NULL, 'bikini', 'Bikini Party', 'bikini', 'slot', NULL, 'PROVEDOR/DREAMTECH/bikini.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(667, 9, NULL, 'foryouth5x25', 'SO YOUNG', 'foryouth5x25', 'slot', NULL, 'PROVEDOR/DREAMTECH/foryouth5x25.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(668, 9, NULL, 'fourbeauty', 'Four Beauties', 'fourbeauty', 'slot', NULL, 'PROVEDOR/DREAMTECH/fourbeauty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(669, 9, NULL, 'sweethouse', 'Candy House', 'sweethouse', 'slot', NULL, 'PROVEDOR/DREAMTECH/sweethouse.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(670, 9, NULL, 'legend5x25', 'Legend of the King', 'legend5x25', 'slot', NULL, 'PROVEDOR/DREAMTECH/legend5x25.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(671, 9, NULL, 'opera', 'Beijing opera', 'opera', 'slot', NULL, 'PROVEDOR/DREAMTECH/opera.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(672, 9, NULL, 'bigred', 'Big Red', 'bigred', 'slot', NULL, 'PROVEDOR/DREAMTECH/bigred.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(673, 9, NULL, 'wrathofthor', 'Wrath of Thor', 'wrathofthor', 'slot', NULL, 'PROVEDOR/DREAMTECH/wrathofthor.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(674, 9, NULL, 'boxingarena', 'Boxing Arena', 'boxingarena', 'slot', NULL, 'PROVEDOR/DREAMTECH/boxingarena.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(675, 9, NULL, 'fantasyforest', 'Elf Kingdom', 'fantasyforest', 'slot', NULL, 'PROVEDOR/DREAMTECH/fantasyforest.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(676, 9, NULL, 'egyptian', 'Egyptian Empire', 'egyptian', 'slot', NULL, 'PROVEDOR/DREAMTECH/egyptian.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(677, 9, NULL, 'hotpotfeast', 'Hotpot Feast', 'hotpotfeast', 'slot', NULL, 'PROVEDOR/DREAMTECH/hotpotfeast.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(678, 9, NULL, 'magician', 'Magician', 'magician', 'slot', NULL, 'PROVEDOR/DREAMTECH/magician.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(679, 9, NULL, 'galaxywars', 'Galaxy Wars', 'galaxywars', 'slot', NULL, 'PROVEDOR/DREAMTECH/galaxywars.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(680, 9, NULL, 'easyrider', 'Easy Rider', 'easyrider', 'slot', NULL, 'PROVEDOR/DREAMTECH/easyrider.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(681, 9, NULL, 'goldjade5x50', 'Jin Yu Man Tang', 'goldjade5x50', 'slot', NULL, 'PROVEDOR/DREAMTECH/goldjade5x50.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(682, 9, NULL, 'shokudo', 'shokudo', 'shokudo', 'slot', NULL, 'PROVEDOR/DREAMTECH/shokudo.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(683, 9, NULL, 'train', 'Treasure Hunt Trip', 'train', 'slot', NULL, 'PROVEDOR/DREAMTECH/train.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(684, 9, NULL, 'lovefighters', 'Love Fighters', 'lovefighters', 'slot', NULL, 'PROVEDOR/DREAMTECH/lovefighters.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(685, 9, NULL, 'genie', 'Aladdin s Wish', 'genie', 'slot', NULL, 'PROVEDOR/DREAMTECH/genie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(686, 9, NULL, 'garden', 'Little Big Garden', 'garden', 'slot', NULL, 'PROVEDOR/DREAMTECH/garden.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 18:50:32'),
(687, 9, NULL, 'alchemist', 'Crazy Alchemist', 'alchemist', 'slot', NULL, 'PROVEDOR/DREAMTECH/alchemist.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(688, 9, NULL, 'dinosaur5x25', 'Dinosaur World', 'dinosaur5x25', 'slot', NULL, 'PROVEDOR/DREAMTECH/dinosaur5x25.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 2, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:18:40'),
(689, 9, NULL, 'tombshadow', 'Tomb Shadow', 'tombshadow', 'slot', NULL, 'PROVEDOR/DREAMTECH/tombshadow.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(690, 9, NULL, 'clash', 'Clash of Three kingdoms', 'clash', 'slot', NULL, 'PROVEDOR/DREAMTECH/clash.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(691, 9, NULL, 'magicbean', 'Magic Bean Legend', 'magicbean', 'slot', NULL, 'PROVEDOR/DREAMTECH/magicbean.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(692, 9, NULL, 'secretdate', 'Secret Date', 'secretdate', 'slot', NULL, 'PROVEDOR/DREAMTECH/secretdate.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 18:56:02'),
(693, 9, NULL, 'bacteria', 'Germ Lab', 'bacteria', 'slot', NULL, 'PROVEDOR/DREAMTECH/bacteria.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(694, 9, NULL, 'baseball', 'Baseball Frenzy', 'baseball', 'slot', NULL, 'PROVEDOR/DREAMTECH/baseball.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 18:50:03'),
(696, 9, NULL, 'mysticalstones', 'Mystical Stones', 'mysticalstones', 'slot', NULL, 'PROVEDOR/DREAMTECH/mysticalstones.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(697, 9, NULL, 'sincity', 'Sin City', 'sincity', 'slot', NULL, 'PROVEDOR/DREAMTECH/sincity.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 18:50:50'),
(698, 9, NULL, 'wheel', 'Secrets of The Pentagram', 'wheel', 'slot', NULL, 'PROVEDOR/DREAMTECH/wheel.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(699, 9, NULL, 'westwild', 'West Wild', 'westwild', 'slot', NULL, 'PROVEDOR/DREAMTECH/westwild.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(700, 9, NULL, 'halloween', 'Witch Winnings', 'halloween', 'slot', NULL, 'PROVEDOR/DREAMTECH/halloween.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(701, 9, NULL, 'bloodmoon', 'Blood Wolf legend', 'bloodmoon', 'slot', NULL, 'PROVEDOR/DREAMTECH/bloodmoon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 18:56:26'),
(702, 9, NULL, 'dragonball2', 'Heroes of the East', 'dragonball2', 'slot', NULL, 'PROVEDOR/DREAMTECH/dragonball2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(703, 9, NULL, 'muaythai', 'Muaythai', 'muaythai', 'slot', NULL, 'PROVEDOR/DREAMTECH/muaythai.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(704, 9, NULL, 'sailor', 'Sailor Princess', 'sailor', 'slot', NULL, 'PROVEDOR/DREAMTECH/sailor.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(705, 9, NULL, 'nightclub', 'Infinity Club', 'nightclub', 'slot', NULL, 'PROVEDOR/DREAMTECH/nightclub.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(706, 9, NULL, 'nezha', 'Nezha Legend', 'nezha', 'slot', NULL, 'PROVEDOR/DREAMTECH/nezha.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(707, 9, NULL, 'bird', 'Bird Island', 'bird', 'slot', NULL, 'PROVEDOR/DREAMTECH/bird.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(708, 9, NULL, 'honor', 'Field Of Honor', 'honor', 'slot', NULL, 'PROVEDOR/DREAMTECH/honor.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(709, 9, NULL, 'train2', 'Treasure Hunt Trip 2', 'train2', 'slot', NULL, 'PROVEDOR/DREAMTECH/train2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(710, 9, NULL, 'shiningstars', 'ShiningStars', 'shiningstars', 'slot', NULL, 'PROVEDOR/DREAMTECH/shiningstars.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(711, 9, NULL, 'tgow2plus', 'Cai Shen Dao Plus', 'tgow2plus', 'slot', NULL, 'PROVEDOR/DREAMTECH/tgow2plus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(712, 9, NULL, 'peeping', 'Peeping', 'peeping', 'slot', NULL, 'PROVEDOR/DREAMTECH/peeping.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(713, 1, NULL, 'piggy-gold', 'Piggy Gold', 'piggy-gold', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/piggy-gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-05-27 19:53:14'),
(714, 1, NULL, 'the-great-icescape', 'The Great Icescape', 'the-great-icescape', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/the-great-icescape.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:29:13'),
(715, 1, NULL, 'captains-bounty', 'Captains Bounty', 'captains-bounty', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/captains-bounty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(716, 1, NULL, 'leprechaun-riches', 'Leprechaun Riches', 'leprechaun-riches', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/leprechaun-riches.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(717, 1, NULL, 'mahjong-ways', 'Mahjong Ways', 'mahjong-ways', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/mahjong-ways.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(718, 1, NULL, 'gem-saviour-conquest', 'Gem Saviour Conquest', 'gem-saviour-conquest', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/gem-saviour-conquest.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(719, 1, NULL, 'candy-burst', 'Candy Burst', 'candy-burst', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/candy-burst.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(720, 1, NULL, 'mahjong-ways2', 'Mahjong Ways 2', 'mahjong-ways2', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/mahjong-ways2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(721, 1, NULL, 'ganesha-fortune', 'Ganesha Fortune', 'ganesha-fortune', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/ganesha-fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(722, 1, NULL, 'phoenix-rises', 'Phoenix Rises', 'phoenix-rises', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/phoenix-rises.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-05-27 19:52:38'),
(723, 1, NULL, 'wild-fireworks', 'Wild Fireworks', 'wild-fireworks', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/wild-fireworks.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(724, 1, NULL, 'treasures-aztec', 'Treasures of Aztec', 'treasures-aztec', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/treasures-aztec.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(725, 1, NULL, 'queen-bounty', 'Queen of Bounty', 'queen-bounty', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/queen-bounty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(726, 1, NULL, 'jewels-prosper', 'Jewels of Prosperity', 'jewels-prosper', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/jewels-prosper.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(727, 1, NULL, 'galactic-gems', 'Galactic Gems', 'galactic-gems', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/galactic-gems.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-23 00:39:54'),
(728, 1, NULL, 'gdn-ice-fire', 'Guardians of Ice and Fire', 'gdn-ice-fire', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/gdn-ice-fire.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(729, 1, NULL, 'wild-bandito', 'Wild Bandito', 'wild-bandito', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/wild-bandito.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 6, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:30:34'),
(730, 1, NULL, 'candy-bonanza', 'Candy Bonanza', 'candy-bonanza', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/candy-bonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(731, 1, NULL, 'majestic-ts', 'Majestic Treasures', 'majestic-ts', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/majestic-ts.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(732, 1, NULL, 'crypt-fortune', 'Raider Janes Crypt of Fortune', 'crypt-fortune', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/crypt-fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(733, 1, NULL, 'sprmkt-spree', 'Supermarket Spree', 'sprmkt-spree', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/sprmkt-spree.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(734, 1, NULL, 'lgd-monkey-kg', 'Legendary Monkey King', 'lgd-monkey-kg', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/lgd-monkey-kg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(735, 1, NULL, 'spirit-wonder', 'Spirited Wonders', 'spirit-wonder', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/spirit-wonder.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(736, 1, NULL, 'emoji-riches', 'Emoji Riches', 'emoji-riches', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/emoji-riches.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(737, 1, NULL, 'garuda-gems', 'Garuda Gems', 'garuda-gems', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/garuda-gems.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(738, 1, NULL, 'dest-sun-moon', 'Destiny of Sun e Moon', 'dest-sun-moon', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/dest-sun-moon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(739, 1, NULL, 'btrfly-blossom', 'Butterfly Blossom', 'btrfly-blossom', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/btrfly-blossom.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(740, 1, NULL, 'rooster-rbl', 'Rooster Rumble', 'rooster-rbl', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/rooster-rbl.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(741, 1, NULL, 'battleground', 'Battleground Royale', 'battleground', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/battleground.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(742, 1, NULL, 'prosper-ftree', 'Prosperity Fortune Tree', 'prosper-ftree', 'PGSoft', NULL, 'PROVEDOR/PGSOFT/prosper-ftree.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(743, 10, NULL, 'vs5ultrab', 'Ultra Burn', 'vs5ultrab', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs5ultrab.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(744, 10, NULL, 'vs5ultra', 'Ultra Hold and Spin', 'vs5ultra', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs5ultra.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(745, 10, NULL, 'vs10returndead', 'Return of the Dead', 'vs10returndead', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs10returndead.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(746, 10, NULL, 'vs10bbbonanza', 'Big Bass Bonanza', 'vs10bbbonanza', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs10bbbonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(747, 10, NULL, 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'vs20hburnhs', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs20hburnhs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(748, 10, NULL, 'vswayslight', 'Lucky Lightning', 'vswayslight', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vswayslight.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(749, 10, NULL, 'vs12bbb', 'Bigger Bass Bonanza', 'vs12bbb', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs12bbb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 6, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:13:12'),
(750, 10, NULL, 'vs10floatdrg', 'Floating Dragon', 'vs10floatdrg', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs10floatdrg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(751, 10, NULL, 'vs1024temuj', 'Temujin Treasures', 'vs1024temuj', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs1024temuj.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(752, 10, NULL, 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'vs10bxmasbnza', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs10bxmasbnza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(753, 10, NULL, 'vswaysbbb', 'Big Bass Bonanza Megaways(tm)', 'vswaysbbb', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vswaysbbb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(754, 10, NULL, 'vs40bigjuan', 'Big Juan', 'vs40bigjuan', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs40bigjuan.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 4, 0, 1, '2024-05-27 07:25:59', '2024-07-10 18:12:53'),
(755, 10, NULL, 'vs10starpirate', 'Star Pirates Code', 'vs10starpirate', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs10starpirate.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 17:10:08'),
(756, 10, NULL, 'vs5hotburn', 'Hot to burn', 'vs5hotburn', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs5hotburn.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(757, 10, NULL, 'vs25bkofkngdm', 'Book of Kingdoms', 'vs25bkofkngdm', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs25bkofkngdm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(758, 10, NULL, 'vs10eyestorm', 'Eye of the Storm', 'vs10eyestorm', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs10eyestorm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 17:09:47'),
(759, 10, NULL, 'vs10amm', 'The Amazing Money Machine', 'vs10amm', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs10amm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(760, 10, NULL, 'vs10luckcharm', 'Lucky Grace And Charm', 'vs10luckcharm', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs10luckcharm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(761, 10, NULL, 'vs25goldparty', 'Gold Party(r)', 'vs25goldparty', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs25goldparty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 17:11:23'),
(762, 10, NULL, 'vs20rockvegas', 'Rock Vegas Mega Hold e Spin', 'vs20rockvegas', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs20rockvegas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(763, 10, NULL, 'vs10tictac', 'Tic Tac Take', 'vs10tictac', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs10tictac.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 17:10:17'),
(764, 10, NULL, 'vs243queenie', 'Queenie', 'vs243queenie', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs243queenie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(765, 10, NULL, 'vs10spiritadv', 'Spirit of Adventure', 'vs10spiritadv', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs10spiritadv.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(766, 10, NULL, 'vs5littlegem', 'Little Gem Hold and Spin', 'vs5littlegem', 'slot', NULL, 'PROVEDOR/REELKINGDOM/vs5littlegem.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(791, 12, NULL, '01rb77cq1gtenhmo', 'Auto-Roulette VIP', '01rb77cq1gtenhmo', 'Live', NULL, 'PROVEDOR/EVOLUTION/01rb77cq1gtenhmo.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(792, 12, NULL, 'qgqrucipvltnvnvq', 'Speed Baccarat W', 'qgqrucipvltnvnvq', 'Live', NULL, 'PROVEDOR/EVOLUTION/qgqrucipvltnvnvq.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(793, 12, NULL, 'JapSpeedBac00001', 'Japanese Speed Baccarat A', 'JapSpeedBac00001', 'Live', NULL, 'PROVEDOR/EVOLUTION/JapSpeedBac00001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(794, 12, NULL, 'NoCommBac0000001', 'No Commission Baccarat', 'NoCommBac0000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/NoCommBac0000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(795, 12, NULL, 'PTBaccarat000001', 'Prosperity Tree Baccarat', 'PTBaccarat000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/PTBaccarat000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(796, 12, NULL, 'p63cmvmwagteemoy', 'Korean Speed Baccarat A', 'p63cmvmwagteemoy', 'Live', NULL, 'PROVEDOR/EVOLUTION/p63cmvmwagteemoy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(797, 12, NULL, 'MonBigBaller0001', 'MONOPOLY Big Baller', 'MonBigBaller0001', 'Live', NULL, 'PROVEDOR/EVOLUTION/MonBigBaller0001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(798, 12, NULL, 'LightningTable01', 'Lightning Roulette', 'LightningTable01', 'Live', NULL, 'PROVEDOR/EVOLUTION/LightningTable01.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(799, 12, NULL, 'ndgvz5mlhfuaad6e', 'Speed Baccarat D', 'ndgvz5mlhfuaad6e', 'Live', NULL, 'PROVEDOR/EVOLUTION/ndgvz5mlhfuaad6e.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(800, 12, NULL, 'obj64qcnqfunjelj', 'Speed Baccarat J', 'obj64qcnqfunjelj', 'Live', NULL, 'PROVEDOR/EVOLUTION/obj64qcnqfunjelj.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(801, 12, NULL, 'PorROULigh000001', 'Roleta Relampago', 'PorROULigh000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/PorROULigh000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:22:09'),
(802, 12, NULL, 'ovfzgqahvicqtiwu', 'Lightning Roulette Italia', 'ovfzgqahvicqtiwu', 'Live', NULL, 'PROVEDOR/EVOLUTION/ovfzgqahvicqtiwu.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(803, 12, NULL, 'HSpeedBac0000002', 'Hindi Speed Baccarat B', 'HSpeedBac0000002', 'Live', NULL, 'PROVEDOR/EVOLUTION/HSpeedBac0000002.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(805, 12, NULL, '8clwnwrupuvf0osq', 'Ruleta en Vivo', '8clwnwrupuvf0osq', 'Live', NULL, 'PROVEDOR/EVOLUTION/8clwnwrupuvf0osq.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(806, 12, NULL, 'xie6wodezmfwmmcb', 'Punto Banco', 'xie6wodezmfwmmcb', 'Live', NULL, 'PROVEDOR/EVOLUTION/xie6wodezmfwmmcb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(807, 12, NULL, '48z5pjps3ntvqc1b', 'Auto-Roulette', '48z5pjps3ntvqc1b', 'Live', NULL, 'PROVEDOR/EVOLUTION/48z5pjps3ntvqc1b.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 19:59:07'),
(808, 12, NULL, 'mkvhbciosnfqhat7', 'Arabic Roulette', 'mkvhbciosnfqhat7', 'Live', NULL, 'PROVEDOR/EVOLUTION/mkvhbciosnfqhat7.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(809, 12, NULL, 'RedDoorRoulette1', 'Red Door Roulette', 'RedDoorRoulette1', 'Live', NULL, 'PROVEDOR/EVOLUTION/RedDoorRoulette1.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(811, 12, NULL, 'nmwde3fd7hvqhq43', 'Speed Baccarat F', 'nmwde3fd7hvqhq43', 'Live', NULL, 'PROVEDOR/EVOLUTION/nmwde3fd7hvqhq43.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(812, 12, NULL, 'ocye2ju2bsoyq6vv', 'Speed Baccarat K', 'ocye2ju2bsoyq6vv', 'Live', NULL, 'PROVEDOR/EVOLUTION/ocye2ju2bsoyq6vv.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(813, 12, NULL, 'EmperorSB0000001', 'Emperor Sic Bo', 'EmperorSB0000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/EmperorSB0000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(814, 12, NULL, 'CrazyTime0000002', 'Crazy Time A', 'CrazyTime0000002', 'Live', NULL, 'PROVEDOR/EVOLUTION/CrazyTime0000002.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(815, 12, NULL, 'ovu5eja74ccmyoiq', 'Speed Baccarat N', 'ovu5eja74ccmyoiq', 'Live', NULL, 'PROVEDOR/EVOLUTION/ovu5eja74ccmyoiq.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(816, 12, NULL, 'SBCTable00000001', 'Side Bet City', 'SBCTable00000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/SBCTable00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(817, 12, NULL, 'nmwdzhbg7hvqh6a7', 'Speed Baccarat G', 'nmwdzhbg7hvqh6a7', 'Live', NULL, 'PROVEDOR/EVOLUTION/nmwdzhbg7hvqh6a7.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(822, 12, NULL, 'AmericanTable001', 'American Roulette', 'AmericanTable001', 'Live', NULL, 'PROVEDOR/EVOLUTION/AmericanTable001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(823, 12, NULL, 'PorROU0000000001', 'Roleta ao Vivo', 'PorROU0000000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/PorROU0000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 13, 0, 1, '2024-05-27 07:25:59', '2024-07-10 23:59:21'),
(824, 12, NULL, 'pv5q45yjhasyt46y', 'Emperor Roulette', 'pv5q45yjhasyt46y', 'Live', NULL, 'PROVEDOR/EVOLUTION/pv5q45yjhasyt46y.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(825, 12, NULL, 'ndgv45bghfuaaebf', 'Speed Baccarat E', 'ndgv45bghfuaaebf', 'Live', NULL, 'PROVEDOR/EVOLUTION/ndgv45bghfuaaebf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(827, 12, NULL, '7x0b1tgh7agmf6hv', 'Immersive Roulette', '7x0b1tgh7agmf6hv', 'Live', NULL, 'PROVEDOR/EVOLUTION/7x0b1tgh7agmf6hv.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(829, 12, NULL, 'ovu5h6b3ujb4y53w', 'No Commission Speed Baccarat C', 'ovu5h6b3ujb4y53w', 'Live', NULL, 'PROVEDOR/EVOLUTION/ovu5h6b3ujb4y53w.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(830, 12, NULL, 'qsf63ownyvbqnz33', 'Speed Baccarat Z', 'qsf63ownyvbqnz33', 'Live', NULL, 'PROVEDOR/EVOLUTION/qsf63ownyvbqnz33.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(831, 12, NULL, 'ndgvwvgthfuaad3q', 'Speed Baccarat C', 'ndgvwvgthfuaad3q', 'Live', NULL, 'PROVEDOR/EVOLUTION/ndgvwvgthfuaad3q.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(833, 12, NULL, 'CSPTable00000001', 'Caribbean Stud Poker', 'CSPTable00000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/CSPTable00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(834, 12, NULL, 'qgqrhfvsvltnueqf', 'Speed Baccarat U', 'qgqrhfvsvltnueqf', 'Live', NULL, 'PROVEDOR/EVOLUTION/qgqrhfvsvltnueqf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(836, 12, NULL, 'f1f4rm9xgh4j3u2z', 'Auto-Roulette La Partage', 'f1f4rm9xgh4j3u2z', 'Live', NULL, 'PROVEDOR/EVOLUTION/f1f4rm9xgh4j3u2z.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(837, 12, NULL, 'Monopoly00000001', 'MONOPOLY Live', 'Monopoly00000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/Monopoly00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(840, 12, NULL, 'leqhceumaq6qfoug', 'Speed Baccarat A', 'leqhceumaq6qfoug', 'Live', NULL, 'PROVEDOR/EVOLUTION/leqhceumaq6qfoug.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(841, 12, NULL, 'qgonc7t4ucdiel4o', 'Speed Baccarat T', 'qgonc7t4ucdiel4o', 'Live', NULL, 'PROVEDOR/EVOLUTION/qgonc7t4ucdiel4o.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(842, 12, NULL, '7nyiaws9tgqrzaz3', 'Football Studio Roulette', '7nyiaws9tgqrzaz3', 'Live', NULL, 'PROVEDOR/EVOLUTION/7nyiaws9tgqrzaz3.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:03:38'),
(843, 12, NULL, 'ETHTable00000001', 'Extreme Texas Hold em', 'ETHTable00000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/ETHTable00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(844, 12, NULL, 'ndgvs3tqhfuaadyg', 'Baccarat C', 'ndgvs3tqhfuaadyg', 'Live', NULL, 'PROVEDOR/EVOLUTION/ndgvs3tqhfuaadyg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(846, 12, NULL, 'lkcbrbdckjxajdol', 'Speed Roulette', 'lkcbrbdckjxajdol', 'Live', NULL, 'PROVEDOR/EVOLUTION/lkcbrbdckjxajdol.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:03:40'),
(849, 12, NULL, 'o4kymodby2fa2c7g', 'Speed Baccarat S', 'o4kymodby2fa2c7g', 'Live', NULL, 'PROVEDOR/EVOLUTION/o4kymodby2fa2c7g.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(850, 12, NULL, 'nxpkul2hgclallno', 'Speed Baccarat I', 'nxpkul2hgclallno', 'Live', NULL, 'PROVEDOR/EVOLUTION/nxpkul2hgclallno.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(852, 12, NULL, 'CrazyTime0000001', 'Crazy Time', 'CrazyTime0000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/CrazyTime0000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(853, 12, NULL, 'vctlz20yfnmp1ylr', 'Roulette', 'vctlz20yfnmp1ylr', 'Live', NULL, 'PROVEDOR/EVOLUTION/vctlz20yfnmp1ylr.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:03:49'),
(854, 12, NULL, 'zixzea8nrf1675oh', 'Baccarat Squeeze', 'zixzea8nrf1675oh', 'Live', NULL, 'PROVEDOR/EVOLUTION/zixzea8nrf1675oh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(856, 12, NULL, 'TRPTable00000001', 'Triple Card Poker', 'TRPTable00000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/TRPTable00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(857, 12, NULL, 'teenpattitable01', 'Teen Patti', 'teenpattitable01', 'Live', NULL, 'PROVEDOR/EVOLUTION/teenpattitable01.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(858, 12, NULL, 'peekbaccarat0001', 'Peek Baccarat', 'peekbaccarat0001', 'Live', NULL, 'PROVEDOR/EVOLUTION/peekbaccarat0001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(859, 12, NULL, 'o4kyj7tgpwqqy4m4', 'Speed Baccarat Q', 'o4kyj7tgpwqqy4m4', 'Live', NULL, 'PROVEDOR/EVOLUTION/o4kyj7tgpwqqy4m4.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(860, 12, NULL, 'FunkyTime0000001', 'Funky Time', 'FunkyTime0000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/FunkyTime0000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(861, 12, NULL, 'XxxtremeLigh0001', 'XXXtreme Lightning Roulette', 'XxxtremeLigh0001', 'Live', NULL, 'PROVEDOR/EVOLUTION/XxxtremeLigh0001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(862, 12, NULL, 'AndarBahar000001', 'Super Andar Bahar', 'AndarBahar000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/AndarBahar000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(865, 12, NULL, 'o4kylkahpwqqy57w', 'Speed Baccarat R', 'o4kylkahpwqqy57w', 'Live', NULL, 'PROVEDOR/EVOLUTION/o4kylkahpwqqy57w.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(868, 12, NULL, '60i0lcfx5wkkv3sy', 'Baccarat B', '60i0lcfx5wkkv3sy', 'Live', NULL, 'PROVEDOR/EVOLUTION/60i0lcfx5wkkv3sy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(869, 12, NULL, 'PorBacBo00000001', 'Bac Bo Ao Vivo', 'PorBacBo00000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/PorBacBo00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 2, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:22:27'),
(870, 12, NULL, 'ocye5hmxbsoyrcii', 'No Commission Speed Baccarat B', 'ocye5hmxbsoyrcii', 'Live', NULL, 'PROVEDOR/EVOLUTION/ocye5hmxbsoyrcii.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(871, 12, NULL, 'THBTable00000001', 'Texas Hold em Bonus Poker', 'THBTable00000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/THBTable00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(872, 12, NULL, 'BonsaiBacc000002', 'Bonsai Speed Baccarat B', 'BonsaiBacc000002', 'Live', NULL, 'PROVEDOR/EVOLUTION/BonsaiBacc000002.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(873, 12, NULL, 'DoubleBallRou001', 'Double Ball Roulette', 'DoubleBallRou001', 'Live', NULL, 'PROVEDOR/EVOLUTION/DoubleBallRou001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(874, 12, NULL, 'lv2kzclunt2qnxo5', 'Speed Baccarat B', 'lv2kzclunt2qnxo5', 'Live', NULL, 'PROVEDOR/EVOLUTION/lv2kzclunt2qnxo5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(875, 12, NULL, 'HoldemTable00001', 'Casino Hold em', 'HoldemTable00001', 'Live', NULL, 'PROVEDOR/EVOLUTION/HoldemTable00001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(877, 12, NULL, 'qsf7alptyvbqohva', 'Speed Baccarat 2', 'qsf7alptyvbqohva', 'Live', NULL, 'PROVEDOR/EVOLUTION/qsf7alptyvbqohva.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(879, 12, NULL, 'pv2zgy42anvdwk3l', 'Lotus Roulette', 'pv2zgy42anvdwk3l', 'Live', NULL, 'PROVEDOR/EVOLUTION/pv2zgy42anvdwk3l.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:03:36'),
(880, 12, NULL, 'ovu5cwp54ccmymck', 'Speed Baccarat L', 'ovu5cwp54ccmymck', 'Live', NULL, 'PROVEDOR/EVOLUTION/ovu5cwp54ccmymck.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(882, 12, NULL, 'FanTan0000000001', 'Fan Tan', 'FanTan0000000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/FanTan0000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(883, 12, NULL, 'BonsaiBacc000003', 'Bonsai Speed Baccarat C', 'BonsaiBacc000003', 'Live', NULL, 'PROVEDOR/EVOLUTION/BonsaiBacc000003.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(885, 12, NULL, 'rep5ca4ynyjl7wdw', 'Speed Baccarat 7', 'rep5ca4ynyjl7wdw', 'Live', NULL, 'PROVEDOR/EVOLUTION/rep5ca4ynyjl7wdw.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(886, 12, NULL, 'ovu5dsly4ccmynil', 'Speed Baccarat M', 'ovu5dsly4ccmynil', 'Live', NULL, 'PROVEDOR/EVOLUTION/ovu5dsly4ccmynil.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(887, 12, NULL, 'LightningBac0001', 'Lightning Baccarat', 'LightningBac0001', 'Live', NULL, 'PROVEDOR/EVOLUTION/LightningBac0001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(889, 12, NULL, 'oytmvb9m1zysmc44', 'Baccarat A', 'oytmvb9m1zysmc44', 'Live', NULL, 'PROVEDOR/EVOLUTION/oytmvb9m1zysmc44.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(890, 12, NULL, 'StockMarket00001', 'Stock Market', 'StockMarket00001', 'Live', NULL, 'PROVEDOR/EVOLUTION/StockMarket00001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(891, 12, NULL, 'TopCard000000004', 'Futebol Studio Ao Vivo', 'TopCard000000004', 'Live', NULL, 'PROVEDOR/EVOLUTION/TopCard000000004.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 2, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:03:44'),
(892, 12, NULL, 'qsf7bpfvyvbqolwp', 'Speed Baccarat 3', 'qsf7bpfvyvbqolwp', 'Live', NULL, 'PROVEDOR/EVOLUTION/qsf7bpfvyvbqolwp.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(894, 12, NULL, 'TopDice000000001', 'Football Studio Dice', 'TopDice000000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/TopDice000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(895, 12, NULL, 'k2oswnib7jjaaznw', 'Baccarat Control Squeeze', 'k2oswnib7jjaaznw', 'Live', NULL, 'PROVEDOR/EVOLUTION/k2oswnib7jjaaznw.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(897, 12, NULL, 'qsf65xtoyvbqoaop', 'Speed Baccarat 1', 'qsf65xtoyvbqoaop', 'Live', NULL, 'PROVEDOR/EVOLUTION/qsf65xtoyvbqoaop.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:20:28'),
(900, 12, NULL, 'ovu5fzje4ccmyqnr', 'Speed Baccarat P', 'ovu5fzje4ccmyqnr', 'Live', NULL, 'PROVEDOR/EVOLUTION/ovu5fzje4ccmyqnr.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:20:25'),
(901, 12, NULL, 'qgqrrnuqvltnvejx', 'Speed Baccarat V', 'qgqrrnuqvltnvejx', 'Live', NULL, 'PROVEDOR/EVOLUTION/qgqrrnuqvltnvejx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:20:23'),
(903, 12, NULL, 'ImperialQuest001', 'Imperial Quest', 'ImperialQuest001', 'Live', NULL, 'PROVEDOR/EVOLUTION/ImperialQuest001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:20:21'),
(904, 12, NULL, 'wzg6kdkad1oe7m5k', 'VIP Roulette', 'wzg6kdkad1oe7m5k', 'Live', NULL, 'PROVEDOR/EVOLUTION/wzg6kdkad1oe7m5k.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:03:34'),
(908, 12, NULL, 'TopCard000000001', 'Football Studio', 'TopCard000000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/TopCard000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:20:19'),
(909, 12, NULL, 'SuperSicBo000001', 'Super Sic Bo', 'SuperSicBo000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/SuperSicBo000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:20:17'),
(910, 12, NULL, 'ovu5fbxm4ccmypmb', 'Speed Baccarat O', 'ovu5fbxm4ccmypmb', 'Live', NULL, 'PROVEDOR/EVOLUTION/ovu5fbxm4ccmypmb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:20:15'),
(911, 12, NULL, 'nxpj4wumgclak2lx', 'Speed Baccarat H', 'nxpj4wumgclak2lx', 'Live', NULL, 'PROVEDOR/EVOLUTION/nxpj4wumgclak2lx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:20:13'),
(913, 12, NULL, 'GoldVaultRo00001', 'Gold Vault Roulette', 'GoldVaultRo00001', 'Live', NULL, 'PROVEDOR/EVOLUTION/GoldVaultRo00001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:20:11'),
(916, 12, NULL, 'XXXtremeLB000001', 'XXXtreme Lightning Baccarat', 'XXXtremeLB000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/XXXtremeLB000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:20:09'),
(918, 12, NULL, 'SpeedAutoRo00001', 'Speed Auto Roulette', 'SpeedAutoRo00001', 'Live', NULL, 'PROVEDOR/EVOLUTION/SpeedAutoRo00001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:03:46'),
(919, 12, NULL, 'BacBo00000000001', 'Bac Bo', 'BacBo00000000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/BacBo00000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 3, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:22:36'),
(922, 12, NULL, 'BonsaiBacc000001', 'Bonsai Speed Baccarat A', 'BonsaiBacc000001', 'Live', NULL, 'PROVEDOR/EVOLUTION/BonsaiBacc000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:21:01'),
(923, 12, NULL, 'LightningDice001', 'Lightning Dice', 'LightningDice001', 'Live', NULL, 'PROVEDOR/EVOLUTION/LightningDice001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:21:00'),
(928, 12, NULL, 'LightningSpain01', 'Ruleta Relampago en Vivo', 'LightningSpain01', 'Live', NULL, 'PROVEDOR/EVOLUTION/LightningSpain01.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:03:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `games_keys`
--

CREATE TABLE `games_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `merchant_url` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `merchant_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `merchant_key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agent_code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agent_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agent_secret_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `api_endpoint` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salsa_base_uri` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salsa_pn` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salsa_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vibra_site_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vibra_game_mode` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `worldslot_agent_code` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `worldslot_agent_token` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `worldslot_agent_secret_key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `worldslot_api_endpoint` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'https://api.worldslotgame.com/api/v2/',
  `games2_agent_code` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `games2_agent_token` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `games2_agent_secret_key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `games2_api_endpoint` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'api.games2api.xyz',
  `evergame_agent_code` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `evergame_agent_token` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `evergame_api_endpoint` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `venix_agent_code` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `venix_agent_token` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `venix_agent_secret` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `play_gaming_hall` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `play_gaming_key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `play_gaming_login` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pig_agent_code` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pig_agent_token` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pig_agent_secret` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imperium_games_hall` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imperium_games_key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imperium_games_login` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nexus_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nexus_secret` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nexus_code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nexus_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `playfiver_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `playfiver_secret` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `playfiver_code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `playfiver_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `games_keys`
--

INSERT INTO `games_keys` (`id`, `merchant_url`, `merchant_id`, `merchant_key`, `agent_code`, `agent_token`, `agent_secret_key`, `api_endpoint`, `salsa_base_uri`, `salsa_pn`, `salsa_key`, `created_at`, `updated_at`, `vibra_site_id`, `vibra_game_mode`, `worldslot_agent_code`, `worldslot_agent_token`, `worldslot_agent_secret_key`, `worldslot_api_endpoint`, `games2_agent_code`, `games2_agent_token`, `games2_agent_secret_key`, `games2_api_endpoint`, `evergame_agent_code`, `evergame_agent_token`, `evergame_api_endpoint`, `venix_agent_code`, `venix_agent_token`, `venix_agent_secret`, `play_gaming_hall`, `play_gaming_key`, `play_gaming_login`, `pig_agent_code`, `pig_agent_token`, `pig_agent_secret`, `imperium_games_hall`, `imperium_games_key`, `imperium_games_login`, `nexus_url`, `nexus_secret`, `nexus_code`, `nexus_key`, `playfiver_url`, `playfiver_secret`, `playfiver_code`, `playfiver_token`) VALUES
(1, 'https://gis.slotegrator.com/api/index.php/v1', NULL, NULL, NULL, NULL, NULL, 'https://api.fiverscool.com', NULL, NULL, NULL, '2023-11-30 18:03:08', '2024-07-12 06:32:03', NULL, NULL, '2as', '0ad6540a2b2a812d74c036e35c3c18e9', '16600838288af7d55a8be1ec86f13e1e', 'https://api.worldslotgame.com/api/v2/', NULL, NULL, NULL, 'https://api.games2api.xyz', 'daanrox', '3262366c767a74743162783875797874', 'https://api.evergame.org/api/casinoapi', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://api.playfiver.com/api/v1', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_favorites`
--

CREATE TABLE `game_favorites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_likes`
--

CREATE TABLE `game_likes` (
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_reviews`
--

CREATE TABLE `game_reviews` (
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `rating` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `suitpay_uri` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `suitpay_cliente_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `suitpay_cliente_secret` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stripe_production` tinyint DEFAULT '0',
  `stripe_public_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stripe_secret_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stripe_webhook_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bspay_uri` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bspay_cliente_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bspay_cliente_secret` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public_key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `private_key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mp_client_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mp_client_secret` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mp_public_key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mp_access_token` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `digitopay_uri` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `digitopay_cliente_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `digitopay_cliente_secret` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `gateways`
--

INSERT INTO `gateways` (`id`, `suitpay_uri`, `suitpay_cliente_id`, `suitpay_cliente_secret`, `stripe_production`, `stripe_public_key`, `stripe_secret_key`, `stripe_webhook_key`, `bspay_uri`, `bspay_cliente_id`, `bspay_cliente_secret`, `created_at`, `updated_at`, `public_key`, `private_key`, `mp_client_id`, `mp_client_secret`, `mp_public_key`, `mp_access_token`, `digitopay_uri`, `digitopay_cliente_id`, `digitopay_cliente_secret`) VALUES
(1, 'https://ws.suitpay.app/api/v1/', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-30 21:05:51', '2024-07-12 08:12:50', NULL, NULL, NULL, NULL, NULL, NULL, 'https://api.digitopayoficial.com.br/', 'f8f57f0c-6676-4693-9492-e3188c9316cd', '6abbdaff-05e0-4b30-9625-6fbf5d17683f');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggds_spin_config`
--

CREATE TABLE `ggds_spin_config` (
  `id` bigint UNSIGNED NOT NULL,
  `prizes` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `ggds_spin_config`
--

INSERT INTO `ggds_spin_config` (`id`, `prizes`, `created_at`, `updated_at`) VALUES
(1, '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":1},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":2},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":1},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":3},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":1},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":10}]', '2024-01-11 20:52:59', '2024-04-13 11:07:31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggds_spin_runs`
--

CREATE TABLE `ggds_spin_runs` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nonce` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `possibilities` text COLLATE utf8mb4_general_ci NOT NULL,
  `prize` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `ggds_spin_runs`
--

INSERT INTO `ggds_spin_runs` (`id`, `key`, `nonce`, `possibilities`, `prize`, `created_at`, `updated_at`) VALUES
(1, '526db7d417473d56275f7dffa72c0c3382aa76df7adcfe7216951fca7dc5e810', '11bea414-f850-460a-91d2-a9703e47ca2e', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":10},{\"currency\":\"BRL\",\"value\":25},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":40},{\"currency\":\"BRL\",\"value\":50},{\"currency\":\"BRL\",\"value\":90},{\"currency\":\"BRL\",\"value\":100},{\"currency\":\"BRL\",\"value\":140},{\"currency\":\"BRL\",\"value\":15},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":500},{\"currency\":\"BRL\",\"value\":1000},{\"currency\":\"BRL\",\"value\":1500},{\"currency\":\"BRL\",\"value\":2000},{\"currency\":\"BRL\",\"value\":2500}]', '{\"currency\":\"BRL\",\"value\":15}', '2024-06-10 21:48:09', '2024-06-10 21:48:09'),
(2, '2c35774a073f9e945a91b9b12b5147639cca66234af69b34b0d6656595372c96', '2b712589-b2ad-40af-82c3-ea01fec5f308', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":10},{\"currency\":\"BRL\",\"value\":25},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":40},{\"currency\":\"BRL\",\"value\":50},{\"currency\":\"BRL\",\"value\":90},{\"currency\":\"BRL\",\"value\":100},{\"currency\":\"BRL\",\"value\":140},{\"currency\":\"BRL\",\"value\":15},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":500},{\"currency\":\"BRL\",\"value\":1000},{\"currency\":\"BRL\",\"value\":1500},{\"currency\":\"BRL\",\"value\":2000},{\"currency\":\"BRL\",\"value\":2500}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-06-10 21:48:20', '2024-06-10 21:48:20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr_games`
--

CREATE TABLE `ggr_games` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `game` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_win` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aggregator` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr_games_world_slots`
--

CREATE TABLE `ggr_games_world_slots` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `game` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_win` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'BRL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `likes`
--

CREATE TABLE `likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `liked_user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_10_30_034921_create_settings_table', 6),
(7, '2023_11_03_205251_create_sport_categories_table', 1),
(8, '2023_11_03_205252_create_sports_table', 1),
(10, '2023_11_04_001342_create_sport_events_table', 2),
(11, '2023_11_04_213841_add_fields_to_users_table', 3),
(12, '2023_11_07_202919_create_currencies_table', 4),
(13, '2023_11_07_210310_create_wallets_table', 5),
(16, '2023_11_07_214236_create_withdrawals_table', 7),
(17, '2023_11_07_214240_create_deposits_table', 7),
(18, '2023_11_07_214244_create_orders_table', 7),
(19, '2023_11_07_214708_create_suit_pay_payments_table', 7),
(20, '2023_11_07_215204_create_notifications_table', 8),
(21, '2023_11_07_202919_create_currency_alloweds_table', 9),
(22, '2023_11_11_205824_create_casino_categories_table', 9),
(23, '2023_11_11_205834_create_casino_providers_table', 9),
(24, '2023_11_11_205938_create_casino_games_slotgrators_table', 9),
(25, '2023_11_11_210018_create_casino_games_kscinuses_table', 9),
(26, '2023_11_12_225424_create_transactions_table', 10),
(27, '2023_11_12_225431_create_affiliate_histories_table', 10),
(28, '2023_11_12_234643_add_field_to_wallet_table', 11),
(29, '2023_11_14_203632_create_likes_table', 12),
(30, '2023_09_27_214903_create_wallet_changes_table', 13),
(31, '2023_11_16_155140_create_permission_tables', 14),
(32, '2023_11_17_012533_add_language_to_users_table', 15),
(33, '2023_11_22_171616_create_football_leagues_table', 16),
(34, '2023_11_22_175530_create_football_venues_table', 17),
(35, '2023_11_22_175547_create_football_teams_table', 17),
(36, '2023_11_23_143637_create_football_events_table', 18),
(38, '2023_11_29_134520_create_sport_bets_table', 19),
(39, '2023_11_29_135451_create_sport_bets_odds_table', 19),
(40, '2023_11_30_195548_create_gateways_table', 20),
(41, '2023_11_30_195557_create_games_keys_table', 20),
(42, '2023_11_30_195609_create_setting_mails_table', 20),
(43, '2023_10_08_111755_add_fields_to_game_exclusives_table', 20),
(44, '2023_10_07_183921_create_game_exclusives_table', 21),
(45, '2023_10_11_144956_create_system_wallets_table', 22),
(46, '2023_12_18_172721_create_banners_table', 23),
(47, '2023_12_20_135908_create_casino_games_salsas_table', 24),
(48, '2023_12_23_224032_create_fivers_providers_table', 25),
(49, '2023_12_23_224105_create_fivers_games_table', 25),
(50, '2023_12_31_121453_create_custom_layouts_table', 26),
(51, '2024_01_01_193712_create_g_g_r_games_fivers_table', 27),
(52, '2024_01_14_155144_create_missions_table', 28),
(53, '2024_01_14_155150_create_mission_users_table', 28),
(54, '2024_01_19_120728_create_ka_gamings_table', 29),
(55, '2024_01_19_170650_create_categories_table', 30),
(56, '2024_01_19_170657_create_providers_table', 30),
(57, '2024_01_19_170658_create_games_table', 31),
(58, '2023_10_07_183920_create_categories_table', 32),
(59, '2023_10_07_183921_create_providers_table', 33),
(60, '2023_10_07_183922_create_games_table', 34),
(61, '2024_01_20_144529_create_category_games_table', 35),
(62, '2024_01_20_182155_add_vibra_to_games_keys_table', 36),
(63, '2024_01_21_173742_create_game_favorites_table', 37),
(64, '2024_01_21_173752_create_game_likes_table', 37),
(65, '2024_01_21_173803_create_game_reviews_table', 37),
(66, '2024_01_11_231932_create_vibra_casino_games_table', 38),
(69, '2024_01_28_194456_add_vip_to_wallet_table', 40),
(68, '2024_01_28_194645_create_vips_table', 39),
(70, '2024_01_28_231843_create_vip_users_table', 41),
(71, '2024_01_29_102939_add_paid_to_limits_table', 41),
(72, '2024_01_10_001705_create_sub_affiliates_table', 42),
(73, '2024_01_30_120547_create_affiliate_withdraws_table', 43),
(74, '2024_02_09_233936_add_worldslot_to_games_keys_table', 44),
(75, '2024_02_10_191215_add_disable_spin_to_settings_table', 45),
(76, '2024_02_17_210822_add_games2_to_games_keys_table', 46),
(78, '2024_02_20_004853_add_sub_to_settings_table', 47),
(79, '2024_02_24_121146_add_header_to_custom_layouts_table', 48),
(80, '2024_02_26_144235_create_ggr_games_world_slots_table', 49),
(81, '2024_03_01_172613_add_evergame_to_games_keys_table', 50),
(82, '2024_03_03_201700_add_venixkey_to_games_keys_table', 51),
(83, '2024_03_08_201557_add_play_gaming_to_games_keys_table', 52),
(84, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 53),
(85, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 54),
(86, '2024_03_21_223739_add_sharkpay_to_gateways_table', 55),
(87, '2024_03_21_230017_add_reference_to_transactions_table', 56),
(88, '2024_03_24_125025_add_rollver_protection_to_settings_table', 57),
(89, '2024_03_24_134101_add_accept_bonus_to_transactions_table', 58),
(90, '2024_03_24_172243_add_receita_to_affiliate_histories_table', 59),
(91, '2024_03_26_161932_add_baseline_column_to_settings_table', 60),
(92, '2024_03_26_234226_add_playigaming_column_to_games_key_table', 61),
(93, '2024_03_25_231103_add_mercado_pago_column_to_gateways_table', 62),
(94, '2024_03_30_215051_add_social_to_custom_layouts_table', 63),
(98, '2024_03_30_225900_create_digito_pay_payments_table', 66),
(96, '2024_03_30_225929_add_digitopay_to_gateways_table', 64),
(97, '2024_03_31_124211_add_digitopay_to_settings_table', 65),
(99, '2024_04_02_140932_add_default_gateway_to_settings_table', 67),
(100, '2024_03_08_201557_add_imperium_games_to_games_keys_table', 68),
(101, '2024_04_12_201402_add_hash_to_transactions_table', 69);

-- --------------------------------------------------------

--
-- Estrutura para tabela `missions`
--

CREATE TABLE `missions` (
  `id` bigint UNSIGNED NOT NULL,
  `challenge_name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `challenge_description` text COLLATE utf8mb4_general_ci NOT NULL,
  `challenge_rules` text COLLATE utf8mb4_general_ci NOT NULL,
  `challenge_type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'game',
  `challenge_link` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `challenge_start_date` datetime NOT NULL,
  `challenge_end_date` datetime NOT NULL,
  `challenge_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `challenge_total` bigint NOT NULL DEFAULT '1',
  `challenge_currency` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `challenge_provider` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `challenge_gameid` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mission_users`
--

CREATE TABLE `mission_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `mission_id` int UNSIGNED NOT NULL,
  `rounds` bigint DEFAULT '0',
  `rewards` decimal(10,2) DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_general_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `game` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `game_uuid` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `type_money` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `providers` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `refunded` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `round_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `session_id`, `transaction_id`, `game`, `game_uuid`, `type`, `type_money`, `amount`, `providers`, `refunded`, `status`, `round_id`, `created_at`, `updated_at`) VALUES
(1, 1, '9c5d729d8ba3c748', 'e956a800-fe86-4ffa-9adb-f7ddab1d9dbb', '126', '126', 'win', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '9c5d729d8ba3c748', '2024-07-12 07:34:27', '2024-07-12 07:34:27'),
(2, 1, '3545538289998d0b', '4750866f-4da0-4d52-bd20-1044bab1efe1', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '3545538289998d0b', '2024-07-12 07:34:45', '2024-07-12 07:34:45'),
(3, 1, '6c8ba4b5ee433437', '3e92d2c8-6852-4511-8df3-ccd4229e6014', '126', '126', 'bet', 'balance_bonus', 0.40, 'play_fiver', 0, 1, '6c8ba4b5ee433437', '2024-07-12 07:34:57', '2024-07-12 07:34:57'),
(4, 1, 'b64cd3fa5e6af223', '059cbb43-37e8-4126-a413-5e9137e67a8d', '126', '126', 'bet', 'balance_bonus', 0.40, 'play_fiver', 0, 1, 'b64cd3fa5e6af223', '2024-07-12 07:34:58', '2024-07-12 07:34:58'),
(5, 1, 'a4757f334a5846c9', 'fc47a414-a060-4aa1-9f0b-708b3d7ccca4', '126', '126', 'win', 'balance_bonus', 0.88, 'play_fiver', 0, 1, 'a4757f334a5846c9', '2024-07-12 07:35:00', '2024-07-12 07:35:00'),
(6, 1, '6b9e3fa78aa9c422', 'ada29656-fc7d-41e9-b7f1-b572ac3b76c5', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '6b9e3fa78aa9c422', '2024-07-12 07:35:14', '2024-07-12 07:35:14'),
(7, 1, '95a4b8731bcbc15a', 'bab71209-267a-49e2-8c67-779a552274b8', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '95a4b8731bcbc15a', '2024-07-12 07:35:21', '2024-07-12 07:35:21'),
(8, 1, '670204c3a1785b94', '21a642d4-409a-4b8d-a6b6-a4cf72b2f07a', '126', '126', 'win', 'balance_bonus', 0.48, 'play_fiver', 0, 1, '670204c3a1785b94', '2024-07-12 07:35:24', '2024-07-12 07:35:24'),
(9, 1, 'e5addaa4cad294e2', '28874bbc-8971-4917-9c87-6e1580c96964', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, 'e5addaa4cad294e2', '2024-07-12 07:43:14', '2024-07-12 07:43:14'),
(10, 1, '1578b8eb02b1fe60', 'bc9a8c65-a275-4742-9190-1e620eedfd57', '126', '126', 'bet', 'balance_bonus', 0.40, 'play_fiver', 0, 1, '1578b8eb02b1fe60', '2024-07-12 07:43:25', '2024-07-12 07:43:25'),
(11, 1, '3fdeb36a691e3196', 'c99b3f5d-2900-41e9-a4c1-f761702fe9ee', '126', '126', 'bet', 'balance_bonus', 0.40, 'play_fiver', 0, 1, '3fdeb36a691e3196', '2024-07-12 07:43:28', '2024-07-12 07:43:28'),
(12, 1, '8e98485efa7e3305', '9423f770-05b2-429c-a048-d1f30d41f0de', '126', '126', 'bet', 'balance_bonus', 0.40, 'play_fiver', 0, 1, '8e98485efa7e3305', '2024-07-12 07:48:41', '2024-07-12 07:48:41'),
(13, 1, '36bb034a67fc5bd3', 'f03be1d5-6737-402e-b13b-cd37103db52f', '126', '126', 'bet', 'balance_bonus', 0.40, 'play_fiver', 0, 1, '36bb034a67fc5bd3', '2024-07-12 07:48:46', '2024-07-12 07:48:46'),
(14, 1, 'dad4bd5170223895', '5f940038-aaff-41ae-9a92-021308d13704', '126', '126', 'win', 'balance_bonus', 0.24, 'play_fiver', 0, 1, 'dad4bd5170223895', '2024-07-12 07:48:47', '2024-07-12 07:48:47'),
(15, 1, 'c89a1926a394a50b', 'c4418224-6d73-4f78-b6c4-4c2397880c48', '126', '126', 'win', 'balance_withdrawal', 2.00, 'play_fiver', 0, 1, 'c89a1926a394a50b', '2024-07-12 08:02:54', '2024-07-12 08:02:54'),
(16, 1, '78e74362b355480d', 'a999b299-3aaa-4bde-9f6f-733705dad16c', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '78e74362b355480d', '2024-07-12 08:02:57', '2024-07-12 08:02:57'),
(17, 1, '9436de691c101f32', 'd2ced1a3-1404-4f59-96b5-f48fc7b283c4', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '9436de691c101f32', '2024-07-12 08:02:58', '2024-07-12 08:02:58'),
(18, 272, '5e49205e5ab7f337', '534aa6f2-0b38-42da-9996-8d2603e8de17', '126', '126', 'bet', 'balance', 0.40, 'play_fiver', 0, 1, '5e49205e5ab7f337', '2024-07-12 08:10:17', '2024-07-12 08:10:17'),
(19, 272, '81cad852aa75700e', 'a49fb0ed-1132-459f-838f-c7c4a598a395', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '81cad852aa75700e', '2024-07-12 08:10:20', '2024-07-12 08:10:20'),
(20, 272, '78e679e85af92725', '5b66155e-fcc4-45e9-9537-f151c3fec23b', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '78e679e85af92725', '2024-07-12 08:10:23', '2024-07-12 08:10:23'),
(21, 272, '8ca75a2d7d42b0a8', 'f5f474cd-aff2-4119-8b47-a8e4f8c661ae', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '8ca75a2d7d42b0a8', '2024-07-12 08:10:24', '2024-07-12 08:10:24'),
(22, 272, 'ce36d1c5b97e4662', '85d3e238-23f0-4f2c-940e-789857653552', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'ce36d1c5b97e4662', '2024-07-12 08:10:26', '2024-07-12 08:10:26'),
(23, 272, 'f0656fd9c20b1a8d', 'b0c16048-0e14-4808-b0e3-bfe32e02c6ae', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'f0656fd9c20b1a8d', '2024-07-12 08:10:27', '2024-07-12 08:10:27'),
(24, 272, '6b5339d27e6d5e52', '79d5922c-02f1-4d4e-b9dc-492dd113ee1e', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '6b5339d27e6d5e52', '2024-07-12 08:10:28', '2024-07-12 08:10:28'),
(25, 272, 'eab46be776c21237', '7bf3546b-d52a-4c99-8ed8-8fc22afc6d58', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'eab46be776c21237', '2024-07-12 08:10:30', '2024-07-12 08:10:30'),
(26, 272, '8d5a297764e80f30', '24a43bca-de7a-4a76-bbf9-1b5e27a8935b', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '8d5a297764e80f30', '2024-07-12 08:10:31', '2024-07-12 08:10:31'),
(27, 272, '2b4c5c24e91d735b', '3c64160a-154c-497e-a678-834a4027cca0', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '2b4c5c24e91d735b', '2024-07-12 08:10:32', '2024-07-12 08:10:32'),
(28, 272, 'bebbb6fe577af8b6', '0406abbb-ef91-4b4d-b58f-b8fbcf1dcd7e', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'bebbb6fe577af8b6', '2024-07-12 08:10:34', '2024-07-12 08:10:34'),
(29, 272, 'c7edb2c6ee36181a', '0c492b69-99a1-46fe-ae35-8a119ed107d0', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'c7edb2c6ee36181a', '2024-07-12 08:10:35', '2024-07-12 08:10:35'),
(30, 272, 'e63f42b6ae580b74', '9dcc08af-a81a-4325-aa8f-e5f3e7ac4af6', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'e63f42b6ae580b74', '2024-07-12 08:10:39', '2024-07-12 08:10:39'),
(31, 272, '067ac44d36d34181', '18e03ac9-e404-4183-8142-78f3e091ef4f', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '067ac44d36d34181', '2024-07-12 08:10:40', '2024-07-12 08:10:40'),
(32, 272, '1572b52d25fc7bab', '6956801e-2a02-43e2-a7c5-cb2c13767909', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '1572b52d25fc7bab', '2024-07-12 08:10:41', '2024-07-12 08:10:41'),
(33, 272, '8edfdfe4a9268878', 'c6cf8eec-191e-46ae-bf0c-78afa64a9b5c', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '8edfdfe4a9268878', '2024-07-12 08:10:42', '2024-07-12 08:10:42'),
(34, 272, '12a15f981d4ad5ba', '31767acb-f198-4ba1-a8bb-12acabe54de2', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '12a15f981d4ad5ba', '2024-07-12 08:10:43', '2024-07-12 08:10:43'),
(35, 272, 'ad8ce182c805600e', 'ac6c8072-0104-4319-bab0-e4055efdccb7', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'ad8ce182c805600e', '2024-07-12 08:10:44', '2024-07-12 08:10:44'),
(36, 272, '64dcc2dfb0dbdf61', '3dd02f51-f011-426e-bd4b-ae82ac27be80', '126', '126', 'win', 'balance', 6.00, 'play_fiver', 0, 1, '64dcc2dfb0dbdf61', '2024-07-12 08:10:45', '2024-07-12 08:10:45'),
(37, 272, '8baf96d9388df21d', 'dd6a7ef8-874f-483f-8ba6-2c0661a9b42d', '126', '126', 'win', 'balance_withdrawal', 1.20, 'play_fiver', 0, 1, '8baf96d9388df21d', '2024-07-12 08:10:48', '2024-07-12 08:10:48'),
(38, 272, '5a6f61ab8ca82a2a', 'bdaaf74d-6ec1-4ffe-806f-48f5f736aa3d', '126', '126', 'bet', 'balance_withdrawal', 1.20, 'play_fiver', 0, 1, '5a6f61ab8ca82a2a', '2024-07-12 08:10:50', '2024-07-12 08:10:50'),
(39, 272, 'cd4906207b15d282', 'e4280b9b-2135-4541-916a-b12ed76912d3', '126', '126', 'bet', 'balance_withdrawal', 1.20, 'play_fiver', 0, 1, 'cd4906207b15d282', '2024-07-12 08:10:51', '2024-07-12 08:10:51'),
(40, 272, '37a904cf999a4278', 'c6e1de51-b0d8-4cf9-9a23-f8eb489e9505', '126', '126', 'bet', 'balance_withdrawal', 1.20, 'play_fiver', 0, 1, '37a904cf999a4278', '2024-07-12 08:10:52', '2024-07-12 08:10:52'),
(41, 272, '6f23eb6564d70897', '4f542bde-7658-4f29-a10c-1bc06b8dad33', '126', '126', 'bet', 'balance_withdrawal', 1.20, 'play_fiver', 0, 1, '6f23eb6564d70897', '2024-07-12 08:10:53', '2024-07-12 08:10:53'),
(42, 272, '359ec2f98a48973e', '85ad6ca8-8d36-4237-ac89-5fbf75bc5ff8', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '359ec2f98a48973e', '2024-07-12 08:10:54', '2024-07-12 08:10:54'),
(43, 272, '54c6472b7ac6bab9', 'dd624afd-9dbf-4dbd-8ab2-4ebefd8a42b2', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '54c6472b7ac6bab9', '2024-07-12 08:10:55', '2024-07-12 08:10:55'),
(44, 272, '2e38f06645fb4738', '1c24e667-0215-428e-ab2b-5ac712246c62', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '2e38f06645fb4738', '2024-07-12 08:10:56', '2024-07-12 08:10:56'),
(45, 272, 'b08f25baf6168001', 'bd32ba70-fe99-4c80-8cf0-71589f53bf6d', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'b08f25baf6168001', '2024-07-12 08:10:57', '2024-07-12 08:10:57'),
(46, 272, '1b012136be2e38ac', '2d7625f9-6254-422b-a88c-10801cb98e38', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '1b012136be2e38ac', '2024-07-12 08:10:58', '2024-07-12 08:10:58'),
(47, 272, '33d3266264fd853e', 'a165cc6b-9279-4c40-957e-07461718947a', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '33d3266264fd853e', '2024-07-12 08:10:59', '2024-07-12 08:10:59'),
(48, 272, 'a06c7285712ccd2d', '2654402c-d116-48f7-b8ca-cce7adc3d1e3', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'a06c7285712ccd2d', '2024-07-12 08:11:00', '2024-07-12 08:11:00'),
(49, 272, '240684fd11bfadb6', '6da2faf8-9825-4893-b9a0-89a2bba78719', '126', '126', 'win', 'balance', 4.00, 'play_fiver', 0, 1, '240684fd11bfadb6', '2024-07-12 08:11:01', '2024-07-12 08:11:01'),
(50, 272, '790689658b75067e', '212e75a9-5672-42f4-b9eb-663f17dab281', '126', '126', 'bet', 'balance_withdrawal', 2.00, 'play_fiver', 0, 1, '790689658b75067e', '2024-07-12 08:11:03', '2024-07-12 08:11:03'),
(51, 272, '2f8f23936fe090e4', '11c88b3c-9fd3-42ae-b451-624652c9bc8f', '126', '126', 'bet', 'balance_withdrawal', 2.00, 'play_fiver', 0, 1, '2f8f23936fe090e4', '2024-07-12 08:11:04', '2024-07-12 08:11:04'),
(52, 272, 'bb267feba210643d', 'fcfe46f8-57db-41e6-894e-7f81c867b7d4', '126', '126', 'win', 'balance', 2.00, 'play_fiver', 0, 1, 'bb267feba210643d', '2024-07-12 08:11:05', '2024-07-12 08:11:05'),
(53, 272, 'a6498807b5dffa44', 'd33d1c88-25e9-4fc5-b152-0bea77a3fe95', '126', '126', 'bet', 'balance_withdrawal', 2.00, 'play_fiver', 0, 1, 'a6498807b5dffa44', '2024-07-12 08:11:07', '2024-07-12 08:11:07'),
(54, 272, '2edb0ef4098a5a77', 'd9e74664-77bd-4b8f-8cd1-4e99c08a7172', '126', '126', 'bet', 'balance', 2.00, 'play_fiver', 0, 1, '2edb0ef4098a5a77', '2024-07-12 08:11:08', '2024-07-12 08:11:08'),
(55, 272, '4c08c31cd7249e91', 'e0622afa-408b-41bd-8c91-e16b88e5088b', '126', '126', 'bet', 'balance', 2.00, 'play_fiver', 0, 1, '4c08c31cd7249e91', '2024-07-12 08:11:10', '2024-07-12 08:11:10'),
(56, 272, '023d2e4b02e577c3', 'c4c8c2fe-1037-4a8f-90a6-4881d4328229', '126', '126', 'bet', 'balance', 4.00, 'play_fiver', 0, 1, '023d2e4b02e577c3', '2024-07-12 08:11:11', '2024-07-12 08:11:11'),
(57, 272, 'd9412aa548a987ee', 'fc7d0874-e69c-4f95-8d49-e74045569db2', '126', '126', 'bet', 'balance', 4.00, 'play_fiver', 0, 1, 'd9412aa548a987ee', '2024-07-12 08:11:12', '2024-07-12 08:11:12'),
(58, 272, 'ee19384549039a99', '6e9bf1a4-b314-4e76-9342-0af586bb70e2', '126', '126', 'bet', 'balance', 4.00, 'play_fiver', 0, 1, 'ee19384549039a99', '2024-07-12 08:11:14', '2024-07-12 08:11:14'),
(59, 272, '1674cd02ea594d2b', '9f6cb017-80d1-4920-b36a-cf62b5315b99', '126', '126', 'bet', 'balance_withdrawal', 0.80, 'play_fiver', 0, 1, '1674cd02ea594d2b', '2024-07-12 08:11:15', '2024-07-12 08:11:15'),
(60, 272, 'e19c5df5c2c75fb9', 'd6d64bfa-6e4a-42a3-b4d0-6d6dce04e84a', '126', '126', 'bet', 'balance', 0.80, 'play_fiver', 0, 1, 'e19c5df5c2c75fb9', '2024-07-12 08:11:16', '2024-07-12 08:11:16'),
(61, 272, '9fe335e66f80c522', '375ff8c4-67de-4403-8058-d1cd3d44412c', '126', '126', 'bet', 'balance', 0.80, 'play_fiver', 0, 1, '9fe335e66f80c522', '2024-07-12 08:11:17', '2024-07-12 08:11:17'),
(62, 272, 'c9a8db4fcab24d1c', '46c753e6-4779-4fdd-ae32-9ac79dae3af7', '126', '126', 'bet', 'balance', 0.80, 'play_fiver', 0, 1, 'c9a8db4fcab24d1c', '2024-07-12 08:11:18', '2024-07-12 08:11:18'),
(63, 272, '42479c2d80b17485', '62c0cc07-4b76-4acf-847f-08e780cc10dd', '126', '126', 'bet', 'balance', 0.80, 'play_fiver', 0, 1, '42479c2d80b17485', '2024-07-12 08:11:19', '2024-07-12 08:11:19'),
(64, 272, 'dbbde5c9a09b0490', 'f705648b-3a08-4d44-b77c-8ac478f8046d', '126', '126', 'bet', 'balance', 0.80, 'play_fiver', 0, 1, 'dbbde5c9a09b0490', '2024-07-12 08:11:20', '2024-07-12 08:11:20'),
(65, 272, 'ac158108f7d07052', '644addcb-e649-4574-8b71-115b7edc5e3a', '126', '126', 'bet', 'balance', 0.80, 'play_fiver', 0, 1, 'ac158108f7d07052', '2024-07-12 08:11:22', '2024-07-12 08:11:22'),
(66, 272, '38be2950034544d8', '9f8314da-1d07-4045-871c-0ed52a9b2976', '126', '126', 'bet', 'balance', 0.80, 'play_fiver', 0, 1, '38be2950034544d8', '2024-07-12 08:11:23', '2024-07-12 08:11:23'),
(67, 272, '95c5bad74e9e228e', '6fbb6751-2ab7-4711-835b-7ad3330da5dc', '126', '126', 'bet', 'balance', 0.80, 'play_fiver', 0, 1, '95c5bad74e9e228e', '2024-07-12 08:11:24', '2024-07-12 08:11:24'),
(68, 272, '7225dbcde2f9af8a', '70249525-0844-42ce-aa6d-127fc8e66c82', '126', '126', 'bet', 'balance', 0.80, 'play_fiver', 0, 1, '7225dbcde2f9af8a', '2024-07-12 08:11:25', '2024-07-12 08:11:25'),
(69, 272, '0fbd963ed25ebe7b', 'c231253b-9e8e-466a-95bd-9677a91738fa', '126', '126', 'bet', 'balance', 0.80, 'play_fiver', 0, 1, '0fbd963ed25ebe7b', '2024-07-12 08:11:26', '2024-07-12 08:11:26'),
(70, 272, '851e4d6c34aaf52a', '6f52bb5c-8a94-44c1-90c3-fbdae0124807', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '851e4d6c34aaf52a', '2024-07-12 08:11:30', '2024-07-12 08:11:30'),
(71, 272, '1e9c512ab105be85', '3cdda04d-2271-498e-9fe6-5dea4ae8a849', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '1e9c512ab105be85', '2024-07-12 08:11:31', '2024-07-12 08:11:31'),
(72, 272, '1ec68459fca245ae', 'f7dccb9a-f1cc-4b11-bbd3-3ea872613019', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '1ec68459fca245ae', '2024-07-12 08:11:32', '2024-07-12 08:11:32'),
(73, 272, 'db44b721f946f4fa', '31787db0-4d5b-4502-a836-fb4a44882bc5', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'db44b721f946f4fa', '2024-07-12 08:11:36', '2024-07-12 08:11:36'),
(74, 272, '376f1e4bc747d8f9', '0f5a8114-ed5c-4a0f-8303-1e1b262dc28a', '126', '126', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '376f1e4bc747d8f9', '2024-07-12 08:11:37', '2024-07-12 08:11:37'),
(75, 272, '5b0cb2467490a351', 'c8d28a85-aec5-4949-a9c1-c503ac88ce57', '1543462', '1543462', 'bet', 'balance', 0.40, 'play_fiver', 0, 1, '5b0cb2467490a351', '2024-07-12 08:12:04', '2024-07-12 08:12:04'),
(76, 272, '17d287819692e8a8', '26567652-c1d0-4221-8ea9-27716eda3b39', '1543462', '1543462', 'bet', 'balance', 0.40, 'play_fiver', 0, 1, '17d287819692e8a8', '2024-07-12 08:12:07', '2024-07-12 08:12:07'),
(77, 272, '14f1285d39c2381e', '9d866899-0418-49a6-a30c-e2fb9dbaf7d1', '1543462', '1543462', 'bet', 'balance', 0.40, 'play_fiver', 0, 1, '14f1285d39c2381e', '2024-07-12 08:12:08', '2024-07-12 08:12:08'),
(78, 272, '06acafbe4a8ba98b', '413c0957-ee75-4c7f-b8d2-8c2d64f95e4c', '1543462', '1543462', 'win', 'balance', 0.16, 'play_fiver', 0, 1, '06acafbe4a8ba98b', '2024-07-12 08:12:09', '2024-07-12 08:12:09'),
(79, 272, '204dd74a826cf487', '25cb1904-714b-4667-a917-a75c21870336', '1543462', '1543462', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '204dd74a826cf487', '2024-07-12 08:12:11', '2024-07-12 08:12:11'),
(80, 272, 'b768ad66944c7533', 'aa52ebd3-7423-4a6a-9705-e54dded88a78', '1543462', '1543462', 'bet', 'balance', 0.40, 'play_fiver', 0, 1, 'b768ad66944c7533', '2024-07-12 08:12:12', '2024-07-12 08:12:12'),
(81, 272, '3a8d0dd0cf7ed96b', '64837641-cfae-46e0-8ec3-5bb3488bcdb4', '1543462', '1543462', 'win', 'balance', 0.48, 'play_fiver', 0, 1, '3a8d0dd0cf7ed96b', '2024-07-12 08:12:13', '2024-07-12 08:12:13'),
(82, 272, 'a9e18a7144ad04e9', '91ae83af-cd4c-44f3-a4b1-f3ddec65ef76', '1543462', '1543462', 'win', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, 'a9e18a7144ad04e9', '2024-07-12 08:12:15', '2024-07-12 08:12:15'),
(83, 272, 'a228aa1857a25f09', '8501ccd3-0519-4985-ac07-a836ae6e02e0', '1543462', '1543462', 'win', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, 'a228aa1857a25f09', '2024-07-12 08:12:17', '2024-07-12 08:12:17'),
(84, 272, 'b85df0b88644c7b7', 'ce7d4d0e-e514-4872-9e4d-b4328442c41f', '1543462', '1543462', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, 'b85df0b88644c7b7', '2024-07-12 08:12:19', '2024-07-12 08:12:19'),
(85, 272, '53bbe48ec8673503', 'e011303c-bc46-481d-bf39-af0399c648fe', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '53bbe48ec8673503', '2024-07-12 08:12:21', '2024-07-12 08:12:21'),
(86, 272, '7c7328f9cbe2ff1d', '6da8ee14-d5fa-40be-8d89-db0fdfb42c14', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '7c7328f9cbe2ff1d', '2024-07-12 08:12:22', '2024-07-12 08:12:22'),
(87, 272, '677349821aabe256', '1d810f91-c018-402c-88ef-ba8372187284', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '677349821aabe256', '2024-07-12 08:12:23', '2024-07-12 08:12:23'),
(88, 272, 'dc4df057e8b62542', '4f20612c-1bd8-4d8e-b037-86fea4287f83', '1543462', '1543462', 'win', 'balance', 1.44, 'play_fiver', 0, 1, 'dc4df057e8b62542', '2024-07-12 08:12:24', '2024-07-12 08:12:24'),
(89, 272, '69099869329e6893', '0ff2a6ef-1138-409b-98fd-1bfd9d4caa97', '1543462', '1543462', 'bet', 'balance_withdrawal', 1.20, 'play_fiver', 0, 1, '69099869329e6893', '2024-07-12 08:12:26', '2024-07-12 08:12:26'),
(90, 272, 'c0b564a1a7f1814a', '1b8bb070-e7d8-41e4-bd45-e1dd8efbd112', '1543462', '1543462', 'win', 'balance', 0.96, 'play_fiver', 0, 1, 'c0b564a1a7f1814a', '2024-07-12 08:12:27', '2024-07-12 08:12:27'),
(91, 272, '362cfe2241ca1566', 'c88b44a4-a3ab-49ca-b036-41122c0c8ac5', '1543462', '1543462', 'bet', 'balance_withdrawal', 1.20, 'play_fiver', 0, 1, '362cfe2241ca1566', '2024-07-12 08:12:30', '2024-07-12 08:12:30'),
(92, 272, '54cfd0d28417bf83', 'ed6ddda5-f456-4a58-8164-a1e4a187c099', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '54cfd0d28417bf83', '2024-07-12 08:12:32', '2024-07-12 08:12:32'),
(93, 272, '72a6714830600fa5', '6e14819e-598f-418e-9ccf-5d10fa255024', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '72a6714830600fa5', '2024-07-12 08:12:34', '2024-07-12 08:12:34'),
(94, 272, 'f93b8e083c9cb793', '8f181cf9-9dde-4352-b980-dbed82c657a1', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'f93b8e083c9cb793', '2024-07-12 08:12:35', '2024-07-12 08:12:35'),
(95, 272, 'e975690e2f5b95af', '44b7af14-b7e2-47fb-a5d4-6e9a955e7901', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'e975690e2f5b95af', '2024-07-12 08:12:35', '2024-07-12 08:12:35'),
(96, 272, '86866e159b4c422f', '9a8ab3fe-0d0d-4c34-bc05-85c2500feff2', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '86866e159b4c422f', '2024-07-12 08:12:36', '2024-07-12 08:12:36'),
(97, 272, '04d3e4c13f4c5c4d', '9315a627-16d9-4c6e-9a3d-d3bf8d630ff8', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '04d3e4c13f4c5c4d', '2024-07-12 08:12:37', '2024-07-12 08:12:37'),
(98, 272, '3dc5e8e8082be7fb', '7183a81e-62db-42af-b320-209c07f15f78', '1543462', '1543462', 'win', 'balance', 0.96, 'play_fiver', 0, 1, '3dc5e8e8082be7fb', '2024-07-12 08:12:38', '2024-07-12 08:12:38'),
(99, 272, '9734b5203f721645', '61568743-812f-42d0-a3f7-8bc7730e0d78', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '9734b5203f721645', '2024-07-12 08:12:40', '2024-07-12 08:12:40'),
(100, 272, 'f7ba1eda77ca4d7c', '101a5b08-44d6-40a0-899b-c758f343f63a', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'f7ba1eda77ca4d7c', '2024-07-12 08:12:42', '2024-07-12 08:12:42'),
(101, 272, '9210a1b76e527619', '2d58b9b8-d337-442c-8539-5eb963767fdd', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '9210a1b76e527619', '2024-07-12 08:12:43', '2024-07-12 08:12:43'),
(102, 272, '0c0b9b193bb76dc6', 'd1d8a0b5-bc92-49f0-8b6d-ab75671c1be9', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '0c0b9b193bb76dc6', '2024-07-12 08:12:44', '2024-07-12 08:12:44'),
(103, 272, '811d0d9c7f4fbfbb', '05b42159-484c-40c2-9b6b-726cbda0ab60', '1543462', '1543462', 'win', 'balance', 1.44, 'play_fiver', 0, 1, '811d0d9c7f4fbfbb', '2024-07-12 08:12:45', '2024-07-12 08:12:45'),
(104, 272, '9f09feb189b0f451', '1e30ddbb-1c92-46b0-b35d-b60fc6fc8086', '1543462', '1543462', 'bet', 'balance_withdrawal', 1.20, 'play_fiver', 0, 1, '9f09feb189b0f451', '2024-07-12 08:12:47', '2024-07-12 08:12:47'),
(105, 272, 'fdddab499c3bcf68', 'bbc90de3-7c14-4d2a-a353-71fd7f07d135', '1543462', '1543462', 'bet', 'balance_withdrawal', 1.20, 'play_fiver', 0, 1, 'fdddab499c3bcf68', '2024-07-12 08:12:48', '2024-07-12 08:12:48'),
(106, 272, '1ba099ffb01d921b', '4201b704-c589-4503-85f7-4dc1095da4a6', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '1ba099ffb01d921b', '2024-07-12 08:12:49', '2024-07-12 08:12:49'),
(107, 272, '48b1f5d8f302828b', '8abe76f6-3594-4069-a003-887129cef8e6', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '48b1f5d8f302828b', '2024-07-12 08:12:50', '2024-07-12 08:12:50'),
(108, 272, '2619b4bcfc770614', 'b24d2104-35ac-4ce4-be45-628a31abcdb5', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '2619b4bcfc770614', '2024-07-12 08:12:52', '2024-07-12 08:12:52'),
(109, 272, 'fa8348f01c32a682', '38520e40-ef9a-4bae-9dc5-da35976bc5f6', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'fa8348f01c32a682', '2024-07-12 08:12:53', '2024-07-12 08:12:53'),
(110, 272, '4f090bb53b08e977', '4145bea8-9151-49a2-b547-8349832067c9', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '4f090bb53b08e977', '2024-07-12 08:12:54', '2024-07-12 08:12:54'),
(111, 272, 'fb6e61f15d77bf1f', '4c8ec022-9564-4f15-b700-513dfa1515f0', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'fb6e61f15d77bf1f', '2024-07-12 08:12:55', '2024-07-12 08:12:55'),
(112, 272, '457449dd9b23bb3b', 'ccd66f49-1579-4360-bca8-30566f5d28f8', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '457449dd9b23bb3b', '2024-07-12 08:12:56', '2024-07-12 08:12:56'),
(113, 272, '88ab967095db6cf6', '6045ddfd-a882-4c85-923d-51a2f2561b53', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '88ab967095db6cf6', '2024-07-12 08:12:58', '2024-07-12 08:12:58'),
(114, 272, '1ff0c6219aa525fa', 'da16d651-80e5-4f9f-9200-7e6c6c0f3cb2', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, '1ff0c6219aa525fa', '2024-07-12 08:12:59', '2024-07-12 08:12:59'),
(115, 272, 'bf0a72d48f6d045d', '91612f1c-b0f0-4c06-a88c-11ebb62ed7a8', '1543462', '1543462', 'bet', 'balance', 1.20, 'play_fiver', 0, 1, 'bf0a72d48f6d045d', '2024-07-12 08:13:00', '2024-07-12 08:13:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'games-exclusive-edit', 'web', '2023-10-12 16:23:45', '2023-10-12 18:12:28'),
(2, 'games-exclusive-view', 'web', '2023-10-12 16:23:56', '2023-10-12 18:11:25'),
(3, 'games-exclusive-create', 'web', '2023-10-12 16:25:06', '2023-10-12 18:11:10'),
(4, 'admin-view', 'web', '2023-10-12 17:56:35', '2023-10-12 17:56:35'),
(5, 'admin-create', 'web', '2023-10-12 18:56:02', '2023-10-12 18:56:02'),
(6, 'admin-edit', 'web', '2023-10-12 18:56:27', '2023-10-12 18:56:27'),
(7, 'admin-delete', 'web', '2023-10-12 18:56:55', '2023-10-12 18:56:55'),
(8, 'category-view', 'web', '2023-10-12 19:01:31', '2023-10-12 19:01:31'),
(9, 'category-create', 'web', '2023-10-12 19:01:46', '2023-10-12 19:01:46'),
(10, 'category-edit', 'web', '2023-10-12 19:01:59', '2023-10-12 19:01:59'),
(11, 'category-delete', 'web', '2023-10-12 19:02:09', '2023-10-12 19:02:09'),
(12, 'game-view', 'web', '2023-10-12 19:02:27', '2023-10-12 19:02:27'),
(13, 'game-create', 'web', '2023-10-12 19:02:36', '2023-10-12 19:02:36'),
(14, 'game-edit', 'web', '2023-10-12 19:02:44', '2023-10-12 19:02:44'),
(15, 'game-delete', 'web', '2023-10-12 19:02:54', '2023-10-12 19:02:54'),
(16, 'wallet-view', 'web', '2023-10-12 19:05:49', '2023-10-12 19:05:49'),
(17, 'wallet-create', 'web', '2023-10-12 19:06:01', '2023-10-12 19:06:01'),
(18, 'wallet-edit', 'web', '2023-10-12 19:06:11', '2023-10-12 19:06:11'),
(19, 'wallet-delete', 'web', '2023-10-12 19:06:18', '2023-10-12 19:06:18'),
(20, 'deposit-view', 'web', '2023-10-12 19:06:44', '2023-10-12 19:06:44'),
(21, 'deposit-create', 'web', '2023-10-12 19:06:56', '2023-10-12 19:06:56'),
(22, 'deposit-edit', 'web', '2023-10-12 19:07:05', '2023-10-12 19:07:05'),
(23, 'deposit-update', 'web', '2023-10-12 19:08:00', '2023-10-12 19:08:00'),
(24, 'deposit-delete', 'web', '2023-10-12 19:08:11', '2023-10-12 19:08:11'),
(25, 'withdrawal-view', 'web', '2023-10-12 19:09:31', '2023-10-12 19:09:31'),
(26, 'withdrawal-create', 'web', '2023-10-12 19:09:40', '2023-10-12 19:09:40'),
(27, 'withdrawal-edit', 'web', '2023-10-12 19:09:51', '2023-10-12 19:09:51'),
(28, 'withdrawal-update', 'web', '2023-10-12 19:10:00', '2023-10-12 19:10:00'),
(29, 'withdrawal-delete', 'web', '2023-10-12 19:10:09', '2023-10-12 19:10:09'),
(30, 'order-view', 'web', '2023-10-12 19:12:36', '2023-10-12 19:12:36'),
(31, 'order-create', 'web', '2023-10-12 19:12:47', '2023-10-12 19:12:47'),
(32, 'order-edit', 'web', '2023-10-12 19:12:56', '2023-10-12 19:12:56'),
(33, 'order-update', 'web', '2023-10-12 19:13:06', '2023-10-12 19:13:06'),
(34, 'order-delete', 'web', '2023-10-12 19:13:19', '2023-10-12 19:13:19'),
(35, 'admin-menu-view', 'web', '2023-10-12 20:26:06', '2023-10-12 20:26:06'),
(36, 'setting-view', 'web', '2023-10-12 21:25:46', '2023-10-12 21:25:46'),
(37, 'setting-create', 'web', '2023-10-12 21:25:57', '2023-10-12 21:25:57'),
(38, 'setting-edit', 'web', '2023-10-12 21:26:06', '2023-10-12 21:26:06'),
(39, 'setting-update', 'web', '2023-10-12 21:26:19', '2023-10-12 21:26:19'),
(40, 'setting-delete', 'web', '2023-10-12 21:26:33', '2023-10-12 21:26:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_general_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `providers`
--

CREATE TABLE `providers` (
  `id` bigint UNSIGNED NOT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `rtp` bigint DEFAULT '90',
  `views` bigint DEFAULT '1',
  `distribution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `providers`
--

INSERT INTO `providers` (`id`, `cover`, `code`, `name`, `status`, `rtp`, `views`, `distribution`, `created_at`, `updated_at`) VALUES
(13, NULL, 'Aviator', 'Aviator', 1, 90, 1, 'play_fiver', '2024-05-27 15:30:40', '2024-05-30 20:30:04'),
(12, NULL, 'EVOLUTION', 'EVOLUTION', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:59', '2024-05-27 12:46:59'),
(4, NULL, 'BOOONGO', 'BOOONGO', 1, 90, 1, 'play_fiver', '2024-05-27 12:45:53', '2024-05-27 12:45:53'),
(5, NULL, 'PLAYSON', 'PLAYSON', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:02', '2024-05-27 12:46:02'),
(6, NULL, 'CQ9', 'CQ9', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:18', '2024-05-27 12:46:18'),
(7, NULL, 'EVOPLAY', 'EVOPLAY', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:25', '2024-05-27 12:46:25'),
(8, NULL, 'TOPTREND', 'TOPTREND', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:31', '2024-05-27 13:06:44'),
(9, NULL, 'DREAMTECH', 'DREAMTECH', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:37', '2024-05-27 13:06:58'),
(10, NULL, 'REELKINGDOM', 'REELKINGDOM', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:45', '2024-05-27 12:46:45'),
(2, NULL, 'PRAGMATIC', 'PRAGMATIC', 1, 90, 1, 'play_fiver', '2024-05-27 12:45:35', '2024-05-27 13:06:35'),
(3, NULL, 'HABANERO', 'HABANERO', 1, 90, 1, 'play_fiver', '2024-05-27 12:45:44', '2024-05-27 12:45:44'),
(1, NULL, 'PGSOFT', 'PGSOFT', 1, 90, 1000, 'play_fiver', '2024-05-27 19:45:24', '2024-07-12 01:37:26');

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-10-12 16:20:41', '2023-10-12 16:20:41'),
(2, 'afiliado', 'web', '2023-10-12 16:21:08', '2023-10-12 16:21:08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `software_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_favicon` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_logo_white` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_logo_black` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_background` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'BRL',
  `decimal_format` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'dot',
  `currency_position` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'left',
  `revshare_percentage` bigint DEFAULT '20',
  `ngr_percent` bigint DEFAULT '20',
  `soccer_percentage` bigint DEFAULT '30',
  `prefix` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'R$',
  `storage` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'local',
  `initial_bonus` bigint DEFAULT '0',
  `min_deposit` int DEFAULT NULL,
  `max_deposit` int DEFAULT NULL,
  `min_withdrawal` int DEFAULT NULL,
  `max_withdrawal` int DEFAULT NULL,
  `rollover` bigint DEFAULT '10',
  `rollover_deposit` bigint DEFAULT '1',
  `suitpay_is_enable` tinyint DEFAULT '1',
  `stripe_is_enable` tinyint DEFAULT '1',
  `bspay_is_enable` tinyint DEFAULT '0',
  `sharkpay_is_enable` tinyint DEFAULT '1',
  `turn_on_football` tinyint DEFAULT '1',
  `revshare_reverse` tinyint(1) DEFAULT '1',
  `bonus_vip` bigint DEFAULT '100',
  `activate_vip_bonus` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `maintenance_mode` tinyint DEFAULT '0',
  `withdrawal_limit` bigint DEFAULT NULL,
  `withdrawal_period` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `disable_spin` tinyint(1) NOT NULL DEFAULT '0',
  `perc_sub_lv1` bigint NOT NULL DEFAULT '4',
  `perc_sub_lv2` bigint NOT NULL DEFAULT '2',
  `perc_sub_lv3` bigint NOT NULL DEFAULT '3',
  `disable_rollover` tinyint DEFAULT '0',
  `rollover_protection` bigint NOT NULL DEFAULT '1',
  `cpa_baseline` decimal(10,2) DEFAULT NULL,
  `cpa_value` decimal(10,2) DEFAULT NULL,
  `cpa_percentage_baseline` decimal(10,2) DEFAULT NULL,
  `cpa_percentage` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mercadopago_is_enable` tinyint DEFAULT '0',
  `digitopay_is_enable` tinyint NOT NULL DEFAULT '0',
  `default_gateway` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'digitopay',
  `trunk_baseline` decimal(20,2) NOT NULL DEFAULT '20.00',
  `trunk_aposta` decimal(20,2) NOT NULL DEFAULT '20.00',
  `trunk_valor` decimal(20,2) NOT NULL DEFAULT '20.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `settings`
--

INSERT INTO `settings` (`id`, `software_name`, `software_description`, `software_favicon`, `software_logo_white`, `software_logo_black`, `software_background`, `currency_code`, `decimal_format`, `currency_position`, `revshare_percentage`, `ngr_percent`, `soccer_percentage`, `prefix`, `storage`, `initial_bonus`, `min_deposit`, `max_deposit`, `min_withdrawal`, `max_withdrawal`, `rollover`, `rollover_deposit`, `suitpay_is_enable`, `stripe_is_enable`, `bspay_is_enable`, `sharkpay_is_enable`, `turn_on_football`, `revshare_reverse`, `bonus_vip`, `activate_vip_bonus`, `updated_at`, `maintenance_mode`, `withdrawal_limit`, `withdrawal_period`, `disable_spin`, `perc_sub_lv1`, `perc_sub_lv2`, `perc_sub_lv3`, `disable_rollover`, `rollover_protection`, `cpa_baseline`, `cpa_value`, `cpa_percentage_baseline`, `cpa_percentage`, `mercadopago_is_enable`, `digitopay_is_enable`, `default_gateway`, `trunk_baseline`, `trunk_aposta`, `trunk_valor`) VALUES
(1, 'Onda Games', 'Os melhores jogos de cassino e slots com PIX automático.', 'uploads/33G35wXv3KOENX2MZmqffPON32ksR2xZS5fZSyAZ.png', 'uploads/lCEeI26vss6HED0D8H4opv28Khcuv63zvWuwF7Ql.png', 'uploads/Z6xSuvKyixZhfJGEk3M1GP9tTMHzkjlRmYfcYcyV.png', '[]', 'BRL', 'dot', 'left', 0, 0, 30, 'R$', 'local', 25, 10, 10000, 20, 2000, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, '2024-07-12 07:52:09', 0, 100, 'daily', 1, 10, 0, 0, 1, 0, 20.00, 15.00, 30.00, '50', 0, 1, 'suitpay', 50.00, 30.00, 50.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `setting_mails`
--

CREATE TABLE `setting_mails` (
  `id` bigint UNSIGNED NOT NULL,
  `software_smtp_type` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_host` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_port` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_username` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_encryption` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_from_address` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_from_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sub_affiliates`
--

CREATE TABLE `sub_affiliates` (
  `id` bigint UNSIGNED NOT NULL,
  `affiliate_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `suit_pay_payments`
--

CREATE TABLE `suit_pay_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `withdrawal_id` bigint UNSIGNED NOT NULL,
  `pix_key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pix_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `observation` text COLLATE utf8mb4_general_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_wallets`
--

CREATE TABLE `system_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `label` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `balance` decimal(27,12) NOT NULL DEFAULT '0.000000000000',
  `balance_min` decimal(27,12) NOT NULL DEFAULT '10000.100000000000',
  `pay_upto_percentage` decimal(4,2) NOT NULL DEFAULT '45.00',
  `mode` enum('balance_min','percentage') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `system_wallets`
--

INSERT INTO `system_wallets` (`id`, `label`, `balance`, `balance_min`, `pay_upto_percentage`, `mode`, `created_at`, `updated_at`) VALUES
(1, 'system', 261.800000000000, 10000.100000000000, 45.00, 'percentage', '2023-10-11 16:11:15', '2023-10-16 18:42:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'usd',
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `accept_bonus` tinyint(1) NOT NULL DEFAULT '1',
  `hash` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `idUnico` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `transactions`
--

INSERT INTO `transactions` (`id`, `payment_id`, `user_id`, `payment_method`, `price`, `currency`, `status`, `created_at`, `updated_at`, `reference`, `accept_bonus`, `hash`, `idUnico`) VALUES
(62, '42f4ffcf-688f-48b2-8022-726c93130ba8', 1, 'pix', 50.00, 'BRL', 0, '2024-07-11 07:15:36', '2024-07-11 07:15:36', NULL, 1, '', NULL),
(63, 'b2eff74a-ebfb-4c1e-a263-e331e6065dd1', 1, 'pix', 30.00, 'BRL', 0, '2024-07-11 09:32:29', '2024-07-11 09:32:29', NULL, 1, '', '668f989c1a5ba'),
(64, '293f04f3-76f6-4956-a00e-f724c87b01a9', 1, 'pix', 30.00, 'BRL', 0, '2024-07-11 09:56:59', '2024-07-11 09:56:59', NULL, 1, '', '668f9e5a20e2f'),
(65, 'db643fa9-1d13-49f0-a412-d5f1af64e322', 1, 'pix', 10.00, 'BRL', 0, '2024-07-11 09:57:48', '2024-07-11 09:57:48', NULL, 1, '', '668f9e8b40244'),
(66, '3e3bff40-59ee-4b14-8a68-b8e61a1ace01', 1, 'pix', 30.00, 'BRL', 0, '2024-07-11 10:09:13', '2024-07-11 10:09:13', NULL, 1, '', '668fa1381699e'),
(67, 'd96fc2e4-8f9d-45f8-9469-df65f0913bb4', 1, 'pix', 10.00, 'BRL', 1, '2024-07-11 10:16:36', '2024-07-11 10:17:04', NULL, 1, '', '668fa2f2ed1b5'),
(68, '091aff02-dbc8-4c39-a7ec-e5397538b165', 1, 'pix', 30.00, 'BRL', 0, '2024-07-11 10:41:23', '2024-07-11 10:41:23', NULL, 1, '', '668fa8c27bfbf'),
(69, '8008cc97-9a0c-49fa-af0a-7f98a0f498d1', 1, 'pix', 50.00, 'BRL', 0, '2024-07-11 23:37:32', '2024-07-11 23:37:32', NULL, 1, '', '66905eaa296f9'),
(70, '04dc8db2-d7b5-47ec-8187-74db138fd7b7', 1, 'pix', 30.00, 'BRL', 0, '2024-07-11 23:37:54', '2024-07-11 23:37:54', NULL, 1, '', '66905ec10defb'),
(71, 'cabee6f1-c4b0-4d60-a5a4-99389e0e1198', 1, 'pix', 30.00, 'BRL', 0, '2024-07-11 23:39:24', '2024-07-11 23:39:24', NULL, 1, '', '66905f1ab843f'),
(81, '4e8ec840-8eb5-4a6e-96bc-e17c4b909c2c', 1, 'pix', 30.00, 'BRL', 0, '2024-07-12 03:32:06', '2024-07-12 03:32:06', NULL, 1, '', '669095a44dec7'),
(82, '5ab74ad9-15d4-43d8-ad16-f6d3e81f9ba1', 1, 'pix', 30.00, 'BRL', 0, '2024-07-12 03:45:33', '2024-07-12 03:45:33', NULL, 1, '', '669098cb3f5d6'),
(86, '2f5d60d1-6874-4c84-930e-a1011f135694', 1, 'pix', 30.00, 'BRL', 0, '2024-07-12 08:13:30', '2024-07-12 08:13:30', NULL, 1, '', '6690d799133f7'),
(84, 'bb4f5a4c-11cd-4fbc-beed-da7d54d722ef', 1, 'pix', 30.00, 'BRL', 0, '2024-07-12 06:57:18', '2024-07-12 06:57:18', NULL, 1, '', '6690c5bd532ce'),
(85, '40568626-fecb-4afd-b9f2-fc8d244132da', 1, 'pix', 30.00, 'BRL', 0, '2024-07-12 07:58:20', '2024-07-12 07:58:20', NULL, 1, '', '6690d40a8af7f');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `oauth_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `oauth_type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cpf` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logged_in` tinyint NOT NULL DEFAULT '0',
  `banned` tinyint NOT NULL DEFAULT '0',
  `inviter` int DEFAULT NULL,
  `inviter_code` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `affiliate_revenue_share` bigint NOT NULL DEFAULT '2',
  `affiliate_revenue_share_fake` bigint DEFAULT NULL,
  `affiliate_cpa` decimal(20,2) NOT NULL DEFAULT '10.00',
  `affiliate_percentage_cpa` decimal(10,2) DEFAULT NULL,
  `affiliate_percentage_baseline` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `affiliate_baseline` decimal(20,2) NOT NULL DEFAULT '40.00',
  `is_demo_agent` tinyint NOT NULL DEFAULT '0',
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active',
  `language` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pt_BR',
  `role_id` int DEFAULT '3',
  `affiliate_bau_baseline` decimal(20,2) NOT NULL DEFAULT '20.00',
  `affiliate_bau_value` decimal(20,2) NOT NULL DEFAULT '20.00',
  `affiliate_bau_aposta` decimal(20,2) NOT NULL DEFAULT '20.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `oauth_id`, `oauth_type`, `avatar`, `last_name`, `cpf`, `phone`, `logged_in`, `banned`, `inviter`, `inviter_code`, `affiliate_revenue_share`, `affiliate_revenue_share_fake`, `affiliate_cpa`, `affiliate_percentage_cpa`, `affiliate_percentage_baseline`, `affiliate_baseline`, `is_demo_agent`, `status`, `language`, `role_id`, `affiliate_bau_baseline`, `affiliate_bau_value`, `affiliate_bau_aposta`) VALUES
(1, 'Admin', '31992812273@gmail.com', NULL, '$2y$10$9pKziqD1XvAzwjfNBiVJ1uqsumKxzj3KAXoLKuVCEabxrJXXRxf6S', 'qVMR0ydCLreiMxIxpfXMHlvYeKaJXdfTBIGJm6tO7FBa1IvpGsgatauQPTHU', '2023-11-07 22:15:13', '2024-07-12 08:07:45', NULL, NULL, 'uploads/8lx3OeL0c6GX18GMIhbgf2Kj4JVew0NRmnTUYYSb.png', NULL, NULL, NULL, 0, 0, NULL, 'IL9O93HOCY', 20, NULL, 10.00, NULL, NULL, 40.00, 0, 'active', 'pt_BR', 1, 20.00, 20.00, 20.00),
(272, 'santos', '33998354117@gmail.com', NULL, '$2y$10$o7ZouNF0kVTvNbXcHYvageVzQpAJQmg41SKu15AnUG4wSDZROdeza', NULL, '2024-07-12 08:07:07', '2024-07-12 08:07:07', NULL, NULL, NULL, NULL, NULL, '33998354117', 0, 0, NULL, '48942607', 0, NULL, 15.00, NULL, NULL, 20.00, 0, 'active', 'pt_BR', 3, 50.00, 50.00, 30.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vips`
--

CREATE TABLE `vips` (
  `id` bigint UNSIGNED NOT NULL,
  `bet_symbol` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `bet_level` bigint NOT NULL DEFAULT '1',
  `bet_required` bigint DEFAULT NULL,
  `bet_period` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bet_bonus` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vip_users`
--

CREATE TABLE `vip_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `vip_id` int UNSIGNED NOT NULL,
  `level` bigint NOT NULL,
  `points` bigint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `currency` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `symbol` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `balance` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_bonus_rollover` decimal(10,2) DEFAULT '0.00',
  `balance_deposit_rollover` decimal(10,2) DEFAULT '0.00',
  `balance_withdrawal` decimal(10,2) DEFAULT '0.00',
  `balance_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_cryptocurrency` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  `balance_demo` decimal(20,8) DEFAULT '1000.00000000',
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT '0.00',
  `hide_balance` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total_won` bigint NOT NULL DEFAULT '0',
  `total_lose` bigint NOT NULL DEFAULT '0',
  `last_won` bigint NOT NULL DEFAULT '0',
  `last_lose` bigint NOT NULL DEFAULT '0',
  `vip_level` bigint DEFAULT '0',
  `vip_points` bigint DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `currency`, `symbol`, `balance`, `balance_bonus_rollover`, `balance_deposit_rollover`, `balance_withdrawal`, `balance_bonus`, `balance_cryptocurrency`, `balance_demo`, `refer_rewards`, `hide_balance`, `active`, `created_at`, `updated_at`, `total_bet`, `total_won`, `total_lose`, `last_won`, `last_lose`, `vip_level`, `vip_points`) VALUES
(1, 1, 'BRL', 'R$', 0.00, 25.00, 0.00, 1.44, 80.80, 0.00000000, 1000.00000000, 10.00, 0, 1, '2023-11-07 22:15:13', '2024-07-12 08:09:45', 0.00, 0, 0, 0, 0, 1, 10000),
(272, 272, 'BRL', 'R$', 0.80, 0.00, 0.00, 0.24, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-07-12 08:07:07', '2024-07-12 08:13:00', 0.00, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallet_changes`
--

CREATE TABLE `wallet_changes` (
  `id` bigint UNSIGNED NOT NULL,
  `reason` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `change` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_total` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_roi` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_entry` decimal(20,2) NOT NULL DEFAULT '0.00',
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT '0.00',
  `game` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int UNSIGNED NOT NULL,
  `app_id` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `proof` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `pix_key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pix_type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_general_ci,
  `currency` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `symbol` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_histories_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `affiliate_histories_inviter_index` (`inviter`) USING BTREE;

--
-- Índices de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_withdraws_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `baus`
--
ALTER TABLE `baus`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `casino_categories_slug_unique` (`slug`) USING BTREE;

--
-- Índices de tabela `category_game`
--
ALTER TABLE `category_game`
  ADD KEY `category_games_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `category_games_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `currency_alloweds_currency_id_foreign` (`currency_id`) USING BTREE;

--
-- Índices de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `deposits_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `digito_pay_payments`
--
ALTER TABLE `digito_pay_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `digito_pay_payments_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `digito_pay_payments_withdrawal_id_index` (`withdrawal_id`) USING BTREE;

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Índices de tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `games_provider_id_index` (`provider_id`),
  ADD KEY `games_game_code_index` (`game_code`);

--
-- Índices de tabela `games_keys`
--
ALTER TABLE `games_keys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `game_favorites_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_favorites_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `game_likes`
--
ALTER TABLE `game_likes`
  ADD UNIQUE KEY `game_likes_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_likes_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `game_reviews`
--
ALTER TABLE `game_reviews`
  ADD UNIQUE KEY `game_reviews_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_reviews_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_fivers_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `ggr_games_world_slots`
--
ALTER TABLE `ggr_games_world_slots`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_world_slots_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `likes_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `likes_liked_user_id_foreign` (`liked_user_id`) USING BTREE;

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `mission_users`
--
ALTER TABLE `mission_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `mission_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `mission_users_mission_id_index` (`mission_id`) USING BTREE;

--
-- Índices de tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices de tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices de tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`) USING BTREE;

--
-- Índices de tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `orders_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Índices de tabela `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices de tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Índices de tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sub_affiliates_affiliate_id_index` (`affiliate_id`) USING BTREE,
  ADD KEY `sub_affiliates_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `suit_pay_payments`
--
ALTER TABLE `suit_pay_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `suit_pay_payments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `suit_pay_payments_withdrawal_id_foreign` (`withdrawal_id`) USING BTREE;

--
-- Índices de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `transactions_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Índices de tabela `vips`
--
ALTER TABLE `vips`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `vip_users`
--
ALTER TABLE `vip_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `vip_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `vip_users_vip_id_index` (`vip_id`) USING BTREE;

--
-- Índices de tabela `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallets_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallet_changes_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `withdrawals_user_id_foreign` (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `baus`
--
ALTER TABLE `baus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT de tabela `digito_pay_payments`
--
ALTER TABLE `digito_pay_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=929;

--
-- AUTO_INCREMENT de tabela `games_keys`
--
ALTER TABLE `games_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `ggr_games_world_slots`
--
ALTER TABLE `ggr_games_world_slots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de tabela `missions`
--
ALTER TABLE `missions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mission_users`
--
ALTER TABLE `mission_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11137;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `suit_pay_payments`
--
ALTER TABLE `suit_pay_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT de tabela `vips`
--
ALTER TABLE `vips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vip_users`
--
ALTER TABLE `vip_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
